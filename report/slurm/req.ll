Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/req?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
begin_hunk_0_@_handle_getpw:bb.a
  %i.cr = icmp slt i32 %i.cp, 0
  br i1 %i.cr, label %.lr.ph1417.preheader, label %.split648

.lr.ph1417.preheader:                             ; preds = %.lr.ph686.preheader
  %i.cs = tail call ptr @__errno_location() #12
  br label %.lr.ph1417

.lr.ph686:                                        ; preds = %bb.ab
  %i.ct = icmp slt i32 %i.cw, 0
  br i1 %i.ct, label %.lr.ph1417, label %.split648

.lr.ph1417:                                       ; preds = %.lr.ph1417.preheader, %.lr.ph686
  %i.cu = load i32, ptr %i.cs, align 4
  switch i32 %i.cu, label %.split651 [
    i32 11, label %bb.ab
    i32 4, label %bb.ab
  ]

bb.ab:                                            ; preds = %.lr.ph1417, %.lr.ph1417
  %i.cv = call i64 @read(i32 noundef %0, ptr noundef %.0274.ph691, i64 noundef %.0275.ph689) #11 ; 2 uses
  %i.cw = trunc i64 %i.cv to i32                  ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %.split645, label %.lr.ph686

.lr.ph643.split.split:                            ; preds = %.lr.ph643
  %i.cy = call i64 @read(i32 noundef %0, ptr noundef %.0274.ph691, i64 noundef 4) #11 ; 2 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %.split655, label %.lr.ph671.preheader.preheader

.lr.ph671.preheader.preheader:                    ; preds = %.lr.ph643.split.split
  %i.db = icmp slt i32 %i.cz, 0
  br i1 %i.db, label %.lr.ph1419.preheader, label %.split648

.lr.ph1419.preheader:                             ; preds = %.lr.ph671.preheader.preheader
  %i.dc = tail call ptr @__errno_location() #12
  br label %.lr.ph1419

.outer477._crit_edge:                             ; preds = %.split648
  %i.dd = load i32, ptr %i.c, align 4
  %.fr1315 = freeze i32 %i.dd                     ; 6 uses
  %.not343 = icmp eq i32 %.fr1315, 0
  br i1 %.not343, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.outer477._crit_edge
  %i.de = add nsw i32 %.fr1315, 1
  %i.df = sext i32 %i.de to i64
  %i.dg = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.df, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.6, i32 noundef 1829, ptr noundef nonnull @__func__._handle_getpw) #11 ; 2 uses
  store ptr %i.dg, ptr %i.d, align 8
  %i.dh = sext i32 %.fr1315 to i64                ; 2 uses
  br label %.lr.ph694

.lr.ph694:                                        ; preds = %.lr.ph694.backedge, %bb.ac
  %.0272.ph742 = phi ptr [ %i.dg, %bb.ac ], [ %i.ej, %.lr.ph694.backedge ] ; 4 uses
  %.0273.ph740 = phi i64 [ %i.dh, %bb.ac ], [ %i.ek, %.lr.ph694.backedge ] ; 7 uses
  %i.di = icmp eq i64 %.0273.ph740, %i.dh
  %i.dj = tail call i64 @read(i32 noundef %0, ptr noundef %.0272.ph742, i64 noundef %.0273.ph740) #11 ; 3 uses
  %i.dk = trunc i64 %i.dj to i32                  ; 3 uses
  %i.dl = icmp eq i32 %i.dk, 0                    ; 2 uses
  br i1 %i.di, label %.lr.ph694.split.split, label %.lr.ph694.split.us.split

.lr.ph694.split.us.split:                         ; preds = %.lr.ph694
  br i1 %i.dl, label %.split696.us, label %.lr.ph737.preheader

.lr.ph737.preheader:                              ; preds = %.lr.ph694.split.us.split
  %i.dm = icmp slt i32 %i.dk, 0
  br i1 %i.dm, label %.lr.ph1421.preheader, label %.split699.us

.lr.ph1421.preheader:                             ; preds = %.lr.ph737.preheader
  %i.dn = tail call ptr @__errno_location() #12
  br label %.lr.ph1421

