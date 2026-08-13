inline.NumInlined: 49
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@parseEmailHeader:bb.a

bb.al:                                            ; preds = %bb.ak
  %i.bx = tail call ptr @__ctype_b_loc() #23      ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !47
  %i.bz = getelementptr inbounds i8, ptr %.016.i.i, i64 -1 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !43  ; 3 uses
  %i.cb = sext i8 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !49
  %.fr.i.i = freeze i16 %i.cd
  %.not22.i.i = icmp slt i16 %.fr.i.i, 0
  br i1 %.not22.i.i, label %strstrip.exit, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.al
  switch i8 %i.ca, label %bb.ai [
    i8 13, label %strstrip.exit
    i8 10, label %strstrip.exit
  ]

strstrip.exit:                                    ; preds = %bb.al, %switch.early.test.i.i, %switch.early.test.i.i
  %i.ce = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.b) #20 ; 5 uses
  %.not37 = icmp eq ptr %i.ce, null
  br i1 %.not37, label %parseMimeHeader.exit.thread, label %bb.am

bb.am:                                            ; preds = %strstrip.exit
  store i8 0, ptr %4, align 1, !tbaa !40
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.68, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.ce) #20
  %i.cf = call fastcc ptr @rfc822comments(ptr noundef nonnull %i.bo, ptr noundef null) ; 3 uses
  %.not.i40 = icmp eq ptr %i.cf, null
  br i1 %.not.i40, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cg = call i32 @tableFind(ptr noundef %2, ptr noundef nonnull %i.cf) #20
  call void @free(ptr noundef nonnull %i.cf) #20
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ch = call i32 @tableFind(ptr noundef %2, ptr noundef nonnull %i.bo) #20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0111.i = phi i32 [ %i.cg, %bb.an ], [ %i.ch, %bb.ao ]
  %i.ci = call fastcc ptr @rfc822comments(ptr noundef nonnull %i.ce, ptr noundef null) ; 6 uses
  %.not126.i = icmp eq ptr %i.ci, null            ; 5 uses
  %..i = select i1 %.not126.i, ptr %i.ce, ptr %i.ci ; 11 uses
  switch i32 %.0111.i, label %haveTooManyMIMEArguments.exit.thread.i [
    i32 1, label %bb.aq
    i32 2, label %bb.bw
    i32 3, label %bb.bx
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.cj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %..i, i32 noundef 47) #22
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.70, ptr noundef nonnull %..i) #20
  br label %haveTooManyMIMEArguments.exit.thread.i

bb.as:                                            ; preds = %bb.aq
  %i.cl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %..i) #22
  %i.cm = add i64 %i.cl, 1
  %i.cn = call ptr @cli_max_malloc(i64 noundef %i.cm) #20 ; 13 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.cp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %..i) #22
  %i.cq = add i64 %i.cp, 1
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.71, i64 noundef %i.cq) #20
  br i1 %.not126.i, label %parseMimeHeader.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.ci) #20
  br label %parseMimeHeader.exit.thread

bb.av:                                            ; preds = %bb.as
  %i.cr = load i8, ptr %i.ce, align 1, !tbaa !43
  %i.cs = icmp eq i8 %i.cr, 47
  br i1 %i.cs, label %bb.aw, label %.preheader151.i

.preheader151.i:                                  ; preds = %bb.av
  %i.ct = load ptr, ptr %i.bx, align 8, !tbaa !47
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.72) #20
  %i.cu = call i32 @messageSetMimeType(ptr noundef %0, ptr noundef nonnull @.str.73) #20 ; 0 uses
  call void @messageSetMimeSubtype(ptr noundef %0, ptr noundef nonnull @.str.74) #20
  br label %bb.bt

bb.ax:                                            ; preds = %bb.ax, %.preheader151.i
  %.1113.i = phi ptr [ %i.da, %bb.ax ], [ %..i, %.preheader151.i ] ; 3 uses
  %i.cv = load i8, ptr %.1113.i, align 1, !tbaa !43 ; 2 uses
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !49
  %i.cz = and i16 %i.cy, 8192
  %.not130.i41 = icmp eq i16 %i.cz, 0
  %i.da = getelementptr inbounds nuw i8, ptr %.1113.i, i64 1
  br i1 %.not130.i41, label %bb.ay, label %bb.ax

