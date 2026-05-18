begin_hunk_0_@stencil_calc:bb.a
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
  %niter593 = phi i64 [ %niter593.next.1, %.preheader ], [ 0, %.preheader251 ]
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
  %niter593.next.1 = add i64 %niter593, 2         ; 2 uses
  %niter593.ncmp.1 = icmp eq i64 %niter593.next.1, %unroll_iter592
  br i1 %niter593.ncmp.1, label %._crit_edge306.split.unr-lcssa, label %.preheader, !llvm.loop !36

._crit_edge306.split.unr-lcssa:                   ; preds = %.preheader
  br i1 %lcmp.mod590.not, label %._crit_edge306.split, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge306.split.unr-lcssa, %.preheader251
  %indvars.iv379.epil.init = phi i64 [ 1, %.preheader251 ], [ %indvars.iv.next380.1, %._crit_edge306.split.unr-lcssa ]
  %indvar373.epil.init = phi i64 [ 0, %.preheader251 ], [ %indvar.next374.1, %._crit_edge306.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod591)
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
  %.pre407.pre = load double, ptr %.pre397, align 8, !tbaa !27
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
  %.pre409 = phi double [ %.pre409.pre, %.preheader260 ], [ %.pre412, %._crit_edge ] ; 3 uses
  %.pre407 = phi double [ %.pre407.pre, %.preheader260 ], [ %.pre410, %._crit_edge ] ; 3 uses
  %.pre403 = phi double [ %.pre403.pre, %.preheader260 ], [ %.pre406, %._crit_edge ] ; 3 uses
  %.pre401 = phi double [ %.pre401.pre, %.preheader260 ], [ %.pre404, %._crit_edge ] ; 3 uses
  %i.gm = phi ptr [ %.pre400, %.preheader260 ], [ %i.gx, %._crit_edge ] ; 5 uses
  %i.gn = phi ptr [ %.pre398, %.preheader260 ], [ %i.gm, %._crit_edge ] ; 8 uses
  %i.go = phi ptr [ %.pre397, %.preheader260 ], [ %i.gv, %._crit_edge ] ; 5 uses
  %i.gp = phi ptr [ %.pre395, %.preheader260 ], [ %i.go, %._crit_edge ] ; 8 uses
  %i.gq = phi ptr [ %.pre394, %.preheader260 ], [ %i.gt, %._crit_edge ] ; 5 uses
  %i.gr = phi ptr [ %.pre, %.preheader260 ], [ %i.gq, %._crit_edge ] ; 8 uses
  %indvars.iv324 = phi i64 [ 1, %.preheader260 ], [ %indvars.iv.next325, %._crit_edge ] ; 2 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 5 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next325
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !25 ; 7 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next325
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !25 ; 7 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next325
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !25 ; 7 uses
  %i.gy = mul nuw nsw i64 %indvars.iv324, %i.i
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gy ; 2 uses
  %.pre404 = load double, ptr %i.gt, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert405 = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.pre406 = load double, ptr %.phi.trans.insert405, align 8, !tbaa !27 ; 4 uses
  %.pre410 = load double, ptr %i.gv, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert411 = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.pre412 = load double, ptr %.phi.trans.insert411, align 8, !tbaa !27 ; 4 uses
  %.pre416 = load double, ptr %i.gx, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert417 = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.pre418 = load double, ptr %.phi.trans.insert417, align 8, !tbaa !27 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader258
  %scevgep447 = getelementptr nuw i8, ptr %i.gq, i64 16
  %scevgep448 = getelementptr i8, ptr %i.gq, i64 %i.au
  %scevgep449 = getelementptr i8, ptr %i.gr, i64 %i.au
  %1 = insertelement <2 x ptr> poison, ptr %i.gt, i64 0
  %2 = insertelement <2 x ptr> %1, ptr %i.go, i64 1
  %3 = getelementptr i8, <2 x ptr> %2, i64 16
  %scevgep451.a = getelementptr i8, ptr %i.gt, i64 %i.au
  %scevgep453 = getelementptr i8, ptr %i.go, i64 %i.au
  %scevgep454 = getelementptr i8, ptr %i.gp, i64 %i.au
  %scevgep455 = getelementptr i8, ptr %i.gv, i64 16
  %scevgep456 = getelementptr i8, ptr %i.gv, i64 %i.au
  %scevgep457 = getelementptr i8, ptr %i.gm, i64 16
  %scevgep458 = getelementptr i8, ptr %i.gm, i64 %i.au
  %scevgep459 = getelementptr i8, ptr %i.gn, i64 %i.au
  %scevgep460 = getelementptr i8, ptr %i.gx, i64 16
  %scevgep461 = getelementptr i8, ptr %i.gx, i64 %i.au
  %i.ha = insertelement <8 x ptr> poison, ptr %scevgep448, i64 0
  %i.hb = insertelement <8 x ptr> %i.ha, ptr %scevgep449, i64 1
  %i.hc = insertelement <8 x ptr> %i.hb, ptr %scevgep451.a, i64 2
  %i.hd = insertelement <8 x ptr> %i.hc, ptr %scevgep453, i64 3
  %i.he = insertelement <8 x ptr> %i.hd, ptr %scevgep454, i64 4
  %i.hf = insertelement <8 x ptr> %i.he, ptr %scevgep456, i64 5
  %i.hg = insertelement <8 x ptr> %i.hf, ptr %scevgep458, i64 6
  %i.hh = insertelement <8 x ptr> %i.hg, ptr %scevgep459, i64 7
  %i.hi = icmp ult <8 x ptr> %i.gj, %i.hh
  %i.hj = insertelement <8 x ptr> poison, ptr %scevgep447, i64 0
  %i.hk = insertelement <8 x ptr> %i.hj, ptr %i.gr, i64 1
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %5 = shufflevector <8 x ptr> %i.hk, <8 x ptr> %4, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hl = insertelement <8 x ptr> %5, ptr %i.gp, i64 4
  %i.hm = insertelement <8 x ptr> %i.hl, ptr %scevgep455, i64 5
  %i.hn = insertelement <8 x ptr> %i.hm, ptr %scevgep457, i64 6
  %i.ho = insertelement <8 x ptr> %i.hn, ptr %i.gn, i64 7
  %i.hp = icmp ult <8 x ptr> %i.ho, %i.gl
  %i.hq = and <8 x i1> %i.hi, %i.hp
  %bound0489 = icmp ult ptr %scevgep445, %scevgep461
  %bound1490 = icmp ult ptr %scevgep460, %scevgep446
  %found.conflict491 = and i1 %bound0489, %bound1490
  %i.hr = bitcast <8 x i1> %i.hq to i8
  %i.hs = icmp ne i8 %i.hr, 0
  %op.rdx = or i1 %i.hs, %found.conflict491
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %vector.recur.init = insertelement <2 x double> poison, double %.pre418, i64 1
  %vector.recur.init493 = insertelement <2 x double> poison, double %.pre416, i64 1
  %vector.recur.init495 = insertelement <2 x double> poison, double %.pre415, i64 1
  %vector.recur.init497 = insertelement <2 x double> poison, double %.pre413, i64 1
  %vector.recur.init499 = insertelement <2 x double> poison, double %.pre412, i64 1
  %vector.recur.init501 = insertelement <2 x double> poison, double %.pre410, i64 1
  %vector.recur.init503 = insertelement <2 x double> poison, double %.pre409, i64 1
  %vector.recur.init505 = insertelement <2 x double> poison, double %.pre407, i64 1
  %vector.recur.init507 = insertelement <2 x double> poison, double %.pre406, i64 1
  %vector.recur.init509 = insertelement <2 x double> poison, double %.pre404, i64 1
  %vector.recur.init511 = insertelement <2 x double> poison, double %.pre403, i64 1
  %vector.recur.init513 = insertelement <2 x double> poison, double %.pre401, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <2 x double> [ %vector.recur.init, %vector.ph ], [ %wide.load528, %vector.body ] ; 2 uses
  %vector.recur494 = phi <2 x double> [ %vector.recur.init493, %vector.ph ], [ %i.jp, %vector.body ]
  %vector.recur496 = phi <2 x double> [ %vector.recur.init495, %vector.ph ], [ %wide.load527, %vector.body ] ; 2 uses
  %vector.recur498 = phi <2 x double> [ %vector.recur.init497, %vector.ph ], [ %i.jj, %vector.body ]
  %vector.recur500 = phi <2 x double> [ %vector.recur.init499, %vector.ph ], [ %wide.load523, %vector.body ] ; 2 uses
  %vector.recur502 = phi <2 x double> [ %vector.recur.init501, %vector.ph ], [ %i.iy, %vector.body ]
  %vector.recur504 = phi <2 x double> [ %vector.recur.init503, %vector.ph ], [ %wide.load522, %vector.body ] ; 2 uses
  %vector.recur506 = phi <2 x double> [ %vector.recur.init505, %vector.ph ], [ %i.is, %vector.body ]
  %vector.recur508 = phi <2 x double> [ %vector.recur.init507, %vector.ph ], [ %wide.load518, %vector.body ] ; 2 uses
  %vector.recur510 = phi <2 x double> [ %vector.recur.init509, %vector.ph ], [ %i.ih, %vector.body ]
  %vector.recur512 = phi <2 x double> [ %vector.recur.init511, %vector.ph ], [ %wide.load517, %vector.body ] ; 2 uses
  %vector.recur514 = phi <2 x double> [ %vector.recur.init513, %vector.ph ], [ %i.ib, %vector.body ]
  %i.ht = or disjoint i64 %index, 1               ; 4 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index
  %wide.load = load <2 x double>, ptr %i.hu, align 8, !tbaa !27, !alias.scope !39
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ht
  %wide.load515 = load <2 x double>, ptr %i.hv, align 8, !tbaa !27, !alias.scope !39
  %i.hw = fadd <2 x double> %wide.load, %wide.load515
  %i.hx = add nuw nsw i64 %index, 2               ; 9 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hx
  %wide.load516 = load <2 x double>, ptr %i.hy, align 8, !tbaa !27, !alias.scope !39
  %i.hz = fadd <2 x double> %i.hw, %wide.load516
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.hx
  %wide.load517 = load <2 x double>, ptr %i.ia, align 8, !tbaa !27, !alias.scope !42 ; 5 uses
  %i.ib = shufflevector <2 x double> %vector.recur512, <2 x double> %wide.load517, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ic = shufflevector <2 x double> %vector.recur514, <2 x double> %vector.recur512, <2 x i32> <i32 1, i32 3>
  %i.id = fadd <2 x double> %i.hz, %i.ic
  %i.ie = fadd <2 x double> %i.id, %i.ib
  %i.if = fadd <2 x double> %i.ie, %wide.load517
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.hx
  %wide.load518 = load <2 x double>, ptr %i.ig, align 8, !tbaa !27, !alias.scope !44 ; 5 uses
  %i.ih = shufflevector <2 x double> %vector.recur508, <2 x double> %wide.load518, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ii = shufflevector <2 x double> %vector.recur510, <2 x double> %vector.recur508, <2 x i32> <i32 1, i32 3>
  %i.ij = fadd <2 x double> %i.if, %i.ii
  %i.ik = fadd <2 x double> %i.ij, %i.ih
  %i.il = fadd <2 x double> %i.ik, %wide.load518
  %i.im = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %index
  %wide.load519 = load <2 x double>, ptr %i.im, align 8, !tbaa !27, !alias.scope !46
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.ht
  %wide.load520 = load <2 x double>, ptr %i.in, align 8, !tbaa !27, !alias.scope !46
  %i.io = fadd <2 x double> %wide.load519, %wide.load520
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.hx
  %wide.load521 = load <2 x double>, ptr %i.ip, align 8, !tbaa !27, !alias.scope !46
  %i.iq = fadd <2 x double> %i.io, %wide.load521
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.hx
  %wide.load522 = load <2 x double>, ptr %i.ir, align 8, !tbaa !27, !alias.scope !48 ; 5 uses
  %i.is = shufflevector <2 x double> %vector.recur504, <2 x double> %wide.load522, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.it = shufflevector <2 x double> %vector.recur506, <2 x double> %vector.recur504, <2 x i32> <i32 1, i32 3>
  %i.iu = fadd <2 x double> %i.iq, %i.it
  %i.iv = fadd <2 x double> %i.iu, %i.is
  %i.iw = fadd <2 x double> %i.iv, %wide.load522
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.hx
  %wide.load523 = load <2 x double>, ptr %i.ix, align 8, !tbaa !27, !alias.scope !50 ; 5 uses
  %i.iy = shufflevector <2 x double> %vector.recur500, <2 x double> %wide.load523, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.iz = shufflevector <2 x double> %vector.recur502, <2 x double> %vector.recur500, <2 x i32> <i32 1, i32 3>
  %i.ja = fadd <2 x double> %i.iw, %i.iz
  %i.jb = fadd <2 x double> %i.ja, %i.iy
  %i.jc = fadd <2 x double> %i.jb, %wide.load523
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %index
  %wide.load524 = load <2 x double>, ptr %i.jd, align 8, !tbaa !27, !alias.scope !52
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ht
  %wide.load525 = load <2 x double>, ptr %i.je, align 8, !tbaa !27, !alias.scope !52
  %i.jf = fadd <2 x double> %wide.load524, %wide.load525
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.hx
  %wide.load526 = load <2 x double>, ptr %i.jg, align 8, !tbaa !27, !alias.scope !52
  %i.jh = fadd <2 x double> %i.jf, %wide.load526
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.hx
  %wide.load527 = load <2 x double>, ptr %i.ji, align 8, !tbaa !27, !alias.scope !54 ; 5 uses
  %i.jj = shufflevector <2 x double> %vector.recur496, <2 x double> %wide.load527, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jk = shufflevector <2 x double> %vector.recur498, <2 x double> %vector.recur496, <2 x i32> <i32 1, i32 3>
  %i.jl = fadd <2 x double> %i.jh, %i.jk
  %i.jm = fadd <2 x double> %i.jl, %i.jj
  %i.jn = fadd <2 x double> %i.jm, %wide.load527
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.hx
  %wide.load528 = load <2 x double>, ptr %i.jo, align 8, !tbaa !27, !alias.scope !56 ; 5 uses
  %i.jp = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load528, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jq = shufflevector <2 x double> %vector.recur494, <2 x double> %vector.recur, <2 x i32> <i32 1, i32 3>
  %i.jr = fadd <2 x double> %i.jn, %i.jq
  %i.js = fadd <2 x double> %i.jr, %i.jp
  %i.jt = fadd <2 x double> %i.js, %wide.load528
  %i.ju = fadd <2 x double> %i.il, %i.jc
  %i.jv = fadd <2 x double> %i.ju, %i.jt
  %i.jw = fdiv <2 x double> %i.jv, splat (double 2.700000e+01)
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.ht
  store <2 x double> %i.jw, ptr %i.jx, align 8, !tbaa !27, !alias.scope !58, !noalias !60
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.jy = icmp eq i64 %index.next, %n.vec
  br i1 %i.jy, label %middle.block, label %vector.body, !llvm.loop !61

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
  %.ph580 = phi double [ %.pre410, %vector.memcheck ], [ %.pre410, %.preheader258 ], [ %vector.recur.extract533, %middle.block ]
  %.ph581 = phi double [ %.pre409, %vector.memcheck ], [ %.pre409, %.preheader258 ], [ %vector.recur.extract534, %middle.block ]
  %.ph582 = phi double [ %.pre407, %vector.memcheck ], [ %.pre407, %.preheader258 ], [ %vector.recur.extract535, %middle.block ]
  %.ph583 = phi double [ %.pre406, %vector.memcheck ], [ %.pre406, %.preheader258 ], [ %vector.recur.extract536, %middle.block ]
  %.ph584 = phi double [ %.pre404, %vector.memcheck ], [ %.pre404, %.preheader258 ], [ %vector.recur.extract537, %middle.block ]
  %.ph585 = phi double [ %.pre403, %vector.memcheck ], [ %.pre403, %.preheader258 ], [ %vector.recur.extract538, %middle.block ]
  %.ph586 = phi double [ %.pre401, %vector.memcheck ], [ %.pre401, %.preheader258 ], [ %vector.recur.extract539, %middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader258 ], [ %i.ba, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.jz = phi double [ %i.mm, %scalar.ph ], [ %.ph575, %scalar.ph.preheader ] ; 2 uses
  %i.ka = phi double [ %i.jz, %scalar.ph ], [ %.ph576, %scalar.ph.preheader ]
  %i.kb = phi double [ %i.mh, %scalar.ph ], [ %.ph577, %scalar.ph.preheader ] ; 2 uses
  %i.kc = phi double [ %i.kb, %scalar.ph ], [ %.ph578, %scalar.ph.preheader ]
  %i.kd = phi double [ %i.lu, %scalar.ph ], [ %.ph579, %scalar.ph.preheader ] ; 2 uses
  %i.ke = phi double [ %i.kd, %scalar.ph ], [ %.ph580, %scalar.ph.preheader ]
  %i.kf = phi double [ %i.lp, %scalar.ph ], [ %.ph581, %scalar.ph.preheader ] ; 2 uses
  %i.kg = phi double [ %i.kf, %scalar.ph ], [ %.ph582, %scalar.ph.preheader ]
  %i.kh = phi double [ %i.lc, %scalar.ph ], [ %.ph583, %scalar.ph.preheader ] ; 2 uses
  %i.ki = phi double [ %i.kh, %scalar.ph ], [ %.ph584, %scalar.ph.preheader ]
  %i.kj = phi double [ %i.kx, %scalar.ph ], [ %.ph585, %scalar.ph.preheader ] ; 2 uses
  %i.kk = phi double [ %i.kj, %scalar.ph ], [ %.ph586, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.kl = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.km = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.kl
  %i.kn = load double, ptr %i.km, align 8, !tbaa !27
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !27
  %i.kq = fadd double %i.kn, %i.kp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 11 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !27
  %i.kt = fadd double %i.kq, %i.ks
  %i.ku = fadd double %i.kt, %i.kk
  %i.kv = fadd double %i.ku, %i.kj
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !27 ; 2 uses
  %i.ky = fadd double %i.kv, %i.kx
  %i.kz = fadd double %i.ky, %i.ki
  %i.la = fadd double %i.kz, %i.kh
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.next
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !27 ; 2 uses
  %i.ld = fadd double %i.la, %i.lc
  %i.le = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.kl
  %i.lf = load double, ptr %i.le, align 8, !tbaa !27
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !27
  %i.li = fadd double %i.lf, %i.lh
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !27
  %i.ll = fadd double %i.li, %i.lk
  %i.lm = fadd double %i.ll, %i.kg
  %i.ln = fadd double %i.lm, %i.kf
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !27 ; 2 uses
  %i.lq = fadd double %i.ln, %i.lp
  %i.lr = fadd double %i.lq, %i.ke
  %i.ls = fadd double %i.lr, %i.kd
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next
end_hunk_0
