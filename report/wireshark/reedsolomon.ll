Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/reedsolomon?download=true
inline.NumInlined: 20
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@eras_dec_rs:bb.a
  %i.gr = or i32 %i.gq, %i.gm
  %i.gs = sext i32 %i.gq to i64
  %i.gt = getelementptr [4 x i8], ptr @Index_of, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4
  store i32 %i.gu, ptr %i.am, align 8
  %i.gv = load i32, ptr %i.an, align 4            ; 2 uses
  %i.gw = or i32 %i.gv, %i.gr
  %i.gx = sext i32 %i.gv to i64
  %i.gy = getelementptr [4 x i8], ptr @Index_of, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4
  store i32 %i.gz, ptr %i.an, align 4
  %i.ha = load i32, ptr %i.ao, align 16           ; 2 uses
  %i.hb = or i32 %i.ha, %i.gw
  %i.hc = sext i32 %i.ha to i64
  %i.hd = getelementptr [4 x i8], ptr @Index_of, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4
  store i32 %i.he, ptr %i.ao, align 16
  %i.hf = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.hg = or i32 %i.hf, %i.hb
  %i.hh = sext i32 %i.hf to i64
  %i.hi = getelementptr [4 x i8], ptr @Index_of, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4
  store i32 %i.hj, ptr %i.aq, align 4
  %i.hk = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.hl = or i32 %i.hk, %i.hg
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr [4 x i8], ptr @Index_of, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4
  store i32 %i.ho, ptr %i.ar, align 8
  %i.hp = load i32, ptr %i.as, align 4            ; 2 uses
  %i.hq = or i32 %i.hp, %i.hl
  %i.hr = sext i32 %i.hp to i64
  %i.hs = getelementptr [4 x i8], ptr @Index_of, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4
  store i32 %i.ht, ptr %i.as, align 4
  %i.hu = load i32, ptr %i.at, align 16           ; 2 uses
  %i.hv = or i32 %i.hu, %i.hq
  %i.hw = sext i32 %i.hu to i64
  %i.hx = getelementptr [4 x i8], ptr @Index_of, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4
  store i32 %i.hy, ptr %i.at, align 16
  %i.hz = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ia = or i32 %i.hz, %i.hv
  %i.ib = sext i32 %i.hz to i64
  %i.ic = getelementptr [4 x i8], ptr @Index_of, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4
  store i32 %i.id, ptr %i.av, align 4
  %i.ie = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.if = or i32 %i.ie, %i.ia
  %i.ig = sext i32 %i.ie to i64
  %i.ih = getelementptr [4 x i8], ptr @Index_of, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4
  store i32 %i.ii, ptr %i.aw, align 8
  %i.ij = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.ik = or i32 %i.ij, %i.if
  %i.il = sext i32 %i.ij to i64
  %i.im = getelementptr [4 x i8], ptr @Index_of, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4
  store i32 %i.in, ptr %i.ax, align 4
  %i.io = load i32, ptr %i.ay, align 16           ; 2 uses
  %i.ip = or i32 %i.io, %i.ik
  %i.iq = sext i32 %i.io to i64
  %i.ir = getelementptr [4 x i8], ptr @Index_of, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4
  store i32 %i.is, ptr %i.ay, align 16
  %i.it = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.iu = or i32 %i.it, %i.ip
  %i.iv = sext i32 %i.it to i64
  %i.iw = getelementptr [4 x i8], ptr @Index_of, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4
  store i32 %i.ix, ptr %i.ba, align 4
  %i.iy = load i32, ptr %i.bb, align 8            ; 2 uses
  %i.iz = or i32 %i.iy, %i.iu
  %i.ja = sext i32 %i.iy to i64
  %i.jb = getelementptr [4 x i8], ptr @Index_of, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4
  store i32 %i.jc, ptr %i.bb, align 8
  %i.jd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.je = or i32 %i.jd, %i.iz
  %i.jf = sext i32 %i.jd to i64
  %i.jg = getelementptr [4 x i8], ptr @Index_of, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4
  store i32 %i.jh, ptr %i.bc, align 4
  %i.ji = load i32, ptr %i.bd, align 16           ; 2 uses
  %i.jj = or i32 %i.ji, %i.je
  %i.jk = sext i32 %i.ji to i64
  %i.jl = getelementptr [4 x i8], ptr @Index_of, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4
  store i32 %i.jm, ptr %i.bd, align 16
  %i.jn = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.jo = or i32 %i.jn, %i.jj
  %i.jp = sext i32 %i.jn to i64
  %i.jq = getelementptr [4 x i8], ptr @Index_of, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4
  store i32 %i.jr, ptr %i.bf, align 4
  %i.js = load i32, ptr %i.bg, align 8            ; 2 uses
  %i.jt = or i32 %i.js, %i.jo
  %i.ju = sext i32 %i.js to i64
  %i.jv = getelementptr [4 x i8], ptr @Index_of, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4
  store i32 %i.jw, ptr %i.bg, align 8
  %i.jx = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.jy = or i32 %i.jx, %i.jt
  %i.jz = sext i32 %i.jx to i64
  %i.ka = getelementptr [4 x i8], ptr @Index_of, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4
  store i32 %i.kb, ptr %i.bh, align 4
  %i.kc = load i32, ptr %i.bi, align 16           ; 2 uses
  %i.kd = or i32 %i.kc, %i.jy
  %i.ke = sext i32 %i.kc to i64
  %i.kf = getelementptr [4 x i8], ptr @Index_of, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4
  store i32 %i.kg, ptr %i.bi, align 16
  %i.kh = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.ki = or i32 %i.kh, %i.kd
  %i.kj = sext i32 %i.kh to i64
  %i.kk = getelementptr [4 x i8], ptr @Index_of, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4
  store i32 %i.kl, ptr %i.bk, align 4
  %i.km = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.kn = or i32 %i.km, %i.ki
  %i.ko = sext i32 %i.km to i64
  %i.kp = getelementptr [4 x i8], ptr @Index_of, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4
  store i32 %i.kq, ptr %i.bl, align 8
  %i.kr = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.ks = or i32 %i.kr, %i.kn
  %i.kt = sext i32 %i.kr to i64
  %i.ku = getelementptr [4 x i8], ptr @Index_of, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4
  store i32 %i.kv, ptr %i.bm, align 4
  %i.kw = load i32, ptr %i.bn, align 16           ; 2 uses
  %i.kx = or i32 %i.kw, %i.ks
  %i.ky = sext i32 %i.kw to i64
  %i.kz = getelementptr [4 x i8], ptr @Index_of, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4
  store i32 %i.la, ptr %i.bn, align 16
  %i.lb = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.lc = or i32 %i.lb, %i.kx
  %i.ld = sext i32 %i.lb to i64
  %i.le = getelementptr [4 x i8], ptr @Index_of, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4
  store i32 %i.lf, ptr %i.bp, align 4
  %i.lg = load i32, ptr %i.bq, align 8            ; 2 uses
  %i.lh = or i32 %i.lg, %i.lc
  %i.li = sext i32 %i.lg to i64
  %i.lj = getelementptr [4 x i8], ptr @Index_of, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4
  store i32 %i.lk, ptr %i.bq, align 8
  %i.ll = load i32, ptr %i.br, align 4            ; 2 uses
  %i.lm = or i32 %i.ll, %i.lh
  %i.ln = sext i32 %i.ll to i64
  %i.lo = getelementptr [4 x i8], ptr @Index_of, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4
  store i32 %i.lp, ptr %i.br, align 4
  %i.lq = load i32, ptr %i.bs, align 16           ; 2 uses
  %i.lr = or i32 %i.lq, %i.lm
  %i.ls = sext i32 %i.lq to i64
  %i.lt = getelementptr [4 x i8], ptr @Index_of, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 4
  store i32 %i.lu, ptr %i.bs, align 16
  %.not = icmp eq i32 %i.lr, 0
  br i1 %.not, label %.loopexit, label %.preheader313

