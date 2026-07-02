inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@asn1_parse2:bb.a
  %.039.i = phi i32 [ 0, %bb.j ], [ 1, %bb.l ]    ; 3 uses
  %.0.i = phi ptr [ null, %bb.j ], [ %i.at, %bb.l ] ; 3 uses
  %i.ax = call i64 @BIO_ctrl(ptr noundef nonnull %.044.i, i32 noundef 81, i64 noundef 0, ptr noundef null) #5 ; 3 uses
  %i.ay = call i64 @BIO_ctrl(ptr noundef nonnull %.044.i, i32 noundef 79, i64 noundef 0, ptr noundef nonnull %i.a) #5
  %i.az = icmp slt i64 %i.ay, 1
  br i1 %i.az, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = call i64 @BIO_ctrl(ptr noundef nonnull %.044.i, i32 noundef 80, i64 noundef %i.o, ptr noundef null) #5
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.145.i = phi ptr [ %.044.i, %bb.n ], [ null, %bb.i ] ; 2 uses
  %.140.i = phi i32 [ %.039.i, %bb.n ], [ 0, %bb.i ]
  %.037.i = phi i64 [ %i.ax, %bb.n ], [ -1, %bb.i ]
  %.1.i = phi ptr [ %.0.i, %bb.n ], [ null, %bb.i ]
  %i.bc = and i32 %i.ak, 192
  %i.bd = icmp eq i32 %i.bc, 192
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.52, i32 noundef %i.aj) #5 ; 0 uses
  br label %ASN1_tag2str.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bf = and i32 %i.ak, 128
  %.not57.i = icmp eq i32 %i.bf, 0
  br i1 %.not57.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef %i.aj) #5 ; 0 uses
  br label %ASN1_tag2str.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bh = and i32 %i.ak, 64
  %.not58.i = icmp eq i32 %i.bh, 0
  br i1 %.not58.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.54, i32 noundef %i.aj) #5 ; 0 uses
  br label %ASN1_tag2str.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bj = icmp sgt i32 %i.aj, 30
  br i1 %i.bj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bk = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.55, i32 noundef %i.aj) #5 ; 0 uses
  br label %ASN1_tag2str.exit.i

bb.w:                                             ; preds = %bb.u
  %i.bl = and i32 %i.aj, -9
  %or.cond.i.i = icmp eq i32 %i.bl, 258
  %i.bm = and i32 %i.aj, 10
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %i.bm, i32 %i.aj ; 2 uses
  %or.cond3.i.i = icmp ugt i32 %spec.select.i.i, 30
  br i1 %or.cond3.i.i, label %ASN1_tag2str.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = zext nneg i32 %spec.select.i.i to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @ASN1_tag2str.tag2str, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !9
  br label %ASN1_tag2str.exit.i

ASN1_tag2str.exit.i:                              ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %bb.r, %bb.p
  %.143.i = phi ptr [ %i.a, %bb.p ], [ %i.a, %bb.r ], [ %i.a, %bb.t ], [ %i.a, %bb.v ], [ %i.bp, %bb.x ], [ @.str.31, %bb.w ]
  %i.bq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %.145.i, ptr noundef nonnull @.str.56, ptr noundef %.143.i) #5
  %i.br = icmp slt i32 %i.bq, 1
  br label %bb.y

bb.y:                                             ; preds = %ASN1_tag2str.exit.i, %bb.n, %bb.m
  %.246.i = phi ptr [ %.044.i, %bb.m ], [ %.044.i, %bb.n ], [ %.145.i, %ASN1_tag2str.exit.i ] ; 2 uses
  %.241.i = phi i32 [ %.039.i, %bb.m ], [ %.039.i, %bb.n ], [ %.140.i, %ASN1_tag2str.exit.i ]
  %.138.i = phi i64 [ %i.ax, %bb.m ], [ %i.ax, %bb.n ], [ %.037.i, %ASN1_tag2str.exit.i ] ; 2 uses
  %.036.i = phi i1 [ true, %bb.m ], [ true, %bb.n ], [ %i.br, %ASN1_tag2str.exit.i ]
  %.2.i = phi ptr [ %.0.i, %bb.m ], [ %.0.i, %bb.n ], [ %.1.i, %ASN1_tag2str.exit.i ]
  %i.bs = icmp sgt i64 %.138.i, -1
  br i1 %i.bs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bt = call i64 @BIO_ctrl(ptr noundef %.246.i, i32 noundef 80, i64 noundef %.138.i, ptr noundef null) #5 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.not59.i = icmp eq i32 %.241.i, 0
  br i1 %.not59.i, label %asn1_print_info.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = call ptr @BIO_pop(ptr noundef %.246.i) #5 ; 0 uses
  br label %asn1_print_info.exit

