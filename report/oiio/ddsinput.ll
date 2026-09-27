Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ddsinput?download=true
inline.NumInlined: 3419
inline.NumDeleted: 947
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 79
begin_hunk_0_@"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_1L15DecompressImageEPhiiPKhNS2_7DDS_pvt11CompressionERKNS6_13dds_pixformatEiE3$_0E9_M_invokeERKSt9_Any_dataOlSG_":bb.a
  %i.md = lshr i16 %i.mc, 8
  %i.me = trunc nuw i16 %i.md to i8
  %i.mf = and i8 %i.me, 15
  %i.mg = mul nuw i8 %i.mf, 17
  store i8 %i.mg, ptr %i.bz, align 1, !tbaa !47
  %i.mh = load i16, ptr %i.lt, align 2, !tbaa !46
  %i.mi = lshr i16 %i.mh, 12
  %i.mj = trunc nuw nsw i16 %i.mi to i8
  %i.mk = mul nuw i8 %i.mj, 17
  store i8 %i.mk, ptr %i.ca, align 1, !tbaa !47
  br label %bb.r

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.ml = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !46
  %i.mn = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 10
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !46
  %i.mp = zext i16 %i.mm to i32                   ; 3 uses
  %i.mq = lshr i32 %i.mp, 5
  %i.mr = and i32 %i.mp, 31
  %i.ms = zext i16 %i.mo to i32                   ; 3 uses
  %i.mt = lshr i32 %i.ms, 5
  %i.mu = and i32 %i.ms, 31
  %i.mv = lshr i32 %i.mp, 11
  %i.mw = mul nuw nsw i32 %i.mv, 527
  %i.mx = add nuw nsw i32 %i.mw, 23
  %i.my = lshr i32 %i.mx, 6                       ; 3 uses
  %i.mz = and i32 %i.mq, 63
  %i.na = mul nuw nsw i32 %i.mz, 259
  %i.nb = add nuw nsw i32 %i.na, 33
  %i.nc = lshr i32 %i.nb, 6                       ; 3 uses
  %i.nd = mul nuw nsw i32 %i.mr, 527
  %i.ne = add nuw nsw i32 %i.nd, 23
  %i.nf = lshr i32 %i.ne, 6                       ; 3 uses
  %i.ng = shl nuw nsw i32 %i.nf, 16
  %i.nh = shl nuw nsw i32 %i.nc, 8
  %i.ni = or i32 %i.ng, %i.nh
  %i.nj = or i32 %i.ni, %i.my
  %i.nk = or i32 %i.nj, -16777216
  store i32 %i.nk, ptr %i.d, align 16, !tbaa !44
  %i.nl = lshr i32 %i.ms, 11
  %i.nm = mul nuw nsw i32 %i.nl, 527
  %i.nn = add nuw nsw i32 %i.nm, 23
  %i.no = lshr i32 %i.nn, 6                       ; 3 uses
  %i.np = and i32 %i.mt, 63
  %i.nq = mul nuw nsw i32 %i.np, 259
  %i.nr = add nuw nsw i32 %i.nq, 33
  %i.ns = lshr i32 %i.nr, 6                       ; 3 uses
  %i.nt = mul nuw nsw i32 %i.mu, 527
  %i.nu = add nuw nsw i32 %i.nt, 23
  %i.nv = lshr i32 %i.nu, 6                       ; 3 uses
  %i.nw = shl nuw nsw i32 %i.nv, 16
  %i.nx = shl nuw nsw i32 %i.ns, 8
  %i.ny = or i32 %i.nw, %i.nx
  %i.nz = or i32 %i.ny, %i.no
  %i.oa = or i32 %i.nz, -16777216
  store i32 %i.oa, ptr %i.bg, align 4, !tbaa !44
  %i.ob = shl nuw nsw i32 %i.my, 1
  %i.oc = add nuw nsw i32 %i.ob, %i.no
  %i.od = trunc nsw i32 %i.oc to i16
  %i.oe = shl nuw nsw i32 %i.nc, 1
  %i.of = add nuw nsw i32 %i.oe, %i.ns
  %i.og = trunc nuw nsw i32 %i.of to i16
  %i.oh = shl nuw nsw i32 %i.nf, 1
  %i.oi = add nuw nsw i32 %i.oh, %i.nv
  %i.oj = trunc nuw nsw i32 %i.oi to i16
  %i.ok = shl nuw nsw i32 %i.no, 1
  %i.ol = add nuw nsw i32 %i.ok, %i.my
  %i.om = trunc nsw i32 %i.ol to i16
  %i.on = insertelement <2 x i16> poison, i16 %i.om, i64 0
  %i.oo = insertelement <2 x i16> %i.on, i16 %i.od, i64 1
  %i.op = add nuw nsw <2 x i16> %i.oo, splat (i16 1)
  %i.oq = udiv <2 x i16> %i.op, splat (i16 3)
  %i.or = zext nneg <2 x i16> %i.oq to <2 x i32>
  %i.os = shl nuw nsw i32 %i.ns, 1
  %i.ot = add nuw nsw i32 %i.os, %i.nc
  %i.ou = trunc nuw nsw i32 %i.ot to i16
  %i.ov = insertelement <2 x i16> poison, i16 %i.ou, i64 0
  %i.ow = insertelement <2 x i16> %i.ov, i16 %i.og, i64 1
  %i.ox = add nuw nsw <2 x i16> %i.ow, splat (i16 1)
  %i.oy = udiv <2 x i16> %i.ox, splat (i16 3)
  %i.oz = zext nneg <2 x i16> %i.oy to <2 x i32>
  %i.pa = shl nuw nsw i32 %i.nv, 1
  %i.pb = add nuw nsw i32 %i.pa, %i.nf
  %i.pc = trunc nuw nsw i32 %i.pb to i16
  %i.pd = insertelement <2 x i16> poison, i16 %i.pc, i64 0
  %i.pe = insertelement <2 x i16> %i.pd, i16 %i.oj, i64 1
  %i.pf = add nuw nsw <2 x i16> %i.pe, splat (i16 1)
  %i.pg = udiv <2 x i16> %i.pf, splat (i16 3)
  %i.ph = zext nneg <2 x i16> %i.pg to <2 x i32>
  %i.pi = shl nuw nsw <2 x i32> %i.ph, splat (i32 16)
  %i.pj = shl nuw nsw <2 x i32> %i.oz, splat (i32 8)
  %i.pk = or disjoint <2 x i32> %i.pi, %i.or
  %i.pl = or <2 x i32> %i.pk, %i.pj
  %i.pm = or <2 x i32> %i.pl, splat (i32 -16777216)
  %i.pn = shufflevector <2 x i32> %i.pm, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.pn, ptr %i.bh, align 8, !tbaa !44
  %i.po = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 12
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !44 ; 16 uses
  %i.pq = and i32 %i.pp, 3
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !44
  store i32 %i.pt, ptr %i.g, align 16, !tbaa !44
  %i.pu = lshr i32 %i.pp, 2
  %i.pv = and i32 %i.pu, 3
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !44
  store i32 %i.py, ptr %i.w, align 4, !tbaa !44
  %i.pz = lshr i32 %i.pp, 4
  %i.qa = and i32 %i.pz, 3
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !44
  store i32 %i.qd, ptr %i.y, align 8, !tbaa !44
  %i.qe = lshr i32 %i.pp, 6
  %i.qf = and i32 %i.qe, 3
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !44
  store i32 %i.qi, ptr %i.aa, align 4, !tbaa !44
  %i.qj = lshr i32 %i.pp, 8
  %i.qk = and i32 %i.qj, 3
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !44
  store i32 %i.qn, ptr %i.ac, align 16, !tbaa !44
  %i.qo = lshr i32 %i.pp, 10
  %i.qp = and i32 %i.qo, 3
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qq
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !44
  store i32 %i.qs, ptr %i.ae, align 4, !tbaa !44
  %i.qt = lshr i32 %i.pp, 12
  %i.qu = and i32 %i.qt, 3
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !44
  store i32 %i.qx, ptr %i.ag, align 8, !tbaa !44
  %i.qy = lshr i32 %i.pp, 14
  %i.qz = and i32 %i.qy, 3
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !44
  store i32 %i.rc, ptr %i.ai, align 4, !tbaa !44
  %i.rd = lshr i32 %i.pp, 16
  %i.re = and i32 %i.rd, 3
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !44
  store i32 %i.rh, ptr %i.bi, align 16, !tbaa !44
  %i.ri = lshr i32 %i.pp, 18
  %i.rj = and i32 %i.ri, 3
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !44
  store i32 %i.rm, ptr %i.bj, align 4, !tbaa !44
  %i.rn = lshr i32 %i.pp, 20
  %i.ro = and i32 %i.rn, 3
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rp
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !44
  store i32 %i.rr, ptr %i.bk, align 8, !tbaa !44
  %i.rs = lshr i32 %i.pp, 22
  %i.rt = and i32 %i.rs, 3
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !44
  store i32 %i.rw, ptr %i.bl, align 4, !tbaa !44
  %i.rx = lshr i32 %i.pp, 24
  %i.ry = and i32 %i.rx, 3
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !44
  store i32 %i.sb, ptr %i.bm, align 16, !tbaa !44
  %i.sc = lshr i32 %i.pp, 26
  %i.sd = and i32 %i.sc, 3
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !44
  store i32 %i.sg, ptr %i.bn, align 4, !tbaa !44
  %i.sh = lshr i32 %i.pp, 28
  %i.si = and i32 %i.sh, 3
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !44
  store i32 %i.sl, ptr %i.bo, align 8, !tbaa !44
  %i.sm = lshr i32 %i.pp, 30
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !44
  store i32 %i.sp, ptr %i.bp, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.sq = load i64, ptr %.1188.i.i.i, align 8, !tbaa !49 ; 18 uses
  %i.sr = trunc i64 %i.sq to i16
  store i16 %i.sr, ptr %i.e, align 2
  %i.ss = trunc i64 %i.sq to i32                  ; 2 uses
  %3 = and i32 %i.ss, 255                         ; 11 uses
  %4 = lshr i32 %i.ss, 8
  %i.st = and i32 %4, 255                         ; 9 uses
  %i.su = icmp samesign ugt i32 %3, %i.st
  %i.sv = shl nuw nsw i32 %i.st, 1                ; 2 uses
  %i.sw = mul nuw nsw i32 %i.st, 3                ; 2 uses
  br i1 %i.su, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.sx = mul nuw nsw i32 %3, 6
  %i.sy = mul nuw nsw i32 %3, 5
  %i.sz = shl nuw nsw i32 %3, 2
  %i.ta = mul nuw nsw i32 %3, 3
  %i.tb = shl nuw nsw i32 %i.st, 2
  %i.tc = add nuw nsw i32 %i.sx, %i.st
  %i.td = trunc nuw nsw i32 %i.tc to i16
  %i.te = add nuw nsw i32 %i.sv, %i.sy
  %i.tf = trunc nuw nsw i32 %i.te to i16
  %i.tg = add nuw nsw i32 %i.sw, %i.sz
  %i.th = trunc nuw nsw i32 %i.tg to i16
  %i.ti = add nuw nsw i32 %i.tb, %i.ta
  %i.tj = trunc nuw nsw i32 %i.ti to i16
  %i.tk = insertelement <4 x i16> poison, i16 %i.td, i64 0
  %i.tl = insertelement <4 x i16> %i.tk, i16 %i.tf, i64 1
  %i.tm = insertelement <4 x i16> %i.tl, i16 %i.th, i64 2
  %i.tn = insertelement <4 x i16> %i.tm, i16 %i.tj, i64 3
  %i.to = add nuw nsw <4 x i16> %i.tn, splat (i16 1)
  %i.tp = udiv <4 x i16> %i.to, splat (i16 7)
  %i.tq = shl nuw nsw i32 %3, 1
  %i.tr = mul nuw nsw i32 %i.st, 5
  %i.ts = add nuw nsw i32 %i.tr, %i.tq
  %i.tt = trunc nuw nsw i32 %i.ts to i16
  %.lhs.trunc28.i.i.i.i = add nuw nsw i16 %i.tt, 1
  %i.tu = udiv i16 %.lhs.trunc28.i.i.i.i, 7
  %i.tv = trunc nuw i16 %i.tu to i8
  %i.tw = mul nuw nsw i32 %i.st, 6
  %i.tx = add nuw nsw i32 %i.tw, %3
  %i.ty = trunc nuw nsw i32 %i.tx to i16
  %.lhs.trunc30.i.i.i.i = add nuw nsw i16 %i.ty, 1
  %i.tz = udiv i16 %.lhs.trunc30.i.i.i.i, 7
  %i.ua = trunc nuw i16 %i.tz to i8
  br label %_Z25bcdec__smooth_alpha_blockPKvPvii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ub = shl nuw nsw i32 %3, 2
  %i.uc = mul nuw nsw i32 %3, 3
  %i.ud = shl nuw nsw i32 %3, 1
  %i.ue = shl nuw nsw i32 %i.st, 2
  %i.uf = add nuw nsw i32 %i.ub, %i.st
  %i.ug = trunc nuw nsw i32 %i.uf to i16
  %i.uh = add nuw nsw i32 %i.sv, %i.uc
  %i.ui = trunc nuw nsw i32 %i.uh to i16
  %i.uj = add nuw nsw i32 %i.sw, %i.ud
  %i.uk = trunc nuw nsw i32 %i.uj to i16
  %i.ul = add nuw nsw i32 %i.ue, %3
  %i.um = trunc nuw nsw i32 %i.ul to i16
  %i.un = insertelement <4 x i16> poison, i16 %i.ug, i64 0
  %i.uo = insertelement <4 x i16> %i.un, i16 %i.ui, i64 1
  %i.up = insertelement <4 x i16> %i.uo, i16 %i.uk, i64 2
  %i.uq = insertelement <4 x i16> %i.up, i16 %i.um, i64 3
  %i.ur = add nuw nsw <4 x i16> %i.uq, splat (i16 1)
  %i.us = udiv <4 x i16> %i.ur, splat (i16 5)
  br label %_Z25bcdec__smooth_alpha_blockPKvPvii.exit.i.i.i

