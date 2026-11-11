Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/reg?download=true
inline.NumInlined: 418
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@wiphy_update_regulatory:bb.a

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %i.pn = call i32 @llvm.smin.i32(i32 %i.pj, i32 %i.oz)
  %i.po = getelementptr i8, ptr %i.ap, i64 20
  store i32 %i.pn, ptr %i.po, align 4
  br label %handle_channel_adjacent_rules.exit.i.i

bb.bc:                                            ; preds = %bb.ax
  %i.pp = getelementptr i8, ptr %i.ap, i64 20
  store i32 %i.oz, ptr %i.pp, align 4
  br label %handle_channel_adjacent_rules.exit.i.i

handle_channel_adjacent_rules.exit.i.i:           ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %handle_channel.exit.i

.critedge.i.i:                                    ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %freq_reg_info.exit.thread

freq_reg_info.exit.thread:                        ; preds = %reg_get_regdomain.exit.split.i.i, %reg_get_regdomain.exit.i.i, %.critedge.i.i, %freq_reg_info.exit
  %i.pq = icmp eq ptr %.us-phi.i.i89100, inttoptr (i64 -34 to ptr)
  %or.cond65.i.i = and i1 %i.ah, %i.pq
  br i1 %or.cond65.i.i, label %handle_channel.exit.i, label %bb.bd

bb.bd:                                            ; preds = %freq_reg_info.exit.thread
  %i.pr = getelementptr i8, ptr %i.av, i64 20
  %i.ps = load i32, ptr %i.pr, align 4
  %i.pt = icmp eq i32 %i.ps, 2
  %i.pu = icmp ne ptr %i.ay, null
  %i.pv = icmp eq ptr %i.ay, %0
  %i.pw = and i1 %i.pu, %i.pv
  %or.cond53.i.i = select i1 %i.pt, i1 %i.pw, i1 false
  br i1 %or.cond53.i.i, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.px = getelementptr i8, ptr %i.ay, i64 80
  %i.py = load i32, ptr %i.px, align 16
  %i.pz = and i32 %i.py, 2
  %.not52.i.i = icmp eq i32 %i.pz, 0
  br i1 %.not52.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qa = load i32, ptr %i.az, align 8
  %i.qb = or i32 %i.qa, 1                         ; 2 uses
  store i32 %i.qb, ptr %i.az, align 8
  %i.qc = getelementptr i8, ptr %i.ap, i64 12
  store i32 %i.qb, ptr %i.qc, align 4
  br label %handle_channel.exit.i

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.qd = getelementptr i8, ptr %i.ap, i64 12     ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4
  %i.qf = or i32 %i.qe, 1
  store i32 %i.qf, ptr %i.qd, align 4
  br label %handle_channel.exit.i

bb.bh:                                            ; preds = %freq_reg_info.exit94
  %i.qg = load volatile ptr, ptr @last_request, align 8
  %i.qh = getelementptr i8, ptr %i.qg, i64 20
  %i.qi = load i32, ptr %i.qh, align 4
  switch i32 %i.qi, label %bb.bi [
    i32 3, label %bb.bk
    i32 1, label %bb.bk
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.qj = load ptr, ptr %i.ag, align 16
  %.not7.i.i62.i.i = icmp eq ptr %i.qj, null
  br i1 %.not7.i.i62.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qk = load volatile ptr, ptr %i.ag, align 16
  br label %reg_get_regdomain.exit.i55.i.i

bb.bk:                                            ; preds = %bb.bi, %bb.bh, %bb.bh
  %i.ql = load volatile ptr, ptr @cfg80211_regdomain, align 8
  br label %reg_get_regdomain.exit.i55.i.i

reg_get_regdomain.exit.i55.i.i:                   ; preds = %bb.bk, %bb.bj
  %.0.i.i56.i.i = phi ptr [ %i.qk, %bb.bj ], [ %i.ql, %bb.bk ] ; 2 uses
  %i.qm = getelementptr i8, ptr %.us-phi.i.i89, i64 12 ; 2 uses
  %i.qn = load i32, ptr %i.ap, align 8
  %i.qo = icmp eq i32 %i.qn, 4
  %i.qp = getelementptr i8, ptr %.us-phi.i.i89, i64 8
  %i.qq = load i32, ptr %i.qp, align 4
  %.val.i = load i32, ptr %i.aq, align 4
  %.val37.i = load i16, ptr %i.ar, align 8
  %i.qr = mul i32 %.val.i, 1000
  %i.qs = zext i16 %.val37.i to i32
  %i.qt = add i32 %i.qr, %i.qs                    ; 2 uses
  %i.qu = getelementptr i8, ptr %.us-phi.i.i89, i64 84 ; 3 uses
  %i.qv = load i32, ptr %i.qu, align 4            ; 5 uses
  %i.qw = and i32 %i.qv, 2048
  %.not.i27 = icmp eq i32 %i.qw, 0
  br i1 %.not.i27, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %reg_get_regdomain.exit.i55.i.i
  %i.qx = getelementptr i8, ptr %.0.i.i56.i.i, i64 16
  %i.qy = load i32, ptr %i.qx, align 8            ; 3 uses
  %i.qz = getelementptr i8, ptr %.0.i.i56.i.i, i64 28 ; 3 uses
  %i.ra = zext i32 %i.qy to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.bm ], [ 0, %bb.bl ] ; 8 uses
  %i.rb = icmp samesign uge i64 %indvars.iv.i.i.i, %i.ra
  %i.rc = getelementptr [96 x i8], ptr %i.qz, i64 %indvars.iv.i.i.i
  %i.rd = icmp eq ptr %.us-phi.i.i89, %i.rc
  %or.cond.i.i.i28 = or i1 %i.rb, %i.rd
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br i1 %or.cond.i.i.i28, label %bb.bn, label %bb.bm, !llvm.loop !0

