inline.NumInlined: 12
begin_hunk_0_@lame_parse_args:bb.a
  %i.bp = tail call i64 @fwrite(ptr nonnull @.str.112, i64 42, i64 1, ptr %i.bo) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.bq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(9) @.str.113) #17
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 3, ptr %i.v, align 8, !tbaa !24
  br label %bb.bo

bb.n:                                             ; preds = %bb.l
  %i.bs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(6) @.str.114) #17
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 12000, ptr %i.p, align 8, !tbaa !25
  store i32 160, ptr %i.x, align 4, !tbaa !26
  store i32 1, ptr %i.af, align 8, !tbaa !27
  br label %bb.bo

bb.p:                                             ; preds = %bb.n
  %i.bu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(8) @.str.115) #17
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.af, align 8, !tbaa !27
  br label %bb.bo

bb.r:                                             ; preds = %bb.p
  %i.bw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(6) @.str.116) #17
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.al, align 4, !tbaa !28
  br label %bb.bo

bb.t:                                             ; preds = %bb.r
  %i.by = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(6) @.str.117) #17
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.aj, align 8, !tbaa !29
  store i32 0, ptr %i.ak, align 4, !tbaa !30
  br label %bb.bo

bb.v:                                             ; preds = %bb.t
  %i.ca = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(8) @.str.118) #17
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.ai, align 8, !tbaa !31
  br label %bb.bo

bb.x:                                             ; preds = %bb.v
  %i.cc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(7) @.str.119) #17
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.bo, label %sub_0

sub_0:                                            ; preds = %bb.x
  %i.ce = load i8, ptr %i.bf, align 1
  %.not426 = icmp eq i8 %i.ce, 116
  br i1 %.not426, label %sub_1, label %.tail344.thread

sub_1:                                            ; preds = %sub_0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.cg = load i8, ptr %i.cf, align 1
  %.not427 = icmp eq i8 %i.cg, 116
  br i1 %.not427, label %.tail, label %sub_1321

.tail:                                            ; preds = %sub_1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.y, label %sub_1321

bb.y:                                             ; preds = %.tail
  store i32 1, ptr @id3tag, align 4, !tbaa !20
  %i.ck = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @id3tag, i64 8), ptr noundef nonnull dereferenceable(1) %.0267, i64 noundef 30) #12 ; 0 uses
  br label %bb.bo

sub_1321:                                         ; preds = %.tail, %sub_1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.cm = load i8, ptr %i.cl, align 1
  %.not429 = icmp eq i8 %i.cm, 97
  br i1 %.not429, label %.tail319, label %sub_1326

.tail319:                                         ; preds = %sub_1321
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.z, label %sub_1326

bb.z:                                             ; preds = %.tail319
  store i32 1, ptr @id3tag, align 4, !tbaa !20
  %i.cq = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @id3tag, i64 39), ptr noundef nonnull dereferenceable(1) %.0267, i64 noundef 30) #12 ; 0 uses
  br label %bb.bo

sub_1326:                                         ; preds = %.tail319, %sub_1321
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.cs = load i8, ptr %i.cr, align 1
  %.not431 = icmp eq i8 %i.cs, 108
  br i1 %.not431, label %.tail324, label %sub_1331

.tail324:                                         ; preds = %sub_1326
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.aa, label %sub_1331

bb.aa:                                            ; preds = %.tail324
  store i32 1, ptr @id3tag, align 4, !tbaa !20
  %i.cw = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @id3tag, i64 70), ptr noundef nonnull dereferenceable(1) %.0267, i64 noundef 30) #12 ; 0 uses
  br label %bb.bo

sub_1331:                                         ; preds = %.tail324, %sub_1326
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.cy = load i8, ptr %i.cx, align 1
  %.not433 = icmp eq i8 %i.cy, 121
  br i1 %.not433, label %.tail329, label %sub_1336

.tail329:                                         ; preds = %sub_1331
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.ab, label %sub_1336

