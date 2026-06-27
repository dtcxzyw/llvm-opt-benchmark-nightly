inline.NumInlined: 21
inline.NumDeleted: 2
begin_hunk_0_@georadiusGeneric:bb.a
bb.t:                                             ; preds = %bb.s
  %i.cc = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.32) #14
  %.not374 = icmp eq i32 %i.cc, 0
  br i1 %.not374, label %bb.ay, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.33) #14
  %.not375 = icmp eq i32 %i.cd, 0
  br i1 %.not375, label %bb.ay, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.34) #14
  %.not376 = icmp eq i32 %i.ce, 0
  br i1 %.not376, label %bb.ay, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.35) #14
  %.not377 = icmp eq i32 %i.cf, 0
  br i1 %.not377, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cg = add nsw i32 %.0323513, 1                ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %i.bg
  br i1 %i.ch, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr i8, ptr %i.bv, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.ck = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.cj, ptr noundef nonnull %i.c, ptr noundef null) #13
  %.not378 = icmp eq i32 %i.ck, 0
  br i1 %.not378, label %bb.z, label %.thread445

bb.z:                                             ; preds = %bb.y
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !44
  %i.cm = icmp slt i64 %i.cl, 1
  br i1 %i.cm, label %bb.aa, label %bb.ay

bb.aa:                                            ; preds = %bb.z
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.36) #13
  br label %.thread445

bb.ab:                                            ; preds = %bb.x, %bb.w
  %i.cn = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.37) #14
  %.not379 = icmp eq i32 %i.cn, 0
  br i1 %.not379, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.co = add nsw i32 %.0323513, 1                ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.bg
  %or.cond408 = and i1 %i.bj, %i.cp
  br i1 %or.cond408, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cq = getelementptr i8, ptr %i.bv, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !31
  br label %bb.ay

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.cs = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.38) #14
  %.not382 = icmp eq i32 %i.cs, 0
  br i1 %.not382, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.ct = add nsw i32 %.0323513, 1                ; 2 uses
  %i.cu = icmp slt i32 %i.ct, %i.bg
  %or.cond410 = and i1 %i.bj, %i.cu
  br i1 %or.cond410, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cv = getelementptr i8, ptr %i.bv, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !31
  br label %bb.ay

bb.ah:                                            ; preds = %bb.af
  br i1 %.not584, label %bb.ay, label %.thread

.thread:                                          ; preds = %bb.ae, %bb.ah
  %i.cx = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.39) #14
  %.not388 = icmp eq i32 %i.cx, 0
  br i1 %.not388, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %.thread
  %i.cy = add nsw i32 %.0323513, 1                ; 3 uses
  %i.cz = icmp sge i32 %i.cy, %i.bg
  %i.da = icmp ne i32 %.0318514, 0
  %i.db = or i1 %.not386, %i.cz
  %or.cond459 = select i1 %i.db, i1 true, i1 %i.da
  br i1 %or.cond459, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.bm, label %bb.ay, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dc = getelementptr i8, ptr %i.bv, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !31
  %i.de = call i32 @longLatFromMember(ptr noundef nonnull %i.l, ptr noundef %i.dd, ptr noundef nonnull %i.bn)
  %i.df = icmp eq i32 %i.de, -1
  br i1 %i.df, label %bb.al, label %bb.ay

bb.al:                                            ; preds = %bb.ak
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #13
  br label %.thread445

bb.am:                                            ; preds = %bb.ai, %.thread
  %i.dg = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.40) #14
  %.not389 = icmp eq i32 %i.dg, 0
  br i1 %.not389, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dh = add nsw i32 %.0323513, 2                ; 2 uses
  %i.di = icmp sge i32 %i.dh, %i.bg
  %i.dj = icmp ne i32 %.0313515, 0
  %i.dk = or i1 %.not386, %i.di
  %or.cond460 = select i1 %i.dk, i1 true, i1 %i.dj
  br i1 %or.cond460, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo
  %i.dm = sext i32 %.0323513 to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = call i32 @extractLongLatOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.do, ptr noundef nonnull %i.bn)
  %i.dq = icmp eq i32 %i.dp, -1
  br i1 %i.dq, label %.thread445, label %bb.ay

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.dr = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.41) #14
  %.not390 = icmp eq i32 %i.dr, 0
  br i1 %.not390, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ds = add nsw i32 %.0323513, 2                ; 2 uses
  %i.dt = icmp sge i32 %i.ds, %i.bg
  %i.du = icmp ne i32 %.0341509, 0
  %i.dv = or i1 %.not386, %i.dt
  %or.cond461 = select i1 %i.dv, i1 true, i1 %i.du
  br i1 %or.cond461, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo
  %i.dx = sext i32 %.0323513 to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = call i32 @extractDistanceOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bq)
  %.not391 = icmp eq i32 %i.ea, 0
  br i1 %.not391, label %bb.as, label %.thread445

