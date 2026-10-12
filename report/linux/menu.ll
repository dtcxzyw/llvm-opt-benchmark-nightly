Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/menu?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@menu_select:bb.a
  %.170.4.i = phi i32 [ %.170.3.i, %bb.y ], [ %i.dh, %bb.z ] ; 2 uses
  %.167.4.i = phi i64 [ %.167.3.i, %bb.y ], [ %i.di, %bb.z ] ; 2 uses
  %.164.4.i = phi i64 [ %.164.3.i, %bb.y ], [ %i.dj, %bb.z ] ; 2 uses
  %.161.4.i = phi i32 [ %.161.3.i, %bb.y ], [ %spec.select78.4.i, %bb.z ] ; 2 uses
  %.2.4.i = phi i32 [ %.2.3.i, %bb.y ], [ %spec.select.4.i, %bb.z ] ; 2 uses
  %.not75.5.i = icmp slt i64 %.055.i, %i.co
  %.not76.5.i = icmp samesign ugt i64 %.056.i, %i.co
  %or.cond77.5.i = select i1 %.not75.5.i, i1 %.not76.5.i, i1 false
  br i1 %or.cond77.5.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = add nuw nsw i32 %.170.4.i, 1
  %i.dl = add nuw nsw i64 %.167.4.i, %i.co
  %i.dm = add i64 %.164.4.i, %i.cp
  %spec.select.5.i = tail call i32 @llvm.umax.i32(i32 %i.cn, i32 %.2.4.i)
  %spec.select78.5.i = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 %.161.4.i)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.170.5.i = phi i32 [ %.170.4.i, %bb.aa ], [ %i.dk, %bb.ab ] ; 2 uses
  %.167.5.i = phi i64 [ %.167.4.i, %bb.aa ], [ %i.dl, %bb.ab ] ; 2 uses
  %.164.5.i = phi i64 [ %.164.4.i, %bb.aa ], [ %i.dm, %bb.ab ] ; 2 uses
  %.161.5.i = phi i32 [ %.161.4.i, %bb.aa ], [ %spec.select78.5.i, %bb.ab ] ; 2 uses
  %.2.5.i = phi i32 [ %.2.4.i, %bb.aa ], [ %spec.select.5.i, %bb.ab ] ; 2 uses
  %.not75.6.i = icmp slt i64 %.055.i, %i.cs
  %.not76.6.i = icmp samesign ugt i64 %.056.i, %i.cs
  %or.cond77.6.i = select i1 %.not75.6.i, i1 %.not76.6.i, i1 false
  br i1 %or.cond77.6.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = add nuw nsw i32 %.170.5.i, 1
  %i.do = add nuw nsw i64 %.167.5.i, %i.cs
  %i.dp = add i64 %.164.5.i, %i.ct
  %spec.select.6.i = tail call i32 @llvm.umax.i32(i32 %i.cr, i32 %.2.5.i)
  %spec.select78.6.i = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 %.161.5.i)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.170.6.i = phi i32 [ %.170.5.i, %bb.ac ], [ %i.dn, %bb.ad ] ; 2 uses
  %.167.6.i = phi i64 [ %.167.5.i, %bb.ac ], [ %i.do, %bb.ad ] ; 2 uses
  %.164.6.i = phi i64 [ %.164.5.i, %bb.ac ], [ %i.dp, %bb.ad ] ; 2 uses
  %.161.6.i = phi i32 [ %.161.5.i, %bb.ac ], [ %spec.select78.6.i, %bb.ad ] ; 2 uses
  %.2.6.i = phi i32 [ %.2.5.i, %bb.ac ], [ %spec.select.6.i, %bb.ad ] ; 2 uses
  %.not75.7.i = icmp slt i64 %.055.i, %i.cw
  %.not76.7.i = icmp samesign ugt i64 %.056.i, %i.cw
  %or.cond77.7.i = select i1 %.not75.7.i, i1 %.not76.7.i, i1 false
  br i1 %or.cond77.7.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dq = add nuw nsw i32 %.170.6.i, 1
  %i.dr = add nuw nsw i64 %.167.6.i, %i.cw
  %i.ds = add i64 %.164.6.i, %i.cx
  %spec.select.7.i = tail call i32 @llvm.umax.i32(i32 %i.cv, i32 %.2.6.i)
  %spec.select78.7.i = tail call i32 @llvm.umin.i32(i32 %i.cv, i32 %.161.6.i)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.170.7.i = phi i32 [ %.170.6.i, %bb.ae ], [ %i.dq, %bb.af ] ; 4 uses
  %.167.7.i = phi i64 [ %.167.6.i, %bb.ae ], [ %i.dr, %bb.af ] ; 2 uses
  %.164.7.i = phi i64 [ %.164.6.i, %bb.ae ], [ %i.ds, %bb.af ] ; 2 uses
  %.161.7.i = phi i32 [ %.161.6.i, %bb.ae ], [ %spec.select78.7.i, %bb.af ]
  %.2.7.i = phi i32 [ %.2.6.i, %bb.ae ], [ %spec.select.7.i, %bb.af ] ; 2 uses
  %.not.i129 = icmp eq i32 %.2.7.i, 0
  br i1 %.not.i129, label %get_typical_interval.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dt = icmp eq i32 %.170.7.i, 8
  br i1 %i.dt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.du = lshr i64 %.167.7.i, 3
  %i.dv = lshr i64 %.164.7.i, 3
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dw = zext nneg i32 %.170.7.i to i64          ; 2 uses
  %i.dx = udiv i64 %.167.7.i, %i.dw
  %i.dy = udiv i64 %.164.7.i, %i.dw
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.268.i = phi i64 [ %i.du, %bb.ai ], [ %i.dx, %bb.aj ] ; 6 uses
  %.265.i = phi i64 [ %i.dv, %bb.ai ], [ %i.dy, %bb.aj ]
  %i.dz = mul i64 %.268.i, %.268.i                ; 2 uses
  %i.ea = sub i64 %.265.i, %i.dz                  ; 4 uses
  %i.eb = icmp ult i64 %i.ea, 512409557603043101
  br i1 %i.eb, label %bb.al, label %bb.ao, !prof !15

