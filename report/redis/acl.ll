inline.NumInlined: 130
inline.NumDeleted: 5
begin_hunk_0_@ACLLoadFromFile:bb.a
bb.v:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 -3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !25
  %i.cg = zext i8 %i.cf to i64
  br label %sdslen.exit150

bb.w:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds i8, ptr %i.bz, i64 -5
  %i.ci = load i16, ptr %i.ch, align 1, !tbaa !35
  %i.cj = zext i16 %i.ci to i64
  br label %sdslen.exit150

bb.x:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds i8, ptr %i.bz, i64 -9
  %i.cl = load i32, ptr %i.ck, align 1, !tbaa !9
  %i.cm = zext i32 %i.cl to i64
  br label %sdslen.exit150

bb.y:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds i8, ptr %i.bz, i64 -17
  %i.co = load i64, ptr %i.cn, align 1, !tbaa !13
  br label %sdslen.exit150

sdslen.exit150:                                   ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.0.i149 = phi i64 [ %i.co, %bb.y ], [ %i.cd, %bb.u ], [ %i.cg, %bb.v ], [ %i.cj, %bb.w ], [ %i.cm, %bb.x ] ; 2 uses
  %.not14.i = icmp eq i64 %.0.i149, 0
  br i1 %.not14.i, label %sdslen.exit150.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sdslen.exit150
  %i.cp = tail call ptr @__ctype_b_loc() #28
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !32
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %i.cr = add nuw i64 %.0811.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cr, %.0.i149
  br i1 %exitcond.not.i, label %sdslen.exit150.thread, label %bb.aa, !llvm.loop !34

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i
  %.0811.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cr, %bb.z ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.0811.i
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !25  ; 2 uses
  %i.cu = sext i8 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !35
  %i.cx = and i16 %i.cw, 8192
  %.not.i = icmp ne i16 %i.cx, 0
  %i.cy = icmp eq i8 %i.ct, 0
  %or.cond.i = or i1 %i.cy, %.not.i
  br i1 %or.cond.i, label %ACLStringHasSpaces.exit, label %bb.z

ACLStringHasSpaces.exit:                          ; preds = %bb.aa
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8400), align 8, !tbaa !232
  %i.da = trunc nuw nsw i64 %indvars.iv.next215 to i32
  %i.db = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0112197, ptr noundef nonnull @.str.106, ptr noundef %i.cz, i32 noundef %i.da, ptr noundef nonnull %i.bz) #25
  %i.dc = load i32, ptr %i.e, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.bj, i32 noundef %i.dc) #25
  br label %bb.ay

sdslen.exit150.thread:                            ; preds = %bb.z, %sdslen.exit150
  switch i8 %i.cb, label %sdslen.exit153 [
    i8 0, label %bb.ab
    i8 1, label %bb.ac
    i8 2, label %bb.ad
    i8 3, label %bb.ae
    i8 4, label %bb.af
  ]

bb.ab:                                            ; preds = %sdslen.exit150.thread
  %i.dd = lshr i8 %.val.i148, 3
  %i.de = zext nneg i8 %i.dd to i64
  br label %sdslen.exit153

bb.ac:                                            ; preds = %sdslen.exit150.thread
  %i.df = getelementptr inbounds i8, ptr %i.bz, i64 -3
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !25
  %i.dh = zext i8 %i.dg to i64
  br label %sdslen.exit153

bb.ad:                                            ; preds = %sdslen.exit150.thread
  %i.di = getelementptr inbounds i8, ptr %i.bz, i64 -5
  %i.dj = load i16, ptr %i.di, align 1, !tbaa !35
  %i.dk = zext i16 %i.dj to i64
  br label %sdslen.exit153

bb.ae:                                            ; preds = %sdslen.exit150.thread
  %i.dl = getelementptr inbounds i8, ptr %i.bz, i64 -9
  %i.dm = load i32, ptr %i.dl, align 1, !tbaa !9
  %i.dn = zext i32 %i.dm to i64
  br label %sdslen.exit153