bb.as:                                            ; preds = %bb.ar
  store i32 1, ptr %3, align 8, !tbaa !35
  br label %bb.ay

bb.at:                                            ; preds = %bb.aq, %bb.ap
  %i.eb = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.42) #14
  %.not392 = icmp eq i32 %i.eb, 0
  br i1 %.not392, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.ec = add nsw i32 %.0323513, 3                ; 2 uses
  %i.ed = icmp sge i32 %i.ec, %i.bg
  %i.ee = icmp ne i32 %.0326512, 0
  %i.ef = or i1 %.not386, %i.ed
  %or.cond462 = select i1 %i.ef, i1 true, i1 %i.ee
  br i1 %or.cond462, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo
  %i.eh = sext i32 %.0323513 to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = call i32 @extractBoxOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bq)
  %.not393 = icmp eq i32 %i.ek, 0
  br i1 %.not393, label %bb.aw, label %.thread445

bb.aw:                                            ; preds = %bb.av
  store i32 2, ptr %3, align 8, !tbaa !35
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au, %bb.at
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !81
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.el) #13
  br label %.thread445

bb.ay:                                            ; preds = %bb.ao, %bb.aj, %bb.ak, %bb.ah, %bb.z, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.ad, %bb.aw, %bb.as, %bb.ag
  %.2343.ph = phi i32 [ %.0341509, %bb.aj ], [ %.0341509, %bb.q ], [ %.0341509, %bb.r ], [ %.0341509, %bb.s ], [ %.0341509, %bb.t ], [ %.0341509, %bb.u ], [ %.0341509, %bb.v ], [ %.0341509, %bb.ad ], [ %.0341509, %bb.ag ], [ %.0341509, %bb.z ], [ %.0341509, %bb.ah ], [ %.0341509, %bb.ak ], [ 0, %bb.as ], [ 1, %bb.aw ], [ %.0341509, %bb.ao ] ; 2 uses
  %.2338.ph = phi i32 [ %.0336510, %bb.aj ], [ %.0336510, %bb.q ], [ %.0336510, %bb.r ], [ %.0336510, %bb.s ], [ %.0336510, %bb.t ], [ 1, %bb.u ], [ 2, %bb.v ], [ %.0336510, %bb.ad ], [ %.0336510, %bb.ag ], [ %.0336510, %bb.z ], [ %.0336510, %bb.ah ], [ %.0336510, %bb.ak ], [ %.0336510, %bb.as ], [ %.0336510, %bb.aw ], [ %.0336510, %bb.ao ] ; 2 uses
  %.2333.ph = phi i32 [ %.0331511, %bb.aj ], [ %.0331511, %bb.q ], [ %.0331511, %bb.r ], [ %.0331511, %bb.s ], [ 1, %bb.t ], [ %.0331511, %bb.u ], [ %.0331511, %bb.v ], [ %.0331511, %bb.ad ], [ %.0331511, %bb.ag ], [ %.0331511, %bb.z ], [ %.0331511, %bb.ah ], [ %.0331511, %bb.ak ], [ %.0331511, %bb.as ], [ %.0331511, %bb.aw ], [ %.0331511, %bb.ao ] ; 2 uses
  %.2328.ph = phi i32 [ %.0326512, %bb.aj ], [ %.0326512, %bb.q ], [ %.0326512, %bb.r ], [ %.0326512, %bb.s ], [ %.0326512, %bb.t ], [ %.0326512, %bb.u ], [ %.0326512, %bb.v ], [ %.0326512, %bb.ad ], [ %.0326512, %bb.ag ], [ %.0326512, %bb.z ], [ %.0326512, %bb.ah ], [ %.0326512, %bb.ak ], [ 1, %bb.as ], [ 0, %bb.aw ], [ %.0326512, %bb.ao ] ; 2 uses
  %.2325.ph = phi i32 [ %i.cy, %bb.aj ], [ %.0323513, %bb.q ], [ %.0323513, %bb.r ], [ %.0323513, %bb.s ], [ %.0323513, %bb.t ], [ %.0323513, %bb.u ], [ %.0323513, %bb.v ], [ %i.co, %bb.ad ], [ %i.ct, %bb.ag ], [ %i.cg, %bb.z ], [ %.0323513, %bb.ah ], [ %i.cy, %bb.ak ], [ %i.ds, %bb.as ], [ %i.ec, %bb.aw ], [ %i.dh, %bb.ao ]
  %.2320.ph = phi i32 [ 0, %bb.aj ], [ %.0318514, %bb.q ], [ %.0318514, %bb.r ], [ %.0318514, %bb.s ], [ %.0318514, %bb.t ], [ %.0318514, %bb.u ], [ %.0318514, %bb.v ], [ %.0318514, %bb.ad ], [ %.0318514, %bb.ag ], [ %.0318514, %bb.z ], [ %.0318514, %bb.ah ], [ 0, %bb.ak ], [ %.0318514, %bb.as ], [ %.0318514, %bb.aw ], [ 1, %bb.ao ] ; 2 uses
  %.2315.ph = phi i32 [ 1, %bb.aj ], [ %.0313515, %bb.q ], [ %.0313515, %bb.r ], [ %.0313515, %bb.s ], [ %.0313515, %bb.t ], [ %.0313515, %bb.u ], [ %.0313515, %bb.v ], [ %.0313515, %bb.ad ], [ %.0313515, %bb.ag ], [ %.0313515, %bb.z ], [ %.0313515, %bb.ah ], [ 1, %bb.ak ], [ %.0313515, %bb.as ], [ %.0313515, %bb.aw ], [ 0, %bb.ao ] ; 2 uses
  %.2310.ph = phi i32 [ %.0308516, %bb.aj ], [ %.0308516, %bb.q ], [ %.0308516, %bb.r ], [ 1, %bb.s ], [ %.0308516, %bb.t ], [ %.0308516, %bb.u ], [ %.0308516, %bb.v ], [ %.0308516, %bb.ad ], [ %.0308516, %bb.ag ], [ %.0308516, %bb.z ], [ %.0308516, %bb.ah ], [ %.0308516, %bb.ak ], [ %.0308516, %bb.as ], [ %.0308516, %bb.aw ], [ %.0308516, %bb.ao ] ; 2 uses
  %.2305.ph = phi i32 [ %.0303517, %bb.aj ], [ %.0303517, %bb.q ], [ 1, %bb.r ], [ %.0303517, %bb.s ], [ %.0303517, %bb.t ], [ %.0303517, %bb.u ], [ %.0303517, %bb.v ], [ %.0303517, %bb.ad ], [ %.0303517, %bb.ag ], [ %.0303517, %bb.z ], [ %.0303517, %bb.ah ], [ %.0303517, %bb.ak ], [ %.0303517, %bb.as ], [ %.0303517, %bb.aw ], [ %.0303517, %bb.ao ] ; 2 uses
  %.2295.ph = phi i32 [ %.0293518, %bb.aj ], [ 1, %bb.q ], [ %.0293518, %bb.r ], [ %.0293518, %bb.s ], [ %.0293518, %bb.t ], [ %.0293518, %bb.u ], [ %.0293518, %bb.v ], [ %.0293518, %bb.ad ], [ %.0293518, %bb.ag ], [ %.0293518, %bb.z ], [ %.0293518, %bb.ah ], [ %.0293518, %bb.ak ], [ %.0293518, %bb.as ], [ %.0293518, %bb.aw ], [ %.0293518, %bb.ao ] ; 2 uses
  %.2281.ph = phi i32 [ %.0279519, %bb.aj ], [ %.0279519, %bb.q ], [ %.0279519, %bb.r ], [ %.0279519, %bb.s ], [ %.0279519, %bb.t ], [ %.0279519, %bb.u ], [ %.0279519, %bb.v ], [ 0, %bb.ad ], [ 1, %bb.ag ], [ %.0279519, %bb.z ], [ 1, %bb.ah ], [ %.0279519, %bb.ak ], [ %.0279519, %bb.as ], [ %.0279519, %bb.aw ], [ %.0279519, %bb.ao ] ; 2 uses
  %.3.ph = phi ptr [ %.1520, %bb.aj ], [ %.1520, %bb.q ], [ %.1520, %bb.r ], [ %.1520, %bb.s ], [ %.1520, %bb.t ], [ %.1520, %bb.u ], [ %.1520, %bb.v ], [ %i.cr, %bb.ad ], [ %i.cw, %bb.ag ], [ %.1520, %bb.z ], [ %.1520, %bb.ah ], [ %.1520, %bb.ak ], [ %.1520, %bb.as ], [ %.1520, %bb.aw ], [ %.1520, %bb.ao ] ; 2 uses
  %i.em = add nsw i32 %.2325.ph, 1                ; 2 uses
  %i.en = icmp slt i32 %i.em, %i.bg
  br i1 %i.en, label %bb.q, label %._crit_edge.loopexit, !llvm.loop !87

