inline.NumInlined: 13
inline.NumDeleted: 4
begin_hunk_0_@estimate_weighting_factor_B_slice:bb.a
  %lcmp.mod508 = icmp ne i64 %xtraiter, 0
  br label %.preheader261.us

.preheader261.us:                                 ; preds = %.preheader261.us.preheader, %._crit_edge280.us
  %indvars.iv369 = phi i64 [ 0, %.preheader261.us.preheader ], [ %indvars.iv.next370, %._crit_edge280.us ] ; 2 uses
  %.0222281.us = phi double [ 0.000000e+00, %.preheader261.us.preheader ], [ %.lcssa506, %._crit_edge280.us ] ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv369
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !38 ; 5 uses
  br i1 %i.da, label %.epil.preheader, label %.preheader261.us.new

.preheader261.us.new:                             ; preds = %.preheader261.us, %.preheader261.us.new
  %indvars.iv364 = phi i64 [ %indvars.iv.next365.3, %.preheader261.us.new ], [ 0, %.preheader261.us ] ; 5 uses
  %.1223278.us = phi double [ %i.dv, %.preheader261.us.new ], [ %.0222281.us, %.preheader261.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader261.us.new ], [ 0, %.preheader261.us ]
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %indvars.iv364
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !40
  %i.df = uitofp i16 %i.de to double
  %i.dg = fadd double %.1223278.us, %i.df
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %indvars.iv364
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !40
  %i.dk = uitofp i16 %i.dj to double
  %i.dl = fadd double %i.dg, %i.dk
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %indvars.iv364
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !40
  %i.dp = uitofp i16 %i.do to double
  %i.dq = fadd double %i.dl, %i.dp
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %indvars.iv364
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 6
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !40
  %i.du = uitofp i16 %i.dt to double
  %i.dv = fadd double %i.dq, %i.du                ; 3 uses
  %indvars.iv.next365.3 = add nuw nsw i64 %indvars.iv364, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge280.us.unr-lcssa, label %.preheader261.us.new, !llvm.loop !82

