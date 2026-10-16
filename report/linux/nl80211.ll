Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nl80211?download=true
inline.NumInlined: 4004
inline.NumDeleted: 562
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 35
begin_hunk_0_@nl80211_nan_set_peer_sched:bb.a

bb.ao:                                            ; preds = %bb.an
  store ptr @nla_parse_nested.__msg, ptr %i.fp, align 8
  %i.fs = getelementptr i8, ptr %i.fp, i64 8
  store ptr %.0147359, ptr %i.fs, align 8
  %i.ft = getelementptr i8, ptr %i.fp, i64 16
  store ptr null, ptr %i.ft, align 8
  br label %nl80211_parse_nan_peer_map.exit.thread

nla_parse_nested.exit.i:                          ; preds = %bb.am
  %i.fu = getelementptr i8, ptr %.0147359, i64 4
  %.val.i.i = load i16, ptr %.0147359, align 2
  %i.fv = add i16 %.val.i.i, -4
  %i.fw = zext i16 %i.fv to i32
  %i.fx = call i32 @__nla_parse(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef %i.fu, i32 noundef %i.fw, ptr noundef nonnull @nl80211_nan_peer_map_policy, i32 noundef 31, ptr noundef %i.fp) #27 ; 2 uses
  %.not.i218 = icmp eq i32 %i.fx, 0
  br i1 %.not.i218, label %bb.ap, label %nl80211_parse_nan_peer_map.exit.thread

bb.ap:                                            ; preds = %nla_parse_nested.exit.i
  %i.fy = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.fz = icmp ne ptr %i.fy, null
  %i.ga = load ptr, ptr %i.ec, align 16           ; 2 uses
  %i.gb = icmp ne ptr %i.ga, null
  %or.cond.i = select i1 %i.fz, i1 %i.gb, i1 false
  br i1 %or.cond.i, label %nl80211_parse_nan_peer_map.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gc = load ptr, ptr %i.ea, align 8            ; 2 uses
  call void @do_trace_netlink_extack(ptr noundef nonnull @nl80211_parse_nan_peer_map.__msg) #27
  %.not16.i = icmp eq ptr %i.gc, null
  br i1 %.not16.i, label %nl80211_parse_nan_peer_map.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr @nl80211_parse_nan_peer_map.__msg, ptr %i.gc, align 8
  br label %nl80211_parse_nan_peer_map.exit.thread

