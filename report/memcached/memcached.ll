Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/memcached?download=true
inline.NumInlined: 142
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@drive_machine:bb.a

bb.an:                                            ; preds = %bb.am
  %i.dv = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 360
  %i.dx = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.dw) #33 ; 0 uses
  %i.dy = load ptr, ptr %i.i, align 8, !tbaa !38  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 568 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !236
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !236
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 360
  %i.ed = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ec) #33 ; 0 uses
  %i.ee = load i32, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %.not.i214 = icmp eq i32 %i.ee, 8
  br i1 %.not.i214, label %.lr.ph.backedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.eg = icmp sgt i32 %i.ef, 2
  br i1 %i.eg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ei = load i32, ptr %i.e, align 8, !tbaa !60
  %i.ej = zext i32 %i.ee to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !62
  %i.em = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.15, i32 noundef %i.ei, ptr noundef %i.el, ptr noundef nonnull @.str.377) #35 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  store i32 8, ptr %i.d, align 8, !tbaa !56
  br label %.lr.ph.backedge

bb.ar:                                            ; preds = %bb.al
  %.pre435 = load ptr, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %.not.i216 = icmp eq ptr %.pre435, %i.dp
  br i1 %.not.i216, label %.preheader, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.en = load i32, ptr %i.ad, align 4, !tbaa !37 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %bb.at, label %.sink.split

bb.at:                                            ; preds = %bb.as
  %i.ep = zext nneg i32 %i.en to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dp, ptr align 1 %.pre435, i64 %i.ep, i1 false)
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !49
  br label %.sink.split

.sink.split:                                      ; preds = %bb.as, %bb.at, %.thread503
  %.sink = phi ptr [ %i.du, %.thread503 ], [ %.pre.i, %bb.at ], [ %i.dp, %bb.as ]
  store ptr %.sink, ptr %i.ai, align 8, !tbaa !36
  br label %.preheader

.preheader:                                       ; preds = %.sink.split, %bb.ar
  br label %.outer

.outer:                                           ; preds = %.preheader, %bb.bh
  %.not315 = phi i1 [ false, %.preheader ], [ true, %bb.bh ]
  %.048.i.ph = phi i32 [ 0, %.preheader ], [ %.149.i, %bb.bh ]
  br label %bb.au

bb.au:                                            ; preds = %.outer, %bb.bi
  %.048.i = phi i32 [ %.149.i, %bb.bi ], [ %.048.i.ph, %.outer ] ; 4 uses
  %i.eq = load i32, ptr %i.ad, align 4, !tbaa !37 ; 3 uses
  %i.er = load i32, ptr %i.ag, align 8, !tbaa !35 ; 4 uses
  %.not61.i = icmp slt i32 %i.eq, %i.er
  br i1 %.not61.i, label %bb.bf, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.es = load i8, ptr %i.ar, align 1, !tbaa !50, !range !66, !noundef !67
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.aw, label %bb.bf

bb.aw:                                            ; preds = %bb.av
  %i.eu = icmp eq i32 %.048.i, 4
  br i1 %i.eu, label %try_read_network.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ev = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.ew = shl nsw i32 %i.er, 1
  %i.ex = sext i32 %i.ew to i64
  %i.ey = call ptr @realloc(ptr noundef %i.ev, i64 noundef %i.ex) #38 ; 3 uses
  %.not62.not.i = icmp eq ptr %i.ey, null
  br i1 %.not62.not.i, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  call void @STATS_LOCK() #33
  %i.ez = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 24), align 8, !tbaa !76
  %i.fa = add i64 %i.ez, 1
  store i64 %i.fa, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 24), align 8, !tbaa !76
  call void @STATS_UNLOCK() #33
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.411, i64 30, i64 1, ptr %i.fd) #37 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i32 0, ptr %i.ad, align 4, !tbaa !37
  %i.fe = call zeroext i1 @resp_start(ptr noundef nonnull %0)
  br i1 %i.fe, label %bb.bb, label %try_read_network.exit.thread296

bb.bb:                                            ; preds = %bb.ba
  %i.ff = load i32, ptr %i.an, align 4, !tbaa !73
  %i.fg = icmp eq i32 %i.ff, 4
  br i1 %i.fg, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @write_bin_error(ptr noundef nonnull %0, i32 noundef 130, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.412, i64 13), i32 noundef 0) #33
  br label %try_read_network.exit.thread298

bb.bd:                                            ; preds = %bb.bb
  call void @out_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.412)
  br label %try_read_network.exit.thread298

try_read_network.exit.thread298:                  ; preds = %bb.bc, %bb.bd
  store i8 1, ptr %i.ab, align 2, !tbaa !77
  br label %.lr.ph.backedge

bb.be:                                            ; preds = %bb.ax
  %i.fh = add nsw i32 %.048.i, 1
  store ptr %i.ey, ptr %i.af, align 8, !tbaa !49
  store ptr %i.ey, ptr %i.ai, align 8, !tbaa !36
  %i.fi = load i32, ptr %i.ag, align 8, !tbaa !35
  %i.fj = shl nsw i32 %i.fi, 1                    ; 2 uses
  store i32 %i.fj, ptr %i.ag, align 8, !tbaa !35
  %.pre86.i = load i32, ptr %i.ad, align 4, !tbaa !37
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.av, %bb.au
  %i.fk = phi i32 [ %.pre86.i, %bb.be ], [ %i.eq, %bb.av ], [ %i.eq, %bb.au ] ; 2 uses
  %i.fl = phi i32 [ %i.fj, %bb.be ], [ %i.er, %bb.av ], [ %i.er, %bb.au ]
  %.149.i = phi i32 [ %i.fh, %bb.be ], [ %.048.i, %bb.av ], [ %.048.i, %bb.au ] ; 2 uses
  %i.fm = sub nsw i32 %i.fl, %i.fk                ; 2 uses
  %i.fn = load ptr, ptr %i.ae, align 8, !tbaa !78
  %i.fo = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.fp = sext i32 %i.fk to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 %i.fp
  %i.fr = sext i32 %i.fm to i64
  %i.fs = call i64 %i.fn(ptr noundef nonnull %0, ptr noundef %i.fq, i64 noundef %i.fr) #33, !inline_history !228 ; 2 uses
  %i.ft = trunc i64 %i.fs to i32                  ; 4 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.fv = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 360
  %i.fx = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.fw) #33 ; 0 uses
  %i.fy = and i64 %i.fs, 2147483647
  %i.fz = load ptr, ptr %i.i, align 8, !tbaa !38  ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 488 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !237
  %i.gc = add i64 %i.gb, %i.fy
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !237
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 360
  %i.ge = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gd) #33 ; 0 uses
  %i.gf = load i32, ptr %i.ad, align 4, !tbaa !37
  %i.gg = add nsw i32 %i.gf, %i.ft
  store i32 %i.gg, ptr %i.ad, align 4, !tbaa !37
  %i.gh = icmp eq i32 %i.fm, %i.ft
  br i1 %i.gh, label %bb.bh, label %try_read_network.exit.thread293

bb.bh:                                            ; preds = %bb.bg
  %i.gi = load i8, ptr %i.ar, align 1, !tbaa !50, !range !66, !noundef !67
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %.outer, label %try_read_network.exit.thread293

bb.bi:                                            ; preds = %bb.bf
  switch i32 %i.ft, label %bb.au [
    i32 0, label %bb.bj
    i32 -1, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  store i32 1, ptr %i.ah, align 4, !tbaa !61
  br label %try_read_network.exit.thread296

bb.bk:                                            ; preds = %bb.bi
  %i.gk = tail call ptr @__errno_location() #36
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !16
  %i.gm = icmp eq i32 %i.gl, 11
  br i1 %i.gm, label %try_read_network.exit, label %try_read_network.exit.thread296

bb.bl:                                            ; preds = %bb.ak
  store i32 28, ptr %i.as, align 8, !tbaa !79
  %i.gn = load i32, ptr %i.e, align 8, !tbaa !60
  %i.go = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.gp = load i32, ptr %i.ag, align 8, !tbaa !35
  %i.gq = sext i32 %i.gp to i64
  %i.gr = call i64 @recvfrom(i32 noundef %i.gn, ptr noundef %i.go, i64 noundef %i.gq, i32 noundef 0, ptr nonnull %i.at, ptr noundef nonnull %i.as) #33 ; 2 uses
  %i.gs = trunc i64 %i.gr to i32                  ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 8
  br i1 %i.gt, label %bb.bm, label %try_read_network.exit.thread

bb.bm:                                            ; preds = %bb.bl
  %i.gu = load ptr, ptr %i.af, align 8, !tbaa !49 ; 4 uses
  %i.gv = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 360
  %i.gx = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.gw) #33 ; 0 uses
  %i.gy = and i64 %i.gr, 2147483647
  %i.gz = load ptr, ptr %i.i, align 8, !tbaa !38  ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 488 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !237
  %i.hc = add i64 %i.hb, %i.gy
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !237
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 360
  %i.he = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.hd) #33 ; 0 uses
  %6 = load i8, ptr %i.gu, align 1, !tbaa !80
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !80
  %i.hf = zext i8 %10 to i32
  %11 = or disjoint i32 %8, %i.hf
  store i32 %11, ptr %i.au, align 8, !tbaa !81
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !80
  %.not.i217 = icmp eq i8 %i.hh, 0
  br i1 %.not.i217, label %bb.bn, label %try_read_network.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gu, i64 5
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !80
  %.not26.i = icmp eq i8 %i.hj, 1
  br i1 %.not26.i, label %bb.bo, label %try_read_network.exit.thread

bb.bo:                                            ; preds = %bb.bn
  %i.hk = add nsw i32 %i.gs, -8                   ; 2 uses
  %i.hl = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = zext nneg i32 %i.hk to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hl, ptr nonnull align 1 %i.hm, i64 %i.hn, i1 false)
  store i32 %i.hk, ptr %i.ad, align 4, !tbaa !37
  %i.ho = load ptr, ptr %i.af, align 8, !tbaa !49
  store ptr %i.ho, ptr %i.ai, align 8, !tbaa !36
  br label %try_read_network.exit.thread293

try_read_network.exit:                            ; preds = %bb.aw, %bb.bk
  br i1 %.not315, label %try_read_network.exit.thread293, label %try_read_network.exit.thread

try_read_network.exit.thread:                     ; preds = %try_read_network.exit, %bb.bl, %bb.bn, %bb.bm
  %i.hp = load i32, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %.not.i218 = icmp eq i32 %i.hp, 2
  br i1 %.not.i218, label %.lr.ph.backedge, label %bb.bp

bb.bp:                                            ; preds = %try_read_network.exit.thread
  %i.hq = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.hr = icmp sgt i32 %i.hq, 2
  br i1 %i.hr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hs = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ht = load i32, ptr %i.e, align 8, !tbaa !60
  %i.hu = zext i32 %i.hp to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.hx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hs, ptr noundef nonnull @.str.15, i32 noundef %i.ht, ptr noundef %i.hw, ptr noundef nonnull @.str.371) #35 ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  store i32 2, ptr %i.d, align 8, !tbaa !56
  br label %.lr.ph.backedge

try_read_network.exit.thread293:                  ; preds = %bb.bg, %bb.bh, %try_read_network.exit, %bb.bo
  %i.hy = load i32, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %.not.i220 = icmp eq i32 %i.hy, 4
  br i1 %.not.i220, label %.lr.ph.backedge, label %bb.bs

bb.bs:                                            ; preds = %try_read_network.exit.thread293
  %i.hz = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.ia = icmp sgt i32 %i.hz, 2
  br i1 %i.ia, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ib = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ic = load i32, ptr %i.e, align 8, !tbaa !60
  %i.id = zext i32 %i.hy to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !62
  %i.ig = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ib, ptr noundef nonnull @.str.15, i32 noundef %i.ic, ptr noundef %i.if, ptr noundef nonnull @.str.373) #35 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i32 4, ptr %i.d, align 8, !tbaa !56
  br label %.lr.ph.backedge

try_read_network.exit.thread296:                  ; preds = %bb.bj, %bb.ba, %bb.bk
  %i.ih = load i32, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %.not.i222 = icmp eq i32 %i.ih, 8
  br i1 %.not.i222, label %.lr.ph.backedge, label %bb.bv

bb.bv:                                            ; preds = %try_read_network.exit.thread296
  %i.ii = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.ij = icmp sgt i32 %i.ii, 2
  br i1 %i.ij, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ik = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.il = load i32, ptr %i.e, align 8, !tbaa !60
  %i.im = zext i32 %i.ih to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.im
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !62
  %i.ip = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ik, ptr noundef nonnull @.str.15, i32 noundef %i.il, ptr noundef %i.io, ptr noundef nonnull @.str.377) #35 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  store i32 8, ptr %i.d, align 8, !tbaa !56
  br label %.lr.ph.backedge

bb.by:                                            ; preds = %bb.b
  %i.iq = load ptr, ptr %i.aq, align 8, !tbaa !82
  %i.ir = call i32 %i.iq(ptr noundef nonnull %0) #33
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.bz, label %.lr.ph.backedge

bb.bz:                                            ; preds = %bb.by
  %i.it = load ptr, ptr %i.o, align 8, !tbaa !83
  %.not202 = icmp eq ptr %i.it, null
  %i.iu = load i32, ptr %i.d, align 8, !tbaa !56  ; 4 uses
  br i1 %.not202, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.not.i224 = icmp eq i32 %i.iu, 9
  br i1 %.not.i224, label %.lr.ph.backedge, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.iv = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.iw = icmp sgt i32 %i.iv, 2
  br i1 %i.iw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ix = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.iy = load i32, ptr %i.e, align 8, !tbaa !60
  %i.iz = zext i32 %i.iu to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !62
  %i.jc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ix, ptr noundef nonnull @.str.15, i32 noundef %i.iy, ptr noundef %i.jb, ptr noundef nonnull @.str.378) #35 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store i32 9, ptr %i.d, align 8, !tbaa !56
  br label %.lr.ph.backedge

bb.ce:                                            ; preds = %bb.bz
  %.not.i226 = icmp eq i32 %i.iu, 2
  br i1 %.not.i226, label %.lr.ph.backedge, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jd = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.je = icmp sgt i32 %i.jd, 2
  br i1 %i.je, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.jf = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.jg = load i32, ptr %i.e, align 8, !tbaa !60
  %i.jh = zext i32 %i.iu to i64
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.jh
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !62
  %i.jk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jf, ptr noundef nonnull @.str.15, i32 noundef %i.jg, ptr noundef %i.jj, ptr noundef nonnull @.str.371) #35 ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  store i32 2, ptr %i.d, align 8, !tbaa !56
  br label %.lr.ph.backedge

bb.ci:                                            ; preds = %bb.b
  %i.jl = add nsw i32 %.0175.ph388, -1            ; 9 uses
  %i.jm = icmp sgt i32 %.0175.ph388, 0
  br i1 %i.jm, label %bb.cj, label %bb.dc

bb.cj:                                            ; preds = %bb.ci
  store i16 -1, ptr %i.ao, align 8, !tbaa !84
  store i32 0, ptr %i.ap, align 4, !tbaa !238
  %i.jn = load ptr, ptr %i.al, align 8, !tbaa !85 ; 3 uses
  %.not.i228 = icmp eq ptr %i.jn, null
  br i1 %.not.i228, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jo = load i8, ptr %i.ak, align 8, !tbaa !86, !range !66, !noundef !67
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @free(ptr noundef nonnull %i.jn) #33
  store i8 0, ptr %i.ak, align 8, !tbaa !86
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  call void @item_remove(ptr noundef nonnull %i.jn) #33
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  store ptr null, ptr %i.al, align 8, !tbaa !85
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cj
  %i.jq = load i32, ptr %i.ad, align 4, !tbaa !37
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %bb.co
  %i.js = load i32, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %.not.i.i = icmp eq i32 %i.js, 4
  br i1 %.not.i.i, label %.lr.ph.backedge, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jt = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.ju = icmp sgt i32 %i.jt, 2
  br i1 %i.ju, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.jv = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.jw = load i32, ptr %i.e, align 8, !tbaa !60
  %i.jx = zext i32 %i.js to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !62
  %i.ka = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jv, ptr noundef nonnull @.str.15, i32 noundef %i.jw, ptr noundef %i.jz, ptr noundef nonnull @.str.373) #35 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  store i32 4, ptr %i.d, align 8, !tbaa !56
  br label %.lr.ph.backedge

end_hunk_0
begin_hunk_1_@drive_machine:bb.a
  %i.xw = load i16, ptr %i.n, align 8, !tbaa !75
  %i.xx = icmp eq i16 %i.xw, 20
  br i1 %i.xx, label %transmit.exit, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.xy = call i32 @event_del(ptr noundef nonnull %i.f) #33, !inline_history !231
  %i.xz = icmp eq i32 %i.xy, -1
  br i1 %i.xz, label %update_event.exit.thread25.i, label %update_event.exit.i

update_event.exit.i:                              ; preds = %bb.gw
  %i.ya = load i32, ptr %i.e, align 8, !tbaa !60
  call void @event_set(ptr noundef nonnull %i.f, i32 noundef %i.ya, i16 noundef signext 20, ptr noundef nonnull @event_handler, ptr noundef nonnull %0) #33, !inline_history !231
  %i.yb = call i32 @event_base_set(ptr noundef %i.xv, ptr noundef nonnull %i.f) #33, !inline_history !231 ; 0 uses
  store i16 20, ptr %i.n, align 8, !tbaa !75
  %i.yc = call i32 @event_add(ptr noundef nonnull %i.f, ptr noundef null) #33, !inline_history !231
  %.not27.i = icmp eq i32 %i.yc, -1
  br i1 %.not27.i, label %update_event.exit.thread25.i, label %transmit.exit

update_event.exit.thread25.i:                     ; preds = %update_event.exit.i, %bb.gw
  %i.yd = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.ye = icmp sgt i32 %i.yd, 0
  br i1 %i.ye, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %update_event.exit.thread25.i
  %i.yf = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite.i264 = call i64 @fwrite(ptr nonnull @.str.405, i64 22, i64 1, ptr %i.yf) #37, !inline_history !230 ; 0 uses
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %update_event.exit.thread25.i
  %i.yg = load i32, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %.not.i.i263 = icmp eq i32 %i.yg, 8
  br i1 %.not.i.i263, label %transmit.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.yh = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.yi = icmp sgt i32 %i.yh, 2
  br i1 %i.yi, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.yj = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.yk = load i32, ptr %i.e, align 8, !tbaa !60
  %i.yl = zext i32 %i.yg to i64
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.yl
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !62
  %i.yo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yj, ptr noundef nonnull @.str.15, i32 noundef %i.yk, ptr noundef %i.yn, ptr noundef nonnull @.str.377) #35, !inline_history !230 ; 0 uses
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  store i32 8, ptr %i.d, align 8, !tbaa !56
  br label %transmit.exit

bb.hc:                                            ; preds = %bb.gu, %bb.gt
  %i.yp = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.yq = icmp sgt i32 %i.yp, 0
  br i1 %i.yq, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  call void @perror(ptr noundef nonnull @.str.413) #37, !inline_history !230
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.yr = load i32, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %.not.i22.i = icmp eq i32 %i.yr, 8
  br i1 %.not.i22.i, label %transmit.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.ys = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.yt = icmp sgt i32 %i.ys, 2
  br i1 %i.yt, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.yu = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.yv = load i32, ptr %i.e, align 8, !tbaa !60
  %i.yw = zext i32 %i.yr to i64
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.yw
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !62
  %i.yz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yu, ptr noundef nonnull @.str.15, i32 noundef %i.yv, ptr noundef %i.yy, ptr noundef nonnull @.str.377) #35, !inline_history !230 ; 0 uses
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  store i32 8, ptr %i.d, align 8, !tbaa !56
  br label %transmit.exit

transmit.exit:                                    ; preds = %bb.gq, %bb.gs, %bb.gv, %update_event.exit.i, %bb.gy, %bb.hb, %bb.he, %bb.hh
  %.1.i262 = phi i32 [ 0, %bb.gq ], [ %..i, %bb.gs ], [ 3, %bb.hb ], [ 3, %bb.hh ], [ 2, %update_event.exit.i ], [ 3, %bb.gy ], [ 3, %bb.he ], [ 2, %bb.gv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.il

bb.hi:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.za = load ptr, ptr %i.o, align 8, !tbaa !83  ; 15 uses
  %.not.i266 = icmp eq ptr %i.za, null
  br i1 %.not.i266, label %transmit_udp.exit, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 118
  %i.zc = load i8, ptr %i.zb, align 2, !tbaa !101, !range !66, !noundef !67
  %i.zd = trunc nuw i8 %i.zc to i1
  br i1 %i.zd, label %bb.hk, label %bb.hu

bb.hk:                                            ; preds = %bb.hj
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !102
  %i.zg = getelementptr inbounds nuw i8, ptr %i.za, i64 40 ; 2 uses
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !103 ; 2 uses
  %.not.i.i274 = icmp eq ptr %i.zh, null
  br i1 %.not.i.i274, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @item_remove(ptr noundef nonnull %i.zh) #33, !inline_history !232
  store ptr null, ptr %i.zg, align 8, !tbaa !103
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %i.zi = getelementptr inbounds nuw i8, ptr %i.za, i64 24
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !104 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.zj, null
  br i1 %.not25.i.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @free(ptr noundef nonnull %i.zj) #33, !inline_history !232
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.zk = getelementptr inbounds nuw i8, ptr %i.za, i64 32 ; 2 uses
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !105 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.zl, null
  br i1 %.not26.i.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 40
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !108
  call void %i.zn(ptr noundef nonnull %i.zl) #33, !inline_history !233
  %i.zo = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 6952
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !109
  call void @do_cache_free(ptr noundef %i.zq, ptr noundef nonnull %i.zl) #33, !inline_history !232
  store ptr null, ptr %i.zk, align 8, !tbaa !105
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.zr = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.zs = icmp eq ptr %i.zr, %i.za
  br i1 %i.zs, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  store ptr %i.zf, ptr %i.o, align 8, !tbaa !83
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.zt = load ptr, ptr %i.aa, align 8, !tbaa !110
  %i.zu = icmp eq ptr %i.zt, %i.za
  br i1 %i.zu, label %bb.ht, label %resp_finish.exit.i

bb.ht:                                            ; preds = %bb.hs
  store ptr null, ptr %i.aa, align 8, !tbaa !110
  br label %resp_finish.exit.i

resp_finish.exit.i:                               ; preds = %bb.ht, %bb.hs
  %i.zv = load ptr, ptr %i.i, align 8, !tbaa !38
  call void @resp_free(ptr noundef %i.zv, ptr noundef nonnull %i.za), !inline_history !232
  br label %transmit_udp.exit

bb.hu:                                            ; preds = %bb.hj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  store ptr %1, ptr %i.q, align 8, !tbaa !244
  %i.zw = getelementptr inbounds nuw i8, ptr %i.za, i64 132
  store ptr %i.zw, ptr %2, align 8, !tbaa !247
  %i.zx = getelementptr inbounds nuw i8, ptr %i.za, i64 160
  %i.zy = load i32, ptr %i.zx, align 8, !tbaa !111
  store i32 %i.zy, ptr %i.p, align 8, !tbaa !248
  store ptr %i.a, ptr %1, align 16, !tbaa !113
  store i64 8, ptr %i.r, align 8, !tbaa !114
  %i.zz = getelementptr inbounds nuw i8, ptr %i.za, i64 130 ; 2 uses
  %i.aaa = load i16, ptr %i.zz, align 2, !tbaa !249 ; 2 uses
  %.not.i45.i = icmp eq i16 %i.aaa, 0
  br i1 %.not.i45.i, label %bb.hv, label %build_udp_header.exit.i

bb.hv:                                            ; preds = %bb.hu
  %i.aab = getelementptr inbounds nuw i8, ptr %i.za, i64 20
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !115 ; 2 uses
  %i.aad = sdiv i32 %i.aac, 1392
  %i.aae = srem i32 %i.aac, 1392
  %.not21.i.i = icmp ne i32 %i.aae, 0
  %i.aaf = zext i1 %.not21.i.i to i32
  %spec.select.i.i = add nsw i32 %i.aad, %i.aaf
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %spec.select.i.i, i32 65535)
  %i.aag = trunc nuw i32 %spec.store.select.i.i to i16 ; 2 uses
  store i16 %i.aag, ptr %i.zz, align 2, !tbaa !249
  br label %build_udp_header.exit.i

build_udp_header.exit.i:                          ; preds = %bb.hv, %bb.hu
  %i.aah = phi i16 [ %i.aaa, %bb.hu ], [ %i.aag, %bb.hv ] ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.za, i64 126
  %i.aaj = load i16, ptr %i.aai, align 2, !tbaa !116 ; 2 uses
  %i.aak = lshr i16 %i.aaj, 8
  %i.aal = trunc nuw i16 %i.aak to i8
  store i8 %i.aal, ptr %i.a, align 1, !tbaa !80
  %i.aam = trunc i16 %i.aaj to i8
  store i8 %i.aam, ptr %i.s, align 1, !tbaa !80
  %i.aan = getelementptr inbounds nuw i8, ptr %i.za, i64 128 ; 2 uses
  %i.aao = load i16, ptr %i.aan, align 8, !tbaa !250 ; 3 uses
  %i.aap = lshr i16 %i.aao, 8
  %i.aaq = trunc nuw i16 %i.aap to i8
  store i8 %i.aaq, ptr %i.t, align 1, !tbaa !80
  %i.aar = trunc i16 %i.aao to i8
  store i8 %i.aar, ptr %i.u, align 1, !tbaa !80
  %i.aas = lshr i16 %i.aah, 8
  %i.aat = trunc nuw i16 %i.aas to i8
  store i8 %i.aat, ptr %i.v, align 1, !tbaa !80
  %i.aau = trunc i16 %i.aah to i8
  store i8 %i.aau, ptr %i.w, align 1, !tbaa !80
  store i8 0, ptr %i.x, align 1, !tbaa !80
  store i8 0, ptr %i.y, align 1, !tbaa !80
  %i.aav = add i16 %i.aao, 1
  store i16 %i.aav, ptr %i.aan, align 8, !tbaa !250
  %i.aaw = call fastcc i32 @_transmit_pre(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i1 noundef zeroext true), !inline_history !232 ; 3 uses
  %i.aax = icmp sgt i32 %i.aaw, 0
  br i1 %i.aax, label %.lr.ph.preheader.i272, label %.loopexit.i267

.lr.ph.preheader.i272:                            ; preds = %build_udp_header.exit.i
  %wide.trip.count.i = zext nneg i32 %i.aaw to i64
  br label %.lr.ph.i273

.lr.ph.i273:                                      ; preds = %bb.hx, %.lr.ph.preheader.i272
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i272 ], [ %indvars.iv.next.i, %bb.hx ] ; 3 uses
  %.055.i = phi i32 [ 0, %.lr.ph.preheader.i272 ], [ %i.abj, %bb.hx ] ; 2 uses
  %i.aay = zext nneg i32 %.055.i to i64
  %i.aaz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !114
  %i.abc = add i64 %i.abb, %i.aay                 ; 2 uses
  %i.abd = icmp ugt i64 %i.abc, 1399
  br i1 %i.abd, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %.lr.ph.i273
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  %i.abf = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.abg = sub nuw nsw i32 1400, %.055.i
  %i.abh = zext nneg i32 %i.abg to i64
  store i64 %i.abh, ptr %i.abe, align 8, !tbaa !114
  %i.abi = add nuw nsw i32 %i.abf, 1
  br label %.loopexit.i267

bb.hx:                                            ; preds = %.lr.ph.i273
  %i.abj = trunc nuw nsw i64 %i.abc to i32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i267, label %.lr.ph.i273, !llvm.loop !234

.loopexit.i267:                                   ; preds = %bb.hx, %bb.hw, %build_udp_header.exit.i
  %.1.i268 = phi i32 [ %i.abi, %bb.hw ], [ 0, %build_udp_header.exit.i ], [ %i.aaw, %bb.hx ]
  %i.abk = sext i32 %.1.i268 to i64
  store i64 %i.abk, ptr %i.z, align 8, !tbaa !245
  %i.abl = load i32, ptr %i.e, align 8, !tbaa !60
  %i.abm = call i64 @sendmsg(i32 noundef %i.abl, ptr noundef nonnull %2, i32 noundef 0) #33, !inline_history !232 ; 4 uses
  %i.abn = icmp sgt i64 %i.abm, -1
  br i1 %i.abn, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %.loopexit.i267
  %i.abo = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 360
  %i.abq = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.abp) #33, !inline_history !232 ; 0 uses
  %i.abr = load ptr, ptr %i.i, align 8, !tbaa !38 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 496 ; 2 uses
  %i.abt = load i64, ptr %i.abs, align 8, !tbaa !246
  %i.abu = add i64 %i.abt, %i.abm
  store i64 %i.abu, ptr %i.abs, align 8, !tbaa !246
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abr, i64 360
  %i.abw = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.abv) #33, !inline_history !232 ; 0 uses
  %i.abx = add nsw i64 %i.abm, -8
  call fastcc void @_transmit_post(ptr noundef nonnull %0, i64 noundef %i.abx), !inline_history !232
  %i.aby = load ptr, ptr %i.o, align 8, !tbaa !83
  %.not44.i = icmp ne ptr %i.aby, null
  %..i271 = zext i1 %.not44.i to i32
  br label %transmit_udp.exit

bb.hz:                                            ; preds = %.loopexit.i267
  %i.abz = icmp eq i64 %i.abm, -1
  br i1 %i.abz, label %bb.ia, label %bb.if

bb.ia:                                            ; preds = %bb.hz
  %i.aca = tail call ptr @__errno_location() #36, !inline_history !232
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !16
  %i.acc = icmp eq i32 %i.acb, 11
  br i1 %i.acc, label %bb.ib, label %bb.if

bb.ib:                                            ; preds = %bb.ia
  %i.acd = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.ace = load i16, ptr %i.n, align 8, !tbaa !75
  %i.acf = icmp eq i16 %i.ace, 20
  br i1 %i.acf, label %transmit_udp.exit, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.acg = call i32 @event_del(ptr noundef nonnull %i.f) #33, !inline_history !235
  %i.ach = icmp eq i32 %i.acg, -1
  br i1 %i.ach, label %update_event.exit.thread48.i, label %update_event.exit.i269

update_event.exit.i269:                           ; preds = %bb.ic
  %i.aci = load i32, ptr %i.e, align 8, !tbaa !60
  call void @event_set(ptr noundef nonnull %i.f, i32 noundef %i.aci, i16 noundef signext 20, ptr noundef nonnull @event_handler, ptr noundef nonnull %0) #33, !inline_history !235
  %i.acj = call i32 @event_base_set(ptr noundef %i.acd, ptr noundef nonnull %i.f) #33, !inline_history !235 ; 0 uses
  store i16 20, ptr %i.n, align 8, !tbaa !75
  %i.ack = call i32 @event_add(ptr noundef nonnull %i.f, ptr noundef null) #33, !inline_history !235
  %.not50.i = icmp eq i32 %i.ack, -1
  br i1 %.not50.i, label %update_event.exit.thread48.i, label %transmit_udp.exit

update_event.exit.thread48.i:                     ; preds = %update_event.exit.i269, %bb.ic
  %i.acl = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.acm = icmp sgt i32 %i.acl, 0
  br i1 %i.acm, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %update_event.exit.thread48.i
  %i.acn = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite.i270 = call i64 @fwrite(ptr nonnull @.str.405, i64 22, i64 1, ptr %i.acn) #37, !inline_history !232 ; 0 uses
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %update_event.exit.thread48.i
  call void @conn_set_state(ptr noundef nonnull %0, i32 noundef 8), !inline_history !232
  br label %transmit_udp.exit

bb.if:                                            ; preds = %bb.ia, %bb.hz
  %i.aco = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.acp = icmp sgt i32 %i.aco, 0
  br i1 %i.acp, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  call void @perror(ptr noundef nonnull @.str.413) #37, !inline_history !232
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.acq = load i32, ptr %i.d, align 8, !tbaa !56 ; 2 uses
  %.not.i46.i = icmp eq i32 %i.acq, 3
  br i1 %.not.i46.i, label %transmit_udp.exit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.acr = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.acs = icmp sgt i32 %i.acr, 2
  br i1 %i.acs, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.act = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.acu = load i32, ptr %i.e, align 8, !tbaa !60
  %i.acv = zext i32 %i.acq to i64
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.acv
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !62
  %i.acy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.act, ptr noundef nonnull @.str.15, i32 noundef %i.acu, ptr noundef %i.acx, ptr noundef nonnull @.str.372) #35, !inline_history !232 ; 0 uses
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  store i32 3, ptr %i.d, align 8, !tbaa !56
  br label %transmit_udp.exit

transmit_udp.exit:                                ; preds = %bb.hi, %resp_finish.exit.i, %bb.hy, %bb.ib, %update_event.exit.i269, %bb.ie, %bb.ih, %bb.ik
  %.139.i = phi i32 [ 1, %resp_finish.exit.i ], [ 0, %bb.hi ], [ %..i271, %bb.hy ], [ 3, %bb.ik ], [ 3, %bb.ie ], [ 2, %update_event.exit.i269 ], [ 3, %bb.ih ], [ 2, %bb.ib ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.il

bb.il:                                            ; preds = %transmit_udp.exit, %transmit.exit
  %i.acz = phi i32 [ %.1.i262, %transmit.exit ], [ %.139.i, %transmit_udp.exit ]
  switch i32 %i.acz, label %.lr.ph.backedge [
    i32 0, label %bb.im
    i32 2, label %.outer._crit_edge
  ]

bb.im:                                            ; preds = %bb.il
  %i.ada = load i32, ptr %i.d, align 8, !tbaa !56 ; 3 uses
  %i.adb = icmp eq i32 %i.ada, 9
  br i1 %i.adb, label %bb.in, label %bb.iu

bb.in:                                            ; preds = %bb.im
  call void @conn_release_items(ptr noundef nonnull %0)
  %i.adc = load i32, ptr %i.d, align 8, !tbaa !56 ; 2 uses
  %.not.i275 = icmp eq i32 %i.adc, 1
  br i1 %.not.i275, label %conn_set_state.exit276, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.add = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.ade = icmp sgt i32 %i.add, 2
  br i1 %i.ade, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.adf = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.adg = load i32, ptr %i.e, align 8, !tbaa !60
  %i.adh = zext i32 %i.adc to i64
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.adh
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !62
  %i.adk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adf, ptr noundef nonnull @.str.15, i32 noundef %i.adg, ptr noundef %i.adj, ptr noundef nonnull @.str.370) #35 ; 0 uses
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  store i32 1, ptr %i.d, align 8, !tbaa !56
  br label %conn_set_state.exit276