bb.al:                                            ; preds = %bb.ak
  %i.ec = mul nuw i64 %i.ea, 36
  %i.ed = icmp ugt i64 %i.dz, %i.ec
  br i1 %i.ed, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ee = icmp samesign ugt i32 %.170.7.i, 5
  %i.ef = icmp samesign ult i64 %i.ea, 401
  %or.cond.i131 = or i1 %i.ee, %i.ef
  br i1 %or.cond.i131, label %get_typical_interval.exit, label %get_typical_interval.exit.thread

bb.an:                                            ; preds = %bb.al
  %.old1.i = icmp samesign ult i64 %i.ea, 401
  br i1 %.old1.i, label %get_typical_interval.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %i.eg = icmp samesign ult i32 %.170.7.i, 7
  br i1 %i.eg, label %get_typical_interval.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eh = zext i32 %.161.7.i to i64               ; 2 uses
  %i.ei = sub nsw i64 %.268.i, %i.eh
  %i.ej = zext i32 %.2.7.i to i64                 ; 2 uses
  %i.ek = sub nsw i64 %i.ej, %.268.i
  %i.el = icmp ugt i64 %i.ei, %i.ek               ; 2 uses
  %.056..i = select i1 %i.el, i64 %.056.i, i64 %i.ej
  %..055.i = select i1 %i.el, i64 %i.eh, i64 %.055.i
  br label %bb.q