bb.bn:                                            ; preds = %bb.bm
  %i.re = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.rf = icmp eq i32 %i.qy, %i.re
  br i1 %i.rf, label %reg_get_max_bandwidth.exit.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.bn
  %.not.i.i.i29190 = icmp eq i64 %indvars.iv.i.i.i, 0
  %.pre.i.i.i191 = load i32, ptr %.us-phi.i.i89, align 4 ; 2 uses
  br i1 %.not.i.i.i29190, label %.preheader.i.i.i._crit_edge, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %.not.i.i.i29 = icmp eq i64 %i.rg, 0
  %.pre.i.i.i = load i32, ptr %i.rh, align 4      ; 2 uses
  br i1 %.not.i.i.i29, label %.preheader.i.i.i._crit_edge, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.pre.i.i.i193 = phi i32 [ %.pre.i.i.i, %.preheader.i.i.i ], [ %.pre.i.i.i191, %.preheader.i.i.i.preheader ] ; 2 uses
  %indvars.iv40.i.i.i192 = phi i64 [ %i.rg, %.preheader.i.i.i ], [ %indvars.iv.i.i.i, %.preheader.i.i.i.preheader ]
  %i.rg = add nsw i64 %indvars.iv40.i.i.i192, -1  ; 3 uses
  %i.rh = getelementptr [96 x i8], ptr %i.qz, i64 %i.rg ; 2 uses
  %i.ri = getelementptr i8, ptr %i.rh, i64 4
  %i.rj = load i32, ptr %i.ri, align 4
  %i.rk = icmp ult i32 %i.rj, %.pre.i.i.i193
  br i1 %i.rk, label %._crit_edge, label %.preheader.i.i.i, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph
  br label %.preheader.i.i.i._crit_edge, !llvm.loop !1

.preheader.i.i.i._crit_edge:                      ; preds = %.preheader.i.i.i, %._crit_edge, %.preheader.i.i.i.preheader
  %.pre.i.i.i.lcssa = phi i32 [ %.pre.i.i.i193, %._crit_edge ], [ %.pre.i.i.i191, %.preheader.i.i.i.preheader ], [ %.pre.i.i.i, %.preheader.i.i.i ]
  %i.rl = add i32 %i.qy, -1
  %i.rm = zext i32 %i.rl to i64                   ; 2 uses
  %i.rn = icmp samesign ult i64 %indvars.iv.i.i.i, %i.rm
  br i1 %i.rn, label %.lr.ph198, label %._crit_edge.i.i.i30

bb.bo:                                            ; preds = %.lr.ph198
  %i.ro = icmp samesign ult i64 %indvars.iv.next45.i.i.i, %i.rm
  br i1 %i.ro, label %.lr.ph198, label %._crit_edge.i.i.i30, !llvm.loop !2

._crit_edge.i.i.i30:                              ; preds = %bb.bo, %.preheader.i.i.i._crit_edge
  %.133.i.i.i.lcssa = phi ptr [ %.us-phi.i.i89, %.preheader.i.i.i._crit_edge ], [ %i.rp, %bb.bo ]
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %.133.i.i.i.lcssa, i64 4
  %.pre47.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4
  br label %split.i.i.i

.lr.ph198:                                        ; preds = %.preheader.i.i.i._crit_edge, %bb.bo
  %.133.i.i.i196 = phi ptr [ %i.rp, %bb.bo ], [ %.us-phi.i.i89, %.preheader.i.i.i._crit_edge ]
  %indvars.iv44.i.i.i195 = phi i64 [ %indvars.iv.next45.i.i.i, %bb.bo ], [ %indvars.iv.i.i.i, %.preheader.i.i.i._crit_edge ]
  %indvars.iv.next45.i.i.i = add nuw nsw i64 %indvars.iv44.i.i.i195, 1 ; 3 uses
  %i.rp = getelementptr [96 x i8], ptr %i.qz, i64 %indvars.iv.next45.i.i.i ; 3 uses
  %i.rq = load i32, ptr %i.rp, align 4
  %i.rr = getelementptr i8, ptr %.133.i.i.i196, i64 4
  %i.rs = load i32, ptr %i.rr, align 4            ; 2 uses
  %i.rt = icmp ugt i32 %i.rq, %i.rs
  br i1 %i.rt, label %split.i.i.i, label %bb.bo, !llvm.loop !2

split.i.i.i:                                      ; preds = %.lr.ph198, %._crit_edge.i.i.i30
  %i.ru = phi i32 [ %.pre47.i.i.i, %._crit_edge.i.i.i30 ], [ %i.rs, %.lr.ph198 ]
  %i.rv = sub i32 %i.ru, %.pre.i.i.i.lcssa
  br label %reg_get_max_bandwidth.exit.i