conn_set_state.exit276:                           ; preds = %bb.in, %bb.iq
  %i.adl = load i8, ptr %i.ab, align 2, !tbaa !77, !range !66, !noundef !67
  %i.adm = trunc nuw i8 %i.adl to i1
  br i1 %i.adm, label %bb.ir, label %.lr.ph.backedge

bb.ir:                                            ; preds = %conn_set_state.exit276
  %i.adn = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.ado = icmp sgt i32 %i.adn, 2
  br i1 %i.ado, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.adp = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.adq = load i32, ptr %i.e, align 8, !tbaa !60
  %i.adr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adp, ptr noundef nonnull @.str.15, i32 noundef %i.adq, ptr noundef nonnull @.str.370, ptr noundef nonnull @.str.377) #35 ; 0 uses
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  store i32 8, ptr %i.d, align 8, !tbaa !56
end_hunk_1
begin_hunk_2_@conn_new:bb.a

bb.t:                                             ; preds = %bb.q
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.9, i32 noundef %0) #35 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.10, i32 noundef %0, i32 noundef %i.az) #35 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %prot_text.exit, %bb.r, %bb.t, %bb.u, %bb.s, %bb.p, %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.094, i64 32
  store i32 %1, ptr %i.bf, align 8, !tbaa !56
  %i.bg = getelementptr inbounds nuw i8, ptr %.094, i64 232
  store i32 0, ptr %i.bg, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %.094, i64 376
  store i16 -1, ptr %i.bh, align 8, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %.094, i64 204
  store i32 0, ptr %i.bi, align 4, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %.094, i64 184
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !49
  %i.bl = getelementptr inbounds nuw i8, ptr %.094, i64 192
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %.094, i64 224
  store ptr null, ptr %i.bm, align 8, !tbaa !89
  %i.bn = getelementptr inbounds nuw i8, ptr %.094, i64 15
  store i8 0, ptr %i.bn, align 1, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %.094, i64 16
  store i8 0, ptr %i.bo, align 8, !tbaa !86
  %i.bp = getelementptr inbounds nuw i8, ptr %.094, i64 12
  store i8 0, ptr %i.bp, align 4, !tbaa !257
  %i.bq = getelementptr inbounds nuw i8, ptr %.094, i64 14
  store i8 0, ptr %i.bq, align 2, !tbaa !77
  %i.br = load volatile i32, ptr @current_time, align 4, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %.094, i64 40
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %.094, i64 240
  store ptr null, ptr %i.bt, align 8, !tbaa !85
  %i.bu = getelementptr inbounds nuw i8, ptr %.094, i64 24
  store ptr null, ptr %i.bu, align 8, !tbaa !258
  %.not104 = icmp eq ptr %6, null
  br i1 %.not104, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %.094, i64 416
  store ptr @tcp_read, ptr %i.bv, align 8, !tbaa !78
  %i.bw = getelementptr inbounds nuw i8, ptr %.094, i64 424
  store ptr @tcp_sendmsg, ptr %i.bw, align 8, !tbaa !98
  %i.bx = getelementptr inbounds nuw i8, ptr %.094, i64 432
  store ptr @tcp_write, ptr %i.bx, align 8, !tbaa !259
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.sink107 = phi i8 [ 0, %bb.w ], [ 1, %bb.v ]
  %i.by = getelementptr inbounds nuw i8, ptr %.094, i64 17
  store i8 %.sink107, ptr %i.by, align 1, !tbaa !260
  %i.bz = icmp eq i32 %4, 2
  br i1 %i.bz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %.094, i64 408
  store ptr @try_read_command_udp, ptr %i.ca, align 8, !tbaa !82
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  %i.cb = load i32, ptr %i.x, align 4, !tbaa !73
  switch i32 %i.cb, label %bb.af [
    i32 3, label %bb.aa
    i32 4, label %bb.ad
    i32 5, label %bb.ae
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128
  %i.cd = icmp eq ptr %i.cc, null
  %i.ce = getelementptr inbounds nuw i8, ptr %.094, i64 13 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.094, i64 408 ; 2 uses
  br i1 %i.cd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.ce, align 1, !tbaa !261
  store ptr @try_read_command_ascii, ptr %i.cf, align 8, !tbaa !82
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  store i8 0, ptr %i.ce, align 1, !tbaa !261
  store ptr @try_read_command_asciiauth, ptr %i.cf, align 8, !tbaa !82
  br label %bb.af

bb.ad:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %.094, i64 13
  store i8 0, ptr %i.cg, align 1, !tbaa !261
  %i.ch = getelementptr inbounds nuw i8, ptr %.094, i64 408
  store ptr @try_read_command_binary, ptr %i.ch, align 8, !tbaa !82
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %.094, i64 408
  store ptr @try_read_command_negotiate, ptr %i.ci, align 8, !tbaa !82
  br label %bb.af

bb.af:                                            ; preds = %bb.z, %bb.ad, %bb.ae, %bb.ac, %bb.ab, %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %.094, i64 48 ; 3 uses
  %i.ck = trunc i32 %2 to i16                     ; 2 uses
  tail call void @event_set(ptr noundef nonnull %i.cj, i32 noundef %0, i16 noundef signext %i.ck, ptr noundef nonnull @event_handler, ptr noundef nonnull %.094) #33
  %i.cl = tail call i32 @event_base_set(ptr noundef %5, ptr noundef nonnull %i.cj) #33 ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.094, i64 176
  store i16 %i.ck, ptr %i.cm, align 8, !tbaa !75
  %i.cn = tail call i32 @event_add(ptr noundef nonnull %i.cj, ptr noundef null) #33
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @perror(ptr noundef nonnull @.str.11) #37
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  tail call void @STATS_LOCK() #33
  %i.cp = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 16), align 8, !tbaa !129
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 16), align 8, !tbaa !129
  %i.cr = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 8), align 8, !tbaa !130
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 8), align 8, !tbaa !130
  tail call void @STATS_UNLOCK() #33
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.f, %bb.c
  %.0 = phi ptr [ null, %bb.f ], [ null, %bb.ag ], [ %.094, %bb.ah ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @conn_free(ptr noundef nonnull captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @conns, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.d
  store ptr null, ptr %i.e, align 8, !tbaa !120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.g) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @free(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) local_unnamed_addr #4

declare i32 @logger_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @tcp_read(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = tail call i64 @read(i32 noundef %i.b, ptr noundef %1, i64 noundef %2) #33
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal i64 @tcp_sendmsg(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = tail call i64 @sendmsg(i32 noundef %i.b, ptr noundef %1, i32 noundef %2) #33
  ret i64 %i.c
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @tcp_write(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = tail call i64 @write(i32 noundef %i.b, ptr noundef %1, i64 noundef %2) #33
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @try_read_command_udp(ptr noundef initializes((260, 264)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load i8, ptr %i.b, align 1, !tbaa !80
  %i.d = icmp eq i8 %i.c, -128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 4, ptr %i.e, align 4, !tbaa !73
  %i.f = tail call i32 @try_read_command_binary(ptr noundef nonnull %0) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 3, ptr %i.e, align 4, !tbaa !73
  %i.g = tail call i32 @try_read_command_ascii(ptr noundef nonnull %0) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i32 %.0
}

declare i32 @try_read_command_ascii(ptr noundef) #2

declare i32 @try_read_command_asciiauth(ptr noundef) #2

declare i32 @try_read_command_binary(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @try_read_command_negotiate(ptr noundef initializes((260, 264), (408, 416)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load i8, ptr %i.b, align 1, !tbaa !80
  %i.d = icmp eq i8 %i.c, -128                    ; 3 uses
  %spec.select = select i1 %i.d, i32 4, i32 3
  %spec.select9 = select i1 %i.d, ptr @try_read_command_binary, ptr @try_read_command_ascii ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 %spec.select, ptr %i.e, align 4, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  store ptr %spec.select9, ptr %i.f, align 8, !tbaa !82
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %prot_text.exit, label %bb.b

prot_text.exit:                                   ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !60
  %spec.select10 = select i1 %i.d, ptr @.str.13, ptr @.str.14
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.399, i32 noundef %i.k, ptr noundef nonnull %spec.select10) #35 ; 0 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !82
  br label %bb.b

bb.b:                                             ; preds = %prot_text.exit, %bb.a
  %i.m = phi ptr [ %.pre, %prot_text.exit ], [ %spec.select9, %bb.a ]
  %i.n = tail call i32 %i.m(ptr noundef nonnull %0) #33
  ret i32 %i.n
}

declare void @event_set(ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @event_handler(i32 noundef %0, i16 noundef signext %1, ptr noundef initializes((178, 180)) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 178
  store i16 %1, ptr %i.a, align 2, !tbaa !262
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60
  %.not = icmp eq i32 %0, %i.c
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.414, i64 46, i64 1, ptr %i.f) #37 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @conn_close(ptr noundef nonnull %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @drive_machine(ptr noundef nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare i32 @event_base_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @event_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @conn_release_items(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !86, !range !66, !noundef !67
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #33
  store i8 0, ptr %i.c, align 8, !tbaa !86
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @item_remove(ptr noundef nonnull %i.b) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !85
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83   ; 2 uses
  %.not18 = icmp eq ptr %i.g, null
  br i1 %.not18, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %resp_finish.exit
  %.020 = phi ptr [ %i.g, %.preheader ], [ %i.v, %resp_finish.exit ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.020, i64 120
  %i.k = load i8, ptr %i.j, align 8, !tbaa !131, !range !66, !noundef !67
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.q = load i32, ptr %i.p, align 4, !tbaa !73
  %i.r = icmp eq i32 %i.q, 4
  %i.s = select i1 %i.r, ptr @.str.13, ptr @.str.14
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.12, i32 noundef %i.o, ptr noundef nonnull %i.s) #35 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !102  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.020, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !103  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @item_remove(ptr noundef nonnull %i.x) #33
  store ptr null, ptr %i.w, align 8, !tbaa !103
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.020, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !104  ; 2 uses
  %.not25.i = icmp eq ptr %i.z, null
  br i1 %.not25.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.z) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %.020, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !105 ; 4 uses
  %.not26.i = icmp eq ptr %i.ab, null
  br i1 %.not26.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !108
  tail call void %i.ad(ptr noundef nonnull %i.ab) #33, !inline_history !132
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 6952
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !109
  tail call void @do_cache_free(ptr noundef %i.ag, ptr noundef nonnull %i.ab) #33
  store ptr null, ptr %i.aa, align 8, !tbaa !105
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.ai = icmp eq ptr %i.ah, %.020
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.v, ptr %i.f, align 8, !tbaa !83
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.ak = icmp eq ptr %i.aj, %.020
  br i1 %i.ak, label %bb.r, label %resp_finish.exit

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.i, align 8, !tbaa !110
  br label %resp_finish.exit

resp_finish.exit:                                 ; preds = %bb.q, %bb.r
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !38
  tail call void @resp_free(ptr noundef %i.al, ptr noundef nonnull %.020)
  %.not19 = icmp eq ptr %i.v, null
  br i1 %.not19, label %.loopexit, label %bb.g, !llvm.loop !263

.loopexit:                                        ; preds = %resp_finish.exit, %bb.h, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

declare void @item_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @resp_finish(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
end_hunk_2
begin_hunk_3_@conn_close:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !71
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %bb.k, label %conn_cleanup.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !56 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ah, 3
  br i1 %.not.i.i, label %conn_cleanup.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.aj = icmp sgt i32 %i.ai, 2
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !60
  %i.an = zext i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.15, i32 noundef %i.am, ptr noundef %i.ap, ptr noundef nonnull @.str.372) #35 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 3, ptr %i.ag, align 8, !tbaa !56
  br label %conn_cleanup.exit

conn_cleanup.exit:                                ; preds = %bb.j, %bb.k, %bb.n
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %.not23 = icmp eq ptr %i.ar, null
  br i1 %.not23, label %rbuf_release.exit, label %bb.o

bb.o:                                             ; preds = %conn_cleanup.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 0, ptr %i.as, align 4, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49 ; 3 uses
  %.not.i24 = icmp eq ptr %i.au, null
  br i1 %.not.i24, label %rbuf_release.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load i32, ptr %i.ad, align 8, !tbaa !71
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %rbuf_release.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !50, !range !66, !noundef !67
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.au) #33
  store i8 0, ptr %i.ax, align 1, !tbaa !50
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 6936
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48
  tail call void @do_cache_free(ptr noundef %i.bb, ptr noundef nonnull %i.au) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.at, i8 0, i64 20, i1 false)
  br label %rbuf_release.exit

rbuf_release.exit:                                ; preds = %bb.t, %bb.p, %bb.o, %conn_cleanup.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !56 ; 2 uses
  %.not.i25 = icmp eq i32 %i.bd, 10
  br i1 %.not.i25, label %conn_set_state.exit, label %bb.u

bb.u:                                             ; preds = %rbuf_release.exit
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.bf = icmp sgt i32 %i.be, 2
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !60
  %i.bj = zext i32 %i.bd to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !62
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.15, i32 noundef %i.bi, ptr noundef %i.bl, ptr noundef nonnull @.str.379) #35 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i32 10, ptr %i.bc, align 8, !tbaa !56
  br label %conn_set_state.exit

conn_set_state.exit:                              ; preds = %rbuf_release.exit, %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !60
  %i.bp = tail call i32 @close(i32 noundef %i.bo) #33 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 0, ptr %i.bq, align 4, !tbaa !61
  %i.br = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @conn_lock) #33 ; 0 uses
  store volatile i8 1, ptr @allow_new_conns, align 1, !tbaa !134
  %i.bs = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @conn_lock) #33 ; 0 uses
  tail call void @STATS_LOCK() #33
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 16), align 8, !tbaa !129
  %i.bu = add i64 %i.bt, -1
  store i64 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 16), align 8, !tbaa !129
  tail call void @STATS_UNLOCK() #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @resp_reset(ptr nofree noundef captures(none) initializes((16, 24), (112, 119)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @item_remove(ptr noundef nonnull %i.b) #33
  store ptr null, ptr %i.a, align 8, !tbaa !103
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #33
  store ptr null, ptr %i.c, align 8, !tbaa !104
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.g, i8 0, i64 7, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @resp_add_iov(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !136   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = zext i8 %i.b to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d ; 2 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !113
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !114
  %i.h = add i8 %i.b, 1
  store i8 %i.h, ptr %i.a, align 4, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !115
  %i.k = add nsw i32 %i.j, %2
  store i32 %i.k, ptr %i.i, align 4, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @resp_add_chunked_iov(ptr nofree noundef captures(none) initializes((112, 116), (117, 118)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !136   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 117
  store i8 %i.b, ptr %i.c, align 1, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %2, ptr %i.d, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = zext i8 %i.b to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !113
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !114
  %i.j = add i8 %i.b, 1
  store i8 %i.j, ptr %i.a, align 4, !tbaa !136
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !115
  %i.m = add nsw i32 %i.l, %2
  store i32 %i.m, ptr %i.k, align 4, !tbaa !115
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @resp_free(ptr noundef %0, ptr nofree noundef captures(none) initializes((120, 121)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !139    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 1, ptr %i.b, align 8, !tbaa !131
  %i.c = load i8, ptr %i.a, align 8, !tbaa !80
  %i.d = add i8 %i.c, -1                          ; 2 uses
  store i8 %i.d, ptr %i.a, align 8, !tbaa !80
  %i.e = icmp eq i8 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6944 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !140
  %i.h = icmp eq ptr %i.a, %i.g                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !141  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.l, align 1, !tbaa !80
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.f, align 8, !tbaa !141
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !141  ; 2 uses
  %.not45 = icmp eq ptr %i.n, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !141 ; 3 uses
  br i1 %.not45, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %.pre, ptr %i.o, align 8, !tbaa !141
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.g
  %.not46 = icmp eq ptr %.pre, null
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !141
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !141
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6936
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48
  tail call void @do_cache_free(ptr noundef %i.s, ptr noundef nonnull %i.a) #33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.t) #33 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !142
  %i.x = add i64 %i.w, -16384
  store i64 %i.x, ptr %i.v, align 8, !tbaa !142
  %i.y = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.t) #33 ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !141
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !141
  %.not43 = icmp eq ptr %i.ac, null
  br i1 %.not43, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !141 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !141
  %.not44 = icmp eq ptr %i.ad, null
  br i1 %.not44, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !141
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.a, ptr %i.f, align 8, !tbaa !141
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.k, %bb.j, %bb.d, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ag = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.af) #33 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !143
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !143
  %i.ak = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.af) #33 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @resp_start(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 400        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.b = tail call fastcc ptr @resp_allocate(ptr %.val) ; 6 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #33 ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 544 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !144
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !144
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #33 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 552 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !143
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !143
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #33 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.b, ptr %i.p, align 8, !tbaa !83
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !110  ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.b, ptr %i.t, align 8, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  store ptr %i.b, ptr %i.r, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.v = load i32, ptr %i.u, align 8, !tbaa !71
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.y = load i32, ptr %i.x, align 8, !tbaa !81
  %i.z = trunc i32 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 126
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ab, ptr noundef nonnull align 4 dereferenceable(28) %i.ac, i64 28, i1 false), !tbaa.struct !145
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !79
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !110
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  store i32 %i.ae, ptr %i.ag, align 8, !tbaa !111
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b
  ret i1 %.not
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @resp_allocate(ptr %.400.val) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.400.val, i64 6944 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !80    ; 13 uses
  %i.e = zext i8 %i.d to i16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 13 uses
  %i.g = urem i8 %i.d, 13                         ; 2 uses
  %i.h = zext nneg i8 %i.g to i16
  %i.i = zext nneg i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load i8, ptr %i.k, align 8, !tbaa !131, !range !66, !noundef !67
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.thread2, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.n = zext i8 %i.d to i16
  %.lhs.trunc.1 = add nuw nsw i16 %i.n, 1
  %i.o = urem i16 %.lhs.trunc.1, 13               ; 2 uses
  %i.p = zext nneg i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load i8, ptr %i.r, align 8, !tbaa !131, !range !66, !noundef !67
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.thread2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = zext i8 %i.d to i16
  %.lhs.trunc.2 = add nuw nsw i16 %i.u, 2
  %i.v = urem i16 %.lhs.trunc.2, 13               ; 2 uses
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.z = load i8, ptr %i.y, align 8, !tbaa !131, !range !66, !noundef !67
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.thread2, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = zext i8 %i.d to i16
  %.lhs.trunc.3 = add nuw nsw i16 %i.ab, 3
  %i.ac = urem i16 %.lhs.trunc.3, 13              ; 2 uses
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !131, !range !66, !noundef !67
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.thread2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = zext i8 %i.d to i16
  %.lhs.trunc.4 = add nuw nsw i16 %i.ai, 4
  %i.aj = urem i16 %.lhs.trunc.4, 13              ; 2 uses
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.an = load i8, ptr %i.am, align 8, !tbaa !131, !range !66, !noundef !67
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.thread2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = zext i8 %i.d to i16
  %.lhs.trunc.5 = add nuw nsw i16 %i.ap, 5
  %i.aq = urem i16 %.lhs.trunc.5, 13              ; 2 uses
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  %i.au = load i8, ptr %i.at, align 8, !tbaa !131, !range !66, !noundef !67
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.thread2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = zext i8 %i.d to i16
  %.lhs.trunc.6 = add nuw nsw i16 %i.aw, 6
  %i.ax = urem i16 %.lhs.trunc.6, 13              ; 2 uses
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !131, !range !66, !noundef !67
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.thread2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = zext i8 %i.d to i16
  %.lhs.trunc.7 = add nuw nsw i16 %i.bd, 7
  %i.be = urem i16 %.lhs.trunc.7, 13              ; 2 uses
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !131, !range !66, !noundef !67
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %.thread2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = zext i8 %i.d to i16
  %.lhs.trunc.8 = add nuw nsw i16 %i.bk, 8
  %i.bl = urem i16 %.lhs.trunc.8, 13              ; 2 uses
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !131, !range !66, !noundef !67
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.thread2, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = zext i8 %i.d to i16
  %.lhs.trunc.9 = add nuw nsw i16 %i.br, 9
  %i.bs = urem i16 %.lhs.trunc.9, 13              ; 2 uses
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 120
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !131, !range !66, !noundef !67
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %.thread2, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = zext i8 %i.d to i16
  %.lhs.trunc.10 = add nuw nsw i16 %i.by, 10
  %i.bz = urem i16 %.lhs.trunc.10, 13             ; 2 uses
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 120
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !131, !range !66, !noundef !67
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %.thread2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = zext i8 %i.d to i16
  %.lhs.trunc.11 = add nuw nsw i16 %i.cf, 11
  %i.cg = urem i16 %.lhs.trunc.11, 13             ; 2 uses
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 120
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !131, !range !66, !noundef !67
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %.thread2, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.lhs.trunc.12 = add nuw nsw i16 %i.e, 12
  %i.cm = urem i16 %.lhs.trunc.12, 13             ; 2 uses
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = getelementptr inbounds nuw [1192 x i8], ptr %i.f, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 120
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !131, !range !66, !noundef !67
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %.thread2, label %.loopexit

.thread2:                                         ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.preheader
  %.lcssa13 = phi i16 [ %i.h, %.preheader ], [ %i.o, %bb.b ], [ %i.v, %bb.c ], [ %i.ac, %bb.d ], [ %i.aj, %bb.e ], [ %i.aq, %bb.f ], [ %i.ax, %bb.g ], [ %i.be, %bb.h ], [ %i.bl, %bb.i ], [ %i.bs, %bb.j ], [ %i.bz, %bb.k ], [ %i.cg, %bb.l ], [ %i.cm, %bb.m ]
  %.lcssa = phi ptr [ %i.j, %.preheader ], [ %i.q, %bb.b ], [ %i.x, %bb.c ], [ %i.ae, %bb.d ], [ %i.al, %bb.e ], [ %i.as, %bb.f ], [ %i.az, %bb.g ], [ %i.bg, %bb.h ], [ %i.bn, %bb.i ], [ %i.bu, %bb.j ], [ %i.cb, %bb.k ], [ %i.ci, %bb.l ], [ %i.co, %bb.m ] ; 5 uses
  %i.cs = trunc nuw nsw i16 %.lcssa13 to i8
  %i.ct = add nuw nsw i8 %i.cs, 1
  store i8 %i.ct, ptr %i.c, align 1, !tbaa !80
  %i.cu = load i8, ptr %i.b, align 8, !tbaa !80
  %i.cv = add i8 %i.cu, 1                         ; 2 uses
  store i8 %i.cv, ptr %i.b, align 8, !tbaa !80
  %i.cw = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1184) %i.cw, i8 0, i64 1184, i1 false)
  store ptr %i.b, ptr %.lcssa, align 8, !tbaa !139
  %i.cx = icmp eq i8 %i.cv, 13
  br i1 %i.cx, label %bb.n, label %.thread6

bb.n:                                             ; preds = %.thread2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !141 ; 3 uses
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !140
  %.not59 = icmp eq ptr %i.cz, null
  br i1 %.not59, label %.thread6, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store ptr null, ptr %i.da, align 8, !tbaa !141
  store ptr null, ptr %i.cy, align 8, !tbaa !141
  br label %.thread6

.loopexit:                                        ; preds = %bb.m, %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %.400.val, i64 6936
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !48
  %i.dd = tail call ptr @do_cache_alloc(ptr noundef %i.dc) #33 ; 21 uses
  %.not60 = icmp eq ptr %i.dd, null
  br i1 %.not60, label %.thread6, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.de = getelementptr inbounds nuw i8, ptr %.400.val, i64 360 ; 2 uses
  %i.df = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.de) #33 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.400.val, i64 560 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !142
  %i.di = add i64 %i.dh, 16384
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !142
  %i.dj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.de) #33 ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  store i8 1, ptr %i.dk, align 1, !tbaa !80
  store i8 1, ptr %i.dd, align 8, !tbaa !80
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 1344
  store i8 1, ptr %i.dl, align 8, !tbaa !131
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 2536
  store i8 1, ptr %i.dm, align 8, !tbaa !131
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 3728
  store i8 1, ptr %i.dn, align 8, !tbaa !131
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 4920
  store i8 1, ptr %i.do, align 8, !tbaa !131
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 6112
  store i8 1, ptr %i.dp, align 8, !tbaa !131
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 7304
  store i8 1, ptr %i.dq, align 8, !tbaa !131
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 8496
  store i8 1, ptr %i.dr, align 8, !tbaa !131
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 9688
  store i8 1, ptr %i.ds, align 8, !tbaa !131
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 10880
  store i8 1, ptr %i.dt, align 8, !tbaa !131
  %i.du = getelementptr inbounds nuw i8, ptr %i.dd, i64 12072
  store i8 1, ptr %i.du, align 8, !tbaa !131
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 13264
  store i8 1, ptr %i.dv, align 8, !tbaa !131
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 14456
  store i8 1, ptr %i.dw, align 8, !tbaa !131
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  store ptr %.400.val, ptr %i.dy, align 8, !tbaa !146
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !140
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1184) %i.ea, i8 0, i64 1184, i1 false)
  store ptr %i.dd, ptr %i.dz, align 8, !tbaa !139
  br label %.thread6

.thread6:                                         ; preds = %.thread2, %bb.n, %bb.o, %bb.p, %.loopexit
  %.053 = phi ptr [ null, %.loopexit ], [ %i.dz, %bb.p ], [ %.lcssa, %bb.o ], [ %.lcssa, %bb.n ], [ %.lcssa, %.thread2 ]
  ret ptr %.053
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @resp_start_unlinked(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 400        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.b = tail call fastcc ptr @resp_allocate(ptr %.val) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #33 ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 544 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !144
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !144
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #33 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 552 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !143
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !143
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #33 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.q = load i32, ptr %i.p, align 8, !tbaa !71
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.t = load i32, ptr %i.s, align 8, !tbaa !81
  %i.u = trunc i32 %i.t to i16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 126
  store i16 %i.u, ptr %i.x, align 2, !tbaa !116
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 132
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.y, ptr noundef nonnull align 4 dereferenceable(28) %i.z, i64 28, i1 false), !tbaa.struct !145
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !79
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !110
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  store i32 %i.ab, ptr %i.ad, align 8, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @resp_has_stack(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = icmp ne ptr %i.d, null
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local void @out_string(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @item_remove(ptr noundef nonnull %i.d) #33
  store ptr null, ptr %i.c, align 8, !tbaa !103
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %.not13.i = icmp eq ptr %i.f, null
  br i1 %.not13.i, label %resp_reset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #33
  store ptr null, ptr %i.e, align 8, !tbaa !104
  br label %resp_reset.exit

resp_reset.exit:                                  ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.i, i8 0, i64 7, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  %i.k = load i8, ptr %i.j, align 1, !tbaa !147, !range !66, !noundef !67
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.k

bb.e:                                             ; preds = %resp_reset.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 118
  store i8 1, ptr %i.m, align 2, !tbaa !101
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !60
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.16, i32 noundef %i.r, ptr noundef %1) #35 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !56   ; 2 uses
  %.not.i22 = icmp eq i32 %i.u, 1
  br i1 %.not.i22, label %conn_set_state.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.w = icmp sgt i32 %i.v, 2
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !60
  %i.aa = zext i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !62
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.15, i32 noundef %i.z, ptr noundef %i.ac, ptr noundef nonnull @.str.370) #35 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 1, ptr %i.t, align 8, !tbaa !56
  br label %conn_set_state.exit

bb.k:                                             ; preds = %resp_reset.exit
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !60
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.17, i32 noundef %i.ai, ptr noundef %1) #35 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !136
  %.pre25 = load i32, ptr %i.h, align 4, !tbaa !115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = phi i32 [ %.pre25, %bb.l ], [ 0, %bb.k ]
  %i.al = phi i8 [ %.pre, %bb.l ], [ 0, %bb.k ]   ; 2 uses
  %i.am = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41 ; 2 uses
  %i.an = add i64 %i.am, -1023
  %i.ao = icmp ult i64 %i.an, -1025               ; 2 uses
  %spec.select = select i1 %i.ao, ptr @.str.18, ptr %1
  %spec.select21 = select i1 %i.ao, i64 33, i64 %i.am ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 164 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr nonnull align 1 %spec.select, i64 %spec.select21, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %spec.select21
  store i16 2573, ptr %i.aq, align 1
  %i.ar = trunc i64 %spec.select21 to i32
  %i.as = add i32 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.av = zext i8 %i.al to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.av ; 2 uses
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !113
  %i.ax = sext i32 %i.as to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !114
  %i.az = add i8 %i.al, 1
  store i8 %i.az, ptr %i.at, align 4, !tbaa !136
  %i.ba = add nsw i32 %i.ak, %i.as
  store i32 %i.ba, ptr %i.h, align 4, !tbaa !115
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !56 ; 2 uses
  %.not.i23 = icmp eq i32 %i.bc, 1
  br i1 %.not.i23, label %conn_set_state.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.be = icmp sgt i32 %i.bd, 2
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !60
  %i.bi = zext i32 %i.bc to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.15, i32 noundef %i.bh, ptr noundef %i.bk, ptr noundef nonnull @.str.370) #35 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i32 1, ptr %i.bb, align 8, !tbaa !56
  br label %conn_set_state.exit

conn_set_state.exit:                              ; preds = %bb.p, %bb.m, %bb.j, %bb.g
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local void @out_errstring(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  store i8 0, ptr %i.c, align 1, !tbaa !147
  tail call void @out_string(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @out_of_memory(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @out_of_memory.error_prefix, i64 noundef 13) #41
end_hunk_3
begin_hunk_4_@append_stats:bb.a
bb.c:                                             ; preds = %bb.b
  %i.p = zext i32 %i.g to i64
  %i.q = add nuw nsw i64 %i.p, 24                 ; 3 uses
  br i1 %i.o, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %.lr.ph.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %i.q, %i.m
  br i1 %i.r, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.thread, %bb.d
  %.022.i51 = phi i64 [ 1024, %.thread ], [ %i.j, %bb.d ]
  %i.s = phi i64 [ 0, %.thread ], [ %i.l, %bb.d ] ; 2 uses
  %i.t = phi i64 [ 0, %.thread ], [ %i.j, %bb.d ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.12326.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.022.i51, %.lr.ph.i.preheader ]
  %i.u = shl i64 %.12326.i, 1                     ; 4 uses
  %i.v = sub i64 %i.u, %i.s
  %i.w = icmp ugt i64 %i.q, %i.v
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !265

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %i.x = icmp eq i64 %i.u, %i.t
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.d
  %i.y = phi i64 [ %i.l, %bb.d ], [ %i.s, %._crit_edge.i.loopexit ]
  %.not.i = phi i1 [ true, %bb.d ], [ %i.x, %._crit_edge.i.loopexit ]
  %.123.lcssa.i = phi i64 [ %i.j, %bb.d ], [ %i.u, %._crit_edge.i.loopexit ] ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.z = tail call ptr @realloc(ptr noundef %i.n, i64 noundef %.123.lcssa.i) #38 ; 3 uses
  %.not25.not.i = icmp eq ptr %i.z, null
  br i1 %.not25.not.i, label %grow_stats_buf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.z, ptr %i.h, align 8, !tbaa !268
  store i64 %.123.lcssa.i, ptr %i.i, align 8, !tbaa !266
  %.pre42 = load i64, ptr %i.k, align 8, !tbaa !267
  br label %bb.g

grow_stats_buf.exit:                              ; preds = %bb.e
  tail call void @STATS_LOCK() #33
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 24), align 8, !tbaa !76
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 24), align 8, !tbaa !76
  tail call void @STATS_UNLOCK() #33
  br label %.critedge

bb.g:                                             ; preds = %._crit_edge.i, %bb.f
  %i.ac = phi i64 [ %i.y, %._crit_edge.i ], [ %.pre42, %bb.f ]
  %i.ad = phi ptr [ %i.n, %._crit_edge.i ], [ %i.z, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac ; 10 uses
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %1)
  %i.af = tail call noundef i32 @llvm.bswap.i32(i32 %i.g)
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 380
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !269
  store i8 -127, ptr %i.ae, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 16, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i16 %rev.i.i, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  store i16 0, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.af, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 %i.ah, ptr %.sroa.10.0..sroa_idx.i, align 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %.sroa.11.0..sroa_idx.i, align 1
  br i1 %i.a, label %append_bin_stats.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.aj = zext i16 %1 to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr readonly align 1 %0, i64 %i.aj, i1 false)
  %.not21.i = icmp eq i32 %3, 0
  br i1 %.not21.i, label %append_bin_stats.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr readonly align 1 %2, i64 %i.al, i1 false)
  br label %append_bin_stats.exit

append_bin_stats.exit:                            ; preds = %bb.g, %bb.h, %bb.i
  %i.am = load i64, ptr %i.k, align 8, !tbaa !267
  %i.an = add i64 %i.am, %i.q
  store i64 %i.an, ptr %i.k, align 8, !tbaa !267
  br label %.critedge

