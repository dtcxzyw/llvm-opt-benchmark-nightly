inline.NumInlined: 20
inline.NumDeleted: 3
begin_hunk_0_@lcsCommand:bb.a

bb.g:                                             ; preds = %bb.e
  %i.s = tail call ptr @createStringObject(ptr noundef nonnull @.str.23, i64 noundef 0) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = phi ptr [ %i.r, %bb.f ], [ %i.s, %bb.g ] ; 3 uses
  br i1 %.not257, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @getDecodedObject(ptr noundef nonnull %i.m) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.v = tail call ptr @createStringObject(ptr noundef nonnull @.str.23, i64 noundef 0) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = phi ptr [ %i.u, %bb.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45   ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45  ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !80 ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 3
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.k, %bb.s
  %i.ae = phi i32 [ %i.az, %bb.s ], [ %i.ac, %bb.k ]
  %.0205355 = phi i32 [ %i.ay, %bb.s ], [ 3, %bb.k ] ; 5 uses
  %.0233354 = phi i32 [ %.2235.ph, %bb.s ], [ 0, %bb.k ] ; 4 uses
  %.0236353 = phi i32 [ %.2238.ph, %bb.s ], [ 0, %bb.k ] ; 4 uses
  %.0242352 = phi i32 [ %.2244.ph, %bb.s ], [ 0, %bb.k ] ; 4 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.ag = zext i32 %.0205355 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 4 uses
  %.neg = add nuw i32 %.0205355, 1                ; 4 uses
  %i.al = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.24) #11
  %.not266 = icmp eq i32 %i.al, 0
  br i1 %.not266, label %bb.s, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.am = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.25) #11
  %.not267 = icmp eq i32 %i.am, 0
  br i1 %.not267, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.26) #11
  %.not268 = icmp eq i32 %i.an, 0
  br i1 %.not268, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.27) #11
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = icmp ne i32 %i.ae, %.neg
  %or.cond = and i1 %i.aq, %i.ap
  br i1 %or.cond, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ar = zext i32 %.neg to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40
  %i.au = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.at, ptr noundef nonnull %i.a, ptr noundef null) #10
  %.not269 = icmp eq i32 %i.au, 0
  br i1 %.not269, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.av = load i64, ptr %i.a, align 8, !tbaa !13
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store i64 0, ptr %i.a, align 8, !tbaa !13
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !99
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ax) #10
  br label %.loopexit

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.m, %bb.l, %.lr.ph
  %.2244.ph = phi i32 [ %.0242352, %bb.p ], [ %.0242352, %bb.q ], [ %.0242352, %.lr.ph ], [ %.0242352, %bb.l ], [ 1, %bb.m ] ; 2 uses
  %.2238.ph = phi i32 [ %.0236353, %bb.p ], [ %.0236353, %bb.q ], [ 1, %.lr.ph ], [ %.0236353, %bb.l ], [ %.0236353, %bb.m ] ; 2 uses
  %.2235.ph = phi i32 [ %.0233354, %bb.p ], [ %.0233354, %bb.q ], [ %.0233354, %.lr.ph ], [ 1, %bb.l ], [ %.0233354, %bb.m ] ; 2 uses
  %.2207.ph = phi i32 [ %.neg, %bb.p ], [ %.neg, %bb.q ], [ %.0205355, %.lr.ph ], [ %.0205355, %bb.l ], [ %.0205355, %bb.m ]
  %i.ay = add i32 %.2207.ph, 1                    ; 2 uses
  %i.az = load i32, ptr %i.ab, align 8, !tbaa !80 ; 2 uses
  %i.ba = icmp ult i32 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %bb.s
  %i.bb = icmp ne i32 %.2235.ph, 0                ; 2 uses
  %i.bc = icmp ne i32 %.2238.ph, 0                ; 2 uses
  %or.cond3 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond3, label %bb.t, label %._crit_edge.thread

bb.t:                                             ; preds = %._crit_edge
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #10
  br label %.loopexit

