begin_hunk_0_@stencil_calc:bb.a
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !25 ; 2 uses
  %i.de = mul nuw nsw i64 %indvars.iv360, %i.i
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.de ; 2 uses
  %.phi.trans.insert419 = getelementptr i8, ptr %i.cz, i64 8
  %.pre420 = load double, ptr %.phi.trans.insert419, align 8, !tbaa !27 ; 2 uses
  br i1 %min.iters.check552, label %scalar.ph551.preheader, label %vector.ph553

vector.ph553:                                     ; preds = %.preheader250
  %vector.recur.init558 = insertelement <2 x double> poison, double %.pre420, i64 1
  br label %vector.body556

vector.body556:                                   ; preds = %vector.body556, %vector.ph553
  %index557 = phi i64 [ 0, %vector.ph553 ], [ %index.next566, %vector.body556 ] ; 3 uses
  %vector.recur559 = phi <2 x double> [ %vector.recur.init558, %vector.ph553 ], [ %wide.load563, %vector.body556 ]
  %i.dg = or disjoint i64 %index557, 1            ; 6 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dg
  %wide.load560 = load <2 x double>, ptr %i.dh, align 8, !tbaa !27
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dg
  %wide.load561 = load <2 x double>, ptr %i.di, align 8, !tbaa !27
  %i.dj = fadd <2 x double> %wide.load560, %wide.load561
  %i.dk = getelementptr [8 x i8], ptr %i.cz, i64 %i.dg
  %i.dl = getelementptr i8, ptr %i.dk, i64 -8
  %wide.load562 = load <2 x double>, ptr %i.dl, align 8, !tbaa !27
  %i.dm = fadd <2 x double> %i.dj, %wide.load562
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index557
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load563 = load <2 x double>, ptr %i.do, align 8, !tbaa !27 ; 4 uses
  %i.dp = shufflevector <2 x double> %vector.recur559, <2 x double> %wide.load563, <2 x i32> <i32 1, i32 2>
  %i.dq = fadd <2 x double> %i.dm, %i.dp
  %i.dr = fadd <2 x double> %i.dq, %wide.load563
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dg
  %wide.load564 = load <2 x double>, ptr %i.ds, align 8, !tbaa !27
  %i.dt = fadd <2 x double> %i.dr, %wide.load564
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dg
  %wide.load565 = load <2 x double>, ptr %i.du, align 8, !tbaa !27
  %i.dv = fadd <2 x double> %i.dt, %wide.load565
  %i.dw = fdiv <2 x double> %i.dv, splat (double 7.000000e+00)
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dg
  store <2 x double> %i.dw, ptr %i.dx, align 8, !tbaa !27
  %index.next566 = add nuw i64 %index557, 2       ; 2 uses
  %i.dy = icmp eq i64 %index.next566, %n.vec555
  br i1 %i.dy, label %middle.block567, label %vector.body556, !llvm.loop !29

middle.block567:                                  ; preds = %vector.body556
  %vector.recur.extract568 = extractelement <2 x double> %wide.load563, i64 1
  br i1 %cmp.n569, label %._crit_edge291, label %scalar.ph551.preheader

scalar.ph551.preheader:                           ; preds = %.preheader250, %middle.block567
  %.ph = phi double [ %.pre420, %.preheader250 ], [ %vector.recur.extract568, %middle.block567 ]
  %indvars.iv355.ph = phi i64 [ 1, %.preheader250 ], [ %i.bt, %middle.block567 ]
  br label %scalar.ph551

scalar.ph551:                                     ; preds = %scalar.ph551.preheader, %scalar.ph551
  %i.dz = phi double [ %i.el, %scalar.ph551 ], [ %.ph, %scalar.ph551.preheader ]
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %scalar.ph551 ], [ %indvars.iv355.ph, %scalar.ph551.preheader ] ; 7 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv355
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !27
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv355
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !27
  %i.ee = fadd double %i.eb, %i.ed
  %i.ef = getelementptr [8 x i8], ptr %i.cz, i64 %indvars.iv355
  %i.eg = getelementptr i8, ptr %i.ef, i64 -8
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !27
  %i.ei = fadd double %i.ee, %i.eh
  %i.ej = fadd double %i.ei, %i.dz
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1 ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next356
  %i.el = load double, ptr %i.ek, align 8, !tbaa !27 ; 2 uses
  %i.em = fadd double %i.ej, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv355
  %i.eo = load double, ptr %i.en, align 8, !tbaa !27
  %i.ep = fadd double %i.em, %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv355
  %i.er = load double, ptr %i.eq, align 8, !tbaa !27
  %i.es = fadd double %i.ep, %i.er
  %i.et = fdiv double %i.es, 7.000000e+00
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv355
  store double %i.et, ptr %i.eu, align 8, !tbaa !27
  %exitcond359.not = icmp eq i64 %indvars.iv.next356, %wide.trip.count358
  br i1 %exitcond359.not, label %._crit_edge291, label %scalar.ph551, !llvm.loop !33

._crit_edge291:                                   ; preds = %scalar.ph551, %middle.block567
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %._crit_edge294.split, label %.preheader250, !llvm.loop !34