bb.j:                                             ; preds = %bb.b
  %i.ao = add i32 %i.g, 10
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = phi i64 [ 0, %bb.k ], [ %i.j, %bb.j ]   ; 2 uses
  %i.ar = phi i64 [ 0, %bb.k ], [ %i.l, %bb.j ]   ; 2 uses
  %.022.i28 = phi i64 [ 1024, %bb.k ], [ %i.j, %bb.j ] ; 2 uses
  %.020.i29 = phi i64 [ 0, %bb.k ], [ %i.m, %bb.j ]
  %i.as = icmp ult i64 %.020.i29, %i.ap
  br i1 %i.as, label %.lr.ph.i35, label %._crit_edge.i30

.lr.ph.i35:                                       ; preds = %bb.l, %.lr.ph.i35
  %.12326.i36 = phi i64 [ %i.at, %.lr.ph.i35 ], [ %.022.i28, %bb.l ]
  %i.at = shl i64 %.12326.i36, 1                  ; 3 uses
  %i.au = sub i64 %i.at, %i.ar
  %i.av = icmp ult i64 %i.au, %i.ap
  br i1 %i.av, label %.lr.ph.i35, label %._crit_edge.i30, !llvm.loop !265

._crit_edge.i30:                                  ; preds = %.lr.ph.i35, %bb.l
  %.123.lcssa.i31 = phi i64 [ %.022.i28, %bb.l ], [ %i.at, %.lr.ph.i35 ] ; 4 uses
  %.not.i32 = icmp eq i64 %.123.lcssa.i31, %i.aq
  br i1 %.not.i32, label %bb.o, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i30
  %i.aw = tail call ptr @realloc(ptr noundef %i.n, i64 noundef %.123.lcssa.i31) #38 ; 3 uses
  %.not25.not.i33 = icmp eq ptr %i.aw, null
  br i1 %.not25.not.i33, label %grow_stats_buf.exit37, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !268
  store i64 %.123.lcssa.i31, ptr %i.i, align 8, !tbaa !266
  %.pre = load i64, ptr %i.k, align 8, !tbaa !267
  br label %bb.o

grow_stats_buf.exit37:                            ; preds = %bb.m
  tail call void @STATS_LOCK() #33
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 24), align 8, !tbaa !76
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 24), align 8, !tbaa !76
  tail call void @STATS_UNLOCK() #33
  br label %.critedge

bb.o:                                             ; preds = %._crit_edge.i30, %bb.n
  %i.az = phi i64 [ %i.aq, %._crit_edge.i30 ], [ %.123.lcssa.i31, %bb.n ]
  %i.ba = phi i64 [ %i.ar, %._crit_edge.i30 ], [ %.pre, %bb.n ] ; 2 uses
  %i.bb = phi ptr [ %i.n, %._crit_edge.i30 ], [ %i.aw, %bb.n ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba ; 3 uses
  %i.bd = xor i64 %i.ba, -1
  %i.be = add i64 %i.az, %i.bd
  %i.bf = icmp eq i32 %3, 0                       ; 2 uses
  %or.cond.i = and i1 %i.a, %i.bf
  %sext.i = shl i64 %i.be, 32
  %i.bg = ashr exact i64 %sext.i, 32              ; 3 uses
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bh = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.bc, i64 noundef %i.bg, ptr noundef nonnull @.str.384) #33
  br label %append_ascii_stats.exit

bb.q:                                             ; preds = %bb.o
  br i1 %i.bf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.bc, i64 noundef %i.bg, ptr noundef nonnull @.str.385, ptr noundef %0) #33
  br label %append_ascii_stats.exit

bb.s:                                             ; preds = %bb.q
  %i.bj = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.bc, i64 noundef %i.bg, ptr noundef nonnull @.str.386, ptr noundef %0, ptr noundef %2) #33
  br label %append_ascii_stats.exit

append_ascii_stats.exit:                          ; preds = %bb.p, %bb.r, %bb.s
  %.0.i = phi i32 [ %i.bh, %bb.p ], [ %i.bi, %bb.r ], [ %i.bj, %bb.s ]
  %i.bk = zext i32 %.0.i to i64
  %i.bl = load i64, ptr %i.k, align 8, !tbaa !267
  %i.bm = add i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.k, align 8, !tbaa !267
  br label %.critedge

.critedge:                                        ; preds = %grow_stats_buf.exit37, %grow_stats_buf.exit, %append_ascii_stats.exit, %append_bin_stats.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4) i32 @do_store_item(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, i64 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 5 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !88
  %i.d = shl i16 %i.c, 2
  %i.e = and i16 %i.d, 8
  %i.f = zext nneg i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !80
  %i.j = zext i8 %i.i to i64
  %i.k = tail call ptr @do_item_get(ptr noundef nonnull %i.g, i64 noundef %i.j, i32 noundef %3, ptr noundef %2, i1 noundef zeroext false) #33 ; 22 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr %i.b, align 2, !tbaa !88   ; 3 uses
  %i.m = and i16 %i.l, 2
  %.not123 = icmp eq i16 %i.m, 0
  br i1 %.not123, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.a, align 8, !tbaa !80
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.n, %bb.c ], [ 0, %bb.b ]    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 38 ; 3 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !88   ; 2 uses
  %i.r = and i16 %i.q, 2
  %.not124 = icmp eq i16 %i.r, 0
  br i1 %.not124, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !80
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %i.t, %bb.e ], [ 0, %bb.d ]    ; 2 uses
  %.not171 = icmp eq i64 %i.o, 0
  br i1 %.not171, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i64 %i.o, %i.u
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp ult i64 %i.o, %i.u
  %or.cond136 = select i1 %7, i1 %i.w, i1 false
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %or.cond = phi i1 [ true, %bb.h ], [ false, %bb.f ], [ false, %bb.g ]
  %i.x = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ]
  %i.y = phi i1 [ %or.cond136, %bb.h ], [ false, %bb.f ], [ false, %bb.g ]
  switch i32 %1, label %.thread167 [
    i32 1, label %bb.j
    i32 6, label %bb.k
    i32 4, label %bb.w
    i32 5, label %bb.w
    i32 7, label %bb.w
    i32 8, label %bb.w
    i32 3, label %.thread
    i32 2, label %.thread
  ]

bb.j:                                             ; preds = %bb.i
  tail call void @do_item_update(ptr noundef nonnull %i.k) #33
  br label %.thread167

bb.k:                                             ; preds = %bb.i
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.aa = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.z) #33 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !80
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 672 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !149
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !149
  %i.aj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.z) #33 ; 0 uses
  br label %.thread

bb.m:                                             ; preds = %bb.k
  br i1 %i.y, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.al, ptr %i.am, align 4, !tbaa !16
  %i.an = or i16 %i.l, 2048
  store i16 %i.an, ptr %i.b, align 2, !tbaa !88
  %i.ao = load i16, ptr %i.p, align 2, !tbaa !88
  %i.ap = and i16 %i.ao, 512
  %.not131 = icmp eq i16 %i.ap, 0
  br i1 %.not131, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = or i16 %i.l, 2560
  store i16 %i.aq, ptr %i.b, align 2, !tbaa !88
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.as = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ar) #33 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.au = load i8, ptr %i.at, align 8, !tbaa !80
  %i.av = and i8 %i.au, 63
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 672 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !149
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !149
  %i.bb = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ar) #33 ; 0 uses
  br label %.thread

bb.q:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.bd = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bc) #33 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !80
  %i.bg = and i8 %i.bf, 63
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 680 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !150
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !150
  %i.bm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bc) #33 ; 0 uses
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.r, label %.thread167

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.bq = load i16, ptr %i.p, align 2, !tbaa !88
  %i.br = and i16 %i.bq, 2
  %.not129 = icmp eq i16 %i.br, 0
  br i1 %.not129, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !80
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bu = phi i64 [ %i.bt, %bb.s ], [ 0, %bb.r ]
  %i.bv = load i16, ptr %i.b, align 2, !tbaa !88
  %i.bw = and i16 %i.bv, 2
  %.not130 = icmp eq i16 %i.bw, 0
  br i1 %.not130, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !80
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.by = phi i64 [ %i.bx, %bb.u ], [ 0, %bb.t ]
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.20, i64 noundef %i.bu, i64 noundef %i.by) #35 ; 0 uses
  br label %.thread167

bb.w:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  br i1 %or.cond, label %.thread167, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = zext i16 %i.q to i32                    ; 3 uses
  %i.cb = and i32 %i.ca, 128
  %.not125 = icmp eq i32 %i.cb, 0
  br i1 %.not125, label %bb.y, label %.thread167

bb.y:                                             ; preds = %bb.x
  %i.cc = and i32 %i.ca, 256
  %.not126 = icmp eq i32 %i.cc, 0
  br i1 %.not126, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 41
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !80
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 49
  %i.ci = shl nuw nsw i32 %i.ca, 2
  %i.cj = and i32 %i.ci, 8
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 1, !tbaa !16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.0107 = phi i32 [ %i.cm, %bb.z ], [ 0, %bb.y ]
  %i.cn = load i8, ptr %i.h, align 1, !tbaa !80
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !16
  %i.cv = add i32 %i.cs, -2
  %i.cw = add i32 %i.cv, %i.cu
  %i.cx = tail call ptr @do_item_alloc(ptr noundef nonnull %i.g, i64 noundef %i.co, i32 noundef %.0107, i32 noundef %i.cq, i32 noundef %i.cw) #33 ; 14 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %.thread167, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 38
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !88
  %i.db = zext i16 %i.da to i32                   ; 3 uses
  %i.dc = and i32 %i.db, 32
  %.not.i = icmp eq i32 %i.dc, 0                  ; 2 uses
  switch i32 %1, label %bb.af [
    i32 7, label %bb.ac
    i32 4, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  br i1 %.not.i, label %.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load i32, ptr %i.ct, align 8, !tbaa !16
  %i.de = add nsw i32 %i.dd, -2
  %i.df = tail call fastcc i32 @_store_item_copy_chunks(ptr noundef nonnull %i.cx, ptr noundef nonnull readonly %i.k, i32 noundef %i.de)
  %i.dg = icmp eq i32 %i.df, -1
  br i1 %i.dg, label %.thread.thread159, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load i32, ptr %i.cr, align 8, !tbaa !16
  %i.di = tail call fastcc i32 @_store_item_copy_chunks(ptr noundef nonnull %i.cx, ptr noundef nonnull readonly %0, i32 noundef %i.dh)
  %i.dj = icmp eq i32 %i.di, -1
  br i1 %i.dj, label %.thread.thread159, label %_store_item_copy_data.exit

bb.af:                                            ; preds = %bb.ab
  br i1 %.not.i, label %.sink.split.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = load i32, ptr %i.cr, align 8, !tbaa !16
  %i.dl = add nsw i32 %i.dk, -2
  %i.dm = tail call fastcc i32 @_store_item_copy_chunks(ptr noundef nonnull %i.cx, ptr noundef nonnull readonly %0, i32 noundef %i.dl)
  %i.dn = icmp eq i32 %i.dm, -1
  br i1 %i.dn, label %.thread.thread159, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.do = load i32, ptr %i.ct, align 8, !tbaa !16
  %i.dp = tail call fastcc i32 @_store_item_copy_chunks(ptr noundef nonnull %i.cx, ptr noundef nonnull readonly %i.k, i32 noundef %i.do)
  %i.dq = icmp eq i32 %i.dp, -1
  br i1 %i.dq, label %.thread.thread159, label %_store_item_copy_data.exit

.sink.split.i:                                    ; preds = %bb.af, %bb.ac
  %.sink127.i = phi ptr [ %i.k, %bb.ac ], [ %0, %bb.af ] ; 4 uses
  %.sink95.i = phi ptr [ %0, %bb.ac ], [ %i.k, %bb.af ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 41
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !80
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = lshr i32 %i.db, 6
  %i.dy = and i32 %i.dx, 4
  %i.dz = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dz
  %i.eb = shl nuw nsw i32 %i.db, 2
  %i.ec = and i32 %i.eb, 8
  %i.ed = zext nneg i32 %i.ec to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %.sink127.i, i64 41
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !80
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.sink127.i, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 49
  %i.ek = getelementptr inbounds nuw i8, ptr %.sink127.i, i64 38
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !88
  %i.em = zext i16 %i.el to i32                   ; 2 uses
  %i.en = lshr i32 %i.em, 6
  %i.eo = and i32 %i.en, 4
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ep
  %i.er = shl nuw nsw i32 %i.em, 2
  %i.es = and i32 %i.er, 8
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %.sink127.i, i64 32 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !16
  %i.ex = sext i32 %i.ew to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr nonnull align 1 %i.eu, i64 %i.ex, i1 false)
  %i.ey = getelementptr i8, ptr %i.dv, i64 %i.dz
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ed
  %i.fa = load i32, ptr %i.ev, align 8, !tbaa !16
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr i8, ptr %i.ez, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -1
  %i.fe = getelementptr inbounds nuw i8, ptr %.sink95.i, i64 41
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !80
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.sink95.i, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 49
  %i.fj = getelementptr inbounds nuw i8, ptr %.sink95.i, i64 38
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !88
  %i.fl = zext i16 %i.fk to i32                   ; 2 uses
  %i.fm = lshr i32 %i.fl, 6
  %i.fn = and i32 %i.fm, 4
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fo
  %i.fq = shl nuw nsw i32 %i.fl, 2
  %i.fr = and i32 %i.fq, 8
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %.sink95.i, i64 32
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !16
  %i.fw = sext i32 %i.fv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fd, ptr nonnull align 1 %i.ft, i64 %i.fw, i1 false)
  br label %_store_item_copy_data.exit

_store_item_copy_data.exit:                       ; preds = %.sink.split.i, %bb.ah, %bb.ae
  %.not128 = icmp eq ptr %4, null
  br i1 %.not128, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %_store_item_copy_data.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !16
  store i32 %i.fy, ptr %4, align 4, !tbaa !16
  br label %.thread

.thread167:                                       ; preds = %bb.j, %bb.q, %bb.x, %bb.aa, %bb.i, %bb.v, %bb.w
  %.1110.ph = phi i32 [ 0, %bb.j ], [ 2, %bb.q ], [ 0, %bb.x ], [ 0, %bb.aa ], [ 0, %bb.i ], [ 2, %bb.v ], [ 2, %bb.w ]
  tail call void @do_item_remove(ptr noundef nonnull %i.k) #33
  br label %.thread148

.thread.thread159:                                ; preds = %bb.ae, %bb.ah, %bb.ag, %bb.ad
  tail call void @do_item_remove(ptr noundef nonnull %i.k) #33
  br label %bb.aj

.thread:                                          ; preds = %bb.ai, %_store_item_copy_data.exit, %bb.l, %bb.p, %bb.i, %bb.i
  %.0111 = phi ptr [ %i.cx, %bb.ai ], [ %i.cx, %_store_item_copy_data.exit ], [ %0, %bb.l ], [ %0, %bb.p ], [ %0, %bb.i ], [ %0, %bb.i ] ; 3 uses
  %.0108 = phi ptr [ %i.cx, %bb.ai ], [ %i.cx, %_store_item_copy_data.exit ], [ null, %bb.l ], [ null, %bb.p ], [ null, %bb.i ], [ null, %bb.i ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 6960
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !270
  tail call void @storage_delete(ptr noundef %i.ga, ptr noundef nonnull %i.k) #33
  %i.gb = tail call i32 @item_replace(ptr noundef nonnull %i.k, ptr noundef nonnull %.0111, i32 noundef %3, i64 noundef %6) #33 ; 0 uses
  tail call void @do_item_remove(ptr noundef nonnull %i.k) #33
  %.not132 = icmp eq ptr %.0108, null
  br i1 %.not132, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %.thread.thread159, %.thread
  %.1110166 = phi i32 [ 0, %.thread.thread159 ], [ 1, %.thread ]
  %.0111142165 = phi ptr [ %0, %.thread.thread159 ], [ %.0111, %.thread ]
  %.0108143164 = phi ptr [ %i.cx, %.thread.thread159 ], [ %.0108, %.thread ]
  tail call void @do_item_remove(ptr noundef nonnull %.0108143164) #33
  br label %bb.am

.critedge:                                        ; preds = %bb.a
  switch i32 %1, label %.thread148 [
    i32 1, label %bb.al
    i32 2, label %bb.al
    i32 7, label %bb.al
    i32 8, label %bb.al
    i32 6, label %bb.ak
  ]

bb.ak:                                            ; preds = %.critedge
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.gd = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.gc) #33 ; 0 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 472 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !271
  %i.gg = add i64 %i.gf, 1
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !271
  %i.gh = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gc) #33 ; 0 uses
  br label %.thread148

bb.al:                                            ; preds = %.critedge, %.critedge, %.critedge, %.critedge
  %i.gi = tail call i32 @do_item_link(ptr noundef nonnull %0, i32 noundef %3, i64 noundef %6) #33 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %.thread, %bb.aj, %bb.al
  %.1112 = phi ptr [ %.0111, %.thread ], [ %0, %bb.al ], [ %.0111142165, %bb.aj ] ; 4 uses
  %.3 = phi i32 [ 1, %.thread ], [ 1, %bb.al ], [ %.1110166, %bb.aj ] ; 2 uses
  %i.gj = icmp eq i32 %.3, 1
  %i.gk = icmp ne ptr %5, null
  %or.cond3 = and i1 %i.gk, %i.gj
  br i1 %or.cond3, label %bb.an, label %.thread148

bb.an:                                            ; preds = %bb.am
  %i.gl = getelementptr inbounds nuw i8, ptr %.1112, i64 38
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !88
  %i.gn = and i16 %i.gm, 2
  %.not133 = icmp eq i16 %i.gn, 0
  br i1 %.not133, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.go = getelementptr inbounds nuw i8, ptr %.1112, i64 48
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !80
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.gq = phi i64 [ %i.gp, %bb.ao ], [ 0, %bb.an ]
  store i64 %i.gq, ptr %5, align 8, !tbaa !15
  br label %.thread148

.thread148:                                       ; preds = %.thread167, %.critedge, %bb.ak, %bb.am, %bb.ap
  %.3153 = phi i32 [ 1, %bb.ap ], [ %.3, %bb.am ], [ 3, %bb.ak ], [ 0, %.critedge ], [ %.1110.ph, %.thread167 ] ; 2 uses
  %.1112152 = phi ptr [ %.1112, %bb.ap ], [ %.1112, %bb.am ], [ %0, %bb.ak ], [ %0, %.critedge ], [ %0, %.thread167 ] ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 6968
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !133 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.thread148
  %i.gu = load i32, ptr @logger_key, align 4, !tbaa !16
  %i.gv = tail call ptr @pthread_getspecific(i32 noundef %i.gu) #33
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread148
  %.0 = phi ptr [ %i.gv, %bb.aq ], [ %i.gs, %.thread148 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0, i64 84
  %i.gx = load i16, ptr %i.gw, align 4, !tbaa !127
  %i.gy = and i16 %i.gx, 8
  %.not134 = icmp eq i16 %i.gy, 0
  br i1 %.not134, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gz = getelementptr inbounds nuw i8, ptr %.1112152, i64 48
  %i.ha = getelementptr inbounds nuw i8, ptr %.1112152, i64 38
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !88
  %i.hc = shl i16 %i.hb, 2
  %i.hd = and i16 %i.hc, 8
  %i.he = zext nneg i16 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %.1112152, i64 41
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !80
  %i.hi = zext i8 %i.hh to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %.1112152, i64 32
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !16
  %i.hl = getelementptr inbounds nuw i8, ptr %.1112152, i64 28
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !16
  %i.hn = getelementptr inbounds nuw i8, ptr %.1112152, i64 40
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !80
  %i.hp = and i8 %i.ho, 63
  %i.hq = zext nneg i8 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !272
  %i.ht = tail call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %.0, i32 noundef 3, ptr noundef null, i32 noundef %.3153, i32 noundef %1, ptr noundef nonnull %i.hf, i32 noundef %i.hi, i32 noundef %i.hk, i32 noundef %i.hm, i32 noundef %i.hq, i32 noundef %i.hs) #33 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  ret i32 %.3153
}

declare ptr @do_item_get(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @do_item_update(ptr noundef) local_unnamed_addr #2

declare ptr @do_item_alloc(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @storage_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @item_replace(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @do_item_remove(ptr noundef) local_unnamed_addr #2

declare i32 @do_item_link(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @write_and_free(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !136   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.h, align 8, !tbaa !113
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !114
  %i.k = add i8 %i.e, 1
  store i8 %i.k, ptr %i.d, align 4, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !115
  %i.n = add nsw i32 %i.m, %2
  store i32 %i.n, ptr %i.l, align 4, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %.not.i = icmp eq i32 %i.p, 1
  br i1 %.not.i, label %conn_set_state.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.r = icmp sgt i32 %i.q, 2
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !60
  %i.v = zext i32 %i.p to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.15, i32 noundef %i.u, ptr noundef %i.x, ptr noundef nonnull @.str.370) #35 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %i.o, align 8, !tbaa !56
  br label %conn_set_state.exit

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !73
  %i.ab = icmp eq i32 %i.aa, 4
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @write_bin_error(ptr noundef nonnull %0, i32 noundef 130, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.21, i64 13), i32 noundef 0) #33
  br label %conn_set_state.exit

bb.h:                                             ; preds = %bb.f
  tail call void @out_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.21)
  br label %conn_set_state.exit

conn_set_state.exit:                              ; preds = %bb.h, %bb.g, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @append_stat(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ...) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 127, ptr noundef %3, ptr noundef nonnull %4) #33
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41
  %i.d = trunc i64 %i.c to i16
  call void %1(ptr noundef nonnull %0, i16 noundef zeroext %i.d, ptr noundef nonnull %i.a, i32 noundef %i.b, ptr noundef %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #18

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #18

; Function Attrs: nounwind uwtable
define dso_local void @server_stats(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.thread_stats, align 8       ; 37 uses
  %3 = alloca %struct.slab_stats, align 8         ; 11 uses
  %4 = alloca %struct.rusage, align 8             ; 7 uses
  %i.a = tail call i32 @getpid() #33
  %i.b = load volatile i32, ptr @current_time, align 4, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @threadlocal_stats_aggregate(ptr noundef nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @slab_stats_aggregate(ptr noundef nonnull %2, ptr noundef nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.c = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %4) #33 ; 0 uses
  call void @STATS_LOCK() #33
  %i.d = sext i32 %i.a to i64
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.22, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.23, i64 noundef %i.d)
  %i.e = add i32 %i.b, -60
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.24, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %i.e)
  %i.f = zext i32 %i.b to i64
  %i.g = load i64, ptr @process_started, align 8, !tbaa !15
  %i.h = add nsw i64 %i.g, %i.f
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.26, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.27, i64 noundef %i.h)
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.28, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30)
  %i.i = call ptr @event_get_version() #33
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.31, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef %i.i)
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.32, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef 64)
  %i.j = load i64, ptr %4, align 8, !tbaa !274
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !275
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.34, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.35, i64 noundef %i.j, i64 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !276
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !277
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.36, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.35, i64 noundef %i.n, i64 noundef %i.p)
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 8), align 8, !tbaa !68
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.37, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %i.q)
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 16), align 8, !tbaa !129
  %i.s = add i64 %i.r, -1
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.38, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.39, i64 noundef %i.s)
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 8), align 8, !tbaa !130
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.40, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.39, i64 noundef %i.t)
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 133), align 1, !tbaa !65, !range !66, !noundef !67
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 16), align 8, !tbaa !70
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.41, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.39, i64 noundef %i.w)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 36), align 4, !tbaa !123
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.42, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.z = load i64, ptr %i.y, align 8, !tbaa !278
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.43, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.39, i64 noundef %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !279
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.44, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.39, i64 noundef %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !280
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.45, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.39, i64 noundef %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 6424
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !281
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.46, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.39, i64 noundef %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 6432
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !282
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.47, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.39, i64 noundef %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 6440
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !283
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.48, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.39, i64 noundef %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !284
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.49, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.39, i64 noundef %i.al)
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 40), align 8, !tbaa !151
  call void (ptr, ptr, ptr, ptr, ...) @append_stat(ptr noundef nonnull @.str.50, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !285
end_hunk_4
begin_hunk_5_@process_stats_conns:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %conn_to_str.exit

conn_to_str.exit:                                 ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.au = trunc nuw nsw i64 %indvars.iv to i32    ; 5 uses
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.196, i32 noundef %i.au, ptr noundef nonnull @.str.198) #33
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.f) #33
  %i.ax = trunc i32 %i.av to i16
  call void %0(ptr noundef nonnull %i.c, i16 noundef zeroext %i.ax, ptr noundef nonnull %i.d, i32 noundef %i.aw, ptr noundef %1) #33
  %i.ay = load i32, ptr %i.w, align 8, !tbaa !56  ; 2 uses
  %.not49 = icmp eq i32 %i.ay, 0
  br i1 %.not49, label %bb.m, label %bb.k

bb.k:                                             ; preds = %conn_to_str.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !71
  %i.bb = icmp eq i32 %i.ba, 2
  %i.bc = icmp eq i32 %i.ay, 3
  %or.cond = and i1 %i.bc, %i.bb
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.196, i32 noundef %i.au, ptr noundef nonnull @.str.199) #33
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.g) #33
  %i.bf = trunc i32 %i.bd to i16
  call void %0(ptr noundef nonnull %i.c, i16 noundef zeroext %i.bf, ptr noundef nonnull %i.d, i32 noundef %i.be, ptr noundef %1) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %conn_to_str.exit
  %i.bg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.196, i32 noundef %i.au, ptr noundef nonnull @.str.200) #33
  %i.bh = load i32, ptr %i.w, align 8, !tbaa !56
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.bl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.29, ptr noundef %i.bk) #33
  %i.bm = trunc i32 %i.bg to i16
  call void %0(ptr noundef nonnull %i.c, i16 noundef zeroext %i.bm, ptr noundef nonnull %i.d, i32 noundef %i.bl, ptr noundef %1) #33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 252 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !92
  %.not50 = icmp eq i32 %i.bo, 0
  br i1 %.not50, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.196, i32 noundef %i.au, ptr noundef nonnull @.str.201) #33
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !92
  %i.br = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.33, i32 noundef %i.bq) #33
  %i.bs = trunc i32 %i.bp to i16
  call void %0(ptr noundef nonnull %i.c, i16 noundef zeroext %i.bs, ptr noundef nonnull %i.d, i32 noundef %i.br, ptr noundef %1) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.196, i32 noundef %i.au, ptr noundef nonnull @.str.202) #33
  %i.bu = load volatile i32, ptr @current_time, align 4, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !55
  %i.bx = sub i32 %i.bu, %i.bw
  %i.by = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.33, i32 noundef %i.bx) #33
  %i.bz = trunc i32 %i.bt to i16
  call void %0(ptr noundef nonnull %i.c, i16 noundef zeroext %i.bz, ptr noundef nonnull %i.d, i32 noundef %i.by, ptr noundef %1) #33
  %.pre = load ptr, ptr @conns, align 8, !tbaa !119 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.o, %bb.d
  %i.ca = phi ptr [ %i.j, %.lr.ph ], [ %.pre, %bb.o ], [ %i.t, %bb.d ]
  %i.cb = phi ptr [ %i.k, %.lr.ph ], [ %.pre, %bb.o ], [ %i.t, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = load i32, ptr @max_fds, align 4, !tbaa !16
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %.lr.ph, label %._crit_edge, !llvm.loop !343

._crit_edge:                                      ; preds = %bb.p, %bb.a
  call void @llvm.stackrestore.p0(ptr %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #18

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #18

; Function Attrs: nounwind uwtable
define dso_local ptr @limited_get(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %6) local_unnamed_addr #1 {
bb.a:
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @item_touch(ptr noundef %0, i64 noundef %1, i32 noundef %3, ptr noundef %2) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @item_get(ptr noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %5) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ]  ; 4 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 36
  %i.d = load i16, ptr %i.c, align 4, !tbaa !88
  %i.e = icmp ugt i16 %i.d, -5536
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @item_remove(ptr noundef nonnull %.0) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %storemerge = phi i8 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.1 = phi ptr [ null, %bb.f ], [ %.0, %bb.e ], [ null, %bb.d ]
  store i8 %storemerge, ptr %6, align 1, !tbaa !134
  ret ptr %.1
}

declare ptr @item_touch(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @item_get(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @limited_get_locked(ptr noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @item_get_locked(ptr noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) #33 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.c = load i16, ptr %i.b, align 4, !tbaa !88
  %i.d = icmp ugt i16 %i.c, -5536
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @do_item_remove(ptr noundef nonnull %i.a) #33
  %i.e = load i32, ptr %4, align 4, !tbaa !16
  tail call void @item_unlock(i32 noundef %i.e) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %storemerge = phi i8 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.0 = phi ptr [ null, %bb.c ], [ %i.a, %bb.b ], [ null, %bb.a ]
  store i8 %storemerge, ptr %5, align 1, !tbaa !134
  ret ptr %.0
}

declare ptr @item_get_locked(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @item_unlock(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 5) i32 @do_add_delta(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, i64 noundef %4, ptr noundef %5, ptr nofree noundef captures(address_is_null) %6, i32 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = tail call ptr @do_item_get(ptr noundef %1, i64 noundef %2, i32 noundef %7, ptr noundef %0, i1 noundef zeroext false) #33 ; 21 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp slt i32 %i.d, 3
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 38 ; 6 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !88
  %i.h = zext i16 %i.g to i32                     ; 4 uses
  %i.i = and i32 %i.h, 160
  %.not106 = icmp eq i32 %i.i, 0
  br i1 %.not106, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @do_item_remove(ptr noundef nonnull %i.b) #33
  br label %bb.ao

bb.e:                                             ; preds = %bb.c
  %.not107 = icmp eq ptr %6, null                 ; 2 uses
  br i1 %.not107, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i64, ptr %6, align 8, !tbaa !15     ; 2 uses
  %.not108 = icmp eq i64 %i.j, 0
  br i1 %.not108, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i32 %i.h, 2
  %.not109 = icmp eq i32 %i.k, 0
  br i1 %.not109, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !80
  %i.n = icmp eq i64 %i.m, %i.j
  br i1 %i.n, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h
  tail call void @do_item_remove(ptr noundef nonnull %i.b) #33
  br label %bb.ao

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 41 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !80
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = lshr i32 %i.h, 6
  %i.v = and i32 %i.u, 4
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.y = shl nuw nsw i32 %i.h, 2
  %i.z = and i32 %i.y, 8
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa
  %i.ac = call zeroext i1 @safe_strtoull(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.a) #33
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @do_item_remove(ptr noundef nonnull %i.b) #33
  br label %bb.ao

bb.k:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %storemerge = call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 %4)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ag = add i64 %i.ad, %4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %storemerge.sink = phi i64 [ %storemerge, %bb.l ], [ %i.ag, %bb.m ]
  %.sink148 = phi i64 [ 696, %bb.l ], [ 688, %bb.m ]
  store i64 %storemerge.sink, ptr %i.a, align 8, !tbaa !15
  %i.ah = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ae) #33 ; 0 uses
  %i.ai = load i8, ptr %i.af, align 8, !tbaa !80
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sink148 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !15
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !15
  %i.ap = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ae) #33 ; 0 uses
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !15
  %i.ar = call ptr @itoa_u64(i64 noundef %i.aq, ptr noundef %5) #33 ; 0 uses
  %i.as = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #41 ; 3 uses
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = add nsw i32 %i.at, 2                    ; 2 uses
  %i.av = load i32, ptr %i.c, align 8, !tbaa !16
  %.not113 = icmp sle i32 %i.au, %i.av
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !88 ; 3 uses
  %i.aw = icmp eq i16 %.pre, 2
  %or.cond = select i1 %.not113, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  call void @item_stats_sizes_remove(ptr noundef nonnull %i.b) #33
  %i.ax = load i16, ptr %i.f, align 2, !tbaa !88
  %i.ay = and i16 %i.ax, 2
  %.not125 = icmp eq i16 %i.ay, 0
  br i1 %.not125, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 104), align 8, !tbaa !173, !range !66, !noundef !67
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = call i64 @get_cas_id() #33
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bc = phi i64 [ %i.bb, %bb.q ], [ 0, %bb.p ]
  store i64 %i.bc, ptr %i.o, align 8, !tbaa !80
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  call void @item_stats_sizes_add(ptr noundef nonnull %i.b) #33
  %i.bd = load i8, ptr %i.p, align 1, !tbaa !80
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i16, ptr %i.f, align 2, !tbaa !88
  %i.bi = zext i16 %i.bh to i32                   ; 2 uses
  %i.bj = lshr i32 %i.bi, 6
  %i.bk = and i32 %i.bj, 4
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl
  %i.bn = shl nuw nsw i32 %i.bi, 2
  %i.bo = and i32 %i.bn, 8
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp ; 2 uses
  %sext128 = shl i64 %i.as, 32
  %i.br = ashr exact i64 %sext128, 32             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull align 1 %5, i64 %i.br, i1 false)
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.c, align 8, !tbaa !16
  %reass.sub = sub i32 %i.bt, %i.at
  %i.bu = add i32 %reass.sub, -2
  %i.bv = sext i32 %i.bu to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bs, i8 32, i64 %i.bv, i1 false)
  call void @do_item_update(ptr noundef nonnull %i.b) #33
  br label %bb.ah

._crit_edge:                                      ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bx = icmp ugt i16 %.pre, 1
  br i1 %i.bx, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %._crit_edge
  %i.by = load i16, ptr %i.f, align 2, !tbaa !88  ; 2 uses
  %i.bz = zext i16 %i.by to i32                   ; 2 uses
  %i.ca = and i32 %i.bz, 256
  %.not115 = icmp eq i32 %i.ca, 0
  %.pre134 = load i8, ptr %i.p, align 1, !tbaa !80
  %.pre136 = zext i8 %.pre134 to i64              ; 2 uses
  br i1 %.not115, label %._crit_edge135, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 %.pre136
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cd = shl nuw nsw i32 %i.bz, 2
  %i.ce = and i32 %i.cd, 8
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 1, !tbaa !16
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %bb.t, %bb.u
  %.0 = phi i32 [ %i.ch, %bb.u ], [ 0, %bb.t ]
  %i.ci = shl i16 %i.by, 2
  %i.cj = and i16 %i.ci, 8
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !16
  %i.co = call ptr @do_item_alloc(ptr noundef nonnull %i.cl, i64 noundef %.pre136, i32 noundef %.0, i32 noundef %i.cn, i32 noundef %i.au) #33 ; 6 uses
  %.not124 = icmp eq ptr %i.co, null
  br i1 %.not124, label %.thread133, label %bb.v