bb.af:                                            ; preds = %sdslen.exit150.thread
  %i.do = getelementptr inbounds i8, ptr %i.bz, i64 -17
  %i.dp = load i64, ptr %i.do, align 1, !tbaa !13
  br label %sdslen.exit153

sdslen.exit153:                                   ; preds = %bb.t, %sdslen.exit150.thread, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.0.i152 = phi i64 [ %i.dp, %bb.af ], [ %i.de, %bb.ab ], [ %i.dh, %bb.ac ], [ %i.dk, %bb.ad ], [ %i.dn, %bb.ae ], [ 0, %sdslen.exit150.thread ], [ 0, %bb.t ]
  %i.dq = call ptr @ACLCreateUser(ptr noundef nonnull %i.bz, i64 noundef %.0.i152) ; 2 uses
  %.not141 = icmp eq ptr %i.dq, null
  br i1 %.not141, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %sdslen.exit153
  %i.dr = load ptr, ptr %i.by, align 8, !tbaa !38
  %i.ds = trunc nuw nsw i64 %indvars.iv.next215 to i32
  %i.dt = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0112197, ptr noundef nonnull @.str.107, ptr noundef %i.dr, i32 noundef %i.ds) #25
  %i.du = load i32, ptr %i.e, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.bj, i32 noundef %i.du) #25
  br label %bb.ay

bb.ah:                                            ; preds = %sdslen.exit153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !9
  %i.dx = add nsw i32 %i.dw, -2
  %i.dy = call ptr @ACLMergeSelectorArguments(ptr noundef nonnull %i.dv, i32 noundef %i.dx, ptr noundef nonnull %i.f, ptr noundef null) ; 4 uses
  %.not142 = icmp eq ptr %i.dy, null
  br i1 %.not142, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8400), align 8, !tbaa !232
  %i.ea = trunc nuw nsw i64 %indvars.iv.next215 to i32
  %i.eb = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0112197, ptr noundef nonnull @.str.108, ptr noundef %i.dz, i32 noundef %i.ea) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1113 = phi ptr [ %.0112197, %bb.ah ], [ %i.eb, %bb.ai ] ; 2 uses
  %i.ec = load i32, ptr %i.f, align 4, !tbaa !9
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph190.preheader, label %._crit_edge195

.lr.ph190.preheader:                              ; preds = %bb.aj
  %i.ee = trunc nuw nsw i64 %indvars.iv.next215 to i32
  %i.ef = trunc nuw nsw i64 %indvars.iv.next215 to i32
  br label %.lr.ph190

.preheader:                                       ; preds = %bb.ax
  %i.eg = icmp sgt i32 %i.ff, 0
  br i1 %i.eg, label %.lr.ph194.preheader, label %._crit_edge195

.lr.ph194.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.ff to i64
  br label %.lr.ph194