._crit_edge280.us.unr-lcssa:                      ; preds = %.preheader261.us.new
  br i1 %lcmp.mod.not, label %._crit_edge280.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge280.us.unr-lcssa, %.preheader261.us
  %indvars.iv364.epil.init = phi i64 [ 0, %.preheader261.us ], [ %indvars.iv.next365.3, %._crit_edge280.us.unr-lcssa ]
  %.1223278.us.epil.init = phi double [ %.0222281.us, %.preheader261.us ], [ %i.dv, %._crit_edge280.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod508)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv364.epil = phi i64 [ %indvars.iv364.epil.init, %.epil.preheader ], [ %indvars.iv.next365.epil, %bb.f ] ; 2 uses
  %.1223278.us.epil = phi double [ %.1223278.us.epil.init, %.epil.preheader ], [ %i.dz, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %indvars.iv364.epil
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !40
  %i.dy = uitofp i16 %i.dx to double
  %i.dz = fadd double %.1223278.us.epil, %i.dy    ; 2 uses
  %indvars.iv.next365.epil = add nuw nsw i64 %indvars.iv364.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge280.us, label %bb.f, !llvm.loop !83

._crit_edge280.us:                                ; preds = %bb.f, %._crit_edge280.us.unr-lcssa
  %.lcssa506 = phi double [ %i.dv, %._crit_edge280.us.unr-lcssa ], [ %i.dz, %bb.f ] ; 2 uses
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count372
  br i1 %exitcond373.not, label %.preheader260.loopexit, label %.preheader261.us, !llvm.loop !84

.preheader246.lr.ph:                              ; preds = %._crit_edge277.split, %._crit_edge277.split.thread471
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 12288
  %i.eb = load ptr, ptr @wbp_weight, align 8      ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.preheader246, label %.preheader244

.preheader246:                                    ; preds = %.preheader246.lr.ph, %._crit_edge312
  %i.ef = phi i32 [ %i.fp, %._crit_edge312 ], [ %i.aa, %.preheader246.lr.ph ]
  %i.eg = phi i32 [ %i.fq, %._crit_edge312 ], [ %i.ed, %.preheader246.lr.ph ] ; 2 uses
  %indvars.iv441 = phi i64 [ %indvars.iv.next442, %._crit_edge312 ], [ 0, %.preheader246.lr.ph ] ; 5 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.preheader245.lr.ph, label %._crit_edge312

.preheader245.lr.ph:                              ; preds = %.preheader246
  %i.ei = getelementptr inbounds nuw [384 x i8], ptr %i.ea, i64 %indvars.iv441
  %i.ej = load ptr, ptr %i.ec, align 8, !tbaa !85
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv441
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !34
  %i.em = getelementptr inbounds nuw [384 x i8], ptr %i.c, i64 %indvars.iv441
  %i.en = load ptr, ptr %i.eb, align 8, !tbaa !85
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv441
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !34
  br label %.preheader245

.preheader244:                                    ; preds = %._crit_edge312, %._crit_edge277.split.thread, %.preheader246.lr.ph
  %i.eq = load ptr, ptr @wp_weight, align 8
  %i.er = load ptr, ptr @wp_offset, align 8
  br label %.preheader

.preheader245:                                    ; preds = %.preheader245.lr.ph, %.preheader245
  %indvars.iv438 = phi i64 [ 0, %.preheader245.lr.ph ], [ %indvars.iv.next439, %.preheader245 ] ; 5 uses
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.ei, i64 %indvars.iv438 ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv438
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !46 ; 3 uses
  %i.ev = getelementptr inbounds nuw [12 x i8], ptr %i.em, i64 %indvars.iv438 ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv438
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !46 ; 3 uses
  %i.ey = load i32, ptr %i.es, align 4, !tbaa !4
  store i32 %i.ey, ptr %i.eu, align 4, !tbaa !4
  %i.ez = load i32, ptr %i.ev, align 4, !tbaa !4
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !4
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 2 uses
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4 ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next439, %i.fn
  br i1 %i.fo, label %.preheader245, label %._crit_edge312.loopexit, !llvm.loop !86

._crit_edge312.loopexit:                          ; preds = %.preheader245
  %.pre458 = load i32, ptr @listXsize, align 16, !tbaa !4
  br label %._crit_edge312

._crit_edge312:                                   ; preds = %._crit_edge312.loopexit, %.preheader246
  %i.fp = phi i32 [ %.pre458, %._crit_edge312.loopexit ], [ %i.ef, %.preheader246 ] ; 2 uses
  %i.fq = phi i32 [ %i.fm, %._crit_edge312.loopexit ], [ %i.eg, %.preheader246 ]
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %i.fr = sext i32 %i.fp to i64
  %i.fs = icmp slt i64 %indvars.iv.next442, %i.fr
  br i1 %i.fs, label %.preheader246, label %.preheader244, !llvm.loop !87

.preheader:                                       ; preds = %.preheader244, %._crit_edge316
  %indvars.iv447 = phi i64 [ 0, %.preheader244 ], [ %indvars.iv.next448, %._crit_edge316 ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv447 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph315, label %._crit_edge316

.lr.ph315:                                        ; preds = %.preheader
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv447
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !34
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv447
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph315, %bb.g
  %indvars.iv444 = phi i64 [ 0, %.lr.ph315 ], [ %indvars.iv.next445, %bb.g ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv444
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !46 ; 3 uses
  store i32 32, ptr %i.gb, align 4, !tbaa !4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i32 32, ptr %i.gc, align 4, !tbaa !4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i32 32, ptr %i.gd, align 4, !tbaa !4
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv444
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !46 ; 3 uses
  store i32 0, ptr %i.gf, align 4, !tbaa !4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i32 0, ptr %i.gg, align 4, !tbaa !4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i32 0, ptr %i.gh, align 4, !tbaa !4
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %i.gi = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next445, %i.gj
  br i1 %i.gk, label %bb.g, label %._crit_edge316, !llvm.loop !89

._crit_edge316:                                   ; preds = %bb.g, %.preheader
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond451.not = icmp eq i64 %indvars.iv.next448, %wide.trip.count
  br i1 %exitcond451.not, label %.loopexit, label %.preheader, !llvm.loop !90

.preheader260.loopexit:                           ; preds = %._crit_edge280.us
  %i.gl = fmul double %.lcssa506, 3.200000e+01
  br label %.preheader260

.preheader260:                                    ; preds = %.preheader261.lr.ph, %.preheader260.loopexit, %.preheader262
  %.0222.lcssa = phi double [ 0.000000e+00, %.preheader262 ], [ %i.gl, %.preheader260.loopexit ], [ 0.000000e+00, %.preheader261.lr.ph ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.gn = add i32 %i.cu, 19
  %smax391 = tail call i32 @llvm.smax.i32(i32 %i.gn, i32 20)
  %i.go = add nuw i32 %smax391, 1
  %wide.trip.count392 = zext i32 %i.go to i64
  br label %.preheader259

.preheader259:                                    ; preds = %.preheader260, %bb.i
  %indvar374 = phi i64 [ 0, %.preheader260 ], [ %indvar.next375, %bb.i ] ; 5 uses
  %i.gp = mul nuw nsw i64 %indvar374, 384
  %scevgep395 = getelementptr i8, ptr %i.b, i64 %i.gp ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvar374
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !4  ; 5 uses
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %.lr.ph, label %bb.i

.lr.ph:                                           ; preds = %.preheader259
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr @listX, i64 %indvar374
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !50 ; 3 uses
  %i.gv = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvar374 ; 4 uses
  br i1 %i.cv, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.gw = zext nneg i32 %i.gr to i64              ; 3 uses
  %i.gx = mul nuw nsw i64 %i.gw, 12
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep395, i8 0, i64 %i.gx, i1 false), !tbaa !4
  %xtraiter509 = and i64 %i.gw, 1
  %i.gy = icmp eq i32 %i.gr, 1
  br i1 %i.gy, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter514 = and i64 %i.gw, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.gz = load i32, ptr %i.gm, align 4, !tbaa !37 ; 2 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  %i.hb = add i32 %i.gz, 19                       ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 20)
  %i.hc = zext nneg i32 %i.gr to i64              ; 2 uses
  %i.hd = mul nuw nsw i64 %i.hc, 12
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep395, i8 0, i64 %i.hd, i1 false), !tbaa !4
  %i.he = zext nneg i32 %smax to i64
  %i.hf = add nsw i64 %i.he, -19                  ; 2 uses
  %xtraiter517 = and i64 %i.hf, 3                 ; 3 uses
  %i.hg = icmp slt i32 %i.hb, 23
  %unroll_iter522 = and i64 %i.hf, -4
  %lcmp.mod519.not = icmp eq i64 %xtraiter517, 0
  %lcmp.mod521 = icmp ne i64 %xtraiter517, 0
  br label %.preheader258.lr.ph.us

.preheader258.lr.ph.us:                           ; preds = %._crit_edge290.split.us, %.lr.ph.split.us
  %indvars.iv396 = phi i64 [ %indvars.iv.next397, %._crit_edge290.split.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv396
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !52
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 6448
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !54 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !63
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !64
  br i1 %i.ha, label %.preheader258.us, label %._crit_edge290.split.us

.preheader258.us.new:                             ; preds = %.preheader258.us, %.preheader258.us.new
  %indvars.iv383 = phi i64 [ %indvars.iv.next384.3, %.preheader258.us.new ], [ 20, %.preheader258.us ] ; 5 uses
  %i.hn = phi double [ %i.ig, %.preheader258.us.new ], [ %.lcssa288292.us, %.preheader258.us ]
  %niter523 = phi i64 [ %niter523.next.3, %.preheader258.us.new ], [ 0, %.preheader258.us ]
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %indvars.iv383
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !40
  %i.hq = uitofp i16 %i.hp to double
  %i.hr = fadd double %i.hn, %i.hq
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %indvars.iv383
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !40
  %i.hv = uitofp i16 %i.hu to double
  %i.hw = fadd double %i.hr, %i.hv
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %indvars.iv383
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !40
  %i.ia = uitofp i16 %i.hz to double
  %i.ib = fadd double %i.hw, %i.ia
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %indvars.iv383
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 6
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !40
  %i.if = uitofp i16 %i.ie to double
  %i.ig = fadd double %i.ib, %i.if                ; 3 uses
  %indvars.iv.next384.3 = add nuw nsw i64 %indvars.iv383, 4 ; 2 uses
  %niter523.next.3 = add i64 %niter523, 4         ; 2 uses
  %niter523.ncmp.3 = icmp eq i64 %niter523.next.3, %unroll_iter522
  br i1 %niter523.ncmp.3, label %._crit_edge287.us.unr-lcssa, label %.preheader258.us.new, !llvm.loop !91

.preheader258.us:                                 ; preds = %.preheader258.lr.ph.us, %._crit_edge287.us
  %indvars.iv388 = phi i64 [ %indvars.iv.next389, %._crit_edge287.us ], [ 20, %.preheader258.lr.ph.us ] ; 2 uses
  %.lcssa288292.us = phi double [ %.lcssa504, %._crit_edge287.us ], [ 0.000000e+00, %.preheader258.lr.ph.us ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv388
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !38 ; 5 uses
  br i1 %i.hg, label %.epil.preheader516, label %.preheader258.us.new

._crit_edge287.us.unr-lcssa:                      ; preds = %.preheader258.us.new
  br i1 %lcmp.mod519.not, label %._crit_edge287.us, label %.epil.preheader516

.epil.preheader516:                               ; preds = %._crit_edge287.us.unr-lcssa, %.preheader258.us
  %indvars.iv383.epil.init = phi i64 [ 20, %.preheader258.us ], [ %indvars.iv.next384.3, %._crit_edge287.us.unr-lcssa ]
  %.epil.init = phi double [ %.lcssa288292.us, %.preheader258.us ], [ %i.ig, %._crit_edge287.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod521)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader516
  %indvars.iv383.epil = phi i64 [ %indvars.iv383.epil.init, %.epil.preheader516 ], [ %indvars.iv.next384.epil, %bb.h ] ; 2 uses
  %i.ij = phi double [ %.epil.init, %.epil.preheader516 ], [ %i.in, %bb.h ]
  %epil.iter518 = phi i64 [ 0, %.epil.preheader516 ], [ %epil.iter518.next, %bb.h ]
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %indvars.iv383.epil
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !40
  %i.im = uitofp i16 %i.il to double
  %i.in = fadd double %i.ij, %i.im                ; 2 uses
  %indvars.iv.next384.epil = add nuw nsw i64 %indvars.iv383.epil, 1
  %epil.iter518.next = add i64 %epil.iter518, 1   ; 2 uses
  %epil.iter518.cmp.not = icmp eq i64 %epil.iter518.next, %xtraiter517
  br i1 %epil.iter518.cmp.not, label %._crit_edge287.us, label %bb.h, !llvm.loop !92

._crit_edge287.us:                                ; preds = %bb.h, %._crit_edge287.us.unr-lcssa
  %.lcssa504 = phi double [ %i.ig, %._crit_edge287.us.unr-lcssa ], [ %i.in, %bb.h ] ; 2 uses
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next389, %wide.trip.count392
  br i1 %exitcond393.not, label %._crit_edge290.split.us, label %.preheader258.us, !llvm.loop !93

._crit_edge290.split.us:                          ; preds = %._crit_edge287.us, %.preheader258.lr.ph.us
  %i.io = phi double [ 0.000000e+00, %.preheader258.lr.ph.us ], [ %.lcssa504, %._crit_edge287.us ] ; 2 uses
  %i.ip = fcmp une double %i.io, 0.000000e+00
  %i.iq = fdiv double %.0222.lcssa, %i.io
  %i.ir = fadd double %i.iq, 5.000000e-01
  %i.is = fptosi double %i.ir to i32
  %.0224.us = select i1 %i.ip, i32 %i.is, i32 32  ; 2 uses
  %i.it = add i32 %.0224.us, -128
  %or.cond.us = icmp ult i32 %i.it, -256
  %.1225.us = select i1 %or.cond.us, i32 32, i32 %.0224.us
  %i.iu = getelementptr inbounds nuw [12 x i8], ptr %i.gv, i64 %indvars.iv396 ; 3 uses
  store i32 %.1225.us, ptr %i.iu, align 4, !tbaa !4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  store i32 32, ptr %i.iv, align 4, !tbaa !4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i32 32, ptr %i.iw, align 4, !tbaa !4
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %i.hc
  br i1 %exitcond400.not, label %._crit_edge294, label %.preheader258.lr.ph.us, !llvm.loop !94

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv378 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next379.1, %.lr.ph.split ] ; 3 uses
  %niter515 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter515.next.1, %.lr.ph.split ]
  %i.ix = getelementptr inbounds nuw [12 x i8], ptr %i.gv, i64 %indvars.iv378 ; 3 uses
  store i32 32, ptr %i.ix, align 8, !tbaa !4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store i32 32, ptr %i.iy, align 4, !tbaa !4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i32 32, ptr %i.iz, align 8, !tbaa !4
  %indvars.iv.next379 = or disjoint i64 %indvars.iv378, 1 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next379
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !52
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 6448
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !54
  %i.je = getelementptr inbounds nuw [12 x i8], ptr %i.gv, i64 %indvars.iv.next379 ; 3 uses
  store i32 32, ptr %i.je, align 4, !tbaa !4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i32 32, ptr %i.jf, align 8, !tbaa !4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i32 32, ptr %i.jg, align 4, !tbaa !4
  %indvars.iv.next379.1 = add nuw nsw i64 %indvars.iv378, 2 ; 2 uses
  %niter515.next.1 = add i64 %niter515, 2         ; 2 uses
  %niter515.ncmp.1 = icmp eq i64 %niter515.next.1, %unroll_iter514
  br i1 %niter515.ncmp.1, label %._crit_edge294.loopexit502.unr-lcssa, label %.lr.ph.split, !llvm.loop !94

._crit_edge294.loopexit502.unr-lcssa:             ; preds = %.lr.ph.split
  %lcmp.mod511.not = icmp eq i64 %xtraiter509, 0
  br i1 %lcmp.mod511.not, label %._crit_edge294, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge294.loopexit502.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv378.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next379.1, %._crit_edge294.loopexit502.unr-lcssa ] ; 2 uses
  %lcmp.mod513 = trunc i32 %i.gr to i1
  tail call void @llvm.assume(i1 %lcmp.mod513)
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv378.epil.init
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !52
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 6448
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !54
  %i.jl = getelementptr inbounds nuw [12 x i8], ptr %i.gv, i64 %indvars.iv378.epil.init ; 3 uses
  store i32 32, ptr %i.jl, align 4, !tbaa !4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store i32 32, ptr %i.jm, align 4, !tbaa !4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store i32 32, ptr %i.jn, align 4, !tbaa !4
  br label %._crit_edge294

