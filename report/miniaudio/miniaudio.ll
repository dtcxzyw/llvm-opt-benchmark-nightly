Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.1.i105.i.i = phi i16 [ %i.kq, %bb.aa ], [ %i.hj, %bb.y ] ; 2 uses
  %i.kr = lshr i64 %i.hk, 40
  %i.ks = trunc i64 %i.kr to i16
  %i.kt = shl i16 %.1.i105.i.i, 8
  %i.ku = lshr i16 %.1.i105.i.i, 8
  %i.kv = and i16 %i.ks, 255
  %i.kw = xor i16 %i.ku, %i.kv
  %i.kx = zext nneg i16 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.kx
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !122
  %i.la = xor i16 %i.kt, %i.kz
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.2.i104.i.i = phi i16 [ %i.la, %bb.ab ], [ %i.hj, %bb.y ] ; 2 uses
  %i.lb = lshr i64 %i.hk, 32
  %i.lc = trunc i64 %i.lb to i16
  %i.ld = shl i16 %.2.i104.i.i, 8
  %i.le = lshr i16 %.2.i104.i.i, 8
  %i.lf = and i16 %i.lc, 255
  %i.lg = xor i16 %i.le, %i.lf
  %i.lh = zext nneg i16 %i.lg to i64
  %i.li = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !122
  %i.lk = xor i16 %i.ld, %i.lj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %.3.i103.i.i = phi i16 [ %i.lk, %bb.ac ], [ %i.hj, %bb.y ] ; 2 uses
  %i.ll = lshr i64 %i.hk, 24
  %i.lm = trunc i64 %i.ll to i16
  %i.ln = shl i16 %.3.i103.i.i, 8
  %i.lo = lshr i16 %.3.i103.i.i, 8
  %i.lp = and i16 %i.lm, 255
  %i.lq = xor i16 %i.lo, %i.lp
  %i.lr = zext nneg i16 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.lr
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !122
  %i.lu = xor i16 %i.ln, %i.lt
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %.4.i102.i.i = phi i16 [ %i.lu, %bb.ad ], [ %i.hj, %bb.y ] ; 2 uses
  %i.lv = lshr i64 %i.hk, 16
  %i.lw = trunc i64 %i.lv to i16
  %i.lx = shl i16 %.4.i102.i.i, 8
  %i.ly = lshr i16 %.4.i102.i.i, 8
  %i.lz = and i16 %i.lw, 255
  %i.ma = xor i16 %i.ly, %i.lz
  %i.mb = zext nneg i16 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.mb
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !122
  %i.me = xor i16 %i.lx, %i.md
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y
  %.5.i101.i.i = phi i16 [ %i.me, %bb.ae ], [ %i.hj, %bb.y ] ; 2 uses
  %i.mf = trunc i64 %i.hk to i16                  ; 2 uses
  %i.mg = shl i16 %.5.i101.i.i, 8
  %i.mh = xor i16 %.5.i101.i.i, %i.mf
  %i.mi = lshr i16 %i.mh, 8
  %i.mj = zext nneg i16 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.mj
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !122
  %i.mm = xor i16 %i.mg, %i.ml
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i
  %.pre-phi24.i = phi i16 [ %.pre23.i, %._crit_edge.i ], [ %i.mf, %bb.af ]
  %.6.i99.i.i = phi i16 [ %i.hj, %._crit_edge.i ], [ %i.mm, %bb.af ] ; 2 uses
  %i.mn = shl i16 %.6.i99.i.i, 8
  %i.mo = lshr i16 %.6.i99.i.i, 8
  %i.mp = and i16 %.pre-phi24.i, 255
  %i.mq = xor i16 %i.mo, %i.mp
  %i.mr = zext nneg i16 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.mr
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !122
  %i.mu = xor i16 %i.mn, %i.mt
  br label %ma_dr_flac_crc16_bytes.exit107.i.i

ma_dr_flac_crc16_bytes.exit107.i.i:               ; preds = %bb.ag, %bb.y
  %.7.i100.i.i = phi i16 [ %i.hj, %bb.y ], [ %i.mu, %bb.ag ]
  store i16 %.7.i100.i.i, ptr %i.n, align 8, !tbaa !1198
  store i32 0, ptr %i.m, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i.i

ma_dr_flac__update_crc16.exit.i.i:                ; preds = %ma_dr_flac_crc16_bytes.exit107.i.i, %bb.z
  %i.mv = add nuw nsw i32 %i.hg, 1
  store i32 %i.mv, ptr %i.l, align 8, !tbaa !738
  %i.mw = zext nneg i32 %i.hg to i64
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !164
  %i.mz = tail call i64 @llvm.bswap.i64(i64 %i.my) ; 2 uses
  store i64 %i.mz, ptr %i.o, align 8, !tbaa !741
  br label %bb.aj

bb.ah:                                            ; preds = %bb.x
  %i.na = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i974 = icmp eq i32 %i.na, 0
  br i1 %.not.i.i974, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nb = load i64, ptr %i.j, align 8, !tbaa !740
  %i.nc = load i32, ptr %i.k, align 4, !tbaa !739
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %ma_dr_flac__update_crc16.exit.i.i
  %.479.i.i = phi i64 [ %i.mz, %ma_dr_flac__update_crc16.exit.i.i ], [ %i.nb, %bb.ai ] ; 7 uses
  %.4.i.i975 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i.i ], [ %i.nc, %bb.ai ]
  %i.nd = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i.i = icmp eq i32 %i.nd, 0
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ne = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i.i) #55, !srcloc !1207
  %i.nf = trunc i64 %i.ne to i32
  br label %ma_dr_flac__clz.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ng = icmp eq i64 %.479.i.i, 0
  br i1 %i.ng, label %ma_dr_flac__clz.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.nh = lshr i64 %.479.i.i, 60                  ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !118
  %i.nk = icmp eq i64 %i.nh, 0
  br i1 %i.nk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.nl = icmp ult i64 %.479.i.i, 4294967296      ; 2 uses
  %i.nm = shl nuw i64 %.479.i.i, 32
  %spec.select.i114.i.i = select i1 %i.nl, i64 %i.nm, i64 %.479.i.i ; 3 uses
  %spec.select26.i115.i.i = select i1 %i.nl, i32 32, i32 0 ; 2 uses
  %i.nn = icmp ult i64 %spec.select.i114.i.i, 281474976710656 ; 2 uses
  %i.no = or disjoint i32 %spec.select26.i115.i.i, 16
  %i.np = shl nuw i64 %spec.select.i114.i.i, 16
  %.119.i116.i.i = select i1 %i.nn, i64 %i.np, i64 %spec.select.i114.i.i ; 3 uses
  %.1.i117.i.i = select i1 %i.nn, i32 %i.no, i32 %spec.select26.i115.i.i ; 2 uses
  %i.nq = icmp ult i64 %.119.i116.i.i, 72057594037927936 ; 2 uses
  %i.nr = or disjoint i32 %.1.i117.i.i, 8
  %i.ns = shl nuw i64 %.119.i116.i.i, 8
  %.220.i118.i.i = select i1 %i.nq, i64 %i.ns, i64 %.119.i116.i.i ; 3 uses
  %.2.i119.i.i = select i1 %i.nq, i32 %i.nr, i32 %.1.i117.i.i ; 2 uses
  %i.nt = icmp ult i64 %.220.i118.i.i, 1152921504606846976 ; 2 uses
  %i.nu = or disjoint i32 %.2.i119.i.i, 4
  %i.nv = shl nuw i64 %.220.i118.i.i, 4
  %.321.i120.i.i = select i1 %i.nt, i64 %i.nv, i64 %.220.i118.i.i
  %.3.i121.i.i = select i1 %i.nt, i32 %i.nu, i32 %.2.i119.i.i
  %i.nw = lshr i64 %.321.i120.i.i, 60
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !118
  %i.nz = add i32 %i.ny, %.3.i121.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.4.i112.i.i = phi i32 [ %i.nz, %bb.an ], [ %i.nj, %bb.am ]
  %i.oa = add i32 %.4.i112.i.i, -1
  br label %ma_dr_flac__clz.exit.i.i

ma_dr_flac__clz.exit.i.i:                         ; preds = %bb.ao, %bb.al, %bb.ak
  %.0.i.i.i = phi i32 [ %i.nf, %bb.ak ], [ %i.oa, %bb.ao ], [ 64, %bb.al ] ; 3 uses
  %i.ob = add i32 %.0.i.i.i, %.0.i.i973           ; 2 uses
  %i.oc = icmp ult i32 %.0.i.i.i, 64
  br i1 %i.oc, label %.loopexit.i, label %bb.x

bb.ap:                                            ; preds = %bb.w, %bb.i
  %.1.in.i = phi i64 [ %i.hd, %bb.w ], [ %i.av, %bb.i ]
  %.681.i.i = phi i64 [ %i.he, %bb.w ], [ %i.aw, %bb.i ] ; 2 uses
  %.6.i.i977 = phi i32 [ %.173.i.i, %bb.w ], [ %i.ax, %bb.i ]
  %.1.i978 = trunc i64 %.1.in.i to i32
  store i64 %.681.i.i, ptr %i.j, align 8, !tbaa !740
  store i32 %.6.i.i977, ptr %i.k, align 4, !tbaa !739
  %i.od = and i32 %.1.i978, %i.f
  %i.oe = shl i32 %.14.i976, %i.b
  %i.of = or i32 %i.od, %i.oe                     ; 2 uses
  %i.og = lshr i32 %i.of, 1
  %i.oh = and i32 %i.of, 1
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !118
  %i.ol = xor i32 %i.ok, %i.og
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i
  store i32 %i.ol, ptr %i.om, align 4, !tbaa !118
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.c, !llvm.loop !3271

ma_dr_flac__ilog2_u32.exit:                       ; preds = %bb.a
  %i.on = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %4, i1 true)
  %i.oo = zext i8 %3 to i32                       ; 15 uses
  %i.op = zext nneg i8 %3 to i64
  %i.oq = shl nsw i64 -1, %i.op
  %i.or = trunc i64 %i.oq to i32
  %i.os = xor i32 %i.or, -1                       ; 9 uses
  %i.ot = and i32 %2, -4                          ; 4 uses
  %i.ou = zext i32 %i.ot to i64
  %.idx = shl nuw nsw i64 %i.ou, 2
  %i.ov = getelementptr inbounds nuw i8, ptr %8, i64 %.idx ; 2 uses
  %i.ow = add nsw i32 %6, %1                      ; 2 uses
  %reass.sub = sub nsw i32 %i.ow, %i.on
  %i.ox = add nsw i32 %reass.sub, 32
  %i.oy = icmp ult i32 %i.ox, 33
  %.not1178 = icmp eq i32 %i.ot, 0                ; 2 uses
  br i1 %i.oy, label %.preheader, label %.preheader1139

.preheader1139:                                   ; preds = %ma_dr_flac__ilog2_u32.exit
  br i1 %.not1178, label %.loopexit1129, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1139
  %i.oz = add nuw nsw i32 %i.oo, 1                ; 5 uses
  %i.pa = zext nneg i32 %i.oz to i64              ; 4 uses
  %i.pb = sub nsw i32 63, %i.oo                   ; 9 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 13 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 13 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 16 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 24 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 4168 ; 16 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.pj = zext nneg i32 %i.pb to i64              ; 4 uses
  %trunc.i763 = trunc nuw i32 %4 to i8            ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %7, i64 124 ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %7, i64 116 ; 4 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %7, i64 108 ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 4 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %7, i64 100 ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %7, i64 92 ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 4 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 4 uses
  %i.px = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.qp = zext nneg i32 %5 to i64                 ; 4 uses
  %.pre = load i64, ptr %i.pc, align 8, !tbaa !740
  br label %bb.aq

.preheader:                                       ; preds = %ma_dr_flac__ilog2_u32.exit
  br i1 %.not1178, label %.loopexit1129, label %.lr.ph1165

.lr.ph1165:                                       ; preds = %.preheader
  %i.qq = add nuw nsw i32 %i.oo, 1                ; 5 uses
  %i.qr = zext nneg i32 %i.qq to i64              ; 4 uses
  %i.qs = sub nsw i32 63, %i.oo                   ; 9 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 13 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 13 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 16 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 24 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 4168 ; 16 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.ra = zext nneg i32 %i.qs to i64              ; 4 uses
  %trunc.i932 = trunc nuw i32 %4 to i8            ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %7, i64 124 ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %7, i64 116 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %7, i64 108 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %7, i64 100 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %7, i64 92 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %.pre1208 = load i64, ptr %i.qt, align 8, !tbaa !740
  br label %bb.lp

bb.aq:                                            ; preds = %.lr.ph, %ma_dr_flac__calculate_prediction_64.exit694
  %i.sg = phi i64 [ %.pre, %.lr.ph ], [ %.681.i410, %ma_dr_flac__calculate_prediction_64.exit694 ] ; 7 uses
  %.01151163 = phi ptr [ %8, %.lr.ph ], [ %i.dhr, %ma_dr_flac__calculate_prediction_64.exit694 ] ; 127 uses
  %i.sh = load i32, ptr %i.pd, align 4, !tbaa !739 ; 2 uses
  %i.si = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i94.i591 = icmp eq i32 %i.si, 0
  br i1 %.not.i94.i591, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.sj = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.sg) #55, !srcloc !1207
  %i.sk = trunc i64 %i.sj to i32
  br label %ma_dr_flac__clz.exit96.i592

bb.as:                                            ; preds = %bb.aq
  %i.sl = icmp eq i64 %i.sg, 0
  br i1 %i.sl, label %ma_dr_flac__clz.exit96.i592.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.sm = lshr i64 %i.sg, 60                      ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !118
  %i.sp = icmp eq i64 %i.sm, 0
  br i1 %i.sp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.sq = icmp ult i64 %i.sg, 4294967296          ; 2 uses
  %i.sr = shl nuw i64 %i.sg, 32
  %spec.select.i.i648 = select i1 %i.sq, i64 %i.sr, i64 %i.sg ; 3 uses
  %spec.select26.i.i649 = select i1 %i.sq, i32 32, i32 0 ; 2 uses
  %i.ss = icmp ult i64 %spec.select.i.i648, 281474976710656 ; 2 uses
  %i.st = or disjoint i32 %spec.select26.i.i649, 16
  %i.su = shl nuw i64 %spec.select.i.i648, 16
  %.119.i.i650 = select i1 %i.ss, i64 %i.su, i64 %spec.select.i.i648 ; 3 uses
  %.1.i109.i651 = select i1 %i.ss, i32 %i.st, i32 %spec.select26.i.i649 ; 2 uses
  %i.sv = icmp ult i64 %.119.i.i650, 72057594037927936 ; 2 uses
  %i.sw = or disjoint i32 %.1.i109.i651, 8
  %i.sx = shl nuw i64 %.119.i.i650, 8
  %.220.i.i652 = select i1 %i.sv, i64 %i.sx, i64 %.119.i.i650 ; 3 uses
  %.2.i110.i653 = select i1 %i.sv, i32 %i.sw, i32 %.1.i109.i651 ; 2 uses
  %i.sy = icmp ult i64 %.220.i.i652, 1152921504606846976 ; 2 uses
  %i.sz = or disjoint i32 %.2.i110.i653, 4
  %i.ta = shl nuw i64 %.220.i.i652, 4
  %.321.i.i654 = select i1 %i.sy, i64 %i.ta, i64 %.220.i.i652
  %.3.i111.i655 = select i1 %i.sy, i32 %i.sz, i32 %.2.i110.i653
  %i.tb = lshr i64 %.321.i.i654, 60
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !118
  %i.te = add i32 %i.td, %.3.i111.i655
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.4.i108.i645 = phi i32 [ %i.te, %bb.au ], [ %i.so, %bb.at ]
  %i.tf = add i32 %.4.i108.i645, -1
  br label %ma_dr_flac__clz.exit96.i592

ma_dr_flac__clz.exit96.i592:                      ; preds = %bb.av, %bb.ar
  %.0.i95.i593 = phi i32 [ %i.sk, %bb.ar ], [ %i.tf, %bb.av ] ; 3 uses
  %i.tg = icmp ult i32 %.0.i95.i593, 64
  br i1 %i.tg, label %.loopexit1138, label %ma_dr_flac__clz.exit96.i592.thread

.loopexit1138:                                    ; preds = %ma_dr_flac__clz.exit.i602, %ma_dr_flac__clz.exit96.i592
  %.81070 = phi i32 [ %.0.i95.i593, %ma_dr_flac__clz.exit96.i592 ], [ %i.agq, %ma_dr_flac__clz.exit.i602 ]
  %.075.i604 = phi i64 [ %i.sg, %ma_dr_flac__clz.exit96.i592 ], [ %.479.i599, %ma_dr_flac__clz.exit.i602 ]
  %.072.i605 = phi i32 [ %i.sh, %ma_dr_flac__clz.exit96.i592 ], [ %.4.i600, %ma_dr_flac__clz.exit.i602 ]
  %.070.i606 = phi i32 [ %.0.i95.i593, %ma_dr_flac__clz.exit96.i592 ], [ %.0.i.i603, %ma_dr_flac__clz.exit.i602 ] ; 2 uses
  %i.th = zext nneg i32 %.070.i606 to i64
  %i.ti = shl i64 %.075.i604, %i.th               ; 2 uses
  %i.tj = add i32 %.070.i606, %.072.i605          ; 3 uses
  %.not90.i607 = icmp ugt i32 %i.tj, %i.pb
  %i.tk = lshr i64 %i.ti, %i.pj                   ; 2 uses
  br i1 %.not90.i607, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.loopexit1138
  %i.tl = shl i64 %i.ti, %i.pa
  %i.tm = add i32 %i.tj, %i.oz
  br label %bb.cd