._crit_edge.thread:                               ; preds = %bb.k, %._crit_edge
  %.0233.lcssa405 = phi i1 [ %i.bb, %._crit_edge ], [ false, %bb.k ] ; 2 uses
  %.0236.lcssa404 = phi i1 [ %i.bc, %._crit_edge ], [ false, %bb.k ] ; 2 uses
  %.0242.lcssa403 = phi i32 [ %.2244.ph, %._crit_edge ], [ 0, %bb.k ] ; 2 uses
  %i.bd = getelementptr i8, ptr %i.y, i64 -1
  %.val.i = load i8, ptr %i.bd, align 1, !tbaa !84 ; 2 uses
  %i.be = and i8 %.val.i, 7                       ; 2 uses
  switch i8 %i.be, label %sdslen.exit.thread [
    i8 4, label %bb.v
    i8 3, label %bb.u
  ]

bb.u:                                             ; preds = %._crit_edge.thread
  %i.bf = getelementptr inbounds i8, ptr %i.y, i64 -9
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !9
  %i.bh = zext i32 %i.bg to i64
  br label %sdslen.exit

bb.v:                                             ; preds = %._crit_edge.thread
  %i.bi = getelementptr inbounds i8, ptr %i.y, i64 -17
  %i.bj = load i64, ptr %i.bi, align 1, !tbaa !90
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.u, %bb.v
  %.0.i = phi i64 [ %i.bj, %bb.v ], [ %i.bh, %bb.u ]
  %i.bk = icmp ugt i64 %.0.i, 4294967293
  br i1 %i.bk, label %bb.y, label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %._crit_edge.thread, %sdslen.exit
  %i.bl = getelementptr i8, ptr %i.aa, i64 -1
  %.val.i275 = load i8, ptr %i.bl, align 1, !tbaa !84 ; 2 uses
  %i.bm = and i8 %.val.i275, 7                    ; 2 uses
  switch i8 %i.bm, label %sdslen.exit277.thread [
    i8 4, label %bb.x
    i8 3, label %bb.w
  ]

bb.w:                                             ; preds = %sdslen.exit.thread
  %i.bn = getelementptr inbounds i8, ptr %i.aa, i64 -9
  %i.bo = load i32, ptr %i.bn, align 1, !tbaa !9
  %i.bp = zext i32 %i.bo to i64
  br label %sdslen.exit277

bb.x:                                             ; preds = %sdslen.exit.thread
  %i.bq = getelementptr inbounds i8, ptr %i.aa, i64 -17
  %i.br = load i64, ptr %i.bq, align 1, !tbaa !90
  br label %sdslen.exit277

sdslen.exit277:                                   ; preds = %bb.w, %bb.x
  %.0.i276 = phi i64 [ %i.br, %bb.x ], [ %i.bp, %bb.w ]
  %i.bs = icmp ugt i64 %.0.i276, 4294967293
  br i1 %i.bs, label %bb.y, label %sdslen.exit277.thread

bb.y:                                             ; preds = %sdslen.exit277, %sdslen.exit
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #10
  br label %.loopexit

sdslen.exit277.thread:                            ; preds = %sdslen.exit.thread, %sdslen.exit277
  switch i8 %i.be, label %sdslen.exit280 [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ac
    i8 4, label %bb.ad
  ]

bb.z:                                             ; preds = %sdslen.exit277.thread
  %i.bt = lshr i8 %.val.i, 3
  %i.bu = zext nneg i8 %i.bt to i64
  br label %sdslen.exit280

bb.aa:                                            ; preds = %sdslen.exit277.thread
  %i.bv = getelementptr inbounds i8, ptr %i.y, i64 -3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !84
  %i.bx = zext i8 %i.bw to i64
  br label %sdslen.exit280

bb.ab:                                            ; preds = %sdslen.exit277.thread
  %i.by = getelementptr inbounds i8, ptr %i.y, i64 -5
  %i.bz = load i16, ptr %i.by, align 1, !tbaa !88
  %i.ca = zext i16 %i.bz to i64
  br label %sdslen.exit280

bb.ac:                                            ; preds = %sdslen.exit277.thread
  %i.cb = getelementptr inbounds i8, ptr %i.y, i64 -9
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !9
  %i.cd = zext i32 %i.cc to i64
  br label %sdslen.exit280