.preheader313:                                    ; preds = %.preheader314.preheader
  %i.lv = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.lv, i8 0, i64 192, i1 false)
  store i32 1, ptr %i.a, align 16
  %i.lw = icmp sgt i32 %2, 0
  br i1 %i.lw, label %bb.e, label %.loopexit312

bb.e:                                             ; preds = %.preheader313
  %i.lx = load i32, ptr %1, align 4
  %i.ly = sub i32 254, %i.lx                      ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, 254
  br i1 %i.lz, label %.lr.ph.i247, label %modnn.exit249

.lr.ph.i247:                                      ; preds = %bb.e, %.lr.ph.i247
  %.05.i248 = phi i32 [ %i.md, %.lr.ph.i247 ], [ %i.ly, %bb.e ]
  %i.ma = add nsw i32 %.05.i248, -255             ; 2 uses
  %i.mb = lshr i32 %i.ma, 8
  %i.mc = and i32 %i.ma, 255
  %i.md = add nuw nsw i32 %i.mb, %i.mc            ; 3 uses
  %i.me = icmp samesign ugt i32 %i.md, 254
  br i1 %i.me, label %.lr.ph.i247, label %modnn.exit249, !llvm.loop !0

modnn.exit249:                                    ; preds = %.lr.ph.i247, %bb.e
  %.0.lcssa.i246 = phi i32 [ %i.ly, %bb.e ], [ %i.md, %.lr.ph.i247 ]
  %i.mf = sext i32 %.0.lcssa.i246 to i64
  %i.mg = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4            ; 2 uses
  store i32 %i.mh, ptr %i.lv, align 4
  %.not375 = icmp eq i32 %2, 1
  br i1 %.not375, label %.loopexit312, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %modnn.exit249
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.loopexit311:                                     ; preds = %bb.h
  %exitcond412.not = icmp eq i64 %indvars.iv.next408, %wide.trip.count
  br i1 %exitcond412.not, label %.loopexit312.loopexit, label %.lr.ph, !llvm.loop !15

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit311
  %indvars.iv404.a = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next408, %.loopexit311 ] ; 2 uses
  %i.mi = getelementptr [4 x i8], ptr %1, i64 %indvars.iv404.a
  %i.mj = load i32, ptr %i.mi, align 4
  %i.mk = sub i32 254, %i.mj                      ; 3 uses
  %i.ml = icmp sgt i32 %i.mk, 254
  br i1 %i.ml, label %.lr.ph.i251, label %modnn.exit253

.lr.ph.i251:                                      ; preds = %.lr.ph, %.lr.ph.i251
  %.05.i252 = phi i32 [ %i.mp, %.lr.ph.i251 ], [ %i.mk, %.lr.ph ]
  %i.mm = add nsw i32 %.05.i252, -255             ; 2 uses
  %i.mn = lshr i32 %i.mm, 8
  %i.mo = and i32 %i.mm, 255
  %i.mp = add nuw nsw i32 %i.mn, %i.mo            ; 3 uses
  %i.mq = icmp samesign ugt i32 %i.mp, 254
  br i1 %i.mq, label %.lr.ph.i251, label %modnn.exit253, !llvm.loop !0

modnn.exit253:                                    ; preds = %.lr.ph.i251, %.lr.ph
  %.0.lcssa.i250 = phi i32 [ %i.mk, %.lr.ph ], [ %i.mp, %.lr.ph.i251 ]
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv404.a, 1 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %modnn.exit253, %bb.h
  %indvars.iv406 = phi i64 [ %indvars.iv.next408, %modnn.exit253 ], [ %indvars.iv.next407, %bb.h ] ; 3 uses
  %i.mr = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv406 ; 3 uses
  %i.ms = getelementptr i8, ptr %i.mr, i64 -4
  %i.mt = load i32, ptr %i.ms, align 4
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr [4 x i8], ptr @Index_of, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4            ; 2 uses
  %.not244 = icmp eq i32 %i.mw, 255
  br i1 %.not244, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.mx = add i32 %i.mw, %.0.lcssa.i250           ; 3 uses
  %i.my = icmp sgt i32 %i.mx, 254
  br i1 %i.my, label %.lr.ph.i255, label %modnn.exit257

.lr.ph.i255:                                      ; preds = %bb.g, %.lr.ph.i255
  %.05.i256 = phi i32 [ %i.nc, %.lr.ph.i255 ], [ %i.mx, %bb.g ]
  %i.mz = add nsw i32 %.05.i256, -255             ; 2 uses
  %i.na = lshr i32 %i.mz, 8
  %i.nb = and i32 %i.mz, 255
  %i.nc = add nuw nsw i32 %i.na, %i.nb            ; 3 uses
  %i.nd = icmp samesign ugt i32 %i.nc, 254
  br i1 %i.nd, label %.lr.ph.i255, label %modnn.exit257, !llvm.loop !0

modnn.exit257:                                    ; preds = %.lr.ph.i255, %bb.g
  %.0.lcssa.i254 = phi i32 [ %i.mx, %bb.g ], [ %i.nc, %.lr.ph.i255 ]
  %i.ne = sext i32 %.0.lcssa.i254 to i64
  %i.nf = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = load i32, ptr %i.mr, align 4
  %i.ni = xor i32 %i.nh, %i.ng
  store i32 %i.ni, ptr %i.mr, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %modnn.exit257
  %indvars.iv.next407 = add nsw i64 %indvars.iv406, -1
  %i.nj = icmp sgt i64 %indvars.iv406, 1
  br i1 %i.nj, label %bb.f, label %.loopexit311, !llvm.loop !16