nl80211_parse_nan_peer_map.exit.thread:           ; preds = %nla_parse_nested.exit.i, %bb.ar, %bb.aq, %bb.ao, %bb.an
  %.0.i219.ph = phi i32 [ -22, %bb.an ], [ -22, %bb.ao ], [ -22, %bb.aq ], [ -22, %bb.ar ], [ %i.fx, %nla_parse_nested.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.thread242

nl80211_parse_nan_peer_map.exit:                  ; preds = %bb.ap
  %i.gd = getelementptr i8, ptr %i.fy, i64 4
  %.val.i220 = load i8, ptr %i.gd, align 1
  store i8 %.val.i220, ptr %i.fo, align 1
  %i.ge = getelementptr i8, ptr %i.fo, i64 1      ; 3 uses
  %i.gf = call fastcc i32 @nl80211_parse_nan_schedule(ptr noundef readonly %1, ptr noundef nonnull %i.ga, ptr noundef %i.ge, i8 noundef zeroext %i.cs) #28, !srcloc !633 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not195 = icmp eq i32 %i.gf, 0
  br i1 %.not195, label %.preheader275, label %.thread242

.preheader275:                                    ; preds = %nl80211_parse_nan_peer_map.exit
  %.not197354 = icmp eq i64 %indvars.iv430, 1
  br i1 %.not197354, label %bb.as, label %.thread251

bb.as:                                            ; preds = %.preheader275
  %i.gg = getelementptr i8, ptr %i.fo, i64 2
  %i.gh = getelementptr i8, ptr %i.fo, i64 3
  %i.gi = getelementptr i8, ptr %i.fo, i64 4
  %i.gj = getelementptr i8, ptr %i.fo, i64 5
  %i.gk = getelementptr i8, ptr %i.fo, i64 6
  %i.gl = getelementptr i8, ptr %i.fo, i64 7
  %i.gm = getelementptr i8, ptr %i.fo, i64 8
  %i.gn = getelementptr i8, ptr %i.fo, i64 9
  %i.go = getelementptr i8, ptr %i.fo, i64 10
  %i.gp = getelementptr i8, ptr %i.fo, i64 11
  %i.gq = getelementptr i8, ptr %i.fo, i64 12
  %i.gr = getelementptr i8, ptr %i.fo, i64 13
  %i.gs = getelementptr i8, ptr %i.fo, i64 14
  %i.gt = getelementptr i8, ptr %i.fo, i64 15
  %i.gu = getelementptr i8, ptr %i.fo, i64 16
  %i.gv = getelementptr i8, ptr %i.fo, i64 17
  %i.gw = getelementptr i8, ptr %i.fo, i64 18
  %i.gx = getelementptr i8, ptr %i.fo, i64 19
  %i.gy = getelementptr i8, ptr %i.fo, i64 20
  %i.gz = getelementptr i8, ptr %i.fo, i64 21
  %i.ha = getelementptr i8, ptr %i.fo, i64 22
  %i.hb = getelementptr i8, ptr %i.fo, i64 23
  %i.hc = getelementptr i8, ptr %i.fo, i64 24
  %i.hd = getelementptr i8, ptr %i.fo, i64 25
  %i.he = getelementptr i8, ptr %i.fo, i64 26
  %i.hf = getelementptr i8, ptr %i.fo, i64 27
  %i.hg = getelementptr i8, ptr %i.fo, i64 28
  %i.hh = getelementptr i8, ptr %i.fo, i64 29
  %i.hi = getelementptr i8, ptr %i.fo, i64 30
  %i.hj = getelementptr i8, ptr %i.fo, i64 31
  %i.hk = getelementptr i8, ptr %i.fo, i64 32
  %i.hl = load i8, ptr %i.ds, align 8             ; 2 uses
  %i.hm = load i8, ptr %i.fo, align 1
  %i.hn = icmp eq i8 %i.hl, %i.hm
  br i1 %i.hn, label %bb.at, label %.preheader96.i

bb.at:                                            ; preds = %bb.as
  %i.ho = load ptr, ptr %i.ea, align 8            ; 3 uses
  %.not83.i = icmp eq ptr %i.ho, null
  br i1 %.not83.i, label %.thread242, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = zext i8 %i.hl to i32
  %i.hq = getelementptr i8, ptr %i.ho, i64 43     ; 3 uses
  %i.hr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.hq, i64 noundef 80, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str, i32 noundef %i.hp, ptr noundef nonnull @.str) #27
  %i.hs = icmp sgt i32 %i.hr, 79
  br i1 %i.hs, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ht = call i32 @net_ratelimit() #27
  %.not84.i = icmp eq i32 %i.ht, 0
  br i1 %.not84.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hu = load i8, ptr %i.ds, align 8
  %i.hv = zext i8 %i.hu to i32
  %i.hw = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.40, i32 noundef %i.hv, ptr noundef nonnull @.str.41) #32 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  call void @do_trace_netlink_extack(ptr noundef %i.hq) #27
  store ptr %i.hq, ptr %i.ho, align 8
  br label %.thread242

.preheader96.i:                                   ; preds = %bb.as, %.thread86.i
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %.thread86.i ], [ 0, %bb.as ] ; 2 uses
  %i.hx = getelementptr i8, ptr %i.ee, i64 %indvars.iv107.i ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = icmp eq i8 %i.hy, -1
  br i1 %i.hz, label %.thread86.i, label %.preheader95.i

