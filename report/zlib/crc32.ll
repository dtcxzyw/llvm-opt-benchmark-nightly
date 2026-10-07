Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/crc32?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@crc32_z:bb.a
  %i.lc = zext i32 %i.lb to i64
  %i.ld = xor i64 %i.ky, %i.lc                    ; 2 uses
  %i.le = lshr i64 %i.ld, 8
  %i.lf = and i64 %i.ld, 255
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !9
  %i.li = zext i32 %i.lh to i64
  %i.lj = xor i64 %i.le, %i.li                    ; 2 uses
  %i.lk = lshr i64 %i.lj, 8
  %i.ll = and i64 %i.lj, 255
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !9
  %i.lo = zext i32 %i.ln to i64
  %i.lp = xor i64 %i.lk, %i.lo                    ; 2 uses
  %i.lq = lshr i64 %i.lp, 8
  %i.lr = and i64 %i.lp, 255
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !9
  %i.lu = zext i32 %i.lt to i64
  %i.lv = xor i64 %i.lq, %i.lu                    ; 2 uses
  %i.lw = lshr i64 %i.lv, 8
  %i.lx = and i64 %i.lv, 255
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !9
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %.0177.lcssa, i64 16
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !17
  %i.md = xor i64 %i.mc, %.0169.lcssa
  %i.me = xor i64 %i.md, %i.ma
  %i.mf = xor i64 %i.me, %i.lw                    ; 2 uses
  %i.mg = lshr i64 %i.mf, 8
  %i.mh = and i64 %i.mf, 255
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !9
  %i.mk = zext i32 %i.mj to i64
  %i.ml = xor i64 %i.mg, %i.mk                    ; 2 uses
  %i.mm = lshr i64 %i.ml, 8
  %i.mn = and i64 %i.ml, 255
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !9
  %i.mq = zext i32 %i.mp to i64
  %i.mr = xor i64 %i.mm, %i.mq                    ; 2 uses
  %i.ms = lshr i64 %i.mr, 8
  %i.mt = and i64 %i.mr, 255
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !9
  %i.mw = zext i32 %i.mv to i64
  %i.mx = xor i64 %i.ms, %i.mw                    ; 2 uses
  %i.my = lshr i64 %i.mx, 8
  %i.mz = and i64 %i.mx, 255
  %i.na = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !9
  %i.nc = zext i32 %i.nb to i64
  %i.nd = xor i64 %i.my, %i.nc                    ; 2 uses
  %i.ne = lshr i64 %i.nd, 8
  %i.nf = and i64 %i.nd, 255
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !9
  %i.ni = zext i32 %i.nh to i64
  %i.nj = xor i64 %i.ne, %i.ni                    ; 2 uses
  %i.nk = lshr i64 %i.nj, 8
  %i.nl = and i64 %i.nj, 255
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !9
  %i.no = zext i32 %i.nn to i64
  %i.np = xor i64 %i.nk, %i.no                    ; 2 uses
  %i.nq = lshr i64 %i.np, 8
  %i.nr = and i64 %i.np, 255
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !9
  %i.nu = zext i32 %i.nt to i64
  %i.nv = xor i64 %i.nq, %i.nu                    ; 2 uses
  %i.nw = lshr i64 %i.nv, 8
  %i.nx = and i64 %i.nv, 255
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !9
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %.0177.lcssa, i64 24
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !17
  %i.od = xor i64 %i.oc, %.0167.lcssa
  %i.oe = xor i64 %i.od, %i.oa
  %i.of = xor i64 %i.oe, %i.nw                    ; 2 uses
  %i.og = lshr i64 %i.of, 8
  %i.oh = and i64 %i.of, 255
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !9
  %i.ok = zext i32 %i.oj to i64
  %i.ol = xor i64 %i.og, %i.ok                    ; 2 uses
  %i.om = lshr i64 %i.ol, 8
  %i.on = and i64 %i.ol, 255
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !9
  %i.oq = zext i32 %i.op to i64
  %i.or = xor i64 %i.om, %i.oq                    ; 2 uses
  %i.os = lshr i64 %i.or, 8
  %i.ot = and i64 %i.or, 255
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !9
  %i.ow = zext i32 %i.ov to i64
  %i.ox = xor i64 %i.os, %i.ow                    ; 2 uses
  %i.oy = lshr i64 %i.ox, 8
  %i.oz = and i64 %i.ox, 255
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.oz
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !9
  %i.pc = zext i32 %i.pb to i64
  %i.pd = xor i64 %i.oy, %i.pc                    ; 2 uses
  %i.pe = lshr i64 %i.pd, 8
  %i.pf = and i64 %i.pd, 255
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !9
  %i.pi = zext i32 %i.ph to i64
  %i.pj = xor i64 %i.pe, %i.pi                    ; 2 uses
  %i.pk = lshr i64 %i.pj, 8
  %i.pl = and i64 %i.pj, 255
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !9
  %i.po = zext i32 %i.pn to i64
  %i.pp = xor i64 %i.pk, %i.po                    ; 2 uses
  %i.pq = lshr i64 %i.pp, 8
  %i.pr = and i64 %i.pp, 255
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !9
  %i.pu = zext i32 %i.pt to i64
  %i.pv = xor i64 %i.pq, %i.pu                    ; 2 uses
  %i.pw = lshr i64 %i.pv, 8
  %i.px = and i64 %i.pv, 255
  %i.py = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !9
  %i.qa = zext i32 %i.pz to i64
  %i.qb = getelementptr inbounds nuw i8, ptr %.0177.lcssa, i64 32
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !17
  %i.qd = xor i64 %i.qc, %.0165.lcssa
  %i.qe = xor i64 %i.qd, %i.qa
  %i.qf = xor i64 %i.qe, %i.pw                    ; 2 uses
  %i.qg = lshr i64 %i.qf, 8
  %i.qh = and i64 %i.qf, 255
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !9
  %i.qk = zext i32 %i.qj to i64
  %i.ql = xor i64 %i.qg, %i.qk                    ; 2 uses
  %i.qm = lshr i64 %i.ql, 8
  %i.qn = and i64 %i.ql, 255
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !9
  %i.qq = zext i32 %i.qp to i64
  %i.qr = xor i64 %i.qm, %i.qq                    ; 2 uses
  %i.qs = lshr i64 %i.qr, 8
  %i.qt = and i64 %i.qr, 255
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !9
  %i.qw = zext i32 %i.qv to i64
  %i.qx = xor i64 %i.qs, %i.qw                    ; 2 uses
  %i.qy = lshr i64 %i.qx, 8
  %i.qz = and i64 %i.qx, 255
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.qz
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !9
  %i.rc = zext i32 %i.rb to i64
  %i.rd = xor i64 %i.qy, %i.rc                    ; 2 uses
  %i.re = lshr i64 %i.rd, 8
  %i.rf = and i64 %i.rd, 255
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !9
  %i.ri = zext i32 %i.rh to i64
  %i.rj = xor i64 %i.re, %i.ri                    ; 2 uses
  %i.rk = lshr i64 %i.rj, 8
  %i.rl = and i64 %i.rj, 255
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !9
  %i.ro = zext i32 %i.rn to i64
  %i.rp = xor i64 %i.rk, %i.ro                    ; 2 uses
  %i.rq = lshr i64 %i.rp, 8
  %i.rr = and i64 %i.rp, 255
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.rr
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !9
  %i.ru = zext i32 %i.rt to i64
  %i.rv = xor i64 %i.rq, %i.ru                    ; 2 uses
  %i.rw = lshr i64 %i.rv, 8
  %i.rx = and i64 %i.rv, 255
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.rx
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !9
  %i.sa = getelementptr inbounds nuw i8, ptr %.0177.lcssa, i64 40
  %i.sb = zext i32 %i.rz to i64
  %i.sc = xor i64 %i.rw, %i.sb
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge235, %bb.b
  %.2190 = phi i64 [ %i.sc, %._crit_edge235 ], [ %i.c, %bb.b ] ; 2 uses
  %.1185 = phi ptr [ %i.sa, %._crit_edge235 ], [ %1, %bb.b ] ; 2 uses
  %.1182 = phi i64 [ %i.v, %._crit_edge235 ], [ %2, %bb.b ] ; 3 uses
  %i.sd = icmp ugt i64 %.1182, 7
  br i1 %i.sd, label %.lr.ph246, label %.preheader

