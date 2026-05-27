begin_hunk_0_@stencil_calc:bb.a
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
  %niter594 = phi i64 [ %niter594.next.1, %.preheader ], [ 0, %.preheader251 ]
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
  %niter594.next.1 = add i64 %niter594, 2         ; 2 uses
  %niter594.ncmp.1 = icmp eq i64 %niter594.next.1, %unroll_iter593
  br i1 %niter594.ncmp.1, label %._crit_edge306.split.unr-lcssa, label %.preheader, !llvm.loop !36

._crit_edge306.split.unr-lcssa:                   ; preds = %.preheader
  br i1 %lcmp.mod591.not, label %._crit_edge306.split, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge306.split.unr-lcssa, %.preheader251
  %indvars.iv379.epil.init = phi i64 [ 1, %.preheader251 ], [ %indvars.iv.next380.1, %._crit_edge306.split.unr-lcssa ]
  %indvar373.epil.init = phi i64 [ 0, %.preheader251 ], [ %indvar.next374.1, %._crit_edge306.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod592)
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
  %.pre397 = load ptr, ptr %.phi.trans.insert396, align 8, !tbaa !25 ; 2 uses
  %.pre398 = load ptr, ptr %i.gh, align 8, !tbaa !25
  %.phi.trans.insert399 = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.pre400 = load ptr, ptr %.phi.trans.insert399, align 8, !tbaa !25 ; 2 uses
  %.pre401.pre = load double, ptr %.pre394, align 8, !tbaa !27
  %.phi.trans.insert402.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre394, i64 8
  %.pre403.pre = load double, ptr %.phi.trans.insert402.phi.trans.insert, align 8, !tbaa !27
  %i.gi = load <2 x double>, ptr %.pre397, align 8, !tbaa !27 ; 2 uses
  %i.gj = load <2 x double>, ptr %.pre400, align 8, !tbaa !27 ; 2 uses
  %i.gk = shufflevector <2 x double> %i.gi, <2 x double> %i.gj, <2 x i32> <i32 1, i32 3>
  %i.gl = shufflevector <2 x double> %i.gi, <2 x double> %i.gj, <2 x i32> <i32 0, i32 2>
  %i.gm = insertelement <8 x ptr> poison, ptr %scevgep445, i64 0
  %i.gn = shufflevector <8 x ptr> %i.gm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.go = insertelement <8 x ptr> poison, ptr %scevgep446, i64 0
  %i.gp = shufflevector <8 x ptr> %i.go, <8 x ptr> poison, <8 x i32> zeroinitializer
  br label %.preheader258

