Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mlme?download=true
inline.NumInlined: 873
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@ieee80211_sta_rx_queued_frame:bb.a
  %i.nc = load volatile i64, ptr @jiffies, align 64
  %i.nd = call i64 @__msecs_to_jiffies(i32 noundef %i.na) #19
  %i.ne = add i64 %i.nd, %i.nc                    ; 3 uses
  %i.nf = getelementptr i8, ptr %i.jq, i64 984
  store i64 %i.ne, ptr %i.nf, align 8
  %i.ng = getelementptr i8, ptr %i.jq, i64 1039
  store i8 1, ptr %i.ng, align 1
  %i.nh = getelementptr i8, ptr %i.jq, i64 1040
  store i8 1, ptr %i.nh, align 8
  %i.ni = icmp ugt i32 %i.mz, 200999
  br i1 %i.ni, label %bb.bv, label %run_again.exit.i110

bb.bv:                                            ; preds = %msecs_to_jiffies.exit.i
  %i.nj = getelementptr i8, ptr %0, i64 2504
  %i.nk = getelementptr i8, ptr %0, i64 2512
  %i.nl = load volatile ptr, ptr %i.nk, align 8
  %.not.i.i.not.i.i114 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.not.i.i114, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nm = getelementptr i8, ptr %0, i64 2520
  %i.nn = load i64, ptr %i.nm, align 8
  %i.no = sub i64 %i.ne, %i.nn
  %i.np = icmp slt i64 %i.no, 0
  br i1 %i.np, label %bb.bx, label %run_again.exit.i110

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.nq = call i32 @mod_timer(ptr noundef %i.nj, i64 noundef %i.ne) #19 ; 0 uses
  br label %run_again.exit.i110

bb.by:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.nr = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef %i.mh, ptr noundef %i.kf, i32 noundef %i.mk) #21 ; 0 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 1, ptr %i.ns, align 4
  %i.nt = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %i.lb, ptr %i.nt, align 8
  %i.nu = getelementptr i8, ptr %0, i64 1856
  %i.nv = load ptr, ptr %i.nu, align 8
  call fastcc void @drv_event_callback(ptr noundef %i.nv, ptr noundef %0, ptr noundef nonnull %5) #22, !srcloc !303
  br label %bb.co

bb.bz:                                            ; preds = %bb.bs
  %i.nw = icmp eq i16 %i.mg, 0
  %i.nx = icmp samesign ult i32 %.0143.i, %i.ml
  %or.cond.i109 = select i1 %i.nw, i1 true, i1 %i.nx
  br i1 %or.cond.i109, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ny = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef %i.mh, i32 noundef %i.ml) #21 ; 0 uses
  store i8 1, ptr %i.mn, align 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.1.i = phi i16 [ 0, %bb.ca ], [ %i.mg, %bb.bz ]
  %i.nz = getelementptr i8, ptr %0, i64 7160
  %.val169.i = load i16, ptr %i.nz, align 8
  %.not193.i = icmp eq i16 %.val169.i, 0
  br i1 %.not193.i, label %bb.cl, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.oa = getelementptr i8, ptr %i.lv, i64 448    ; 3 uses
  %i.ob = load ptr, ptr %i.oa, align 8            ; 4 uses
  %.not161.i = icmp eq ptr %i.ob, null
  br i1 %.not161.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.oc = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef %i.mh, ptr noundef %i.kf) #21 ; 0 uses
  br label %.thread.i

