Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/stencil?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@stencil_calc:bb.a

scalar.ph653.preheader:                           ; preds = %.preheader250, %middle.block668
  %.ph = phi double [ %.pre494, %.preheader250 ], [ %vector.recur.extract669, %middle.block668 ]
  %indvars.iv429.ph = phi i64 [ 1, %.preheader250 ], [ %i.bs, %middle.block668 ]
  br label %scalar.ph653

scalar.ph653:                                     ; preds = %scalar.ph653.preheader, %scalar.ph653
  %i.dw = phi double [ %i.ei, %scalar.ph653 ], [ %.ph, %scalar.ph653.preheader ]
  %indvars.iv429 = phi i64 [ %indvars.iv.next430, %scalar.ph653 ], [ %indvars.iv429.ph, %scalar.ph653.preheader ] ; 7 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv429
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !119
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv429
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !119
  %i.eb = fadd double %i.dy, %i.ea
  %i.ec = getelementptr [8 x i8], ptr %i.cw, i64 %indvars.iv429
  %i.ed = getelementptr i8, ptr %i.ec, i64 -8
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !119
  %i.ef = fadd double %i.eb, %i.ee
  %i.eg = fadd double %i.ef, %i.dw
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next430
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !119 ; 2 uses
  %i.ej = fadd double %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv429
  %i.el = load double, ptr %i.ek, align 8, !tbaa !119
  %i.em = fadd double %i.ej, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv429
  %i.eo = load double, ptr %i.en, align 8, !tbaa !119
  %i.ep = fadd double %i.em, %i.eo
  %i.eq = fdiv double %i.ep, 7.000000e+00
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv429
  store double %i.eq, ptr %i.er, align 8, !tbaa !119
  %exitcond433.not = icmp eq i64 %indvars.iv.next430, %wide.trip.count432
  br i1 %exitcond433.not, label %._crit_edge317, label %scalar.ph653, !llvm.loop !74

._crit_edge317:                                   ; preds = %scalar.ph653, %middle.block668
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next435, %wide.trip.count437
  br i1 %exitcond438.not, label %._crit_edge320, label %.preheader250, !llvm.loop !75

._crit_edge320:                                   ; preds = %._crit_edge317
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond443.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count442
  br i1 %exitcond443.not, label %.preheader253, label %.preheader252, !llvm.loop !76

.preheader251:                                    ; preds = %.preheader251.lr.ph.split.split, %._crit_edge330
  %indvars.iv458 = phi i64 [ 1, %.preheader251.lr.ph.split.split ], [ %indvars.iv.next459, %._crit_edge330 ] ; 2 uses
  %indvar445 = phi i64 [ 0, %.preheader251.lr.ph.split.split ], [ %indvar.next446, %._crit_edge330 ] ; 2 uses
  %i.es = mul i64 %i.bl, %indvar445
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv458
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !115 ; 3 uses
  %i.ev = getelementptr i8, ptr %i.bq, i64 %i.es  ; 3 uses
  br i1 %i.bt, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader251, %.preheader
  %indvars.iv453 = phi i64 [ %indvars.iv.next454.1, %.preheader ], [ 1, %.preheader251 ] ; 3 uses
  %indvar447 = phi i64 [ %indvar.next448.1, %.preheader ], [ 0, %.preheader251 ] ; 3 uses
  %niter691 = phi i64 [ %niter691.next.1, %.preheader ], [ 0, %.preheader251 ]
  %i.ew = mul i64 %i.bm, %indvar447
  %scevgep449 = getelementptr i8, ptr %i.ev, i64 %i.ew
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv453
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !117
  %scevgep444 = getelementptr nuw i8, ptr %i.ey, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep444, ptr align 8 %scevgep449, i64 %i.bo, i1 false), !tbaa !119
  %indvar.next448 = or disjoint i64 %indvar447, 1
  %i.ez = mul i64 %i.bm, %indvar.next448
  %scevgep449.1 = getelementptr i8, ptr %i.ev, i64 %i.ez
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv453
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !117
  %scevgep444.1 = getelementptr nuw i8, ptr %i.fc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep444.1, ptr align 8 %scevgep449.1, i64 %i.bo, i1 false), !tbaa !119
  %indvars.iv.next454.1 = add nuw nsw i64 %indvars.iv453, 2 ; 2 uses
  %indvar.next448.1 = add nuw nsw i64 %indvar447, 2 ; 2 uses
  %niter691.next.1 = add nuw i64 %niter691, 2     ; 2 uses
  %niter691.ncmp.1 = icmp eq i64 %niter691.next.1, %unroll_iter690
  br i1 %niter691.ncmp.1, label %._crit_edge330.unr-lcssa, label %.preheader, !llvm.loop !77