asn1_print_info.exit.thread:                      ; preds = %bb.h, %bb.l, %bb.k, %bb.g
  %.26875.i.ph = phi ptr [ null, %bb.g ], [ null, %bb.k ], [ %i.at, %bb.l ], [ null, %bb.h ]
  %i.bv = call i32 @BIO_free(ptr noundef %.26875.i.ph) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %.thread264

asn1_print_info.exit:                             ; preds = %bb.aa, %bb.ab
  %i.bw = call i32 @BIO_free(ptr noundef %.2.i) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %.036.i, label %.thread264, label %bb.ac

bb.ac:                                            ; preds = %asn1_print_info.exit
  %i.bx = and i32 %i.v, 32
  %.not230 = icmp eq i32 %i.bx, 0
  br i1 %.not230, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.bz = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 %i.bz ; 2 uses
  %i.cb = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1) #5
  %i.cc = icmp slt i32 %i.cb, 1
  br i1 %i.cc, label %.thread264, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = load i64, ptr %i.d, align 8, !tbaa !14  ; 3 uses
  %i.ce = icmp sgt i64 %i.cd, %i.ad
  br i1 %i.ce, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cf = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef %i.ad) #5 ; 0 uses
  br label %.thread264

bb.ag:                                            ; preds = %bb.ae
  %i.cg = icmp eq i64 %i.cd, 0
  %or.cond = and i1 %.not55.i, %i.cg
  %.pre523 = load ptr, ptr %i.b, align 8, !tbaa !9 ; 4 uses
  br i1 %or.cond, label %.preheader313, label %.preheader315

.preheader315:                                    ; preds = %bb.ag
  %.not245333 = icmp ult ptr %.pre523, %i.ca
  br i1 %.not245333, label %.lr.ph, label %.loopexit316

.preheader313:                                    ; preds = %bb.ag, %bb.ah
  %i.ch = phi ptr [ %i.cq, %bb.ah ], [ %.pre523, %bb.ag ]
  %i.ci = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cj = sub i64 %i.q, %i.ci
  %i.ck = load ptr, ptr %1, align 8, !tbaa !9
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.ci, %i.cl
  %i.cn = trunc i64 %i.cm to i32
  %i.co = add i32 %3, %i.cn
  %i.cp = call fastcc i32 @asn1_parse2(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.cj, i32 noundef %i.co, i32 noundef %i.p, i32 noundef %5, i32 noundef %6) ; 2 uses
  switch i32 %i.cp, label %bb.ah [
    i32 0, label %.thread264
    i32 2, label %.preheader313._crit_edge
  ]

.preheader313._crit_edge:                         ; preds = %.preheader313
  %.pre524 = load ptr, ptr %i.b, align 8, !tbaa !9
  br label %split

bb.ah:                                            ; preds = %.preheader313
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !9   ; 3 uses
  %.not246 = icmp ult ptr %i.cq, %i.k
  br i1 %.not246, label %.preheader313, label %split

split:                                            ; preds = %bb.ah, %.preheader313._crit_edge
  %i.cr = phi ptr [ %.pre524, %.preheader313._crit_edge ], [ %i.cq, %bb.ah ] ; 2 uses
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.by to i64
  %i.cu = sub i64 %i.cs, %i.ct
  store i64 %i.cu, ptr %i.d, align 8, !tbaa !14
  br label %.loopexit316

.lr.ph:                                           ; preds = %.preheader315, %bb.ai
  %i.cv = phi ptr [ %i.de, %bb.ai ], [ %.pre523, %.preheader315 ]
  %.0180334 = phi i64 [ %i.dg, %bb.ai ], [ %i.cd, %.preheader315 ] ; 2 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !9
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = trunc i64 %i.cz to i32
  %i.db = add i32 %3, %i.da
  %i.dc = call fastcc i32 @asn1_parse2(ptr noundef %0, ptr noundef %i.b, i64 noundef %.0180334, i32 noundef %i.db, i32 noundef %i.p, i32 noundef %5, i32 noundef %6)
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %.thread264, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !9   ; 4 uses
  %i.df = ptrtoint ptr %i.de to i64
  %.neg = add i64 %.0180334, %i.cx
  %i.dg = sub i64 %.neg, %i.df
  %.not245 = icmp ult ptr %i.de, %i.ca
  br i1 %.not245, label %.lr.ph, label %.loopexit316, !llvm.loop !16