._crit_edge294:                                   ; preds = %.lr.ph.split.epil.preheader, %._crit_edge294.loopexit502.unr-lcssa, %._crit_edge290.split.us
  %.us-phi296 = phi ptr [ %i.hk, %._crit_edge290.split.us ], [ %i.jd, %._crit_edge294.loopexit502.unr-lcssa ], [ %i.jk, %.lr.ph.split.epil.preheader ]
  store ptr %.us-phi296, ptr @ref_qpic_sub, align 8, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge294, %.preheader259
  %indvar.next375 = add nuw nsw i64 %indvar374, 1 ; 2 uses
  %exitcond403.not = icmp eq i64 %indvar.next375, %wide.trip.count
  br i1 %exitcond403.not, label %bb.j, label %.preheader259, !llvm.loop !95

bb.j:                                             ; preds = %bb.i
  %i.jo = icmp eq i32 %i.cs, 1
  %i.jp = load ptr, ptr @wp_weight, align 8       ; 2 uses
  %i.jq = load ptr, ptr @wp_offset, align 8       ; 2 uses
  br i1 %i.jo, label %.preheader252, label %.preheader255

.preheader252:                                    ; preds = %bb.j, %._crit_edge304
  %indvars.iv419 = phi i64 [ %indvars.iv.next420, %._crit_edge304 ], [ 0, %bb.j ] ; 6 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv419 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !4
  %i.jt = icmp sgt i32 %i.js, 0
  br i1 %i.jt, label %.preheader251.lr.ph, label %._crit_edge304