.thread133:                                       ; preds = %._crit_edge135
  call void @do_item_remove(ptr noundef nonnull %i.b) #33
  br label %bb.ao

bb.v:                                             ; preds = %._crit_edge135
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 41
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !80
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 38 ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !88
  %i.cx = zext i16 %i.cw to i32                   ; 2 uses
  %i.cy = lshr i32 %i.cx, 6
  %i.cz = and i32 %i.cy, 4
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.da
  %i.dc = shl nuw nsw i32 %i.cx, 2
  %i.dd = and i32 %i.dc, 8
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de ; 2 uses
  %sext = shl i64 %i.as, 32
  %i.dg = ashr exact i64 %sext, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %5, i64 %i.dg, i1 false)
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  store i16 2573, ptr %i.dh, align 1
  %i.di = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 104), align 8, !tbaa !173, !range !66, !noundef !67
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dk = call i64 @get_cas_id() #33
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.dl = phi i64 [ %i.dk, %bb.w ], [ 0, %bb.v ]
  %i.dm = call i32 @item_replace(ptr noundef nonnull %i.b, ptr noundef nonnull %i.co, i32 noundef %7, i64 noundef %i.dl) #33 ; 0 uses
  %i.dn = load i16, ptr %i.f, align 2, !tbaa !88
  %i.do = and i16 %i.dn, 2
  %.not122 = icmp eq i16 %i.do, 0
  br i1 %.not122, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 104), align 8, !tbaa !173, !range !66, !noundef !67
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dr = load i16, ptr %i.cv, align 2, !tbaa !88
  %i.ds = and i16 %i.dr, 2
  %.not123 = icmp eq i16 %i.ds, 0
  br i1 %.not123, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = load i64, ptr %i.cp, align 8, !tbaa !80
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.z
  %i.du = phi i64 [ 0, %bb.z ], [ %i.dt, %bb.aa ], [ 0, %bb.y ]
  store i64 %i.du, ptr %i.o, align 8, !tbaa !80
  br label %bb.ac

bb.ac:                                            ; preds = %bb.x, %bb.ab
  call void @do_item_remove(ptr noundef nonnull %i.co) #33
  br label %bb.ah

bb.ad:                                            ; preds = %._crit_edge
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %.not114 = icmp eq i32 %i.dv, 0
  br i1 %.not114, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite = call i64 @fwrite(ptr nonnull @.str.203, i64 38, i64 1, ptr %i.dw) #37 ; 0 uses
  %.pr = load i16, ptr %i.bw, align 4, !tbaa !88
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dx = phi i16 [ %.pr, %bb.ae ], [ %.pre, %bb.ad ]
  %i.dy = icmp eq i16 %i.dx, 1
  br i1 %i.dy, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  call void @do_item_remove(ptr noundef nonnull %i.b) #33
  br label %bb.ao

bb.ah:                                            ; preds = %bb.ac, %bb.s
  br i1 %.not107, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load i16, ptr %i.f, align 2, !tbaa !88
  %i.ea = and i16 %i.dz, 2
  %.not131 = icmp eq i16 %i.ea, 0
  br i1 %.not131, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = load i64, ptr %i.o, align 8, !tbaa !80
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.ec = phi i64 [ %i.eb, %bb.aj ], [ 0, %bb.ai ]
  store i64 %i.ec, ptr %6, align 8, !tbaa !15
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.not132 = icmp eq ptr %8, null
  br i1 %.not132, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %i.b, ptr %8, align 8, !tbaa !346
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  call void @do_item_remove(ptr noundef nonnull %i.b) #33
  br label %bb.ao

bb.ao:                                            ; preds = %.thread133, %bb.am, %bb.an, %bb.af, %bb.ag, %bb.a, %bb.j, %.critedge, %bb.d
  %.1 = phi i32 [ 1, %bb.d ], [ 4, %.critedge ], [ 3, %bb.af ], [ 2, %.thread133 ], [ 3, %bb.a ], [ 1, %bb.j ], [ 3, %bb.ag ], [ 0, %bb.an ], [ 0, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.1
}

declare zeroext i1 @safe_strtoull(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @itoa_u64(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @item_stats_sizes_remove(ptr noundef) local_unnamed_addr #2

declare i64 @get_cas_id() local_unnamed_addr #2

declare void @item_stats_sizes_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @do_accept_new_conns(i1 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 4 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %.012 = load ptr, ptr @listen_conn, align 8, !tbaa !120 ; 3 uses
  %.not13 = icmp eq ptr %.012, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %0, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.014.us = phi ptr [ %.0.us, %bb.e ], [ %.012, %.lr.ph ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.014.us, i64 48 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014.us, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %.014.us, i64 176 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !75
  %i.f = icmp eq i16 %i.e, 18
  br i1 %i.f, label %update_event.exit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = tail call i32 @event_del(ptr noundef nonnull %i.a) #33, !inline_history !0
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %update_event.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.014.us, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !60
  tail call void @event_set(ptr noundef nonnull %i.a, i32 noundef %i.j, i16 noundef signext 18, ptr noundef nonnull @event_handler, ptr noundef nonnull %.014.us) #33, !inline_history !0
  %i.k = tail call i32 @event_base_set(ptr noundef %i.c, ptr noundef nonnull %i.a) #33, !inline_history !0 ; 0 uses
  store i16 18, ptr %i.d, align 8, !tbaa !75
  %i.l = tail call i32 @event_add(ptr noundef nonnull %i.a, ptr noundef null) #33, !inline_history !0 ; 0 uses
  br label %update_event.exit.us

update_event.exit.us:                             ; preds = %bb.c, %bb.b, %.lr.ph.split.us
  %i.m = getelementptr inbounds nuw i8, ptr %.014.us, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !60
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 112), align 8, !tbaa !174
  %i.p = tail call i32 @listen(i32 noundef %i.n, i32 noundef %i.o) #33
  %.not9.us = icmp eq i32 %i.p, 0
  br i1 %.not9.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %update_event.exit.us
  tail call void @perror(ptr noundef nonnull @.str.204) #37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %update_event.exit.us
  %i.q = getelementptr inbounds nuw i8, ptr %.014.us, i64 392
  %.0.us = load ptr, ptr %i.q, align 8, !tbaa !120 ; 2 uses
  %.not.us = icmp eq ptr %.0.us, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !347

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.014 = phi ptr [ %.0, %bb.i ], [ %.012, %.lr.ph ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014, i64 48 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.014, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 176 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !75
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %update_event.exit11, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @event_del(ptr noundef nonnull %i.r) #33, !inline_history !0
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %update_event.exit11, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !60
  tail call void @event_set(ptr noundef nonnull %i.r, i32 noundef %i.aa, i16 noundef signext 0, ptr noundef nonnull @event_handler, ptr noundef nonnull %.014) #33, !inline_history !0
  %i.ab = tail call i32 @event_base_set(ptr noundef %i.t, ptr noundef nonnull %i.r) #33, !inline_history !0 ; 0 uses
  store i16 0, ptr %i.u, align 8, !tbaa !75
  %i.ac = tail call i32 @event_add(ptr noundef nonnull %i.r, ptr noundef null) #33, !inline_history !0 ; 0 uses
  br label %update_event.exit11

update_event.exit11:                              ; preds = %.lr.ph.split, %bb.f, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !60
  %i.af = tail call i32 @listen(i32 noundef %i.ae, i32 noundef 0) #33
  %.not8 = icmp eq i32 %i.af, 0
  br i1 %.not8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %update_event.exit11
  tail call void @perror(ptr noundef nonnull @.str.204) #37
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %update_event.exit11
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 392
  %.0 = load ptr, ptr %i.ag, align 8, !tbaa !120  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !347

._crit_edge:                                      ; preds = %bb.i, %bb.e, %bb.a
  br i1 %0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ah = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #33 ; 0 uses
  tail call void @STATS_LOCK() #33
  %i.ai = load i64, ptr %2, align 8, !tbaa !212
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 200), align 8, !tbaa !348
  %i.ak = sub nsw i64 %i.ai, %i.aj
  %i.al = mul nsw i64 %i.ak, 1000000
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !349
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 208), align 8, !tbaa !350
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = add nsw i64 %i.ap, %i.al
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 120), align 8, !tbaa !155
  %i.as = add i64 %i.aq, %i.ar
  store i64 %i.as, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 120), align 8, !tbaa !155
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 53), align 1, !tbaa !153
  tail call void @STATS_UNLOCK() #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  tail call void @STATS_LOCK() #33
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 53), align 1, !tbaa !153
  %i.at = tail call i32 @gettimeofday(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @stats, i64 200), ptr noundef null) #33 ; 0 uses
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 32), align 8, !tbaa !154
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 32), align 8, !tbaa !154
  tail call void @STATS_UNLOCK() #33
  store volatile i8 0, ptr @allow_new_conns, align 1, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @__const.maxconns_handler.t, i64 16, i1 false)
  tail call void @event_set(ptr noundef nonnull @maxconnsevent, i32 noundef -1, i16 noundef signext 0, ptr noundef nonnull @maxconns_handler, ptr noundef null) #33, !inline_history !351
  %i.aw = load ptr, ptr @main_base, align 8, !tbaa !213
  %i.ax = tail call i32 @event_base_set(ptr noundef %i.aw, ptr noundef nonnull @maxconnsevent) #33, !inline_history !351 ; 0 uses
  %i.ay = call i32 @event_add(ptr noundef nonnull @maxconnsevent, ptr noundef nonnull %1) #33, !inline_history !351 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @maxconns_handler(i32 noundef %0, i16 signext %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @__const.maxconns_handler.t, i64 16, i1 false)
  %i.a = icmp eq i32 %0, -42
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile i8, ptr @allow_new_conns, align 1, !tbaa !134, !range !66, !noundef !67
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @event_set(ptr noundef nonnull @maxconnsevent, i32 noundef -1, i16 noundef signext 0, ptr noundef nonnull @maxconns_handler, ptr noundef null) #33
  %i.d = load ptr, ptr @main_base, align 8, !tbaa !213
  %i.e = tail call i32 @event_base_set(ptr noundef %i.d, ptr noundef nonnull @maxconnsevent) #33 ; 0 uses
  %i.f = call i32 @event_add(ptr noundef nonnull @maxconnsevent, ptr noundef nonnull %3) #33 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @event_del(ptr noundef nonnull @maxconnsevent) #33 ; 0 uses
  tail call void @accept_new_conns(i1 noundef zeroext true) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @verify_default(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #8 {
bb.a:
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %0) ; 0 uses
  tail call void @exit(i32 noundef 1) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 72) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [1024 x i8], align 16             ; 8 uses
  %2 = alloca %struct.linger, align 8             ; 5 uses
  %3 = alloca %struct.sockaddr_un, align 2        ; 7 uses
  %4 = alloca %struct.stat, align 8               ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.rlimit, align 8             ; 4 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca [128 x i8], align 16              ; 7 uses
  %6 = alloca %struct.rlimit, align 8             ; 10 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [64 x i32], align 16              ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 23 uses
  %i.l = alloca [40 x ptr], align 16              ; 4 uses
  %7 = alloca [37 x %struct.option], align 16     ; 5 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %struct.rlimit, align 8             ; 7 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %struct.timespec, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.p = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #34 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  store ptr null, ptr %i.q, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.l, ptr noundef nonnull align 16 dereferenceable(320) @__const.main.subopts_tokens, i64 320, i1 false)
  %i.r = tail call ptr @event_get_version() #33   ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.c, label %sub_0.i

sub_0.i:                                          ; preds = %bb.a
  %i.s = load i8, ptr %i.r, align 1
  %.not4.i = icmp eq i8 %i.s, 49
  br i1 %.not4.i, label %.tail.i, label %bb.c

.tail.i:                                          ; preds = %sub_0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 46
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.tail.i
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.x = tail call ptr @event_get_version() #33
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.416, ptr noundef %i.x) #35 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.p) #33
  br label %bb.od

bb.c:                                             ; preds = %.tail.i, %bb.a, %sub_0.i
  %i.z = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @sig_handler) #33 ; 0 uses
  %i.aa = tail call ptr @signal(i32 noundef 15, ptr noundef nonnull @sig_handler) #33 ; 0 uses
  %i.ab = tail call ptr @signal(i32 noundef 1, ptr noundef nonnull @sighup_handler) #33 ; 0 uses
  %i.ac = tail call ptr @signal(i32 noundef 10, ptr noundef nonnull @sig_usrhandler) #33 ; 0 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 104), align 8, !tbaa !173
  store i32 448, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 64), align 8, !tbaa !166
  store i32 11211, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 12), align 4, !tbaa !161
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 16), align 8, !tbaa !162
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 24), align 8, !tbaa !163
  store i64 67108864, ptr @settings, align 8, !tbaa !152
  store i32 1024, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 8), align 8, !tbaa !68
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 36), align 4, !tbaa !164
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 40), align 8, !tbaa !165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @settings, i64 48), i8 0, i64 16, i1 false)
  store double 1.250000e+00, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 72), align 8, !tbaa !168
  store i32 48, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 80), align 8, !tbaa !169
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 84), align 4, !tbaa !156
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 88), align 8, !tbaa !170
  store i8 58, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 92), align 4, !tbaa !171
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 96), align 8, !tbaa !172
  store i32 20, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 100), align 4, !tbaa !63
  store i32 1048576, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !216
  store <4 x i32> <i32 5, i32 1024, i32 1048576, i32 524288>, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !16
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 132), align 4, !tbaa !134
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 136), align 8, !tbaa !188
  store <4 x i32> <i32 100, i32 0, i32 20, i32 40>, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 200), align 8, !tbaa !16
  store <2 x double> <double 2.000000e-01, double 2.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 216), align 8, !tbaa !358
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 236), align 4, !tbaa !193
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 172), align 4, !tbaa !178
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 137), align 1, !tbaa !158
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 140), align 4, !tbaa !179
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 144), align 8, !tbaa !359
  store double 8.000000e-01, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 152), align 8, !tbaa !180
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 168), align 8, !tbaa !181
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 176), align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 180), align 4, !tbaa !185
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 184), align 8, !tbaa !186
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 185), align 1, !tbaa !187
  store i32 1000, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 232), align 8, !tbaa !360
  store <4 x i32> <i32 61, i32 0, i32 262144, i32 65536>, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 240), align 8, !tbaa !16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 260), align 4, !tbaa !361
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 261), align 1, !tbaa !362
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 256), align 8, !tbaa !197
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 328), align 8, !tbaa !207
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 336), align 8, !tbaa !208
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 344), align 8, !tbaa !217
  %i.ad = tail call ptr @storage_init_config(ptr noundef nonnull @settings) #33 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !59 ; 2 uses
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %fwrite419 = tail call i64 @fwrite(ptr nonnull @.str.224, i64 35, i64 1, ptr %i.af) #37 ; 0 uses
  br label %bb.od

bb.e:                                             ; preds = %bb.c
  tail call void @setbuf(ptr noundef %i.af, ptr noundef null) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1184) %7, ptr noundef nonnull align 16 dereferenceable(1184) @__const.main.longopts, i64 1184, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #33
  %i.ag = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.225, ptr noundef nonnull %7, ptr noundef nonnull %i.m) #33 ; 2 uses
  %.not2911627 = icmp eq i32 %i.ag, -1
  br i1 %.not2911627, label %._crit_edge1645, label %.lr.ph1644

.lr.ph1644:                                       ; preds = %bb.e, %bb.gc
  %i.ah = phi i32 [ %i.jv, %bb.gc ], [ %i.ag, %bb.e ] ; 2 uses
  %.01861642 = phi i8 [ %.4190, %bb.gc ], [ 0, %bb.e ] ; 38 uses
  %.01911641 = phi ptr [ %.4195, %bb.gc ], [ null, %bb.e ] ; 38 uses
  %.01971640 = phi i32 [ %.4201, %bb.gc ], [ 1, %bb.e ] ; 38 uses
  %.02021639 = phi i1 [ %.4206, %bb.gc ], [ true, %bb.e ] ; 38 uses
  %.02071638 = phi i1 [ %.4211, %bb.gc ], [ true, %bb.e ] ; 38 uses
  %.02121637 = phi i1 [ %.4216, %bb.gc ], [ true, %bb.e ] ; 38 uses
  %.02171636 = phi i1 [ %.1218, %bb.gc ], [ false, %bb.e ] ; 36 uses
  %.02191635 = phi i1 [ %.1220, %bb.gc ], [ false, %bb.e ] ; 36 uses
  %.02211634 = phi i8 [ %.1222, %bb.gc ], [ 0, %bb.e ] ; 34 uses
  %.02261633 = phi ptr [ %.1227, %bb.gc ], [ null, %bb.e ] ; 36 uses
  %.02281632 = phi ptr [ %.1229, %bb.gc ], [ null, %bb.e ] ; 36 uses
  %.02301631 = phi i32 [ %.1231, %bb.gc ], [ 0, %bb.e ] ; 36 uses
  %.02321630 = phi i1 [ %.1233, %bb.gc ], [ false, %bb.e ] ; 36 uses
  %.02351629 = phi i1 [ %.1236, %bb.gc ], [ false, %bb.e ] ; 36 uses
  %.02371628 = phi i1 [ %.1238, %bb.gc ], [ false, %bb.e ] ; 36 uses
  %i.ai = load ptr, ptr @optarg, align 8, !tbaa !62 ; 4 uses
  %.not360 = icmp eq ptr %i.ai, null
  br i1 %.not360, label %.loopexit464, label %.preheader

.preheader:                                       ; preds = %.lr.ph1644
  %i.aj = tail call ptr @__ctype_b_loc() #36
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !364 ; 2 uses
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !80
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !88
  %i.ap = and i16 %i.ao, 8192
  %.not3611613 = icmp eq i16 %i.ap, 0
  br i1 %.not3611613, label %.loopexit464, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.aq = phi ptr [ %i.ar, %.lr.ph ], [ %i.ai, %.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 4 uses
  store ptr %i.ar, ptr @optarg, align 8, !tbaa !62
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !80
  %i.at = sext i8 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !88
  %i.aw = and i16 %i.av, 8192
  %.not361 = icmp eq i16 %i.aw, 0
  br i1 %.not361, label %.loopexit464, label %.lr.ph, !llvm.loop !352

.loopexit464:                                     ; preds = %.lr.ph, %.preheader, %.lr.ph1644
  %i.ax = phi ptr [ null, %.lr.ph1644 ], [ %i.ai, %.preheader ], [ %i.ar, %.lr.ph ] ; 28 uses
  switch i32 %i.ah, label %bb.gb [
    i32 65, label %bb.f
    i32 90, label %bb.g
    i32 97, label %bb.h
    i32 85, label %bb.i
    i32 112, label %bb.j
    i32 115, label %bb.k
    i32 109, label %bb.l
    i32 77, label %bb.m
    i32 99, label %bb.n
    i32 104, label %bb.p
    i32 105, label %bb.q
    i32 86, label %bb.r
    i32 107, label %bb.gc
    i32 118, label %bb.s
    i32 108, label %bb.t
    i32 100, label %bb.y
    i32 114, label %bb.z
    i32 82, label %bb.aa
    i32 117, label %bb.ac
    i32 80, label %bb.ad
    i32 101, label %bb.ae
    i32 102, label %bb.af
    i32 110, label %bb.ai
    i32 116, label %bb.ak
    i32 68, label %bb.ao
    i32 76, label %bb.as
    i32 67, label %bb.ba
    i32 98, label %bb.bb
    i32 66, label %bb.bc
    i32 73, label %bb.bj
    i32 83, label %bb.bq
    i32 70, label %bb.br
    i32 88, label %bb.bs
    i32 87, label %bb.bt
    i32 89, label %bb.bu
    i32 78, label %bb.bv
    i32 111, label %bb.bx
  ]

bb.f:                                             ; preds = %.loopexit464
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 176), align 8, !tbaa !167
  br label %bb.gc

bb.g:                                             ; preds = %.loopexit464
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite418 = call i64 @fwrite(ptr nonnull @.str.259, i64 43, i64 1, ptr %i.ay) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.h:                                             ; preds = %.loopexit464
  %i.az = call i64 @__isoc23_strtol(ptr noundef %i.ax, ptr noundef null, i32 noundef 8) #33
  %i.ba = trunc i64 %i.az to i32
  store i32 %i.ba, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 64), align 8, !tbaa !166
  br label %bb.gc

bb.i:                                             ; preds = %.loopexit464
  %i.bb = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ax, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 16), align 8, !tbaa !162
  br label %bb.gc

bb.j:                                             ; preds = %.loopexit464
  %i.bd = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ax, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.be = trunc i64 %i.bd to i32
  store i32 %i.be, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 12), align 4, !tbaa !161
  br label %bb.gc

bb.k:                                             ; preds = %.loopexit464
  store ptr %i.ax, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 48), align 8, !tbaa !124
  br label %bb.gc

bb.l:                                             ; preds = %.loopexit464
  %i.bf = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ax, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %sext = shl i64 %i.bf, 32
  %i.bg = ashr exact i64 %sext, 12
  store i64 %i.bg, ptr @settings, align 8, !tbaa !152
  br label %bb.gc

bb.m:                                             ; preds = %.loopexit464
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 40), align 8, !tbaa !165
  br label %bb.gc

bb.n:                                             ; preds = %.loopexit464
  %i.bh = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ax, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  store i32 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 8), align 8, !tbaa !68
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %bb.o, label %bb.gc

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite417 = call i64 @fwrite(ptr nonnull @.str.260, i64 43, i64 1, ptr %i.bk) #37 ; 0 uses
  br label %bb.oc

bb.p:                                             ; preds = %.loopexit464
  call fastcc void @usage()
  call void @exit(i32 noundef 0) #39
  unreachable

bb.q:                                             ; preds = %.loopexit464
  call fastcc void @usage_license()
  call void @exit(i32 noundef 0) #39
  unreachable

bb.r:                                             ; preds = %.loopexit464
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  call void @exit(i32 noundef 0) #39
  unreachable

bb.s:                                             ; preds = %.loopexit464
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  br label %bb.gc

bb.t:                                             ; preds = %.loopexit464
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 24), align 8, !tbaa !163 ; 4 uses
  %.not413 = icmp eq ptr %i.bn, null
  br i1 %.not413, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bn, ptr noundef nonnull dereferenceable(1) %i.ax) #41
  %.not414 = icmp eq ptr %i.bo, null
  br i1 %.not414, label %bb.v, label %bb.gc

bb.v:                                             ; preds = %bb.u
  %i.bp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #41
  %i.bq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #41
  %i.br = add i64 %i.bp, 2
  %i.bs = add i64 %i.br, %i.bq                    ; 2 uses
  %i.bt = call noalias ptr @malloc(i64 noundef %i.bs) #34 ; 3 uses
  %.not416 = icmp eq ptr %i.bt, null
  br i1 %.not416, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.v
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite415 = call i64 @fwrite(ptr nonnull @.str.262, i64 26, i64 1, ptr %i.bu) #37 ; 0 uses
  br label %bb.oc

bb.w:                                             ; preds = %bb.v
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bt, i64 noundef %i.bs, ptr noundef nonnull @.str.263, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.ax) #33 ; 0 uses
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 24), align 8, !tbaa !163
  call void @free(ptr noundef %i.bw) #33
  store ptr %i.bt, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 24), align 8, !tbaa !163
  br label %bb.gc

bb.x:                                             ; preds = %bb.t
  %i.bx = call noalias ptr @strdup(ptr noundef %i.ax) #33
  store ptr %i.bx, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 24), align 8, !tbaa !163
  br label %bb.gc

bb.y:                                             ; preds = %.loopexit464
  br label %bb.gc

bb.z:                                             ; preds = %.loopexit464
  br label %bb.gc

bb.aa:                                            ; preds = %.loopexit464
  %i.by = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ax, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  store i32 %i.bz, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 100), align 4, !tbaa !63
  %i.ca = icmp slt i32 %i.bz, 1
  br i1 %i.ca, label %bb.ab, label %bb.gc

bb.ab:                                            ; preds = %bb.aa
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite412 = call i64 @fwrite(ptr nonnull @.str.264, i64 52, i64 1, ptr %i.cb) #37 ; 0 uses
  br label %bb.oc

bb.ac:                                            ; preds = %.loopexit464
  br label %bb.gc

bb.ad:                                            ; preds = %.loopexit464
  br label %bb.gc

bb.ae:                                            ; preds = %.loopexit464
  store ptr %i.ax, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 336), align 8, !tbaa !208
  br label %bb.gc

bb.af:                                            ; preds = %.loopexit464
  %i.cc = call double @strtod(ptr noundef nonnull captures(none) %i.ax, ptr noundef null) #33, !inline_history !354 ; 2 uses
  store double %i.cc, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 72), align 8, !tbaa !168
  %i.cd = fcmp ugt double %i.cc, 1.000000e+00
  br i1 %i.cd, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite411 = call i64 @fwrite(ptr nonnull @.str.265, i64 30, i64 1, ptr %i.ce) #37 ; 0 uses
  br label %bb.oc

bb.ah:                                            ; preds = %bb.af
  %i.cf = load ptr, ptr @optarg, align 8, !tbaa !62
  %i.cg = call noalias ptr @strdup(ptr noundef %i.cf) #33
  store ptr %i.cg, ptr %i.q, align 8, !tbaa !215
  br label %bb.gc

bb.ai:                                            ; preds = %.loopexit464
  %i.ch = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ax, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  store i32 %i.ci, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 80), align 8, !tbaa !169
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %bb.aj, label %bb.gc

bb.aj:                                            ; preds = %bb.ai
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite410 = call i64 @fwrite(ptr nonnull @.str.266, i64 34, i64 1, ptr %i.ck) #37 ; 0 uses
  br label %bb.oc

bb.ak:                                            ; preds = %.loopexit464
  %i.cl = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ax, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.cm = trunc i64 %i.cl to i32                  ; 3 uses
  store i32 %i.cm, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 84), align 4, !tbaa !156
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite409 = call i64 @fwrite(ptr nonnull @.str.267, i64 41, i64 1, ptr %i.co) #37 ; 0 uses
  br label %bb.oc

bb.am:                                            ; preds = %bb.ak
  %i.cp = icmp samesign ugt i32 %i.cm, 64
  br i1 %i.cp, label %bb.an, label %bb.gc

bb.an:                                            ; preds = %bb.am
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite408 = call i64 @fwrite(ptr nonnull @.str.268, i64 132, i64 1, ptr %i.cq) #37 ; 0 uses
  br label %bb.gc

bb.ao:                                            ; preds = %.loopexit464
  %.not405 = icmp eq ptr %i.ax, null
  br i1 %.not405, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cr = load i8, ptr %i.ax, align 1, !tbaa !80  ; 2 uses
  %.not406 = icmp eq i8 %i.cr, 0
  br i1 %.not406, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cs = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite407 = call i64 @fwrite(ptr nonnull @.str.269, i64 23, i64 1, ptr %i.cs) #37 ; 0 uses
  br label %bb.oc

bb.ar:                                            ; preds = %bb.ap
  store i8 %i.cr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 92), align 4, !tbaa !171
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 96), align 8, !tbaa !172
  br label %bb.gc

bb.as:                                            ; preds = %.loopexit464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.g, i8 0, i64 128, i1 false)
  %i.ct = call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.448, i32 noundef 0) #33 ; 2 uses
  %.not15.i = icmp eq i32 %i.ct, -1
  br i1 %.not15.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.cu = call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.449, i32 noundef 0) #33 ; 2 uses
  %.not15.1.i = icmp eq i32 %i.cu, -1
  br i1 %.not15.1.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite20.i = call i64 @fwrite(ptr nonnull @.str.450, i64 45, i64 1, ptr %i.cv) #37 ; 0 uses
  br label %bb.az

bb.av:                                            ; preds = %bb.at, %bb.as
  %.lcssa.i = phi i32 [ %i.ct, %bb.as ], [ %i.cu, %bb.at ] ; 2 uses
  %i.cw = call i64 @read(i32 noundef %.lcssa.i, ptr noundef nonnull %i.g, i64 noundef 128) #33 ; 2 uses
  %i.cx = call i32 @close(i32 noundef %.lcssa.i) #33 ; 0 uses
  %i.cy = icmp slt i64 %i.cw, 1
  br i1 %i.cy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite18.i = call i64 @fwrite(ptr nonnull @.str.452, i64 57, i64 1, ptr %i.cz) #37 ; 0 uses
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cw
  store i8 0, ptr %i.da, align 1, !tbaa !80
  %i.db = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.453) #41
  %.not16.i = icmp eq ptr %i.db, null
  br i1 %.not16.i, label %enable_large_pages.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.454, i64 41, i64 1, ptr %i.dc) #37 ; 0 uses
  br label %bb.az

enable_large_pages.exit:                          ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  br label %bb.gc

bb.az:                                            ; preds = %bb.au, %bb.aw, %bb.ay
  %i.dd = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite21.i = call i64 @fwrite(ptr nonnull @.str.451, i64 28, i64 1, ptr %i.dd) #37 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite404 = call i64 @fwrite(ptr nonnull @.str.270, i64 82, i64 1, ptr %i.de) #37 ; 0 uses
  br label %bb.oc

bb.ba:                                            ; preds = %.loopexit464
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 104), align 8, !tbaa !173
  br label %bb.gc

bb.bb:                                            ; preds = %.loopexit464
  %i.df = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ax, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.dg = trunc i64 %i.df to i32
  store i32 %i.dg, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 112), align 8, !tbaa !174
  br label %bb.gc

bb.bc:                                            ; preds = %.loopexit464
  %i.dh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(5) @.str.271) #41
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175
  br label %bb.gc

bb.be:                                            ; preds = %bb.bc
  %i.dj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(7) @.str.13) #41
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175
  br label %bb.gc

bb.bg:                                            ; preds = %bb.be
  %i.dl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(6) @.str.14) #41
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175
  br label %bb.gc

bb.bi:                                            ; preds = %bb.bg
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull @.str.272, ptr noundef nonnull %i.ax) #35 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.bj:                                            ; preds = %.loopexit464
  %i.dp = call noalias ptr @strdup(ptr noundef %i.ax) #33 ; 5 uses
  %i.dq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dp) #41
  %i.dr = getelementptr i8, ptr %i.dp, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1     ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !80  ; 3 uses
  switch i8 %i.dt, label %bb.bo [
    i8 109, label %bb.bk
    i8 107, label %bb.bk
    i8 77, label %bb.bk
    i8 75, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj, %bb.bj, %bb.bj
  store i8 0, ptr %i.ds, align 1, !tbaa !80
  %i.du = call i64 @__isoc23_strtol(ptr noundef nonnull %i.dp, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.dv = trunc i64 %i.du to i32                  ; 2 uses
  switch i8 %i.dt, label %bb.bm [
    i8 107, label %bb.bl
    i8 75, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bk
  %i.dw = shl nsw i32 %i.dv, 10
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.0224 = phi i32 [ %i.dw, %bb.bl ], [ %i.dv, %bb.bk ] ; 2 uses
  switch i8 %i.dt, label %bb.bp [
    i8 109, label %bb.bn
    i8 77, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm, %bb.bm
  %i.dx = shl nsw i32 %.0224, 20
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bj
  %i.dy = call i64 @__isoc23_strtol(ptr noundef nonnull %i.dp, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.dz = trunc i64 %i.dy to i32
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bm, %bb.bo
  %storemerge403 = phi i32 [ %i.dz, %bb.bo ], [ %i.dx, %bb.bn ], [ %.0224, %bb.bm ]
  store i32 %storemerge403, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 116), align 4, !tbaa !177
  call void @free(ptr noundef nonnull %i.dp) #33
  br label %bb.gc

bb.bq:                                            ; preds = %.loopexit464
  %i.ea = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite402 = call i64 @fwrite(ptr nonnull @.str.273, i64 44, i64 1, ptr %i.ea) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.br:                                            ; preds = %.loopexit464
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 184), align 8, !tbaa !186
  br label %bb.gc

bb.bs:                                            ; preds = %.loopexit464
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 185), align 1, !tbaa !187
  br label %bb.gc

bb.bt:                                            ; preds = %.loopexit464
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 261), align 1, !tbaa !362
  br label %bb.gc

bb.bu:                                            ; preds = %.loopexit464
  %i.eb = call noalias ptr @strdup(ptr noundef %i.ax) #33
  store ptr %i.eb, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128
  br label %bb.gc

bb.bv:                                            ; preds = %.loopexit464
  %i.ec = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ax, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  store i32 %i.ed, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 328), align 8, !tbaa !207
  %i.ee = icmp slt i32 %i.ed, 1
  br i1 %i.ee, label %bb.bw, label %bb.gc

bb.bw:                                            ; preds = %bb.bv
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite401 = call i64 @fwrite(ptr nonnull @.str.274, i64 50, i64 1, ptr %i.ef) #37 ; 0 uses
  br label %bb.oc

bb.bx:                                            ; preds = %.loopexit464
  %i.eg = call noalias ptr @strdup(ptr noundef %i.ax) #33 ; 5 uses
  store ptr %i.eg, ptr %i.j, align 8, !tbaa !62
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !80
  %.not3621614 = icmp eq i8 %i.eh, 0
  br i1 %.not3621614, label %._crit_edge, label %.lr.ph1621