bb.aj:                                            ; preds = %bb.ac
  %i.dh = load i32, ptr %i.f, align 4, !tbaa !5
  %.not231 = icmp eq i32 %i.dh, 0
  br i1 %.not231, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = load i64, ptr %i.d, align 8, !tbaa !14
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.di
  store ptr %i.dk, ptr %i.b, align 8, !tbaa !9
  %i.dl = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1) #5
  %i.dm = icmp slt i32 %i.dl, 1
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !9
  br i1 %i.dm, label %.thread264, label %.loopexit316

bb.al:                                            ; preds = %bb.aj
  %i.dn = load i32, ptr %i.e, align 4, !tbaa !5
  switch i32 %i.dn, label %bb.cb [
    i32 26, label %bb.am
    i32 24, label %bb.am
    i32 23, label %bb.am
    i32 22, label %bb.am
    i32 20, label %bb.am
    i32 19, label %bb.am
    i32 18, label %bb.am
    i32 12, label %bb.am
    i32 6, label %bb.ap
    i32 1, label %bb.at
    i32 30, label %.thread556
    i32 4, label %bb.aw
    i32 2, label %bb.bh
    i32 10, label %bb.br
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  %i.do = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef 1) #5
  %i.dp = icmp slt i32 %i.do, 1
  br i1 %i.dp, label %.thread264, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dq = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.dr = icmp sgt i64 %i.dq, 0
  br i1 %i.dr, label %bb.ao, label %.thread556

bb.ao:                                            ; preds = %bb.an
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.dt = trunc i64 %i.dq to i32
  %i.du = call i32 @BIO_write(ptr noundef %0, ptr noundef %i.ds, i32 noundef %i.dt) #5
  %i.dv = load i64, ptr %i.d, align 8, !tbaa !14
  %i.dw = trunc i64 %i.dv to i32
  %.not242 = icmp eq i32 %i.du, %i.dw
  br i1 %.not242, label %.thread556, label %.thread264

bb.ap:                                            ; preds = %bb.al
  store ptr %i.u, ptr %i.c, align 8, !tbaa !9
  %i.dx = load i64, ptr %i.d, align 8, !tbaa !14
  %i.dy = add nsw i64 %i.dx, %i.ac
  %i.dz = call ptr @d2i_ASN1_OBJECT(ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, i64 noundef %i.dy) #5
  %.not241 = icmp eq ptr %i.dz, null
  br i1 %.not241, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ea = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef 1) #5
  %i.eb = icmp slt i32 %i.ea, 1
  br i1 %i.eb, label %.thread264, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ec = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.ed = call i32 @i2a_ASN1_OBJECT(ptr noundef %0, ptr noundef %i.ec) #5 ; 0 uses
  br label %.thread556

bb.as:                                            ; preds = %bb.ap
  %i.ee = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.37) #5
  %i.ef = icmp slt i32 %i.ee, 1
  br i1 %i.ef, label %.thread264, label %.thread287

bb.at:                                            ; preds = %bb.al
  %i.eg = load i64, ptr %i.d, align 8, !tbaa !14
  %.not240 = icmp eq i64 %i.eg, 1
  br i1 %.not240, label %.thread266, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eh = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.38) #5
  %i.ei = icmp slt i32 %i.eh, 1
  br i1 %i.ei, label %.thread264, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.pr = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ej = icmp sgt i64 %.pr, 0
  br i1 %i.ej, label %.thread266, label %.thread287

.thread266:                                       ; preds = %bb.at, %bb.av
  %.1184268 = phi i32 [ 1, %bb.av ], [ 0, %bb.at ]
  %i.ek = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !18
  %i.em = zext i8 %i.el to i32
  %i.en = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %i.em) #5 ; 0 uses
  br label %bb.ce

bb.aw:                                            ; preds = %bb.al
  store ptr %i.u, ptr %i.c, align 8, !tbaa !9
  %i.eo = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ep = add nsw i64 %i.eo, %i.ac
  %i.eq = call ptr @d2i_ASN1_OCTET_STRING(ptr noundef null, ptr noundef nonnull %i.c, i64 noundef %i.ep) #5 ; 15 uses
  %.not234 = icmp eq ptr %i.eq, null
  br i1 %.not234, label %.thread567, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !19 ; 2 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %bb.ay, label %.thread567