reg_get_max_bandwidth.exit.i:                     ; preds = %split.i.i.i, %bb.bn
  %.034.i.i.i = phi i32 [ %i.rv, %split.i.i.i ], [ 0, %bb.bn ] ; 2 uses
  %i.rw = and i32 %i.qv, 262144
  %.not.i.i31 = icmp eq i32 %i.rw, 0
  %i.rx = call i32 @llvm.umin.i32(i32 %.034.i.i.i, i32 160000)
  %.0.i.i = select i1 %.not.i.i31, i32 %.034.i.i.i, i32 %i.rx ; 2 uses
  %i.ry = and i32 %i.qv, 65536
  %.not31.i.i = icmp eq i32 %i.ry, 0
  %i.rz = call i32 @llvm.umin.i32(i32 %.0.i.i, i32 80000)
  %.1.i.i = select i1 %.not31.i.i, i32 %.0.i.i, i32 %i.rz ; 2 uses
  %i.sa = and i32 %i.qv, 32768
  %.not32.i.i = icmp eq i32 %i.sa, 0
  %i.sb = call i32 @llvm.umin.i32(i32 %.1.i.i, i32 40000)
  %.2.i.i = select i1 %.not32.i.i, i32 %.1.i.i, i32 %i.sb ; 2 uses
  %i.sc = and i32 %i.qv, 24576
  %or.cond.not.i.i = icmp eq i32 %i.sc, 24576
  %i.sd = call i32 @llvm.umin.i32(i32 %.2.i.i, i32 20000)
  %.3.i.i = select i1 %or.cond.not.i.i, i32 %i.sd, i32 %.2.i.i
  br label %bb.bp

bb.bp:                                            ; preds = %reg_get_max_bandwidth.exit.i, %reg_get_regdomain.exit.i55.i.i
  %.034.i = phi i32 [ %.3.i.i, %reg_get_max_bandwidth.exit.i ], [ %i.qq, %reg_get_regdomain.exit.i55.i.i ] ; 9 uses
  br i1 %i.qo, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.se = icmp ult i32 %.034.i, 16000
  %spec.select.i = select i1 %i.se, i32 1073741824, i32 0
  %i.sf = icmp ult i32 %.034.i, 8000
  %.1.i = select i1 %i.sf, i32 1610612736, i32 %spec.select.i
  %i.sg = icmp ult i32 %.034.i, 4000
  %.2.i = select i1 %i.sg, i32 1879048192, i32 %.1.i
  br label %reg_rule_to_chan_bw_flags.exit

bb.br:                                            ; preds = %bb.bp
  %i.sh = call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef %.us-phi.i.i89, i32 noundef %i.qt, i32 noundef 10000) #20
  %spec.select36.i = select i1 %i.sh, i32 0, i32 4096 ; 2 uses
  %i.si = call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef %.us-phi.i.i89, i32 noundef %i.qt, i32 noundef 20000) #20
  %i.sj = or disjoint i32 %spec.select36.i, 2048
  %.4.i = select i1 %i.si, i32 %spec.select36.i, i32 %i.sj ; 6 uses
  %i.sk = icmp ult i32 %.034.i, 10000
  %i.sl = icmp ult i32 %.034.i, 20000
  %i.sm = or i32 %.4.i, 2048
  %i.sn = select i1 %i.sk, i32 6144, i32 %i.sm
  %.6.i = select i1 %i.sl, i32 %i.sn, i32 %.4.i
  %i.so = icmp ult i32 %.034.i, 40000
  %i.sp = or i32 %.6.i, 48
  %.7.i = select i1 %i.so, i32 %i.sp, i32 %.4.i
  %i.sq = icmp ult i32 %.034.i, 80000
  %i.sr = or i32 %.7.i, 128
  %.8.i = select i1 %i.sq, i32 %i.sr, i32 %.4.i
  %i.ss = icmp ult i32 %.034.i, 160000
  %i.st = or i32 %.8.i, 256
  %.9.i = select i1 %i.ss, i32 %i.st, i32 %.4.i
  %i.su = icmp ult i32 %.034.i, 320000
  %i.sv = or i32 %.9.i, 524288
  %.10.i = select i1 %i.su, i32 %i.sv, i32 %.4.i
  br label %reg_rule_to_chan_bw_flags.exit

