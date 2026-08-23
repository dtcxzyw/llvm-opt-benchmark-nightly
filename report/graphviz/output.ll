Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/output?download=true
inline.NumInlined: 124
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@attach_attrs_and_arrows:bb.a
  ]

agxblen.exit.i.i281:                              ; preds = %bb.aq
  %i.fc = zext i8 %.val.i268 to i64
  br label %agxbsizeof.exit.i.i270

bb.ar:                                            ; preds = %bb.aq
  %i.fd = load i64, ptr %i.as, align 8, !tbaa !73
  %i.fe = load i64, ptr %i.at, align 8, !tbaa !73
  br label %agxbsizeof.exit.i.i270

agxbsizeof.exit.i.i270:                           ; preds = %bb.ar, %agxblen.exit.i.i281
  %.0.i20.i.i271 = phi i64 [ %i.fd, %bb.ar ], [ %i.fc, %agxblen.exit.i.i281 ]
  %.0.i14.i.i272 = phi i64 [ %i.fe, %bb.ar ], [ 31, %agxblen.exit.i.i281 ]
  %.not.i5.i273 = icmp ult i64 %.0.i20.i.i271, %.0.i14.i.i272
  br i1 %.not.i5.i273, label %bb.at, label %bb.as

bb.as:                                            ; preds = %agxbsizeof.exit.i.i270
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i.i274 = load i8, ptr %i.ar, align 1, !tbaa !73
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %agxbsizeof.exit.i.i270
  %.val.i15.i.i275 = phi i8 [ %.val.i15.pre.i.i274, %bb.as ], [ %.val.i268, %agxbsizeof.exit.i.i270 ] ; 2 uses
  %.not.i16.i.i276 = icmp eq i8 %.val.i15.i.i275, -1
  br i1 %.not.i16.i.i276, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ff = zext i8 %.val.i15.i.i275 to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 %i.ff
  store i8 0, ptr %i.fg, align 1, !tbaa !73
  %i.fh = load i8, ptr %i.ar, align 1, !tbaa !73
  %i.fi = add i8 %i.fh, 1                         ; 2 uses
  store i8 %i.fi, ptr %i.ar, align 1, !tbaa !73
  br label %agxbputc.exit.i277

bb.av:                                            ; preds = %bb.at
  %i.fj = load i64, ptr %i.as, align 8, !tbaa !73
  %i.fk = load ptr, ptr %3, align 8, !tbaa !73
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fj
  store i8 0, ptr %i.fl, align 1, !tbaa !73
  %i.fm = load i64, ptr %i.as, align 8, !tbaa !73
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.as, align 8, !tbaa !73
  %.val.i6.pr.i280 = load i8, ptr %i.ar, align 1, !tbaa !73
  br label %agxbputc.exit.i277

agxbputc.exit.i277:                               ; preds = %bb.av, %bb.au
  %.val.i8.pr.i278 = phi i8 [ %.val.i6.pr.i280, %bb.av ], [ %i.fi, %bb.au ]
  %.not.i7.i279 = icmp eq i8 %.val.i8.pr.i278, -1
  br i1 %.not.i7.i279, label %bb.aw, label %agxbclear.exit.thread.i269

agxbclear.exit.thread.i269:                       ; preds = %agxbputc.exit.i277, %bb.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !73
  br label %agxbuse.exit282

bb.aw:                                            ; preds = %agxbputc.exit.i277
  store i64 0, ptr %i.as, align 8, !tbaa !73
  %i.fo = load ptr, ptr %3, align 8, !tbaa !73
  br label %agxbuse.exit282

agxbuse.exit282:                                  ; preds = %agxbclear.exit.thread.i269, %bb.aw
  %i.fp = phi ptr [ %i.fo, %bb.aw ], [ %3, %agxbclear.exit.thread.i269 ]
  %i.fq = call i32 @agset(ptr noundef nonnull %.0190526, ptr noundef nonnull @.str.15, ptr noundef %i.fp) #18 ; 0 uses
  %.pre562 = load ptr, ptr %i.cz, align 8, !tbaa !35
  br label %bb.ax