.lr.ph190:                                        ; preds = %.lr.ph190.preheader, %bb.ax
  %indvars.iv = phi i64 [ 0, %.lr.ph190.preheader ], [ %indvars.iv.next, %bb.ax ] ; 2 uses
  %.2188 = phi ptr [ %.1113, %.lr.ph190.preheader ], [ %.4, %bb.ax ] ; 4 uses
  %.0119186 = phi i32 [ 0, %.lr.ph190.preheader ], [ %.2121, %bb.ax ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !38
  %i.ej = call ptr @sdstrim(ptr noundef %i.ei, ptr noundef nonnull @.str.109) #25 ; 7 uses
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !38
  %i.ek = getelementptr i8, ptr %i.ej, i64 -1
  %.val.i154 = load i8, ptr %i.ek, align 1, !tbaa !25 ; 2 uses
  %i.el = and i8 %.val.i154, 7
  switch i8 %i.el, label %sdslen.exit156 [
    i8 0, label %bb.ak
    i8 1, label %bb.al
    i8 2, label %bb.am
    i8 3, label %bb.an
    i8 4, label %bb.ao
  ]

bb.ak:                                            ; preds = %.lr.ph190
  %i.em = lshr i8 %.val.i154, 3
  %i.en = zext nneg i8 %i.em to i64
  br label %sdslen.exit156

bb.al:                                            ; preds = %.lr.ph190
  %i.eo = getelementptr inbounds i8, ptr %i.ej, i64 -3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !25
  %i.eq = zext i8 %i.ep to i64
  br label %sdslen.exit156

bb.am:                                            ; preds = %.lr.ph190
  %i.er = getelementptr inbounds i8, ptr %i.ej, i64 -5
  %i.es = load i16, ptr %i.er, align 1, !tbaa !35
  %i.et = zext i16 %i.es to i64
  br label %sdslen.exit156

bb.an:                                            ; preds = %.lr.ph190
  %i.eu = getelementptr inbounds i8, ptr %i.ej, i64 -9
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !9
  %i.ew = zext i32 %i.ev to i64
  br label %sdslen.exit156

bb.ao:                                            ; preds = %.lr.ph190
  %i.ex = getelementptr inbounds i8, ptr %i.ej, i64 -17
  %i.ey = load i64, ptr %i.ex, align 1, !tbaa !13
  br label %sdslen.exit156

sdslen.exit156:                                   ; preds = %.lr.ph190, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %.0.i155 = phi i64 [ %i.ey, %bb.ao ], [ %i.en, %bb.ak ], [ %i.eq, %bb.al ], [ %i.et, %bb.am ], [ %i.ew, %bb.an ], [ 0, %.lr.ph190 ]
  %i.ez = call i32 @ACLSetUser(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.ej, i64 noundef %.0.i155)
  %.not144 = icmp eq i32 %i.ez, 0
  br i1 %.not144, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %sdslen.exit156
  %i.fa = tail call ptr @__errno_location() #28
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !9
  switch i32 %i.fb, label %ACLSetUserStringError.exit.a [
    i32 2, label %ACLSetUserStringError.exit.thread178
    i32 22, label %ACLSetUserStringError.exit.thread
    i32 17, label %bb.aq
    i32 21, label %bb.ar
    i32 19, label %bb.as
    i32 74, label %bb.at
    i32 114, label %bb.au
    i32 10, label %bb.av
  ]

bb.aq:                                            ; preds = %bb.ap
  br label %ACLSetUserStringError.exit.thread

bb.ar:                                            ; preds = %bb.ap
  br label %ACLSetUserStringError.exit.thread

bb.as:                                            ; preds = %bb.ap
  br label %ACLSetUserStringError.exit.thread

bb.at:                                            ; preds = %bb.ap
  br label %ACLSetUserStringError.exit.thread

bb.au:                                            ; preds = %bb.ap
  br label %ACLSetUserStringError.exit.thread

bb.av:                                            ; preds = %bb.ap
  br label %ACLSetUserStringError.exit.thread

ACLSetUserStringError.exit.a:                     ; preds = %bb.ap
  br label %ACLSetUserStringError.exit.thread

ACLSetUserStringError.exit.thread178:             ; preds = %bb.ap
  %2 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8400), align 8, !tbaa !232
  %3 = load ptr, ptr %i.eh, align 8, !tbaa !38
  %4 = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.2188, ptr noundef nonnull @.str.110, ptr noundef %2, i32 noundef %i.ee, ptr noundef %3, ptr noundef nonnull @.str.80) #25
  br label %bb.ax

