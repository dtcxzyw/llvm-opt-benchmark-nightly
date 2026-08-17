inline.NumInlined: 18
inline.NumDeleted: 8
begin_hunk_0_@dca_parse:bb.a
  store ptr null, ptr %2, align 8, !tbaa !22
  store i32 0, ptr %3, align 4, !tbaa !23
  %i.ir = load i32, ptr %i.c, align 4, !tbaa !23
  br label %bb.bv

bb.am:                                            ; preds = %dca_find_frame_end.exit
  %i.is = load i32, ptr %i.c, align 4, !tbaa !23  ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !29 ; 3 uses
  %i.iv = icmp ugt i32 %i.is, %i.iu
  %.pre240.pre = load ptr, ptr %i.b, align 8, !tbaa !22 ; 2 uses
  br i1 %i.iv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.iw = zext i32 %i.iu to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %.pre240.pre, i64 %i.iw ; 2 uses
  store ptr %i.ix, ptr %i.b, align 8, !tbaa !22
  %i.iy = sub nuw i32 %i.is, %i.iu                ; 2 uses
  store i32 %i.iy, ptr %i.c, align 4, !tbaa !23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pre240 = phi ptr [ %i.ix, %bb.an ], [ %.pre240.pre, %bb.am ]
  %i.iz = phi i32 [ %i.iy, %bb.an ], [ %i.is, %bb.am ]
  store i32 0, ptr %i.it, align 4, !tbaa !29
  br label %bb.ap

bb.ap:                                            ; preds = %bb.a, %bb.ao
  %i.ja = phi i32 [ %i.iz, %bb.ao ], [ %5, %bb.a ] ; 4 uses
  %i.jb = phi ptr [ %.pre240, %bb.ao ], [ %4, %bb.a ] ; 6 uses
  %.0 = phi i32 [ %.0.i, %bb.ao ], [ %5, %bb.a ]
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(82) %i.a, i8 0, i64 82, i1 false)
  %i.je = icmp slt i32 %i.ja, 18
  br i1 %i.je, label %bb.bt, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jf = load i32, ptr %i.jb, align 1, !tbaa !28
  %i.jg = icmp eq i32 %i.jf, 622876772
  br i1 %i.jg, label %bb.ar, label %bb.bf

bb.ar:                                            ; preds = %bb.aq
  %i.jh = call i32 @ff_dca_exss_parse(ptr noundef nonnull %i.jd, ptr noundef nonnull %i.jb, i32 noundef %i.ja) #8
  %i.ji = icmp slt i32 %i.jh, 0
  br i1 %i.ji, label %bb.bt, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jj = getelementptr inbounds nuw i8, ptr %i.d, i64 196
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !34 ; 2 uses
  %i.jl = and i32 %i.jk, 256
  %.not67.i = icmp eq i32 %i.jl, 0
  br i1 %.not67.i, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jm = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !36
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds i8, ptr %i.jb, i64 %i.jo ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !37 ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.jr, 268435455
  %i.js = shl nuw nsw i32 %i.jr, 3
  %i.jt = select i1 %or.cond.i.i, i32 -8, i32 %i.js ; 2 uses
  %or.cond.i.i.i = icmp ugt i32 %i.jt, 2147483134
  %i.ju = add nuw nsw i32 %i.jt, 8                ; 3 uses
  br i1 %or.cond.i.i.i, label %bb.bt, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jv = load i32, ptr %i.jp, align 1, !tbaa !28
  %i.jw = and i32 %i.jv, 65535
  %i.jx = call i32 @llvm.bswap.i32(i32 %i.jw)
  %i.jy = call i32 @llvm.umin.i32(i32 %i.ju, i32 16) ; 2 uses
  %i.jz = lshr exact i32 %i.jy, 3
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 1, !tbaa !28
  %i.kd = call i32 @llvm.bswap.i32(i32 %i.kc)
  %i.ke = lshr i32 %i.kd, 16
  %i.kf = or disjoint i32 %i.ke, %i.jx
  %.not71.i = icmp eq i32 %i.kf, 176167201
  br i1 %.not71.i, label %bb.av, label %bb.bt