.preheader251.lr.ph:                              ; preds = %.preheader252
  %i.ju = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv419
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv419
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !34
  %i.jx = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv419
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv419
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !34
  br label %.preheader251

.preheader251:                                    ; preds = %.preheader251.lr.ph, %.preheader251
  %indvars.iv416 = phi i64 [ 0, %.preheader251.lr.ph ], [ %indvars.iv.next417, %.preheader251 ] ; 5 uses
  %i.ka = getelementptr inbounds nuw [12 x i8], ptr %i.ju, i64 %indvars.iv416 ; 3 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv416
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !46 ; 3 uses
  %i.kd = getelementptr inbounds nuw [12 x i8], ptr %i.jx, i64 %indvars.iv416 ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv416
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !46 ; 3 uses
  %i.kg = load i32, ptr %i.ka, align 4, !tbaa !4
  store i32 %i.kg, ptr %i.kc, align 4, !tbaa !4
  %i.kh = load i32, ptr %i.kd, align 4, !tbaa !4
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
end_hunk_0
begin_hunk_1_@test_wp_B_slice:bb.a
  %unroll_iter = and i64 %wide.trip.count399, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod560 = icmp ne i64 %xtraiter, 0
  br label %.preheader298.us

.preheader298.us:                                 ; preds = %.preheader298.us.preheader, %._crit_edge316.us
  %indvars.iv401 = phi i64 [ 0, %.preheader298.us.preheader ], [ %indvars.iv.next402, %._crit_edge316.us ] ; 2 uses
  %.0246317.us = phi double [ 0.000000e+00, %.preheader298.us.preheader ], [ %.lcssa558, %._crit_edge316.us ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv401
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !38 ; 5 uses
  br i1 %i.cs, label %.epil.preheader, label %.preheader298.us.new

.preheader298.us.new:                             ; preds = %.preheader298.us, %.preheader298.us.new
  %indvars.iv396 = phi i64 [ %indvars.iv.next397.3, %.preheader298.us.new ], [ 0, %.preheader298.us ] ; 5 uses
  %.1247314.us = phi double [ %i.dn, %.preheader298.us.new ], [ %.0246317.us, %.preheader298.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader298.us.new ], [ 0, %.preheader298.us ]
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv396
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !40
  %i.cx = uitofp i16 %i.cw to double
  %i.cy = fadd double %.1247314.us, %i.cx
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv396
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !40
  %i.dc = uitofp i16 %i.db to double
  %i.dd = fadd double %i.cy, %i.dc
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv396
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !40
  %i.dh = uitofp i16 %i.dg to double
  %i.di = fadd double %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv396
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !40
  %i.dm = uitofp i16 %i.dl to double
  %i.dn = fadd double %i.di, %i.dm                ; 3 uses
  %indvars.iv.next397.3 = add nuw nsw i64 %indvars.iv396, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge316.us.unr-lcssa, label %.preheader298.us.new, !llvm.loop !125

._crit_edge316.us.unr-lcssa:                      ; preds = %.preheader298.us.new
  br i1 %lcmp.mod.not, label %._crit_edge316.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge316.us.unr-lcssa, %.preheader298.us
  %indvars.iv396.epil.init = phi i64 [ 0, %.preheader298.us ], [ %indvars.iv.next397.3, %._crit_edge316.us.unr-lcssa ]
  %.1247314.us.epil.init = phi double [ %.0246317.us, %.preheader298.us ], [ %i.dn, %._crit_edge316.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod560)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv396.epil = phi i64 [ %indvars.iv396.epil.init, %.epil.preheader ], [ %indvars.iv.next397.epil, %bb.f ] ; 2 uses
  %.1247314.us.epil = phi double [ %.1247314.us.epil.init, %.epil.preheader ], [ %i.dr, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv396.epil
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !40
  %i.dq = uitofp i16 %i.dp to double
  %i.dr = fadd double %.1247314.us.epil, %i.dq    ; 2 uses
  %indvars.iv.next397.epil = add nuw nsw i64 %indvars.iv396.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge316.us, label %bb.f, !llvm.loop !126

._crit_edge316.us:                                ; preds = %bb.f, %._crit_edge316.us.unr-lcssa
  %.lcssa558 = phi double [ %i.dn, %._crit_edge316.us.unr-lcssa ], [ %i.dr, %bb.f ] ; 2 uses
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond405.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count404
  br i1 %exitcond405.not, label %.preheader297, label %.preheader298.us, !llvm.loop !127

.preheader283.lr.ph:                              ; preds = %._crit_edge313.split, %._crit_edge313.split.thread520
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 12288
  %i.dt = load ptr, ptr @wbp_weight, align 8      ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.preheader283, label %.preheader280

.preheader283:                                    ; preds = %.preheader283.lr.ph, %._crit_edge348
  %i.dx = phi i32 [ %i.fh, %._crit_edge348 ], [ %i.af, %.preheader283.lr.ph ]
  %i.dy = phi i32 [ %i.fi, %._crit_edge348 ], [ %i.dv, %.preheader283.lr.ph ] ; 2 uses
  %indvars.iv473 = phi i64 [ %indvars.iv.next474, %._crit_edge348 ], [ 0, %.preheader283.lr.ph ] ; 5 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.preheader282.lr.ph, label %._crit_edge348

.preheader282.lr.ph:                              ; preds = %.preheader283
  %i.ea = getelementptr inbounds nuw [384 x i8], ptr %i.ds, i64 %indvars.iv473
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !85
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv473
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !34
  %i.ee = getelementptr inbounds nuw [384 x i8], ptr %i.c, i64 %indvars.iv473
  %i.ef = load ptr, ptr %i.dt, align 8, !tbaa !85
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv473
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !34
  br label %.preheader282

.preheader280:                                    ; preds = %._crit_edge348, %._crit_edge313.split.thread, %.preheader283.lr.ph
  %i.ei = load ptr, ptr @wp_weight, align 8
  %i.ej = load ptr, ptr @wp_offset, align 8
  br label %.preheader279

.preheader282:                                    ; preds = %.preheader282.lr.ph, %.preheader282
  %indvars.iv470 = phi i64 [ 0, %.preheader282.lr.ph ], [ %indvars.iv.next471, %.preheader282 ] ; 5 uses
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %indvars.iv470 ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv470
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !46 ; 3 uses
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %indvars.iv470 ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv470
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !46 ; 3 uses
  %i.eq = load i32, ptr %i.ek, align 4, !tbaa !4
  store i32 %i.eq, ptr %i.em, align 4, !tbaa !4
  %i.er = load i32, ptr %i.en, align 4, !tbaa !4
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !4
  %indvars.iv.next471 = add nuw nsw i64 %indvars.iv470, 1 ; 2 uses
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4 ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next471, %i.ff
  br i1 %i.fg, label %.preheader282, label %._crit_edge348.loopexit, !llvm.loop !128

._crit_edge348.loopexit:                          ; preds = %.preheader282
  %.pre504 = load i32, ptr @listXsize, align 16, !tbaa !4
  br label %._crit_edge348

._crit_edge348:                                   ; preds = %._crit_edge348.loopexit, %.preheader283
  %i.fh = phi i32 [ %.pre504, %._crit_edge348.loopexit ], [ %i.dx, %.preheader283 ] ; 2 uses
  %i.fi = phi i32 [ %i.fe, %._crit_edge348.loopexit ], [ %i.dy, %.preheader283 ]
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %i.fj = sext i32 %i.fh to i64
  %i.fk = icmp slt i64 %indvars.iv.next474, %i.fj
  br i1 %i.fk, label %.preheader283, label %.preheader280, !llvm.loop !129

.preheader279:                                    ; preds = %.preheader280, %._crit_edge352
  %indvars.iv479 = phi i64 [ 0, %.preheader280 ], [ %indvars.iv.next480, %._crit_edge352 ] ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv479 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph351, label %._crit_edge352

.lr.ph351:                                        ; preds = %.preheader279
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv479
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !34
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv479
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph351, %bb.g
  %indvars.iv476 = phi i64 [ 0, %.lr.ph351 ], [ %indvars.iv.next477, %bb.g ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv476
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !46 ; 3 uses
  store i32 %i.u, ptr %i.ft, align 4, !tbaa !4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i32 %i.u, ptr %i.fu, align 4, !tbaa !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i32 %i.u, ptr %i.fv, align 4, !tbaa !4
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv476
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !46 ; 3 uses
  store i32 0, ptr %i.fx, align 4, !tbaa !4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store i32 0, ptr %i.fy, align 4, !tbaa !4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i32 0, ptr %i.fz, align 4, !tbaa !4
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.ga = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp slt i64 %indvars.iv.next477, %i.gb
  br i1 %i.gc, label %bb.g, label %._crit_edge352, !llvm.loop !130

._crit_edge352:                                   ; preds = %bb.g, %.preheader279
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %exitcond483.not = icmp eq i64 %indvars.iv.next480, %wide.trip.count
  br i1 %exitcond483.not, label %.loopexit281, label %.preheader279, !llvm.loop !131

.preheader297:                                    ; preds = %._crit_edge316.us, %.preheader298.lr.ph, %.preheader299
  %.0246.lcssa = phi double [ 0.000000e+00, %.preheader299 ], [ 0.000000e+00, %.preheader298.lr.ph ], [ %.lcssa558, %._crit_edge316.us ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.ge = uitofp nneg i32 %i.u to double
  %i.gf = fmul double %.0246.lcssa, %i.ge
  %i.gg = add i32 %i.cm, 19
  %smax423 = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 20)
  %i.gh = add nuw i32 %smax423, 1
  %wide.trip.count424 = zext i32 %i.gh to i64
  br label %.preheader296

.preheader296:                                    ; preds = %.preheader297, %bb.i
  %indvar406 = phi i64 [ 0, %.preheader297 ], [ %indvar.next407, %bb.i ] ; 5 uses
  %i.gi = mul nuw nsw i64 %indvar406, 384
  %scevgep427 = getelementptr i8, ptr %i.b, i64 %i.gi ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvar406
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4  ; 5 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph, label %bb.i

.lr.ph:                                           ; preds = %.preheader296
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr @listX, i64 %indvar406
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !50 ; 3 uses
  %i.go = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvar406 ; 4 uses
  br i1 %i.cn, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.gp = zext nneg i32 %i.gk to i64              ; 3 uses
  %i.gq = mul nuw nsw i64 %i.gp, 12
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep427, i8 0, i64 %i.gq, i1 false), !tbaa !4
  %xtraiter561 = and i64 %i.gp, 1
  %i.gr = icmp eq i32 %i.gk, 1
  br i1 %i.gr, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter566 = and i64 %i.gp, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.gs = load i32, ptr %i.gd, align 4, !tbaa !37 ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  %i.gu = add i32 %i.gs, 19                       ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gu, i32 20)
  %i.gv = zext nneg i32 %i.gk to i64              ; 2 uses
  %i.gw = mul nuw nsw i64 %i.gv, 12
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep427, i8 0, i64 %i.gw, i1 false), !tbaa !4
  %i.gx = zext nneg i32 %smax to i64
  %i.gy = add nsw i64 %i.gx, -19                  ; 2 uses
  %xtraiter569 = and i64 %i.gy, 3                 ; 3 uses
  %i.gz = icmp slt i32 %i.gu, 23
  %unroll_iter574 = and i64 %i.gy, -4
  %lcmp.mod571.not = icmp eq i64 %xtraiter569, 0
  %lcmp.mod573 = icmp ne i64 %xtraiter569, 0
  br label %.preheader295.lr.ph.us