bb.ax:                                            ; preds = %.loopexit1138
  %i.tn = sub nuw i32 %i.tj, %i.pb                ; 4 uses
  %i.to = load i32, ptr %i.pe, align 8, !tbaa !738 ; 3 uses
  %i.tp = icmp ult i32 %i.to, 512
  br i1 %i.tp, label %bb.ay, label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.tq = load i32, ptr %i.pf, align 8, !tbaa !742
  %i.tr = load i16, ptr %i.pg, align 8, !tbaa !1198 ; 11 uses
  %i.ts = load i64, ptr %i.ph, align 8, !tbaa !741 ; 14 uses
  switch i32 %i.tq, label %ma_dr_flac_crc16_bytes.exit.i615 [
    i32 0, label %bb.az
    i32 7, label %._crit_edge1227
    i32 1, label %bb.ba
    i32 2, label %bb.bb
    i32 3, label %bb.bc
    i32 4, label %bb.bd
    i32 5, label %bb.be
    i32 6, label %bb.bf
end_hunk_0
begin_hunk_1_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  br label %ma_dr_flac__update_crc16.exit.i

._crit_edge1242:                                  ; preds = %bb.xk
  %.pre1246 = trunc i64 %i.gwq to i16
  br label %bb.xs

bb.xm:                                            ; preds = %bb.xk
  %i.gzn = lshr i64 %i.gwq, 48
  %i.gzo = trunc nuw i64 %i.gzn to i16
  %i.gzp = shl i16 %i.gwp, 8
  %i.gzq = lshr i16 %i.gwp, 8
  %i.gzr = and i16 %i.gzo, 255
  %i.gzs = xor i16 %i.gzr, %i.gzq
  %i.gzt = zext nneg i16 %i.gzs to i64
  %i.gzu = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gzt
  %i.gzv = load i16, ptr %i.gzu, align 2, !tbaa !122
  %i.gzw = xor i16 %i.gzv, %i.gzp
  br label %bb.xn

bb.xn:                                            ; preds = %bb.xk, %bb.xm
  %.1.i105.i = phi i16 [ %i.gzw, %bb.xm ], [ %i.gwp, %bb.xk ] ; 2 uses
  %i.gzx = lshr i64 %i.gwq, 40
  %i.gzy = trunc i64 %i.gzx to i16
  %i.gzz = shl i16 %.1.i105.i, 8
  %i.haa = lshr i16 %.1.i105.i, 8
  %i.hab = and i16 %i.gzy, 255
  %i.hac = xor i16 %i.haa, %i.hab
  %i.had = zext nneg i16 %i.hac to i64
  %i.hae = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.had
  %i.haf = load i16, ptr %i.hae, align 2, !tbaa !122
  %i.hag = xor i16 %i.gzz, %i.haf
  br label %bb.xo

bb.xo:                                            ; preds = %bb.xk, %bb.xn
  %.2.i104.i = phi i16 [ %i.hag, %bb.xn ], [ %i.gwp, %bb.xk ] ; 2 uses
  %i.hah = lshr i64 %i.gwq, 32
  %i.hai = trunc i64 %i.hah to i16
  %i.haj = shl i16 %.2.i104.i, 8
  %i.hak = lshr i16 %.2.i104.i, 8
  %i.hal = and i16 %i.hai, 255
  %i.ham = xor i16 %i.hak, %i.hal
  %i.han = zext nneg i16 %i.ham to i64
  %i.hao = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.han
  %i.hap = load i16, ptr %i.hao, align 2, !tbaa !122
  %i.haq = xor i16 %i.haj, %i.hap
  br label %bb.xp

bb.xp:                                            ; preds = %bb.xk, %bb.xo
  %.3.i103.i = phi i16 [ %i.haq, %bb.xo ], [ %i.gwp, %bb.xk ] ; 2 uses
  %i.har = lshr i64 %i.gwq, 24
  %i.has = trunc i64 %i.har to i16
  %i.hat = shl i16 %.3.i103.i, 8
  %i.hau = lshr i16 %.3.i103.i, 8
  %i.hav = and i16 %i.has, 255
  %i.haw = xor i16 %i.hau, %i.hav
  %i.hax = zext nneg i16 %i.haw to i64
  %i.hay = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hax
  %i.haz = load i16, ptr %i.hay, align 2, !tbaa !122
  %i.hba = xor i16 %i.hat, %i.haz
  br label %bb.xq

bb.xq:                                            ; preds = %bb.xk, %bb.xp
  %.4.i102.i = phi i16 [ %i.hba, %bb.xp ], [ %i.gwp, %bb.xk ] ; 2 uses
  %i.hbb = lshr i64 %i.gwq, 16
  %i.hbc = trunc i64 %i.hbb to i16
  %i.hbd = shl i16 %.4.i102.i, 8
  %i.hbe = lshr i16 %.4.i102.i, 8
  %i.hbf = and i16 %i.hbc, 255
  %i.hbg = xor i16 %i.hbe, %i.hbf
  %i.hbh = zext nneg i16 %i.hbg to i64
  %i.hbi = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hbh
  %i.hbj = load i16, ptr %i.hbi, align 2, !tbaa !122
  %i.hbk = xor i16 %i.hbd, %i.hbj
  br label %bb.xr

bb.xr:                                            ; preds = %bb.xk, %bb.xq
  %.5.i101.i = phi i16 [ %i.hbk, %bb.xq ], [ %i.gwp, %bb.xk ] ; 2 uses
  %i.hbl = trunc i64 %i.gwq to i16                ; 2 uses
  %i.hbm = shl i16 %.5.i101.i, 8
  %i.hbn = xor i16 %.5.i101.i, %i.hbl
  %i.hbo = lshr i16 %i.hbn, 8
  %i.hbp = zext nneg i16 %i.hbo to i64
  %i.hbq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hbp
  %i.hbr = load i16, ptr %i.hbq, align 2, !tbaa !122
  %i.hbs = xor i16 %i.hbm, %i.hbr
  br label %bb.xs

bb.xs:                                            ; preds = %._crit_edge1242, %bb.xr
  %.pre-phi1247 = phi i16 [ %.pre1246, %._crit_edge1242 ], [ %i.hbl, %bb.xr ]
  %.6.i99.i = phi i16 [ %i.gwp, %._crit_edge1242 ], [ %i.hbs, %bb.xr ] ; 2 uses
  %i.hbt = shl i16 %.6.i99.i, 8
  %i.hbu = lshr i16 %.6.i99.i, 8
  %i.hbv = and i16 %.pre-phi1247, 255
  %i.hbw = xor i16 %i.hbu, %i.hbv
  %i.hbx = zext nneg i16 %i.hbw to i64
  %i.hby = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hbx
  %i.hbz = load i16, ptr %i.hby, align 2, !tbaa !122
  %i.hca = xor i16 %i.hbt, %i.hbz
  br label %ma_dr_flac_crc16_bytes.exit107.i

ma_dr_flac_crc16_bytes.exit107.i:                 ; preds = %bb.xk, %bb.xs
  %.7.i100.i = phi i16 [ %i.gwp, %bb.xk ], [ %i.hca, %bb.xs ]
  store i16 %.7.i100.i, ptr %i.gnn, align 8, !tbaa !1198
  store i32 0, ptr %i.gnm, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i

ma_dr_flac__update_crc16.exit.i:                  ; preds = %ma_dr_flac_crc16_bytes.exit107.i, %bb.xl
  %i.hcb = add nuw nsw i32 %i.gwm, 1
  store i32 %i.hcb, ptr %i.gnl, align 8, !tbaa !738
  %i.hcc = zext nneg i32 %i.gwm to i64
  %i.hcd = getelementptr inbounds nuw [8 x i8], ptr %i.gnp, i64 %i.hcc
  %i.hce = load i64, ptr %i.hcd, align 8, !tbaa !164
  %i.hcf = tail call i64 @llvm.bswap.i64(i64 %i.hce) ; 2 uses
  store i64 %i.hcf, ptr %i.gno, align 8, !tbaa !741
  br label %bb.xv

bb.xt:                                            ; preds = %bb.xj
  %i.hcg = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i = icmp eq i32 %i.hcg, 0
  br i1 %.not.i, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  %i.hch = load i64, ptr %i.gnj, align 8, !tbaa !740
  %i.hci = load i32, ptr %i.gnk, align 4, !tbaa !739
  br label %bb.xv

bb.xv:                                            ; preds = %bb.xu, %ma_dr_flac__update_crc16.exit.i
  %.479.i = phi i64 [ %i.hcf, %ma_dr_flac__update_crc16.exit.i ], [ %i.hch, %bb.xu ] ; 7 uses
  %.4.i = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i ], [ %i.hci, %bb.xu ]
  %i.hcj = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i = icmp eq i32 %i.hcj, 0
  br i1 %.not.i.i, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.hck = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i) #55, !srcloc !1207
  %i.hcl = trunc i64 %i.hck to i32
  br label %ma_dr_flac__clz.exit.i

bb.xx:                                            ; preds = %bb.xv
  %i.hcm = icmp eq i64 %.479.i, 0
  br i1 %i.hcm, label %ma_dr_flac__clz.exit.i, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.hcn = lshr i64 %.479.i, 60                   ; 2 uses
  %i.hco = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.hcn
  %i.hcp = load i32, ptr %i.hco, align 4, !tbaa !118
  %i.hcq = icmp eq i64 %i.hcn, 0
  br i1 %i.hcq, label %bb.xz, label %bb.ya

bb.xz:                                            ; preds = %bb.xy
  %i.hcr = icmp ult i64 %.479.i, 4294967296       ; 2 uses
  %i.hcs = shl nuw i64 %.479.i, 32
  %spec.select.i114.i = select i1 %i.hcr, i64 %i.hcs, i64 %.479.i ; 3 uses
  %spec.select26.i115.i = select i1 %i.hcr, i32 32, i32 0 ; 2 uses
  %i.hct = icmp ult i64 %spec.select.i114.i, 281474976710656 ; 2 uses
  %i.hcu = or disjoint i32 %spec.select26.i115.i, 16
  %i.hcv = shl nuw i64 %spec.select.i114.i, 16
  %.119.i116.i = select i1 %i.hct, i64 %i.hcv, i64 %spec.select.i114.i ; 3 uses
  %.1.i117.i = select i1 %i.hct, i32 %i.hcu, i32 %spec.select26.i115.i ; 2 uses
  %i.hcw = icmp ult i64 %.119.i116.i, 72057594037927936 ; 2 uses
  %i.hcx = or disjoint i32 %.1.i117.i, 8
  %i.hcy = shl nuw i64 %.119.i116.i, 8
  %.220.i118.i = select i1 %i.hcw, i64 %i.hcy, i64 %.119.i116.i ; 3 uses
  %.2.i119.i = select i1 %i.hcw, i32 %i.hcx, i32 %.1.i117.i ; 2 uses
  %i.hcz = icmp ult i64 %.220.i118.i, 1152921504606846976 ; 2 uses
  %i.hda = or disjoint i32 %.2.i119.i, 4
  %i.hdb = shl nuw i64 %.220.i118.i, 4
  %.321.i120.i = select i1 %i.hcz, i64 %i.hdb, i64 %.220.i118.i
  %.3.i121.i = select i1 %i.hcz, i32 %i.hda, i32 %.2.i119.i
  %i.hdc = lshr i64 %.321.i120.i, 60
  %i.hdd = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.hdc
  %i.hde = load i32, ptr %i.hdd, align 4, !tbaa !118
  %i.hdf = add i32 %i.hde, %.3.i121.i
  br label %bb.ya

bb.ya:                                            ; preds = %bb.xz, %bb.xy
  %.4.i112.i = phi i32 [ %i.hdf, %bb.xz ], [ %i.hcp, %bb.xy ]
  %i.hdg = add i32 %.4.i112.i, -1
  br label %ma_dr_flac__clz.exit.i

ma_dr_flac__clz.exit.i:                           ; preds = %bb.xx, %bb.ya, %bb.xw
  %.0.i.i = phi i32 [ %i.hcl, %bb.xw ], [ %i.hdg, %bb.ya ], [ 64, %bb.xx ] ; 3 uses
  %i.hdh = add i32 %.0.i.i, %.0.i                 ; 2 uses
  %i.hdi = icmp ult i32 %.0.i.i, 64
  br i1 %i.hdi, label %.loopexit, label %bb.xj

bb.yb:                                            ; preds = %bb.xi, %bb.wu
  %.41042.in = phi i64 [ %i.gwj, %bb.xi ], [ %i.gqb, %bb.wu ]
  %.681.i = phi i64 [ %i.gwk, %bb.xi ], [ %i.gqc, %bb.wu ] ; 2 uses
  %.6.i = phi i32 [ %.173.i, %bb.xi ], [ %i.gqd, %bb.wu ]
  %.41042 = trunc i64 %.41042.in to i32
  store i64 %.681.i, ptr %i.gnj, align 8, !tbaa !740
  store i32 %.6.i, ptr %i.gnk, align 4, !tbaa !739
  %i.hdj = and i32 %.41042, %i.os
  %i.hdk = shl i32 %.41066, %i.oo
  %i.hdl = or i32 %i.hdj, %i.hdk                  ; 2 uses
  %i.hdm = and i32 %i.hdl, 1
  %i.hdn = zext nneg i32 %i.hdm to i64
  %i.hdo = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %i.hdn
  %i.hdp = load i32, ptr %i.hdo, align 4, !tbaa !118
  br label %9

9:                                                ; preds = %bb.yb, %9
  %.0.i9691168 = phi i32 [ 0, %bb.yb ], [ %10, %9 ]
  %.04.i9681167 = phi i32 [ %4, %bb.yb ], [ %11, %9 ]
  %10 = add nuw nsw i32 %.0.i9691168, 1           ; 2 uses
  %11 = lshr i32 %.04.i9681167, 1                 ; 2 uses
  %.not.i970 = icmp eq i32 %11, 0
  br i1 %.not.i970, label %ma_dr_flac__ilog2_u32.exit971, label %9, !llvm.loop !3274

ma_dr_flac__ilog2_u32.exit971:                    ; preds = %9
  %12 = lshr i32 %i.hdl, 1
  %13 = xor i32 %i.hdp, %12
  %14 = add i32 %10, %i.ow
  %15 = icmp ult i32 %14, 33
  br i1 %15, label %bb.zj, label %bb.yc

bb.yc:                                            ; preds = %ma_dr_flac__ilog2_u32.exit971
  switch i8 %trunc.i, label %ma_dr_flac__calculate_prediction_64.exit [
    i8 32, label %bb.yd
    i8 31, label %bb.ye
    i8 30, label %bb.yf
    i8 29, label %bb.yg
    i8 28, label %bb.yh
    i8 27, label %bb.yi
    i8 26, label %bb.yj
    i8 25, label %bb.yk
    i8 24, label %bb.yl
    i8 23, label %bb.ym
    i8 22, label %bb.yn
    i8 21, label %bb.yo
    i8 20, label %bb.yp
    i8 19, label %bb.yq
    i8 18, label %bb.yr
    i8 17, label %bb.ys
    i8 16, label %bb.yt
    i8 15, label %bb.yu
    i8 14, label %bb.yv
    i8 13, label %bb.yw
    i8 12, label %bb.yx
    i8 11, label %bb.yy
    i8 10, label %bb.yz
    i8 9, label %bb.za
    i8 8, label %bb.zb
    i8 7, label %bb.zc
    i8 6, label %bb.zd
    i8 5, label %bb.ze
    i8 4, label %bb.zf
    i8 3, label %bb.zg
    i8 2, label %bb.zh
    i8 1, label %bb.zi
  ]

bb.yd:                                            ; preds = %bb.yc
  %i.hdq = load i32, ptr %i.gnr, align 4, !tbaa !118
  %i.hdr = sext i32 %i.hdq to i64
  %i.hds = getelementptr inbounds i8, ptr %.31169, i64 -128
  %i.hdt = load i32, ptr %i.hds, align 4, !tbaa !118
  %i.hdu = sext i32 %i.hdt to i64
  %i.hdv = mul nsw i64 %i.hdu, %i.hdr
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yd, %bb.yc
  %.0.i660 = phi i64 [ %i.hdv, %bb.yd ], [ 0, %bb.yc ]
  %i.hdw = load i32, ptr %i.gns, align 4, !tbaa !118
  %i.hdx = sext i32 %i.hdw to i64
  %i.hdy = getelementptr inbounds i8, ptr %.31169, i64 -124
  %i.hdz = load i32, ptr %i.hdy, align 4, !tbaa !118
  %i.hea = sext i32 %i.hdz to i64
  %i.heb = mul nsw i64 %i.hea, %i.hdx
  %i.hec = add nsw i64 %i.heb, %.0.i660
  br label %bb.yf

bb.yf:                                            ; preds = %bb.ye, %bb.yc
  %.1.i = phi i64 [ %i.hec, %bb.ye ], [ 0, %bb.yc ]
  %i.hed = load i32, ptr %i.gnt, align 4, !tbaa !118
  %i.hee = sext i32 %i.hed to i64
  %i.hef = getelementptr inbounds i8, ptr %.31169, i64 -120
  %i.heg = load i32, ptr %i.hef, align 4, !tbaa !118
  %i.heh = sext i32 %i.heg to i64
  %i.hei = mul nsw i64 %i.heh, %i.hee
  %i.hej = add nsw i64 %i.hei, %.1.i
  br label %bb.yg

bb.yg:                                            ; preds = %bb.yf, %bb.yc
  %.2.i = phi i64 [ %i.hej, %bb.yf ], [ 0, %bb.yc ]
  %i.hek = load i32, ptr %i.gnu, align 4, !tbaa !118
  %i.hel = sext i32 %i.hek to i64
  %i.hem = getelementptr inbounds i8, ptr %.31169, i64 -116
  %i.hen = load i32, ptr %i.hem, align 4, !tbaa !118
  %i.heo = sext i32 %i.hen to i64
  %i.hep = mul nsw i64 %i.heo, %i.hel
  %i.heq = add nsw i64 %i.hep, %.2.i
  br label %bb.yh

bb.yh:                                            ; preds = %bb.yg, %bb.yc
  %.3.i659 = phi i64 [ %i.heq, %bb.yg ], [ 0, %bb.yc ]
  %i.her = load i32, ptr %i.gnv, align 4, !tbaa !118
  %i.hes = sext i32 %i.her to i64
  %i.het = getelementptr inbounds i8, ptr %.31169, i64 -112
  %i.heu = load i32, ptr %i.het, align 4, !tbaa !118
  %i.hev = sext i32 %i.heu to i64
  %i.hew = mul nsw i64 %i.hev, %i.hes
  %i.hex = add nsw i64 %i.hew, %.3.i659
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.yc
  %.4.i658 = phi i64 [ %i.hex, %bb.yh ], [ 0, %bb.yc ]
  %i.hey = load i32, ptr %i.gnw, align 4, !tbaa !118
  %i.hez = sext i32 %i.hey to i64
  %i.hfa = getelementptr inbounds i8, ptr %.31169, i64 -108
  %i.hfb = load i32, ptr %i.hfa, align 4, !tbaa !118
  %i.hfc = sext i32 %i.hfb to i64
  %i.hfd = mul nsw i64 %i.hfc, %i.hez
  %i.hfe = add nsw i64 %i.hfd, %.4.i658
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yi, %bb.yc
  %.5.i = phi i64 [ %i.hfe, %bb.yi ], [ 0, %bb.yc ]
  %i.hff = load i32, ptr %i.gnx, align 4, !tbaa !118
  %i.hfg = sext i32 %i.hff to i64
  %i.hfh = getelementptr inbounds i8, ptr %.31169, i64 -104
  %i.hfi = load i32, ptr %i.hfh, align 4, !tbaa !118
  %i.hfj = sext i32 %i.hfi to i64
  %i.hfk = mul nsw i64 %i.hfj, %i.hfg
  %i.hfl = add nsw i64 %i.hfk, %.5.i
  br label %bb.yk

bb.yk:                                            ; preds = %bb.yj, %bb.yc
  %.6.i657 = phi i64 [ %i.hfl, %bb.yj ], [ 0, %bb.yc ]
  %i.hfm = load i32, ptr %i.gny, align 4, !tbaa !118
  %i.hfn = sext i32 %i.hfm to i64
  %i.hfo = getelementptr inbounds i8, ptr %.31169, i64 -100
  %i.hfp = load i32, ptr %i.hfo, align 4, !tbaa !118
  %i.hfq = sext i32 %i.hfp to i64
  %i.hfr = mul nsw i64 %i.hfq, %i.hfn
  %i.hfs = add nsw i64 %i.hfr, %.6.i657
  br label %bb.yl

bb.yl:                                            ; preds = %bb.yk, %bb.yc
  %.7.i = phi i64 [ %i.hfs, %bb.yk ], [ 0, %bb.yc ]
  %i.hft = load i32, ptr %i.gnz, align 4, !tbaa !118
  %i.hfu = sext i32 %i.hft to i64
  %i.hfv = getelementptr inbounds i8, ptr %.31169, i64 -96
  %i.hfw = load i32, ptr %i.hfv, align 4, !tbaa !118
  %i.hfx = sext i32 %i.hfw to i64
  %i.hfy = mul nsw i64 %i.hfx, %i.hfu
  %i.hfz = add nsw i64 %i.hfy, %.7.i
  br label %bb.ym

bb.ym:                                            ; preds = %bb.yl, %bb.yc
  %.8.i = phi i64 [ %i.hfz, %bb.yl ], [ 0, %bb.yc ]
  %i.hga = load i32, ptr %i.goa, align 4, !tbaa !118
  %i.hgb = sext i32 %i.hga to i64
  %i.hgc = getelementptr inbounds i8, ptr %.31169, i64 -92
  %i.hgd = load i32, ptr %i.hgc, align 4, !tbaa !118
  %i.hge = sext i32 %i.hgd to i64
  %i.hgf = mul nsw i64 %i.hge, %i.hgb
  %i.hgg = add nsw i64 %i.hgf, %.8.i
  br label %bb.yn

bb.yn:                                            ; preds = %bb.ym, %bb.yc
  %.9.i = phi i64 [ %i.hgg, %bb.ym ], [ 0, %bb.yc ]
  %i.hgh = load i32, ptr %i.gob, align 4, !tbaa !118
  %i.hgi = sext i32 %i.hgh to i64
  %i.hgj = getelementptr inbounds i8, ptr %.31169, i64 -88
  %i.hgk = load i32, ptr %i.hgj, align 4, !tbaa !118
  %i.hgl = sext i32 %i.hgk to i64
  %i.hgm = mul nsw i64 %i.hgl, %i.hgi
  %i.hgn = add nsw i64 %i.hgm, %.9.i
  br label %bb.yo

bb.yo:                                            ; preds = %bb.yn, %bb.yc
  %.10.i = phi i64 [ %i.hgn, %bb.yn ], [ 0, %bb.yc ]
  %i.hgo = load i32, ptr %i.goc, align 4, !tbaa !118
  %i.hgp = sext i32 %i.hgo to i64
  %i.hgq = getelementptr inbounds i8, ptr %.31169, i64 -84
  %i.hgr = load i32, ptr %i.hgq, align 4, !tbaa !118
  %i.hgs = sext i32 %i.hgr to i64
  %i.hgt = mul nsw i64 %i.hgs, %i.hgp
  %i.hgu = add nsw i64 %i.hgt, %.10.i
  br label %bb.yp

bb.yp:                                            ; preds = %bb.yo, %bb.yc
  %.11.i = phi i64 [ %i.hgu, %bb.yo ], [ 0, %bb.yc ]
  %i.hgv = load i32, ptr %i.god, align 4, !tbaa !118
  %i.hgw = sext i32 %i.hgv to i64
  %i.hgx = getelementptr inbounds i8, ptr %.31169, i64 -80
  %i.hgy = load i32, ptr %i.hgx, align 4, !tbaa !118
  %i.hgz = sext i32 %i.hgy to i64
  %i.hha = mul nsw i64 %i.hgz, %i.hgw
  %i.hhb = add nsw i64 %i.hha, %.11.i
  br label %bb.yq

bb.yq:                                            ; preds = %bb.yp, %bb.yc
  %.12.i = phi i64 [ %i.hhb, %bb.yp ], [ 0, %bb.yc ]
  %i.hhc = load i32, ptr %i.goe, align 4, !tbaa !118
  %i.hhd = sext i32 %i.hhc to i64
  %i.hhe = getelementptr inbounds i8, ptr %.31169, i64 -76
  %i.hhf = load i32, ptr %i.hhe, align 4, !tbaa !118
  %i.hhg = sext i32 %i.hhf to i64
  %i.hhh = mul nsw i64 %i.hhg, %i.hhd
  %i.hhi = add nsw i64 %i.hhh, %.12.i
  br label %bb.yr

bb.yr:                                            ; preds = %bb.yq, %bb.yc
  %.13.i = phi i64 [ %i.hhi, %bb.yq ], [ 0, %bb.yc ]
  %i.hhj = load i32, ptr %i.gof, align 4, !tbaa !118
  %i.hhk = sext i32 %i.hhj to i64
  %i.hhl = getelementptr inbounds i8, ptr %.31169, i64 -72
  %i.hhm = load i32, ptr %i.hhl, align 4, !tbaa !118
  %i.hhn = sext i32 %i.hhm to i64
  %i.hho = mul nsw i64 %i.hhn, %i.hhk
  %i.hhp = add nsw i64 %i.hho, %.13.i
  br label %bb.ys

bb.ys:                                            ; preds = %bb.yr, %bb.yc
  %.14.i = phi i64 [ %i.hhp, %bb.yr ], [ 0, %bb.yc ]
  %i.hhq = load i32, ptr %i.gog, align 4, !tbaa !118
  %i.hhr = sext i32 %i.hhq to i64
  %i.hhs = getelementptr inbounds i8, ptr %.31169, i64 -68
  %i.hht = load i32, ptr %i.hhs, align 4, !tbaa !118
  %i.hhu = sext i32 %i.hht to i64
  %i.hhv = mul nsw i64 %i.hhu, %i.hhr
  %i.hhw = add nsw i64 %i.hhv, %.14.i
  br label %bb.yt