._crit_edge.loopexit:                             ; preds = %bb.ay
  %5 = icmp ne i32 %.2315.ph, 0
  %6 = icmp ne i32 %.2320.ph, 0
  %7 = icmp ne i32 %.2328.ph, 0
  %8 = icmp ne i32 %.2343.ph, 0
  %i.eo = icmp eq i32 %.2281.ph, 0
  %9 = icmp ne i32 %.2295.ph, 0
  %10 = icmp ne i32 %.2305.ph, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %._crit_edge.loopexit, %bb.o
  %.4345 = phi i1 [ false, %bb.o ], [ false, %bb.p ], [ %8, %._crit_edge.loopexit ]
  %.4340 = phi i32 [ 0, %bb.o ], [ 0, %bb.p ], [ %.2338.ph, %._crit_edge.loopexit ] ; 2 uses
  %.4335 = phi i32 [ 0, %bb.o ], [ 0, %bb.p ], [ %.2333.ph, %._crit_edge.loopexit ] ; 2 uses
  %.4330 = phi i1 [ false, %bb.o ], [ false, %bb.p ], [ %7, %._crit_edge.loopexit ]
  %.4322 = phi i1 [ false, %bb.o ], [ false, %bb.p ], [ %6, %._crit_edge.loopexit ]
  %.4317 = phi i1 [ false, %bb.o ], [ false, %bb.p ], [ %5, %._crit_edge.loopexit ]
  %.4312 = phi i32 [ 0, %bb.o ], [ 0, %bb.p ], [ %.2310.ph, %._crit_edge.loopexit ] ; 2 uses
  %.4307 = phi i1 [ false, %bb.o ], [ false, %bb.p ], [ %10, %._crit_edge.loopexit ] ; 3 uses
  %.4297 = phi i1 [ false, %bb.o ], [ false, %bb.p ], [ %9, %._crit_edge.loopexit ] ; 4 uses
  %.4283 = phi i1 [ true, %bb.o ], [ true, %bb.p ], [ %i.eo, %._crit_edge.loopexit ]
  %.5 = phi ptr [ %.0, %bb.o ], [ %.0, %bb.p ], [ %.3.ph, %._crit_edge.loopexit ] ; 9 uses
  %.not395 = icmp eq ptr %.5, null                ; 4 uses
  br i1 %.not395, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %._crit_edge
  %or.cond13 = select i1 %.4297, i1 true, i1 %.4307
  %i.ep = icmp ne i32 %.4312, 0
  %or.cond15 = select i1 %or.cond13, i1 true, i1 %i.ep
  br i1 %or.cond15, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.eq = and i32 %2, 16
  %.not406 = icmp eq i32 %i.eq, 0
  %i.er = select i1 %.not406, ptr @.str.45, ptr @.str.44
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.er) #13
  br label %.thread445