_Z25bcdec__smooth_alpha_blockPKvPvii.exit.i.i.i:  ; preds = %bb.g, %bb.f
  %.sink46.i.i.i.i = phi i8 [ %i.tv, %bb.f ], [ 0, %bb.g ]
  %.sink.i.i.i.i = phi i8 [ %i.ua, %bb.f ], [ -1, %bb.g ]
  %i.ut = phi <4 x i16> [ %i.tp, %bb.f ], [ %i.us, %bb.g ]
  %i.uu = trunc <4 x i16> %i.ut to <4 x i8>
  store <4 x i8> %i.uu, ptr %i.bq, align 2, !tbaa !47
  store i8 %.sink46.i.i.i.i, ptr %i.br, align 2, !tbaa !47
  store i8 %.sink.i.i.i.i, ptr %i.bs, align 1, !tbaa !47
  %i.uv = lshr i64 %i.sq, 16
  %i.uw = and i64 %i.uv, 7
  %i.ux = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !47
  store i8 %i.uy, ptr %i.ao, align 1, !tbaa !47
  %i.uz = lshr i64 %i.sq, 19
  %i.va = and i64 %i.uz, 7
  %i.vb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.va
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !47
  store i8 %i.vc, ptr %i.aq, align 1, !tbaa !47
  %i.vd = lshr i64 %i.sq, 22
  %i.ve = and i64 %i.vd, 7
  %i.vf = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ve
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !47
  store i8 %i.vg, ptr %i.as, align 1, !tbaa !47
  %i.vh = lshr i64 %i.sq, 25
  %i.vi = and i64 %i.vh, 7
  %i.vj = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.vi
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !47
  store i8 %i.vk, ptr %i.au, align 1, !tbaa !47
  %i.vl = lshr i64 %i.sq, 28
  %i.vm = and i64 %i.vl, 7
  %i.vn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.vm
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !47
  store i8 %i.vo, ptr %i.aw, align 1, !tbaa !47
  %i.vp = lshr i64 %i.sq, 31
  %i.vq = and i64 %i.vp, 7
  %i.vr = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !47
  store i8 %i.vs, ptr %i.ay, align 1, !tbaa !47
  %i.vt = lshr i64 %i.sq, 34
  %i.vu = and i64 %i.vt, 7
  %i.vv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !47
  store i8 %i.vw, ptr %i.ba, align 1, !tbaa !47
  %i.vx = lshr i64 %i.sq, 37
  %i.vy = and i64 %i.vx, 7
  %i.vz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.vy
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !47
  store i8 %i.wa, ptr %i.bc, align 1, !tbaa !47
  %i.wb = lshr i64 %i.sq, 40
  %i.wc = and i64 %i.wb, 7
  %i.wd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !47
  store i8 %i.we, ptr %i.bt, align 1, !tbaa !47
  %i.wf = lshr i64 %i.sq, 43
  %i.wg = and i64 %i.wf, 7
  %i.wh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.wg
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !47
  store i8 %i.wi, ptr %i.bu, align 1, !tbaa !47
  %i.wj = lshr i64 %i.sq, 46
  %i.wk = and i64 %i.wj, 7
  %i.wl = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.wk
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !47
  store i8 %i.wm, ptr %i.bv, align 1, !tbaa !47
  %i.wn = lshr i64 %i.sq, 49
  %i.wo = and i64 %i.wn, 7
  %i.wp = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.wo
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !47
  store i8 %i.wq, ptr %i.bw, align 1, !tbaa !47
  %i.wr = lshr i64 %i.sq, 52
  %i.ws = and i64 %i.wr, 7
  %i.wt = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !47
  store i8 %i.wu, ptr %i.bx, align 1, !tbaa !47
  %i.wv = lshr i64 %i.sq, 55
  %i.ww = and i64 %i.wv, 7
  %i.wx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !47
  store i8 %i.wy, ptr %i.by, align 1, !tbaa !47
  %i.wz = lshr i64 %i.sq, 58
  %i.xa = and i64 %i.wz, 7
  %i.xb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.xa
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !47
  store i8 %i.xc, ptr %i.bz, align 1, !tbaa !47
  %i.xd = lshr i64 %i.sq, 61
  %i.xe = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.xd
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !47
  store i8 %i.xf, ptr %i.ca, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.r

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.xg = load i64, ptr %.1188.i.i.i, align 8, !tbaa !49 ; 18 uses
  %i.xh = trunc i64 %i.xg to i16
  store i16 %i.xh, ptr %i.c, align 2
  %i.xi = trunc i64 %i.xg to i32                  ; 2 uses
  %5 = and i32 %i.xi, 255                         ; 11 uses
  %6 = lshr i32 %i.xi, 8
  %i.xj = and i32 %6, 255                         ; 9 uses
  %i.xk = icmp samesign ugt i32 %5, %i.xj
  %i.xl = shl nuw nsw i32 %i.xj, 1                ; 2 uses
  %i.xm = mul nuw nsw i32 %i.xj, 3                ; 2 uses
  br i1 %i.xk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.xn = mul nuw nsw i32 %5, 6
  %i.xo = mul nuw nsw i32 %5, 5
  %i.xp = shl nuw nsw i32 %5, 2
  %i.xq = mul nuw nsw i32 %5, 3
  %i.xr = shl nuw nsw i32 %i.xj, 2
  %i.xs = add nuw nsw i32 %i.xn, %i.xj
  %i.xt = trunc nuw nsw i32 %i.xs to i16
  %i.xu = add nuw nsw i32 %i.xl, %i.xo
  %i.xv = trunc nuw nsw i32 %i.xu to i16
  %i.xw = add nuw nsw i32 %i.xm, %i.xp
  %i.xx = trunc nuw nsw i32 %i.xw to i16
  %i.xy = add nuw nsw i32 %i.xr, %i.xq
  %i.xz = trunc nuw nsw i32 %i.xy to i16
  %i.ya = insertelement <4 x i16> poison, i16 %i.xt, i64 0
  %i.yb = insertelement <4 x i16> %i.ya, i16 %i.xv, i64 1
  %i.yc = insertelement <4 x i16> %i.yb, i16 %i.xx, i64 2
  %i.yd = insertelement <4 x i16> %i.yc, i16 %i.xz, i64 3
  %i.ye = add nuw nsw <4 x i16> %i.yd, splat (i16 1)
  %i.yf = udiv <4 x i16> %i.ye, splat (i16 7)
  %i.yg = shl nuw nsw i32 %5, 1
  %i.yh = mul nuw nsw i32 %i.xj, 5
  %i.yi = add nuw nsw i32 %i.yh, %i.yg
  %i.yj = trunc nuw nsw i32 %i.yi to i16
  %.lhs.trunc28.i115.i.i.i = add nuw nsw i16 %i.yj, 1
  %i.yk = udiv i16 %.lhs.trunc28.i115.i.i.i, 7
  %i.yl = trunc nuw i16 %i.yk to i8
  %i.ym = mul nuw nsw i32 %i.xj, 6
  %i.yn = add nuw nsw i32 %i.ym, %5
  %i.yo = trunc nuw nsw i32 %i.yn to i16
  %.lhs.trunc30.i116.i.i.i = add nuw nsw i16 %i.yo, 1
  %i.yp = udiv i16 %.lhs.trunc30.i116.i.i.i, 7
  %i.yq = trunc nuw i16 %i.yp to i8
  br label %_Z25bcdec__smooth_alpha_blockPKvPvii.exit117.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.yr = shl nuw nsw i32 %5, 2
  %i.ys = mul nuw nsw i32 %5, 3
  %i.yt = shl nuw nsw i32 %5, 1
  %i.yu = shl nuw nsw i32 %i.xj, 2
  %i.yv = add nuw nsw i32 %i.yr, %i.xj
  %i.yw = trunc nuw nsw i32 %i.yv to i16
  %i.yx = add nuw nsw i32 %i.xl, %i.ys
  %i.yy = trunc nuw nsw i32 %i.yx to i16
  %i.yz = add nuw nsw i32 %i.xm, %i.yt
  %i.za = trunc nuw nsw i32 %i.yz to i16
  %i.zb = add nuw nsw i32 %i.yu, %5
  %i.zc = trunc nuw nsw i32 %i.zb to i16
  %i.zd = insertelement <4 x i16> poison, i16 %i.yw, i64 0
  %i.ze = insertelement <4 x i16> %i.zd, i16 %i.yy, i64 1
  %i.zf = insertelement <4 x i16> %i.ze, i16 %i.za, i64 2
  %i.zg = insertelement <4 x i16> %i.zf, i16 %i.zc, i64 3
  %i.zh = add nuw nsw <4 x i16> %i.zg, splat (i16 1)
  %i.zi = udiv <4 x i16> %i.zh, splat (i16 5)
  br label %_Z25bcdec__smooth_alpha_blockPKvPvii.exit117.i.i.i