bb.ad:                                            ; preds = %sdslen.exit277.thread
  %i.ce = getelementptr inbounds i8, ptr %i.y, i64 -17
  %i.cf = load i64, ptr %i.ce, align 1, !tbaa !90
  br label %sdslen.exit280

sdslen.exit280:                                   ; preds = %sdslen.exit277.thread, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.0.i279 = phi i64 [ %i.cf, %bb.ad ], [ %i.bu, %bb.z ], [ %i.bx, %bb.aa ], [ %i.ca, %bb.ab ], [ %i.cd, %bb.ac ], [ 0, %sdslen.exit277.thread ] ; 2 uses
  %i.cg = trunc i64 %.0.i279 to i32               ; 11 uses
  switch i8 %i.bm, label %sdslen.exit283 [
    i8 0, label %bb.ae
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
    i8 4, label %bb.ai
  ]

bb.ae:                                            ; preds = %sdslen.exit280
  %i.ch = lshr i8 %.val.i275, 3
  %i.ci = zext nneg i8 %i.ch to i64
  br label %sdslen.exit283

bb.af:                                            ; preds = %sdslen.exit280
  %i.cj = getelementptr inbounds i8, ptr %i.aa, i64 -3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !84
  %i.cl = zext i8 %i.ck to i64
  br label %sdslen.exit283

bb.ag:                                            ; preds = %sdslen.exit280
  %i.cm = getelementptr inbounds i8, ptr %i.aa, i64 -5
  %i.cn = load i16, ptr %i.cm, align 1, !tbaa !88
  %i.co = zext i16 %i.cn to i64
  br label %sdslen.exit283

bb.ah:                                            ; preds = %sdslen.exit280
  %i.cp = getelementptr inbounds i8, ptr %i.aa, i64 -9
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !9
  %i.cr = zext i32 %i.cq to i64
  br label %sdslen.exit283

bb.ai:                                            ; preds = %sdslen.exit280
  %i.cs = getelementptr inbounds i8, ptr %i.aa, i64 -17
  %i.ct = load i64, ptr %i.cs, align 1, !tbaa !90
  br label %sdslen.exit283

sdslen.exit283:                                   ; preds = %sdslen.exit280, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i282 = phi i64 [ %i.ct, %bb.ai ], [ %i.ci, %bb.ae ], [ %i.cl, %bb.af ], [ %i.co, %bb.ag ], [ %i.cr, %bb.ah ], [ 0, %sdslen.exit280 ]
  %i.cu = trunc i64 %.0.i282 to i32               ; 4 uses
  %i.cv = add i64 %.0.i279, 1
  %i.cw = and i64 %i.cv, 4294967295
  %i.cx = add i32 %i.cu, 1                        ; 8 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = mul nuw i64 %i.cw, %i.cy                ; 2 uses
  %i.da = shl i64 %i.cz, 2                        ; 3 uses
  %i.db = udiv i64 %i.da, %i.cz
  %i.dc = icmp eq i64 %i.db, 4
  br i1 %i.dc, label %bb.aj, label %.thread295

bb.aj:                                            ; preds = %sdslen.exit283
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7792), align 8, !tbaa !107
  %i.de = icmp ugt i64 %i.da, %i.dd
  br i1 %i.de, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #10
  br label %.loopexit

bb.al:                                            ; preds = %bb.aj
  %i.df = call noalias ptr @ztrymalloc(i64 noundef %i.da) #12 ; 11 uses
  %.not259 = icmp eq ptr %i.df, null
  br i1 %.not259, label %.thread295, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.al
  %umax = call i32 @llvm.umax.i32(i32 %i.cx, i32 1)
  %umax375 = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.dg = shl nuw nsw i64 %umax375, 2
  %i.dh = add i32 %i.cg, 1
  %umax382 = call i32 @llvm.umax.i32(i32 %i.dh, i32 1)
  %wide.trip.count383 = zext i32 %umax382 to i64
  %wide.trip.count = zext i32 %umax to i64
  %exitcond.peel = icmp ult i32 %i.cx, 2
  br label %.preheader