reg_rule_to_chan_bw_flags.exit:                   ; preds = %bb.bq, %bb.br
  %.035.i = phi i32 [ %.2.i, %bb.bq ], [ %.10.i, %bb.br ] ; 2 uses
  %i.sw = getelementptr i8, ptr %i.av, i64 20
  %i.sx = load i32, ptr %i.sw, align 4
  %i.sy = icmp eq i32 %i.sx, 2
  %i.sz = icmp ne ptr %i.ay, null
  %or.cond.i57.i.i = and i1 %i.sz, %i.sy
  %i.ta = icmp eq ptr %i.ay, %0
  %or.cond83.i.i.i = and i1 %i.ta, %or.cond.i57.i.i
  br i1 %or.cond83.i.i.i, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %reg_rule_to_chan_bw_flags.exit
  %i.tb = getelementptr i8, ptr %i.ay, i64 80
  %i.tc = load i32, ptr %i.tb, align 16
  %i.td = and i32 %i.tc, 2
  %.not.i59.i.i = icmp eq i32 %i.td, 0
  br i1 %.not.i59.i.i, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.te = load i32, ptr %i.qu, align 4            ; 10 uses
  %i.tf = and i32 %i.te, 384
  %.not.i.i60.i.i = icmp eq i32 %i.tf, 0
  %spec.select.i.i61.i.i = select i1 %.not.i.i60.i.i, i32 0, i32 2
  %i.tg = lshr i32 %i.te, 1
  %i.th = and i32 %i.tg, 8
  %i.ti = shl i32 %i.te, 6
  %i.tj = lshr i32 %i.te, 2
  %i.tk = and i32 %i.tj, 1024
  %i.tl = lshr i32 %i.te, 8                       ; 3 uses
  %i.tm = and i32 %i.tl, 32
  %i.tn = lshr i32 %i.te, 10
  %i.to = and i32 %i.tn, 16
  %i.tp = lshr i32 %i.te, 4
  %i.tq = and i32 %i.tp, 8192
  %i.tr = shl i32 %i.te, 1                        ; 2 uses
  %i.ts = and i32 %i.te, 14680064
  %i.tt = lshr i32 %i.te, 18
  %i.tu = and i32 %i.tt, 4
  %i.tv = and i32 %i.tl, 262144
  %i.tw = and i32 %i.ti, 576
  %i.tx = and i32 %i.tl, 384
  %i.ty = and i32 %i.tr, 1572864
  %i.tz = and i32 %i.tr, 100663296
  %i.ua = or disjoint i32 %i.ts, %i.th
  %i.ub = or disjoint i32 %i.ua, %i.tw
  %i.uc = or disjoint i32 %i.ub, %i.tk
  %i.ud = or disjoint i32 %i.uc, %i.tm
  %i.ue = or disjoint i32 %i.ud, %i.to
  %i.uf = or i32 %i.ue, %i.tx
  %i.ug = or i32 %i.uf, %i.tq
  %i.uh = or i32 %i.ug, %i.ty
  %i.ui = or i32 %i.uh, %i.tu
  %i.uj = or i32 %i.ui, %i.tz
  %i.uk = or i32 %i.uj, %i.tv
  %i.ul = or i32 %i.uk, %spec.select.i.i61.i.i
  %i.um = or i32 %i.ul, %.035.i                   ; 4 uses
  store i32 %i.um, ptr %i.az, align 8
  %i.un = getelementptr i8, ptr %i.ap, i64 12
  store i32 %i.um, ptr %i.un, align 4
  %i.uo = load i32, ptr %i.qm, align 4
  %i.up = udiv i32 %i.uo, 100                     ; 2 uses
  %i.uq = getelementptr i8, ptr %i.ap, i64 36
  store i32 %i.up, ptr %i.uq, align 4
  %i.ur = getelementptr i8, ptr %i.ap, i64 16
  store i32 %i.up, ptr %i.ur, align 8
  %i.us = getelementptr i8, ptr %.us-phi.i.i89, i64 16
  %i.ut = load i32, ptr %i.us, align 4
  %i.uu = udiv i32 %i.ut, 100                     ; 3 uses
  %i.uv = getelementptr i8, ptr %i.ap, i64 40
  store i32 %i.uu, ptr %i.uv, align 8
  %i.uw = getelementptr i8, ptr %i.ap, i64 20
  store i32 %i.uu, ptr %i.uw, align 4
  %i.ux = getelementptr i8, ptr %i.ap, i64 24
  store i32 %i.uu, ptr %i.ux, align 8
  %i.uy = and i32 %i.um, 8
  %.not80.i.i.i = icmp eq i32 %i.uy, 0
  br i1 %.not80.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.uz = getelementptr i8, ptr %i.ap, i64 56     ; 2 uses
  store i32 60000, ptr %i.uz, align 8
  %i.va = getelementptr i8, ptr %.us-phi.i.i89, i64 88
  %i.vb = load i32, ptr %i.va, align 4            ; 2 uses
  %.not81.i.i.i = icmp eq i32 %i.vb, 0
  %spec.store.select.i.i.i = select i1 %.not81.i.i.i, i32 60000, i32 %i.vb
  store i32 %spec.store.select.i.i.i, ptr %i.uz, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.vc = and i32 %i.um, 4
  %.not82.i.i.i = icmp eq i32 %i.vc, 0
  br i1 %.not82.i.i.i, label %handle_channel.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.vd = getelementptr i8, ptr %.us-phi.i.i89, i64 93
  %i.ve = load i8, ptr %i.vd, align 1
  %i.vf = getelementptr i8, ptr %i.ap, i64 72
  store i8 %i.ve, ptr %i.vf, align 8
  br label %handle_channel.exit.i