.preheader258:                                    ; preds = %.preheader260, %._crit_edge
  %.pre403 = phi double [ %.pre403.pre, %.preheader260 ], [ %.pre406, %._crit_edge ] ; 3 uses
  %.pre401 = phi double [ %.pre401.pre, %.preheader260 ], [ %.pre404, %._crit_edge ] ; 3 uses
  %i.gq = phi ptr [ %.pre400, %.preheader260 ], [ %i.hd, %._crit_edge ] ; 5 uses
  %i.gr = phi ptr [ %.pre398, %.preheader260 ], [ %i.gq, %._crit_edge ] ; 7 uses
  %i.gs = phi ptr [ %.pre397, %.preheader260 ], [ %i.hb, %._crit_edge ] ; 5 uses
  %i.gt = phi ptr [ %.pre395, %.preheader260 ], [ %i.gs, %._crit_edge ] ; 7 uses
  %i.gu = phi ptr [ %.pre394, %.preheader260 ], [ %i.gz, %._crit_edge ] ; 5 uses
  %i.gv = phi ptr [ %.pre, %.preheader260 ], [ %i.gu, %._crit_edge ] ; 8 uses
  %indvars.iv324 = phi i64 [ 1, %.preheader260 ], [ %indvars.iv.next325, %._crit_edge ] ; 2 uses
  %i.gw = phi <2 x double> [ %i.gk, %.preheader260 ], [ %i.ne, %._crit_edge ] ; 4 uses
  %i.gx = phi <2 x double> [ %i.gl, %.preheader260 ], [ %i.nf, %._crit_edge ] ; 4 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 5 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next325
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !25 ; 7 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next325
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !25 ; 7 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next325
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !25 ; 7 uses
  %i.he = mul nuw nsw i64 %indvars.iv324, %i.i
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.he ; 2 uses
  %.pre404 = load double, ptr %i.gz, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert405 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %.pre406 = load double, ptr %.phi.trans.insert405, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert411 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %.phi.trans.insert417 = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hg = load <2 x double>, ptr %i.hb, align 8, !tbaa !27 ; 5 uses
  %.pre412 = load double, ptr %.phi.trans.insert411, align 8, !tbaa !27 ; 2 uses
  %i.hh = load <2 x double>, ptr %i.hd, align 8, !tbaa !27 ; 5 uses
  %.pre418 = load double, ptr %.phi.trans.insert417, align 8, !tbaa !27 ; 2 uses
  %i.hi = extractelement <2 x double> %i.hg, i64 0 ; 2 uses
  %i.hj = extractelement <2 x double> %i.hh, i64 0 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader258
  %scevgep447 = getelementptr nuw i8, ptr %i.gu, i64 16
  %scevgep448 = getelementptr i8, ptr %i.gu, i64 %i.au
  %scevgep449 = getelementptr i8, ptr %i.gv, i64 %i.au
  %i.hk = insertelement <2 x ptr> poison, ptr %i.gz, i64 0
  %i.hl = insertelement <2 x ptr> %i.hk, ptr %i.gs, i64 1
  %i.hm = getelementptr i8, <2 x ptr> %i.hl, i64 16
  %scevgep451 = getelementptr i8, ptr %i.gz, i64 %i.au
  %scevgep453 = getelementptr i8, ptr %i.gs, i64 %i.au
  %scevgep454 = getelementptr i8, ptr %i.gt, i64 %i.au
  %scevgep455 = getelementptr i8, ptr %i.hb, i64 16
  %scevgep456 = getelementptr i8, ptr %i.hb, i64 %i.au
  %scevgep457 = getelementptr i8, ptr %i.gq, i64 16
  %scevgep458 = getelementptr i8, ptr %i.gq, i64 %i.au
  %scevgep459 = getelementptr i8, ptr %i.gr, i64 %i.au
  %scevgep460 = getelementptr i8, ptr %i.hd, i64 16
  %scevgep461 = getelementptr i8, ptr %i.hd, i64 %i.au
  %i.hn = insertelement <8 x ptr> poison, ptr %scevgep448, i64 0
  %i.ho = insertelement <8 x ptr> %i.hn, ptr %scevgep449, i64 1
  %i.hp = insertelement <8 x ptr> %i.ho, ptr %scevgep451, i64 2
  %i.hq = insertelement <8 x ptr> %i.hp, ptr %scevgep453, i64 3
  %i.hr = insertelement <8 x ptr> %i.hq, ptr %scevgep454, i64 4
  %i.hs = insertelement <8 x ptr> %i.hr, ptr %scevgep456, i64 5
  %i.ht = insertelement <8 x ptr> %i.hs, ptr %scevgep458, i64 6
  %i.hu = insertelement <8 x ptr> %i.ht, ptr %scevgep459, i64 7
  %i.hv = icmp ult <8 x ptr> %i.gn, %i.hu
  %i.hw = insertelement <8 x ptr> poison, ptr %scevgep447, i64 0
  %i.hx = insertelement <8 x ptr> %i.hw, ptr %i.gv, i64 1
  %i.hy = shufflevector <2 x ptr> %i.hm, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hz = shufflevector <8 x ptr> %i.hx, <8 x ptr> %i.hy, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ia = insertelement <8 x ptr> %i.hz, ptr %i.gt, i64 4
  %i.ib = insertelement <8 x ptr> %i.ia, ptr %scevgep455, i64 5
  %i.ic = insertelement <8 x ptr> %i.ib, ptr %scevgep457, i64 6
  %i.id = insertelement <8 x ptr> %i.ic, ptr %i.gr, i64 7
  %i.ie = icmp ult <8 x ptr> %i.id, %i.gp
  %i.if = and <8 x i1> %i.hv, %i.ie
  %bound0489 = icmp ult ptr %scevgep445, %scevgep461
  %bound1490 = icmp ult ptr %scevgep460, %scevgep446
  %found.conflict491 = and i1 %bound0489, %bound1490
  %i.ig = bitcast <8 x i1> %i.if to i8
  %i.ih = icmp ne i8 %i.ig, 0
  %op.rdx578 = or i1 %i.ih, %found.conflict491
  br i1 %op.rdx578, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ii = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ij = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ik = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.il = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %vector.recur.init507 = insertelement <2 x double> poison, double %.pre406, i64 1
  %vector.recur.init509 = insertelement <2 x double> poison, double %.pre404, i64 1
  %vector.recur.init511 = insertelement <2 x double> poison, double %.pre403, i64 1
  %vector.recur.init513 = insertelement <2 x double> poison, double %.pre401, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <2 x double> [ %i.hh, %vector.ph ], [ %wide.load528, %vector.body ] ; 2 uses
  %vector.recur494 = phi <2 x double> [ %i.ii, %vector.ph ], [ %i.ki, %vector.body ]
  %vector.recur496 = phi <2 x double> [ %i.gw, %vector.ph ], [ %wide.load527, %vector.body ] ; 2 uses
  %vector.recur498 = phi <2 x double> [ %i.gx, %vector.ph ], [ %i.kc, %vector.body ]
  %vector.recur500 = phi <2 x double> [ %i.hg, %vector.ph ], [ %wide.load523, %vector.body ] ; 2 uses
  %vector.recur502 = phi <2 x double> [ %i.ij, %vector.ph ], [ %i.jr, %vector.body ]
  %vector.recur504 = phi <2 x double> [ %i.ik, %vector.ph ], [ %wide.load522, %vector.body ] ; 2 uses
  %vector.recur506 = phi <2 x double> [ %i.il, %vector.ph ], [ %i.jl, %vector.body ]
  %vector.recur508 = phi <2 x double> [ %vector.recur.init507, %vector.ph ], [ %wide.load518, %vector.body ] ; 2 uses
  %vector.recur510 = phi <2 x double> [ %vector.recur.init509, %vector.ph ], [ %i.ja, %vector.body ]
  %vector.recur512 = phi <2 x double> [ %vector.recur.init511, %vector.ph ], [ %wide.load517, %vector.body ] ; 2 uses
  %vector.recur514 = phi <2 x double> [ %vector.recur.init513, %vector.ph ], [ %i.iu, %vector.body ]
  %i.im = or disjoint i64 %index, 1               ; 4 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %index
  %wide.load = load <2 x double>, ptr %i.in, align 8, !tbaa !27, !alias.scope !39
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.im
  %wide.load515 = load <2 x double>, ptr %i.io, align 8, !tbaa !27, !alias.scope !39
  %i.ip = fadd <2 x double> %wide.load, %wide.load515
  %i.iq = add nuw nsw i64 %index, 2               ; 9 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.iq
  %wide.load516 = load <2 x double>, ptr %i.ir, align 8, !tbaa !27, !alias.scope !39
  %i.is = fadd <2 x double> %i.ip, %wide.load516
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.iq
  %wide.load517 = load <2 x double>, ptr %i.it, align 8, !tbaa !27, !alias.scope !42 ; 5 uses
  %i.iu = shufflevector <2 x double> %vector.recur512, <2 x double> %wide.load517, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.iv = shufflevector <2 x double> %vector.recur514, <2 x double> %vector.recur512, <2 x i32> <i32 1, i32 3>
  %i.iw = fadd <2 x double> %i.is, %i.iv
  %i.ix = fadd <2 x double> %i.iw, %i.iu
  %i.iy = fadd <2 x double> %i.ix, %wide.load517
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.iq
  %wide.load518 = load <2 x double>, ptr %i.iz, align 8, !tbaa !27, !alias.scope !44 ; 5 uses
  %i.ja = shufflevector <2 x double> %vector.recur508, <2 x double> %wide.load518, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jb = shufflevector <2 x double> %vector.recur510, <2 x double> %vector.recur508, <2 x i32> <i32 1, i32 3>
  %i.jc = fadd <2 x double> %i.iy, %i.jb
  %i.jd = fadd <2 x double> %i.jc, %i.ja
  %i.je = fadd <2 x double> %i.jd, %wide.load518
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %index
  %wide.load519 = load <2 x double>, ptr %i.jf, align 8, !tbaa !27, !alias.scope !46
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.im
  %wide.load520 = load <2 x double>, ptr %i.jg, align 8, !tbaa !27, !alias.scope !46
  %i.jh = fadd <2 x double> %wide.load519, %wide.load520
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.iq
  %wide.load521 = load <2 x double>, ptr %i.ji, align 8, !tbaa !27, !alias.scope !46
  %i.jj = fadd <2 x double> %i.jh, %wide.load521
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.iq
  %wide.load522 = load <2 x double>, ptr %i.jk, align 8, !tbaa !27, !alias.scope !48 ; 5 uses
  %i.jl = shufflevector <2 x double> %vector.recur504, <2 x double> %wide.load522, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jm = shufflevector <2 x double> %vector.recur506, <2 x double> %vector.recur504, <2 x i32> <i32 1, i32 3>
  %i.jn = fadd <2 x double> %i.jj, %i.jm
  %i.jo = fadd <2 x double> %i.jn, %i.jl
  %i.jp = fadd <2 x double> %i.jo, %wide.load522
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.iq
  %wide.load523 = load <2 x double>, ptr %i.jq, align 8, !tbaa !27, !alias.scope !50 ; 5 uses
  %i.jr = shufflevector <2 x double> %vector.recur500, <2 x double> %wide.load523, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.js = shufflevector <2 x double> %vector.recur502, <2 x double> %vector.recur500, <2 x i32> <i32 1, i32 3>
  %i.jt = fadd <2 x double> %i.jp, %i.js
  %i.ju = fadd <2 x double> %i.jt, %i.jr
  %i.jv = fadd <2 x double> %i.ju, %wide.load523
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index
  %wide.load524 = load <2 x double>, ptr %i.jw, align 8, !tbaa !27, !alias.scope !52
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.im
  %wide.load525 = load <2 x double>, ptr %i.jx, align 8, !tbaa !27, !alias.scope !52
  %i.jy = fadd <2 x double> %wide.load524, %wide.load525
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.iq
  %wide.load526 = load <2 x double>, ptr %i.jz, align 8, !tbaa !27, !alias.scope !52
  %i.ka = fadd <2 x double> %i.jy, %wide.load526
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.iq
  %wide.load527 = load <2 x double>, ptr %i.kb, align 8, !tbaa !27, !alias.scope !54 ; 5 uses
  %i.kc = shufflevector <2 x double> %vector.recur496, <2 x double> %wide.load527, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kd = shufflevector <2 x double> %vector.recur498, <2 x double> %vector.recur496, <2 x i32> <i32 1, i32 3>
  %i.ke = fadd <2 x double> %i.ka, %i.kd
  %i.kf = fadd <2 x double> %i.ke, %i.kc
  %i.kg = fadd <2 x double> %i.kf, %wide.load527
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.iq
  %wide.load528 = load <2 x double>, ptr %i.kh, align 8, !tbaa !27, !alias.scope !56 ; 5 uses
  %i.ki = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load528, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kj = shufflevector <2 x double> %vector.recur494, <2 x double> %vector.recur, <2 x i32> <i32 1, i32 3>
  %i.kk = fadd <2 x double> %i.kg, %i.kj
  %i.kl = fadd <2 x double> %i.kk, %i.ki
  %i.km = fadd <2 x double> %i.kl, %wide.load528
  %i.kn = fadd <2 x double> %i.je, %i.jv
  %i.ko = fadd <2 x double> %i.kn, %i.km
  %i.kp = fdiv <2 x double> %i.ko, splat (double 2.700000e+01)
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.im
  store <2 x double> %i.kp, ptr %i.kq, align 8, !tbaa !27, !alias.scope !58, !noalias !60
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kr = icmp eq i64 %index.next, %n.vec
  br i1 %i.kr, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x double> %wide.load528, i64 1
  %vector.recur.extract529 = extractelement <2 x double> %wide.load528, i64 0
  %vector.recur.extract532 = extractelement <2 x double> %wide.load523, i64 1
  %vector.recur.extract533 = extractelement <2 x double> %wide.load523, i64 0
  %vector.recur.extract536 = extractelement <2 x double> %wide.load518, i64 1
  %vector.recur.extract537 = extractelement <2 x double> %wide.load518, i64 0
  %vector.recur.extract538 = extractelement <2 x double> %wide.load517, i64 1
  %vector.recur.extract539 = extractelement <2 x double> %wide.load517, i64 0
  %i.ks = shufflevector <2 x double> %wide.load522, <2 x double> %wide.load527, <2 x i32> <i32 1, i32 3>
  %i.kt = shufflevector <2 x double> %wide.load522, <2 x double> %wide.load527, <2 x i32> <i32 0, i32 2>
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader258, %middle.block
  %.ph579 = phi double [ %.pre418, %vector.memcheck ], [ %.pre418, %.preheader258 ], [ %vector.recur.extract, %middle.block ]
  %.ph580 = phi double [ %i.hj, %vector.memcheck ], [ %i.hj, %.preheader258 ], [ %vector.recur.extract529, %middle.block ]
  %.ph581 = phi double [ %.pre412, %vector.memcheck ], [ %.pre412, %.preheader258 ], [ %vector.recur.extract532, %middle.block ]
  %.ph582 = phi double [ %i.hi, %vector.memcheck ], [ %i.hi, %.preheader258 ], [ %vector.recur.extract533, %middle.block ]
  %.ph583 = phi double [ %.pre406, %vector.memcheck ], [ %.pre406, %.preheader258 ], [ %vector.recur.extract536, %middle.block ]
  %.ph584 = phi double [ %.pre404, %vector.memcheck ], [ %.pre404, %.preheader258 ], [ %vector.recur.extract537, %middle.block ]
  %.ph583.a = phi double [ %.pre403, %vector.memcheck ], [ %.pre403, %.preheader258 ], [ %vector.recur.extract538, %middle.block ]
  %.ph584.a = phi double [ %.pre401, %vector.memcheck ], [ %.pre401, %.preheader258 ], [ %vector.recur.extract539, %middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader258 ], [ %i.ba, %middle.block ]
  %.ph585 = phi <2 x double> [ %i.gx, %vector.memcheck ], [ %i.gx, %.preheader258 ], [ %i.kt, %middle.block ]
  %.ph586 = phi <2 x double> [ %i.gw, %vector.memcheck ], [ %i.gw, %.preheader258 ], [ %i.ks, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %1 = phi double [ %i.ma, %scalar.ph ], [ %.ph579, %scalar.ph.preheader ] ; 2 uses
  %i.ku = phi double [ %1, %scalar.ph ], [ %.ph580, %scalar.ph.preheader ]
  %i.kv = phi double [ %i.lt, %scalar.ph ], [ %.ph581, %scalar.ph.preheader ] ; 2 uses
  %i.kw = phi double [ %i.kv, %scalar.ph ], [ %.ph582, %scalar.ph.preheader ]
  %i.kx = phi double [ %i.lm, %scalar.ph ], [ %.ph583, %scalar.ph.preheader ] ; 2 uses
  %i.ky = phi double [ %i.kx, %scalar.ph ], [ %.ph584, %scalar.ph.preheader ]
  %i.kz = phi double [ %i.lk, %scalar.ph ], [ %.ph583.a, %scalar.ph.preheader ] ; 2 uses
  %2 = phi double [ %i.kz, %scalar.ph ], [ %.ph584.a, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.la = phi <2 x double> [ %i.lb, %scalar.ph ], [ %.ph585, %scalar.ph.preheader ]
  %i.lb = phi <2 x double> [ %i.mm, %scalar.ph ], [ %.ph586, %scalar.ph.preheader ] ; 2 uses
  %i.lc = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !27
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 11 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next
  %i.li = load double, ptr %i.lh, align 8, !tbaa !27
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !27 ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !27 ; 2 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.lc
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.next
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !27
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !27
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv.next
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !27 ; 2 uses
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.lc
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !27
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !27
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.next
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !27 ; 2 uses
  %i.mb = load <2 x double>, ptr %i.ln, align 8, !tbaa !27 ; 2 uses
  %i.mc = load <2 x double>, ptr %i.lu, align 8, !tbaa !27 ; 2 uses
  %i.md = shufflevector <2 x double> %i.mb, <2 x double> %i.mc, <2 x i32> <i32 0, i32 2>
  %i.me = shufflevector <2 x double> %i.mb, <2 x double> %i.mc, <2 x i32> <i32 1, i32 3>
  %i.mf = fadd <2 x double> %i.md, %i.me
  %i.mg = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.mh = insertelement <2 x double> %i.mg, double %i.lw, i64 1
  %i.mi = fadd <2 x double> %i.mf, %i.mh
  %i.mj = fadd <2 x double> %i.mi, %i.la
  %i.mk = fadd <2 x double> %i.mj, %i.lb
  %i.ml = insertelement <2 x double> poison, double %i.lr, i64 0
  %i.mm = insertelement <2 x double> %i.ml, double %i.ly, i64 1 ; 2 uses
  %i.mn = fadd <2 x double> %i.mk, %i.mm
  %i.mo = insertelement <2 x double> poison, double %i.kw, i64 0
  %i.mp = insertelement <2 x double> %i.mo, double %i.ku, i64 1
  %i.mq = fadd <2 x double> %i.mn, %i.mp
  %i.mr = insertelement <2 x double> poison, double %i.kv, i64 0
  %i.ms = insertelement <2 x double> %i.mr, double %1, i64 1
  %i.mt = fadd <2 x double> %i.mq, %i.ms
  %i.mu = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.mv = insertelement <2 x double> %i.mu, double %i.ma, i64 1
  %i.mw = fadd <2 x double> %i.mt, %i.mv
  %i.mx = insertelement <6 x double> poison, double %i.lk, i64 0
  %3 = insertelement <6 x double> %i.mx, double %i.ky, i64 1
  %4 = insertelement <6 x double> %3, double %i.kx, i64 2
  %i.my = insertelement <6 x double> %4, double %i.lm, i64 3
  %i.mz = shufflevector <2 x double> %i.mw, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.na = shufflevector <6 x double> %i.my, <6 x double> %i.mz, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %op.rdx = fadd double %i.le, %i.lg
  %op.rdx575 = fadd double %op.rdx, %i.li
  %op.rdx576 = fadd double %op.rdx575, %2
  %op.rdx577 = fadd double %op.rdx576, %i.kz
  %i.nb = call double @llvm.vector.reduce.fadd.v6f64(double %op.rdx577, <6 x double> %i.na)
  %i.nc = fdiv double %i.nb, 2.700000e+01
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv
  store double %i.nc, ptr %i.nd, align 8, !tbaa !27
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  %i.ne = shufflevector <2 x double> %i.hg, <2 x double> %i.hh, <2 x i32> <i32 1, i32 3>
  %i.nf = shufflevector <2 x double> %i.hg, <2 x double> %i.hh, <2 x i32> <i32 0, i32 2>
  br i1 %exitcond328.not, label %._crit_edge270.split, label %.preheader258, !llvm.loop !63

._crit_edge270.split:                             ; preds = %._crit_edge
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count332
  %indvar.next444 = add i64 %indvar443, 1
  br i1 %exitcond333.not, label %.preheader261, label %.preheader260, !llvm.loop !64

.preheader259:                                    ; preds = %.preheader259.lr.ph.split.split, %._crit_edge281.split
  %indvars.iv345 = phi i64 [ 1, %.preheader259.lr.ph.split.split ], [ %indvars.iv.next346, %._crit_edge281.split ] ; 2 uses
  %indvar = phi i64 [ 0, %.preheader259.lr.ph.split.split ], [ %indvar.next, %._crit_edge281.split ] ; 2 uses
  %i.ng = mul i64 %i.ae, %indvar
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv345
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !23 ; 3 uses
  %i.nj = getelementptr i8, ptr %i.aj, i64 %i.ng  ; 3 uses
  br i1 %i.bc, label %.preheader257.epil.preheader, label %.preheader257

.preheader257:                                    ; preds = %.preheader259, %.preheader257
  %indvars.iv340 = phi i64 [ %indvars.iv.next341.1, %.preheader257 ], [ 1, %.preheader259 ] ; 3 uses
  %indvar334 = phi i64 [ %indvar.next335.1, %.preheader257 ], [ 0, %.preheader259 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader257 ], [ 0, %.preheader259 ]
  %i.nk = mul i64 %i.af, %indvar334
  %scevgep336 = getelementptr i8, ptr %i.nj, i64 %i.nk
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv340
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !25
  %scevgep = getelementptr nuw i8, ptr %i.nm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %scevgep336, i64 %i.ah, i1 false), !tbaa !27
  %indvar.next335 = or disjoint i64 %indvar334, 1
  %i.nn = mul i64 %i.af, %indvar.next335
  %scevgep336.1 = getelementptr i8, ptr %i.nj, i64 %i.nn
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv340
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !25
  %scevgep.1 = getelementptr nuw i8, ptr %i.nq, i64 8
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
  call void @llvm.assume(i1 %lcmp.mod589)
  %i.nr = mul i64 %i.af, %indvar334.epil.init
  %scevgep336.epil = getelementptr i8, ptr %i.nj, i64 %i.nr
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv340.epil.init
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !25
  %scevgep.epil = getelementptr nuw i8, ptr %i.nt, i64 8
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v6f64(double, <6 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
