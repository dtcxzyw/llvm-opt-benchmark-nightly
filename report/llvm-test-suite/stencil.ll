Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/stencil?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@stencil_calc:bb.a
  %i.ct = getelementptr [8 x i8], ptr %i.co, i64 %indvars.iv434 ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !51 ; 2 uses
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !51 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !51 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv434
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !51 ; 2 uses
  %i.db = mul nuw nsw i64 %indvars.iv434, %i.i
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.db ; 2 uses
  %.phi.trans.insert493 = getelementptr i8, ptr %i.cw, i64 8
  %.pre494 = load double, ptr %.phi.trans.insert493, align 8, !tbaa !53 ; 2 uses
  br i1 %min.iters.check619, label %scalar.ph618.preheader, label %vector.ph620

vector.ph620:                                     ; preds = %.preheader250
  %vector.recur.init624 = insertelement <2 x double> poison, double %.pre494, i64 1
  br label %vector.body622

vector.body622:                                   ; preds = %vector.body622, %vector.ph620
  %index623 = phi i64 [ 0, %vector.ph620 ], [ %index.next632, %vector.body622 ] ; 3 uses
  %vector.recur625 = phi <2 x double> [ %vector.recur.init624, %vector.ph620 ], [ %wide.load629, %vector.body622 ]
  %i.dd = or disjoint i64 %index623, 1            ; 6 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dd
  %wide.load626 = load <2 x double>, ptr %i.de, align 8, !tbaa !53
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dd
  %wide.load627 = load <2 x double>, ptr %i.df, align 8, !tbaa !53
  %i.dg = fadd <2 x double> %wide.load626, %wide.load627
  %i.dh = getelementptr [8 x i8], ptr %i.cw, i64 %i.dd
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %wide.load628 = load <2 x double>, ptr %i.di, align 8, !tbaa !53
  %i.dj = fadd <2 x double> %i.dg, %wide.load628
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index623
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load629 = load <2 x double>, ptr %i.dl, align 8, !tbaa !53 ; 4 uses
  %i.dm = shufflevector <2 x double> %vector.recur625, <2 x double> %wide.load629, <2 x i32> <i32 1, i32 2>
  %i.dn = fadd <2 x double> %i.dj, %i.dm
  %i.do = fadd <2 x double> %i.dn, %wide.load629
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dd
  %wide.load630 = load <2 x double>, ptr %i.dp, align 8, !tbaa !53
  %i.dq = fadd <2 x double> %i.do, %wide.load630
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dd
  %wide.load631 = load <2 x double>, ptr %i.dr, align 8, !tbaa !53
  %i.ds = fadd <2 x double> %i.dq, %wide.load631
  %i.dt = fdiv <2 x double> %i.ds, splat (double 7.000000e+00)
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dd
  store <2 x double> %i.dt, ptr %i.du, align 8, !tbaa !53
  %index.next632 = add nuw i64 %index623, 2       ; 2 uses
  %i.dv = icmp eq i64 %index.next632, %n.vec621
  br i1 %i.dv, label %middle.block633, label %vector.body622, !llvm.loop !8

middle.block633:                                  ; preds = %vector.body622
  %vector.recur.extract634 = extractelement <2 x double> %wide.load629, i64 1
  br i1 %cmp.n635, label %._crit_edge317, label %scalar.ph618.preheader

scalar.ph618.preheader:                           ; preds = %.preheader250, %middle.block633
  %.ph = phi double [ %.pre494, %.preheader250 ], [ %vector.recur.extract634, %middle.block633 ]
  %indvars.iv429.ph = phi i64 [ 1, %.preheader250 ], [ %i.bs, %middle.block633 ]
  br label %scalar.ph618