.preheader:                                       ; preds = %.lr.ph246, %bb.c
  %.3191.lcssa = phi i64 [ %.2190, %bb.c ], [ %i.va, %.lr.ph246 ] ; 4 uses
  %.2186.lcssa = phi ptr [ %.1185, %bb.c ], [ %i.uu, %.lr.ph246 ] ; 3 uses
  %.2183.lcssa = phi i64 [ %.1182, %bb.c ], [ %i.so, %.lr.ph246 ] ; 5 uses
  %.not198250 = icmp eq i64 %.2183.lcssa, 0
  br i1 %.not198250, label %._crit_edge255, label %.lr.ph254.preheader

.lr.ph254.preheader:                              ; preds = %.preheader
  %lcmp.mod.not = trunc i64 %.2183.lcssa to i1
  br i1 %lcmp.mod.not, label %.lr.ph254.prol, label %.lr.ph254.prol.loopexit

.lr.ph254.prol:                                   ; preds = %.lr.ph254.preheader
  %i.se = add nsw i64 %.2183.lcssa, -1
  %i.sf = lshr i64 %.3191.lcssa, 8
  %i.sg = getelementptr inbounds nuw i8, ptr %.2186.lcssa, i64 1
  %i.sh = load i8, ptr %.2186.lcssa, align 1, !tbaa !15
  %.4.tr.prol = trunc i64 %.3191.lcssa to i8
  %.narrow.prol = xor i8 %i.sh, %.4.tr.prol
  %i.si = zext i8 %.narrow.prol to i64
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !9
  %i.sl = zext i32 %i.sk to i64
  %i.sm = xor i64 %i.sf, %i.sl                    ; 2 uses
  br label %.lr.ph254.prol.loopexit