bb.bx:                                            ; preds = %bb.bs, %reg_rule_to_chan_bw_flags.exit
  %i.vg = getelementptr i8, ptr %i.ap, i64 44
  store i32 0, ptr %i.vg, align 4
  %i.vh = load volatile i64, ptr @jiffies, align 64
  %i.vi = getelementptr i8, ptr %i.ap, i64 48
  store i64 %i.vh, ptr %i.vi, align 8
  %i.vj = getelementptr i8, ptr %i.ap, i64 28
  store i8 0, ptr %i.vj, align 4
  %i.vk = load i32, ptr %i.qu, align 4            ; 10 uses
  %i.vl = and i32 %i.vk, 384
  %.not.i84.i.i.i = icmp eq i32 %i.vl, 0
  %spec.select.i85.i.i.i = select i1 %.not.i84.i.i.i, i32 0, i32 2
  %i.vm = lshr i32 %i.vk, 1
  %i.vn = and i32 %i.vm, 8
  %i.vo = shl i32 %i.vk, 6
  %i.vp = lshr i32 %i.vk, 2
  %i.vq = and i32 %i.vp, 1024
  %i.vr = lshr i32 %i.vk, 8                       ; 3 uses
  %i.vs = and i32 %i.vr, 32
  %i.vt = lshr i32 %i.vk, 10
  %i.vu = and i32 %i.vt, 16
  %i.vv = lshr i32 %i.vk, 4
  %i.vw = and i32 %i.vv, 8192
  %i.vx = shl i32 %i.vk, 1                        ; 2 uses
  %i.vy = and i32 %i.vk, 14680064
  %i.vz = lshr i32 %i.vk, 18
  %i.wa = and i32 %i.vz, 4
  %i.wb = and i32 %i.vr, 262144
  %i.wc = and i32 %i.vo, 576
  %i.wd = and i32 %i.vr, 384
  %i.we = and i32 %i.vx, 1572864
  %i.wf = and i32 %i.vx, 100663296
  %i.wg = or disjoint i32 %i.vy, %i.vn
  %i.wh = or disjoint i32 %i.wg, %i.wc
  %i.wi = or disjoint i32 %i.wh, %i.vq
  %i.wj = or disjoint i32 %i.wi, %i.vs
  %i.wk = or disjoint i32 %i.wj, %i.vu
  %i.wl = or i32 %i.wk, %i.wd
  %i.wm = or i32 %i.wl, %i.vw
  %i.wn = or i32 %i.wm, %i.we
  %i.wo = or i32 %i.wn, %i.wa
  %i.wp = or i32 %i.wo, %i.wf
  %i.wq = or i32 %i.wp, %i.wb
  %i.wr = or i32 %i.wq, %spec.select.i85.i.i.i
  %i.ws = or i32 %i.wr, %i.ba
  %i.wt = or i32 %i.ws, %.035.i                   ; 3 uses
  %i.wu = getelementptr i8, ptr %i.ap, i64 12
  store i32 %i.wt, ptr %i.wu, align 4
  %i.wv = getelementptr i8, ptr %i.ap, i64 36
  %i.ww = load i32, ptr %i.wv, align 4
  %i.wx = load i32, ptr %i.qm, align 4
  %i.wy = udiv i32 %i.wx, 100
  %i.wz = call i32 @llvm.smin.i32(i32 %i.ww, i32 %i.wy)
  %i.xa = getelementptr i8, ptr %i.ap, i64 16
  store i32 %i.wz, ptr %i.xa, align 8
  %i.xb = getelementptr i8, ptr %.us-phi.i.i89, i64 16
  %i.xc = load i32, ptr %i.xb, align 4
  %i.xd = udiv i32 %i.xc, 100                     ; 4 uses
  %i.xe = getelementptr i8, ptr %i.ap, i64 24
  store i32 %i.xd, ptr %i.xe, align 8
  %i.xf = and i32 %i.wt, 8
  %.not75.i.i.i = icmp eq i32 %i.xf, 0
  br i1 %.not75.i.i.i, label %bb.by, label %.sink.split.i58.i.i

.sink.split.i58.i.i:                              ; preds = %bb.bx
  %i.xg = getelementptr i8, ptr %.us-phi.i.i89, i64 88
  %i.xh = load i32, ptr %i.xg, align 4            ; 2 uses
  %.not76.i.i.i = icmp eq i32 %i.xh, 0
  %i.xi = getelementptr i8, ptr %i.ap, i64 56
  %..i.i.i = select i1 %.not76.i.i.i, i32 60000, i32 %i.xh
  store i32 %..i.i.i, ptr %i.xi, align 8
  br label %bb.by

end_hunk_0
begin_hunk_1_@reg_check_chans_work:bb.a
    i32 2, label %bb.ad
  ]