scalar.ph618:                                     ; preds = %scalar.ph618.preheader, %scalar.ph618
  %i.dw = phi double [ %i.ei, %scalar.ph618 ], [ %.ph, %scalar.ph618.preheader ]
  %indvars.iv429 = phi i64 [ %indvars.iv.next430, %scalar.ph618 ], [ %indvars.iv429.ph, %scalar.ph618.preheader ] ; 7 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv429
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !53
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv429
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !53
  %i.eb = fadd double %i.dy, %i.ea
  %i.ec = getelementptr [8 x i8], ptr %i.cw, i64 %indvars.iv429
  %i.ed = getelementptr i8, ptr %i.ec, i64 -8
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !53
  %i.ef = fadd double %i.eb, %i.ee
  %i.eg = fadd double %i.ef, %i.dw
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next430
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !53 ; 2 uses
  %i.ej = fadd double %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv429
  %i.el = load double, ptr %i.ek, align 8, !tbaa !53
  %i.em = fadd double %i.ej, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv429
  %i.eo = load double, ptr %i.en, align 8, !tbaa !53
  %i.ep = fadd double %i.em, %i.eo
  %i.eq = fdiv double %i.ep, 7.000000e+00
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv429
  store double %i.eq, ptr %i.er, align 8, !tbaa !53
  %exitcond433.not = icmp eq i64 %indvars.iv.next430, %wide.trip.count432
  br i1 %exitcond433.not, label %._crit_edge317, label %scalar.ph618, !llvm.loop !9

._crit_edge317:                                   ; preds = %scalar.ph618, %middle.block633
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next435, %wide.trip.count437
  br i1 %exitcond438.not, label %._crit_edge320, label %.preheader250, !llvm.loop !10

._crit_edge320:                                   ; preds = %._crit_edge317
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond443.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count442
  br i1 %exitcond443.not, label %.preheader253, label %.preheader252, !llvm.loop !11

.preheader251:                                    ; preds = %.preheader251.lr.ph.split.split, %._crit_edge330
  %indvars.iv458 = phi i64 [ 1, %.preheader251.lr.ph.split.split ], [ %indvars.iv.next459, %._crit_edge330 ] ; 2 uses
  %indvar445 = phi i64 [ 0, %.preheader251.lr.ph.split.split ], [ %indvar.next446, %._crit_edge330 ] ; 2 uses
  %i.es = mul i64 %i.bl, %indvar445
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv458
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !49 ; 3 uses
  %i.ev = getelementptr i8, ptr %i.bq, i64 %i.es  ; 3 uses
  br i1 %i.bt, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader251, %.preheader
  %indvars.iv453 = phi i64 [ %indvars.iv.next454.1, %.preheader ], [ 1, %.preheader251 ] ; 3 uses
  %indvar447 = phi i64 [ %indvar.next448.1, %.preheader ], [ 0, %.preheader251 ] ; 3 uses
  %niter656 = phi i64 [ %niter656.next.1, %.preheader ], [ 0, %.preheader251 ]
  %i.ew = mul i64 %i.bm, %indvar447
  %scevgep449 = getelementptr i8, ptr %i.ev, i64 %i.ew
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv453
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !51
  %scevgep444 = getelementptr nuw i8, ptr %i.ey, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep444, ptr align 8 %scevgep449, i64 %i.bo, i1 false), !tbaa !53
  %indvar.next448 = or disjoint i64 %indvar447, 1
  %i.ez = mul i64 %i.bm, %indvar.next448
  %scevgep449.1 = getelementptr i8, ptr %i.ev, i64 %i.ez
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv453
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !51
  %scevgep444.1 = getelementptr nuw i8, ptr %i.fc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep444.1, ptr align 8 %scevgep449.1, i64 %i.bo, i1 false), !tbaa !53
  %indvars.iv.next454.1 = add nuw nsw i64 %indvars.iv453, 2 ; 2 uses
  %indvar.next448.1 = add nuw nsw i64 %indvar447, 2 ; 2 uses
  %niter656.next.1 = add nuw i64 %niter656, 2     ; 2 uses
  %niter656.ncmp.1 = icmp eq i64 %niter656.next.1, %unroll_iter655
  br i1 %niter656.ncmp.1, label %._crit_edge330.unr-lcssa, label %.preheader, !llvm.loop !12