.lr.ph254.prol.loopexit:                          ; preds = %.lr.ph254.prol, %.lr.ph254.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph254.preheader ], [ %i.sm, %.lr.ph254.prol ]
  %.3253.unr = phi i64 [ %.2183.lcssa, %.lr.ph254.preheader ], [ %i.se, %.lr.ph254.prol ]
  %.3187252.unr = phi ptr [ %.2186.lcssa, %.lr.ph254.preheader ], [ %i.sg, %.lr.ph254.prol ]
  %.4251.unr = phi i64 [ %.3191.lcssa, %.lr.ph254.preheader ], [ %i.sm, %.lr.ph254.prol ]
  %i.sn = icmp eq i64 %.2183.lcssa, 1
  br i1 %i.sn, label %._crit_edge255, label %.lr.ph254

.lr.ph246:                                        ; preds = %bb.c, %.lr.ph246
  %.2183244 = phi i64 [ %i.so, %.lr.ph246 ], [ %.1182, %bb.c ]
  %.2186243 = phi ptr [ %i.uu, %.lr.ph246 ], [ %.1185, %bb.c ] ; 9 uses
  %.3191242 = phi i64 [ %i.va, %.lr.ph246 ], [ %.2190, %bb.c ] ; 2 uses
  %i.so = add i64 %.2183244, -8                   ; 3 uses
  %i.sp = lshr i64 %.3191242, 8
  %i.sq = getelementptr inbounds nuw i8, ptr %.2186243, i64 1
  %i.sr = load i8, ptr %.2186243, align 1, !tbaa !15
  %.3191.tr = trunc i64 %.3191242 to i8
  %.narrow199 = xor i8 %i.sr, %.3191.tr
  %i.ss = zext i8 %.narrow199 to i64
  %i.st = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 4, !tbaa !9
  %i.sv = zext i32 %i.su to i64
  %i.sw = xor i64 %i.sp, %i.sv                    ; 2 uses
  %i.sx = lshr i64 %i.sw, 8
  %i.sy = getelementptr inbounds nuw i8, ptr %.2186243, i64 2
  %i.sz = load i8, ptr %i.sq, align 1, !tbaa !15
  %.tr = trunc i64 %i.sw to i8
  %.narrow200 = xor i8 %i.sz, %.tr
  %i.ta = zext i8 %.narrow200 to i64
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !9
  %i.td = zext i32 %i.tc to i64
  %i.te = xor i64 %i.sx, %i.td                    ; 2 uses
  %i.tf = lshr i64 %i.te, 8
  %i.tg = getelementptr inbounds nuw i8, ptr %.2186243, i64 3
  %i.th = load i8, ptr %i.sy, align 1, !tbaa !15
  %.tr201 = trunc i64 %i.te to i8
  %.narrow202 = xor i8 %i.th, %.tr201
  %i.ti = zext i8 %.narrow202 to i64
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.ti
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !9
  %i.tl = zext i32 %i.tk to i64
  %i.tm = xor i64 %i.tf, %i.tl                    ; 2 uses
  %i.tn = lshr i64 %i.tm, 8
  %i.to = getelementptr inbounds nuw i8, ptr %.2186243, i64 4
  %i.tp = load i8, ptr %i.tg, align 1, !tbaa !15
  %.tr203 = trunc i64 %i.tm to i8
  %.narrow204 = xor i8 %i.tp, %.tr203
  %i.tq = zext i8 %.narrow204 to i64
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.tq
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !9
  %i.tt = zext i32 %i.ts to i64
  %i.tu = xor i64 %i.tn, %i.tt                    ; 2 uses
  %i.tv = lshr i64 %i.tu, 8
  %i.tw = getelementptr inbounds nuw i8, ptr %.2186243, i64 5
  %i.tx = load i8, ptr %i.to, align 1, !tbaa !15
  %.tr205 = trunc i64 %i.tu to i8
  %.narrow206 = xor i8 %i.tx, %.tr205
  %i.ty = zext i8 %.narrow206 to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !9
  %i.ub = zext i32 %i.ua to i64
  %i.uc = xor i64 %i.tv, %i.ub                    ; 2 uses
  %i.ud = lshr i64 %i.uc, 8
  %i.ue = getelementptr inbounds nuw i8, ptr %.2186243, i64 6
  %i.uf = load i8, ptr %i.tw, align 1, !tbaa !15
  %.tr207 = trunc i64 %i.uc to i8
  %.narrow208 = xor i8 %i.uf, %.tr207
  %i.ug = zext i8 %.narrow208 to i64
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.ug
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !9
  %i.uj = zext i32 %i.ui to i64
  %i.uk = xor i64 %i.ud, %i.uj                    ; 2 uses
  %i.ul = lshr i64 %i.uk, 8
  %i.um = getelementptr inbounds nuw i8, ptr %.2186243, i64 7
  %i.un = load i8, ptr %i.ue, align 1, !tbaa !15
  %.tr209 = trunc i64 %i.uk to i8
  %.narrow210 = xor i8 %i.un, %.tr209
  %i.uo = zext i8 %.narrow210 to i64
  %i.up = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.uo
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !9
  %i.ur = zext i32 %i.uq to i64
  %i.us = xor i64 %i.ul, %i.ur                    ; 2 uses
  %i.ut = lshr i64 %i.us, 8
  %i.uu = getelementptr inbounds nuw i8, ptr %.2186243, i64 8 ; 2 uses
  %i.uv = load i8, ptr %i.um, align 1, !tbaa !15
  %.tr211 = trunc i64 %i.us to i8
  %.narrow212 = xor i8 %i.uv, %.tr211
  %i.uw = zext i8 %.narrow212 to i64
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.uw
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !9
  %i.uz = zext i32 %i.uy to i64
  %i.va = xor i64 %i.ut, %i.uz                    ; 2 uses
  %i.vb = icmp ugt i64 %i.so, 7
  br i1 %i.vb, label %.lr.ph246, label %.preheader, !llvm.loop !13