._crit_edge294.split:                             ; preds = %._crit_edge291
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %exitcond369.not = icmp eq i64 %indvars.iv.next366, %wide.trip.count368
  br i1 %exitcond369.not, label %.preheader253, label %.preheader252, !llvm.loop !35

.preheader251:                                    ; preds = %.preheader251.lr.ph.split.split, %._crit_edge306.split
  %indvars.iv384 = phi i64 [ 1, %.preheader251.lr.ph.split.split ], [ %indvars.iv.next385, %._crit_edge306.split ] ; 2 uses
  %indvar371 = phi i64 [ 0, %.preheader251.lr.ph.split.split ], [ %indvar.next372, %._crit_edge306.split ] ; 2 uses
  %i.ev = mul i64 %i.bm, %indvar371
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv384
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !23 ; 3 uses
  %i.ey = getelementptr i8, ptr %i.br, i64 %i.ev  ; 3 uses
  br i1 %i.bv, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader251, %.preheader
  %indvars.iv379 = phi i64 [ %indvars.iv.next380.1, %.preheader ], [ 1, %.preheader251 ] ; 3 uses
  %indvar373 = phi i64 [ %indvar.next374.1, %.preheader ], [ 0, %.preheader251 ] ; 3 uses
  %niter588 = phi i64 [ %niter588.next.1, %.preheader ], [ 0, %.preheader251 ]
  %i.ez = mul i64 %i.bn, %indvar373
  %scevgep375 = getelementptr i8, ptr %i.ey, i64 %i.ez
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv379
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !25
  %scevgep370 = getelementptr nuw i8, ptr %i.fb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep370, ptr align 8 %scevgep375, i64 %i.bp, i1 false), !tbaa !27
  %indvar.next374 = or disjoint i64 %indvar373, 1
  %i.fc = mul i64 %i.bn, %indvar.next374
  %scevgep375.1 = getelementptr i8, ptr %i.ey, i64 %i.fc
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv379
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !25
  %scevgep370.1 = getelementptr nuw i8, ptr %i.ff, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep370.1, ptr align 8 %scevgep375.1, i64 %i.bp, i1 false), !tbaa !27
  %indvars.iv.next380.1 = add nuw nsw i64 %indvars.iv379, 2 ; 2 uses
  %indvar.next374.1 = add nuw nsw i64 %indvar373, 2 ; 2 uses
  %niter588.next.1 = add i64 %niter588, 2         ; 2 uses
  %niter588.ncmp.1 = icmp eq i64 %niter588.next.1, %unroll_iter587
  br i1 %niter588.ncmp.1, label %._crit_edge306.split.unr-lcssa, label %.preheader, !llvm.loop !36

._crit_edge306.split.unr-lcssa:                   ; preds = %.preheader
  br i1 %lcmp.mod585.not, label %._crit_edge306.split, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge306.split.unr-lcssa, %.preheader251
  %indvars.iv379.epil.init = phi i64 [ 1, %.preheader251 ], [ %indvars.iv.next380.1, %._crit_edge306.split.unr-lcssa ]
  %indvar373.epil.init = phi i64 [ 0, %.preheader251 ], [ %indvar.next374.1, %._crit_edge306.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod586)
  %i.fg = mul i64 %i.bn, %indvar373.epil.init
  %scevgep375.epil = getelementptr i8, ptr %i.ey, i64 %i.fg
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv379.epil.init
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !25
  %scevgep370.epil = getelementptr nuw i8, ptr %i.fi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep370.epil, ptr align 8 %scevgep375.epil, i64 %i.bp, i1 false), !tbaa !27
  br label %._crit_edge306.split

._crit_edge306.split:                             ; preds = %._crit_edge306.split.unr-lcssa, %.preheader.epil.preheader
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1
  %indvar.next372 = add nuw nsw i64 %indvar371, 1 ; 2 uses
  %exitcond388.not = icmp eq i64 %indvar.next372, %wide.trip.count387
  br i1 %exitcond388.not, label %.loopexit, label %.preheader251, !llvm.loop !37

.loopexit:                                        ; preds = %._crit_edge306.split, %bb.b, %.preheader253
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390, %wide.trip.count392
  br i1 %exitcond393.not, label %.loopexit256, label %bb.b, !llvm.loop !38

bb.c:                                             ; preds = %.lr.ph, %.loopexit262
  %indvars.iv350 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next351, %.loopexit262 ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv350
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !12
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [192 x i8], ptr %i.w, i64 %i.fm ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !14
  %i.fp = icmp slt i32 %i.fo, 0
  %brmerge439 = select i1 %i.fp, i1 true, i1 %.not271
  %i.fq = select i1 %brmerge439, i1 true, i1 %.not242268
  %or.cond573 = select i1 %i.fq, i1 true, i1 %.not243266
  br i1 %or.cond573, label %.loopexit262, label %.preheader260.lr.ph.split.split

.preheader260.lr.ph.split.split:                  ; preds = %bb.c
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 184
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !20
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.x
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !21
  br label %.preheader260