.thread295:                                       ; preds = %sdslen.exit283, %bb.al
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #10
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %.split.us
  %indvars.iv379 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next380, %.split.us ] ; 3 uses
  %i.di = icmp eq i64 %indvars.iv379, 0
  %i.dj = trunc nuw i64 %indvars.iv379 to i32     ; 2 uses
  %i.dk = add i32 %i.dj, -1                       ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.dl
  %i.dn = mul i32 %i.dk, %i.cx                    ; 2 uses
  %i.do = mul i32 %i.cx, %i.dj                    ; 3 uses
  br i1 %i.di, label %.preheader.split.us.preheader, label %bb.am

bb.am:                                            ; preds = %.preheader
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dp
  store i32 0, ptr %i.dq, align 4, !tbaa !9
  br i1 %exitcond.peel, label %.split.us, label %.preheader.split.peel.next

.preheader.split.us.preheader:                    ; preds = %.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.df, i8 0, i64 %i.dg, i1 false), !tbaa !9
  br label %.split.us

bb.an:                                            ; preds = %.split.us
  %i.dr = mul i32 %i.cx, %i.cg
  %i.ds = add i32 %i.dr, %i.cu
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !9  ; 4 uses
  %i.dw = xor i1 %.0233.lcssa405, true
  %spec.select = or i1 %.0236.lcssa404, %i.dw
  br i1 %spec.select, label %bb.ar, label %._crit_edge370.thread

.split.us:                                        ; preds = %bb.aq, %bb.am, %.preheader.split.us.preheader
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond384 = icmp eq i64 %indvars.iv.next380, %wide.trip.count383
  br i1 %exitcond384, label %bb.an, label %.preheader, !llvm.loop !119

.preheader.split.peel.next:                       ; preds = %bb.am, %bb.aq
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aq ], [ 1, %bb.am ] ; 2 uses
  %i.dx = load i8, ptr %i.dm, align 1, !tbaa !84
  %i.dy = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.dz = add i32 %i.dy, -1                       ; 3 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !84
  %i.ed = icmp eq i8 %i.dx, %i.ec
  br i1 %i.ed, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.preheader.split.peel.next
  %i.ee = add i32 %i.dz, %i.dn
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !9
  %i.ei = add i32 %i.eh, 1
  br label %bb.aq

bb.ap:                                            ; preds = %.preheader.split.peel.next
  %i.ej = add i32 %i.dn, %i.dy
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9
  %i.en = add i32 %i.dz, %i.do
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !9
  %i.er = call i32 @llvm.umax.i32(i32 %i.em, i32 %i.eq)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sink = phi i32 [ %i.er, %bb.ap ], [ %i.ei, %bb.ao ]
  %i.es = add i32 %i.do, %i.dy
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.et
  store i32 %.sink, ptr %i.eu, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.split.us, label %.preheader.split.peel.next, !llvm.loop !120

bb.ar:                                            ; preds = %bb.an
  %i.ev = load ptr, ptr @SDS_NOINIT, align 8, !tbaa !122
  %i.ew = zext i32 %i.dv to i64
  %i.ex = call ptr @sdsnewlen(ptr noundef %i.ev, i64 noundef %i.ew) #10 ; 3 uses
  br i1 %.0236.lcssa404, label %bb.as, label %.thread298

bb.as:                                            ; preds = %bb.ar
  call void @addReplyMapLen(ptr noundef %0, i64 noundef 2) #10
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.32) #10
  %i.ey = call ptr @addReplyDeferredLen(ptr noundef %0) #10
  br label %.thread298

.thread298:                                       ; preds = %bb.as, %bb.ar
  %.0228 = phi ptr [ %i.ey, %bb.as ], [ null, %bb.ar ] ; 4 uses
  %i.ez = icmp ne i32 %i.cg, 0
  %i.fa = icmp ne i32 %i.cu, 0
  %i.fb = and i1 %i.ez, %i.fa
  br i1 %i.fb, label %.lr.ph369, label %._crit_edge370

