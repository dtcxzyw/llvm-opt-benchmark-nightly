Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegenc?download=true
inline.NumInlined: 78
inline.NumDeleted: 13
begin_hunk_0_@flush_packet:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.dj = add nsw i32 %i.dh, -6                   ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 5 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !31
  %.not311 = icmp eq i32 %i.dl, 0                 ; 2 uses
  br i1 %.not311, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !67
  %i.do = icmp eq i32 %i.dn, 0
  %spec.select333 = select i1 %i.do, i32 7, i32 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.1272 = phi i32 [ %spec.select333, %bb.z ], [ 0, %bb.y ]
  %i.dp = icmp ne i64 %2, -9223372036854775808    ; 2 uses
  %i.dq = zext i1 %.not311 to i32
  %.not313 = icmp eq i64 %3, %2
  %. = select i1 %.not313, i32 5, i32 10
  %.sink = select i1 %i.dp, i32 %., i32 %i.dq
  %spec.select334 = add nuw nsw i32 %.1272, %.sink ; 3 uses
  %i.dr = sub nsw i32 %i.dj, %spec.select334      ; 3 uses
  %i.ds = icmp ult i8 %i.m, -64
  br i1 %i.ds, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dt = add nsw i32 %i.dr, -1
  %i.du = icmp ugt i8 %i.m, 63
  br i1 %i.du, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dv = icmp ugt i8 %i.m, -97
  %spec.select335.v = select i1 %i.dv, i32 -7, i32 -4
  %spec.select335 = add nsw i32 %i.dr, %spec.select335.v
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.dw = or disjoint i32 %i.n, 256
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.ad
  %.0283 = phi i32 [ %i.dr, %bb.ad ], [ %spec.select335, %bb.ac ], [ %i.dt, %bb.ab ] ; 5 uses
  %.0282 = phi i32 [ %i.dw, %bb.ad ], [ 445, %bb.ac ], [ 445, %bb.ab ] ; 2 uses
  %i.dx = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.dy = call i64 @av_fifo_can_read(ptr noundef %i.dx) #9
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = sub i32 %.0283, %i.dz                   ; 2 uses
  %i.eb = icmp sle i32 %.0283, %5
  %or.cond = and i1 %i.dp, %i.eb
  br i1 %or.cond, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %.not314 = icmp eq i64 %3, %2
  %spec.select336 = select i1 %.not314, i32 0, i32 5
  %i.ec = load i32, ptr %i.dk, align 4, !tbaa !31
  %.not315 = icmp eq i32 %i.ec, 0
  %i.ed = select i1 %.not315, i32 4, i32 5
  %i.ee = add nuw nsw i32 %i.ed, %spec.select336  ; 5 uses
  %i.ef = sub nsw i32 %spec.select334, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !32
  %.not316 = icmp eq i32 %i.eh, 0
  br i1 %.not316, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !79
  %.not317 = icmp eq i32 %i.ej, 0
  br i1 %.not317, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ek = add nsw i32 %i.ee, %.2
  %i.el = sub nsw i32 %i.dj, %i.ee
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.em = add nsw i32 %i.ee, %.0283
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1284 = phi i32 [ %.0283, %bb.ah ], [ %i.em, %bb.ai ] ; 3 uses
  %.0267 = phi i32 [ %i.el, %bb.ah ], [ %i.dj, %bb.ai ]
  %.3 = phi i32 [ %i.ek, %bb.ah ], [ %.2, %bb.ai ]
  %i.en = add nsw i32 %i.ee, %i.ea
  %i.eo = icmp sgt i32 %.1284, %5
  %i.ep = sub nsw i32 %.1284, %5
  %i.eq = select i1 %i.eo, i32 %i.ep, i32 0
  %.0275 = add nsw i32 %i.en, %i.eq
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ae
  %.0292 = phi i64 [ -9223372036854775808, %bb.aj ], [ %3, %bb.ae ] ; 8 uses
  %.0291 = phi i64 [ -9223372036854775808, %bb.aj ], [ %2, %bb.ae ] ; 8 uses
  %.2285 = phi i32 [ %.1284, %bb.aj ], [ %.0283, %bb.ae ] ; 2 uses
  %.1276 = phi i32 [ %.0275, %bb.aj ], [ %i.ea, %bb.ae ] ; 2 uses
  %.3274 = phi i32 [ %i.ef, %bb.aj ], [ %spec.select334, %bb.ae ]
  %.1268 = phi i32 [ %.0267, %bb.aj ], [ %i.dj, %bb.ae ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.aj ], [ %.2, %bb.ae ]  ; 5 uses
  %i.er = add i32 %.4, -1
  %or.cond3 = icmp ult i32 %i.er, 7
  br i1 %or.cond3, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.es = add nsw i32 %.4, %.1268
  %i.et = add nsw i32 %.4, %.2285
  %i.eu = call i32 @llvm.smax.i32(i32 %.1276, i32 0)
  %.2277 = add nuw nsw i32 %.4, %i.eu
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.3286 = phi i32 [ %i.et, %bb.al ], [ %.2285, %bb.ak ] ; 4 uses
  %.3278 = phi i32 [ %.2277, %bb.al ], [ %.1276, %bb.ak ]
  %.2269 = phi i32 [ %i.es, %bb.al ], [ %.1268, %bb.ak ] ; 2 uses
  %.5 = phi i32 [ 0, %bb.al ], [ %.4, %bb.ak ]    ; 2 uses
  %spec.store.select = call i32 @llvm.smax.i32(i32 %.3278, i32 0) ; 3 uses
  %i.ev = icmp eq i32 %.0282, 445                 ; 2 uses
  %i.ew = icmp ugt i8 %i.m, -97                   ; 2 uses
  %or.cond5 = and i1 %i.ew, %i.ev
  br i1 %or.cond5, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ex = sext i32 %.3286 to i64
  %i.ey = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.ez = call i64 @av_fifo_can_read(ptr noundef %i.ey) #9
  %i.fa = icmp ugt i64 %i.ez, %i.ex
  br i1 %i.fa, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fb = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !57
  %i.fd = srem i32 %.3286, %i.fc
  %i.fe = add nsw i32 %i.fd, %spec.store.select
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.am
  %.4279 = phi i32 [ %i.fe, %bb.ao ], [ %spec.store.select, %bb.an ], [ %spec.store.select, %bb.am ] ; 5 uses
  %i.ff = icmp sgt i32 %.4279, 16
  br i1 %i.ff, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fg = add nsw i32 %.4279, %.5
  %i.fh = sub nsw i32 %.2269, %.4279
  %i.fi = sub nsw i32 %.3286, %.4279
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.4287 = phi i32 [ %i.fi, %bb.aq ], [ %.3286, %bb.ap ] ; 2 uses
  %.5280 = phi i32 [ 0, %bb.aq ], [ %.4279, %bb.ap ] ; 5 uses
  %.3270 = phi i32 [ %i.fh, %bb.aq ], [ %.2269, %bb.ap ]
  %.6 = phi i32 [ %i.fg, %bb.aq ], [ %.5, %bb.ap ]
  %i.fj = sub nsw i32 %.4287, %.5280              ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph.preheader.i, label %get_nb_frames.exit