._crit_edge330.unr-lcssa:                         ; preds = %.preheader
  br i1 %lcmp.mod653.not, label %._crit_edge330, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge330.unr-lcssa, %.preheader251
  %indvars.iv453.epil.init = phi i64 [ 1, %.preheader251 ], [ %indvars.iv.next454.1, %._crit_edge330.unr-lcssa ]
  %indvar447.epil.init = phi i64 [ 0, %.preheader251 ], [ %indvar.next448.1, %._crit_edge330.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod654)
  %i.fd = mul i64 %i.bm, %indvar447.epil.init
  %scevgep449.epil = getelementptr i8, ptr %i.ev, i64 %i.fd
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv453.epil.init
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !51
  %scevgep444.epil = getelementptr nuw i8, ptr %i.ff, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep444.epil, ptr align 8 %scevgep449.epil, i64 %i.bo, i1 false), !tbaa !53
  br label %._crit_edge330

._crit_edge330:                                   ; preds = %._crit_edge330.unr-lcssa, %.preheader.epil.preheader
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1
  %indvar.next446 = add nuw nsw i64 %indvar445, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvar.next446, %wide.trip.count461
  br i1 %exitcond462.not, label %.loopexit, label %.preheader251, !llvm.loop !13

.loopexit:                                        ; preds = %._crit_edge330, %.preheader253, %bb.b, %.preheader251.lr.ph
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count466
  br i1 %exitcond467.not, label %.loopexit256, label %bb.b, !llvm.loop !14

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %.loopexit262
  %indvars.iv376 = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next377, %.loopexit262 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv376
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !38
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [192 x i8], ptr %i.w, i64 %i.fj ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !44
  %i.fm = icmp slt i32 %i.fl, 0
  %brmerge508 = or i1 %i.fm, %.not243266
  br i1 %brmerge508, label %.loopexit262, label %.preheader260.lr.ph.split.split

.preheader260.lr.ph.split.split:                  ; preds = %.lr.ph.split.split
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 184
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !45
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.x
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !47
  br label %.preheader260

.preheader259.lr.ph:                              ; preds = %._crit_edge270
  br i1 %.not243266, label %.loopexit262, label %.preheader259.lr.ph.split.split