bb.ce:                                            ; preds = %bb.cc
  %i.od = getelementptr i8, ptr %i.ob, i64 3      ; 3 uses
  %i.oe = load i32, ptr %i.kf, align 1
  %i.of = load i32, ptr %i.od, align 1
  %i.og = xor i32 %i.oe, %i.of
  %i.oh = getelementptr i8, ptr %i.kf, i64 4
  %i.oi = getelementptr i8, ptr %i.od, i64 4
  %i.oj = load i16, ptr %i.oh, align 1
  %i.ok = load i16, ptr %i.oi, align 1
  %i.ol = zext i16 %i.oj to i32
  %i.om = zext i16 %i.ok to i32
  %i.on = xor i32 %i.ol, %i.om
  %i.oo = or i32 %i.og, %i.on
  %i.op = icmp ne i32 %i.oo, 0
  %i.oq = zext i1 %i.op to i32
  %.not162.i = icmp eq i32 %i.oq, 0
  br i1 %.not162.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.or = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef %i.mh, ptr noundef %i.od, ptr noundef %i.kf) #21 ; 0 uses
  br label %.thread.i

bb.cg:                                            ; preds = %bb.ce
  %i.os = load i16, ptr %i.ob, align 1
  %i.ot = zext i16 %i.os to i32                   ; 3 uses
  %i.ou = and i32 %i.ot, 128
  %.not.i.i111 = icmp eq i32 %i.ou, 0
  br i1 %.not.i.i111, label %ieee80211_mle_get_eml_cap.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ov = and i32 %i.ot, 16
  %.not13.i.i = icmp eq i32 %i.ov, 0
  %spec.select.v.i.i = select i1 %.not13.i.i, i64 9, i64 10
  %spec.select.i.i = getelementptr i8, ptr %i.ob, i64 %spec.select.v.i.i
  %i.ow = lshr i32 %i.ot, 5                       ; 2 uses
  %.lobit.i.i = and i32 %i.ow, 1
  %.1.idx.i.i = zext nneg i32 %.lobit.i.i to i64
  %.1.i.i = getelementptr i8, ptr %spec.select.i.i, i64 %.1.idx.i.i
  %i.ox = and i32 %i.ow, 2
  %.2.idx.i.i = zext nneg i32 %i.ox to i64
  %.2.i.i = getelementptr i8, ptr %.1.i.i, i64 %.2.idx.i.i
  %.2.val.i.i = load i16, ptr %.2.i.i, align 1
  br label %ieee80211_mle_get_eml_cap.exit.i

ieee80211_mle_get_eml_cap.exit.i:                 ; preds = %bb.ch, %bb.cg
  %.012.i.i = phi i16 [ %.2.val.i.i, %bb.ch ], [ 0, %bb.cg ]
  %i.oy = getelementptr i8, ptr %0, i64 5086
  store i16 %.012.i.i, ptr %i.oy, align 2
  %i.oz = load ptr, ptr %i.oa, align 8            ; 2 uses
  %i.pa = load i16, ptr %i.oz, align 1
  %i.pb = zext i16 %i.pa to i32                   ; 3 uses
  %i.pc = and i32 %i.pb, 64
  %.not.i178.i = icmp eq i32 %i.pc, 0
  br i1 %.not.i178.i, label %ieee80211_mle_get_eml_med_sync_delay.exit.i, label %bb.ci

bb.ci:                                            ; preds = %ieee80211_mle_get_eml_cap.exit.i
  %i.pd = and i32 %i.pb, 16
  %.not11.i.i = icmp eq i32 %i.pd, 0
  %spec.select.v.i179.i = select i1 %.not11.i.i, i64 9, i64 10
  %spec.select.i180.i = getelementptr i8, ptr %i.oz, i64 %spec.select.v.i179.i
  %i.pe = lshr i32 %i.pb, 5
  %.lobit.i181.i = and i32 %i.pe, 1
  %.1.idx.i182.i = zext nneg i32 %.lobit.i181.i to i64
  %.1.i183.i = getelementptr i8, ptr %spec.select.i180.i, i64 %.1.idx.i182.i
  %.1.val.i.i = load i16, ptr %.1.i183.i, align 1
  br label %ieee80211_mle_get_eml_med_sync_delay.exit.i