.lr.ph1621:                                       ; preds = %bb.bx, %bb.ga
  %i.ei = phi ptr [ %i.jr, %bb.ga ], [ %i.eg, %bb.bx ]
  %.11871620 = phi i8 [ %.2188, %bb.ga ], [ %.01861642, %bb.bx ] ; 43 uses
  %.11921619 = phi ptr [ %.2193, %bb.ga ], [ %.01911641, %bb.bx ] ; 42 uses
  %.11981618 = phi i32 [ %.2199, %bb.ga ], [ %.01971640, %bb.bx ] ; 39 uses
  %.12031617 = phi i1 [ %.2204, %bb.ga ], [ %.02021639, %bb.bx ] ; 42 uses
  %.12081616 = phi i1 [ %.2209, %bb.ga ], [ %.02071638, %bb.bx ] ; 40 uses
  %.12131615 = phi i1 [ %.2214, %bb.ga ], [ %.02121637, %bb.bx ] ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #33
  %i.ej = call noalias ptr @strdup(ptr noundef nonnull %i.ei) #33 ; 3 uses
  store ptr %i.ej, ptr %i.n, align 8, !tbaa !62
  %i.ek = call i32 @getsubopt(ptr noundef nonnull %i.j, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k) #33
  switch i32 %i.ek, label %bb.fx [
    i32 0, label %bb.by
    i32 1, label %bb.bz
    i32 2, label %bb.cf
    i32 3, label %bb.cg
    i32 4, label %bb.ch
    i32 5, label %bb.cl
    i32 6, label %bb.cp
    i32 7, label %bb.ct
    i32 8, label %bb.cx
    i32 9, label %bb.dd
    i32 10, label %bb.de
    i32 11, label %bb.di
    i32 12, label %bb.dn
    i32 13, label %bb.do
    i32 14, label %bb.ds
    i32 15, label %bb.dw
    i32 16, label %bb.ea
    i32 17, label %bb.ee
    i32 18, label %bb.eh
    i32 19, label %bb.ek
    i32 20, label %bb.ep
    i32 21, label %bb.eu
    i32 22, label %bb.ev
    i32 23, label %bb.fe
    i32 24, label %bb.fy
    i32 31, label %bb.fy
    i32 27, label %bb.ff
    i32 28, label %bb.fg
    i32 29, label %bb.fh
    i32 30, label %bb.fi
    i32 32, label %bb.fj
    i32 33, label %bb.fk
    i32 25, label %bb.fy
    i32 26, label %bb.fl
    i32 34, label %bb.fo
    i32 35, label %bb.fp
    i32 36, label %bb.fq
    i32 37, label %bb.fr
    i32 38, label %bb.fw
  ]

bb.by:                                            ; preds = %.lr.ph1621
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 133), align 1, !tbaa !65
  br label %bb.fy

bb.bz:                                            ; preds = %.lr.ph1621
  %i.el = load ptr, ptr %i.k, align 8, !tbaa !62  ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite397 = call i64 @fwrite(ptr nonnull @.str.275, i64 39, i64 1, ptr %i.en) #37 ; 0 uses
  br label %.loopexit1828

bb.cb:                                            ; preds = %bb.bz
  %i.eo = call i64 @__isoc23_strtol(ptr noundef nonnull %i.el, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.ep = trunc i64 %i.eo to i32                  ; 5 uses
  store i32 %i.ep, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 172), align 4, !tbaa !178
  %i.eq = icmp slt i32 %i.ep, 12
  br i1 %i.eq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.es = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.276, i32 noundef %i.ep) #35 ; 0 uses
  br label %.loopexit1828

bb.cd:                                            ; preds = %bb.cb
  %i.et = icmp samesign ugt i32 %i.ep, 32
  br i1 %i.et, label %bb.ce, label %bb.fy

bb.ce:                                            ; preds = %bb.cd
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ev = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.277, i32 noundef %i.ep) #35 ; 0 uses
  br label %.loopexit1828

bb.cf:                                            ; preds = %.lr.ph1621
  br label %bb.fy

bb.cg:                                            ; preds = %.lr.ph1621
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 137), align 1, !tbaa !158
  br label %bb.fy

bb.ch:                                            ; preds = %.lr.ph1621
  %i.ew = load ptr, ptr %i.k, align 8, !tbaa !62  ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 140), align 4, !tbaa !179
  br label %bb.fy

bb.cj:                                            ; preds = %bb.ch
  %i.ey = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ew, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.ez = trunc i64 %i.ey to i32                  ; 2 uses
  store i32 %i.ez, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 140), align 4, !tbaa !179
  %or.cond16 = icmp ugt i32 %i.ez, 2
  br i1 %or.cond16, label %bb.ck, label %bb.fy

bb.ck:                                            ; preds = %bb.cj
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite396 = call i64 @fwrite(ptr nonnull @.str.278, i64 38, i64 1, ptr %i.fa) #37 ; 0 uses
  br label %.loopexit1828

bb.cl:                                            ; preds = %.lr.ph1621
  %i.fb = load ptr, ptr %i.k, align 8, !tbaa !62  ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite395 = call i64 @fwrite(ptr nonnull @.str.279, i64 37, i64 1, ptr %i.fd) #37 ; 0 uses
  br label %.loopexit1828

bb.cn:                                            ; preds = %bb.cl
  %i.fe = call double @strtod(ptr noundef nonnull captures(none) %i.fb, ptr noundef null) #33, !inline_history !354 ; 3 uses
  store double %i.fe, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 152), align 8, !tbaa !180
  %i.ff = fcmp ole double %i.fe, 0.000000e+00
  %i.fg = fcmp ogt double %i.fe, 1.000000e+00
  %or.cond18 = or i1 %i.ff, %i.fg
  br i1 %or.cond18, label %bb.co, label %bb.fy

bb.co:                                            ; preds = %bb.cn
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite394 = call i64 @fwrite(ptr nonnull @.str.280, i64 40, i64 1, ptr %i.fh) #37 ; 0 uses
  br label %.loopexit1828

bb.cp:                                            ; preds = %.lr.ph1621
  %i.fi = load ptr, ptr %i.k, align 8, !tbaa !62  ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite393 = call i64 @fwrite(ptr nonnull @.str.281, i64 38, i64 1, ptr %i.fk) #37 ; 0 uses
  br label %.loopexit1828

bb.cr:                                            ; preds = %bb.cp
  %i.fl = call i64 @__isoc23_strtol(ptr noundef nonnull %i.fi, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.fm = trunc i64 %i.fl to i32                  ; 2 uses
  store i32 %i.fm, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 168), align 8, !tbaa !181
  %i.fn = add i32 %i.fm, -1801
  %or.cond20 = icmp ult i32 %i.fn, -1798
  br i1 %or.cond20, label %bb.cs, label %bb.fy

bb.cs:                                            ; preds = %bb.cr
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite392 = call i64 @fwrite(ptr nonnull @.str.282, i64 44, i64 1, ptr %i.fo) #37 ; 0 uses
  br label %.loopexit1828

bb.ct:                                            ; preds = %.lr.ph1621
  %i.fp = load ptr, ptr %i.k, align 8, !tbaa !62  ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.fr = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite391 = call i64 @fwrite(ptr nonnull @.str.283, i64 46, i64 1, ptr %i.fr) #37 ; 0 uses
  br label %.loopexit1828

bb.cv:                                            ; preds = %bb.ct
  %i.fs = call i64 @__isoc23_strtol(ptr noundef nonnull %i.fp, ptr noundef null, i32 noundef 10) #33, !inline_history !353
  %i.ft = trunc i64 %i.fs to i32                  ; 2 uses
  store i32 %i.ft, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 180), align 4, !tbaa !185
  %i.fu = icmp slt i32 %i.ft, 10
  br i1 %i.fu, label %bb.cw, label %bb.fy

bb.cw:                                            ; preds = %bb.cv
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite390 = call i64 @fwrite(ptr nonnull @.str.284, i64 52, i64 1, ptr %i.fv) #37 ; 0 uses
  br label %.loopexit1828

bb.cx:                                            ; preds = %.lr.ph1621
  %i.fw = load ptr, ptr %i.k, align 8, !tbaa !62  ; 4 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.fy = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite389 = call i64 @fwrite(ptr nonnull @.str.285, i64 32, i64 1, ptr %i.fy) #37 ; 0 uses
  br label %.loopexit1828

bb.cz:                                            ; preds = %bb.cx
  %i.fz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fw, ptr noundef nonnull dereferenceable(8) @.str.286) #41
end_hunk_5
begin_hunk_6_@main:bb.a
  br label %.loopexit1828

bb.em:                                            ; preds = %bb.ek
  %i.if = call zeroext i1 @safe_strtoul(ptr noundef nonnull %i.ic, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @settings, i64 248)) #33
  br i1 %i.if, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ig = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite372 = call i64 @fwrite(ptr nonnull @.str.305, i64 48, i64 1, ptr %i.ig) #37 ; 0 uses
  br label %.loopexit1828

bb.eo:                                            ; preds = %bb.em
  %i.ih = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 248), align 8, !tbaa !195
  %i.ii = shl i32 %i.ih, 10
  store i32 %i.ii, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 248), align 8, !tbaa !195
  br label %bb.fy

bb.ep:                                            ; preds = %.lr.ph1621
  %i.ij = load ptr, ptr %i.k, align 8, !tbaa !62  ; 2 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite371 = call i64 @fwrite(ptr nonnull @.str.306, i64 36, i64 1, ptr %i.il) #37 ; 0 uses
  br label %.loopexit1828

bb.er:                                            ; preds = %bb.ep
  %i.im = call zeroext i1 @safe_strtoul(ptr noundef nonnull %i.ij, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @settings, i64 252)) #33
  br i1 %i.im, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.in = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite370 = call i64 @fwrite(ptr nonnull @.str.307, i64 47, i64 1, ptr %i.in) #37 ; 0 uses
  br label %.loopexit1828

bb.et:                                            ; preds = %bb.er
  %i.io = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 252), align 4, !tbaa !196
  %i.ip = shl i32 %i.io, 10
  store i32 %i.ip, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 252), align 4, !tbaa !196
  br label %bb.fy

bb.eu:                                            ; preds = %.lr.ph1621
  %i.iq = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.ir = call noalias ptr @strdup(ptr noundef %i.iq) #33
  br label %bb.fy

bb.ev:                                            ; preds = %.lr.ph1621
  %i.is = load ptr, ptr %i.k, align 8, !tbaa !62  ; 2 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.iu = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite369 = call i64 @fwrite(ptr nonnull @.str.308, i64 32, i64 1, ptr %i.iu) #37 ; 0 uses
  br label %.loopexit1828

bb.ex:                                            ; preds = %bb.ev
  %i.iv = call zeroext i1 @safe_strtol(ptr noundef nonnull %i.is, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @settings, i64 120)) #33
  br i1 %i.iv, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.iw = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite366 = call i64 @fwrite(ptr nonnull @.str.309, i64 43, i64 1, ptr %i.iw) #37 ; 0 uses
  br label %.loopexit1828

bb.ez:                                            ; preds = %bb.ex
  %i.ix = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !182 ; 3 uses
  %i.iy = icmp slt i32 %i.ix, 1
  br i1 %i.iy, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.iz = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite368 = call i64 @fwrite(ptr nonnull @.str.310, i64 28, i64 1, ptr %i.iz) #37 ; 0 uses
  br label %.loopexit1828

bb.fb:                                            ; preds = %bb.ez
  %i.ja = icmp samesign ugt i32 %i.ix, 1024
  br i1 %i.ja, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.jb = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite367 = call i64 @fwrite(ptr nonnull @.str.311, i64 47, i64 1, ptr %i.jb) #37 ; 0 uses
  br label %.loopexit1828

bb.fd:                                            ; preds = %bb.fb
  %i.jc = shl nuw nsw i32 %i.ix, 10
  store i32 %i.jc, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !182
  br label %bb.fy

bb.fe:                                            ; preds = %.lr.ph1621
  call void @item_stats_sizes_init() #33
  br label %bb.fy

bb.ff:                                            ; preds = %.lr.ph1621
  %i.jd = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !216
  store i32 %i.jd, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !182
  br label %bb.fy

bb.fg:                                            ; preds = %.lr.ph1621
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 137), align 1, !tbaa !158
  br label %bb.fy

bb.fh:                                            ; preds = %.lr.ph1621
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 140), align 4, !tbaa !179
  br label %bb.fy

bb.fi:                                            ; preds = %.lr.ph1621
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 133), align 1, !tbaa !65
  br label %bb.fy

bb.fj:                                            ; preds = %.lr.ph1621
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 134), align 2, !tbaa !159
  br label %bb.fy

bb.fk:                                            ; preds = %.lr.ph1621
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 136), align 8, !tbaa !188
  br label %bb.fy

bb.fl:                                            ; preds = %.lr.ph1621
  %i.je = trunc nuw i8 %.11871620 to i1
  br i1 %i.je, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.jf = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !216
  store i32 %i.jf, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !182
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 137), align 1, !tbaa !158
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 140), align 4, !tbaa !179
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 133), align 1, !tbaa !65
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 136), align 8, !tbaa !188
  br label %bb.fy

bb.fo:                                            ; preds = %.lr.ph1621
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 260), align 4, !tbaa !361
  br label %bb.fy

bb.fp:                                            ; preds = %.lr.ph1621
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 260), align 4, !tbaa !361
  br label %bb.fy

bb.fq:                                            ; preds = %.lr.ph1621
  %i.jg = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite365 = call i64 @fwrite(ptr nonnull @.str.312, i64 71, i64 1, ptr %i.jg) #37 ; 0 uses
  br label %bb.fy

bb.fr:                                            ; preds = %.lr.ph1621
  %i.jh = load ptr, ptr %i.k, align 8, !tbaa !62  ; 2 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.jj = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite364 = call i64 @fwrite(ptr nonnull @.str.313, i64 36, i64 1, ptr %i.jj) #37 ; 0 uses
  br label %.loopexit1828

bb.ft:                                            ; preds = %bb.fr
  %i.jk = call zeroext i1 @safe_strtoul(ptr noundef nonnull %i.jh, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @settings, i64 256)) #33
  br i1 %i.jk, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.jl = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite363 = call i64 @fwrite(ptr nonnull @.str.314, i64 47, i64 1, ptr %i.jl) #37 ; 0 uses
  br label %.loopexit1828

bb.fv:                                            ; preds = %bb.ft
  %i.jm = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 256), align 8, !tbaa !197
  %i.jn = shl i32 %i.jm, 20
  store i32 %i.jn, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 256), align 8, !tbaa !197
  br label %bb.fy

bb.fw:                                            ; preds = %.lr.ph1621
  %i.jo = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.jp = call zeroext i1 @safe_strtoul(ptr noundef %i.jo, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @settings, i64 344)) #33 ; 0 uses
  br label %bb.fy

bb.fx:                                            ; preds = %.lr.ph1621
  %i.jq = call i32 @storage_read_config(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.n) #33
  %.not398 = icmp eq i32 %i.jq, 0
  br i1 %.not398, label %bb.fy, label %.loopexit1828

bb.fy:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.fx, %bb.ec, %bb.dy, %bb.du, %bb.dq, %bb.dg, %bb.cv, %bb.cr, %bb.cn, %bb.cj, %bb.cd, %bb.fw, %bb.fv, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.eu, %bb.et, %bb.eo, %bb.ej, %bb.eg, %bb.dn, %bb.dm, %bb.dd, %bb.ci, %bb.cg, %bb.cf, %bb.by, %.lr.ph1621, %.lr.ph1621, %.lr.ph1621
  %.2214 = phi i1 [ %.12131615, %bb.fx ], [ %.12131615, %bb.by ], [ %.12131615, %bb.cd ], [ %.12131615, %bb.cf ], [ %.12131615, %bb.cg ], [ %.12131615, %bb.ci ], [ %.12131615, %bb.cj ], [ %.12131615, %bb.cn ], [ %.12131615, %bb.cr ], [ %.12131615, %bb.cv ], [ %.12131615, %bb.fw ], [ %.12131615, %bb.cz ], [ %.12131615, %bb.da ], [ %.12131615, %bb.dd ], [ %.12131615, %bb.dg ], [ %.12131615, %bb.dm ], [ true, %bb.dn ], [ %.12131615, %bb.dq ], [ %.12131615, %bb.du ], [ %.12131615, %bb.dy ], [ %.12131615, %bb.ec ], [ %.12131615, %bb.eg ], [ %.12131615, %bb.ej ], [ %.12131615, %bb.eo ], [ %.12131615, %bb.et ], [ %.12131615, %bb.eu ], [ %.12131615, %bb.fd ], [ %.12131615, %bb.fe ], [ %.12131615, %bb.ff ], [ %.12131615, %bb.fg ], [ %.12131615, %bb.fh ], [ %.12131615, %bb.fi ], [ %.12131615, %bb.fj ], [ false, %bb.fk ], [ %.12131615, %.lr.ph1621 ], [ %.12131615, %.lr.ph1621 ], [ %.12131615, %.lr.ph1621 ], [ false, %bb.fn ], [ %.12131615, %bb.fo ], [ %.12131615, %bb.fp ], [ %.12131615, %bb.fq ], [ %.12131615, %bb.fv ], [ %.12131615, %bb.db ] ; 2 uses
  %.2209 = phi i1 [ %.12081616, %bb.fx ], [ %.12081616, %bb.by ], [ %.12081616, %bb.cd ], [ %.12081616, %bb.cf ], [ %.12081616, %bb.cg ], [ %.12081616, %bb.ci ], [ %.12081616, %bb.cj ], [ %.12081616, %bb.cn ], [ %.12081616, %bb.cr ], [ %.12081616, %bb.cv ], [ %.12081616, %bb.fw ], [ %.12081616, %bb.cz ], [ %.12081616, %bb.da ], [ true, %bb.dd ], [ %.12081616, %bb.dg ], [ %.12081616, %bb.dm ], [ %.12081616, %bb.dn ], [ %.12081616, %bb.dq ], [ %.12081616, %bb.du ], [ %.12081616, %bb.dy ], [ %.12081616, %bb.ec ], [ %.12081616, %bb.eg ], [ %.12081616, %bb.ej ], [ %.12081616, %bb.eo ], [ %.12081616, %bb.et ], [ %.12081616, %bb.eu ], [ %.12081616, %bb.fd ], [ %.12081616, %bb.fe ], [ %.12081616, %bb.ff ], [ %.12081616, %bb.fg ], [ %.12081616, %bb.fh ], [ %.12081616, %bb.fi ], [ false, %bb.fj ], [ %.12081616, %bb.fk ], [ %.12081616, %.lr.ph1621 ], [ %.12081616, %.lr.ph1621 ], [ %.12081616, %.lr.ph1621 ], [ false, %bb.fn ], [ %.12081616, %bb.fo ], [ %.12081616, %bb.fp ], [ %.12081616, %bb.fq ], [ %.12081616, %bb.fv ], [ %.12081616, %bb.db ] ; 2 uses
  %.2204 = phi i1 [ %.12031617, %bb.fx ], [ %.12031617, %bb.by ], [ %.12031617, %bb.cd ], [ false, %bb.cf ], [ %.12031617, %bb.cg ], [ %.12031617, %bb.ci ], [ %.12031617, %bb.cj ], [ %.12031617, %bb.cn ], [ %.12031617, %bb.cr ], [ %.12031617, %bb.cv ], [ %.12031617, %bb.fw ], [ %.12031617, %bb.cz ], [ %.12031617, %bb.da ], [ %.12031617, %bb.dd ], [ %.12031617, %bb.dg ], [ %.12031617, %bb.dm ], [ %.12031617, %bb.dn ], [ %.12031617, %bb.dq ], [ %.12031617, %bb.du ], [ %.12031617, %bb.dy ], [ %.12031617, %bb.ec ], [ %.12031617, %bb.eg ], [ %.12031617, %bb.ej ], [ %.12031617, %bb.eo ], [ %.12031617, %bb.et ], [ %.12031617, %bb.eu ], [ %.12031617, %bb.fd ], [ %.12031617, %bb.fe ], [ %.12031617, %bb.ff ], [ %.12031617, %bb.fg ], [ %.12031617, %bb.fh ], [ %.12031617, %bb.fi ], [ %.12031617, %bb.fj ], [ %.12031617, %bb.fk ], [ %.12031617, %.lr.ph1621 ], [ %.12031617, %.lr.ph1621 ], [ %.12031617, %.lr.ph1621 ], [ %.12031617, %bb.fn ], [ %.12031617, %bb.fo ], [ %.12031617, %bb.fp ], [ %.12031617, %bb.fq ], [ %.12031617, %bb.fv ], [ %.12031617, %bb.db ] ; 2 uses
  %.2199 = phi i32 [ %.11981618, %bb.fx ], [ %.11981618, %bb.by ], [ %.11981618, %bb.cd ], [ %.11981618, %bb.cf ], [ %.11981618, %bb.cg ], [ %.11981618, %bb.ci ], [ %.11981618, %bb.cj ], [ %.11981618, %bb.cn ], [ %.11981618, %bb.cr ], [ %.11981618, %bb.cv ], [ %.11981618, %bb.fw ], [ 0, %bb.cz ], [ 1, %bb.da ], [ %.11981618, %bb.dd ], [ %.11981618, %bb.dg ], [ %.11981618, %bb.dm ], [ %.11981618, %bb.dn ], [ %.11981618, %bb.dq ], [ %.11981618, %bb.du ], [ %.11981618, %bb.dy ], [ %.11981618, %bb.ec ], [ %.11981618, %bb.eg ], [ %.11981618, %bb.ej ], [ %.11981618, %bb.eo ], [ %.11981618, %bb.et ], [ %.11981618, %bb.eu ], [ %.11981618, %bb.fd ], [ %.11981618, %bb.fe ], [ %.11981618, %bb.ff ], [ %.11981618, %bb.fg ], [ %.11981618, %bb.fh ], [ %.11981618, %bb.fi ], [ %.11981618, %bb.fj ], [ %.11981618, %bb.fk ], [ %.11981618, %.lr.ph1621 ], [ %.11981618, %.lr.ph1621 ], [ %.11981618, %.lr.ph1621 ], [ 0, %bb.fn ], [ %.11981618, %bb.fo ], [ %.11981618, %bb.fp ], [ %.11981618, %bb.fq ], [ %.11981618, %bb.fv ], [ 2, %bb.db ] ; 2 uses
  %.2193 = phi ptr [ %.11921619, %bb.fx ], [ %.11921619, %bb.by ], [ %.11921619, %bb.cd ], [ %.11921619, %bb.cf ], [ %.11921619, %bb.cg ], [ %.11921619, %bb.ci ], [ %.11921619, %bb.cj ], [ %.11921619, %bb.cn ], [ %.11921619, %bb.cr ], [ %.11921619, %bb.cv ], [ %.11921619, %bb.fw ], [ %.11921619, %bb.cz ], [ %.11921619, %bb.da ], [ %.11921619, %bb.dd ], [ %.11921619, %bb.dg ], [ %.11921619, %bb.dm ], [ %.11921619, %bb.dn ], [ %.11921619, %bb.dq ], [ %.11921619, %bb.du ], [ %.11921619, %bb.dy ], [ %.11921619, %bb.ec ], [ %.11921619, %bb.eg ], [ %.11921619, %bb.ej ], [ %.11921619, %bb.eo ], [ %.11921619, %bb.et ], [ %i.ir, %bb.eu ], [ %.11921619, %bb.fd ], [ %.11921619, %bb.fe ], [ %.11921619, %bb.ff ], [ %.11921619, %bb.fg ], [ %.11921619, %bb.fh ], [ %.11921619, %bb.fi ], [ %.11921619, %bb.fj ], [ %.11921619, %bb.fk ], [ %.11921619, %.lr.ph1621 ], [ %.11921619, %.lr.ph1621 ], [ %.11921619, %.lr.ph1621 ], [ %.11921619, %bb.fn ], [ %.11921619, %bb.fo ], [ %.11921619, %bb.fp ], [ %.11921619, %bb.fq ], [ %.11921619, %bb.fv ], [ %.11921619, %bb.db ] ; 2 uses
  %.2188 = phi i8 [ %.11871620, %bb.fx ], [ %.11871620, %bb.by ], [ %.11871620, %bb.cd ], [ %.11871620, %bb.cf ], [ %.11871620, %bb.cg ], [ %.11871620, %bb.ci ], [ %.11871620, %bb.cj ], [ %.11871620, %bb.cn ], [ %.11871620, %bb.cr ], [ %.11871620, %bb.cv ], [ %.11871620, %bb.fw ], [ %.11871620, %bb.cz ], [ %.11871620, %bb.da ], [ %.11871620, %bb.dd ], [ %.11871620, %bb.dg ], [ %.11871620, %bb.dm ], [ %.11871620, %bb.dn ], [ %.11871620, %bb.dq ], [ %.11871620, %bb.du ], [ %.11871620, %bb.dy ], [ %.11871620, %bb.ec ], [ %.11871620, %bb.eg ], [ %.11871620, %bb.ej ], [ %.11871620, %bb.eo ], [ %.11871620, %bb.et ], [ %.11871620, %bb.eu ], [ 1, %bb.fd ], [ %.11871620, %bb.fe ], [ %.11871620, %bb.ff ], [ %.11871620, %bb.fg ], [ %.11871620, %bb.fh ], [ %.11871620, %bb.fi ], [ %.11871620, %bb.fj ], [ %.11871620, %bb.fk ], [ %.11871620, %.lr.ph1621 ], [ %.11871620, %.lr.ph1621 ], [ %.11871620, %.lr.ph1621 ], [ %.11871620, %bb.fn ], [ %.11871620, %bb.fo ], [ %.11871620, %bb.fp ], [ %.11871620, %bb.fq ], [ %.11871620, %bb.fv ], [ %.11871620, %bb.db ] ; 2 uses
  %.not399 = icmp eq ptr %i.ej, null
  br i1 %.not399, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @free(ptr noundef nonnull %i.ej) #33
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fy, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #33
  %i.jr = load ptr, ptr %i.j, align 8, !tbaa !62  ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !80
  %.not362 = icmp eq i8 %i.js, 0
  br i1 %.not362, label %._crit_edge, label %.lr.ph1621

._crit_edge:                                      ; preds = %bb.ga, %bb.bx
  %.1213.lcssa = phi i1 [ %.02121637, %bb.bx ], [ %.2214, %bb.ga ]
  %.1208.lcssa = phi i1 [ %.02071638, %bb.bx ], [ %.2209, %bb.ga ]
  %.1203.lcssa = phi i1 [ %.02021639, %bb.bx ], [ %.2204, %bb.ga ]
  %.1198.lcssa = phi i32 [ %.01971640, %bb.bx ], [ %.2199, %bb.ga ]
  %.1192.lcssa = phi ptr [ %.01911641, %bb.bx ], [ %.2193, %bb.ga ]
  %.1187.lcssa = phi i8 [ %.01861642, %bb.bx ], [ %.2188, %bb.ga ]
  call void @free(ptr noundef %i.eg) #33
  br label %bb.gc

bb.gb:                                            ; preds = %.loopexit464
  %i.jt = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ju = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jt, ptr noundef nonnull @.str.315, i32 noundef %i.ah) #35 ; 0 uses
  br label %bb.oc

