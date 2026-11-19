Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb565_swapped?download=true
inline.NumInlined: 232
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lv_draw_sw_blend_image_to_rgb565_swapped:bb.a
  %narrow302.i = add nuw nsw i16 %i.kl, %i.kj
  %i.km = tail call i16 @llvm.umin.i16(i16 %narrow302.i, i16 63)
  %i.kn = shl nuw nsw i16 %i.km, 5
  %i.ko = or disjoint i16 %i.kn, %spec.select.i18
  %i.kp = and i16 %i.kd, 31
  %i.kq = and i16 %i.kf, 31
  %narrow303.i = add nuw nsw i16 %i.kq, %i.kp
  %i.kr = tail call i16 @llvm.umin.i16(i16 %narrow303.i, i16 31)
  %i.ks = or disjoint i16 %i.ko, %i.kr
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ag
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %.4278325.i, i64 %indvars.iv.i11 ; 2 uses
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !12
  %i.kv = icmp eq i16 %i.ku, 0
  br i1 %i.kv, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %.4283324.i, i64 %indvars.iv.i11 ; 2 uses
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !12
  %i.ky = tail call noundef i16 @llvm.bswap.i16(i16 %i.kx) ; 5 uses
  store i16 %i.ky, ptr %i.kw, align 2, !tbaa !12
  %i.kz = lshr i16 %i.ky, 11
  %i.la = load i16, ptr %i.kt, align 2            ; 3 uses
  %i.lb = lshr i16 %i.la, 11
  %i.lc = sub nsw i16 %i.kz, %i.lb
  %i.ld = tail call i16 @llvm.smax.i16(i16 %i.lc, i16 0)
  %i.le = shl nuw i16 %i.ld, 11
  %i.lf = lshr i16 %i.ky, 5
  %i.lg = and i16 %i.lf, 63
  %i.lh = lshr i16 %i.la, 5
  %i.li = and i16 %i.lh, 63
  %i.lj = sub nsw i16 %i.lg, %i.li
  %i.lk = tail call i16 @llvm.smax.i16(i16 %i.lj, i16 0)
  %i.ll = shl nuw nsw i16 %i.lk, 5
  %i.lm = and i16 %i.ky, 31
  %i.ln = and i16 %i.la, 31
  %i.lo = sub nsw i16 %i.lm, %i.ln
  %i.lp = tail call i16 @llvm.smax.i16(i16 %i.lo, i16 0)
  %i.lq = add nuw i16 %i.le, %i.lp
  %i.lr = add nuw i16 %i.lq, %i.ll
  br label %bb.ao

bb.al:                                            ; preds = %bb.ag
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %.4278325.i, i64 %indvars.iv.i11 ; 2 uses
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !12
  %i.lu = icmp eq i16 %i.lt, -1
  br i1 %i.lu, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.4283324.i, i64 %indvars.iv.i11 ; 2 uses
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !12
  %i.lx = tail call noundef i16 @llvm.bswap.i16(i16 %i.lw) ; 4 uses
  store i16 %i.lx, ptr %i.lv, align 2, !tbaa !12
  %i.ly = load i16, ptr %i.ls, align 2            ; 3 uses
  %i.lz = lshr i16 %i.ly, 11
  %i.ma = lshr i16 %i.lx, 5                       ; 2 uses
  %narrow.i17 = and i16 %i.ma, 1984
  %i.mb = mul nuw i16 %narrow.i17, %i.lz
  %i.mc = and i16 %i.mb, -2048
  %i.md = and i16 %i.ma, 63
  %i.me = lshr i16 %i.ly, 5
  %i.mf = and i16 %i.me, 63
  %narrow299.i = mul nuw nsw i16 %i.mf, %i.md
  %i.mg = lshr i16 %narrow299.i, 1
  %i.mh = and i16 %i.mg, 2016
  %i.mi = and i16 %i.lx, 31
  %i.mj = and i16 %i.ly, 31
  %narrow300.i = mul nuw nsw i16 %i.mj, %i.mi
  %i.mk = lshr i16 %narrow300.i, 5
  %i.ml = or disjoint i16 %i.mk, %i.mc
  %i.mm = or disjoint i16 %i.ml, %i.mh
  br label %bb.ao

bb.an:                                            ; preds = %bb.ag
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %.4283324.i, i64 %indvars.iv.i11 ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !12
  %i.mp = tail call noundef i16 @llvm.bswap.i16(i16 %i.mo) ; 5 uses
  store i16 %i.mp, ptr %i.mn, align 2, !tbaa !12
  %i.mq = lshr i16 %i.mp, 11
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %.4278325.i, i64 %indvars.iv.i11
  %i.ms = load i16, ptr %i.mr, align 2            ; 3 uses
  %i.mt = lshr i16 %i.ms, 11
  %i.mu = sub nsw i16 %i.mq, %i.mt
  %i.mv = tail call i16 @llvm.abs.i16(i16 %i.mu, i1 true)
  %i.mw = shl nuw i16 %i.mv, 11
  %i.mx = lshr i16 %i.mp, 5
  %i.my = and i16 %i.mx, 63
  %i.mz = lshr i16 %i.ms, 5
  %i.na = and i16 %i.mz, 63
  %i.nb = sub nsw i16 %i.my, %i.na
  %i.nc = tail call i16 @llvm.abs.i16(i16 %i.nb, i1 true)
  %i.nd = shl nuw nsw i16 %i.nc, 5
  %i.ne = and i16 %i.mp, 31
  %i.nf = and i16 %i.ms, 31
  %i.ng = sub nsw i16 %i.ne, %i.nf
  %i.nh = tail call i16 @llvm.abs.i16(i16 %i.ng, i1 true)
  %i.ni = add nuw i16 %i.mw, %i.nh
  %i.nj = add nuw i16 %i.ni, %i.nd
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.ai
  %i.nk = phi i16 [ %i.kd, %bb.ai ], [ %i.ky, %bb.ak ], [ %i.lx, %bb.am ], [ %i.mp, %bb.an ]
  %.0262.i = phi i16 [ %i.ks, %bb.ai ], [ %i.lr, %bb.ak ], [ %i.mm, %bb.am ], [ %i.nj, %bb.an ]
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %.4283324.i, i64 %indvars.iv.i11
  br i1 %i.jw, label %.sink.split.i12, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nm = getelementptr inbounds nuw i8, ptr %.2271326.i, i64 %indvars.iv.i11
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !17  ; 2 uses
  br i1 %i.hi, label %.sink.split.i12, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.no = tail call i8 @llvm.umulh.i8(i8 %i.nn, i8 %i.gt)
  br label %.sink.split.i12

.sink.split.i12:                                  ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sink.i13 = phi i8 [ %i.gt, %bb.ao ], [ %i.no, %bb.aq ], [ %i.nn, %bb.ap ]
  %i.np = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0262.i, i16 noundef zeroext %i.nk, i8 noundef zeroext %.sink.i13) #5
  %i.nq = tail call noundef i16 @llvm.bswap.i16(i16 %i.np)
  store i16 %i.nq, ptr %i.nl, align 2, !tbaa !12
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split.i12, %bb.al, %bb.aj, %bb.ah
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %exitcond.not.i15 = icmp eq i64 %indvars.iv.next.i14, %wide.trip.count.i10
  br i1 %exitcond.not.i15, label %._crit_edge.i16, label %bb.ag, !llvm.loop !67

._crit_edge.i16:                                  ; preds = %bb.ar
  %i.nr = getelementptr inbounds nuw i8, ptr %.4283324.i, i64 %i.hj
  %i.ns = getelementptr inbounds nuw i8, ptr %.4278325.i, i64 %i.hk
  %i.nt = getelementptr inbounds i8, ptr %.2271326.i, i64 %i.hl
  %.3272.i = select i1 %i.jw, ptr null, ptr %i.nt
  %i.nu = add nuw nsw i32 %.4327.i, 1             ; 2 uses
  %exitcond355.not.i = icmp eq i32 %i.nu, %i.gr
  br i1 %exitcond355.not.i, label %rgb565_swapped_image_blend.exit, label %.preheader317.i, !llvm.loop !68

bb.as:                                            ; preds = %bb.a
  tail call fastcc void @rgb888_image_blend(ptr noundef nonnull %0, i8 noundef zeroext 3)
  br label %rgb565_swapped_image_blend.exit

bb.at:                                            ; preds = %bb.a
  tail call fastcc void @rgb888_image_blend(ptr noundef nonnull %0, i8 noundef zeroext 4)
  br label %rgb565_swapped_image_blend.exit

bb.au:                                            ; preds = %bb.a
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !19
  %.fr.i = freeze i32 %i.nw                       ; 12 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !20 ; 11 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.oa = load i8, ptr %i.nz, align 8, !tbaa !21  ; 6 uses
  %i.ob = load ptr, ptr %0, align 8, !tbaa !22    ; 6 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !23 ; 5 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !24 ; 5 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !25 ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !26 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !27 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !28
  %i.oo = icmp eq i32 %i.on, 0
  br i1 %i.oo, label %bb.bh, label %.preheader351.i

.preheader351.i:                                  ; preds = %bb.au
  %.not330356.i = icmp sgt i32 %i.ny, 0
  br i1 %.not330356.i, label %.lr.ph361.i, label %rgb565_swapped_image_blend.exit

.lr.ph361.i:                                      ; preds = %.preheader351.i
  %.not329353.i = icmp sgt i32 %.fr.i, 0
  %i.op = zext i8 %i.oa to i32                    ; 2 uses
  %i.oq = icmp ugt i8 %i.oa, -4                   ; 2 uses
  %i.or = icmp ult i8 %i.oa, -3
  %i.os = zext i32 %i.od to i64                   ; 2 uses
  %i.ot = sext i32 %i.oh to i64
  %i.ou = sext i32 %i.ol to i64
  br i1 %.not329353.i, label %.lr.ph.us.preheader.i, label %.lr.ph361.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph361.i
  %wide.trip.count.i28 = zext nneg i32 %.fr.i to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %.4360.us.i = phi i32 [ %i.uf, %._crit_edge.us.i ], [ 0, %.lr.ph.us.preheader.i ]
  %.2297359.us.i = phi ptr [ %.3298.us.i, %._crit_edge.us.i ], [ %i.oj, %.lr.ph.us.preheader.i ] ; 3 uses
  %.4304358.us.i = phi ptr [ %i.ud, %._crit_edge.us.i ], [ %i.of, %.lr.ph.us.preheader.i ] ; 8 uses
  %.4309357.us.i = phi ptr [ %i.uc, %._crit_edge.us.i ], [ %i.ob, %.lr.ph.us.preheader.i ] ; 7 uses
  tail call void @lv_draw_sw_rgb565_swap(ptr noundef %.4309357.us.i, i32 noundef %.fr.i) #5
  %i.ov = icmp eq ptr %.2297359.us.i, null        ; 3 uses
  %or.cond15.us.i = select i1 %i.ov, i1 %i.oq, i1 false
  %or.cond18.us.i = select i1 %i.ov, i1 %i.or, i1 false
  br label %bb.av