ieee80211_mle_get_eml_med_sync_delay.exit.i:      ; preds = %bb.ci, %ieee80211_mle_get_eml_cap.exit.i
  %.010.i.i = phi i16 [ %.1.val.i.i, %bb.ci ], [ 4268, %ieee80211_mle_get_eml_cap.exit.i ]
  %i.pf = getelementptr i8, ptr %0, i64 5088
  store i16 %.010.i.i, ptr %i.pf, align 8
  %i.pg = load ptr, ptr %i.oa, align 8            ; 2 uses
  %i.ph = load i16, ptr %i.pg, align 1
  %i.pi = zext i16 %i.ph to i32                   ; 4 uses
  %i.pj = and i32 %i.pi, 256
  %.not.i184.i = icmp eq i32 %i.pj, 0
  br i1 %.not.i184.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %ieee80211_mle_get_eml_med_sync_delay.exit.i
  %i.pk = and i32 %i.pi, 16
  %.not15.i.i112 = icmp eq i32 %i.pk, 0
  %spec.select.v.i185.i = select i1 %.not15.i.i112, i64 9, i64 10
  %spec.select.i186.i = getelementptr i8, ptr %i.pg, i64 %spec.select.v.i185.i
  %i.pl = lshr i32 %i.pi, 5                       ; 2 uses
  %.lobit.i187.i = and i32 %i.pl, 1
  %.1.idx.i188.i = zext nneg i32 %.lobit.i187.i to i64
  %.1.i189.i = getelementptr i8, ptr %spec.select.i186.i, i64 %.1.idx.i188.i
  %i.pm = and i32 %i.pl, 2
  %.2.idx.i190.i = zext nneg i32 %i.pm to i64
  %.2.i191.i = getelementptr i8, ptr %.1.i189.i, i64 %.2.idx.i190.i
  %i.pn = lshr i32 %i.pi, 6
  %i.po = and i32 %i.pn, 2
  %.3.idx.i.i = zext nneg i32 %i.po to i64
  %.3.i.i = getelementptr i8, ptr %.2.i191.i, i64 %.3.idx.i.i
  %.3.val.i.i = load i16, ptr %.3.i.i, align 1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %ieee80211_mle_get_eml_med_sync_delay.exit.i
  %.014.i.i = phi i16 [ %.3.val.i.i, %bb.cj ], [ 0, %ieee80211_mle_get_eml_med_sync_delay.exit.i ]
  %i.pp = getelementptr i8, ptr %0, i64 5090
  store i16 %.014.i.i, ptr %i.pp, align 2
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cb
  %i.pq = getelementptr i8, ptr %0, i64 5084
  store i16 %.1.i, ptr %i.pq, align 4
  %i.pr = load i8, ptr %i.lc, align 1, !range !28, !noundef !29
  %i.ps = getelementptr i8, ptr %0, i64 5152
  store i8 %i.pr, ptr %i.ps, align 8
  %i.pt = call fastcc zeroext i1 @ieee80211_assoc_success(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.lv, ptr noundef %.0145.i, i32 noundef %i.lr) #22, !srcloc !304
  br i1 %i.pt, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call fastcc void @ieee80211_destroy_assoc_data(ptr noundef %0, i32 noundef 2) #22, !srcloc !305
  br label %run_again.exit.i110

bb.cn:                                            ; preds = %bb.cl
  %i.pu = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.pu, align 4
  %i.pv = getelementptr i8, ptr %0, i64 1856
  %i.pw = load ptr, ptr %i.pv, align 8
  call fastcc void @drv_event_callback(ptr noundef %i.pw, ptr noundef %0, ptr noundef nonnull %5) #22, !srcloc !306
  %i.px = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %i.mh) #21 ; 0 uses
  %i.py = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 1, ptr %i.py, align 4
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.by
  %i.pz = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.qa = getelementptr i8, ptr %0, i64 4920
  %i.qb = load i8, ptr @ieee80211_ac_to_qos_mask, align 1
  %i.qc = load i8, ptr getelementptr inbounds nuw (i8, ptr @ieee80211_ac_to_qos_mask, i64 1), align 1
  %i.qd = load i8, ptr getelementptr inbounds nuw (i8, ptr @ieee80211_ac_to_qos_mask, i64 2), align 1
  %i.qe = zext i8 %i.qd to i32
  %i.qf = load i8, ptr getelementptr inbounds nuw (i8, ptr @ieee80211_ac_to_qos_mask, i64 3), align 1
  %i.qg = zext i8 %i.qf to i32
  br label %bb.cp