.preheader95.i:                                   ; preds = %.preheader96.i, %bb.be
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.be ], [ 0, %.preheader96.i ] ; 2 uses
  %i.ia = getelementptr i8, ptr %i.ge, i64 %indvars.iv.i
  %i.ib = load i8, ptr %i.ia, align 1             ; 3 uses
  %i.ic = icmp eq i8 %i.ib, -1
  br i1 %i.ic, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %.preheader95.i
  %i.id = load i8, ptr %i.hx, align 1             ; 2 uses
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr [64 x i8], ptr %.0234, i64 %i.ie
  %i.ig = zext i8 %i.ib to i64
  %i.ih = getelementptr [64 x i8], ptr %.0234, i64 %i.ig
  %i.ii = call ptr @cfg80211_chandef_compatible(ptr noundef %i.if, ptr noundef %i.ih) #27
  %.not.i221 = icmp eq ptr %i.ii, null
  br i1 %.not.i221, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ij = zext i8 %i.ib to i32                    ; 2 uses
  %i.ik = load ptr, ptr %i.ea, align 8            ; 3 uses
  %.not77.i = icmp eq ptr %i.ik, null
  br i1 %.not77.i, label %.thread242, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.il = getelementptr i8, ptr %i.ik, i64 43     ; 3 uses
  %i.im = load i8, ptr %i.ds, align 8
  %i.in = zext i8 %i.im to i32
  %i.io = load i8, ptr %i.fo, align 1
  %i.ip = zext i8 %i.io to i32
  %i.iq = zext i8 %i.id to i32                    ; 2 uses
  %i.ir = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.il, i64 noundef 80, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str, i32 noundef %i.in, i32 noundef %i.ip, i32 noundef %i.iq, i32 noundef %i.ij, ptr noundef nonnull @.str) #27
  %i.is = icmp sgt i32 %i.ir, 79
  br i1 %i.is, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.it = call i32 @net_ratelimit() #27
  %.not78.i = icmp eq i32 %i.it, 0
  br i1 %.not78.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iu = load i8, ptr %i.ds, align 8
  %i.iv = zext i8 %i.iu to i32
  %i.iw = load i8, ptr %i.fo, align 1
  %i.ix = zext i8 %i.iw to i32
  %i.iy = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.40, i32 noundef %i.iv, i32 noundef %i.ix, i32 noundef %i.iq, i32 noundef %i.ij, ptr noundef nonnull @.str.41) #32 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  call void @do_trace_netlink_extack(ptr noundef %i.il) #27
  store ptr %i.il, ptr %i.ik, align 8
  br label %.thread242

bb.be:                                            ; preds = %bb.ay, %.preheader95.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %.thread86.i, label %.preheader95.i, !llvm.loop !627

.thread86.i:                                      ; preds = %bb.be, %.preheader96.i
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond110.not.i = icmp eq i64 %indvars.iv.next108.i, 32
  br i1 %exitcond110.not.i, label %bb.bf, label %.preheader96.i, !llvm.loop !628

bb.bf:                                            ; preds = %.thread86.i
  %i.iz = load i32, ptr %i.ed, align 32
  %i.ja = icmp sgt i32 %i.iz, 1
  br i1 %i.ja, label %.thread251, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bf
  %i.jb = load i8, ptr %i.ee, align 1
  %.not79.i = icmp eq i8 %i.jb, -1
  br i1 %.not79.i, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %.preheader.i
  %i.jc = load i8, ptr %i.ge, align 1
  %.not80.i = icmp eq i8 %i.jc, -1
  br i1 %.not80.i, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.dv, %bb.dt, %bb.dr, %bb.dp, %bb.dn, %bb.dl, %bb.dj, %bb.dh, %bb.df, %bb.dd, %bb.db, %bb.cz, %bb.cx, %bb.cv, %bb.ct, %bb.cr, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.bz, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bn, %bb.bg
  %.062102.lcssa.wide.i = phi i32 [ 0, %bb.bg ], [ 1, %bb.bn ], [ 2, %bb.bp ], [ 3, %bb.br ], [ 4, %bb.bt ], [ 5, %bb.bv ], [ 6, %bb.bx ], [ 7, %bb.bz ], [ 8, %bb.cb ], [ 9, %bb.cd ], [ 10, %bb.cf ], [ 11, %bb.ch ], [ 12, %bb.cj ], [ 13, %bb.cl ], [ 14, %bb.cn ], [ 15, %bb.cp ], [ 16, %bb.cr ], [ 17, %bb.ct ], [ 18, %bb.cv ], [ 19, %bb.cx ], [ 20, %bb.cz ], [ 21, %bb.db ], [ 22, %bb.dd ], [ 23, %bb.df ], [ 24, %bb.dh ], [ 25, %bb.dj ], [ 26, %bb.dl ], [ 27, %bb.dn ], [ 28, %bb.dp ], [ 29, %bb.dr ], [ 30, %bb.dt ], [ 31, %bb.dv ] ; 2 uses
  %i.jd = load ptr, ptr %i.ea, align 8            ; 3 uses
  %.not81.i = icmp eq ptr %i.jd, null
  br i1 %.not81.i, label %.thread242, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.je = getelementptr i8, ptr %i.jd, i64 43     ; 3 uses
  %i.jf = load i8, ptr %i.ds, align 8
  %i.jg = zext i8 %i.jf to i32
  %i.jh = load i8, ptr %i.fo, align 1
  %i.ji = zext i8 %i.jh to i32
  %i.jj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.je, i64 noundef 80, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str, i32 noundef %i.jg, i32 noundef %i.ji, i32 noundef %.062102.lcssa.wide.i, ptr noundef nonnull @.str) #27
  %i.jk = icmp sgt i32 %i.jj, 79
  br i1 %i.jk, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.jl = call i32 @net_ratelimit() #27
  %.not82.i = icmp eq i32 %i.jl, 0
  br i1 %.not82.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jm = load i8, ptr %i.ds, align 8
  %i.jn = zext i8 %i.jm to i32
  %i.jo = load i8, ptr %i.fo, align 1
  %i.jp = zext i8 %i.jo to i32
  %i.jq = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.40, i32 noundef %i.jn, i32 noundef %i.jp, i32 noundef %.062102.lcssa.wide.i, ptr noundef nonnull @.str.41) #32 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  call void @do_trace_netlink_extack(ptr noundef %i.je) #27
  store ptr %i.je, ptr %i.jd, align 8
  br label %.thread242