bb.av:                                            ; preds = %bb.bg, %.lr.ph.us.i
  %indvars.iv394.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next395.i, %bb.bg ] ; 7 uses
  %indvars.iv.i29 = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i31, %bb.bg ] ; 8 uses
  %i.ow = load i32, ptr %i.om, align 4, !tbaa !28
  switch i32 %i.ow, label %rgb565_swapped_image_blend.exit [
    i32 1, label %bb.az
    i32 2, label %bb.ay
    i32 3, label %bb.ax
    i32 4, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %.4309357.us.i, i64 %indvars.iv394.i
  %i.oy = load i16, ptr %i.ox, align 2            ; 4 uses
  %i.oz = lshr i16 %i.oy, 11
  %i.pa = getelementptr inbounds nuw i8, ptr %.4304358.us.i, i64 %indvars.iv.i29 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 2
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !17
  %i.pd = lshr i8 %i.pc, 3
  %i.pe = zext nneg i8 %i.pd to i16
  %i.pf = sub nsw i16 %i.oz, %i.pe
  %i.pg = tail call i16 @llvm.abs.i16(i16 %i.pf, i1 true)
  %i.ph = shl nuw i16 %i.pg, 11
  %i.pi = lshr i16 %i.oy, 5
  %i.pj = and i16 %i.pi, 63
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pa, i64 1
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !17
  %i.pm = lshr i8 %i.pl, 2
  %i.pn = zext nneg i8 %i.pm to i16
  %i.po = sub nsw i16 %i.pj, %i.pn
  %i.pp = tail call i16 @llvm.abs.i16(i16 %i.po, i1 true)
  %i.pq = shl nuw nsw i16 %i.pp, 5
  %i.pr = add nuw i16 %i.pq, %i.ph
  %i.ps = and i16 %i.oy, 31
  %i.pt = load i8, ptr %i.pa, align 1, !tbaa !17
  %i.pu = lshr i8 %i.pt, 3
  %i.pv = zext nneg i8 %i.pu to i16
  %i.pw = sub nsw i16 %i.ps, %i.pv
  %i.px = tail call i16 @llvm.abs.i16(i16 %i.pw, i1 true)
  %i.py = add nuw i16 %i.pr, %i.px
  br label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %.4309357.us.i, i64 %indvars.iv394.i
  %i.qa = load i16, ptr %i.pz, align 2            ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.4304358.us.i, i64 %indvars.iv.i29 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 2
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !17
  %i.qe = lshr i8 %i.qd, 3
  %i.qf = zext nneg i8 %i.qe to i16
  %i.qg = lshr i16 %i.qa, 5                       ; 2 uses
  %i.qh = and i16 %i.qg, 1984
  %i.qi = mul nuw i16 %i.qh, %i.qf
  %i.qj = and i16 %i.qi, -2048
  %i.qk = and i16 %i.qg, 63
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qb, i64 1
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !17
  %i.qn = lshr i8 %i.qm, 2
  %i.qo = zext nneg i8 %i.qn to i16
  %i.qp = mul nuw nsw i16 %i.qk, %i.qo
  %i.qq = lshr i16 %i.qp, 1
  %i.qr = and i16 %i.qq, 2016
  %i.qs = or disjoint i16 %i.qr, %i.qj
  %i.qt = and i16 %i.qa, 31
  %i.qu = load i8, ptr %i.qb, align 1, !tbaa !17
  %i.qv = lshr i8 %i.qu, 3
  %i.qw = zext nneg i8 %i.qv to i16
  %i.qx = mul nuw nsw i16 %i.qt, %i.qw
  %i.qy = lshr i16 %i.qx, 5
  %i.qz = or disjoint i16 %i.qs, %i.qy
  br label %bb.ba

bb.ay:                                            ; preds = %bb.av
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %.4309357.us.i, i64 %indvars.iv394.i
  %i.rb = load i16, ptr %i.ra, align 2            ; 4 uses
  %i.rc = lshr i16 %i.rb, 11
  %i.rd = getelementptr inbounds nuw i8, ptr %.4304358.us.i, i64 %indvars.iv.i29 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 2
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !17
  %i.rg = lshr i8 %i.rf, 3
  %i.rh = zext nneg i8 %i.rg to i16
  %i.ri = sub nsw i16 %i.rc, %i.rh
  %i.rj = tail call i16 @llvm.smax.i16(i16 %i.ri, i16 0)
  %i.rk = shl nuw i16 %i.rj, 11
  %i.rl = lshr i16 %i.rb, 5
  %i.rm = and i16 %i.rl, 63
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rd, i64 1
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !17
  %i.rp = lshr i8 %i.ro, 2
  %i.rq = zext nneg i8 %i.rp to i16
  %i.rr = sub nsw i16 %i.rm, %i.rq
  %i.rs = tail call i16 @llvm.smax.i16(i16 %i.rr, i16 0)
  %i.rt = shl nuw nsw i16 %i.rs, 5
  %i.ru = add nuw i16 %i.rt, %i.rk
  %i.rv = and i16 %i.rb, 31
  %i.rw = load i8, ptr %i.rd, align 1, !tbaa !17
  %i.rx = lshr i8 %i.rw, 3
  %i.ry = zext nneg i8 %i.rx to i16
  %i.rz = sub nsw i16 %i.rv, %i.ry
  %i.sa = tail call i16 @llvm.smax.i16(i16 %i.rz, i16 0)
  %i.sb = add nuw i16 %i.ru, %i.sa
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %i.sc = getelementptr inbounds nuw [2 x i8], ptr %.4309357.us.i, i64 %indvars.iv394.i
  %i.sd = load i16, ptr %i.sc, align 2            ; 4 uses
  %i.se = lshr i16 %i.sd, 11
  %i.sf = getelementptr inbounds nuw i8, ptr %.4304358.us.i, i64 %indvars.iv.i29 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 2
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !17
  %i.si = lshr i8 %i.sh, 3
  %i.sj = zext nneg i8 %i.si to i16
  %i.sk = add nuw nsw i16 %i.se, %i.sj
  %i.sl = tail call i16 @llvm.umin.i16(i16 %i.sk, i16 31)
  %spec.select.us.i = shl nuw i16 %i.sl, 11
  %i.sm = lshr i16 %i.sd, 5
  %i.sn = and i16 %i.sm, 63
  %i.so = getelementptr inbounds nuw i8, ptr %i.sf, i64 1
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !17
  %i.sq = lshr i8 %i.sp, 2
  %i.sr = zext nneg i8 %i.sq to i16
  %i.ss = add nuw nsw i16 %i.sn, %i.sr
  %i.st = tail call i16 @llvm.umin.i16(i16 %i.ss, i16 63)
  %i.su = shl nuw nsw i16 %i.st, 5
  %i.sv = or disjoint i16 %i.su, %spec.select.us.i
  %i.sw = and i16 %i.sd, 31
  %i.sx = load i8, ptr %i.sf, align 1, !tbaa !17
  %i.sy = lshr i8 %i.sx, 3
  %i.sz = zext nneg i8 %i.sy to i16
  %i.ta = add nuw nsw i16 %i.sw, %i.sz
  %i.tb = tail call i16 @llvm.umin.i16(i16 %i.ta, i16 31)
  %i.tc = or disjoint i16 %i.sv, %i.tb
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.td = phi i16 [ %i.sd, %bb.az ], [ %i.rb, %bb.ay ], [ %i.qa, %bb.ax ], [ %i.oy, %bb.aw ]
  %.0282.us.i = phi i16 [ %i.tc, %bb.az ], [ %i.sb, %bb.ay ], [ %i.qz, %bb.ax ], [ %i.py, %bb.aw ]
  %i.te = getelementptr inbounds nuw [2 x i8], ptr %.4309357.us.i, i64 %indvars.iv394.i
  br i1 %or.cond15.us.i, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %or.cond18.us.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.tf = getelementptr inbounds nuw i8, ptr %.2297359.us.i, i64 %indvars.iv394.i
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !17  ; 2 uses
  br i1 %i.oq, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.th = zext i8 %i.tg to i32
  %i.ti = mul nuw nsw i32 %i.th, %i.op
  %i.tj = getelementptr inbounds nuw i8, ptr %.4304358.us.i, i64 %indvars.iv.i29
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 3
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !17
  %i.tm = zext i8 %i.tl to i32
  %i.tn = mul nuw nsw i32 %i.ti, %i.tm
  %i.to = lshr i32 %i.tn, 16
  %i.tp = trunc nuw i32 %i.to to i8
  br label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %i.tq = getelementptr inbounds nuw i8, ptr %.4304358.us.i, i64 %indvars.iv.i29
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 3
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !17
  %i.tt = zext i8 %i.ts to i32
  %i.tu = mul nuw nsw i32 %i.tt, %i.op
  %i.tv = lshr i32 %i.tu, 8
  %i.tw = trunc nuw i32 %i.tv to i8
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ba
  %i.tx = getelementptr inbounds nuw i8, ptr %.4304358.us.i, i64 %indvars.iv.i29
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 3
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !17
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc
  %.sink.i30 = phi i8 [ %i.tz, %bb.bf ], [ %i.tw, %bb.be ], [ %i.tp, %bb.bd ], [ %i.tg, %bb.bc ]
  %i.ua = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0282.us.i, i16 noundef zeroext %i.td, i8 noundef zeroext %.sink.i30) #5
  %i.ub = tail call noundef i16 @llvm.bswap.i16(i16 %i.ua)
  store i16 %i.ub, ptr %i.te, align 2, !tbaa !12
  %indvars.iv.next395.i = add nuw nsw i64 %indvars.iv394.i, 1 ; 2 uses
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i29, 4
  %exitcond399.not.i = icmp eq i64 %indvars.iv.next395.i, %wide.trip.count.i28
  br i1 %exitcond399.not.i, label %._crit_edge.us.i, label %bb.av, !llvm.loop !69

._crit_edge.us.i:                                 ; preds = %bb.bg
  %i.uc = getelementptr inbounds nuw i8, ptr %.4309357.us.i, i64 %i.os
  %i.ud = getelementptr inbounds i8, ptr %.4304358.us.i, i64 %i.ot
  %i.ue = getelementptr inbounds i8, ptr %.2297359.us.i, i64 %i.ou
  %.3298.us.i = select i1 %i.ov, ptr null, ptr %i.ue
  %i.uf = add nuw nsw i32 %.4360.us.i, 1          ; 2 uses
  %exitcond400.not.i = icmp eq i32 %i.uf, %i.ny
  br i1 %exitcond400.not.i, label %rgb565_swapped_image_blend.exit, label %.lr.ph.us.i, !llvm.loop !70

bb.bh:                                            ; preds = %bb.au
  %i.ug = icmp eq ptr %i.oj, null                 ; 3 uses
  %i.uh = zext i8 %i.oa to i32                    ; 2 uses
  %i.ui = icmp ugt i8 %i.oa, -4                   ; 2 uses
  %or.cond.i32 = select i1 %i.ug, i1 %i.ui, i1 false
  br i1 %or.cond.i32, label %.preheader340.i, label %bb.bl

.preheader340.i:                                  ; preds = %bb.bh
  %i.uj = icmp sgt i32 %i.ny, 0
  br i1 %i.uj, label %.preheader.lr.ph.i36, label %rgb565_swapped_image_blend.exit

.preheader.lr.ph.i36:                             ; preds = %.preheader340.i
  %i.uk = icmp sgt i32 %.fr.i, 0
  %i.ul = zext i32 %i.od to i64
  %i.um = sext i32 %i.oh to i64
  br i1 %i.uk, label %.preheader.preheader.i37, label %rgb565_swapped_image_blend.exit

.preheader.preheader.i37:                         ; preds = %.preheader.lr.ph.i36
  %wide.trip.count438.i = zext nneg i32 %.fr.i to i64
  br label %.preheader.i38