.preheader261:                                    ; preds = %._crit_edge270.split
  br i1 %or.cond574, label %.loopexit262, label %.preheader259.lr.ph.split.split

.preheader259.lr.ph.split.split:                  ; preds = %.preheader261
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 184
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !20
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.x
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !21
  br label %.preheader259

.preheader260:                                    ; preds = %.preheader260.lr.ph.split.split, %._crit_edge270.split
  %indvar443 = phi i64 [ 0, %.preheader260.lr.ph.split.split ], [ %indvar.next444, %._crit_edge270.split ] ; 2 uses
  %indvars.iv329 = phi i64 [ 1, %.preheader260.lr.ph.split.split ], [ %indvars.iv.next330, %._crit_edge270.split ] ; 3 uses
  %i.fz = mul i64 %i.ao, %indvar443               ; 2 uses
  %scevgep445 = getelementptr i8, ptr %i.ax, i64 %i.fz ; 2 uses
  %scevgep446 = getelementptr i8, ptr %i.az, i64 %i.fz ; 2 uses
  %i.ga = mul nuw nsw i64 %i.j, %indvars.iv329
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ga
  %i.gc = getelementptr [8 x i8], ptr %i.fu, i64 %indvars.iv329 ; 3 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 -8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !23 ; 3 uses
  %i.gf = load ptr, ptr %i.gc, align 8, !tbaa !23 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !23 ; 3 uses
  %.pre = load ptr, ptr %i.ge, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.pre394 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25 ; 3 uses
  %.pre395 = load ptr, ptr %i.gf, align 8, !tbaa !25
  %.phi.trans.insert396 = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %.pre397 = load ptr, ptr %.phi.trans.insert396, align 8, !tbaa !25 ; 3 uses
  %.pre398 = load ptr, ptr %i.gh, align 8, !tbaa !25
  %.phi.trans.insert399 = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.pre400 = load ptr, ptr %.phi.trans.insert399, align 8, !tbaa !25 ; 3 uses
  %.pre401.pre = load double, ptr %.pre394, align 8, !tbaa !27
  %.phi.trans.insert402.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre394, i64 8
  %.pre403.pre = load double, ptr %.phi.trans.insert402.phi.trans.insert, align 8, !tbaa !27
  %.pre403.pre.a = load double, ptr %.pre397, align 8, !tbaa !27
  %.phi.trans.insert408.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre397, i64 8
  %.pre409.pre = load double, ptr %.phi.trans.insert408.phi.trans.insert, align 8, !tbaa !27
  %.pre413.pre = load double, ptr %.pre400, align 8, !tbaa !27
  %.phi.trans.insert414.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre400, i64 8
  %.pre415.pre = load double, ptr %.phi.trans.insert414.phi.trans.insert, align 8, !tbaa !27
  %i.gi = insertelement <8 x ptr> poison, ptr %scevgep445, i64 0
  %i.gj = shufflevector <8 x ptr> %i.gi, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.gk = insertelement <8 x ptr> poison, ptr %scevgep446, i64 0
  %i.gl = shufflevector <8 x ptr> %i.gk, <8 x ptr> poison, <8 x i32> zeroinitializer
  br label %.preheader258