bb.bm:                                            ; preds = %bb.bg, %.preheader.i
  %i.jr = load i8, ptr %i.ef, align 2
  %.not79.1.i = icmp eq i8 %i.jr, -1
  br i1 %.not79.1.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.js = load i8, ptr %i.gg, align 1
  %.not80.1.i = icmp eq i8 %i.js, -1
  br i1 %.not80.1.i, label %bb.bo, label %bb.bh

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.jt = load i8, ptr %i.eg, align 1
  %.not79.2.i = icmp eq i8 %i.jt, -1
  br i1 %.not79.2.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ju = load i8, ptr %i.gh, align 1
  %.not80.2.i = icmp eq i8 %i.ju, -1
  br i1 %.not80.2.i, label %bb.bq, label %bb.bh

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.jv = load i8, ptr %i.eh, align 4
  %.not79.3.i = icmp eq i8 %i.jv, -1
  br i1 %.not79.3.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %i.gi, align 1
  %.not80.3.i = icmp eq i8 %i.jw, -1
  br i1 %.not80.3.i, label %bb.bs, label %bb.bh

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.jx = load i8, ptr %i.ei, align 1
  %.not79.4.i = icmp eq i8 %i.jx, -1
  br i1 %.not79.4.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jy = load i8, ptr %i.gj, align 1
  %.not80.4.i = icmp eq i8 %i.jy, -1
  br i1 %.not80.4.i, label %bb.bu, label %bb.bh

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.jz = load i8, ptr %i.ej, align 2
  %.not79.5.i = icmp eq i8 %i.jz, -1
  br i1 %.not79.5.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ka = load i8, ptr %i.gk, align 1
  %.not80.5.i = icmp eq i8 %i.ka, -1
  br i1 %.not80.5.i, label %bb.bw, label %bb.bh

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.kb = load i8, ptr %i.ek, align 1
  %.not79.6.i = icmp eq i8 %i.kb, -1
  br i1 %.not79.6.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kc = load i8, ptr %i.gl, align 1
  %.not80.6.i = icmp eq i8 %i.kc, -1
  br i1 %.not80.6.i, label %bb.by, label %bb.bh

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.kd = load i8, ptr %i.el, align 8
  %.not79.7.i = icmp eq i8 %i.kd, -1
  br i1 %.not79.7.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ke = load i8, ptr %i.gm, align 1
  %.not80.7.i = icmp eq i8 %i.ke, -1
  br i1 %.not80.7.i, label %bb.ca, label %bb.bh

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.kf = load i8, ptr %i.em, align 1
  %.not79.8.i = icmp eq i8 %i.kf, -1
  br i1 %.not79.8.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kg = load i8, ptr %i.gn, align 1
  %.not80.8.i = icmp eq i8 %i.kg, -1
  br i1 %.not80.8.i, label %bb.cc, label %bb.bh

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.kh = load i8, ptr %i.en, align 2
  %.not79.9.i = icmp eq i8 %i.kh, -1
  br i1 %.not79.9.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ki = load i8, ptr %i.go, align 1
  %.not80.9.i = icmp eq i8 %i.ki, -1
  br i1 %.not80.9.i, label %bb.ce, label %bb.bh

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.kj = load i8, ptr %i.eo, align 1
  %.not79.10.i = icmp eq i8 %i.kj, -1
  br i1 %.not79.10.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kk = load i8, ptr %i.gp, align 1
  %.not80.10.i = icmp eq i8 %i.kk, -1
  br i1 %.not80.10.i, label %bb.cg, label %bb.bh

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.kl = load i8, ptr %i.ep, align 4
  %.not79.11.i = icmp eq i8 %i.kl, -1
  br i1 %.not79.11.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.km = load i8, ptr %i.gq, align 1
  %.not80.11.i = icmp eq i8 %i.km, -1
  br i1 %.not80.11.i, label %bb.ci, label %bb.bh

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.kn = load i8, ptr %i.eq, align 1
  %.not79.12.i = icmp eq i8 %i.kn, -1
  br i1 %.not79.12.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ko = load i8, ptr %i.gr, align 1
  %.not80.12.i = icmp eq i8 %i.ko, -1
  br i1 %.not80.12.i, label %bb.ck, label %bb.bh

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.kp = load i8, ptr %i.er, align 2
  %.not79.13.i = icmp eq i8 %i.kp, -1
  br i1 %.not79.13.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kq = load i8, ptr %i.gs, align 1
  %.not80.13.i = icmp eq i8 %i.kq, -1
  br i1 %.not80.13.i, label %bb.cm, label %bb.bh

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.kr = load i8, ptr %i.es, align 1
  %.not79.14.i = icmp eq i8 %i.kr, -1
  br i1 %.not79.14.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ks = load i8, ptr %i.gt, align 1
  %.not80.14.i = icmp eq i8 %i.ks, -1
  br i1 %.not80.14.i, label %bb.co, label %bb.bh

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.kt = load i8, ptr %i.et, align 8
  %.not79.15.i = icmp eq i8 %i.kt, -1
  br i1 %.not79.15.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ku = load i8, ptr %i.gu, align 1
  %.not80.15.i = icmp eq i8 %i.ku, -1
  br i1 %.not80.15.i, label %bb.cq, label %bb.bh

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.kv = load i8, ptr %i.eu, align 1
  %.not79.16.i = icmp eq i8 %i.kv, -1
  br i1 %.not79.16.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kw = load i8, ptr %i.gv, align 1
  %.not80.16.i = icmp eq i8 %i.kw, -1
  br i1 %.not80.16.i, label %bb.cs, label %bb.bh

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.kx = load i8, ptr %i.ev, align 2
  %.not79.17.i = icmp eq i8 %i.kx, -1
  br i1 %.not79.17.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ky = load i8, ptr %i.gw, align 1
  %.not80.17.i = icmp eq i8 %i.ky, -1
  br i1 %.not80.17.i, label %bb.cu, label %bb.bh

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.kz = load i8, ptr %i.ew, align 1
  %.not79.18.i = icmp eq i8 %i.kz, -1
  br i1 %.not79.18.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.la = load i8, ptr %i.gx, align 1
  %.not80.18.i = icmp eq i8 %i.la, -1
  br i1 %.not80.18.i, label %bb.cw, label %bb.bh

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.lb = load i8, ptr %i.ex, align 4
  %.not79.19.i = icmp eq i8 %i.lb, -1
  br i1 %.not79.19.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lc = load i8, ptr %i.gy, align 1
  %.not80.19.i = icmp eq i8 %i.lc, -1
  br i1 %.not80.19.i, label %bb.cy, label %bb.bh

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.ld = load i8, ptr %i.ey, align 1
  %.not79.20.i = icmp eq i8 %i.ld, -1
  br i1 %.not79.20.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.le = load i8, ptr %i.gz, align 1
  %.not80.20.i = icmp eq i8 %i.le, -1
  br i1 %.not80.20.i, label %bb.da, label %bb.bh

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.lf = load i8, ptr %i.ez, align 2
  %.not79.21.i = icmp eq i8 %i.lf, -1
  br i1 %.not79.21.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lg = load i8, ptr %i.ha, align 1
  %.not80.21.i = icmp eq i8 %i.lg, -1
  br i1 %.not80.21.i, label %bb.dc, label %bb.bh

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.lh = load i8, ptr %i.fa, align 1
  %.not79.22.i = icmp eq i8 %i.lh, -1
  br i1 %.not79.22.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.li = load i8, ptr %i.hb, align 1
  %.not80.22.i = icmp eq i8 %i.li, -1
  br i1 %.not80.22.i, label %bb.de, label %bb.bh

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.lj = load i8, ptr %i.fb, align 8
  %.not79.23.i = icmp eq i8 %i.lj, -1
  br i1 %.not79.23.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.lk = load i8, ptr %i.hc, align 1
  %.not80.23.i = icmp eq i8 %i.lk, -1
  br i1 %.not80.23.i, label %bb.dg, label %bb.bh

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.ll = load i8, ptr %i.fc, align 1
  %.not79.24.i = icmp eq i8 %i.ll, -1
  br i1 %.not79.24.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.lm = load i8, ptr %i.hd, align 1
  %.not80.24.i = icmp eq i8 %i.lm, -1
  br i1 %.not80.24.i, label %bb.di, label %bb.bh

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ln = load i8, ptr %i.fd, align 2
  %.not79.25.i = icmp eq i8 %i.ln, -1
  br i1 %.not79.25.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lo = load i8, ptr %i.he, align 1
  %.not80.25.i = icmp eq i8 %i.lo, -1
  br i1 %.not80.25.i, label %bb.dk, label %bb.bh

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.lp = load i8, ptr %i.fe, align 1
  %.not79.26.i = icmp eq i8 %i.lp, -1
  br i1 %.not79.26.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.lq = load i8, ptr %i.hf, align 1
  %.not80.26.i = icmp eq i8 %i.lq, -1
  br i1 %.not80.26.i, label %bb.dm, label %bb.bh

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.lr = load i8, ptr %i.ff, align 4
  %.not79.27.i = icmp eq i8 %i.lr, -1
  br i1 %.not79.27.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ls = load i8, ptr %i.hg, align 1
  %.not80.27.i = icmp eq i8 %i.ls, -1
  br i1 %.not80.27.i, label %bb.do, label %bb.bh

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.lt = load i8, ptr %i.fg, align 1
  %.not79.28.i = icmp eq i8 %i.lt, -1
  br i1 %.not79.28.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lu = load i8, ptr %i.hh, align 1
  %.not80.28.i = icmp eq i8 %i.lu, -1
  br i1 %.not80.28.i, label %bb.dq, label %bb.bh

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.lv = load i8, ptr %i.fh, align 2
  %.not79.29.i = icmp eq i8 %i.lv, -1
  br i1 %.not79.29.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lw = load i8, ptr %i.hi, align 1
  %.not80.29.i = icmp eq i8 %i.lw, -1
  br i1 %.not80.29.i, label %bb.ds, label %bb.bh

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.lx = load i8, ptr %i.fi, align 1
  %.not79.30.i = icmp eq i8 %i.lx, -1
  br i1 %.not79.30.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ly = load i8, ptr %i.hj, align 1
  %.not80.30.i = icmp eq i8 %i.ly, -1
  br i1 %.not80.30.i, label %bb.du, label %bb.bh

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.lz = load i8, ptr %i.fj, align 8
  %.not79.31.i = icmp eq i8 %i.lz, -1
  br i1 %.not79.31.i, label %.thread251, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ma = load i8, ptr %i.hk, align 1
  %.not80.31.i = icmp eq i8 %i.ma, -1
  br i1 %.not80.31.i, label %.thread251, label %bb.bh