bb.ax:                                            ; preds = %agxbuse.exit282, %bb.ap, %agxbuse.exit267
  %i.fr = phi ptr [ %.pre562, %agxbuse.exit282 ], [ %i.er, %bb.ap ], [ %i.er, %agxbuse.exit267 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !92
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !93
  %i.fv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fu, ptr noundef nonnull dereferenceable(7) @.str.26) #19
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !136
  call fastcc void @set_record_rects(ptr noundef %.0190526, ptr noundef %i.fy, ptr noundef %3, double noundef %.sroa.0.0.i)
  %.val.i.i = load i8, ptr %i.ar, align 1, !tbaa !73 ; 3 uses
  switch i8 %.val.i.i, label %agxbpop.exit [
    i8 -1, label %agxblen.exit.thread.i
    i8 0, label %agxblen.exit.i.i296
  ]

agxblen.exit.thread.i:                            ; preds = %bb.ay
  %i.fz = load i64, ptr %i.as, align 8, !tbaa !73 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %agxbpop.exit.thread438, label %agxbpop.exit.thread

agxbpop.exit.thread:                              ; preds = %agxblen.exit.thread.i
  %i.gb = add i64 %i.fz, -1                       ; 2 uses
  store i64 %i.gb, ptr %i.as, align 8, !tbaa !73
  br label %agxbpop.exit.thread438

agxbpop.exit:                                     ; preds = %bb.ay
  %i.gc = add i8 %.val.i.i, -1                    ; 3 uses
  store i8 %i.gc, ptr %i.ar, align 1, !tbaa !73
  %cond = icmp eq i8 %i.gc, 31
  br i1 %cond, label %agxbclear.exit.thread.i284, label %agxblen.exit.i.i296

agxblen.exit.i.i296:                              ; preds = %agxbpop.exit, %bb.ay
  %.val.i283437 = phi i8 [ %i.gc, %agxbpop.exit ], [ %.val.i.i, %bb.ay ] ; 2 uses
  %i.gd = zext i8 %.val.i283437 to i64
  br label %agxbsizeof.exit.i.i285

agxbpop.exit.thread438:                           ; preds = %agxbpop.exit.thread, %agxblen.exit.thread.i
  %i.ge = phi i64 [ %i.gb, %agxbpop.exit.thread ], [ 0, %agxblen.exit.thread.i ]
  %i.gf = load i64, ptr %i.at, align 8, !tbaa !73
  br label %agxbsizeof.exit.i.i285

agxbsizeof.exit.i.i285:                           ; preds = %agxbpop.exit.thread438, %agxblen.exit.i.i296
  %.val.i283436 = phi i8 [ -1, %agxbpop.exit.thread438 ], [ %.val.i283437, %agxblen.exit.i.i296 ]
  %.0.i20.i.i286 = phi i64 [ %i.ge, %agxbpop.exit.thread438 ], [ %i.gd, %agxblen.exit.i.i296 ]
  %.0.i14.i.i287 = phi i64 [ %i.gf, %agxbpop.exit.thread438 ], [ 31, %agxblen.exit.i.i296 ]
  %.not.i5.i288 = icmp ult i64 %.0.i20.i.i286, %.0.i14.i.i287
  br i1 %.not.i5.i288, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %agxbsizeof.exit.i.i285
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i.i289 = load i8, ptr %i.ar, align 1, !tbaa !73
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %agxbsizeof.exit.i.i285
  %.val.i15.i.i290 = phi i8 [ %.val.i15.pre.i.i289, %bb.az ], [ %.val.i283436, %agxbsizeof.exit.i.i285 ] ; 2 uses
  %.not.i16.i.i291 = icmp eq i8 %.val.i15.i.i290, -1
  br i1 %.not.i16.i.i291, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gg = zext i8 %.val.i15.i.i290 to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 %i.gg
  store i8 0, ptr %i.gh, align 1, !tbaa !73
  %i.gi = load i8, ptr %i.ar, align 1, !tbaa !73
  %i.gj = add i8 %i.gi, 1                         ; 2 uses
  store i8 %i.gj, ptr %i.ar, align 1, !tbaa !73
  br label %agxbputc.exit.i292