._crit_edge330.unr-lcssa:                         ; preds = %.preheader
  br i1 %lcmp.mod688.not, label %._crit_edge330, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge330.unr-lcssa, %.preheader251
  %indvars.iv453.epil.init = phi i64 [ 1, %.preheader251 ], [ %indvars.iv.next454.1, %._crit_edge330.unr-lcssa ]
  %indvar447.epil.init = phi i64 [ 0, %.preheader251 ], [ %indvar.next448.1, %._crit_edge330.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod689)
  %i.fd = mul i64 %i.bm, %indvar447.epil.init
  %scevgep449.epil = getelementptr i8, ptr %i.ev, i64 %i.fd
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv453.epil.init
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !117
  %scevgep444.epil = getelementptr nuw i8, ptr %i.ff, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep444.epil, ptr align 8 %scevgep449.epil, i64 %i.bo, i1 false), !tbaa !119
  br label %._crit_edge330

._crit_edge330:                                   ; preds = %._crit_edge330.unr-lcssa, %.preheader.epil.preheader
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1
  %indvar.next446 = add nuw nsw i64 %indvar445, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvar.next446, %wide.trip.count461
  br i1 %exitcond462.not, label %.loopexit, label %.preheader251, !llvm.loop !78

.loopexit:                                        ; preds = %._crit_edge330, %.preheader253, %bb.b, %.preheader251.lr.ph
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count466
  br i1 %exitcond467.not, label %.loopexit256, label %bb.b, !llvm.loop !79

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %.loopexit262
  %indvars.iv376 = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next377, %.loopexit262 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv376
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !104
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [192 x i8], ptr %i.w, i64 %i.fj ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !110
  %i.fm = icmp slt i32 %i.fl, 0
  %brmerge508 = or i1 %i.fm, %.not243266
  br i1 %brmerge508, label %.loopexit262, label %.preheader260.lr.ph.split.split

.preheader260.lr.ph.split.split:                  ; preds = %.lr.ph.split.split
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 184
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !111
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.x
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !113
  br label %.preheader260

.preheader259.lr.ph:                              ; preds = %._crit_edge270
  br i1 %.not243266, label %.loopexit262, label %.preheader259.lr.ph.split.split

.preheader259.lr.ph.split.split:                  ; preds = %.preheader259.lr.ph
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 184
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !111
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.x
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !113
  br label %.preheader259