.thread251:                                       ; preds = %bb.dv, %bb.du, %bb.bf, %.preheader275
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 1 ; 2 uses
  %i.mb = load i16, ptr %.0147359, align 2
  %i.mc = zext i16 %i.mb to i32
  %i.md = add nuw nsw i32 %i.mc, 3
  %i.me = and i32 %i.md, 131068                   ; 2 uses
  %i.mf = sub nsw i32 %.2233357, %i.me            ; 2 uses
  %i.mg = zext nneg i32 %i.me to i64
  %i.mh = getelementptr i8, ptr %.0147359, i64 %i.mg
  %i.mi = icmp sgt i32 %i.mf, 3
  br i1 %i.mi, label %bb.ai, label %nla_ok.exit217.thread.loopexit, !llvm.loop !629

nla_ok.exit217.thread.loopexit:                   ; preds = %.thread251, %bb.ai
  %.1161.ph.in = phi i64 [ %indvars.iv.next431, %.thread251 ], [ %indvars.iv430, %bb.ai ]
  %.1161.ph = trunc i64 %.1161.ph.in to i32
  br label %nla_ok.exit217.thread

nla_ok.exit217.thread:                            ; preds = %nla_ok.exit217.thread.loopexit, %bb.ah, %bb.ag
  %.1161 = phi i32 [ 0, %bb.ag ], [ 0, %bb.ah ], [ %.1161.ph, %nla_ok.exit217.thread.loopexit ] ; 3 uses
  %.not194368 = icmp sgt i32 %.0158.lcssa, 0
  br i1 %.not194368, label %.preheader274.lr.ph, label %.thread259