_Z25bcdec__smooth_alpha_blockPKvPvii.exit117.i.i.i: ; preds = %bb.j, %bb.i
  %.sink46.i105.i.i.i = phi i8 [ %i.yl, %bb.i ], [ 0, %bb.j ]
  %.sink.i106.i.i.i = phi i8 [ %i.yq, %bb.i ], [ -1, %bb.j ]
  %i.zj = phi <4 x i16> [ %i.yf, %bb.i ], [ %i.zi, %bb.j ]
  %i.zk = trunc <4 x i16> %i.zj to <4 x i8>
  store <4 x i8> %i.zk, ptr %i.bd, align 2, !tbaa !47
  store i8 %.sink46.i105.i.i.i, ptr %i.be, align 2, !tbaa !47
  store i8 %.sink.i106.i.i.i, ptr %i.bf, align 1, !tbaa !47
  %i.zl = lshr i64 %i.xg, 16
  %i.zm = and i64 %i.zl, 7
  %i.zn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.zm
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !47
  store i8 %i.zo, ptr %i.g, align 16, !tbaa !47
  %i.zp = lshr i64 %i.xg, 19
  %i.zq = and i64 %i.zp, 7
  %i.zr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.zq
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !47
  store i8 %i.zs, ptr %i.ak, align 1, !tbaa !47
  %i.zt = lshr i64 %i.xg, 22
  %i.zu = and i64 %i.zt, 7
  %i.zv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.zu
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !47
  store i8 %i.zw, ptr %i.v, align 2, !tbaa !47
  %i.zx = lshr i64 %i.xg, 25
  %i.zy = and i64 %i.zx, 7
  %i.zz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.zy
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !47
  store i8 %i.aaa, ptr %i.ao, align 1, !tbaa !47
  %i.aab = lshr i64 %i.xg, 28
  %i.aac = and i64 %i.aab, 7
  %i.aad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aac
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !47
  store i8 %i.aae, ptr %i.w, align 4, !tbaa !47
  %i.aaf = lshr i64 %i.xg, 31
  %i.aag = and i64 %i.aaf, 7
  %i.aah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aag
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !47
  store i8 %i.aai, ptr %i.ap, align 1, !tbaa !47
  %i.aaj = lshr i64 %i.xg, 34
  %i.aak = and i64 %i.aaj, 7
  %i.aal = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aak
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !47
  store i8 %i.aam, ptr %i.x, align 2, !tbaa !47
  %i.aan = lshr i64 %i.xg, 37
  %i.aao = and i64 %i.aan, 7
  %i.aap = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aao
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !47
  store i8 %i.aaq, ptr %i.aq, align 1, !tbaa !47
  %i.aar = lshr i64 %i.xg, 40
  %i.aas = and i64 %i.aar, 7
  %i.aat = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aas
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !47
  store i8 %i.aau, ptr %i.y, align 8, !tbaa !47
  %i.aav = lshr i64 %i.xg, 43
  %i.aaw = and i64 %i.aav, 7
  %i.aax = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !47
  store i8 %i.aay, ptr %i.ar, align 1, !tbaa !47
  %i.aaz = lshr i64 %i.xg, 46
  %i.aba = and i64 %i.aaz, 7
  %i.abb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aba
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !47
  store i8 %i.abc, ptr %i.z, align 2, !tbaa !47
  %i.abd = lshr i64 %i.xg, 49
  %i.abe = and i64 %i.abd, 7
  %i.abf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !47
  store i8 %i.abg, ptr %i.as, align 1, !tbaa !47
  %i.abh = lshr i64 %i.xg, 52
  %i.abi = and i64 %i.abh, 7
  %i.abj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.abi
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !47
  store i8 %i.abk, ptr %i.aa, align 4, !tbaa !47
  %i.abl = lshr i64 %i.xg, 55
  %i.abm = and i64 %i.abl, 7
  %i.abn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.abm
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !47
  store i8 %i.abo, ptr %i.at, align 1, !tbaa !47
  %i.abp = lshr i64 %i.xg, 58
  %i.abq = and i64 %i.abp, 7
  %i.abr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.abq
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !47
  store i8 %i.abs, ptr %i.ab, align 2, !tbaa !47
  %i.abt = lshr i64 %i.xg, 61
  %i.abu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.abt
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !47
  store i8 %i.abv, ptr %i.au, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.r

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.abw = load i64, ptr %.1188.i.i.i, align 8, !tbaa !49 ; 18 uses
  %i.abx = trunc i64 %i.abw to i16
  store i16 %i.abx, ptr %i.a, align 2
  %i.aby = trunc i64 %i.abw to i32                ; 2 uses
  %7 = and i32 %i.aby, 255                        ; 11 uses
  %8 = lshr i32 %i.aby, 8
  %i.abz = and i32 %8, 255                        ; 9 uses
  %i.aca = icmp samesign ugt i32 %7, %i.abz
  %i.acb = shl nuw nsw i32 %i.abz, 1              ; 2 uses
  %i.acc = mul nuw nsw i32 %i.abz, 3              ; 2 uses
  br i1 %i.aca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.acd = mul nuw nsw i32 %7, 6
  %i.ace = mul nuw nsw i32 %7, 5
  %i.acf = shl nuw nsw i32 %7, 2
  %i.acg = mul nuw nsw i32 %7, 3
  %i.ach = shl nuw nsw i32 %i.abz, 2
  %i.aci = add nuw nsw i32 %i.acd, %i.abz
  %i.acj = trunc nuw nsw i32 %i.aci to i16
  %i.ack = add nuw nsw i32 %i.acb, %i.ace
  %i.acl = trunc nuw nsw i32 %i.ack to i16
  %i.acm = add nuw nsw i32 %i.acc, %i.acf
  %i.acn = trunc nuw nsw i32 %i.acm to i16
  %i.aco = add nuw nsw i32 %i.ach, %i.acg
  %i.acp = trunc nuw nsw i32 %i.aco to i16
  %i.acq = insertelement <4 x i16> poison, i16 %i.acj, i64 0
  %i.acr = insertelement <4 x i16> %i.acq, i16 %i.acl, i64 1
  %i.acs = insertelement <4 x i16> %i.acr, i16 %i.acn, i64 2
  %i.act = insertelement <4 x i16> %i.acs, i16 %i.acp, i64 3
  %i.acu = add nuw nsw <4 x i16> %i.act, splat (i16 1)
  %i.acv = udiv <4 x i16> %i.acu, splat (i16 7)
  %i.acw = shl nuw nsw i32 %7, 1
  %i.acx = mul nuw nsw i32 %i.abz, 5
  %i.acy = add nuw nsw i32 %i.acx, %i.acw
  %i.acz = trunc nuw nsw i32 %i.acy to i16
  %.lhs.trunc28.i157.i.i.i = add nuw nsw i16 %i.acz, 1
  %i.ada = udiv i16 %.lhs.trunc28.i157.i.i.i, 7
  %i.adb = trunc nuw i16 %i.ada to i8
  %i.adc = mul nuw nsw i32 %i.abz, 6
  %i.add = add nuw nsw i32 %i.adc, %7
  %i.ade = trunc nuw nsw i32 %i.add to i16
  %.lhs.trunc30.i158.i.i.i = add nuw nsw i16 %i.ade, 1
  %i.adf = udiv i16 %.lhs.trunc30.i158.i.i.i, 7
  %i.adg = trunc nuw i16 %i.adf to i8
  br label %_Z25bcdec__smooth_alpha_blockPKvPvii.exit159.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.adh = shl nuw nsw i32 %7, 2
  %i.adi = mul nuw nsw i32 %7, 3
  %i.adj = shl nuw nsw i32 %7, 1
  %i.adk = shl nuw nsw i32 %i.abz, 2
  %i.adl = add nuw nsw i32 %i.adh, %i.abz
  %i.adm = trunc nuw nsw i32 %i.adl to i16
  %i.adn = add nuw nsw i32 %i.acb, %i.adi
  %i.ado = trunc nuw nsw i32 %i.adn to i16
  %i.adp = add nuw nsw i32 %i.acc, %i.adj
  %i.adq = trunc nuw nsw i32 %i.adp to i16
  %i.adr = add nuw nsw i32 %i.adk, %7
  %i.ads = trunc nuw nsw i32 %i.adr to i16
  %i.adt = insertelement <4 x i16> poison, i16 %i.adm, i64 0
  %i.adu = insertelement <4 x i16> %i.adt, i16 %i.ado, i64 1
  %i.adv = insertelement <4 x i16> %i.adu, i16 %i.adq, i64 2
  %i.adw = insertelement <4 x i16> %i.adv, i16 %i.ads, i64 3
  %i.adx = add nuw nsw <4 x i16> %i.adw, splat (i16 1)
  %i.ady = udiv <4 x i16> %i.adx, splat (i16 5)
  br label %_Z25bcdec__smooth_alpha_blockPKvPvii.exit159.i.i.i