bb.bc:                                            ; preds = %bb.ba
  %i.gk = load i64, ptr %i.as, align 8, !tbaa !73
  %i.gl = load ptr, ptr %3, align 8, !tbaa !73
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gk
  store i8 0, ptr %i.gm, align 1, !tbaa !73
  %i.gn = load i64, ptr %i.as, align 8, !tbaa !73
  %i.go = add i64 %i.gn, 1
  store i64 %i.go, ptr %i.as, align 8, !tbaa !73
  %.val.i6.pr.i295 = load i8, ptr %i.ar, align 1, !tbaa !73
  br label %agxbputc.exit.i292

agxbputc.exit.i292:                               ; preds = %bb.bc, %bb.bb
  %.val.i8.pr.i293 = phi i8 [ %.val.i6.pr.i295, %bb.bc ], [ %i.gj, %bb.bb ]
  %.not.i7.i294 = icmp eq i8 %.val.i8.pr.i293, -1
  br i1 %.not.i7.i294, label %bb.bd, label %agxbclear.exit.thread.i284

agxbclear.exit.thread.i284:                       ; preds = %agxbpop.exit, %agxbputc.exit.i292
  store i8 0, ptr %i.ar, align 1, !tbaa !73
  br label %agxbuse.exit297

bb.bd:                                            ; preds = %agxbputc.exit.i292
  store i64 0, ptr %i.as, align 8, !tbaa !73
  %i.gp = load ptr, ptr %3, align 8, !tbaa !73
  br label %agxbuse.exit297

agxbuse.exit297:                                  ; preds = %agxbclear.exit.thread.i284, %bb.bd
  %i.gq = phi ptr [ %i.gp, %bb.bd ], [ %3, %agxbclear.exit.thread.i284 ]
  %i.gr = call i32 @agset(ptr noundef nonnull %.0190526, ptr noundef nonnull @.str.12, ptr noundef %i.gq) #18 ; 0 uses
  br label %bb.by

bb.be:                                            ; preds = %bb.ax
  %i.gs = load ptr, ptr @N_vertices, align 8, !tbaa !87
  %.not210 = icmp eq ptr %i.gs, null
  br i1 %.not210, label %bb.by, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gt = call zeroext i1 @isPolygon(ptr noundef nonnull %.0190526) #18
  br i1 %i.gt, label %bb.bg, label %bb.by

bb.bg:                                            ; preds = %bb.bf
  %i.gu = load ptr, ptr %i.cz, align 8, !tbaa !35
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !136 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !137 ; 3 uses
  %i.gz = icmp ult i64 %i.gy, 3
  br i1 %i.gz, label %bb.bh, label %agxbputc.exit.peel.thread

agxbputc.exit.peel.thread:                        ; preds = %bb.bg
  %i.ha = uitofp i64 %i.gy to double
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.hc = call ptr @agget(ptr noundef nonnull %.0190526, ptr noundef nonnull @.str.27) #18 ; 2 uses
  %.not211 = icmp eq ptr %i.hc, null
  br i1 %.not211, label %agxbputc.exit.peel, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hd = call i64 @strtoul(ptr noundef nonnull captures(none) %i.hc, ptr noundef null, i32 noundef 0) #18
  %.fr = freeze i64 %i.hd                         ; 2 uses
  %i.he = icmp ult i64 %.fr, 3
  %spec.select = select i1 %i.he, i64 8, i64 %.fr
  br label %agxbputc.exit.peel