.thread.sink.split.i.i:                           ; preds = %bb.o, %bb.n
  %.sink.i.i = phi ptr [ %i.u, %bb.n ], [ %i.t, %bb.o ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef align 8 dereferenceable(48) %.sink.i.i, i64 48, i1 false)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.sink.split.i.i, %bb.ac, %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store i32 %i.k, ptr %1, align 4
  store i32 0, ptr %i.c, align 4
  store i8 1, ptr %i.d, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.e, i8 0, i64 3, i1 false)
  %i.ca = call zeroext i1 @cfg80211_reg_check_beaconing(ptr noundef nonnull %i.g, ptr noundef nonnull %3, ptr noundef nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %i.ca, label %bb.ae, label %.loopexit.i

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %i.cb = call zeroext i1 @cfg80211_chandef_usable(ptr noundef nonnull %i.g, ptr noundef nonnull %3, i32 noundef 1) #20
  br i1 %i.cb, label %bb.ae, label %.loopexit.i

bb.ae:                                            ; preds = %bb.ad, %.thread.i.i, %bb.ac, %.thread75.i.i, %bb.aa, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 15
  br i1 %exitcond.not.i.i, label %reg_wdev_chan_valid.exit.thread.i, label %bb.h, !llvm.loop !200

reg_wdev_chan_valid.exit.thread.i:                ; preds = %bb.ae, %bb.h, %bb.f, %.preheader.i.i, %netif_running.exit.i.i, %wiphy_to_rdev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @mutex_unlock(ptr noundef nonnull %i.g) #20
  br label %bb.af

.loopexit.i:                                      ; preds = %bb.ad, %.thread.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @mutex_unlock(ptr noundef nonnull %i.g) #20
  call void @cfg80211_leave(ptr noundef %i.h, ptr noundef %.023.i, i32 noundef -1) #20
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.i, %reg_wdev_chan_valid.exit.thread.i
  %.pn.i = load ptr, ptr %.pn22.i, align 8        ; 2 uses
  %.not.i7 = icmp eq ptr %.pn.i, %i.i
  br i1 %.not.i7, label %reg_leave_invalid_chans.exit, label %wiphy_to_rdev.exit.i.i, !llvm.loop !201

reg_leave_invalid_chans.exit:                     ; preds = %bb.af, %wiphy_to_rdev.exit.i
  %.pn = load ptr, ptr %.pn12, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, @cfg80211_rdev_list
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !202

._crit_edge:                                      ; preds = %reg_leave_invalid_chans.exit, %for_each_rdev_check_rtnl.exit
  call void @rtnl_unlock() #20
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cfg80211_leave(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_usable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_reg_check_beaconing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_rdev_get_channel(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_rdev_return_chandef(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 1879048193) i32 @reg_rule_to_chan_bw_flags(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %2, align 8
  %i.b = icmp eq i32 %i.a, 4
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %2, i64 4
  %.val = load i32, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %2, i64 8
  %.val37 = load i16, ptr %i.f, align 8
  %i.g = mul i32 %.val, 1000
  %i.h = zext i16 %.val37 to i32
  %i.i = add i32 %i.g, %i.h                       ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 84
  %i.k = load i32, ptr %i.j, align 4              ; 5 uses
  %i.l = and i32 %i.k, 2048
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 28         ; 3 uses
  %i.p = zext i32 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ 0, %bb.b ] ; 8 uses
  %i.q = icmp samesign uge i64 %indvars.iv.i.i, %i.p
  %i.r = getelementptr [96 x i8], ptr %i.o, i64 %indvars.iv.i.i
  %i.s = icmp eq ptr %1, %i.r
  %or.cond.i.i = or i1 %i.q, %i.s
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %or.cond.i.i, label %bb.d, label %bb.c, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.t = trunc nuw i64 %indvars.iv.i.i to i32
  %i.u = icmp eq i32 %i.n, %i.t
  br i1 %i.u, label %reg_get_max_bandwidth.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.d
  %.not.i.i43 = icmp eq i64 %indvars.iv.i.i, 0
  %.pre.i.i44 = load i32, ptr %1, align 4         ; 2 uses
  br i1 %.not.i.i43, label %.preheader.i.i._crit_edge, label %.lr.ph

.preheader.i.i:                                   ; preds = %.lr.ph
  %.not.i.i = icmp eq i64 %i.v, 0
  %.pre.i.i = load i32, ptr %i.w, align 4         ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i._crit_edge, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.pre.i.i46 = phi i32 [ %.pre.i.i, %.preheader.i.i ], [ %.pre.i.i44, %.preheader.i.i.preheader ] ; 2 uses
  %indvars.iv40.i.i45 = phi i64 [ %i.v, %.preheader.i.i ], [ %indvars.iv.i.i, %.preheader.i.i.preheader ]
  %i.v = add nsw i64 %indvars.iv40.i.i45, -1      ; 3 uses
  %i.w = getelementptr [96 x i8], ptr %i.o, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp ult i32 %i.y, %.pre.i.i46
  br i1 %i.z, label %._crit_edge, label %.preheader.i.i, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph
  br label %.preheader.i.i._crit_edge, !llvm.loop !1

.preheader.i.i._crit_edge:                        ; preds = %.preheader.i.i, %._crit_edge, %.preheader.i.i.preheader
  %.pre.i.i.lcssa = phi i32 [ %.pre.i.i46, %._crit_edge ], [ %.pre.i.i44, %.preheader.i.i.preheader ], [ %.pre.i.i, %.preheader.i.i ]
  %i.aa = add i32 %i.n, -1
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp samesign ult i64 %indvars.iv.i.i, %i.ab
  br i1 %i.ac, label %.lr.ph51, label %._crit_edge.i.i

bb.e:                                             ; preds = %.lr.ph51
  %i.ad = icmp samesign ult i64 %indvars.iv.next45.i.i, %i.ab
  br i1 %i.ad, label %.lr.ph51, label %._crit_edge.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.e, %.preheader.i.i._crit_edge
  %.133.i.i.lcssa = phi ptr [ %1, %.preheader.i.i._crit_edge ], [ %i.ae, %bb.e ]
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.133.i.i.lcssa, i64 4
  %.pre47.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %split.i.i

.lr.ph51:                                         ; preds = %.preheader.i.i._crit_edge, %bb.e
  %.133.i.i49 = phi ptr [ %i.ae, %bb.e ], [ %1, %.preheader.i.i._crit_edge ]
  %indvars.iv44.i.i48 = phi i64 [ %indvars.iv.next45.i.i, %bb.e ], [ %indvars.iv.i.i, %.preheader.i.i._crit_edge ]
  %indvars.iv.next45.i.i = add nuw nsw i64 %indvars.iv44.i.i48, 1 ; 3 uses
  %i.ae = getelementptr [96 x i8], ptr %i.o, i64 %indvars.iv.next45.i.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr i8, ptr %.133.i.i49, i64 4
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = icmp ugt i32 %i.af, %i.ah
  br i1 %i.ai, label %split.i.i, label %bb.e, !llvm.loop !2

split.i.i:                                        ; preds = %.lr.ph51, %._crit_edge.i.i
  %i.aj = phi i32 [ %.pre47.i.i, %._crit_edge.i.i ], [ %i.ah, %.lr.ph51 ]
  %i.ak = sub i32 %i.aj, %.pre.i.i.lcssa
  br label %reg_get_max_bandwidth.exit

reg_get_max_bandwidth.exit:                       ; preds = %bb.d, %split.i.i
  %.034.i.i = phi i32 [ %i.ak, %split.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.al = and i32 %i.k, 262144
  %.not.i = icmp eq i32 %i.al, 0
  %i.am = tail call i32 @llvm.umin.i32(i32 %.034.i.i, i32 160000)
  %.0.i = select i1 %.not.i, i32 %.034.i.i, i32 %i.am ; 2 uses
  %i.an = and i32 %i.k, 65536
  %.not31.i = icmp eq i32 %i.an, 0
  %i.ao = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 80000)
  %.1.i = select i1 %.not31.i, i32 %.0.i, i32 %i.ao ; 2 uses
  %i.ap = and i32 %i.k, 32768
  %.not32.i = icmp eq i32 %i.ap, 0
  %i.aq = tail call i32 @llvm.umin.i32(i32 %.1.i, i32 40000)
  %.2.i = select i1 %.not32.i, i32 %.1.i, i32 %i.aq ; 2 uses
  %i.ar = and i32 %i.k, 24576
  %or.cond.not.i = icmp eq i32 %i.ar, 24576
  %i.as = tail call i32 @llvm.umin.i32(i32 %.2.i, i32 20000)
  %.3.i = select i1 %or.cond.not.i, i32 %i.as, i32 %.2.i
  br label %bb.f

bb.f:                                             ; preds = %reg_get_max_bandwidth.exit, %bb.a
  %.034 = phi i32 [ %.3.i, %reg_get_max_bandwidth.exit ], [ %i.d, %bb.a ] ; 9 uses
  br i1 %i.b, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = icmp ult i32 %.034, 16000
  %spec.select = select i1 %i.at, i32 1073741824, i32 0
  %i.au = icmp ult i32 %.034, 8000
  %.1 = select i1 %i.au, i32 1610612736, i32 %spec.select
  %i.av = icmp ult i32 %.034, 4000
  %.2 = select i1 %i.av, i32 1879048192, i32 %.1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aw = tail call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef %1, i32 noundef %i.i, i32 noundef 10000) #20
  %spec.select36 = select i1 %i.aw, i32 0, i32 4096 ; 2 uses
  %i.ax = tail call zeroext i1 @cfg80211_does_bw_fit_range(ptr noundef %1, i32 noundef %i.i, i32 noundef 20000) #20
  %i.ay = or disjoint i32 %spec.select36, 2048
  %.4 = select i1 %i.ax, i32 %spec.select36, i32 %i.ay ; 6 uses
  %i.az = icmp ult i32 %.034, 10000
  %i.ba = icmp ult i32 %.034, 20000
  %i.bb = or i32 %.4, 2048
  %i.bc = select i1 %i.az, i32 6144, i32 %i.bb
  %.6 = select i1 %i.ba, i32 %i.bc, i32 %.4
  %i.bd = icmp ult i32 %.034, 40000
  %i.be = or i32 %.6, 48
  %.7 = select i1 %i.bd, i32 %i.be, i32 %.4
  %i.bf = icmp ult i32 %.034, 80000
  %i.bg = or i32 %.7, 128
  %.8 = select i1 %i.bf, i32 %i.bg, i32 %.4
  %i.bh = icmp ult i32 %.034, 160000
  %i.bi = or i32 %.8, 256
  %.9 = select i1 %i.bh, i32 %i.bi, i32 %.4
  %i.bj = icmp ult i32 %.034, 320000
  %i.bk = or i32 %.9, 524288
  %.10 = select i1 %i.bj, i32 %i.bk, i32 %.4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.035 = phi i32 [ %.2, %bb.g ], [ %.10, %bb.h ]
  ret i32 %.035
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @reg_query_database(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 28         ; 3 uses
  %i.d = tail call i32 @rtnl_is_locked() #20, !inline_history !208
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, ptr @.str.6, i32 1041, i32 2323, i64 16) #22, !inline_history !208, !srcloc !211
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.e, ptr noundef @.str.6, i32 noundef 1041) #20, !inline_history !208
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #22, !inline_history !208, !srcloc !212
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr @regdb, align 8
  %.not18.i = icmp eq ptr %i.f, null
  br i1 %.not18.i, label %bb.d, label %query_regdb_file.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call dereferenceable_or_null(2) ptr @kmemdup_noprof(ptr noundef %i.c, i64 noundef 2, i32 noundef 3264) #23, !inline_history !208 ; 3 uses
  %.not19.i = icmp eq ptr %i.g, null
  br i1 %.not19.i, label %query_regdb_file.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @reg_fdev, align 8
  %i.i = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef @.str, ptr noundef %i.h, i32 noundef 3264, ptr noundef nonnull %i.g, ptr noundef @regdb_fw_cb) #20, !inline_history !208
  %.not20.i = icmp eq i32 %i.i, 0
  br i1 %.not20.i, label %query_regdb_file.exit.thread6, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @kfree(ptr noundef nonnull %i.g) #20, !inline_history !208
  br label %query_regdb_file.exit.thread

