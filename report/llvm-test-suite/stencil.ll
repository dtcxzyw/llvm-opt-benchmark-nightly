loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@stencil_calc:bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load630 = load <2 x double>, ptr %i.dl, align 8, !tbaa !27 ; 4 uses
  %i.dm = shufflevector <2 x double> %vector.recur626, <2 x double> %wide.load630, <2 x i32> <i32 1, i32 2>
  %i.dn = fadd <2 x double> %i.dj, %i.dm
  %i.do = fadd <2 x double> %i.dn, %wide.load630
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dd
  %wide.load631 = load <2 x double>, ptr %i.dp, align 8, !tbaa !27
  %i.dq = fadd <2 x double> %i.do, %wide.load631
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dd
  %wide.load632 = load <2 x double>, ptr %i.dr, align 8, !tbaa !27
  %i.ds = fadd <2 x double> %i.dq, %wide.load632
  %i.dt = fdiv <2 x double> %i.ds, splat (double 7.000000e+00)
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dd
  store <2 x double> %i.dt, ptr %i.du, align 8, !tbaa !27
  %index.next633 = add nuw i64 %index624, 2       ; 2 uses
  %i.dv = icmp eq i64 %index.next633, %n.vec622
  br i1 %i.dv, label %middle.block634, label %vector.body623, !llvm.loop !29

middle.block634:                                  ; preds = %vector.body623
  %vector.recur.extract635 = extractelement <2 x double> %wide.load630, i64 1
  br i1 %cmp.n636, label %._crit_edge317, label %scalar.ph618.preheader

scalar.ph618.preheader:                           ; preds = %.preheader250, %middle.block634
  %.ph = phi double [ %.pre494, %.preheader250 ], [ %vector.recur.extract635, %middle.block634 ]
  %indvars.iv429.ph = phi i64 [ 1, %.preheader250 ], [ %i.bs, %middle.block634 ]
  br label %scalar.ph618

scalar.ph618:                                     ; preds = %scalar.ph618.preheader, %scalar.ph618
  %i.dw = phi double [ %i.ei, %scalar.ph618 ], [ %.ph, %scalar.ph618.preheader ]
  %indvars.iv429 = phi i64 [ %indvars.iv.next430, %scalar.ph618 ], [ %indvars.iv429.ph, %scalar.ph618.preheader ] ; 7 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv429
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !27
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv429
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !27
  %i.eb = fadd double %i.dy, %i.ea
  %i.ec = getelementptr [8 x i8], ptr %i.cw, i64 %indvars.iv429
  %i.ed = getelementptr i8, ptr %i.ec, i64 -8
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !27
  %i.ef = fadd double %i.eb, %i.ee
  %i.eg = fadd double %i.ef, %i.dw
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next430
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !27 ; 2 uses
  %i.ej = fadd double %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv429
  %i.el = load double, ptr %i.ek, align 8, !tbaa !27
  %i.em = fadd double %i.ej, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv429
  %i.eo = load double, ptr %i.en, align 8, !tbaa !27
  %i.ep = fadd double %i.em, %i.eo
  %i.eq = fdiv double %i.ep, 7.000000e+00
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv429
  store double %i.eq, ptr %i.er, align 8, !tbaa !27
  %exitcond433.not = icmp eq i64 %indvars.iv.next430, %wide.trip.count432
  br i1 %exitcond433.not, label %._crit_edge317, label %scalar.ph618, !llvm.loop !33

._crit_edge317:                                   ; preds = %scalar.ph618, %middle.block634
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next435, %wide.trip.count437
  br i1 %exitcond438.not, label %._crit_edge320, label %.preheader250, !llvm.loop !34

._crit_edge320:                                   ; preds = %._crit_edge317
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond443.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count442
  br i1 %exitcond443.not, label %.preheader253, label %.preheader252, !llvm.loop !35