.preheader259.lr.ph.split.split:                  ; preds = %.preheader259.lr.ph
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 184
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !45
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.x
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !47
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
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !49 ; 3 uses
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !49 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !49 ; 3 uses
  %.pre = load ptr, ptr %i.ga, align 8, !tbaa !51
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.pre468 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !51 ; 3 uses
  %.pre469 = load ptr, ptr %i.gb, align 8, !tbaa !51
  %.phi.trans.insert470 = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.pre471 = load ptr, ptr %.phi.trans.insert470, align 8, !tbaa !51 ; 2 uses
  %.pre472 = load ptr, ptr %i.gd, align 8, !tbaa !51
  %.phi.trans.insert473 = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.pre474 = load ptr, ptr %.phi.trans.insert473, align 8, !tbaa !51 ; 2 uses
  %.pre475.pre = load double, ptr %.pre468, align 8, !tbaa !53
  %.phi.trans.insert476.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre468, i64 8
  %.pre477.pre = load double, ptr %.phi.trans.insert476.phi.trans.insert, align 8, !tbaa !53
  %i.ge = load <2 x double>, ptr %.pre471, align 8, !tbaa !53 ; 2 uses
  %i.gf = load <2 x double>, ptr %.pre474, align 8, !tbaa !53 ; 2 uses
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
  %i.gs = phi <2 x double> [ %i.gg, %.preheader260 ], [ %i.he, %._crit_edge ] ; 4 uses
  %i.gt = phi <2 x double> [ %i.gh, %.preheader260 ], [ %i.hf, %._crit_edge ] ; 4 uses
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 5 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next351
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !51 ; 7 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next351
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !51 ; 6 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.next351
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !51 ; 6 uses
  %i.ha = mul nuw nsw i64 %indvars.iv350, %i.i
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.ha ; 2 uses
  %.pre478 = load double, ptr %i.gv, align 8, !tbaa !53 ; 4 uses
  %.phi.trans.insert479 = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.pre480 = load double, ptr %.phi.trans.insert479, align 8, !tbaa !53 ; 4 uses
  %i.hc = load <2 x double>, ptr %i.gx, align 8, !tbaa !53 ; 4 uses
  %i.hd = load <2 x double>, ptr %i.gz, align 8, !tbaa !53 ; 4 uses
  %i.he = shufflevector <2 x double> %i.hc, <2 x double> %i.hd, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.hf = shufflevector <2 x double> %i.hc, <2 x double> %i.hd, <2 x i32> <i32 0, i32 2> ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader258
  %scevgep514 = getelementptr nuw i8, ptr %i.gq, i64 16
  %scevgep515 = getelementptr i8, ptr %i.gq, i64 %i.au
  %scevgep516 = getelementptr i8, ptr %i.gr, i64 %i.au
  %i.hg = insertelement <2 x ptr> poison, ptr %i.gv, i64 0
  %i.hh = insertelement <2 x ptr> %i.hg, ptr %i.go, i64 1
  %i.hi = getelementptr i8, <2 x ptr> %i.hh, i64 16
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
  %i.hj = insertelement <8 x ptr> poison, ptr %scevgep515, i64 0
  %i.hk = insertelement <8 x ptr> %i.hj, ptr %scevgep516, i64 1
  %i.hl = insertelement <8 x ptr> %i.hk, ptr %scevgep518, i64 2
  %i.hm = insertelement <8 x ptr> %i.hl, ptr %scevgep520, i64 3
  %i.hn = insertelement <8 x ptr> %i.hm, ptr %scevgep521, i64 4
  %i.ho = insertelement <8 x ptr> %i.hn, ptr %scevgep523, i64 5
  %i.hp = insertelement <8 x ptr> %i.ho, ptr %scevgep525, i64 6
  %i.hq = insertelement <8 x ptr> %i.hp, ptr %scevgep526, i64 7
  %i.hr = icmp ult <8 x ptr> %i.gj, %i.hq
  %1 = insertelement <8 x ptr> poison, ptr %scevgep514, i64 0
  %2 = insertelement <8 x ptr> %1, ptr %i.gr, i64 1
  %3 = shufflevector <2 x ptr> %i.hi, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %4 = shufflevector <8 x ptr> %2, <8 x ptr> %3, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hs = insertelement <8 x ptr> %4, ptr %i.gp, i64 4
  %i.ht = insertelement <8 x ptr> %i.hs, ptr %scevgep522, i64 5
  %5 = insertelement <8 x ptr> %i.ht, ptr %scevgep524, i64 6
  %6 = insertelement <8 x ptr> %5, ptr %i.gn, i64 7
  %i.hu = icmp ult <8 x ptr> %6, %i.gl
  %i.hv = and <8 x i1> %i.hr, %i.hu
  %bound0556 = icmp ult ptr %scevgep512, %scevgep528
  %bound1557 = icmp ult ptr %scevgep527, %scevgep513
  %found.conflict558 = and i1 %bound0556, %bound1557
  %i.hw = bitcast <8 x i1> %i.hv to i8
  %i.hx = icmp ne i8 %i.hw, 0
  %op.rdx641 = or i1 %i.hx, %found.conflict558
  br i1 %op.rdx641, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hy = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hz = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ia = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ib = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %vector.recur.init574 = insertelement <2 x double> poison, double %.pre480, i64 1
  %vector.recur.init576 = insertelement <2 x double> poison, double %.pre478, i64 1
  %vector.recur.init578 = insertelement <2 x double> poison, double %.pre477, i64 1
  %vector.recur.init580 = insertelement <2 x double> poison, double %.pre475, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <2 x double> [ %i.hd, %vector.ph ], [ %wide.load595, %vector.body ] ; 2 uses
  %vector.recur561 = phi <2 x double> [ %i.hy, %vector.ph ], [ %i.jy, %vector.body ]
  %vector.recur563 = phi <2 x double> [ %i.gs, %vector.ph ], [ %wide.load594, %vector.body ] ; 2 uses
  %vector.recur565 = phi <2 x double> [ %i.gt, %vector.ph ], [ %i.js, %vector.body ]
  %vector.recur567 = phi <2 x double> [ %i.hc, %vector.ph ], [ %wide.load590, %vector.body ] ; 2 uses
  %vector.recur569 = phi <2 x double> [ %i.hz, %vector.ph ], [ %i.jh, %vector.body ]
  %vector.recur571 = phi <2 x double> [ %i.ia, %vector.ph ], [ %wide.load589, %vector.body ] ; 2 uses
  %vector.recur573 = phi <2 x double> [ %i.ib, %vector.ph ], [ %i.jb, %vector.body ]
  %vector.recur575 = phi <2 x double> [ %vector.recur.init574, %vector.ph ], [ %wide.load585, %vector.body ] ; 2 uses
  %vector.recur577 = phi <2 x double> [ %vector.recur.init576, %vector.ph ], [ %i.iq, %vector.body ]
  %vector.recur579 = phi <2 x double> [ %vector.recur.init578, %vector.ph ], [ %wide.load584, %vector.body ] ; 2 uses
  %vector.recur581 = phi <2 x double> [ %vector.recur.init580, %vector.ph ], [ %i.ik, %vector.body ]
  %i.ic = or disjoint i64 %index, 1               ; 4 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index
  %wide.load = load <2 x double>, ptr %i.id, align 8, !tbaa !53, !alias.scope !57
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ic
  %wide.load582 = load <2 x double>, ptr %i.ie, align 8, !tbaa !53, !alias.scope !57
  %i.if = fadd <2 x double> %wide.load, %wide.load582
  %i.ig = add nuw nsw i64 %index, 2               ; 9 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ig
  %wide.load583 = load <2 x double>, ptr %i.ih, align 8, !tbaa !53, !alias.scope !57
  %i.ii = fadd <2 x double> %i.if, %wide.load583
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.ig
  %wide.load584 = load <2 x double>, ptr %i.ij, align 8, !tbaa !53, !alias.scope !58 ; 5 uses
  %i.ik = shufflevector <2 x double> %vector.recur579, <2 x double> %wide.load584, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.il = shufflevector <2 x double> %vector.recur581, <2 x double> %vector.recur579, <2 x i32> <i32 1, i32 3>
  %i.im = fadd <2 x double> %i.ii, %i.il
  %i.in = fadd <2 x double> %i.im, %i.ik
  %i.io = fadd <2 x double> %i.in, %wide.load584
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.ig
  %wide.load585 = load <2 x double>, ptr %i.ip, align 8, !tbaa !53, !alias.scope !59 ; 5 uses
  %i.iq = shufflevector <2 x double> %vector.recur575, <2 x double> %wide.load585, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ir = shufflevector <2 x double> %vector.recur577, <2 x double> %vector.recur575, <2 x i32> <i32 1, i32 3>
  %i.is = fadd <2 x double> %i.io, %i.ir
  %i.it = fadd <2 x double> %i.is, %i.iq
  %i.iu = fadd <2 x double> %i.it, %wide.load585
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %index
  %wide.load586 = load <2 x double>, ptr %i.iv, align 8, !tbaa !53, !alias.scope !60
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.ic
  %wide.load587 = load <2 x double>, ptr %i.iw, align 8, !tbaa !53, !alias.scope !60
  %i.ix = fadd <2 x double> %wide.load586, %wide.load587
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.ig
  %wide.load588 = load <2 x double>, ptr %i.iy, align 8, !tbaa !53, !alias.scope !60
  %i.iz = fadd <2 x double> %i.ix, %wide.load588
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.ig
  %wide.load589 = load <2 x double>, ptr %i.ja, align 8, !tbaa !53, !alias.scope !61 ; 5 uses
  %i.jb = shufflevector <2 x double> %vector.recur571, <2 x double> %wide.load589, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jc = shufflevector <2 x double> %vector.recur573, <2 x double> %vector.recur571, <2 x i32> <i32 1, i32 3>
  %i.jd = fadd <2 x double> %i.iz, %i.jc
  %i.je = fadd <2 x double> %i.jd, %i.jb
  %i.jf = fadd <2 x double> %i.je, %wide.load589
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.ig
  %wide.load590 = load <2 x double>, ptr %i.jg, align 8, !tbaa !53, !alias.scope !62 ; 5 uses
  %i.jh = shufflevector <2 x double> %vector.recur567, <2 x double> %wide.load590, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ji = shufflevector <2 x double> %vector.recur569, <2 x double> %vector.recur567, <2 x i32> <i32 1, i32 3>
  %i.jj = fadd <2 x double> %i.jf, %i.ji
  %i.jk = fadd <2 x double> %i.jj, %i.jh
  %i.jl = fadd <2 x double> %i.jk, %wide.load590
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %index
  %wide.load591 = load <2 x double>, ptr %i.jm, align 8, !tbaa !53, !alias.scope !63
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ic
  %wide.load592 = load <2 x double>, ptr %i.jn, align 8, !tbaa !53, !alias.scope !63
  %i.jo = fadd <2 x double> %wide.load591, %wide.load592
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ig
  %wide.load593 = load <2 x double>, ptr %i.jp, align 8, !tbaa !53, !alias.scope !63
  %i.jq = fadd <2 x double> %i.jo, %wide.load593
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.ig
  %wide.load594 = load <2 x double>, ptr %i.jr, align 8, !tbaa !53, !alias.scope !64 ; 5 uses
  %i.js = shufflevector <2 x double> %vector.recur563, <2 x double> %wide.load594, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jt = shufflevector <2 x double> %vector.recur565, <2 x double> %vector.recur563, <2 x i32> <i32 1, i32 3>
  %i.ju = fadd <2 x double> %i.jq, %i.jt
  %i.jv = fadd <2 x double> %i.ju, %i.js
  %i.jw = fadd <2 x double> %i.jv, %wide.load594
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.ig
  %wide.load595 = load <2 x double>, ptr %i.jx, align 8, !tbaa !53, !alias.scope !65 ; 5 uses
  %i.jy = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load595, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jz = shufflevector <2 x double> %vector.recur561, <2 x double> %vector.recur, <2 x i32> <i32 1, i32 3>
  %i.ka = fadd <2 x double> %i.jw, %i.jz
  %i.kb = fadd <2 x double> %i.ka, %i.jy
  %i.kc = fadd <2 x double> %i.kb, %wide.load595
  %i.kd = fadd <2 x double> %i.iu, %i.jl
  %i.ke = fadd <2 x double> %i.kd, %i.kc
  %i.kf = fdiv <2 x double> %i.ke, splat (double 2.700000e+01)
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ic
  store <2 x double> %i.kf, ptr %i.kg, align 8, !tbaa !53, !alias.scope !66, !noalias !67
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract603 = extractelement <2 x double> %wide.load585, i64 1
  %vector.recur.extract604 = extractelement <2 x double> %wide.load585, i64 0
  %vector.recur.extract605 = extractelement <2 x double> %wide.load584, i64 1
  %vector.recur.extract606 = extractelement <2 x double> %wide.load584, i64 0
  %i.ki = shufflevector <2 x double> %wide.load589, <2 x double> %wide.load594, <2 x i32> <i32 1, i32 3>
  %i.kj = shufflevector <2 x double> %wide.load589, <2 x double> %wide.load594, <2 x i32> <i32 0, i32 2>
  %i.kk = shufflevector <2 x double> %wide.load590, <2 x double> %wide.load595, <2 x i32> <i32 1, i32 3>
  %i.kl = shufflevector <2 x double> %wide.load590, <2 x double> %wide.load595, <2 x i32> <i32 0, i32 2>
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader258, %middle.block
  %.ph642 = phi double [ %.pre480, %vector.memcheck ], [ %.pre480, %.preheader258 ], [ %vector.recur.extract603, %middle.block ]
  %.ph643 = phi double [ %.pre478, %vector.memcheck ], [ %.pre478, %.preheader258 ], [ %vector.recur.extract604, %middle.block ]
  %.ph644 = phi double [ %.pre477, %vector.memcheck ], [ %.pre477, %.preheader258 ], [ %vector.recur.extract605, %middle.block ]
  %.ph645 = phi double [ %.pre475, %vector.memcheck ], [ %.pre475, %.preheader258 ], [ %vector.recur.extract606, %middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader258 ], [ %i.ba, %middle.block ]
  %.ph646 = phi <2 x double> [ %i.gt, %vector.memcheck ], [ %i.gt, %.preheader258 ], [ %i.kj, %middle.block ]
  %.ph647 = phi <2 x double> [ %i.gs, %vector.memcheck ], [ %i.gs, %.preheader258 ], [ %i.ki, %middle.block ]
  %.ph648 = phi <2 x double> [ %i.hf, %vector.memcheck ], [ %i.hf, %.preheader258 ], [ %i.kl, %middle.block ]
  %.ph649 = phi <2 x double> [ %i.he, %vector.memcheck ], [ %i.he, %.preheader258 ], [ %i.kk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.km = phi double [ %i.le, %scalar.ph ], [ %.ph642, %scalar.ph.preheader ] ; 2 uses
  %i.kn = phi double [ %i.km, %scalar.ph ], [ %.ph643, %scalar.ph.preheader ]
  %i.ko = phi double [ %i.lc, %scalar.ph ], [ %.ph644, %scalar.ph.preheader ] ; 2 uses
  %i.kp = phi double [ %i.ko, %scalar.ph ], [ %.ph645, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.kq = phi <2 x double> [ %i.kr, %scalar.ph ], [ %.ph646, %scalar.ph.preheader ]
  %i.kr = phi <2 x double> [ %i.me, %scalar.ph ], [ %.ph647, %scalar.ph.preheader ] ; 2 uses
  %i.ks = phi <2 x double> [ %i.kt, %scalar.ph ], [ %.ph648, %scalar.ph.preheader ]
  %i.kt = phi <2 x double> [ %i.mj, %scalar.ph ], [ %.ph649, %scalar.ph.preheader ] ; 2 uses
  %i.ku = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.ku
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !53
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 11 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next
  %i.la = load double, ptr %i.kz, align 8, !tbaa !53
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !53 ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next
  %i.le = load double, ptr %i.ld, align 8, !tbaa !53 ; 2 uses
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.ku
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !53
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next
  %i.lj = load double, ptr %i.li, align 8, !tbaa !53
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.next
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !53
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.ku
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !53
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !53
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !53
  %i.lt = load <2 x double>, ptr %i.lf, align 8, !tbaa !53 ; 2 uses
  %i.lu = load <2 x double>, ptr %i.lm, align 8, !tbaa !53 ; 2 uses
  %i.lv = shufflevector <2 x double> %i.lt, <2 x double> %i.lu, <2 x i32> <i32 0, i32 2>
  %i.lw = shufflevector <2 x double> %i.lt, <2 x double> %i.lu, <2 x i32> <i32 1, i32 3>
  %i.lx = fadd <2 x double> %i.lv, %i.lw
  %i.ly = insertelement <2 x double> poison, double %i.lh, i64 0
  %i.lz = insertelement <2 x double> %i.ly, double %i.lo, i64 1
  %i.ma = fadd <2 x double> %i.lx, %i.lz
  %i.mb = fadd <2 x double> %i.ma, %i.kq
  %i.mc = fadd <2 x double> %i.mb, %i.kr
  %i.md = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.me = insertelement <2 x double> %i.md, double %i.lq, i64 1 ; 2 uses
  %i.mf = fadd <2 x double> %i.mc, %i.me
  %i.mg = fadd <2 x double> %i.mf, %i.ks
  %i.mh = fadd <2 x double> %i.mg, %i.kt
  %i.mi = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.ls, i64 1 ; 2 uses
  %i.mk = fadd <2 x double> %i.mh, %i.mj
  %i.ml = insertelement <6 x double> poison, double %i.lc, i64 0
  %i.mm = insertelement <6 x double> %i.ml, double %i.kn, i64 1
  %i.mn = insertelement <6 x double> %i.mm, double %i.km, i64 2
  %i.mo = insertelement <6 x double> %i.mn, double %i.le, i64 3
  %i.mp = shufflevector <2 x double> %i.mk, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mq = shufflevector <6 x double> %i.mo, <6 x double> %i.mp, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %op.rdx = fadd double %i.kw, %i.ky
  %op.rdx638 = fadd double %op.rdx, %i.la
  %op.rdx639 = fadd double %op.rdx638, %i.kp
  %op.rdx640 = fadd double %op.rdx639, %i.ko
  %i.mr = call double @llvm.vector.reduce.fadd.v6f64(double %op.rdx640, <6 x double> %i.mq)
  %i.ms = fdiv double %i.mr, 2.700000e+01
end_hunk_0