bb.yt:                                            ; preds = %bb.ys, %bb.yc
  %.15.i = phi i64 [ %i.hhw, %bb.ys ], [ 0, %bb.yc ]
  %i.hhx = load i32, ptr %i.goh, align 4, !tbaa !118
  %i.hhy = sext i32 %i.hhx to i64
  %i.hhz = getelementptr inbounds i8, ptr %.31169, i64 -64
  %i.hia = load i32, ptr %i.hhz, align 4, !tbaa !118
  %i.hib = sext i32 %i.hia to i64
  %i.hic = mul nsw i64 %i.hib, %i.hhy
  %i.hid = add nsw i64 %i.hic, %.15.i
  br label %bb.yu

bb.yu:                                            ; preds = %bb.yt, %bb.yc
  %.16.i = phi i64 [ %i.hid, %bb.yt ], [ 0, %bb.yc ]
  %i.hie = load i32, ptr %i.goi, align 4, !tbaa !118
  %i.hif = sext i32 %i.hie to i64
  %i.hig = getelementptr inbounds i8, ptr %.31169, i64 -60
  %i.hih = load i32, ptr %i.hig, align 4, !tbaa !118
  %i.hii = sext i32 %i.hih to i64
  %i.hij = mul nsw i64 %i.hii, %i.hif
  %i.hik = add nsw i64 %i.hij, %.16.i
  br label %bb.yv

bb.yv:                                            ; preds = %bb.yu, %bb.yc
  %.17.i = phi i64 [ %i.hik, %bb.yu ], [ 0, %bb.yc ]
  %i.hil = load i32, ptr %i.goj, align 4, !tbaa !118
  %i.him = sext i32 %i.hil to i64
  %i.hin = getelementptr inbounds i8, ptr %.31169, i64 -56
  %i.hio = load i32, ptr %i.hin, align 4, !tbaa !118
  %i.hip = sext i32 %i.hio to i64
  %i.hiq = mul nsw i64 %i.hip, %i.him
  %i.hir = add nsw i64 %i.hiq, %.17.i
  br label %bb.yw

bb.yw:                                            ; preds = %bb.yv, %bb.yc
  %.18.i = phi i64 [ %i.hir, %bb.yv ], [ 0, %bb.yc ]
  %i.his = load i32, ptr %i.gok, align 4, !tbaa !118
  %i.hit = sext i32 %i.his to i64
  %i.hiu = getelementptr inbounds i8, ptr %.31169, i64 -52
  %i.hiv = load i32, ptr %i.hiu, align 4, !tbaa !118
  %i.hiw = sext i32 %i.hiv to i64
  %i.hix = mul nsw i64 %i.hiw, %i.hit
  %i.hiy = add nsw i64 %i.hix, %.18.i
  br label %bb.yx

bb.yx:                                            ; preds = %bb.yw, %bb.yc
  %.19.i = phi i64 [ %i.hiy, %bb.yw ], [ 0, %bb.yc ]
  %i.hiz = load i32, ptr %i.gol, align 4, !tbaa !118
  %i.hja = sext i32 %i.hiz to i64
  %i.hjb = getelementptr inbounds i8, ptr %.31169, i64 -48
  %i.hjc = load i32, ptr %i.hjb, align 4, !tbaa !118
  %i.hjd = sext i32 %i.hjc to i64
  %i.hje = mul nsw i64 %i.hjd, %i.hja
  %i.hjf = add nsw i64 %i.hje, %.19.i
  br label %bb.yy

bb.yy:                                            ; preds = %bb.yx, %bb.yc
  %.20.i = phi i64 [ %i.hjf, %bb.yx ], [ 0, %bb.yc ]
  %i.hjg = load i32, ptr %i.gom, align 4, !tbaa !118
  %i.hjh = sext i32 %i.hjg to i64
  %i.hji = getelementptr inbounds i8, ptr %.31169, i64 -44
  %i.hjj = load i32, ptr %i.hji, align 4, !tbaa !118
  %i.hjk = sext i32 %i.hjj to i64
  %i.hjl = mul nsw i64 %i.hjk, %i.hjh
  %i.hjm = add nsw i64 %i.hjl, %.20.i
  br label %bb.yz

bb.yz:                                            ; preds = %bb.yy, %bb.yc
  %.21.i = phi i64 [ %i.hjm, %bb.yy ], [ 0, %bb.yc ]
  %i.hjn = load i32, ptr %i.gon, align 4, !tbaa !118
  %i.hjo = sext i32 %i.hjn to i64
  %i.hjp = getelementptr inbounds i8, ptr %.31169, i64 -40
  %i.hjq = load i32, ptr %i.hjp, align 4, !tbaa !118
  %i.hjr = sext i32 %i.hjq to i64
  %i.hjs = mul nsw i64 %i.hjr, %i.hjo
  %i.hjt = add nsw i64 %i.hjs, %.21.i
  br label %bb.za

bb.za:                                            ; preds = %bb.yz, %bb.yc
  %.22.i = phi i64 [ %i.hjt, %bb.yz ], [ 0, %bb.yc ]
  %i.hju = load i32, ptr %i.goo, align 4, !tbaa !118
  %i.hjv = sext i32 %i.hju to i64
  %i.hjw = getelementptr inbounds i8, ptr %.31169, i64 -36
  %i.hjx = load i32, ptr %i.hjw, align 4, !tbaa !118
  %i.hjy = sext i32 %i.hjx to i64
  %i.hjz = mul nsw i64 %i.hjy, %i.hjv
  %i.hka = add nsw i64 %i.hjz, %.22.i
  br label %bb.zb

bb.zb:                                            ; preds = %bb.za, %bb.yc
  %.23.i = phi i64 [ %i.hka, %bb.za ], [ 0, %bb.yc ]
  %i.hkb = load i32, ptr %i.gop, align 4, !tbaa !118
  %i.hkc = sext i32 %i.hkb to i64
  %i.hkd = getelementptr inbounds i8, ptr %.31169, i64 -32
  %i.hke = load i32, ptr %i.hkd, align 4, !tbaa !118
  %i.hkf = sext i32 %i.hke to i64
  %i.hkg = mul nsw i64 %i.hkf, %i.hkc
  %i.hkh = add nsw i64 %i.hkg, %.23.i
  br label %bb.zc

bb.zc:                                            ; preds = %bb.zb, %bb.yc
  %.24.i = phi i64 [ %i.hkh, %bb.zb ], [ 0, %bb.yc ]
  %i.hki = load i32, ptr %i.goq, align 4, !tbaa !118
  %i.hkj = sext i32 %i.hki to i64
  %i.hkk = getelementptr inbounds i8, ptr %.31169, i64 -28
  %i.hkl = load i32, ptr %i.hkk, align 4, !tbaa !118
  %i.hkm = sext i32 %i.hkl to i64
  %i.hkn = mul nsw i64 %i.hkm, %i.hkj
  %i.hko = add nsw i64 %i.hkn, %.24.i
  br label %bb.zd

bb.zd:                                            ; preds = %bb.zc, %bb.yc
  %.25.i = phi i64 [ %i.hko, %bb.zc ], [ 0, %bb.yc ]
  %i.hkp = load i32, ptr %i.gor, align 4, !tbaa !118
  %i.hkq = sext i32 %i.hkp to i64
  %i.hkr = getelementptr inbounds i8, ptr %.31169, i64 -24
  %i.hks = load i32, ptr %i.hkr, align 4, !tbaa !118
  %i.hkt = sext i32 %i.hks to i64
  %i.hku = mul nsw i64 %i.hkt, %i.hkq
  %i.hkv = add nsw i64 %i.hku, %.25.i
  br label %bb.ze

bb.ze:                                            ; preds = %bb.zd, %bb.yc
  %.26.i = phi i64 [ %i.hkv, %bb.zd ], [ 0, %bb.yc ]
  %i.hkw = load i32, ptr %i.gos, align 4, !tbaa !118
  %i.hkx = sext i32 %i.hkw to i64
  %i.hky = getelementptr inbounds i8, ptr %.31169, i64 -20
  %i.hkz = load i32, ptr %i.hky, align 4, !tbaa !118
  %i.hla = sext i32 %i.hkz to i64
  %i.hlb = mul nsw i64 %i.hla, %i.hkx
  %i.hlc = add nsw i64 %i.hlb, %.26.i
  br label %bb.zf

bb.zf:                                            ; preds = %bb.ze, %bb.yc
  %.27.i = phi i64 [ %i.hlc, %bb.ze ], [ 0, %bb.yc ]
  %i.hld = load i32, ptr %i.got, align 4, !tbaa !118
  %i.hle = sext i32 %i.hld to i64
  %i.hlf = getelementptr inbounds i8, ptr %.31169, i64 -16
  %i.hlg = load i32, ptr %i.hlf, align 4, !tbaa !118
  %i.hlh = sext i32 %i.hlg to i64
  %i.hli = mul nsw i64 %i.hlh, %i.hle
  %i.hlj = add nsw i64 %i.hli, %.27.i
  br label %bb.zg

bb.zg:                                            ; preds = %bb.zf, %bb.yc
  %.28.i = phi i64 [ %i.hlj, %bb.zf ], [ 0, %bb.yc ]
  %i.hlk = load i32, ptr %i.gou, align 4, !tbaa !118
  %i.hll = sext i32 %i.hlk to i64
  %i.hlm = getelementptr inbounds i8, ptr %.31169, i64 -12
  %i.hln = load i32, ptr %i.hlm, align 4, !tbaa !118
  %i.hlo = sext i32 %i.hln to i64
  %i.hlp = mul nsw i64 %i.hlo, %i.hll
  %i.hlq = add nsw i64 %i.hlp, %.28.i
  br label %bb.zh

bb.zh:                                            ; preds = %bb.zg, %bb.yc
  %.29.i = phi i64 [ %i.hlq, %bb.zg ], [ 0, %bb.yc ]
  %i.hlr = load i32, ptr %i.gov, align 4, !tbaa !118
  %i.hls = sext i32 %i.hlr to i64
  %i.hlt = getelementptr inbounds i8, ptr %.31169, i64 -8
  %i.hlu = load i32, ptr %i.hlt, align 4, !tbaa !118
  %i.hlv = sext i32 %i.hlu to i64
  %i.hlw = mul nsw i64 %i.hlv, %i.hls
  %i.hlx = add nsw i64 %i.hlw, %.29.i
  br label %bb.zi

bb.zi:                                            ; preds = %bb.zh, %bb.yc
  %.30.i = phi i64 [ %i.hlx, %bb.zh ], [ 0, %bb.yc ]
  %i.hly = load i32, ptr %7, align 4, !tbaa !118
  %i.hlz = sext i32 %i.hly to i64
  %i.hma = getelementptr inbounds i8, ptr %.31169, i64 -4
  %i.hmb = load i32, ptr %i.hma, align 4, !tbaa !118
  %i.hmc = sext i32 %i.hmb to i64
  %i.hmd = mul nsw i64 %i.hmc, %i.hlz
  %i.hme = add nsw i64 %i.hmd, %.30.i
  br label %ma_dr_flac__calculate_prediction_64.exit

ma_dr_flac__calculate_prediction_64.exit:         ; preds = %bb.yc, %bb.zi
  %.31.i = phi i64 [ 0, %bb.yc ], [ %i.hme, %bb.zi ]
  %i.hmf = ashr i64 %.31.i, %i.gow
  %i.hmg = trunc i64 %i.hmf to i32
  br label %bb.aaq

bb.zj:                                            ; preds = %ma_dr_flac__ilog2_u32.exit971
  switch i8 %trunc.i, label %ma_dr_flac__calculate_prediction_32.exit [
    i8 32, label %bb.zk
    i8 31, label %bb.zl
    i8 30, label %bb.zm
    i8 29, label %bb.zn
    i8 28, label %bb.zo
    i8 27, label %bb.zp
    i8 26, label %bb.zq
    i8 25, label %bb.zr
    i8 24, label %bb.zs
    i8 23, label %bb.zt
    i8 22, label %bb.zu
    i8 21, label %bb.zv
    i8 20, label %bb.zw
    i8 19, label %bb.zx
    i8 18, label %bb.zy
    i8 17, label %bb.zz
    i8 16, label %bb.aaa
    i8 15, label %bb.aab
    i8 14, label %bb.aac
    i8 13, label %bb.aad
    i8 12, label %bb.aae
    i8 11, label %bb.aaf
    i8 10, label %bb.aag
    i8 9, label %bb.aah
    i8 8, label %bb.aai
    i8 7, label %bb.aaj
    i8 6, label %bb.aak
    i8 5, label %bb.aal
    i8 4, label %bb.aam
    i8 3, label %bb.aan
    i8 2, label %bb.aao
    i8 1, label %bb.aap
  ]

bb.zk:                                            ; preds = %bb.zj
  %i.hmh = load i32, ptr %i.gnr, align 4, !tbaa !118
  %i.hmi = getelementptr inbounds i8, ptr %.31169, i64 -128
  %i.hmj = load i32, ptr %i.hmi, align 4, !tbaa !118
  %i.hmk = mul nsw i32 %i.hmj, %i.hmh
  br label %bb.zl

bb.zl:                                            ; preds = %bb.zk, %bb.zj
  %.0.i829 = phi i32 [ %i.hmk, %bb.zk ], [ 0, %bb.zj ]
  %i.hml = load i32, ptr %i.gns, align 4, !tbaa !118
  %i.hmm = getelementptr inbounds i8, ptr %.31169, i64 -124
  %i.hmn = load i32, ptr %i.hmm, align 4, !tbaa !118
  %i.hmo = mul nsw i32 %i.hmn, %i.hml
  %i.hmp = add nsw i32 %i.hmo, %.0.i829
  br label %bb.zm

bb.zm:                                            ; preds = %bb.zl, %bb.zj
  %.1.i828 = phi i32 [ %i.hmp, %bb.zl ], [ 0, %bb.zj ]
  %i.hmq = load i32, ptr %i.gnt, align 4, !tbaa !118
  %i.hmr = getelementptr inbounds i8, ptr %.31169, i64 -120
  %i.hms = load i32, ptr %i.hmr, align 4, !tbaa !118
  %i.hmt = mul nsw i32 %i.hms, %i.hmq
  %i.hmu = add nsw i32 %i.hmt, %.1.i828
  br label %bb.zn

bb.zn:                                            ; preds = %bb.zm, %bb.zj
  %.2.i827 = phi i32 [ %i.hmu, %bb.zm ], [ 0, %bb.zj ]
  %i.hmv = load i32, ptr %i.gnu, align 4, !tbaa !118
  %i.hmw = getelementptr inbounds i8, ptr %.31169, i64 -116
  %i.hmx = load i32, ptr %i.hmw, align 4, !tbaa !118
  %i.hmy = mul nsw i32 %i.hmx, %i.hmv
  %i.hmz = add nsw i32 %i.hmy, %.2.i827
  br label %bb.zo

bb.zo:                                            ; preds = %bb.zn, %bb.zj
  %.3.i826 = phi i32 [ %i.hmz, %bb.zn ], [ 0, %bb.zj ]
  %i.hna = load i32, ptr %i.gnv, align 4, !tbaa !118
  %i.hnb = getelementptr inbounds i8, ptr %.31169, i64 -112
  %i.hnc = load i32, ptr %i.hnb, align 4, !tbaa !118
  %i.hnd = mul nsw i32 %i.hnc, %i.hna
  %i.hne = add nsw i32 %i.hnd, %.3.i826
  br label %bb.zp

bb.zp:                                            ; preds = %bb.zo, %bb.zj
  %.4.i825 = phi i32 [ %i.hne, %bb.zo ], [ 0, %bb.zj ]
  %i.hnf = load i32, ptr %i.gnw, align 4, !tbaa !118
  %i.hng = getelementptr inbounds i8, ptr %.31169, i64 -108
  %i.hnh = load i32, ptr %i.hng, align 4, !tbaa !118
  %i.hni = mul nsw i32 %i.hnh, %i.hnf
  %i.hnj = add nsw i32 %i.hni, %.4.i825
  br label %bb.zq

bb.zq:                                            ; preds = %bb.zp, %bb.zj
  %.5.i824 = phi i32 [ %i.hnj, %bb.zp ], [ 0, %bb.zj ]
  %i.hnk = load i32, ptr %i.gnx, align 4, !tbaa !118
  %i.hnl = getelementptr inbounds i8, ptr %.31169, i64 -104
  %i.hnm = load i32, ptr %i.hnl, align 4, !tbaa !118
  %i.hnn = mul nsw i32 %i.hnm, %i.hnk
  %i.hno = add nsw i32 %i.hnn, %.5.i824
  br label %bb.zr

bb.zr:                                            ; preds = %bb.zq, %bb.zj
  %.6.i823 = phi i32 [ %i.hno, %bb.zq ], [ 0, %bb.zj ]
  %i.hnp = load i32, ptr %i.gny, align 4, !tbaa !118
  %i.hnq = getelementptr inbounds i8, ptr %.31169, i64 -100
  %i.hnr = load i32, ptr %i.hnq, align 4, !tbaa !118
  %i.hns = mul nsw i32 %i.hnr, %i.hnp
  %i.hnt = add nsw i32 %i.hns, %.6.i823
  br label %bb.zs

bb.zs:                                            ; preds = %bb.zr, %bb.zj
  %.7.i822 = phi i32 [ %i.hnt, %bb.zr ], [ 0, %bb.zj ]
  %i.hnu = load i32, ptr %i.gnz, align 4, !tbaa !118
  %i.hnv = getelementptr inbounds i8, ptr %.31169, i64 -96
  %i.hnw = load i32, ptr %i.hnv, align 4, !tbaa !118
  %i.hnx = mul nsw i32 %i.hnw, %i.hnu
  %i.hny = add nsw i32 %i.hnx, %.7.i822
  br label %bb.zt

bb.zt:                                            ; preds = %bb.zs, %bb.zj
  %.8.i821 = phi i32 [ %i.hny, %bb.zs ], [ 0, %bb.zj ]
  %i.hnz = load i32, ptr %i.goa, align 4, !tbaa !118
  %i.hoa = getelementptr inbounds i8, ptr %.31169, i64 -92
  %i.hob = load i32, ptr %i.hoa, align 4, !tbaa !118
  %i.hoc = mul nsw i32 %i.hob, %i.hnz
  %i.hod = add nsw i32 %i.hoc, %.8.i821
  br label %bb.zu

bb.zu:                                            ; preds = %bb.zt, %bb.zj
  %.9.i820 = phi i32 [ %i.hod, %bb.zt ], [ 0, %bb.zj ]
  %i.hoe = load i32, ptr %i.gob, align 4, !tbaa !118
  %i.hof = getelementptr inbounds i8, ptr %.31169, i64 -88
  %i.hog = load i32, ptr %i.hof, align 4, !tbaa !118
  %i.hoh = mul nsw i32 %i.hog, %i.hoe
  %i.hoi = add nsw i32 %i.hoh, %.9.i820
  br label %bb.zv

bb.zv:                                            ; preds = %bb.zu, %bb.zj
  %.10.i819 = phi i32 [ %i.hoi, %bb.zu ], [ 0, %bb.zj ]
  %i.hoj = load i32, ptr %i.goc, align 4, !tbaa !118
  %i.hok = getelementptr inbounds i8, ptr %.31169, i64 -84
  %i.hol = load i32, ptr %i.hok, align 4, !tbaa !118
  %i.hom = mul nsw i32 %i.hol, %i.hoj
  %i.hon = add nsw i32 %i.hom, %.10.i819
  br label %bb.zw

bb.zw:                                            ; preds = %bb.zv, %bb.zj
  %.11.i818 = phi i32 [ %i.hon, %bb.zv ], [ 0, %bb.zj ]
  %i.hoo = load i32, ptr %i.god, align 4, !tbaa !118
  %i.hop = getelementptr inbounds i8, ptr %.31169, i64 -80
  %i.hoq = load i32, ptr %i.hop, align 4, !tbaa !118
  %i.hor = mul nsw i32 %i.hoq, %i.hoo
  %i.hos = add nsw i32 %i.hor, %.11.i818
  br label %bb.zx

bb.zx:                                            ; preds = %bb.zw, %bb.zj
  %.12.i817 = phi i32 [ %i.hos, %bb.zw ], [ 0, %bb.zj ]
  %i.hot = load i32, ptr %i.goe, align 4, !tbaa !118
  %i.hou = getelementptr inbounds i8, ptr %.31169, i64 -76
  %i.hov = load i32, ptr %i.hou, align 4, !tbaa !118
  %i.how = mul nsw i32 %i.hov, %i.hot
  %i.hox = add nsw i32 %i.how, %.12.i817
  br label %bb.zy

bb.zy:                                            ; preds = %bb.zx, %bb.zj
  %.13.i816 = phi i32 [ %i.hox, %bb.zx ], [ 0, %bb.zj ]
  %i.hoy = load i32, ptr %i.gof, align 4, !tbaa !118
  %i.hoz = getelementptr inbounds i8, ptr %.31169, i64 -72
  %i.hpa = load i32, ptr %i.hoz, align 4, !tbaa !118
  %i.hpb = mul nsw i32 %i.hpa, %i.hoy
  %i.hpc = add nsw i32 %i.hpb, %.13.i816
  br label %bb.zz

bb.zz:                                            ; preds = %bb.zy, %bb.zj
  %.14.i815 = phi i32 [ %i.hpc, %bb.zy ], [ 0, %bb.zj ]
  %i.hpd = load i32, ptr %i.gog, align 4, !tbaa !118
  %i.hpe = getelementptr inbounds i8, ptr %.31169, i64 -68
  %i.hpf = load i32, ptr %i.hpe, align 4, !tbaa !118
  %i.hpg = mul nsw i32 %i.hpf, %i.hpd
  %i.hph = add nsw i32 %i.hpg, %.14.i815
  br label %bb.aaa

bb.aaa:                                           ; preds = %bb.zz, %bb.zj
  %.15.i814 = phi i32 [ %i.hph, %bb.zz ], [ 0, %bb.zj ]
  %i.hpi = load i32, ptr %i.goh, align 4, !tbaa !118
  %i.hpj = getelementptr inbounds i8, ptr %.31169, i64 -64
  %i.hpk = load i32, ptr %i.hpj, align 4, !tbaa !118
  %i.hpl = mul nsw i32 %i.hpk, %i.hpi
  %i.hpm = add nsw i32 %i.hpl, %.15.i814
  br label %bb.aab