.lr.ph737:                                        ; preds = %bb.ad
  %i.do = icmp slt i32 %i.dr, 0
  br i1 %i.do, label %.lr.ph1421, label %.split699.us

.lr.ph1421:                                       ; preds = %.lr.ph1421.preheader, %.lr.ph737
  %i.dp = load i32, ptr %i.dn, align 4
  switch i32 %i.dp, label %.split702.us [
    i32 11, label %bb.ad
    i32 4, label %bb.ad
  ]

bb.ad:                                            ; preds = %.lr.ph1421, %.lr.ph1421
  %i.dq = tail call i64 @read(i32 noundef %0, ptr noundef %.0272.ph742, i64 noundef %.0273.ph740) #11 ; 2 uses
  %i.dr = trunc i64 %i.dq to i32                  ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %.split696.us, label %.lr.ph737

.lr.ph694.split.split:                            ; preds = %.lr.ph694
  br i1 %i.dl, label %.split706.us, label %.lr.ph722.preheader.preheader

.lr.ph722.preheader.preheader:                    ; preds = %.lr.ph694.split.split
  %i.dt = icmp slt i32 %i.dk, 0
  br i1 %i.dt, label %.lr.ph1423.preheader, label %.split699.us

.lr.ph1423.preheader:                             ; preds = %.lr.ph722.preheader.preheader
  %i.du = tail call ptr @__errno_location() #12
  br label %.lr.ph1423

.split706.us:                                     ; preds = %.lr.ph694.split.split, %bb.ai
  %i.dv = tail call i32 @get_log_level() #11
  %i.dw = icmp sgt i32 %i.dv, 4
  br i1 %i.dw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.split706.us
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.6, i32 noundef 1830, ptr noundef nonnull @__func__._handle_getpw) #11
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.split706.us
  %i.dx = tail call ptr @__errno_location() #12
  store i32 5, ptr %i.dx, align 4
  br label %.thread

.split696.us:                                     ; preds = %.lr.ph694.split.us.split, %bb.ad
  %i.dy = tail call i32 @get_log_level() #11
  %i.dz = icmp sgt i32 %i.dy, 4
  br i1 %i.dz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.split696.us
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.6, i32 noundef 1830, ptr noundef nonnull @__func__._handle_getpw, i64 noundef %.0273.ph740, i32 noundef %.fr1315) #11
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.split696.us
  %i.ea = tail call ptr @__errno_location() #12
  store i32 5, ptr %i.ea, align 4
  br label %.thread

.lr.ph722.preheader:                              ; preds = %bb.ai
  %i.eb = icmp slt i32 %i.ee, 0
  br i1 %i.eb, label %.lr.ph1423, label %.split699.us

.lr.ph1423:                                       ; preds = %.lr.ph1423.preheader, %.lr.ph722.preheader
  %i.ec = load i32, ptr %i.du, align 4
  switch i32 %i.ec, label %.split702.us [
    i32 11, label %bb.ai
    i32 4, label %bb.ai
  ]

bb.ai:                                            ; preds = %.lr.ph1423, %.lr.ph1423
  %i.ed = tail call i64 @read(i32 noundef %0, ptr noundef %.0272.ph742, i64 noundef %.0273.ph740) #11 ; 2 uses
  %i.ee = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %.split706.us, label %.lr.ph722.preheader

.split702.us:                                     ; preds = %.lr.ph1421, %.lr.ph1423
  %i.eg = tail call i32 @get_log_level() #11
  %i.eh = icmp sgt i32 %i.eg, 4
  br i1 %i.eh, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %.split702.us
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.6, i32 noundef 1830, ptr noundef nonnull @__func__._handle_getpw, i64 noundef %.0273.ph740, i32 noundef %.fr1315) #11
  br label %.thread