bb.ay:                                            ; preds = %bb.ax
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !21 ; 2 uses
  store ptr %i.eu, ptr %i.c, align 8, !tbaa !9
  %wide.trip.count = zext nneg i32 %i.er to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread270
  %indvars.iv513 = phi i64 [ 0, %bb.ay ], [ %indvars.iv.next514, %.thread270 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv513
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !18
  %.fr = freeze i8 %i.ew                          ; 3 uses
  %i.ex = icmp ugt i8 %.fr, 31
  br i1 %i.ex, label %bb.ba, label %switch.early.test

switch.early.test:                                ; preds = %bb.az
  switch i8 %.fr, label %bb.bc [
    i8 13, label %.thread270
    i8 10, label %.thread270
    i8 9, label %.thread270
  ]

bb.ba:                                            ; preds = %bb.az
  %i.ey = icmp ugt i8 %.fr, 126
  br i1 %i.ey, label %bb.bc, label %.thread270

.thread270:                                       ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.ba
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.az, !llvm.loop !22

.critedge:                                        ; preds = %.thread270
  %i.ez = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef 1) #5
  %i.fa = icmp slt i32 %i.ez, 1
  br i1 %i.fa, label %.thread264, label %bb.bb

bb.bb:                                            ; preds = %.critedge
  %i.fb = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.fc = load i32, ptr %i.eq, align 8, !tbaa !19
  %i.fd = call i32 @BIO_write(ptr noundef %0, ptr noundef %i.fb, i32 noundef %i.fc) #5
  %i.fe = icmp slt i32 %i.fd, 1
  br i1 %i.fe, label %.thread264, label %.thread567

bb.bc:                                            ; preds = %bb.ba, %switch.early.test
  br i1 %.not239, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.ff = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef 11) #5
  %i.fg = icmp slt i32 %i.ff, 1
  br i1 %i.fg, label %.thread264, label %.preheader309

.preheader309:                                    ; preds = %bb.bd
  %i.fh = load i32, ptr %i.eq, align 8, !tbaa !19
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph344, label %.thread567

bb.be:                                            ; preds = %.lr.ph344
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %i.fj = load i32, ptr %i.eq, align 8, !tbaa !19
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp slt i64 %indvars.iv.next517, %i.fk
  br i1 %i.fl, label %.lr.ph344, label %.thread567, !llvm.loop !23

.lr.ph344:                                        ; preds = %.preheader309, %bb.be
  %indvars.iv516 = phi i64 [ %indvars.iv.next517, %bb.be ], [ 0, %.preheader309 ] ; 2 uses
  %i.fm = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv516
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !18
  %i.fp = zext i8 %i.fo to i32
  %i.fq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %i.fp) #5
  %i.fr = icmp slt i32 %i.fq, 1
  br i1 %i.fr, label %.thread264, label %bb.be

bb.bf:                                            ; preds = %bb.bc
  %i.fs = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1) #5
  %i.ft = icmp slt i32 %i.fs, 1
  br i1 %i.ft, label %.thread264, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fu = load ptr, ptr %i.c, align 8, !tbaa !9
  %.pre525 = load i32, ptr %i.eq, align 8, !tbaa !19 ; 2 uses
  %i.fv = call i32 @llvm.smin.i32(i32 %6, i32 %.pre525)
  %i.fw = select i1 %i.r, i32 %.pre525, i32 %i.fv
  %i.fx = call i32 @BIO_dump_indent(ptr noundef %0, ptr noundef %i.fu, i32 noundef %i.fw, i32 noundef 6) #5
  %i.fy = icmp slt i32 %i.fx, 1
  br i1 %i.fy, label %.thread264, label %bb.cg

bb.bh:                                            ; preds = %bb.al
  store ptr %i.u, ptr %i.c, align 8, !tbaa !9
  %i.fz = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ga = add nsw i64 %i.fz, %i.ac
  %i.gb = call ptr @d2i_ASN1_INTEGER(ptr noundef null, ptr noundef nonnull %i.c, i64 noundef %i.ga) #5 ; 10 uses
  %.not233 = icmp eq ptr %i.gb, null
  br i1 %.not233, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gc = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef 1) #5
  %i.gd = icmp slt i32 %i.gc, 1
  br i1 %i.gd, label %.thread264, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
end_hunk_0
begin_hunk_1_@asn1_parse2:bb.a

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.gj = load i32, ptr %i.gb, align 8, !tbaa !19 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %.lr.ph339, label %._crit_edge340