.preheader.i38:                                   ; preds = %._crit_edge383.i, %.preheader.preheader.i37
  %.0283386.i = phi i32 [ %i.wo, %._crit_edge383.i ], [ 0, %.preheader.preheader.i37 ]
  %.0300385.i = phi ptr [ %i.wn, %._crit_edge383.i ], [ %i.of, %.preheader.preheader.i37 ] ; 2 uses
  %.0305384.i = phi ptr [ %i.wm, %._crit_edge383.i ], [ %i.ob, %.preheader.preheader.i37 ] ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %lv_color_24_16_mix.exit.i, %.preheader.i38
  %indvars.iv433.i = phi i64 [ 0, %.preheader.i38 ], [ %indvars.iv.next434.i, %lv_color_24_16_mix.exit.i ] ; 2 uses
  %indvars.iv431.i = phi i64 [ 0, %.preheader.i38 ], [ %indvars.iv.next432.i, %lv_color_24_16_mix.exit.i ] ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.0300385.i, i64 %indvars.iv431.i ; 6 uses
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %.0305384.i, i64 %indvars.iv433.i ; 2 uses
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !12
  %i.uq = tail call noundef i16 @llvm.bswap.i16(i16 %i.up) ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 3
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !17  ; 3 uses
  switch i8 %i.us, label %bb.bk [
    i8 0, label %lv_color_24_16_mix.exit.i
    i8 -1, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.ut = getelementptr inbounds nuw i8, ptr %i.un, i64 1
  %i.uu = load <2 x i8>, ptr %i.ut, align 1, !tbaa !17
  %i.uv = and <2 x i8> %i.uu, <i8 -4, i8 -8>
  %i.uw = zext <2 x i8> %i.uv to <2 x i16>
  %i.ux = shl nuw <2 x i16> %i.uw, <i16 3, i16 8> ; 2 uses
  %shift = shufflevector <2 x i16> %i.ux, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i16> %i.ux, %shift
  %i.uy = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.uz = load i8, ptr %i.un, align 1, !tbaa !17
  %i.va = lshr i8 %i.uz, 3
  %i.vb = zext nneg i8 %i.va to i16
  %i.vc = or disjoint i16 %i.uy, %i.vb
  br label %lv_color_24_16_mix.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.vd = zext i8 %i.us to i16                    ; 3 uses
  %i.ve = xor i8 %i.us, -1
  %i.vf = getelementptr inbounds nuw i8, ptr %i.un, i64 2
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !17
  %i.vh = lshr i8 %i.vg, 3
  %i.vi = zext nneg i8 %i.vh to i16
  %i.vj = mul nuw nsw i16 %i.vi, %i.vd
  %i.vk = lshr i16 %i.uq, 11
  %i.vl = zext i8 %i.ve to i16                    ; 3 uses
  %i.vm = mul nuw nsw i16 %i.vk, %i.vl
  %i.vn = add nuw nsw i16 %i.vj, %i.vm
  %i.vo = shl i16 %i.vn, 3
  %i.vp = and i16 %i.vo, -2048
  %i.vq = getelementptr inbounds nuw i8, ptr %i.un, i64 1
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !17
  %i.vs = lshr i8 %i.vr, 2
  %i.vt = zext nneg i8 %i.vs to i16
  %i.vu = mul nuw nsw i16 %i.vt, %i.vd
  %i.vv = lshr i16 %i.uq, 5
  %i.vw = and i16 %i.vv, 63
  %i.vx = mul nuw nsw i16 %i.vw, %i.vl
  %i.vy = add nuw nsw i16 %i.vu, %i.vx
  %i.vz = lshr i16 %i.vy, 3
  %i.wa = and i16 %i.vz, 2016
  %i.wb = or disjoint i16 %i.wa, %i.vp
  %i.wc = load i8, ptr %i.un, align 1, !tbaa !17
  %i.wd = lshr i8 %i.wc, 3
  %i.we = zext nneg i8 %i.wd to i16
  %i.wf = mul nuw nsw i16 %i.we, %i.vd
  %i.wg = and i16 %i.uq, 31
  %i.wh = mul nuw nsw i16 %i.wg, %i.vl
  %i.wi = add nuw nsw i16 %i.wf, %i.wh
  %i.wj = lshr i16 %i.wi, 8
  %i.wk = add i16 %i.wb, %i.wj
  br label %lv_color_24_16_mix.exit.i

lv_color_24_16_mix.exit.i:                        ; preds = %bb.bk, %bb.bj, %bb.bi
  %.0.i.i = phi i16 [ %i.wk, %bb.bk ], [ %i.vc, %bb.bj ], [ %i.uq, %bb.bi ]
  %i.wl = tail call noundef i16 @llvm.bswap.i16(i16 %.0.i.i)
  store i16 %i.wl, ptr %i.uo, align 2, !tbaa !12
  %indvars.iv.next434.i = add nuw nsw i64 %indvars.iv433.i, 1 ; 2 uses
  %indvars.iv.next432.i = add nuw nsw i64 %indvars.iv431.i, 4
  %exitcond439.not.i = icmp eq i64 %indvars.iv.next434.i, %wide.trip.count438.i
  br i1 %exitcond439.not.i, label %._crit_edge383.i, label %bb.bi, !llvm.loop !71

._crit_edge383.i:                                 ; preds = %lv_color_24_16_mix.exit.i
  %i.wm = getelementptr inbounds nuw i8, ptr %.0305384.i, i64 %i.ul
  %i.wn = getelementptr inbounds i8, ptr %.0300385.i, i64 %i.um
  %i.wo = add nuw nsw i32 %.0283386.i, 1          ; 2 uses
  %exitcond440.not.i = icmp eq i32 %i.wo, %i.ny
  br i1 %exitcond440.not.i, label %rgb565_swapped_image_blend.exit, label %.preheader.i38, !llvm.loop !72

bb.bl:                                            ; preds = %bb.bh
  %i.wp = icmp ult i8 %i.oa, -3                   ; 2 uses
  %or.cond6.i33 = select i1 %i.ug, i1 %i.wp, i1 false
  br i1 %or.cond6.i33, label %.preheader342.i, label %bb.bo

.preheader342.i:                                  ; preds = %bb.bl
  %i.wq = icmp sgt i32 %i.ny, 0
  br i1 %i.wq, label %.preheader341.lr.ph.i, label %rgb565_swapped_image_blend.exit

.preheader341.lr.ph.i:                            ; preds = %.preheader342.i
  %i.wr = icmp sgt i32 %.fr.i, 0
  %i.ws = zext i32 %i.od to i64
  %i.wt = sext i32 %i.oh to i64
  br i1 %i.wr, label %.preheader341.preheader.i, label %rgb565_swapped_image_blend.exit

.preheader341.preheader.i:                        ; preds = %.preheader341.lr.ph.i
  %wide.trip.count428.i = zext nneg i32 %.fr.i to i64
  br label %.preheader341.i

.preheader341.i:                                  ; preds = %._crit_edge377.i, %.preheader341.preheader.i
  %.1284380.i = phi i32 [ %i.yn, %._crit_edge377.i ], [ 0, %.preheader341.preheader.i ]
  %.1301379.i = phi ptr [ %i.ym, %._crit_edge377.i ], [ %i.of, %.preheader341.preheader.i ] ; 2 uses
  %.1306378.i = phi ptr [ %i.yl, %._crit_edge377.i ], [ %i.ob, %.preheader341.preheader.i ] ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %lv_color_24_16_mix.exit332.i, %.preheader341.i
  %indvars.iv423.i = phi i64 [ 0, %.preheader341.i ], [ %indvars.iv.next424.i, %lv_color_24_16_mix.exit332.i ] ; 2 uses
  %indvars.iv421.i = phi i64 [ 0, %.preheader341.i ], [ %indvars.iv.next422.i, %lv_color_24_16_mix.exit332.i ] ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.1301379.i, i64 %indvars.iv421.i ; 4 uses
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %.1306378.i, i64 %indvars.iv423.i ; 2 uses
  %i.ww = load i16, ptr %i.wv, align 2, !tbaa !12 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 3
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !17
  %i.wz = zext i8 %i.wy to i32
  %i.xa = mul nuw nsw i32 %i.wz, %i.uh
  %i.xb = lshr i32 %i.xa, 8                       ; 2 uses
  %cond453.i = icmp eq i32 %i.xb, 0
  br i1 %cond453.i, label %lv_color_24_16_mix.exit332.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.xc = trunc nuw nsw i32 %i.xb to i16          ; 4 uses
  %i.xd = tail call noundef i16 @llvm.bswap.i16(i16 %i.ww) ; 3 uses
  %i.xe = xor i16 %i.xc, 255                      ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wu, i64 2
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !17
  %i.xh = lshr i8 %i.xg, 3
  %i.xi = zext nneg i8 %i.xh to i16
  %i.xj = mul nuw nsw i16 %i.xi, %i.xc
  %i.xk = lshr i16 %i.xd, 11
  %i.xl = mul nuw nsw i16 %i.xe, %i.xk
  %i.xm = add nuw nsw i16 %i.xj, %i.xl
  %i.xn = shl nuw i16 %i.xm, 3
  %i.xo = and i16 %i.xn, -2048
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wu, i64 1
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !17
  %i.xr = lshr i8 %i.xq, 2
  %i.xs = zext nneg i8 %i.xr to i16
  %i.xt = mul nuw nsw i16 %i.xs, %i.xc
  %i.xu = lshr i16 %i.xd, 5
  %i.xv = and i16 %i.xu, 63
  %i.xw = mul nuw nsw i16 %i.xe, %i.xv
  %i.xx = add nuw nsw i16 %i.xt, %i.xw
  %i.xy = lshr i16 %i.xx, 3
  %i.xz = and i16 %i.xy, 2016
  %i.ya = or disjoint i16 %i.xz, %i.xo
  %i.yb = load i8, ptr %i.wu, align 1, !tbaa !17
  %i.yc = lshr i8 %i.yb, 3
  %i.yd = zext nneg i8 %i.yc to i16
  %i.ye = mul nuw nsw i16 %i.yd, %i.xc
  %i.yf = and i16 %i.xd, 31
  %i.yg = mul nuw nsw i16 %i.xe, %i.yf
  %i.yh = add nuw nsw i16 %i.ye, %i.yg
  %i.yi = lshr i16 %i.yh, 8
  %i.yj = or disjoint i16 %i.ya, %i.yi
  %i.yk = tail call i16 @llvm.bswap.i16(i16 %i.yj)
  br label %lv_color_24_16_mix.exit332.i

lv_color_24_16_mix.exit332.i:                     ; preds = %bb.bn, %bb.bm
  %.0.i331.i = phi i16 [ %i.yk, %bb.bn ], [ %i.ww, %bb.bm ]
end_hunk_0
begin_hunk_1_@lv_draw_sw_blend_image_to_rgb565_swapped:bb.a
  %i.zz = getelementptr inbounds nuw i8, ptr %i.yt, i64 1
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !17
  %i.aab = lshr i8 %i.aaa, 2
  %i.aac = zext nneg i8 %i.aab to i16
  %i.aad = mul nuw nsw i16 %i.aac, %i.zm
  %i.aae = lshr i16 %i.yw, 5
  %i.aaf = and i16 %i.aae, 63
  %i.aag = mul nuw nsw i16 %i.aaf, %i.zu
  %i.aah = add nuw nsw i16 %i.aad, %i.aag
  %i.aai = lshr i16 %i.aah, 3
  %i.aaj = and i16 %i.aai, 2016
  %i.aak = or disjoint i16 %i.aaj, %i.zy
  %i.aal = load i8, ptr %i.yt, align 1, !tbaa !17
  %i.aam = lshr i8 %i.aal, 3
  %i.aan = zext nneg i8 %i.aam to i16
  %i.aao = mul nuw nsw i16 %i.aan, %i.zm
  %i.aap = and i16 %i.yw, 31
  %i.aaq = mul nuw nsw i16 %i.aap, %i.zu
  %i.aar = add nuw nsw i16 %i.aao, %i.aaq
  %i.aas = lshr i16 %i.aar, 8
  %i.aat = add i16 %i.aak, %i.aas
  br label %lv_color_24_16_mix.exit334.i

lv_color_24_16_mix.exit334.i:                     ; preds = %bb.br, %bb.bq, %bb.bp
  %.0.i333.i = phi i16 [ %i.aat, %bb.br ], [ %i.zl, %bb.bq ], [ %i.yw, %bb.bp ]
  %i.aau = tail call noundef i16 @llvm.bswap.i16(i16 %.0.i333.i)
  store i16 %i.aau, ptr %i.yu, align 2, !tbaa !12
  %indvars.iv.next414.i = add nuw nsw i64 %indvars.iv413.i, 1 ; 2 uses
  %indvars.iv.next412.i.a = add nuw nsw i64 %indvars.iv411.i.a, 4
  %exitcond419.not.i.a = icmp eq i64 %indvars.iv.next414.i, %wide.trip.count418.i
  br i1 %exitcond419.not.i.a, label %._crit_edge370.i, label %bb.bp, !llvm.loop !75

._crit_edge370.i:                                 ; preds = %lv_color_24_16_mix.exit334.i
  %i.aav = getelementptr inbounds nuw i8, ptr %.2307371.i, i64 %i.yq
  %i.aaw = getelementptr inbounds i8, ptr %.2302372.i, i64 %i.yr
  %i.aax = getelementptr inbounds i8, ptr %.0295373.i, i64 %i.ys
  %i.aay = add nuw nsw i32 %.2374.i, 1            ; 2 uses
  %exitcond420.not.i = icmp eq i32 %i.aay, %i.ny
  br i1 %exitcond420.not.i, label %rgb565_swapped_image_blend.exit, label %.preheader344.i, !llvm.loop !76

bb.bs:                                            ; preds = %bb.bo
  %or.cond12.i = select i1 %.not441.i, i1 %i.wp, i1 false
  %i.aaz = icmp sgt i32 %i.ny, 0
  %or.cond387.i = select i1 %or.cond12.i, i1 %i.aaz, i1 false
  br i1 %or.cond387.i, label %.preheader347.lr.ph.i, label %rgb565_swapped_image_blend.exit

.preheader347.lr.ph.i:                            ; preds = %bb.bs
  %i.aba = icmp sgt i32 %.fr.i, 0
  %i.abb = zext i32 %i.od to i64
  %i.abc = sext i32 %i.oh to i64
  %i.abd = sext i32 %i.ol to i64
  br i1 %i.aba, label %.preheader347.preheader.i, label %rgb565_swapped_image_blend.exit

.preheader347.preheader.i:                        ; preds = %.preheader347.lr.ph.i
  %wide.trip.count408.i = zext nneg i32 %.fr.i to i64
  br label %.preheader347.i

.preheader347.i:                                  ; preds = %._crit_edge.i35, %.preheader347.preheader.i
  %.3367.i = phi i32 [ %i.adc, %._crit_edge.i35 ], [ 0, %.preheader347.preheader.i ]
  %.1296366.i = phi ptr [ %i.adb, %._crit_edge.i35 ], [ %i.oj, %.preheader347.preheader.i ] ; 2 uses
  %.3303365.i = phi ptr [ %i.ada, %._crit_edge.i35 ], [ %i.of, %.preheader347.preheader.i ] ; 2 uses
  %.3308364.i = phi ptr [ %i.acz, %._crit_edge.i35 ], [ %i.ob, %.preheader347.preheader.i ] ; 2 uses
  br label %bb.bt

bb.bt:                                            ; preds = %lv_color_24_16_mix.exit336.i, %.preheader347.i
  %indvars.iv403.i = phi i64 [ 0, %.preheader347.i ], [ %indvars.iv.next404.i, %lv_color_24_16_mix.exit336.i ] ; 3 uses
  %indvars.iv401.i = phi i64 [ 0, %.preheader347.i ], [ %indvars.iv.next402.i, %lv_color_24_16_mix.exit336.i ] ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.3303365.i, i64 %indvars.iv401.i ; 4 uses
  %i.abf = getelementptr inbounds nuw [2 x i8], ptr %.3308364.i, i64 %indvars.iv403.i ; 2 uses
  %i.abg = load i16, ptr %i.abf, align 2, !tbaa !12 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abe, i64 3
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !17
  %i.abj = zext i8 %i.abi to i32
  %i.abk = getelementptr inbounds nuw i8, ptr %.1296366.i, i64 %indvars.iv403.i
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !17
  %i.abm = zext i8 %i.abl to i32
  %i.abn = mul nuw nsw i32 %i.abj, %i.uh
  %i.abo = mul nuw nsw i32 %i.abn, %i.abm
  %i.abp = lshr i32 %i.abo, 16                    ; 2 uses
  %cond.i = icmp eq i32 %i.abp, 0
  br i1 %cond.i, label %lv_color_24_16_mix.exit336.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.abq = trunc nuw nsw i32 %i.abp to i16        ; 4 uses
  %i.abr = tail call noundef i16 @llvm.bswap.i16(i16 %i.abg) ; 3 uses
  %i.abs = xor i16 %i.abq, 255                    ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abe, i64 2
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !17
  %i.abv = lshr i8 %i.abu, 3
  %i.abw = zext nneg i8 %i.abv to i16
  %i.abx = mul nuw nsw i16 %i.abw, %i.abq
  %i.aby = lshr i16 %i.abr, 11
  %i.abz = mul nuw nsw i16 %i.abs, %i.aby
  %i.aca = add nuw nsw i16 %i.abx, %i.abz
  %i.acb = shl nuw i16 %i.aca, 3
  %i.acc = and i16 %i.acb, -2048
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abe, i64 1
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !17
  %i.acf = lshr i8 %i.ace, 2
  %i.acg = zext nneg i8 %i.acf to i16
  %i.ach = mul nuw nsw i16 %i.acg, %i.abq
  %i.aci = lshr i16 %i.abr, 5
  %i.acj = and i16 %i.aci, 63
  %i.ack = mul nuw nsw i16 %i.abs, %i.acj
  %i.acl = add nuw nsw i16 %i.ach, %i.ack
  %i.acm = lshr i16 %i.acl, 3
  %i.acn = and i16 %i.acm, 2016
  %i.aco = or disjoint i16 %i.acn, %i.acc
  %i.acp = load i8, ptr %i.abe, align 1, !tbaa !17
  %i.acq = lshr i8 %i.acp, 3
  %i.acr = zext nneg i8 %i.acq to i16
  %i.acs = mul nuw nsw i16 %i.acr, %i.abq
  %i.act = and i16 %i.abr, 31
  %i.acu = mul nuw nsw i16 %i.abs, %i.act
  %i.acv = add nuw nsw i16 %i.acs, %i.acu
  %i.acw = lshr i16 %i.acv, 8
  %i.acx = add i16 %i.aco, %i.acw
  %i.acy = tail call i16 @llvm.bswap.i16(i16 %i.acx)
  br label %lv_color_24_16_mix.exit336.i

lv_color_24_16_mix.exit336.i:                     ; preds = %bb.bu, %bb.bt
  %.0.i335.i = phi i16 [ %i.acy, %bb.bu ], [ %i.abg, %bb.bt ]
  store i16 %.0.i335.i, ptr %i.abf, align 2, !tbaa !12
  %indvars.iv.next404.i = add nuw nsw i64 %indvars.iv403.i, 1 ; 2 uses
  %indvars.iv.next402.i = add nuw nsw i64 %indvars.iv401.i, 4
  %exitcond409.not.i = icmp eq i64 %indvars.iv.next404.i, %wide.trip.count408.i
  br i1 %exitcond409.not.i, label %._crit_edge.i35, label %bb.bt, !llvm.loop !77

._crit_edge.i35:                                  ; preds = %lv_color_24_16_mix.exit336.i
  %i.acz = getelementptr inbounds nuw i8, ptr %.3308364.i, i64 %i.abb
  %i.ada = getelementptr inbounds i8, ptr %.3303365.i, i64 %i.abc
  %i.adb = getelementptr inbounds i8, ptr %.1296366.i, i64 %i.abd
  %i.adc = add nuw nsw i32 %.3367.i, 1            ; 2 uses
  %exitcond410.not.i.a = icmp eq i32 %i.adc, %i.ny
  br i1 %exitcond410.not.i.a, label %rgb565_swapped_image_blend.exit, label %.preheader347.i, !llvm.loop !78

.lr.ph361.split.i:                                ; preds = %.lr.ph361.i, %.lr.ph361.split.i
  %.4360.i = phi i32 [ %i.ade, %.lr.ph361.split.i ], [ 0, %.lr.ph361.i ]
  %.4309357.i = phi ptr [ %i.add, %.lr.ph361.split.i ], [ %i.ob, %.lr.ph361.i ] ; 2 uses
  tail call void @lv_draw_sw_rgb565_swap(ptr noundef %.4309357.i, i32 noundef %.fr.i) #5
  %i.add = getelementptr inbounds nuw i8, ptr %.4309357.i, i64 %i.os
  %i.ade = add nuw nsw i32 %.4360.i, 1            ; 2 uses
  %exitcond.not.i27 = icmp eq i32 %i.ade, %i.ny
  br i1 %exitcond.not.i27, label %rgb565_swapped_image_blend.exit, label %.lr.ph361.split.i, !llvm.loop !70

bb.bv:                                            ; preds = %bb.a
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adg = load i32, ptr %i.adf, align 8, !tbaa !19
  %.fr.i39 = freeze i32 %i.adg                    ; 12 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !20 ; 11 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.adk = load i8, ptr %i.adj, align 8, !tbaa !21 ; 6 uses
  %i.adl = load ptr, ptr %0, align 8, !tbaa !22   ; 6 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.adn = load i32, ptr %i.adm, align 8, !tbaa !23 ; 5 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !24 ; 5 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.adr = load i32, ptr %i.adq, align 8, !tbaa !25 ; 5 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !26 ; 4 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.adv = load i32, ptr %i.adu, align 8, !tbaa !27 ; 3 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !28
  %i.ady = icmp eq i32 %i.adx, 0
  br i1 %i.ady, label %bb.ci, label %.preheader409.i

.preheader409.i:                                  ; preds = %bb.bv
  %.not363414.i = icmp sgt i32 %i.adi, 0
  br i1 %.not363414.i, label %.lr.ph419.i, label %rgb565_swapped_image_blend.exit

.lr.ph419.i:                                      ; preds = %.preheader409.i
  %.not362411.i = icmp sgt i32 %.fr.i39, 0
  %i.adz = zext i8 %i.adk to i32                  ; 2 uses
  %i.aea = icmp ugt i8 %i.adk, -4                 ; 2 uses
  %i.aeb = icmp ult i8 %i.adk, -3
  %i.aec = zext i32 %i.adn to i64                 ; 2 uses
  %i.aed = sext i32 %i.adr to i64
  %i.aee = sext i32 %i.adv to i64
  br i1 %.not362411.i, label %.lr.ph.us.preheader.i41, label %.lr.ph419.split.i

.lr.ph.us.preheader.i41:                          ; preds = %.lr.ph419.i
  %wide.trip.count.i42 = zext nneg i32 %.fr.i39 to i64
  br label %.lr.ph.us.i43

.lr.ph.us.i43:                                    ; preds = %._crit_edge.us.i49, %.lr.ph.us.preheader.i41
  %.4418.us.i = phi i32 [ %i.ajp, %._crit_edge.us.i49 ], [ 0, %.lr.ph.us.preheader.i41 ]
  %.2330417.us.i = phi ptr [ %.3331.us.i, %._crit_edge.us.i49 ], [ %i.adt, %.lr.ph.us.preheader.i41 ] ; 3 uses
  %.4337416.us.i = phi ptr [ %i.ajn, %._crit_edge.us.i49 ], [ %i.adp, %.lr.ph.us.preheader.i41 ] ; 8 uses
  %.4342415.us.i = phi ptr [ %i.ajm, %._crit_edge.us.i49 ], [ %i.adl, %.lr.ph.us.preheader.i41 ] ; 7 uses
  tail call void @lv_draw_sw_rgb565_swap(ptr noundef %.4342415.us.i, i32 noundef %.fr.i39) #5
  %i.aef = icmp eq ptr %.2330417.us.i, null       ; 3 uses
  %or.cond15.us.i44 = select i1 %i.aef, i1 %i.aea, i1 false
  %or.cond18.us.i45 = select i1 %i.aef, i1 %i.aeb, i1 false
  br label %bb.bw

bb.bw:                                            ; preds = %bb.ch, %.lr.ph.us.i43
  %indvars.iv452.i = phi i64 [ 0, %.lr.ph.us.i43 ], [ %indvars.iv.next453.i, %bb.ch ] ; 7 uses
  %indvars.iv.i46 = phi i64 [ 0, %.lr.ph.us.i43 ], [ %indvars.iv.next.i48, %bb.ch ] ; 8 uses
  %i.aeg = load i32, ptr %i.adw, align 4, !tbaa !28
  switch i32 %i.aeg, label %rgb565_swapped_image_blend.exit [
    i32 1, label %bb.ca
    i32 2, label %bb.bz
    i32 3, label %bb.by
    i32 4, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.aeh = getelementptr inbounds nuw [2 x i8], ptr %.4342415.us.i, i64 %indvars.iv452.i
  %i.aei = load i16, ptr %i.aeh, align 2          ; 4 uses
  %i.aej = lshr i16 %i.aei, 11
  %i.aek = getelementptr inbounds nuw i8, ptr %.4337416.us.i, i64 %indvars.iv.i46 ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 2
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !17
  %i.aen = lshr i8 %i.aem, 3
  %i.aeo = zext nneg i8 %i.aen to i16
  %i.aep = sub nsw i16 %i.aej, %i.aeo
  %i.aeq = tail call i16 @llvm.abs.i16(i16 %i.aep, i1 true)
  %i.aer = shl nuw i16 %i.aeq, 11
  %i.aes = lshr i16 %i.aei, 5
  %i.aet = and i16 %i.aes, 63
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aek, i64 1
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !17
  %i.aew = lshr i8 %i.aev, 2
  %i.aex = zext nneg i8 %i.aew to i16
  %i.aey = sub nsw i16 %i.aet, %i.aex
  %i.aez = tail call i16 @llvm.abs.i16(i16 %i.aey, i1 true)
  %i.afa = shl nuw nsw i16 %i.aez, 5
  %i.afb = add nuw i16 %i.afa, %i.aer
  %i.afc = and i16 %i.aei, 31
  %i.afd = load i8, ptr %i.aek, align 1, !tbaa !17
  %i.afe = lshr i8 %i.afd, 3
  %i.aff = zext nneg i8 %i.afe to i16
  %i.afg = sub nsw i16 %i.afc, %i.aff
  %i.afh = tail call i16 @llvm.abs.i16(i16 %i.afg, i1 true)
  %i.afi = add nuw i16 %i.afb, %i.afh
  br label %bb.cb

bb.by:                                            ; preds = %bb.bw
  %i.afj = getelementptr inbounds nuw [2 x i8], ptr %.4342415.us.i, i64 %indvars.iv452.i
  %i.afk = load i16, ptr %i.afj, align 2          ; 3 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.4337416.us.i, i64 %indvars.iv.i46 ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 2
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !17
  %i.afo = lshr i8 %i.afn, 3
  %i.afp = zext nneg i8 %i.afo to i16
  %i.afq = lshr i16 %i.afk, 5                     ; 2 uses
  %i.afr = and i16 %i.afq, 1984
  %i.afs = mul nuw i16 %i.afr, %i.afp
  %i.aft = and i16 %i.afs, -2048
  %i.afu = and i16 %i.afq, 63
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afl, i64 1
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !17
  %i.afx = lshr i8 %i.afw, 2
  %i.afy = zext nneg i8 %i.afx to i16
  %i.afz = mul nuw nsw i16 %i.afu, %i.afy
  %i.aga = lshr i16 %i.afz, 1
  %i.agb = and i16 %i.aga, 2016
  %i.agc = or disjoint i16 %i.agb, %i.aft
  %i.agd = and i16 %i.afk, 31
  %i.age = load i8, ptr %i.afl, align 1, !tbaa !17
  %i.agf = lshr i8 %i.age, 3
  %i.agg = zext nneg i8 %i.agf to i16
  %i.agh = mul nuw nsw i16 %i.agd, %i.agg
  %i.agi = lshr i16 %i.agh, 5
  %i.agj = or disjoint i16 %i.agc, %i.agi
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bw
  %i.agk = getelementptr inbounds nuw [2 x i8], ptr %.4342415.us.i, i64 %indvars.iv452.i
  %i.agl = load i16, ptr %i.agk, align 2          ; 4 uses
  %i.agm = lshr i16 %i.agl, 11
  %i.agn = getelementptr inbounds nuw i8, ptr %.4337416.us.i, i64 %indvars.iv.i46 ; 3 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 2
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !17
  %i.agq = lshr i8 %i.agp, 3
  %i.agr = zext nneg i8 %i.agq to i16
  %i.ags = sub nsw i16 %i.agm, %i.agr
  %i.agt = tail call i16 @llvm.smax.i16(i16 %i.ags, i16 0)
  %i.agu = shl nuw i16 %i.agt, 11
  %i.agv = lshr i16 %i.agl, 5
  %i.agw = and i16 %i.agv, 63
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agn, i64 1
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !17
  %i.agz = lshr i8 %i.agy, 2
  %i.aha = zext nneg i8 %i.agz to i16
  %i.ahb = sub nsw i16 %i.agw, %i.aha
  %i.ahc = tail call i16 @llvm.smax.i16(i16 %i.ahb, i16 0)
  %i.ahd = shl nuw nsw i16 %i.ahc, 5
  %i.ahe = add nuw i16 %i.ahd, %i.agu
  %i.ahf = and i16 %i.agl, 31
  %i.ahg = load i8, ptr %i.agn, align 1, !tbaa !17
  %i.ahh = lshr i8 %i.ahg, 3
  %i.ahi = zext nneg i8 %i.ahh to i16
  %i.ahj = sub nsw i16 %i.ahf, %i.ahi
  %i.ahk = tail call i16 @llvm.smax.i16(i16 %i.ahj, i16 0)
  %i.ahl = add nuw i16 %i.ahe, %i.ahk
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bw
  %i.ahm = getelementptr inbounds nuw [2 x i8], ptr %.4342415.us.i, i64 %indvars.iv452.i
  %i.ahn = load i16, ptr %i.ahm, align 2          ; 4 uses
  %i.aho = lshr i16 %i.ahn, 11
  %i.ahp = getelementptr inbounds nuw i8, ptr %.4337416.us.i, i64 %indvars.iv.i46 ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 2
  %i.ahr = load i8, ptr %i.ahq, align 1, !tbaa !17
  %i.ahs = lshr i8 %i.ahr, 3
  %i.aht = zext nneg i8 %i.ahs to i16
  %i.ahu = add nuw nsw i16 %i.aho, %i.aht
  %i.ahv = tail call i16 @llvm.umin.i16(i16 %i.ahu, i16 31)
  %spec.select.us.i50 = shl nuw i16 %i.ahv, 11
  %i.ahw = lshr i16 %i.ahn, 5
  %i.ahx = and i16 %i.ahw, 63
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahp, i64 1
  %i.ahz = load i8, ptr %i.ahy, align 1, !tbaa !17
  %i.aia = lshr i8 %i.ahz, 2
  %i.aib = zext nneg i8 %i.aia to i16
  %i.aic = add nuw nsw i16 %i.ahx, %i.aib
  %i.aid = tail call i16 @llvm.umin.i16(i16 %i.aic, i16 63)
  %i.aie = shl nuw nsw i16 %i.aid, 5
  %i.aif = or disjoint i16 %i.aie, %spec.select.us.i50
  %i.aig = and i16 %i.ahn, 31
  %i.aih = load i8, ptr %i.ahp, align 1, !tbaa !17
  %i.aii = lshr i8 %i.aih, 3
  %i.aij = zext nneg i8 %i.aii to i16
  %i.aik = add nuw nsw i16 %i.aig, %i.aij
  %i.ail = tail call i16 @llvm.umin.i16(i16 %i.aik, i16 31)
  %i.aim = or disjoint i16 %i.aif, %i.ail
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx
  %i.ain = phi i16 [ %i.ahn, %bb.ca ], [ %i.agl, %bb.bz ], [ %i.afk, %bb.by ], [ %i.aei, %bb.bx ]
  %.0315.us.i = phi i16 [ %i.aim, %bb.ca ], [ %i.ahl, %bb.bz ], [ %i.agj, %bb.by ], [ %i.afi, %bb.bx ]
  %i.aio = getelementptr inbounds nuw [2 x i8], ptr %.4342415.us.i, i64 %indvars.iv452.i
  br i1 %or.cond15.us.i44, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %or.cond18.us.i45, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aip = getelementptr inbounds nuw i8, ptr %.2330417.us.i, i64 %indvars.iv452.i
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !17 ; 2 uses
  br i1 %i.aea, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.air = zext i8 %i.aiq to i32
  %i.ais = mul nuw nsw i32 %i.air, %i.adz
  %i.ait = getelementptr inbounds nuw i8, ptr %.4337416.us.i, i64 %indvars.iv.i46
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 3
  %i.aiv = load i8, ptr %i.aiu, align 1, !tbaa !17
  %i.aiw = zext i8 %i.aiv to i32
  %i.aix = mul nuw nsw i32 %i.ais, %i.aiw
  %i.aiy = lshr i32 %i.aix, 16
  %i.aiz = trunc nuw i32 %i.aiy to i8
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cc
  %i.aja = getelementptr inbounds nuw i8, ptr %.4337416.us.i, i64 %indvars.iv.i46
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 3
  %i.ajc = load i8, ptr %i.ajb, align 1, !tbaa !17
  %i.ajd = zext i8 %i.ajc to i32
  %i.aje = mul nuw nsw i32 %i.ajd, %i.adz
  %i.ajf = lshr i32 %i.aje, 8
  %i.ajg = trunc nuw i32 %i.ajf to i8
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cb
  %i.ajh = getelementptr inbounds nuw i8, ptr %.4337416.us.i, i64 %indvars.iv.i46
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 3
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !17
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd
  %.sink.i47 = phi i8 [ %i.ajj, %bb.cg ], [ %i.ajg, %bb.cf ], [ %i.aiz, %bb.ce ], [ %i.aiq, %bb.cd ]
  %i.ajk = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0315.us.i, i16 noundef zeroext %i.ain, i8 noundef zeroext %.sink.i47) #5
  %i.ajl = tail call noundef i16 @llvm.bswap.i16(i16 %i.ajk)
  store i16 %i.ajl, ptr %i.aio, align 2, !tbaa !12
  %indvars.iv.next453.i = add nuw nsw i64 %indvars.iv452.i, 1 ; 2 uses
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i46, 4
  %exitcond457.not.i = icmp eq i64 %indvars.iv.next453.i, %wide.trip.count.i42
  br i1 %exitcond457.not.i, label %._crit_edge.us.i49, label %bb.bw, !llvm.loop !79

._crit_edge.us.i49:                               ; preds = %bb.ch
  %i.ajm = getelementptr inbounds nuw i8, ptr %.4342415.us.i, i64 %i.aec
  %i.ajn = getelementptr inbounds i8, ptr %.4337416.us.i, i64 %i.aed
  %i.ajo = getelementptr inbounds i8, ptr %.2330417.us.i, i64 %i.aee
  %.3331.us.i = select i1 %i.aef, ptr null, ptr %i.ajo
  %i.ajp = add nuw nsw i32 %.4418.us.i, 1         ; 2 uses
  %exitcond458.not.i = icmp eq i32 %i.ajp, %i.adi
  br i1 %exitcond458.not.i, label %rgb565_swapped_image_blend.exit, label %.lr.ph.us.i43, !llvm.loop !80

bb.ci:                                            ; preds = %bb.bv
  %i.ajq = icmp eq ptr %i.adt, null               ; 3 uses
  %i.ajr = zext i8 %i.adk to i32                  ; 2 uses
  %i.ajs = icmp ugt i8 %i.adk, -4                 ; 2 uses
  %or.cond.i51 = select i1 %i.ajq, i1 %i.ajs, i1 false
  br i1 %or.cond.i51, label %.preheader398.i, label %bb.cm

.preheader398.i:                                  ; preds = %bb.ci
  %i.ajt = icmp sgt i32 %i.adi, 0
  br i1 %i.ajt, label %.preheader.lr.ph.i58, label %rgb565_swapped_image_blend.exit

.preheader.lr.ph.i58:                             ; preds = %.preheader398.i
  %i.aju = icmp sgt i32 %.fr.i39, 0
  %i.ajv = zext i32 %i.adn to i64
  %i.ajw = sext i32 %i.adr to i64
  br i1 %i.aju, label %.preheader.preheader.i59, label %rgb565_swapped_image_blend.exit

.preheader.preheader.i59:                         ; preds = %.preheader.lr.ph.i58
  %wide.trip.count496.i = zext nneg i32 %.fr.i39 to i64
  br label %.preheader.i60

.preheader.i60:                                   ; preds = %._crit_edge441.i, %.preheader.preheader.i59
  %.0316444.i = phi i32 [ %i.aly, %._crit_edge441.i ], [ 0, %.preheader.preheader.i59 ]
  %.0333443.i = phi ptr [ %i.alx, %._crit_edge441.i ], [ %i.adp, %.preheader.preheader.i59 ] ; 2 uses
  %.0338442.i = phi ptr [ %i.alw, %._crit_edge441.i ], [ %i.adl, %.preheader.preheader.i59 ] ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %lv_color_24_16_mix_premult.exit.i, %.preheader.i60
  %indvars.iv491.i = phi i64 [ 0, %.preheader.i60 ], [ %indvars.iv.next492.i, %lv_color_24_16_mix_premult.exit.i ] ; 2 uses
  %indvars.iv489.i = phi i64 [ 0, %.preheader.i60 ], [ %indvars.iv.next490.i, %lv_color_24_16_mix_premult.exit.i ] ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %.0333443.i, i64 %indvars.iv489.i ; 6 uses
  %i.ajy = getelementptr inbounds nuw [2 x i8], ptr %.0338442.i, i64 %indvars.iv491.i ; 2 uses
  %i.ajz = load i16, ptr %i.ajy, align 2, !tbaa !12
  %i.aka = tail call noundef i16 @llvm.bswap.i16(i16 %i.ajz) ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajx, i64 3
  %i.akc = load i8, ptr %i.akb, align 1, !tbaa !17 ; 2 uses
  switch i8 %i.akc, label %bb.cl [
    i8 0, label %lv_color_24_16_mix_premult.exit.i
    i8 -1, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajx, i64 1
  %i.ake = load <2 x i8>, ptr %i.akd, align 1, !tbaa !17
  %i.akf = and <2 x i8> %i.ake, <i8 -4, i8 -8>
  %i.akg = zext <2 x i8> %i.akf to <2 x i16>
  %i.akh = shl nuw <2 x i16> %i.akg, <i16 3, i16 8> ; 2 uses
  %shift722 = shufflevector <2 x i16> %i.akh, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop723 = or disjoint <2 x i16> %i.akh, %shift722
  %i.aki = extractelement <2 x i16> %foldExtExtBinop723, i64 0
  %i.akj = load i8, ptr %i.ajx, align 1, !tbaa !17
  %i.akk = lshr i8 %i.akj, 3
  %i.akl = zext nneg i8 %i.akk to i16
  %i.akm = or disjoint i16 %i.aki, %i.akl
  br label %lv_color_24_16_mix_premult.exit.i

bb.cl:                                            ; preds = %bb.cj
  %i.akn = xor i8 %i.akc, -1
  %i.ako = getelementptr inbounds nuw i8, ptr %i.ajx, i64 2
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !17
  %i.akq = lshr i8 %i.akp, 3
  %i.akr = zext i16 %i.aka to i32                 ; 3 uses
  %i.aks = lshr i32 %i.akr, 11
  %i.akt = zext i8 %i.akn to i32                  ; 3 uses
  %i.aku = mul nuw nsw i32 %i.aks, %i.akt
  %i.akv = lshr i32 %i.aku, 8
  %i.akw = trunc nuw nsw i32 %i.akv to i8
  %i.akx = add nuw nsw i8 %i.akq, %i.akw
  %i.aky = getelementptr inbounds nuw i8, ptr %i.ajx, i64 1
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !17
  %i.ala = lshr i8 %i.akz, 2
  %i.alb = lshr i32 %i.akr, 5
  %i.alc = and i32 %i.alb, 63
  %i.ald = mul nuw nsw i32 %i.alc, %i.akt
  %i.ale = lshr i32 %i.ald, 8
  %i.alf = trunc nuw nsw i32 %i.ale to i8
  %i.alg = add nuw nsw i8 %i.ala, %i.alf
  %i.alh = load i8, ptr %i.ajx, align 1, !tbaa !17
  %i.ali = lshr i8 %i.alh, 3
  %i.alj = and i32 %i.akr, 31
  %i.alk = mul nuw nsw i32 %i.alj, %i.akt
  %i.all = lshr i32 %i.alk, 8
  %i.alm = trunc nuw nsw i32 %i.all to i8
  %i.aln = add nuw nsw i8 %i.ali, %i.alm
  %i.alo = zext nneg i8 %i.akx to i16
  %i.alp = shl i16 %i.alo, 11
  %i.alq = zext nneg i8 %i.alg to i16
  %i.alr = shl nuw nsw i16 %i.alq, 5
  %i.als = add i16 %i.alr, %i.alp
  %i.alt = zext nneg i8 %i.aln to i16
  %i.alu = add i16 %i.als, %i.alt
  br label %lv_color_24_16_mix_premult.exit.i

lv_color_24_16_mix_premult.exit.i:                ; preds = %bb.cl, %bb.ck, %bb.cj
  %.0.i.i61 = phi i16 [ %i.alu, %bb.cl ], [ %i.akm, %bb.ck ], [ %i.aka, %bb.cj ]
  %i.alv = tail call noundef i16 @llvm.bswap.i16(i16 %.0.i.i61)
  store i16 %i.alv, ptr %i.ajy, align 2, !tbaa !12
  %indvars.iv.next492.i = add nuw nsw i64 %indvars.iv491.i, 1 ; 2 uses
  %indvars.iv.next490.i = add nuw nsw i64 %indvars.iv489.i, 4
  %exitcond497.not.i = icmp eq i64 %indvars.iv.next492.i, %wide.trip.count496.i
  br i1 %exitcond497.not.i, label %._crit_edge441.i, label %bb.cj, !llvm.loop !81

._crit_edge441.i:                                 ; preds = %lv_color_24_16_mix_premult.exit.i
  %i.alw = getelementptr inbounds nuw i8, ptr %.0338442.i, i64 %i.ajv
  %i.alx = getelementptr inbounds i8, ptr %.0333443.i, i64 %i.ajw
  %i.aly = add nuw nsw i32 %.0316444.i, 1         ; 2 uses
  %exitcond498.not.i = icmp eq i32 %i.aly, %i.adi
  br i1 %exitcond498.not.i, label %rgb565_swapped_image_blend.exit, label %.preheader.i60, !llvm.loop !82

bb.cm:                                            ; preds = %bb.ci
  %i.alz = icmp ult i8 %i.adk, -3                 ; 2 uses
  %or.cond6.i52 = select i1 %i.ajq, i1 %i.alz, i1 false
  br i1 %or.cond6.i52, label %.preheader400.i, label %bb.cr

.preheader400.i:                                  ; preds = %bb.cm
  %i.ama = icmp sgt i32 %i.adi, 0
  br i1 %i.ama, label %.preheader399.lr.ph.i, label %rgb565_swapped_image_blend.exit

.preheader399.lr.ph.i:                            ; preds = %.preheader400.i
  %i.amb = icmp sgt i32 %.fr.i39, 0
  %i.amc = zext i32 %i.adn to i64
  %i.amd = sext i32 %i.adr to i64
  br i1 %i.amb, label %.preheader399.preheader.i, label %rgb565_swapped_image_blend.exit

.preheader399.preheader.i:                        ; preds = %.preheader399.lr.ph.i
  %wide.trip.count486.i = zext nneg i32 %.fr.i39 to i64
  br label %.preheader399.i

.preheader399.i:                                  ; preds = %._crit_edge435.i, %.preheader399.preheader.i
  %.1317438.i = phi i32 [ %i.anz, %._crit_edge435.i ], [ 0, %.preheader399.preheader.i ]
  %.1334437.i = phi ptr [ %i.any, %._crit_edge435.i ], [ %i.adp, %.preheader399.preheader.i ] ; 2 uses
  %.1339436.i = phi ptr [ %i.anx, %._crit_edge435.i ], [ %i.adl, %.preheader399.preheader.i ] ; 2 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %.preheader399.i
  %indvars.iv481.i = phi i64 [ 0, %.preheader399.i ], [ %indvars.iv.next482.i, %bb.cq ] ; 2 uses
  %indvars.iv479.i = phi i64 [ 0, %.preheader399.i ], [ %indvars.iv.next480.i, %bb.cq ] ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %.1334437.i, i64 %indvars.iv479.i ; 4 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 3
  %i.amg = load i8, ptr %i.amf, align 1, !tbaa !17 ; 3 uses
  %.not366.i = icmp eq i8 %i.amg, 0
  br i1 %.not366.i, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.amh = getelementptr inbounds nuw [2 x i8], ptr %.1339436.i, i64 %indvars.iv481.i ; 2 uses
  %i.ami = load i16, ptr %i.amh, align 2, !tbaa !12 ; 2 uses
  %i.amj = zext i8 %i.amg to i32
  %i.amk = mul nuw nsw i32 %i.amj, %i.ajr
  %i.aml = lshr i32 %i.amk, 8                     ; 2 uses
  %cond514.i = icmp eq i32 %i.aml, 0
  br i1 %cond514.i, label %lv_color_24_16_mix.exit.i57, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.amm = trunc nuw nsw i32 %i.aml to i16        ; 4 uses
  %i.amn = tail call noundef i16 @llvm.bswap.i16(i16 %i.ami) ; 3 uses
  %i.amo = zext i8 %i.amg to i16
  %i.amp = udiv i16 -256, %i.amo                  ; 3 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.ame, i64 2
  %i.amr = load i8, ptr %i.amq, align 1, !tbaa !17
  %i.ams = zext i8 %i.amr to i16
  %i.amt = mul i16 %i.amp, %i.ams
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ame, i64 1
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !17
  %i.amw = zext i8 %i.amv to i16
  %i.amx = mul i16 %i.amp, %i.amw
  %i.amy = load i8, ptr %i.ame, align 1, !tbaa !17
  %i.amz = zext i8 %i.amy to i16
  %i.ana = mul i16 %i.amp, %i.amz
  %i.anb = xor i16 %i.amm, 255                    ; 3 uses
  %sum.shift395.i = lshr i16 %i.amt, 11
  %i.anc = mul nuw nsw i16 %sum.shift395.i, %i.amm
  %i.and = lshr i16 %i.amn, 11
  %i.ane = mul nuw nsw i16 %i.and, %i.anb
  %i.anf = add nuw nsw i16 %i.anc, %i.ane
  %i.ang = shl nuw i16 %i.anf, 3
  %i.anh = and i16 %i.ang, -2048
  %sum.shift396.i = lshr i16 %i.amx, 10
  %i.ani = mul nuw nsw i16 %sum.shift396.i, %i.amm
  %i.anj = lshr i16 %i.amn, 5
  %i.ank = and i16 %i.anj, 63
  %i.anl = mul nuw nsw i16 %i.ank, %i.anb
  %i.anm = add nuw nsw i16 %i.ani, %i.anl
  %i.ann = lshr i16 %i.anm, 3
  %i.ano = and i16 %i.ann, 2016
  %sum.shift397.i = lshr i16 %i.ana, 11
  %i.anp = mul nuw nsw i16 %sum.shift397.i, %i.amm
  %i.anq = and i16 %i.amn, 31
  %i.anr = mul nuw nsw i16 %i.anq, %i.anb
end_hunk_1
begin_hunk_2_@lv_draw_sw_blend_image_to_rgb565_swapped:bb.a

bb.fd:                                            ; preds = %bb.fr, %.preheader242.i
  %indvars.iv.i115 = phi i64 [ 0, %.preheader242.i ], [ %indvars.iv.next.i117, %bb.fr ] ; 8 uses
  %.4202247.i = phi i32 [ 0, %.preheader242.i ], [ %i.cyq, %bb.fr ] ; 3 uses
  %i.cvh = lshr i32 %.4202247.i, 3
  %i.cvi = zext nneg i32 %i.cvh to i64
  %i.cvj = getelementptr inbounds nuw i8, ptr %.4216248.i, i64 %i.cvi
  %i.cvk = load i8, ptr %i.cvj, align 1, !tbaa !17
  %i.cvl = zext i8 %i.cvk to i32
  %i.cvm = and i32 %.4202247.i, 4
  %i.cvn = xor i32 %i.cvm, 7
  %i.cvo = lshr i32 %i.cvl, %i.cvn
  %i.cvp = trunc nuw nsw i32 %i.cvo to i8
  %i.cvq = and i8 %i.cvp, 1
  %narrow.i116 = sub nsw i8 0, %i.cvq             ; 4 uses
  %i.cvr = load i32, ptr %i.cgb, align 4, !tbaa !28
  switch i32 %i.cvr, label %rgb565_swapped_image_blend.exit [
    i32 1, label %bb.fe
    i32 2, label %bb.ff
    i32 3, label %bb.fg
    i32 4, label %bb.fh
  ]

bb.fe:                                            ; preds = %bb.fd
  %i.cvs = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i115
  %i.cvt = load i16, ptr %i.cvs, align 2, !tbaa !12 ; 2 uses
  %i.cvu = tail call noundef i16 @llvm.bswap.i16(i16 %i.cvt) ; 2 uses
  %i.cvv = zext i16 %i.cvu to i32
  %i.cvw = zext i8 %narrow.i116 to i16            ; 3 uses
  %i.cvx = shl nuw i16 %i.cvw, 8
  %i.cvy = and i16 %i.cvx, -2048
  %i.cvz = shl nuw nsw i16 %i.cvw, 3
  %i.cwa = and i16 %i.cvz, 2016
  %i.cwb = lshr i16 %i.cvw, 3
  %i.cwc = or disjoint i16 %i.cwa, %i.cwb
  %i.cwd = or disjoint i16 %i.cwc, %i.cvy         ; 2 uses
  %i.cwe = zext i16 %i.cwd to i32
  %i.cwf = add nuw nsw i32 %i.cvv, %i.cwe
  %i.cwg = icmp samesign ult i32 %i.cwf, 65535
  %i.cwh = add i16 %i.cvu, %i.cwd
  %spec.select.i120 = select i1 %i.cwg, i16 %i.cwh, i16 -1
  br label %bb.fk

bb.ff:                                            ; preds = %bb.fd
  %i.cwi = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i115
  %i.cwj = load i16, ptr %i.cwi, align 2, !tbaa !12 ; 2 uses
  %i.cwk = tail call noundef i16 @llvm.bswap.i16(i16 %i.cwj)
  %i.cwl = zext i8 %narrow.i116 to i16            ; 3 uses
  %i.cwm = shl nuw i16 %i.cwl, 8
  %i.cwn = and i16 %i.cwm, -2048
  %i.cwo = shl nuw nsw i16 %i.cwl, 3
  %i.cwp = and i16 %i.cwo, 2016
  %i.cwq = lshr i16 %i.cwl, 3
  %i.cwr = or disjoint i16 %i.cwp, %i.cwq
  %i.cws = or disjoint i16 %i.cwr, %i.cwn
  %spec.select231.i = tail call i16 @llvm.usub.sat.i16(i16 %i.cwk, i16 %i.cws)
  br label %bb.fk

bb.fg:                                            ; preds = %bb.fd
  %i.cwt = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i115
  %i.cwu = load i16, ptr %i.cwt, align 2, !tbaa !12 ; 2 uses
  %i.cwv = tail call noundef i16 @llvm.bswap.i16(i16 %i.cwu) ; 3 uses
  %i.cww = lshr i16 %i.cwv, 11
  %i.cwx = zext i8 %narrow.i116 to i16            ; 2 uses
  %i.cwy = shl nuw nsw i16 %i.cwx, 3
  %i.cwz = and i16 %i.cwy, 2016
  %i.cxa = lshr i16 %i.cwx, 3                     ; 2 uses
  %i.cxb = or disjoint i16 %i.cwz, %i.cxa         ; 2 uses
  %i.cxc = shl i16 %i.cxb, 8
  %i.cxd = and i16 %i.cxc, -2048
  %i.cxe = mul i16 %i.cww, %i.cxd
  %i.cxf = lshr i16 %i.cwv, 5
  %i.cxg = and i16 %i.cxf, 63
  %i.cxh = lshr i16 %i.cxb, 2
  %i.cxi = and i16 %i.cxh, 63
  %narrow221.i = mul nuw nsw i16 %i.cxg, %i.cxi
  %i.cxj = lshr i16 %narrow221.i, 1
  %i.cxk = and i16 %i.cxj, 2016
  %i.cxl = or disjoint i16 %i.cxk, %i.cxe
  %i.cxm = and i16 %i.cwv, 31
  %narrow222.i = mul nuw nsw i16 %i.cxm, %i.cxa
  %i.cxn = lshr i16 %narrow222.i, 5
  %i.cxo = or disjoint i16 %i.cxl, %i.cxn
  br label %bb.fk

bb.fh:                                            ; preds = %bb.fd
  %i.cxp = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i115
  %i.cxq = load i16, ptr %i.cxp, align 2, !tbaa !12 ; 3 uses
  %i.cxr = tail call noundef i16 @llvm.bswap.i16(i16 %i.cxq) ; 3 uses
  %i.cxs = zext i8 %narrow.i116 to i16            ; 3 uses
  %i.cxt = shl nuw i16 %i.cxs, 8
  %i.cxu = and i16 %i.cxt, -2048
  %i.cxv = shl nuw nsw i16 %i.cxs, 3
  %i.cxw = and i16 %i.cxv, 2016
  %i.cxx = lshr i16 %i.cxs, 3
  %i.cxy = or disjoint i16 %i.cxw, %i.cxx
  %i.cxz = or disjoint i16 %i.cxy, %i.cxu         ; 3 uses
  %i.cya = icmp ugt i16 %i.cxr, %i.cxz
  br i1 %i.cya, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.cyb = sub nuw i16 %i.cxr, %i.cxz
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %.neg.i = sub nuw i16 %i.cxz, %i.cxr
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %bb.fg, %bb.ff, %bb.fe
  %i.cyc = phi i16 [ %i.cxq, %bb.fi ], [ %i.cwj, %bb.ff ], [ %i.cwu, %bb.fg ], [ %i.cxq, %bb.fj ], [ %i.cvt, %bb.fe ]
  %.0191.i = phi i16 [ %i.cyb, %bb.fi ], [ %spec.select231.i, %bb.ff ], [ %i.cxo, %bb.fg ], [ %.neg.i, %bb.fj ], [ %spec.select.i120, %bb.fe ] ; 4 uses
  br i1 %or.cond14.i, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.cyd = tail call noundef i16 @llvm.bswap.i16(i16 %.0191.i)
  %i.cye = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i115
  store i16 %i.cyd, ptr %i.cye, align 2, !tbaa !12
  br label %bb.fr

bb.fm:                                            ; preds = %bb.fk
  %i.cyf = getelementptr inbounds nuw [2 x i8], ptr %.4251.i, i64 %indvars.iv.i115 ; 3 uses
  %i.cyg = tail call noundef i16 @llvm.bswap.i16(i16 %i.cyc) ; 3 uses
  br i1 %or.cond17.i, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.cyh = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0191.i, i16 noundef zeroext %i.cyg, i8 noundef zeroext %i.cfp) #5
  %i.cyi = tail call noundef i16 @llvm.bswap.i16(i16 %i.cyh)
  store i16 %i.cyi, ptr %i.cyf, align 2, !tbaa !12
  br label %bb.fr

bb.fo:                                            ; preds = %bb.fm
  %i.cyj = getelementptr inbounds nuw i8, ptr %.2210249.i, i64 %indvars.iv.i115
  %i.cyk = load i8, ptr %i.cyj, align 1, !tbaa !17 ; 2 uses
  br i1 %i.cgg, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.cyl = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0191.i, i16 noundef zeroext %i.cyg, i8 noundef zeroext %i.cyk) #5
  %i.cym = tail call noundef i16 @llvm.bswap.i16(i16 %i.cyl)
  store i16 %i.cym, ptr %i.cyf, align 2, !tbaa !12
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fo
  %i.cyn = tail call i8 @llvm.umulh.i8(i8 %i.cyk, i8 %i.cfp)
  %i.cyo = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0191.i, i16 noundef zeroext %i.cyg, i8 noundef zeroext %i.cyn) #5
  %i.cyp = tail call noundef i16 @llvm.bswap.i16(i16 %i.cyo)
  store i16 %i.cyp, ptr %i.cyf, align 2, !tbaa !12
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp, %bb.fn, %bb.fl
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i115, 1 ; 2 uses
  %i.cyq = add nuw nsw i32 %.4202247.i, 4
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i114
  br i1 %exitcond.not.i118, label %._crit_edge.i119, label %bb.fd, !llvm.loop !160