.preheader295.lr.ph.us:                           ; preds = %._crit_edge326.split.us, %.lr.ph.split.us
  %indvars.iv428 = phi i64 [ %indvars.iv.next429, %._crit_edge326.split.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv428
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !52
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 6448
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !54 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !63
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !64
  br i1 %i.gt, label %.preheader295.us, label %._crit_edge326.split.us

.preheader295.us.new:                             ; preds = %.preheader295.us, %.preheader295.us.new
  %indvars.iv415 = phi i64 [ %indvars.iv.next416.3, %.preheader295.us.new ], [ 20, %.preheader295.us ] ; 5 uses
  %i.hg = phi double [ %i.hz, %.preheader295.us.new ], [ %.lcssa324328.us, %.preheader295.us ]
  %niter575 = phi i64 [ %niter575.next.3, %.preheader295.us.new ], [ 0, %.preheader295.us ]
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %indvars.iv415
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !40
  %i.hj = uitofp i16 %i.hi to double
  %i.hk = fadd double %i.hg, %i.hj
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %indvars.iv415
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !40
  %i.ho = uitofp i16 %i.hn to double
  %i.hp = fadd double %i.hk, %i.ho
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %indvars.iv415
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !40
  %i.ht = uitofp i16 %i.hs to double
  %i.hu = fadd double %i.hp, %i.ht
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %indvars.iv415
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 6
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !40
  %i.hy = uitofp i16 %i.hx to double
  %i.hz = fadd double %i.hu, %i.hy                ; 3 uses
  %indvars.iv.next416.3 = add nuw nsw i64 %indvars.iv415, 4 ; 2 uses
  %niter575.next.3 = add i64 %niter575, 4         ; 2 uses
  %niter575.ncmp.3 = icmp eq i64 %niter575.next.3, %unroll_iter574
  br i1 %niter575.ncmp.3, label %._crit_edge323.us.unr-lcssa, label %.preheader295.us.new, !llvm.loop !132

.preheader295.us:                                 ; preds = %.preheader295.lr.ph.us, %._crit_edge323.us
  %indvars.iv420 = phi i64 [ %indvars.iv.next421, %._crit_edge323.us ], [ 20, %.preheader295.lr.ph.us ] ; 2 uses
  %.lcssa324328.us = phi double [ %.lcssa556, %._crit_edge323.us ], [ 0.000000e+00, %.preheader295.lr.ph.us ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv420
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !38 ; 5 uses
  br i1 %i.gz, label %.epil.preheader568, label %.preheader295.us.new

._crit_edge323.us.unr-lcssa:                      ; preds = %.preheader295.us.new
  br i1 %lcmp.mod571.not, label %._crit_edge323.us, label %.epil.preheader568

.epil.preheader568:                               ; preds = %._crit_edge323.us.unr-lcssa, %.preheader295.us
  %indvars.iv415.epil.init = phi i64 [ 20, %.preheader295.us ], [ %indvars.iv.next416.3, %._crit_edge323.us.unr-lcssa ]
  %.epil.init = phi double [ %.lcssa324328.us, %.preheader295.us ], [ %i.hz, %._crit_edge323.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod573)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader568
  %indvars.iv415.epil = phi i64 [ %indvars.iv415.epil.init, %.epil.preheader568 ], [ %indvars.iv.next416.epil, %bb.h ] ; 2 uses
  %i.ic = phi double [ %.epil.init, %.epil.preheader568 ], [ %i.ig, %bb.h ]
  %epil.iter570 = phi i64 [ 0, %.epil.preheader568 ], [ %epil.iter570.next, %bb.h ]
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %indvars.iv415.epil
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !40
  %i.if = uitofp i16 %i.ie to double
  %i.ig = fadd double %i.ic, %i.if                ; 2 uses
  %indvars.iv.next416.epil = add nuw nsw i64 %indvars.iv415.epil, 1
  %epil.iter570.next = add i64 %epil.iter570, 1   ; 2 uses
  %epil.iter570.cmp.not = icmp eq i64 %epil.iter570.next, %xtraiter569
  br i1 %epil.iter570.cmp.not, label %._crit_edge323.us, label %bb.h, !llvm.loop !133

._crit_edge323.us:                                ; preds = %bb.h, %._crit_edge323.us.unr-lcssa
  %.lcssa556 = phi double [ %i.hz, %._crit_edge323.us.unr-lcssa ], [ %i.ig, %bb.h ] ; 2 uses
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %exitcond425.not = icmp eq i64 %indvars.iv.next421, %wide.trip.count424
  br i1 %exitcond425.not, label %._crit_edge326.split.us, label %.preheader295.us, !llvm.loop !134

._crit_edge326.split.us:                          ; preds = %._crit_edge323.us, %.preheader295.lr.ph.us
  %i.ih = phi double [ 0.000000e+00, %.preheader295.lr.ph.us ], [ %.lcssa556, %._crit_edge323.us ] ; 2 uses
  %i.ii = fcmp une double %i.ih, 0.000000e+00
  %i.ij = fdiv double %i.gf, %i.ih
  %i.ik = fadd double %i.ij, 5.000000e-01
  %i.il = fptosi double %i.ik to i32
  %.0248.us = select i1 %i.ii, i32 %i.il, i32 %i.u ; 2 uses
  %i.im = add i32 %.0248.us, -128
  %or.cond.us = icmp ult i32 %i.im, -192
  %spec.select.us = select i1 %or.cond.us, i32 %i.u, i32 %.0248.us
  %i.in = getelementptr inbounds nuw [12 x i8], ptr %i.go, i64 %indvars.iv428 ; 3 uses
  store i32 %spec.select.us, ptr %i.in, align 4, !tbaa !4
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store i32 %i.u, ptr %i.io, align 4, !tbaa !4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i32 %i.u, ptr %i.ip, align 4, !tbaa !4
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next429, %i.gv
  br i1 %exitcond432.not, label %._crit_edge330, label %.preheader295.lr.ph.us, !llvm.loop !135

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv410 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next411.1, %.lr.ph.split ] ; 3 uses
  %niter567 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter567.next.1, %.lr.ph.split ]
  %i.iq = getelementptr inbounds nuw [12 x i8], ptr %i.go, i64 %indvars.iv410 ; 3 uses
  store i32 %i.u, ptr %i.iq, align 8, !tbaa !4
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store i32 %i.u, ptr %i.ir, align 4, !tbaa !4
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i32 %i.u, ptr %i.is, align 8, !tbaa !4
  %indvars.iv.next411 = or disjoint i64 %indvars.iv410, 1 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next411
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !52
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 6448
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !54
  %i.ix = getelementptr inbounds nuw [12 x i8], ptr %i.go, i64 %indvars.iv.next411 ; 3 uses
  store i32 %i.u, ptr %i.ix, align 4, !tbaa !4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store i32 %i.u, ptr %i.iy, align 8, !tbaa !4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i32 %i.u, ptr %i.iz, align 4, !tbaa !4
  %indvars.iv.next411.1 = add nuw nsw i64 %indvars.iv410, 2 ; 2 uses
  %niter567.next.1 = add i64 %niter567, 2         ; 2 uses
  %niter567.ncmp.1 = icmp eq i64 %niter567.next.1, %unroll_iter566
  br i1 %niter567.ncmp.1, label %._crit_edge330.loopexit554.unr-lcssa, label %.lr.ph.split, !llvm.loop !135