.lr.ph369:                                        ; preds = %.thread298
  %i.fc = icmp ne ptr %.0228, null
  %.old10.not = icmp eq ptr %.0228, null
  %i.fd = add nuw nsw i32 %.0242.lcssa403, 2
  %i.fe = zext nneg i32 %i.fd to i64
  %.not264 = icmp eq i32 %.0242.lcssa403, 0
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph369, %.thread327
  %.0368 = phi i32 [ %i.cg, %.lr.ph369 ], [ %.2326, %.thread327 ] ; 4 uses
  %.3367 = phi i32 [ %i.cu, %.lr.ph369 ], [ %.5324, %.thread327 ] ; 4 uses
  %.0212366 = phi i32 [ 0, %.lr.ph369 ], [ %.2214, %.thread327 ] ; 5 uses
  %.0215365 = phi i32 [ 0, %.lr.ph369 ], [ %.2217322, %.thread327 ] ; 5 uses
  %.0218364 = phi i32 [ 0, %.lr.ph369 ], [ %.2220320, %.thread327 ] ; 6 uses
  %.0221363 = phi i32 [ 0, %.lr.ph369 ], [ %.2223318, %.thread327 ] ; 6 uses
  %.0224362 = phi i32 [ %i.cg, %.lr.ph369 ], [ %.3227, %.thread327 ] ; 8 uses
  %.0231361 = phi i32 [ %i.dv, %.lr.ph369 ], [ %.1232315, %.thread327 ] ; 3 uses
  %i.ff = add i32 %.0368, -1                      ; 11 uses
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !84  ; 2 uses
  %i.fj = add i32 %.3367, -1                      ; 11 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !84
  %i.fn = icmp eq i8 %i.fi, %i.fm
  br i1 %i.fn, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.fo = add i32 %.0231361, -1                   ; 5 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fp
  store i8 %i.fi, ptr %i.fq, align 1, !tbaa !84
  %i.fr = icmp eq i32 %.0224362, %i.cg
  br i1 %i.fr, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fs = icmp eq i32 %.0224362, %.0368
  %i.ft = icmp eq i32 %.0218364, %.3367
  %or.cond273 = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %or.cond273, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1222 = phi i32 [ %i.ff, %bb.au ], [ %.0221363, %bb.av ] ; 2 uses
  %.1216 = phi i32 [ %i.fj, %bb.au ], [ %.0215365, %bb.av ] ; 2 uses
  %i.fu = icmp eq i32 %i.ff, 0
  %i.fv = icmp eq i32 %i.fj, 0
  %or.cond9 = or i1 %i.fu, %i.fv
  br i1 %or.cond9, label %.thread304, label %.thread327

.thread:                                          ; preds = %bb.av
  %i.fw = icmp eq i32 %.0224362, 0
  %i.fx = icmp eq i32 %.0218364, 0
  %or.cond9416 = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %or.cond9416, label %.thread304, label %.thread423

.thread423:                                       ; preds = %.thread
  %i.fy = sub i32 %.0221363, %.0224362
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %i.fz = mul i32 %i.ff, %i.cx
  %i.ga = add i32 %i.fz, %.3367
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !9
  %i.ge = mul i32 %.0368, %i.cx
  %i.gf = add i32 %i.ge, %i.fj
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !9
  %i.gj = icmp ugt i32 %i.gd, %i.gi               ; 2 uses
  %.4 = select i1 %i.gj, i32 %.3367, i32 %i.fj    ; 2 uses
  %.1 = select i1 %i.gj, i32 %i.ff, i32 %.0368    ; 2 uses
  %.not262 = icmp eq i32 %.0224362, %i.cg
  br i1 %.not262, label %.thread327, label %.thread304