._crit_edge.i119:                                 ; preds = %bb.fr
  %i.cyr = getelementptr inbounds nuw i8, ptr %.4251.i, i64 %i.cgi
  %i.cys = getelementptr inbounds nuw i8, ptr %.4216248.i, i64 %i.cgj
  %i.cyt = getelementptr inbounds i8, ptr %.2210249.i, i64 %i.cgk
  %.3211.i = select i1 %i.cvg, ptr null, ptr %i.cyt
  %i.cyu = add nuw nsw i32 %.4197250.i, 1         ; 2 uses
  %exitcond307.not.i = icmp eq i32 %i.cyu, %i.cfn
  br i1 %exitcond307.not.i, label %rgb565_swapped_image_blend.exit, label %.preheader242.i, !llvm.loop !161

rgb565_swapped_image_blend.exit:                  ; preds = %._crit_edge.i119, %bb.fd, %._crit_edge254.i, %._crit_edge261.i, %._crit_edge268.split.split.i, %._crit_edge294.i, %.lr.ph348.split.i, %._crit_edge.us.i94, %bb.dw, %._crit_edge.i103, %._crit_edge357.i, %._crit_edge364.i, %._crit_edge370.i112, %.lr.ph326.split.i, %._crit_edge.us.i70, %bb.dd, %._crit_edge.i74, %._crit_edge335.i76, %._crit_edge342.split.split.i, %._crit_edge367.i, %.lr.ph419.split.i, %._crit_edge.us.i49, %bb.bw, %._crit_edge.i56, %._crit_edge428.i, %._crit_edge435.i, %._crit_edge441.i, %.lr.ph361.split.i, %._crit_edge.us.i, %bb.av, %._crit_edge.i35, %._crit_edge370.i, %._crit_edge377.i, %._crit_edge383.i, %._crit_edge.i16, %bb.ag, %._crit_edge329.i, %._crit_edge335.i, %._crit_edge341.i, %bb.aa, %._crit_edge.i, %._crit_edge292.i, %._crit_edge298.i, %._crit_edge304.i, %bb.e, %.preheader239.lr.ph.i, %bb.fa, %.preheader236.lr.ph.i, %.preheader237.i, %.preheader233.lr.ph.i, %.preheader234.i, %.preheader.lr.ph.i128, %.preheader232.i, %.preheader242.lr.ph.i, %.preheader244.i, %.preheader334.lr.ph.i, %bb.er, %.preheader331.lr.ph.i, %.preheader332.i, %.preheader328.lr.ph.i, %.preheader329.i, %.preheader.lr.ph.i106, %.preheader327.i, %.preheader338.i, %.preheader312.lr.ph.i, %bb.ds, %.preheader309.lr.ph.i, %.preheader310.i, %.preheader306.lr.ph.i, %.preheader307.i, %.preheader.lr.ph.i80, %.preheader305.i, %.preheader316.i, %.preheader405.lr.ph.i, %bb.cx, %.preheader402.lr.ph.i, %.preheader403.i, %.preheader399.lr.ph.i, %.preheader400.i, %.preheader.lr.ph.i58, %.preheader398.i, %.preheader409.i, %.preheader347.lr.ph.i, %bb.bs, %.preheader344.lr.ph.i, %.preheader345.i, %.preheader341.lr.ph.i, %.preheader342.i, %.preheader.lr.ph.i36, %.preheader340.i, %.preheader351.i, %.preheader311.lr.ph.i, %.preheader312.i, %.preheader314.lr.ph.i, %.preheader315.i, %.preheader.lr.ph.i23, %.preheader309.i, %bb.z, %.preheader317.lr.ph.i, %.preheader319.i, %bb.w, %.preheader276.lr.ph.i, %.preheader277.i, %.preheader279.lr.ph.i, %.preheader280.i, %.preheader.lr.ph.i, %.preheader274.i, %bb.d, %.preheader282.lr.ph.i, %.preheader283.i, %bb.a, %bb.at, %bb.as
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rgb888_image_blend(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 3, 5) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.fr = freeze i32 %i.b                          ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !21    ; 10 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %.preheader327