.split699.us:                                     ; preds = %.lr.ph737, %.lr.ph722.preheader, %.lr.ph737.preheader, %.lr.ph722.preheader.preheader
  %.us-phi700 = phi i64 [ %i.ed, %.lr.ph722.preheader ], [ %i.dj, %.lr.ph722.preheader.preheader ], [ %i.dj, %.lr.ph737.preheader ], [ %i.dq, %.lr.ph737 ]
  %i.ei = and i64 %.us-phi700, 2147483647         ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0272.ph742, i64 %i.ei
  %i.ek = sub i64 %.0273.ph740, %i.ei             ; 3 uses
  %.not345 = icmp eq i64 %i.ek, 0
  br i1 %.not345, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %.split699.us
  %i.el = tail call i32 @get_log_level() #11
  %i.em = icmp sgt i32 %i.el, 6
  br i1 %i.em, label %bb.al, label %.lr.ph694.backedge

bb.al:                                            ; preds = %bb.ak
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.6, i32 noundef 1830, ptr noundef nonnull @__func__._handle_getpw, i64 noundef %i.ek, i32 noundef %.fr1315) #11
  br label %.lr.ph694.backedge

.lr.ph694.backedge:                               ; preds = %bb.al, %bb.ak
  br label %.lr.ph694, !llvm.loop !107

.loopexit:                                        ; preds = %.split699.us, %.outer477._crit_edge
  %.not346 = icmp eq i32 %2, 0
  br i1 %.not346, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.loopexit
  %i.en = load ptr, ptr @step, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 704
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = tail call zeroext i1 @proctrack_g_has_pid(i64 noundef %i.ep, i32 noundef %2) #11
  br label %bb.an

bb.an:                                            ; preds = %.loopexit, %bb.am
  %.0282 = phi i1 [ %i.eq, %bb.am ], [ false, %.loopexit ] ; 3 uses
  %i.er = load i32, ptr %i.a, align 4
  %i.es = load ptr, ptr @step, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 384
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = icmp eq i32 %i.er, %i.eu
  br i1 %i.ev, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ew = load ptr, ptr %i.d, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 392
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call i32 @xstrcmp(ptr noundef %i.ew, ptr noundef %i.ey) #11
  %.not347 = icmp eq i32 %i.ez, 0
  br i1 %.not347, label %3, label %bb.ap

3:                                                ; preds = %bb.ao
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %3
  %.0281 = phi i1 [ %.0282, %3 ], [ false, %bb.ao ], [ %.0282, %bb.an ]
  %i.fa = load i32, ptr %i.b, align 4
  switch i32 %i.fa, label %bb.as [
    i32 0, label %bb.aq
    i32 2, label %bb.ar
    i32 1, label %.sink.split
  ]

bb.aq:                                            ; preds = %bb.ap
  br label %.sink.split

bb.ar:                                            ; preds = %bb.ap
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ap, %bb.aq, %bb.ar
  %.sink.shrunk = phi i1 [ %.0282, %bb.ar ], [ %.0281, %bb.aq ], [ true, %bb.ap ]
  %.sink = zext i1 %.sink.shrunk to i32           ; 2 uses
  store i32 %.sink, ptr %i.e, align 4
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %bb.ap
  %i.fb = phi i32 [ 0, %bb.ap ], [ %.sink, %.sink.split ]
  %i.fc = load ptr, ptr @step, align 8            ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 392
  %i.fe = load ptr, ptr %i.fd, align 8
  %.not348 = icmp eq ptr %i.fe, null
  br i1 %.not348, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 400
  %i.fg = load ptr, ptr %i.ff, align 8
  %.not349 = icmp eq ptr %i.fg, null
  br i1 %.not349, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 408
  %i.fi = load ptr, ptr %i.fh, align 8
  %.not350 = icmp eq ptr %i.fi, null
  br i1 %.not350, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 416
  %i.fk = load ptr, ptr %i.fj, align 8
  %.not351 = icmp eq ptr %i.fk, null
  br i1 %.not351, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %i.fl = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__._handle_getpw) #11 ; 0 uses
  store i32 0, ptr %i.e, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fm = phi i32 [ 0, %bb.aw ], [ %i.fb, %bb.av ]
  call void @slurm_xfree(ptr noundef nonnull %i.d) #11
  br label %.lr.ph745.split

