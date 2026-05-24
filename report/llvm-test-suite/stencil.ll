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
  %.pre403 = phi double [ %.pre403.pre, %.preheader260 ], [ %.pre406, %._crit_edge ] ; 2 uses
  %.pre401 = phi double [ %.pre401.pre, %.preheader260 ], [ %i.mz, %._crit_edge ] ; 2 uses
  %i.gq = phi ptr [ %.pre400, %.preheader260 ], [ %i.hd, %._crit_edge ] ; 5 uses
  %i.gr = phi ptr [ %.pre398, %.preheader260 ], [ %i.gq, %._crit_edge ] ; 7 uses
  %i.gs = phi ptr [ %.pre397, %.preheader260 ], [ %i.hb, %._crit_edge ] ; 5 uses
  %i.gt = phi ptr [ %.pre395, %.preheader260 ], [ %i.gs, %._crit_edge ] ; 7 uses
  %i.gu = phi ptr [ %.pre394, %.preheader260 ], [ %i.gz, %._crit_edge ] ; 5 uses
  %i.gv = phi ptr [ %.pre, %.preheader260 ], [ %i.gu, %._crit_edge ] ; 7 uses
  %indvars.iv324 = phi i64 [ 1, %.preheader260 ], [ %indvars.iv.next325, %._crit_edge ] ; 2 uses
  %i.gw = phi <2 x double> [ %i.gk, %.preheader260 ], [ %i.mx, %._crit_edge ] ; 4 uses
  %i.gx = phi <2 x double> [ %i.gl, %.preheader260 ], [ %i.my, %._crit_edge ] ; 4 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 5 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next325
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !25 ; 7 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next325
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !25 ; 7 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next325
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !25 ; 7 uses
  %i.he = mul nuw nsw i64 %indvars.iv324, %i.i
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.he ; 2 uses
  %.phi.trans.insert405 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hg = load <2 x double>, ptr %i.gz, align 8, !tbaa !27 ; 4 uses
  %.pre406 = load double, ptr %.phi.trans.insert405, align 8, !tbaa !27
  %.phi.trans.insert411 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %.phi.trans.insert417 = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hh = load <2 x double>, ptr %i.hb, align 8, !tbaa !27 ; 5 uses
  %.pre412 = load double, ptr %.phi.trans.insert411, align 8, !tbaa !27 ; 2 uses
  %i.hi = load <2 x double>, ptr %i.hd, align 8, !tbaa !27 ; 5 uses
  %.pre418 = load double, ptr %.phi.trans.insert417, align 8, !tbaa !27 ; 2 uses
  %i.hj = extractelement <2 x double> %i.hh, i64 0 ; 2 uses
  %i.hk = extractelement <2 x double> %i.hi, i64 0 ; 2 uses
  %1 = shufflevector <2 x double> %i.hg, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %2 = insertelement <4 x double> %1, double %.pre401, i64 0
  %3 = insertelement <4 x double> %2, double %.pre403, i64 2 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader258
  %scevgep447 = getelementptr nuw i8, ptr %i.gu, i64 16
  %scevgep448 = getelementptr i8, ptr %i.gu, i64 %i.au
  %scevgep449 = getelementptr i8, ptr %i.gv, i64 %i.au
  %i.hl = insertelement <2 x ptr> poison, ptr %i.gz, i64 0
  %i.hm = insertelement <2 x ptr> %i.hl, ptr %i.gs, i64 1
  %i.hn = getelementptr i8, <2 x ptr> %i.hm, i64 16
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
  %i.ho = insertelement <8 x ptr> poison, ptr %scevgep448, i64 0
  %i.hp = insertelement <8 x ptr> %i.ho, ptr %scevgep449, i64 1
  %i.hq = insertelement <8 x ptr> %i.hp, ptr %scevgep451, i64 2
  %i.hr = insertelement <8 x ptr> %i.hq, ptr %scevgep453, i64 3
  %i.hs = insertelement <8 x ptr> %i.hr, ptr %scevgep454, i64 4
  %i.ht = insertelement <8 x ptr> %i.hs, ptr %scevgep456, i64 5
  %i.hu = insertelement <8 x ptr> %i.ht, ptr %scevgep458, i64 6
  %i.hv = insertelement <8 x ptr> %i.hu, ptr %scevgep459, i64 7
  %i.hw = icmp ult <8 x ptr> %i.gn, %i.hv
  %i.hx = insertelement <8 x ptr> poison, ptr %scevgep447, i64 0
  %i.hy = insertelement <8 x ptr> %i.hx, ptr %i.gv, i64 1
  %i.hz = shufflevector <2 x ptr> %i.hn, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ia = shufflevector <8 x ptr> %i.hy, <8 x ptr> %i.hz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ib = insertelement <8 x ptr> %i.ia, ptr %i.gt, i64 4
  %i.ic = insertelement <8 x ptr> %i.ib, ptr %scevgep455, i64 5
  %i.id = insertelement <8 x ptr> %i.ic, ptr %scevgep457, i64 6
  %i.ie = insertelement <8 x ptr> %i.id, ptr %i.gr, i64 7
  %i.if = icmp ult <8 x ptr> %i.ie, %i.gp
  %i.ig = and <8 x i1> %i.hw, %i.if
  %bound0489 = icmp ult ptr %scevgep445, %scevgep461
  %bound1490 = icmp ult ptr %scevgep460, %scevgep446
  %found.conflict491 = and i1 %bound0489, %bound1490
  %i.ih = bitcast <8 x i1> %i.ig to i8
  %i.ii = icmp ne i8 %i.ih, 0
  %op.rdx.a = or i1 %i.ii, %found.conflict491
  br i1 %op.rdx.a, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ij = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ik = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.il = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.im = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.in = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %vector.recur.init511 = insertelement <2 x double> poison, double %.pre403, i64 1
  %vector.recur.init513 = insertelement <2 x double> poison, double %.pre401, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <2 x double> [ %i.hi, %vector.ph ], [ %wide.load528, %vector.body ] ; 2 uses
  %vector.recur494 = phi <2 x double> [ %i.ij, %vector.ph ], [ %i.kk, %vector.body ]
  %vector.recur496 = phi <2 x double> [ %i.gw, %vector.ph ], [ %wide.load527, %vector.body ] ; 2 uses
  %vector.recur498 = phi <2 x double> [ %i.gx, %vector.ph ], [ %i.ke, %vector.body ]
  %vector.recur500 = phi <2 x double> [ %i.hh, %vector.ph ], [ %wide.load523, %vector.body ] ; 2 uses
  %vector.recur502 = phi <2 x double> [ %i.ik, %vector.ph ], [ %i.jt, %vector.body ]
  %vector.recur504 = phi <2 x double> [ %i.il, %vector.ph ], [ %wide.load522, %vector.body ] ; 2 uses
  %vector.recur506 = phi <2 x double> [ %i.im, %vector.ph ], [ %i.jn, %vector.body ]
  %vector.recur508 = phi <2 x double> [ %i.hg, %vector.ph ], [ %wide.load518, %vector.body ] ; 2 uses
  %vector.recur510 = phi <2 x double> [ %i.in, %vector.ph ], [ %i.jc, %vector.body ]
  %vector.recur512 = phi <2 x double> [ %vector.recur.init511, %vector.ph ], [ %wide.load517, %vector.body ] ; 2 uses
  %vector.recur514 = phi <2 x double> [ %vector.recur.init513, %vector.ph ], [ %i.iw, %vector.body ]
  %i.io = or disjoint i64 %index, 1               ; 4 uses
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %index
  %wide.load = load <2 x double>, ptr %i.ip, align 8, !tbaa !27, !alias.scope !39
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.io
  %wide.load515 = load <2 x double>, ptr %i.iq, align 8, !tbaa !27, !alias.scope !39
  %i.ir = fadd <2 x double> %wide.load, %wide.load515
  %i.is = add nuw nsw i64 %index, 2               ; 9 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.is
  %wide.load516 = load <2 x double>, ptr %i.it, align 8, !tbaa !27, !alias.scope !39
  %i.iu = fadd <2 x double> %i.ir, %wide.load516
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.is
  %wide.load517 = load <2 x double>, ptr %i.iv, align 8, !tbaa !27, !alias.scope !42 ; 4 uses
  %i.iw = shufflevector <2 x double> %vector.recur512, <2 x double> %wide.load517, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ix = shufflevector <2 x double> %vector.recur514, <2 x double> %vector.recur512, <2 x i32> <i32 1, i32 3>
  %i.iy = fadd <2 x double> %i.iu, %i.ix
  %i.iz = fadd <2 x double> %i.iy, %i.iw
  %i.ja = fadd <2 x double> %i.iz, %wide.load517
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.is
  %wide.load518 = load <2 x double>, ptr %i.jb, align 8, !tbaa !27, !alias.scope !44 ; 4 uses
  %i.jc = shufflevector <2 x double> %vector.recur508, <2 x double> %wide.load518, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jd = shufflevector <2 x double> %vector.recur510, <2 x double> %vector.recur508, <2 x i32> <i32 1, i32 3>
  %i.je = fadd <2 x double> %i.ja, %i.jd
  %i.jf = fadd <2 x double> %i.je, %i.jc
  %i.jg = fadd <2 x double> %i.jf, %wide.load518
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %index
  %wide.load519 = load <2 x double>, ptr %i.jh, align 8, !tbaa !27, !alias.scope !46
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.io
  %wide.load520 = load <2 x double>, ptr %i.ji, align 8, !tbaa !27, !alias.scope !46
  %i.jj = fadd <2 x double> %wide.load519, %wide.load520
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.is
  %wide.load521 = load <2 x double>, ptr %i.jk, align 8, !tbaa !27, !alias.scope !46
  %i.jl = fadd <2 x double> %i.jj, %wide.load521
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.is
  %wide.load522 = load <2 x double>, ptr %i.jm, align 8, !tbaa !27, !alias.scope !48 ; 5 uses
  %i.jn = shufflevector <2 x double> %vector.recur504, <2 x double> %wide.load522, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jo = shufflevector <2 x double> %vector.recur506, <2 x double> %vector.recur504, <2 x i32> <i32 1, i32 3>
  %i.jp = fadd <2 x double> %i.jl, %i.jo
  %i.jq = fadd <2 x double> %i.jp, %i.jn
  %i.jr = fadd <2 x double> %i.jq, %wide.load522
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.is
  %wide.load523 = load <2 x double>, ptr %i.js, align 8, !tbaa !27, !alias.scope !50 ; 5 uses
  %i.jt = shufflevector <2 x double> %vector.recur500, <2 x double> %wide.load523, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ju = shufflevector <2 x double> %vector.recur502, <2 x double> %vector.recur500, <2 x i32> <i32 1, i32 3>
  %i.jv = fadd <2 x double> %i.jr, %i.ju
  %i.jw = fadd <2 x double> %i.jv, %i.jt
  %i.jx = fadd <2 x double> %i.jw, %wide.load523
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index
  %wide.load524 = load <2 x double>, ptr %i.jy, align 8, !tbaa !27, !alias.scope !52
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.io
  %wide.load525 = load <2 x double>, ptr %i.jz, align 8, !tbaa !27, !alias.scope !52
  %i.ka = fadd <2 x double> %wide.load524, %wide.load525
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.is
  %wide.load526 = load <2 x double>, ptr %i.kb, align 8, !tbaa !27, !alias.scope !52
  %i.kc = fadd <2 x double> %i.ka, %wide.load526
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.is
  %wide.load527 = load <2 x double>, ptr %i.kd, align 8, !tbaa !27, !alias.scope !54 ; 5 uses
  %i.ke = shufflevector <2 x double> %vector.recur496, <2 x double> %wide.load527, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kf = shufflevector <2 x double> %vector.recur498, <2 x double> %vector.recur496, <2 x i32> <i32 1, i32 3>
  %i.kg = fadd <2 x double> %i.kc, %i.kf
  %i.kh = fadd <2 x double> %i.kg, %i.ke
  %i.ki = fadd <2 x double> %i.kh, %wide.load527
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.is
  %wide.load528 = load <2 x double>, ptr %i.kj, align 8, !tbaa !27, !alias.scope !56 ; 5 uses
  %i.kk = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load528, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kl = shufflevector <2 x double> %vector.recur494, <2 x double> %vector.recur, <2 x i32> <i32 1, i32 3>
  %i.km = fadd <2 x double> %i.ki, %i.kl
  %i.kn = fadd <2 x double> %i.km, %i.kk
  %i.ko = fadd <2 x double> %i.kn, %wide.load528
  %i.kp = fadd <2 x double> %i.jg, %i.jx
  %i.kq = fadd <2 x double> %i.kp, %i.ko
  %i.kr = fdiv <2 x double> %i.kq, splat (double 2.700000e+01)
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.io
  store <2 x double> %i.kr, ptr %i.ks, align 8, !tbaa !27, !alias.scope !58, !noalias !60
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kt = icmp eq i64 %index.next, %n.vec
  br i1 %i.kt, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x double> %wide.load528, i64 1
  %vector.recur.extract529 = extractelement <2 x double> %wide.load528, i64 0
  %vector.recur.extract532 = extractelement <2 x double> %wide.load523, i64 1
  %vector.recur.extract533 = extractelement <2 x double> %wide.load523, i64 0
  %i.ku = shufflevector <2 x double> %wide.load522, <2 x double> %wide.load527, <2 x i32> <i32 1, i32 3>
  %i.kv = shufflevector <2 x double> %wide.load522, <2 x double> %wide.load527, <2 x i32> <i32 0, i32 2>
  %4 = shufflevector <2 x double> %wide.load517, <2 x double> %wide.load518, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader258, %middle.block
  %.ph575 = phi double [ %.pre418, %vector.memcheck ], [ %.pre418, %.preheader258 ], [ %vector.recur.extract, %middle.block ]
  %.ph576 = phi double [ %i.hk, %vector.memcheck ], [ %i.hk, %.preheader258 ], [ %vector.recur.extract529, %middle.block ]
  %.ph577 = phi double [ %.pre412, %vector.memcheck ], [ %.pre412, %.preheader258 ], [ %vector.recur.extract532, %middle.block ]
  %.ph578 = phi double [ %i.hj, %vector.memcheck ], [ %i.hj, %.preheader258 ], [ %vector.recur.extract533, %middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader258 ], [ %i.ba, %middle.block ]
  %.ph579 = phi <2 x double> [ %i.gx, %vector.memcheck ], [ %i.gx, %.preheader258 ], [ %i.kv, %middle.block ]
  %.ph580 = phi <2 x double> [ %i.gw, %vector.memcheck ], [ %i.gw, %.preheader258 ], [ %i.ku, %middle.block ]
  %.ph581 = phi <4 x double> [ %3, %vector.memcheck ], [ %3, %.preheader258 ], [ %4, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.kw = phi double [ %i.lx, %scalar.ph ], [ %.ph575, %scalar.ph.preheader ] ; 2 uses
  %i.kx = phi double [ %i.kw, %scalar.ph ], [ %.ph576, %scalar.ph.preheader ]
  %i.ky = phi double [ %i.lq, %scalar.ph ], [ %.ph577, %scalar.ph.preheader ] ; 2 uses
  %i.kz = phi double [ %i.ky, %scalar.ph ], [ %.ph578, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.la = phi <2 x double> [ %i.lb, %scalar.ph ], [ %.ph579, %scalar.ph.preheader ]
  %i.lb = phi <2 x double> [ %i.mj, %scalar.ph ], [ %.ph580, %scalar.ph.preheader ] ; 2 uses
  %5 = phi <4 x double> [ %18, %scalar.ph ], [ %.ph581, %scalar.ph.preheader ] ; 2 uses
  %i.lc = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !27
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 10 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !27
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next
  %i.lj = load double, ptr %i.li, align 8, !tbaa !27
  %6 = insertelement <2 x double> poison, double %i.lh, i64 0
  %7 = insertelement <2 x double> %6, double %i.lj, i64 1 ; 2 uses
  %8 = shufflevector <4 x double> %5, <4 x double> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison>
  %9 = shufflevector <2 x double> %7, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.lc
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.next
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !27
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !27
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv.next
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !27 ; 2 uses
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.lc
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !27
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !27
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.next
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !27 ; 2 uses
  %10 = load <2 x double>, ptr %i.lf, align 8, !tbaa !27
  %i.ly = load <2 x double>, ptr %i.lk, align 8, !tbaa !27 ; 2 uses
  %i.lz = load <2 x double>, ptr %i.lr, align 8, !tbaa !27 ; 2 uses
  %i.ma = shufflevector <2 x double> %i.ly, <2 x double> %i.lz, <2 x i32> <i32 0, i32 2>
  %i.mb = shufflevector <2 x double> %i.ly, <2 x double> %i.lz, <2 x i32> <i32 1, i32 3>
  %i.mc = fadd <2 x double> %i.ma, %i.mb
  %i.md = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.me = insertelement <2 x double> %i.md, double %i.lt, i64 1
  %i.mf = fadd <2 x double> %i.mc, %i.me
  %i.mg = fadd <2 x double> %i.mf, %i.la
  %i.mh = fadd <2 x double> %i.mg, %i.lb
  %i.mi = insertelement <2 x double> poison, double %i.lo, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.lv, i64 1 ; 2 uses
  %i.mk = fadd <2 x double> %i.mh, %i.mj
  %i.ml = insertelement <2 x double> poison, double %i.kz, i64 0
  %i.mm = insertelement <2 x double> %i.ml, double %i.kx, i64 1
  %i.mn = fadd <2 x double> %i.mk, %i.mm
  %i.mo = insertelement <2 x double> poison, double %i.ky, i64 0
  %i.mp = insertelement <2 x double> %i.mo, double %i.kw, i64 1
  %i.mq = fadd <2 x double> %i.mn, %i.mp
  %i.mr = insertelement <2 x double> poison, double %i.lq, i64 0
  %i.ms = insertelement <2 x double> %i.mr, double %i.lx, i64 1
  %i.mt = fadd <2 x double> %i.mq, %i.ms
  %11 = shufflevector <6 x double> %8, <6 x double> %9, <10 x i32> <i32 poison, i32 poison, i32 0, i32 2, i32 6, i32 1, i32 3, i32 7, i32 poison, i32 poison>
  %12 = shufflevector <2 x double> %i.mt, <2 x double> poison, <10 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <10 x double> %11, <10 x double> %12, <10 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 10, i32 11>
  %14 = shufflevector <2 x double> %10, <2 x double> poison, <10 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <10 x double> %14, <10 x double> %13, <10 x i32> <i32 0, i32 1, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.mu = call double @llvm.vector.reduce.fadd.v10f64(double %i.le, <10 x double> %15)
  %i.mv = fdiv double %i.mu, 2.700000e+01
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv
  store double %i.mv, ptr %i.mw, align 8, !tbaa !27
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %16 = shufflevector <4 x double> %5, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %17 = shufflevector <2 x double> %7, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %18 = shufflevector <4 x double> %16, <4 x double> %17, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  %i.mx = shufflevector <2 x double> %i.hh, <2 x double> %i.hi, <2 x i32> <i32 1, i32 3>
  %i.my = shufflevector <2 x double> %i.hh, <2 x double> %i.hi, <2 x i32> <i32 0, i32 2>
  %i.mz = extractelement <2 x double> %i.hg, i64 0
  br i1 %exitcond328.not, label %._crit_edge270.split, label %.preheader258, !llvm.loop !63

._crit_edge270.split:                             ; preds = %._crit_edge
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count332
  %indvar.next444 = add i64 %indvar443, 1
  br i1 %exitcond333.not, label %.preheader261, label %.preheader260, !llvm.loop !64

.preheader259:                                    ; preds = %.preheader259.lr.ph.split.split, %._crit_edge281.split
  %indvars.iv345 = phi i64 [ 1, %.preheader259.lr.ph.split.split ], [ %indvars.iv.next346, %._crit_edge281.split ] ; 2 uses
  %indvar = phi i64 [ 0, %.preheader259.lr.ph.split.split ], [ %indvar.next, %._crit_edge281.split ] ; 2 uses
  %i.na = mul i64 %i.ae, %indvar
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv345
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !23 ; 3 uses
  %i.nd = getelementptr i8, ptr %i.aj, i64 %i.na  ; 3 uses
  br i1 %i.bc, label %.preheader257.epil.preheader, label %.preheader257

.preheader257:                                    ; preds = %.preheader259, %.preheader257
  %indvars.iv340 = phi i64 [ %indvars.iv.next341.1, %.preheader257 ], [ 1, %.preheader259 ] ; 3 uses
  %indvar334 = phi i64 [ %indvar.next335.1, %.preheader257 ], [ 0, %.preheader259 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader257 ], [ 0, %.preheader259 ]
  %i.ne = mul i64 %i.af, %indvar334
  %scevgep336 = getelementptr i8, ptr %i.nd, i64 %i.ne
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %indvars.iv340
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !25
  %scevgep = getelementptr nuw i8, ptr %i.ng, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %scevgep336, i64 %i.ah, i1 false), !tbaa !27
  %indvar.next335 = or disjoint i64 %indvar334, 1
  %i.nh = mul i64 %i.af, %indvar.next335
  %scevgep336.1 = getelementptr i8, ptr %i.nd, i64 %i.nh
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %indvars.iv340
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !25
  %scevgep.1 = getelementptr nuw i8, ptr %i.nk, i64 8
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
  %i.nl = mul i64 %i.af, %indvar334.epil.init
  %scevgep336.epil = getelementptr i8, ptr %i.nd, i64 %i.nl
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %indvars.iv340.epil.init
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !25
  %scevgep.epil = getelementptr nuw i8, ptr %i.nn, i64 8
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
declare double @llvm.vector.reduce.fadd.v10f64(double, <10 x double>) #2

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