bb.ay:                                            ; preds = %bb.ax
  %i.db = icmp eq i8 %i.cv, 34
  %spec.select.idx.i = zext i1 %i.db to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.1113.i, i64 %spec.select.idx.i ; 4 uses
  %i.dc = load i8, ptr %spec.select.i, align 1, !tbaa !43
  %.not131.i = icmp eq i8 %i.dc, 47
  br i1 %.not131.i, label %bb.bt, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !102
  %i.dd = call ptr @cli_strtokbuf(ptr noundef nonnull %spec.select.i, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.cn) #20 ; 3 uses
  %.not132.i = icmp eq ptr %i.dd, null
  br i1 %.not132.i, label %.critedge144.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !43
  %.not133.i = icmp eq i8 %i.de, 0
  br i1 %.not133.i, label %.critedge144.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.df = call ptr @cli_safer_strdup(ptr noundef nonnull %i.cn) #20 ; 3 uses
  %.not139.i = icmp eq ptr %i.df, null
  br i1 %.not139.i, label %bb.bc, label %.preheader.i42

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not126.i, label %.thread149.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.ci) #20
  br label %.thread149.i

.thread149.i:                                     ; preds = %bb.bd, %bb.bc
  call void @free(ptr noundef nonnull %i.cn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %parseMimeHeader.exit.thread

.preheader.i42:                                   ; preds = %bb.bb, %bb.bs
  %.0102.i = phi ptr [ %i.em, %bb.bs ], [ %i.dd, %bb.bb ]
  %i.dg = call ptr @strtok_r(ptr noundef nonnull %.0102.i, ptr noundef nonnull @.str.76, ptr noundef nonnull %i.a) #20
  %i.dh = call i32 @messageSetMimeType(ptr noundef %0, ptr noundef %i.dg) #20
  %i.di = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.a) #20 ; 10 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.critedge.thread.i, label %bb.be

bb.be:                                            ; preds = %.preheader.i42
  %.not134.i = icmp eq i32 %i.dh, 0
  br i1 %.not134.i, label %bb.bp, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.di) #22 ; 2 uses
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  %i.dm = icmp ugt i32 %i.dl, 2147483646
  br i1 %i.dm, label %strstrip.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dn = and i64 %i.dk, 2147483647
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dn ; 2 uses
  %.pre.i.i.i = load i8, ptr %i.do, align 1, !tbaa !43
  br label %bb.bh

bb.bh:                                            ; preds = %switch.early.test.i.i.i, %bb.bg
  %i.dp = phi i8 [ %.pre.i.i.i, %bb.bg ], [ %i.du, %switch.early.test.i.i.i ]
  %.017.i.i.i = phi i32 [ %i.dl, %bb.bg ], [ %i.dq, %switch.early.test.i.i.i ] ; 5 uses
  %.016.i.i.i = phi ptr [ %i.do, %bb.bg ], [ %i.dt, %switch.early.test.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i8 0, ptr %.016.i.i.i, align 1, !tbaa !43
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.dq = add nsw i32 %.017.i.i.i, -1
  %i.dr = icmp sgt i32 %.017.i.i.i, 0
  br i1 %i.dr, label %bb.bk, label %.critedge.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.ds = load ptr, ptr %i.bx, align 8, !tbaa !47
  %i.dt = getelementptr inbounds i8, ptr %.016.i.i.i, i64 -1 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !43  ; 3 uses
  %i.dv = sext i8 %i.du to i64
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !49
  %.fr.i.i.i = freeze i16 %i.dx
  %.not22.i.i.i = icmp slt i16 %.fr.i.i.i, 0
  br i1 %.not22.i.i.i, label %.critedge.i.i.i, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.bk
  switch i8 %i.du, label %bb.bh [
    i8 13, label %.critedge.i.i.i
    i8 10, label %.critedge.i.i.i
  ]

.critedge.i.i.i:                                  ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.bk, %bb.bj
  %.017.lcssa.i.i.i = phi i32 [ %.017.i.i.i, %switch.early.test.i.i.i ], [ %.017.i.i.i, %switch.early.test.i.i.i ], [ %.017.i.i.i, %bb.bk ], [ 0, %bb.bj ]
  %i.dy = zext nneg i32 %.017.lcssa.i.i.i to i64
  br label %strstrip.exit.i

strstrip.exit.i:                                  ; preds = %.critedge.i.i.i, %bb.bf
  %.0.i.i = phi i64 [ 0, %bb.bf ], [ %i.dy, %.critedge.i.i.i ] ; 2 uses
  %5 = add nsw i64 %.0.i.i, -1
  %6 = getelementptr i8, ptr %i.di, i64 %.0.i.i
  %i.dz = getelementptr i8, ptr %6, i64 -1        ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !43
  %i.eb = icmp eq i8 %i.ea, 34
  br i1 %i.eb, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %strstrip.exit.i
  store i8 0, ptr %i.dz, align 1, !tbaa !43
  %i.ec = call i64 @strstrip(ptr noundef nonnull %i.di)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %strstrip.exit.i
  %.0.i43 = phi i64 [ %i.ec, %bb.bl ], [ %5, %strstrip.exit.i ]
  %.not135.i = icmp eq i64 %.0.i43, 0
  br i1 %.not135.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ed = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.di, i32 noundef 32) #22
  %.not136.i = icmp eq ptr %i.ed, null
  br i1 %.not136.i, label %.sink.split.i44, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ee = call ptr @cli_strtokbuf(ptr noundef nonnull %i.di, i32 noundef 0, ptr noundef nonnull @.str.77, ptr noundef nonnull %i.df) #20
  br label %.sink.split.i44