.lr.ph254:                                        ; preds = %.lr.ph254.prol.loopexit, %.lr.ph254
  %.3253 = phi i64 [ %i.vk, %.lr.ph254 ], [ %.3253.unr, %.lr.ph254.prol.loopexit ]
  %.3187252 = phi ptr [ %i.vm, %.lr.ph254 ], [ %.3187252.unr, %.lr.ph254.prol.loopexit ] ; 3 uses
  %.4251 = phi i64 [ %i.vs, %.lr.ph254 ], [ %.4251.unr, %.lr.ph254.prol.loopexit ] ; 2 uses
  %i.vc = lshr i64 %.4251, 8
  %i.vd = getelementptr inbounds nuw i8, ptr %.3187252, i64 1
  %i.ve = load i8, ptr %.3187252, align 1, !tbaa !15
  %.4.tr = trunc i64 %.4251 to i8
  %.narrow = xor i8 %i.ve, %.4.tr
  %i.vf = zext i8 %.narrow to i64
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.vf
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !9
  %i.vi = zext i32 %i.vh to i64
  %i.vj = xor i64 %i.vc, %i.vi                    ; 2 uses
  %i.vk = add nsw i64 %.3253, -2                  ; 2 uses
  %i.vl = lshr i64 %i.vj, 8
  %i.vm = getelementptr inbounds nuw i8, ptr %.3187252, i64 2
  %i.vn = load i8, ptr %i.vd, align 1, !tbaa !15
  %.4.tr.1 = trunc i64 %i.vj to i8
  %.narrow.1 = xor i8 %i.vn, %.4.tr.1
  %i.vo = zext i8 %.narrow.1 to i64
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.vo
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !9
  %i.vr = zext i32 %i.vq to i64
  %i.vs = xor i64 %i.vl, %i.vr                    ; 2 uses
  %.not198.1 = icmp eq i64 %i.vk, 0
  br i1 %.not198.1, label %._crit_edge255, label %.lr.ph254, !llvm.loop !14