query_regdb_file.exit:                            ; preds = %bb.c
  %i.j = tail call fastcc i32 @query_regdb(ptr noundef %i.c) #21, !inline_history !208, !srcloc !213
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %query_regdb_file.exit.thread6, label %query_regdb_file.exit.thread

query_regdb_file.exit.thread:                     ; preds = %bb.f, %bb.d, %query_regdb_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, i8 0, i64 12, i1 false), !annotation !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %i.a, ptr %i.b, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.l, align 8
  %i.m = load i8, ptr %i.c, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr i8, ptr %0, i64 29
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 12, ptr noundef @.str.22, i32 noundef %i.n, i32 noundef %i.q) #20, !inline_history !209 ; 0 uses
  %i.s = load i32, ptr @reg_crda_timeouts, align 4
  %i.t = icmp ugt i32 %i.s, 10
  br i1 %i.t, label %call_crda.exit, label %is_world_regdom.exit.i

is_world_regdom.exit.i:                           ; preds = %query_regdb_file.exit.thread
  %i.u = load ptr, ptr @reg_fdev, align 8
  %i.v = call i32 @kobject_uevent_env(ptr noundef %i.u, i32 noundef 2, ptr noundef nonnull %i.b) #20, !inline_history !209
  %.not.i3 = icmp eq i32 %i.v, 0
  br i1 %.not.i3, label %bb.g, label %call_crda.exit