bb.av:                                            ; preds = %bb.au
  %i.kg = add nuw nsw i32 %i.jy, 16
  %i.kh = call i32 @llvm.umin.i32(i32 %i.ju, i32 %i.kg) ; 3 uses
  %i.ki = lshr exact i32 %i.kh, 3
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 1, !tbaa !28
  %i.km = call i32 @llvm.bswap.i32(i32 %i.kl)
  %i.kn = and i32 %i.kh, 7
  %i.ko = shl i32 %i.km, %i.kn
  %i.kp = lshr i32 %i.ko, 24
  %trunc106.i = trunc nuw i32 %i.kp to i8
  switch i8 %trunc106.i, label %bb.bt [
    i8 2, label %bb.aw
    i8 1, label %._crit_edge.i28
  ]

._crit_edge.i28:                                  ; preds = %bb.av
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %.pre.i29 = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.kq = add nuw nsw i32 %i.kh, 8
  %i.kr = call i32 @llvm.umin.i32(i32 %i.ju, i32 %i.kq) ; 2 uses
  %i.ks = lshr i32 %i.kr, 3
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 1, !tbaa !28
  %i.kw = call i32 @llvm.bswap.i32(i32 %i.kv)
  %i.kx = and i32 %i.kr, 7
  %i.ky = shl i32 %i.kw, %i.kx
  %i.kz = lshr i32 %i.ky, 24                      ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  store i32 %i.kz, ptr %i.la, align 8, !tbaa !21
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge.i28
  %i.lb = phi i32 [ %.pre.i29, %._crit_edge.i28 ], [ %i.kz, %bb.aw ] ; 2 uses
  %i.lc = icmp ugt i32 %i.lb, 15
  br i1 %i.lc, label %bb.bt, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ld = zext nneg i32 %i.lb to i64              ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_sampling_freqs, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !23
  %i.lg = getelementptr inbounds nuw i8, ptr @ff_dca_freq_ranges, i64 %i.ld
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !28
  %i.li = zext nneg i8 %i.lh to i32
  %i.lj = shl i32 1024, %i.li
  br label %.sink.split113.i

bb.az:                                            ; preds = %bb.as
  %i.lk = and i32 %i.jk, 512
  %.not68.i = icmp eq i32 %i.lk, 0
  br i1 %.not68.i, label %bb.bt, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ll = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !38
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds i8, ptr %i.jb, i64 %i.ln ; 6 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.d, i64 244
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !39 ; 2 uses
  %or.cond.i72.i = icmp ugt i32 %i.lq, 268435455
  %i.lr = shl nuw nsw i32 %i.lq, 3
  %i.ls = select i1 %or.cond.i72.i, i32 -8, i32 %i.lr ; 2 uses
  %or.cond.i.i73.i = icmp ugt i32 %i.ls, 2147483134
  %i.lt = add nuw nsw i32 %i.ls, 8                ; 8 uses
  br i1 %or.cond.i.i73.i, label %bb.bt, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lu = load i32, ptr %i.lo, align 1, !tbaa !28
  %i.lv = and i32 %i.lu, 65535
  %i.lw = call i32 @llvm.bswap.i32(i32 %i.lv)
  %i.lx = call i32 @llvm.umin.i32(i32 %i.lt, i32 16) ; 2 uses
  %i.ly = lshr exact i32 %i.lx, 3
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 1, !tbaa !28
  %i.mc = call i32 @llvm.bswap.i32(i32 %i.mb)
  %i.md = lshr i32 %i.mc, 16
  %i.me = or disjoint i32 %i.md, %i.lw
  %.not69.i = icmp eq i32 %i.me, 1101174087
  br i1 %.not69.i, label %bb.bc, label %bb.bt

bb.bc:                                            ; preds = %bb.bb
  %i.mf = add nuw nsw i32 %i.lx, 16
  %i.mg = call i32 @llvm.umin.i32(i32 %i.lt, i32 %i.mf) ; 3 uses
  %i.mh = lshr exact i32 %i.mg, 3
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 1, !tbaa !28
  %i.ml = call i32 @llvm.bswap.i32(i32 %i.mk)
  %i.mm = and i32 %i.mg, 7
  %i.mn = shl i32 %i.ml, %i.mm
  %.not70.i = icmp ult i32 %i.mn, 268435456
  br i1 %.not70.i, label %bb.bd, label %bb.bt