.lr.ph339:                                        ; preds = %bb.bl
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bn
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %i.gm = load i32, ptr %i.gb, align 8, !tbaa !19 ; 2 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = icmp slt i64 %indvars.iv.next511, %i.gn
  br i1 %i.go, label %bb.bn, label %._crit_edge340, !llvm.loop !25

bb.bn:                                            ; preds = %.lr.ph339, %bb.bm
  %indvars.iv510 = phi i64 [ 0, %.lr.ph339 ], [ %indvars.iv.next511, %bb.bm ] ; 2 uses
  %i.gp = load ptr, ptr %i.gl, align 8, !tbaa !21
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv510
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !18
  %i.gs = zext i8 %i.gr to i32
  %i.gt = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %i.gs) #5
  %i.gu = icmp slt i32 %i.gt, 1
  br i1 %i.gu, label %.thread264, label %bb.bm

._crit_edge340:                                   ; preds = %bb.bm, %bb.bl
  %.lcssa320 = phi i32 [ %i.gj, %bb.bl ], [ %i.gm, %bb.bm ]
  %i.gv = icmp eq i32 %.lcssa320, 0
  br i1 %i.gv, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %._crit_edge340
  %i.gw = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 2) #5
  %i.gx = icmp slt i32 %i.gw, 1
  br i1 %i.gx, label %.thread264, label %bb.bq

bb.bp:                                            ; preds = %bb.bh
  %i.gy = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.44) #5
  %i.gz = icmp slt i32 %i.gy, 1
  br i1 %i.gz, label %.thread264, label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %._crit_edge340, %bb.bp
  %.2185 = phi i32 [ 0, %bb.bo ], [ 0, %._crit_edge340 ], [ 1, %bb.bp ]
  call void @ASN1_INTEGER_free(ptr noundef %i.gb) #5
  br label %bb.ce

bb.br:                                            ; preds = %bb.al
  store ptr %i.u, ptr %i.c, align 8, !tbaa !9
  %i.ha = load i64, ptr %i.d, align 8, !tbaa !14
  %i.hb = add nsw i64 %i.ha, %i.ac
  %i.hc = call ptr @d2i_ASN1_ENUMERATED(ptr noundef null, ptr noundef nonnull %i.c, i64 noundef %i.hb) #5 ; 10 uses
  %.not232 = icmp eq ptr %i.hc, null
  br i1 %.not232, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hd = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef 1) #5
  %i.he = icmp slt i32 %i.hd, 1
  br i1 %i.he, label %.thread264, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !24
  %i.hh = icmp eq i32 %i.hg, 266
  br i1 %i.hh, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.hi = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef 1) #5
  %i.hj = icmp slt i32 %i.hi, 1
  br i1 %i.hj, label %.thread264, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.hk = load i32, ptr %i.hc, align 8, !tbaa !19 ; 2 uses
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %.lr.ph336, label %._crit_edge

.lr.ph336:                                        ; preds = %bb.bv
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bx
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hn = load i32, ptr %i.hc, align 8, !tbaa !19 ; 2 uses
  %i.ho = sext i32 %i.hn to i64
  %i.hp = icmp slt i64 %indvars.iv.next, %i.ho
  br i1 %i.hp, label %bb.bx, label %._crit_edge, !llvm.loop !26

bb.bx:                                            ; preds = %.lr.ph336, %bb.bw
  %indvars.iv = phi i64 [ 0, %.lr.ph336 ], [ %indvars.iv.next, %bb.bw ] ; 2 uses
  %i.hq = load ptr, ptr %i.hm, align 8, !tbaa !21
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %indvars.iv
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !18
  %i.ht = zext i8 %i.hs to i32
  %i.hu = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %i.ht) #5
  %i.hv = icmp slt i32 %i.hu, 1
  br i1 %i.hv, label %.thread264, label %bb.bw

._crit_edge:                                      ; preds = %bb.bw, %bb.bv
  %.lcssa = phi i32 [ %i.hk, %bb.bv ], [ %i.hn, %bb.bw ]
  %i.hw = icmp eq i32 %.lcssa, 0
  br i1 %i.hw, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %._crit_edge
  %i.hx = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 2) #5
  %i.hy = icmp slt i32 %i.hx, 1
  br i1 %i.hy, label %.thread264, label %bb.ca

bb.bz:                                            ; preds = %bb.br
  %i.hz = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.45) #5
  %i.ia = icmp slt i32 %i.hz, 1
  br i1 %i.ia, label %.thread264, label %bb.ca

