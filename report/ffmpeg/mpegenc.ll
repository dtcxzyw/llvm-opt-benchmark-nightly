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
  %i.gk = and i32 %spec.select337, 64             ; 2 uses
  %.not325 = icmp eq i32 %i.gk, 0
  %i.gl = select i1 %.not325, i32 32, i32 48
  %i.gm = lshr i64 %.0291, 29
  %i.gn = trunc i64 %i.gm to i32
  %i.go = and i32 %i.gn, 14
  %i.gp = or disjoint i32 %i.go, %i.gl
  %i.gq = or disjoint i32 %i.gp, 1
  call void @avio_w8(ptr noundef %i.gj, i32 noundef %i.gq) #9
  %i.gr = trunc i64 %.0291 to i32                 ; 2 uses
  %i.gs = lshr i32 %i.gr, 14
  %i.gt = and i32 %i.gs, 65534
  %i.gu = or disjoint i32 %i.gt, 1
  call void @avio_wb16(ptr noundef %i.gj, i32 noundef %i.gu) #9
  %i.gv = shl i32 %i.gr, 1
  %i.gw = and i32 %i.gv, 65534
  %i.gx = or disjoint i32 %i.gw, 1
  call void @avio_wb16(ptr noundef %i.gj, i32 noundef %i.gx) #9
  %6 = icmp eq i32 %i.gk, 0
  br i1 %6, label %.critedge, label %bb.at

bb.at:                                            ; preds = %.thread._crit_edge
  %i.gy = load ptr, ptr %i.cp, align 8, !tbaa !81 ; 3 uses
  %i.gz = lshr i64 %.0292, 29
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = and i32 %i.ha, 14
  %i.hc = or disjoint i32 %i.hb, 17
  call void @avio_w8(ptr noundef %i.gy, i32 noundef %i.hc) #9
  %i.hd = trunc i64 %.0292 to i32                 ; 2 uses
  %i.he = lshr i32 %i.hd, 14
  %i.hf = and i32 %i.he, 65534
  %i.hg = or disjoint i32 %i.hf, 1
  call void @avio_wb16(ptr noundef %i.gy, i32 noundef %i.hg) #9
  %i.hh = shl i32 %i.hd, 1
  %i.hi = and i32 %i.hh, 65534
  %i.hj = or disjoint i32 %i.hi, 1
  call void @avio_wb16(ptr noundef %i.gy, i32 noundef %i.hj) #9
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.at, %.thread._crit_edge
  br i1 %i.gd, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %.critedge
  %i.hk = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.hk, i32 noundef 16) #9
  %i.hl = load ptr, ptr %i.cp, align 8, !tbaa !81 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !58 ; 2 uses
  br i1 %i.cx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ho = sdiv i32 %i.hn, 128
  %i.hp = or i32 %i.ho, 16384
  call void @avio_wb16(ptr noundef %i.hl, i32 noundef %i.hp) #9
  br label %bb.bc

bb.aw:                                            ; preds = %bb.au
  %i.hq = sdiv i32 %i.hn, 1024
  %i.hr = or i32 %i.hq, 24576
  call void @avio_wb16(ptr noundef %i.hl, i32 noundef %i.hr) #9
  br label %bb.bc