.preheader260:                                    ; preds = %.preheader260.lr.ph.split.split, %._crit_edge270
  %indvar560 = phi i64 [ 0, %.preheader260.lr.ph.split.split ], [ %indvar.next561, %._crit_edge270 ] ; 2 uses
  %indvars.iv355 = phi i64 [ 1, %.preheader260.lr.ph.split.split ], [ %indvars.iv.next356, %._crit_edge270 ] ; 3 uses
  %i.fv = mul i64 %i.as, %indvar560               ; 2 uses
  %scevgep562 = getelementptr i8, ptr %i.aw, i64 %i.fv ; 2 uses
  %scevgep563 = getelementptr i8, ptr %i.ay, i64 %i.fv ; 2 uses
  %i.fw = mul nuw nsw i64 %i.j, %indvars.iv355
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fw
  %i.fy = getelementptr [8 x i8], ptr %i.fq, i64 %indvars.iv355 ; 3 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 -8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !115 ; 3 uses
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !115 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !115 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.pre = load ptr, ptr %i.ga, align 8, !tbaa !117
  %.pre468 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !117 ; 3 uses
  %.pre469 = load ptr, ptr %i.gb, align 8, !tbaa !117
  %.phi.trans.insert470 = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.pre471 = load ptr, ptr %.phi.trans.insert470, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert473 = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.pre472 = load ptr, ptr %i.gd, align 8, !tbaa !117
  %.pre474 = load ptr, ptr %.phi.trans.insert473, align 8, !tbaa !117 ; 2 uses
  %.pre475.pre = load double, ptr %.pre468, align 8, !tbaa !119
  %.phi.trans.insert476.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre468, i64 8
  %.pre477.pre = load double, ptr %.phi.trans.insert476.phi.trans.insert, align 8, !tbaa !119
  %i.ge = load <2 x double>, ptr %.pre471, align 8, !tbaa !119 ; 2 uses
  %i.gf = load <2 x double>, ptr %.pre474, align 8, !tbaa !119 ; 2 uses
  %i.gg = shufflevector <2 x double> %i.ge, <2 x double> %i.gf, <2 x i32> <i32 1, i32 3>
  %i.gh = shufflevector <2 x double> %i.ge, <2 x double> %i.gf, <2 x i32> <i32 0, i32 2>
  %i.gi = insertelement <8 x ptr> poison, ptr %scevgep563, i64 0
  %i.gj = shufflevector <8 x ptr> %i.gi, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.gk = insertelement <8 x ptr> poison, ptr %scevgep562, i64 0
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
  %i.gs = phi <2 x double> [ %i.gg, %.preheader260 ], [ %i.he, %._crit_edge ] ; 4 uses
  %i.gt = phi <2 x double> [ %i.gh, %.preheader260 ], [ %i.hf, %._crit_edge ] ; 4 uses
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 5 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next351
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !117 ; 7 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next351
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !117 ; 6 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.next351
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !117 ; 6 uses
  %i.ha = mul nuw nsw i64 %indvars.iv350, %i.i
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.ha ; 2 uses
  %.pre478 = load double, ptr %i.gv, align 8, !tbaa !119 ; 4 uses
  %.phi.trans.insert479 = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.pre480 = load double, ptr %.phi.trans.insert479, align 8, !tbaa !119 ; 4 uses
  %i.hc = load <2 x double>, ptr %i.gx, align 8, !tbaa !119 ; 4 uses
  %i.hd = load <2 x double>, ptr %i.gz, align 8, !tbaa !119 ; 4 uses
  %i.he = shufflevector <2 x double> %i.hc, <2 x double> %i.hd, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.hf = shufflevector <2 x double> %i.hc, <2 x double> %i.hd, <2 x i32> <i32 0, i32 2> ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader258
  %i.hg = insertelement <2 x ptr> poison, ptr %i.gr, i64 0
  %i.hh = insertelement <2 x ptr> %i.hg, ptr %i.gq, i64 1
  %i.hi = getelementptr nuw i8, <2 x ptr> %i.hh, <2 x i64> <i64 0, i64 16>
  %i.hj = getelementptr i8, ptr %i.gq, i64 %i.al
  %i.hk = getelementptr i8, ptr %i.gr, i64 %i.al
  %1 = insertelement <2 x ptr> poison, ptr %i.gv, i64 0
  %2 = insertelement <2 x ptr> %1, ptr %i.go, i64 1
  %3 = getelementptr i8, <2 x ptr> %2, i64 16
  %4 = getelementptr i8, ptr %i.gv, i64 %i.al
  %5 = getelementptr i8, ptr %i.go, i64 %i.al
  %i.hl = getelementptr i8, ptr %i.gp, i64 %i.al
  %i.hm = getelementptr i8, ptr %i.gx, i64 16
  %i.hn = getelementptr i8, ptr %i.gx, i64 %i.al
  %i.ho = insertelement <2 x ptr> poison, ptr %i.gn, i64 0
  %i.hp = insertelement <2 x ptr> %i.ho, ptr %i.gm, i64 1
  %i.hq = getelementptr i8, <2 x ptr> %i.hp, <2 x i64> <i64 0, i64 16>
  %i.hr = getelementptr i8, ptr %i.gm, i64 %i.al
  %6 = getelementptr i8, ptr %i.gn, i64 %i.al
  %i.hs = getelementptr i8, ptr %i.gz, i64 16
  %i.ht = getelementptr i8, ptr %i.gz, i64 %i.al
  %i.hu = insertelement <8 x ptr> poison, ptr %i.hj, i64 0
  %i.hv = insertelement <8 x ptr> %i.hu, ptr %i.hk, i64 1
  %i.hw = insertelement <8 x ptr> %i.hv, ptr %4, i64 2
  %i.hx = insertelement <8 x ptr> %i.hw, ptr %5, i64 3
  %i.hy = insertelement <8 x ptr> %i.hx, ptr %i.hl, i64 4
  %i.hz = insertelement <8 x ptr> %i.hy, ptr %i.hn, i64 5
  %i.ia = insertelement <8 x ptr> %i.hz, ptr %i.hr, i64 6
  %i.ib = insertelement <8 x ptr> %i.ia, ptr %6, i64 7
  %i.ic = icmp ult <8 x ptr> %i.gj, %i.ib
  %7 = shufflevector <2 x ptr> %i.hi, <2 x ptr> %3, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.id = insertelement <8 x ptr> %7, ptr %i.gp, i64 4
  %i.ie = insertelement <8 x ptr> %i.id, ptr %i.hm, i64 5
  %8 = shufflevector <2 x ptr> %i.hq, <2 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.if = shufflevector <8 x ptr> %i.ie, <8 x ptr> %8, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ig = icmp ult <8 x ptr> %i.if, %i.gl
  %i.ih = and <8 x i1> %i.ic, %i.ig
  %bound0591 = icmp ult ptr %scevgep563, %i.ht
  %bound1592 = icmp ult ptr %i.hs, %scevgep562
  %found.conflict593 = and i1 %bound0591, %bound1592
  %i.ii = bitcast <8 x i1> %i.ih to i8
  %i.ij = icmp ne i8 %i.ii, 0
  %op.rdx676 = or i1 %i.ij, %found.conflict593
  br i1 %op.rdx676, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ik = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.il = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.im = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.in = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %vector.recur.init609 = insertelement <2 x double> poison, double %.pre480, i64 1
  %vector.recur.init611 = insertelement <2 x double> poison, double %.pre478, i64 1
  %vector.recur.init613 = insertelement <2 x double> poison, double %.pre477, i64 1
  %vector.recur.init615 = insertelement <2 x double> poison, double %.pre475, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <2 x double> [ %i.hd, %vector.ph ], [ %wide.load630, %vector.body ] ; 2 uses
  %vector.recur596 = phi <2 x double> [ %i.ik, %vector.ph ], [ %i.kk, %vector.body ]
  %vector.recur598 = phi <2 x double> [ %i.gs, %vector.ph ], [ %wide.load629, %vector.body ] ; 2 uses
  %vector.recur600 = phi <2 x double> [ %i.gt, %vector.ph ], [ %i.ke, %vector.body ]
  %vector.recur602 = phi <2 x double> [ %i.hc, %vector.ph ], [ %wide.load625, %vector.body ] ; 2 uses
  %vector.recur604 = phi <2 x double> [ %i.il, %vector.ph ], [ %i.jt, %vector.body ]
  %vector.recur606 = phi <2 x double> [ %i.im, %vector.ph ], [ %wide.load624, %vector.body ] ; 2 uses
  %vector.recur608 = phi <2 x double> [ %i.in, %vector.ph ], [ %i.jn, %vector.body ]
  %vector.recur610 = phi <2 x double> [ %vector.recur.init609, %vector.ph ], [ %wide.load620, %vector.body ] ; 2 uses
  %vector.recur612 = phi <2 x double> [ %vector.recur.init611, %vector.ph ], [ %i.jc, %vector.body ]
  %vector.recur614 = phi <2 x double> [ %vector.recur.init613, %vector.ph ], [ %wide.load619, %vector.body ] ; 2 uses
  %vector.recur616 = phi <2 x double> [ %vector.recur.init615, %vector.ph ], [ %i.iw, %vector.body ]
  %i.io = or disjoint i64 %index, 1               ; 4 uses
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index
  %wide.load = load <2 x double>, ptr %i.ip, align 8, !tbaa !119, !alias.scope !123
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.io
  %wide.load617 = load <2 x double>, ptr %i.iq, align 8, !tbaa !119, !alias.scope !123
  %i.ir = fadd <2 x double> %wide.load, %wide.load617
  %i.is = add nuw nsw i64 %index, 2               ; 9 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.is
  %wide.load618 = load <2 x double>, ptr %i.it, align 8, !tbaa !119, !alias.scope !123
  %i.iu = fadd <2 x double> %i.ir, %wide.load618
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.is
  %wide.load619 = load <2 x double>, ptr %i.iv, align 8, !tbaa !119, !alias.scope !124 ; 5 uses
  %i.iw = shufflevector <2 x double> %vector.recur614, <2 x double> %wide.load619, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ix = shufflevector <2 x double> %vector.recur616, <2 x double> %vector.recur614, <2 x i32> <i32 1, i32 3>
  %i.iy = fadd <2 x double> %i.iu, %i.ix
  %i.iz = fadd <2 x double> %i.iy, %i.iw
  %i.ja = fadd <2 x double> %i.iz, %wide.load619
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.is
  %wide.load620 = load <2 x double>, ptr %i.jb, align 8, !tbaa !119, !alias.scope !125 ; 5 uses
  %i.jc = shufflevector <2 x double> %vector.recur610, <2 x double> %wide.load620, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jd = shufflevector <2 x double> %vector.recur612, <2 x double> %vector.recur610, <2 x i32> <i32 1, i32 3>
  %i.je = fadd <2 x double> %i.ja, %i.jd
  %i.jf = fadd <2 x double> %i.je, %i.jc
  %i.jg = fadd <2 x double> %i.jf, %wide.load620
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %index
  %wide.load621 = load <2 x double>, ptr %i.jh, align 8, !tbaa !119, !alias.scope !126
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.io
  %wide.load622 = load <2 x double>, ptr %i.ji, align 8, !tbaa !119, !alias.scope !126
  %i.jj = fadd <2 x double> %wide.load621, %wide.load622
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.is
  %wide.load623 = load <2 x double>, ptr %i.jk, align 8, !tbaa !119, !alias.scope !126
  %i.jl = fadd <2 x double> %i.jj, %wide.load623
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.is
  %wide.load624 = load <2 x double>, ptr %i.jm, align 8, !tbaa !119, !alias.scope !127 ; 5 uses
  %i.jn = shufflevector <2 x double> %vector.recur606, <2 x double> %wide.load624, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jo = shufflevector <2 x double> %vector.recur608, <2 x double> %vector.recur606, <2 x i32> <i32 1, i32 3>
  %i.jp = fadd <2 x double> %i.jl, %i.jo
  %i.jq = fadd <2 x double> %i.jp, %i.jn
  %i.jr = fadd <2 x double> %i.jq, %wide.load624
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.is
  %wide.load625 = load <2 x double>, ptr %i.js, align 8, !tbaa !119, !alias.scope !128 ; 5 uses
  %i.jt = shufflevector <2 x double> %vector.recur602, <2 x double> %wide.load625, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ju = shufflevector <2 x double> %vector.recur604, <2 x double> %vector.recur602, <2 x i32> <i32 1, i32 3>
  %i.jv = fadd <2 x double> %i.jr, %i.ju
  %i.jw = fadd <2 x double> %i.jv, %i.jt
  %i.jx = fadd <2 x double> %i.jw, %wide.load625
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %index
  %wide.load626 = load <2 x double>, ptr %i.jy, align 8, !tbaa !119, !alias.scope !129
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.io
  %wide.load627 = load <2 x double>, ptr %i.jz, align 8, !tbaa !119, !alias.scope !129
  %i.ka = fadd <2 x double> %wide.load626, %wide.load627
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.is
  %wide.load628 = load <2 x double>, ptr %i.kb, align 8, !tbaa !119, !alias.scope !129
  %i.kc = fadd <2 x double> %i.ka, %wide.load628
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.is
  %wide.load629 = load <2 x double>, ptr %i.kd, align 8, !tbaa !119, !alias.scope !130 ; 5 uses
  %i.ke = shufflevector <2 x double> %vector.recur598, <2 x double> %wide.load629, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kf = shufflevector <2 x double> %vector.recur600, <2 x double> %vector.recur598, <2 x i32> <i32 1, i32 3>
  %i.kg = fadd <2 x double> %i.kc, %i.kf
  %i.kh = fadd <2 x double> %i.kg, %i.ke
  %i.ki = fadd <2 x double> %i.kh, %wide.load629
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.is
  %wide.load630 = load <2 x double>, ptr %i.kj, align 8, !tbaa !119, !alias.scope !131 ; 5 uses
  %i.kk = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load630, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kl = shufflevector <2 x double> %vector.recur596, <2 x double> %vector.recur, <2 x i32> <i32 1, i32 3>
  %i.km = fadd <2 x double> %i.ki, %i.kl
  %i.kn = fadd <2 x double> %i.km, %i.kk
  %i.ko = fadd <2 x double> %i.kn, %wide.load630
  %i.kp = fadd <2 x double> %i.jg, %i.jx
  %i.kq = fadd <2 x double> %i.kp, %i.ko
  %i.kr = fdiv <2 x double> %i.kq, splat (double 2.700000e+01)
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.io
  store <2 x double> %i.kr, ptr %i.ks, align 8, !tbaa !119, !alias.scope !132, !noalias !133
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kt = icmp eq i64 %index.next, %n.vec
  br i1 %i.kt, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract638 = extractelement <2 x double> %wide.load620, i64 1
  %vector.recur.extract639 = extractelement <2 x double> %wide.load620, i64 0
  %vector.recur.extract640 = extractelement <2 x double> %wide.load619, i64 1
  %vector.recur.extract641 = extractelement <2 x double> %wide.load619, i64 0
  %i.ku = shufflevector <2 x double> %wide.load624, <2 x double> %wide.load629, <2 x i32> <i32 1, i32 3>
  %i.kv = shufflevector <2 x double> %wide.load624, <2 x double> %wide.load629, <2 x i32> <i32 0, i32 2>
  %i.kw = shufflevector <2 x double> %wide.load625, <2 x double> %wide.load630, <2 x i32> <i32 1, i32 3>
  %i.kx = shufflevector <2 x double> %wide.load625, <2 x double> %wide.load630, <2 x i32> <i32 0, i32 2>
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader258, %middle.block
  %.ph677 = phi double [ %.pre480, %vector.memcheck ], [ %.pre480, %.preheader258 ], [ %vector.recur.extract638, %middle.block ]
  %.ph678 = phi double [ %.pre478, %vector.memcheck ], [ %.pre478, %.preheader258 ], [ %vector.recur.extract639, %middle.block ]
  %.ph679 = phi double [ %.pre477, %vector.memcheck ], [ %.pre477, %.preheader258 ], [ %vector.recur.extract640, %middle.block ]
  %.ph680 = phi double [ %.pre475, %vector.memcheck ], [ %.pre475, %.preheader258 ], [ %vector.recur.extract641, %middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader258 ], [ %i.ba, %middle.block ]
  %.ph681 = phi <2 x double> [ %i.gt, %vector.memcheck ], [ %i.gt, %.preheader258 ], [ %i.kv, %middle.block ]
  %.ph682 = phi <2 x double> [ %i.gs, %vector.memcheck ], [ %i.gs, %.preheader258 ], [ %i.ku, %middle.block ]
  %.ph683 = phi <2 x double> [ %i.hf, %vector.memcheck ], [ %i.hf, %.preheader258 ], [ %i.kx, %middle.block ]
  %.ph684 = phi <2 x double> [ %i.he, %vector.memcheck ], [ %i.he, %.preheader258 ], [ %i.kw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ky = phi double [ %i.lq, %scalar.ph ], [ %.ph677, %scalar.ph.preheader ] ; 2 uses
  %i.kz = phi double [ %i.ky, %scalar.ph ], [ %.ph678, %scalar.ph.preheader ]
  %i.la = phi double [ %i.lo, %scalar.ph ], [ %.ph679, %scalar.ph.preheader ] ; 2 uses
  %i.lb = phi double [ %i.la, %scalar.ph ], [ %.ph680, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.lc = phi <2 x double> [ %i.ld, %scalar.ph ], [ %.ph681, %scalar.ph.preheader ]
  %i.ld = phi <2 x double> [ %i.mq, %scalar.ph ], [ %.ph682, %scalar.ph.preheader ] ; 2 uses
  %i.le = phi <2 x double> [ %i.lf, %scalar.ph ], [ %.ph683, %scalar.ph.preheader ]
  %i.lf = phi <2 x double> [ %i.mv, %scalar.ph ], [ %.ph684, %scalar.ph.preheader ] ; 2 uses
  %i.lg = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !119
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 11 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !119
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !119 ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !119 ; 2 uses
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.lg
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !119
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !119
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.next
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !119
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.lg
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !119
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !119
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next
  %i.me = load double, ptr %i.md, align 8, !tbaa !119
  %i.mf = load <2 x double>, ptr %i.lr, align 8, !tbaa !119 ; 2 uses
  %i.mg = load <2 x double>, ptr %i.ly, align 8, !tbaa !119 ; 2 uses
  %i.mh = shufflevector <2 x double> %i.mf, <2 x double> %i.mg, <2 x i32> <i32 0, i32 2>
  %i.mi = shufflevector <2 x double> %i.mf, <2 x double> %i.mg, <2 x i32> <i32 1, i32 3>
  %i.mj = fadd <2 x double> %i.mh, %i.mi
  %i.mk = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.ml = insertelement <2 x double> %i.mk, double %i.ma, i64 1
  %i.mm = fadd <2 x double> %i.mj, %i.ml
  %i.mn = fadd <2 x double> %i.mm, %i.lc
  %i.mo = fadd <2 x double> %i.mn, %i.ld
  %i.mp = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.mq = insertelement <2 x double> %i.mp, double %i.mc, i64 1 ; 2 uses
  %i.mr = fadd <2 x double> %i.mo, %i.mq
  %i.ms = fadd <2 x double> %i.mr, %i.le
  %i.mt = fadd <2 x double> %i.ms, %i.lf
  %i.mu = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.mv = insertelement <2 x double> %i.mu, double %i.me, i64 1 ; 2 uses
  %i.mw = fadd <2 x double> %i.mt, %i.mv
  %i.mx = insertelement <6 x double> poison, double %i.lo, i64 0
  %i.my = insertelement <6 x double> %i.mx, double %i.kz, i64 1
  %i.mz = insertelement <6 x double> %i.my, double %i.ky, i64 2
  %i.na = insertelement <6 x double> %i.mz, double %i.lq, i64 3
  %i.nb = shufflevector <2 x double> %i.mw, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nc = shufflevector <6 x double> %i.na, <6 x double> %i.nb, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %op.rdx = fadd double %i.li, %i.lk
  %op.rdx673 = fadd double %op.rdx, %i.lm
  %op.rdx674 = fadd double %op.rdx673, %i.lb
  %op.rdx675 = fadd double %op.rdx674, %i.la
  %i.nd = call double @llvm.vector.reduce.fadd.v6f64(double %op.rdx675, <6 x double> %i.nc)
end_hunk_0
begin_hunk_1_@stencil_calc:bb.a
  %scevgep362 = getelementptr i8, ptr %i.nj, i64 %i.nk
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv366
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !117
  %scevgep = getelementptr nuw i8, ptr %i.nm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %scevgep362, i64 %i.ah, i1 false), !tbaa !119
  %indvar.next361 = or disjoint i64 %indvar360, 1
  %i.nn = mul i64 %i.af, %indvar.next361
  %scevgep362.1 = getelementptr i8, ptr %i.nj, i64 %i.nn
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv366
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !117
  %scevgep.1 = getelementptr nuw i8, ptr %i.nq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.1, ptr align 8 %scevgep362.1, i64 %i.ah, i1 false), !tbaa !119
  %indvars.iv.next367.1 = add nuw nsw i64 %indvars.iv366, 2 ; 2 uses
  %indvar.next361.1 = add nuw nsw i64 %indvar360, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge279.unr-lcssa, label %.preheader257, !llvm.loop !95