get_typical_interval.exit:                        ; preds = %bb.an, %bb.am
  %i.em = and i64 %.268.i, 4294967295
  %i.en = mul nuw nsw i64 %i.em, 1000             ; 3 uses
  %i.eo = and i64 %.268.i, 4294967280
  %.not148 = icmp eq i64 %i.eo, 0
  br i1 %.not148, label %bb.aq, label %get_typical_interval.exit.thread

bb.aq:                                            ; preds = %get_typical_interval.exit
  %i.ep = tail call zeroext i1 @tick_nohz_tick_stopped() #7
  br i1 %i.ep, label %get_typical_interval.exit.thread, label %bb.ax

get_typical_interval.exit.thread:                 ; preds = %bb.ao, %bb.ag, %bb.am, %bb.aq, %get_typical_interval.exit
  %i.eq = phi i64 [ %i.en, %get_typical_interval.exit ], [ %i.en, %bb.aq ], [ 4294967295000, %bb.am ], [ 4294967295000, %bb.ag ], [ 4294967295000, %bb.ao ]
  %i.er = call i64 @tick_nohz_get_sleep_length(ptr noundef nonnull %i.a) #7 ; 12 uses
  %i.es = icmp slt i64 %i.er, 0
  br i1 %i.es, label %.thread, label %bb.ar, !prof !16

.thread:                                          ; preds = %get_typical_interval.exit.thread
  store i64 0, ptr %i.a, align 8
  %i.et = getelementptr i8, ptr %i.d, i64 8       ; 2 uses
  store i64 0, ptr %i.et, align 8
  br label %which_bucket.exit

bb.ar:                                            ; preds = %get_typical_interval.exit.thread
  %i.eu = getelementptr i8, ptr %i.d, i64 8       ; 6 uses
  store i64 %i.er, ptr %i.eu, align 8
  %i.ev = icmp samesign ult i64 %i.er, 10000
  br i1 %i.ev, label %which_bucket.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ew = icmp samesign ult i64 %i.er, 100000
  br i1 %i.ew, label %which_bucket.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ex = icmp samesign ult i64 %i.er, 1000000
  br i1 %i.ex, label %which_bucket.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ey = icmp samesign ult i64 %i.er, 10000000
  br i1 %i.ey, label %which_bucket.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ez = icmp samesign ult i64 %i.er, 100000000
  %..i = select i1 %i.ez, i32 4, i32 5
  br label %which_bucket.exit