bb.ax:                                            ; preds = %bb.as
  %.not320 = icmp eq i64 %.0291, -9223372036854775808
  br i1 %.not320, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not321 = icmp eq i64 %.0292, %.0291
  %i.hs = load ptr, ptr %i.cp, align 8, !tbaa !81 ; 6 uses
  br i1 %.not321, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ht = lshr i64 %.0291, 29
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = and i32 %i.hu, 14
  %i.hw = or disjoint i32 %i.hv, 49
  call void @avio_w8(ptr noundef %i.hs, i32 noundef %i.hw) #9
  %i.hx = trunc i64 %.0291 to i32                 ; 2 uses
  %i.hy = lshr i32 %i.hx, 14
  %i.hz = and i32 %i.hy, 65534
  %i.ia = or disjoint i32 %i.hz, 1
  call void @avio_wb16(ptr noundef %i.hs, i32 noundef %i.ia) #9
  %i.ib = shl i32 %i.hx, 1
  %i.ic = and i32 %i.ib, 65534
  %i.id = or disjoint i32 %i.ic, 1
  call void @avio_wb16(ptr noundef %i.hs, i32 noundef %i.id) #9
  %i.ie = load ptr, ptr %i.cp, align 8, !tbaa !81 ; 3 uses
  %i.if = lshr i64 %.0292, 29
  %i.ig = trunc i64 %i.if to i32
  %i.ih = and i32 %i.ig, 14
  %i.ii = or disjoint i32 %i.ih, 17
  call void @avio_w8(ptr noundef %i.ie, i32 noundef %i.ii) #9
  %i.ij = trunc i64 %.0292 to i32                 ; 2 uses
  %i.ik = lshr i32 %i.ij, 14
  %i.il = and i32 %i.ik, 65534
  %i.im = or disjoint i32 %i.il, 1
  call void @avio_wb16(ptr noundef %i.ie, i32 noundef %i.im) #9
  %i.in = shl i32 %i.ij, 1
  %i.io = and i32 %i.in, 65534
  %i.ip = or disjoint i32 %i.io, 1
  call void @avio_wb16(ptr noundef %i.ie, i32 noundef %i.ip) #9
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.iq = lshr i64 %.0292, 29
  %i.ir = trunc i64 %i.iq to i32
  %i.is = and i32 %i.ir, 14
  %i.it = or disjoint i32 %i.is, 33
  call void @avio_w8(ptr noundef %i.hs, i32 noundef %i.it) #9
  %i.iu = trunc i64 %.0292 to i32                 ; 2 uses
  %i.iv = lshr i32 %i.iu, 14
  %i.iw = and i32 %i.iv, 65534
  %i.ix = or disjoint i32 %i.iw, 1
  call void @avio_wb16(ptr noundef %i.hs, i32 noundef %i.ix) #9
  %i.iy = shl i32 %i.iu, 1
  %i.iz = and i32 %i.iy, 65534
  %i.ja = or disjoint i32 %i.iz, 1
  call void @avio_wb16(ptr noundef %i.hs, i32 noundef %i.ja) #9
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ax
  %i.jb = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.jb, i32 noundef 15) #9
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %.critedge, %bb.aw, %bb.av
  %i.jc = load i32, ptr %i.dk, align 4, !tbaa !31
  %.not328 = icmp eq i32 %i.jc, 0
  br i1 %.not328, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jd = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.jd, i32 noundef 255) #9
  %i.je = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.jf = sext i32 %.5280 to i64
  call void @ffio_fill(ptr noundef %i.je, i32 noundef 255, i64 noundef %i.jf) #9
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br i1 %i.ev, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.jg = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.jg, i32 noundef %i.n) #9
  br i1 %i.ew, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jh = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.jh, i32 noundef 7) #9
  %i.ji = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_wb16(ptr noundef %i.ji, i32 noundef 4) #9
  %i.jj = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.jk = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.jl = load i8, ptr %i.jk, align 4, !tbaa !56
  %i.jm = zext i8 %i.jl to i32
  call void @avio_w8(ptr noundef %i.jj, i32 noundef %i.jm) #9
  %i.jn = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.jo = getelementptr inbounds nuw i8, ptr %i.k, i64 53
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !56
  %i.jq = zext i8 %i.jp to i32
  call void @avio_w8(ptr noundef %i.jn, i32 noundef %i.jq) #9
  %i.jr = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.js = getelementptr inbounds nuw i8, ptr %i.k, i64 54
  %i.jt = load i8, ptr %i.js, align 2, !tbaa !56
  %i.ju = zext i8 %i.jt to i32
  call void @avio_w8(ptr noundef %i.jr, i32 noundef %i.ju) #9
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  %i.jv = icmp ugt i8 %i.m, 63
  br i1 %i.jv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jw = load ptr, ptr %i.cp, align 8, !tbaa !81
  call void @avio_w8(ptr noundef %i.jw, i32 noundef %.08.lcssa.i) #9
  %i.jx = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.jy = add nsw i32 %5, 1
  call void @avio_wb16(ptr noundef %i.jx, i32 noundef %i.jy) #9
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bi, %bb.bh, %bb.be
  %i.jz = sext i32 %i.fj to i64                   ; 2 uses
  store i64 %i.jz, ptr %i.b, align 8, !tbaa !62
  %i.ka = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.kb = call i64 @av_fifo_can_read(ptr noundef %i.ka) #9
  %.not329 = icmp ult i64 %i.kb, %i.jz
  br i1 %.not329, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.37, i32 noundef 933) #9
  call void @abort() #11
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.kc = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.kd = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.ke = call i32 @av_fifo_read_to_cb(ptr noundef %i.kc, ptr noundef nonnull @fifo_avio_wrapper, ptr noundef %i.kd, ptr noundef nonnull %i.b) #9 ; 0 uses
  %i.kf = load i64, ptr %i.b, align 8, !tbaa !62
  %i.kg = getelementptr inbounds nuw i8, ptr %i.k, i64 60 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !78
  %i.ki = trunc i64 %i.kf to i32
  %i.kj = sub i32 %i.kh, %i.ki
  store i32 %i.kj, ptr %i.kg, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.bm