._crit_edge255:                                   ; preds = %.lr.ph254.prol.loopexit, %.lr.ph254, %.preheader
  %.4.lcssa = phi i64 [ %.3191.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph254.prol.loopexit ], [ %i.vs, %.lr.ph254 ]
  %i.vt = xor i64 %.4.lcssa, 4294967295
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge255
  %.0192 = phi i64 [ %i.vt, %._crit_edge255 ], [ 0, %bb.a ]
  ret i64 %.0192
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @crc32(i64 noundef %0, ptr nofree noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call i64 @crc32_z(i64 noundef %0, ptr noundef %1, i64 noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i64 0, 4294967296) i64 @crc32_combine_gen64(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %x2nmodp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10.i = icmp eq i64 %0, 0
  br i1 %.not10.i, label %x2nmodp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %multmodp.exit.i
  %.013.i = phi i64 [ %.1.i, %multmodp.exit.i ], [ 2147483648, %bb.b ] ; 2 uses
  %.0712.i = phi i32 [ %i.q, %multmodp.exit.i ], [ 3, %bb.b ] ; 2 uses
  %.0811.i = phi i64 [ %i.p, %multmodp.exit.i ], [ %0, %bb.b ] ; 2 uses
  %.not9.i = trunc i64 %.0811.i to i1
  br i1 %.not9.i, label %bb.c, label %multmodp.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.b = and i32 %.0712.i, 31
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @x2n_table, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.012.i.i = phi i64 [ %.013.i, %bb.c ], [ %i.o, %bb.f ] ; 3 uses
  %.011.i.i = phi i64 [ 2147483648, %bb.c ], [ %i.l, %bb.f ] ; 3 uses
  %.0.i.i = phi i64 [ 0, %bb.c ], [ %.1.i.i, %bb.f ] ; 2 uses
  %i.g = and i64 %.011.i.i, %i.f
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = xor i64 %.0.i.i, %.012.i.i               ; 2 uses
  %i.i = add nuw nsw i64 %.011.i.i, 4294967295
  %i.j = and i64 %i.i, %i.f
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %multmodp.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i.i = phi i64 [ %i.h, %bb.e ], [ %.0.i.i, %bb.d ]
  %i.l = lshr i64 %.011.i.i, 1
  %.not13.i.i = trunc i64 %.012.i.i to i1
  %i.m = lshr i64 %.012.i.i, 1                    ; 2 uses
  %i.n = xor i64 %i.m, 3988292384
  %i.o = select i1 %.not13.i.i, i64 %i.n, i64 %i.m
  br label %bb.d

multmodp.exit.i:                                  ; preds = %bb.e, %.lr.ph.i
  %.1.i = phi i64 [ %.013.i, %.lr.ph.i ], [ %i.h, %bb.e ] ; 2 uses
  %i.p = lshr i64 %.0811.i, 1                     ; 2 uses
  %i.q = add nuw nsw i32 %.0712.i, 1
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %x2nmodp.exit, label %.lr.ph.i, !llvm.loop !0

x2nmodp.exit:                                     ; preds = %multmodp.exit.i, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 2147483648, %bb.b ], [ %.1.i, %multmodp.exit.i ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i64 0, 4294967296) i64 @crc32_combine_gen(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %crc32_combine_gen64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10.i.i = icmp eq i64 %0, 0
  br i1 %.not10.i.i, label %crc32_combine_gen64.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %multmodp.exit.i.i
  %.013.i.i = phi i64 [ %.1.i.i, %multmodp.exit.i.i ], [ 2147483648, %bb.b ] ; 2 uses
  %.0712.i.i = phi i32 [ %i.q, %multmodp.exit.i.i ], [ 3, %bb.b ] ; 2 uses
  %.0811.i.i = phi i64 [ %i.p, %multmodp.exit.i.i ], [ %0, %bb.b ] ; 2 uses
  %.not9.i.i = trunc i64 %.0811.i.i to i1
  br i1 %.not9.i.i, label %bb.c, label %multmodp.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.b = and i32 %.0712.i.i, 31
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @x2n_table, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.012.i.i.i = phi i64 [ %.013.i.i, %bb.c ], [ %i.o, %bb.f ] ; 3 uses
  %.011.i.i.i = phi i64 [ 2147483648, %bb.c ], [ %i.l, %bb.f ] ; 3 uses
  %.0.i.i.i = phi i64 [ 0, %bb.c ], [ %.1.i.i.i, %bb.f ] ; 2 uses
  %i.g = and i64 %.011.i.i.i, %i.f
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = xor i64 %.0.i.i.i, %.012.i.i.i           ; 2 uses
  %i.i = add nuw nsw i64 %.011.i.i.i, 4294967295
  %i.j = and i64 %i.i, %i.f
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %multmodp.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i.i.i = phi i64 [ %i.h, %bb.e ], [ %.0.i.i.i, %bb.d ]
  %i.l = lshr i64 %.011.i.i.i, 1
  %.not13.i.i.i = trunc i64 %.012.i.i.i to i1
  %i.m = lshr i64 %.012.i.i.i, 1                  ; 2 uses
  %i.n = xor i64 %i.m, 3988292384
  %i.o = select i1 %.not13.i.i.i, i64 %i.n, i64 %i.m
  br label %bb.d

multmodp.exit.i.i:                                ; preds = %bb.e, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %.013.i.i, %.lr.ph.i.i ], [ %i.h, %bb.e ] ; 2 uses
  %i.p = lshr i64 %.0811.i.i, 1                   ; 2 uses
  %i.q = add nuw nsw i32 %.0712.i.i, 1
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %crc32_combine_gen64.exit, label %.lr.ph.i.i, !llvm.loop !0

crc32_combine_gen64.exit:                         ; preds = %multmodp.exit.i.i, %bb.a, %bb.b
  %.0.i = phi i64 [ 0, %bb.a ], [ 2147483648, %bb.b ], [ %.1.i.i, %multmodp.exit.i.i ]
  ret i64 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i64 0, 4294967296) i64 @crc32_combine_op(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %0, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.012.i = phi i64 [ %i.b, %bb.b ], [ %i.k, %bb.e ] ; 3 uses
  %.011.i = phi i64 [ 2147483648, %bb.b ], [ %i.h, %bb.e ] ; 3 uses
  %.0.i = phi i64 [ 0, %bb.b ], [ %.1.i, %bb.e ]  ; 2 uses
  %i.c = and i64 %.011.i, %2
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = xor i64 %.0.i, %.012.i                   ; 2 uses
  %i.e = add nsw i64 %.011.i, -1
  %i.f = and i64 %i.e, %2
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %multmodp.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi i64 [ %i.d, %bb.d ], [ %.0.i, %bb.c ]
  %i.h = lshr i64 %.011.i, 1
  %.not13.i = trunc i64 %.012.i to i1
  %i.i = lshr i64 %.012.i, 1                      ; 2 uses
  %i.j = xor i64 %i.i, 3988292384
  %i.k = select i1 %.not13.i, i64 %i.j, i64 %i.i
  br label %bb.c

multmodp.exit:                                    ; preds = %bb.d
  %i.l = and i64 %1, 4294967295
  %i.m = xor i64 %i.d, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %multmodp.exit
  %.0 = phi i64 [ %i.m, %multmodp.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i64 0, 4294967296) i64 @crc32_combine64(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %crc32_combine_op.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10.i.i = icmp eq i64 %2, 0
  br i1 %.not10.i.i, label %crc32_combine_gen64.exit.thread7, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %multmodp.exit.i.i
  %.013.i.i = phi i64 [ %.1.i.i, %multmodp.exit.i.i ], [ 2147483648, %bb.b ] ; 2 uses
  %.0712.i.i = phi i32 [ %i.q, %multmodp.exit.i.i ], [ 3, %bb.b ] ; 2 uses
  %.0811.i.i = phi i64 [ %i.p, %multmodp.exit.i.i ], [ %2, %bb.b ] ; 2 uses
  %.not9.i.i = trunc i64 %.0811.i.i to i1
  br i1 %.not9.i.i, label %bb.c, label %multmodp.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.b = and i32 %.0712.i.i, 31
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @x2n_table, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.012.i.i.i = phi i64 [ %.013.i.i, %bb.c ], [ %i.o, %bb.f ] ; 3 uses
  %.011.i.i.i = phi i64 [ 2147483648, %bb.c ], [ %i.l, %bb.f ] ; 3 uses
  %.0.i.i.i = phi i64 [ 0, %bb.c ], [ %.1.i.i.i, %bb.f ] ; 2 uses
  %i.g = and i64 %.011.i.i.i, %i.f
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = xor i64 %.0.i.i.i, %.012.i.i.i           ; 2 uses
  %i.i = add nuw nsw i64 %.011.i.i.i, 4294967295
  %i.j = and i64 %i.i, %i.f
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %multmodp.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i.i.i = phi i64 [ %i.h, %bb.e ], [ %.0.i.i.i, %bb.d ]
  %i.l = lshr i64 %.011.i.i.i, 1
  %.not13.i.i.i = trunc i64 %.012.i.i.i to i1
  %i.m = lshr i64 %.012.i.i.i, 1                  ; 2 uses
  %i.n = xor i64 %i.m, 3988292384
  %i.o = select i1 %.not13.i.i.i, i64 %i.n, i64 %i.m
  br label %bb.d

multmodp.exit.i.i:                                ; preds = %bb.e, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %.013.i.i, %.lr.ph.i.i ], [ %i.h, %bb.e ] ; 3 uses
  %i.p = lshr i64 %.0811.i.i, 1                   ; 2 uses
  %i.q = add nuw nsw i32 %.0712.i.i, 1
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %crc32_combine_gen64.exit, label %.lr.ph.i.i, !llvm.loop !0

crc32_combine_gen64.exit:                         ; preds = %multmodp.exit.i.i
  %i.r = icmp eq i64 %.1.i.i, 0
  br i1 %i.r, label %crc32_combine_op.exit, label %crc32_combine_gen64.exit.thread7

crc32_combine_gen64.exit.thread7:                 ; preds = %bb.b, %crc32_combine_gen64.exit
  %.0.i9 = phi i64 [ %.1.i.i, %crc32_combine_gen64.exit ], [ 2147483648, %bb.b ] ; 2 uses
  %i.s = and i64 %0, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %crc32_combine_gen64.exit.thread7
  %.012.i.i = phi i64 [ %i.s, %crc32_combine_gen64.exit.thread7 ], [ %i.ab, %bb.i ] ; 3 uses
  %.011.i.i = phi i64 [ 2147483648, %crc32_combine_gen64.exit.thread7 ], [ %i.y, %bb.i ] ; 3 uses
  %.0.i.i = phi i64 [ 0, %crc32_combine_gen64.exit.thread7 ], [ %.1.i.i4, %bb.i ] ; 2 uses
  %i.t = and i64 %.011.i.i, %.0.i9
  %.not.i.i3 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = xor i64 %.0.i.i, %.012.i.i               ; 2 uses
  %i.v = add nsw i64 %.011.i.i, -1
  %i.w = and i64 %i.v, %.0.i9
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %multmodp.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i.i4 = phi i64 [ %i.u, %bb.h ], [ %.0.i.i, %bb.g ]
  %i.y = lshr i64 %.011.i.i, 1
  %.not13.i.i = trunc i64 %.012.i.i to i1
  %i.z = lshr i64 %.012.i.i, 1                    ; 2 uses
  %i.aa = xor i64 %i.z, 3988292384
  %i.ab = select i1 %.not13.i.i, i64 %i.aa, i64 %i.z
  br label %bb.g

multmodp.exit.i:                                  ; preds = %bb.h
  %i.ac = and i64 %1, 4294967295
  %i.ad = xor i64 %i.u, %i.ac
  br label %crc32_combine_op.exit

crc32_combine_op.exit:                            ; preds = %bb.a, %crc32_combine_gen64.exit, %multmodp.exit.i
  %.0.i5 = phi i64 [ %i.ad, %multmodp.exit.i ], [ 0, %crc32_combine_gen64.exit ], [ 0, %bb.a ]
  ret i64 %.0.i5
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i64 0, 4294967296) i64 @crc32_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %crc32_combine64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10.i.i.i = icmp eq i64 %2, 0
  br i1 %.not10.i.i.i, label %crc32_combine_gen64.exit.thread7.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %multmodp.exit.i.i.i
  %.013.i.i.i = phi i64 [ %.1.i.i.i, %multmodp.exit.i.i.i ], [ 2147483648, %bb.b ] ; 2 uses
  %.0712.i.i.i = phi i32 [ %i.q, %multmodp.exit.i.i.i ], [ 3, %bb.b ] ; 2 uses
  %.0811.i.i.i = phi i64 [ %i.p, %multmodp.exit.i.i.i ], [ %2, %bb.b ] ; 2 uses
  %.not9.i.i.i = trunc i64 %.0811.i.i.i to i1
  br i1 %.not9.i.i.i, label %bb.c, label %multmodp.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.b = and i32 %.0712.i.i.i, 31
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @x2n_table, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.012.i.i.i.i = phi i64 [ %.013.i.i.i, %bb.c ], [ %i.o, %bb.f ] ; 3 uses
  %.011.i.i.i.i = phi i64 [ 2147483648, %bb.c ], [ %i.l, %bb.f ] ; 3 uses
  %.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %.1.i.i.i.i, %bb.f ] ; 2 uses
  %i.g = and i64 %.011.i.i.i.i, %i.f
  %.not.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = xor i64 %.0.i.i.i.i, %.012.i.i.i.i       ; 2 uses
  %i.i = add nuw nsw i64 %.011.i.i.i.i, 4294967295
  %i.j = and i64 %i.i, %i.f
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %multmodp.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i.i.i.i = phi i64 [ %i.h, %bb.e ], [ %.0.i.i.i.i, %bb.d ]
  %i.l = lshr i64 %.011.i.i.i.i, 1
  %.not13.i.i.i.i = trunc i64 %.012.i.i.i.i to i1
  %i.m = lshr i64 %.012.i.i.i.i, 1                ; 2 uses
  %i.n = xor i64 %i.m, 3988292384
  %i.o = select i1 %.not13.i.i.i.i, i64 %i.n, i64 %i.m
  br label %bb.d