bb.aab:                                           ; preds = %bb.aaa, %bb.zj
  %.16.i813 = phi i32 [ %i.hpm, %bb.aaa ], [ 0, %bb.zj ]
  %i.hpn = load i32, ptr %i.goi, align 4, !tbaa !118
  %i.hpo = getelementptr inbounds i8, ptr %.31169, i64 -60
  %i.hpp = load i32, ptr %i.hpo, align 4, !tbaa !118
  %i.hpq = mul nsw i32 %i.hpp, %i.hpn
  %i.hpr = add nsw i32 %i.hpq, %.16.i813
  br label %bb.aac

bb.aac:                                           ; preds = %bb.aab, %bb.zj
  %.17.i812 = phi i32 [ %i.hpr, %bb.aab ], [ 0, %bb.zj ]
  %i.hps = load i32, ptr %i.goj, align 4, !tbaa !118
  %i.hpt = getelementptr inbounds i8, ptr %.31169, i64 -56
  %i.hpu = load i32, ptr %i.hpt, align 4, !tbaa !118
  %i.hpv = mul nsw i32 %i.hpu, %i.hps
  %i.hpw = add nsw i32 %i.hpv, %.17.i812
  br label %bb.aad

bb.aad:                                           ; preds = %bb.aac, %bb.zj
  %.18.i811 = phi i32 [ %i.hpw, %bb.aac ], [ 0, %bb.zj ]
  %i.hpx = load i32, ptr %i.gok, align 4, !tbaa !118
  %i.hpy = getelementptr inbounds i8, ptr %.31169, i64 -52
  %i.hpz = load i32, ptr %i.hpy, align 4, !tbaa !118
  %i.hqa = mul nsw i32 %i.hpz, %i.hpx
  %i.hqb = add nsw i32 %i.hqa, %.18.i811
  br label %bb.aae

bb.aae:                                           ; preds = %bb.aad, %bb.zj
  %.19.i810 = phi i32 [ %i.hqb, %bb.aad ], [ 0, %bb.zj ]
  %i.hqc = load i32, ptr %i.gol, align 4, !tbaa !118
  %i.hqd = getelementptr inbounds i8, ptr %.31169, i64 -48
  %i.hqe = load i32, ptr %i.hqd, align 4, !tbaa !118
  %i.hqf = mul nsw i32 %i.hqe, %i.hqc
  %i.hqg = add nsw i32 %i.hqf, %.19.i810
  br label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae, %bb.zj
  %.20.i809 = phi i32 [ %i.hqg, %bb.aae ], [ 0, %bb.zj ]
  %i.hqh = load i32, ptr %i.gom, align 4, !tbaa !118
  %i.hqi = getelementptr inbounds i8, ptr %.31169, i64 -44
  %i.hqj = load i32, ptr %i.hqi, align 4, !tbaa !118
  %i.hqk = mul nsw i32 %i.hqj, %i.hqh
  %i.hql = add nsw i32 %i.hqk, %.20.i809
  br label %bb.aag

bb.aag:                                           ; preds = %bb.aaf, %bb.zj
  %.21.i808 = phi i32 [ %i.hql, %bb.aaf ], [ 0, %bb.zj ]
  %i.hqm = load i32, ptr %i.gon, align 4, !tbaa !118
  %i.hqn = getelementptr inbounds i8, ptr %.31169, i64 -40
  %i.hqo = load i32, ptr %i.hqn, align 4, !tbaa !118
  %i.hqp = mul nsw i32 %i.hqo, %i.hqm
  %i.hqq = add nsw i32 %i.hqp, %.21.i808
  br label %bb.aah

bb.aah:                                           ; preds = %bb.aag, %bb.zj
  %.22.i807 = phi i32 [ %i.hqq, %bb.aag ], [ 0, %bb.zj ]
  %i.hqr = load i32, ptr %i.goo, align 4, !tbaa !118
  %i.hqs = getelementptr inbounds i8, ptr %.31169, i64 -36
  %i.hqt = load i32, ptr %i.hqs, align 4, !tbaa !118
  %i.hqu = mul nsw i32 %i.hqt, %i.hqr
  %i.hqv = add nsw i32 %i.hqu, %.22.i807
  br label %bb.aai

bb.aai:                                           ; preds = %bb.aah, %bb.zj
  %.23.i806 = phi i32 [ %i.hqv, %bb.aah ], [ 0, %bb.zj ]
  %i.hqw = load i32, ptr %i.gop, align 4, !tbaa !118
  %i.hqx = getelementptr inbounds i8, ptr %.31169, i64 -32
  %i.hqy = load i32, ptr %i.hqx, align 4, !tbaa !118
  %i.hqz = mul nsw i32 %i.hqy, %i.hqw
  %i.hra = add nsw i32 %i.hqz, %.23.i806
  br label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai, %bb.zj
  %.24.i805 = phi i32 [ %i.hra, %bb.aai ], [ 0, %bb.zj ]
  %i.hrb = load i32, ptr %i.goq, align 4, !tbaa !118
  %i.hrc = getelementptr inbounds i8, ptr %.31169, i64 -28
  %i.hrd = load i32, ptr %i.hrc, align 4, !tbaa !118
  %i.hre = mul nsw i32 %i.hrd, %i.hrb
  %i.hrf = add nsw i32 %i.hre, %.24.i805
  br label %bb.aak

bb.aak:                                           ; preds = %bb.aaj, %bb.zj
  %.25.i804 = phi i32 [ %i.hrf, %bb.aaj ], [ 0, %bb.zj ]
  %i.hrg = load i32, ptr %i.gor, align 4, !tbaa !118
  %i.hrh = getelementptr inbounds i8, ptr %.31169, i64 -24
  %i.hri = load i32, ptr %i.hrh, align 4, !tbaa !118
  %i.hrj = mul nsw i32 %i.hri, %i.hrg
  %i.hrk = add nsw i32 %i.hrj, %.25.i804
  br label %bb.aal

bb.aal:                                           ; preds = %bb.aak, %bb.zj
  %.26.i803 = phi i32 [ %i.hrk, %bb.aak ], [ 0, %bb.zj ]
  %i.hrl = load i32, ptr %i.gos, align 4, !tbaa !118
  %i.hrm = getelementptr inbounds i8, ptr %.31169, i64 -20
  %i.hrn = load i32, ptr %i.hrm, align 4, !tbaa !118
  %i.hro = mul nsw i32 %i.hrn, %i.hrl
  %i.hrp = add nsw i32 %i.hro, %.26.i803
  br label %bb.aam

bb.aam:                                           ; preds = %bb.aal, %bb.zj
  %.27.i802 = phi i32 [ %i.hrp, %bb.aal ], [ 0, %bb.zj ]
  %i.hrq = load i32, ptr %i.got, align 4, !tbaa !118
  %i.hrr = getelementptr inbounds i8, ptr %.31169, i64 -16
  %i.hrs = load i32, ptr %i.hrr, align 4, !tbaa !118
  %i.hrt = mul nsw i32 %i.hrs, %i.hrq
  %i.hru = add nsw i32 %i.hrt, %.27.i802
  br label %bb.aan

bb.aan:                                           ; preds = %bb.aam, %bb.zj
  %.28.i801 = phi i32 [ %i.hru, %bb.aam ], [ 0, %bb.zj ]
  %i.hrv = load i32, ptr %i.gou, align 4, !tbaa !118
  %i.hrw = getelementptr inbounds i8, ptr %.31169, i64 -12
  %i.hrx = load i32, ptr %i.hrw, align 4, !tbaa !118
  %i.hry = mul nsw i32 %i.hrx, %i.hrv
  %i.hrz = add nsw i32 %i.hry, %.28.i801
  br label %bb.aao

bb.aao:                                           ; preds = %bb.aan, %bb.zj
  %.29.i800 = phi i32 [ %i.hrz, %bb.aan ], [ 0, %bb.zj ]
  %i.hsa = load i32, ptr %i.gov, align 4, !tbaa !118
  %i.hsb = getelementptr inbounds i8, ptr %.31169, i64 -8
  %i.hsc = load i32, ptr %i.hsb, align 4, !tbaa !118
  %i.hsd = mul nsw i32 %i.hsc, %i.hsa
  %i.hse = add nsw i32 %i.hsd, %.29.i800
  br label %bb.aap

bb.aap:                                           ; preds = %bb.aao, %bb.zj
  %.30.i798 = phi i32 [ %i.hse, %bb.aao ], [ 0, %bb.zj ]
  %i.hsf = load i32, ptr %7, align 4, !tbaa !118
  %i.hsg = getelementptr inbounds i8, ptr %.31169, i64 -4
  %i.hsh = load i32, ptr %i.hsg, align 4, !tbaa !118
  %i.hsi = mul nsw i32 %i.hsh, %i.hsf
  %i.hsj = add nsw i32 %i.hsi, %.30.i798
  br label %ma_dr_flac__calculate_prediction_32.exit

ma_dr_flac__calculate_prediction_32.exit:         ; preds = %bb.zj, %bb.aap
  %.31.i799 = phi i32 [ 0, %bb.zj ], [ %i.hsj, %bb.aap ]
  %i.hsk = ashr i32 %.31.i799, %5
  br label %bb.aaq

bb.aaq:                                           ; preds = %ma_dr_flac__calculate_prediction_32.exit, %ma_dr_flac__calculate_prediction_64.exit
  %.pn = phi i32 [ %i.hsk, %ma_dr_flac__calculate_prediction_32.exit ], [ %i.hmg, %ma_dr_flac__calculate_prediction_64.exit ]
  %storemerge = add i32 %.pn, %13
  store i32 %storemerge, ptr %.31169, align 4, !tbaa !118
  %i.hsl = add nuw i32 %.01171, 1                 ; 2 uses
  %i.hsm = getelementptr inbounds nuw i8, ptr %.31169, i64 4
  %i.hsn = icmp ult i32 %i.hsl, %2
  br i1 %i.hsn, label %bb.wo, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, !llvm.loop !3275

ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit: ; preds = %bb.fv, %bb.fu, %bb.ei, %bb.eh, %bb.cv, %bb.cu, %bb.bi, %bb.bh, %bb.bv, %bb.di, %bb.ev, %bb.gi, %bb.qu, %bb.qt, %bb.ph, %bb.pg, %bb.nu, %bb.nt, %bb.mh, %bb.mg, %bb.mu, %bb.oh, %bb.pu, %bb.rh, %bb.aaq, %bb.xf, %bb.xg, %bb.xt, %bb.ap, %bb.u, %bb.t, %bb.ah, %.loopexit1129, %bb.b
  %.0116 = phi i32 [ 0, %bb.xg ], [ 0, %bb.oh ], [ 0, %bb.rh ], [ 0, %bb.xt ], [ 0, %bb.bv ], [ 0, %bb.di ], [ 0, %bb.qu ], [ 0, %bb.pu ], [ 0, %bb.ev ], [ 0, %bb.mu ], [ 0, %bb.gi ], [ 1, %bb.b ], [ 1, %.loopexit1129 ], [ 0, %bb.u ], [ 0, %bb.ah ], [ 1, %bb.ap ], [ 0, %bb.t ], [ 0, %bb.xf ], [ 1, %bb.aaq ], [ 0, %bb.mg ], [ 0, %bb.mh ], [ 0, %bb.nt ], [ 0, %bb.nu ], [ 0, %bb.pg ], [ 0, %bb.ph ], [ 0, %bb.qt ], [ 0, %bb.bh ], [ 0, %bb.bi ], [ 0, %bb.cu ], [ 0, %bb.cv ], [ 0, %bb.eh ], [ 0, %bb.ei ], [ 0, %bb.fu ], [ 0, %bb.fv ]
  ret i32 %.0116
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -100, 1) i32 @ma_dr_flac__read_utf8_coded_number(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 9 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !739  ; 2 uses
  %i.d = icmp eq i32 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !739
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.a
  %i.f = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = sub nsw i64 64, %i.g                     ; 3 uses
  %.not34.i.i = icmp ult i64 %i.h, 8
  br i1 %.not34.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !740  ; 2 uses
  %i.k = lshr i64 %i.j, 56
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = add i32 %i.f, 8                          ; 2 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !739
  %i.n = shl i64 %i.j, 8
  store i64 %i.n, ptr %i.i, align 8, !tbaa !740
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.o = trunc nuw nsw i64 %i.h to i32
  %i.p = sub nuw nsw i32 8, %i.o                  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !740
  %i.s = lshr i64 -1, %i.h
  %i.t = xor i64 %i.s, -1
  %i.u = and i64 %i.r, %i.t
  %i.v = lshr i64 %i.u, %i.g
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not35.i.i = icmp eq i32 %i.x, 0
  br i1 %.not35.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = zext nneg i32 %i.p to i64                ; 4 uses
  %i.z = load i32, ptr %i.b, align 4, !tbaa !739  ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = sub nsw i64 64, %i.aa
  %i.ac = icmp ult i64 %i.ab, %i.y
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = shl i32 %i.w, %i.p
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !740 ; 2 uses
  %i.af = lshr i64 -1, %i.y
  %i.ag = xor i64 %i.af, -1
  %i.ah = and i64 %i.ae, %i.ag
  %i.ai = sub nuw nsw i64 64, %i.y
  %i.aj = lshr i64 %i.ah, %i.ai
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = or i32 %i.ad, %i.ak
  %i.am = add i32 %i.z, %i.p                      ; 2 uses
  store i32 %i.am, ptr %i.b, align 4, !tbaa !739
  %i.an = shl i64 %i.ae, %i.y
  store i64 %i.an, ptr %i.q, align 8, !tbaa !740
  br label %bb.i

bb.h:                                             ; preds = %bb.b, %bb.e, %bb.f
  store i64 0, ptr %1, align 8, !tbaa !164
  br label %bb.ac

bb.i:                                             ; preds = %bb.g, %bb.d
  %i.ao = phi i32 [ %i.m, %bb.d ], [ %i.am, %bb.g ]
  %.03.i = phi i32 [ %i.l, %bb.d ], [ %i.al, %bb.g ] ; 8 uses
  %i.ap = trunc i32 %.03.i to i8                  ; 3 uses
  %i.aq = xor i8 %i.a, %i.ap
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @ma_dr_flac__crc8_table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !119 ; 2 uses
  %i.au = icmp sgt i8 %i.ap, -1
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.mask = and i32 %.03.i, 127
  %i.av = zext nneg i32 %.mask to i64
  store i64 %i.av, ptr %1, align 8, !tbaa !164
  store i8 %i.at, ptr %2, align 1, !tbaa !119
  br label %bb.ac

bb.k:                                             ; preds = %bb.i
  %i.aw = and i32 %.03.i, 224
  %i.ax = icmp eq i32 %i.aw, 192
  br i1 %i.ax, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = and i32 %.03.i, 240
  %i.az = icmp eq i32 %i.ay, 224
  br i1 %i.az, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = and i32 %.03.i, 248
  %i.bb = icmp eq i32 %i.ba, 240
  br i1 %i.bb, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = and i32 %.03.i, 252
  %i.bd = icmp eq i32 %i.bc, 248
  br i1 %i.bd, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = and i32 %.03.i, 254
  %i.bf = icmp eq i32 %i.be, 252
  br i1 %i.bf, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = icmp eq i8 %i.ap, -2
  br i1 %i.bg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 0, ptr %1, align 8, !tbaa !164
  br label %bb.ac

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.023 = phi i32 [ 6, %bb.o ], [ 2, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 5, %bb.n ], [ 7, %bb.p ] ; 2 uses
  %i.bh = lshr i32 127, %.023
  %i.bi = and i32 %.03.i, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.aa
  %i.bl = phi i32 [ %i.ao, %bb.r ], [ %i.cv, %bb.aa ] ; 2 uses
  %.045 = phi i32 [ 1, %bb.r ], [ %i.df, %bb.aa ]
  %.02444 = phi i64 [ %i.bj, %bb.r ], [ %i.de, %bb.aa ]
  %.02543 = phi i8 [ %i.at, %bb.r ], [ %i.da, %bb.aa ]
  %i.bm = icmp eq i32 %i.bl, 64
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i33 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i33, label %bb.z, label %._crit_edge.i34

._crit_edge.i34:                                  ; preds = %bb.t
  %.pre.i35 = load i32, ptr %i.b, align 4, !tbaa !739
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i34, %bb.s
  %i.bo = phi i32 [ %.pre.i35, %._crit_edge.i34 ], [ %i.bl, %bb.s ] ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = sub nsw i64 64, %i.bp                   ; 3 uses
  %.not34.i.i28 = icmp ult i64 %i.bq, 8
  br i1 %.not34.i.i28, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = load i64, ptr %i.bk, align 8, !tbaa !740 ; 2 uses
  %i.bs = lshr i64 %i.br, 56
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = add i32 %i.bo, 8                        ; 2 uses
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !739
  %i.bv = shl i64 %i.br, 8
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.bw = trunc nuw nsw i64 %i.bq to i32
  %i.bx = sub nuw nsw i32 8, %i.bw                ; 3 uses
  %i.by = load i64, ptr %i.bk, align 8, !tbaa !740
  %i.bz = lshr i64 -1, %i.bq
  %i.ca = xor i64 %i.bz, -1
  %i.cb = and i64 %i.by, %i.ca
  %i.cc = lshr i64 %i.cb, %i.bp
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not35.i.i32 = icmp eq i32 %i.ce, 0
  br i1 %.not35.i.i32, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = zext nneg i32 %i.bx to i64              ; 4 uses
  %i.cg = load i32, ptr %i.b, align 4, !tbaa !739 ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = sub nsw i64 64, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.cf
  br i1 %i.cj, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = shl i32 %i.cd, %i.bx
  %i.cl = load i64, ptr %i.bk, align 8, !tbaa !740 ; 2 uses
  %i.cm = lshr i64 -1, %i.cf
  %i.cn = xor i64 %i.cm, -1
  %i.co = and i64 %i.cl, %i.cn
  %i.cp = sub nuw nsw i64 64, %i.cf
  %i.cq = lshr i64 %i.co, %i.cp
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = or i32 %i.ck, %i.cr
  %i.ct = add i32 %i.cg, %i.bx                    ; 2 uses
  store i32 %i.ct, ptr %i.b, align 4, !tbaa !739
  %i.cu = shl i64 %i.cl, %i.cf
  br label %bb.aa

bb.z:                                             ; preds = %bb.t, %bb.w, %bb.x
  store i64 0, ptr %1, align 8, !tbaa !164
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y, %bb.v
  %storemerge = phi i64 [ %i.bv, %bb.v ], [ %i.cu, %bb.y ]
  %i.cv = phi i32 [ %i.bu, %bb.v ], [ %i.ct, %bb.y ]
  %.03.i30 = phi i32 [ %i.bt, %bb.v ], [ %i.cs, %bb.y ] ; 2 uses
  store i64 %storemerge, ptr %i.bk, align 8, !tbaa !740
  %i.cw = trunc i32 %.03.i30 to i8
  %i.cx = xor i8 %.02543, %i.cw
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @ma_dr_flac__crc8_table, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !119 ; 2 uses
  %i.db = shl i64 %.02444, 6
  %i.dc = and i32 %.03.i30, 63
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = or disjoint i64 %i.db, %i.dd            ; 2 uses
  %i.df = add nuw nsw i32 %.045, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %.023
  br i1 %exitcond.not, label %bb.ab, label %bb.s, !llvm.loop !3276

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.de, ptr %1, align 8, !tbaa !164
  store i8 %i.da, ptr %2, align 1, !tbaa !119
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.q, %bb.j, %bb.h
  %.026 = phi i32 [ 0, %bb.j ], [ -17, %bb.z ], [ 0, %bb.ab ], [ -100, %bb.q ], [ -17, %bb.h ]
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_flac__seek_bits(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 19 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !739  ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = sub nsw i64 64, %i.c                     ; 2 uses
  %.not = icmp ugt i64 %1, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw i64 %1 to i32
  %i.f = add i32 %i.b, %i.e
  store i32 %i.f, ptr %i.a, align 4, !tbaa !739
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !740
  %i.i = shl i64 %i.h, %1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !740
  br label %ma_dr_flac__read_uint64.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.j = sub nuw nsw i64 %1, %i.d                 ; 3 uses
  store i32 64, ptr %i.a, align 4, !tbaa !739
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 14 uses
  store i64 0, ptr %i.k, align 8, !tbaa !740
  %i.l = icmp samesign ugt i64 %i.j, 63
  br i1 %i.l, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %ma_dr_flac__read_uint64.exit, %bb.c
  %i.m = phi i32 [ 64, %bb.c ], [ %i.bc, %ma_dr_flac__read_uint64.exit ] ; 2 uses
  %.023.lcssa = phi i64 [ %i.j, %bb.c ], [ %i.bd, %ma_dr_flac__read_uint64.exit ] ; 3 uses
  %i.n = icmp samesign ugt i64 %.023.lcssa, 7
  br i1 %i.n, label %.lr.ph68, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %ma_dr_flac__read_uint64.exit
  %i.o = phi i32 [ %i.bc, %ma_dr_flac__read_uint64.exit ], [ 64, %bb.c ] ; 2 uses
  %.02366 = phi i64 [ %i.bd, %ma_dr_flac__read_uint64.exit ], [ %i.j, %bb.c ]
  %i.p = icmp eq i32 %i.o, 64
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.q = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i8.i = icmp eq i32 %i.q, 0
  br i1 %.not.i8.i, label %ma_dr_flac__read_uint64.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !739
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph
  %i.r = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = sub nsw i64 64, %i.s                     ; 2 uses
  %.not34.i5.i = icmp ult i64 %i.t, 32
  br i1 %.not34.i5.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.k, align 8, !tbaa !740
  %i.v = add i32 %i.r, 32                         ; 2 uses
  store i32 %i.v, ptr %i.a, align 4, !tbaa !739
  %i.w = shl i64 %i.u, 32
  br label %ma_dr_flac__read_uint32.exit9.i

bb.g:                                             ; preds = %bb.e
  %i.x = trunc nuw nsw i64 %i.t to i32
  %i.y = sub nuw nsw i32 32, %i.x                 ; 2 uses
  %i.z = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not35.i7.i = icmp eq i32 %i.z, 0
  br i1 %.not35.i7.i, label %ma_dr_flac__read_uint64.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !739 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = sub nsw i64 64, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.aa
  br i1 %i.ae, label %ma_dr_flac__read_uint64.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.k, align 8, !tbaa !740
  %i.ag = add i32 %i.ab, %i.y                     ; 2 uses
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !739
  %i.ah = shl i64 %i.af, %i.aa
  br label %ma_dr_flac__read_uint32.exit9.i

ma_dr_flac__read_uint32.exit9.i:                  ; preds = %bb.i, %bb.f
  %storemerge61 = phi i64 [ %i.w, %bb.f ], [ %i.ah, %bb.i ]
  %i.ai = phi i32 [ %i.v, %bb.f ], [ %i.ag, %bb.i ] ; 2 uses
  store i64 %storemerge61, ptr %i.k, align 8, !tbaa !740
  %i.aj = icmp eq i32 %i.ai, 64
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %ma_dr_flac__read_uint32.exit9.i
  %i.ak = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %ma_dr_flac__read_uint64.exit.thread, label %._crit_edge19.i

._crit_edge19.i:                                  ; preds = %bb.j
  %.pre20.i = load i32, ptr %i.a, align 4, !tbaa !739
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge19.i, %ma_dr_flac__read_uint32.exit9.i
  %i.al = phi i32 [ %.pre20.i, %._crit_edge19.i ], [ %i.ai, %ma_dr_flac__read_uint32.exit9.i ] ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = sub nsw i64 64, %i.am                   ; 2 uses
  %.not34.i.i = icmp ult i64 %i.an, 32
  br i1 %.not34.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !740
  %i.ap = add i32 %i.al, 32                       ; 2 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !739
  %i.aq = shl i64 %i.ao, 32
  br label %ma_dr_flac__read_uint64.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = sub nuw nsw i32 32, %i.ar               ; 2 uses
  %i.at = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not35.i.i = icmp eq i32 %i.at, 0
  br i1 %.not35.i.i, label %ma_dr_flac__read_uint64.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = zext nneg i32 %i.as to i64              ; 2 uses
  %i.av = load i32, ptr %i.a, align 4, !tbaa !739 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = sub nsw i64 64, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.au
  br i1 %i.ay, label %ma_dr_flac__read_uint64.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load i64, ptr %i.k, align 8, !tbaa !740
  %i.ba = add i32 %i.av, %i.as                    ; 2 uses
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !739
  %i.bb = shl i64 %i.az, %i.au
  br label %ma_dr_flac__read_uint64.exit

ma_dr_flac__read_uint64.exit:                     ; preds = %bb.l, %bb.o
  %i.bc = phi i32 [ %i.ap, %bb.l ], [ %i.ba, %bb.o ] ; 2 uses
  %storemerge62 = phi i64 [ %i.aq, %bb.l ], [ %i.bb, %bb.o ]
  store i64 %storemerge62, ptr %i.k, align 8, !tbaa !740
  %i.bd = add nsw i64 %.02366, -64                ; 3 uses
  %i.be = icmp ugt i64 %i.bd, 63
  br i1 %i.be, label %.lr.ph, label %.preheader

.lr.ph68:                                         ; preds = %.preheader, %bb.v
  %i.bf = phi i32 [ %i.bz, %bb.v ], [ %i.m, %.preheader ] ; 2 uses
  %.22567 = phi i64 [ %i.ca, %bb.v ], [ %.023.lcssa, %.preheader ]
  %i.bg = icmp eq i32 %i.bf, 64
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph68
  %i.bh = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i41 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i41, label %ma_dr_flac__read_uint64.exit.thread, label %._crit_edge.i42

._crit_edge.i42:                                  ; preds = %bb.p
  %.pre.i43 = load i32, ptr %i.a, align 4, !tbaa !739
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i42, %.lr.ph68
  %i.bi = phi i32 [ %.pre.i43, %._crit_edge.i42 ], [ %i.bf, %.lr.ph68 ] ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = sub nsw i64 64, %i.bj                   ; 2 uses
  %.not34.i.i37 = icmp ult i64 %i.bk, 8
  br i1 %.not34.i.i37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = load i64, ptr %i.k, align 8, !tbaa !740
  %i.bm = add i32 %i.bi, 8                        ; 2 uses
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !739
  %i.bn = shl i64 %i.bl, 8
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bo = trunc nuw nsw i64 %i.bk to i32
  %i.bp = sub nuw nsw i32 8, %i.bo                ; 2 uses
  %i.bq = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not35.i.i40 = icmp eq i32 %i.bq, 0
  br i1 %.not35.i.i40, label %ma_dr_flac__read_uint64.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !739 ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = sub nsw i64 64, %i.bt
  %i.bv = icmp ult i64 %i.bu, %i.br
  br i1 %i.bv, label %ma_dr_flac__read_uint64.exit.thread, label %bb.u

end_hunk_1
begin_hunk_2_@ma_dr_flac__seek_flac_frame:.lr.ph
  %wide.trip.count = zext i8 %i.l to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %ma_dr_flac__seek_subframe.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %ma_dr_flac__seek_subframe.exit ] ; 5 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv ; 6 uses
  %i.n = tail call fastcc i32 @ma_dr_flac__read_subframe_header(ptr noundef nonnull %i.f, ptr noundef %i.m)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %ma_dr_flac__seek_subframe.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i8, ptr %i.h, align 1, !tbaa !1192
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = load i8, ptr %i.a, align 2, !tbaa !1193  ; 3 uses
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i8 %i.q, 10
  %i.t = icmp eq i64 %indvars.iv, 1
  %or.cond.i = and i1 %i.t, %i.s
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %.old3.i = icmp eq i64 %indvars.iv, 1
  br i1 %.old3.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = add nuw nsw i32 %i.p, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.v = icmp eq i8 %i.q, 9
  %i.w = icmp eq i64 %indvars.iv, 0
  %or.cond6.i = and i1 %i.w, %i.v
  %i.x = zext i1 %or.cond6.i to i32
  %spec.select.i = add nuw nsw i32 %i.x, %i.p
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.052.i = phi i32 [ %i.u, %bb.e ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !734
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %.not59.i = icmp samesign ugt i32 %.052.i, %i.aa
  br i1 %.not59.i, label %bb.h, label %ma_dr_flac__seek_subframe.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = sub nuw nsw i32 %.052.i, %i.aa          ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !733
  %i.ad = load i8, ptr %i.m, align 8, !tbaa !1196
  switch i8 %i.ad, label %ma_dr_flac__seek_subframe.exit.thread [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 8, label %bb.k
    i8 32, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = tail call fastcc i32 @ma_dr_flac__seek_bits(ptr noundef nonnull %i.f, i64 noundef %i.ae)
  %.not67.i = icmp eq i32 %i.af, 0
  br i1 %.not67.i, label %ma_dr_flac__seek_subframe.exit.thread, label %ma_dr_flac__seek_subframe.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load i16, ptr %i.k, align 8, !tbaa !1194
  %i.ah = zext i16 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ab, %i.ah
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = tail call fastcc i32 @ma_dr_flac__seek_bits(ptr noundef nonnull %i.f, i64 noundef %i.aj)
  %.not66.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not66.not.i, label %ma_dr_flac__seek_subframe.exit.thread, label %ma_dr_flac__seek_subframe.exit

bb.k:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  %i.am = load i8, ptr %i.al, align 2, !tbaa !1195
  %i.an = zext i8 %i.am to i32
  %i.ao = mul nuw nsw i32 %i.ab, %i.an
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = tail call fastcc i32 @ma_dr_flac__seek_bits(ptr noundef nonnull %i.f, i64 noundef %i.ap)
  %.not64.i = icmp eq i32 %i.aq, 0
  br i1 %.not64.i, label %ma_dr_flac__seek_subframe.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load i16, ptr %i.k, align 8, !tbaa !1194
  %i.as = zext i16 %i.ar to i32
  %i.at = load i8, ptr %i.al, align 2, !tbaa !1195
  %i.au = zext i8 %i.at to i32
  %i.av = tail call fastcc i32 @ma_dr_flac__read_and_seek_residual(ptr noundef nonnull %i.f, i32 noundef %i.as, i32 noundef %i.au)
  %.not65.not.i = icmp eq i32 %i.av, 0
  br i1 %.not65.not.i, label %ma_dr_flac__seek_subframe.exit.thread, label %ma_dr_flac__seek_subframe.exit

bb.m:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !1195
  %i.ay = zext i8 %i.ax to i32
  %i.az = mul nuw nsw i32 %i.ab, %i.ay
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = tail call fastcc i32 @ma_dr_flac__seek_bits(ptr noundef nonnull %i.f, i64 noundef %i.ba)
  %.not60.i = icmp eq i32 %i.bb, 0
  br i1 %.not60.i, label %ma_dr_flac__seek_subframe.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load i32, ptr %i.i, align 4, !tbaa !739 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 64
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %i.f)
  %.not.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i, label %ma_dr_flac__seek_subframe.exit.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.o
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !739
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i, %bb.n
  %i.bf = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.bc, %bb.n ] ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = sub nsw i64 64, %i.bg                   ; 3 uses
  %.not34.i.i.i = icmp ult i64 %i.bh, 4
  br i1 %.not34.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = load i64, ptr %i.j, align 8, !tbaa !740 ; 2 uses
  %i.bj = lshr i64 %i.bi, 60
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = add i32 %i.bf, 4
  store i32 %i.bl, ptr %i.i, align 4, !tbaa !739
  %i.bm = shl i64 %i.bi, 4
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bn = trunc nuw nsw i64 %i.bh to i32
  %i.bo = sub nuw nsw i32 4, %i.bn                ; 3 uses
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !740
  %i.bq = lshr i64 -1, %i.bh
  %i.br = xor i64 %i.bq, -1
  %i.bs = and i64 %i.bp, %i.br
  %i.bt = lshr i64 %i.bs, %i.bg
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %i.f)
  %.not35.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not35.i.i.i, label %ma_dr_flac__seek_subframe.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = zext nneg i32 %i.bo to i64              ; 4 uses
  %i.bx = load i32, ptr %i.i, align 4, !tbaa !739 ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = sub nsw i64 64, %i.by
  %i.ca = icmp ult i64 %i.bz, %i.bw
  br i1 %i.ca, label %ma_dr_flac__seek_subframe.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = shl i32 %i.bu, %i.bo
  %i.cc = load i64, ptr %i.j, align 8, !tbaa !740 ; 2 uses
  %i.cd = lshr i64 -1, %i.bw
  %i.ce = xor i64 %i.cd, -1
  %i.cf = and i64 %i.cc, %i.ce
  %i.cg = sub nuw nsw i64 64, %i.bw
  %i.ch = lshr i64 %i.cf, %i.cg
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = or i32 %i.cb, %i.ci
  %i.ck = add i32 %i.bx, %i.bo
  store i32 %i.ck, ptr %i.i, align 4, !tbaa !739
  %i.cl = shl i64 %i.cc, %i.bw
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %storemerge = phi i64 [ %i.bm, %bb.q ], [ %i.cl, %bb.t ]
  %.03.i.i = phi i32 [ %i.bk, %bb.q ], [ %i.cj, %bb.t ]
  store i64 %storemerge, ptr %i.j, align 8, !tbaa !740
  %i.cm = trunc i32 %.03.i.i to i8                ; 2 uses
  %i.cn = icmp eq i8 %i.cm, 15
  br i1 %i.cn, label %ma_dr_flac__seek_subframe.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = add i8 %i.cm, 1
  %i.cp = load i8, ptr %i.aw, align 2, !tbaa !1195
  %i.cq = zext i8 %i.cp to i64
  %i.cr = zext i8 %i.co to i64
  %i.cs = mul nuw nsw i64 %i.cq, %i.cr
  %i.ct = add nuw nsw i64 %i.cs, 5
  %i.cu = tail call fastcc i32 @ma_dr_flac__seek_bits(ptr noundef nonnull %i.f, i64 noundef %i.ct)
  %.not62.i = icmp eq i32 %i.cu, 0
  br i1 %.not62.i, label %ma_dr_flac__seek_subframe.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = load i16, ptr %i.k, align 8, !tbaa !1194
  %i.cw = zext i16 %i.cv to i32
  %i.cx = load i8, ptr %i.aw, align 2, !tbaa !1195
  %i.cy = zext i8 %i.cx to i32
  %i.cz = tail call fastcc i32 @ma_dr_flac__read_and_seek_residual(ptr noundef nonnull %i.f, i32 noundef %i.cw, i32 noundef %i.cy)
  %.not63.not.i = icmp eq i32 %i.cz, 0
  br i1 %.not63.not.i, label %ma_dr_flac__seek_subframe.exit.thread, label %ma_dr_flac__seek_subframe.exit