bb.bm:                                            ; preds = %bb.x, %bb.bl
  %.5288 = phi i32 [ %.4287, %bb.bl ], [ 0, %bb.x ]
  %.6281 = phi i32 [ %.5280, %bb.bl ], [ 0, %bb.x ]
  %.7 = phi i32 [ %.6, %bb.bl ], [ %.2, %bb.x ]   ; 3 uses
  %i.kk = icmp sgt i32 %.7, 0
  br i1 %i.kk, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.kl = load ptr, ptr %i.cp, align 8, !tbaa !81 ; 4 uses
  %.val340 = load ptr, ptr %i.c, align 8, !tbaa !26
  call void @avio_wb32(ptr noundef %i.kl, i32 noundef 446) #9
  %i.km = add nsw i32 %.7, -6                     ; 2 uses
  call void @avio_wb16(ptr noundef %i.kl, i32 noundef %i.km) #9
  %i.kn = getelementptr inbounds nuw i8, ptr %.val340, i64 44
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !31
  %.not.i = icmp eq i32 %i.ko, 0
  br i1 %.not.i, label %bb.bo, label %put_padding_packet.exit

bb.bo:                                            ; preds = %bb.bn
  call void @avio_w8(ptr noundef %i.kl, i32 noundef 15) #9
  %i.kp = add nsw i32 %.7, -7
  br label %put_padding_packet.exit

put_padding_packet.exit:                          ; preds = %bb.bn, %bb.bo
  %.0.i341 = phi i32 [ %i.kp, %bb.bo ], [ %i.km, %bb.bn ]
  %i.kq = sext i32 %.0.i341 to i64
  call void @ffio_fill(ptr noundef %i.kl, i32 noundef 255, i64 noundef %i.kq) #9
  br label %bb.bp

bb.bp:                                            ; preds = %put_padding_packet.exit, %bb.bm
  %i.kr = load ptr, ptr %i.cp, align 8, !tbaa !81
  %i.ks = zext nneg i32 %.0266 to i64
  call void @ffio_fill(ptr noundef %i.kr, i32 noundef 0, i64 noundef %i.ks) #9
  %i.kt = load ptr, ptr %i.cp, align 8, !tbaa !81
end_hunk_0
begin_hunk_1_@put_pack_header:put_bits32.exit
  br label %bb.a

put_bits.exit50:                                  ; preds = %put_bits32.exit
  %i.am = shl i32 %i.ab, 22
  %i.an = or i32 %i.am, %i.ad                     ; 2 uses
  %i.ao = add nsw i32 %.sroa.41.1, -23
  %.not123 = icmp eq i32 %.sroa.41.1, 24
  br i1 %.not123, label %bb.b, label %bb.a