which_bucket.exit:                                ; preds = %.thread, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av
  %i.fa = phi ptr [ %i.eu, %bb.au ], [ %i.eu, %bb.ar ], [ %i.eu, %bb.as ], [ %i.eu, %bb.at ], [ %i.eu, %bb.av ], [ %i.et, %.thread ]
  %.0101135 = phi i64 [ %i.er, %bb.au ], [ %i.er, %bb.ar ], [ %i.er, %bb.as ], [ %i.er, %bb.at ], [ %i.er, %bb.av ], [ 0, %.thread ]
  %.0.i132 = phi i32 [ 3, %bb.au ], [ 0, %bb.ar ], [ 1, %bb.as ], [ 2, %bb.at ], [ %..i, %bb.av ], [ 0, %.thread ] ; 2 uses
  %i.fb = getelementptr i8, ptr %i.d, i64 16
  store i32 %.0.i132, ptr %i.fb, align 8
  %i.fc = getelementptr i8, ptr %i.d, i64 20
  %i.fd = zext nneg i32 %.0.i132 to i64
  %i.fe = getelementptr [4 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = zext i32 %i.ff to i64
  %i.fh = mul i64 %.0101135, %i.fg
  %i.fi = add i64 %i.fh, 4096000
  %i.fj = udiv i64 %i.fi, 8192000
  %i.fk = and i64 %i.fj, 4294967295
  %i.fl = mul nuw nsw i64 %i.fk, 1000
  %i.fm = call i64 @llvm.umin.i64(i64 %i.fl, i64 %i.eq) ; 3 uses
  %i.fn = call zeroext i1 @tick_nohz_tick_stopped() #7
  %i.fo = icmp samesign ult i64 %i.fm, 1000000
  %or.cond = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %or.cond, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %which_bucket.exit
  %i.fp = load i64, ptr %i.fa, align 8            ; 2 uses
  %i.fq = icmp ugt i64 %i.fp, 2000000
  %spec.select = select i1 %i.fq, i64 %i.fp, i64 %i.fm
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aq
  %i.fr = getelementptr i8, ptr %i.d, i64 8
  store i64 9223372036854775807, ptr %i.fr, align 8
  store i64 500000, ptr %i.a, align 8
  %i.fs = getelementptr i8, ptr %i.d, i64 16
  store i32 5, ptr %i.fs, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %which_bucket.exit, %bb.ax
  %.1103 = phi i64 [ %i.en, %bb.ax ], [ %i.fm, %which_bucket.exit ], [ %spec.select, %bb.aw ] ; 7 uses
  %i.ft = icmp eq i64 %i.g, 0
  br i1 %i.ft, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fu = getelementptr i8, ptr %i.d, i64 8
  %i.fv = load i64, ptr %i.fu, align 8            ; 2 uses
  %i.fw = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.fx = getelementptr i8, ptr %0, i64 184
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = icmp ult i64 %i.fv, %i.fy
  br i1 %i.fz, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ga = getelementptr i8, ptr %0, i64 176
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = icmp slt i64 %i.g, %i.gb
  br i1 %i.gc, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gd = getelementptr i8, ptr %1, i64 48
  %i.ge = load i64, ptr %i.gd, align 8
  %.not115 = icmp eq i64 %i.ge, 0
  br i1 %.not115, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ay
  %i.gf = getelementptr i8, ptr %0, i64 88
  %i.gg = load i32, ptr %i.gf, align 8
  %i.gh = trunc i32 %i.gg to i8
  %i.gi = and i8 %i.gh, 1
  %i.gj = xor i8 %i.gi, 1
  store i8 %i.gj, ptr %2, align 1
  br label %.thread143

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %i.gk = getelementptr i8, ptr %0, i64 1064
  %i.gl = load i32, ptr %i.gk, align 8            ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.lr.ph, label %.thread136.thread

.lr.ph:                                           ; preds = %bb.bd
  %i.gn = getelementptr i8, ptr %1, i64 48
  %wide.trip.count = zext nneg i32 %i.gl to i64
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph, %bb.bn
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bn ] ; 5 uses
  %.096169 = phi i32 [ -1, %.lr.ph ], [ %.3, %bb.bn ] ; 5 uses
  %i.go = getelementptr [104 x i8], ptr %i.fw, i64 %indvars.iv ; 3 uses
  %i.gp = getelementptr [64 x i8], ptr %i.gn, i64 %indvars.iv
  %i.gq = load i64, ptr %i.gp, align 8
  %.not116 = icmp eq i64 %i.gq, 0
  br i1 %.not116, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %bb.be
  %i.gr = getelementptr i8, ptr %i.go, i64 48
  %i.gs = load i64, ptr %i.gr, align 8            ; 2 uses
  %i.gt = icmp sgt i64 %i.gs, %i.g
  br i1 %i.gt, label %.thread136.loopexit.split.loop.exit159, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gu = getelementptr i8, ptr %i.go, i64 56
  %i.gv = load i64, ptr %i.gu, align 8            ; 4 uses
  %.not117 = icmp ugt i64 %i.gv, %.1103
  %i.gw = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  br i1 %.not117, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  %i.gx = getelementptr i8, ptr %i.go, i64 56
  %i.gy = icmp eq i32 %.096169, -1
  %spec.select125.le162 = select i1 %i.gy, i32 %i.gw, i32 %.096169 ; 5 uses
  %i.gz = sext i32 %spec.select125.le162 to i64
  %i.ha = getelementptr [104 x i8], ptr %i.fw, i64 %i.gz ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 64
  %i.hc = load i32, ptr %i.hb, align 8
  %.not118 = trunc i32 %i.hc to i1
  %i.hd = icmp slt i64 %i.gv, 15000
  %or.cond126 = and i1 %i.hd, %.not118
  br i1 %or.cond126, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %.not119 = icmp ugt i64 %i.gv, %i.fv
  %.not120 = icmp ugt i64 %i.gs, %.1103
  %or.cond127 = select i1 %.not119, i1 true, i1 %.not120
  br i1 %or.cond127, label %bb.bj, label %.thread136

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.he = icmp ult i64 %.1103, 1000000
  br i1 %i.he, label %.thread136, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hf = call zeroext i1 @tick_nohz_tick_stopped() #7
  %i.hg = getelementptr i8, ptr %i.ha, i64 56
  %i.hh = load i64, ptr %i.hg, align 8            ; 2 uses
  br i1 %i.hf, label %bb.bl, label %.thread136