bb.g:                                             ; preds = %is_world_regdom.exit.i
  %i.w = load ptr, ptr @system_power_efficient_wq, align 8
  %i.x = call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %i.w, ptr noundef @crda_timeout, i64 noundef 3142) #20, !inline_history !210 ; 0 uses
  br label %call_crda.exit

call_crda.exit:                                   ; preds = %query_regdb_file.exit.thread, %is_world_regdom.exit.i, %bb.g
  %.0.i4 = phi i1 [ true, %bb.g ], [ false, %query_regdb_file.exit.thread ], [ false, %is_world_regdom.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %query_regdb_file.exit.thread6

query_regdb_file.exit.thread6:                    ; preds = %bb.e, %call_crda.exit, %query_regdb_file.exit
  %.0 = phi i1 [ true, %query_regdb_file.exit ], [ %.0.i4, %call_crda.exit ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @query_regdb(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @regdb, align 8            ; 2 uses
  %i.b = tail call i32 @rtnl_is_locked() #20
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, ptr @.str.6, i32 976, i32 2323, i64 16) #22, !srcloc !218
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.c, ptr noundef @.str.6, i32 noundef 976) #20
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !219
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr @regdb, align 8            ; 5 uses
  %i.e = icmp ugt ptr %i.d, inttoptr (i64 -4096 to ptr)
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = trunc i64 %i.f to i32
  br label %regdb_query_country.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.a, i64 10
  %i.i = load i16, ptr %i.h, align 2              ; 2 uses
  %.not1318 = icmp eq i16 %i.i, 0
  br i1 %.not1318, label %regdb_query_country.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.not20 = icmp eq ptr %0, null
  %i.j = getelementptr i8, ptr %0, i64 1
  br i1 %.not20, label %regdb_query_country.exit, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %i.a, i64 8
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %alpha2_equal.exit.thread
  %i.l = phi i16 [ %i.db, %alpha2_equal.exit.thread ], [ %i.i, %.lr.ph.split.preheader ]
  %.01219 = phi ptr [ %i.cz, %alpha2_equal.exit.thread ], [ %i.k, %.lr.ph.split.preheader ] ; 8 uses
  %.not21 = icmp eq ptr %.01219, null
  br i1 %.not21, label %alpha2_equal.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.m = load i8, ptr %0, align 1
  %i.n = load i8, ptr %.01219, align 1
  %i.o = icmp eq i8 %i.m, %i.n
  br i1 %i.o, label %alpha2_equal.exit, label %alpha2_equal.exit.thread

alpha2_equal.exit:                                ; preds = %bb.f
  %i.p = load i8, ptr %i.j, align 1
  %i.q = getelementptr i8, ptr %.01219, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.p, %i.r
  br i1 %i.s, label %_kzalloc_noprof.exit.i, label %alpha2_equal.exit.thread

_kzalloc_noprof.exit.i:                           ; preds = %alpha2_equal.exit
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.l)
  %i.u = zext i16 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = getelementptr i8, ptr %i.d, i64 %i.v     ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 1        ; 2 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 96
  %i.ab = add nuw nsw i64 %i.aa, 32
  %i.ac = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 412316860353) %i.ab, i32 noundef range(i32 256, 0) 3520) #25, !inline_history !214 ; 8 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %regdb_query_country.exit, label %bb.g

bb.g:                                             ; preds = %_kzalloc_noprof.exit.i
  %i.ad = getelementptr i8, ptr %.01219, i64 1
  %i.ae = load i8, ptr %i.x, align 1              ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr i8, ptr %i.ac, i64 16     ; 2 uses
  store i32 %i.af, ptr %i.ag, align 8
  %i.ah = load i8, ptr %.01219, align 4
end_hunk_1