bb.cp:                                            ; preds = %.loopexit.i, %bb.co
  %indvars.iv.i = phi i64 [ 0, %bb.co ], [ %indvars.iv.next.i, %.loopexit.i ] ; 4 uses
  %i.qh = getelementptr [64 x i8], ptr %i.jq, i64 %indvars.iv.i ; 4 uses
  %i.qi = load ptr, ptr %i.qh, align 8            ; 2 uses
  %.not164.i = icmp eq ptr %i.qi, null
  br i1 %.not164.i, label %.loopexit.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qj = getelementptr [24 x i8], ptr %i.pz, i64 %indvars.iv.i ; 4 uses
  %i.qk = getelementptr i8, ptr %i.qj, i64 8
  store ptr %i.qi, ptr %i.qk, align 8
  %i.ql = getelementptr i8, ptr %i.qh, i64 8
  %i.qm = load i32, ptr %i.ql, align 8
  store i32 %i.qm, ptr %i.qj, align 8
  %i.qn = getelementptr i8, ptr %i.qh, i64 12
  %i.qo = load i16, ptr %i.qn, align 4
  %i.qp = getelementptr i8, ptr %i.qj, i64 4
  store i16 %i.qo, ptr %i.qp, align 4
  %i.qq = getelementptr i8, ptr %i.qh, i64 60
  %i.qr = load i16, ptr %i.qq, align 4
  %i.qs = getelementptr i8, ptr %i.qj, i64 16
  store i16 %i.qr, ptr %i.qs, align 8
  %i.qt = getelementptr [8 x i8], ptr %i.qa, i64 %indvars.iv.i
  %i.qu = load ptr, ptr %i.qt, align 8            ; 5 uses
  %.not165.i = icmp eq ptr %i.qu, null
  br i1 %.not165.i, label %.loopexit.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qv = getelementptr i8, ptr %i.qu, i64 1008
  %i.qw = load i8, ptr %i.qv, align 2, !range !28, !noundef !29
  %i.qx = trunc nuw i8 %i.qw to i1
  %narrow = select i1 %i.qx, i8 %i.qb, i8 0       ; 2 uses
  %spec.store.select.i = zext i8 %narrow to i32   ; 2 uses
  store i32 %spec.store.select.i, ptr %i.jw, align 8
  %i.qy = getelementptr i8, ptr %i.qu, i64 1022
  %i.qz = load i8, ptr %i.qy, align 2, !range !28, !noundef !29
  %i.ra = trunc nuw i8 %i.qz to i1
  br i1 %i.ra, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %10 = or i8 %narrow, %i.qc
  %11 = zext i8 %10 to i32                        ; 2 uses
  store i32 %11, ptr %i.jw, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.rb = phi i32 [ %spec.store.select.i, %bb.cr ], [ %11, %bb.cs ] ; 2 uses
  %i.rc = getelementptr i8, ptr %i.qu, i64 1036
  %i.rd = load i8, ptr %i.rc, align 2, !range !28, !noundef !29
  %i.re = trunc nuw i8 %i.rd to i1
  br i1 %i.re, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.rf = or i32 %i.rb, %i.qe                     ; 2 uses
  store i32 %i.rf, ptr %i.jw, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.rg = phi i32 [ %i.rb, %bb.ct ], [ %i.rf, %bb.cu ]
  %i.rh = getelementptr i8, ptr %i.qu, i64 1050
  %i.ri = load i8, ptr %i.rh, align 2, !range !28, !noundef !29
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.cw, label %.loopexit.i

