Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/stem_UTF_8_serbian?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
begin_hunk_0_@serbian_UTF_8_stem:bb.a
  br i1 %i.abb, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.mh:                                            ; preds = %bb.fg
  %i.abc = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !20
  %.not1218.i = icmp eq i32 %i.abd, 0
  br i1 %.not1218.i, label %r_Step_2.exit.thread, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.abe = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_278) #2 ; 2 uses
  %i.abf = icmp sgt i32 %i.abe, -1
  br i1 %i.abf, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.mj:                                            ; preds = %bb.fg
  %i.abg = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !20
  %.not1217.i = icmp eq i32 %i.abh, 0
  br i1 %.not1217.i, label %r_Step_2.exit.thread, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.abi = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_279) #2 ; 2 uses
  %i.abj = icmp sgt i32 %i.abi, -1
  br i1 %i.abj, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.ml:                                            ; preds = %bb.fg
  %i.abk = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !20
  %.not1216.i = icmp eq i32 %i.abl, 0
  br i1 %.not1216.i, label %r_Step_2.exit.thread, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.abm = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_280) #2 ; 2 uses
  %i.abn = icmp sgt i32 %i.abm, -1
  br i1 %i.abn, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.mn:                                            ; preds = %bb.fg
  %i.abo = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !20
  %.not1215.i = icmp eq i32 %i.abp, 0
  br i1 %.not1215.i, label %r_Step_2.exit.thread, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.abq = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_281) #2 ; 2 uses
  %i.abr = icmp sgt i32 %i.abq, -1
  br i1 %i.abr, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.mp:                                            ; preds = %bb.fg
  %i.abs = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !20
  %.not1214.i = icmp eq i32 %i.abt, 0
  br i1 %.not1214.i, label %r_Step_2.exit.thread, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.abu = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_282) #2 ; 2 uses
  %i.abv = icmp sgt i32 %i.abu, -1
  br i1 %i.abv, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.mr:                                            ; preds = %bb.fg
  %i.abw = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !20
  %.not1213.i = icmp eq i32 %i.abx, 0
  br i1 %.not1213.i, label %r_Step_2.exit.thread, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.aby = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_283) #2 ; 2 uses
  %i.abz = icmp sgt i32 %i.aby, -1
  br i1 %i.abz, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.mt:                                            ; preds = %bb.fg
  %i.aca = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !20
  %.not1212.i = icmp eq i32 %i.acb, 0
  br i1 %.not1212.i, label %r_Step_2.exit.thread, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.acc = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_284) #2 ; 2 uses
  %i.acd = icmp sgt i32 %i.acc, -1
  br i1 %i.acd, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.mv:                                            ; preds = %bb.fg
  %i.ace = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !20
  %.not1211.i = icmp eq i32 %i.acf, 0
  br i1 %.not1211.i, label %r_Step_2.exit.thread, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.acg = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_285) #2 ; 2 uses
  %i.ach = icmp sgt i32 %i.acg, -1
  br i1 %i.ach, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.mx:                                            ; preds = %bb.fg
  %i.aci = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !20
  %.not1210.i = icmp eq i32 %i.acj, 0
  br i1 %.not1210.i, label %r_Step_2.exit.thread, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.ack = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_286) #2 ; 2 uses
  %i.acl = icmp sgt i32 %i.ack, -1
  br i1 %i.acl, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.mz:                                            ; preds = %bb.fg
  %i.acm = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !20
  %.not1209.i = icmp eq i32 %i.acn, 0
  br i1 %.not1209.i, label %r_Step_2.exit.thread, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.aco = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_287) #2 ; 2 uses
  %i.acp = icmp sgt i32 %i.aco, -1
  br i1 %i.acp, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.nb:                                            ; preds = %bb.fg
  %i.acq = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !20
  %.not1208.i = icmp eq i32 %i.acr, 0
  br i1 %.not1208.i, label %r_Step_2.exit.thread, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.acs = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_288) #2 ; 2 uses
  %i.act = icmp sgt i32 %i.acs, -1
  br i1 %i.act, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.nd:                                            ; preds = %bb.fg
  %i.acu = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !20
  %.not1207.i = icmp eq i32 %i.acv, 0
  br i1 %.not1207.i, label %r_Step_2.exit.thread, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.acw = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_289) #2 ; 2 uses
  %i.acx = icmp sgt i32 %i.acw, -1
  br i1 %i.acx, label %.thread88, label %r_cyr_to_lat.exit.thread