.lr.ph.preheader.i:                               ; preds = %bb.ar
  %i.fl = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.0.in3.i = phi ptr [ %i.ft, %.lr.ph.i ], [ %i.fl, %.lr.ph.preheader.i ]
  %.082.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.091.i = phi i32 [ %i.fs, %.lr.ph.i ], [ %i.fj, %.lr.ph.preheader.i ]
  %.0.i = load ptr, ptr %.0.in3.i, align 8, !tbaa !80 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !76
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !77 ; 2 uses
  %i.fq = icmp eq i32 %i.fn, %i.fp
  %i.fr = zext i1 %i.fq to i32
  %spec.select.i = add nuw nsw i32 %.082.i, %i.fr ; 2 uses
  %i.fs = sub nsw i32 %.091.i, %i.fp              ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.fu = icmp sgt i32 %i.fs, 0
  br i1 %i.fu, label %.lr.ph.i, label %get_nb_frames.exit, !llvm.loop !121

get_nb_frames.exit:                               ; preds = %.lr.ph.i, %bb.ar
  %.08.lcssa.i = phi i32 [ 0, %bb.ar ], [ %spec.select.i, %.lr.ph.i ]
  %i.fv = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_wb32(ptr noundef %i.fv, i32 noundef %.0282) #9
  %i.fw = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_wb16(ptr noundef %i.fw, i32 noundef %.3270) #9
  %i.fx = load i32, ptr %i.dk, align 4, !tbaa !31
  %.not318 = icmp eq i32 %i.fx, 0
  br i1 %.not318, label %bb.as, label %.thread