multmodp.exit.i.i.i:                              ; preds = %bb.e, %.lr.ph.i.i.i
  %.1.i.i.i = phi i64 [ %.013.i.i.i, %.lr.ph.i.i.i ], [ %i.h, %bb.e ] ; 3 uses
  %i.p = lshr i64 %.0811.i.i.i, 1                 ; 2 uses
  %i.q = add nuw nsw i32 %.0712.i.i.i, 1
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %crc32_combine_gen64.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

crc32_combine_gen64.exit.i:                       ; preds = %multmodp.exit.i.i.i
  %i.r = icmp eq i64 %.1.i.i.i, 0
  br i1 %i.r, label %crc32_combine64.exit, label %crc32_combine_gen64.exit.thread7.i

crc32_combine_gen64.exit.thread7.i:               ; preds = %crc32_combine_gen64.exit.i, %bb.b
  %.0.i9.i = phi i64 [ %.1.i.i.i, %crc32_combine_gen64.exit.i ], [ 2147483648, %bb.b ] ; 2 uses
  %i.s = and i64 %0, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %crc32_combine_gen64.exit.thread7.i
  %.012.i.i.i = phi i64 [ %i.s, %crc32_combine_gen64.exit.thread7.i ], [ %i.ab, %bb.i ] ; 3 uses
  %.011.i.i.i = phi i64 [ 2147483648, %crc32_combine_gen64.exit.thread7.i ], [ %i.y, %bb.i ] ; 3 uses
  %.0.i.i.i = phi i64 [ 0, %crc32_combine_gen64.exit.thread7.i ], [ %.1.i.i4.i, %bb.i ] ; 2 uses
  %i.t = and i64 %.011.i.i.i, %.0.i9.i
  %.not.i.i3.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = xor i64 %.0.i.i.i, %.012.i.i.i           ; 2 uses
  %i.v = add nsw i64 %.011.i.i.i, -1
  %i.w = and i64 %i.v, %.0.i9.i
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %multmodp.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i.i4.i = phi i64 [ %i.u, %bb.h ], [ %.0.i.i.i, %bb.g ]
  %i.y = lshr i64 %.011.i.i.i, 1
  %.not13.i.i.i = trunc i64 %.012.i.i.i to i1
  %i.z = lshr i64 %.012.i.i.i, 1                  ; 2 uses
  %i.aa = xor i64 %i.z, 3988292384
  %i.ab = select i1 %.not13.i.i.i, i64 %i.aa, i64 %i.z
  br label %bb.g

multmodp.exit.i.i:                                ; preds = %bb.h
  %i.ac = and i64 %1, 4294967295
  %i.ad = xor i64 %i.u, %i.ac
  br label %crc32_combine64.exit

crc32_combine64.exit:                             ; preds = %bb.a, %crc32_combine_gen64.exit.i, %multmodp.exit.i.i
  %.0.i5.i = phi i64 [ %i.ad, %multmodp.exit.i.i ], [ 0, %crc32_combine_gen64.exit.i ], [ 0, %bb.a ]
  ret i64 %.0.i5.i
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = !{!5, !5, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!16, !16, i64 0}
end_hunk_0