bb.ab:                                            ; preds = %.tail329
  store i32 1, ptr @id3tag, align 4, !tbaa !20
  %i.dc = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @id3tag, i64 101), ptr noundef nonnull dereferenceable(1) %.0267, i64 noundef 4) #12 ; 0 uses
  br label %bb.bo

sub_1336:                                         ; preds = %.tail329, %sub_1331
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.de = load i8, ptr %i.dd, align 1
  %.not435 = icmp eq i8 %i.de, 99
  br i1 %.not435, label %.tail334, label %sub_1341

.tail334:                                         ; preds = %sub_1336
  %i.df = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = icmp eq i8 %i.dg, 0
  br i1 %i.dh, label %bb.ac, label %sub_1341

bb.ac:                                            ; preds = %.tail334
  store i32 1, ptr @id3tag, align 4, !tbaa !20
  %i.di = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @id3tag, i64 106), ptr noundef nonnull dereferenceable(1) %.0267, i64 noundef 30) #12 ; 0 uses
  br label %bb.bo

sub_1341:                                         ; preds = %.tail334, %sub_1336
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.dk = load i8, ptr %i.dj, align 1
  %.not437 = icmp eq i8 %i.dk, 110
  br i1 %.not437, label %.tail339, label %sub_1346

.tail339:                                         ; preds = %sub_1341
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %bb.ad, label %sub_1346

bb.ad:                                            ; preds = %.tail339
  store i32 1, ptr @id3tag, align 4, !tbaa !20
  %i.do = tail call i64 @strtol(ptr noundef nonnull captures(none) %.0267, ptr noundef null, i32 noundef 10) #12, !inline_history !32
  %i.dp = trunc i64 %i.do to i32
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 1)
  %spec.store.select4 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 99)
  %i.dq = trunc nuw nsw i32 %spec.store.select4 to i8
  store i8 %i.dq, ptr getelementptr inbounds nuw (i8, ptr @id3tag, i64 266), align 2, !tbaa !33
  br label %bb.bo

sub_1346:                                         ; preds = %.tail339, %sub_1341
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.ds = load i8, ptr %i.dr, align 1
  %.not439 = icmp eq i8 %i.ds, 103
  br i1 %.not439, label %.tail344, label %.tail344.thread

.tail344:                                         ; preds = %sub_1346
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.ae, label %.tail344.thread

bb.ae:                                            ; preds = %.tail344
  %i.dw = call i64 @strtol(ptr noundef %.0267, ptr noundef nonnull %i.a, i32 noundef 10) #12
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.dz = icmp eq ptr %.0267, %i.dy
  %.pre = load i32, ptr @genre_last, align 4, !tbaa !4 ; 3 uses
  br i1 %i.dz, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ae
  %.not301411 = icmp slt i32 %.pre, 0
  br i1 %.not301411, label %.loopexit, label %.lr.ph413

.lr.ph413:                                        ; preds = %.preheader, %bb.af
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.af ], [ 0, %.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr @genre_list, i64 %indvars.iv
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !16
  %i.ec = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eb, ptr noundef nonnull dereferenceable(1) %.0267) #17
  %.not302 = icmp eq i32 %i.ec, 0
  br i1 %.not302, label %.loopexit.loopexit.split.loop.exit515, label %bb.af

bb.af:                                            ; preds = %.lr.ph413
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %.not301 = icmp slt i32 %.pre, %indvars
  br i1 %.not301, label %.loopexit, label %.lr.ph413, !llvm.loop !34

.loopexit.loopexit.split.loop.exit515:            ; preds = %.lr.ph413
  %i.ed = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %.loopexit.loopexit.split.loop.exit515, %.preheader, %bb.ae
  %.1 = phi i32 [ %i.dx, %bb.ae ], [ 0, %.preheader ], [ %i.ed, %.loopexit.loopexit.split.loop.exit515 ], [ %indvars, %bb.af ] ; 2 uses
  %i.ee = icmp sgt i32 %.1, %.pre
  br i1 %i.ee, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.loopexit
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.eg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.127, ptr noundef %.0267) #13 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit
  %.2 = phi i32 [ 255, %bb.ag ], [ %.1, %.loopexit ]
  %i.eh = trunc i32 %.2 to i8
  store i32 1, ptr @id3tag, align 4, !tbaa !20
  store i8 %i.eh, ptr getelementptr inbounds nuw (i8, ptr @id3tag, i64 265), align 1
  br label %bb.bo