_Z25bcdec__smooth_alpha_blockPKvPvii.exit159.i.i.i: ; preds = %bb.m, %bb.l
  %.sink46.i147.i.i.i = phi i8 [ %i.adb, %bb.l ], [ 0, %bb.m ]
  %.sink.i148.i.i.i = phi i8 [ %i.adg, %bb.l ], [ -1, %bb.m ]
  %i.adz = phi <4 x i16> [ %i.acv, %bb.l ], [ %i.ady, %bb.m ]
  %i.aea = trunc <4 x i16> %i.adz to <4 x i8>
  store <4 x i8> %i.aea, ptr %i.s, align 2, !tbaa !47
  store i8 %.sink46.i147.i.i.i, ptr %i.t, align 2, !tbaa !47
  store i8 %.sink.i148.i.i.i, ptr %i.u, align 1, !tbaa !47
  %i.aeb = lshr i64 %i.abw, 16
  %i.aec = and i64 %i.aeb, 7
  %i.aed = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aec
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !47
  store i8 %i.aee, ptr %i.g, align 16, !tbaa !47
  %i.aef = lshr i64 %i.abw, 19
  %i.aeg = and i64 %i.aef, 7
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aeg
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !47
  store i8 %i.aei, ptr %i.v, align 2, !tbaa !47
  %i.aej = lshr i64 %i.abw, 22
  %i.aek = and i64 %i.aej, 7
  %i.ael = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aek
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !47
  store i8 %i.aem, ptr %i.w, align 4, !tbaa !47
  %i.aen = lshr i64 %i.abw, 25
  %i.aeo = and i64 %i.aen, 7
  %i.aep = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aeo
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !47
  store i8 %i.aeq, ptr %i.x, align 2, !tbaa !47
  %i.aer = lshr i64 %i.abw, 28
  %i.aes = and i64 %i.aer, 7
  %i.aet = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aes
  %i.aeu = load i8, ptr %i.aet, align 1, !tbaa !47
  store i8 %i.aeu, ptr %i.y, align 8, !tbaa !47
  %i.aev = lshr i64 %i.abw, 31
  %i.aew = and i64 %i.aev, 7
  %i.aex = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aew
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !47
  store i8 %i.aey, ptr %i.z, align 2, !tbaa !47
  %i.aez = lshr i64 %i.abw, 34
  %i.afa = and i64 %i.aez, 7
  %i.afb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afa
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !47
  store i8 %i.afc, ptr %i.aa, align 4, !tbaa !47
  %i.afd = lshr i64 %i.abw, 37
  %i.afe = and i64 %i.afd, 7
  %i.aff = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afe
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !47
  store i8 %i.afg, ptr %i.ab, align 2, !tbaa !47
  %i.afh = lshr i64 %i.abw, 40
  %i.afi = and i64 %i.afh, 7
  %i.afj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afi
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !47
  store i8 %i.afk, ptr %i.ac, align 16, !tbaa !47
  %i.afl = lshr i64 %i.abw, 43
  %i.afm = and i64 %i.afl, 7
  %i.afn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afm
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !47
  store i8 %i.afo, ptr %i.ad, align 2, !tbaa !47
  %i.afp = lshr i64 %i.abw, 46
  %i.afq = and i64 %i.afp, 7
  %i.afr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afq
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !47
  store i8 %i.afs, ptr %i.ae, align 4, !tbaa !47
  %i.aft = lshr i64 %i.abw, 49
  %i.afu = and i64 %i.aft, 7
  %i.afv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afu
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !47
  store i8 %i.afw, ptr %i.af, align 2, !tbaa !47
  %i.afx = lshr i64 %i.abw, 52
  %i.afy = and i64 %i.afx, 7
  %i.afz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afy
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !47
  store i8 %i.aga, ptr %i.ag, align 8, !tbaa !47
  %i.agb = lshr i64 %i.abw, 55
  %i.agc = and i64 %i.agb, 7
  %i.agd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agc
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !47
  store i8 %i.age, ptr %i.ah, align 2, !tbaa !47
  %i.agf = lshr i64 %i.abw, 58
  %i.agg = and i64 %i.agf, 7
  %i.agh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agg
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !47
  store i8 %i.agi, ptr %i.ai, align 4, !tbaa !47
  %i.agj = lshr i64 %i.abw, 61
  %i.agk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !47
  store i8 %i.agl, ptr %i.aj, align 2, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.agm = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !49 ; 18 uses
  %i.ago = trunc i64 %i.agn to i16
  store i16 %i.ago, ptr %i.b, align 2
  %i.agp = trunc i64 %i.agn to i32                ; 2 uses
  %9 = and i32 %i.agp, 255                        ; 11 uses
  %10 = lshr i32 %i.agp, 8
  %i.agq = and i32 %10, 255                       ; 9 uses
  %i.agr = icmp samesign ugt i32 %9, %i.agq
  %i.ags = shl nuw nsw i32 %i.agq, 1              ; 2 uses
  %i.agt = mul nuw nsw i32 %i.agq, 3              ; 2 uses
  br i1 %i.agr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_Z25bcdec__smooth_alpha_blockPKvPvii.exit159.i.i.i
  %i.agu = mul nuw nsw i32 %9, 6
  %i.agv = mul nuw nsw i32 %9, 5
  %i.agw = shl nuw nsw i32 %9, 2
  %i.agx = mul nuw nsw i32 %9, 3
  %i.agy = shl nuw nsw i32 %i.agq, 2
  %i.agz = add nuw nsw i32 %i.agu, %i.agq
  %i.aha = trunc nuw nsw i32 %i.agz to i16
  %i.ahb = add nuw nsw i32 %i.ags, %i.agv
  %i.ahc = trunc nuw nsw i32 %i.ahb to i16
  %i.ahd = add nuw nsw i32 %i.agt, %i.agw
  %i.ahe = trunc nuw nsw i32 %i.ahd to i16
  %i.ahf = add nuw nsw i32 %i.agy, %i.agx
  %i.ahg = trunc nuw nsw i32 %i.ahf to i16
  %i.ahh = insertelement <4 x i16> poison, i16 %i.aha, i64 0
  %i.ahi = insertelement <4 x i16> %i.ahh, i16 %i.ahc, i64 1
  %i.ahj = insertelement <4 x i16> %i.ahi, i16 %i.ahe, i64 2
  %i.ahk = insertelement <4 x i16> %i.ahj, i16 %i.ahg, i64 3
  %i.ahl = add nuw nsw <4 x i16> %i.ahk, splat (i16 1)
  %i.ahm = udiv <4 x i16> %i.ahl, splat (i16 7)
  %i.ahn = shl nuw nsw i32 %9, 1
  %i.aho = mul nuw nsw i32 %i.agq, 5
  %i.ahp = add nuw nsw i32 %i.aho, %i.ahn
  %i.ahq = trunc nuw nsw i32 %i.ahp to i16
  %.lhs.trunc28.i136.i.i.i = add nuw nsw i16 %i.ahq, 1
  %i.ahr = udiv i16 %.lhs.trunc28.i136.i.i.i, 7
  %i.ahs = trunc nuw i16 %i.ahr to i8
  %i.aht = mul nuw nsw i32 %i.agq, 6
  %i.ahu = add nuw nsw i32 %i.aht, %9
  %i.ahv = trunc nuw nsw i32 %i.ahu to i16
  %.lhs.trunc30.i137.i.i.i = add nuw nsw i16 %i.ahv, 1
  %i.ahw = udiv i16 %.lhs.trunc30.i137.i.i.i, 7
  %i.ahx = trunc nuw i16 %i.ahw to i8
  br label %_Z25bcdec__smooth_alpha_blockPKvPvii.exit138.i.i.i