bb.nf:                                            ; preds = %bb.fg
  %i.acy = getelementptr inbounds nuw i8, ptr %.val1413.i, i64 4
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !20
  %.not1206.i = icmp eq i32 %i.acz, 0
  br i1 %.not1206.i, label %r_Step_2.exit.thread, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.ada = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @s_290) #2 ; 2 uses
  %i.adb = icmp sgt i32 %i.ada, -1
  br i1 %i.adb, label %.thread88, label %r_cyr_to_lat.exit.thread

r_Step_2.exit.thread:                             ; preds = %bb.nf, %bb.ff, %bb.nd, %bb.nb, %bb.mz, %bb.mx, %bb.mv, %bb.mt, %bb.mr, %bb.mp, %bb.mn, %bb.ml, %bb.mj, %bb.mh, %bb.mf, %bb.md, %bb.mb, %bb.lz, %bb.lx, %bb.lv, %bb.lt, %bb.lr, %bb.lp, %bb.ln, %bb.ll, %bb.lj, %bb.lh, %bb.lf, %bb.ld, %bb.lb, %bb.kz, %bb.kx, %bb.kv, %bb.kt, %bb.kr, %bb.kp, %bb.kn, %bb.kl, %bb.kj, %bb.kh, %bb.kf, %bb.kd, %bb.kb, %bb.jz, %bb.jx, %bb.fe
  %i.adc = load i32, ptr %i.d, align 4, !tbaa !18
  store i32 %i.adc, ptr %i.a, align 8, !tbaa !8
  %i.add = tail call fastcc i32 @r_Step_3(ptr noundef nonnull %0) ; 3 uses
  %i.ade = icmp slt i32 %i.add, 0
  %..455 = select i1 %i.ade, i32 %i.add, i32 1
  %cond = icmp sgt i32 %i.add, -1
  br i1 %cond, label %.thread88, label %r_cyr_to_lat.exit.thread

.thread88:                                        ; preds = %bb.ng, %bb.ne, %bb.nc, %bb.na, %bb.my, %bb.mw, %bb.mu, %bb.ms, %bb.mq, %bb.mo, %bb.mm, %bb.mk, %bb.mi, %bb.mg, %bb.me, %bb.mc, %bb.ma, %bb.ly, %bb.lw, %bb.lu, %bb.ls, %bb.lq, %bb.lo, %bb.lm, %bb.lk, %bb.li, %bb.lg, %bb.le, %bb.lc, %bb.la, %bb.ky, %bb.kw, %bb.ku, %bb.ks, %bb.kq, %bb.ko, %bb.km, %bb.kk, %bb.ki, %bb.kg, %bb.ke, %bb.kc, %bb.ka, %bb.jy, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %r_Step_2.exit.thread
  %i.adf = load i32, ptr %i.en, align 8, !tbaa !22
  store i32 %i.adf, ptr %i.a, align 8, !tbaa !8
  br label %r_cyr_to_lat.exit.thread