ACLSetUserStringError.exit.thread:                ; preds = %ACLSetUserStringError.exit.a, %bb.ap, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.0.i157177 = phi ptr [ @.str.79, %ACLSetUserStringError.exit.a ], [ @.str.87, %bb.av ], [ @.str.86, %bb.au ], [ @.str.85, %bb.at ], [ @.str.84, %bb.as ], [ @.str.83, %bb.ar ], [ @.str.82, %bb.aq ], [ @.str.81, %bb.ap ]
  %i.fc = icmp eq i32 %.0119186, 0
  br i1 %i.fc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %ACLSetUserStringError.exit.thread
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8400), align 8, !tbaa !232
  %i.fe = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.2188, ptr noundef nonnull @.str.111, ptr noundef %i.fd, i32 noundef %i.ef, ptr noundef nonnull %.0.i157177) #25
  br label %bb.ax

bb.ax:                                            ; preds = %ACLSetUserStringError.exit.thread178, %bb.aw, %ACLSetUserStringError.exit.thread, %sdslen.exit156
  %.2121 = phi i32 [ %.0119186, %sdslen.exit156 ], [ %.0119186, %ACLSetUserStringError.exit.thread178 ], [ 1, %bb.aw ], [ 1, %ACLSetUserStringError.exit.thread ]
  %.4 = phi ptr [ %.2188, %sdslen.exit156 ], [ %4, %ACLSetUserStringError.exit.thread178 ], [ %i.fe, %bb.aw ], [ %.2188, %ACLSetUserStringError.exit.thread ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ff = load i32, ptr %i.f, align 4, !tbaa !9   ; 3 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %indvars.iv.next, %i.fg
  br i1 %i.fh, label %.lr.ph190, label %.preheader, !llvm.loop !233

._crit_edge195:                                   ; preds = %.lr.ph194, %bb.aj, %.preheader
  %.2.lcssa234 = phi ptr [ %.1113, %bb.aj ], [ %.4, %.preheader ], [ %.4, %.lr.ph194 ]
  call void @zfree(ptr noundef %i.dy) #25
  %i.fi = load i32, ptr %i.e, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.bj, i32 noundef %i.fi) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.ay