bb.o:                                             ; preds = %_Z25bcdec__smooth_alpha_blockPKvPvii.exit159.i.i.i
  %i.ahy = shl nuw nsw i32 %9, 2
  %i.ahz = mul nuw nsw i32 %9, 3
  %i.aia = shl nuw nsw i32 %9, 1
  %i.aib = shl nuw nsw i32 %i.agq, 2
  %i.aic = add nuw nsw i32 %i.ahy, %i.agq
  %i.aid = trunc nuw nsw i32 %i.aic to i16
  %i.aie = add nuw nsw i32 %i.ags, %i.ahz
  %i.aif = trunc nuw nsw i32 %i.aie to i16
  %i.aig = add nuw nsw i32 %i.agt, %i.aia
  %i.aih = trunc nuw nsw i32 %i.aig to i16
  %i.aii = add nuw nsw i32 %i.aib, %9
  %i.aij = trunc nuw nsw i32 %i.aii to i16
  %i.aik = insertelement <4 x i16> poison, i16 %i.aid, i64 0
  %i.ail = insertelement <4 x i16> %i.aik, i16 %i.aif, i64 1
  %i.aim = insertelement <4 x i16> %i.ail, i16 %i.aih, i64 2
  %i.ain = insertelement <4 x i16> %i.aim, i16 %i.aij, i64 3
  %i.aio = add nuw nsw <4 x i16> %i.ain, splat (i16 1)
  %i.aip = udiv <4 x i16> %i.aio, splat (i16 5)
  br label %_Z25bcdec__smooth_alpha_blockPKvPvii.exit138.i.i.i