.tail344.thread:                                  ; preds = %sub_0, %sub_1346, %.tail344
  %i.ei = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(8) @.str.128) #17
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.tail344.thread
  %i.ek = tail call double @strtod(ptr noundef nonnull captures(none) %.0267, ptr noundef null) #12, !inline_history !22
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ek, double 1.000000e+03, double 5.000000e-01)
  %i.em = fptosi double %i.el to i32              ; 2 uses
  store i32 %i.em, ptr %i.p, align 8, !tbaa !25
  %i.en = icmp slt i32 %i.em, 1
  br i1 %i.en, label %bb.aj, label %bb.bo

bb.aj:                                            ; preds = %bb.ai
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ep = tail call i64 @fwrite(ptr nonnull @.str.129, i64 60, i64 1, ptr %i.eo) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.ak:                                            ; preds = %.tail344.thread
  %i.eq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(14) @.str.130) #17
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.es = tail call double @strtod(ptr noundef nonnull captures(none) %.0267, ptr noundef null) #12, !inline_history !22
  %i.et = tail call double @llvm.fmuladd.f64(double %i.es, double 1.000000e+03, double 5.000000e-01)
  %i.eu = fptosi double %i.et to i32              ; 2 uses
  store i32 %i.eu, ptr %i.ae, align 8, !tbaa !36
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %bb.am, label %bb.bo

bb.am:                                            ; preds = %bb.al
  %i.ew = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ex = tail call i64 @fwrite(ptr nonnull @.str.131, i64 68, i64 1, ptr %i.ew) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.ey = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(9) @.str.132) #17
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fa = tail call double @strtod(ptr noundef nonnull captures(none) %.0267, ptr noundef null) #12, !inline_history !22
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.fa, double 1.000000e+03, double 5.000000e-01)
  %i.fc = fptosi double %i.fb to i32              ; 2 uses
  store i32 %i.fc, ptr %i.q, align 4, !tbaa !37
  %i.fd = icmp slt i32 %i.fc, 1
  br i1 %i.fd, label %bb.ap, label %bb.bo

bb.ap:                                            ; preds = %bb.ao
  %i.fe = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ff = tail call i64 @fwrite(ptr nonnull @.str.133, i64 62, i64 1, ptr %i.fe) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.fg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(15) @.str.134) #17
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fi = tail call double @strtod(ptr noundef nonnull captures(none) %.0267, ptr noundef null) #12, !inline_history !22
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.fi, double 1.000000e+03, double 5.000000e-01)
  %i.fk = fptosi double %i.fj to i32              ; 2 uses
  store i32 %i.fk, ptr %i.ad, align 4, !tbaa !38
  %i.fl = icmp slt i32 %i.fk, 0
  br i1 %i.fl, label %bb.as, label %bb.bo

bb.as:                                            ; preds = %bb.ar
  %i.fm = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.fn = tail call i64 @fwrite(ptr nonnull @.str.135, i64 70, i64 1, ptr %i.fm) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.at:                                            ; preds = %bb.aq
  %i.fo = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(8) @.str.136) #17
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fq = tail call double @strtod(ptr noundef nonnull captures(none) %.0267, ptr noundef null) #12, !inline_history !22 ; 2 uses
  %i.fr = fptrunc double %i.fq to float
  store float %i.fr, ptr %i.ah, align 8, !tbaa !39
  %i.fs = fcmp ugt double %i.fq, f0x3690000000000000
  br i1 %i.fs, label %bb.bo, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ft = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.fu = tail call i64 @fwrite(ptr nonnull @.str.137, i64 28, i64 1, ptr %i.ft) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.fv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(5) @.str.138) #17
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(6) @.str.139) #17
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  tail call void @lame_help(ptr noundef %0, ptr noundef %i.b)
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.fz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(7) @.str.140) #17
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ba, label %bb.bn