.sink.split.i44:                                  ; preds = %bb.bo, %bb.bn
  %.sink.i = phi ptr [ %i.ee, %bb.bo ], [ %i.di, %bb.bn ]
  call void @messageSetMimeSubtype(ptr noundef %0, ptr noundef %.sink.i) #20
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split.i44, %bb.bm, %bb.be
  %i.ef = load i8, ptr %i.di, align 1, !tbaa !43  ; 2 uses
  %.not137154.i = icmp eq i8 %i.ef, 0
  br i1 %.not137154.i, label %.critedge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bp
  %i.eg = load ptr, ptr %i.bx, align 8, !tbaa !47
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %.lr.ph.i
  %i.eh = phi i8 [ %i.ef, %.lr.ph.i ], [ %i.en, %bb.br ]
  %.1103155.i = phi ptr [ %i.di, %.lr.ph.i ], [ %i.em, %bb.br ]
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !49
  %i.el = and i16 %i.ek, 8192
  %.not138.i = icmp eq i16 %i.el, 0
  %i.em = getelementptr inbounds nuw i8, ptr %.1103155.i, i64 1 ; 3 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !43  ; 2 uses
  %.not137.i = icmp eq i8 %i.en, 0                ; 2 uses
  br i1 %.not138.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  br i1 %.not137.i, label %.critedge.thread.i, label %bb.bq

bb.bs:                                            ; preds = %bb.bq
  br i1 %.not137.i, label %.critedge.thread.i, label %.preheader.i42

.critedge.thread.i:                               ; preds = %bb.bs, %bb.bp, %.preheader.i42, %bb.br
  call void @free(ptr noundef %i.df) #20
  br label %.critedge144.i

.critedge144.i:                                   ; preds = %.critedge.thread.i, %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.bt

bb.bt:                                            ; preds = %.critedge144.i, %bb.ay, %bb.aw
  %.3115.i = phi ptr [ %..i, %bb.aw ], [ %spec.select.i, %.critedge144.i ], [ %spec.select.i, %bb.ay ] ; 2 uses
  %i.eo = call ptr @cli_strtokbuf(ptr noundef nonnull %.3115.i, i32 noundef 1, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.cn) #20
  %.not140157.i = icmp eq ptr %i.eo, null
  br i1 %.not140157.i, label %haveTooManyMIMEArguments.exit.thread.i, label %.lr.ph159.i.preheader

.lr.ph159.i.preheader:                            ; preds = %bb.bt
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.78, ptr noundef nonnull %i.cn) #20
  br label %haveTooManyMIMEArguments.exit.i

.lr.ph159.i:                                      ; preds = %haveTooManyMIMEArguments.exit.i
  %i.ep = add nuw nsw i64 %.0110158.i207, 1       ; 2 uses
  %i.eq = add nuw nsw i32 %i.ex, 1
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.78, ptr noundef nonnull %i.cn) #20
  %exitcond.i = icmp eq i64 %i.ep, 255
  br i1 %exitcond.i, label %bb.bu, label %haveTooManyMIMEArguments.exit.i

bb.bu:                                            ; preds = %.lr.ph159.i
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !52
  %i.ev = and i32 %i.eu, 4
  %.not.i.i45 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i45, label %haveTooManyMIMEArguments.exit.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ew = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %3, ptr noundef nonnull @.str.80) #20 ; 0 uses
  store i8 1, ptr %4, align 1, !tbaa !40
  br label %haveTooManyMIMEArguments.exit.thread.i

haveTooManyMIMEArguments.exit.i:                  ; preds = %.lr.ph159.i.preheader, %.lr.ph159.i
  %.0110158.i207 = phi i64 [ 0, %.lr.ph159.i.preheader ], [ %i.ep, %.lr.ph159.i ]
  %i.ex = phi i32 [ 2, %.lr.ph159.i.preheader ], [ %i.eq, %.lr.ph159.i ] ; 2 uses
  call void @messageAddArguments(ptr noundef %0, ptr noundef nonnull %i.cn) #20
  %i.ey = call ptr @cli_strtokbuf(ptr noundef nonnull %.3115.i, i32 noundef %i.ex, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.cn) #20
  %.not140.i = icmp eq ptr %i.ey, null
  br i1 %.not140.i, label %haveTooManyMIMEArguments.exit.thread.i, label %.lr.ph159.i