_Z25bcdec__smooth_alpha_blockPKvPvii.exit138.i.i.i: ; preds = %bb.o, %bb.n
  %.sink46.i126.i.i.i = phi i8 [ %i.ahs, %bb.n ], [ 0, %bb.o ]
  %.sink.i127.i.i.i = phi i8 [ %i.ahx, %bb.n ], [ -1, %bb.o ]
  %i.aiq = phi <4 x i16> [ %i.ahm, %bb.n ], [ %i.aip, %bb.o ]
  %i.air = trunc <4 x i16> %i.aiq to <4 x i8>
  store <4 x i8> %i.air, ptr %i.al, align 2, !tbaa !47
  store i8 %.sink46.i126.i.i.i, ptr %i.am, align 2, !tbaa !47
  store i8 %.sink.i127.i.i.i, ptr %i.an, align 1, !tbaa !47
  %i.ais = lshr i64 %i.agn, 16
  %i.ait = and i64 %i.ais, 7
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ait
  %i.aiv = load i8, ptr %i.aiu, align 1, !tbaa !47
  store i8 %i.aiv, ptr %i.ak, align 1, !tbaa !47
  %i.aiw = lshr i64 %i.agn, 19
  %i.aix = and i64 %i.aiw, 7
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aix
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !47
  store i8 %i.aiz, ptr %i.ao, align 1, !tbaa !47
  %i.aja = lshr i64 %i.agn, 22
  %i.ajb = and i64 %i.aja, 7
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajb
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !47
  store i8 %i.ajd, ptr %i.ap, align 1, !tbaa !47
  %i.aje = lshr i64 %i.agn, 25
  %i.ajf = and i64 %i.aje, 7
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajf
  %i.ajh = load i8, ptr %i.ajg, align 1, !tbaa !47
  store i8 %i.ajh, ptr %i.aq, align 1, !tbaa !47
  %i.aji = lshr i64 %i.agn, 28
  %i.ajj = and i64 %i.aji, 7
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajj
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !47
  store i8 %i.ajl, ptr %i.ar, align 1, !tbaa !47
  %i.ajm = lshr i64 %i.agn, 31
  %i.ajn = and i64 %i.ajm, 7
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajn
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !47
  store i8 %i.ajp, ptr %i.as, align 1, !tbaa !47
  %i.ajq = lshr i64 %i.agn, 34
  %i.ajr = and i64 %i.ajq, 7
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajr
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !47
  store i8 %i.ajt, ptr %i.at, align 1, !tbaa !47
  %i.aju = lshr i64 %i.agn, 37
  %i.ajv = and i64 %i.aju, 7
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajv
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !47
  store i8 %i.ajx, ptr %i.au, align 1, !tbaa !47
  %i.ajy = lshr i64 %i.agn, 40
  %i.ajz = and i64 %i.ajy, 7
  %i.aka = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ajz
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !47
  store i8 %i.akb, ptr %i.av, align 1, !tbaa !47
  %i.akc = lshr i64 %i.agn, 43
  %i.akd = and i64 %i.akc, 7
  %i.ake = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akd
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !47
  store i8 %i.akf, ptr %i.aw, align 1, !tbaa !47
  %i.akg = lshr i64 %i.agn, 46
  %i.akh = and i64 %i.akg, 7
  %i.aki = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akh
  %i.akj = load i8, ptr %i.aki, align 1, !tbaa !47
  store i8 %i.akj, ptr %i.ax, align 1, !tbaa !47
  %i.akk = lshr i64 %i.agn, 49
  %i.akl = and i64 %i.akk, 7
  %i.akm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akl
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !47
  store i8 %i.akn, ptr %i.ay, align 1, !tbaa !47
  %i.ako = lshr i64 %i.agn, 52
  %i.akp = and i64 %i.ako, 7
  %i.akq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akp
  %i.akr = load i8, ptr %i.akq, align 1, !tbaa !47
  store i8 %i.akr, ptr %i.az, align 1, !tbaa !47
  %i.aks = lshr i64 %i.agn, 55
  %i.akt = and i64 %i.aks, 7
  %i.aku = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akt
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !47
  store i8 %i.akv, ptr %i.ba, align 1, !tbaa !47
  %i.akw = lshr i64 %i.agn, 58
  %i.akx = and i64 %i.akw, 7
  %i.aky = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akx
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !47
  store i8 %i.akz, ptr %i.bb, align 1, !tbaa !47
  %i.ala = lshr i64 %i.agn, 61
  %i.alb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ala
  %i.alc = load i8, ptr %i.alb, align 1, !tbaa !47
  store i8 %i.alc, ptr %i.bc, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.r