bb.a:                                             ; preds = %put_bits.exit50.thread, %put_bits.exit50
  %.0.i.i49103 = phi i32 [ %i.al, %put_bits.exit50.thread ], [ %i.ao, %put_bits.exit50 ]
  %.026.i.i48102 = phi i32 [ %i.ad, %put_bits.exit50.thread ], [ %i.an, %put_bits.exit50 ]
  %.sroa.80.24.idx101 = phi i64 [ 12, %put_bits.exit50.thread ], [ 8, %put_bits.exit50 ]
  %i.ap = shl i32 %.026.i.i48102, 1
  %i.aq = or disjoint i32 %i.ap, 1
  %i.ar = add nsw i32 %.0.i.i49103, -1
  br label %put_bits.exit54

bb.b:                                             ; preds = %put_bits.exit50
  %.sroa.80.24.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = shl i32 %i.an, 1
  %i.at = or disjoint i32 %i.as, 1
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at)
  store i32 %i.au, ptr %.sroa.80.24.ptr, align 1, !tbaa !56
  br label %put_bits.exit54

put_bits.exit54:                                  ; preds = %bb.b, %bb.a
  %.sroa.80.26.idx = phi i64 [ %.sroa.80.24.idx101, %bb.a ], [ 12, %bb.b ] ; 14 uses
  %.026.i.i52 = phi i32 [ %i.aq, %bb.a ], [ 1, %bb.b ] ; 3 uses
  %.0.i.i53 = phi i32 [ %i.ar, %bb.a ], [ 32, %bb.b ] ; 9 uses
  %.sroa.80.26.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.80.26.idx
  %i.av = load i32, ptr %i.a, align 4, !tbaa !31
  %.not9 = icmp eq i32 %i.av, 0
  br i1 %.not9, label %put_bits.exit66, label %bb.c

bb.c:                                             ; preds = %put_bits.exit54
  %i.aw = icmp samesign ugt i32 %.0.i.i53, 1
  br i1 %i.aw, label %put_bits.exit58, label %bb.d

bb.d:                                             ; preds = %bb.c
  %notsub = add nsw i64 %.sroa.80.26.idx, -129
  %i.ax = icmp ult i64 %notsub, -4
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ay = shl i32 %.026.i.i52, 1
  %i.az = or disjoint i32 %i.ay, 1
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  store i32 %i.ba, ptr %.sroa.80.26.ptr, align 1, !tbaa !56
  %.sroa.80.26.add = add nuw nsw i64 %.sroa.80.26.idx, 4
  br label %put_bits.exit66.thread

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.50) #9
  br label %put_bits.exit66.thread

put_bits.exit58:                                  ; preds = %bb.c
  %i.bb = shl i32 %.026.i.i52, 1
  %i.bc = or disjoint i32 %i.bb, 1                ; 2 uses
  %i.bd = add nsw i32 %.0.i.i53, -1
  %.sroa.80.28.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.80.26.idx
  %i.be = icmp sgt i32 %.0.i.i53, 6
  br i1 %i.be, label %put_bits.exit62, label %bb.g

bb.g:                                             ; preds = %put_bits.exit58
  %notsub124 = add nsw i64 %.sroa.80.26.idx, -129
  %i.bf = icmp ult i64 %notsub124, -4
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = shl i32 %i.bc, %i.bd
  %i.bh = sub nsw i32 6, %.0.i.i53
  %i.bi = lshr i32 31, %i.bh
  %i.bj = or i32 %i.bi, %i.bg
  %i.bk = tail call i32 @llvm.bswap.i32(i32 %i.bj)
  store i32 %i.bk, ptr %.sroa.80.28.ptr, align 1, !tbaa !56
  %.sroa.80.28.add = add nuw nsw i64 %.sroa.80.26.idx, 4
  br label %put_bits.exit62.thread

bb.i:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.50) #9
  br label %put_bits.exit62.thread

put_bits.exit62.thread:                           ; preds = %bb.h, %bb.i
  %.sroa.80.29.idx = phi i64 [ %.sroa.80.28.add, %bb.h ], [ %.sroa.80.26.idx, %bb.i ]
  %i.bl = add nsw i32 %.0.i.i53, 26
  br label %put_bits.exit66.thread