.preheader251:                                    ; preds = %.preheader251.lr.ph.split.split, %._crit_edge330
  %indvars.iv458 = phi i64 [ 1, %.preheader251.lr.ph.split.split ], [ %indvars.iv.next459, %._crit_edge330 ] ; 2 uses
  %indvar445 = phi i64 [ 0, %.preheader251.lr.ph.split.split ], [ %indvar.next446, %._crit_edge330 ] ; 2 uses
  %i.es = mul i64 %i.bl, %indvar445
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv458
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !23 ; 3 uses
  %i.ev = getelementptr i8, ptr %i.bq, i64 %i.es  ; 3 uses
  br i1 %i.bt, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader251, %.preheader
  %indvars.iv453 = phi i64 [ %indvars.iv.next454.1, %.preheader ], [ 1, %.preheader251 ] ; 3 uses
  %indvar447 = phi i64 [ %indvar.next448.1, %.preheader ], [ 0, %.preheader251 ] ; 3 uses
  %niter659 = phi i64 [ %niter659.next.1, %.preheader ], [ 0, %.preheader251 ]
  %i.ew = mul i64 %i.bm, %indvar447
  %scevgep449 = getelementptr i8, ptr %i.ev, i64 %i.ew
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv453
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !25
  %scevgep444 = getelementptr nuw i8, ptr %i.ey, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep444, ptr align 8 %scevgep449, i64 %i.bo, i1 false), !tbaa !27
  %indvar.next448 = or disjoint i64 %indvar447, 1
  %i.ez = mul i64 %i.bm, %indvar.next448
  %scevgep449.1 = getelementptr i8, ptr %i.ev, i64 %i.ez
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv453
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !25
  %scevgep444.1 = getelementptr nuw i8, ptr %i.fc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep444.1, ptr align 8 %scevgep449.1, i64 %i.bo, i1 false), !tbaa !27
  %indvars.iv.next454.1 = add nuw nsw i64 %indvars.iv453, 2 ; 2 uses
  %indvar.next448.1 = add nuw nsw i64 %indvar447, 2 ; 2 uses
  %niter659.next.1 = add nuw i64 %niter659, 2     ; 2 uses
  %niter659.ncmp.1 = icmp eq i64 %niter659.next.1, %unroll_iter658
  br i1 %niter659.ncmp.1, label %._crit_edge330.unr-lcssa, label %.preheader, !llvm.loop !36

._crit_edge330.unr-lcssa:                         ; preds = %.preheader
  br i1 %lcmp.mod656.not, label %._crit_edge330, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge330.unr-lcssa, %.preheader251
  %indvars.iv453.epil.init = phi i64 [ 1, %.preheader251 ], [ %indvars.iv.next454.1, %._crit_edge330.unr-lcssa ]
  %indvar447.epil.init = phi i64 [ 0, %.preheader251 ], [ %indvar.next448.1, %._crit_edge330.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod657)
  %i.fd = mul i64 %i.bm, %indvar447.epil.init
  %scevgep449.epil = getelementptr i8, ptr %i.ev, i64 %i.fd
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv453.epil.init
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !25
  %scevgep444.epil = getelementptr nuw i8, ptr %i.ff, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep444.epil, ptr align 8 %scevgep449.epil, i64 %i.bo, i1 false), !tbaa !27
  br label %._crit_edge330

._crit_edge330:                                   ; preds = %._crit_edge330.unr-lcssa, %.preheader.epil.preheader
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1
  %indvar.next446 = add nuw nsw i64 %indvar445, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvar.next446, %wide.trip.count461
  br i1 %exitcond462.not, label %.loopexit, label %.preheader251, !llvm.loop !37

.loopexit:                                        ; preds = %._crit_edge330, %.preheader253, %bb.b, %.preheader251.lr.ph
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count466
  br i1 %exitcond467.not, label %.loopexit256, label %bb.b, !llvm.loop !38

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %.loopexit262
  %indvars.iv376 = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next377, %.loopexit262 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv376
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !12
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [192 x i8], ptr %i.w, i64 %i.fj ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !14
  %i.fm = icmp slt i32 %i.fl, 0
  %brmerge508 = or i1 %i.fm, %.not243266
  br i1 %brmerge508, label %.loopexit262, label %.preheader260.lr.ph.split.split

.preheader260.lr.ph.split.split:                  ; preds = %.lr.ph.split.split
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 184
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !20
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.x
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !21
  br label %.preheader260

.preheader259.lr.ph:                              ; preds = %._crit_edge270
  br i1 %.not243266, label %.loopexit262, label %.preheader259.lr.ph.split.split

.preheader259.lr.ph.split.split:                  ; preds = %.preheader259.lr.ph
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 184
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !20
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.x
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !21
  br label %.preheader259