bb.ca:                                            ; preds = %bb.by, %._crit_edge, %bb.bz
  %.4187 = phi i32 [ 0, %bb.by ], [ 0, %._crit_edge ], [ 1, %bb.bz ]
  call void @ASN1_ENUMERATED_free(ptr noundef %i.hc) #5
  br label %bb.ce

bb.cb:                                            ; preds = %bb.al
  %i.ib = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ic = icmp sgt i64 %i.ib, 0
  %or.cond17 = and i1 %i.s, %i.ic
  br i1 %or.cond17, label %bb.cc, label %.thread556

bb.cc:                                            ; preds = %bb.cb
  %i.id = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1) #5
  %i.ie = icmp slt i32 %i.id, 1
  br i1 %i.ie, label %.thread264, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.if = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.ig = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ih = icmp slt i64 %i.ig, %i.t
  %or.cond488 = select i1 %i.r, i1 true, i1 %i.ih
  %i.ii = trunc i64 %i.ig to i32
  %i.ij = select i1 %or.cond488, i32 %i.ii, i32 %6
  %i.ik = call i32 @BIO_dump_indent(ptr noundef %0, ptr noundef %i.if, i32 noundef %i.ij, i32 noundef 6) #5
  %i.il = icmp slt i32 %i.ik, 1
  br i1 %i.il, label %.thread264, label %.thread563

bb.ce:                                            ; preds = %bb.ca, %bb.bq, %.thread266
  %.6 = phi i32 [ %.2185, %bb.bq ], [ %.1184268, %.thread266 ], [ %.4187, %bb.ca ]
  %.not243 = icmp eq i32 %.6, 0
  br i1 %.not243, label %.thread556, label %.thread287

.thread287:                                       ; preds = %bb.as, %bb.av, %bb.ce
  %i.im = getelementptr inbounds i8, ptr %i.u, i64 %i.ac
  %i.in = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.46) #5
  %i.io = icmp slt i32 %i.in, 1
  br i1 %i.io, label %.thread264, label %.preheader

.preheader:                                       ; preds = %.thread287
  %i.ip = load i64, ptr %i.d, align 8, !tbaa !14
  %i.iq = icmp sgt i64 %i.ip, 0
  br i1 %i.iq, label %.lr.ph346, label %._crit_edge347

bb.cf:                                            ; preds = %.lr.ph346
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %i.ir = load i64, ptr %i.d, align 8, !tbaa !14
  %i.is = icmp sgt i64 %i.ir, %indvars.iv.next520
  br i1 %i.is, label %.lr.ph346, label %._crit_edge347, !llvm.loop !27

.lr.ph346:                                        ; preds = %.preheader, %bb.cf
  %indvars.iv519 = phi i64 [ %indvars.iv.next520, %bb.cf ], [ 0, %.preheader ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 %indvars.iv519
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !18
  %i.iv = zext i8 %i.iu to i32
  %i.iw = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %i.iv) #5
  %i.ix = icmp slt i32 %i.iw, 1
  br i1 %i.ix, label %.thread264, label %bb.cf

._crit_edge347:                                   ; preds = %bb.cf, %.preheader
  %i.iy = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.47) #5
  %i.iz = icmp slt i32 %i.iy, 1
  br i1 %i.iz, label %.thread264, label %.thread556

.thread567:                                       ; preds = %bb.be, %bb.bb, %bb.aw, %bb.ax, %.preheader309
  call void @ASN1_OCTET_STRING_free(ptr noundef %i.eq) #5
  br label %.thread556

bb.cg:                                            ; preds = %bb.bg
  call void @ASN1_OCTET_STRING_free(ptr noundef nonnull %i.eq) #5
  br label %.thread563

.thread556:                                       ; preds = %bb.ao, %bb.an, %bb.ar, %bb.cb, %bb.al, %._crit_edge347, %bb.ce, %.thread567
  %i.ja = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 1) #5
  %i.jb = icmp slt i32 %i.ja, 1
  br i1 %i.jb, label %.thread264, label %.thread563

.thread563:                                       ; preds = %bb.cd, %bb.cg, %.thread556
  %i.jc = load i64, ptr %i.d, align 8, !tbaa !14
  %i.jd = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 %i.jc ; 2 uses
  store ptr %i.je, ptr %i.b, align 8, !tbaa !9
  %i.jf = load i32, ptr %i.e, align 4, !tbaa !5
  %i.jg = icmp eq i32 %i.jf, 0
  %i.jh = load i32, ptr %i.f, align 4
  %i.ji = icmp eq i32 %i.jh, 0
  %or.cond19 = select i1 %i.jg, i1 %i.ji, i1 false
  br i1 %or.cond19, label %.thread264, label %.loopexit316