bb.p:                                             ; preds = %bb.b, %bb.b
  %i.ald = icmp eq i32 %i.dm, 9
  %i.ale = zext i1 %i.ald to i32
  call void @bcdec_bc6h_half(ptr noundef %.1188.i.i.i, ptr noundef nonnull %i.h, i32 noundef 12, i32 noundef %i.ale)
  br label %bb.r

bb.q:                                             ; preds = %bb.b
  call void @bcdec_bc7(ptr noundef %.1188.i.i.i, ptr noundef nonnull %i.g, i32 noundef 16)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_Z25bcdec__smooth_alpha_blockPKvPvii.exit138.i.i.i, %_Z25bcdec__smooth_alpha_blockPKvPvii.exit117.i.i.i, %_Z25bcdec__smooth_alpha_blockPKvPvii.exit.i.i.i, %bb.d, %bb.c
  %i.alf = load ptr, ptr %i.o, align 8, !tbaa !391, !nonnull !164, !align !166
  %i.alg = load i64, ptr %i.alf, align 8, !tbaa !139
  %i.alh = getelementptr inbounds nuw i8, ptr %.1188.i.i.i, i64 %i.alg ; 2 uses
  %i.ali = load ptr, ptr %i.r, align 8, !tbaa !392, !nonnull !164, !align !165 ; 2 uses
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !141 ; 2 uses
  %i.alk = icmp eq i32 %i.alj, 5
  %.pre.i.i.i = load ptr, ptr %i.cd, align 8, !tbaa !393 ; 2 uses
  br i1 %i.alk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.all = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !394
  %i.aln = icmp eq i32 %i.alm, 1111971922
  br i1 %i.aln, label %.preheader.preheader.i.i.i, label %bb.t