.preheader258:                                    ; preds = %.preheader260, %._crit_edge
  %.pre415 = phi double [ %.pre415.pre, %.preheader260 ], [ %.pre418, %._crit_edge ] ; 3 uses
  %.pre413 = phi double [ %.pre413.pre, %.preheader260 ], [ %.pre416, %._crit_edge ] ; 3 uses
  %.pre403.a = phi double [ %.pre409.pre, %.preheader260 ], [ %.pre412, %._crit_edge ] ; 3 uses
  %.pre401.a = phi double [ %.pre403.pre.a, %.preheader260 ], [ %.pre418.a, %._crit_edge ] ; 3 uses
  %.pre403 = phi double [ %.pre403.pre, %.preheader260 ], [ %.pre412.a, %._crit_edge ] ; 3 uses
  %.pre401 = phi double [ %.pre401.pre, %.preheader260 ], [ %.pre406.a, %._crit_edge ] ; 3 uses
  %i.gm = phi ptr [ %.pre400, %.preheader260 ], [ %i.gv, %._crit_edge ] ; 5 uses
  %i.gn = phi ptr [ %.pre398, %.preheader260 ], [ %i.gm, %._crit_edge ] ; 8 uses
  %i.go = phi ptr [ %.pre397, %.preheader260 ], [ %i.gt, %._crit_edge ] ; 5 uses
  %i.gp = phi ptr [ %.pre395, %.preheader260 ], [ %i.go, %._crit_edge ] ; 8 uses
  %1 = phi ptr [ %.pre394, %.preheader260 ], [ %i.gr, %._crit_edge ] ; 5 uses
  %2 = phi ptr [ %.pre, %.preheader260 ], [ %1, %._crit_edge ] ; 8 uses
  %indvars.iv324 = phi i64 [ 1, %.preheader260 ], [ %indvars.iv.next325, %._crit_edge ] ; 2 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 5 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next325
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !25 ; 7 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next325
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !25 ; 7 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next325
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !25 ; 7 uses
  %i.gw = mul nuw nsw i64 %indvars.iv324, %i.i
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gw ; 2 uses
  %.pre406.a = load double, ptr %i.gr, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert417.a = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.pre412.a = load double, ptr %.phi.trans.insert417.a, align 8, !tbaa !27 ; 4 uses
  %.pre418.a = load double, ptr %i.gt, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert411 = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.pre412 = load double, ptr %.phi.trans.insert411, align 8, !tbaa !27 ; 4 uses
  %.pre416 = load double, ptr %i.gv, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert417 = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.pre418 = load double, ptr %.phi.trans.insert417, align 8, !tbaa !27 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader258
  %scevgep447 = getelementptr nuw i8, ptr %1, i64 16
  %scevgep448 = getelementptr i8, ptr %1, i64 %i.au
  %scevgep449 = getelementptr i8, ptr %2, i64 %i.au
  %i.gy = insertelement <2 x ptr> poison, ptr %i.gr, i64 0
  %i.gz = insertelement <2 x ptr> %i.gy, ptr %i.go, i64 1
  %i.ha = getelementptr i8, <2 x ptr> %i.gz, i64 16
  %scevgep451 = getelementptr i8, ptr %i.gr, i64 %i.au
  %scevgep453 = getelementptr i8, ptr %i.go, i64 %i.au
  %scevgep454 = getelementptr i8, ptr %i.gp, i64 %i.au
  %scevgep455 = getelementptr i8, ptr %i.gt, i64 16
  %scevgep456 = getelementptr i8, ptr %i.gt, i64 %i.au
  %scevgep457 = getelementptr i8, ptr %i.gm, i64 16
  %scevgep458 = getelementptr i8, ptr %i.gm, i64 %i.au
  %scevgep459 = getelementptr i8, ptr %i.gn, i64 %i.au
  %scevgep460 = getelementptr i8, ptr %i.gv, i64 16
  %scevgep461 = getelementptr i8, ptr %i.gv, i64 %i.au
  %i.hb = insertelement <8 x ptr> poison, ptr %scevgep448, i64 0
  %i.hc = insertelement <8 x ptr> %i.hb, ptr %scevgep449, i64 1
  %i.hd = insertelement <8 x ptr> %i.hc, ptr %scevgep451, i64 2
  %i.he = insertelement <8 x ptr> %i.hd, ptr %scevgep453, i64 3
  %i.hf = insertelement <8 x ptr> %i.he, ptr %scevgep454, i64 4
  %i.hg = insertelement <8 x ptr> %i.hf, ptr %scevgep456, i64 5
  %i.hh = insertelement <8 x ptr> %i.hg, ptr %scevgep458, i64 6
  %i.hi = insertelement <8 x ptr> %i.hh, ptr %scevgep459, i64 7
  %i.hj = icmp ult <8 x ptr> %i.gj, %i.hi
  %i.hk = insertelement <8 x ptr> poison, ptr %scevgep447, i64 0
  %i.hl = insertelement <8 x ptr> %i.hk, ptr %2, i64 1
  %i.hm = shufflevector <2 x ptr> %i.ha, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hn = shufflevector <8 x ptr> %i.hl, <8 x ptr> %i.hm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ho = insertelement <8 x ptr> %i.hn, ptr %i.gp, i64 4
  %i.hp = insertelement <8 x ptr> %i.ho, ptr %scevgep455, i64 5
  %i.hq = insertelement <8 x ptr> %i.hp, ptr %scevgep457, i64 6
  %i.hr = insertelement <8 x ptr> %i.hq, ptr %i.gn, i64 7
  %i.hs = icmp ult <8 x ptr> %i.hr, %i.gl
  %i.ht = and <8 x i1> %i.hj, %i.hs
  %bound0489 = icmp ult ptr %scevgep445, %scevgep461
  %bound1490 = icmp ult ptr %scevgep460, %scevgep446
  %found.conflict491 = and i1 %bound0489, %bound1490
  %i.hu = bitcast <8 x i1> %i.ht to i8
  %i.hv = icmp ne i8 %i.hu, 0
  %op.rdx = or i1 %i.hv, %found.conflict491
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %vector.recur.init = insertelement <2 x double> poison, double %.pre418, i64 1
  %vector.recur.init493 = insertelement <2 x double> poison, double %.pre416, i64 1
  %vector.recur.init495 = insertelement <2 x double> poison, double %.pre415, i64 1
  %vector.recur.init497 = insertelement <2 x double> poison, double %.pre413, i64 1
  %vector.recur.init499 = insertelement <2 x double> poison, double %.pre412, i64 1
  %vector.recur.init501 = insertelement <2 x double> poison, double %.pre418.a, i64 1
  %vector.recur.init511.a = insertelement <2 x double> poison, double %.pre403.a, i64 1
  %vector.recur.init513.a = insertelement <2 x double> poison, double %.pre401.a, i64 1
  %vector.recur.init507 = insertelement <2 x double> poison, double %.pre412.a, i64 1
  %vector.recur.init509 = insertelement <2 x double> poison, double %.pre406.a, i64 1
  %vector.recur.init511 = insertelement <2 x double> poison, double %.pre403, i64 1
  %vector.recur.init513 = insertelement <2 x double> poison, double %.pre401, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <2 x double> [ %vector.recur.init, %vector.ph ], [ %wide.load528, %vector.body ] ; 2 uses
  %vector.recur494 = phi <2 x double> [ %vector.recur.init493, %vector.ph ], [ %i.js, %vector.body ]
  %vector.recur496 = phi <2 x double> [ %vector.recur.init495, %vector.ph ], [ %wide.load527, %vector.body ] ; 2 uses
  %vector.recur498 = phi <2 x double> [ %vector.recur.init497, %vector.ph ], [ %i.jm, %vector.body ]
  %vector.recur500 = phi <2 x double> [ %vector.recur.init499, %vector.ph ], [ %wide.load523, %vector.body ] ; 2 uses
  %vector.recur502 = phi <2 x double> [ %vector.recur.init501, %vector.ph ], [ %i.jb, %vector.body ]
  %vector.recur504 = phi <2 x double> [ %vector.recur.init511.a, %vector.ph ], [ %wide.load522, %vector.body ] ; 2 uses
  %vector.recur506 = phi <2 x double> [ %vector.recur.init513.a, %vector.ph ], [ %i.iv, %vector.body ]
  %vector.recur508 = phi <2 x double> [ %vector.recur.init507, %vector.ph ], [ %wide.load518, %vector.body ] ; 2 uses
  %vector.recur510 = phi <2 x double> [ %vector.recur.init509, %vector.ph ], [ %i.ik, %vector.body ]
  %vector.recur512 = phi <2 x double> [ %vector.recur.init511, %vector.ph ], [ %wide.load517, %vector.body ] ; 2 uses
  %vector.recur514 = phi <2 x double> [ %vector.recur.init513, %vector.ph ], [ %i.ie, %vector.body ]
  %i.hw = or disjoint i64 %index, 1               ; 4 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %2, i64 %index
  %wide.load = load <2 x double>, ptr %i.hx, align 8, !tbaa !27, !alias.scope !39
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hw
  %wide.load515 = load <2 x double>, ptr %i.hy, align 8, !tbaa !27, !alias.scope !39
  %i.hz = fadd <2 x double> %wide.load, %wide.load515
  %i.ia = add nuw nsw i64 %index, 2               ; 9 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ia
  %wide.load516 = load <2 x double>, ptr %i.ib, align 8, !tbaa !27, !alias.scope !39
  %i.ic = fadd <2 x double> %i.hz, %wide.load516
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ia
  %wide.load517 = load <2 x double>, ptr %i.id, align 8, !tbaa !27, !alias.scope !42 ; 5 uses
  %i.ie = shufflevector <2 x double> %vector.recur512, <2 x double> %wide.load517, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.if = shufflevector <2 x double> %vector.recur514, <2 x double> %vector.recur512, <2 x i32> <i32 1, i32 3>
  %i.ig = fadd <2 x double> %i.ic, %i.if
  %i.ih = fadd <2 x double> %i.ig, %i.ie
  %i.ii = fadd <2 x double> %i.ih, %wide.load517
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ia
  %wide.load518 = load <2 x double>, ptr %i.ij, align 8, !tbaa !27, !alias.scope !44 ; 5 uses
  %i.ik = shufflevector <2 x double> %vector.recur508, <2 x double> %wide.load518, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.il = shufflevector <2 x double> %vector.recur510, <2 x double> %vector.recur508, <2 x i32> <i32 1, i32 3>
  %i.im = fadd <2 x double> %i.ii, %i.il
  %i.in = fadd <2 x double> %i.im, %i.ik
  %i.io = fadd <2 x double> %i.in, %wide.load518
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %index
  %wide.load519 = load <2 x double>, ptr %i.ip, align 8, !tbaa !27, !alias.scope !46
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.hw
  %wide.load520 = load <2 x double>, ptr %i.iq, align 8, !tbaa !27, !alias.scope !46
  %i.ir = fadd <2 x double> %wide.load519, %wide.load520
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.ia
  %wide.load521 = load <2 x double>, ptr %i.is, align 8, !tbaa !27, !alias.scope !46
  %i.it = fadd <2 x double> %i.ir, %wide.load521
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.ia
  %wide.load522 = load <2 x double>, ptr %i.iu, align 8, !tbaa !27, !alias.scope !48 ; 5 uses
  %i.iv = shufflevector <2 x double> %vector.recur504, <2 x double> %wide.load522, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.iw = shufflevector <2 x double> %vector.recur506, <2 x double> %vector.recur504, <2 x i32> <i32 1, i32 3>
  %i.ix = fadd <2 x double> %i.it, %i.iw
  %i.iy = fadd <2 x double> %i.ix, %i.iv
  %i.iz = fadd <2 x double> %i.iy, %wide.load522
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.ia
  %wide.load523 = load <2 x double>, ptr %i.ja, align 8, !tbaa !27, !alias.scope !50 ; 5 uses
  %i.jb = shufflevector <2 x double> %vector.recur500, <2 x double> %wide.load523, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jc = shufflevector <2 x double> %vector.recur502, <2 x double> %vector.recur500, <2 x i32> <i32 1, i32 3>
  %i.jd = fadd <2 x double> %i.iz, %i.jc
  %i.je = fadd <2 x double> %i.jd, %i.jb
  %i.jf = fadd <2 x double> %i.je, %wide.load523
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %index
  %wide.load524 = load <2 x double>, ptr %i.jg, align 8, !tbaa !27, !alias.scope !52
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.hw
  %wide.load525 = load <2 x double>, ptr %i.jh, align 8, !tbaa !27, !alias.scope !52
  %i.ji = fadd <2 x double> %wide.load524, %wide.load525
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ia
  %wide.load526 = load <2 x double>, ptr %i.jj, align 8, !tbaa !27, !alias.scope !52
  %i.jk = fadd <2 x double> %i.ji, %wide.load526
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.ia
  %wide.load527 = load <2 x double>, ptr %i.jl, align 8, !tbaa !27, !alias.scope !54 ; 5 uses
  %i.jm = shufflevector <2 x double> %vector.recur496, <2 x double> %wide.load527, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jn = shufflevector <2 x double> %vector.recur498, <2 x double> %vector.recur496, <2 x i32> <i32 1, i32 3>
  %i.jo = fadd <2 x double> %i.jk, %i.jn
  %i.jp = fadd <2 x double> %i.jo, %i.jm
  %i.jq = fadd <2 x double> %i.jp, %wide.load527
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.ia
  %wide.load528 = load <2 x double>, ptr %i.jr, align 8, !tbaa !27, !alias.scope !56 ; 5 uses
  %i.js = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load528, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jt = shufflevector <2 x double> %vector.recur494, <2 x double> %vector.recur, <2 x i32> <i32 1, i32 3>
  %i.ju = fadd <2 x double> %i.jq, %i.jt
  %i.jv = fadd <2 x double> %i.ju, %i.js
  %i.jw = fadd <2 x double> %i.jv, %wide.load528
  %i.jx = fadd <2 x double> %i.io, %i.jf
  %i.jy = fadd <2 x double> %i.jx, %i.jw
  %i.jz = fdiv <2 x double> %i.jy, splat (double 2.700000e+01)
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.hw
  store <2 x double> %i.jz, ptr %i.ka, align 8, !tbaa !27, !alias.scope !58, !noalias !60
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kb = icmp eq i64 %index.next, %n.vec
  br i1 %i.kb, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x double> %wide.load528, i64 1
  %vector.recur.extract529 = extractelement <2 x double> %wide.load528, i64 0
  %vector.recur.extract530 = extractelement <2 x double> %wide.load527, i64 1
  %vector.recur.extract531 = extractelement <2 x double> %wide.load527, i64 0
  %vector.recur.extract532 = extractelement <2 x double> %wide.load523, i64 1
  %vector.recur.extract533 = extractelement <2 x double> %wide.load523, i64 0
  %vector.recur.extract534 = extractelement <2 x double> %wide.load522, i64 1
  %vector.recur.extract535 = extractelement <2 x double> %wide.load522, i64 0
  %vector.recur.extract536 = extractelement <2 x double> %wide.load518, i64 1
  %vector.recur.extract537 = extractelement <2 x double> %wide.load518, i64 0
  %vector.recur.extract538 = extractelement <2 x double> %wide.load517, i64 1
  %vector.recur.extract539 = extractelement <2 x double> %wide.load517, i64 0
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader258, %middle.block
  %.ph575 = phi double [ %.pre418, %vector.memcheck ], [ %.pre418, %.preheader258 ], [ %vector.recur.extract, %middle.block ]
  %.ph576 = phi double [ %.pre416, %vector.memcheck ], [ %.pre416, %.preheader258 ], [ %vector.recur.extract529, %middle.block ]
  %.ph577 = phi double [ %.pre415, %vector.memcheck ], [ %.pre415, %.preheader258 ], [ %vector.recur.extract530, %middle.block ]
  %.ph578 = phi double [ %.pre413, %vector.memcheck ], [ %.pre413, %.preheader258 ], [ %vector.recur.extract531, %middle.block ]
  %.ph579 = phi double [ %.pre412, %vector.memcheck ], [ %.pre412, %.preheader258 ], [ %vector.recur.extract532, %middle.block ]
  %.ph575.a = phi double [ %.pre418.a, %vector.memcheck ], [ %.pre418.a, %.preheader258 ], [ %vector.recur.extract533, %middle.block ]
  %.ph576.a = phi double [ %.pre403.a, %vector.memcheck ], [ %.pre403.a, %.preheader258 ], [ %vector.recur.extract534, %middle.block ]
  %.ph577.a = phi double [ %.pre401.a, %vector.memcheck ], [ %.pre401.a, %.preheader258 ], [ %vector.recur.extract535, %middle.block ]
  %.ph578.a = phi double [ %.pre412.a, %vector.memcheck ], [ %.pre412.a, %.preheader258 ], [ %vector.recur.extract536, %middle.block ]
  %.ph584 = phi double [ %.pre406.a, %vector.memcheck ], [ %.pre406.a, %.preheader258 ], [ %vector.recur.extract537, %middle.block ]
  %.ph585 = phi double [ %.pre403, %vector.memcheck ], [ %.pre403, %.preheader258 ], [ %vector.recur.extract538, %middle.block ]
  %.ph586 = phi double [ %.pre401, %vector.memcheck ], [ %.pre401, %.preheader258 ], [ %vector.recur.extract539, %middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader258 ], [ %i.ba, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %3 = phi double [ %51, %scalar.ph ], [ %.ph575, %scalar.ph.preheader ] ; 2 uses
  %i.kc = phi double [ %3, %scalar.ph ], [ %.ph576, %scalar.ph.preheader ]
  %i.kd = phi double [ %46, %scalar.ph ], [ %.ph577, %scalar.ph.preheader ] ; 2 uses
  %i.ke = phi double [ %i.kd, %scalar.ph ], [ %.ph578, %scalar.ph.preheader ]
  %i.kf = phi double [ %33, %scalar.ph ], [ %.ph579, %scalar.ph.preheader ] ; 2 uses
  %4 = phi double [ %i.kf, %scalar.ph ], [ %.ph575.a, %scalar.ph.preheader ]
  %5 = phi double [ %28, %scalar.ph ], [ %.ph576.a, %scalar.ph.preheader ] ; 2 uses
  %6 = phi double [ %5, %scalar.ph ], [ %.ph577.a, %scalar.ph.preheader ]
  %7 = phi double [ %i.kn, %scalar.ph ], [ %.ph578.a, %scalar.ph.preheader ] ; 2 uses
  %8 = phi double [ %7, %scalar.ph ], [ %.ph584, %scalar.ph.preheader ]
  %9 = phi double [ %i.kl, %scalar.ph ], [ %.ph585, %scalar.ph.preheader ] ; 2 uses
  %10 = phi double [ %9, %scalar.ph ], [ %.ph586, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv, -1 ; 3 uses
  %i.kg = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next.a
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !27
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !27
  %11 = fadd double %i.kh, %i.kj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 11 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %13 = load double, ptr %12, align 8, !tbaa !27
  %14 = fadd double %11, %13
  %15 = fadd double %14, %10
  %16 = fadd double %15, %9
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !27 ; 2 uses
  %17 = fadd double %16, %i.kl
  %18 = fadd double %17, %8
  %19 = fadd double %18, %7
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next
  %i.kn = load double, ptr %i.km, align 8, !tbaa !27 ; 2 uses
  %20 = fadd double %19, %i.kn
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %indvars.iv.next.a
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !27
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !27
  %21 = fadd double %i.kp, %i.kr
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next
  %23 = load double, ptr %22, align 8, !tbaa !27
  %24 = fadd double %21, %23
  %25 = fadd double %24, %6
  %26 = fadd double %25, %5
  %27 = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next
  %28 = load double, ptr %27, align 8, !tbaa !27  ; 2 uses
  %29 = fadd double %26, %28
  %30 = fadd double %29, %4
  %31 = fadd double %30, %i.kf
  %32 = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.next
  %33 = load double, ptr %32, align 8, !tbaa !27  ; 2 uses
  %34 = fadd double %31, %33
  %35 = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %indvars.iv.next.a
  %36 = load double, ptr %35, align 8, !tbaa !27
  %37 = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv
  %38 = load double, ptr %37, align 8, !tbaa !27
  %39 = fadd double %36, %38
  %40 = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next
  %41 = load double, ptr %40, align 8, !tbaa !27
  %42 = fadd double %39, %41
  %43 = fadd double %42, %i.ke
  %44 = fadd double %43, %i.kd
  %45 = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next
  %46 = load double, ptr %45, align 8, !tbaa !27  ; 2 uses
  %47 = fadd double %44, %46
  %48 = fadd double %47, %i.kc
  %49 = fadd double %48, %3
  %50 = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next
  %51 = load double, ptr %50, align 8, !tbaa !27  ; 2 uses
  %52 = fadd double %49, %51
  %53 = fadd double %20, %34
  %54 = fadd double %53, %52
  %55 = fdiv double %54, 2.700000e+01
  %56 = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv
  store double %55, ptr %56, align 8, !tbaa !27
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %._crit_edge270.split, label %.preheader258, !llvm.loop !63

._crit_edge270.split:                             ; preds = %._crit_edge
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count332
  %indvar.next444 = add i64 %indvar443, 1
  br i1 %exitcond333.not, label %.preheader261, label %.preheader260, !llvm.loop !64

.preheader259:                                    ; preds = %.preheader259.lr.ph.split.split, %._crit_edge281.split
  %indvars.iv345 = phi i64 [ 1, %.preheader259.lr.ph.split.split ], [ %indvars.iv.next346, %._crit_edge281.split ] ; 2 uses
  %indvar = phi i64 [ 0, %.preheader259.lr.ph.split.split ], [ %indvar.next, %._crit_edge281.split ] ; 2 uses
  %i.ks = mul i64 %i.ae, %indvar
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv345
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !23 ; 3 uses
  %i.kv = getelementptr i8, ptr %i.aj, i64 %i.ks  ; 3 uses
  br i1 %i.bc, label %.preheader257.epil.preheader, label %.preheader257

.preheader257:                                    ; preds = %.preheader259, %.preheader257
  %indvars.iv340 = phi i64 [ %indvars.iv.next341.1, %.preheader257 ], [ 1, %.preheader259 ] ; 3 uses
  %indvar334 = phi i64 [ %indvar.next335.1, %.preheader257 ], [ 0, %.preheader259 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader257 ], [ 0, %.preheader259 ]
  %i.kw = mul i64 %i.af, %indvar334
  %scevgep336 = getelementptr i8, ptr %i.kv, i64 %i.kw
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv340
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !25
  %scevgep = getelementptr nuw i8, ptr %i.ky, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %scevgep336, i64 %i.ah, i1 false), !tbaa !27
  %indvar.next335 = or disjoint i64 %indvar334, 1
  %i.kz = mul i64 %i.af, %indvar.next335
  %scevgep336.1 = getelementptr i8, ptr %i.kv, i64 %i.kz
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv340
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !25
  %scevgep.1 = getelementptr nuw i8, ptr %i.lc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.1, ptr align 8 %scevgep336.1, i64 %i.ah, i1 false), !tbaa !27
  %indvars.iv.next341.1 = add nuw nsw i64 %indvars.iv340, 2 ; 2 uses
  %indvar.next335.1 = add nuw nsw i64 %indvar334, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge281.split.unr-lcssa, label %.preheader257, !llvm.loop !65