bb.gc:                                            ; preds = %enable_large_pages.exit, %bb.w, %.loopexit464, %bb.bv, %bb.bd, %bb.bh, %bb.bf, %bb.am, %bb.an, %bb.ai, %bb.aa, %bb.x, %bb.u, %bb.n, %._crit_edge, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bp, %bb.bb, %bb.ba, %bb.ar, %bb.ah, %bb.ae, %bb.ad, %bb.ac, %bb.z, %bb.y, %bb.s, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f
  %.1238 = phi i1 [ %.02371628, %bb.f ], [ %.02371628, %bb.h ], [ %.02371628, %bb.i ], [ %.02371628, %bb.j ], [ %.02371628, %bb.k ], [ %.02371628, %bb.l ], [ %.02371628, %bb.m ], [ %.02371628, %bb.n ], [ %.02371628, %._crit_edge ], [ %.02371628, %bb.s ], [ %.02371628, %bb.u ], [ %.02371628, %bb.w ], [ %.02371628, %bb.x ], [ %.02371628, %bb.y ], [ %.02371628, %bb.z ], [ %.02371628, %bb.aa ], [ %.02371628, %bb.ac ], [ %.02371628, %bb.ad ], [ %.02371628, %bb.ae ], [ %.02371628, %bb.ah ], [ %.02371628, %bb.ai ], [ %.02371628, %bb.an ], [ %.02371628, %bb.am ], [ %.02371628, %bb.ar ], [ true, %.loopexit464 ], [ %.02371628, %bb.ba ], [ %.02371628, %bb.bb ], [ %.02371628, %bb.bd ], [ %.02371628, %bb.bf ], [ %.02371628, %bb.bh ], [ %.02371628, %bb.bp ], [ %.02371628, %bb.br ], [ %.02371628, %bb.bs ], [ %.02371628, %bb.bt ], [ %.02371628, %bb.bu ], [ %.02371628, %bb.bv ], [ %.02371628, %enable_large_pages.exit ] ; 2 uses
  %.1236 = phi i1 [ %.02351629, %bb.f ], [ %.02351629, %bb.h ], [ %.02351629, %bb.i ], [ %.02351629, %bb.j ], [ %.02351629, %bb.k ], [ %.02351629, %bb.l ], [ %.02351629, %bb.m ], [ %.02351629, %bb.n ], [ %.02351629, %._crit_edge ], [ %.02351629, %bb.s ], [ %.02351629, %bb.u ], [ %.02351629, %bb.w ], [ %.02351629, %bb.x ], [ true, %bb.y ], [ %.02351629, %bb.z ], [ %.02351629, %bb.aa ], [ %.02351629, %bb.ac ], [ %.02351629, %bb.ad ], [ %.02351629, %bb.ae ], [ %.02351629, %bb.ah ], [ %.02351629, %bb.ai ], [ %.02351629, %bb.an ], [ %.02351629, %bb.am ], [ %.02351629, %bb.ar ], [ %.02351629, %.loopexit464 ], [ %.02351629, %bb.ba ], [ %.02351629, %bb.bb ], [ %.02351629, %bb.bd ], [ %.02351629, %bb.bf ], [ %.02351629, %bb.bh ], [ %.02351629, %bb.bp ], [ %.02351629, %bb.br ], [ %.02351629, %bb.bs ], [ %.02351629, %bb.bt ], [ %.02351629, %bb.bu ], [ %.02351629, %bb.bv ], [ %.02351629, %enable_large_pages.exit ] ; 2 uses
  %.1233 = phi i1 [ %.02321630, %bb.f ], [ %.02321630, %bb.h ], [ %.02321630, %bb.i ], [ %.02321630, %bb.j ], [ %.02321630, %bb.k ], [ %.02321630, %bb.l ], [ %.02321630, %bb.m ], [ %.02321630, %bb.n ], [ %.02321630, %._crit_edge ], [ %.02321630, %bb.s ], [ %.02321630, %bb.u ], [ %.02321630, %bb.w ], [ %.02321630, %bb.x ], [ %.02321630, %bb.y ], [ %.02321630, %bb.z ], [ %.02321630, %bb.aa ], [ %.02321630, %bb.ac ], [ %.02321630, %bb.ad ], [ %.02321630, %bb.ae ], [ %.02321630, %bb.ah ], [ %.02321630, %bb.ai ], [ %.02321630, %bb.an ], [ %.02321630, %bb.am ], [ %.02321630, %bb.ar ], [ %.02321630, %.loopexit464 ], [ %.02321630, %bb.ba ], [ %.02321630, %bb.bb ], [ %.02321630, %bb.bd ], [ %.02321630, %bb.bf ], [ %.02321630, %bb.bh ], [ %.02321630, %bb.bp ], [ %.02321630, %bb.br ], [ %.02321630, %bb.bs ], [ %.02321630, %bb.bt ], [ %.02321630, %bb.bu ], [ %.02321630, %bb.bv ], [ true, %enable_large_pages.exit ] ; 2 uses
  %.1231 = phi i32 [ %.02301631, %bb.f ], [ %.02301631, %bb.h ], [ %.02301631, %bb.i ], [ %.02301631, %bb.j ], [ %.02301631, %bb.k ], [ %.02301631, %bb.l ], [ %.02301631, %bb.m ], [ %.02301631, %bb.n ], [ %.02301631, %._crit_edge ], [ %.02301631, %bb.s ], [ %.02301631, %bb.u ], [ %.02301631, %bb.w ], [ %.02301631, %bb.x ], [ %.02301631, %bb.y ], [ 1, %bb.z ], [ %.02301631, %bb.aa ], [ %.02301631, %bb.ac ], [ %.02301631, %bb.ad ], [ %.02301631, %bb.ae ], [ %.02301631, %bb.ah ], [ %.02301631, %bb.ai ], [ %.02301631, %bb.an ], [ %.02301631, %bb.am ], [ %.02301631, %bb.ar ], [ %.02301631, %.loopexit464 ], [ %.02301631, %bb.ba ], [ %.02301631, %bb.bb ], [ %.02301631, %bb.bd ], [ %.02301631, %bb.bf ], [ %.02301631, %bb.bh ], [ %.02301631, %bb.bp ], [ %.02301631, %bb.br ], [ %.02301631, %bb.bs ], [ %.02301631, %bb.bt ], [ %.02301631, %bb.bu ], [ %.02301631, %bb.bv ], [ %.02301631, %enable_large_pages.exit ] ; 2 uses
  %.1229 = phi ptr [ %.02281632, %bb.f ], [ %.02281632, %bb.h ], [ %.02281632, %bb.i ], [ %.02281632, %bb.j ], [ %.02281632, %bb.k ], [ %.02281632, %bb.l ], [ %.02281632, %bb.m ], [ %.02281632, %bb.n ], [ %.02281632, %._crit_edge ], [ %.02281632, %bb.s ], [ %.02281632, %bb.u ], [ %.02281632, %bb.w ], [ %.02281632, %bb.x ], [ %.02281632, %bb.y ], [ %.02281632, %bb.z ], [ %.02281632, %bb.aa ], [ %i.ax, %bb.ac ], [ %.02281632, %bb.ad ], [ %.02281632, %bb.ae ], [ %.02281632, %bb.ah ], [ %.02281632, %bb.ai ], [ %.02281632, %bb.an ], [ %.02281632, %bb.am ], [ %.02281632, %bb.ar ], [ %.02281632, %.loopexit464 ], [ %.02281632, %bb.ba ], [ %.02281632, %bb.bb ], [ %.02281632, %bb.bd ], [ %.02281632, %bb.bf ], [ %.02281632, %bb.bh ], [ %.02281632, %bb.bp ], [ %.02281632, %bb.br ], [ %.02281632, %bb.bs ], [ %.02281632, %bb.bt ], [ %.02281632, %bb.bu ], [ %.02281632, %bb.bv ], [ %.02281632, %enable_large_pages.exit ] ; 2 uses
  %.1227 = phi ptr [ %.02261633, %bb.f ], [ %.02261633, %bb.h ], [ %.02261633, %bb.i ], [ %.02261633, %bb.j ], [ %.02261633, %bb.k ], [ %.02261633, %bb.l ], [ %.02261633, %bb.m ], [ %.02261633, %bb.n ], [ %.02261633, %._crit_edge ], [ %.02261633, %bb.s ], [ %.02261633, %bb.u ], [ %.02261633, %bb.w ], [ %.02261633, %bb.x ], [ %.02261633, %bb.y ], [ %.02261633, %bb.z ], [ %.02261633, %bb.aa ], [ %.02261633, %bb.ac ], [ %i.ax, %bb.ad ], [ %.02261633, %bb.ae ], [ %.02261633, %bb.ah ], [ %.02261633, %bb.ai ], [ %.02261633, %bb.an ], [ %.02261633, %bb.am ], [ %.02261633, %bb.ar ], [ %.02261633, %.loopexit464 ], [ %.02261633, %bb.ba ], [ %.02261633, %bb.bb ], [ %.02261633, %bb.bd ], [ %.02261633, %bb.bf ], [ %.02261633, %bb.bh ], [ %.02261633, %bb.bp ], [ %.02261633, %bb.br ], [ %.02261633, %bb.bs ], [ %.02261633, %bb.bt ], [ %.02261633, %bb.bu ], [ %.02261633, %bb.bv ], [ %.02261633, %enable_large_pages.exit ] ; 2 uses
  %.1222 = phi i8 [ %.02211634, %bb.f ], [ %.02211634, %bb.h ], [ %.02211634, %bb.i ], [ %.02211634, %bb.j ], [ %.02211634, %bb.k ], [ %.02211634, %bb.l ], [ %.02211634, %bb.m ], [ %.02211634, %bb.n ], [ %.02211634, %._crit_edge ], [ %.02211634, %bb.s ], [ %.02211634, %bb.u ], [ %.02211634, %bb.w ], [ %.02211634, %bb.x ], [ %.02211634, %bb.y ], [ %.02211634, %bb.z ], [ %.02211634, %bb.aa ], [ %.02211634, %bb.ac ], [ %.02211634, %bb.ad ], [ %.02211634, %bb.ae ], [ %.02211634, %bb.ah ], [ %.02211634, %bb.ai ], [ %.02211634, %bb.an ], [ %.02211634, %bb.am ], [ %.02211634, %bb.ar ], [ %.02211634, %.loopexit464 ], [ %.02211634, %bb.ba ], [ %.02211634, %bb.bb ], [ 1, %bb.bd ], [ 1, %bb.bf ], [ 1, %bb.bh ], [ %.02211634, %bb.bp ], [ %.02211634, %bb.br ], [ %.02211634, %bb.bs ], [ %.02211634, %bb.bt ], [ %.02211634, %bb.bu ], [ %.02211634, %bb.bv ], [ %.02211634, %enable_large_pages.exit ] ; 2 uses
  %.1220 = phi i1 [ %.02191635, %bb.f ], [ %.02191635, %bb.h ], [ %.02191635, %bb.i ], [ true, %bb.j ], [ %.02191635, %bb.k ], [ %.02191635, %bb.l ], [ %.02191635, %bb.m ], [ %.02191635, %bb.n ], [ %.02191635, %._crit_edge ], [ %.02191635, %bb.s ], [ %.02191635, %bb.u ], [ %.02191635, %bb.w ], [ %.02191635, %bb.x ], [ %.02191635, %bb.y ], [ %.02191635, %bb.z ], [ %.02191635, %bb.aa ], [ %.02191635, %bb.ac ], [ %.02191635, %bb.ad ], [ %.02191635, %bb.ae ], [ %.02191635, %bb.ah ], [ %.02191635, %bb.ai ], [ %.02191635, %bb.an ], [ %.02191635, %bb.am ], [ %.02191635, %bb.ar ], [ %.02191635, %.loopexit464 ], [ %.02191635, %bb.ba ], [ %.02191635, %bb.bb ], [ %.02191635, %bb.bd ], [ %.02191635, %bb.bf ], [ %.02191635, %bb.bh ], [ %.02191635, %bb.bp ], [ %.02191635, %bb.br ], [ %.02191635, %bb.bs ], [ %.02191635, %bb.bt ], [ %.02191635, %bb.bu ], [ %.02191635, %bb.bv ], [ %.02191635, %enable_large_pages.exit ] ; 2 uses
  %.1218 = phi i1 [ %.02171636, %bb.f ], [ %.02171636, %bb.h ], [ true, %bb.i ], [ %.02171636, %bb.j ], [ %.02171636, %bb.k ], [ %.02171636, %bb.l ], [ %.02171636, %bb.m ], [ %.02171636, %bb.n ], [ %.02171636, %._crit_edge ], [ %.02171636, %bb.s ], [ %.02171636, %bb.u ], [ %.02171636, %bb.w ], [ %.02171636, %bb.x ], [ %.02171636, %bb.y ], [ %.02171636, %bb.z ], [ %.02171636, %bb.aa ], [ %.02171636, %bb.ac ], [ %.02171636, %bb.ad ], [ %.02171636, %bb.ae ], [ %.02171636, %bb.ah ], [ %.02171636, %bb.ai ], [ %.02171636, %bb.an ], [ %.02171636, %bb.am ], [ %.02171636, %bb.ar ], [ %.02171636, %.loopexit464 ], [ %.02171636, %bb.ba ], [ %.02171636, %bb.bb ], [ %.02171636, %bb.bd ], [ %.02171636, %bb.bf ], [ %.02171636, %bb.bh ], [ %.02171636, %bb.bp ], [ %.02171636, %bb.br ], [ %.02171636, %bb.bs ], [ %.02171636, %bb.bt ], [ %.02171636, %bb.bu ], [ %.02171636, %bb.bv ], [ %.02171636, %enable_large_pages.exit ] ; 2 uses
  %.4216 = phi i1 [ %.02121637, %bb.f ], [ %.02121637, %bb.h ], [ %.02121637, %bb.i ], [ %.02121637, %bb.j ], [ %.02121637, %bb.k ], [ %.02121637, %bb.l ], [ %.02121637, %bb.m ], [ %.02121637, %bb.n ], [ %.1213.lcssa, %._crit_edge ], [ %.02121637, %bb.s ], [ %.02121637, %bb.u ], [ %.02121637, %bb.w ], [ %.02121637, %bb.x ], [ %.02121637, %bb.y ], [ %.02121637, %bb.z ], [ %.02121637, %bb.aa ], [ %.02121637, %bb.ac ], [ %.02121637, %bb.ad ], [ %.02121637, %bb.ae ], [ %.02121637, %bb.ah ], [ %.02121637, %bb.ai ], [ %.02121637, %bb.an ], [ %.02121637, %bb.am ], [ %.02121637, %bb.ar ], [ %.02121637, %.loopexit464 ], [ %.02121637, %bb.ba ], [ %.02121637, %bb.bb ], [ %.02121637, %bb.bd ], [ %.02121637, %bb.bf ], [ %.02121637, %bb.bh ], [ %.02121637, %bb.bp ], [ %.02121637, %bb.br ], [ %.02121637, %bb.bs ], [ %.02121637, %bb.bt ], [ %.02121637, %bb.bu ], [ %.02121637, %bb.bv ], [ %.02121637, %enable_large_pages.exit ] ; 2 uses
  %.4211 = phi i1 [ %.02071638, %bb.f ], [ %.02071638, %bb.h ], [ %.02071638, %bb.i ], [ %.02071638, %bb.j ], [ %.02071638, %bb.k ], [ %.02071638, %bb.l ], [ %.02071638, %bb.m ], [ %.02071638, %bb.n ], [ %.1208.lcssa, %._crit_edge ], [ %.02071638, %bb.s ], [ %.02071638, %bb.u ], [ %.02071638, %bb.w ], [ %.02071638, %bb.x ], [ %.02071638, %bb.y ], [ %.02071638, %bb.z ], [ %.02071638, %bb.aa ], [ %.02071638, %bb.ac ], [ %.02071638, %bb.ad ], [ %.02071638, %bb.ae ], [ %.02071638, %bb.ah ], [ %.02071638, %bb.ai ], [ %.02071638, %bb.an ], [ %.02071638, %bb.am ], [ %.02071638, %bb.ar ], [ %.02071638, %.loopexit464 ], [ %.02071638, %bb.ba ], [ %.02071638, %bb.bb ], [ %.02071638, %bb.bd ], [ %.02071638, %bb.bf ], [ %.02071638, %bb.bh ], [ %.02071638, %bb.bp ], [ %.02071638, %bb.br ], [ %.02071638, %bb.bs ], [ %.02071638, %bb.bt ], [ %.02071638, %bb.bu ], [ %.02071638, %bb.bv ], [ %.02071638, %enable_large_pages.exit ] ; 2 uses
  %.4206 = phi i1 [ %.02021639, %bb.f ], [ %.02021639, %bb.h ], [ %.02021639, %bb.i ], [ %.02021639, %bb.j ], [ %.02021639, %bb.k ], [ %.02021639, %bb.l ], [ %.02021639, %bb.m ], [ %.02021639, %bb.n ], [ %.1203.lcssa, %._crit_edge ], [ %.02021639, %bb.s ], [ %.02021639, %bb.u ], [ %.02021639, %bb.w ], [ %.02021639, %bb.x ], [ %.02021639, %bb.y ], [ %.02021639, %bb.z ], [ %.02021639, %bb.aa ], [ %.02021639, %bb.ac ], [ %.02021639, %bb.ad ], [ %.02021639, %bb.ae ], [ %.02021639, %bb.ah ], [ %.02021639, %bb.ai ], [ %.02021639, %bb.an ], [ %.02021639, %bb.am ], [ %.02021639, %bb.ar ], [ %.02021639, %.loopexit464 ], [ %.02021639, %bb.ba ], [ %.02021639, %bb.bb ], [ %.02021639, %bb.bd ], [ %.02021639, %bb.bf ], [ %.02021639, %bb.bh ], [ %.02021639, %bb.bp ], [ %.02021639, %bb.br ], [ %.02021639, %bb.bs ], [ %.02021639, %bb.bt ], [ %.02021639, %bb.bu ], [ %.02021639, %bb.bv ], [ %.02021639, %enable_large_pages.exit ] ; 2 uses
  %.4201 = phi i32 [ %.01971640, %bb.f ], [ %.01971640, %bb.h ], [ %.01971640, %bb.i ], [ %.01971640, %bb.j ], [ %.01971640, %bb.k ], [ %.01971640, %bb.l ], [ %.01971640, %bb.m ], [ %.01971640, %bb.n ], [ %.1198.lcssa, %._crit_edge ], [ %.01971640, %bb.s ], [ %.01971640, %bb.u ], [ %.01971640, %bb.w ], [ %.01971640, %bb.x ], [ %.01971640, %bb.y ], [ %.01971640, %bb.z ], [ %.01971640, %bb.aa ], [ %.01971640, %bb.ac ], [ %.01971640, %bb.ad ], [ %.01971640, %bb.ae ], [ %.01971640, %bb.ah ], [ %.01971640, %bb.ai ], [ %.01971640, %bb.an ], [ %.01971640, %bb.am ], [ %.01971640, %bb.ar ], [ %.01971640, %.loopexit464 ], [ %.01971640, %bb.ba ], [ %.01971640, %bb.bb ], [ %.01971640, %bb.bd ], [ %.01971640, %bb.bf ], [ %.01971640, %bb.bh ], [ %.01971640, %bb.bp ], [ %.01971640, %bb.br ], [ %.01971640, %bb.bs ], [ %.01971640, %bb.bt ], [ %.01971640, %bb.bu ], [ %.01971640, %bb.bv ], [ %.01971640, %enable_large_pages.exit ] ; 2 uses
  %.4195 = phi ptr [ %.01911641, %bb.f ], [ %.01911641, %bb.h ], [ %.01911641, %bb.i ], [ %.01911641, %bb.j ], [ %.01911641, %bb.k ], [ %.01911641, %bb.l ], [ %.01911641, %bb.m ], [ %.01911641, %bb.n ], [ %.1192.lcssa, %._crit_edge ], [ %.01911641, %bb.s ], [ %.01911641, %bb.u ], [ %.01911641, %bb.w ], [ %.01911641, %bb.x ], [ %.01911641, %bb.y ], [ %.01911641, %bb.z ], [ %.01911641, %bb.aa ], [ %.01911641, %bb.ac ], [ %.01911641, %bb.ad ], [ %.01911641, %bb.ae ], [ %.01911641, %bb.ah ], [ %.01911641, %bb.ai ], [ %.01911641, %bb.an ], [ %.01911641, %bb.am ], [ %.01911641, %bb.ar ], [ %.01911641, %.loopexit464 ], [ %.01911641, %bb.ba ], [ %.01911641, %bb.bb ], [ %.01911641, %bb.bd ], [ %.01911641, %bb.bf ], [ %.01911641, %bb.bh ], [ %.01911641, %bb.bp ], [ %.01911641, %bb.br ], [ %.01911641, %bb.bs ], [ %.01911641, %bb.bt ], [ %.01911641, %bb.bu ], [ %.01911641, %bb.bv ], [ %.01911641, %enable_large_pages.exit ] ; 2 uses
  %.4190 = phi i8 [ %.01861642, %bb.f ], [ %.01861642, %bb.h ], [ %.01861642, %bb.i ], [ %.01861642, %bb.j ], [ %.01861642, %bb.k ], [ %.01861642, %bb.l ], [ %.01861642, %bb.m ], [ %.01861642, %bb.n ], [ %.1187.lcssa, %._crit_edge ], [ %.01861642, %bb.s ], [ %.01861642, %bb.u ], [ %.01861642, %bb.w ], [ %.01861642, %bb.x ], [ %.01861642, %bb.y ], [ %.01861642, %bb.z ], [ %.01861642, %bb.aa ], [ %.01861642, %bb.ac ], [ %.01861642, %bb.ad ], [ %.01861642, %bb.ae ], [ %.01861642, %bb.ah ], [ %.01861642, %bb.ai ], [ %.01861642, %bb.an ], [ %.01861642, %bb.am ], [ %.01861642, %bb.ar ], [ %.01861642, %.loopexit464 ], [ %.01861642, %bb.ba ], [ %.01861642, %bb.bb ], [ %.01861642, %bb.bd ], [ %.01861642, %bb.bf ], [ %.01861642, %bb.bh ], [ %.01861642, %bb.bp ], [ %.01861642, %bb.br ], [ %.01861642, %bb.bs ], [ %.01861642, %bb.bt ], [ %.01861642, %bb.bu ], [ %.01861642, %bb.bv ], [ %.01861642, %enable_large_pages.exit ] ; 2 uses
  %i.jv = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.225, ptr noundef nonnull %7, ptr noundef nonnull %i.m) #33 ; 2 uses
  %.not291 = icmp eq i32 %i.jv, -1
  br i1 %.not291, label %._crit_edge1645.loopexit, label %.lr.ph1644, !llvm.loop !355

._crit_edge1645.loopexit:                         ; preds = %bb.gc
  %i.jw = trunc nuw i8 %.4190 to i1
  %i.jx = trunc nuw i8 %.1222 to i1
  %i.jy = xor i1 %.1218, true
  br label %._crit_edge1645

._crit_edge1645:                                  ; preds = %._crit_edge1645.loopexit, %bb.e
  %.0237.lcssa = phi i1 [ false, %bb.e ], [ %.1238, %._crit_edge1645.loopexit ]
  %.0235.lcssa = phi i1 [ false, %bb.e ], [ %.1236, %._crit_edge1645.loopexit ] ; 2 uses
  %.0232.lcssa = phi i1 [ false, %bb.e ], [ %.1233, %._crit_edge1645.loopexit ]
  %.0230.lcssa = phi i32 [ 0, %bb.e ], [ %.1231, %._crit_edge1645.loopexit ] ; 2 uses
  %.0228.lcssa = phi ptr [ null, %bb.e ], [ %.1229, %._crit_edge1645.loopexit ] ; 5 uses
  %.0226.lcssa = phi ptr [ null, %bb.e ], [ %.1227, %._crit_edge1645.loopexit ] ; 8 uses
  %.0221.lcssa = phi i1 [ false, %bb.e ], [ %i.jx, %._crit_edge1645.loopexit ] ; 2 uses
  %.0219.lcssa = phi i1 [ false, %bb.e ], [ %.1220, %._crit_edge1645.loopexit ]
  %.0217.lcssa = phi i1 [ true, %bb.e ], [ %i.jy, %._crit_edge1645.loopexit ]
  %.0212.lcssa = phi i1 [ true, %bb.e ], [ %.4216, %._crit_edge1645.loopexit ] ; 2 uses
  %.0207.lcssa = phi i1 [ true, %bb.e ], [ %.4211, %._crit_edge1645.loopexit ]
  %.0202.lcssa = phi i1 [ true, %bb.e ], [ %.4206, %._crit_edge1645.loopexit ]
  %.0197.lcssa = phi i32 [ 1, %bb.e ], [ %.4201, %._crit_edge1645.loopexit ]
  %.0191.lcssa = phi ptr [ null, %bb.e ], [ %.4195, %._crit_edge1645.loopexit ] ; 4 uses
  %.0186.lcssa = phi i1 [ false, %bb.e ], [ %i.jw, %._crit_edge1645.loopexit ]
  %i.jz = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 328), align 8, !tbaa !207 ; 2 uses
  %i.ka = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 84), align 4, !tbaa !156 ; 2 uses
  %i.kb = icmp sgt i32 %i.jz, %i.ka
  br i1 %i.kb, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %._crit_edge1645
  %i.kc = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.kd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kc, ptr noundef nonnull @.str.316, i32 noundef %i.jz, i32 noundef %i.ka) #35 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.ge:                                            ; preds = %._crit_edge1645
  %i.ke = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 116), align 4, !tbaa !177 ; 8 uses
  %i.kf = icmp slt i32 %i.ke, 1024
  br i1 %i.kf, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.kg = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite359 = call i64 @fwrite(ptr nonnull @.str.317, i64 46, i64 1, ptr %i.kg) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.gg:                                            ; preds = %bb.ge
  %i.kh = zext nneg i32 %i.ke to i64
  %i.ki = load i64, ptr @settings, align 8, !tbaa !152
  %i.kj = lshr i64 %i.ki, 1
  %i.kk = icmp samesign ult i64 %i.kj, %i.kh
  br i1 %i.kk, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.kl = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite358 = call i64 @fwrite(ptr nonnull @.str.318, i64 58, i64 1, ptr %i.kl) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.gi:                                            ; preds = %bb.gg
  %i.km = icmp samesign ugt i32 %i.ke, 1073741824
  br i1 %i.km, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.kn = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite357 = call i64 @fwrite(ptr nonnull @.str.319, i64 51, i64 1, ptr %i.kn) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.gk:                                            ; preds = %bb.gi
  %i.ko = icmp samesign ult i32 %i.ke, 1048577
  %or.cond41 = select i1 %i.ko, i1 true, i1 %.0186.lcssa
  br i1 %or.cond41, label %._crit_edge1762, label %bb.gl

._crit_edge1762:                                  ; preds = %bb.gk
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !182
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.kp = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !216
  %i.kq = sdiv i32 %i.kp, 2                       ; 2 uses
  store i32 %i.kq, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8, !tbaa !182
  br label %bb.gm

bb.gm:                                            ; preds = %._crit_edge1762, %bb.gl
  %i.kr = phi i32 [ %.pre, %._crit_edge1762 ], [ %i.kq, %bb.gl ] ; 6 uses
  %i.ks = icmp sgt i32 %i.kr, %i.ke
  br i1 %i.ks, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.kt = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ku = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kt, ptr noundef nonnull @.str.320, i32 noundef %i.kr, i32 noundef %i.ke) #35 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.kv = srem i32 %i.ke, %i.kr
  %.not292 = icmp eq i32 %i.kv, 0
  br i1 %.not292, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.kw = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.kx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kw, ptr noundef nonnull @.str.321, i32 noundef %i.ke, i32 noundef %i.kr) #35 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.gq:                                            ; preds = %bb.go
  %i.ky = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !216 ; 2 uses
  %i.kz = srem i32 %i.ky, %i.kr
  %.not293 = icmp eq i32 %i.kz, 0
  br i1 %.not293, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.la = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.lb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.la, ptr noundef nonnull @.str.322, i32 noundef %i.kr, i32 noundef %i.ky) #35 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.gs:                                            ; preds = %bb.gq
  %i.lc = call i32 @storage_check_config(ptr noundef nonnull %i.ad) #33
  switch i32 %i.lc, label %bb.gv [
    i32 0, label %bb.gt
    i32 1, label %bb.gu
  ]

bb.gt:                                            ; preds = %bb.gs
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  call void @exit(i32 noundef 64) #42
  unreachable

bb.gv:                                            ; preds = %bb.gt, %bb.gs
  %.0182 = phi i1 [ false, %bb.gs ], [ true, %bb.gt ] ; 2 uses
  %.not294.not = icmp eq ptr %.0191.lcssa, null   ; 2 uses
  br i1 %.not294.not, label %bb.hj, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ld = call noalias ptr @strdup(ptr noundef nonnull %.0191.lcssa) #33 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr null, ptr %i.e, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store i32 0, ptr %i.f, align 4, !tbaa !16
  %char0.i = load i8, ptr %.0191.lcssa, align 1
  %i.le = icmp eq i8 %char0.i, 0
  br i1 %i.le, label %bb.hi, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.lf = call ptr @strtok_r(ptr noundef nonnull %.0191.lcssa, ptr noundef nonnull @.str.455, ptr noundef nonnull %i.e) #33 ; 2 uses
  %.not30.i = icmp eq ptr %i.lf, null
  br i1 %.not30.i, label %.loopexit462, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.gx, %bb.hg
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.hg ], [ 0, %bb.gx ] ; 3 uses
  %.033.i = phi ptr [ %i.lu, %bb.hg ], [ %i.lf, %bb.gx ]
  %.01332.i = phi i32 [ %.pre.i, %bb.hg ], [ 0, %bb.gx ] ; 2 uses
  %i.lg = call zeroext i1 @safe_strtoul(ptr noundef nonnull %.033.i, ptr noundef nonnull %i.f) #33
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !16 ; 9 uses
  br i1 %i.lg, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %.lr.ph.i
  %i.lh = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 80), align 8, !tbaa !169
  %i.li = icmp ult i32 %.pre.i, %i.lh
  %i.lj = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 120), align 8
end_hunk_6
begin_hunk_7_@main:bb.a
  call void @exit(i32 noundef 64) #42
  unreachable

bb.hq:                                            ; preds = %bb.ho
  %i.mj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 24), align 8, !tbaa !163 ; 2 uses
  %.not298 = icmp eq ptr %i.mj, null
  br i1 %.not298, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.mk = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.mj, i32 noundef 44) #41
  %.not299 = icmp eq ptr %i.mk, null
  br i1 %.not299, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.ml = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 84), align 4, !tbaa !156
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hr, %bb.hs
  %storemerge = phi i32 [ %i.ml, %bb.hs ], [ 1, %bb.hr ]
  store i32 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 88), align 8, !tbaa !170
  %i.mm = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 132), align 4, !tbaa !176, !range !66, !noundef !67
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.hu, label %bb.ia

bb.hu:                                            ; preds = %bb.ht
  br i1 %.0221.lcssa, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175
  br label %bb.hy

bb.hw:                                            ; preds = %bb.hu
  %i.mo = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175
  %.not300 = icmp eq i32 %i.mo, 4
  br i1 %.not300, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.mp = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite355 = call i64 @fwrite(ptr nonnull @.str.327, i64 61, i64 1, ptr %i.mp) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.hy:                                            ; preds = %bb.hw, %bb.hv
  %i.mq = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 16), align 8, !tbaa !162
  %.not301 = icmp eq i32 %i.mq, 0
  br i1 %.not301, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.mr = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite354 = call i64 @fwrite(ptr nonnull @.str.328, i64 65, i64 1, ptr %i.mr) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.ia:                                            ; preds = %bb.hy, %bb.ht
  %i.ms = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128
  %.not302 = icmp eq ptr %i.ms, null
  br i1 %.not302, label %bb.if, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  br i1 %.0221.lcssa, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175
  br label %bb.if

bb.id:                                            ; preds = %bb.ib
  %i.mt = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175
  %.not303 = icmp eq i32 %i.mt, 3
  br i1 %.not303, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.mu = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite353 = call i64 @fwrite(ptr nonnull @.str.329, i64 85, i64 1, ptr %i.mu) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.if:                                            ; preds = %bb.ic, %bb.id, %bb.ia
  %i.mv = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 16), align 8 ; 3 uses
  %i.mw = icmp eq i32 %i.mv, 0
  %or.cond30 = select i1 %.0217.lcssa, i1 true, i1 %i.mw
  %or.cond32 = select i1 %or.cond30, i1 true, i1 %.0219.lcssa
  br i1 %or.cond32, label %thread-pre-split, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  store i32 %i.mv, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 12), align 4, !tbaa !161
  br label %bb.ih

thread-pre-split:                                 ; preds = %bb.if
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 12), align 4, !tbaa !161
  br label %bb.ih

bb.ih:                                            ; preds = %thread-pre-split, %bb.ig
  %i.mx = phi i32 [ %.pr, %thread-pre-split ], [ %i.mv, %bb.ig ] ; 3 uses
  %i.my = icmp sgt i32 %i.mx, 65535
  br i1 %i.my, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.mz = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.na = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mz, ptr noundef nonnull @.str.330, i32 noundef %i.mx) #35 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.ij:                                            ; preds = %bb.ih
  %i.nb = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 138), align 2, !tbaa !218, !range !66, !noundef !67
  %i.nc = trunc nuw i8 %i.nb to i1
  %i.nd = icmp eq i32 %i.mx, 0
  %or.cond44.not = and i1 %i.nd, %i.nc
  br i1 %or.cond44.not, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.ne = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite305 = call i64 @fwrite(ptr nonnull @.str.331, i64 49, i64 1, ptr %i.ne) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.il:                                            ; preds = %bb.ij
  %.not306 = icmp eq i32 %.0230.lcssa, 0
  br i1 %.not306, label %bb.is, label %bb.im

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.nf = call i32 @getrlimit(i32 noundef 4, ptr noundef nonnull %6) #33
  %i.ng = icmp eq i32 %i.nf, 0
  br i1 %i.ng, label %bb.in, label %bb.ip

bb.in:                                            ; preds = %bb.im
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 -1, i64 16, i1 false)
  %i.nh = call i32 @setrlimit(i32 noundef 4, ptr noundef nonnull %8) #33
  %.not307 = icmp eq i32 %i.nh, 0
  br i1 %.not307, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.ni = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !366 ; 2 uses
  store i64 %i.nk, ptr %i.ni, align 8, !tbaa !366
  store i64 %i.nk, ptr %8, align 8, !tbaa !367
  %i.nl = call i32 @setrlimit(i32 noundef 4, ptr noundef nonnull %8) #33 ; 0 uses
  br label %bb.ip

bb.ip:                                            ; preds = %bb.in, %bb.io, %bb.im
  %i.nm = call i32 @getrlimit(i32 noundef 4, ptr noundef nonnull %6) #33
  %i.nn = icmp ne i32 %i.nm, 0
  %i.no = load i64, ptr %6, align 8
  %i.np = icmp eq i64 %i.no, 0
  %or.cond35 = select i1 %i.nn, i1 true, i1 %i.np
  br i1 %or.cond35, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.nq = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite352 = call i64 @fwrite(ptr nonnull @.str.332, i64 35, i64 1, ptr %i.nq) #37 ; 0 uses
  call void @exit(i32 noundef 71) #42
  unreachable

bb.ir:                                            ; preds = %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.il
  %i.nr = call i32 @getrlimit(i32 noundef 7, ptr noundef nonnull %6) #33
  %.not308 = icmp eq i32 %i.nr, 0
  br i1 %.not308, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.ns = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite351 = call i64 @fwrite(ptr nonnull @.str.333, i64 36, i64 1, ptr %i.ns) #37 ; 0 uses
  call void @exit(i32 noundef 71) #42
  unreachable

bb.iu:                                            ; preds = %bb.is
  %i.nt = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 8), align 8, !tbaa !68
  %i.nu = sext i32 %i.nt to i64                   ; 2 uses
  store i64 %i.nu, ptr %6, align 8, !tbaa !367
  %i.nv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.nu, ptr %i.nv, align 8, !tbaa !366
  %i.nw = call i32 @setrlimit(i32 noundef 7, ptr noundef nonnull %6) #33
  %.not309 = icmp eq i32 %i.nw, 0
  br i1 %.not309, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.nx = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite350 = call i64 @fwrite(ptr nonnull @.str.334, i64 96, i64 1, ptr %i.nx) #37 ; 0 uses
  call void @exit(i32 noundef 71) #42
  unreachable

bb.iw:                                            ; preds = %bb.iu
  %i.ny = call i32 @getuid() #33
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.oa = call i32 @geteuid() #33
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %bb.iy, label %bb.jj

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %i.oc = icmp eq ptr %.0228.lcssa, null
  br i1 %i.oc, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.od = load i8, ptr %.0228.lcssa, align 1, !tbaa !80
  %i.oe = icmp eq i8 %i.od, 0
  br i1 %i.oe, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.of = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite349 = call i64 @fwrite(ptr nonnull @.str.335, i64 36, i64 1, ptr %i.of) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.jb:                                            ; preds = %bb.iz
  %i.og = call ptr @getpwnam(ptr noundef nonnull %.0228.lcssa) ; 3 uses
  %i.oh = icmp eq ptr %i.og, null
  br i1 %i.oh, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.oi = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.oj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oi, ptr noundef nonnull @.str.336, ptr noundef nonnull %.0228.lcssa) #35 ; 0 uses
  call void @exit(i32 noundef 67) #42
  unreachable

bb.jd:                                            ; preds = %bb.jb
  %i.ok = call i32 @setgroups(i64 noundef 0, ptr noundef null) #33
  %i.ol = icmp slt i32 %i.ok, 0
  br i1 %i.ol, label %bb.je, label %bb.jg

bb.je:                                            ; preds = %bb.jd
  %i.om = tail call ptr @__errno_location() #36
  %i.on = load i32, ptr %i.om, align 4, !tbaa !16 ; 2 uses
  %.not310 = icmp eq i32 %i.on, 1
  %i.oo = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.op = call ptr @strerror(i32 noundef %i.on) #33
  %i.oq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oo, ptr noundef nonnull @.str.337, ptr noundef %i.op) #35 ; 0 uses
  br i1 %.not310, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @exit(i32 noundef 71) #42
  unreachable

bb.jg:                                            ; preds = %bb.je, %bb.jd
  %i.or = getelementptr inbounds nuw i8, ptr %i.og, i64 20
  %i.os = load i32, ptr %i.or, align 4, !tbaa !369
  %i.ot = call i32 @setgid(i32 noundef %i.os) #33
  %i.ou = icmp slt i32 %i.ot, 0
  br i1 %i.ou, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.ov = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !370
  %i.ox = call i32 @setuid(i32 noundef %i.ow) #33
  %i.oy = icmp slt i32 %i.ox, 0
  br i1 %i.oy, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %i.oz = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.pa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oz, ptr noundef nonnull @.str.338, ptr noundef nonnull %.0228.lcssa) #35 ; 0 uses
  call void @exit(i32 noundef 71) #42
  unreachable

bb.jj:                                            ; preds = %bb.jh, %bb.ix
  br i1 %.0235.lcssa, label %bb.jk, label %bb.jm

bb.jk:                                            ; preds = %bb.jj
  %i.pb = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.pc = call i32 @daemonize(i32 noundef %.0230.lcssa, i32 noundef %i.pb) #33
  %i.pd = icmp eq i32 %i.pc, -1
  br i1 %i.pd, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.pe = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite348 = call i64 @fwrite(ptr nonnull @.str.339, i64 41, i64 1, ptr %i.pe) #37 ; 0 uses
  call void @exit(i32 noundef 1) #42
  unreachable

bb.jm:                                            ; preds = %bb.jk, %bb.jj
  br i1 %.0237.lcssa, label %bb.jn, label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  %i.pf = call i32 @mlockall(i32 noundef 3) #33
  %.not311 = icmp eq i32 %i.pf, 0
  br i1 %.not311, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.pg = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ph = tail call ptr @__errno_location() #36
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !16
  %i.pj = call ptr @strerror(i32 noundef %i.pi) #33
  %i.pk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pg, ptr noundef nonnull @.str.340, ptr noundef %i.pj) #35 ; 0 uses
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jn, %bb.jo, %bb.jm
  %i.pl = call ptr @event_config_new() #33        ; 3 uses
  %i.pm = call i32 @event_config_set_flag(ptr noundef %i.pl, i32 noundef 1) #33 ; 0 uses
  %i.pn = call ptr @event_base_new_with_config(ptr noundef %i.pl) #33
  store ptr %i.pn, ptr @main_base, align 8, !tbaa !213
  call void @event_config_free(ptr noundef %i.pl) #33
  %i.po = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128 ; 2 uses
  %.not312 = icmp eq ptr %i.po, null
  br i1 %.not312, label %bb.jx, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.pp = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 16), align 8, !tbaa !162
  %.not313 = icmp eq i32 %i.pp, 0
  br i1 %.not313, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.pq = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite347 = call i64 @fwrite(ptr nonnull @.str.341, i64 67, i64 1, ptr %i.pq) #37 ; 0 uses
  call void @exit(i32 noundef 64) #42
  unreachable