.preheader.preheader.i.i.i:                       ; preds = %bb.s
  %i.alo = load i8, ptr %i.g, align 16, !tbaa !47
  %i.alp = load i8, ptr %i.ao, align 1, !tbaa !47
  store i8 %i.alp, ptr %i.g, align 16, !tbaa !47
  store i8 %i.alo, ptr %i.ao, align 1, !tbaa !47
  %i.alq = load i8, ptr %i.w, align 4, !tbaa !47
  %i.alr = load i8, ptr %i.aq, align 1, !tbaa !47
  store i8 %i.alr, ptr %i.w, align 4, !tbaa !47
  store i8 %i.alq, ptr %i.aq, align 1, !tbaa !47
  %i.als = load i8, ptr %i.y, align 8, !tbaa !47
  %i.alt = load i8, ptr %i.as, align 1, !tbaa !47
  store i8 %i.alt, ptr %i.y, align 8, !tbaa !47
  store i8 %i.als, ptr %i.as, align 1, !tbaa !47
  %i.alu = load i8, ptr %i.aa, align 4, !tbaa !47
  %i.alv = load i8, ptr %i.au, align 1, !tbaa !47
  store i8 %i.alv, ptr %i.aa, align 4, !tbaa !47
  store i8 %i.alu, ptr %i.au, align 1, !tbaa !47
  %i.alw = load i8, ptr %i.ac, align 16, !tbaa !47
  %i.alx = load i8, ptr %i.aw, align 1, !tbaa !47
  store i8 %i.alx, ptr %i.ac, align 16, !tbaa !47
  store i8 %i.alw, ptr %i.aw, align 1, !tbaa !47
  %i.aly = load i8, ptr %i.ae, align 4, !tbaa !47
  %i.alz = load i8, ptr %i.ay, align 1, !tbaa !47
  store i8 %i.alz, ptr %i.ae, align 4, !tbaa !47
  store i8 %i.aly, ptr %i.ay, align 1, !tbaa !47
  %i.ama = load i8, ptr %i.ag, align 8, !tbaa !47
  %i.amb = load i8, ptr %i.ba, align 1, !tbaa !47
  store i8 %i.amb, ptr %i.ag, align 8, !tbaa !47
  store i8 %i.ama, ptr %i.ba, align 1, !tbaa !47
  %i.amc = load i8, ptr %i.ai, align 4, !tbaa !47
  %i.amd = load i8, ptr %i.bc, align 1, !tbaa !47
  store i8 %i.amd, ptr %i.ai, align 4, !tbaa !47
  store i8 %i.amc, ptr %i.bc, align 1, !tbaa !47
  %i.ame = load i8, ptr %i.bi, align 16, !tbaa !47
  %i.amf = load i8, ptr %i.bt, align 1, !tbaa !47
  store i8 %i.amf, ptr %i.bi, align 16, !tbaa !47
  store i8 %i.ame, ptr %i.bt, align 1, !tbaa !47
  %i.amg = load i8, ptr %i.bj, align 4, !tbaa !47
  %i.amh = load i8, ptr %i.bu, align 1, !tbaa !47
  store i8 %i.amh, ptr %i.bj, align 4, !tbaa !47
  store i8 %i.amg, ptr %i.bu, align 1, !tbaa !47
  %i.ami = load i8, ptr %i.bk, align 8, !tbaa !47
  %i.amj = load i8, ptr %i.bv, align 1, !tbaa !47
  store i8 %i.amj, ptr %i.bk, align 8, !tbaa !47
  store i8 %i.ami, ptr %i.bv, align 1, !tbaa !47
  %i.amk = load i8, ptr %i.bl, align 4, !tbaa !47
  %i.aml = load i8, ptr %i.bw, align 1, !tbaa !47
  store i8 %i.aml, ptr %i.bl, align 4, !tbaa !47
  store i8 %i.amk, ptr %i.bw, align 1, !tbaa !47
  %i.amm = load i8, ptr %i.bm, align 16, !tbaa !47
  %i.amn = load i8, ptr %i.bx, align 1, !tbaa !47
  store i8 %i.amn, ptr %i.bm, align 16, !tbaa !47
  store i8 %i.amm, ptr %i.bx, align 1, !tbaa !47
  %i.amo = load i8, ptr %i.bn, align 4, !tbaa !47
  %i.amp = load i8, ptr %i.by, align 1, !tbaa !47
  store i8 %i.amp, ptr %i.bn, align 4, !tbaa !47
  store i8 %i.amo, ptr %i.by, align 1, !tbaa !47
  %i.amq = load i8, ptr %i.bo, align 8, !tbaa !47
  %i.amr = load i8, ptr %i.bz, align 1, !tbaa !47
  store i8 %i.amr, ptr %i.bo, align 8, !tbaa !47
  store i8 %i.amq, ptr %i.bz, align 1, !tbaa !47
  %i.ams = load i8, ptr %i.bp, align 4, !tbaa !47
  %i.amt = load i8, ptr %i.ca, align 1, !tbaa !47
  store i8 %i.amt, ptr %i.bp, align 4, !tbaa !47
  store i8 %i.ams, ptr %i.ca, align 1, !tbaa !47
  br label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.amu = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 4
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !142
  %.not.i.i.i = icmp sgt i32 %i.amv, -1
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  switch i32 %i.alj, label %_ZN11OpenImageIO4v3_1L15ComputeNormalRGEPh.exit.i.i.i [
end_hunk_0