bb.bw:                                            ; preds = %bb.ap
  call void @messageSetEncoding(ptr noundef %0, ptr noundef nonnull %..i) #20
  br label %haveTooManyMIMEArguments.exit.thread.i

bb.bx:                                            ; preds = %bb.ap
  %i.ez = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %..i) #22
  %i.fa = add i64 %i.ez, 1
  %i.fb = call ptr @cli_max_malloc(i64 noundef %i.fa) #20 ; 5 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.fd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %..i) #22
  %i.fe = add i64 %i.fd, 1
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.71, i64 noundef %i.fe) #20
  br i1 %.not126.i, label %parseMimeHeader.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @free(ptr noundef nonnull %i.ci) #20
  br label %parseMimeHeader.exit.thread

bb.ca:                                            ; preds = %bb.bx
  %i.ff = call ptr @cli_strtokbuf(ptr noundef nonnull %..i, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.fb) #20 ; 3 uses
  %.not127.i = icmp eq ptr %i.ff, null
  br i1 %.not127.i, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !43
  %.not128.i = icmp eq i8 %i.fg, 0
  br i1 %.not128.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @messageSetDispositionType(ptr noundef %0, ptr noundef nonnull %i.ff) #20
  %i.fh = call ptr @cli_strtokbuf(ptr noundef nonnull %..i, i32 noundef 1, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.fb) #20
  call void @messageAddArgument(ptr noundef %0, ptr noundef %i.fh) #20
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.fi = call i32 @messageHasFilename(ptr noundef %0) #20
  %.not129.i = icmp eq i32 %i.fi, 0
  br i1 %.not129.i, label %bb.ce, label %haveTooManyMIMEArguments.exit.thread.i

bb.ce:                                            ; preds = %bb.cd
  call void @messageAddArgument(ptr noundef %0, ptr noundef nonnull @.str.79) #20
  br label %haveTooManyMIMEArguments.exit.thread.i

haveTooManyMIMEArguments.exit.thread.i:           ; preds = %haveTooManyMIMEArguments.exit.i, %bb.ce, %bb.cd, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.ar, %bb.ap
  %.0116.i = phi ptr [ null, %bb.ap ], [ %i.fb, %bb.ce ], [ null, %bb.ar ], [ %i.fb, %bb.cd ], [ null, %bb.bw ], [ %i.cn, %bb.bv ], [ %i.cn, %bb.bu ], [ %i.cn, %bb.bt ], [ %i.cn, %haveTooManyMIMEArguments.exit.i ] ; 2 uses
  br i1 %.not126.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %haveTooManyMIMEArguments.exit.thread.i
  call void @free(ptr noundef nonnull %i.ci) #20
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %haveTooManyMIMEArguments.exit.thread.i
  %.not141.i = icmp eq ptr %.0116.i, null
  br i1 %.not141.i, label %parseMimeHeader.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @free(ptr noundef nonnull %.0116.i) #20
  br label %parseMimeHeader.exit.thread

parseMimeHeader.exit.thread:                      ; preds = %bb.ak, %strstrip.exit, %bb.at, %bb.au, %.thread149.i, %bb.by, %bb.bz, %bb.cg, %bb.ch, %bb.ag, %bb.af
  %.12657 = phi i32 [ -1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.au ], [ -1, %bb.at ], [ -1, %bb.bz ], [ 0, %bb.ch ], [ -1, %strstrip.exit ], [ -1, %.thread149.i ], [ -1, %bb.by ], [ 0, %bb.cg ], [ -1, %bb.ak ]
  call void @free(ptr noundef nonnull %.024) #20
  br label %.thread

.thread:                                          ; preds = %bb.c, %rfc2047.exit.thread, %parseMimeHeader.exit.thread
  %.0 = phi i32 [ -1, %rfc2047.exit.thread ], [ %.12657, %parseMimeHeader.exit.thread ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i32 %.0
}

declare i32 @messageMoveText(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @cli_append_potentially_unwanted(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #1

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #6

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #1

declare void @messageSetEncoding(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @messageToBlob(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @blobGetDataSize(ptr noundef) local_unnamed_addr #1

declare ptr @blobGetData(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @blobDestroy(ptr noundef) local_unnamed_addr #1
end_hunk_0