.lr.ph745.split:                                  ; preds = %.lr.ph745.split.backedge, %bb.ax
  %.0270.ph761 = phi ptr [ %i.e, %bb.ax ], [ %i.fw, %.lr.ph745.split.backedge ] ; 3 uses
  %.0271.ph759 = phi i64 [ 4, %bb.ax ], [ %i.fx, %.lr.ph745.split.backedge ] ; 4 uses
  %i.fn = call i64 @write(i32 noundef %0, ptr noundef %.0270.ph761, i64 noundef %.0271.ph759) #11 ; 2 uses
  %i.fo = and i64 %i.fn, 2147483648
  %.not353756 = icmp eq i64 %i.fo, 0
  br i1 %.not353756, label %.split748.us, label %.lr.ph757

.lr.ph757:                                        ; preds = %.lr.ph745.split
  %i.fp = tail call ptr @__errno_location() #12
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph757, %bb.az
  %i.fq = load i32, ptr %i.fp, align 4
  switch i32 %i.fq, label %.split751.us [
    i32 11, label %bb.az
    i32 4, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  %i.fr = call i64 @write(i32 noundef %0, ptr noundef %.0270.ph761, i64 noundef %.0271.ph759) #11 ; 2 uses
  %i.fs = and i64 %i.fr, 2147483648
  %.not353 = icmp eq i64 %i.fs, 0
  br i1 %.not353, label %.split748.us, label %bb.ay

.split751.us:                                     ; preds = %bb.ay
  %i.ft = call i32 @get_log_level() #11
  %i.fu = icmp sgt i32 %i.ft, 4
  br i1 %i.fu, label %bb.ba, label %.thread

bb.ba:                                            ; preds = %.split751.us
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.6, i32 noundef 1858, ptr noundef nonnull @__func__._handle_getpw, i64 noundef %.0271.ph759, i32 noundef 4) #11
  br label %.thread

.split748.us:                                     ; preds = %bb.az, %.lr.ph745.split
  %.us-phi749 = phi i64 [ %i.fn, %.lr.ph745.split ], [ %i.fr, %bb.az ]
  %i.fv = and i64 %.us-phi749, 2147483647         ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0270.ph761, i64 %i.fv
  %i.fx = sub i64 %.0271.ph759, %i.fv             ; 3 uses
  %.not354 = icmp eq i64 %i.fx, 0
  br i1 %.not354, label %.outer474._crit_edge, label %bb.bb

bb.bb:                                            ; preds = %.split748.us
  %i.fy = call i32 @get_log_level() #11
  %i.fz = icmp sgt i32 %i.fy, 6
  br i1 %i.fz, label %bb.bc, label %.lr.ph745.split.backedge

bb.bc:                                            ; preds = %bb.bb
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.6, i32 noundef 1858, ptr noundef nonnull @__func__._handle_getpw, i64 noundef %i.fx, i32 noundef 4) #11
  br label %.lr.ph745.split.backedge

.lr.ph745.split.backedge:                         ; preds = %bb.bc, %bb.bb
  br label %.lr.ph745.split, !llvm.loop !108

.outer474._crit_edge:                             ; preds = %.split748.us
  %.not355 = icmp eq i32 %i.fm, 0
  br i1 %.not355, label %bb.dn, label %bb.bd

bb.bd:                                            ; preds = %.outer474._crit_edge
  %i.ga = load ptr, ptr @step, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 392
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gc) #14 ; 2 uses
  %i.ge = trunc i64 %i.gd to i32                  ; 3 uses
  store i32 %i.ge, ptr %i.c, align 4
  br label %.lr.ph764.split

.lr.ph764.split:                                  ; preds = %.lr.ph764.split.backedge, %bb.bd
  %.0268.ph780 = phi ptr [ %i.c, %bb.bd ], [ %i.go, %.lr.ph764.split.backedge ] ; 3 uses
  %.0269.ph778 = phi i64 [ 4, %bb.bd ], [ %i.gp, %.lr.ph764.split.backedge ] ; 4 uses
  %i.gf = call i64 @write(i32 noundef %0, ptr noundef %.0268.ph780, i64 noundef %.0269.ph778) #11 ; 2 uses
  %i.gg = and i64 %i.gf, 2147483648
  %.not357775 = icmp eq i64 %i.gg, 0
  br i1 %.not357775, label %.split767.us, label %.lr.ph776