ma_dr_flac__seek_subframe.exit:                   ; preds = %bb.w, %bb.l, %bb.j, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !3277

._crit_edge:                                      ; preds = %ma_dr_flac__seek_subframe.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 6 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !1197
  %i.dd = sub i32 0, %i.dc
  %i.de = and i32 %i.dd, 7
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = tail call fastcc i32 @ma_dr_flac__seek_bits(ptr noundef %i.da, i64 noundef %i.df)
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %ma_dr_flac__seek_subframe.exit.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.dh = load i32, ptr %i.db, align 4, !tbaa !739 ; 4 uses
  %i.di = icmp eq i32 %i.dh, 64
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4464 ; 4 uses
  %i.dk = load i16, ptr %i.dj, align 8, !tbaa !1198 ; 21 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 4472
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !741 ; 15 uses
  br i1 %i.di, label %bb.y, label %bb.ah

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !742
  switch i32 %i.do, label %ma_dr_flac_crc16_bytes.exit [
    i32 0, label %bb.z
    i32 7, label %._crit_edge40
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 4, label %bb.ad
    i32 5, label %bb.ae
    i32 6, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y
  %i.dp = lshr i64 %i.dm, 56
  %i.dq = shl i16 %i.dk, 8
  %i.dr = lshr i16 %i.dk, 8
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !122 ; 2 uses
  %i.dw = xor i16 %i.dv, %i.dq
  %i.dx = lshr i64 %i.dm, 48
  %i.dy = trunc nuw i64 %i.dx to i16
  %i.dz = shl i16 %i.dv, 8
  %i.ea = lshr i16 %i.dw, 8
  %i.eb = and i16 %i.dy, 255
  %i.ec = xor i16 %i.ea, %i.eb
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !122 ; 2 uses
  %i.eg = xor i16 %i.dz, %i.ef
  %i.eh = lshr i64 %i.dm, 40
  %i.ei = trunc i64 %i.eh to i16
  %i.ej = shl i16 %i.ef, 8
  %i.ek = lshr i16 %i.eg, 8
  %i.el = and i16 %i.ei, 255
  %i.em = xor i16 %i.ek, %i.el
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !122 ; 2 uses
  %i.eq = xor i16 %i.ej, %i.ep
  %i.er = lshr i64 %i.dm, 32
  %i.es = trunc i64 %i.er to i16
  %i.et = shl i16 %i.ep, 8
  %i.eu = lshr i16 %i.eq, 8
  %i.ev = and i16 %i.es, 255
  %i.ew = xor i16 %i.eu, %i.ev
  %i.ex = zext nneg i16 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !122 ; 2 uses
  %i.fa = xor i16 %i.et, %i.ez
  %i.fb = lshr i64 %i.dm, 24
  %i.fc = trunc i64 %i.fb to i16
  %i.fd = shl i16 %i.ez, 8
  %i.fe = lshr i16 %i.fa, 8
  %i.ff = and i16 %i.fc, 255
  %i.fg = xor i16 %i.fe, %i.ff
  %i.fh = zext nneg i16 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !122 ; 2 uses
  %i.fk = xor i16 %i.fd, %i.fj
  %i.fl = lshr i64 %i.dm, 16
  %i.fm = trunc i64 %i.fl to i16
  %i.fn = shl i16 %i.fj, 8
  %i.fo = lshr i16 %i.fk, 8
  %i.fp = and i16 %i.fm, 255
  %i.fq = xor i16 %i.fo, %i.fp
  %i.fr = zext nneg i16 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !122 ; 2 uses
  %i.fu = trunc i64 %i.dm to i16                  ; 2 uses
  %i.fv = shl i16 %i.ft, 8
  %i.fw = xor i16 %i.fn, %i.fu
  %i.fx = xor i16 %i.fw, %i.ft
  %i.fy = lshr i16 %i.fx, 8
  %i.fz = zext nneg i16 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !122 ; 2 uses
  %i.gc = xor i16 %i.fv, %i.gb
  %i.gd = shl i16 %i.gb, 8
  %i.ge = lshr i16 %i.gc, 8
  %i.gf = and i16 %i.fu, 255
  %i.gg = xor i16 %i.ge, %i.gf
  %i.gh = zext nneg i16 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !122
  %i.gk = xor i16 %i.gd, %i.gj                    ; 2 uses
  store i16 %i.gk, ptr %i.dj, align 8, !tbaa !1198
  br label %bb.aq

._crit_edge40:                                    ; preds = %bb.y
  %.pre41 = trunc i64 %i.dm to i16
  br label %bb.ag

bb.aa:                                            ; preds = %bb.y
  %i.gl = lshr i64 %i.dm, 48
  %i.gm = trunc nuw i64 %i.gl to i16
  %i.gn = shl i16 %i.dk, 8
  %i.go = lshr i16 %i.dk, 8
  %i.gp = and i16 %i.gm, 255
  %i.gq = xor i16 %i.gp, %i.go
  %i.gr = zext nneg i16 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !122
  %i.gu = xor i16 %i.gt, %i.gn
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa
  %.1.i = phi i16 [ %i.gu, %bb.aa ], [ %i.dk, %bb.y ] ; 2 uses
  %i.gv = lshr i64 %i.dm, 40
  %i.gw = trunc i64 %i.gv to i16
  %i.gx = shl i16 %.1.i, 8
  %i.gy = lshr i16 %.1.i, 8
  %i.gz = and i16 %i.gw, 255
  %i.ha = xor i16 %i.gy, %i.gz
  %i.hb = zext nneg i16 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !122
  %i.he = xor i16 %i.gx, %i.hd
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab
  %.2.i = phi i16 [ %i.he, %bb.ab ], [ %i.dk, %bb.y ] ; 2 uses
  %i.hf = lshr i64 %i.dm, 32
  %i.hg = trunc i64 %i.hf to i16
  %i.hh = shl i16 %.2.i, 8
  %i.hi = lshr i16 %.2.i, 8
  %i.hj = and i16 %i.hg, 255
  %i.hk = xor i16 %i.hi, %i.hj
  %i.hl = zext nneg i16 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !122
  %i.ho = xor i16 %i.hh, %i.hn
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.ac
  %.3.i = phi i16 [ %i.ho, %bb.ac ], [ %i.dk, %bb.y ] ; 2 uses
  %i.hp = lshr i64 %i.dm, 24
  %i.hq = trunc i64 %i.hp to i16
  %i.hr = shl i16 %.3.i, 8
  %i.hs = lshr i16 %.3.i, 8
  %i.ht = and i16 %i.hq, 255
  %i.hu = xor i16 %i.hs, %i.ht
  %i.hv = zext nneg i16 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !122
  %i.hy = xor i16 %i.hr, %i.hx
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %bb.ad
  %.4.i = phi i16 [ %i.hy, %bb.ad ], [ %i.dk, %bb.y ] ; 2 uses
  %i.hz = lshr i64 %i.dm, 16
  %i.ia = trunc i64 %i.hz to i16
  %i.ib = shl i16 %.4.i, 8
  %i.ic = lshr i16 %.4.i, 8
  %i.id = and i16 %i.ia, 255
  %i.ie = xor i16 %i.ic, %i.id
  %i.if = zext nneg i16 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !122
  %i.ii = xor i16 %i.ib, %i.ih
  br label %bb.af

bb.af:                                            ; preds = %bb.y, %bb.ae
  %.5.i = phi i16 [ %i.ii, %bb.ae ], [ %i.dk, %bb.y ] ; 2 uses
  %i.ij = trunc i64 %i.dm to i16                  ; 2 uses
  %i.ik = shl i16 %.5.i, 8
  %i.il = xor i16 %.5.i, %i.ij
  %i.im = lshr i16 %i.il, 8
  %i.in = zext nneg i16 %i.im to i64
  %i.io = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.in
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !122
  %i.iq = xor i16 %i.ik, %i.ip
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge40, %bb.af
  %.pre-phi42 = phi i16 [ %.pre41, %._crit_edge40 ], [ %i.ij, %bb.af ]
end_hunk_2
begin_hunk_3_@ma_dr_flac__read_and_seek_residual:bb.a
  %i.pq = lshr i16 %i.po, 8
  %i.pr = and i16 %i.pg, 255
  %i.ps = xor i16 %i.pq, %i.pr
  %i.pt = zext nneg i16 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.pt
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !122
  %i.pw = xor i16 %i.pp, %i.pv
  store i16 %i.pw, ptr %i.cj, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i.i

._crit_edge.i68:                                  ; preds = %bb.be
  %.pre20.i = trunc i64 %i.na to i16
  br label %bb.bm

bb.bg:                                            ; preds = %bb.be
  %i.px = lshr i64 %i.na, 48
  %i.py = trunc nuw i64 %i.px to i16
  %i.pz = shl i16 %i.mz, 8
  %i.qa = lshr i16 %i.mz, 8
  %i.qb = and i16 %i.py, 255
  %i.qc = xor i16 %i.qb, %i.qa
  %i.qd = zext nneg i16 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.qd
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !122
  %i.qg = xor i16 %i.qf, %i.pz
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %.1.i74.i.i = phi i16 [ %i.qg, %bb.bg ], [ %i.mz, %bb.be ] ; 2 uses
  %i.qh = lshr i64 %i.na, 40
  %i.qi = trunc i64 %i.qh to i16
  %i.qj = shl i16 %.1.i74.i.i, 8
  %i.qk = lshr i16 %.1.i74.i.i, 8
  %i.ql = and i16 %i.qi, 255
  %i.qm = xor i16 %i.qk, %i.ql
  %i.qn = zext nneg i16 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.qn
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !122
  %i.qq = xor i16 %i.qj, %i.qp
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be
  %.2.i73.i.i = phi i16 [ %i.qq, %bb.bh ], [ %i.mz, %bb.be ] ; 2 uses
  %i.qr = lshr i64 %i.na, 32
  %i.qs = trunc i64 %i.qr to i16
  %i.qt = shl i16 %.2.i73.i.i, 8
  %i.qu = lshr i16 %.2.i73.i.i, 8
  %i.qv = and i16 %i.qs, 255
  %i.qw = xor i16 %i.qu, %i.qv
  %i.qx = zext nneg i16 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.qx
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !122
  %i.ra = xor i16 %i.qt, %i.qz
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.be
  %.3.i72.i.i = phi i16 [ %i.ra, %bb.bi ], [ %i.mz, %bb.be ] ; 2 uses
  %i.rb = lshr i64 %i.na, 24
  %i.rc = trunc i64 %i.rb to i16
  %i.rd = shl i16 %.3.i72.i.i, 8
  %i.re = lshr i16 %.3.i72.i.i, 8
  %i.rf = and i16 %i.rc, 255
  %i.rg = xor i16 %i.re, %i.rf
  %i.rh = zext nneg i16 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.rh
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !122
  %i.rk = xor i16 %i.rd, %i.rj
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.be
  %.4.i71.i.i = phi i16 [ %i.rk, %bb.bj ], [ %i.mz, %bb.be ] ; 2 uses
  %i.rl = lshr i64 %i.na, 16
  %i.rm = trunc i64 %i.rl to i16
  %i.rn = shl i16 %.4.i71.i.i, 8
  %i.ro = lshr i16 %.4.i71.i.i, 8
  %i.rp = and i16 %i.rm, 255
  %i.rq = xor i16 %i.ro, %i.rp
  %i.rr = zext nneg i16 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.rr
  %i.rt = load i16, ptr %i.rs, align 2, !tbaa !122
  %i.ru = xor i16 %i.rn, %i.rt
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.be
  %.5.i70.i.i = phi i16 [ %i.ru, %bb.bk ], [ %i.mz, %bb.be ] ; 2 uses
  %i.rv = trunc i64 %i.na to i16                  ; 2 uses
  %i.rw = shl i16 %.5.i70.i.i, 8
  %i.rx = xor i16 %.5.i70.i.i, %i.rv
  %i.ry = lshr i16 %i.rx, 8
  %i.rz = zext nneg i16 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.rz
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !122
  %i.sc = xor i16 %i.rw, %i.sb
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge.i68
  %.pre-phi21.i = phi i16 [ %.pre20.i, %._crit_edge.i68 ], [ %i.rv, %bb.bl ]
  %.6.i68.i.i = phi i16 [ %i.mz, %._crit_edge.i68 ], [ %i.sc, %bb.bl ] ; 2 uses
  %i.sd = shl i16 %.6.i68.i.i, 8
  %i.se = lshr i16 %.6.i68.i.i, 8
  %i.sf = and i16 %.pre-phi21.i, 255
  %i.sg = xor i16 %i.se, %i.sf
  %i.sh = zext nneg i16 %i.sg to i64
  %i.si = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.sh
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !122
  %i.sk = xor i16 %i.sd, %i.sj
  br label %ma_dr_flac_crc16_bytes.exit76.i.i

ma_dr_flac_crc16_bytes.exit76.i.i:                ; preds = %bb.bm, %bb.be
  %.7.i69.i.i = phi i16 [ %i.mz, %bb.be ], [ %i.sk, %bb.bm ]
  store i16 %.7.i69.i.i, ptr %i.cj, align 8, !tbaa !1198
  store i32 0, ptr %i.ci, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i.i

ma_dr_flac__update_crc16.exit.i.i:                ; preds = %ma_dr_flac_crc16_bytes.exit76.i.i, %bb.bf
  %i.sl = add nuw nsw i32 %i.mw, 1
  store i32 %i.sl, ptr %i.ch, align 8, !tbaa !738
  %i.sm = zext nneg i32 %i.mw to i64
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.sm
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !164
  %i.sp = tail call i64 @llvm.bswap.i64(i64 %i.so) ; 2 uses
  store i64 %i.sp, ptr %i.ck, align 8, !tbaa !741
  br label %bb.bp

bb.bn:                                            ; preds = %.preheader.i
  %i.sq = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i67 = icmp eq i32 %i.sq, 0
  br i1 %.not.i.i67, label %ma_dr_flac__read_uint8.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.sr = load i64, ptr %i.cg, align 8, !tbaa !740
  %i.ss = load i32, ptr %i.a, align 4, !tbaa !739
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %ma_dr_flac__update_crc16.exit.i.i
  %.354.i.i = phi i64 [ %i.sp, %ma_dr_flac__update_crc16.exit.i.i ], [ %i.sr, %bb.bo ] ; 7 uses
  %.3.i.i = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i.i ], [ %i.ss, %bb.bo ]
  %i.st = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i.i = icmp eq i32 %i.st, 0
  br i1 %.not.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.su = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.354.i.i) #55, !srcloc !1207
  %i.sv = trunc i64 %i.su to i32
  br label %ma_dr_flac__clz.exit.i.i