bb.bb:                                            ; preds = %bb.az, %._crit_edge
  %i.es = and i32 %2, 8
  %i.et = icmp eq i32 %i.es, 0                    ; 3 uses
  %or.cond17 = select i1 %i.et, i1 true, i1 %.4317
  %or.cond19 = select i1 %or.cond17, i1 true, i1 %.4322
  br i1 %or.cond19, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eu = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !31
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !33
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.46, ptr noundef %i.ex) #13
  br label %.thread445

bb.bd:                                            ; preds = %bb.bb
  %or.cond21 = select i1 %i.et, i1 true, i1 %.4330
  %or.cond23 = select i1 %or.cond21, i1 true, i1 %.4345
  br i1 %or.cond23, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ey = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !33
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.47, ptr noundef %i.fb) #13
  br label %.thread445

bb.bf:                                            ; preds = %bb.bd
  %i.fc = icmp eq i32 %.4335, 0
  %i.fd = load i64, ptr %i.c, align 8
  %i.fe = icmp ne i64 %i.fd, 0                    ; 2 uses
  %or.cond25 = select i1 %i.fc, i1 true, i1 %i.fe
  br i1 %or.cond25, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #13
  br label %.thread445

bb.bh:                                            ; preds = %bb.bf
  %i.ff = icmp eq ptr %i.l, null
  br i1 %i.ff, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not395, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fg = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.fh = call i32 @dbDelete(ptr noundef %i.fg, ptr noundef nonnull %.5) #13
  %.not405 = icmp eq i32 %i.fh, 0
  br i1 %.not405, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fi = load ptr, ptr %i.e, align 8, !tbaa !86
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.fi, ptr noundef nonnull %.5, ptr noundef null, i32 noundef 1) #13
  %i.fj = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !88
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef nonnull %.5, i32 noundef %i.fl) #13
  %i.fm = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !92
  %i.fn = add nsw i64 %i.fm, 1
  store i64 %i.fn, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !92
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !113
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.fo) #13
  br label %.thread445