.preheader260:                                    ; preds = %.preheader260.lr.ph.split.split, %._crit_edge270
  %indvar510 = phi i64 [ 0, %.preheader260.lr.ph.split.split ], [ %indvar.next511, %._crit_edge270 ] ; 2 uses
  %indvars.iv355 = phi i64 [ 1, %.preheader260.lr.ph.split.split ], [ %indvars.iv.next356, %._crit_edge270 ] ; 3 uses
  %i.fv = mul i64 %i.ao, %indvar510               ; 2 uses
  %scevgep512 = getelementptr i8, ptr %i.aw, i64 %i.fv ; 2 uses
  %scevgep513 = getelementptr i8, ptr %i.ay, i64 %i.fv ; 2 uses
  %i.fw = mul nuw nsw i64 %i.j, %indvars.iv355
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fw
  %i.fy = getelementptr [8 x i8], ptr %i.fq, i64 %indvars.iv355 ; 3 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 -8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !23 ; 3 uses
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !23 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !23 ; 3 uses
  %.pre = load ptr, ptr %i.ga, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.pre468 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25 ; 3 uses
  %.pre469 = load ptr, ptr %i.gb, align 8, !tbaa !25
  %.phi.trans.insert470 = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.pre471 = load ptr, ptr %.phi.trans.insert470, align 8, !tbaa !25 ; 2 uses
  %.pre472 = load ptr, ptr %i.gd, align 8, !tbaa !25
  %.phi.trans.insert473 = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.pre474 = load ptr, ptr %.phi.trans.insert473, align 8, !tbaa !25 ; 2 uses
  %.pre475.pre = load double, ptr %.pre468, align 8, !tbaa !27
  %.phi.trans.insert476.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre468, i64 8
  %.pre477.pre = load double, ptr %.phi.trans.insert476.phi.trans.insert, align 8, !tbaa !27
  %i.ge = load <2 x double>, ptr %.pre471, align 8, !tbaa !27 ; 2 uses
  %i.gf = load <2 x double>, ptr %.pre474, align 8, !tbaa !27 ; 2 uses
  %i.gg = shufflevector <2 x double> %i.ge, <2 x double> %i.gf, <2 x i32> <i32 1, i32 3>
  %i.gh = shufflevector <2 x double> %i.ge, <2 x double> %i.gf, <2 x i32> <i32 0, i32 2>
  %i.gi = insertelement <8 x ptr> poison, ptr %scevgep512, i64 0
  %i.gj = shufflevector <8 x ptr> %i.gi, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.gk = insertelement <8 x ptr> poison, ptr %scevgep513, i64 0
  %i.gl = shufflevector <8 x ptr> %i.gk, <8 x ptr> poison, <8 x i32> zeroinitializer
  br label %.preheader258