bb.br:                                            ; preds = %bb.bp
  %i.sw = icmp eq i64 %.354.i.i, 0
  br i1 %i.sw, label %ma_dr_flac__clz.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sx = lshr i64 %.354.i.i, 60                  ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !118
  %i.ta = icmp eq i64 %i.sx, 0
  br i1 %i.ta, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.tb = icmp ult i64 %.354.i.i, 4294967296      ; 2 uses
  %i.tc = shl nuw i64 %.354.i.i, 32
  %spec.select.i83.i.i = select i1 %i.tb, i64 %i.tc, i64 %.354.i.i ; 3 uses
  %spec.select26.i84.i.i = select i1 %i.tb, i32 32, i32 0 ; 2 uses
  %i.td = icmp ult i64 %spec.select.i83.i.i, 281474976710656 ; 2 uses
  %i.te = or disjoint i32 %spec.select26.i84.i.i, 16
  %i.tf = shl nuw i64 %spec.select.i83.i.i, 16
  %.119.i85.i.i = select i1 %i.td, i64 %i.tf, i64 %spec.select.i83.i.i ; 3 uses
  %.1.i86.i.i = select i1 %i.td, i32 %i.te, i32 %spec.select26.i84.i.i ; 2 uses
  %i.tg = icmp ult i64 %.119.i85.i.i, 72057594037927936 ; 2 uses
  %i.th = or disjoint i32 %.1.i86.i.i, 8
  %i.ti = shl nuw i64 %.119.i85.i.i, 8
  %.220.i87.i.i = select i1 %i.tg, i64 %i.ti, i64 %.119.i85.i.i ; 3 uses
  %.2.i88.i.i = select i1 %i.tg, i32 %i.th, i32 %.1.i86.i.i ; 2 uses
  %i.tj = icmp ult i64 %.220.i87.i.i, 1152921504606846976 ; 2 uses
  %i.tk = or disjoint i32 %.2.i88.i.i, 4
  %i.tl = shl nuw i64 %.220.i87.i.i, 4
  %.321.i89.i.i = select i1 %i.tj, i64 %i.tl, i64 %.220.i87.i.i
  %.3.i90.i.i = select i1 %i.tj, i32 %i.tk, i32 %.2.i88.i.i
  %i.tm = lshr i64 %.321.i89.i.i, 60
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.tm
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !118
  %i.tp = add i32 %i.to, %.3.i90.i.i
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.4.i81.i.i = phi i32 [ %i.tp, %bb.bt ], [ %i.sz, %bb.bs ]
  %i.tq = add i32 %.4.i81.i.i, -1
  br label %ma_dr_flac__clz.exit.i.i

ma_dr_flac__clz.exit.i.i:                         ; preds = %bb.bu, %bb.br, %bb.bq
  %.0.i.i.i = phi i32 [ %i.sv, %bb.bq ], [ %i.tq, %bb.bu ], [ 64, %bb.br ] ; 2 uses
  %i.tr = icmp ult i32 %.0.i.i.i, 64
  br i1 %i.tr, label %.loopexit.i, label %.preheader.i

bb.bv:                                            ; preds = %bb.bd, %bb.ap
  %.455.i.i = phi i64 [ %i.gq, %bb.ap ], [ %i.mv, %bb.bd ] ; 2 uses
  %.4.i.i = phi i32 [ %i.gr, %bb.ap ], [ %.1.i.i, %bb.bd ] ; 2 uses
  store i64 %.455.i.i, ptr %i.cg, align 8, !tbaa !740
  store i32 %.4.i.i, ptr %i.a, align 4, !tbaa !739
  %i.ts = add nuw i32 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ts, %.022
  br i1 %exitcond.not.i, label %ma_dr_flac__read_and_seek_residual__rice.exit, label %bb.aj, !llvm.loop !3278

.thread:                                          ; preds = %bb.ah, %bb.z, %bb.ai
  %i.tt = phi i32 [ %.pre15.i129, %bb.ah ], [ %.pre15.i130, %bb.z ], [ %.pre15.i, %bb.ai ] ; 2 uses
  %i.tu = icmp eq i32 %i.tt, 64
  br i1 %i.tu, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.thread
  %i.tv = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i74 = icmp eq i32 %i.tv, 0
  br i1 %.not.i.i74, label %ma_dr_flac__read_uint8.exit.thread, label %._crit_edge.i75

._crit_edge.i75:                                  ; preds = %bb.bw
  %.pre.i76 = load i32, ptr %i.a, align 4, !tbaa !739
  br label %bb.bx

bb.bx:                                            ; preds = %._crit_edge.i75, %.thread
  %i.tw = phi i32 [ %.pre.i76, %._crit_edge.i75 ], [ %i.tt, %.thread ] ; 2 uses
  %i.tx = zext i32 %i.tw to i64                   ; 2 uses
  %i.ty = sub nsw i64 64, %i.tx                   ; 3 uses
  %.not34.i.i69 = icmp ult i64 %i.ty, 5
  br i1 %.not34.i.i69, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.tz = load i64, ptr %i.cg, align 8, !tbaa !740 ; 2 uses
  %i.ua = lshr i64 %i.tz, 59
  %i.ub = trunc nuw nsw i64 %i.ua to i32
  %i.uc = add i32 %i.tw, 5
  store i32 %i.uc, ptr %i.a, align 4, !tbaa !739
  %i.ud = shl i64 %i.tz, 5
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bx
  %i.ue = trunc nuw nsw i64 %i.ty to i32
  %i.uf = sub nuw nsw i32 5, %i.ue                ; 3 uses
  %i.ug = load i64, ptr %i.cg, align 8, !tbaa !740
  %i.uh = lshr i64 -1, %i.ty
  %i.ui = xor i64 %i.uh, -1
  %i.uj = and i64 %i.ug, %i.ui
  %i.uk = lshr i64 %i.uj, %i.tx
  %i.ul = trunc i64 %i.uk to i32
  %i.um = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not35.i.i73 = icmp eq i32 %i.um, 0
  br i1 %.not35.i.i73, label %ma_dr_flac__read_uint8.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.un = zext nneg i32 %i.uf to i64              ; 4 uses
  %i.uo = load i32, ptr %i.a, align 4, !tbaa !739 ; 2 uses
  %i.up = zext i32 %i.uo to i64
  %i.uq = sub nsw i64 64, %i.up
  %i.ur = icmp ult i64 %i.uq, %i.un
  br i1 %i.ur, label %ma_dr_flac__read_uint8.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.us = shl i32 %i.ul, %i.uf
  %i.ut = load i64, ptr %i.cg, align 8, !tbaa !740 ; 2 uses
  %i.uu = lshr i64 -1, %i.un
  %i.uv = xor i64 %i.uu, -1
  %i.uw = and i64 %i.ut, %i.uv
  %i.ux = sub nuw nsw i64 64, %i.un
  %i.uy = lshr i64 %i.uw, %i.ux
  %i.uz = trunc nuw nsw i64 %i.uy to i32
  %i.va = or i32 %i.us, %i.uz
  %i.vb = add i32 %i.uo, %i.uf
  store i32 %i.vb, ptr %i.a, align 4, !tbaa !739
  %i.vc = shl i64 %i.ut, %i.un
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.by
  %storemerge = phi i64 [ %i.ud, %bb.by ], [ %i.vc, %bb.cb ]
  %.03.i71 = phi i32 [ %i.ub, %bb.by ], [ %i.va, %bb.cb ]
  store i64 %storemerge, ptr %i.cg, align 8, !tbaa !740
  %i.vd = and i32 %.03.i71, 255
  %i.ve = mul nuw nsw i32 %i.vd, %.022
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = tail call fastcc i32 @ma_dr_flac__seek_bits(ptr noundef %0, i64 noundef %i.vf)
  %.not36.not = icmp eq i32 %i.vg, 0
  br i1 %.not36.not, label %ma_dr_flac__read_uint8.exit.thread, label %ma_dr_flac__read_and_seek_residual__rice.exit

ma_dr_flac__read_and_seek_residual__rice.exit:    ; preds = %bb.bv, %bb.cc
  %i.vh = icmp eq i32 %.020, 1
  %i.vi = add nsw i32 %.020, -1
  br i1 %i.vh, label %ma_dr_flac__read_uint8.exit.thread, label %bb.r

ma_dr_flac__read_uint8.exit.thread:               ; preds = %bb.af, %bb.ae, %bb.ab, %bb.x, %bb.w, %bb.t, %bb.ca, %bb.bz, %bb.bw, %bb.cc, %ma_dr_flac__read_and_seek_residual__rice.exit, %bb.ba, %bb.bb, %bb.bn, %bb.m, %bb.l, %bb.i, %bb.f, %bb.e, %bb.b, %bb.p, %bb.o, %ma_dr_flac__read_uint8.exit
  %.4 = phi i32 [ 0, %ma_dr_flac__read_uint8.exit ], [ 0, %bb.f ], [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %bb.ba ], [ 0, %bb.p ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.bn ], [ 0, %bb.bb ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ab ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.t ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 0, %bb.bw ], [ 1, %ma_dr_flac__read_and_seek_residual__rice.exit ], [ 0, %bb.cc ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_flac__seek_to_pcm_frame__binary_search_internal(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !751  ; 2 uses
  %.not = icmp eq i16 %i.e, 0
  %i.f = zext i16 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = select i1 %.not, i64 4096, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 10 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !729
  %i.k = sub i64 %1, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !725
  %i.n = zext i8 %i.m to i64
  %i.o = mul i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 5 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !728
  %i.r = zext i8 %i.q to i64
  %i.s = mul i64 %i.o, %i.r
  %i.t = sitofp i64 %i.s to float
  %i.u = fmul nnan float %i.t, 1.250000e-01
  %i.v = fmul nnan float %i.u, 6.000000e-01
  %i.w = fptoui float %i.v to i64
  %i.x = add i64 %2, %i.w
  %.072 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %3)
  %i.y = call fastcc i32 @ma_dr_flac__seek_to_approximate_flac_frame_to_byte(ptr noundef %0, i64 noundef %.072, i64 noundef %2, i64 noundef %3, ptr noundef %i.a)
  %.not102196 = icmp eq i32 %i.y, 0
  br i1 %.not102196, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.068200 = phi i64 [ %2, %.lr.ph ], [ %.3, %bb.y ] ; 4 uses
  %.070199 = phi i64 [ %i.c, %.lr.ph ], [ %.013.i, %bb.y ]
  %.076198 = phi i64 [ %3, %.lr.ph ], [ %.480, %bb.y ] ; 2 uses
  %.081197 = phi i64 [ %2, %.lr.ph ], [ %.485, %bb.y ]
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !749 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit

bb.c:                                             ; preds = %bb.b
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !750
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i16, ptr %i.d, align 2, !tbaa !751
  %i.ai = zext i16 %i.ah to i64
  %i.aj = mul nuw nsw i64 %i.ai, %i.ag
  br label %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit

ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit: ; preds = %bb.b, %bb.c
  %.013.i = phi i64 [ %i.aj, %bb.c ], [ %i.ad, %bb.b ] ; 6 uses
  %i.ak = icmp eq i64 %.070199, %.013.i
  br i1 %i.ak, label %bb.d, label %bb.j

bb.d:                                             ; preds = %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit
  %i.al = call fastcc i32 @ma_dr_flac__seek_to_approximate_flac_frame_to_byte(ptr noundef %0, i64 noundef %.068200, i64 noundef %.068200, i64 noundef %.076198, ptr noundef %i.a)
  %.not107 = icmp eq i32 %i.al, 0
  br i1 %.not107, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load i64, ptr %i.i, align 8, !tbaa !729
  %i.an = sub i64 %1, %i.am                       ; 3 uses
  %.not26.i.i = icmp eq i64 %i.an, 0
  br i1 %.not26.i.i, label %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.f

bb.f:                                             ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i, %.lr.ph.i.i
  %.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i ] ; 5 uses
  %.01627.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ %.117.i.i, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i ] ; 5 uses
  %i.aq = load i32, ptr %i.ao, align 8, !tbaa !727 ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.f, %bb.g
  %i.as = load i8, ptr %i.p, align 1, !tbaa !728
  %i.at = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.ap, i8 noundef zeroext %i.as, ptr noundef %i.z)
  %.not.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i, label %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i
  %i.au = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.au, label %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i
    i32 -100, label %.preheader.i.i
  ]

bb.h:                                             ; preds = %bb.f
  %i.av = zext i32 %i.aq to i64                   ; 3 uses
  %i.aw = icmp ult i64 %.01627.i.i, %i.av
  br i1 %i.aw, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i.i, label %bb.i

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i.i: ; preds = %bb.h
  %i.ax = add i64 %.01627.i.i, %.028.i.i
  %i.ay = trunc nuw i64 %.01627.i.i to i32
  %i.az = sub nuw i32 %i.aq, %i.ay
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !727
  br label %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit

bb.i:                                             ; preds = %bb.h
end_hunk_3
begin_hunk_4_@ma_dr_flac__seek_to_pcm_frame__binary_search_internal:bb.a

bb.q:                                             ; preds = %bb.p
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.081197, i64 %i.bz) ; 4 uses
  %i.cm = sub i64 %i.bz, %spec.select
  %i.cn = lshr i64 %i.cm, 1
  %i.co = add i64 %i.cn, %spec.select
  %spec.select112 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %spec.select)
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.cp = sub nuw i64 %1, %.013.i                 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.h
  br i1 %i.cq, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cr = load i64, ptr %i.i, align 8, !tbaa !729
  %i.cs = sub i64 %1, %i.cr                       ; 3 uses
  %.not26.i.i127 = icmp eq i64 %i.cs, 0
  br i1 %.not26.i.i127, label %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit139, label %.lr.ph.i.i128

.lr.ph.i.i128:                                    ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.t

bb.t:                                             ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i131, %.lr.ph.i.i128
  %.028.i.i129 = phi i64 [ 0, %.lr.ph.i.i128 ], [ %.1.i.i133, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i131 ] ; 5 uses
  %.01627.i.i130 = phi i64 [ %i.cs, %.lr.ph.i.i128 ], [ %.117.i.i132, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i131 ] ; 5 uses
  %i.cv = load i32, ptr %i.ct, align 8, !tbaa !727 ; 3 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.preheader.i.i137, label %bb.v

.preheader.i.i137:                                ; preds = %bb.t, %bb.u
  %i.cx = load i8, ptr %i.p, align 1, !tbaa !728
  %i.cy = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.cu, i8 noundef zeroext %i.cx, ptr noundef %i.z)
  %.not.i.i.i138 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i138, label %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit139, label %bb.u

bb.u:                                             ; preds = %.preheader.i.i137
  %i.cz = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.cz, label %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit139 [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i131
    i32 -100, label %.preheader.i.i137
  ]

bb.v:                                             ; preds = %bb.t
  %i.da = zext i32 %i.cv to i64                   ; 3 uses
  %i.db = icmp ult i64 %.01627.i.i130, %i.da
  br i1 %i.db, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i.i136, label %bb.w

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i.i136: ; preds = %bb.v
  %i.dc = add i64 %.01627.i.i130, %.028.i.i129
  %i.dd = trunc nuw i64 %.01627.i.i130 to i32
  %i.de = sub nuw i32 %i.cv, %i.dd
  store i32 %i.de, ptr %i.ct, align 8, !tbaa !727
  br label %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit139

bb.w:                                             ; preds = %bb.v
  %i.df = add i64 %.028.i.i129, %i.da
  %i.dg = sub nuw i64 %.01627.i.i130, %i.da
  store i32 0, ptr %i.ct, align 8, !tbaa !727
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i131

ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i131: ; preds = %bb.u, %bb.w
  %.117.i.i132 = phi i64 [ %i.dg, %bb.w ], [ %.01627.i.i130, %bb.u ] ; 2 uses
  %.1.i.i133 = phi i64 [ %i.df, %bb.w ], [ %.028.i.i129, %bb.u ] ; 2 uses
  %.not.i.i134 = icmp eq i64 %.117.i.i132, 0
  br i1 %.not.i.i134, label %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit139, label %bb.t, !llvm.loop !59

ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit139: ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i131, %.preheader.i.i137, %bb.u, %bb.s, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i.i136
  %.025.i.i135 = phi i64 [ 0, %bb.s ], [ %i.dc, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i.i136 ], [ %.028.i.i129, %.preheader.i.i137 ], [ %.028.i.i129, %bb.u ], [ %.1.i.i133, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i.i131 ] ; 2 uses
  %i.dh = load i64, ptr %i.i, align 8, !tbaa !729
  %i.di = add i64 %i.dh, %.025.i.i135
  store i64 %i.di, ptr %i.i, align 8, !tbaa !729
  %.not161 = icmp eq i64 %.025.i.i135, %i.cs
  br i1 %.not161, label %.thread153, label %.thread