.loopexit312.loopexit:                            ; preds = %.loopexit311
  %.pre = load i32, ptr %i.a, align 16
  %.pre473.a = load i32, ptr %i.lv, align 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre474 = load i32, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert475 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre476 = load i32, ptr %.phi.trans.insert475, align 4
  %.phi.trans.insert477 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre478 = load i32, ptr %.phi.trans.insert477, align 16
  %.phi.trans.insert479 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre480 = load i32, ptr %.phi.trans.insert479, align 4
  %.phi.trans.insert481 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre482 = load i32, ptr %.phi.trans.insert481, align 8
  %.phi.trans.insert483 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre484 = load i32, ptr %.phi.trans.insert483, align 4
  %.phi.trans.insert485 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.pre486 = load i32, ptr %.phi.trans.insert485, align 16
  %.phi.trans.insert487 = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %.pre488 = load i32, ptr %.phi.trans.insert487, align 4
  %.phi.trans.insert489 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.pre490 = load i32, ptr %.phi.trans.insert489, align 8
  %.phi.trans.insert491 = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.pre492 = load i32, ptr %.phi.trans.insert491, align 4
  %.phi.trans.insert493 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.pre494 = load i32, ptr %.phi.trans.insert493, align 16
  %.phi.trans.insert495 = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.pre496.a = load i32, ptr %.phi.trans.insert495, align 4
  %.phi.trans.insert497 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.pre498 = load i32, ptr %.phi.trans.insert497, align 8
  %i.nk = sext i32 %.pre to i64
  %i.nl = sext i32 %.pre474 to i64
  %i.nm = sext i32 %.pre476 to i64
  %i.nn = sext i32 %.pre478 to i64
  %i.no = sext i32 %.pre480 to i64
  %i.np = sext i32 %.pre482 to i64
  %i.nq = sext i32 %.pre484 to i64
  %i.nr = sext i32 %.pre486 to i64
  %i.ns = sext i32 %.pre488 to i64
  %i.nt = sext i32 %.pre490 to i64
  %i.nu = sext i32 %.pre492 to i64
  %i.nv = sext i32 %.pre494 to i64
  %i.nw = sext i32 %.pre496.a to i64
  %i.nx = sext i32 %.pre498 to i64
  br label %.loopexit312

