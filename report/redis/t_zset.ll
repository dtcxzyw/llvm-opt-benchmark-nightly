Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/t_zset?download=true
inline.NumInlined: 280
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zunionInterDiffGenericCommand:bb.a
  %indvars.iv507 = phi i64 [ %i.ca, %.lr.ph426.preheader ], [ %indvars.iv.next508, %bb.r ] ; 2 uses
  %.1246424 = phi i32 [ %.1246421, %.lr.ph426.preheader ], [ %.1246, %bb.r ]
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !149
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %indvars.iv507
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !162
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %indvars.iv509
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = call i32 @getDoubleFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.cf, ptr noundef nonnull %i.ch, ptr noundef nonnull @.str.40) #17
  %.not290 = icmp eq i32 %i.ci, 0
  br i1 %.not290, label %bb.r, label %bb.s

bb.s:                                             ; preds = %.lr.ph426
  call void @zfree(ptr noundef nonnull %i.ab) #17
  br label %bb.ec

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.cj = icmp sgt i32 %.0245435, 1
  br i1 %i.cj, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !149
  %i.cl = sext i32 %.1264430 to i64
  %i.cm = getelementptr [8 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !162
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !75
  %i.cq = call i32 @strcasecmp(ptr noundef %i.cp, ptr noundef nonnull @.str.41) #19
  %.not291 = icmp eq i32 %i.cq, 0
  br i1 %.not291, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr i8, ptr %i.cm, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !162
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !75 ; 3 uses
  %i.cv = call i32 @strcasecmp(ptr noundef %i.cu, ptr noundef nonnull @.str.42) #19
  %.not292 = icmp eq i32 %i.cv, 0
  br i1 %.not292, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = call i32 @strcasecmp(ptr noundef %i.cu, ptr noundef nonnull @.str.43) #19
  %.not293 = icmp eq i32 %i.cw, 0
  br i1 %.not293, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = call i32 @strcasecmp(ptr noundef %i.cu, ptr noundef nonnull @.str.44) #19
  %.not294 = icmp eq i32 %i.cx, 0
  br i1 %.not294, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @zfree(ptr noundef %i.ab) #17
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !164
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.cy) #17
  br label %bb.ec

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.1260 = phi i32 [ 2, %bb.w ], [ 1, %bb.v ], [ 3, %bb.x ]
  %i.cz = add nsw i32 %.1264430, 2
  %i.da = add nsw i32 %.0245435, -2
  br label %.loopexit402

bb.aa:                                            ; preds = %.thread, %bb.u, %bb.t
  %or.cond12 = phi i1 [ %i.bp, %.thread ], [ false, %bb.u ], [ false, %bb.t ]
  %i.db = icmp slt i32 %.0245435, 1
  %or.cond10.reass.reass.reass = or i1 %i.db, %invariant.op
  br i1 %or.cond10.reass.reass.reass, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr %i.h, align 8, !tbaa !149
  %i.dd = sext i32 %.1264430 to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !162
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !75
  %i.di = call i32 @strcasecmp(ptr noundef %i.dh, ptr noundef nonnull @.str.45) #19
  %.not295 = icmp eq i32 %i.di, 0
  br i1 %.not295, label %bb.ac, label %.thread375

bb.ac:                                            ; preds = %bb.ab
  %i.dj = add nsw i32 %.1264430, 1
  %i.dk = add nsw i32 %.0245435, -1
  br label %.loopexit402

bb.ad:                                            ; preds = %bb.aa
  br i1 %or.cond12, label %bb.ae, label %.thread375

bb.ae:                                            ; preds = %bb.ad
  %i.dl = load ptr, ptr %i.h, align 8, !tbaa !149
  %i.dm = sext i32 %.1264430 to i64
  %i.dn = getelementptr [8 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !162
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !75
  %i.dr = call i32 @strcasecmp(ptr noundef %i.dq, ptr noundef nonnull @.str.46) #19
  %.not296 = icmp eq i32 %i.dr, 0
  br i1 %.not296, label %bb.af, label %.thread375

bb.af:                                            ; preds = %bb.ae
  %i.ds = getelementptr i8, ptr %i.dn, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !162
  %i.du = call i32 @getPositiveLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.dt, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.47) #17
  %.not297 = icmp eq i32 %i.du, 0
  br i1 %.not297, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @zfree(ptr noundef %i.ab) #17
  br label %bb.ec

bb.ah:                                            ; preds = %bb.af
  %i.dv = add nsw i32 %.1264430, 2
  %i.dw = add nsw i32 %.0245435, -2
  br label %.loopexit402

.thread375:                                       ; preds = %bb.ab, %bb.ae, %bb.ad
  call void @zfree(ptr noundef %i.ab) #17
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !164
  call void @addReplyErrorObject(ptr noundef %0, ptr noundef %i.dx) #17
  br label %bb.ec

.loopexit402.loopexit:                            ; preds = %bb.r
  %i.dy = trunc nsw i64 %indvars.iv.next508 to i32
  br label %.loopexit402

.loopexit402:                                     ; preds = %.loopexit402.loopexit, %.preheader401, %bb.z, %bb.ah, %bb.ac
  %.3266 = phi i32 [ %i.dv, %bb.ah ], [ %i.dj, %bb.ac ], [ %i.cz, %bb.z ], [ %.2265422, %.preheader401 ], [ %i.dy, %.loopexit402.loopexit ]
  %.2261 = phi i32 [ %.0259432, %bb.ah ], [ %.0259432, %bb.ac ], [ %.1260, %bb.z ], [ %.0259432, %.preheader401 ], [ %.0259432, %.loopexit402.loopexit ] ; 2 uses
  %.1256 = phi i32 [ %.0255434, %bb.ah ], [ 1, %bb.ac ], [ %.0255434, %bb.z ], [ %.0255434, %.preheader401 ], [ %.0255434, %.loopexit402.loopexit ] ; 2 uses
  %.2247 = phi i32 [ %i.dw, %bb.ah ], [ %i.dk, %bb.ac ], [ %i.da, %bb.z ], [ %.1246421, %.preheader401 ], [ %.1246, %.loopexit402.loopexit ] ; 2 uses
  %.not287 = icmp eq i32 %.2247, 0
  br i1 %.not287, label %.critedge320.loopexit, label %bb.o, !llvm.loop !209