bb.x:                                             ; preds = %bb.r
  %spec.select111 = tail call i64 @llvm.umax.i64(i64 %.076198, i64 %i.bz) ; 2 uses
  %i.dj = mul i64 %i.ch, %i.cp
  %i.dk = sitofp i64 %i.dj to float
  %i.dl = fmul nnan float %i.dk, 1.250000e-01
  %i.dm = fmul float %i.dl, %i.cl
  %i.dn = fptoui float %i.dm to i64
  %i.do = add i64 %i.bz, %i.dn
  %.274 = tail call i64 @llvm.umin.i64(i64 %i.do, i64 %spec.select111)
  %spec.select113 = tail call i64 @llvm.umax.i64(i64 %.068200, i64 %i.bz)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q
  %.485 = phi i64 [ %i.bz, %bb.x ], [ %spec.select, %bb.q ] ; 2 uses
  %.480 = phi i64 [ %spec.select111, %bb.x ], [ %i.bz, %bb.q ] ; 2 uses
  %.5 = phi i64 [ %.274, %bb.x ], [ %spec.select112, %bb.q ]
  %.3 = phi i64 [ %spec.select113, %bb.x ], [ %.068200, %bb.q ]
  %i.dp = call fastcc i32 @ma_dr_flac__seek_to_approximate_flac_frame_to_byte(ptr noundef %0, i64 noundef %.5, i64 noundef %.485, i64 noundef %.480, ptr noundef %i.a)
  %.not102 = icmp eq i32 %i.dp, 0
  br i1 %.not102, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.y, %bb.a, %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit139, %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit126, %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit, %bb.d
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !735 ; 3 uses
  %i.ds = icmp ugt i64 %i.dr, 2147483647
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !736 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !737 ; 2 uses
  br i1 %i.ds, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread
  %i.dx = tail call i32 %i.du(ptr noundef %i.dw, i32 noundef 2147483647, i32 noundef 0) #55, !inline_history !60
  %.not22.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not22.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %.preheader.i.i142.preheader

.preheader.i.i142.preheader:                      ; preds = %bb.z
  %.018.i.i304 = add i64 %i.dr, -2147483647       ; 3 uses
  %i.dy = icmp ugt i64 %.018.i.i304, 2147483647
  br i1 %i.dy, label %.lr.ph306, label %.preheader.i.i142._crit_edge

.preheader.i.i142:                                ; preds = %.lr.ph306
  %.018.i.i = add i64 %.018.i.i305, -2147483647   ; 3 uses
  %i.dz = icmp ugt i64 %.018.i.i, 2147483647
  br i1 %i.dz, label %.lr.ph306, label %.preheader.i.i142._crit_edge, !llvm.loop !61

.lr.ph306:                                        ; preds = %.preheader.i.i142.preheader, %.preheader.i.i142
  %.018.i.i305 = phi i64 [ %.018.i.i, %.preheader.i.i142 ], [ %.018.i.i304, %.preheader.i.i142.preheader ]
  %i.ea = load ptr, ptr %i.dt, align 8, !tbaa !736
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !737
  %i.ec = tail call i32 %i.ea(ptr noundef %i.eb, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !60
  %.not24.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not24.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %.preheader.i.i142, !llvm.loop !61

.preheader.i.i142._crit_edge:                     ; preds = %.preheader.i.i142, %.preheader.i.i142.preheader
  %.018.i.i.lcssa = phi i64 [ %.018.i.i304, %.preheader.i.i142.preheader ], [ %.018.i.i, %.preheader.i.i142 ]
  %i.ed = load ptr, ptr %i.dt, align 8, !tbaa !736
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !737
  %i.ef = trunc nuw nsw i64 %.018.i.i.lcssa to i32
  %i.eg = tail call i32 %i.ed(ptr noundef %i.ee, i32 noundef %i.ef, i32 noundef 1) #55, !inline_history !60
  %.not23.not.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not23.not.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %bb.ab

bb.aa:                                            ; preds = %.thread
  %i.eh = trunc nuw nsw i64 %i.dr to i32
  %i.ei = tail call i32 %i.du(ptr noundef %i.dw, i32 noundef %i.eh, i32 noundef 0) #55, !inline_history !60
  %.not.i.i140 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i140, label %ma_dr_flac__seek_to_first_frame.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.preheader.i.i142._crit_edge
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 512, ptr %i.ej, align 8, !tbaa !738
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 64, ptr %i.ek, align 4, !tbaa !739
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 4456
  store i64 0, ptr %i.el, align 8, !tbaa !740
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4472
  store i64 0, ptr %i.en, align 8, !tbaa !741
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 4480
  store i32 0, ptr %i.eo, align 8, !tbaa !742
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i8 0, i64 16, i1 false)
  br label %ma_dr_flac__seek_to_first_frame.exit

ma_dr_flac__seek_to_first_frame.exit:             ; preds = %.lr.ph306, %bb.z, %.preheader.i.i142._crit_edge, %bb.aa, %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ep, i8 0, i64 168, i1 false)
  br label %.thread153

.thread153:                                       ; preds = %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit139, %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit126, %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit, %ma_dr_flac__seek_to_first_frame.exit
  %.389 = phi i32 [ 0, %ma_dr_flac__seek_to_first_frame.exit ], [ 1, %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit ], [ 1, %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit126 ], [ 1, %ma_dr_flac__decode_flac_frame_and_seek_forward_by_pcm_frames.exit139 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i32 %.389
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_flac__seek_to_approximate_flac_frame_to_byte(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %4) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !735
  store i64 %i.b, ptr %4, align 8, !tbaa !164
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4472 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 53
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit

ma_dr_flac__read_and_decode_next_flac_frame.exit: ; preds = %.thread, %bb.a
  %.028 = phi i64 [ %1, %bb.a ], [ %.126, %.thread ] ; 6 uses
  %.025 = phi i64 [ %3, %bb.a ], [ %.126, %.thread ]
  %i.n = icmp ugt i64 %.028, 2147483647
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !736  ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !737  ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit
  %i.q = tail call i32 %i.o(ptr noundef %i.p, i32 noundef 2147483647, i32 noundef 0) #55, !inline_history !3279
  %.not22.i = icmp eq i32 %i.q, 0
  br i1 %.not22.i, label %.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %.018.i63 = add i64 %.028, -2147483647          ; 3 uses
  %i.r = icmp ugt i64 %.018.i63, 2147483647
  br i1 %i.r, label %.lr.ph, label %.preheader.i._crit_edge

.preheader.i:                                     ; preds = %.lr.ph
  %.018.i = add i64 %.018.i64, -2147483647        ; 3 uses
  %i.s = icmp ugt i64 %.018.i, 2147483647
  br i1 %i.s, label %.lr.ph, label %.preheader.i._crit_edge, !llvm.loop !61

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.018.i64 = phi i64 [ %.018.i, %.preheader.i ], [ %.018.i63, %.preheader.i.preheader ]
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !736
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !737
  %i.v = tail call i32 %i.t(ptr noundef %i.u, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !3279
  %.not24.i = icmp eq i32 %i.v, 0
  br i1 %.not24.i, label %.loopexit, label %.preheader.i, !llvm.loop !61

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.i.preheader
  %.018.i.lcssa = phi i64 [ %.018.i63, %.preheader.i.preheader ], [ %.018.i, %.preheader.i ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !736
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !737
  %i.y = trunc nuw nsw i64 %.018.i.lcssa to i32
  %i.z = tail call i32 %i.w(ptr noundef %i.x, i32 noundef %i.y, i32 noundef 1) #55, !inline_history !3279
  %.not23.not.i = icmp eq i32 %i.z, 0
  br i1 %.not23.not.i, label %.loopexit, label %bb.h

bb.c:                                             ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit
  %i.aa = trunc nuw nsw i64 %.028 to i32
  %i.ab = tail call i32 %i.o(ptr noundef %i.p, i32 noundef %i.aa, i32 noundef 0) #55, !inline_history !3279
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %.lr.ph, %.preheader.i._crit_edge, %bb.c
  %i.ac = icmp eq i64 %.028, 0
  br i1 %i.ac, label %bb.d, label %.thread

bb.d:                                             ; preds = %.loopexit
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !735 ; 3 uses
  %i.ae = icmp ugt i64 %i.ad, 2147483647
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !736 ; 2 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !737 ; 2 uses
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call i32 %i.af(ptr noundef %i.ag, i32 noundef 2147483647, i32 noundef 0) #55, !inline_history !60
  %.not22.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not22.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.e
  %.018.i.i65 = add i64 %i.ad, -2147483647        ; 3 uses
  %i.ai = icmp ugt i64 %.018.i.i65, 2147483647
  br i1 %i.ai, label %.lr.ph67, label %.preheader.i.i._crit_edge

.preheader.i.i:                                   ; preds = %.lr.ph67
  %.018.i.i = add i64 %.018.i.i66, -2147483647    ; 3 uses
  %i.aj = icmp ugt i64 %.018.i.i, 2147483647
  br i1 %i.aj, label %.lr.ph67, label %.preheader.i.i._crit_edge, !llvm.loop !61

.lr.ph67:                                         ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.018.i.i66 = phi i64 [ %.018.i.i, %.preheader.i.i ], [ %.018.i.i65, %.preheader.i.i.preheader ]
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !736
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !737
  %i.am = tail call i32 %i.ak(ptr noundef %i.al, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !60
  %.not24.i.i = icmp eq i32 %i.am, 0
  br i1 %.not24.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %.preheader.i.i, !llvm.loop !61

.preheader.i.i._crit_edge:                        ; preds = %.preheader.i.i, %.preheader.i.i.preheader
  %.018.i.i.lcssa = phi i64 [ %.018.i.i65, %.preheader.i.i.preheader ], [ %.018.i.i, %.preheader.i.i ]
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !736
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !737
  %i.ap = trunc nuw nsw i64 %.018.i.i.lcssa to i32
  %i.aq = tail call i32 %i.an(ptr noundef %i.ao, i32 noundef %i.ap, i32 noundef 1) #55, !inline_history !60
  %.not23.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not23.not.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ar = trunc nuw nsw i64 %i.ad to i32
  %i.as = tail call i32 %i.af(ptr noundef %i.ag, i32 noundef %i.ar, i32 noundef 0) #55, !inline_history !60
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.i.i._crit_edge
  store i32 512, ptr %i.f, align 8, !tbaa !738
  store i32 64, ptr %i.g, align 4, !tbaa !739
  store i64 0, ptr %i.h, align 8, !tbaa !740
  store i64 0, ptr %i.j, align 8, !tbaa !741
  store i32 0, ptr %i.k, align 8, !tbaa !742
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %ma_dr_flac__seek_to_first_frame.exit

ma_dr_flac__seek_to_first_frame.exit:             ; preds = %.lr.ph67, %bb.e, %.preheader.i.i._crit_edge, %bb.f, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.l, i8 0, i64 168, i1 false)
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread37

bb.h:                                             ; preds = %bb.c, %.preheader.i._crit_edge
  store i32 512, ptr %i.f, align 8, !tbaa !738
  store i32 64, ptr %i.g, align 4, !tbaa !739
  store i64 0, ptr %i.h, align 8, !tbaa !740
  store i64 0, ptr %i.j, align 8, !tbaa !741
  store i32 0, ptr %i.k, align 8, !tbaa !742
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.l, i8 0, i64 160, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.at = load i8, ptr %i.m, align 1, !tbaa !728
  %i.au = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.c, i8 noundef zeroext %i.at, ptr noundef %i.l)
  %.not.i32 = icmp eq i32 %i.au, 0
  br i1 %.not.i32, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.av, label %.thread [
    i32 0, label %bb.k
    i32 -100, label %bb.i
  ]

.thread:                                          ; preds = %bb.j, %bb.i, %bb.b, %.loopexit
  %.pn.in = sub i64 %.025, %2
  %.pn = lshr i64 %.pn.in, 1
  %.126 = add i64 %.pn, %2                        ; 3 uses
  %i.aw = icmp eq i64 %.126, %.028
  br i1 %i.aw, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread37, label %ma_dr_flac__read_and_decode_next_flac_frame.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !749 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.l, label %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !750
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !751
  %i.bf = zext i16 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bf, %i.bc
  br label %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit

ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit: ; preds = %bb.k, %bb.l
  %.013.i = phi i64 [ %i.bg, %bb.l ], [ %i.ay, %bb.k ]
  store i64 %.013.i, ptr %i.ax, align 8, !tbaa !164
  store i64 %.028, ptr %4, align 8, !tbaa !164
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread37

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread37: ; preds = %.thread, %ma_dr_flac__seek_to_first_frame.exit, %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit
  %.2 = phi i32 [ 1, %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit ], [ 0, %ma_dr_flac__seek_to_first_frame.exit ], [ 0, %.thread ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ma_dr_mp3_L3_imdct36(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 1, 33) %3) unnamed_addr #48 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 52
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0103 = phi ptr [ %0, %bb.a ], [ %i.hq, %.preheader ] ; 24 uses
  %.096102 = phi ptr [ %1, %bb.a ], [ %i.hr, %.preheader ] ; 5 uses
  %.098101 = phi i32 [ 0, %bb.a ], [ %i.hp, %.preheader ]
  %i.f = load float, ptr %.0103, align 4, !tbaa !349 ; 2 uses
  %i.g = fneg float %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.0103, i64 68
  %i.i = load float, ptr %i.h, align 4, !tbaa !349 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0103, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !349 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0103, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !349 ; 2 uses
  %i.n = fsub float %i.k, %i.m                    ; 3 uses
  %i.o = fadd float %i.k, %i.m                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0103, i64 16 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !349 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0103, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !349 ; 2 uses
  %i.t = fsub float %i.q, %i.s                    ; 3 uses
  %i.u = fadd float %i.q, %i.s                    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0103, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !349 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0103, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !349 ; 2 uses
  %i.z = fsub float %i.w, %i.y                    ; 2 uses
  %i.aa = fadd float %i.w, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %.0103, i64 32
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !349 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0103, i64 28
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !349 ; 2 uses
  %i.af = fsub float %i.ac, %i.ae                 ; 3 uses
  %i.ag = fadd float %i.ac, %i.ae                 ; 3 uses
  %i.ah = fneg float %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.0103, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0103, i64 36
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !349 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0103, i64 40
  %i.am = load float, ptr %i.al, align 4, !tbaa !349 ; 2 uses
  %i.an = fsub float %i.ak, %i.am                 ; 3 uses
  %i.ao = fadd float %i.ak, %i.am                 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0103, i64 48
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !349 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0103, i64 44
  %i.as = load float, ptr %i.ar, align 4, !tbaa !349 ; 2 uses
  %i.at = fsub float %i.aq, %i.as
  %i.au = fadd float %i.aq, %i.as                 ; 2 uses
  %i.av = fneg float %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.0103, i64 52
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !349 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.az = load float, ptr %i.ay, align 4, !tbaa !349 ; 2 uses
  %i.ba = fsub float %i.ax, %i.az                 ; 3 uses
  %i.bb = fadd float %i.ax, %i.az                 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0103, i64 64
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !349 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0103, i64 60
  %i.bf = load float, ptr %i.be, align 4, !tbaa !349 ; 2 uses
  %i.bg = fsub float %i.bd, %i.bf                 ; 3 uses
  %i.bh = fadd float %i.bd, %i.bf                 ; 3 uses
  %i.bi = fneg float %i.bh
  %i.bj = fsub float %i.au, %i.f                  ; 2 uses
  %i.bk = fsub float %i.ah, %i.u
  %i.bl = fmul float %i.bk, f0x3F708FB2           ; 2 uses
  %i.bm = fsub float %i.bi, %i.u
  %i.bn = fmul float %i.bm, f0x3F441B7D           ; 2 uses
  %i.bo = fsub float %i.bh, %i.ag
  %i.bp = fmul float %i.bo, f0x3E31D0D4           ; 2 uses
  %i.bq = fsub float %i.u, %i.bh
  %i.br = fsub float %i.bq, %i.ag                 ; 2 uses
  %i.bs = fneg float %i.br
  %i.bt = fadd float %i.bj, %i.br
  %i.bu = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.bv = fmul float %i.aa, f0x3F5DB3D7           ; 3 uses
  %i.bw = fadd float %i.o, %i.ao
  %i.bx = fmul float %i.bw, f0x3F7C1C5C           ; 2 uses
  %i.by = fsub float %i.ao, %i.bb
  %i.bz = fmul float %i.by, f0x3EAF1D44           ; 2 uses
  %i.ca = fadd float %i.o, %i.bb
  %i.cb = fmul float %i.ca, f0x3F248DBB           ; 2 uses
  %i.cc = fsub float %i.o, %i.ao
  %i.cd = fsub float %i.cc, %i.bb
  %i.ce = fmul float %i.cd, f0x3F5DB3D7           ; 2 uses
  %i.cf = fsub float %i.bx, %i.bv
  %i.cg = fsub float %i.cf, %i.cb                 ; 2 uses
  %i.ch = fsub float %i.bz, %i.bv
  %i.ci = fsub float %i.ch, %i.bx                 ; 2 uses
  %i.cj = fadd float %i.bv, %i.bz
  %i.ck = fsub float %i.cj, %i.cb                 ; 2 uses
  %i.cl = fsub float %i.i, %i.z                   ; 2 uses
  %i.cm = fadd float %i.ba, %i.an
  %i.cn = fmul float %i.cm, f0x3F708FB2           ; 2 uses
  %i.co = fadd float %i.ba, %i.n
  %i.cp = fmul float %i.co, f0x3F441B7D           ; 2 uses
  %i.cq = fsub float %i.an, %i.n
  %i.cr = fmul float %i.cq, f0x3E31D0D4           ; 2 uses
  %i.cs = fsub float %i.n, %i.ba
  %i.ct = fadd float %i.an, %i.cs                 ; 2 uses
  %i.cu = fneg float %i.ct
  %i.cv = insertelement <4 x float> poison, float %i.av, i64 0
  %i.cw = insertelement <4 x float> %i.cv, float %i.bs, i64 1
  %i.cx = insertelement <4 x float> %i.cw, float %i.z, i64 2
  %i.cy = insertelement <4 x float> %i.cx, float %i.cu, i64 3
  %i.cz = insertelement <4 x float> poison, float %i.g, i64 0
  %i.da = insertelement <4 x float> %i.cz, float %i.bj, i64 1
  %i.db = insertelement <4 x float> %i.da, float %i.i, i64 2
  %i.dc = insertelement <4 x float> %i.db, float %i.cl, i64 3
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> splat (float 5.000000e-01), <4 x float> %i.dc) ; 4 uses
  %i.de = extractelement <4 x float> %i.dd, i64 0 ; 3 uses
  %i.df = fsub float %i.de, %i.bn
  %i.dg = fadd float %i.bp, %i.df                 ; 2 uses
  %i.dh = fsub float %i.de, %i.bl
  %i.di = fadd float %i.dh, %i.bn                 ; 2 uses
  %i.dj = fadd float %i.de, %i.bl
  %i.dk = fsub float %i.dj, %i.bp                 ; 2 uses
  %i.dl = fsub float %i.dk, %i.ci
  %i.dm = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.dn = extractelement <4 x float> %i.dd, i64 1 ; 2 uses
  %i.do = fadd float %i.dn, %i.ce
  %i.dp = insertelement <4 x float> %i.dm, float %i.do, i64 1
  %i.dq = fsub float %i.di, %i.ck
  %i.dr = insertelement <4 x float> %i.dp, float %i.dq, i64 2
  %i.ds = fadd float %i.dg, %i.cg
  %.sroa.0139.12.vec.insert = insertelement <4 x float> %i.dr, float %i.ds, i64 3 ; 2 uses
  %i.dt = fsub float %i.dg, %i.cg
  %i.du = insertelement <4 x float> %i.bu, float %i.dt, i64 1
  %i.dv = fadd float %i.di, %i.ck
  %i.dw = insertelement <4 x float> %i.du, float %i.dv, i64 2
  %i.dx = fsub float %i.dn, %i.ce
  %.sroa.14.28.vec.insert = insertelement <4 x float> %i.dw, float %i.dx, i64 3 ; 2 uses
  %i.dy = fadd float %i.dk, %i.ci                 ; 2 uses
  %i.dz = fadd float %i.cl, %i.ct
  %i.ea = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.eb = extractelement <4 x float> %i.dd, i64 2 ; 3 uses
  %i.ec = fsub float %i.eb, %i.cp
  %i.ed = fadd float %i.cr, %i.ec                 ; 2 uses
  %i.ee = fsub float %i.eb, %i.cn
  %i.ef = fadd float %i.ee, %i.cp                 ; 2 uses
  %i.eg = fadd float %i.eb, %i.cn
  %i.eh = fsub float %i.eg, %i.cr                 ; 2 uses
  %i.ei = fmul float %i.at, f0x3F5DB3D7           ; 3 uses
  %i.ej = fadd float %i.bg, %i.af
  %i.ek = fmul float %i.ej, f0x3F7C1C5C           ; 2 uses
  %i.el = fsub float %i.af, %i.t
  %i.em = fmul float %i.el, f0x3EAF1D44           ; 2 uses
  %i.en = fadd float %i.bg, %i.t
  %i.eo = fmul float %i.en, f0x3F248DBB           ; 2 uses
  %i.ep = fsub float %i.bg, %i.af
  %i.eq = fsub float %i.ep, %i.t
  %i.er = fmul float %i.eq, f0x3F5DB3D7           ; 2 uses
  %i.es = fsub float %i.ek, %i.ei
  %i.et = fsub float %i.es, %i.eo                 ; 2 uses
  %i.eu = fsub float %i.em, %i.ei
  %i.ev = fsub float %i.eu, %i.ek                 ; 2 uses
  %i.ew = fadd float %i.ei, %i.em
  %i.ex = fsub float %i.ew, %i.eo                 ; 2 uses
  %i.ey = fsub float %i.eh, %i.ev
  %i.ez = insertelement <4 x float> poison, float %i.ey, i64 0
  %i.fa = extractelement <4 x float> %i.dd, i64 3 ; 2 uses
  %i.fb = fadd float %i.fa, %i.er
  %i.fc = fsub float %i.ef, %i.ex
  %i.fd = fadd float %i.ed, %i.et
  %i.fe = fsub float %i.ed, %i.et
  %i.ff = fadd float %i.ef, %i.ex
  %i.fg = fsub float %i.fa, %i.er
  %i.fh = fadd float %i.eh, %i.ev                 ; 2 uses
  %i.fi = fneg float %i.fb
  %i.fj = insertelement <4 x float> %i.ez, float %i.fi, i64 1
  %i.fk = insertelement <4 x float> %i.fj, float %i.fc, i64 2
  %i.fl = fneg float %i.fd
  %.sroa.0.12.vec.insert119 = insertelement <4 x float> %i.fk, float %i.fl, i64 3 ; 2 uses
  %i.fm = fneg float %i.fe
  %i.fn = insertelement <4 x float> %i.ea, float %i.fm, i64 1
  %i.fo = insertelement <4 x float> %i.fn, float %i.ff, i64 2
  %i.fp = fneg float %i.fg
  %.sroa.17.28.vec.insert138 = insertelement <4 x float> %i.fo, float %i.fp, i64 3 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.fr = load <4 x float>, ptr %.096102, align 1, !tbaa !119 ; 2 uses
  %i.fs = load <4 x float>, ptr %2, align 1, !tbaa !119 ; 2 uses
  %i.ft = load <4 x float>, ptr %i.a, align 1, !tbaa !119 ; 2 uses
  %i.fu = fmul <4 x float> %.sroa.0139.12.vec.insert, <float f0x3F2CF37B, float f0x3F1BD7CA, float f0x3F098C78, float f0x3EEC6A50>
  %i.fv = fmul <4 x float> %.sroa.0.12.vec.insert119, <float f0x3F3CBE35, float f0x3F4B1934, float f0x3F57E881, float f0x3F631324>
  %i.fw = fadd <4 x float> %i.fv, %i.fu           ; 2 uses
  %i.fx = fmul <4 x float> %.sroa.0139.12.vec.insert, <float f0x3F3CBE35, float f0x3F4B1934, float f0x3F57E881, float f0x3F631324>
  %i.fy = fmul <4 x float> %.sroa.0.12.vec.insert119, <float f0x3F2CF37B, float f0x3F1BD7CA, float f0x3F098C78, float f0x3EEC6A50>
  %i.fz = fsub <4 x float> %i.fx, %i.fy
  store <4 x float> %i.fz, ptr %.096102, align 1, !tbaa !119
  %i.ga = fmul <4 x float> %i.fr, %i.fs
  %i.gb = fmul <4 x float> %i.fw, %i.ft
  %i.gc = fsub <4 x float> %i.ga, %i.gb
  store <4 x float> %i.gc, ptr %.0103, align 4, !tbaa !119
  %i.gd = fmul <4 x float> %i.fr, %i.ft
  %i.ge = fmul <4 x float> %i.fs, %i.fw
  %i.gf = fadd <4 x float> %i.gd, %i.ge
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.gg, ptr %i.fq, align 4, !tbaa !119
  %i.gh = getelementptr inbounds nuw i8, ptr %.096102, i64 16 ; 2 uses
  %i.gi = load <4 x float>, ptr %i.gh, align 1, !tbaa !119 ; 2 uses
  %i.gj = load <4 x float>, ptr %i.d, align 1, !tbaa !119 ; 2 uses
  %i.gk = load <4 x float>, ptr %i.e, align 1, !tbaa !119 ; 2 uses
  %i.gl = fmul <4 x float> %.sroa.14.28.vec.insert, <float f0x3EC3EF15, float f0x3E99F61C, float f0x3E5DA258, float f0x3E05A8A8>
  %i.gm = fmul <4 x float> %.sroa.17.28.vec.insert138, <float f0x3F6C835E, float f0x3F7426CB, float 9.762960e-01, float f0x3F7DCF55>
  %i.gn = fadd <4 x float> %i.gm, %i.gl           ; 2 uses
  %i.go = fmul <4 x float> %.sroa.14.28.vec.insert, <float f0x3F6C835E, float f0x3F7426CB, float 9.762960e-01, float f0x3F7DCF55>
  %i.gp = fmul <4 x float> %.sroa.17.28.vec.insert138, <float f0x3EC3EF15, float f0x3E99F61C, float f0x3E5DA258, float f0x3E05A8A8>
  %i.gq = fsub <4 x float> %i.go, %i.gp
  store <4 x float> %i.gq, ptr %i.gh, align 1, !tbaa !119
  %i.gr = fmul <4 x float> %i.gi, %i.gj
  %i.gs = fmul <4 x float> %i.gn, %i.gk
  %i.gt = fsub <4 x float> %i.gr, %i.gs
  store <4 x float> %i.gt, ptr %i.p, align 4, !tbaa !119
  %i.gu = fmul <4 x float> %i.gi, %i.gk
  %i.gv = fmul <4 x float> %i.gj, %i.gn
  %i.gw = fadd <4 x float> %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %.0103, i64 40
  %i.gy = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.gy, ptr %i.gx, align 4, !tbaa !119
  %i.gz = getelementptr inbounds nuw i8, ptr %.096102, i64 32 ; 2 uses
  %i.ha = fmul float %i.fh, f0x3F7FC1A0
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.dy, float f0x3D32AA3C, float %i.ha) ; 2 uses
  %i.hc = fmul float %i.fh, f0xBD32AA3C
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.dy, float f0x3F7FC1A0, float %i.hc)
  %i.he = getelementptr inbounds nuw i8, ptr %.0103, i64 36
  %i.hf = load float, ptr %i.gz, align 4, !tbaa !349 ; 2 uses
  store float %i.hd, ptr %i.gz, align 4, !tbaa !349
  %i.hg = load float, ptr %i.b, align 4, !tbaa !349
  %i.hh = load float, ptr %i.c, align 4, !tbaa !349
  %i.hi = fneg float %i.hh
  %i.hj = fmul float %i.hb, %i.hi
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.hg, float %i.hj)
  store float %i.hk, ptr %i.ai, align 4, !tbaa !349
  %i.hl = load float, ptr %i.c, align 4, !tbaa !349
  %i.hm = load float, ptr %i.b, align 4, !tbaa !349
  %i.hn = fmul float %i.hb, %i.hm
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.hl, float %i.hn)
  store float %i.ho, ptr %i.he, align 4, !tbaa !349
  %i.hp = add nuw nsw i32 %.098101, 1             ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.0103, i64 72
  %i.hr = getelementptr inbounds nuw i8, ptr %.096102, i64 36
  %exitcond.not = icmp eq i32 %i.hp, %3
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !3280

bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ma_dr_mp3d_synth_pair(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 2)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3584
  %i.b = load float, ptr %i.a, align 4, !tbaa !349
  %i.c = load float, ptr %2, align 4, !tbaa !349
  %i.d = fsub float %i.b, %i.c
  %i.e = fmul float %i.d, 2.900000e+01
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.g = load float, ptr %i.f, align 4, !tbaa !349
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 3328
  %i.i = load float, ptr %i.h, align 4, !tbaa !349
  %i.j = fadd float %i.g, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float 2.130000e+02, float %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3072
  %i.m = load float, ptr %i.l, align 4, !tbaa !349
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.o = load float, ptr %i.n, align 4, !tbaa !349
  %i.p = fsub float %i.m, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 4.590000e+02, float %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.s = load float, ptr %i.r, align 4, !tbaa !349
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2816
  %i.u = load float, ptr %i.t, align 4, !tbaa !349
  %i.v = fadd float %i.s, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 2.037000e+03, float %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 2560
  %i.y = load float, ptr %i.x, align 4, !tbaa !349
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.aa = load float, ptr %i.z, align 4, !tbaa !349
  %i.ab = fsub float %i.y, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 5.153000e+03, float %i.w)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !349
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2304
  %i.ag = load float, ptr %i.af, align 4, !tbaa !349
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 6.574000e+03, float %i.ac)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2048
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !349
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1536
  %i.am = load float, ptr %i.al, align 4, !tbaa !349
  %i.an = fsub float %i.ak, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float 3.748900e+04, float %i.ai)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1792
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !349
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 7.503800e+04, float %i.ao) ; 3 uses
  %i.as = fcmp ult float %i.ar, 3.276650e+04
  br i1 %i.as, label %bb.b, label %ma_dr_mp3d_scale_pcm.exit

bb.b:                                             ; preds = %bb.a
  %i.at = fcmp ugt float %i.ar, -3.276750e+04
  br i1 %i.at, label %bb.c, label %ma_dr_mp3d_scale_pcm.exit

bb.c:                                             ; preds = %bb.b
  %i.au = fadd float %i.ar, 5.000000e-01
  %i.av = fptosi float %i.au to i16               ; 2 uses
  %.lobit.neg.i = ashr i16 %i.av, 15
  %i.aw = add i16 %.lobit.neg.i, %i.av
  br label %ma_dr_mp3d_scale_pcm.exit

ma_dr_mp3d_scale_pcm.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i16 [ %i.aw, %bb.c ], [ 32767, %bb.a ], [ -32768, %bb.b ]
  store i16 %.0.i, ptr %0, align 2, !tbaa !122
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 3592
  %i.az = load float, ptr %i.ay, align 4, !tbaa !349
  %i.ba = fmul float %i.az, 1.040000e+02
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 3080
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !349
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float 1.567000e+03, float %i.ba)
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 2568
  %i.bf = load float, ptr %i.be, align 4, !tbaa !349
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float 9.727000e+03, float %i.bd)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 2056
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !349
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float 6.401900e+04, float %i.bg)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 1544
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !349
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float -9.975000e+03, float %i.bj)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !349
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float -4.500000e+01, float %i.bm)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.br = load float, ptr %i.bq, align 4, !tbaa !349
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float 1.460000e+02, float %i.bp)
  %i.bt = load float, ptr %i.ax, align 4, !tbaa !349
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float -5.000000e+00, float %i.bs) ; 3 uses
  %i.bv = fcmp ult float %i.bu, 3.276650e+04
  br i1 %i.bv, label %bb.d, label %ma_dr_mp3d_scale_pcm.exit44

bb.d:                                             ; preds = %ma_dr_mp3d_scale_pcm.exit
  %i.bw = fcmp ugt float %i.bu, -3.276750e+04
  br i1 %i.bw, label %bb.e, label %ma_dr_mp3d_scale_pcm.exit44

bb.e:                                             ; preds = %bb.d
  %i.bx = fadd float %i.bu, 5.000000e-01
  %i.by = fptosi float %i.bx to i16               ; 2 uses
  %.lobit.neg.i43 = ashr i16 %i.by, 15
  %i.bz = add i16 %.lobit.neg.i43, %i.by
  br label %ma_dr_mp3d_scale_pcm.exit44

ma_dr_mp3d_scale_pcm.exit44:                      ; preds = %ma_dr_mp3d_scale_pcm.exit, %bb.d, %bb.e
  %.0.i42 = phi i16 [ %i.bz, %bb.e ], [ 32767, %ma_dr_mp3d_scale_pcm.exit ], [ -32768, %bb.d ]
  %i.ca = shl nsw i32 %1, 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cb
  store i16 %.0.i42, ptr %i.cc, align 2, !tbaa !122
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #57

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @ma_dr_mp3__realloc_default(ptr noundef captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #42 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #69
  ret ptr %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #64

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #33
end_hunk_4
begin_hunk_5_@llvm.bswap.v2i64
!3078 = !{ptr @ma_paged_audio_buffer_data_uninit, ptr @ma_free}
!3079 = !{ptr @ma_paged_audio_buffer_data_free_page, ptr @ma_free}
!3080 = distinct !{!3080, !"ma_resource_manager__init_decoder_config"}
!3081 = distinct !{!3081, !3080, !"ma_resource_manager__init_decoder_config: argument 0"}
!3082 = !{!3081}
!3083 = !{!"sched_param", !115, i64 0}
!3084 = !{!3083, !115, i64 0}
!3085 = distinct !{null}
!3086 = distinct !{ptr @ma_context_get_default_device_index__pulse, null}
!3087 = distinct !{ptr @ma_context_get_default_device_index__pulse, null, null, null}
!3088 = distinct !{ptr @ma_context_get_default_device_index__pulse, null, null}
!3089 = distinct !{ptr @ma_context_get_default_device_index__pulse, null}
!3090 = distinct !{ptr @ma_context_get_default_device_index__pulse, null, null, null}
!3091 = distinct !{ptr @ma_context_get_default_device_index__pulse, null, null}
!3092 = distinct !{null}
!3093 = distinct !{!3093, !"ma_device__pa_buffer_attr_new"}
!3094 = distinct !{!3094, !3093, !"ma_device__pa_buffer_attr_new: argument 0"}
!3095 = distinct !{!3095, !120}
!3096 = distinct !{!3096, !120}
!3097 = !{i64 0, i64 4, !118, i64 4, i64 4, !118, i64 8, i64 1, !119}
!3098 = !{i64 0, i64 1, !119, i64 4, i64 128, !119}
!3099 = !{!1144, !114, i64 8}
!3100 = !{!300, !115, i64 240}
!3101 = !{!1144, !115, i64 4}
!3102 = !{!1144, !115, i64 0}
!3103 = !{!3094}
!3104 = !{!300, !184, i64 232}
!3105 = !{ptr @ma_device__pa_stream_new__pulse}
!3106 = !{!300, !184, i64 224}
!3107 = distinct !{!3107, !120}
!3108 = !{!1139, !115, i64 28}
!3109 = !{!1139, !115, i64 32}
!3110 = distinct !{null, null}
!3111 = distinct !{!3111, !120}
!3112 = distinct !{!3112, !120}
!3113 = distinct !{null}
!3114 = distinct !{!3114, !120}
!3115 = distinct !{!3115, !120}
!3116 = !{!"p2 omnipotent char", !234, i64 0}
!3117 = !{!3116, !3116, i64 0}
!3118 = distinct !{!3118, !120}
!3119 = distinct !{!3119, !120}
!3120 = distinct !{!3120, !120}
!3121 = distinct !{!3121, !120}
!3122 = !{i64 0, i64 256, !119}
!3123 = distinct !{null}
!3124 = distinct !{!3124, !120}
!3125 = distinct !{!3125, !120}
!3126 = distinct !{!3126, !120}
!3127 = distinct !{!3127, !120}
!3128 = distinct !{!3128, !120}
!3129 = !{!300, !115, i64 220}
!3130 = !{!300, !115, i64 216}
!3131 = !{!300, !115, i64 212}
!3132 = !{!"", !115, i64 0, !114, i64 4}
!3133 = !{!3132, !115, i64 0}
!3134 = !{!1167, !121, i64 4}
!3135 = distinct !{!3135, !120}
!3136 = distinct !{!3136, !120}
!3137 = distinct !{!3137, !120}
!3138 = distinct !{!3138, !120}
!3139 = distinct !{!3139, !120}
!3140 = !{!"p1 _ZTS16ma_jack_client_t", !123, i64 0}
!3141 = !{!3140, !3140, i64 0}
!3142 = distinct !{!3142, !120}
!3143 = distinct !{!3143, !120}
!3144 = distinct !{!3144, !120}
!3145 = distinct !{!3145, !368}
!3146 = distinct !{!3146, !120}
!3147 = distinct !{!3147, !120}
!3148 = distinct !{!3148, !368}
!3149 = distinct !{!3149, !120}
!3150 = distinct !{!3150, !120, !346, !347}
!3151 = distinct !{!3151, !120, !347, !346}
!3152 = distinct !{null}
!3153 = distinct !{!3153, !120}
!3154 = !{!205, !114, i64 400}
!3155 = !{!205, !114, i64 397}
!3156 = distinct !{!3156, !"ma_resampling_backend_get_config__linear"}
!3157 = distinct !{!3157, !3156, !"ma_resampling_backend_get_config__linear: argument 0"}
!3158 = !{!3157}
!3159 = distinct !{!3159, !"ma_resampling_backend_get_config__linear"}
!3160 = distinct !{!3160, !3159, !"ma_resampling_backend_get_config__linear: argument 0"}
!3161 = !{!3160}
!3162 = !{ptr @ma_linear_resampler_uninit, ptr @ma_free}
!3163 = distinct !{!3163, !120}
!3164 = distinct !{!3164, !120}
!3165 = distinct !{!3165, !120}
!3166 = distinct !{!3166, !120}
!3167 = distinct !{!3167, !120}
!3168 = distinct !{!3168, !120}
!3169 = distinct !{!3169, !120}
!3170 = distinct !{!3170, !120}
!3171 = distinct !{!3171, !120}
!3172 = !{!598, !115, i64 80}
!3173 = distinct !{ptr @ma_flac_uninit, ptr @ma_dr_flac_close, null}
!3174 = distinct !{ptr @ma_mp3_uninit, ptr @ma_dr_mp3_uninit, null}
!3175 = !{ptr @ma_mp3_uninit, ptr @ma_free}
!3176 = !{ptr @ma_vfs_or_default_tell, ptr @ma_vfs_tell}
!3177 = distinct !{null}
!3178 = distinct !{null}
!3179 = distinct !{null}
!3180 = distinct !{!3180, !120}
!3181 = distinct !{!3181, !120}
!3182 = distinct !{!3182, !"LVerDomain"}
!3183 = distinct !{!3183, !3182}
!3184 = distinct !{!3184, !3182}
!3185 = distinct !{!3185, !120, !346, !347}
!3186 = distinct !{!3186, !368}
!3187 = distinct !{!3187, !120, !346}
!3188 = !{!3183}
!3189 = !{!3184}
!3190 = distinct !{!3190, !120, !346, !347}
!3191 = distinct !{!3191, !368}
!3192 = distinct !{!3192, !120, !346, !347}
!3193 = distinct !{!3193, !368}
!3194 = distinct !{!3194, !120, !346}
!3195 = distinct !{!3195, !120, !346}
!3196 = distinct !{!3196, !120, !346, !347}
!3197 = distinct !{!3197, !120, !347, !346}
!3198 = !{!1020, !193, i64 396}
!3199 = !{!1020, !193, i64 400}
!3200 = !{!1020, !193, i64 828}
!3201 = !{ptr @ma_resampler_process_pcm_frames}
!3202 = !{}
!3203 = !{!1020, !115, i64 376}
!3204 = distinct !{null, null}
!3205 = distinct !{!3205, !120}
!3206 = distinct !{null, null}
!3207 = distinct !{null, null}
!3208 = distinct !{!3208, !120}
!3209 = !{!1081, !184, i64 48}
!3210 = distinct !{!3210, !120}
!3211 = distinct !{null, null}
!3212 = distinct !{null, null, null}
!3213 = distinct !{!3213, !120}
!3214 = distinct !{!3214, !120}
!3215 = distinct !{null, null, null}
!3216 = distinct !{null, null, null}
!3217 = distinct !{null, null, null}
!3218 = distinct !{null, null}
!3219 = distinct !{!3219, !120}
!3220 = distinct !{null, null}
!3221 = distinct !{!3221, !120}
!3222 = distinct !{!3222, !120}
!3223 = distinct !{!3223, !120}
!3224 = distinct !{!3224, !120}
!3225 = distinct !{!3225, !120}
!3226 = distinct !{null}
!3227 = !{!666, !153, i64 248}
!3228 = distinct !{null, null}
!3229 = !{ptr @ma_dr_flac__on_seek_ogg}
!3230 = distinct !{!3230, !120, !346, !347}
!3231 = distinct !{!3231, !120, !347, !346}
!3232 = distinct !{!3232, !120}
!3233 = distinct !{!3233, !120}
!3234 = distinct !{!3234, !120}
!3235 = distinct !{!3235, !120}
!3236 = distinct !{!3236, !120}
!3237 = !{!713, !115, i64 8}
!3238 = !{!713, !163, i64 0}
!3239 = !{!713, !121, i64 16}
!3240 = !{!713, !115, i64 12}
!3241 = !{!713, !114, i64 18}
!3242 = !{!713, !114, i64 19}
!3243 = !{!713, !114, i64 20}
!3244 = !{!1093, !114, i64 4299}
!3245 = !{!1093, !115, i64 4292}
!3246 = !{!1093, !114, i64 4298}
!3247 = !{ptr @ma_dr_flac__read_streaminfo}
!3248 = !{i64 0, i64 16, !119}
!3249 = distinct !{!3249, !120, !346, !347}
!3250 = distinct !{!3250, !120, !347, !346}
!3251 = !{i64 0, i64 2, !122, i64 2, i64 2, !122, i64 4, i64 4, !118, i64 8, i64 4, !118, i64 12, i64 4, !118, i64 16, i64 1, !119, i64 17, i64 1, !119, i64 24, i64 8, !164, i64 32, i64 16, !119}
!3252 = !{!1200, !121, i64 0}
!3253 = !{!1200, !115, i64 4}
!3254 = !{!1200, !115, i64 8}
!3255 = distinct !{!3255, !120}
!3256 = !{!719, !114, i64 4}
!3257 = distinct !{!3257, !120, !346, !347}
!3258 = distinct !{!3258, !120, !347, !346}
!3259 = distinct !{null}
!3260 = distinct !{!3260, !120}
!3261 = !{!719, !115, i64 24}
!3262 = distinct !{!3262, !120}
!3263 = distinct !{null}
!3264 = distinct !{!3264, !120, !346, !347}
!3265 = distinct !{!3265, !368}
!3266 = distinct !{!3266, !120, !346}
!3267 = !{!715, !153, i64 32}
!3268 = !{!715, !123, i64 0}
!3269 = !{!715, !163, i64 40}
!3270 = distinct !{!3270, !120}
!3271 = distinct !{!3271, !120}
!3272 = distinct !{!3272, !120}
!3273 = distinct !{!3273, !120}
!3274 = distinct !{!3274, !120}
!3275 = distinct !{!3275, !120}
!3276 = distinct !{!3276, !120}
!3277 = distinct !{!3277, !120}
!3278 = distinct !{!3278, !120}
!3279 = !{ptr @ma_dr_flac__seek_to_byte}
!3280 = distinct !{!3280, !120}
end_hunk_5