bb.bm:                                            ; preds = %bb.bi
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !114
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.fp) #13
  br label %.thread445

bb.bn:                                            ; preds = %bb.bh
  %i.fq = icmp ne i32 %.4335, 0                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @geohashCalculateAreasByShapeWGS84(ptr dead_on_unwind nonnull writable sret(%struct.GeoHashRadius) align 8 %4, ptr noundef nonnull %3) #13
  %i.fr = call noalias noundef dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #11 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i8 0, i64 24, i1 false)
  %i.fs = load i64, ptr %i.c, align 8
  %i.ft = select i1 %i.fq, i64 %i.fs, i64 0
  %i.fu = call i32 @membersOfAllNeighbors(ptr noundef nonnull %i.l, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %i.fr, i64 noundef %i.ft) ; 0 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !13 ; 6 uses
  %i.fx = icmp eq i64 %i.fw, 0
  %or.cond31 = and i1 %.not395, %i.fx
  br i1 %or.cond31, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !114
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.fy) #13
  br label %.loopexit

bb.bp:                                            ; preds = %bb.bn
  %not. = xor i1 %i.fe, true
  %i.fz = icmp ne i32 %.4340, 0
  %or.cond27 = select i1 %not., i1 true, i1 %i.fz
  %or.cond29 = select i1 %or.cond27, i1 true, i1 %i.fq
  %spec.store.select32 = select i1 %or.cond29, i32 %.4340, i32 1
  %i.ga = load i64, ptr %i.c, align 8, !tbaa !44  ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  %i.gc = call i64 @llvm.smin.i64(i64 %i.fw, i64 %i.ga)
  %i.gd = select i1 %i.gb, i64 %i.fw, i64 %i.gc   ; 11 uses
  switch i32 %spec.store.select32, label %bb.bq [
    i32 0, label %bb.bu
    i32 1, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %.0299 = phi ptr [ @sort_gp_desc, %bb.bq ], [ @sort_gp_asc, %bb.bp ] ; 2 uses
  %i.ge = icmp eq i64 %i.gd, %i.fw
  %i.gf = load ptr, ptr %i.fr, align 8, !tbaa !19 ; 2 uses
  br i1 %i.ge, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @qsort(ptr noundef %i.gf, i64 noundef %i.fw, i64 noundef 40, ptr noundef nonnull %.0299) #13
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.gg = add nsw i64 %i.gd, -1
  call void @pqsort(ptr noundef %i.gf, i64 noundef %i.fw, i64 noundef 40, ptr noundef nonnull %.0299, i64 noundef 0, i64 noundef %i.gg) #13
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.bp
  br i1 %.not395, label %bb.bv, label %bb.cf

bb.bv:                                            ; preds = %bb.bu
  %.not402 = icmp eq i32 %.4312, 0                ; 2 uses
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.gd) #13
  %i.gh = icmp sgt i64 %i.gd, 0
  br i1 %i.gh, label %.lr.ph542, label %.loopexit

.lr.ph542:                                        ; preds = %bb.bv
  %spec.select = zext i1 %.4297 to i64
  %i.gi = select i1 %.4297, i64 2, i64 1
  %.1301 = select i1 %.not402, i64 %spec.select, i64 %i.gi
  %i.gj = zext i1 %.4307 to i64
  %.2302 = add nuw nsw i64 %.1301, %i.gj          ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.not404 = icmp eq i64 %.2302, 0
  %i.gl = add nuw nsw i64 %.2302, 1
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph542, %bb.ce
  %indvars.iv551 = phi i64 [ 0, %.lr.ph542 ], [ %indvars.iv.next552, %bb.ce ] ; 2 uses
  %i.gm = load ptr, ptr %i.fr, align 8, !tbaa !19
  %i.gn = getelementptr inbounds nuw [40 x i8], ptr %i.gm, i64 %indvars.iv551 ; 5 uses
  %i.go = load double, ptr %i.gk, align 8, !tbaa !38
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 3 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !26
  %i.gr = fdiv double %i.gq, %i.go
  store double %i.gr, ptr %i.gp, align 8, !tbaa !26
  br i1 %.not404, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.gl) #13
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 32 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !27
  call void @addReplyBulkSds(ptr noundef %0, ptr noundef %i.gt) #13
  store ptr null, ptr %i.gs, align 8, !tbaa !27
  br i1 %.4297, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
end_hunk_0