._crit_edge279.unr-lcssa:                         ; preds = %.preheader257
  br i1 %lcmp.mod.not, label %._crit_edge279, label %.preheader257.epil.preheader

.preheader257.epil.preheader:                     ; preds = %._crit_edge279.unr-lcssa, %.preheader259
  %indvars.iv366.epil.init = phi i64 [ 1, %.preheader259 ], [ %indvars.iv.next367.1, %._crit_edge279.unr-lcssa ]
  %indvar360.epil.init = phi i64 [ 0, %.preheader259 ], [ %indvar.next361.1, %._crit_edge279.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod686)
  %i.nr = mul i64 %i.af, %indvar360.epil.init
  %scevgep362.epil = getelementptr i8, ptr %i.nj, i64 %i.nr
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv366.epil.init
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !117
  %scevgep.epil = getelementptr nuw i8, ptr %i.nt, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.epil, ptr align 8 %scevgep362.epil, i64 %i.ah, i1 false), !tbaa !119
  br label %._crit_edge279

._crit_edge279:                                   ; preds = %._crit_edge279.unr-lcssa, %.preheader257.epil.preheader
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond375.not = icmp eq i64 %indvar.next, %wide.trip.count374
  br i1 %exitcond375.not, label %.loopexit262, label %.preheader259, !llvm.loop !96