.lr.ph194:                                        ; preds = %.lr.ph194.preheader, %.lr.ph194
  %indvars.iv211 = phi i64 [ 0, %.lr.ph194.preheader ], [ %indvars.iv.next212, %.lr.ph194 ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv211
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !38
  call void @sdsfree(ptr noundef %i.fk) #25
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge195, label %.lr.ph194, !llvm.loop !234

bb.ay:                                            ; preds = %bb.ag, %._crit_edge195, %.lr.ph199, %ACLStringHasSpaces.exit, %bb.s, %bb.q, %bb.o
  %.6 = phi ptr [ %.0112197, %.lr.ph199 ], [ %i.bn, %bb.o ], [ %.0112197, %bb.q ], [ %i.bw, %bb.s ], [ %i.db, %ACLStringHasSpaces.exit ], [ %.2.lcssa234, %._crit_edge195 ], [ %i.dt, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.fl = load i32, ptr %i.d, align 4, !tbaa !9   ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp slt i64 %indvars.iv.next215, %i.fm
  br i1 %i.fn, label %.lr.ph199, label %._crit_edge200, !llvm.loop !235

sdslen.exit.thread:                               ; preds = %._crit_edge200, %sdslen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8, !tbaa !160
  %i.fo = load ptr, ptr @Users, align 8, !tbaa !100
  %i.fp = call i32 @raxFind(ptr noundef %i.fo, ptr noundef nonnull @.str.88, i64 noundef 7, ptr noundef nonnull %i.b) #25 ; 0 uses
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !160 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.not133 = icmp eq ptr %i.fq, null
  br i1 %.not133, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %sdslen.exit.thread
  %i.fr = call ptr @ACLCreateUser(ptr noundef nonnull @.str.88, i64 noundef 7) ; 6 uses
  %i.fs = call i32 @ACLSetUser(ptr noundef %i.fr, ptr noundef nonnull @.str.45, i64 noundef -1) ; 0 uses
  %i.ft = call i32 @ACLSetUser(ptr noundef %i.fr, ptr noundef nonnull @.str.61, i64 noundef -1) ; 0 uses
  %i.fu = call i32 @ACLSetUser(ptr noundef %i.fr, ptr noundef nonnull @.str.63, i64 noundef -1) ; 0 uses
  %i.fv = call i32 @ACLSetUser(ptr noundef %i.fr, ptr noundef nonnull @.str.23, i64 noundef -1) ; 0 uses
  %i.fw = call i32 @ACLSetUser(ptr noundef %i.fr, ptr noundef nonnull @.str.25, i64 noundef -1) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %sdslen.exit.thread
  %.0115 = phi ptr [ %i.fq, %sdslen.exit.thread ], [ %i.fr, %bb.az ] ; 6 uses
  %i.fx = load ptr, ptr @DefaultUser, align 8, !tbaa !160 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !102
  call void @listRelease(ptr noundef %i.fz) #25
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !92
  call void @listRelease(ptr noundef %i.gb) #25
  %i.gc = getelementptr inbounds nuw i8, ptr %.0115, i64 16 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !102
  %i.ge = call ptr @listDup(ptr noundef %i.gd) #25
  store ptr %i.ge, ptr %i.fy, align 8, !tbaa !102
  %i.gf = getelementptr inbounds nuw i8, ptr %.0115, i64 24 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !92
  %i.gh = call ptr @listDup(ptr noundef %i.gg) #25
  store ptr %i.gh, ptr %i.ga, align 8, !tbaa !92
  %i.gi = getelementptr inbounds nuw i8, ptr %.0115, i64 8
  %i.gj = load atomic i32, ptr %i.gi seq_cst, align 8, !tbaa !118
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store atomic i32 %i.gj, ptr %i.gk seq_cst, align 8, !tbaa !118
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !103 ; 2 uses
  %.not.i161 = icmp eq ptr %i.gm, null
  br i1 %.not.i161, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @decrRefCount(ptr noundef nonnull %i.gm) #25
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gn = getelementptr inbounds nuw i8, ptr %.0115, i64 32 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !103 ; 3 uses
  store ptr %i.go, ptr %i.gl, align 8, !tbaa !103
  %.not15.i = icmp eq ptr %i.go, null
  br i1 %.not15.i, label %ACLCopyUser.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @incrRefCount(ptr noundef nonnull %i.go) #25
  br label %ACLCopyUser.exit

ACLCopyUser.exit:                                 ; preds = %bb.bc, %bb.bd
  %i.gp = load ptr, ptr %.0115, align 8, !tbaa !101
  call void @sdsfree(ptr noundef %i.gp) #25
  %i.gq = load ptr, ptr %i.gn, align 8, !tbaa !103 ; 2 uses
  %.not.i162 = icmp eq ptr %i.gq, null
  br i1 %.not.i162, label %ACLFreeUser.exit, label %bb.be

bb.be:                                            ; preds = %ACLCopyUser.exit
  call void @decrRefCount(ptr noundef nonnull %i.gq) #25
  store ptr null, ptr %i.gn, align 8, !tbaa !103
  br label %ACLFreeUser.exit

ACLFreeUser.exit:                                 ; preds = %ACLCopyUser.exit, %bb.be
  %i.gr = load ptr, ptr %i.gc, align 8, !tbaa !102
  call void @listRelease(ptr noundef %i.gr) #25
  %i.gs = load ptr, ptr %i.gf, align 8, !tbaa !92
  call void @listRelease(ptr noundef %i.gs) #25
  call void @zfree(ptr noundef nonnull %.0115) #25
  %i.gt = load ptr, ptr @Users, align 8, !tbaa !100
  %i.gu = load ptr, ptr @DefaultUser, align 8, !tbaa !160
  %i.gv = call i32 @raxInsert(ptr noundef %i.gt, ptr noundef nonnull @.str.88, i64 noundef 7, ptr noundef %i.gu, ptr noundef null) #25 ; 0 uses
  %i.gw = call i32 @raxRemove(ptr noundef %i.v, ptr noundef nonnull @.str.88, i64 noundef 7, ptr noundef null) #25 ; 0 uses
  %i.gx = call i32 @pubsubTotalSubscriptions() #25
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %ACLFreeUser.exit
  %i.gz = call ptr @raxNew() #25
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %ACLFreeUser.exit
  %.0114 = phi ptr [ %i.gz, %bb.bf ], [ null, %ACLFreeUser.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.ha = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1440), align 8, !tbaa !104
  call void @listRewind(ptr noundef %i.ha, ptr noundef nonnull %1) #25
  %i.hb = call ptr @listNext(ptr noundef nonnull %1) #25 ; 2 uses
  %.not134203 = icmp eq ptr %i.hb, null
  br i1 %.not134203, label %._crit_edge206, label %.lr.ph205

.lr.ph205:                                        ; preds = %bb.bg
  %i.hc = icmp ne ptr %.0114, null
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph205, %bb.cf
  %i.hd = phi ptr [ %i.hb, %.lr.ph205 ], [ %i.jq, %bb.cf ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !98 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !165
  %i.hi = and i64 %i.hh, 2
  %.not136 = icmp eq i64 %i.hi, 0
  br i1 %.not136, label %bb.bi, label %bb.cf, !llvm.loop !236

bb.bi:                                            ; preds = %bb.bh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 224 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !105 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store ptr null, ptr %i.g, align 8, !tbaa !159
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !101 ; 6 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 -1
  %.val.i163 = load i8, ptr %i.hm, align 1, !tbaa !25 ; 2 uses
  %i.hn = and i8 %.val.i163, 7
  switch i8 %i.hn, label %sdslen.exit165 [
    i8 0, label %bb.bj
    i8 1, label %bb.bk
    i8 2, label %bb.bl
    i8 3, label %bb.bm
    i8 4, label %bb.bn
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.ho = lshr i8 %.val.i163, 3
  %i.hp = zext nneg i8 %i.ho to i64
  br label %sdslen.exit165

bb.bk:                                            ; preds = %bb.bi
  %i.hq = getelementptr inbounds i8, ptr %i.hl, i64 -3
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !25
  %i.hs = zext i8 %i.hr to i64
  br label %sdslen.exit165

bb.bl:                                            ; preds = %bb.bi
  %i.ht = getelementptr inbounds i8, ptr %i.hl, i64 -5
  %i.hu = load i16, ptr %i.ht, align 1, !tbaa !35
  %i.hv = zext i16 %i.hu to i64
  br label %sdslen.exit165

bb.bm:                                            ; preds = %bb.bi
  %i.hw = getelementptr inbounds i8, ptr %i.hl, i64 -9
  %i.hx = load i32, ptr %i.hw, align 1, !tbaa !9
  %i.hy = zext i32 %i.hx to i64
  br label %sdslen.exit165

bb.bn:                                            ; preds = %bb.bi
  %i.hz = getelementptr inbounds i8, ptr %i.hl, i64 -17
  %i.ia = load i64, ptr %i.hz, align 1, !tbaa !13
  br label %sdslen.exit165

sdslen.exit165:                                   ; preds = %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn
  %.0.i164 = phi i64 [ %i.ia, %bb.bn ], [ %i.hp, %bb.bj ], [ %i.hs, %bb.bk ], [ %i.hv, %bb.bl ], [ %i.hy, %bb.bm ], [ 0, %bb.bi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !160
  %i.ib = load ptr, ptr @Users, align 8, !tbaa !100
  %i.ic = call i32 @raxFind(ptr noundef %i.ib, ptr noundef nonnull %i.hl, i64 noundef %.0.i164, ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.id = load ptr, ptr %i.a, align 8, !tbaa !160 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ie = icmp ne ptr %i.id, null                 ; 2 uses
  %or.cond3 = select i1 %i.ie, i1 %i.hc, i1 false
  br i1 %or.cond3, label %bb.bo, label %bb.ca
end_hunk_0