agxbputc.exit.peel:                               ; preds = %bb.bi, %bb.bh
  %.1.ph = phi i64 [ %spec.select, %bb.bi ], [ 8, %bb.bh ] ; 3 uses
  %.pre563.pr = load i64, ptr %i.gx, align 8, !tbaa !137
  %i.hf = uitofp i64 %.1.ph to double             ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 56 ; 2 uses
  %i.hh = icmp ugt i64 %.pre563.pr, 2
  br i1 %i.hh, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %agxbputc.exit.peel
  %i.hi = load ptr, ptr %i.cz, align 8, !tbaa !35
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  %i.hk = fdiv ninf double 0.000000e+00, %i.hf    ; 2 uses
  %i.hl = call double @llvm.fabs.f64(double %i.hk)
  %i.hm = call double @cos(double %i.hk)
  %i.hn = load <2 x double>, ptr %i.hj, align 8, !tbaa !36
  %i.ho = fmul <2 x double> %i.hn, splat (double 5.000000e-01)
  %i.hp = call double @sin(double noundef %i.hl) #18
  %i.hq = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.hp, i64 1
  %i.hs = fmul <2 x double> %i.ho, %i.hr
  br label %.peel.next

bb.bk:                                            ; preds = %agxbputc.exit.peel.thread, %agxbputc.exit.peel
  %i.ht = phi ptr [ %i.hb, %agxbputc.exit.peel.thread ], [ %i.hg, %agxbputc.exit.peel ] ; 2 uses
  %i.hu = phi double [ %i.ha, %agxbputc.exit.peel.thread ], [ %i.hf, %agxbputc.exit.peel ]
  %.1639 = phi i64 [ %i.gy, %agxbputc.exit.peel.thread ], [ %.1.ph, %agxbputc.exit.peel ]
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !140
  %i.hw = load <2 x double>, ptr %i.hv, align 8, !tbaa !36
  %i.hx = fdiv <2 x double> %i.hw, splat (double 7.200000e+01)
  br label %.peel.next

.peel.next:                                       ; preds = %bb.bj, %bb.bk
  %i.hy = phi ptr [ %i.hg, %bb.bj ], [ %i.ht, %bb.bk ]
  %i.hz = phi double [ %i.hf, %bb.bj ], [ %i.hu, %bb.bk ]
  %.1638 = phi i64 [ %.1.ph, %bb.bj ], [ %.1639, %bb.bk ]
  %i.ia = phi <2 x double> [ %i.hs, %bb.bj ], [ %i.hx, %bb.bk ] ; 2 uses
  %i.ib = load i8, ptr @Y_invert, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ic = trunc nuw i8 %i.ib to i1
  %i.id = extractelement <2 x double> %i.ia, i64 1 ; 2 uses
  %i.ie = fsub double %.sroa.4.0.i, %i.id
  %i.if = select i1 %i.ic, double %i.ie, double %i.id
  %i.ig = extractelement <2 x double> %i.ia, i64 0
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %3, ptr noundef nonnull @.str.28, double noundef %i.ig, double noundef %i.if)
  br label %agxbsizeof.exit.i

.loopexit542:                                     ; preds = %bb.bx
  %i.ih = load ptr, ptr @N_vertices, align 8, !tbaa !87
  %.val.i298 = load i8, ptr %i.ar, align 1, !tbaa !73 ; 3 uses
  switch i8 %.val.i298, label %agxblen.exit.i.i311 [
    i8 -1, label %bb.bl
    i8 31, label %agxbclear.exit.thread.i299
  ]

agxblen.exit.i.i311:                              ; preds = %.loopexit542
  %i.ii = zext i8 %.val.i298 to i64
  br label %agxbsizeof.exit.i.i300

bb.bl:                                            ; preds = %.loopexit542
  %i.ij = load i64, ptr %i.as, align 8, !tbaa !73
  %i.ik = load i64, ptr %i.at, align 8, !tbaa !73
  br label %agxbsizeof.exit.i.i300