bb.bl:                                            ; preds = %bb.bk
  %i.hi = icmp slt i64 %i.hh, 1000000
  br i1 %i.hi, label %bb.bm, label %.thread143

bb.bm:                                            ; preds = %bb.bl
  %i.hj = load i64, ptr %i.gx, align 8
  %i.hk = load i64, ptr %i.a, align 8
  %.not121 = icmp sgt i64 %i.hj, %i.hk
  %spec.select128 = select i1 %.not121, i32 %spec.select125.le162, i32 %i.gw
  br label %.thread143

bb.bn:                                            ; preds = %bb.be, %bb.bg
  %.3 = phi i32 [ %i.gw, %bb.bg ], [ %.096169, %bb.be ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread136, label %bb.be, !llvm.loop !10

.thread136.loopexit.split.loop.exit159:           ; preds = %bb.bf
  %i.hl = trunc nuw nsw i64 %indvars.iv to i32
  %i.hm = icmp eq i32 %.096169, -1
  %spec.select125.le = select i1 %i.hm, i32 %i.hl, i32 %.096169
  br label %.thread136

.thread136:                                       ; preds = %bb.bn, %bb.bk, %.thread136.loopexit.split.loop.exit159, %bb.bj, %bb.bi
  %.4106 = phi i64 [ %i.hh, %bb.bk ], [ %.1103, %bb.bj ], [ %i.gv, %bb.bi ], [ %.1103, %.thread136.loopexit.split.loop.exit159 ], [ %.1103, %bb.bn ]
  %.4 = phi i32 [ %spec.select125.le162, %bb.bk ], [ %spec.select125.le162, %bb.bj ], [ %i.gw, %bb.bi ], [ %spec.select125.le, %.thread136.loopexit.split.loop.exit159 ], [ %.3, %bb.bn ]
  %.4.fr = freeze i32 %.4                         ; 3 uses
  %i.hn = icmp eq i32 %.4.fr, -1
  %spec.select233 = select i1 %i.hn, i32 0, i32 %.4.fr
  br label %.thread136.thread

.thread136.thread:                                ; preds = %.thread136, %bb.bd
  %.4217 = phi i32 [ %.4.fr, %.thread136 ], [ -1, %bb.bd ] ; 4 uses
  %.4106215 = phi i64 [ %.4106, %.thread136 ], [ %.1103, %bb.bd ]
  %3 = phi i32 [ %spec.select233, %.thread136 ], [ 0, %bb.bd ] ; 5 uses
  %i.ho = sext i32 %3 to i64
  %i.hp = getelementptr [104 x i8], ptr %i.fw, i64 %i.ho ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 64
  %i.hr = load i32, ptr %i.hq, align 8
  %i.hs = trunc i32 %i.hr to i1
  %i.ht = icmp ult i64 %.4106215, 1000000
  %or.cond3 = select i1 %i.hs, i1 true, i1 %i.ht
  br i1 %or.cond3, label %bb.bo, label %.thread143

bb.bo:                                            ; preds = %.thread136.thread
  %i.hu = call zeroext i1 @tick_nohz_tick_stopped() #7
  br i1 %i.hu, label %.thread143, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i8 0, ptr %2, align 1
  %i.hv = icmp sgt i32 %3, 0
  br i1 %i.hv, label %bb.bq, label %.thread143

bb.bq:                                            ; preds = %bb.bp
  %i.hw = getelementptr i8, ptr %i.hp, i64 56
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = load i64, ptr %i.a, align 8             ; 2 uses
  %i.hz = icmp sgt i64 %i.hx, %i.hy
  %i.ia = icmp sgt i32 %.4217, 0
  %or.cond234 = and i1 %i.hz, %i.ia
  br i1 %or.cond234, label %.lr.ph173, label %.thread143

.lr.ph173:                                        ; preds = %bb.bq
  %i.ib = getelementptr i8, ptr %1, i64 48
  %i.ic = zext nneg i32 %.4217 to i64
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph173, %bb.bt
  %indvars.iv192 = phi i64 [ %i.ic, %.lr.ph173 ], [ %indvars.iv.next193, %bb.bt ] ; 2 uses
  %.5171 = phi i32 [ %.4217, %.lr.ph173 ], [ %.6, %bb.bt ]
  %indvars.iv.next193 = add nsw i64 %indvars.iv192, -1 ; 4 uses
  %i.id = getelementptr [64 x i8], ptr %i.ib, i64 %indvars.iv.next193
  %i.ie = load i64, ptr %i.id, align 8
  %.not122 = icmp eq i64 %i.ie, 0
  br i1 %.not122, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.if = getelementptr [104 x i8], ptr %i.fw, i64 %indvars.iv.next193
  %i.ig = getelementptr i8, ptr %i.if, i64 56
  %i.ih = load i64, ptr %i.ig, align 8
  %.not123 = icmp sgt i64 %i.ih, %i.hy
  %i.ii = trunc nuw nsw i64 %indvars.iv.next193 to i32 ; 2 uses
  br i1 %.not123, label %bb.bt, label %.thread143

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.6 = phi i32 [ %.5171, %bb.br ], [ %i.ii, %bb.bs ] ; 2 uses
  %i.ij = icmp samesign ugt i64 %indvars.iv192, 1
  br i1 %i.ij, label %bb.br, label %.thread143, !llvm.loop !11

.thread143:                                       ; preds = %bb.bs, %bb.bt, %bb.bm, %bb.bl, %bb.bo, %.thread136.thread, %bb.bq, %bb.bp, %bb.bc
  %.2 = phi i32 [ 0, %bb.bc ], [ %3, %.thread136.thread ], [ %3, %bb.bo ], [ %spec.select128, %bb.bm ], [ %spec.select125.le162, %bb.bl ], [ %.4217, %bb.bq ], [ %3, %bb.bp ], [ %i.ii, %bb.bs ], [ %.6, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @menu_reflect(ptr nofree noundef writeonly captures(none) initializes((16, 20)) %0, i32 noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #8, !srcloc !18
  %i.b = add i64 %i.a, ptrtoint (ptr @menu_devices to i64)
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  store i32 %1, ptr %i.d, align 8
  store i32 1, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @tick_nohz_idle_got_tick() #7
  %i.f = zext i1 %i.e to i32
  %i.g = getelementptr i8, ptr %i.c, i64 4
  store i32 %i.f, ptr %i.g, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @cpuidle_governor_latency_req(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_tick_stopped() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @tick_nohz_get_sleep_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_idle_got_tick() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { nounwind memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = distinct !{!10, !17}
!11 = distinct !{!11, !17}
!12 = !{i64 2153124558}
!13 = !{!"auto-init"}
!14 = !{i64 2153133277}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{i64 2153131907}
end_hunk_0