.thread304:                                       ; preds = %.thread, %bb.ax, %bb.aw
  %.1232.ph = phi i32 [ %.0231361, %bb.ax ], [ %i.fo, %bb.aw ], [ %i.fo, %.thread ]
  %.2226.ph = phi i32 [ %.0224362, %bb.ax ], [ %i.ff, %bb.aw ], [ %.0224362, %.thread ] ; 2 uses
  %.2223.ph = phi i32 [ %.0221363, %bb.ax ], [ %.1222, %bb.aw ], [ %.0221363, %.thread ] ; 2 uses
  %.2220.ph = phi i32 [ %.0218364, %bb.ax ], [ %i.fj, %bb.aw ], [ %.0218364, %.thread ]
  %.2217.ph = phi i32 [ %.0215365, %bb.ax ], [ %.1216, %bb.aw ], [ %.0215365, %.thread ]
  %.5.ph = phi i32 [ %.4, %bb.ax ], [ %i.fj, %bb.aw ], [ %i.fj, %.thread ]
  %.2.ph = phi i32 [ %.1, %bb.ax ], [ %i.ff, %bb.aw ], [ %i.ff, %.thread ]
  %i.gk = sub i32 %.2223.ph, %.2226.ph
  br label %bb.ay

bb.ay:                                            ; preds = %.thread423, %.thread304
  %.in = phi i32 [ %i.gk, %.thread304 ], [ %i.fy, %.thread423 ]
  %.2325.a = phi i32 [ %.2.ph, %.thread304 ], [ %i.ff, %.thread423 ] ; 3 uses
  %.5323.a = phi i32 [ %.5.ph, %.thread304 ], [ %i.fj, %.thread423 ] ; 3 uses
  %.2217321.a = phi i32 [ %.2217.ph, %.thread304 ], [ %.0215365, %.thread423 ] ; 4 uses
  %.2220319.a = phi i32 [ %.2220.ph, %.thread304 ], [ %.0218364, %.thread423 ] ; 4 uses
  %.2223317.a = phi i32 [ %.2223.ph, %.thread304 ], [ %.0221363, %.thread423 ] ; 4 uses
  %.2226316 = phi i32 [ %.2226.ph, %.thread304 ], [ %.0224362, %.thread423 ]
  %.1232314.a = phi i32 [ %.1232.ph, %.thread304 ], [ %i.fo, %.thread423 ] ; 3 uses
  %i.gl = add i32 %.in, 1                         ; 2 uses
  %i.gm = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.go = zext i32 %i.gl to i64
  %i.gp = icmp sle i64 %i.gm, %i.go
  %or.cond11 = select i1 %i.gp, i1 %i.fc, i1 false
  br i1 %or.cond11, label %bb.bb, label %.thread327

bb.ba:                                            ; preds = %bb.ay
  br i1 %.old10.not, label %.thread327, label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.fe) #10
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #10
  %i.gq = zext i32 %.2226316 to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gq) #10
  %i.gr = zext i32 %.2223317.a to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gr) #10
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #10
  %i.gs = zext i32 %.2220319.a to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gs) #10
  %i.gt = zext i32 %.2217321.a to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gt) #10
  br i1 %.not264, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gu = zext i32 %i.gl to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.gu) #10
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.gv = add i32 %.0212366, 1
  br label %.thread327

.thread327:                                       ; preds = %bb.aw, %bb.ax, %bb.az, %bb.bd, %bb.ba
  %.2326 = phi i32 [ %.1, %bb.ax ], [ %.2325.a, %bb.ba ], [ %.2325.a, %bb.bd ], [ %.2325.a, %bb.az ], [ %i.ff, %bb.aw ] ; 2 uses
  %.5324 = phi i32 [ %.4, %bb.ax ], [ %.5323.a, %bb.ba ], [ %.5323.a, %bb.bd ], [ %.5323.a, %bb.az ], [ %i.fj, %bb.aw ] ; 2 uses
  %.2217322 = phi i32 [ %.0215365, %bb.ax ], [ %.2217321.a, %bb.ba ], [ %.2217321.a, %bb.bd ], [ %.2217321.a, %bb.az ], [ %.1216, %bb.aw ]
  %.2220320 = phi i32 [ %.0218364, %bb.ax ], [ %.2220319.a, %bb.ba ], [ %.2220319.a, %bb.bd ], [ %.2220319.a, %bb.az ], [ %i.fj, %bb.aw ]
  %.2223318 = phi i32 [ %.0221363, %bb.ax ], [ %.2223317.a, %bb.ba ], [ %.2223317.a, %bb.bd ], [ %.2223317.a, %bb.az ], [ %.1222, %bb.aw ]
  %.1232315 = phi i32 [ %.0231361, %bb.ax ], [ %.1232314.a, %bb.ba ], [ %.1232314.a, %bb.bd ], [ %.1232314.a, %bb.az ], [ %i.fo, %bb.aw ]
  %.3227 = phi i32 [ %i.cg, %bb.ax ], [ %i.cg, %bb.ba ], [ %i.cg, %bb.bd ], [ %i.cg, %bb.az ], [ %i.ff, %bb.aw ]
  %.2214 = phi i32 [ %.0212366, %bb.ax ], [ %.0212366, %bb.ba ], [ %i.gv, %bb.bd ], [ %.0212366, %bb.az ], [ %.0212366, %bb.aw ] ; 2 uses
  %i.gw = icmp ne i32 %.2326, 0
  %i.gx = icmp ne i32 %.5324, 0
  %i.gy = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %i.gy, label %bb.at, label %._crit_edge370.loopexit, !llvm.loop !123