agxbsizeof.exit.i.i300:                           ; preds = %bb.bl, %agxblen.exit.i.i311
  %.0.i20.i.i301 = phi i64 [ %i.ij, %bb.bl ], [ %i.ii, %agxblen.exit.i.i311 ]
  %.0.i14.i.i302 = phi i64 [ %i.ik, %bb.bl ], [ 31, %agxblen.exit.i.i311 ]
  %.not.i5.i303 = icmp ult i64 %.0.i20.i.i301, %.0.i14.i.i302
  br i1 %.not.i5.i303, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %agxbsizeof.exit.i.i300
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i.i304 = load i8, ptr %i.ar, align 1, !tbaa !73
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %agxbsizeof.exit.i.i300
  %.val.i15.i.i305 = phi i8 [ %.val.i15.pre.i.i304, %bb.bm ], [ %.val.i298, %agxbsizeof.exit.i.i300 ] ; 2 uses
  %.not.i16.i.i306 = icmp eq i8 %.val.i15.i.i305, -1
  br i1 %.not.i16.i.i306, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.il = zext i8 %.val.i15.i.i305 to i64
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 %i.il
  store i8 0, ptr %i.im, align 1, !tbaa !73
  %i.in = load i8, ptr %i.ar, align 1, !tbaa !73
  %i.io = add i8 %i.in, 1                         ; 2 uses
  store i8 %i.io, ptr %i.ar, align 1, !tbaa !73
  br label %agxbputc.exit.i307

bb.bp:                                            ; preds = %bb.bn
  %i.ip = load i64, ptr %i.as, align 8, !tbaa !73
  %i.iq = load ptr, ptr %3, align 8, !tbaa !73
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ip
  store i8 0, ptr %i.ir, align 1, !tbaa !73
  %i.is = load i64, ptr %i.as, align 8, !tbaa !73
  %i.it = add i64 %i.is, 1
  store i64 %i.it, ptr %i.as, align 8, !tbaa !73
  %.val.i6.pr.i310 = load i8, ptr %i.ar, align 1, !tbaa !73
  br label %agxbputc.exit.i307

agxbputc.exit.i307:                               ; preds = %bb.bp, %bb.bo
  %.val.i8.pr.i308 = phi i8 [ %.val.i6.pr.i310, %bb.bp ], [ %i.io, %bb.bo ]
  %.not.i7.i309 = icmp eq i8 %.val.i8.pr.i308, -1
  br i1 %.not.i7.i309, label %bb.bq, label %agxbclear.exit.thread.i299

agxbclear.exit.thread.i299:                       ; preds = %agxbputc.exit.i307, %.loopexit542
  store i8 0, ptr %i.ar, align 1, !tbaa !73
  br label %agxbuse.exit312

bb.bq:                                            ; preds = %agxbputc.exit.i307
  store i64 0, ptr %i.as, align 8, !tbaa !73
  %i.iu = load ptr, ptr %3, align 8, !tbaa !73
  br label %agxbuse.exit312

agxbuse.exit312:                                  ; preds = %agxbclear.exit.thread.i299, %bb.bq
  %i.iv = phi ptr [ %i.iu, %bb.bq ], [ %3, %agxbclear.exit.thread.i299 ]
  %i.iw = call i32 @agxset(ptr noundef nonnull %.0190526, ptr noundef %i.ih, ptr noundef %i.iv) #18 ; 0 uses
  br label %bb.by