._crit_edge281.split.unr-lcssa:                   ; preds = %.preheader257
  br i1 %lcmp.mod.not, label %._crit_edge281.split, label %.preheader257.epil.preheader

.preheader257.epil.preheader:                     ; preds = %._crit_edge281.split.unr-lcssa, %.preheader259
  %indvars.iv340.epil.init = phi i64 [ 1, %.preheader259 ], [ %indvars.iv.next341.1, %._crit_edge281.split.unr-lcssa ]
  %indvar334.epil.init = phi i64 [ 0, %.preheader259 ], [ %indvar.next335.1, %._crit_edge281.split.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod583)
  %i.ld = mul i64 %i.af, %indvar334.epil.init
  %scevgep336.epil = getelementptr i8, ptr %i.kv, i64 %i.ld
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv340.epil.init
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !25
  %scevgep.epil = getelementptr nuw i8, ptr %i.lf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.epil, ptr align 8 %scevgep336.epil, i64 %i.ah, i1 false), !tbaa !27
  br label %._crit_edge281.split

._crit_edge281.split:                             ; preds = %._crit_edge281.split.unr-lcssa, %.preheader257.epil.preheader
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond349.not = icmp eq i64 %indvar.next, %wide.trip.count348
  br i1 %exitcond349.not, label %.loopexit262, label %.preheader259, !llvm.loop !66