put_bits.exit62:                                  ; preds = %put_bits.exit58
  %i.bm = shl i32 %i.bc, 5
  %i.bn = or disjoint i32 %i.bm, 31               ; 2 uses
  %i.bo = add nsw i32 %.0.i.i53, -6               ; 2 uses
  %.sroa.80.30.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.80.26.idx
  %i.bp = icmp sgt i32 %.0.i.i53, 9
  br i1 %i.bp, label %put_bits.exit66.thread, label %bb.j

put_bits.exit66.thread:                           ; preds = %bb.e, %bb.f, %put_bits.exit62.thread, %put_bits.exit62
  %.0.i.i61117 = phi i32 [ %i.bl, %put_bits.exit62.thread ], [ %i.bo, %put_bits.exit62 ], [ 27, %bb.f ], [ 27, %bb.e ]
  %.026.i.i60116 = phi i32 [ 31, %put_bits.exit62.thread ], [ %i.bn, %put_bits.exit62 ], [ 63, %bb.f ], [ 63, %bb.e ]
  %.sroa.80.30.idx115 = phi i64 [ %.sroa.80.29.idx, %put_bits.exit62.thread ], [ %.sroa.80.26.idx, %put_bits.exit62 ], [ %.sroa.80.26.idx, %bb.f ], [ %.sroa.80.26.add, %bb.e ]
  %i.bq = shl i32 %.026.i.i60116, 3
  %i.br = add nsw i32 %.0.i.i61117, -3
  br label %.lr.ph.i

bb.j:                                             ; preds = %put_bits.exit62
  %notsub125 = add nsw i64 %.sroa.80.26.idx, -129
  %i.bs = icmp ult i64 %notsub125, -4
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = shl i32 %i.bn, %i.bo
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  store i32 %i.bu, ptr %.sroa.80.30.ptr, align 1, !tbaa !56
  %.sroa.80.30.add = add nuw nsw i64 %.sroa.80.26.idx, 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.50) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.80.31.idx = phi i64 [ %.sroa.80.30.add, %bb.k ], [ %.sroa.80.26.idx, %bb.l ]
  %i.bv = add nuw nsw i32 %.0.i.i53, 23
  br label %put_bits.exit66

put_bits.exit66:                                  ; preds = %bb.m, %put_bits.exit54
  %.sroa.80.33.idx = phi i64 [ %.sroa.80.26.idx, %put_bits.exit54 ], [ %.sroa.80.31.idx, %bb.m ] ; 2 uses
  %.sroa.41.2 = phi i32 [ %.0.i.i53, %put_bits.exit54 ], [ %i.bv, %bb.m ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %.026.i.i52, %put_bits.exit54 ], [ 0, %bb.m ]
  %i.bw = icmp samesign ult i32 %.sroa.41.2, 32
  br i1 %i.bw, label %.lr.ph.i, label %flush_put_bits.exit

.lr.ph.i:                                         ; preds = %put_bits.exit66.thread, %put_bits.exit66
  %.sroa.0.289 = phi i32 [ %i.bq, %put_bits.exit66.thread ], [ %.sroa.0.2, %put_bits.exit66 ]
  %.sroa.41.288 = phi i32 [ %i.br, %put_bits.exit66.thread ], [ %.sroa.41.2, %put_bits.exit66 ] ; 2 uses
  %.sroa.80.3387.idx = phi i64 [ %.sroa.80.30.idx115, %put_bits.exit66.thread ], [ %.sroa.80.33.idx, %put_bits.exit66 ]
  %i.bx = shl i32 %.sroa.0.289, %.sroa.41.288
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i
  %.sroa.80.34.idx = phi i64 [ %.sroa.80.3387.idx, %.lr.ph.i ], [ %.sroa.80.34.add, %bb.p ] ; 3 uses
  %.sroa.41.3 = phi i32 [ %.sroa.41.288, %.lr.ph.i ], [ %i.cc, %bb.p ] ; 2 uses
  %.sroa.0.3 = phi i32 [ %i.bx, %.lr.ph.i ], [ %i.cb, %bb.p ] ; 2 uses
  %i.by = icmp slt i64 %.sroa.80.34.idx, 128
  br i1 %i.by, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 160) #9
  tail call void @abort() #11
  unreachable