r_cyr_to_lat.exit.thread:                         ; preds = %bb.c, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.ak, %bb.ao, %bb.aq, %r_Step_2.exit.thread, %bb.fh, %bb.fi, %bb.fj, %bb.fk, %bb.fl, %bb.fm, %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ft, %bb.fu, %bb.fv, %bb.fw, %bb.fx, %bb.fy, %bb.fz, %bb.ga, %bb.gb, %bb.gc, %bb.gd, %bb.ge, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.gk, %bb.gl, %bb.gm, %bb.gn, %bb.go, %bb.gp, %bb.gq, %bb.gr, %bb.gs, %bb.gt, %bb.gu, %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.he, %bb.hf, %bb.hg, %bb.hh, %bb.hi, %bb.hj, %bb.hk, %bb.hl, %bb.hm, %bb.hn, %bb.ho, %bb.hp, %bb.hq, %bb.hr, %bb.hs, %bb.ht, %bb.hu, %bb.hv, %bb.hw, %bb.hx, %bb.hy, %bb.hz, %bb.ia, %bb.ib, %bb.ic, %bb.id, %bb.ie, %bb.if, %bb.ig, %bb.ih, %bb.ii, %bb.ij, %bb.ik, %bb.il, %bb.im, %bb.in, %bb.io, %bb.ip, %bb.iq, %bb.ir, %bb.is, %bb.it, %bb.iu, %bb.iv, %bb.iw, %bb.ix, %bb.iy, %bb.iz, %bb.ja, %bb.jb, %bb.jc, %bb.jd, %bb.je, %bb.jf, %bb.jg, %bb.jh, %bb.ji, %bb.jj, %bb.jk, %bb.jl, %bb.jm, %bb.jn, %bb.jo, %bb.jp, %bb.jq, %bb.jr, %bb.js, %bb.jt, %bb.ju, %bb.jv, %bb.jw, %bb.jy, %bb.lq, %bb.ka, %bb.mm, %bb.kc, %bb.ls, %bb.ke, %bb.nc, %bb.kg, %bb.lu, %bb.ki, %bb.mo, %bb.kk, %bb.lw, %bb.km, %bb.my, %bb.ko, %bb.ly, %bb.kq, %bb.mq, %bb.ks, %bb.ma, %bb.ku, %bb.ng, %bb.kw, %bb.mc, %bb.ky, %bb.ms, %bb.la, %bb.me, %bb.lc, %bb.na, %bb.le, %bb.mg, %bb.lg, %bb.mu, %bb.li, %bb.mi, %bb.lk, %bb.ne, %bb.lm, %bb.mk, %bb.lo, %bb.mw, %bb.fd, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dq, %bb.dp, %bb.dn, %bb.dm, %bb.dl, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %.thread88
  %.758 = phi i32 [ 1, %.thread88 ], [ %..455, %r_Step_2.exit.thread ], [ %i.cm, %bb.ao ], [ %i.fb, %bb.bj ], [ %i.mx, %bb.fd ], [ %i.ms, %bb.fb ], [ %i.mq, %bb.fa ], [ %i.mo, %bb.ez ], [ %i.mm, %bb.ey ], [ %i.mk, %bb.ex ], [ %i.mi, %bb.ew ], [ %i.mg, %bb.ev ], [ %i.me, %bb.eu ], [ %i.mc, %bb.et ], [ %i.ma, %bb.es ], [ %i.ly, %bb.er ], [ %i.lw, %bb.eq ], [ %i.lu, %bb.ep ], [ %i.ls, %bb.eo ], [ %i.lq, %bb.en ], [ %i.lo, %bb.em ], [ %i.lm, %bb.el ], [ %i.lk, %bb.ek ], [ %i.li, %bb.ej ], [ %i.ld, %bb.eh ], [ %i.lb, %bb.eg ], [ %i.kz, %bb.ef ], [ %i.kx, %bb.ee ], [ %i.kv, %bb.ed ], [ %i.kt, %bb.ec ], [ %i.kr, %bb.eb ], [ %i.km, %bb.dz ], [ %i.kk, %bb.dy ], [ %i.ki, %bb.dx ], [ %i.kg, %bb.dw ], [ %i.ke, %bb.dv ], [ %i.kc, %bb.du ], [ %i.ka, %bb.dt ], [ %i.jy, %bb.ds ], [ %i.jt, %bb.dq ], [ %i.jr, %bb.dp ], [ %i.jm, %bb.dn ], [ %i.jk, %bb.dm ], [ %i.ji, %bb.dl ], [ %i.jd, %bb.dj ], [ %i.jb, %bb.di ], [ %i.iz, %bb.dh ], [ %i.ix, %bb.dg ], [ %i.iv, %bb.df ], [ %i.it, %bb.de ], [ %i.ir, %bb.dd ], [ %i.ip, %bb.dc ], [ %i.in, %bb.db ], [ %i.il, %bb.da ], [ %i.ij, %bb.cz ], [ %i.ih, %bb.cy ], [ %i.if, %bb.cx ], [ %i.id, %bb.cw ], [ %i.ib, %bb.cv ], [ %i.hz, %bb.cu ], [ %i.hx, %bb.ct ], [ %i.hv, %bb.cs ], [ %i.ht, %bb.cr ], [ %i.hr, %bb.cq ], [ %i.hp, %bb.cp ], [ %i.hk, %bb.cn ], [ %i.hi, %bb.cm ], [ %i.hg, %bb.cl ], [ %i.he, %bb.ck ], [ %i.hc, %bb.cj ], [ %i.ha, %bb.ci ], [ %i.gy, %bb.ch ], [ %i.gw, %bb.cg ], [ %i.gu, %bb.cf ], [ %i.gs, %bb.ce ], [ %i.gq, %bb.cd ], [ %i.go, %bb.cc ], [ %i.gm, %bb.cb ], [ %i.gk, %bb.ca ], [ %i.gi, %bb.bz ], [ %i.gg, %bb.by ], [ %i.ge, %bb.bx ], [ %i.gc, %bb.bw ], [ %i.ga, %bb.bv ], [ %i.fy, %bb.bu ], [ %i.fw, %bb.bt ], [ %i.fu, %bb.bs ], [ %i.fs, %bb.br ], [ %i.fq, %bb.bq ], [ %i.fl, %bb.bo ], [ %i.fj, %bb.bn ], [ %i.fh, %bb.bm ], [ %i.ff, %bb.bl ], [ %i.fd, %bb.bk ], [ %i.acg, %bb.mw ], [ %i.xm, %bb.km ], [ %i.cb, %bb.ak ], [ %i.ack, %bb.my ], [ %i.xq, %bb.ko ], [ %i.aak, %bb.ly ], [ %i.xu, %bb.kq ], [ %i.abu, %bb.mq ], [ %i.xy, %bb.ks ], [ %i.aao, %bb.ma ], [ %i.yc, %bb.ku ], [ %i.ada, %bb.ng ], [ %i.yg, %bb.kw ], [ %i.aas, %bb.mc ], [ %i.yk, %bb.ky ], [ %i.aby, %bb.ms ], [ %i.yo, %bb.la ], [ %i.aaw, %bb.me ], [ %i.ys, %bb.lc ], [ %i.aco, %bb.na ], [ %i.yw, %bb.le ], [ %i.aba, %bb.mg ], [ %i.za, %bb.lg ], [ %i.acc, %bb.mu ], [ %i.ze, %bb.li ], [ %i.abe, %bb.mi ], [ %i.zi, %bb.lk ], [ %i.acw, %bb.ne ], [ %i.zm, %bb.lm ], [ %i.abi, %bb.mk ], [ %i.zq, %bb.lo ], [ %i.cu, %bb.aq ], [ %i.nc, %bb.fh ], [ %i.ne, %bb.fi ], [ %i.ng, %bb.fj ], [ %i.ni, %bb.fk ], [ %i.nk, %bb.fl ], [ %i.nm, %bb.fm ], [ %i.no, %bb.fn ], [ %i.nq, %bb.fo ], [ %i.ns, %bb.fp ], [ %i.nu, %bb.fq ], [ %i.nw, %bb.fr ], [ %i.ny, %bb.fs ], [ %i.oa, %bb.ft ], [ %i.oc, %bb.fu ], [ %i.oe, %bb.fv ], [ %i.og, %bb.fw ], [ %i.oi, %bb.fx ], [ %i.ok, %bb.fy ], [ %i.om, %bb.fz ], [ %i.oo, %bb.ga ], [ %i.oq, %bb.gb ], [ %i.os, %bb.gc ], [ %i.ou, %bb.gd ], [ %i.ow, %bb.ge ], [ %i.oy, %bb.gf ], [ %i.pa, %bb.gg ], [ %i.pc, %bb.gh ], [ %i.pe, %bb.gi ], [ %i.pg, %bb.gj ], [ %i.pi, %bb.gk ], [ %i.pk, %bb.gl ], [ %i.pm, %bb.gm ], [ %i.po, %bb.gn ], [ %i.pq, %bb.go ], [ %i.ps, %bb.gp ], [ %i.pu, %bb.gq ], [ %i.pw, %bb.gr ], [ %i.py, %bb.gs ], [ %i.qa, %bb.gt ], [ %i.qc, %bb.gu ], [ %i.qe, %bb.gv ], [ %i.qg, %bb.gw ], [ %i.qi, %bb.gx ], [ %i.qk, %bb.gy ], [ %i.qm, %bb.gz ], [ %i.qo, %bb.ha ], [ %i.qq, %bb.hb ], [ %i.qs, %bb.hc ], [ %i.qu, %bb.hd ], [ %i.qw, %bb.he ], [ %i.qy, %bb.hf ], [ %i.ra, %bb.hg ], [ %i.rc, %bb.hh ], [ %i.re, %bb.hi ], [ %i.rg, %bb.hj ], [ %i.ri, %bb.hk ], [ %i.rk, %bb.hl ], [ %i.rm, %bb.hm ], [ %i.ro, %bb.hn ], [ %i.rq, %bb.ho ], [ %i.rs, %bb.hp ], [ %i.ru, %bb.hq ], [ %i.rw, %bb.hr ], [ %i.ry, %bb.hs ], [ %i.sa, %bb.ht ], [ %i.sc, %bb.hu ], [ %i.se, %bb.hv ], [ %i.sg, %bb.hw ], [ %i.si, %bb.hx ], [ %i.sk, %bb.hy ], [ %i.sm, %bb.hz ], [ %i.so, %bb.ia ], [ %i.sq, %bb.ib ], [ %i.ss, %bb.ic ], [ %i.su, %bb.id ], [ %i.sw, %bb.ie ], [ %i.sy, %bb.if ], [ %i.ta, %bb.ig ], [ %i.tc, %bb.ih ], [ %i.te, %bb.ii ], [ %i.tg, %bb.ij ], [ %i.ti, %bb.ik ], [ %i.tk, %bb.il ], [ %i.tm, %bb.im ], [ %i.to, %bb.in ], [ %i.tq, %bb.io ], [ %i.ts, %bb.ip ], [ %i.tu, %bb.iq ], [ %i.tw, %bb.ir ], [ %i.ty, %bb.is ], [ %i.ua, %bb.it ], [ %i.uc, %bb.iu ], [ %i.ue, %bb.iv ], [ %i.ug, %bb.iw ], [ %i.ui, %bb.ix ], [ %i.uk, %bb.iy ], [ %i.um, %bb.iz ], [ %i.uo, %bb.ja ], [ %i.uq, %bb.jb ], [ %i.us, %bb.jc ], [ %i.uu, %bb.jd ], [ %i.uw, %bb.je ], [ %i.uy, %bb.jf ], [ %i.va, %bb.jg ], [ %i.vc, %bb.jh ], [ %i.ve, %bb.ji ], [ %i.vg, %bb.jj ], [ %i.vi, %bb.jk ], [ %i.vk, %bb.jl ], [ %i.vm, %bb.jm ], [ %i.vo, %bb.jn ], [ %i.vq, %bb.jo ], [ %i.vs, %bb.jp ], [ %i.vu, %bb.jq ], [ %i.vw, %bb.jr ], [ %i.vy, %bb.js ], [ %i.wa, %bb.jt ], [ %i.wc, %bb.ju ], [ %i.we, %bb.jv ], [ %i.wg, %bb.jw ], [ %i.wk, %bb.jy ], [ %i.zu, %bb.lq ], [ %i.wo, %bb.ka ], [ %i.abm, %bb.mm ], [ %i.ws, %bb.kc ], [ %i.zy, %bb.ls ], [ %i.ww, %bb.ke ], [ %i.acs, %bb.nc ], [ %i.xa, %bb.kg ], [ %i.aac, %bb.lu ], [ %i.xe, %bb.ki ], [ %i.abq, %bb.mo ], [ %i.xi, %bb.kk ], [ %i.aag, %bb.lw ], [ %i.m, %bb.e ], [ %i.o, %bb.f ], [ %i.q, %bb.g ], [ %i.s, %bb.h ], [ %i.u, %bb.i ], [ %i.w, %bb.j ], [ %i.y, %bb.k ], [ %i.aa, %bb.l ], [ %i.ac, %bb.m ], [ %i.ae, %bb.n ], [ %i.ag, %bb.o ], [ %i.ai, %bb.p ], [ %i.ak, %bb.q ], [ %i.am, %bb.r ], [ %i.ao, %bb.s ], [ %i.aq, %bb.t ], [ %i.as, %bb.u ], [ %i.au, %bb.v ], [ %i.aw, %bb.w ], [ %i.ay, %bb.x ], [ %i.ba, %bb.y ], [ %i.bc, %bb.z ], [ %i.be, %bb.aa ], [ %i.bg, %bb.ab ], [ %i.bi, %bb.ac ], [ %i.bk, %bb.ad ], [ %i.bm, %bb.ae ], [ %i.bo, %bb.af ], [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  ret i32 %.758
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_Step_3(ptr noundef initializes((24, 28)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22
  %.not = icmp sgt i32 %i.b, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %.mask = and i32 %i.k, 224
  %.not23 = icmp eq i32 %.mask, 96
  br i1 %.not23, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.k, 31
  %i.m = shl nuw i32 1, %i.l
  %i.n = and i32 %i.m, 3188642
  %.not24 = icmp eq i32 %i.n, 0
  br i1 %.not24, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_3, i32 noundef 26) #2
  %.not25 = icmp eq i32 %i.o, 0
  br i1 %.not25, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.p, ptr %i.q, align 4, !tbaa !15
  %i.r = getelementptr i8, ptr %0, i64 40
  %.val27 = load ptr, ptr %i.r, align 8, !tbaa !19
  %.val27.val = load i32, ptr %.val27, align 4, !tbaa !20
  %.not.i.not = icmp sgt i32 %.val27.val, %i.p
  br i1 %.not.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #2 ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  %spec.select = select i1 %i.t, i32 1, i32 %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ %spec.select, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define ptr @serbian_UTF_8_create_env() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SN_create_env(i32 noundef 0, i32 noundef 2) #2
  ret ptr %i.a
}

declare ptr @SN_create_env(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @serbian_UTF_8_close_env(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SN_close_env(ptr noundef %0, i32 noundef 0) #2
  ret void
}

declare void @SN_close_env(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @find_among(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slice_from_s(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @skip_utf8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @in_grouping_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @eq_s(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @out_grouping_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @find_among_b(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"SN_env", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !12, i64 32, !14, i64 40}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p2 omnipotent char", !13, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!9, !5, i64 20}
!16 = !{!9, !5, i64 24}
!17 = !{!9, !10, i64 0}
!18 = !{!9, !5, i64 12}
!19 = !{!9, !14, i64 40}
!20 = !{!5, !5, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{!9, !5, i64 16}
end_hunk_0