.loopexit316:                                     ; preds = %bb.ai, %.preheader315, %split, %bb.ak, %.thread563
  %i.jj = phi ptr [ %i.je, %.thread563 ], [ %.pre523, %.preheader315 ], [ %i.cr, %split ], [ %.pre, %bb.ak ], [ %i.de, %bb.ai ]
  %i.jk = load i64, ptr %i.d, align 8, !tbaa !14
  %i.jl = sub nsw i64 %i.ad, %i.jk                ; 2 uses
  %i.jm = icmp sgt i64 %i.jl, 0
  br i1 %i.jm, label %bb.d, label %.thread264, !llvm.loop !28

.thread264:                                       ; preds = %asn1_print_info.exit, %bb.ak, %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.cc, %bb.cd, %.thread556, %.thread563, %.loopexit316, %bb.ad, %bb.bd, %.critedge, %bb.bf, %bb.bb, %bb.bg, %bb.bo, %bb.bi, %bb.bk, %bb.bp, %bb.by, %bb.bs, %bb.bu, %bb.bz, %.thread287, %._crit_edge347, %.lr.ph, %.preheader313, %bb.bx, %bb.bn, %.lr.ph344, %.lr.ph346, %bb.c, %bb.af, %asn1_print_info.exit.thread, %bb.e
  %.0205 = phi i32 [ 0, %bb.e ], [ 0, %asn1_print_info.exit.thread ], [ %i.cp, %.preheader313 ], [ 0, %bb.bn ], [ 0, %.lr.ph344 ], [ 0, %bb.af ], [ 0, %bb.bx ], [ 0, %.lr.ph346 ], [ 0, %.lr.ph ], [ 1, %bb.c ], [ 0, %bb.bz ], [ 0, %.thread287 ], [ 0, %bb.bs ], [ 0, %bb.by ], [ 0, %bb.bp ], [ 0, %bb.bi ], [ 0, %bb.bo ], [ 0, %bb.bg ], [ 0, %bb.bf ], [ 0, %.critedge ], [ 0, %bb.bd ], [ 0, %bb.ad ], [ 1, %.loopexit316 ], [ 2, %.thread563 ], [ 0, %bb.au ], [ 0, %bb.cc ], [ 0, %bb.bk ], [ 0, %bb.bb ], [ 0, %bb.as ], [ 0, %bb.aq ], [ 0, %bb.ao ], [ 0, %bb.bu ], [ 0, %bb.cd ], [ 0, %.thread556 ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %asn1_print_info.exit ], [ 0, %._crit_edge347 ]
  %.4204 = phi ptr [ null, %bb.e ], [ null, %asn1_print_info.exit.thread ], [ null, %.preheader313 ], [ null, %bb.bn ], [ %i.eq, %.lr.ph344 ], [ null, %bb.af ], [ null, %bb.bx ], [ null, %.lr.ph346 ], [ null, %.lr.ph ], [ null, %bb.c ], [ null, %bb.bz ], [ null, %.thread287 ], [ null, %bb.bs ], [ null, %bb.by ], [ null, %bb.bp ], [ null, %bb.bi ], [ null, %bb.bo ], [ %i.eq, %bb.bg ], [ %i.eq, %bb.bf ], [ %i.eq, %.critedge ], [ %i.eq, %bb.bd ], [ null, %bb.ad ], [ null, %.loopexit316 ], [ null, %.thread563 ], [ null, %bb.au ], [ null, %bb.cc ], [ null, %bb.bk ], [ %i.eq, %bb.bb ], [ null, %bb.as ], [ null, %bb.aq ], [ null, %bb.ao ], [ null, %bb.bu ], [ null, %bb.cd ], [ null, %.thread556 ], [ null, %bb.am ], [ null, %bb.ak ], [ null, %asn1_print_info.exit ], [ null, %._crit_edge347 ]
  %.4199 = phi ptr [ null, %bb.e ], [ null, %asn1_print_info.exit.thread ], [ null, %.preheader313 ], [ %i.gb, %bb.bn ], [ null, %.lr.ph344 ], [ null, %bb.af ], [ null, %bb.bx ], [ null, %.lr.ph346 ], [ null, %.lr.ph ], [ null, %bb.c ], [ null, %bb.bz ], [ null, %.thread287 ], [ null, %bb.bs ], [ null, %bb.by ], [ null, %bb.bp ], [ %i.gb, %bb.bi ], [ %i.gb, %bb.bo ], [ null, %bb.bg ], [ null, %bb.bf ], [ null, %.critedge ], [ null, %bb.bd ], [ null, %bb.ad ], [ null, %.loopexit316 ], [ null, %.thread563 ], [ null, %bb.au ], [ null, %bb.cc ], [ %i.gb, %bb.bk ], [ null, %bb.bb ], [ null, %bb.as ], [ null, %bb.aq ], [ null, %bb.ao ], [ null, %bb.bu ], [ null, %bb.cd ], [ null, %.thread556 ], [ null, %bb.am ], [ null, %bb.ak ], [ null, %asn1_print_info.exit ], [ null, %._crit_edge347 ]
  %.4194 = phi ptr [ null, %bb.e ], [ null, %asn1_print_info.exit.thread ], [ null, %.preheader313 ], [ null, %bb.bn ], [ null, %.lr.ph344 ], [ null, %bb.af ], [ %i.hc, %bb.bx ], [ null, %.lr.ph346 ], [ null, %.lr.ph ], [ null, %bb.c ], [ null, %bb.bz ], [ null, %.thread287 ], [ %i.hc, %bb.bs ], [ %i.hc, %bb.by ], [ null, %bb.bp ], [ null, %bb.bi ], [ null, %bb.bo ], [ null, %bb.bg ], [ null, %bb.bf ], [ null, %.critedge ], [ null, %bb.bd ], [ null, %bb.ad ], [ null, %.loopexit316 ], [ null, %.thread563 ], [ null, %bb.au ], [ null, %bb.cc ], [ null, %bb.bk ], [ null, %bb.bb ], [ null, %bb.as ], [ null, %bb.aq ], [ null, %bb.ao ], [ %i.hc, %bb.bu ], [ null, %bb.cd ], [ null, %.thread556 ], [ null, %bb.am ], [ null, %bb.ak ], [ null, %asn1_print_info.exit ], [ null, %._crit_edge347 ]
  %i.jn = load ptr, ptr %i.g, align 8, !tbaa !12
  call void @ASN1_OBJECT_free(ptr noundef %i.jn) #5
  call void @ASN1_OCTET_STRING_free(ptr noundef %.4204) #5
  call void @ASN1_INTEGER_free(ptr noundef %.4199) #5
  call void @ASN1_ENUMERATED_free(ptr noundef %.4194) #5
  %i.jo = load ptr, ptr %i.b, align 8, !tbaa !9
  store ptr %i.jo, ptr %1, align 8, !tbaa !9
  br label %bb.ch