.loopexit262:                                     ; preds = %._crit_edge281.split, %bb.c, %.preheader261
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  %exitcond354.not = icmp eq i64 %indvars.iv.next351, %wide.trip.count353
  br i1 %exitcond354.not, label %.loopexit256, label %bb.c, !llvm.loop !67

.loopexit256:                                     ; preds = %.loopexit262, %.loopexit, %.preheader264, %.preheader255
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 int", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!13, !5, i64 4}
!13 = !{!"", !5, i64 0, !5, i64 4}
!14 = !{!15, !5, i64 0}
!15 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !6, i64 28, !6, i64 52, !6, i64 76, !6, i64 172, !16, i64 184}
!16 = !{!"p4 double", !17, i64 0}
!17 = !{!"any p4 pointer", !18, i64 0}
!18 = !{!"any p3 pointer", !19, i64 0}
!19 = !{!"any p2 pointer", !10, i64 0}
!20 = !{!15, !16, i64 184}
!21 = !{!22, !22, i64 0}
!22 = !{!"p3 double", !18, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p2 double", !19, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 double", !10, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"double", !6, i64 0}
!29 = distinct !{!29, !30, !31, !32}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = distinct !{!33, !30, !32, !31}
!34 = distinct !{!34, !30}
!35 = distinct !{!35, !30}
!36 = distinct !{!36, !30}
!37 = distinct !{!37, !30}
!38 = distinct !{!38, !30}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = !{!45}
!45 = distinct !{!45, !41}
!46 = !{!47}
!47 = distinct !{!47, !41}
!48 = !{!49}
!49 = distinct !{!49, !41}
!50 = !{!51}
!51 = distinct !{!51, !41}
!52 = !{!53}
!53 = distinct !{!53, !41}
!54 = !{!55}
!55 = distinct !{!55, !41}
!56 = !{!57}
!57 = distinct !{!57, !41}
!58 = !{!59}
!59 = distinct !{!59, !41}
!60 = !{!43, !40, !45, !49, !47, !51, !55, !53, !57}
!61 = distinct !{!61, !30, !31, !32}
!62 = distinct !{!62, !30, !31}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
end_hunk_0