bb.as:                                            ; preds = %get_nb_frames.exit
  %i.fy = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.fz = sext i32 %.5280 to i64
  call void @ffio_fill(ptr noundef %i.fy, i32 noundef 255, i64 noundef %i.fz) #9
  %.pr = load i32, ptr %i.dk, align 4, !tbaa !31
  %.not319 = icmp eq i32 %.pr, 0
  br i1 %.not319, label %bb.ax, label %.thread

.thread:                                          ; preds = %get_nb_frames.exit, %bb.as
  %i.ga = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.ga, i32 noundef 128) #9
  %.not322 = icmp eq i64 %.0291, -9223372036854775808 ; 2 uses
  %.not323 = icmp eq i64 %.0292, %.0291
  %spec.select337 = select i1 %.not323, i32 128, i32 192 ; 2 uses
  %.0262 = select i1 %.not322, i32 0, i32 %spec.select337
  %i.gb = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !67
  %i.gd = icmp eq i32 %i.gc, 0                    ; 2 uses
  %i.ge = zext i1 %i.gd to i32
  %spec.select338 = or disjoint i32 %.0262, %i.ge
  %i.gf = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.gf, i32 noundef %spec.select338) #9
  %i.gg = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.gh = add nsw i32 %.3274, -3
  %i.gi = add nsw i32 %i.gh, %.5280
  call void @avio_w8(ptr noundef %i.gg, i32 noundef %i.gi) #9
  br i1 %.not322, label %.critedge, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread
  %i.gj = load ptr, ptr %i.cp, align 8, !tbaa !81 ; 3 uses
  %6 = and i32 %spec.select337, 64                ; 2 uses
  %.not325 = icmp eq i32 %6, 0
  %7 = select i1 %.not325, i32 32, i32 48
  %i.gk = lshr i64 %.0291, 29
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = and i32 %i.gl, 14
  %i.gn = or disjoint i32 %i.gm, %7
  %i.go = or disjoint i32 %i.gn, 1
  call void @avio_w8(ptr noundef %i.gj, i32 noundef %i.go) #9
  %i.gp = trunc i64 %.0291 to i32                 ; 2 uses
  %i.gq = lshr i32 %i.gp, 14
  %i.gr = and i32 %i.gq, 65534
  %i.gs = or disjoint i32 %i.gr, 1
  call void @avio_wb16(ptr noundef %i.gj, i32 noundef %i.gs) #9
  %i.gt = shl i32 %i.gp, 1
  %i.gu = and i32 %i.gt, 65534
  %i.gv = or disjoint i32 %i.gu, 1
  call void @avio_wb16(ptr noundef %i.gj, i32 noundef %i.gv) #9
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %.critedge, label %bb.at

bb.at:                                            ; preds = %.thread._crit_edge
  %i.gw = load ptr, ptr %i.cp, align 8, !tbaa !81 ; 3 uses
  %i.gx = lshr i64 %.0292, 29
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = and i32 %i.gy, 14
  %i.ha = or disjoint i32 %i.gz, 17
  call void @avio_w8(ptr noundef %i.gw, i32 noundef %i.ha) #9
  %i.hb = trunc i64 %.0292 to i32                 ; 2 uses
  %i.hc = lshr i32 %i.hb, 14
  %i.hd = and i32 %i.hc, 65534
  %i.he = or disjoint i32 %i.hd, 1
  call void @avio_wb16(ptr noundef %i.gw, i32 noundef %i.he) #9
  %i.hf = shl i32 %i.hb, 1
  %i.hg = and i32 %i.hf, 65534
  %i.hh = or disjoint i32 %i.hg, 1
  call void @avio_wb16(ptr noundef %i.gw, i32 noundef %i.hh) #9
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.at, %.thread._crit_edge
  br i1 %i.gd, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %.critedge
  %i.hi = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.hi, i32 noundef 16) #9
  %i.hj = load ptr, ptr %i.cp, align 8, !tbaa !81 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !58 ; 2 uses
  br i1 %i.cx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hm = sdiv i32 %i.hl, 128
  %i.hn = or i32 %i.hm, 16384
  call void @avio_wb16(ptr noundef %i.hj, i32 noundef %i.hn) #9
  br label %bb.bc