bb.cw:                                            ; preds = %bb.cv
  %i.rk = or i32 %i.rg, %i.qg
  store i32 %i.rk, ptr %i.jw, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.cw, %bb.cv, %bb.cq, %bb.cp
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 15
  br i1 %exitcond.not.i, label %bb.cx, label %bb.cp, !llvm.loop !307

bb.cx:                                            ; preds = %.loopexit.i
  %i.rl = getelementptr i8, ptr %0, i64 7160
  %.val.i113 = load i16, ptr %i.rl, align 8
  %.not194.i = icmp eq i16 %.val.i113, 0
  br i1 %.not194.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rm = getelementptr i8, ptr %0, i64 5154
  %i.rn = load i32, ptr %i.rm, align 4
  store i32 %i.rn, ptr %i.b, align 4
  %i.ro = getelementptr i8, ptr %0, i64 5158
  %i.rp = load i16, ptr %i.ro, align 2
  %i.rq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %i.rp, ptr %i.rq, align 4
  %i.rr = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.b, ptr %i.rr, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.rs = getelementptr i8, ptr %0, i64 5154
  %i.rt = call ptr @sta_info_get_bss(ptr noundef %0, ptr noundef %i.rs) #19 ; 2 uses
  %.not163.i = icmp eq ptr %i.rt, null
  br i1 %.not163.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ru = getelementptr i8, ptr %i.rt, i64 2972
  %i.rv = load i8, ptr %i.ru, align 4, !range !28, !noundef !29
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.rw = phi i8 [ 0, %bb.cz ], [ %i.rv, %bb.da ]
  %i.rx = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i8 %i.rw, ptr %i.rx, align 4
  %i.ry = icmp ne i16 %i.lb, 0
  %i.rz = zext i1 %i.ry to i32
  call fastcc void @ieee80211_destroy_assoc_data(ptr noundef %0, i32 noundef %i.rz) #22, !srcloc !308
  store ptr %i.d, ptr %7, align 8
  %i.sa = load i64, ptr %i.a, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.sa, ptr %i.sb, align 8
  %i.sc = getelementptr i8, ptr %0, i64 3200
  %i.sd = load ptr, ptr %i.sc, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.sd, ptr %i.se, align 8
  %i.sf = getelementptr i8, ptr %0, i64 3208
  %i.sg = load i64, ptr %i.sf, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.sg, ptr %i.sh, align 8
  %i.si = getelementptr i8, ptr %0, i64 1848
  %i.sj = load ptr, ptr %i.si, align 8
  call void @cfg80211_rx_assoc_resp(ptr noundef %i.sj, ptr noundef nonnull %7) #19
  br label %run_again.exit.i110

run_again.exit.i110:                              ; preds = %.thread.i, %bb.db, %bb.cm, %bb.bx, %bb.bw, %msecs_to_jiffies.exit.i, %bb.bm
  %i.sk = getelementptr i8, ptr %0, i64 1856
  %i.sl = load ptr, ptr %i.sk, align 8
  call fastcc void @drv_mgd_complete_tx(ptr noundef %i.sl, ptr noundef %0, ptr noundef nonnull %6) #22, !srcloc !309
  call void @kfree(ptr noundef %i.lv) #19
  br label %ieee80211_rx_mgmt_assoc_resp.exit

.thread.i:                                        ; preds = %bb.cf, %bb.cd, %bb.br
  call fastcc void @ieee80211_destroy_assoc_data(ptr noundef %0, i32 noundef 3) #22, !srcloc !310
  br label %run_again.exit.i110

ieee80211_rx_mgmt_assoc_resp.exit:                ; preds = %bb.bh, %bb.bi, %bb.bj, %bb.bl, %run_again.exit.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %ieee80211_sta_rx_queued_ext.exit