.preheader258:                                    ; preds = %.preheader260, %._crit_edge
  %.pre477 = phi double [ %.pre477.pre, %.preheader260 ], [ %.pre480, %._crit_edge ] ; 3 uses
  %.pre475 = phi double [ %.pre475.pre, %.preheader260 ], [ %.pre478, %._crit_edge ] ; 3 uses
  %i.gm = phi ptr [ %.pre474, %.preheader260 ], [ %i.gz, %._crit_edge ] ; 5 uses
  %i.gn = phi ptr [ %.pre472, %.preheader260 ], [ %i.gm, %._crit_edge ] ; 7 uses
  %i.go = phi ptr [ %.pre471, %.preheader260 ], [ %i.gx, %._crit_edge ] ; 5 uses
  %i.gp = phi ptr [ %.pre469, %.preheader260 ], [ %i.go, %._crit_edge ] ; 7 uses
  %i.gq = phi ptr [ %.pre468, %.preheader260 ], [ %i.gv, %._crit_edge ] ; 5 uses
  %i.gr = phi ptr [ %.pre, %.preheader260 ], [ %i.gq, %._crit_edge ] ; 8 uses
  %indvars.iv350 = phi i64 [ 1, %.preheader260 ], [ %indvars.iv.next351, %._crit_edge ] ; 2 uses
  %i.gs = phi <2 x double> [ %i.gg, %.preheader260 ], [ %1, %._crit_edge ] ; 4 uses
  %i.gt = phi <2 x double> [ %i.gh, %.preheader260 ], [ %2, %._crit_edge ] ; 4 uses
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 5 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next351
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !25 ; 7 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next351
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !25 ; 6 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.next351
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !25 ; 6 uses
  %i.ha = mul nuw nsw i64 %indvars.iv350, %i.i
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.ha ; 2 uses
  %.pre478 = load double, ptr %i.gv, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert479 = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.pre480 = load double, ptr %.phi.trans.insert479, align 8, !tbaa !27 ; 4 uses
  %i.hc = load <2 x double>, ptr %i.gx, align 8, !tbaa !27 ; 4 uses
  %i.hd = load <2 x double>, ptr %i.gz, align 8, !tbaa !27 ; 4 uses
  %1 = shufflevector <2 x double> %i.hc, <2 x double> %i.hd, <2 x i32> <i32 1, i32 3> ; 3 uses
  %2 = shufflevector <2 x double> %i.hc, <2 x double> %i.hd, <2 x i32> <i32 0, i32 2> ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader258
  %scevgep514 = getelementptr nuw i8, ptr %i.gq, i64 16
  %scevgep515 = getelementptr i8, ptr %i.gq, i64 %i.au
  %scevgep516 = getelementptr i8, ptr %i.gr, i64 %i.au
  %i.he = insertelement <2 x ptr> poison, ptr %i.gv, i64 0
  %i.hf = insertelement <2 x ptr> %i.he, ptr %i.go, i64 1
  %i.hg = getelementptr i8, <2 x ptr> %i.hf, i64 16
  %scevgep518 = getelementptr i8, ptr %i.gv, i64 %i.au
  %scevgep520 = getelementptr i8, ptr %i.go, i64 %i.au
  %scevgep521 = getelementptr i8, ptr %i.gp, i64 %i.au
  %scevgep522 = getelementptr i8, ptr %i.gx, i64 16
  %scevgep523 = getelementptr i8, ptr %i.gx, i64 %i.au
  %scevgep524 = getelementptr i8, ptr %i.gm, i64 16
  %scevgep525 = getelementptr i8, ptr %i.gm, i64 %i.au
  %scevgep526 = getelementptr i8, ptr %i.gn, i64 %i.au
  %scevgep527 = getelementptr i8, ptr %i.gz, i64 16
  %scevgep528 = getelementptr i8, ptr %i.gz, i64 %i.au
  %i.hh = insertelement <8 x ptr> poison, ptr %scevgep515, i64 0
  %i.hi = insertelement <8 x ptr> %i.hh, ptr %scevgep516, i64 1
  %i.hj = insertelement <8 x ptr> %i.hi, ptr %scevgep518, i64 2
  %i.hk = insertelement <8 x ptr> %i.hj, ptr %scevgep520, i64 3
  %i.hl = insertelement <8 x ptr> %i.hk, ptr %scevgep521, i64 4
  %i.hm = insertelement <8 x ptr> %i.hl, ptr %scevgep523, i64 5
  %i.hn = insertelement <8 x ptr> %i.hm, ptr %scevgep525, i64 6
  %i.ho = insertelement <8 x ptr> %i.hn, ptr %scevgep526, i64 7
  %i.hp = icmp ult <8 x ptr> %i.gj, %i.ho
  %i.hq = insertelement <8 x ptr> poison, ptr %scevgep514, i64 0
  %i.hr = insertelement <8 x ptr> %i.hq, ptr %i.gr, i64 1
  %i.hs = shufflevector <2 x ptr> %i.hg, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ht = shufflevector <8 x ptr> %i.hr, <8 x ptr> %i.hs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hu = insertelement <8 x ptr> %i.ht, ptr %i.gp, i64 4
  %i.hv = insertelement <8 x ptr> %i.hu, ptr %scevgep522, i64 5
  %i.hw = insertelement <8 x ptr> %i.hv, ptr %scevgep524, i64 6
  %i.hx = insertelement <8 x ptr> %i.hw, ptr %i.gn, i64 7
  %i.hy = icmp ult <8 x ptr> %i.hx, %i.gl
  %i.hz = and <8 x i1> %i.hp, %i.hy
  %bound0556 = icmp ult ptr %scevgep512, %scevgep528
  %bound1557 = icmp ult ptr %scevgep527, %scevgep513
  %found.conflict558 = and i1 %bound0556, %bound1557
  %i.ia = bitcast <8 x i1> %i.hz to i8
  %i.ib = icmp ne i8 %i.ia, 0
  %op.rdx642 = or i1 %i.ib, %found.conflict558
  br i1 %op.rdx642, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ic = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.id = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ie = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.if = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %vector.recur.init574 = insertelement <2 x double> poison, double %.pre480, i64 1
  %vector.recur.init576 = insertelement <2 x double> poison, double %.pre478, i64 1
  %vector.recur.init578 = insertelement <2 x double> poison, double %.pre477, i64 1
  %vector.recur.init580 = insertelement <2 x double> poison, double %.pre475, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <2 x double> [ %i.hd, %vector.ph ], [ %wide.load595, %vector.body ] ; 2 uses
  %vector.recur561 = phi <2 x double> [ %i.ic, %vector.ph ], [ %i.kc, %vector.body ]
  %vector.recur563 = phi <2 x double> [ %i.gs, %vector.ph ], [ %wide.load594, %vector.body ] ; 2 uses
  %vector.recur565 = phi <2 x double> [ %i.gt, %vector.ph ], [ %i.jw, %vector.body ]
  %vector.recur567 = phi <2 x double> [ %i.hc, %vector.ph ], [ %wide.load590, %vector.body ] ; 2 uses
  %vector.recur569 = phi <2 x double> [ %i.id, %vector.ph ], [ %i.jl, %vector.body ]
  %vector.recur571 = phi <2 x double> [ %i.ie, %vector.ph ], [ %wide.load589, %vector.body ] ; 2 uses
  %vector.recur573 = phi <2 x double> [ %i.if, %vector.ph ], [ %i.jf, %vector.body ]
  %vector.recur575 = phi <2 x double> [ %vector.recur.init574, %vector.ph ], [ %wide.load585, %vector.body ] ; 2 uses
  %vector.recur577 = phi <2 x double> [ %vector.recur.init576, %vector.ph ], [ %i.iu, %vector.body ]
  %vector.recur579 = phi <2 x double> [ %vector.recur.init578, %vector.ph ], [ %wide.load584, %vector.body ] ; 2 uses
  %vector.recur581 = phi <2 x double> [ %vector.recur.init580, %vector.ph ], [ %i.io, %vector.body ]
  %i.ig = or disjoint i64 %index, 1               ; 4 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index
  %wide.load = load <2 x double>, ptr %i.ih, align 8, !tbaa !27, !alias.scope !39
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ig
  %wide.load582 = load <2 x double>, ptr %i.ii, align 8, !tbaa !27, !alias.scope !39
  %i.ij = fadd <2 x double> %wide.load, %wide.load582
  %i.ik = add nuw nsw i64 %index, 2               ; 9 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ik
  %wide.load583 = load <2 x double>, ptr %i.il, align 8, !tbaa !27, !alias.scope !39
  %i.im = fadd <2 x double> %i.ij, %wide.load583
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.ik
  %wide.load584 = load <2 x double>, ptr %i.in, align 8, !tbaa !27, !alias.scope !42 ; 5 uses
  %i.io = shufflevector <2 x double> %vector.recur579, <2 x double> %wide.load584, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ip = shufflevector <2 x double> %vector.recur581, <2 x double> %vector.recur579, <2 x i32> <i32 1, i32 3>
  %i.iq = fadd <2 x double> %i.im, %i.ip
  %i.ir = fadd <2 x double> %i.iq, %i.io
  %i.is = fadd <2 x double> %i.ir, %wide.load584
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.ik
  %wide.load585 = load <2 x double>, ptr %i.it, align 8, !tbaa !27, !alias.scope !44 ; 5 uses
  %i.iu = shufflevector <2 x double> %vector.recur575, <2 x double> %wide.load585, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.iv = shufflevector <2 x double> %vector.recur577, <2 x double> %vector.recur575, <2 x i32> <i32 1, i32 3>
  %i.iw = fadd <2 x double> %i.is, %i.iv
  %i.ix = fadd <2 x double> %i.iw, %i.iu
  %i.iy = fadd <2 x double> %i.ix, %wide.load585
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %index
  %wide.load586 = load <2 x double>, ptr %i.iz, align 8, !tbaa !27, !alias.scope !46
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.ig
  %wide.load587 = load <2 x double>, ptr %i.ja, align 8, !tbaa !27, !alias.scope !46
  %i.jb = fadd <2 x double> %wide.load586, %wide.load587
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.ik
  %wide.load588 = load <2 x double>, ptr %i.jc, align 8, !tbaa !27, !alias.scope !46
  %i.jd = fadd <2 x double> %i.jb, %wide.load588
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.ik
  %wide.load589 = load <2 x double>, ptr %i.je, align 8, !tbaa !27, !alias.scope !48 ; 5 uses
  %i.jf = shufflevector <2 x double> %vector.recur571, <2 x double> %wide.load589, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jg = shufflevector <2 x double> %vector.recur573, <2 x double> %vector.recur571, <2 x i32> <i32 1, i32 3>
  %i.jh = fadd <2 x double> %i.jd, %i.jg
  %i.ji = fadd <2 x double> %i.jh, %i.jf
  %i.jj = fadd <2 x double> %i.ji, %wide.load589
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.ik
  %wide.load590 = load <2 x double>, ptr %i.jk, align 8, !tbaa !27, !alias.scope !50 ; 5 uses
  %i.jl = shufflevector <2 x double> %vector.recur567, <2 x double> %wide.load590, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jm = shufflevector <2 x double> %vector.recur569, <2 x double> %vector.recur567, <2 x i32> <i32 1, i32 3>
  %i.jn = fadd <2 x double> %i.jj, %i.jm
  %i.jo = fadd <2 x double> %i.jn, %i.jl
  %i.jp = fadd <2 x double> %i.jo, %wide.load590
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %index
  %wide.load591 = load <2 x double>, ptr %i.jq, align 8, !tbaa !27, !alias.scope !52
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ig
  %wide.load592 = load <2 x double>, ptr %i.jr, align 8, !tbaa !27, !alias.scope !52
  %i.js = fadd <2 x double> %wide.load591, %wide.load592
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ik
  %wide.load593 = load <2 x double>, ptr %i.jt, align 8, !tbaa !27, !alias.scope !52
  %i.ju = fadd <2 x double> %i.js, %wide.load593
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.ik
  %wide.load594 = load <2 x double>, ptr %i.jv, align 8, !tbaa !27, !alias.scope !54 ; 5 uses
  %i.jw = shufflevector <2 x double> %vector.recur563, <2 x double> %wide.load594, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jx = shufflevector <2 x double> %vector.recur565, <2 x double> %vector.recur563, <2 x i32> <i32 1, i32 3>
  %i.jy = fadd <2 x double> %i.ju, %i.jx
  %i.jz = fadd <2 x double> %i.jy, %i.jw
  %i.ka = fadd <2 x double> %i.jz, %wide.load594
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.ik
  %wide.load595 = load <2 x double>, ptr %i.kb, align 8, !tbaa !27, !alias.scope !56 ; 5 uses
  %i.kc = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load595, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kd = shufflevector <2 x double> %vector.recur561, <2 x double> %vector.recur, <2 x i32> <i32 1, i32 3>
  %i.ke = fadd <2 x double> %i.ka, %i.kd
  %i.kf = fadd <2 x double> %i.ke, %i.kc
  %i.kg = fadd <2 x double> %i.kf, %wide.load595
  %i.kh = fadd <2 x double> %i.iy, %i.jp
  %i.ki = fadd <2 x double> %i.kh, %i.kg
  %i.kj = fdiv <2 x double> %i.ki, splat (double 2.700000e+01)
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ig
  store <2 x double> %i.kj, ptr %i.kk, align 8, !tbaa !27, !alias.scope !58, !noalias !60
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract603 = extractelement <2 x double> %wide.load585, i64 1
  %vector.recur.extract604 = extractelement <2 x double> %wide.load585, i64 0
  %vector.recur.extract605 = extractelement <2 x double> %wide.load584, i64 1
  %vector.recur.extract606 = extractelement <2 x double> %wide.load584, i64 0
  %i.km = shufflevector <2 x double> %wide.load589, <2 x double> %wide.load594, <2 x i32> <i32 1, i32 3>
  %i.kn = shufflevector <2 x double> %wide.load589, <2 x double> %wide.load594, <2 x i32> <i32 0, i32 2>
  %3 = shufflevector <2 x double> %wide.load590, <2 x double> %wide.load595, <2 x i32> <i32 1, i32 3>
  %4 = shufflevector <2 x double> %wide.load590, <2 x double> %wide.load595, <2 x i32> <i32 0, i32 2>
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader258, %middle.block
  %.ph647.a = phi double [ %.pre480, %vector.memcheck ], [ %.pre480, %.preheader258 ], [ %vector.recur.extract603, %middle.block ]
  %.ph648.a = phi double [ %.pre478, %vector.memcheck ], [ %.pre478, %.preheader258 ], [ %vector.recur.extract604, %middle.block ]
  %.ph649.a = phi double [ %.pre477, %vector.memcheck ], [ %.pre477, %.preheader258 ], [ %vector.recur.extract605, %middle.block ]
  %.ph650.a = phi double [ %.pre475, %vector.memcheck ], [ %.pre475, %.preheader258 ], [ %vector.recur.extract606, %middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader258 ], [ %i.ba, %middle.block ]
  %.ph651 = phi <2 x double> [ %i.gt, %vector.memcheck ], [ %i.gt, %.preheader258 ], [ %i.kn, %middle.block ]
  %.ph652 = phi <2 x double> [ %i.gs, %vector.memcheck ], [ %i.gs, %.preheader258 ], [ %i.km, %middle.block ]
  %.ph649 = phi <2 x double> [ %2, %vector.memcheck ], [ %2, %.preheader258 ], [ %4, %middle.block ]
  %.ph650 = phi <2 x double> [ %1, %vector.memcheck ], [ %1, %.preheader258 ], [ %3, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ko = phi double [ %i.le, %scalar.ph ], [ %.ph647.a, %scalar.ph.preheader ] ; 2 uses
  %i.kp = phi double [ %i.ko, %scalar.ph ], [ %.ph648.a, %scalar.ph.preheader ]
  %i.kq = phi double [ %i.lc, %scalar.ph ], [ %.ph649.a, %scalar.ph.preheader ] ; 2 uses
  %i.kr = phi double [ %i.kq, %scalar.ph ], [ %.ph650.a, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %5 = phi <2 x double> [ %6, %scalar.ph ], [ %.ph651, %scalar.ph.preheader ]
  %6 = phi <2 x double> [ %i.me, %scalar.ph ], [ %.ph652, %scalar.ph.preheader ] ; 2 uses
  %i.ks = phi <2 x double> [ %i.kt, %scalar.ph ], [ %.ph649, %scalar.ph.preheader ]
  %i.kt = phi <2 x double> [ %i.mj, %scalar.ph ], [ %.ph650, %scalar.ph.preheader ] ; 2 uses
  %i.ku = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.ku
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !27
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 11 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next
  %i.la = load double, ptr %i.kz, align 8, !tbaa !27
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !27 ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next
  %i.le = load double, ptr %i.ld, align 8, !tbaa !27 ; 2 uses
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.ku
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !27
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next
  %i.lj = load double, ptr %i.li, align 8, !tbaa !27
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.next
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !27
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.ku
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !27
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !27
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !27
  %i.lt = load <2 x double>, ptr %i.lf, align 8, !tbaa !27 ; 2 uses
  %i.lu = load <2 x double>, ptr %i.lm, align 8, !tbaa !27 ; 2 uses
  %i.lv = shufflevector <2 x double> %i.lt, <2 x double> %i.lu, <2 x i32> <i32 0, i32 2>
  %i.lw = shufflevector <2 x double> %i.lt, <2 x double> %i.lu, <2 x i32> <i32 1, i32 3>
  %i.lx = fadd <2 x double> %i.lv, %i.lw
  %i.ly = insertelement <2 x double> poison, double %i.lh, i64 0
  %i.lz = insertelement <2 x double> %i.ly, double %i.lo, i64 1
  %i.ma = fadd <2 x double> %i.lx, %i.lz
  %i.mb = fadd <2 x double> %i.ma, %5
  %i.mc = fadd <2 x double> %i.mb, %6
  %i.md = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.me = insertelement <2 x double> %i.md, double %i.lq, i64 1 ; 2 uses
  %i.mf = fadd <2 x double> %i.mc, %i.me
  %i.mg = fadd <2 x double> %i.mf, %i.ks
  %i.mh = fadd <2 x double> %i.mg, %i.kt
  %i.mi = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.ls, i64 1 ; 2 uses
  %i.mk = fadd <2 x double> %i.mh, %i.mj
  %i.ml = insertelement <6 x double> poison, double %i.lc, i64 0
  %i.mm = insertelement <6 x double> %i.ml, double %i.kp, i64 1
  %i.mn = insertelement <6 x double> %i.mm, double %i.ko, i64 2
  %i.mo = insertelement <6 x double> %i.mn, double %i.le, i64 3
  %i.mp = shufflevector <2 x double> %i.mk, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mq = shufflevector <6 x double> %i.mo, <6 x double> %i.mp, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %op.rdx = fadd double %i.kw, %i.ky
  %op.rdx639 = fadd double %op.rdx, %i.la
  %op.rdx640 = fadd double %op.rdx639, %i.kr
  %op.rdx641 = fadd double %op.rdx640, %i.kq
  %i.mr = call double @llvm.vector.reduce.fadd.v6f64(double %op.rdx641, <6 x double> %i.mq)
  %i.ms = fdiv double %i.mr, 2.700000e+01
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv
  store double %i.ms, ptr %i.mt, align 8, !tbaa !27
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond354.not = icmp eq i64 %indvars.iv.next351, %wide.trip.count353
  br i1 %exitcond354.not, label %._crit_edge270, label %.preheader258, !llvm.loop !63

._crit_edge270:                                   ; preds = %._crit_edge
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1 ; 2 uses
  %exitcond359.not = icmp eq i64 %indvars.iv.next356, %wide.trip.count358
  %indvar.next511 = add i64 %indvar510, 1
  br i1 %exitcond359.not, label %.preheader259.lr.ph, label %.preheader260, !llvm.loop !64

.preheader259:                                    ; preds = %.preheader259.lr.ph.split.split, %._crit_edge279
  %indvars.iv371 = phi i64 [ 1, %.preheader259.lr.ph.split.split ], [ %indvars.iv.next372, %._crit_edge279 ] ; 2 uses
  %indvar = phi i64 [ 0, %.preheader259.lr.ph.split.split ], [ %indvar.next, %._crit_edge279 ] ; 2 uses
  %i.mu = mul i64 %i.ae, %indvar
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv371
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !23 ; 3 uses
  %i.mx = getelementptr i8, ptr %i.aj, i64 %i.mu  ; 3 uses
  br i1 %i.bb, label %.preheader257.epil.preheader, label %.preheader257

.preheader257:                                    ; preds = %.preheader259, %.preheader257
  %indvars.iv366 = phi i64 [ %indvars.iv.next367.1, %.preheader257 ], [ 1, %.preheader259 ] ; 3 uses
  %indvar360 = phi i64 [ %indvar.next361.1, %.preheader257 ], [ 0, %.preheader259 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader257 ], [ 0, %.preheader259 ]
  %i.my = mul i64 %i.af, %indvar360
  %scevgep362 = getelementptr i8, ptr %i.mx, i64 %i.my
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv366
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !25
  %scevgep = getelementptr nuw i8, ptr %i.na, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %scevgep362, i64 %i.ah, i1 false), !tbaa !27
  %indvar.next361 = or disjoint i64 %indvar360, 1
  %i.nb = mul i64 %i.af, %indvar.next361
  %scevgep362.1 = getelementptr i8, ptr %i.mx, i64 %i.nb
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv366
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !25
  %scevgep.1 = getelementptr nuw i8, ptr %i.ne, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.1, ptr align 8 %scevgep362.1, i64 %i.ah, i1 false), !tbaa !27
  %indvars.iv.next367.1 = add nuw nsw i64 %indvars.iv366, 2 ; 2 uses
  %indvar.next361.1 = add nuw nsw i64 %indvar360, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge279.unr-lcssa, label %.preheader257, !llvm.loop !65