bb.aw:                                            ; preds = %bb.au
  %i.ho = sdiv i32 %i.hl, 1024
  %i.hp = or i32 %i.ho, 24576
  call void @avio_wb16(ptr noundef %i.hj, i32 noundef %i.hp) #9
  br label %bb.bc

bb.ax:                                            ; preds = %bb.as
  %.not320 = icmp eq i64 %.0291, -9223372036854775808
  br i1 %.not320, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not321 = icmp eq i64 %.0292, %.0291
  %i.hq = load ptr, ptr %i.cp, align 8, !tbaa !81 ; 6 uses
  br i1 %.not321, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hr = lshr i64 %.0291, 29
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = and i32 %i.hs, 14
  %i.hu = or disjoint i32 %i.ht, 49
  call void @avio_w8(ptr noundef %i.hq, i32 noundef %i.hu) #9
  %i.hv = trunc i64 %.0291 to i32                 ; 2 uses
  %i.hw = lshr i32 %i.hv, 14
  %i.hx = and i32 %i.hw, 65534
  %i.hy = or disjoint i32 %i.hx, 1
  call void @avio_wb16(ptr noundef %i.hq, i32 noundef %i.hy) #9
  %i.hz = shl i32 %i.hv, 1
  %i.ia = and i32 %i.hz, 65534
  %i.ib = or disjoint i32 %i.ia, 1
  call void @avio_wb16(ptr noundef %i.hq, i32 noundef %i.ib) #9
  %i.ic = load ptr, ptr %i.cp, align 8, !tbaa !81 ; 3 uses
  %i.id = lshr i64 %.0292, 29
  %i.ie = trunc i64 %i.id to i32
  %i.if = and i32 %i.ie, 14
  %i.ig = or disjoint i32 %i.if, 17
  call void @avio_w8(ptr noundef %i.ic, i32 noundef %i.ig) #9
  %i.ih = trunc i64 %.0292 to i32                 ; 2 uses
  %i.ii = lshr i32 %i.ih, 14
  %i.ij = and i32 %i.ii, 65534
  %i.ik = or disjoint i32 %i.ij, 1
  call void @avio_wb16(ptr noundef %i.ic, i32 noundef %i.ik) #9
  %i.il = shl i32 %i.ih, 1
  %i.im = and i32 %i.il, 65534
  %i.in = or disjoint i32 %i.im, 1
  call void @avio_wb16(ptr noundef %i.ic, i32 noundef %i.in) #9
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.io = lshr i64 %.0292, 29
  %i.ip = trunc i64 %i.io to i32
  %i.iq = and i32 %i.ip, 14
  %i.ir = or disjoint i32 %i.iq, 33
  call void @avio_w8(ptr noundef %i.hq, i32 noundef %i.ir) #9
  %i.is = trunc i64 %.0292 to i32                 ; 2 uses
  %i.it = lshr i32 %i.is, 14
  %i.iu = and i32 %i.it, 65534
  %i.iv = or disjoint i32 %i.iu, 1
  call void @avio_wb16(ptr noundef %i.hq, i32 noundef %i.iv) #9
  %i.iw = shl i32 %i.is, 1
  %i.ix = and i32 %i.iw, 65534
  %i.iy = or disjoint i32 %i.ix, 1
  call void @avio_wb16(ptr noundef %i.hq, i32 noundef %i.iy) #9
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ax
  %i.iz = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.iz, i32 noundef 15) #9
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %.critedge, %bb.aw, %bb.av
  %i.ja = load i32, ptr %i.dk, align 4, !tbaa !31
  %.not328 = icmp eq i32 %i.ja, 0
  br i1 %.not328, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jb = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.jb, i32 noundef 255) #9
  %i.jc = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.jd = sext i32 %.5280 to i64
  call void @ffio_fill(ptr noundef %i.jc, i32 noundef 255, i64 noundef %i.jd) #9
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br i1 %i.ev, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.je = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.je, i32 noundef %i.n) #9
  br i1 %i.ew, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jf = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.jf, i32 noundef 7) #9
  %i.jg = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_wb16(ptr noundef %i.jg, i32 noundef 4) #9
  %i.jh = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.ji = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.jj = load i8, ptr %i.ji, align 4, !tbaa !56
  %i.jk = zext i8 %i.jj to i32
  call void @avio_w8(ptr noundef %i.jh, i32 noundef %i.jk) #9
  %i.jl = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.jm = getelementptr inbounds nuw i8, ptr %i.k, i64 53
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !56
  %i.jo = zext i8 %i.jn to i32
  call void @avio_w8(ptr noundef %i.jl, i32 noundef %i.jo) #9
  %i.jp = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.jq = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  %i.jr = load i8, ptr %i.jq, align 2, !tbaa !56
  %i.js = zext i8 %i.jr to i32
  call void @avio_w8(ptr noundef %i.jp, i32 noundef %i.js) #9
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  %i.jt = icmp ugt i8 %i.m, 63
  br i1 %i.jt, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ju = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.ju, i32 noundef %.08.lcssa.i) #9
  %i.jv = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.jw = add nsw i32 %5, 1
  call void @avio_wb16(ptr noundef %i.jv, i32 noundef %i.jw) #9
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bi, %bb.bh, %bb.be
  %i.jx = sext i32 %i.fj to i64                   ; 2 uses
  store i64 %i.jx, ptr %i.b, align 8, !tbaa !62
  %i.jy = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.jz = call i64 @av_fifo_can_read(ptr noundef %i.jy) #9
  %.not329 = icmp ult i64 %i.jz, %i.jx
  br i1 %.not329, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.37, i32 noundef 933) #9
  call void @abort() #11
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.ka = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.kb = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.kc = call i32 @av_fifo_read_to_cb(ptr noundef %i.ka, ptr noundef nonnull @fifo_avio_wrapper, ptr noundef %i.kb, ptr noundef nonnull %i.b) #9 ; 0 uses
  %i.kd = load i64, ptr %i.b, align 8, !tbaa !62
  %i.ke = getelementptr inbounds nuw i8, ptr %i.k, i64 60 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !78
  %i.kg = trunc i64 %i.kd to i32
  %i.kh = sub i32 %i.kf, %i.kg
  store i32 %i.kh, ptr %i.ke, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.bm