.lr.ph776:                                        ; preds = %.lr.ph764.split
  %i.gh = tail call ptr @__errno_location() #12
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph776, %bb.bf
  %i.gi = load i32, ptr %i.gh, align 4
  switch i32 %i.gi, label %.split770.us [
    i32 11, label %bb.bf
    i32 4, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  %i.gj = call i64 @write(i32 noundef %0, ptr noundef %.0268.ph780, i64 noundef %.0269.ph778) #11 ; 2 uses
  %i.gk = and i64 %i.gj, 2147483648
  %.not357 = icmp eq i64 %i.gk, 0
  br i1 %.not357, label %.split767.us, label %bb.be

.split770.us:                                     ; preds = %bb.be
  %i.gl = call i32 @get_log_level() #11
  %i.gm = icmp sgt i32 %i.gl, 4
  br i1 %i.gm, label %bb.bg, label %.thread

bb.bg:                                            ; preds = %.split770.us
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.6, i32 noundef 1864, ptr noundef nonnull @__func__._handle_getpw, i64 noundef %.0269.ph778, i32 noundef 4) #11
  br label %.thread

.split767.us:                                     ; preds = %bb.bf, %.lr.ph764.split
  %.us-phi768 = phi i64 [ %i.gf, %.lr.ph764.split ], [ %i.gj, %bb.bf ]
  %i.gn = and i64 %.us-phi768, 2147483647         ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0268.ph780, i64 %i.gn
  %i.gp = sub i64 %.0269.ph778, %i.gn             ; 3 uses
  %.not358 = icmp eq i64 %i.gp, 0
  br i1 %.not358, label %.outer473._crit_edge, label %bb.bh

bb.bh:                                            ; preds = %.split767.us
  %i.gq = call i32 @get_log_level() #11
  %i.gr = icmp sgt i32 %i.gq, 6
  br i1 %i.gr, label %bb.bi, label %.lr.ph764.split.backedge

bb.bi:                                            ; preds = %bb.bh
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.6, i32 noundef 1864, ptr noundef nonnull @__func__._handle_getpw, i64 noundef %i.gp, i32 noundef 4) #11
  br label %.lr.ph764.split.backedge

.lr.ph764.split.backedge:                         ; preds = %bb.bi, %bb.bh
  br label %.lr.ph764.split, !llvm.loop !109

.outer473._crit_edge:                             ; preds = %.split767.us
  %sext = shl i64 %i.gd, 32                       ; 2 uses
  %.not359797 = icmp eq i64 %sext, 0
  br i1 %.not359797, label %.outer472._crit_edge, label %.lr.ph783.preheader

.lr.ph783.preheader:                              ; preds = %.outer473._crit_edge
  %i.gs = load ptr, ptr @step, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 392
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = ashr exact i64 %sext, 32
  br label %.lr.ph783.split

.lr.ph783.split:                                  ; preds = %.lr.ph783.split.backedge, %.lr.ph783.preheader
  %.0266.ph800 = phi ptr [ %i.gu, %.lr.ph783.preheader ], [ %i.hf, %.lr.ph783.split.backedge ] ; 3 uses
  %.0267.ph798 = phi i64 [ %i.gv, %.lr.ph783.preheader ], [ %i.hg, %.lr.ph783.split.backedge ] ; 4 uses
  %i.gw = call i64 @write(i32 noundef %0, ptr noundef %.0266.ph800, i64 noundef %.0267.ph798) #11 ; 2 uses
  %i.gx = and i64 %i.gw, 2147483648
  %.not360794 = icmp eq i64 %i.gx, 0
  br i1 %.not360794, label %.split786.us, label %.lr.ph795

.lr.ph795:                                        ; preds = %.lr.ph783.split
  %i.gy = tail call ptr @__errno_location() #12
  br label %bb.bj

end_hunk_0