.preheader327:                                    ; preds = %bb.a
  %.not309332 = icmp sgt i32 %i.d, 0
  br i1 %.not309332, label %.lr.ph337, label %.critedge

.lr.ph337:                                        ; preds = %.preheader327
  %.not308329 = icmp sgt i32 %.fr, 0
  %i.u = icmp ugt i8 %i.f, -4
  %i.v = zext i32 %i.i to i64                     ; 2 uses
  %i.w = sext i32 %i.m to i64
  %i.x = sext i32 %i.q to i64
  br i1 %.not308329, label %.lr.ph.us.preheader, label %.lr.ph337.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph337
  %2 = zext nneg i8 %1 to i64
  %wide.trip.count = zext nneg i32 %.fr to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.4336.us = phi i32 [ %i.eq, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.3277335.us = phi ptr [ %.4278.us, %._crit_edge.us ], [ %i.o, %.lr.ph.us.preheader ] ; 3 uses
  %.6334.us = phi ptr [ %i.eo, %._crit_edge.us ], [ %i.k, %.lr.ph.us.preheader ] ; 5 uses
  %.6291333.us = phi ptr [ %i.en, %._crit_edge.us ], [ %i.g, %.lr.ph.us.preheader ] ; 7 uses
  tail call void @lv_draw_sw_rgb565_swap(ptr noundef %.6291333.us, i32 noundef %.fr) #5
  %i.y = icmp eq ptr %.3277335.us, null           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.j
  %indvars.iv435 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next436, %bb.j ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %i.z = load i32, ptr %i.r, align 4, !tbaa !28
  switch i32 %i.z, label %.critedge [
    i32 1, label %bb.f
    i32 2, label %bb.e
    i32 3, label %bb.d
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  %i.ab = load i16, ptr %i.aa, align 2            ; 4 uses
  %i.ac = lshr i16 %i.ab, 11
  %i.ad = getelementptr inbounds nuw i8, ptr %.6334.us, i64 %indvars.iv ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  %i.ag = lshr i8 %i.af, 3
  %i.ah = zext nneg i8 %i.ag to i16
  %i.ai = sub nsw i16 %i.ac, %i.ah
  %i.aj = tail call i16 @llvm.abs.i16(i16 %i.ai, i1 true)
  %i.ak = shl nuw i16 %i.aj, 11
  %i.al = lshr i16 %i.ab, 5
  %i.am = and i16 %i.al, 63
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = lshr i8 %i.ao, 2
  %i.aq = zext nneg i8 %i.ap to i16
  %i.ar = sub nsw i16 %i.am, %i.aq
  %i.as = tail call i16 @llvm.abs.i16(i16 %i.ar, i1 true)
  %i.at = shl nuw nsw i16 %i.as, 5
  %i.au = add nuw i16 %i.at, %i.ak
  %i.av = and i16 %i.ab, 31
  %i.aw = load i8, ptr %i.ad, align 1, !tbaa !17
  %i.ax = lshr i8 %i.aw, 3
  %i.ay = zext nneg i8 %i.ax to i16
  %i.az = sub nsw i16 %i.av, %i.ay
  %i.ba = tail call i16 @llvm.abs.i16(i16 %i.az, i1 true)
  %i.bb = add nuw i16 %i.au, %i.ba
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  %i.bd = load i16, ptr %i.bc, align 2            ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.6334.us, i64 %indvars.iv ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = lshr i8 %i.bg, 3
  %i.bi = zext nneg i8 %i.bh to i16
  %i.bj = lshr i16 %i.bd, 5                       ; 2 uses
  %i.bk = and i16 %i.bj, 1984
  %i.bl = mul nuw i16 %i.bk, %i.bi
  %i.bm = and i16 %i.bl, -2048
  %i.bn = and i16 %i.bj, 63
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = lshr i8 %i.bp, 2
  %i.br = zext nneg i8 %i.bq to i16
  %i.bs = mul nuw nsw i16 %i.bn, %i.br
  %i.bt = lshr i16 %i.bs, 1
  %i.bu = and i16 %i.bt, 2016
  %i.bv = or disjoint i16 %i.bu, %i.bm
  %i.bw = and i16 %i.bd, 31
  %i.bx = load i8, ptr %i.be, align 1, !tbaa !17
  %i.by = lshr i8 %i.bx, 3
  %i.bz = zext nneg i8 %i.by to i16
  %i.ca = mul nuw nsw i16 %i.bw, %i.bz
  %i.cb = lshr i16 %i.ca, 5
  %i.cc = or disjoint i16 %i.bv, %i.cb
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  %i.ce = load i16, ptr %i.cd, align 2            ; 4 uses
  %i.cf = lshr i16 %i.ce, 11
  %i.cg = getelementptr inbounds nuw i8, ptr %.6334.us, i64 %indvars.iv ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !17
  %i.cj = lshr i8 %i.ci, 3
  %i.ck = zext nneg i8 %i.cj to i16
  %i.cl = sub nsw i16 %i.cf, %i.ck
  %i.cm = tail call i16 @llvm.smax.i16(i16 %i.cl, i16 0)
  %i.cn = shl nuw i16 %i.cm, 11
  %i.co = lshr i16 %i.ce, 5
  %i.cp = and i16 %i.co, 63
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !17
  %i.cs = lshr i8 %i.cr, 2
  %i.ct = zext nneg i8 %i.cs to i16
  %i.cu = sub nsw i16 %i.cp, %i.ct
  %i.cv = tail call i16 @llvm.smax.i16(i16 %i.cu, i16 0)
  %i.cw = shl nuw nsw i16 %i.cv, 5
  %i.cx = add nuw i16 %i.cw, %i.cn
  %i.cy = and i16 %i.ce, 31
  %i.cz = load i8, ptr %i.cg, align 1, !tbaa !17
  %i.da = lshr i8 %i.cz, 3
  %i.db = zext nneg i8 %i.da to i16
  %i.dc = sub nsw i16 %i.cy, %i.db
  %i.dd = tail call i16 @llvm.smax.i16(i16 %i.dc, i16 0)
  %i.de = add nuw i16 %i.cx, %i.dd
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  %i.dg = load i16, ptr %i.df, align 2            ; 4 uses
  %i.dh = lshr i16 %i.dg, 11
  %i.di = getelementptr inbounds nuw i8, ptr %.6334.us, i64 %indvars.iv ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !17
  %i.dl = lshr i8 %i.dk, 3
  %i.dm = zext nneg i8 %i.dl to i16
  %i.dn = add nuw nsw i16 %i.dh, %i.dm
  %i.do = tail call i16 @llvm.umin.i16(i16 %i.dn, i16 31)
  %spec.select.us = shl nuw i16 %i.do, 11
  %i.dp = lshr i16 %i.dg, 5
  %i.dq = and i16 %i.dp, 63
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !17
  %i.dt = lshr i8 %i.ds, 2
  %i.du = zext nneg i8 %i.dt to i16
  %i.dv = add nuw nsw i16 %i.dq, %i.du
  %i.dw = tail call i16 @llvm.umin.i16(i16 %i.dv, i16 63)
  %i.dx = shl nuw nsw i16 %i.dw, 5
  %i.dy = or disjoint i16 %i.dx, %spec.select.us
  %i.dz = and i16 %i.dg, 31
  %i.ea = load i8, ptr %i.di, align 1, !tbaa !17
  %i.eb = lshr i8 %i.ea, 3
  %i.ec = zext nneg i8 %i.eb to i16
  %i.ed = add nuw nsw i16 %i.dz, %i.ec
  %i.ee = tail call i16 @llvm.umin.i16(i16 %i.ed, i16 31)
  %i.ef = or disjoint i16 %i.dy, %i.ee
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.eg = phi i16 [ %i.dg, %bb.f ], [ %i.ce, %bb.e ], [ %i.bd, %bb.d ], [ %i.ab, %bb.c ]
  %.0261.us = phi i16 [ %i.ef, %bb.f ], [ %i.de, %bb.e ], [ %i.cc, %bb.d ], [ %i.bb, %bb.c ]
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.6291333.us, i64 %indvars.iv435
  br i1 %i.y, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ei = getelementptr inbounds nuw i8, ptr %.3277335.us, i64 %indvars.iv435
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !17  ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ek = tail call i8 @llvm.umulh.i8(i8 %i.ej, i8 %i.f)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sink = phi i8 [ %i.ej, %bb.h ], [ %i.ek, %bb.i ], [ %i.f, %bb.g ]
  %i.el = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %.0261.us, i16 noundef zeroext %i.eg, i8 noundef zeroext %.sink) #5
  %i.em = tail call noundef i16 @llvm.bswap.i16(i16 %i.el)
  store i16 %i.em, ptr %i.eh, align 2, !tbaa !12
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %2
  %exitcond440.not = icmp eq i64 %indvars.iv.next436, %wide.trip.count
  br i1 %exitcond440.not, label %._crit_edge.us, label %bb.b, !llvm.loop !194

._crit_edge.us:                                   ; preds = %bb.j
  %i.en = getelementptr inbounds nuw i8, ptr %.6291333.us, i64 %i.v
  %i.eo = getelementptr inbounds i8, ptr %.6334.us, i64 %i.w
  %i.ep = getelementptr inbounds i8, ptr %.3277335.us, i64 %i.x
  %.4278.us = select i1 %i.y, ptr null, ptr %i.ep
  %i.eq = add nuw nsw i32 %.4336.us, 1            ; 2 uses
  %exitcond441.not = icmp eq i32 %i.eq, %i.d
  br i1 %exitcond441.not, label %.critedge, label %.lr.ph.us, !llvm.loop !195

bb.k:                                             ; preds = %bb.a
  %i.er = icmp eq ptr %i.o, null                  ; 3 uses
  %i.es = icmp ugt i8 %i.f, -4                    ; 2 uses
  %or.cond = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond, label %.preheader321, label %bb.m

.preheader321:                                    ; preds = %bb.k
  %i.et = icmp sgt i32 %i.d, 0
  br i1 %i.et, label %.preheader320.lr.ph, label %.critedge

.preheader320.lr.ph:                              ; preds = %.preheader321
  %i.eu = icmp sgt i32 %.fr, 0
  %i.ev = zext i32 %i.i to i64
  %i.ew = sext i32 %i.m to i64
  br i1 %i.eu, label %.preheader320.us.preheader, label %.critedge

.preheader320.us.preheader:                       ; preds = %.preheader320.lr.ph
  %i.ex = zext nneg i8 %1 to i64
  %wide.trip.count474 = zext nneg i32 %.fr to i64
  br label %.preheader320.us

.preheader320.us:                                 ; preds = %.preheader320.us.preheader, %._crit_edge.us383
  %.0262379.us = phi i32 [ %i.fn, %._crit_edge.us383 ], [ 0, %.preheader320.us.preheader ]
  %.0279378.us = phi ptr [ %i.fm, %._crit_edge.us383 ], [ %i.k, %.preheader320.us.preheader ] ; 2 uses
  %.0285377.us = phi ptr [ %i.fl, %._crit_edge.us383 ], [ %i.g, %.preheader320.us.preheader ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.preheader320.us, %bb.l
  %indvars.iv469 = phi i64 [ 0, %.preheader320.us ], [ %indvars.iv.next470, %bb.l ] ; 2 uses
  %indvars.iv467 = phi i64 [ 0, %.preheader320.us ], [ %indvars.iv.next468, %bb.l ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0279378.us, i64 %indvars.iv467 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fa = load <2 x i8>, ptr %i.ez, align 1, !tbaa !17
  %i.fb = and <2 x i8> %i.fa, <i8 -4, i8 -8>
  %i.fc = zext <2 x i8> %i.fb to <2 x i16>
  %i.fd = shl nuw <2 x i16> %i.fc, <i16 3, i16 8> ; 2 uses
  %shift = shufflevector <2 x i16> %i.fd, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i16> %i.fd, %shift
  %i.fe = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.ff = load i8, ptr %i.ey, align 1, !tbaa !17
  %i.fg = lshr i8 %i.ff, 3
  %i.fh = zext nneg i8 %i.fg to i16
  %i.fi = or disjoint i16 %i.fe, %i.fh
  %i.fj = tail call noundef i16 @llvm.bswap.i16(i16 %i.fi)
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.0285377.us, i64 %indvars.iv469
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !12
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 1 ; 2 uses
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, %i.ex
  %exitcond475.not = icmp eq i64 %indvars.iv.next470, %wide.trip.count474
  br i1 %exitcond475.not, label %._crit_edge.us383, label %bb.l, !llvm.loop !196

._crit_edge.us383:                                ; preds = %bb.l
  %i.fl = getelementptr inbounds nuw i8, ptr %.0285377.us, i64 %i.ev ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %.0279378.us, i64 %i.ew ; 2 uses
  %i.fn = add nuw nsw i32 %.0262379.us, 1         ; 2 uses
  %exitcond476.not = icmp eq i32 %i.fn, %i.d
  br i1 %exitcond476.not, label %.loopexit322, label %.preheader320.us, !llvm.loop !197

bb.m:                                             ; preds = %bb.k
  %i.fo = icmp ult i8 %i.f, -3
  %or.cond6 = select i1 %i.er, i1 %i.fo, i1 false
  %i.fp = icmp sgt i32 %i.d, 0
  %or.cond406 = select i1 %or.cond6, i1 %i.fp, i1 false
  br i1 %or.cond406, label %.preheader323.lr.ph, label %.loopexit322

.preheader323.lr.ph:                              ; preds = %bb.m
  %i.fq = icmp slt i32 %.fr, 1
  %i.fr = zext i8 %i.f to i16                     ; 3 uses
  %i.fs = xor i8 %i.f, -1
  %i.ft = zext i8 %i.fs to i16                    ; 3 uses
  %i.fu = zext i32 %i.i to i64
  %i.fv = sext i32 %i.m to i64
  %cond = icmp eq i8 %i.f, 0
  %or.cond530 = select i1 %i.fq, i1 true, i1 %cond
  br i1 %or.cond530, label %.critedge, label %.preheader323.us.preheader

.preheader323.us.preheader:                       ; preds = %.preheader323.lr.ph
  %i.fw = zext nneg i8 %1 to i64
  %wide.trip.count462 = zext nneg i32 %.fr to i64
  br label %.preheader323.us

.preheader323.us:                                 ; preds = %.preheader323.us.preheader, %._crit_edge.split.split.us358
  %.1263351.us = phi i32 [ %i.hj, %._crit_edge.split.split.us358 ], [ 0, %.preheader323.us.preheader ]
  %.1280348.us = phi ptr [ %i.hi, %._crit_edge.split.split.us358 ], [ %i.k, %.preheader323.us.preheader ] ; 2 uses
  %.1286345.us = phi ptr [ %i.hh, %._crit_edge.split.split.us358 ], [ %i.g, %.preheader323.us.preheader ] ; 2 uses
  br label %lv_color_24_16_mix.exit.us355

lv_color_24_16_mix.exit.us355:                    ; preds = %lv_color_24_16_mix.exit.us355, %.preheader323.us
  %indvars.iv457 = phi i64 [ %indvars.iv.next458, %lv_color_24_16_mix.exit.us355 ], [ 0, %.preheader323.us ] ; 2 uses
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %lv_color_24_16_mix.exit.us355 ], [ 0, %.preheader323.us ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.1280348.us, i64 %indvars.iv455 ; 3 uses
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.1286345.us, i64 %indvars.iv457 ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !12
  %i.ga = tail call noundef i16 @llvm.bswap.i16(i16 %i.fz) ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !17
  %i.gd = lshr i8 %i.gc, 3
  %i.ge = zext nneg i8 %i.gd to i16
  %i.gf = mul nuw nsw i16 %i.ge, %i.fr
  %i.gg = lshr i16 %i.ga, 11
  %i.gh = mul nuw nsw i16 %i.gg, %i.ft
  %i.gi = add nuw nsw i16 %i.gf, %i.gh
  %i.gj = shl i16 %i.gi, 3
  %i.gk = and i16 %i.gj, -2048
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !17
  %i.gn = lshr i8 %i.gm, 2
  %i.go = zext nneg i8 %i.gn to i16
  %i.gp = mul nuw nsw i16 %i.go, %i.fr
  %i.gq = lshr i16 %i.ga, 5
  %i.gr = and i16 %i.gq, 63
  %i.gs = mul nuw nsw i16 %i.gr, %i.ft
  %i.gt = add nuw nsw i16 %i.gp, %i.gs
  %i.gu = lshr i16 %i.gt, 3
  %i.gv = and i16 %i.gu, 2016
  %i.gw = or disjoint i16 %i.gv, %i.gk
  %i.gx = load i8, ptr %i.fx, align 1, !tbaa !17
  %i.gy = lshr i8 %i.gx, 3
  %i.gz = zext nneg i8 %i.gy to i16
  %i.ha = mul nuw nsw i16 %i.gz, %i.fr
  %i.hb = and i16 %i.ga, 31
  %i.hc = mul nuw nsw i16 %i.hb, %i.ft
  %i.hd = add nuw nsw i16 %i.ha, %i.hc
  %i.he = lshr i16 %i.hd, 8
  %i.hf = add i16 %i.gw, %i.he
  %i.hg = tail call noundef i16 @llvm.bswap.i16(i16 %i.hf)
  store i16 %i.hg, ptr %i.fy, align 2, !tbaa !12
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, %i.fw
  %exitcond463.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count462
  br i1 %exitcond463.not, label %._crit_edge.split.split.us358, label %lv_color_24_16_mix.exit.us355, !llvm.loop !198

._crit_edge.split.split.us358:                    ; preds = %lv_color_24_16_mix.exit.us355
  %i.hh = getelementptr inbounds nuw i8, ptr %.1286345.us, i64 %i.fu ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %.1280348.us, i64 %i.fv ; 2 uses
  %i.hj = add nuw nsw i32 %.1263351.us, 1         ; 2 uses
  %exitcond464.not = icmp eq i32 %i.hj, %i.d
  br i1 %exitcond464.not, label %.loopexit322, label %.preheader323.us, !llvm.loop !199

.loopexit322:                                     ; preds = %._crit_edge.split.split.us358, %._crit_edge.us383, %bb.m
  %.2287 = phi ptr [ %i.g, %bb.m ], [ %i.fl, %._crit_edge.us383 ], [ %i.hh, %._crit_edge.split.split.us358 ] ; 2 uses
  %.2281 = phi ptr [ %i.k, %bb.m ], [ %i.fm, %._crit_edge.us383 ], [ %i.hi, %._crit_edge.split.split.us358 ] ; 2 uses
  %.not500 = xor i1 %i.er, true
  %or.cond9 = select i1 %.not500, i1 %i.es, i1 false
  %i.hk = icmp sgt i32 %i.d, 0                    ; 2 uses
  %or.cond407 = select i1 %or.cond9, i1 %i.hk, i1 false
  br i1 %or.cond407, label %.preheader318.lr.ph, label %.loopexit

.preheader318.lr.ph:                              ; preds = %.loopexit322
  %i.hl = icmp sgt i32 %.fr, 0
  %i.hm = zext i32 %i.i to i64
  %i.hn = sext i32 %i.m to i64
  %i.ho = sext i32 %i.q to i64
  br i1 %i.hl, label %.preheader318.us.preheader, label %.critedge

.preheader318.us.preheader:                       ; preds = %.preheader318.lr.ph
  %3 = zext nneg i8 %1 to i64
  %wide.trip.count487 = zext nneg i32 %.fr to i64
  br label %.preheader318.us

.preheader318.us:                                 ; preds = %.preheader318.us.preheader, %._crit_edge.us396
  %.2391.us = phi i32 [ %i.jr, %._crit_edge.us396 ], [ 0, %.preheader318.us.preheader ]
  %.0274390.us = phi ptr [ %i.jq, %._crit_edge.us396 ], [ %i.o, %.preheader318.us.preheader ] ; 2 uses
  %.3282389.us = phi ptr [ %i.jp, %._crit_edge.us396 ], [ %.2281, %.preheader318.us.preheader ] ; 2 uses
  %.3288388.us = phi ptr [ %i.jo, %._crit_edge.us396 ], [ %.2287, %.preheader318.us.preheader ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader318.us, %lv_color_24_16_mix.exit311.us
  %indvars.iv482.a = phi i64 [ 0, %.preheader318.us ], [ %indvars.iv.next483.a, %lv_color_24_16_mix.exit311.us ] ; 3 uses
  %indvars.iv480 = phi i64 [ 0, %.preheader318.us ], [ %indvars.iv.next481, %lv_color_24_16_mix.exit311.us ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.3282389.us, i64 %indvars.iv480 ; 5 uses
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %.3288388.us, i64 %indvars.iv482.a ; 2 uses
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !12
  %i.hs = tail call noundef i16 @llvm.bswap.i16(i16 %i.hr) ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.0274390.us, i64 %indvars.iv482.a
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !17  ; 3 uses
  switch i8 %i.hu, label %bb.p [
    i8 0, label %lv_color_24_16_mix.exit311.us
    i8 -1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.hw = load <2 x i8>, ptr %i.hv, align 1, !tbaa !17
  %i.hx = and <2 x i8> %i.hw, <i8 -4, i8 -8>
  %i.hy = zext <2 x i8> %i.hx to <2 x i16>
  %i.hz = shl nuw <2 x i16> %i.hy, <i16 3, i16 8> ; 2 uses
  %shift545 = shufflevector <2 x i16> %i.hz, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop546 = or disjoint <2 x i16> %i.hz, %shift545
  %i.ia = extractelement <2 x i16> %foldExtExtBinop546, i64 0
  %i.ib = load i8, ptr %i.hp, align 1, !tbaa !17
  %i.ic = lshr i8 %i.ib, 3
  %i.id = zext nneg i8 %i.ic to i16
  %i.ie = or disjoint i16 %i.ia, %i.id
  br label %lv_color_24_16_mix.exit311.us

bb.p:                                             ; preds = %bb.n
  %i.if = zext i8 %i.hu to i16                    ; 3 uses
  %i.ig = xor i8 %i.hu, -1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !17
  %i.ij = lshr i8 %i.ii, 3
  %i.ik = zext nneg i8 %i.ij to i16
  %i.il = mul nuw nsw i16 %i.ik, %i.if
  %i.im = lshr i16 %i.hs, 11
  %i.in = zext i8 %i.ig to i16                    ; 3 uses
  %i.io = mul nuw nsw i16 %i.im, %i.in
  %i.ip = add nuw nsw i16 %i.il, %i.io
  %i.iq = shl i16 %i.ip, 3
  %i.ir = and i16 %i.iq, -2048
  %i.is = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !17
  %i.iu = lshr i8 %i.it, 2
  %i.iv = zext nneg i8 %i.iu to i16
  %i.iw = mul nuw nsw i16 %i.iv, %i.if
  %i.ix = lshr i16 %i.hs, 5
  %i.iy = and i16 %i.ix, 63
  %i.iz = mul nuw nsw i16 %i.iy, %i.in
  %i.ja = add nuw nsw i16 %i.iw, %i.iz
  %i.jb = lshr i16 %i.ja, 3
  %i.jc = and i16 %i.jb, 2016
  %i.jd = or disjoint i16 %i.jc, %i.ir
  %i.je = load i8, ptr %i.hp, align 1, !tbaa !17
  %i.jf = lshr i8 %i.je, 3
  %i.jg = zext nneg i8 %i.jf to i16
  %i.jh = mul nuw nsw i16 %i.jg, %i.if
  %i.ji = and i16 %i.hs, 31
  %i.jj = mul nuw nsw i16 %i.ji, %i.in
  %i.jk = add nuw nsw i16 %i.jh, %i.jj
  %i.jl = lshr i16 %i.jk, 8
  %i.jm = add i16 %i.jd, %i.jl
  br label %lv_color_24_16_mix.exit311.us

lv_color_24_16_mix.exit311.us:                    ; preds = %bb.p, %bb.o, %bb.n
  %.0.i310.us = phi i16 [ %i.jm, %bb.p ], [ %i.ie, %bb.o ], [ %i.hs, %bb.n ]
  %i.jn = tail call noundef i16 @llvm.bswap.i16(i16 %.0.i310.us)
  store i16 %i.jn, ptr %i.hq, align 2, !tbaa !12
  %indvars.iv.next483.a = add nuw nsw i64 %indvars.iv482.a, 1 ; 2 uses
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, %3
  %exitcond488.not = icmp eq i64 %indvars.iv.next483.a, %wide.trip.count487
  br i1 %exitcond488.not, label %._crit_edge.us396, label %bb.n, !llvm.loop !200

._crit_edge.us396:                                ; preds = %lv_color_24_16_mix.exit311.us
  %i.jo = getelementptr inbounds nuw i8, ptr %.3288388.us, i64 %i.hm ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %.3282389.us, i64 %i.hn ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %.0274390.us, i64 %i.ho ; 2 uses
  %i.jr = add nuw nsw i32 %.2391.us, 1            ; 2 uses
  %exitcond489.not = icmp eq i32 %i.jr, %i.d
  br i1 %exitcond489.not, label %.loopexit, label %.preheader318.us, !llvm.loop !201

.loopexit:                                        ; preds = %._crit_edge.us396, %.loopexit322
  %.4289 = phi ptr [ %.2287, %.loopexit322 ], [ %i.jo, %._crit_edge.us396 ]
  %.4283 = phi ptr [ %.2281, %.loopexit322 ], [ %i.jp, %._crit_edge.us396 ]
  %.1275 = phi ptr [ %i.o, %.loopexit322 ], [ %i.jq, %._crit_edge.us396 ] ; 2 uses
  %i.js = icmp ne ptr %.1275, null
  %i.jt = icmp ult i8 %i.f, -3
  %or.cond12 = select i1 %i.js, i1 %i.jt, i1 false
  %or.cond408 = select i1 %or.cond12, i1 %i.hk, i1 false
  br i1 %or.cond408, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.ju = icmp sgt i32 %.fr, 0
  %i.jv = zext i32 %i.i to i64
  %i.jw = sext i32 %i.m to i64
  %i.jx = sext i32 %i.q to i64
  br i1 %i.ju, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %4 = zext nneg i8 %1 to i64
  %wide.trip.count497 = zext nneg i32 %.fr to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.3405 = phi i32 [ %i.mb, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.2276404 = phi ptr [ %i.ma, %._crit_edge ], [ %.1275, %.preheader.preheader ] ; 2 uses
  %.5284403 = phi ptr [ %i.lz, %._crit_edge ], [ %.4283, %.preheader.preheader ] ; 2 uses
  %.5290402 = phi ptr [ %i.ly, %._crit_edge ], [ %.4289, %.preheader.preheader ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %lv_color_24_16_mix.exit313
  %indvars.iv492 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next493, %lv_color_24_16_mix.exit313 ] ; 3 uses
  %indvars.iv490 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next491, %lv_color_24_16_mix.exit313 ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.5284403, i64 %indvars.iv490 ; 5 uses
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %.5290402, i64 %indvars.iv492 ; 2 uses
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !12
  %i.kb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ka) ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.2276404, i64 %indvars.iv492
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !17
  %i.ke = tail call i8 @llvm.umulh.i8(i8 %i.kd, i8 %i.f) ; 3 uses
  switch i8 %i.ke, label %bb.s [
    i8 0, label %lv_color_24_16_mix.exit313
    i8 -1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jy, i64 1
  %i.kg = load <2 x i8>, ptr %i.kf, align 1, !tbaa !17
  %i.kh = and <2 x i8> %i.kg, <i8 -4, i8 -8>
  %i.ki = zext <2 x i8> %i.kh to <2 x i16>
  %i.kj = shl nuw <2 x i16> %i.ki, <i16 3, i16 8> ; 2 uses
  %shift548 = shufflevector <2 x i16> %i.kj, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop549 = or disjoint <2 x i16> %i.kj, %shift548
  %i.kk = extractelement <2 x i16> %foldExtExtBinop549, i64 0
  %i.kl = load i8, ptr %i.jy, align 1, !tbaa !17
  %i.km = lshr i8 %i.kl, 3
  %i.kn = zext nneg i8 %i.km to i16
  %i.ko = or disjoint i16 %i.kk, %i.kn
  br label %lv_color_24_16_mix.exit313

bb.s:                                             ; preds = %bb.q
  %i.kp = zext i8 %i.ke to i16                    ; 3 uses
  %i.kq = xor i8 %i.ke, -1
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !17
  %i.kt = lshr i8 %i.ks, 3
  %i.ku = zext nneg i8 %i.kt to i16
  %i.kv = mul nuw nsw i16 %i.ku, %i.kp
  %i.kw = lshr i16 %i.kb, 11
  %i.kx = zext i8 %i.kq to i16                    ; 3 uses
  %i.ky = mul nuw nsw i16 %i.kw, %i.kx
  %i.kz = add nuw nsw i16 %i.kv, %i.ky
  %i.la = shl i16 %i.kz, 3
  %i.lb = and i16 %i.la, -2048
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jy, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !17
  %i.le = lshr i8 %i.ld, 2
  %i.lf = zext nneg i8 %i.le to i16
  %i.lg = mul nuw nsw i16 %i.lf, %i.kp
  %i.lh = lshr i16 %i.kb, 5
  %i.li = and i16 %i.lh, 63
  %i.lj = mul nuw nsw i16 %i.li, %i.kx
  %i.lk = add nuw nsw i16 %i.lg, %i.lj
  %i.ll = lshr i16 %i.lk, 3
  %i.lm = and i16 %i.ll, 2016
  %i.ln = or disjoint i16 %i.lm, %i.lb
  %i.lo = load i8, ptr %i.jy, align 1, !tbaa !17
  %i.lp = lshr i8 %i.lo, 3
  %i.lq = zext nneg i8 %i.lp to i16
  %i.lr = mul nuw nsw i16 %i.lq, %i.kp
  %i.ls = and i16 %i.kb, 31
  %i.lt = mul nuw nsw i16 %i.ls, %i.kx
  %i.lu = add nuw nsw i16 %i.lr, %i.lt
  %i.lv = lshr i16 %i.lu, 8
  %i.lw = add i16 %i.ln, %i.lv
  br label %lv_color_24_16_mix.exit313

lv_color_24_16_mix.exit313:                       ; preds = %bb.q, %bb.r, %bb.s
  %.0.i312 = phi i16 [ %i.lw, %bb.s ], [ %i.ko, %bb.r ], [ %i.kb, %bb.q ]
  %i.lx = tail call noundef i16 @llvm.bswap.i16(i16 %.0.i312)
  store i16 %i.lx, ptr %i.jz, align 2, !tbaa !12
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 2 uses
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, %4
  %exitcond498.not = icmp eq i64 %indvars.iv.next493, %wide.trip.count497
  br i1 %exitcond498.not, label %._crit_edge, label %bb.q, !llvm.loop !202

._crit_edge:                                      ; preds = %lv_color_24_16_mix.exit313
  %i.ly = getelementptr inbounds nuw i8, ptr %.5290402, i64 %i.jv
  %i.lz = getelementptr inbounds i8, ptr %.5284403, i64 %i.jw
  %i.ma = getelementptr inbounds i8, ptr %.2276404, i64 %i.jx
  %i.mb = add nuw nsw i32 %.3405, 1               ; 2 uses
  %exitcond499.not = icmp eq i32 %i.mb, %i.d
  br i1 %exitcond499.not, label %.critedge, label %.preheader, !llvm.loop !203

.lr.ph337.split:                                  ; preds = %.lr.ph337, %.lr.ph337.split
  %.4336 = phi i32 [ %i.md, %.lr.ph337.split ], [ 0, %.lr.ph337 ]
  %.6291333 = phi ptr [ %i.mc, %.lr.ph337.split ], [ %i.g, %.lr.ph337 ] ; 2 uses
  tail call void @lv_draw_sw_rgb565_swap(ptr noundef %.6291333, i32 noundef %.fr) #5
  %i.mc = getelementptr inbounds nuw i8, ptr %.6291333, i64 %i.v
  %i.md = add nuw nsw i32 %.4336, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.md, %i.d
  br i1 %exitcond.not, label %.critedge, label %.lr.ph337.split, !llvm.loop !195

.critedge:                                        ; preds = %.lr.ph337.split, %._crit_edge.us, %bb.b, %._crit_edge, %.preheader318.lr.ph, %.preheader323.lr.ph, %.preheader320.lr.ph, %.preheader321, %.preheader327, %.preheader.lr.ph, %.loopexit
  ret void
}

declare void @lv_draw_sw_rgb565_swap(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.umulh.v8i8(<8 x i8>, <8 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!11 = !{!"short", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 4, i32 12}
!17 = !{!4, !4, i64 0}
!18 = !{!"_lv_draw_sw_blend_image_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !5, i64 60, !10, i64 64, !10, i64 80}
!19 = !{!18, !5, i64 8}
!20 = !{!18, !5, i64 12}
!21 = !{!18, !4, i64 56}
!22 = !{!18, !8, i64 0}
!23 = !{!18, !5, i64 16}
!24 = !{!18, !8, i64 40}
!25 = !{!18, !5, i64 48}
!26 = !{!18, !9, i64 24}
!27 = !{!18, !5, i64 32}
!28 = !{!18, !5, i64 60}
!29 = distinct !{!29, !13, !14, !15}
!30 = distinct !{!30, !13, !14, !15}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13, !15, !14}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!42 = !{!"_lv_draw_sw_blend_fill_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !41, i64 36, !4, i64 39, !10, i64 40}
!43 = !{!42, !5, i64 8}
!44 = !{!42, !5, i64 12}
!45 = !{!42, !4, i64 39}
!46 = !{!42, !9, i64 24}
!47 = !{!42, !5, i64 32}
!48 = !{!42, !8, i64 0}
!49 = !{!42, !5, i64 16}
!50 = !{!5, !5, i64 0}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !13, !14, !15}
!95 = distinct !{!95, !13, !14, !15}
!96 = distinct !{!96, !13, !14}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, i1 false, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !13, !14, !15}
!102 = distinct !{!102, !13, !14}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, i1 false, !"LVerDomain"}
!105 = distinct !{!105, !104}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !104}
!108 = distinct !{!108, !13, !14, !15}
!109 = distinct !{!109, !13, !14}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, i1 false, !"LVerDomain"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !111}
!115 = distinct !{!115, !13, !14, !15}
!116 = distinct !{!116, !13, !14}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13, !14, !15}
!121 = distinct !{!121, !13, !15, !14}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, i1 false, !"LVerDomain"}
!126 = distinct !{!126, !125}
!127 = distinct !{!127, !125}
!128 = distinct !{!128, !125}
!129 = distinct !{!129, !13, !14, !15}
!130 = distinct !{!130, !13, !14}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !13}
end_hunk_2