._crit_edge370.loopexit:                          ; preds = %.thread327
  %i.gz = zext i32 %.2214 to i64
  br label %._crit_edge370

._crit_edge370:                                   ; preds = %._crit_edge370.loopexit, %.thread298
  %.0212.lcssa = phi i64 [ 0, %.thread298 ], [ %i.gz, %._crit_edge370.loopexit ]
  %.not261 = icmp eq ptr %.0228, null
  br i1 %.not261, label %._crit_edge370.thread, label %bb.be

bb.be:                                            ; preds = %._crit_edge370
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.33) #10
  %i.ha = zext i32 %i.dv to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ha) #10
  call void @setDeferredArrayLen(ptr noundef %0, ptr noundef nonnull %.0228, i64 noundef %.0212.lcssa) #10
  br label %bb.bh

._crit_edge370.thread:                            ; preds = %bb.an, %._crit_edge370
  %.0229300409433 = phi ptr [ %i.ex, %._crit_edge370 ], [ null, %bb.an ] ; 2 uses
  br i1 %.0233.lcssa405, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %._crit_edge370.thread
  %i.hb = zext i32 %i.dv to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.hb) #10
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge370.thread
  call void @addReplyBulkSds(ptr noundef %0, ptr noundef %.0229300409433) #10
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg, %bb.be
  %.1230 = phi ptr [ %i.ex, %bb.be ], [ %.0229300409433, %bb.bf ], [ null, %bb.bg ]
  call void @sdsfree(ptr noundef %.1230) #10
  call void @zfree(ptr noundef nonnull %i.df) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.r, %bb.bh, %.thread295, %bb.ak, %bb.y, %bb.t
  %.not270 = icmp eq ptr %i.t, null
  br i1 %.not270, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.loopexit
  call void @decrRefCount(ptr noundef nonnull %i.t) #10
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.loopexit
  %.not271 = icmp eq ptr %i.w, null
  br i1 %.not271, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @decrRefCount(ptr noundef nonnull %i.w) #10
  br label %bb.bl

bb.bl:                                            ; preds = %.thread342, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @ztrymalloc(i64 noundef) local_unnamed_addr #4

declare void @addReplyMapLen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @addReplyDeferredLen(ptr noundef) local_unnamed_addr #2