._crit_edge330.loopexit554.unr-lcssa:             ; preds = %.lr.ph.split
  %lcmp.mod563.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod563.not, label %._crit_edge330, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge330.loopexit554.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv410.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next411.1, %._crit_edge330.loopexit554.unr-lcssa ] ; 2 uses
  %lcmp.mod565 = trunc i32 %i.gk to i1
  tail call void @llvm.assume(i1 %lcmp.mod565)
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv410.epil.init
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !52
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 6448
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !54
  %i.je = getelementptr inbounds nuw [12 x i8], ptr %i.go, i64 %indvars.iv410.epil.init ; 3 uses
  store i32 %i.u, ptr %i.je, align 4, !tbaa !4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i32 %i.u, ptr %i.jf, align 4, !tbaa !4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i32 %i.u, ptr %i.jg, align 4, !tbaa !4
  br label %._crit_edge330

._crit_edge330:                                   ; preds = %.lr.ph.split.epil.preheader, %._crit_edge330.loopexit554.unr-lcssa, %._crit_edge326.split.us
  %.us-phi332 = phi ptr [ %i.hd, %._crit_edge326.split.us ], [ %i.iw, %._crit_edge330.loopexit554.unr-lcssa ], [ %i.jd, %.lr.ph.split.epil.preheader ]
  store ptr %.us-phi332, ptr @ref_pic_sub, align 8, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge330, %.preheader296
  %indvar.next407 = add nuw nsw i64 %indvar406, 1 ; 2 uses
  %exitcond435.not = icmp eq i64 %indvar.next407, %wide.trip.count
  br i1 %exitcond435.not, label %bb.j, label %.preheader296, !llvm.loop !136