bb.js:                                            ; preds = %bb.jq
  %i.pr = call i32 @authfile_load(ptr noundef nonnull %i.po) #33
  switch i32 %i.pr, label %bb.jx [
    i32 2, label %bb.jt
    i32 3, label %bb.ju
    i32 1, label %bb.jv
    i32 4, label %bb.jw
  ]

bb.jt:                                            ; preds = %bb.js
  %i.ps = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128
  %i.pt = tail call ptr @__errno_location() #36
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !16
  %i.pv = call ptr @strerror(i32 noundef %i.pu) #33
  call void (ptr, ...) @vperror(ptr noundef nonnull @.str.342, ptr noundef %i.ps, ptr noundef %i.pv) #33
  call void @exit(i32 noundef 1) #42
  unreachable

bb.ju:                                            ; preds = %bb.js
  %i.pw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128
  %i.px = tail call ptr @__errno_location() #36
  %i.py = load i32, ptr %i.px, align 4, !tbaa !16
  %i.pz = call ptr @strerror(i32 noundef %i.py) #33
  call void (ptr, ...) @vperror(ptr noundef nonnull @.str.343, ptr noundef %i.pw, ptr noundef %i.pz) #33
  call void @exit(i32 noundef 1) #42
  unreachable

bb.jv:                                            ; preds = %bb.js
  %i.qa = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.qb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128
  %i.qc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qa, ptr noundef nonnull @.str.344, ptr noundef %i.qb) #35 ; 0 uses
  call void @exit(i32 noundef 1) #42
  unreachable

bb.jw:                                            ; preds = %bb.js
  %i.qd = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.qe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128
  %i.qf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qd, ptr noundef nonnull @.str.345, ptr noundef %i.qe) #35 ; 0 uses
  call void @exit(i32 noundef 1) #42
  unreachable

bb.jx:                                            ; preds = %bb.js, %bb.jp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) @stats, i8 0, i64 232, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @stats_state, i8 0, i64 56, i1 false)
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 53), align 1, !tbaa !153
  %i.qg = call i64 @time(ptr noundef null) #33
  %i.qh = add nsw i64 %i.qg, -62
  store i64 %i.qh, ptr @process_started, align 8, !tbaa !15
  %i.qi = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 92), align 4, !tbaa !171
  call void @stats_prefix_init(i8 noundef signext %i.qi) #33
  call void @logger_init() #33
  %i.qj = call ptr @logger_create() #33           ; 0 uses
  %i.qk = call i32 @dup(i32 noundef 1) #33        ; 3 uses
  %i.ql = icmp slt i32 %i.qk, 0
  br i1 %i.ql, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  call void @perror(ptr noundef nonnull @.str.460) #37
  call void @exit(i32 noundef 1) #42
  unreachable

bb.jz:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.qm = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 8), align 8, !tbaa !68
  %i.qn = add nuw i32 %i.qk, 10
  %i.qo = add i32 %i.qn, %i.qm
  store i32 %i.qo, ptr @max_fds, align 4, !tbaa !16
  %i.qp = call i32 @getrlimit(i32 noundef 7, ptr noundef nonnull %5) #33
  %i.qq = icmp eq i32 %i.qp, 0
  br i1 %i.qq, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.qr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !366
  %i.qt = trunc i64 %i.qs to i32
  store i32 %i.qt, ptr @max_fds, align 4, !tbaa !16
  br label %bb.kc

bb.kb:                                            ; preds = %bb.jz
  %i.qu = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite.i422 = call i64 @fwrite(ptr nonnull @.str.461, i64 66, i64 1, ptr %i.qu) #37 ; 0 uses
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.qv = call i32 @close(i32 noundef %i.qk) #33  ; 0 uses
  %i.qw = load i32, ptr @max_fds, align 4, !tbaa !16
  %i.qx = sext i32 %i.qw to i64
  %i.qy = call noalias ptr @calloc(i64 noundef %i.qx, i64 noundef 8) #40 ; 2 uses
  store ptr %i.qy, ptr @conns, align 8, !tbaa !119
  %i.qz = icmp eq ptr %i.qy, null
end_hunk_7
begin_hunk_8_@clock_gettime
; Function Attrs: nounwind uwtable
define internal void @clock_handler(i32 %0, i16 signext %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 4 uses
  %4 = alloca %struct.timespec, align 8           ; 4 uses
  %5 = alloca %struct.timeval, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @__const.clock_handler.t, i64 16, i1 false)
  %.b1 = load i1, ptr @clock_handler.initialized, align 1
  br i1 %.b1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @event_del(ptr noundef nonnull @clockevent) #33 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i1 true, ptr @clock_handler.initialized, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = load i64, ptr @stats_state, align 8, !tbaa !209
  tail call void @assoc_start_expand(i64 noundef %i.b) #33
  %i.c = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 128), align 8, !tbaa !225
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store volatile i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 128), align 8, !tbaa !225
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128
  %i.e = tail call i32 @authfile_load(ptr noundef %i.d) #33 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @event_set(ptr noundef nonnull @clockevent, i32 noundef -1, i16 noundef signext 0, ptr noundef nonnull @clock_handler, ptr noundef null) #33
  %i.f = load ptr, ptr @main_base, align 8, !tbaa !213
  %i.g = tail call i32 @event_base_set(ptr noundef %i.f, ptr noundef nonnull @clockevent) #33 ; 0 uses
  %i.h = call i32 @event_add(ptr noundef nonnull @clockevent, ptr noundef nonnull %3) #33 ; 0 uses
  %.b = load i1, ptr @monotonic, align 1
  br i1 %.b, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.i = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #33
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load i64, ptr %4, align 8, !tbaa !222
  %i.l = load i64, ptr @monotonic_start, align 8, !tbaa !15
  %i.m = sub nsw i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  store volatile i32 %i.n, ptr @current_time, align 4, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.o = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #33 ; 0 uses
  %i.p = load i64, ptr %5, align 8, !tbaa !212
  %i.q = load i64, ptr @process_started, align 8, !tbaa !15
  %i.r = sub nsw i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32
  store volatile i32 %i.s, ptr @current_time, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @server_sockets(i32 noundef range(i32 1, 0) %0, i32 noundef range(i32 1, 3) %1, ptr nofree noundef captures(address_is_null) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 138), align 2, !tbaa !218, !range !66, !noundef !67
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 24), align 8, !tbaa !163 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175
  %i.h = tail call fastcc i32 @server_socket(ptr noundef null, i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef 0, i32 noundef %i.g)
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.i = tail call noalias ptr @strdup(ptr noundef nonnull %i.e) #33 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite190 = tail call i64 @fwrite(ptr nonnull @.str.494, i64 62, i64 1, ptr %i.k) #37 ; 0 uses
  br label %bb.aq

bb.e:                                             ; preds = %bb.c
  %i.l = call ptr @strtok_r(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.495, ptr noundef nonnull %i.a) #33 ; 2 uses
  %.not243 = icmp eq ptr %i.l, null
  br i1 %.not243, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.ap
  %.0127247 = phi ptr [ %i.dc, %bb.ap ], [ %i.l, %bb.e ] ; 7 uses
  %.0131246 = phi i32 [ %.6137, %bb.ap ], [ 0, %bb.e ] ; 2 uses
  %.0139245 = phi i32 [ %i.cx, %bb.ap ], [ 0, %bb.e ]
  %.1156244 = phi i8 [ %.3158, %bb.ap ], [ %i.d, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 %0, ptr %i.c, align 4, !tbaa !16
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 138), align 2, !tbaa !218, !range !66, !noundef !67
  %i.n = trunc nuw i8 %i.m to i1                  ; 4 uses
  %spec.select191 = select i1 %i.n, i8 1, i8 %.1156244
  %i.o = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0127247, ptr noundef nonnull dereferenceable(6) @.str.491, i64 noundef 5) #41
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite180 = call i64 @fwrite(ptr nonnull @.str.496, i64 49, i64 1, ptr %i.q) #37 ; 0 uses
  br label %.thread200

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.0127247, i64 6
  br label %bb.q

bb.i:                                             ; preds = %.lr.ph
  %i.s = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0127247, ptr noundef nonnull dereferenceable(5) @.str.492, i64 noundef 4) #41
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %i.n, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite179 = call i64 @fwrite(ptr nonnull @.str.497, i64 48, i64 1, ptr %i.u) #37 ; 0 uses
  br label %.thread200

bb.l:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.0127247, i64 5
  br label %bb.q

bb.m:                                             ; preds = %bb.i
  %i.w = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0127247, ptr noundef nonnull dereferenceable(5) @.str.493, i64 noundef 4) #41
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite = call i64 @fwrite(ptr nonnull @.str.498, i64 48, i64 1, ptr %i.y) #37 ; 0 uses
  br label %.thread200

bb.p:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %.0127247, i64 5
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p, %bb.m, %bb.h
  %.3158 = phi i8 [ 0, %bb.h ], [ 2, %bb.l ], [ 3, %bb.p ], [ %spec.select191, %bb.m ]
  %.1128 = phi ptr [ %i.r, %bb.h ], [ %i.v, %bb.l ], [ %i.z, %bb.p ], [ %.0127247, %bb.m ] ; 4 uses
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 108), align 4, !tbaa !175 ; 3 uses
  %i.ab = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.1128, ptr noundef nonnull dereferenceable(6) @.str.499, i64 noundef 5) #41
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.r, label %sub_0thread-pre-split

bb.r:                                             ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %.1128, i64 5 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.af = icmp eq i8 %i.ae, 91
  br i1 %i.af, label %bb.s, label %sub_0

bb.s:                                             ; preds = %bb.r
  %i.ag = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ad, i32 noundef 93) #41 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.500, ptr noundef nonnull %i.ad) #35 ; 0 uses
  br label %.thread200

bb.u:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %.1128, i64 6 ; 5 uses
  store i8 0, ptr %i.ag, align 1, !tbaa !80
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 5 uses
  %i.ap = call i32 @strncmp(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.14, i64 noundef %i.an) #41
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %sub_0thread-pre-split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = call i32 @strncmp(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.13, i64 noundef %i.an) #41
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128
  %.not183 = icmp eq ptr %i.at, null
  br i1 %.not183, label %sub_0thread-pre-split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite184 = call i64 @fwrite(ptr nonnull @.str.501, i64 61, i64 1, ptr %i.au) #37 ; 0 uses
  br label %.thread200

bb.y:                                             ; preds = %bb.v
  %i.av = call i32 @strncmp(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.502, i64 noundef %i.an) #41
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 56), align 8, !tbaa !128
  %.not181 = icmp eq ptr %i.ax, null
  br i1 %.not181, label %sub_0thread-pre-split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite182 = call i64 @fwrite(ptr nonnull @.str.503, i64 76, i64 1, ptr %i.ay) #37 ; 0 uses
  br label %sub_0thread-pre-split

bb.ab:                                            ; preds = %bb.y
  %i.az = call i32 @strncmp(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.504, i64 noundef %i.an) #41
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.ac, label %sub_0thread-pre-split

bb.ac:                                            ; preds = %bb.ab
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.bc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.505, ptr noundef nonnull %i.i) #35 ; 0 uses
  br label %.thread200

sub_0thread-pre-split:                            ; preds = %bb.aa, %bb.ab, %bb.u, %bb.w, %bb.z, %bb.q
  %.3130.ph = phi ptr [ %i.ao, %bb.aa ], [ %i.ao, %bb.ab ], [ %i.ao, %bb.u ], [ %i.ao, %bb.w ], [ %i.ao, %bb.z ], [ %.1128, %bb.q ] ; 2 uses
  %.3.ph = phi i32 [ 3, %bb.aa ], [ %i.aa, %bb.ab ], [ 3, %bb.u ], [ 4, %bb.w ], [ 5, %bb.z ], [ %i.aa, %bb.q ]
  %.pr272 = load i8, ptr %.3130.ph, align 1
  br label %sub_0

sub_0:                                            ; preds = %sub_0thread-pre-split, %bb.r
  %i.bd = phi i8 [ %.pr272, %sub_0thread-pre-split ], [ %i.ae, %bb.r ] ; 2 uses
  %.3130 = phi ptr [ %.3130.ph, %sub_0thread-pre-split ], [ %i.ad, %bb.r ] ; 8 uses
  %.3 = phi i32 [ %.3.ph, %sub_0thread-pre-split ], [ %i.aa, %bb.r ]
  %.not249 = icmp eq i8 %i.bd, 116
  br i1 %.not249, label %sub_1, label %thread-pre-split

sub_1:                                            ; preds = %sub_0
  %i.be = getelementptr inbounds nuw i8, ptr %.3130, i64 1
  %i.bf = load i8, ptr %i.be, align 1
  %.not250 = icmp eq i8 %i.bf, 97
  br i1 %.not250, label %.thread.tail, label %thread-pre-split.thread

.thread.tail:                                     ; preds = %sub_1
  %i.bg = getelementptr inbounds nuw i8, ptr %.3130, i64 2
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = icmp eq i8 %i.bh, 103
  br i1 %i.bi, label %bb.ad, label %thread-pre-split.thread

bb.ad:                                            ; preds = %.thread.tail
  %i.bj = getelementptr inbounds nuw i8, ptr %.3130, i64 3 ; 4 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !80  ; 2 uses
  switch i8 %i.bk, label %thread-pre-split [
    i8 91, label %bb.ae
    i8 95, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.bl = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bj, i32 noundef 93) #41 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.af, label %.thread196

bb.af:                                            ; preds = %bb.ae
  %i.bn = getelementptr inbounds nuw i8, ptr %.3130, i64 4
  %i.bo = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bn, i32 noundef 95) #41 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.ag, label %.thread196

bb.ag:                                            ; preds = %bb.af
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.br = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.507, ptr noundef nonnull %i.bj) #35 ; 0 uses
  br label %.thread200

.thread196:                                       ; preds = %bb.ae, %bb.af
  %.0124198 = phi ptr [ %i.bo, %bb.af ], [ %i.bl, %bb.ae ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.3130, i64 4 ; 4 uses
  store i8 0, ptr %.0124198, align 1, !tbaa !80
  %i.bt = ptrtoint ptr %.0124198 to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 9
  %i.bx = icmp ne ptr %.0124198, %i.bs
  %or.cond.not = and i1 %i.bx, %i.bw
  br i1 %or.cond.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread196
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.bz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.508, ptr noundef nonnull %i.bs) #35 ; 0 uses
  br label %.thread200

bb.ai:                                            ; preds = %.thread196
  %i.ca = getelementptr inbounds nuw i8, ptr %.0124198, i64 2 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull align 1 %i.bs, i64 %i.bv, i1 false)
  %.pr.pre = load i8, ptr %i.ca, align 1, !tbaa !80
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %sub_0, %bb.ai, %bb.ad
  %i.cb = phi i8 [ %i.bk, %bb.ad ], [ %.pr.pre, %bb.ai ], [ %i.bd, %sub_0 ]
  %.5 = phi ptr [ %i.bj, %bb.ad ], [ %i.ca, %bb.ai ], [ %.3130, %sub_0 ] ; 4 uses
  %i.cc = icmp eq i8 %i.cb, 91
  br i1 %i.cc, label %bb.aj, label %thread-pre-split.thread

bb.aj:                                            ; preds = %thread-pre-split
  %i.cd = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.5, i32 noundef 93) #41 ; 3 uses
  %.not187 = icmp eq ptr %i.cd, null
  br i1 %.not187, label %.thread203, label %bb.ak

.thread203:                                       ; preds = %bb.aj
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.cf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ce, ptr noundef nonnull @.str.509, ptr noundef nonnull %.5) #35 ; 0 uses
  br label %.thread200

bb.ak:                                            ; preds = %bb.aj
  %i.cg = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 0, ptr %i.cd, align 1, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %sub_1, %.thread.tail, %bb.ak, %thread-pre-split
  %.7 = phi ptr [ %i.ch, %bb.ak ], [ %.5, %thread-pre-split ], [ %.3130, %.thread.tail ], [ %.3130, %sub_1 ] ; 2 uses
  %.1 = phi ptr [ %i.cg, %bb.ak ], [ null, %thread-pre-split ], [ null, %.thread.tail ], [ null, %sub_1 ] ; 3 uses
  %i.ci = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.7, i32 noundef 58) #41 ; 3 uses
  %.not188 = icmp eq ptr %i.ci, null
  br i1 %.not188, label %sub_0213, label %bb.al

bb.al:                                            ; preds = %thread-pre-split.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 3 uses
  %i.ck = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cj, i32 noundef 58) #41
  %i.cl = icmp eq ptr %i.ck, null
  %i.cm = icmp ne ptr %.1, null
  %or.cond7 = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond7, label %bb.am, label %sub_0213

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %i.ci, align 1, !tbaa !80
  %i.cn = call zeroext i1 @safe_strtol(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.c) #33
  br i1 %i.cn, label %sub_0213, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.cp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.510, ptr noundef nonnull %i.cj) #35 ; 0 uses
  br label %.thread200

sub_0213:                                         ; preds = %bb.al, %bb.am, %thread-pre-split.thread
  %.not189 = icmp eq ptr %.1, null
  %spec.select192 = select i1 %.not189, ptr %.7, ptr %.1 ; 4 uses
  %i.cq = load i8, ptr %spec.select192, align 1
  %.not251 = icmp eq i8 %i.cq, 42
  br i1 %.not251, label %sub_1214, label %.tail

sub_1214:                                         ; preds = %sub_0213
  %i.cr = getelementptr inbounds nuw i8, ptr %spec.select192, i64 1
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp eq i8 %i.cs, 0
  %i.cu = select i1 %i.ct, ptr null, ptr %spec.select192
  br label %.tail

.tail:                                            ; preds = %sub_0213, %sub_1214
  %spec.store.select = phi ptr [ %spec.select192, %sub_0213 ], [ %i.cu, %sub_1214 ]
  %i.cv = load i32, ptr %i.c, align 4, !tbaa !16
  %.0..0..0..0.51 = load i64, ptr %i.b, align 8, !tbaa !15
  %i.cw = call fastcc i32 @server_socket(ptr noundef %spec.store.select, i32 noundef %i.cv, i32 noundef %1, ptr noundef %2, i64 noundef %.0..0..0..0.51, i32 noundef %.3)
  %i.cx = or i32 %i.cw, %.0139245                 ; 3 uses
  %i.cy = icmp ne i32 %i.cx, 0
  %i.cz = icmp eq i32 %.0131246, 0
  %or.cond9 = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond9, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.tail
  %i.da = tail call ptr @__errno_location() #36
  %i.db = load i32, ptr %i.da, align 4, !tbaa !16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.tail
  %.6137 = phi i32 [ %i.db, %bb.ao ], [ %.0131246, %.tail ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dc = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.495, ptr noundef nonnull %i.a) #33 ; 2 uses
  %.not = icmp eq ptr %i.dc, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !380