bb.bd:                                            ; preds = %bb.bc
  %i.mo = or disjoint i32 %i.mg, 4
  %i.mp = call i32 @llvm.umin.i32(i32 %i.lt, i32 %i.mo)
  %i.mq = add nuw nsw i32 %i.mp, 8
  %i.mr = call i32 @llvm.umin.i32(i32 %i.lt, i32 %i.mq) ; 3 uses
  %i.ms = lshr i32 %i.mr, 3
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 1, !tbaa !28
  %i.mw = call i32 @llvm.bswap.i32(i32 %i.mv)
  %i.mx = and i32 %i.mr, 7
  %i.my = shl i32 %i.mw, %i.mx
  %i.mz = lshr i32 %i.my, 27
  %i.na = add nuw nsw i32 %i.mr, 5
  %i.nb = call i32 @llvm.umin.i32(i32 %i.lt, i32 %i.na) ; 2 uses
  %i.nc = add nuw nsw i32 %i.mz, 1
  %i.nd = sub nsw i32 %i.lt, %i.nb
  %..i.i.i = call i32 @llvm.smin.i32(i32 range(i32 1, 65537) %i.nc, i32 %i.nd)
  %i.ne = add nuw nsw i32 %i.nb, 4
  %i.nf = add nsw i32 %i.ne, %..i.i.i
  %i.ng = call i32 @llvm.umin.i32(i32 %i.lt, i32 %i.nf) ; 3 uses
  %i.nh = lshr i32 %i.ng, 3
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 1, !tbaa !28
  %i.nl = call i32 @llvm.bswap.i32(i32 %i.nk)
  %i.nm = and i32 %i.ng, 7
  %i.nn = shl i32 %i.nl, %i.nm
  %i.no = lshr i32 %i.nn, 28
  %i.np = add nuw nsw i32 %i.ng, 4
  %i.nq = call i32 @llvm.umin.i32(i32 %i.lt, i32 %i.np) ; 2 uses
  %i.nr = lshr i32 %i.nq, 3
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 1, !tbaa !28
  %i.nv = call i32 @llvm.bswap.i32(i32 %i.nu)
  %i.nw = and i32 %i.nq, 7
  %i.nx = shl i32 %i.nv, %i.nw
  %i.ny = lshr i32 %i.nx, 28
  %i.nz = add nuw nsw i32 %i.ny, %i.no            ; 2 uses
  %i.oa = icmp samesign ugt i32 %i.nz, 24
  br i1 %i.oa, label %bb.bt, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ob = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !40 ; 2 uses
  %i.od = icmp sgt i32 %i.oc, 96000
  %i.oe = select i1 %i.od, i32 2, i32 1
  %i.of = shl nuw nsw i32 %i.oe, %i.nz
  br label %.sink.split113.i

bb.bf:                                            ; preds = %bb.aq
  %i.og = call i32 @avpriv_dca_convert_bitstream(ptr noundef nonnull %i.jb, i32 noundef 18, ptr noundef nonnull %i.a, i32 noundef 18) #8 ; 2 uses
  %i.oh = icmp slt i32 %i.og, 0
  br i1 %i.oh, label %bb.bt, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.oi = call i32 @avpriv_dca_parse_core_frame_header(ptr noundef nonnull %6, ptr noundef nonnull %i.a, i32 noundef %i.og) #8
  %i.oj = icmp slt i32 %i.oi, 0
  br i1 %i.oj, label %bb.bt, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ok = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !41
  %i.om = zext i8 %i.ol to i32
  %i.on = shl nuw nsw i32 %i.om, 5                ; 7 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %6, i64 7
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !44
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_sample_rates, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !23 ; 7 uses
  %i.ot = load i32, ptr %i.jc, align 4, !tbaa !23
  %.not.i26 = icmp eq i32 %i.ot, -99
  br i1 %.not.i26, label %bb.bi, label %bb.bq