bb.j:                                             ; preds = %bb.i
  %i.jh = icmp eq i32 %0, 0
  %i.ji = load ptr, ptr @wp_weight, align 8       ; 2 uses
  %i.jj = load ptr, ptr @wp_offset, align 8       ; 2 uses
  br i1 %i.jh, label %.preheader289, label %.preheader292

.preheader289:                                    ; preds = %bb.j, %._crit_edge340
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %._crit_edge340 ], [ 0, %bb.j ] ; 6 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv451 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !4
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.preheader288.lr.ph, label %._crit_edge340

.preheader288.lr.ph:                              ; preds = %.preheader289
  %i.jn = getelementptr inbounds nuw [384 x i8], ptr %i.a, i64 %indvars.iv451
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv451
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !34
  %i.jq = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %indvars.iv451
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv451
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !34
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.lr.ph, %.preheader288
  %indvars.iv448 = phi i64 [ 0, %.preheader288.lr.ph ], [ %indvars.iv.next449, %.preheader288 ] ; 5 uses
  %i.jt = getelementptr inbounds nuw [12 x i8], ptr %i.jn, i64 %indvars.iv448 ; 3 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv448
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !46 ; 3 uses
  %i.jw = getelementptr inbounds nuw [12 x i8], ptr %i.jq, i64 %indvars.iv448 ; 3 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv448
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !46 ; 3 uses
  %i.jz = load i32, ptr %i.jt, align 4, !tbaa !4
  store i32 %i.jz, ptr %i.jv, align 4, !tbaa !4
  %i.ka = load i32, ptr %i.jw, align 4, !tbaa !4
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !4
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !4
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
end_hunk_1