bb.dc:                                            ; preds = %bb.f
  %i.sm = getelementptr i8, ptr %0, i64 2717
  %i.sn = load i8, ptr %i.sm, align 1
  %i.so = and i8 %i.sn, 8
  %.not91 = icmp eq i8 %i.so, 0
  br i1 %.not91, label %ieee80211_sta_rx_queued_ext.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.sp = getelementptr i8, ptr %i.d, i64 16
  %i.sq = getelementptr i8, ptr %0, i64 5154
  %.val = load i32, ptr %i.sp, align 4
  %i.sr = getelementptr i8, ptr %i.d, i64 20
  %.val96 = load i16, ptr %i.sr, align 4
  %.val97 = load i32, ptr %i.sq, align 4
  %i.ss = getelementptr i8, ptr %0, i64 5158
  %.val98 = load i16, ptr %i.ss, align 2
  %i.st = xor i32 %.val97, %.val
  %i.su = xor i16 %.val98, %.val96
  %i.sv = zext i16 %i.su to i32
  %i.sw = or i32 %i.st, %i.sv
  %i.sx = icmp eq i32 %i.sw, 0
  br i1 %i.sx, label %bb.de, label %ieee80211_sta_rx_queued_ext.exit

bb.de:                                            ; preds = %bb.dd
  %i.sy = getelementptr i8, ptr %i.d, i64 24      ; 2 uses
  %i.sz = load i8, ptr %i.sy, align 4
  switch i8 %i.sz, label %ieee80211_sta_rx_queued_ext.exit [
    i8 0, label %bb.df
    i8 4, label %bb.dk
    i8 9, label %bb.dk
    i8 37, label %bb.dp
    i8 43, label %bb.dw
  ]

bb.df:                                            ; preds = %bb.de
  %i.ta = getelementptr i8, ptr %1, i64 112
  %i.tb = load i32, ptr %i.ta, align 8
  %i.tc = add i32 %i.tb, -26                      ; 2 uses
  %i.td = icmp slt i32 %i.tc, 0
  br i1 %i.td, label %ieee80211_sta_rx_queued_ext.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.te = getelementptr i8, ptr %i.d, i64 26
  %i.tf = zext nneg i32 %i.tc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 6, ptr %3, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.tg, align 4
  %i.th = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.te, ptr %i.th, align 8
  %i.ti = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.tf, ptr %i.ti, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 -48, ptr %i.tj, align 8
  %i.tk = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.tl = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.tk, i8 0, i64 31, i1 false)
  store i32 -1, ptr %i.tl, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 0, ptr %i.tm, align 4
  %i.tn = call ptr @ieee802_11_parse_elems_full(ptr noundef nonnull %3) #19 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not94 = icmp eq ptr %i.tn, null
  br i1 %.not94, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.to = getelementptr i8, ptr %i.tn, i64 793
  %i.tp = load i8, ptr %i.to, align 1
  %.not95 = icmp eq i8 %i.tp, 0
  br i1 %.not95, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.tq = load i64, ptr %i.o, align 8
  %i.tr = getelementptr i8, ptr %1, i64 56
  %i.ts = load i32, ptr %i.tr, align 8
  call fastcc void @ieee80211_sta_process_chanswitch(ptr noundef %.084, i64 noundef %i.tq, i32 noundef %i.ts, ptr noundef %i.tn, ptr noundef nonnull %i.tn, i32 noundef 2) #22, !srcloc !311
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  call void @kfree(ptr noundef %i.tn) #19
  br label %ieee80211_sta_rx_queued_ext.exit

bb.dk:                                            ; preds = %bb.de, %bb.de
  %i.tt = getelementptr i8, ptr %1, i64 112
  %i.tu = load i32, ptr %i.tt, align 8
  %i.tv = add i32 %i.tu, -30                      ; 2 uses
  %i.tw = icmp slt i32 %i.tv, 0
  br i1 %i.tw, label %ieee80211_sta_rx_queued_ext.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tx = getelementptr i8, ptr %i.d, i64 26
  %i.ty = getelementptr i8, ptr %i.d, i64 30
  %i.tz = zext nneg i32 %i.tv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i32 6, ptr %2, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ua, align 4
  %i.ub = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ty, ptr %i.ub, align 8
  %i.uc = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_0