agxbsizeof.exit.i:                                ; preds = %bb.bx, %.peel.next
  %.0175506 = phi i64 [ 1, %.peel.next ], [ %i.kj, %bb.bx ] ; 3 uses
  %.val.i.i313 = load i8, ptr %i.ar, align 1, !tbaa !73 ; 3 uses
  %.not.i.i = icmp eq i8 %.val.i.i313, -1         ; 2 uses
  %i.ix = load i64, ptr %i.as, align 8
  %i.iy = load i64, ptr %i.at, align 8
  %i.iz = zext i8 %.val.i.i313 to i64
  %.0.i20.i = select i1 %.not.i.i, i64 %i.ix, i64 %i.iz
  %.0.i14.i = select i1 %.not.i.i, i64 %i.iy, i64 31
  %.not.i = icmp ult i64 %.0.i20.i, %.0.i14.i
  br i1 %.not.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %agxbsizeof.exit.i
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i = load i8, ptr %i.ar, align 1, !tbaa !73
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %agxbsizeof.exit.i
  %.val.i15.i = phi i8 [ %.val.i15.pre.i, %bb.br ], [ %.val.i.i313, %agxbsizeof.exit.i ] ; 2 uses
  %.not.i16.i = icmp eq i8 %.val.i15.i, -1
  br i1 %.not.i16.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ja = zext i8 %.val.i15.i to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ja
  store i8 32, ptr %i.jb, align 1, !tbaa !73
  %i.jc = load i8, ptr %i.ar, align 1, !tbaa !73
  %i.jd = add i8 %i.jc, 1
  store i8 %i.jd, ptr %i.ar, align 1, !tbaa !73
  br label %agxbputc.exit

bb.bu:                                            ; preds = %bb.bs
  %i.je = load i64, ptr %i.as, align 8, !tbaa !73
  %i.jf = load ptr, ptr %3, align 8, !tbaa !73
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.je
  store i8 32, ptr %i.jg, align 1, !tbaa !73
  %i.jh = load i64, ptr %i.as, align 8, !tbaa !73
  %i.ji = add i64 %i.jh, 1
  store i64 %i.ji, ptr %i.as, align 8, !tbaa !73
  br label %agxbputc.exit

agxbputc.exit:                                    ; preds = %bb.bu, %bb.bt
  %i.jj = load i64, ptr %i.gx, align 8, !tbaa !137
  %i.jk = icmp ugt i64 %i.jj, 2
  br i1 %i.jk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %agxbputc.exit
  %i.jl = load ptr, ptr %i.hy, align 8, !tbaa !140
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %.0175506
  %i.jn = load <2 x double>, ptr %i.jm, align 8, !tbaa !36
  %i.jo = fdiv <2 x double> %i.jn, splat (double 7.200000e+01)
  br label %bb.bx

bb.bw:                                            ; preds = %agxbputc.exit
  %i.jp = load ptr, ptr %i.cz, align 8, !tbaa !35
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.jr = uitofp i64 %.0175506 to double
  %i.js = fdiv double %i.jr, %i.hz
  %i.jt = fmul double %i.js, f0x400921FB54442D18
  %i.ju = fmul double %i.jt, 2.000000e+00         ; 2 uses
  %i.jv = call double @cos(double noundef %i.ju) #18
  %i.jw = load <2 x double>, ptr %i.jq, align 8, !tbaa !36
  %i.jx = fmul <2 x double> %i.jw, splat (double 5.000000e-01)
  %i.jy = call double @sin(double noundef %i.ju) #18
  %i.jz = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.ka = insertelement <2 x double> %i.jz, double %i.jy, i64 1
  %i.kb = fmul <2 x double> %i.jx, %i.ka
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.kc = phi <2 x double> [ %i.jo, %bb.bv ], [ %i.kb, %bb.bw ] ; 2 uses
  %i.kd = load i8, ptr @Y_invert, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ke = trunc nuw i8 %i.kd to i1
  %i.kf = extractelement <2 x double> %i.kc, i64 1 ; 2 uses
  %i.kg = fsub double %.sroa.4.0.i, %i.kf
  %i.kh = select i1 %i.ke, double %i.kg, double %i.kf
  %i.ki = extractelement <2 x double> %i.kc, i64 0
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %3, ptr noundef nonnull @.str.28, double noundef %i.ki, double noundef %i.kh)
  %i.kj = add nuw i64 %.0175506, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.kj, %.1638
  br i1 %exitcond.not, label %.loopexit542, label %agxbsizeof.exit.i, !llvm.loop !141

bb.by:                                            ; preds = %bb.be, %bb.bf, %agxbuse.exit312, %agxbuse.exit297
  %i.kk = load i32, ptr @State, align 4, !tbaa !143
  %i.kl = icmp sgt i32 %i.kk, 0
end_hunk_0