._crit_edge279.unr-lcssa:                         ; preds = %.preheader257
  br i1 %lcmp.mod.not, label %._crit_edge279, label %.preheader257.epil.preheader

.preheader257.epil.preheader:                     ; preds = %._crit_edge279.unr-lcssa, %.preheader259
  %indvars.iv366.epil.init = phi i64 [ 1, %.preheader259 ], [ %indvars.iv.next367.1, %._crit_edge279.unr-lcssa ]
  %indvar360.epil.init = phi i64 [ 0, %.preheader259 ], [ %indvar.next361.1, %._crit_edge279.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod654)
  %i.nf = mul i64 %i.af, %indvar360.epil.init
  %scevgep362.epil = getelementptr i8, ptr %i.mx, i64 %i.nf
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv366.epil.init
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !25
  %scevgep.epil = getelementptr nuw i8, ptr %i.nh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.epil, ptr align 8 %scevgep362.epil, i64 %i.ah, i1 false), !tbaa !27
  br label %._crit_edge279

._crit_edge279:                                   ; preds = %._crit_edge279.unr-lcssa, %.preheader257.epil.preheader
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond375.not = icmp eq i64 %indvar.next, %wide.trip.count374
  br i1 %exitcond375.not, label %.loopexit262, label %.preheader259, !llvm.loop !66

.loopexit262:                                     ; preds = %._crit_edge279, %.lr.ph.split.split, %.preheader259.lr.ph
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count379
  br i1 %exitcond380.not, label %.loopexit256, label %.lr.ph.split.split, !llvm.loop !67

.loopexit256:                                     ; preds = %.loopexit262, %.loopexit, %.lr.ph, %.preheader264, %.preheader255
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