.loopexit262:                                     ; preds = %._crit_edge279, %.lr.ph.split.split, %.preheader259.lr.ph
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count379
  br i1 %exitcond380.not, label %.loopexit256, label %.lr.ph.split.split, !llvm.loop !97

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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -5751457320304492596}
!9 = !{i64 8119356218515654428}
!10 = !{i64 3391889180012129076}
!11 = !{i64 -3474014334019862682}
!12 = !{i64 8285390329432318770}
!13 = !{i64 -9192013624155451747}
!14 = !{i64 -7932414588842617215}
!15 = !{i64 -1909253205404535577}
!16 = !{i64 7326311976363723462}
!17 = !{i64 -7607206426894925718}
!18 = !{i64 -4146615896039570408}
!19 = !{i64 -2195212879562268991}
!20 = !{i64 -5353835500997696462}
!21 = !{i64 -4701886748837529642}
!22 = !{i64 8903983805710356946}
!23 = !{i64 1156052122620626250}
!24 = !{i64 -8626296119284876780}
!25 = !{i64 -3180129807380978192}
!26 = !{i64 -4447102288775425453}
!27 = !{i64 7607322273996000175}
!28 = !{i64 -4328659175991696956}
!29 = !{i64 -8009878706663867251}
!30 = !{i64 4439581549343483662}
!31 = !{i64 -3196360769077205934}
!32 = !{i64 407595889907444066}
!33 = !{i64 190077189639528877}
!34 = !{i64 4649402148687221145}
!35 = !{i64 -5673101383055093183}
!36 = !{i64 -4249831495776083951}
!37 = !{i64 -4732168283146546132}
!38 = !{i64 -5544044275526950273}
!39 = !{i64 -7529723766942343143}
!40 = !{i64 -6087465291508780350}
!41 = !{i64 8250321147380928825}
!42 = !{i64 6434719985839479830}
!43 = !{i64 5577689677714249650}
!44 = !{i64 -7976898183476857919}
!45 = !{i64 1014946192650039103}
!46 = !{i64 -2784454292903046568}
!47 = !{i64 4923530532512050589}
!48 = !{i64 -5497192944765095002}
!49 = !{i64 3124514811413508614}
!50 = !{i64 -7690033584365608708}
!51 = !{i64 -1140609679295781579}
!52 = !{i64 -4615295701957781104}
!53 = !{i64 -98944295869905898}
!54 = !{i64 277347085897977421}
!55 = !{i64 -2473965564699991600}
!56 = !{i64 -2603181124038547168}
!57 = !{i64 4267262089792566581}
!58 = !{i64 -8691075229650450940}
!59 = !{i64 -6348149079169459420}
!60 = !{i64 3951884356377080793}
!61 = !{i64 1404205318724471971}
!62 = !{i64 5094463224424709934}
!63 = !{i64 5518148781639165469}
!64 = !{i64 133703194849002897}
!65 = !{i64 7540562619558648036}
!66 = !{i64 5670631482390448857}
!67 = !{i64 3857533484082050561}
!68 = !{i64 1689881694446316616}
!69 = !{i64 5947045712187177417}
!70 = !{i64 -1515477090107730914}
!71 = !{i64 4272055722838995659}
!72 = !{i64 -5882660556730887848}
!73 = distinct !{!73, !120, !121, !122}
!74 = distinct !{!74, !120, !122, !121}
!75 = distinct !{!75, !120}
!76 = distinct !{!76, !120}
!77 = distinct !{!77, !120}
!78 = distinct !{!78, !120}
!79 = distinct !{!79, !120}
!80 = distinct !{!80, i1 false, !"LVerDomain"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !80}
!84 = distinct !{!84, !80}
!85 = distinct !{!85, !80}
!86 = distinct !{!86, !80}
!87 = distinct !{!87, !80}
!88 = distinct !{!88, !80}
!89 = distinct !{!89, !80}
!90 = distinct !{!90, !80}
!91 = distinct !{!91, !120, !121, !122}
!92 = distinct !{!92, !120, !121}
!93 = distinct !{!93, !120}
!94 = distinct !{!94, !120}
!95 = distinct !{!95, !120}
!96 = distinct !{!96, !120}
!97 = distinct !{!97, !120}
!98 = !{i64 -7614453733591833360}
!99 = !{!"any pointer", !5, i64 0}
!100 = !{!"p1 int", !99, i64 0}
!101 = !{!100, !100, i64 0}
!102 = !{!99, !99, i64 0}
!103 = !{!"", !6, i64 0, !6, i64 4}
!104 = !{!103, !6, i64 4}
!105 = !{!"any p2 pointer", !99, i64 0}
!106 = !{!"any p3 pointer", !105, i64 0}
!107 = !{!"any p4 pointer", !106, i64 0}
!108 = !{!"p4 double", !107, i64 0}
!109 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 52, !5, i64 76, !5, i64 172, !108, i64 184}
!110 = !{!109, !6, i64 0}
!111 = !{!109, !108, i64 184}
!112 = !{!"p3 double", !106, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!"p2 double", !105, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!"p1 double", !99, i64 0}
!117 = !{!116, !116, i64 0}
!118 = !{!"double", !5, i64 0}
!119 = !{!118, !118, i64 0}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!"llvm.loop.isvectorized", i32 1}
!122 = !{!"llvm.loop.unroll.runtime.disable"}
!123 = !{!81}
!124 = !{!82}
!125 = !{!83}
!126 = !{!84}
!127 = !{!85}
!128 = !{!86}
!129 = !{!87}
!130 = !{!88}
!131 = !{!89}
!132 = !{!90}
!133 = !{!82, !81, !83, !85, !84, !86, !88, !87, !89}
end_hunk_1