bb.ch:                                            ; preds = %.thread264, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.0205, %.thread264 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @ASN1_parse_dump(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !9
  %i.b = call fastcc i32 @asn1_parse2(ptr noundef %0, ptr noundef %i.a, i64 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @ASN1_tag2str(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %0, -9
  %or.cond = icmp eq i32 %i.a, 258
  %i.b = and i32 %0, 10
  %spec.select = select i1 %or.cond, i32 %i.b, i32 %0 ; 2 uses
  %or.cond3 = icmp ugt i32 %spec.select, 30
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %spec.select to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @ASN1_tag2str.tag2str, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.09 = phi ptr [ %i.e, %bb.b ], [ @.str.31, %bb.a ]
  ret ptr %.09
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ASN1_get_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @d2i_ASN1_OBJECT(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @i2a_ASN1_OBJECT(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @d2i_ASN1_OCTET_STRING(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BIO_dump_indent(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ASN1_OCTET_STRING_free(ptr noundef) local_unnamed_addr #3

declare ptr @d2i_ASN1_INTEGER(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ASN1_INTEGER_free(ptr noundef) local_unnamed_addr #3

declare ptr @d2i_ASN1_ENUMERATED(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ASN1_ENUMERATED_free(ptr noundef) local_unnamed_addr #3

declare void @ASN1_OBJECT_free(ptr noundef) local_unnamed_addr #3

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #3

declare ptr @BIO_f_prefix() local_unnamed_addr #3

declare ptr @BIO_push(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BIO_pop(ptr noundef) local_unnamed_addr #3

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS14asn1_object_st", !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !6, i64 0}
!20 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !10, i64 8, !15, i64 16}
!21 = !{!20, !10, i64 8}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = !{!20, !6, i64 4}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
end_hunk_1