bb.ba:                                            ; preds = %bb.az
  %i.gb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0267, ptr noundef nonnull dereferenceable(6) @.str.141) #17
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 16, ptr %i.y, align 8, !tbaa !40
  store i32 260, ptr %i.q, align 4, !tbaa !37
  store i32 40, ptr %i.ad, align 4, !tbaa !38
  store i32 300, ptr %i.ae, align 8, !tbaa !36
  store <4 x i32> <i32 5, i32 8, i32 56, i32 3700>, ptr %i.ab, align 4, !tbaa !4
  store i32 1, ptr %i.af, align 8, !tbaa !27
  store i32 16000, ptr %i.ag, align 8, !tbaa !23
  store i32 3, ptr %i.r, align 4, !tbaa !41
  store i32 1, ptr %i.s, align 8, !tbaa !42
  store i32 5, ptr %i.i, align 4, !tbaa !43
  br label %bb.bo

bb.bc:                                            ; preds = %bb.ba
  %i.gd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0267, ptr noundef nonnull dereferenceable(6) @.str.114) #17
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.bd, label %sub_0350

bb.bd:                                            ; preds = %bb.bc
  store i32 56, ptr %i.y, align 8, !tbaa !40
  store i32 100, ptr %i.q, align 4, !tbaa !37
  store i32 20, ptr %i.ad, align 4, !tbaa !38
  store i32 2000, ptr %i.ae, align 8, !tbaa !36
  store <4 x i32> <i32 4, i32 8, i32 96, i32 11000>, ptr %i.ab, align 4, !tbaa !4
  store i32 1, ptr %i.af, align 8, !tbaa !27
  store i32 3, ptr %i.r, align 4, !tbaa !41
  store i32 1, ptr %i.s, align 8, !tbaa !42
  store i32 24000, ptr %i.ag, align 8, !tbaa !23
  store i32 5, ptr %i.i, align 4, !tbaa !43
  br label %bb.bo

sub_0350:                                         ; preds = %bb.bc
  %i.gf = load i8, ptr %.0267, align 1            ; 2 uses
  %.not440 = icmp eq i8 %i.gf, 102
  br i1 %.not440, label %sub_1351, label %.tail349.thread

sub_1351:                                         ; preds = %sub_0350
  %i.gg = getelementptr inbounds nuw i8, ptr %.0267, i64 1
  %i.gh = load i8, ptr %i.gg, align 1
  %.not441 = icmp eq i8 %i.gh, 109
  br i1 %.not441, label %.tail349, label %.tail349.thread

.tail349:                                         ; preds = %sub_1351
  %i.gi = getelementptr inbounds nuw i8, ptr %.0267, i64 2
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = icmp eq i8 %i.gj, 0
  br i1 %i.gk, label %bb.be, label %.tail349.thread

bb.be:                                            ; preds = %.tail349
  store i32 96, ptr %i.y, align 8, !tbaa !40
  store i32 30, ptr %i.q, align 4, !tbaa !37
  store i32 0, ptr %i.ad, align 4, !tbaa !38
  store i32 0, ptr %i.ae, align 8, !tbaa !36
  store <4 x i32> <i32 4, i32 32, i32 192, i32 15000>, ptr %i.ab, align 4, !tbaa !4
  store i32 1, ptr %i.r, align 4, !tbaa !41
  store i32 1, ptr %i.s, align 8, !tbaa !42
  store i32 5, ptr %i.i, align 4, !tbaa !43
  br label %bb.bo

.tail349.thread:                                  ; preds = %sub_1351, %sub_0350, %.tail349
  %i.gl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0267, ptr noundef nonnull dereferenceable(5) @.str.143) #17
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.tail349.thread
  store i32 128, ptr %i.y, align 8, !tbaa !40
  store i32 15, ptr %i.q, align 4, !tbaa !37
end_hunk_0