.critedge320.loopexit:                            ; preds = %.loopexit402
  %i.dz = icmp eq i32 %.1256, 0
  br label %.critedge320

.critedge320:                                     ; preds = %.critedge320.loopexit, %bb.n, %._crit_edge
  %.3262 = phi i32 [ 1, %._crit_edge ], [ 1, %bb.n ], [ %.2261, %.critedge320.loopexit ] ; 3 uses
  %.2257 = phi i1 [ true, %._crit_edge ], [ true, %bb.n ], [ %i.dz, %.critedge320.loopexit ]
  %.not298 = icmp eq i32 %3, 1
  br i1 %.not298, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge320
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !24
  call void @qsort(ptr noundef %i.ab, i64 noundef %i.ea, i64 noundef 56, ptr noundef nonnull @zuiCompareByCardinality) #17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge320
  %i.eb = icmp ne i32 %4, 0                       ; 3 uses
  br i1 %i.eb, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = call ptr @createZsetObject() #17        ; 2 uses
  store ptr %i.ec, ptr %i.d, align 8, !tbaa !162
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !75
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0258 = phi ptr [ null, %bb.aj ], [ %i.ee, %bb.ak ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.ef = icmp eq i32 %3, 2                       ; 2 uses
  br i1 %i.ef, label %bb.am, label %bb.br

bb.am:                                            ; preds = %bb.al
  %i.eg = call i64 @zuiLength(ptr noundef %i.ab)
  %.not302 = icmp eq i64 %i.eg, 0
  br i1 %.not302, label %bb.cy, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @zuiInitIterator(ptr noundef %i.ab)
  %i.eh = call i32 @zuiNext(ptr noundef %i.ab, ptr noundef nonnull %5)
  %.not303474 = icmp eq i32 %i.eh, 0
  br i1 %.not303474, label %.loopexit400, label %.lr.ph478

.lr.ph478:                                        ; preds = %bb.an
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %.0258, i64 8
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph478, %zuiDiscardDirtyValue.exit
  %.0251476 = phi i64 [ 0, %.lr.ph478 ], [ %.2253, %zuiDiscardDirtyValue.exit ] ; 3 uses
  %i.ep = phi i64 [ 0, %.lr.ph478 ], [ %i.hz, %zuiDiscardDirtyValue.exit ] ; 5 uses
  %.0.i336470475 = phi i64 [ 0, %.lr.ph478 ], [ %.0.i336468, %zuiDiscardDirtyValue.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.eq = load double, ptr %i.ei, align 8, !tbaa !206
  %i.er = load double, ptr %i.ej, align 8, !tbaa !194
  %i.es = fmul double %i.eq, %i.er                ; 2 uses
  %.inv304 = fcmp ord double %i.es, 0.000000e+00
  %spec.store.select = select i1 %.inv304, double %i.es, double 0.000000e+00 ; 2 uses
  %i.et = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.eu = icmp sgt i64 %i.et, 1
  br i1 %i.eu, label %.lr.ph456, label %._crit_edge457

.lr.ph456:                                        ; preds = %bb.ao, %zunionInterAggregate.exit
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %zunionInterAggregate.exit ], [ 1, %bb.ao ] ; 3 uses
  %.0371453 = phi double [ %.1371, %zunionInterAggregate.exit ], [ %spec.store.select, %bb.ao ] ; 11 uses
  %i.ev = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %indvars.iv517 ; 4 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !186
  %i.ex = load ptr, ptr %i.ab, align 8, !tbaa !186
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %.lr.ph456
  %i.ez = load double, ptr %i.ej, align 8, !tbaa !194
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !206
  %i.fc = fmul double %i.ez, %i.fb                ; 6 uses
  store double %i.fc, ptr %i.f, align 8, !tbaa !16
  switch i32 %.3262, label %bb.as [
    i32 1, label %bb.aq
    i32 2, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.fd = fadd double %.0371453, %i.fc            ; 2 uses
  %.inv.i = fcmp ord double %i.fd, 0.000000e+00
  %spec.store.select.i = select i1 %.inv.i, double %i.fd, double 0.000000e+00
  br label %zunionInterAggregate.exit

bb.ar:                                            ; preds = %bb.ap
  %i.fe = fcmp olt double %i.fc, %.0371453
  %..i = select i1 %i.fe, double %i.fc, double %.0371453
  br label %zunionInterAggregate.exit

bb.as:                                            ; preds = %bb.ap
  %i.ff = fcmp ogt double %i.fc, %.0371453
  %.20.i = select i1 %i.ff, double %i.fc, double %.0371453
  br label %zunionInterAggregate.exit

bb.at:                                            ; preds = %.lr.ph456
  %i.fg = call i32 @zuiFind(ptr noundef nonnull %i.ev, ptr noundef nonnull %5, ptr noundef nonnull %i.f)
  %.not305 = icmp eq i32 %i.fg, 0
  br i1 %.not305, label %.._crit_edge457.loopexit_crit_edge, label %bb.au

.._crit_edge457.loopexit_crit_edge:               ; preds = %bb.at
  %.pre523.pre = load i64, ptr %i.a, align 8, !tbaa !24
  br label %._crit_edge457

bb.au:                                            ; preds = %bb.at
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !206
  %i.fj = load double, ptr %i.f, align 8, !tbaa !16
  %i.fk = fmul double %i.fi, %i.fj                ; 6 uses
  store double %i.fk, ptr %i.f, align 8, !tbaa !16
  switch i32 %.3262, label %bb.ax [
    i32 1, label %bb.av
    i32 2, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.fl = fadd double %.0371453, %i.fk            ; 2 uses
  %.inv.i326 = fcmp ord double %i.fl, 0.000000e+00
  %spec.store.select.i327 = select i1 %.inv.i326, double %i.fl, double 0.000000e+00
  br label %zunionInterAggregate.exit

bb.aw:                                            ; preds = %bb.au
  %i.fm = fcmp olt double %i.fk, %.0371453
  %..i324 = select i1 %i.fm, double %i.fk, double %.0371453
  br label %zunionInterAggregate.exit

bb.ax:                                            ; preds = %bb.au
  %i.fn = fcmp ogt double %i.fk, %.0371453
  %.20.i328 = select i1 %i.fn, double %i.fk, double %.0371453
  br label %zunionInterAggregate.exit

zunionInterAggregate.exit:                        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.as, %bb.ar, %bb.aq
  %.1371 = phi double [ %.20.i, %bb.as ], [ %spec.store.select.i, %bb.aq ], [ %..i, %bb.ar ], [ %spec.store.select.i327, %bb.av ], [ %..i324, %bb.aw ], [ %.20.i328, %bb.ax ] ; 2 uses
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1 ; 3 uses
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.fp = icmp sgt i64 %i.fo, %indvars.iv.next518
  br i1 %i.fp, label %.lr.ph456, label %._crit_edge457, !llvm.loop !210

._crit_edge457:                                   ; preds = %zunionInterAggregate.exit, %.._crit_edge457.loopexit_crit_edge, %bb.ao
  %i.fq = phi i64 [ %i.et, %bb.ao ], [ %.pre523.pre, %.._crit_edge457.loopexit_crit_edge ], [ %i.fo, %zunionInterAggregate.exit ]
  %.0371.lcssa = phi double [ %spec.store.select, %bb.ao ], [ %.0371453, %.._crit_edge457.loopexit_crit_edge ], [ %.1371, %zunionInterAggregate.exit ] ; 2 uses
  %.lcssa = phi i64 [ 1, %bb.ao ], [ %indvars.iv517, %.._crit_edge457.loopexit_crit_edge ], [ %indvars.iv.next518, %zunionInterAggregate.exit ]
  %i.fr = icmp eq i64 %i.fq, %.lcssa              ; 2 uses
  %or.cond14 = and i1 %i.eb, %i.fr
  br i1 %or.cond14, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %._crit_edge457
  %i.fs = add i64 %.0251476, 1                    ; 3 uses
  %i.ft = load i64, ptr %i.e, align 8, !tbaa !24
  %i.fu = add i64 %i.ft, -1
  %or.cond321.not = icmp ult i64 %i.fu, %i.fs
  br i1 %or.cond321.not, label %bb.az, label %zuiDiscardDirtyValue.exit

bb.az:                                            ; preds = %bb.ay
  store i64 %i.ep, ptr %i.c, align 8
  store i64 %.0.i336470475, ptr %i.b, align 8
  %i.fv = load i32, ptr %5, align 8, !tbaa !190
  %i.fw = and i32 %i.fv, 1
  %.not.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i, label %zuiDiscardDirtyValue.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fx = load ptr, ptr %i.ek, align 8, !tbaa !192
  call void @sdsfree(ptr noundef %i.fx) #17
  store ptr null, ptr %i.ek, align 8, !tbaa !192
  %i.fy = load i32, ptr %5, align 8, !tbaa !190
  %i.fz = and i32 %i.fy, -2
  store i32 %i.fz, ptr %5, align 8, !tbaa !190
  br label %zuiDiscardDirtyValue.exit.thread

bb.bb:                                            ; preds = %._crit_edge457
  br i1 %i.fr, label %bb.bc, label %zuiDiscardDirtyValue.exit

bb.bc:                                            ; preds = %bb.bb
  %i.ga = load i32, ptr %5, align 8, !tbaa !190   ; 2 uses
  %i.gb = and i32 %i.ga, 1
  %.not.i330 = icmp eq i32 %i.gb, 0
  %i.gc = load ptr, ptr %i.ek, align 8, !tbaa !192 ; 3 uses
  br i1 %.not.i330, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gd = and i32 %i.ga, -2
  store i32 %i.gd, ptr %5, align 8, !tbaa !190
  store ptr null, ptr %i.ek, align 8, !tbaa !192
  br label %zuiNewSdsFromValue.exit

bb.be:                                            ; preds = %bb.bc
  %.not14.i = icmp eq ptr %i.gc, null
  br i1 %.not14.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ge = call ptr @sdsdup(ptr noundef nonnull %i.gc) #17
  br label %zuiNewSdsFromValue.exit

bb.bg:                                            ; preds = %bb.be
  %i.gf = load ptr, ptr %i.el, align 8, !tbaa !195 ; 2 uses
  %.not15.i = icmp eq ptr %i.gf, null
  br i1 %.not15.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gg = load i32, ptr %i.em, align 8, !tbaa !196
  %i.gh = zext i32 %i.gg to i64
  %i.gi = call ptr @sdsnewlen(ptr noundef nonnull %i.gf, i64 noundef %i.gh) #17
  br label %zuiNewSdsFromValue.exit

bb.bi:                                            ; preds = %bb.bg
  %i.gj = load i64, ptr %i.en, align 8, !tbaa !193
  %i.gk = call ptr @sdsfromlonglong(i64 noundef %i.gj) #17
  br label %zuiNewSdsFromValue.exit

zuiNewSdsFromValue.exit:                          ; preds = %bb.bd, %bb.bf, %bb.bh, %bb.bi
  %.0.i = phi ptr [ %i.gc, %bb.bd ], [ %i.ge, %bb.bf ], [ %i.gi, %bb.bh ], [ %i.gk, %bb.bi ] ; 11 uses
  %i.gl = load ptr, ptr %i.eo, align 8, !tbaa !103 ; 2 uses
  %i.gm = fcmp ord double %.0371.lcssa, 0.000000e+00
  br i1 %i.gm, label %.preheader.i, label %bb.bj, !prof !34

bb.bj:                                            ; preds = %zuiNewSdsFromValue.exit
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 329) #17
  call void @abort() #18
  unreachable

.preheader.i:                                     ; preds = %zuiNewSdsFromValue.exit, %.preheader.i
  %.0.i.i = phi i32 [ %i.gp, %.preheader.i ], [ 1, %zuiNewSdsFromValue.exit ] ; 2 uses
  %i.gn = call i64 @random() #17
  %i.go = icmp slt i64 %i.gn, 536870911
  %i.gp = add nuw nsw i32 %.0.i.i, 1
  br i1 %i.go, label %.preheader.i, label %zslInsert.exit, !llvm.loop !35

zslInsert.exit:                                   ; preds = %.preheader.i
  %i.gq = call range(i32 0, 33) i32 @llvm.umin.i32(i32 %.0.i.i, i32 32)
  %i.gr = call fastcc ptr @zslCreateNode(ptr noundef %i.gl, i32 noundef %i.gq, double noundef %.0371.lcssa, ptr noundef %.0.i) ; 2 uses
  call fastcc void @zslInsertNode(ptr noundef %i.gl, ptr noundef %i.gr)
  %i.gs = load ptr, ptr %.0258, align 8, !tbaa !107
  %i.gt = call i32 @dictAdd(ptr noundef %i.gs, ptr noundef %i.gr, ptr noundef null) #17 ; 0 uses
  %i.gu = getelementptr i8, ptr %.0.i, i64 -1
  %.val.i = load i8, ptr %i.gu, align 1, !tbaa !36 ; 3 uses
  %i.gv = and i8 %.val.i, 7                       ; 2 uses
  switch i8 %i.gv, label %sdslen.exit334.thread [
    i8 0, label %sdslen.exit.thread
    i8 1, label %sdslen.exit.thread378
    i8 2, label %sdslen.exit.thread380
    i8 3, label %sdslen.exit.thread382
    i8 4, label %sdslen.exit.thread384
  ]

sdslen.exit.thread:                               ; preds = %zslInsert.exit
  %i.gw = lshr i8 %.val.i, 3
  %i.gx = zext nneg i8 %i.gw to i64
  br label %sdslen.exit334

sdslen.exit.thread378:                            ; preds = %zslInsert.exit
  %i.gy = getelementptr inbounds i8, ptr %.0.i, i64 -3
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !36
  %i.ha = zext i8 %i.gz to i64
  br label %sdslen.exit334

sdslen.exit.thread380:                            ; preds = %zslInsert.exit
  %i.hb = getelementptr inbounds i8, ptr %.0.i, i64 -5
  %i.hc = load i16, ptr %i.hb, align 1, !tbaa !37
  %i.hd = zext i16 %i.hc to i64
  br label %sdslen.exit334

sdslen.exit.thread382:                            ; preds = %zslInsert.exit
  %i.he = getelementptr inbounds i8, ptr %.0.i, i64 -9
  %i.hf = load i32, ptr %i.he, align 1, !tbaa !9
  %i.hg = zext i32 %i.hf to i64
  br label %sdslen.exit334

sdslen.exit.thread384:                            ; preds = %zslInsert.exit
  %i.hh = getelementptr inbounds i8, ptr %.0.i, i64 -17
  %i.hi = load i64, ptr %i.hh, align 1, !tbaa !24
  br label %sdslen.exit334

sdslen.exit334:                                   ; preds = %sdslen.exit.thread, %sdslen.exit.thread378, %sdslen.exit.thread380, %sdslen.exit.thread382, %sdslen.exit.thread384
  %.pn = phi i64 [ %i.hi, %sdslen.exit.thread384 ], [ %i.gx, %sdslen.exit.thread ], [ %i.ha, %sdslen.exit.thread378 ], [ %i.hd, %sdslen.exit.thread380 ], [ %i.hg, %sdslen.exit.thread382 ] ; 2 uses
  %i.hj = add i64 %i.ep, %.pn                     ; 6 uses
  %i.hk = icmp ugt i64 %.pn, %.0.i336470475
  br i1 %i.hk, label %bb.bk, label %sdslen.exit334.thread

bb.bk:                                            ; preds = %sdslen.exit334
  switch i8 %i.gv, label %default.unreachable [
    i8 0, label %bb.bl
    i8 1, label %bb.bm
    i8 2, label %bb.bn
    i8 3, label %bb.bo
    i8 4, label %bb.bp
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.hl = lshr i8 %.val.i, 3
  %i.hm = zext nneg i8 %i.hl to i64
  br label %sdslen.exit334.thread

bb.bm:                                            ; preds = %bb.bk
  %i.hn = getelementptr inbounds i8, ptr %.0.i, i64 -3
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !36
  %i.hp = zext i8 %i.ho to i64
  br label %sdslen.exit334.thread

bb.bn:                                            ; preds = %bb.bk
  %i.hq = getelementptr inbounds i8, ptr %.0.i, i64 -5
  %i.hr = load i16, ptr %i.hq, align 1, !tbaa !37
  %i.hs = zext i16 %i.hr to i64
  br label %sdslen.exit334.thread

bb.bo:                                            ; preds = %bb.bk
  %i.ht = getelementptr inbounds i8, ptr %.0.i, i64 -9
  %i.hu = load i32, ptr %i.ht, align 1, !tbaa !9
  %i.hv = zext i32 %i.hu to i64
  br label %sdslen.exit334.thread

bb.bp:                                            ; preds = %bb.bk
  %i.hw = getelementptr inbounds i8, ptr %.0.i, i64 -17
  %i.hx = load i64, ptr %i.hw, align 1, !tbaa !24
  br label %sdslen.exit334.thread

default.unreachable:                              ; preds = %bb.bk
  unreachable

sdslen.exit334.thread:                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %zslInsert.exit, %sdslen.exit334
  %.0.i336469 = phi i64 [ %.0.i336470475, %zslInsert.exit ], [ %.0.i336470475, %sdslen.exit334 ], [ %i.hx, %bb.bp ], [ %i.hm, %bb.bl ], [ %i.hp, %bb.bm ], [ %i.hs, %bb.bn ], [ %i.hv, %bb.bo ]
  %i.hy = phi i64 [ %i.ep, %zslInsert.exit ], [ %i.hj, %sdslen.exit334 ], [ %i.hj, %bb.bp ], [ %i.hj, %bb.bl ], [ %i.hj, %bb.bm ], [ %i.hj, %bb.bn ], [ %i.hj, %bb.bo ]
  call void @sdsfree(ptr noundef nonnull %.0.i) #17
  br label %zuiDiscardDirtyValue.exit

zuiDiscardDirtyValue.exit.thread:                 ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  br label %bb.bq

zuiDiscardDirtyValue.exit:                        ; preds = %bb.ay, %sdslen.exit334.thread, %bb.bb
  %.0.i336468 = phi i64 [ %.0.i336469, %sdslen.exit334.thread ], [ %.0.i336470475, %bb.bb ], [ %.0.i336470475, %bb.ay ] ; 2 uses
  %i.hz = phi i64 [ %i.hy, %sdslen.exit334.thread ], [ %i.ep, %bb.bb ], [ %i.ep, %bb.ay ] ; 2 uses
  %.2253 = phi i64 [ %.0251476, %sdslen.exit334.thread ], [ %.0251476, %bb.bb ], [ %i.fs, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  %i.ia = call i32 @zuiNext(ptr noundef nonnull %i.ab, ptr noundef nonnull %5)
  %.not303 = icmp eq i32 %i.ia, 0
  br i1 %.not303, label %.loopexit400, label %bb.ao

.loopexit400:                                     ; preds = %zuiDiscardDirtyValue.exit, %bb.an
  %.0.i336470.lcssa = phi i64 [ 0, %bb.an ], [ %.0.i336468, %zuiDiscardDirtyValue.exit ]
  %.lcssa463 = phi i64 [ 0, %bb.an ], [ %i.hz, %zuiDiscardDirtyValue.exit ]
end_hunk_0
begin_hunk_1_@zunionInterDiffGenericCommand:bb.a
  %.inv = fcmp ord double %i.iv, 0.000000e+00
  %spec.store.select15 = select i1 %.inv, double %i.iv, double 0.000000e+00 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.iw = load ptr, ptr %.0258, align 8, !tbaa !107
  %i.ix = load ptr, ptr %i.ij, align 8, !tbaa !192 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.bx, label %zuiSdsFromValue.exit

bb.bx:                                            ; preds = %bb.bw
  %i.iz = load ptr, ptr %i.ik, align 8, !tbaa !195 ; 2 uses
  %.not.i338 = icmp eq ptr %i.iz, null
  br i1 %.not.i338, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ja = load i32, ptr %i.il, align 8, !tbaa !196
  %i.jb = zext i32 %i.ja to i64
  %i.jc = call ptr @sdsnewlen(ptr noundef nonnull %i.iz, i64 noundef %i.jb) #17
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.jd = load i64, ptr %i.im, align 8, !tbaa !193
  %i.je = call ptr @sdsfromlonglong(i64 noundef %i.jd) #17
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %storemerge.i339 = phi ptr [ %i.je, %bb.bz ], [ %i.jc, %bb.by ] ; 2 uses
  store ptr %storemerge.i339, ptr %i.ij, align 8, !tbaa !192
  %i.jf = load i32, ptr %5, align 8, !tbaa !190
  %i.jg = or i32 %i.jf, 1
  store i32 %i.jg, ptr %5, align 8, !tbaa !190
  br label %zuiSdsFromValue.exit

zuiSdsFromValue.exit:                             ; preds = %bb.bw, %bb.ca
  %i.jh = phi ptr [ %storemerge.i339, %bb.ca ], [ %i.ix, %bb.bw ]
  %i.ji = call ptr @dictFindLink(ptr noundef %i.iw, ptr noundef %i.jh, ptr noundef nonnull %i.g) #17 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %bb.cb, label %bb.cp

bb.cb:                                            ; preds = %zuiSdsFromValue.exit
  %i.jk = load i32, ptr %5, align 8, !tbaa !190   ; 2 uses
  %i.jl = and i32 %i.jk, 1
  %.not.i340 = icmp eq i32 %i.jl, 0
  %i.jm = load ptr, ptr %i.ij, align 8, !tbaa !192 ; 3 uses
  br i1 %.not.i340, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jn = and i32 %i.jk, -2
  store i32 %i.jn, ptr %5, align 8, !tbaa !190
  store ptr null, ptr %i.ij, align 8, !tbaa !192
  br label %zuiNewSdsFromValue.exit344

bb.cd:                                            ; preds = %bb.cb
  %.not14.i342 = icmp eq ptr %i.jm, null
  br i1 %.not14.i342, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jo = call ptr @sdsdup(ptr noundef nonnull %i.jm) #17
  br label %zuiNewSdsFromValue.exit344

bb.cf:                                            ; preds = %bb.cd
  %i.jp = load ptr, ptr %i.ik, align 8, !tbaa !195 ; 2 uses
  %.not15.i343 = icmp eq ptr %i.jp, null
  br i1 %.not15.i343, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jq = load i32, ptr %i.il, align 8, !tbaa !196
  %i.jr = zext i32 %i.jq to i64
  %i.js = call ptr @sdsnewlen(ptr noundef nonnull %i.jp, i64 noundef %i.jr) #17
  br label %zuiNewSdsFromValue.exit344

bb.ch:                                            ; preds = %bb.cf
  %i.jt = load i64, ptr %i.im, align 8, !tbaa !193
  %i.ju = call ptr @sdsfromlonglong(i64 noundef %i.jt) #17
  br label %zuiNewSdsFromValue.exit344

zuiNewSdsFromValue.exit344:                       ; preds = %bb.cc, %bb.ce, %bb.cg, %bb.ch
  %.0.i341 = phi ptr [ %i.jm, %bb.cc ], [ %i.jo, %bb.ce ], [ %i.js, %bb.cg ], [ %i.ju, %bb.ch ] ; 11 uses
  %i.jv = getelementptr i8, ptr %.0.i341, i64 -1
  %.val.i345 = load i8, ptr %i.jv, align 1, !tbaa !36 ; 3 uses
  %i.jw = and i8 %.val.i345, 7                    ; 2 uses
  switch i8 %i.jw, label %sdslen.exit350.thread [
    i8 0, label %sdslen.exit347.thread
    i8 1, label %sdslen.exit347.thread390
    i8 2, label %sdslen.exit347.thread392
    i8 3, label %sdslen.exit347.thread394
    i8 4, label %sdslen.exit347.thread396
  ]

sdslen.exit347.thread:                            ; preds = %zuiNewSdsFromValue.exit344
  %i.jx = lshr i8 %.val.i345, 3
  %i.jy = zext nneg i8 %i.jx to i64
  br label %sdslen.exit350

sdslen.exit347.thread390:                         ; preds = %zuiNewSdsFromValue.exit344
  %i.jz = getelementptr inbounds i8, ptr %.0.i341, i64 -3
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !36
  %i.kb = zext i8 %i.ka to i64
  br label %sdslen.exit350

sdslen.exit347.thread392:                         ; preds = %zuiNewSdsFromValue.exit344
  %i.kc = getelementptr inbounds i8, ptr %.0.i341, i64 -5
  %i.kd = load i16, ptr %i.kc, align 1, !tbaa !37
  %i.ke = zext i16 %i.kd to i64
  br label %sdslen.exit350

sdslen.exit347.thread394:                         ; preds = %zuiNewSdsFromValue.exit344
  %i.kf = getelementptr inbounds i8, ptr %.0.i341, i64 -9
  %i.kg = load i32, ptr %i.kf, align 1, !tbaa !9
  %i.kh = zext i32 %i.kg to i64
  br label %sdslen.exit350

sdslen.exit347.thread396:                         ; preds = %zuiNewSdsFromValue.exit344
  %i.ki = getelementptr inbounds i8, ptr %.0.i341, i64 -17
  %i.kj = load i64, ptr %i.ki, align 1, !tbaa !24
  br label %sdslen.exit350

sdslen.exit350:                                   ; preds = %sdslen.exit347.thread, %sdslen.exit347.thread390, %sdslen.exit347.thread392, %sdslen.exit347.thread394, %sdslen.exit347.thread396
  %.sink574 = phi i64 [ %i.jy, %sdslen.exit347.thread ], [ %i.kb, %sdslen.exit347.thread390 ], [ %i.ke, %sdslen.exit347.thread392 ], [ %i.kh, %sdslen.exit347.thread394 ], [ %i.kj, %sdslen.exit347.thread396 ] ; 2 uses
  %i.kk = load i64, ptr %i.c, align 8, !tbaa !24
  %i.kl = add i64 %i.kk, %.sink574
  store i64 %i.kl, ptr %i.c, align 8, !tbaa !24
  %i.km = load i64, ptr %i.b, align 8, !tbaa !24
  %i.kn = icmp ugt i64 %.sink574, %i.km
  br i1 %i.kn, label %bb.ci, label %sdslen.exit350.thread

bb.ci:                                            ; preds = %sdslen.exit350
  switch i8 %i.jw, label %default.unreachable399 [
    i8 0, label %bb.cj
    i8 1, label %bb.ck
    i8 2, label %bb.cl
    i8 3, label %bb.cm
    i8 4, label %bb.cn
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.ko = lshr i8 %.val.i345, 3
  %i.kp = zext nneg i8 %i.ko to i64
  br label %sdslen.exit353

bb.ck:                                            ; preds = %bb.ci
  %i.kq = getelementptr inbounds i8, ptr %.0.i341, i64 -3
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !36
  %i.ks = zext i8 %i.kr to i64
  br label %sdslen.exit353

bb.cl:                                            ; preds = %bb.ci
  %i.kt = getelementptr inbounds i8, ptr %.0.i341, i64 -5
  %i.ku = load i16, ptr %i.kt, align 1, !tbaa !37
  %i.kv = zext i16 %i.ku to i64
  br label %sdslen.exit353

bb.cm:                                            ; preds = %bb.ci
  %i.kw = getelementptr inbounds i8, ptr %.0.i341, i64 -9
  %i.kx = load i32, ptr %i.kw, align 1, !tbaa !9
  %i.ky = zext i32 %i.kx to i64
  br label %sdslen.exit353

bb.cn:                                            ; preds = %bb.ci
  %i.kz = getelementptr inbounds i8, ptr %.0.i341, i64 -17
  %i.la = load i64, ptr %i.kz, align 1, !tbaa !24
  br label %sdslen.exit353

default.unreachable399:                           ; preds = %bb.ci
  unreachable

sdslen.exit353:                                   ; preds = %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn
  %.0.i352 = phi i64 [ %i.la, %bb.cn ], [ %i.kp, %bb.cj ], [ %i.ks, %bb.ck ], [ %i.kv, %bb.cl ], [ %i.ky, %bb.cm ]
  store i64 %.0.i352, ptr %i.b, align 8, !tbaa !24
  br label %sdslen.exit350.thread

sdslen.exit350.thread:                            ; preds = %zuiNewSdsFromValue.exit344, %sdslen.exit353, %sdslen.exit350
  %i.lb = load ptr, ptr %i.in, align 8, !tbaa !103
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %sdslen.exit350.thread
  %.0.i354 = phi i32 [ 1, %sdslen.exit350.thread ], [ %i.le, %bb.co ] ; 2 uses
  %i.lc = call i64 @random() #17
  %i.ld = icmp slt i64 %i.lc, 536870911
  %i.le = add nuw nsw i32 %.0.i354, 1
  br i1 %i.ld, label %bb.co, label %zslRandomLevel.exit, !llvm.loop !35

zslRandomLevel.exit:                              ; preds = %bb.co
  %i.lf = call range(i32 0, 33) i32 @llvm.umin.i32(i32 %.0.i354, i32 32)
  %i.lg = call fastcc ptr @zslCreateNode(ptr noundef %i.lb, i32 noundef %i.lf, double noundef %spec.store.select15, ptr noundef nonnull %.0.i341)
  %i.lh = load ptr, ptr %.0258, align 8, !tbaa !107
  call void @dictSetKeyAtLink(ptr noundef %i.lh, ptr noundef %i.lg, ptr noundef nonnull %i.g, i32 noundef 1) #17
  call void @sdsfree(ptr noundef nonnull %.0.i341) #17
  br label %bb.ct

bb.cp:                                            ; preds = %zuiSdsFromValue.exit
  %i.li = load ptr, ptr %i.ji, align 8, !tbaa !139
  %i.lj = call ptr @dictGetKey(ptr noundef %i.li) #17 ; 2 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !16 ; 5 uses
  switch i32 %.3262, label %bb.cs [
    i32 1, label %bb.cq
    i32 2, label %bb.cr
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.ll = fadd double %spec.store.select15, %i.lk ; 2 uses
  %.inv.i356 = fcmp ord double %i.ll, 0.000000e+00
  %spec.store.select.i357 = select i1 %.inv.i356, double %i.ll, double 0.000000e+00
  br label %zunionInterAggregate.exit360

bb.cr:                                            ; preds = %bb.cp
  %i.lm = fcmp olt double %spec.store.select15, %i.lk
  %..i355 = select i1 %i.lm, double %spec.store.select15, double %i.lk
  br label %zunionInterAggregate.exit360

bb.cs:                                            ; preds = %bb.cp
  %i.ln = fcmp ogt double %spec.store.select15, %i.lk
  %.20.i359 = select i1 %i.ln, double %spec.store.select15, double %i.lk
  br label %zunionInterAggregate.exit360

zunionInterAggregate.exit360:                     ; preds = %bb.cq, %bb.cr, %bb.cs
  %spec.store.select.sink.i355 = phi double [ %spec.store.select.i357, %bb.cq ], [ %..i355, %bb.cr ], [ %.20.i359, %bb.cs ]
  store double %spec.store.select.sink.i355, ptr %i.lj, align 8, !tbaa !16
  br label %bb.ct

bb.ct:                                            ; preds = %zunionInterAggregate.exit360, %zslRandomLevel.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  %i.lo = call i32 @zuiNext(ptr noundef nonnull %i.io, ptr noundef nonnull %5)
  %.not301 = icmp eq i32 %i.lo, 0
  br i1 %.not301, label %._crit_edge444, label %bb.bw, !llvm.loop !211

._crit_edge444:                                   ; preds = %bb.ct, %bb.bv
  call void @zuiClearIterator(ptr noundef %i.io)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.bu, %._crit_edge444
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1 ; 2 uses
  %i.lp = load i64, ptr %i.a, align 8, !tbaa !24
  %i.lq = icmp sgt i64 %i.lp, %indvars.iv.next515
  br i1 %i.lq, label %bb.bu, label %._crit_edge448, !llvm.loop !212

._crit_edge448:                                   ; preds = %bb.cu, %bb.bs, %bb.bt
  %i.lr = load ptr, ptr %.0258, align 8, !tbaa !107
  call void @dictInitIterator(ptr noundef nonnull %6, ptr noundef %i.lr) #17
  %i.ls = call ptr @dictNext(ptr noundef nonnull %6) #17 ; 2 uses
  %.not300449 = icmp eq ptr %i.ls, null
  br i1 %.not300449, label %._crit_edge452, label %.lr.ph451

.lr.ph451:                                        ; preds = %._crit_edge448
  %i.lt = getelementptr inbounds nuw i8, ptr %.0258, i64 8
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph451, %bb.cv
  %i.lu = phi ptr [ %i.ls, %.lr.ph451 ], [ %i.lx, %bb.cv ]
  %i.lv = call ptr @dictGetKey(ptr noundef nonnull %i.lu) #17
  %i.lw = load ptr, ptr %i.lt, align 8, !tbaa !103
  call fastcc void @zslInsertNode(ptr noundef %i.lw, ptr noundef %i.lv)
  %i.lx = call ptr @dictNext(ptr noundef nonnull %6) #17 ; 2 uses
  %.not300 = icmp eq ptr %i.lx, null
  br i1 %.not300, label %._crit_edge452, label %bb.cv, !llvm.loop !213

._crit_edge452:                                   ; preds = %bb.cv, %._crit_edge448
  call void @dictResetIterator(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.cy

bb.cw:                                            ; preds = %bb.br
  %i.ly = load i64, ptr %i.a, align 8, !tbaa !24
  call fastcc void @zdiff(ptr noundef %i.ab, i64 noundef %i.ly, ptr noundef %.0258, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.cy

bb.cx:                                            ; preds = %bb.br
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 3113, ptr noundef nonnull @.str.48) #17
  call void @abort() #18
  unreachable

bb.cy:                                            ; preds = %._crit_edge452, %bb.cw, %bb.am, %bb.bq
  %.4 = phi i64 [ %.3254, %bb.bq ], [ 0, %bb.am ], [ 0, %._crit_edge452 ], [ 0, %bb.cw ]
  %i.lz = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !167
  %.not308 = icmp ne i32 %i.lz, 0
  %i.ma = load i64, ptr %i.a, align 8             ; 2 uses
  %i.mb = icmp sgt i64 %i.ma, 0
  %or.cond490 = select i1 %.not308, i1 %i.mb, i1 false
  br i1 %or.cond490, label %.lr.ph483, label %.loopexit

.lr.ph483:                                        ; preds = %bb.cy
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.cz

bb.cz:                                            ; preds = %.lr.ph483, %bb.db
  %i.md = phi i64 [ %i.ma, %.lr.ph483 ], [ %i.mn, %bb.db ]
  %indvars.iv520 = phi i64 [ 0, %.lr.ph483 ], [ %indvars.iv.next521, %bb.db ] ; 2 uses
  %i.me = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %indvars.iv520 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !186 ; 4 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mh = load ptr, ptr %i.mc, align 8, !tbaa !166
  %i.mi = call ptr @kvobjGetKey(ptr noundef nonnull %i.mf) #17
  %i.mj = call i32 @getKeySlot(ptr noundef %i.mi) #17
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !205
  %i.mm = call i64 @kvobjAllocSize(ptr noundef nonnull %i.mf) #17
  call void @updateSlotAllocSize(ptr noundef %i.mh, i32 noundef %i.mj, ptr noundef nonnull %i.mf, i64 noundef %i.ml, i64 noundef %i.mm) #17
  %.pre524 = load i64, ptr %i.a, align 8, !tbaa !24
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %i.mn = phi i64 [ %i.md, %bb.cz ], [ %.pre524, %bb.da ] ; 2 uses
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 2 uses
  %i.mo = icmp sgt i64 %i.mn, %indvars.iv.next521
  br i1 %i.mo, label %bb.cz, label %.loopexit, !llvm.loop !214

.loopexit:                                        ; preds = %bb.db, %bb.cy
  %.not309 = icmp eq ptr %1, null
  br i1 %.not309, label %bb.dh, label %bb.dc

bb.dc:                                            ; preds = %.loopexit
  %i.mp = getelementptr inbounds nuw i8, ptr %.0258, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !103
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !23
  %.not313 = icmp eq i64 %i.ms, 0
  br i1 %.not313, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mt = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.mu = load i64, ptr %i.b, align 8, !tbaa !24
  %i.mv = load i64, ptr %i.c, align 8, !tbaa !24
  call void @zsetConvertToListpackIfNeeded(ptr noundef %i.mt, i64 noundef %i.mu, i64 noundef %i.mv)
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !166
  call void @setKey(ptr noundef %0, ptr noundef %i.mx, ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 0) #17
  %i.my = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.mz = call i64 @zsetLength(ptr noundef %i.my)
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.mz) #17
  %i.na = icmp eq i32 %3, 0
  %i.nb = select i1 %i.ef, ptr @.str.50, ptr @.str.51
  %i.nc = select i1 %i.na, ptr @.str.49, ptr %i.nb
  %i.nd = load ptr, ptr %i.mw, align 8, !tbaa !166
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 72
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !170
  call void @notifyKeyspaceEvent(i32 noundef 128, ptr noundef nonnull %i.nc, ptr noundef nonnull %1, i32 noundef %i.nf) #17
  %i.ng = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !169
  %i.nh = add nsw i64 %i.ng, 1
  store i64 %i.nh, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !169
  br label %bb.eb

bb.de:                                            ; preds = %bb.dc
  %i.ni = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !173
  call void @addReply(ptr noundef %0, ptr noundef %i.ni) #17
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !166
  %i.nl = call i32 @dbDelete(ptr noundef %i.nk, ptr noundef nonnull %1) #17
  %.not314 = icmp eq i32 %i.nl, 0
  br i1 %.not314, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nm = load ptr, ptr %i.nj, align 8, !tbaa !166
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.nm, ptr noundef nonnull %1, ptr noundef null, i32 noundef 1) #17
  %i.nn = load ptr, ptr %i.nj, align 8, !tbaa !166
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  %i.np = load i32, ptr %i.no, align 8, !tbaa !170
  call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef nonnull %1, i32 noundef %i.np) #17
  %i.nq = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !169
  %i.nr = add nsw i64 %i.nq, 1
  store i64 %i.nr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !169
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.ns = load ptr, ptr %i.d, align 8, !tbaa !162
  call void @decrRefCount(ptr noundef %i.ns) #17
  br label %bb.eb

bb.dh:                                            ; preds = %.loopexit
  br i1 %i.eb, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %.4) #17
  br label %bb.eb

bb.dj:                                            ; preds = %bb.dh
  %i.nt = getelementptr inbounds nuw i8, ptr %.0258, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !103 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !23 ; 3 uses
  %i.nx = load ptr, ptr %i.nu, align 8, !tbaa !28
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !31 ; 5 uses
  br i1 %.2257, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !215
  %i.oc = icmp eq i32 %i.ob, 2
  br i1 %i.oc, label %.thread555, label %.thread557

bb.dl:                                            ; preds = %bb.dj
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.nw) #17
  %.not311484 = icmp eq ptr %i.nz, null
  br i1 %.not311484, label %._crit_edge488, label %.critedge323.us

.thread557:                                       ; preds = %bb.dk
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.nw) #17
  %.not311484558 = icmp eq ptr %i.nz, null
  br i1 %.not311484558, label %._crit_edge488, label %.lr.ph487.split.preheader

.thread555:                                       ; preds = %bb.dk
  %i.od = shl i64 %i.nw, 1
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.od) #17
  %.not311484556 = icmp eq ptr %i.nz, null
  br i1 %.not311484556, label %._crit_edge488, label %.lr.ph487.split.preheader

.lr.ph487.split.preheader:                        ; preds = %.thread555, %.thread557
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.lr.ph487.split

.critedge323.us:                                  ; preds = %bb.dl, %sdslen.exit366.us
  %.0485.us = phi ptr [ %i.oz, %sdslen.exit366.us ], [ %i.nz, %bb.dl ] ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.0485.us, i64 24
  %i.og = load i16, ptr %i.of, align 2, !tbaa !13
  %i.oh = zext i16 %i.og to i64
end_hunk_1