bb.bm:                                            ; preds = %bb.x, %bb.bl
  %.5288 = phi i32 [ %.4287, %bb.bl ], [ 0, %bb.x ]
  %.6281 = phi i32 [ %.5280, %bb.bl ], [ 0, %bb.x ]
  %.7 = phi i32 [ %.6, %bb.bl ], [ %.2, %bb.x ]   ; 3 uses
  %i.ki = icmp sgt i32 %.7, 0
  br i1 %i.ki, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.kj = load ptr, ptr %i.cp, align 8, !tbaa !81 ; 4 uses
  %.val340 = load ptr, ptr %i.c, align 8, !tbaa !26
  call void @avio_wb32(ptr noundef %i.kj, i32 noundef 446) #9
  %i.kk = add nsw i32 %.7, -6                     ; 2 uses
  call void @avio_wb16(ptr noundef %i.kj, i32 noundef %i.kk) #9
  %i.kl = getelementptr inbounds nuw i8, ptr %.val340, i64 44
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !31
  %.not.i = icmp eq i32 %i.km, 0
  br i1 %.not.i, label %bb.bo, label %put_padding_packet.exit

bb.bo:                                            ; preds = %bb.bn
  call void @avio_w8(ptr noundef %i.kj, i32 noundef 15) #9
  %i.kn = add nsw i32 %.7, -7
  br label %put_padding_packet.exit

put_padding_packet.exit:                          ; preds = %bb.bn, %bb.bo
  %.0.i341 = phi i32 [ %i.kn, %bb.bo ], [ %i.kk, %bb.bn ]
  %i.ko = sext i32 %.0.i341 to i64
  call void @ffio_fill(ptr noundef %i.kj, i32 noundef 255, i64 noundef %i.ko) #9
  br label %bb.bp

bb.bp:                                            ; preds = %put_padding_packet.exit, %bb.bm
  %i.kp = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.kq = zext nneg i32 %.0266 to i64
  call void @ffio_fill(ptr noundef %i.kp, i32 noundef 0, i64 noundef %i.kq) #9
  %i.kr = load ptr, ptr %i.cp, align 8, !tbaa !81
end_hunk_0