.loopexit312:                                     ; preds = %.loopexit312.loopexit, %modnn.exit249, %.preheader313
  %i.ny = phi i64 [ %i.nx, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.nz = phi i64 [ %i.nw, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.oa = phi i64 [ %i.nv, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.ob = phi i64 [ %i.nu, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.oc = phi i64 [ %i.nt, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.od = phi i64 [ %i.ns, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.oe = phi i64 [ %i.nr, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.of = phi i64 [ %i.nq, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.og = phi i64 [ %i.np, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.oh = phi i64 [ %i.no, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.oi = phi i64 [ %i.nn, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.oj = phi i64 [ %i.nm, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.ok = phi i64 [ %i.nl, %.loopexit312.loopexit ], [ 0, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.ol = phi i32 [ %.pre473.a, %.loopexit312.loopexit ], [ %i.mh, %modnn.exit249 ], [ 0, %.preheader313 ]
  %i.om = phi i64 [ %i.nk, %.loopexit312.loopexit ], [ 1, %modnn.exit249 ], [ 1, %.preheader313 ]
  %i.on = getelementptr [4 x i8], ptr @Index_of, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4
  store i32 %i.oo, ptr %i.c, align 16
  %i.op = sext i32 %i.ol to i64
  %i.oq = getelementptr [4 x i8], ptr @Index_of, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4
  %i.os = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  store i32 %i.or, ptr %i.os, align 4
  %i.ot = getelementptr [4 x i8], ptr @Index_of, i64 %i.ok
  %i.ou = load i32, ptr %i.ot, align 4
  %i.ov = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ou, ptr %i.ov, align 8
  %i.ow = getelementptr [4 x i8], ptr @Index_of, i64 %i.oj
  %i.ox = load i32, ptr %i.ow, align 4
  %i.oy = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.ox, ptr %i.oy, align 4
  %i.oz = getelementptr [4 x i8], ptr @Index_of, i64 %i.oi
  %i.pa = load i32, ptr %i.oz, align 4
  %i.pb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.pa, ptr %i.pb, align 16
  %i.pc = getelementptr [4 x i8], ptr @Index_of, i64 %i.oh
  %i.pd = load i32, ptr %i.pc, align 4
  %i.pe = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.pd, ptr %i.pe, align 4
  %i.pf = getelementptr [4 x i8], ptr @Index_of, i64 %i.og
  %i.pg = load i32, ptr %i.pf, align 4
  %i.ph = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.pg, ptr %i.ph, align 8
  %i.pi = getelementptr [4 x i8], ptr @Index_of, i64 %i.of
  %i.pj = load i32, ptr %i.pi, align 4
  %i.pk = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.pj, ptr %i.pk, align 4
  %i.pl = getelementptr [4 x i8], ptr @Index_of, i64 %i.oe
  %i.pm = load i32, ptr %i.pl, align 4
  %i.pn = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.pm, ptr %i.pn, align 16
  %i.po = getelementptr [4 x i8], ptr @Index_of, i64 %i.od
  %i.pp = load i32, ptr %i.po, align 4
  %i.pq = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.pp, ptr %i.pq, align 4
  %i.pr = getelementptr [4 x i8], ptr @Index_of, i64 %i.oc
  %i.ps = load i32, ptr %i.pr, align 4
  %i.pt = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.ps, ptr %i.pt, align 8
  %i.pu = getelementptr [4 x i8], ptr @Index_of, i64 %i.ob
  %i.pv = load i32, ptr %i.pu, align 4
  %i.pw = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.pv, ptr %i.pw, align 4
  %i.px = getelementptr [4 x i8], ptr @Index_of, i64 %i.oa
  %i.py = load i32, ptr %i.px, align 4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.py, ptr %i.pz, align 16
  %i.qa = getelementptr [4 x i8], ptr @Index_of, i64 %i.nz
  %i.qb = load i32, ptr %i.qa, align 4
  %i.qc = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 %i.qb, ptr %i.qc, align 4
  %i.qd = getelementptr [4 x i8], ptr @Index_of, i64 %i.ny
  %i.qe = load i32, ptr %i.qd, align 4
  %i.qf = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.qe, ptr %i.qf, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.qh = load i32, ptr %i.qg, align 4
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr [4 x i8], ptr @Index_of, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 %i.qk, ptr %i.ql, align 4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.qn = load i32, ptr %i.qm, align 16
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr [4 x i8], ptr @Index_of, i64 %i.qo
  %i.qq = load i32, ptr %i.qp, align 4
  %i.qr = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %i.qq, ptr %i.qr, align 16
  %i.qs = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.qt = load i32, ptr %i.qs, align 4
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr [4 x i8], ptr @Index_of, i64 %i.qu
  %i.qw = load i32, ptr %i.qv, align 4
  %i.qx = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %i.qw, ptr %i.qx, align 4
  %i.qy = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.qz = load i32, ptr %i.qy, align 8
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr [4 x i8], ptr @Index_of, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4
  %i.rd = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 %i.rc, ptr %i.rd, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.rf = load i32, ptr %i.re, align 4
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr [4 x i8], ptr @Index_of, i64 %i.rg
  %i.ri = load i32, ptr %i.rh, align 4
  %i.rj = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 %i.ri, ptr %i.rj, align 4
  %i.rk = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.rl = load i32, ptr %i.rk, align 16
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr [4 x i8], ptr @Index_of, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.c, i64 80
end_hunk_0
begin_hunk_1_@eras_dec_rs:bb.a
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr [4 x i8], ptr @Index_of, i64 %i.xs
  %i.xu = load i32, ptr %i.xt, align 4
  %i.xv = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i32 %i.xu, ptr %i.xv, align 4
  %i.xw = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.xx = load i32, ptr %i.xw, align 16
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr [4 x i8], ptr @Index_of, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4
  %i.yb = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store i32 %i.ya, ptr %i.yb, align 16
  %i.yc = add i32 %2, 1                           ; 2 uses
  %i.yd = icmp slt i32 %i.yc, 49
  br i1 %i.yd, label %.preheader309, label %.preheader304.preheader

.preheader304.preheader:                          ; preds = %.loopexit306, %.loopexit312
  br label %.preheader304

.preheader309:                                    ; preds = %.loopexit312, %.loopexit306
  %i.ye = phi i32 [ %i.aaq, %.loopexit306 ], [ %i.yc, %.loopexit312 ] ; 5 uses
  %.0196348 = phi i32 [ %i.ye, %.loopexit306 ], [ %2, %.loopexit312 ]
  %.0208347 = phi i32 [ %.2210, %.loopexit306 ], [ %2, %.loopexit312 ] ; 4 uses
  %i.yf = icmp sgt i32 %i.ye, 0
  br i1 %i.yf, label %.lr.ph341.preheader, label %._crit_edge

.lr.ph341.preheader:                              ; preds = %.preheader309
  %i.yg = zext nneg i32 %i.ye to i64              ; 2 uses
  br label %.lr.ph341

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.k
  %indvars.iv417 = phi i64 [ 0, %.lr.ph341.preheader ], [ %indvars.iv.next418, %bb.k ] ; 3 uses
  %.0185340 = phi i32 [ 0, %.lr.ph341.preheader ], [ %.1186, %bb.k ] ; 3 uses
  %i.yh = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv417
  %i.yi = load i32, ptr %i.yh, align 4            ; 2 uses
  %.not242 = icmp eq i32 %i.yi, 0
  br i1 %.not242, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph341
  %i.yj = sub nuw nsw i64 %i.yg, %indvars.iv417
  %i.yk = getelementptr [4 x i8], ptr %i.b, i64 %i.yj
  %i.yl = load i32, ptr %i.yk, align 4            ; 2 uses
  %.not243 = icmp eq i32 %i.yl, 255
  br i1 %.not243, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ym = sext i32 %i.yi to i64
  %i.yn = getelementptr [4 x i8], ptr @Index_of, i64 %i.ym
  %i.yo = load i32, ptr %i.yn, align 4
  %i.yp = add i32 %i.yo, %i.yl                    ; 3 uses
  %i.yq = icmp sgt i32 %i.yp, 254
  br i1 %i.yq, label %.lr.ph.i259, label %modnn.exit261

.lr.ph.i259:                                      ; preds = %bb.j, %.lr.ph.i259
  %.05.i260 = phi i32 [ %i.yu, %.lr.ph.i259 ], [ %i.yp, %bb.j ]
  %i.yr = add nsw i32 %.05.i260, -255             ; 2 uses
  %i.ys = lshr i32 %i.yr, 8
  %i.yt = and i32 %i.yr, 255
  %i.yu = add nuw nsw i32 %i.ys, %i.yt            ; 3 uses
  %i.yv = icmp samesign ugt i32 %i.yu, 254
  br i1 %i.yv, label %.lr.ph.i259, label %modnn.exit261, !llvm.loop !0

modnn.exit261:                                    ; preds = %.lr.ph.i259, %bb.j
  %.0.lcssa.i258 = phi i32 [ %i.yp, %bb.j ], [ %i.yu, %.lr.ph.i259 ]
  %i.yw = sext i32 %.0.lcssa.i258 to i64
  %i.yx = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.yw
  %i.yy = load i32, ptr %i.yx, align 4
  %i.yz = xor i32 %i.yy, %.0185340
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph341, %bb.i, %modnn.exit261
  %.1186 = phi i32 [ %i.yz, %modnn.exit261 ], [ %.0185340, %bb.i ], [ %.0185340, %.lr.ph341 ] ; 2 uses
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %i.yg
  br i1 %exitcond421.not, label %._crit_edge.loopexit, label %.lr.ph341, !llvm.loop !17

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.za = sext i32 %.1186 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader309
  %.0185.lcssa = phi i64 [ 0, %.preheader309 ], [ %i.za, %._crit_edge.loopexit ]
  %i.zb = getelementptr [4 x i8], ptr @Index_of, i64 %.0185.lcssa
  %i.zc = load i32, ptr %i.zb, align 4            ; 3 uses
  %i.zd = icmp eq i32 %i.zc, 255
  br i1 %i.zd, label %.preheader305.preheader, label %bb.l

.preheader305.preheader:                          ; preds = %._crit_edge
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.os, ptr noundef nonnull align 16 dereferenceable(192) %i.c, i64 192, i1 false)
  store i32 255, ptr %i.c, align 16
  br label %.loopexit306

bb.l:                                             ; preds = %._crit_edge
  %i.ze = load i32, ptr %i.a, align 16
  store i32 %i.ze, ptr %i.d, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.o
  %indvars.iv422 = phi i64 [ 0, %bb.l ], [ %i.zh, %bb.o ] ; 2 uses
  %i.zf = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv422
  %i.zg = load i32, ptr %i.zf, align 4            ; 2 uses
  %.not241 = icmp eq i32 %i.zg, 255
  %i.zh = add nuw nsw i64 %indvars.iv422, 1       ; 4 uses
  %i.zi = getelementptr [4 x i8], ptr %i.a, i64 %i.zh
  %i.zj = load i32, ptr %i.zi, align 4            ; 2 uses
  br i1 %.not241, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.zk = add i32 %i.zg, %i.zc                    ; 3 uses
  %i.zl = icmp sgt i32 %i.zk, 254
  br i1 %i.zl, label %.lr.ph.i263, label %modnn.exit265

.lr.ph.i263:                                      ; preds = %bb.n, %.lr.ph.i263
  %.05.i264 = phi i32 [ %i.zp, %.lr.ph.i263 ], [ %i.zk, %bb.n ]
  %i.zm = add nsw i32 %.05.i264, -255             ; 2 uses
  %i.zn = lshr i32 %i.zm, 8
  %i.zo = and i32 %i.zm, 255
  %i.zp = add nuw nsw i32 %i.zn, %i.zo            ; 3 uses
  %i.zq = icmp samesign ugt i32 %i.zp, 254
  br i1 %i.zq, label %.lr.ph.i263, label %modnn.exit265, !llvm.loop !0

modnn.exit265:                                    ; preds = %.lr.ph.i263, %bb.n
  %.0.lcssa.i262 = phi i32 [ %i.zk, %bb.n ], [ %i.zp, %.lr.ph.i263 ]
  %i.zr = sext i32 %.0.lcssa.i262 to i64
  %i.zs = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.zr
  %i.zt = load i32, ptr %i.zs, align 4
  %i.zu = xor i32 %i.zt, %i.zj
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %modnn.exit265
  %.sink = phi i32 [ %i.zu, %modnn.exit265 ], [ %i.zj, %bb.m ]
  %i.zv = getelementptr [4 x i8], ptr %i.d, i64 %i.zh
  store i32 %.sink, ptr %i.zv, align 4
  %exitcond425.not = icmp eq i64 %i.zh, 48
  br i1 %exitcond425.not, label %bb.p, label %bb.m, !llvm.loop !18

bb.p:                                             ; preds = %bb.o
  %i.zw = shl i32 %.0208347, 1
  %i.zx = add i32 %.0196348, %2
  %.not240 = icmp sgt i32 %i.zw, %i.zx
  br i1 %.not240, label %.preheader307.preheader, label %.preheader

.preheader307.preheader:                          ; preds = %bb.p
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.os, ptr noundef nonnull align 16 dereferenceable(192) %i.c, i64 192, i1 false)
  store i32 255, ptr %i.c, align 16
  br label %.loopexit308

.preheader:                                       ; preds = %bb.p, %modnn.exit269
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %modnn.exit269 ], [ 0, %bb.p ] ; 3 uses
  %i.zy = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv426
  %i.zz = load i32, ptr %i.zy, align 4            ; 2 uses
  %i.aaa = icmp eq i32 %i.zz, 0
  br i1 %i.aaa, label %modnn.exit269, label %bb.q

bb.q:                                             ; preds = %.preheader
  %i.aab = sext i32 %i.zz to i64
  %i.aac = getelementptr [4 x i8], ptr @Index_of, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4
  %i.aae = sub i32 %i.aad, %i.zc                  ; 2 uses
  %i.aaf = add i32 %i.aae, 255                    ; 2 uses
  %i.aag = icmp ult i32 %i.aae, 2147483393
  br i1 %i.aag, label %.lr.ph.i267, label %modnn.exit269

.lr.ph.i267:                                      ; preds = %bb.q, %.lr.ph.i267
  %.05.i268 = phi i32 [ %i.aak, %.lr.ph.i267 ], [ %i.aaf, %bb.q ]
  %i.aah = add nsw i32 %.05.i268, -255            ; 2 uses
  %i.aai = lshr i32 %i.aah, 8
  %i.aaj = and i32 %i.aah, 255
  %i.aak = add nuw nsw i32 %i.aai, %i.aaj         ; 3 uses
  %i.aal = icmp samesign ugt i32 %i.aak, 254
  br i1 %i.aal, label %.lr.ph.i267, label %modnn.exit269, !llvm.loop !0

modnn.exit269:                                    ; preds = %.lr.ph.i267, %bb.q, %.preheader
  %i.aam = phi i32 [ 255, %.preheader ], [ %i.aaf, %bb.q ], [ %i.aak, %.lr.ph.i267 ]
  %i.aan = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv426
  store i32 %i.aam, ptr %i.aan, align 4
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next427, 49
  br i1 %exitcond429.not, label %.loopexit308.loopexit, label %.preheader, !llvm.loop !19

.loopexit308.loopexit:                            ; preds = %modnn.exit269
  %i.aao = sub i32 %2, %.0208347
  %i.aap = add i32 %i.aao, %i.ye
  br label %.loopexit308

.loopexit308:                                     ; preds = %.loopexit308.loopexit, %.preheader307.preheader
  %.1209 = phi i32 [ %.0208347, %.preheader307.preheader ], [ %i.aap, %.loopexit308.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(196) %i.a, ptr noundef nonnull align 16 dereferenceable(196) %i.d, i64 196, i1 false)
  br label %.loopexit306

.loopexit306:                                     ; preds = %.loopexit308, %.preheader305.preheader
  %.2210 = phi i32 [ %.0208347, %.preheader305.preheader ], [ %.1209, %.loopexit308 ]
  %i.aaq = add nsw i32 %i.ye, 1                   ; 2 uses
  %exitcond439.not = icmp eq i32 %i.aaq, 49
  br i1 %exitcond439.not, label %.preheader304.preheader, label %.preheader309, !llvm.loop !20

.preheader303:                                    ; preds = %.preheader304
  %i.aar = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.aar, ptr noundef nonnull align 4 dereferenceable(192) %i.lv, i64 192, i1 false)
  %.not376 = icmp eq i32 %spec.select, 0
  %i.aas = zext i32 %spec.select to i64           ; 4 uses
  br label %.preheader301

.preheader304:                                    ; preds = %.preheader304.1, %.preheader304.preheader
  %indvars.iv440 = phi i64 [ 0, %.preheader304.preheader ], [ %indvars.iv.next441.1, %.preheader304.1 ] ; 5 uses
  %.0211349 = phi i32 [ 0, %.preheader304.preheader ], [ %spec.select.1, %.preheader304.1 ]
  %i.aat = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv440 ; 2 uses
  %i.aau = load i32, ptr %i.aat, align 8
  %i.aav = sext i32 %i.aau to i64
  %i.aaw = getelementptr [4 x i8], ptr @Index_of, i64 %i.aav
  %i.aax = load i32, ptr %i.aaw, align 4          ; 2 uses
  store i32 %i.aax, ptr %i.aat, align 8
  %.not239 = icmp eq i32 %i.aax, 255
  %i.aay = trunc nuw nsw i64 %indvars.iv440 to i32
  %spec.select = select i1 %.not239, i32 %.0211349, i32 %i.aay ; 14 uses
  %exitcond443.not = icmp eq i64 %indvars.iv440, 48
  br i1 %exitcond443.not, label %.preheader303, label %.preheader304.1

.preheader304.1:                                  ; preds = %.preheader304
  %indvars.iv.next441 = or disjoint i64 %indvars.iv440, 1 ; 2 uses
  %i.aaz = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next441 ; 2 uses
  %i.aba = load i32, ptr %i.aaz, align 4
  %i.abb = sext i32 %i.aba to i64
  %i.abc = getelementptr [4 x i8], ptr @Index_of, i64 %i.abb
  %i.abd = load i32, ptr %i.abc, align 4          ; 2 uses
  store i32 %i.abd, ptr %i.aaz, align 4
  %.not239.1 = icmp eq i32 %i.abd, 255
  %i.abe = trunc nuw nsw i64 %indvars.iv.next441 to i32
  %spec.select.1 = select i1 %.not239.1, i32 %spec.select, i32 %i.abe
  %indvars.iv.next441.1 = add nuw nsw i64 %indvars.iv440, 2
  br label %.preheader304

.preheader301:                                    ; preds = %.preheader303, %modnn.exit277
  %.0183359 = phi i32 [ 0, %.preheader303 ], [ %.1, %modnn.exit277 ] ; 4 uses
  %.0195358 = phi i32 [ 254, %.preheader303 ], [ %.0.lcssa.i274, %modnn.exit277 ] ; 3 uses
  %.9357 = phi i32 [ 1, %.preheader303 ], [ %i.abz, %modnn.exit277 ] ; 2 uses
  br i1 %.not376, label %._crit_edge355.thread, label %.lr.ph354

.lr.ph354:                                        ; preds = %.preheader301, %.lr.ph354._crit_edge
  %indvars.iv448 = phi i64 [ %indvars.iv.next449, %.lr.ph354._crit_edge ], [ %i.aas, %.preheader301 ] ; 3 uses
  %.0193353 = phi i32 [ %.1194, %.lr.ph354._crit_edge ], [ 1, %.preheader301 ] ; 2 uses
  %i.abf = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv448 ; 2 uses
  %i.abg = load i32, ptr %i.abf, align 4          ; 2 uses
  %.not238 = icmp eq i32 %i.abg, 255
  %.pre499 = trunc nuw i64 %indvars.iv448 to i32  ; 2 uses
  br i1 %.not238, label %.lr.ph354._crit_edge, label %bb.r

bb.r:                                             ; preds = %.lr.ph354
  %i.abh = add i32 %i.abg, %.pre499               ; 3 uses
  %i.abi = icmp sgt i32 %i.abh, 254
  br i1 %i.abi, label %.lr.ph.i271, label %modnn.exit273

.lr.ph.i271:                                      ; preds = %bb.r, %.lr.ph.i271
  %.05.i272 = phi i32 [ %i.abm, %.lr.ph.i271 ], [ %i.abh, %bb.r ]
  %i.abj = add nsw i32 %.05.i272, -255            ; 2 uses
  %i.abk = lshr i32 %i.abj, 8
  %i.abl = and i32 %i.abj, 255
  %i.abm = add nuw nsw i32 %i.abk, %i.abl         ; 3 uses
  %i.abn = icmp samesign ugt i32 %i.abm, 254
  br i1 %i.abn, label %.lr.ph.i271, label %modnn.exit273, !llvm.loop !0

modnn.exit273:                                    ; preds = %.lr.ph.i271, %bb.r
  %.0.lcssa.i270 = phi i32 [ %i.abh, %bb.r ], [ %i.abm, %.lr.ph.i271 ] ; 2 uses
  store i32 %.0.lcssa.i270, ptr %i.abf, align 4
  %i.abo = sext i32 %.0.lcssa.i270 to i64
  %i.abp = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.abo
  %i.abq = load i32, ptr %i.abp, align 4
  %i.abr = xor i32 %i.abq, %.0193353
  br label %.lr.ph354._crit_edge

.lr.ph354._crit_edge:                             ; preds = %.lr.ph354, %modnn.exit273
  %.1194 = phi i32 [ %i.abr, %modnn.exit273 ], [ %.0193353, %.lr.ph354 ] ; 2 uses
  %indvars.iv.next449 = add nsw i64 %indvars.iv448, -1
  %i.abs = icmp sgt i32 %.pre499, 1
  br i1 %i.abs, label %.lr.ph354, label %._crit_edge355, !llvm.loop !21

._crit_edge355:                                   ; preds = %.lr.ph354._crit_edge
  %i.abt = icmp eq i32 %.1194, 0
  br i1 %i.abt, label %bb.s, label %._crit_edge355.thread

bb.s:                                             ; preds = %._crit_edge355
  %i.abu = sext i32 %.0183359 to i64              ; 2 uses
  %i.abv = getelementptr [4 x i8], ptr %i.f, i64 %i.abu
  store i32 %.9357, ptr %i.abv, align 4
  %i.abw = getelementptr [4 x i8], ptr %i.h, i64 %i.abu
  store i32 %.0195358, ptr %i.abw, align 4
  %i.abx = add i32 %.0183359, 1                   ; 2 uses
  %i.aby = icmp eq i32 %i.abx, %spec.select
  br i1 %i.aby, label %.preheader300.preheader, label %._crit_edge355.thread

._crit_edge355.thread:                            ; preds = %.preheader301, %bb.s, %._crit_edge355
  %.1 = phi i32 [ %.0183359, %._crit_edge355 ], [ %i.abx, %bb.s ], [ %.0183359, %.preheader301 ] ; 2 uses
  %i.abz = add nuw nsw i32 %.9357, 1              ; 2 uses
  %i.aca = add nsw i32 %.0195358, 254             ; 2 uses
  %i.acb = icmp sgt i32 %.0195358, 0
  br i1 %i.acb, label %.lr.ph.i275, label %modnn.exit277

.lr.ph.i275:                                      ; preds = %._crit_edge355.thread, %.lr.ph.i275
  %.05.i276 = phi i32 [ %i.acf, %.lr.ph.i275 ], [ %i.aca, %._crit_edge355.thread ]
  %i.acc = add nsw i32 %.05.i276, -255            ; 2 uses
  %i.acd = lshr i32 %i.acc, 8
  %i.ace = and i32 %i.acc, 255
  %i.acf = add nuw nsw i32 %i.acd, %i.ace         ; 3 uses
  %i.acg = icmp samesign ugt i32 %i.acf, 254
  br i1 %i.acg, label %.lr.ph.i275, label %modnn.exit277, !llvm.loop !0

modnn.exit277:                                    ; preds = %.lr.ph.i275, %._crit_edge355.thread
  %.0.lcssa.i274 = phi i32 [ %i.aca, %._crit_edge355.thread ], [ %i.acf, %.lr.ph.i275 ]
  %exitcond451.not = icmp eq i32 %i.abz, 256
  br i1 %exitcond451.not, label %bb.t, label %.preheader301, !llvm.loop !22

bb.t:                                             ; preds = %modnn.exit277
  %.not230 = icmp eq i32 %spec.select, %.1
  br i1 %.not230, label %.preheader300.preheader, label %.loopexit

.preheader300.preheader:                          ; preds = %bb.s, %bb.t
  br label %.preheader300

.preheader300:                                    ; preds = %.preheader300.preheader, %bb.y
  %indvars.iv452 = phi i64 [ %indvars.iv.next453, %bb.y ], [ 0, %.preheader300.preheader ] ; 3 uses
  %.0206362 = phi i32 [ %spec.select245, %bb.y ], [ 0, %.preheader300.preheader ]
  %3 = trunc nuw nsw i64 %indvars.iv452 to i32    ; 2 uses
  %4 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %3)
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 3 uses
  %5 = sext i32 %4 to i64
  br label %bb.u

bb.u:                                             ; preds = %.preheader300, %bb.x
  %indvars.iv454 = phi i64 [ %5, %.preheader300 ], [ %indvars.iv.next455, %bb.x ] ; 4 uses
  %.0191361 = phi i32 [ 0, %.preheader300 ], [ %.1192, %bb.x ] ; 3 uses
  %i.ach = sub i64 %indvars.iv.next453, %indvars.iv454
  %sext = shl i64 %i.ach, 32
  %i.aci = ashr exact i64 %sext, 30
  %i.acj = getelementptr i8, ptr %i.b, i64 %i.aci
  %i.ack = load i32, ptr %i.acj, align 4          ; 2 uses
  %.not235 = icmp eq i32 %i.ack, 255
  br i1 %.not235, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.acl = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv454
  %i.acm = load i32, ptr %i.acl, align 4          ; 2 uses
  %.not236 = icmp eq i32 %i.acm, 255
  br i1 %.not236, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.acn = add i32 %i.acm, %i.ack                 ; 3 uses
  %i.aco = icmp sgt i32 %i.acn, 254
  br i1 %i.aco, label %.lr.ph.i279, label %modnn.exit281

.lr.ph.i279:                                      ; preds = %bb.w, %.lr.ph.i279
  %.05.i280 = phi i32 [ %i.acs, %.lr.ph.i279 ], [ %i.acn, %bb.w ]
  %i.acp = add nsw i32 %.05.i280, -255            ; 2 uses
  %i.acq = lshr i32 %i.acp, 8
  %i.acr = and i32 %i.acp, 255
  %i.acs = add nuw nsw i32 %i.acq, %i.acr         ; 3 uses
  %i.act = icmp samesign ugt i32 %i.acs, 254
  br i1 %i.act, label %.lr.ph.i279, label %modnn.exit281, !llvm.loop !0

modnn.exit281:                                    ; preds = %.lr.ph.i279, %bb.w
  %.0.lcssa.i278 = phi i32 [ %i.acn, %bb.w ], [ %i.acs, %.lr.ph.i279 ]
  %i.acu = sext i32 %.0.lcssa.i278 to i64
  %i.acv = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.acu
  %i.acw = load i32, ptr %i.acv, align 4
  %i.acx = xor i32 %i.acw, %.0191361
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %modnn.exit281
  %.1192 = phi i32 [ %i.acx, %modnn.exit281 ], [ %.0191361, %bb.v ], [ %.0191361, %bb.u ] ; 3 uses
  %indvars.iv.next455 = add nsw i64 %indvars.iv454, -1
  %i.acy = icmp sgt i64 %indvars.iv454, 0
  br i1 %i.acy, label %bb.u, label %bb.y, !llvm.loop !23

bb.y:                                             ; preds = %bb.x
  %.not234 = icmp eq i32 %.1192, 0
  %spec.select245 = select i1 %.not234, i32 %.0206362, i32 %3 ; 2 uses
  %i.acz = sext i32 %.1192 to i64
  %i.ada = getelementptr [4 x i8], ptr @Index_of, i64 %i.acz
  %i.adb = load i32, ptr %i.ada, align 4
  %i.adc = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv452
  store i32 %i.adb, ptr %i.adc, align 4
  %exitcond457.not = icmp eq i64 %indvars.iv.next453, 48
  br i1 %exitcond457.not, label %bb.z, label %.preheader300, !llvm.loop !24

bb.z:                                             ; preds = %bb.y
  %i.add = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store i32 255, ptr %i.add, align 16
  %.4368 = add i32 %spec.select, -1               ; 2 uses
  %i.ade = icmp sgt i32 %.4368, -1
  br i1 %i.ade, label %.preheader298.lr.ph, label %.loopexit

.preheader298.lr.ph:                              ; preds = %bb.z
  %i.adf = zext nneg i32 %spec.select245 to i64
  %umin462 = tail call i64 @llvm.umin.i64(i64 %i.aas, i64 47)
  %i.adg = and i64 %umin462, 62
  %i.adh = zext nneg i32 %.4368 to i64
  %i.adi = load i32, ptr @Alpha_to, align 16
  %i.adj = sext i32 %i.adi to i64
  %i.adk = getelementptr [4 x i8], ptr @Index_of, i64 %i.adj
  br label %.preheader298

.preheader298:                                    ; preds = %.preheader298.lr.ph, %bb.ai
  %indvars.iv465.a = phi i64 [ %i.adh, %.preheader298.lr.ph ], [ %indvars.iv.next466.a, %bb.ai ] ; 4 uses
  %i.adl = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv465.a ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader298, %bb.ac
  %indvars.iv459 = phi i64 [ %i.adf, %.preheader298 ], [ %indvars.iv.next460, %bb.ac ] ; 4 uses
  %.0189365 = phi i32 [ 0, %.preheader298 ], [ %.1190, %bb.ac ] ; 2 uses
  %i.adm = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv459
  %i.adn = load i32, ptr %i.adm, align 4          ; 2 uses
  %.not233 = icmp eq i32 %i.adn, 255
  br i1 %.not233, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ado = load i32, ptr %i.adl, align 4
  %i.adp = trunc nuw nsw i64 %indvars.iv459 to i32
  %i.adq = mul i32 %i.ado, %i.adp
  %i.adr = add i32 %i.adq, %i.adn                 ; 3 uses
  %i.ads = icmp sgt i32 %i.adr, 254
  br i1 %i.ads, label %.lr.ph.i283, label %modnn.exit285

.lr.ph.i283:                                      ; preds = %bb.ab, %.lr.ph.i283
  %.05.i284 = phi i32 [ %i.adw, %.lr.ph.i283 ], [ %i.adr, %bb.ab ]
  %i.adt = add nsw i32 %.05.i284, -255            ; 2 uses
  %i.adu = lshr i32 %i.adt, 8
  %i.adv = and i32 %i.adt, 255
  %i.adw = add nuw nsw i32 %i.adu, %i.adv         ; 3 uses
  %i.adx = icmp samesign ugt i32 %i.adw, 254
  br i1 %i.adx, label %.lr.ph.i283, label %modnn.exit285, !llvm.loop !0

modnn.exit285:                                    ; preds = %.lr.ph.i283, %bb.ab
  %.0.lcssa.i282 = phi i32 [ %i.adr, %bb.ab ], [ %i.adw, %.lr.ph.i283 ]
  %i.ady = sext i32 %.0.lcssa.i282 to i64
  %i.adz = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.ady
  %i.aea = load i32, ptr %i.adz, align 4
  %i.aeb = xor i32 %i.aea, %.0189365
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %modnn.exit285
  %.1190 = phi i32 [ %i.aeb, %modnn.exit285 ], [ %.0189365, %bb.aa ] ; 3 uses
  %indvars.iv.next460 = add nsw i64 %indvars.iv459, -1
  %i.aec = icmp sgt i64 %indvars.iv459, 0
  br i1 %i.aec, label %bb.aa, label %modnn.exit289, !llvm.loop !25

modnn.exit289:                                    ; preds = %bb.ac, %bb.ae
  %indvars.iv463 = phi i64 [ %indvars.iv.next464, %bb.ae ], [ %i.adg, %bb.ac ] ; 4 uses
  %.0187367 = phi i32 [ %.1188, %bb.ae ], [ 0, %bb.ac ] ; 2 uses
  %i.aed = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv463
  %i.aee = getelementptr i8, ptr %i.aed, i64 4
  %i.aef = load i32, ptr %i.aee, align 4          ; 2 uses
  %.not232 = icmp eq i32 %i.aef, 255
  br i1 %.not232, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %modnn.exit289
  %i.aeg = load i32, ptr %i.adl, align 4
  %i.aeh = trunc nuw nsw i64 %indvars.iv463 to i32
  %i.aei = mul i32 %i.aeg, %i.aeh
  %i.aej = add i32 %i.aei, %i.aef                 ; 3 uses
  %i.aek = icmp sgt i32 %i.aej, 254
  br i1 %i.aek, label %.lr.ph.i291, label %modnn.exit293

.lr.ph.i291:                                      ; preds = %bb.ad, %.lr.ph.i291
  %.05.i292 = phi i32 [ %i.aeo, %.lr.ph.i291 ], [ %i.aej, %bb.ad ]
  %i.ael = add nsw i32 %.05.i292, -255            ; 2 uses
  %i.aem = lshr i32 %i.ael, 8
  %i.aen = and i32 %i.ael, 255
  %i.aeo = add nuw nsw i32 %i.aem, %i.aen         ; 3 uses
  %i.aep = icmp samesign ugt i32 %i.aeo, 254
  br i1 %i.aep, label %.lr.ph.i291, label %modnn.exit293, !llvm.loop !0

modnn.exit293:                                    ; preds = %.lr.ph.i291, %bb.ad
  %.0.lcssa.i290 = phi i32 [ %i.aej, %bb.ad ], [ %i.aeo, %.lr.ph.i291 ]
  %i.aeq = sext i32 %.0.lcssa.i290 to i64
  %i.aer = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.aeq
  %i.aes = load i32, ptr %i.aer, align 4
  %i.aet = xor i32 %i.aes, %.0187367
  br label %bb.ae

bb.ae:                                            ; preds = %modnn.exit289, %modnn.exit293
  %.1188 = phi i32 [ %i.aet, %modnn.exit293 ], [ %.0187367, %modnn.exit289 ] ; 3 uses
  %indvars.iv.next464 = add nsw i64 %indvars.iv463, -2
  %i.aeu = icmp sgt i64 %indvars.iv463, 1
  br i1 %i.aeu, label %modnn.exit289, label %bb.af, !llvm.loop !26

bb.af:                                            ; preds = %bb.ae
  %i.aev = icmp eq i32 %.1188, 0
  br i1 %i.aev, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not231 = icmp eq i32 %.1190, 0
  br i1 %.not231, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aew = sext i32 %.1190 to i64
  %i.aex = getelementptr [4 x i8], ptr @Index_of, i64 %i.aew
  %i.aey = load i32, ptr %i.aex, align 4
  %i.aez = load i32, ptr %i.adk, align 4
  %i.afa = sext i32 %.1188 to i64
  %i.afb = getelementptr [4 x i8], ptr @Index_of, i64 %i.afa
  %i.afc = load i32, ptr %i.afb, align 4
  %i.afd = add i32 %i.aey, 255
  %i.afe = add i32 %i.afd, %i.aez
  %i.aff = sub i32 %i.afe, %i.afc                 ; 3 uses
  %i.afg = icmp sgt i32 %i.aff, 254
  br i1 %i.afg, label %.lr.ph.i295, label %modnn.exit297

.lr.ph.i295:                                      ; preds = %bb.ah, %.lr.ph.i295
  %.05.i296 = phi i32 [ %i.afk, %.lr.ph.i295 ], [ %i.aff, %bb.ah ]
  %i.afh = add nsw i32 %.05.i296, -255            ; 2 uses
  %i.afi = lshr i32 %i.afh, 8
  %i.afj = and i32 %i.afh, 255
  %i.afk = add nuw nsw i32 %i.afi, %i.afj         ; 3 uses
  %i.afl = icmp samesign ugt i32 %i.afk, 254
  br i1 %i.afl, label %.lr.ph.i295, label %modnn.exit297, !llvm.loop !0

modnn.exit297:                                    ; preds = %.lr.ph.i295, %bb.ah
  %.0.lcssa.i294 = phi i32 [ %i.aff, %bb.ah ], [ %i.afk, %.lr.ph.i295 ]
  %i.afm = sext i32 %.0.lcssa.i294 to i64
  %i.afn = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.afm
  %i.afo = load i32, ptr %i.afn, align 4
  %i.afp = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv465.a
  %i.afq = load i32, ptr %i.afp, align 4
  %i.afr = sub i32 254, %i.afq
  %i.afs = sext i32 %i.afr to i64
  %i.aft = getelementptr i8, ptr %0, i64 %i.afs   ; 2 uses
  %i.afu = load i8, ptr %i.aft, align 1
  %i.afv = trunc i32 %i.afo to i8
  %i.afw = xor i8 %i.afu, %i.afv
  store i8 %i.afw, ptr %i.aft, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %modnn.exit297
  %indvars.iv.next466.a = add nsw i64 %indvars.iv465.a, -1
  %i.afx = icmp sgt i64 %indvars.iv465.a, 0
  br i1 %i.afx, label %.preheader298, label %.loopexit299, !llvm.loop !27

.loopexit299:                                     ; preds = %bb.ai
  %.not237 = icmp ne ptr %1, null
  %i.afy = icmp sgt i32 %spec.select, 0
  %or.cond = and i1 %.not237, %i.afy
  br i1 %or.cond, label %.lr.ph374.preheader, label %.loopexit

.lr.ph374.preheader:                              ; preds = %.loopexit299
  %wide.trip.count471 = zext nneg i32 %spec.select to i64
  %min.iters.check = icmp ult i32 %spec.select, 8
  br i1 %min.iters.check, label %.lr.ph374.preheader588, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph374.preheader
  %n.vec = and i64 %i.aas, 2147483640             ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.afz = getelementptr [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.aga = getelementptr i8, ptr %i.afz, i64 16
  %wide.load = load <4 x i32>, ptr %i.afz, align 16
  %wide.load587 = load <4 x i32>, ptr %i.aga, align 16
  %i.agb = sub <4 x i32> splat (i32 254), %wide.load
  %i.agc = sub <4 x i32> splat (i32 254), %wide.load587
  %i.agd = getelementptr [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.age = getelementptr i8, ptr %i.agd, i64 16
  store <4 x i32> %i.agb, ptr %i.agd, align 4
  store <4 x i32> %i.agc, ptr %i.age, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.agf = icmp eq i64 %index.next, %n.vec
  br i1 %i.agf, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aas
  br i1 %cmp.n, label %.loopexit, label %.lr.ph374.preheader588

.lr.ph374.preheader588:                           ; preds = %.lr.ph374.preheader, %middle.block
  %indvars.iv468.ph = phi i64 [ 0, %.lr.ph374.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph374

.lr.ph374:                                        ; preds = %.lr.ph374.preheader588, %.lr.ph374
  %indvars.iv468 = phi i64 [ %indvars.iv.next469, %.lr.ph374 ], [ %indvars.iv468.ph, %.lr.ph374.preheader588 ] ; 3 uses
  %i.agg = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv468
  %i.agh = load i32, ptr %i.agg, align 4
  %i.agi = sub i32 254, %i.agh
  %i.agj = getelementptr [4 x i8], ptr %1, i64 %indvars.iv468
  store i32 %i.agi, ptr %i.agj, align 4
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %wide.trip.count471
  br i1 %exitcond472.not, label %.loopexit, label %.lr.ph374, !llvm.loop !29

.loopexit:                                        ; preds = %bb.af, %.lr.ph374, %middle.block, %bb.z, %bb.t, %.preheader314.preheader, %.loopexit299
  %.3559 = phi i32 [ 0, %.preheader314.preheader ], [ %spec.select, %.loopexit299 ], [ %spec.select, %middle.block ], [ %spec.select, %bb.z ], [ -1, %bb.t ], [ %spec.select, %.lr.ph374 ], [ -1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.3559
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7, !30, !31}
!29 = distinct !{!29, !7, !31, !30}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