bb.p:                                             ; preds = %bb.n
  %.sroa.80.34.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.80.34.idx
  %i.bz = lshr i32 %.sroa.0.3, 24
  %i.ca = trunc nuw i32 %i.bz to i8
  %.sroa.80.34.add = add nuw nsw i64 %.sroa.80.34.idx, 1 ; 2 uses
  store i8 %i.ca, ptr %.sroa.80.34.ptr, align 1, !tbaa !56
  %i.cb = shl i32 %.sroa.0.3, 8
  %i.cc = add nsw i32 %.sroa.41.3, 8
  %i.cd = icmp slt i32 %.sroa.41.3, 24
  br i1 %i.cd, label %bb.n, label %flush_put_bits.exit, !llvm.loop !0

flush_put_bits.exit:                              ; preds = %bb.p, %put_bits.exit66
  %.sroa.80.33.idx.pn = phi i64 [ %.sroa.80.33.idx, %put_bits.exit66 ], [ %.sroa.80.34.add, %bb.p ]
  %i.ce = trunc i64 %.sroa.80.33.idx.pn to i32
  ret i32 %i.ce
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @put_system_header(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #1 {
put_bits.exit86:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 6 uses
  store i32 -1157562368, ptr %1, align 1, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = lshr i32 %i.d, 7
  %i.g = or i32 %i.f, 32768
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  store i32 %i.h, ptr %i.e, align 1, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = shl i32 %i.d, 1
  %i.k = or disjoint i32 %i.j, 1                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29
  %i.n = icmp ne i32 %i.m, 0                      ; 4 uses
  %i.o = icmp eq i32 %2, 224
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %put_bits.exit98.thread, label %put_bits.exit98

put_bits.exit98.thread:                           ; preds = %put_bits.exit86
  %i.p = shl i32 %i.k, 8
  %i.q = zext i1 %i.n to i32
  %.sroa.0.1504 = or disjoint i32 %i.p, %i.q
  br label %put_bits.exit126.thread508

put_bits.exit98:                                  ; preds = %put_bits.exit86
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59
  %i.t = shl i32 %i.k, 8
  %3 = shl i32 %i.s, 2
  %4 = or i32 %i.t, %3
  %i.u = zext i1 %i.n to i32
  %.sroa.0.1 = or disjoint i32 %4, %i.u           ; 3 uses
  br i1 %i.n, label %put_bits.exit126, label %bb.a

bb.a:                                             ; preds = %put_bits.exit98
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !32
  %.not74 = icmp eq i32 %i.w, 0
  br i1 %.not74, label %put_bits.exit126.thread, label %put_bits.exit126.thread508

put_bits.exit126.thread:                          ; preds = %bb.a
  %i.x = shl i32 %.sroa.0.1, 3
  %i.y = or disjoint i32 %i.x, 1
  br label %bb.c

put_bits.exit126.thread508:                       ; preds = %put_bits.exit98.thread, %bb.a
  %.sroa.0.1505.ph = phi i32 [ %.sroa.0.1, %bb.a ], [ %.sroa.0.1504, %put_bits.exit98.thread ]
  %i.z = shl i32 %.sroa.0.1505.ph, 3
  %i.aa = or disjoint i32 %i.z, 7
  br label %bb.c

put_bits.exit126:                                 ; preds = %put_bits.exit98
  %i.ab = shl i32 %.sroa.0.1, 3
  %i.ac = or disjoint i32 %i.ab, 7                ; 2 uses
  %i.ad = and i32 %2, 224
  %i.ae = icmp eq i32 %i.ad, 192
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %put_bits.exit126
  %i.af = shl i32 %i.ac, 5
  br label %put_bits.exit142

bb.c:                                             ; preds = %put_bits.exit126.thread508, %put_bits.exit126.thread, %put_bits.exit126
  %i.ag = phi i32 [ %i.y, %put_bits.exit126.thread ], [ %i.ac, %put_bits.exit126 ], [ %i.aa, %put_bits.exit126.thread508 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !60
  %i.aj = shl i32 %i.ag, 5
  %i.ak = or i32 %i.ai, %i.aj
  br label %put_bits.exit142

put_bits.exit142:                                 ; preds = %bb.c, %bb.b
  %.sroa.0.3 = phi i32 [ %i.ak, %bb.c ], [ %i.af, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !32
  %.not76 = icmp eq i32 %i.am, 0
  %i.an = shl i32 %.sroa.0.3, 8
  %. = select i1 %.not76, i32 255, i32 127        ; 2 uses
  %i.ao = or disjoint i32 %i.an, %.
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  store i32 %i.ap, ptr %i.i, align 1, !tbaa !56
  %.sroa.188.4.ptr = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.aq = load i32, ptr %i.al, align 8, !tbaa !32
  %.not77 = icmp eq i32 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !35 ; 2 uses
  %.not484 = icmp eq i32 %i.as, 0                 ; 2 uses
  br i1 %.not77, label %.preheader, label %.preheader467

.preheader467:                                    ; preds = %put_bits.exit142
  br i1 %.not484, label %.thread, label %.lr.ph

.thread:                                          ; preds = %.preheader467
  store i32 -1207902023, ptr %.sroa.188.4.ptr, align 1, !tbaa !56
  br label %put_bits.exit206

.lr.ph:                                           ; preds = %.preheader467
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36
  %wide.trip.count = zext i32 %i.as to i64
  br label %bb.d

.preheader:                                       ; preds = %put_bits.exit142
  br i1 %.not484, label %flush_put_bits.exit, label %.lr.ph479

.lr.ph479:                                        ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = icmp eq i32 %2, 0
  br label %bb.l

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.0471 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.j ] ; 5 uses
  %.060470 = phi i32 [ 0, %.lr.ph ], [ %.161.fr, %bb.j ] ; 5 uses
  %.062469 = phi i32 [ 0, %.lr.ph ], [ %.163, %bb.j ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !38
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !45 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !54  ; 3 uses
  %i.bd = icmp eq i8 %i.bc, -67
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !58 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, %.0471
  br i1 %i.bg, label %bb.j, label %.thread466

bb.f:                                             ; preds = %bb.d
  %i.bh = and i8 %i.bc, -8
  %or.cond3 = icmp eq i8 %i.bh, -64
  br i1 %or.cond3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !58 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, %.060470
  br i1 %i.bk, label %bb.j, label %.thread466

.thread466:                                       ; preds = %bb.g, %bb.e
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bl = icmp eq i8 %i.bc, -32
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !58
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 %.062469)
  br label %bb.j

bb.j:                                             ; preds = %.thread466, %bb.i, %bb.g, %bb.e, %bb.h
  %.163 = phi i32 [ %.062469, %bb.h ], [ %.062469, %bb.e ], [ %.062469, %bb.g ], [ %spec.select, %bb.i ], [ %.062469, %.thread466 ] ; 2 uses
  %.161 = phi i32 [ %.060470, %bb.h ], [ %.060470, %bb.e ], [ %i.bj, %bb.g ], [ %.060470, %bb.i ], [ %.060470, %.thread466 ]
  %.1 = phi i32 [ %.0471, %bb.h ], [ %i.bf, %bb.e ], [ %.0471, %bb.g ], [ %.0471, %bb.i ], [ %.0471, %.thread466 ] ; 2 uses
  %.161.fr = freeze i32 %.161                     ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.k, label %bb.d, !llvm.loop !122

bb.k:                                             ; preds = %bb.j
  %i.bo = lshr i32 %.163, 2
  %i.bp = and i32 %i.bo, 102760192
  %i.bq = or disjoint i32 %i.bp, -1176502088
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bq)
  %i.bs = icmp eq i32 %.161.fr, 0
  store i32 %i.br, ptr %.sroa.188.4.ptr, align 1, !tbaa !56
  %i.bt = shl i32 %.161.fr, 9
  %i.bu = and i32 %i.bt, 1073676288
  %i.bv = or disjoint i32 %i.bu, -1073693248
  %spec.select534 = select i1 %i.bs, i32 -1071596096, i32 %i.bv
  br label %put_bits.exit206

put_bits.exit206:                                 ; preds = %bb.k, %.thread
  %.0.lcssa516 = phi i32 [ %.1, %bb.k ], [ 0, %.thread ] ; 2 uses
  %i.bw = phi i32 [ %spec.select534, %bb.k ], [ -1071596096, %.thread ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = lshr i32 %.0.lcssa516, 15
  %i.bz = or i32 %i.bw, %i.by
  %i.ca = tail call i32 @llvm.bswap.i32(i32 %i.bz)
  store i32 %i.ca, ptr %i.bx, align 1, !tbaa !56
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cc = shl i32 %.0.lcssa516, 17
  %i.cd = and i32 %i.cc, -16777216
  %i.ce = or disjoint i32 %i.cd, 12574722
  %i.cf = tail call i32 @llvm.bswap.i32(i32 %i.ce)
  store i32 %i.cf, ptr %i.cb, align 1, !tbaa !56
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %flush_put_bits.exit

bb.l:                                             ; preds = %.lr.ph479, %put_bits.exit238
  %indvars.iv486 = phi i64 [ 0, %.lr.ph479 ], [ %indvars.iv.next487, %put_bits.exit238 ] ; 2 uses
  %.065478 = phi i32 [ 0, %.lr.ph479 ], [ %.3, %put_bits.exit238 ] ; 3 uses
  %.sroa.0.5476 = phi i32 [ %., %.lr.ph479 ], [ %.sroa.0.6, %put_bits.exit238 ] ; 4 uses
  %.sroa.95.5475 = phi i32 [ 32, %.lr.ph479 ], [ %.sroa.95.6, %put_bits.exit238 ] ; 6 uses
  %.sroa.188.5474.idx = phi i64 [ 12, %.lr.ph479 ], [ %.sroa.188.6.idx, %put_bits.exit238 ] ; 7 uses
  %.sroa.188.5474.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.188.5474.idx
  %i.ch = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv486
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !38
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !45 ; 5 uses
  %i.cm = load i32, ptr %i.l, align 8, !tbaa !29
  %.not78 = icmp eq i32 %i.cm, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !54 ; 2 uses
  %.pre490 = zext i8 %.pre to i32                 ; 2 uses
  %i.cn = icmp eq i32 %2, %.pre490
  %or.cond5 = or i1 %i.aw, %i.cn
  %or.cond535 = select i1 %.not78, i1 true, i1 %or.cond5
  br i1 %or.cond535, label %._crit_edge, label %put_bits.exit238

._crit_edge:                                      ; preds = %bb.l
  %i.co = icmp ult i8 %.pre, -64
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  %.not79 = icmp eq i32 %.065478, 0
  br i1 %.not79, label %bb.n, label %put_bits.exit238

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.166 = phi i32 [ %.065478, %._crit_edge ], [ 1, %bb.m ] ; 4 uses
  %.064 = phi i32 [ %.pre490, %._crit_edge ], [ 189, %bb.m ] ; 5 uses
  %i.cp = icmp sgt i32 %.sroa.95.5475, 8
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = shl i32 %.sroa.0.5476, 8
  %i.cr = or disjoint i32 %.064, %i.cq
  br label %put_bits.exit226

bb.p:                                             ; preds = %bb.n
  %notsub = add nsw i64 %.sroa.188.5474.idx, -129
  %i.cs = icmp ult i64 %notsub, -4
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = shl i32 %.sroa.0.5476, %.sroa.95.5475
  %i.cu = sub nuw nsw i32 8, %.sroa.95.5475
  %i.cv = lshr i32 %.064, %i.cu
end_hunk_1