bb.bi:                                            ; preds = %bb.bh
  store i32 20, ptr %i.jc, align 4, !tbaa !23
  %i.ou = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ov = load i8, ptr %i.ou, align 2, !tbaa !45
  %.not63.i = icmp eq i8 %i.ov, 0
  br i1 %.not63.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ow = getelementptr inbounds nuw i8, ptr %6, i64 13
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !46
  switch i8 %i.ox, label %bb.bl [
    i8 0, label %.sink.split.i
    i8 6, label %.sink.split.i
    i8 2, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bk, %bb.bj, %bb.bj
  %.sink.i27 = phi i32 [ 40, %bb.bk ], [ 30, %bb.bj ], [ 30, %bb.bj ]
  store i32 %.sink.i27, ptr %i.jc, align 4, !tbaa !23
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split.i, %bb.bj, %bb.bi
  %i.oy = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !47
  %i.pa = zext i16 %i.oz to i32
  %i.pb = add nuw nsw i32 %i.pa, 3
  %i.pc = and i32 %i.pb, 131068                   ; 3 uses
  %i.pd = add nsw i32 %i.ja, -4
  %i.pe = icmp samesign ult i32 %i.pd, %i.pc
  br i1 %i.pe, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pf = zext nneg i32 %i.pc to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.pf ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 1, !tbaa !28
  %.not64.i = icmp eq i32 %i.ph, 622876772
  br i1 %.not64.i, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.pi = sub nsw i32 %i.ja, %i.pc
  %i.pj = call i32 @ff_dca_exss_parse(ptr noundef nonnull %i.jd, ptr noundef nonnull %i.pg, i32 noundef %i.pi) #8
  %i.pk = icmp slt i32 %i.pj, 0
  br i1 %i.pk, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pl = getelementptr inbounds nuw i8, ptr %i.d, i64 196
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !34 ; 2 uses
  %i.pn = and i32 %i.pm, 512
  %.not65.i = icmp eq i32 %i.pn, 0
  br i1 %.not65.i, label %bb.bp, label %.sink.split113.i

bb.bp:                                            ; preds = %bb.bo
  %i.po = and i32 %i.pm, 224
  %.not66.i = icmp eq i32 %i.po, 0
  br i1 %.not66.i, label %bb.bq, label %.sink.split113.i

.sink.split113.i:                                 ; preds = %bb.ay, %bb.be, %bb.bp, %bb.bo
  %.033 = phi i32 [ %i.on, %bb.bo ], [ %i.on, %bb.bp ], [ %i.lj, %bb.ay ], [ %i.of, %bb.be ]
  %.032 = phi i32 [ %i.os, %bb.bo ], [ %i.os, %bb.bp ], [ %i.lf, %bb.ay ], [ %i.oc, %bb.be ]
  %.sink114.i = phi i32 [ 60, %bb.bo ], [ 50, %bb.bp ], [ 70, %bb.ay ], [ 60, %bb.be ]
  store i32 %.sink114.i, ptr %i.jc, align 4, !tbaa !23
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split113.i, %bb.bp, %bb.bn, %bb.bm, %bb.bl, %bb.bh
  %.134 = phi i32 [ %i.on, %bb.bp ], [ %i.on, %bb.bm ], [ %i.on, %bb.bh ], [ %i.on, %bb.bl ], [ %i.on, %bb.bn ], [ %.033, %.sink.split113.i ]
  %.2 = phi i32 [ %i.os, %bb.bp ], [ %i.os, %bb.bm ], [ %i.os, %bb.bh ], [ %i.os, %bb.bl ], [ %i.os, %bb.bn ], [ %.032, %.sink.split113.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !48 ; 2 uses
  %.not25 = icmp eq i32 %i.pq, 0
  br i1 %.not25, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 %.2, ptr %i.pp, align 8, !tbaa !48
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.pr = phi i32 [ %.2, %bb.br ], [ %i.pq, %bb.bq ]
  %i.ps = sext i32 %.134 to i64
  %i.pt = sext i32 %i.pr to i64
  %i.pu = sext i32 %.2 to i64
  %i.pv = call i64 @av_rescale(i64 noundef %i.ps, i64 noundef %i.pt, i64 noundef %i.pu) #10
  %i.pw = trunc i64 %i.pv to i32
  br label %bb.bu

bb.bt:                                            ; preds = %bb.ap, %bb.ar, %bb.at, %bb.au, %bb.av, %bb.bc, %bb.ax, %bb.bd, %bb.az, %bb.bf, %bb.bg, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sink = phi i32 [ 0, %bb.bt ], [ %i.pw, %bb.bs ]
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %.sink, ptr %i.px, align 8, !tbaa !65
  %i.py = load ptr, ptr %i.b, align 8, !tbaa !22
  store ptr %i.py, ptr %2, align 8, !tbaa !22
  %i.pz = load i32, ptr %i.c, align 4, !tbaa !23
  store i32 %i.pz, ptr %3, align 4, !tbaa !23
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.al
  %.022 = phi i32 [ %.0, %bb.bu ], [ %i.ir, %bb.al ]
  ret i32 %.022
}

declare void @ff_parse_close(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_combine_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @ff_dca_exss_parse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avpriv_dca_convert_bitstream(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avpriv_dca_parse_core_frame_header(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"AVCodecParserContext", !11, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !6, i64 80, !6, i64 84, !7, i64 88, !7, i64 120, !7, i64 152, !6, i64 184, !13, i64 192, !7, i64 200, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !7, i64 248, !13, i64 280, !13, i64 288, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS13AVCodecParser", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !6, i64 48}
!15 = !{!"DCAParseContext", !16, i64 0, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !18, i64 64, !6, i64 264}
!16 = !{!"ParseContext", !17, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 40}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!"DCAExssParser", !19, i64 0, !20, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !7, i64 64, !7, i64 80}
!19 = !{!"p1 _ZTS14AVCodecContext", !11, i64 0}
!20 = !{!"GetBitContext", !17, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!21 = !{!15, !6, i64 264}
!22 = !{!17, !17, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!10, !6, i64 184}
!25 = !{!16, !6, i64 24}
!26 = !{!16, !13, i64 40}
!27 = !{!15, !6, i64 52}
!28 = !{!7, !7, i64 0}
!29 = !{!15, !6, i64 60}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!15, !6, i64 56}
!33 = distinct !{!33, !31}
!34 = !{!35, !6, i64 52}
!35 = !{!"DCAExssAsset", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116}
!36 = !{!35, !6, i64 88}
!37 = !{!35, !6, i64 92}
!38 = !{!35, !6, i64 96}
!39 = !{!35, !6, i64 100}
!40 = !{!35, !6, i64 16}
!41 = !{!42, !7, i64 3}
!42 = !{!"DCACoreFrameHeader", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !43, i64 4, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 22, !7, i64 23, !7, i64 24}
!43 = !{!"short", !7, i64 0}
!44 = !{!42, !7, i64 7}
!45 = !{!42, !7, i64 14}
!46 = !{!42, !7, i64 13}
!47 = !{!42, !43, i64 4}
!48 = !{!49, !6, i64 344}
!49 = !{!"AVCodecContext", !50, i64 0, !6, i64 8, !6, i64 12, !51, i64 16, !6, i64 24, !6, i64 28, !11, i64 32, !52, i64 40, !11, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !17, i64 72, !6, i64 80, !53, i64 84, !53, i64 92, !53, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !53, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !11, i64 184, !11, i64 192, !6, i64 200, !54, i64 204, !54, i64 208, !54, i64 212, !54, i64 216, !54, i64 220, !54, i64 224, !54, i64 228, !54, i64 232, !54, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !55, i64 288, !55, i64 296, !55, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !56, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !11, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !54, i64 428, !54, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !57, i64 456, !13, i64 464, !13, i64 472, !54, i64 480, !54, i64 484, !6, i64 488, !6, i64 492, !17, i64 496, !17, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !58, i64 536, !11, i64 544, !59, i64 552, !59, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !11, i64 672, !11, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !60, i64 728, !17, i64 736, !6, i64 744, !6, i64 748, !17, i64 752, !17, i64 760, !17, i64 768, !61, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !11, i64 816, !13, i64 824, !62, i64 832, !6, i64 840, !63, i64 848, !6, i64 856, !6, i64 860}
!50 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!51 = !{!"p1 _ZTS7AVCodec", !11, i64 0}
!52 = !{!"p1 _ZTS15AVCodecInternal", !11, i64 0}
!53 = !{!"AVRational", !6, i64 0, !6, i64 4}
!54 = !{!"float", !7, i64 0}
!55 = !{!"p1 short", !11, i64 0}
!56 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !11, i64 16}
!57 = !{!"p1 _ZTS10RcOverride", !11, i64 0}
!58 = !{!"p1 _ZTS9AVHWAccel", !11, i64 0}
!59 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!60 = !{!"p1 _ZTS17AVCodecDescriptor", !11, i64 0}
!61 = !{!"p1 _ZTS16AVPacketSideData", !11, i64 0}
!62 = !{!"p1 int", !11, i64 0}
!63 = !{!"p2 _ZTS15AVFrameSideData", !64, i64 0}
!64 = !{!"any p2 pointer", !11, i64 0}
!65 = !{!10, !6, i64 296}
end_hunk_0