declare void @setDeferredArrayLen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyBulkSds(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zfree(ptr noundef) local_unnamed_addr #2

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @XXH3_64bits(ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @sdsempty() local_unnamed_addr #2

declare ptr @sdscatprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @digestCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = tail call ptr @lookupKeyReadOrReply(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.i) #10 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 0) #10
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @stringDigest(ptr noundef nonnull %i.j)
  tail call void @addReplyBulkSds(ptr noundef nonnull %0, ptr noundef %i.m) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare void @addReplyErrorExpireTime(ptr noundef) local_unnamed_addr #2

declare i64 @commandTimeSnapshot() local_unnamed_addr #2

declare i32 @mustObeyClient(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long long", !11, i64 0}
!15 = !{!16, !23, i64 96}
!16 = !{!"client", !17, i64 0, !17, i64 8, !18, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !20, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !22, i64 64, !17, i64 72, !17, i64 80, !10, i64 88, !23, i64 96, !10, i64 104, !10, i64 108, !23, i64 112, !17, i64 120, !25, i64 128, !26, i64 152, !27, i64 160, !10, i64 168, !23, i64 176, !10, i64 184, !10, i64 188, !28, i64 192, !28, i64 200, !28, i64 208, !28, i64 216, !19, i64 224, !10, i64 232, !10, i64 236, !17, i64 240, !29, i64 248, !14, i64 256, !29, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !10, i64 296, !10, i64 300, !30, i64 304, !17, i64 312, !17, i64 320, !17, i64 328, !14, i64 336, !14, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !17, i64 368, !17, i64 376, !22, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !11, i64 480, !10, i64 524, !22, i64 528, !10, i64 536, !10, i64 540, !17, i64 544, !31, i64 552, !33, i64 592, !14, i64 664, !29, i64 672, !34, i64 680, !34, i64 688, !34, i64 696, !22, i64 704, !22, i64 712, !35, i64 720, !35, i64 728, !35, i64 736, !19, i64 744, !19, i64 752, !19, i64 760, !19, i64 768, !19, i64 776, !17, i64 784, !36, i64 792, !17, i64 800, !10, i64 808, !35, i64 816, !19, i64 824, !35, i64 832, !17, i64 840, !35, i64 848, !17, i64 856, !35, i64 864, !17, i64 872, !37, i64 880, !37, i64 904, !17, i64 928, !17, i64 936, !17, i64 944, !14, i64 952, !17, i64 960, !17, i64 968, !22, i64 976, !11, i64 984, !38, i64 992, !14, i64 1000, !14, i64 1008, !14, i64 1016, !39, i64 1024, !22, i64 1032, !11, i64 1040}
!17 = !{!"long", !11, i64 0}
!18 = !{!"p1 _ZTS10connection", !19, i64 0}
!19 = !{!"any pointer", !11, i64 0}
!20 = !{!"p1 _ZTS7redisDb", !19, i64 0}
!21 = !{!"p1 _ZTS11redisObject", !19, i64 0}
!22 = !{!"p1 omnipotent char", !19, i64 0}
!23 = !{!"p2 _ZTS11redisObject", !24, i64 0}
!24 = !{!"any p2 pointer", !19, i64 0}
!25 = !{!"pendingCommandList", !26, i64 0, !26, i64 8, !10, i64 16, !10, i64 20}
!26 = !{!"p1 _ZTS14pendingCommand", !19, i64 0}
!27 = !{!"p1 _ZTS14deferredObject", !19, i64 0}
!28 = !{!"p1 _ZTS12redisCommand", !19, i64 0}
!29 = !{!"p1 _ZTS4list", !19, i64 0}
!30 = !{!"p1 _ZTS9dictEntry", !19, i64 0}
!31 = !{!"multiState", !32, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !17, i64 24, !10, i64 32}
!32 = !{!"p2 _ZTS14pendingCommand", !24, i64 0}
!33 = !{!"blockingState", !10, i64 0, !14, i64 8, !10, i64 16, !34, i64 24, !10, i64 32, !10, i64 36, !14, i64 40, !19, i64 48, !19, i64 56, !17, i64 64}
!34 = !{!"p1 _ZTS4dict", !19, i64 0}
!35 = !{!"p1 _ZTS8listNode", !19, i64 0}
!36 = !{!"p1 _ZTS3rax", !19, i64 0}
!37 = !{!"listNode", !35, i64 0, !35, i64 8, !19, i64 16}
!38 = !{!"p1 _ZTS13payloadHeader", !19, i64 0}
!39 = !{!"p1 _ZTS7asmTask", !19, i64 0}
!40 = !{!21, !21, i64 0}
!41 = !{!16, !10, i64 28}
!42 = !{!43, !43, i64 0}
!43 = !{!"p2 _ZTS9dictEntry", !24, i64 0}
!44 = !{!16, !20, i64 32}
!45 = !{!46, !19, i64 8}
end_hunk_0