.preheader274.lr.ph:                              ; preds = %nla_ok.exit217.thread
  %i.mj = icmp slt i32 %.1161, 1
  br i1 %i.mj, label %.split.us, label %.preheader274.preheader

.preheader274.preheader:                          ; preds = %.preheader274.lr.ph
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 41
  %i.ml = load i8, ptr %i.mk, align 1
  %i.mm = zext i8 %i.ml to i32
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.mo = load i8, ptr %i.mn, align 2
  %i.mp = zext i8 %i.mo to i32
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 43
  %i.mr = load i8, ptr %i.mq, align 1
  %i.ms = zext i8 %i.mr to i32
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.mu = load i8, ptr %i.mt, align 4
  %i.mv = zext i8 %i.mu to i32
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 45
  %i.mx = load i8, ptr %i.mw, align 1
  %i.my = zext i8 %i.mx to i32
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 46
  %i.na = load i8, ptr %i.mz, align 2
  %i.nb = zext i8 %i.na to i32
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 47
  %i.nd = load i8, ptr %i.nc, align 1
  %i.ne = zext i8 %i.nd to i32
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ng = load i8, ptr %i.nf, align 8
  %i.nh = zext i8 %i.ng to i32
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.nj = load i8, ptr %i.ni, align 1
  %i.nk = zext i8 %i.nj to i32
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.nm = load i8, ptr %i.nl, align 2
  %i.nn = zext i8 %i.nm to i32
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 51
  %i.np = load i8, ptr %i.no, align 1
  %i.nq = zext i8 %i.np to i32
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ns = load i8, ptr %i.nr, align 4
  %i.nt = zext i8 %i.ns to i32
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 53
  %i.nv = load i8, ptr %i.nu, align 1
  %i.nw = zext i8 %i.nv to i32
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.ny = load i8, ptr %i.nx, align 2
  %i.nz = zext i8 %i.ny to i32
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 55
  %i.ob = load i8, ptr %i.oa, align 1
  %i.oc = zext i8 %i.ob to i32
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.oe = load i8, ptr %i.od, align 8
  %i.of = zext i8 %i.oe to i32
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 57
  %i.oh = load i8, ptr %i.og, align 1
  %i.oi = zext i8 %i.oh to i32
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.ok = load i8, ptr %i.oj, align 2
  %i.ol = zext i8 %i.ok to i32
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 59
  %i.on = load i8, ptr %i.om, align 1
  %i.oo = zext i8 %i.on to i32
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.oq = load i8, ptr %i.op, align 4
  %i.or = zext i8 %i.oq to i32
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 61
  %i.ot = load i8, ptr %i.os, align 1
  %i.ou = zext i8 %i.ot to i32
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.ow = load i8, ptr %i.ov, align 2
  %i.ox = zext i8 %i.ow to i32
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 63
  %i.oz = load i8, ptr %i.oy, align 1
  %i.pa = zext i8 %i.oz to i32
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.pc = load i8, ptr %i.pb, align 8
  %i.pd = zext i8 %i.pc to i32
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 65
  %i.pf = load i8, ptr %i.pe, align 1
  %i.pg = zext i8 %i.pf to i32
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 66
  %i.pi = load i8, ptr %i.ph, align 2
  %i.pj = zext i8 %i.pi to i32
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 67
  %i.pl = load i8, ptr %i.pk, align 1
  %i.pm = zext i8 %i.pl to i32
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.po = load i8, ptr %i.pn, align 4
  %i.pp = zext i8 %i.po to i32
  %i.pq = getelementptr inbounds nuw i8, ptr %2, i64 69
  %i.pr = load i8, ptr %i.pq, align 1
  %i.ps = zext i8 %i.pr to i32
  %i.pt = getelementptr inbounds nuw i8, ptr %2, i64 70
  %i.pu = load i8, ptr %i.pt, align 2
  %i.pv = zext i8 %i.pu to i32
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 71
  %i.px = load i8, ptr %i.pw, align 1
  %i.py = zext i8 %i.px to i32
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.qa = load i8, ptr %i.pz, align 8
  %i.qb = zext i8 %i.qa to i32
  %.not529.peel.not = icmp eq i32 %.1161, 1
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.qd = load i8, ptr %i.qc, align 2
  %i.qe = zext i8 %i.qd to i32
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 75
  %i.qg = load i8, ptr %i.qf, align 1
  %i.qh = zext i8 %i.qg to i32
  %i.qi = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.qj = load i8, ptr %i.qi, align 4
  %i.qk = zext i8 %i.qj to i32
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 77
  %i.qm = load i8, ptr %i.ql, align 1
  %i.qn = zext i8 %i.qm to i32
  %i.qo = getelementptr inbounds nuw i8, ptr %2, i64 78
  %i.qp = load i8, ptr %i.qo, align 2
  %i.qq = zext i8 %i.qp to i32
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 79
  %i.qs = load i8, ptr %i.qr, align 1
  %i.qt = zext i8 %i.qs to i32
  %i.qu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.qv = load i8, ptr %i.qu, align 8
  %i.qw = zext i8 %i.qv to i32
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 81
  %i.qy = load i8, ptr %i.qx, align 1
  %i.qz = zext i8 %i.qy to i32
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 82
  %i.rb = load i8, ptr %i.ra, align 2
  %i.rc = zext i8 %i.rb to i32
  %i.rd = getelementptr inbounds nuw i8, ptr %2, i64 83
  %i.re = load i8, ptr %i.rd, align 1
  %i.rf = zext i8 %i.re to i32
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.rh = load i8, ptr %i.rg, align 4
  %i.ri = zext i8 %i.rh to i32
  %i.rj = getelementptr inbounds nuw i8, ptr %2, i64 85
  %i.rk = load i8, ptr %i.rj, align 1
  %i.rl = zext i8 %i.rk to i32
  %i.rm = getelementptr inbounds nuw i8, ptr %2, i64 86
  %i.rn = load i8, ptr %i.rm, align 2
  %i.ro = zext i8 %i.rn to i32
  %i.rp = getelementptr inbounds nuw i8, ptr %2, i64 87
  %i.rq = load i8, ptr %i.rp, align 1
  %i.rr = zext i8 %i.rq to i32
  %i.rs = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.rt = load i8, ptr %i.rs, align 8
  %i.ru = zext i8 %i.rt to i32
  %i.rv = getelementptr inbounds nuw i8, ptr %2, i64 89
  %i.rw = load i8, ptr %i.rv, align 1
  %i.rx = zext i8 %i.rw to i32
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 90
  %i.rz = load i8, ptr %i.ry, align 2
  %i.sa = zext i8 %i.rz to i32
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 91
  %i.sc = load i8, ptr %i.sb, align 1
  %i.sd = zext i8 %i.sc to i32
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.sf = load i8, ptr %i.se, align 4
  %i.sg = zext i8 %i.sf to i32
  %i.sh = getelementptr inbounds nuw i8, ptr %2, i64 93
  %i.si = load i8, ptr %i.sh, align 1
  %i.sj = zext i8 %i.si to i32
  %i.sk = getelementptr inbounds nuw i8, ptr %2, i64 94
  %i.sl = load i8, ptr %i.sk, align 2
  %i.sm = zext i8 %i.sl to i32
end_hunk_0