.thread200:                                       ; preds = %bb.ah, %bb.ag, %bb.o, %bb.g, %bb.k, %.thread203, %bb.an, %bb.x, %bb.ac, %bb.t
  call void @free(ptr noundef %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aq

._crit_edge:                                      ; preds = %bb.ap, %bb.e
  %.0139.lcssa = phi i32 [ 0, %bb.e ], [ %i.cx, %bb.ap ]
  %.0131.lcssa = phi i32 [ 0, %bb.e ], [ %.6137, %bb.ap ]
  call void @free(ptr noundef %i.i) #33
  %i.dd = tail call ptr @__errno_location() #36
  store i32 %.0131.lcssa, ptr %i.dd, align 4, !tbaa !16
  br label %bb.aq

bb.aq:                                            ; preds = %.thread200, %._crit_edge, %bb.d
  %.16 = phi i32 [ 1, %bb.d ], [ %.0139.lcssa, %._crit_edge ], [ 1, %.thread200 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.b
  %.17 = phi i32 [ %i.h, %bb.b ], [ %.16, %bb.aq ]
  ret i32 %.17
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

declare i32 @usleep(i32 noundef) local_unnamed_addr #2

declare void @uriencode_init() local_unnamed_addr #2

declare i32 @event_base_loop(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @stop_threads() local_unnamed_addr #2

declare void @restart_mmap_close() local_unnamed_addr #2

declare void @event_base_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #24

declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #24

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare ptr @do_cache_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_store_item_copy_chunks(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.b = load i8, ptr %i.a, align 1, !tbaa !80
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.g = load i16, ptr %i.f, align 2, !tbaa !88
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = lshr i32 %i.h, 6
  %i.j = and i32 %i.i, 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.m = shl nuw nsw i32 %i.h, 2
  %i.n = and i32 %i.m, 8
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0101 = phi ptr [ %i.p, %bb.a ], [ %i.v, %bb.c ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0101, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %.0101, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %.0101, align 8, !tbaa !91 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.d, label %bb.b, !llvm.loop !381

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 38 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !88
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = and i32 %i.y, 32
  %.not126 = icmp eq i32 %i.z, 0
  br i1 %.not126, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %.not130151 = icmp sgt i32 %2, 0
  br i1 %.not130151, label %.lr.ph154, label %.critedge

.lr.ph154:                                        ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 41
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq i32 %2, 0
  br i1 %i.ab, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !80
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 49
  %i.ah = lshr i32 %i.y, 6
  %i.ai = and i32 %i.ah, 4
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  %i.al = shl nuw nsw i32 %i.y, 2
  %i.am = and i32 %i.al, 8
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.094148 = phi i32 [ %.296, %bb.i ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.097147 = phi ptr [ %.299, %bb.i ], [ %i.ao, %.lr.ph.preheader ] ; 4 uses
  %.0100146 = phi i32 [ %i.bh, %bb.i ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.1102145 = phi ptr [ %.3104, %bb.i ], [ %.0101, %.lr.ph.preheader ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1102145, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %.1102145, i64 28 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16 ; 2 uses
  %i.at = sub nsw i32 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.097147, i64 28 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16
  %i.aw = sub nsw i32 %i.av, %.094148
  %. = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.aw)
  %.093 = tail call i32 @llvm.smin.i32(i32 %.0100146, i32 %.) ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.1102145, i64 42
  %i.ay = sext i32 %i.as to i64
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.097147, i64 42
  %i.bb = sext i32 %.094148 to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %i.bd = sext i32 %.093 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull align 1 %i.bc, i64 %i.bd, i1 false)
  %i.be = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.bf = add nsw i32 %.093, %i.be                ; 2 uses
  store i32 %i.bf, ptr %i.ar, align 4, !tbaa !16
  %i.bg = add nsw i32 %.093, %.094148             ; 2 uses
  %i.bh = sub nsw i32 %.0100146, %.093            ; 3 uses
  %i.bi = load i32, ptr %i.ap, align 8, !tbaa !16
  %i.bj = icmp eq i32 %i.bi, %i.bf
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.bk = zext nneg i32 %i.bh to i64
  %i.bl = tail call ptr @do_item_alloc_chunk(ptr noundef nonnull %.1102145, i64 noundef %i.bk) #33 ; 2 uses
  %.not133.not = icmp eq ptr %i.bl, null
  br i1 %.not133.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.3104 = phi ptr [ %i.bl, %bb.f ], [ %.1102145, %.lr.ph ]
  %i.bm = load i32, ptr %i.au, align 4, !tbaa !16
  %i.bn = icmp eq i32 %i.bg, %i.bm
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr %.097147, align 8, !tbaa !91
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.299 = phi ptr [ %.097147, %bb.g ], [ %i.bo, %bb.h ] ; 2 uses
  %.296 = phi i32 [ %i.bg, %bb.g ], [ 0, %bb.h ]
  %i.bp = icmp eq ptr %.299, null
  %i.bq = icmp eq i32 %i.bh, 0
  %or.cond8.not = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond8.not, label %.critedge, label %.lr.ph, !llvm.loop !382

bb.j:                                             ; preds = %.lr.ph154, %bb.l
  %.0153 = phi i32 [ 0, %.lr.ph154 ], [ %i.cr, %bb.l ] ; 3 uses
  %.5106152 = phi ptr [ %.0101, %.lr.ph154 ], [ %.8, %bb.l ] ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.5106152, i64 24 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %.5106152, i64 28 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !16 ; 2 uses
  %i.bv = sub nsw i32 %i.bs, %i.bu
  %i.bw = sub nsw i32 %2, %.0153
  %.139 = tail call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bw) ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.5106152, i64 42
  %i.by = sext i32 %i.bu to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  %i.ca = load i8, ptr %i.aa, align 1, !tbaa !80
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 49
  %i.ce = load i16, ptr %i.w, align 2, !tbaa !88
  %i.cf = zext i16 %i.ce to i32                   ; 2 uses
  %i.cg = lshr i32 %i.cf, 6
  %i.ch = and i32 %i.cg, 4
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = shl nuw nsw i32 %i.cf, 2
  %i.cl = and i32 %i.ck, 8
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cm
  %i.co = sext i32 %.0153 to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  %i.cq = sext i32 %.139 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull align 1 %i.cp, i64 %i.cq, i1 false)
  %i.cr = add nsw i32 %.139, %.0153               ; 3 uses
  %i.cs = load i32, ptr %i.bt, align 4, !tbaa !16
  %i.ct = add nsw i32 %i.cs, %.139                ; 2 uses
  store i32 %i.ct, ptr %i.bt, align 4, !tbaa !16
  %i.cu = load i32, ptr %i.br, align 8, !tbaa !16
  %i.cv = icmp eq i32 %i.cu, %i.ct
  br i1 %i.cv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cw = sub nsw i32 %2, %i.cr
  %i.cx = sext i32 %i.cw to i64
  %i.cy = tail call ptr @do_item_alloc_chunk(ptr noundef nonnull %.5106152, i64 noundef %i.cx) #33 ; 2 uses
  %.not129.not = icmp eq ptr %i.cy, null
  br i1 %.not129.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.8 = phi ptr [ %.5106152, %bb.j ], [ %i.cy, %bb.k ]
  %.not130 = icmp sgt i32 %2, %i.cr
  br i1 %.not130, label %bb.j, label %.critedge, !llvm.loop !383

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.k, %bb.l, %bb.e, %.preheader
  %.10 = phi i32 [ 0, %bb.e ], [ 0, %bb.l ], [ 0, %.preheader ], [ -1, %bb.k ], [ -1, %bb.f ], [ 0, %bb.i ]
  ret i32 %.10
}

declare ptr @do_item_alloc_chunk(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @get_conn_text(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 65536) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr noundef nonnull %3) unnamed_addr #26 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i8 0, ptr %i.a, align 16, !tbaa !80
  %trunc = trunc nuw i32 %1 to i16
  switch i16 %trunc, label %bb.g [
    i16 2, label %bb.b
    i16 10, label %bb.c
    i16 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 4095) #33 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !386
  %rev.i = call noundef i16 @llvm.bswap.i16(i16 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71
  %i.h = icmp eq i32 %i.g, 2
  %i.i = select i1 %i.h, ptr @.str.390, ptr @.str.391
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store i8 91, ptr %i.a, align 16, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 0, ptr %i.j, align 1, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = call ptr @inet_ntop(i32 noundef 10, ptr noundef nonnull %i.k, ptr noundef nonnull %i.j, i32 noundef 4094) #33
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr = getelementptr inbounds i8, ptr %i.a, i64 %strlen
  store i16 93, ptr %endptr, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !387
  %rev.i22 = call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = load i32, ptr %i.o, align 8, !tbaa !71
  %i.q = icmp eq i32 %i.p, 2
  %i.r = select i1 %i.q, ptr @.str.393, ptr @.str.394
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.t = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 108) #33 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i8 0, ptr %i.u, align 4, !tbaa !80
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %.019 = phi i16 [ 0, %bb.a ], [ %rev.i, %bb.b ], [ %rev.i22, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %.0 = phi ptr [ @.str.389, %bb.a ], [ %i.i, %bb.b ], [ %i.r, %bb.e ], [ @.str.395, %bb.f ] ; 2 uses
  %i.v = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #41
  %i.w = icmp ult i64 %i.v, 2
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4096, ptr noundef nonnull @.str.396, i32 noundef %1) #33 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not21 = icmp eq i16 %.019, 0
  br i1 %.not21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = zext i16 %.019 to i32
  %i.z = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 4107, ptr noundef nonnull @.str.397, ptr noundef nonnull %.0, ptr noundef nonnull %i.a, i32 noundef %i.y) #33 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 4107, ptr noundef nonnull @.str.398, ptr noundef nonnull %.0, ptr noundef nonnull %i.a) #33 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #27

declare void @accept_new_conns(i1 noundef zeroext) local_unnamed_addr #2

declare i32 @accept4(i32 noundef, ptr, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @accept(i32 noundef, ptr, ptr noundef) local_unnamed_addr #2

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

declare void @dispatch_conn_new(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #28

declare i64 @recvfrom(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, ptr noundef) local_unnamed_addr #2

declare void @complete_nread_ascii(ptr noundef) local_unnamed_addr #2

declare void @complete_nread_binary(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @_transmit_pre(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i1 noundef zeroext %3) unnamed_addr #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.082117 = load ptr, ptr %i.a, align 8, !tbaa !391 ; 2 uses
  %.old2.not118 = icmp eq ptr %.082117, null
  br i1 %.old2.not118, label %.critedge, label %.preheader.outer

.preheader.outer:                                 ; preds = %bb.a, %.loopexit99
  %.185.ph = phi i32 [ %.7, %.loopexit99 ], [ %2, %bb.a ] ; 7 uses
  %.183.ph = phi ptr [ %i.cg, %.loopexit99 ], [ %.082117, %bb.a ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.outer, %bb.c
  %.183 = phi ptr [ %.082, %bb.c ], [ %.183.ph, %.preheader.outer ] ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.183, i64 116
  %i.c = load i8, ptr %i.b, align 4, !tbaa !136   ; 4 uses
  %i.d = zext i8 %i.c to i32
  %i.e = add nsw i32 %.185.ph, %i.d
  %i.f = icmp slt i32 %i.e, 1023
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.183, i64 118
  %i.h = load i8, ptr %i.g, align 2, !tbaa !101, !range !66, !noundef !67
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.183, i64 8
  %.082 = load ptr, ptr %i.j, align 8, !tbaa !391 ; 2 uses
  %.old2.not = icmp eq ptr %.082, null
  br i1 %.old2.not, label %.critedge, label %.preheader, !llvm.loop !388

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.183, i64 116
  %i.l = getelementptr inbounds nuw i8, ptr %.183, i64 117
  %i.m = load i8, ptr %i.l, align 1, !tbaa !137   ; 3 uses
  %.not92 = icmp eq i8 %i.m, 0
  br i1 %.not92, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.183, i64 48 ; 3 uses
  %.not123 = icmp eq i8 %i.c, 0
  br i1 %.not123, label %.loopexit99, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.e
  %i.o = zext i8 %i.m to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 41
  %i.s = load i8, ptr %i.r, align 1, !tbaa !80
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 49
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 38
  %i.x = load i16, ptr %i.w, align 2, !tbaa !88
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = lshr i32 %i.y, 6
  %i.aa = and i32 %i.z, 4
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab
  %i.ad = shl nuw nsw i32 %i.y, 2
  %i.ae = and i32 %i.ad, 8
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.183, i64 112
  %i.ai = zext i8 %i.m to i64                     ; 2 uses
  %i.aj = zext i8 %i.c to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %.lr.ph113
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.lr.ph113 ] ; 3 uses
  %.079111 = phi ptr [ %.3, %.loopexit ], [ %i.ag, %.lr.ph113 ] ; 4 uses
  %.286110 = phi i32 [ %.5, %.loopexit ], [ %.185.ph, %.lr.ph113 ] ; 5 uses
  %i.am = icmp eq i64 %indvars.iv, %i.ai
  br i1 %i.am, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.al, align 8, !tbaa !114
  %i.ao = trunc i64 %i.an to i32                  ; 3 uses
  %i.ap = icmp ne ptr %.079111, null
  %i.aq = icmp sgt i32 %i.ao, 0
  %or.cond104 = select i1 %i.ap, i1 %i.aq, i1 false
  %i.ar = icmp slt i32 %.286110, 1023
  %i.as = and i1 %or.cond104, %i.ar
  br i1 %i.as, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.at = load i32, ptr %i.ah, align 8, !tbaa !138
  %i.au = sub i32 %i.at, %i.ao
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.075108 = phi i32 [ %.1, %bb.k ], [ %i.ao, %.lr.ph.preheader ] ; 4 uses
  %.076107 = phi i32 [ %.2, %bb.k ], [ %i.au, %.lr.ph.preheader ] ; 6 uses
  %.180106 = phi ptr [ %.281, %bb.k ], [ %.079111, %.lr.ph.preheader ] ; 3 uses
  %.387105 = phi i32 [ %.4, %bb.k ], [ %.286110, %.lr.ph.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.180106, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16 ; 5 uses
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.k, label %bb.h, !llvm.loop !389

bb.h:                                             ; preds = %.lr.ph
  %.not96 = icmp slt i32 %.076107, %i.aw
  br i1 %.not96, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = sub nsw i32 %.076107, %i.aw
  br label %bb.k, !llvm.loop !389

bb.j:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %.180106, i64 42
  %i.az = sext i32 %.076107 to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = sext i32 %.387105 to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bb ; 2 uses
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !113
  %i.bd = sub nsw i32 %i.aw, %.076107
  %i.be = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %.075108)
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !114
  %i.bh = add nsw i32 %.387105, 1
  %.neg = add i32 %.075108, %.076107
  %i.bi = sub i32 %.neg, %i.aw
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j, %bb.i
  %.4 = phi i32 [ %.387105, %bb.i ], [ %i.bh, %bb.j ], [ %.387105, %.lr.ph ] ; 3 uses
  %.2 = phi i32 [ %i.ax, %bb.i ], [ 0, %bb.j ], [ %.076107, %.lr.ph ]
  %.1 = phi i32 [ %.075108, %bb.i ], [ %i.bi, %bb.j ], [ %.075108, %.lr.ph ] ; 2 uses
  %.281 = load ptr, ptr %.180106, align 8, !tbaa !91 ; 3 uses
  %i.bj = icmp ne ptr %.281, null
  %i.bk = icmp sgt i32 %.1, 0
  %or.cond = select i1 %i.bj, i1 %i.bk, i1 false
  %i.bl = icmp slt i32 %.4, 1023
  %i.bm = select i1 %or.cond, i1 %i.bl, i1 false
  br i1 %i.bm, label %.lr.ph, label %.loopexit

bb.l:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !113
  %i.bp = sext i32 %.286110 to i64
  %i.bq = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bp ; 2 uses
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !113
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !114
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !114
  %i.bu = add nsw i32 %.286110, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.g, %bb.l
  %.5 = phi i32 [ %i.bu, %bb.l ], [ %.286110, %bb.g ], [ %.4, %bb.k ] ; 3 uses
  %.3 = phi ptr [ %.079111, %bb.l ], [ %.079111, %bb.g ], [ %.281, %bb.k ]
  %i.bv = icmp slt i32 %.5, 1023
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = icmp samesign ult i64 %indvars.iv.next, %i.aj
  %or.cond122 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond122, label %bb.f, label %.loopexit99, !llvm.loop !390

bb.m:                                             ; preds = %bb.d
  %i.bx = sext i32 %.185.ph to i64
  %i.by = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.183, i64 48
  %i.ca = zext i8 %i.c to i64
  %i.cb = shl nuw nsw i64 %i.ca, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.by, ptr nonnull align 8 %i.bz, i64 %i.cb, i1 false)
  %i.cc = load i8, ptr %i.k, align 4, !tbaa !136
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nsw i32 %.185.ph, %i.cd
  br label %.loopexit99

.loopexit99:                                      ; preds = %.loopexit, %bb.e, %bb.m
  %.7 = phi i32 [ %i.ce, %bb.m ], [ %.185.ph, %bb.e ], [ %.5, %.loopexit ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.183, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !102 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  %or.cond3.not = select i1 %3, i1 true, i1 %i.ch
  br i1 %or.cond3.not, label %.critedge, label %.preheader.outer, !llvm.loop !388

.critedge:                                        ; preds = %bb.c, %.preheader, %.loopexit99, %bb.a
  %.8 = phi i32 [ %2, %bb.a ], [ %.185.ph, %.preheader ], [ %.185.ph, %bb.c ], [ %.7, %.loopexit99 ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_transmit_post(ptr nofree noundef captures(none) %0, i64 noundef range(i64 -8, -9223372036854775808) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %.not70 = icmp eq ptr %i.b, null
  br i1 %.not70, label %.thread60, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph73, %resp_finish.exit
  %.03872 = phi ptr [ %i.b, %.lr.ph73 ], [ %.139, %resp_finish.exit ] ; 24 uses
  %.04071 = phi i64 [ %1, %.lr.ph73 ], [ %.4, %resp_finish.exit ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.03872, i64 118
  %i.f = load i8, ptr %i.e, align 2, !tbaa !101, !range !66, !noundef !67
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.03872, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.03872, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @item_remove(ptr noundef nonnull %i.k) #33
  store ptr null, ptr %i.j, align 8, !tbaa !103
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.03872, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104  ; 2 uses
  %.not25.i = icmp eq ptr %i.m, null
  br i1 %.not25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.03872, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !105  ; 4 uses
  %.not26.i = icmp eq ptr %i.o, null
  br i1 %.not26.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108
  tail call void %i.q(ptr noundef nonnull %i.o) #33, !inline_history !132
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 6952
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !109
  tail call void @do_cache_free(ptr noundef %i.t, ptr noundef nonnull %i.o) #33
  store ptr null, ptr %i.n, align 8, !tbaa !105
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !83
end_hunk_8
begin_hunk_9_@server_socket:bb.a
  %.not81 = icmp eq i32 %i.am, 0
  br i1 %.not81, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite91 = call i64 @fwrite(ptr nonnull @.str.515, i64 39, i64 1, ptr %i.an) #37 ; 0 uses
  call void @exit(i32 noundef 1) #42
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %new_socket.exit
  %i.ao = load i32, ptr %i.u, align 4, !tbaa !405
  %i.ap = icmp eq i32 %i.ao, 10
  br i1 %i.ap, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aq = call i32 @setsockopt(i32 noundef %i.aa, i32 noundef 41, i32 noundef 26, ptr noundef nonnull %i.f, i32 noundef 4) #33
  %.not82 = icmp eq i32 %i.aq, 0
  br i1 %.not82, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @perror(ptr noundef nonnull @.str.516) #37
  %i.ar = call i32 @close(i32 noundef %i.aa) #33  ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 344), align 8, !tbaa !217
  %.not83 = icmp eq i32 %i.as, 0
  br i1 %.not83, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = call i32 @setsockopt(i32 noundef %i.aa, i32 noundef 1, i32 noundef 36, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @settings, i64 344), i32 noundef 4) #33
  %.not84 = icmp eq i32 %i.at, 0
  br i1 %.not84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @perror(ptr noundef nonnull @.str.516) #37
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %i.au = call i32 @setsockopt(i32 noundef %i.aa, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.f, i32 noundef 4) #33 ; 0 uses
  br i1 %i.j, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 4, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.av = call i32 @getsockopt(i32 noundef range(i32 0, -1) %i.aa, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #33
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.v, label %maximize_sndbuf.exit

bb.v:                                             ; preds = %bb.u
  call void @perror(ptr noundef nonnull @.str.521) #37
  br label %maximize_sndbuf.exit

bb.w:                                             ; preds = %bb.t
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !16  ; 2 uses
  %.not1213.i = icmp sgt i32 %i.ay, 268435456
  br i1 %.not1213.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.i
  %.016.i = phi i32 [ %.1.i, %.lr.ph.i ], [ 268435456, %bb.w ] ; 2 uses
  %.0815.i = phi i32 [ %.19.i, %.lr.ph.i ], [ %i.ay, %bb.w ] ; 2 uses
  %.01014.i = phi i32 [ %.111.i, %.lr.ph.i ], [ 0, %bb.w ]
  %i.az = add nsw i32 %.0815.i, %.016.i
  %i.ba = lshr i32 %i.az, 1
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !16
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !16
  %i.bc = call i32 @setsockopt(i32 noundef range(i32 0, -1) %i.aa, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %i.b, i32 noundef %i.bb) #33
  %i.bd = icmp eq i32 %i.bc, 0                    ; 3 uses
  %i.be = load i32, ptr %i.b, align 4             ; 3 uses
  %i.bf = add nsw i32 %i.be, 1
  %i.bg = add nsw i32 %i.be, -1
  %.111.i = select i1 %i.bd, i32 %i.be, i32 %.01014.i ; 2 uses
  %.19.i = select i1 %i.bd, i32 %i.bf, i32 %.0815.i ; 2 uses
  %.1.i = select i1 %i.bd, i32 %.016.i, i32 %i.bg ; 2 uses
  %.not12.i = icmp sgt i32 %.19.i, %.1.i
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !397

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.w
  %.010.lcssa.i = phi i32 [ 0, %bb.w ], [ %.111.i, %.lr.ph.i ]
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.x, label %maximize_sndbuf.exit

bb.x:                                             ; preds = %._crit_edge.i
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !16
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.522, i32 noundef range(i32 0, -1) %i.aa, i32 noundef %i.bk, i32 noundef %.010.lcssa.i) #35 ; 0 uses
  br label %maximize_sndbuf.exit

maximize_sndbuf.exit:                             ; preds = %bb.u, %bb.v, %._crit_edge.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.ae

bb.y:                                             ; preds = %bb.s
  %i.bm = call i32 @setsockopt(i32 noundef %i.aa, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %i.f, i32 noundef 4) #33
  %.not85 = icmp eq i32 %i.bm, 0
  br i1 %.not85, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @perror(ptr noundef nonnull @.str.516) #37
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bn = call i32 @setsockopt(i32 noundef %i.aa, i32 noundef 1, i32 noundef 13, ptr noundef nonnull %6, i32 noundef 8) #33
  %.not86 = icmp eq i32 %i.bn, 0
  br i1 %.not86, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @perror(ptr noundef nonnull @.str.516) #37
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bo = call i32 @setsockopt(i32 noundef %i.aa, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %i.f, i32 noundef 4) #33
  %.not87 = icmp eq i32 %i.bo, 0
  br i1 %.not87, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @perror(ptr noundef nonnull @.str.516) #37
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %maximize_sndbuf.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.070115, i64 24 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !407
  %i.br = getelementptr inbounds nuw i8, ptr %.070115, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !408
  %i.bt = call i32 @bind(i32 noundef %i.aa, ptr %i.bq, i32 noundef %i.bs) #33
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bv = tail call ptr @__errno_location() #36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !16
  %.not90 = icmp eq i32 %i.bw, 98
  br i1 %.not90, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @perror(ptr noundef nonnull @.str.487) #37
  %i.bx = call i32 @close(i32 noundef %i.aa) #33  ; 0 uses
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !404
  call void @freeaddrinfo(ptr noundef %i.by) #33
  br label %bb.au

bb.ah:                                            ; preds = %bb.af
  %i.bz = call i32 @close(i32 noundef %i.aa) #33  ; 0 uses
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ae
  %i.ca = add nsw i32 %.068113, 1                 ; 4 uses
  br i1 %i.j, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 112), align 8, !tbaa !174
  %i.cc = call i32 @listen(i32 noundef %i.aa, i32 noundef %i.cb) #33
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @perror(ptr noundef nonnull @.str.488) #37
  %i.ce = call i32 @close(i32 noundef %i.aa) #33  ; 0 uses
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !404
  call void @freeaddrinfo(ptr noundef %i.cf) #33
  br label %bb.au

bb.al:                                            ; preds = %bb.aj, %bb.ai
  br i1 %.not88, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cg = load ptr, ptr %i.bp, align 8, !tbaa !407
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !211
  switch i16 %i.ch, label %bb.ap [
    i16 2, label %bb.an
    i16 10, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  store i32 28, ptr %i.i, align 4, !tbaa !16
  %i.ci = call i32 @getsockname(i32 noundef %i.aa, ptr nonnull %8, ptr noundef nonnull %i.i) #33
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.sink.split, label %bb.ao

.sink.split:                                      ; preds = %bb.an
  %i.ck = load ptr, ptr %i.bp, align 8, !tbaa !407
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !211
  %i.cm = icmp eq i16 %i.cl, 2
  %i.cn = load i16, ptr %i.q, align 2, !tbaa !80
  %rev.i = call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.co = zext i16 %rev.i to i32
  %.str.517..str.519 = select i1 %i.cm, ptr @.str.517, ptr @.str.519
  %i.cp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull %.str.517..str.519, ptr noundef nonnull %i.p, i32 noundef %i.co) #33 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.al, %bb.ao
  br i1 %i.j, label %.preheader, label %bb.ar

.preheader:                                       ; preds = %bb.ap
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 88), align 8, !tbaa !170
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  call void @dispatch_conn_new(i32 noundef %i.aa, i32 noundef 3, i32 noundef 18, i32 noundef 65536, i32 noundef 2, ptr noundef null, i64 noundef %4, i32 noundef %5) #33
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 88), align 8, !tbaa !170
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %.lr.ph.peel.next, label %.loopexit

.lr.ph.peel.next:                                 ; preds = %.lr.ph.preheader, %bb.aq
  %.065110 = phi i32 [ %i.cw, %bb.aq ], [ 1, %.lr.ph.preheader ]
  %i.cu = call i32 @dup(i32 noundef %i.aa) #33    ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.loopexit124, label %bb.aq

.loopexit124:                                     ; preds = %.lr.ph.peel.next
  call void @perror(ptr noundef nonnull @.str.520) #37
  call void @exit(i32 noundef 1) #42
  unreachable

bb.aq:                                            ; preds = %.lr.ph.peel.next
  call void @dispatch_conn_new(i32 noundef %i.cu, i32 noundef 3, i32 noundef 18, i32 noundef 65536, i32 noundef 2, ptr noundef null, i64 noundef %4, i32 noundef %5) #33
  %i.cw = add nuw nsw i32 %.065110, 1             ; 2 uses
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 88), align 8, !tbaa !170
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph.peel.next, label %.loopexit, !llvm.loop !398

bb.ar:                                            ; preds = %bb.ap
  %i.cz = load ptr, ptr @main_base, align 8, !tbaa !213
  %i.da = call ptr @conn_new(i32 noundef %i.aa, i32 noundef 0, i32 noundef 18, i32 noundef 1, i32 noundef 1, ptr noundef %i.cz, ptr noundef null, i64 noundef %4, i32 noundef %5) ; 3 uses
  %.not89 = icmp eq ptr %i.da, null
  br i1 %.not89, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite = call i64 @fwrite(ptr nonnull @.str.489, i64 38, i64 1, ptr %i.db) #37 ; 0 uses
  call void @exit(i32 noundef 1) #42
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dc = load ptr, ptr @listen_conn, align 8, !tbaa !120
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 392
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !410
  store ptr %i.da, ptr @listen_conn, align 8, !tbaa !120
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aq, %.lr.ph.preheader, %.preheader, %bb.o, %bb.ah, %bb.h, %bb.at
  %.169.ph = phi i32 [ %i.ca, %bb.at ], [ %.068113, %bb.o ], [ %.068113, %bb.h ], [ %.068113, %bb.ah ], [ %i.ca, %.preheader ], [ %i.ca, %.lr.ph.preheader ], [ %i.ca, %bb.aq ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.070115, i64 40
  %.070 = load ptr, ptr %i.de, align 8, !tbaa !404 ; 2 uses
  %.not79 = icmp eq ptr %.070, null
  br i1 %.not79, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !399

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !404
  %i.df = icmp eq i32 %.169.ph, 0
  %i.dg = zext i1 %i.df to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader98
  %i.dh = phi ptr [ null, %.preheader98 ], [ %.pre, %._crit_edge.loopexit ]
  %.068.lcssa = phi i32 [ 1, %.preheader98 ], [ %i.dg, %._crit_edge.loopexit ]
  call void @freeaddrinfo(ptr noundef %i.dh) #33
  br label %bb.au

bb.au:                                            ; preds = %bb.ag, %bb.ak, %bb.b, %bb.c, %._crit_edge
  %.2 = phi i32 [ %.068.lcssa, %._crit_edge ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.ak ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  ret i32 %.2
}

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @gai_strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #31

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #32

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree nounwind }
attributes #32 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { cold nounwind }
attributes #36 = { nounwind willreturn memory(none) }
attributes #37 = { cold }
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { cold noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{null}
!1 = distinct !{!1, !64}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"long", !10, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"any p2 pointer", !17, i64 0}
!19 = !{!"_Bool", !10, i64 0}
!20 = !{!"p1 _ZTS14event_callback", !17, i64 0}
!21 = !{!"p2 _ZTS14event_callback", !18, i64 0}
!22 = !{!"", !20, i64 0, !21, i64 8}
!23 = !{!"short", !10, i64 0}
!24 = !{!"event_callback", !22, i64 0, !23, i64 16, !10, i64 18, !10, i64 19, !10, i64 24, !17, i64 32}
!25 = !{!"p1 _ZTS10event_base", !17, i64 0}
!26 = !{!"timeval", !14, i64 0, !14, i64 8}
!27 = !{!"event", !24, i64 0, !10, i64 40, !11, i64 56, !25, i64 64, !10, i64 72, !23, i64 104, !23, i64 106, !26, i64 112}
!28 = !{!"p1 omnipotent char", !17, i64 0}
!29 = !{!"p1 _ZTS8_mc_resp", !17, i64 0}
!30 = !{!"in6_addr", !10, i64 0}
!31 = !{!"sockaddr_in6", !23, i64 0, !23, i64 2, !11, i64 4, !30, i64 8, !11, i64 24}
!32 = !{!"", !28, i64 0, !14, i64 8, !14, i64 16}
!33 = !{!"p1 _ZTS4conn", !17, i64 0}
!34 = !{!"conn", !18, i64 0, !11, i64 8, !19, i64 12, !19, i64 13, !19, i64 14, !19, i64 15, !19, i64 16, !10, i64 17, !17, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !27, i64 48, !23, i64 176, !23, i64 178, !28, i64 184, !28, i64 192, !11, i64 200, !11, i64 204, !29, i64 208, !29, i64 216, !28, i64 224, !11, i64 232, !17, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !31, i64 276, !11, i64 304, !32, i64 312, !10, i64 336, !14, i64 360, !14, i64 368, !23, i64 376, !11, i64 380, !11, i64 384, !33, i64 392, !17, i64 400, !17, i64 408, !17, i64 416, !17, i64 424, !17, i64 432}
!35 = !{!34, !11, i64 200}
!36 = !{!34, !28, i64 192}
!37 = !{!34, !11, i64 204}
!38 = !{!34, !17, i64 400}
!39 = !{!"thread_notify", !27, i64 0, !11, i64 128}
!40 = !{!"p1 _ZTS13_io_pending_t", !17, i64 0}
!41 = !{!"p2 _ZTS13_io_pending_t", !18, i64 0}
!42 = !{!"iop_head_s", !40, i64 0, !41, i64 8}
!43 = !{!"thread_stats", !10, i64 0, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !10, i64 280, !10, i64 4376, !14, i64 6424, !14, i64 6432, !14, i64 6440}
!44 = !{!"p1 _ZTS10conn_queue", !17, i64 0}
!45 = !{!"p1 _ZTS15_mc_resp_bundle", !17, i64 0}
!46 = !{!"p1 _ZTS7_logger", !17, i64 0}
!47 = !{!"", !14, i64 0, !25, i64 8, !39, i64 16, !39, i64 152, !10, i64 288, !42, i64 328, !11, i64 344, !11, i64 348, !11, i64 352, !43, i64 360, !10, i64 6808, !44, i64 6928, !17, i64 6936, !45, i64 6944, !17, i64 6952, !17, i64 6960, !46, i64 6968, !17, i64 6976, !11, i64 6984}
!48 = !{!47, !17, i64 6936}
!49 = !{!34, !28, i64 184}
!50 = !{!34, !19, i64 15}
!51 = !{!"double", !10, i64 0}
!52 = !{!"p1 _ZTS17slab_rebal_thread", !17, i64 0}
!53 = !{!"settings", !14, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !28, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !28, i64 48, !28, i64 56, !11, i64 64, !51, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !10, i64 92, !11, i64 96, !11, i64 100, !19, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !19, i64 132, !19, i64 133, !19, i64 134, !19, i64 135, !19, i64 136, !19, i64 137, !19, i64 138, !11, i64 140, !11, i64 144, !51, i64 152, !51, i64 160, !11, i64 168, !11, i64 172, !19, i64 176, !11, i64 180, !19, i64 184, !19, i64 185, !28, i64 192, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !51, i64 216, !51, i64 224, !11, i64 232, !19, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252, !11, i64 256, !19, i64 260, !19, i64 261, !19, i64 262, !52, i64 264, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !11, i64 300, !11, i64 304, !11, i64 308, !51, i64 312, !19, i64 320, !11, i64 324, !11, i64 328, !28, i64 336, !11, i64 344}
!54 = !{!53, !11, i64 244}
!55 = !{!34, !11, i64 40}
!56 = !{!34, !11, i64 32}
!57 = !{!53, !11, i64 32}
!58 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!34, !11, i64 8}
!61 = !{!34, !11, i64 268}
!62 = !{!28, !28, i64 0}
!63 = !{!53, !11, i64 100}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!53, !19, i64 133}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!53, !11, i64 8}
!69 = !{!"stats", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !28, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !26, i64 200, !14, i64 216, !14, i64 224}
!70 = !{!69, !14, i64 16}
!71 = !{!34, !11, i64 264}
!72 = !{!34, !14, i64 368}
!73 = !{!34, !11, i64 260}
!74 = !{!34, !25, i64 112}
!75 = !{!34, !23, i64 176}
!76 = !{!69, !14, i64 24}
!77 = !{!34, !19, i64 14}
!78 = !{!34, !17, i64 416}
!79 = !{!34, !11, i64 304}
!80 = !{!10, !10, i64 0}
!81 = !{!34, !11, i64 272}
!82 = !{!34, !17, i64 408}
!83 = !{!34, !29, i64 216}
!84 = !{!34, !23, i64 376}
!85 = !{!34, !17, i64 240}
!86 = !{!34, !19, i64 16}
!87 = !{!34, !11, i64 232}
!88 = !{!23, !23, i64 0}
!89 = !{!34, !28, i64 224}
!90 = !{!"p1 _ZTS9_strchunk", !17, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!34, !11, i64 252}
!93 = !{!47, !11, i64 352}
!94 = !{!"io_queue_s", !17, i64 0, !42, i64 8, !17, i64 24, !11, i64 32}
!95 = !{!94, !11, i64 32}
!96 = !{!94, !40, i64 8}
!97 = !{!94, !17, i64 24}
!98 = !{!34, !17, i64 424}
!99 = !{!"p1 _ZTS8_stritem", !17, i64 0}
!100 = !{!"_mc_resp", !45, i64 0, !29, i64 8, !11, i64 16, !11, i64 20, !17, i64 24, !40, i64 32, !99, i64 40, !10, i64 48, !11, i64 112, !10, i64 116, !10, i64 117, !19, i64 118, !19, i64 119, !19, i64 120, !19, i64 121, !19, i64 122, !19, i64 123, !19, i64 124, !23, i64 126, !23, i64 128, !23, i64 130, !31, i64 132, !11, i64 160, !10, i64 164}
!101 = !{!100, !19, i64 118}
!102 = !{!100, !29, i64 8}
!103 = !{!100, !99, i64 40}
!104 = !{!100, !17, i64 24}
!105 = !{!100, !40, i64 32}
!106 = !{!"", !40, i64 0}
!107 = !{!"_io_pending_t", !10, i64 0, !10, i64 1, !10, i64 2, !17, i64 8, !33, i64 16, !29, i64 24, !17, i64 32, !17, i64 40, !106, i64 48, !10, i64 56}
!108 = !{!107, !17, i64 40}
!109 = !{!47, !17, i64 6952}
!110 = !{!34, !29, i64 208}
!111 = !{!100, !11, i64 160}
!112 = !{!"iovec", !17, i64 0, !14, i64 8}
!113 = !{!112, !17, i64 0}
!114 = !{!112, !14, i64 8}
!115 = !{!100, !11, i64 20}
!116 = !{!100, !23, i64 126}
!117 = !{!34, !18, i64 0}
!118 = !{!"p2 _ZTS4conn", !18, i64 0}
!119 = !{!118, !118, i64 0}
!120 = !{!33, !33, i64 0}
!121 = !{!"float", !10, i64 0}
!122 = !{!"stats_state", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !121, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !19, i64 52, !19, i64 53, !19, i64 54, !19, i64 55}
!123 = !{!122, !11, i64 36}
!124 = !{!53, !28, i64 48}
!125 = !{!"p1 _ZTS14_entry_details", !17, i64 0}
!126 = !{!"_logger", !46, i64 0, !46, i64 8, !10, i64 16, !14, i64 56, !14, i64 64, !14, i64 72, !23, i64 80, !23, i64 82, !23, i64 84, !17, i64 88, !125, i64 96}
!127 = !{!126, !23, i64 84}
!128 = !{!53, !28, i64 56}
!129 = !{!122, !14, i64 16}
!130 = !{!69, !14, i64 8}
!131 = !{!100, !19, i64 120}
!132 = !{ptr @resp_finish}
!133 = !{!47, !46, i64 6968}
!134 = !{!19, !19, i64 0}
!135 = !{!100, !11, i64 16}
!136 = !{!100, !10, i64 116}
!137 = !{!100, !10, i64 117}
!138 = !{!100, !11, i64 112}
!139 = !{!100, !45, i64 0}
!140 = !{!47, !45, i64 6944}
!141 = !{!45, !45, i64 0}
!142 = !{!47, !14, i64 560}
!143 = !{!47, !14, i64 552}
!144 = !{!47, !14, i64 544}
!145 = !{i64 0, i64 2, !88, i64 2, i64 2, !88, i64 4, i64 4, !16, i64 8, i64 16, !80, i64 24, i64 4, !16}
!146 = !{!17, !17, i64 0}
!147 = !{!100, !19, i64 121}
!148 = !{!"slab_stats", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!149 = !{!148, !14, i64 32}
!150 = !{!148, !14, i64 40}
!151 = !{!122, !11, i64 40}
!152 = !{!53, !14, i64 0}
!153 = !{!122, !19, i64 53}
!154 = !{!69, !14, i64 32}
!155 = !{!69, !14, i64 120}
!156 = !{!53, !11, i64 84}
!157 = !{!122, !11, i64 44}
!158 = !{!53, !19, i64 137}
!159 = !{!53, !19, i64 134}
!160 = !{!53, !19, i64 135}
!161 = !{!53, !11, i64 12}
!162 = !{!53, !11, i64 16}
!163 = !{!53, !28, i64 24}
!164 = !{!53, !11, i64 36}
!165 = !{!53, !11, i64 40}
!166 = !{!53, !11, i64 64}
!167 = !{!53, !19, i64 176}
!168 = !{!53, !51, i64 72}
!169 = !{!53, !11, i64 80}
!170 = !{!53, !11, i64 88}
!171 = !{!53, !10, i64 92}
!172 = !{!53, !11, i64 96}
!173 = !{!53, !19, i64 104}
!174 = !{!53, !11, i64 112}
!175 = !{!53, !11, i64 108}
!176 = !{!53, !19, i64 132}
!177 = !{!53, !11, i64 116}
!178 = !{!53, !11, i64 172}
!179 = !{!53, !11, i64 140}
!180 = !{!53, !51, i64 152}
!181 = !{!53, !11, i64 168}
!182 = !{!53, !11, i64 120}
!183 = !{!53, !11, i64 200}
!184 = !{!53, !11, i64 204}
!185 = !{!53, !11, i64 180}
!186 = !{!53, !19, i64 184}
!187 = !{!53, !19, i64 185}
!188 = !{!53, !19, i64 136}
!189 = !{!53, !11, i64 208}
!190 = !{!53, !11, i64 212}
!191 = !{!53, !51, i64 216}
!192 = !{!53, !51, i64 224}
!193 = !{!53, !19, i64 236}
!194 = !{!53, !11, i64 240}
!195 = !{!53, !11, i64 248}
!196 = !{!53, !11, i64 252}
!197 = !{!53, !11, i64 256}
!198 = !{!53, !11, i64 280}
!199 = !{!53, !11, i64 284}
!200 = !{!53, !11, i64 288}
!201 = !{!53, !11, i64 292}
!202 = !{!53, !11, i64 296}
!203 = !{!53, !11, i64 308}
!204 = !{!53, !51, i64 312}
!205 = !{!53, !51, i64 160}
!206 = !{!53, !19, i64 320}
!207 = !{!53, !11, i64 328}
!208 = !{!53, !28, i64 336}
!209 = !{!122, !14, i64 0}
!210 = !{!"sockaddr", !23, i64 0, !10, i64 2}
!211 = !{!210, !23, i64 0}
!212 = !{!26, !14, i64 0}
!213 = !{!25, !25, i64 0}
!214 = !{!"_mc_meta_data", !17, i64 0, !14, i64 8, !28, i64 16, !14, i64 24, !14, i64 32, !11, i64 40}
!215 = !{!214, !28, i64 16}
!216 = !{!53, !11, i64 124}
!217 = !{!53, !11, i64 344}
!218 = !{!53, !19, i64 138}
!219 = !{!214, !17, i64 0}
!220 = !{!214, !14, i64 32}
!221 = !{!"timespec", !14, i64 0, !14, i64 8}
!222 = !{!221, !14, i64 0}
!223 = !{!214, !11, i64 40}
!224 = !{!214, !14, i64 24}
!225 = !{!53, !11, i64 128}
!226 = !{!47, !14, i64 536}
!227 = distinct !{!227, !64}
!228 = distinct !{null}
!229 = distinct !{null}
!230 = distinct !{null}
!231 = distinct !{null, null}
!232 = distinct !{null}
!233 = distinct !{null, ptr @resp_finish}
!234 = distinct !{!234, !64}
!235 = distinct !{null, null}
!236 = !{!47, !14, i64 568}
!237 = !{!47, !14, i64 488}
!238 = !{!34, !11, i64 36}
!239 = !{!47, !14, i64 512}
!240 = !{!34, !11, i64 248}
!241 = !{ptr @thread_io_queue_submit}
!242 = !{!"p1 _ZTS5iovec", !17, i64 0}
!243 = !{!"msghdr", !17, i64 0, !11, i64 8, !242, i64 16, !14, i64 24, !17, i64 32, !14, i64 40, !11, i64 48}
!244 = !{!243, !242, i64 16}
!245 = !{!243, !14, i64 24}
!246 = !{!47, !14, i64 496}
!247 = !{!243, !17, i64 0}
!248 = !{!243, !11, i64 8}
!249 = !{!100, !23, i64 130}
!250 = !{!100, !23, i64 128}
!251 = !{!47, !25, i64 8}
!252 = distinct !{!252, !64}
!253 = !{!94, !17, i64 0}
!254 = !{!94, !41, i64 16}
!255 = distinct !{!255, !64}
!256 = !{!107, !17, i64 32}
!257 = !{!34, !19, i64 12}
!258 = !{!34, !17, i64 24}
!259 = !{!34, !17, i64 432}
!260 = !{!34, !10, i64 17}
!261 = !{!34, !19, i64 13}
!262 = !{!34, !23, i64 178}
!263 = distinct !{!263, !64}
!264 = distinct !{!264, !64}
!265 = distinct !{!265, !64}
!266 = !{!34, !14, i64 320}
!267 = !{!34, !14, i64 328}
!268 = !{!34, !28, i64 312}
!269 = !{!34, !11, i64 380}
!270 = !{!47, !17, i64 6960}
!271 = !{!47, !14, i64 472}
!272 = !{!47, !11, i64 344}
!273 = !{!"rusage", !26, i64 0, !26, i64 16, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136}
!274 = !{!273, !14, i64 0}
!275 = !{!273, !14, i64 8}
!276 = !{!273, !14, i64 16}
!277 = !{!273, !14, i64 24}
!278 = !{!43, !14, i64 184}
!279 = !{!43, !14, i64 192}
!280 = !{!43, !14, i64 200}
!281 = !{!43, !14, i64 6424}
!282 = !{!43, !14, i64 6432}
!283 = !{!43, !14, i64 6440}
!284 = !{!43, !14, i64 208}
!285 = !{!43, !14, i64 40}
!286 = !{!148, !14, i64 0}
!287 = !{!43, !14, i64 144}
!288 = !{!43, !14, i64 72}
!289 = !{!43, !14, i64 120}
!290 = !{!148, !14, i64 8}
!291 = !{!43, !14, i64 48}
!292 = !{!43, !14, i64 56}
!293 = !{!43, !14, i64 64}
!294 = !{!43, !14, i64 232}
!295 = !{!43, !14, i64 240}
!296 = !{!43, !14, i64 248}
!297 = !{!43, !14, i64 256}
!298 = !{!43, !14, i64 264}
!299 = !{!43, !14, i64 272}
!300 = !{!43, !14, i64 88}
!301 = !{!148, !14, i64 24}
!302 = !{!43, !14, i64 96}
!303 = !{!148, !14, i64 48}
!304 = !{!43, !14, i64 104}
!305 = !{!148, !14, i64 56}
!306 = !{!43, !14, i64 112}
!307 = !{!148, !14, i64 16}
!308 = !{!43, !14, i64 80}
!309 = !{!43, !14, i64 216}
!310 = !{!43, !14, i64 224}
!311 = !{!43, !14, i64 160}
!312 = !{!43, !14, i64 168}
!313 = !{!43, !14, i64 176}
!314 = !{!43, !14, i64 128}
!315 = !{!43, !14, i64 136}
!316 = !{!43, !14, i64 152}
!317 = !{!122, !14, i64 24}
!318 = !{!122, !19, i64 52}
!319 = !{!69, !28, i64 96}
!320 = !{!69, !14, i64 48}
!321 = !{!69, !14, i64 64}
!322 = !{!69, !14, i64 56}
!323 = !{!69, !14, i64 72}
!324 = !{!69, !14, i64 80}
!325 = !{!69, !14, i64 88}
!326 = !{!122, !19, i64 54}
!327 = !{!69, !14, i64 40}
!328 = !{!122, !19, i64 55}
!329 = !{!69, !14, i64 104}
!330 = !{!69, !14, i64 112}
!331 = !{!69, !14, i64 128}
!332 = !{!69, !14, i64 136}
!333 = !{!69, !14, i64 144}
!334 = !{!69, !14, i64 152}
!335 = !{!122, !11, i64 48}
!336 = !{!69, !14, i64 216}
!337 = !{!69, !14, i64 224}
!338 = !{!53, !28, i64 192}
!339 = !{!53, !11, i64 300}
!340 = !{!53, !11, i64 304}
!341 = !{!122, !14, i64 8}
!342 = !{!69, !14, i64 0}
!343 = distinct !{!343, !64}
!344 = !{!"sockaddr_storage", !23, i64 0, !10, i64 2, !14, i64 120}
!345 = !{!344, !23, i64 0}
end_hunk_9
