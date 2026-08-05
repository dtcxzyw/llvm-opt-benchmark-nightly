inline.NumInlined: 19
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 44
begin_hunk_0_@dt_iop_clip_and_zoom_mosaic_half_size:.preheader130
  %.not124.us.us = icmp eq i32 %.us-phi154.us.us, 0
  br i1 %.not124.us.us, label %._crit_edge143.us.us.thread, label %bb.d

.preheader.lr.ph.split.us.us.us:                  ; preds = %.preheader.lr.ph.us.us
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !11 ; 4 uses
  %i.dh = load i32, ptr %i.cz, align 4, !tbaa !11
  %i.di = icmp eq i32 %i.dh, 2
  br i1 %i.di, label %.preheader.lr.ph.split.us.split.us.us.us, label %.preheader.us.us164.us.preheader

.preheader.us.us164.us.preheader:                 ; preds = %.preheader.lr.ph.split.us.us.us
  %i.dj = sext i32 %i.cn to i64                   ; 5 uses
  %i.dk = sext i32 %i.cr to i64                   ; 2 uses
  %i.dl = xor i64 %i.dj, -1
  %i.dm = add nsw i64 %i.dl, %i.dk                ; 4 uses
  %i.dn = lshr i64 %i.dm, 1                       ; 2 uses
  %i.do = add i32 %i.cg, %i.cn
  %i.dp = add i32 %i.do, %i.dg
  %i.dq = add nuw i64 %i.dn, 1                    ; 4 uses
  %min.iters.check267 = icmp ult i64 %i.dm, 16
  %i.dr = trunc i64 %i.dn to i32                  ; 2 uses
  %mul.result265 = shl i32 %i.dr, 1
  %mul.overflow266 = icmp slt i32 %i.dr, 0
  %i.ds = icmp ugt i64 %i.dm, 8589934591
  %invariant.op387 = or i1 %mul.overflow266, %i.ds
  %min.iters.check269 = icmp ult i64 %i.dm, 64
  %n.mod.vf271 = and i64 %i.dq, 31                ; 2 uses
  %i.dt = icmp eq i64 %n.mod.vf271, 0
  %i.du = select i1 %i.dt, i64 32, i64 %n.mod.vf271 ; 2 uses
  %n.vec272 = sub nsw i64 %i.dq, %i.du            ; 3 uses
  %i.dv = shl i64 %n.vec272, 1
  %i.dw = add nsw i64 %i.dv, %i.dj
  %min.epilog.iters.check305 = icmp samesign ult i64 %i.du, 9
  %n.mod.vf307 = and i64 %i.dq, 7                 ; 2 uses
  %i.dx = icmp eq i64 %n.mod.vf307, 0
  %i.dy = select i1 %i.dx, i64 8, i64 %n.mod.vf307
  %n.vec308 = sub nsw i64 %i.dq, %i.dy            ; 2 uses
  %i.dz = shl i64 %n.vec308, 1
  %i.ea = add nsw i64 %i.dz, %i.dj
  br label %iter.check302

iter.check302:                                    ; preds = %.preheader.us.us164.us.preheader, %._crit_edge.split.us150.us.us
  %indvar262 = phi i32 [ 0, %.preheader.us.us164.us.preheader ], [ %indvar.next263, %._crit_edge.split.us150.us.us ] ; 2 uses
  %.099142.us.us165.us = phi i32 [ %i.by, %.preheader.us.us164.us.preheader ], [ %i.gl, %._crit_edge.split.us150.us.us ] ; 2 uses
  %.0100141.us.us166.us = phi i32 [ 0, %.preheader.us.us164.us.preheader ], [ %i.gi, %._crit_edge.split.us150.us.us ] ; 4 uses
  %.0101140.us.us167.us = phi i32 [ 0, %.preheader.us.us164.us.preheader ], [ %i.gj, %._crit_edge.split.us150.us.us ] ; 4 uses
  %i.eb = mul nsw i32 %.099142.us.us165.us, %5
  %invariant.op.us.us168.us = add i32 %i.eb, %i.dg ; 6 uses
  br i1 %min.iters.check267, label %vec.epilog.scalar.ph303.preheader, label %vector.scevcheck261

vector.scevcheck261:                              ; preds = %iter.check302
  %i.ec = mul i32 %i.bm, %indvar262
  %i.ed = add i32 %i.dp, %i.ec                    ; 2 uses
  %i.ee = add i32 %i.ed, %mul.result265
  %i.ef = icmp slt i32 %i.ee, %i.ed
  %.reass388 = or i1 %i.ef, %invariant.op387
  br i1 %.reass388, label %vec.epilog.scalar.ph303.preheader, label %vector.main.loop.iter.check268

vector.main.loop.iter.check268:                   ; preds = %vector.scevcheck261
  br i1 %min.iters.check269, label %vec.epilog.ph306, label %vector.ph270

vector.ph270:                                     ; preds = %vector.main.loop.iter.check268
  %i.eg = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0100141.us.us166.us, i64 0
  %i.eh = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0101140.us.us167.us, i64 0
  %invariant.op = add i32 16, %invariant.op.us.us168.us
  %invariant.op381 = add i32 32, %invariant.op.us.us168.us
  %invariant.op383 = add i32 48, %invariant.op.us.us168.us
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph270
  %index274 = phi i64 [ 0, %vector.ph270 ], [ %index.next291, %vector.body273 ] ; 2 uses
  %vec.phi275.a = phi <8 x i32> [ %i.eg, %vector.ph270 ], [ %i.ff, %vector.body273 ]
  %vec.phi276.a = phi <8 x i32> [ zeroinitializer, %vector.ph270 ], [ %i.fg, %vector.body273 ]
  %vec.phi277.a = phi <8 x i32> [ zeroinitializer, %vector.ph270 ], [ %i.fh, %vector.body273 ]
  %vec.phi278.a = phi <8 x i32> [ zeroinitializer, %vector.ph270 ], [ %i.fi, %vector.body273 ]
  %vec.phi279.a = phi <8 x i32> [ %i.eh, %vector.ph270 ], [ %i.fj, %vector.body273 ]
  %vec.phi280 = phi <8 x i32> [ zeroinitializer, %vector.ph270 ], [ %i.fk, %vector.body273 ]
  %vec.phi281 = phi <8 x i32> [ zeroinitializer, %vector.ph270 ], [ %i.fl, %vector.body273 ]
  %vec.phi282 = phi <8 x i32> [ zeroinitializer, %vector.ph270 ], [ %i.fm, %vector.body273 ]
  %index274.tr = trunc i64 %index274 to i32
  %i.ei = shl i32 %index274.tr, 1
  %i.ej = add i32 %i.ei, %i.cn                    ; 4 uses
  %i.ek = add i32 %invariant.op.us.us168.us, %i.ej
  %.reass = add i32 %i.ej, %invariant.op
  %.reass382 = add i32 %i.ej, %invariant.op381
  %.reass384 = add i32 %i.ej, %invariant.op383
  %i.el = sext i32 %i.ek to i64
  %i.em = sext i32 %.reass to i64
  %i.en = sext i32 %.reass382 to i64
  %i.eo = sext i32 %.reass384 to i64
  %i.ep = getelementptr inbounds [2 x i8], ptr %1, i64 %i.el
  %i.eq = getelementptr inbounds [2 x i8], ptr %1, i64 %i.em
  %i.er = getelementptr inbounds [2 x i8], ptr %1, i64 %i.en
  %i.es = getelementptr inbounds [2 x i8], ptr %1, i64 %i.eo
  %wide.vec283 = load <16 x i16>, ptr %i.ep, align 2, !tbaa !19
  %i.et = freeze <16 x i16> %wide.vec283
  %i.eu = bitcast <16 x i16> %i.et to <8 x i32>
  %i.ev = and <8 x i32> %i.eu, splat (i32 65535)
  %wide.vec285 = load <16 x i16>, ptr %i.eq, align 2, !tbaa !19
  %i.ew = freeze <16 x i16> %wide.vec285
  %i.ex = bitcast <16 x i16> %i.ew to <8 x i32>
  %i.ey = and <8 x i32> %i.ex, splat (i32 65535)
  %wide.vec287 = load <16 x i16>, ptr %i.er, align 2, !tbaa !19
  %i.ez = freeze <16 x i16> %wide.vec287
  %i.fa = bitcast <16 x i16> %i.ez to <8 x i32>
  %i.fb = and <8 x i32> %i.fa, splat (i32 65535)
  %wide.vec289 = load <16 x i16>, ptr %i.es, align 2, !tbaa !19
  %i.fc = freeze <16 x i16> %wide.vec289
  %i.fd = bitcast <16 x i16> %i.fc to <8 x i32>
  %i.fe = and <8 x i32> %i.fd, splat (i32 65535)
  %i.ff = add <8 x i32> %vec.phi275.a, %i.ev      ; 2 uses
  %i.fg = add <8 x i32> %vec.phi276.a, %i.ey      ; 2 uses
  %i.fh = add <8 x i32> %vec.phi277.a, %i.fb      ; 2 uses
  %i.fi = add <8 x i32> %vec.phi278.a, %i.fe      ; 2 uses
  %i.fj = add <8 x i32> %vec.phi279.a, splat (i32 1) ; 2 uses
  %i.fk = add <8 x i32> %vec.phi280, splat (i32 1) ; 2 uses
  %i.fl = add <8 x i32> %vec.phi281, splat (i32 1) ; 2 uses
  %i.fm = add <8 x i32> %vec.phi282, splat (i32 1) ; 2 uses
  %index.next291 = add nuw i64 %index274, 32      ; 2 uses
  %i.fn = icmp eq i64 %index.next291, %n.vec272
  br i1 %i.fn, label %vec.epilog.iter.check304, label %vector.body273, !llvm.loop !21

vec.epilog.iter.check304:                         ; preds = %vector.body273
  %bin.rdx296 = add <8 x i32> %i.fk, %i.fj
  %bin.rdx297 = add <8 x i32> %i.fl, %bin.rdx296
  %bin.rdx298 = add <8 x i32> %i.fm, %bin.rdx297
  %i.fo = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx298) ; 2 uses
  %bin.rdx293 = add <8 x i32> %i.fg, %i.ff
  %bin.rdx294 = add <8 x i32> %i.fh, %bin.rdx293
  %bin.rdx295 = add <8 x i32> %i.fi, %bin.rdx294
  %i.fp = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx295) ; 2 uses
  br i1 %min.epilog.iters.check305, label %vec.epilog.scalar.ph303.preheader, label %vec.epilog.ph306, !prof !24

vec.epilog.ph306:                                 ; preds = %vector.main.loop.iter.check268, %vec.epilog.iter.check304
  %vec.epilog.resume.val299 = phi i64 [ %n.vec272, %vec.epilog.iter.check304 ], [ 0, %vector.main.loop.iter.check268 ]
  %bc.merge.rdx300 = phi i32 [ %i.fp, %vec.epilog.iter.check304 ], [ %.0100141.us.us166.us, %vector.main.loop.iter.check268 ]
  %bc.merge.rdx301 = phi i32 [ %i.fo, %vec.epilog.iter.check304 ], [ %.0101140.us.us167.us, %vector.main.loop.iter.check268 ]
  %i.fq = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx300, i64 0
  %i.fr = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx301, i64 0
  %invariant.op385 = add i32 %i.cn, %invariant.op.us.us168.us
  br label %vec.epilog.vector.body309

vec.epilog.vector.body309:                        ; preds = %vec.epilog.vector.body309, %vec.epilog.ph306
  %index310 = phi i64 [ %vec.epilog.resume.val299, %vec.epilog.ph306 ], [ %index.next315, %vec.epilog.vector.body309 ] ; 2 uses
  %vec.phi311 = phi <8 x i32> [ %i.fq, %vec.epilog.ph306 ], [ %i.fy, %vec.epilog.vector.body309 ]
  %vec.phi312 = phi <8 x i32> [ %i.fr, %vec.epilog.ph306 ], [ %i.fz, %vec.epilog.vector.body309 ]
  %index310.tr = trunc i64 %index310 to i32
  %i.fs = shl i32 %index310.tr, 1
  %.reass386 = add i32 %i.fs, %invariant.op385
  %i.ft = sext i32 %.reass386 to i64
  %i.fu = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ft
  %wide.vec313 = load <16 x i16>, ptr %i.fu, align 2, !tbaa !19
  %i.fv = freeze <16 x i16> %wide.vec313
  %i.fw = bitcast <16 x i16> %i.fv to <8 x i32>
  %i.fx = and <8 x i32> %i.fw, splat (i32 65535)
  %i.fy = add <8 x i32> %vec.phi311, %i.fx        ; 2 uses
  %i.fz = add <8 x i32> %vec.phi312, splat (i32 1) ; 2 uses
  %index.next315 = add nuw i64 %index310, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next315, %n.vec308
  br i1 %i.ga, label %vec.epilog.middle.block316, label %vec.epilog.vector.body309, !llvm.loop !25

vec.epilog.middle.block316:                       ; preds = %vec.epilog.vector.body309
  %i.gb = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fy)
  %i.gc = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fz)
  br label %vec.epilog.scalar.ph303.preheader

vec.epilog.scalar.ph303.preheader:                ; preds = %vector.scevcheck261, %iter.check302, %vec.epilog.iter.check304, %vec.epilog.middle.block316
  %indvars.iv.ph = phi i64 [ %i.dj, %iter.check302 ], [ %i.dj, %vector.scevcheck261 ], [ %i.dw, %vec.epilog.iter.check304 ], [ %i.ea, %vec.epilog.middle.block316 ]
  %.1134.us147.us.us.ph = phi i32 [ %.0100141.us.us166.us, %iter.check302 ], [ %.0100141.us.us166.us, %vector.scevcheck261 ], [ %i.fp, %vec.epilog.iter.check304 ], [ %i.gb, %vec.epilog.middle.block316 ]
  %.1102133.us148.us.us.ph = phi i32 [ %.0101140.us.us167.us, %iter.check302 ], [ %.0101140.us.us167.us, %vector.scevcheck261 ], [ %i.fo, %vec.epilog.iter.check304 ], [ %i.gc, %vec.epilog.middle.block316 ]
  br label %vec.epilog.scalar.ph303

vec.epilog.scalar.ph303:                          ; preds = %vec.epilog.scalar.ph303.preheader, %vec.epilog.scalar.ph303
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph303 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph303.preheader ] ; 2 uses
  %.1134.us147.us.us = phi i32 [ %i.gi, %vec.epilog.scalar.ph303 ], [ %.1134.us147.us.us.ph, %vec.epilog.scalar.ph303.preheader ]
  %.1102133.us148.us.us = phi i32 [ %i.gj, %vec.epilog.scalar.ph303 ], [ %.1102133.us148.us.us.ph, %vec.epilog.scalar.ph303.preheader ]
  %i.gd = trunc nsw i64 %indvars.iv to i32
  %.reass.us149.us.us = add i32 %invariant.op.us.us168.us, %i.gd
  %i.ge = sext i32 %.reass.us149.us.us to i64
  %i.gf = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ge
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !19
  %i.gh = zext i16 %i.gg to i32
  %i.gi = add i32 %.1134.us147.us.us, %i.gh       ; 3 uses
  %i.gj = add nsw i32 %.1102133.us148.us.us, 1    ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 2 uses
  %i.gk = icmp slt i64 %indvars.iv.next, %i.dk
  br i1 %i.gk, label %vec.epilog.scalar.ph303, label %._crit_edge.split.us150.us.us, !llvm.loop !26

._crit_edge.split.us150.us.us:                    ; preds = %vec.epilog.scalar.ph303
  %i.gl = add nsw i32 %.099142.us.us165.us, 2     ; 2 uses
  %i.gm = icmp slt i32 %i.gl, %i.cc
  %indvar.next263 = add i32 %indvar262, 1
  br i1 %i.gm, label %iter.check302, label %._crit_edge143.us.us

.preheader.lr.ph.split.us.split.us.us.us:         ; preds = %.preheader.lr.ph.split.us.us.us
  %i.gn = load i32, ptr %i.da, align 4, !tbaa !11 ; 2 uses
  %i.go = sext i32 %i.cn to i64                   ; 5 uses
  %i.gp = sext i32 %i.cr to i64                   ; 2 uses
  %i.gq = xor i64 %i.go, -1
  %i.gr = add nsw i64 %i.gq, %i.gp                ; 4 uses
  %i.gs = lshr i64 %i.gr, 1                       ; 2 uses
  %i.gt = add i32 %i.cg, %i.cn                    ; 2 uses
  %i.gu = add i32 %i.gt, %i.dg
  %i.gv = add i32 %i.gt, %i.gn
  %i.gw = add nuw i64 %i.gs, 1                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.gr, 16
  %i.gx = trunc i64 %i.gs to i32                  ; 2 uses
  %mul.result218 = shl i32 %i.gx, 1               ; 2 uses
  %mul.overflow219 = icmp slt i32 %i.gx, 0
  %i.gy = icmp ugt i64 %i.gr, 8589934591
  %invariant.op389 = or i1 %i.gy, %mul.overflow219
  %min.iters.check220 = icmp ult i64 %i.gr, 64
  %n.mod.vf = and i64 %i.gw, 31                   ; 2 uses
  %i.gz = icmp eq i64 %n.mod.vf, 0
  %i.ha = select i1 %i.gz, i64 32, i64 %n.mod.vf  ; 2 uses
  %n.vec = sub nsw i64 %i.gw, %i.ha               ; 3 uses
  %i.hb = shl i64 %n.vec, 1
  %i.hc = add i64 %i.hb, %i.go
  %min.epilog.iters.check = icmp samesign ult i64 %i.ha, 9
  %n.mod.vf248 = and i64 %i.gw, 7                 ; 2 uses
  %i.hd = icmp eq i64 %n.mod.vf248, 0
  %i.he = select i1 %i.hd, i64 8, i64 %n.mod.vf248
  %n.vec249 = sub nsw i64 %i.gw, %i.he            ; 2 uses
  %i.hf = shl i64 %n.vec249, 1
  %i.hg = add i64 %i.hf, %i.go
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.split.us.us.us.us.us, %.preheader.lr.ph.split.us.split.us.us.us
  %indvar = phi i32 [ %indvar.next, %._crit_edge.split.us.us.us.us.us ], [ 0, %.preheader.lr.ph.split.us.split.us.us.us ] ; 2 uses
  %.099142.us.us.us.us = phi i32 [ %i.lr, %._crit_edge.split.us.us.us.us.us ], [ %i.by, %.preheader.lr.ph.split.us.split.us.us.us ] ; 2 uses
  %.0100141.us.us.us.us = phi i32 [ %i.lo, %._crit_edge.split.us.us.us.us.us ], [ 0, %.preheader.lr.ph.split.us.split.us.us.us ] ; 4 uses
  %.0101140.us.us.us.us = phi i32 [ %i.lp, %._crit_edge.split.us.us.us.us.us ], [ 0, %.preheader.lr.ph.split.us.split.us.us.us ] ; 4 uses
  %i.hh = mul nsw i32 %.099142.us.us.us.us, %5    ; 2 uses
  %invariant.op.us.us.us.us = add i32 %i.hh, %i.dg ; 6 uses
  %invariant.op138.us.us.us.us = add i32 %i.hh, %i.gn ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.hi = mul i32 %i.bl, %indvar                  ; 2 uses
  %i.hj = add i32 %i.gv, %i.hi                    ; 2 uses
  %i.hk = add i32 %i.gu, %i.hi                    ; 2 uses
  %i.hl = add i32 %i.hk, %mul.result218
  %i.hm = icmp slt i32 %i.hl, %i.hk
  %i.hn = add i32 %i.hj, %mul.result218
  %i.ho = icmp slt i32 %i.hn, %i.hj
  %.reass390 = or i1 %i.ho, %invariant.op389
  %i.hp = or i1 %i.hm, %.reass390
  br i1 %i.hp, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check220, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hq = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0100141.us.us.us.us, i64 0
  %i.hr = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0101140.us.us.us.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.hq, %vector.ph ], [ %i.jx, %vector.body ]
  %vec.phi221.a = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.jy, %vector.body ]
  %vec.phi222.a = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.jz, %vector.body ]
  %vec.phi223.a = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ka, %vector.body ]
  %vec.phi224.a = phi <8 x i32> [ %i.hr, %vector.ph ], [ %i.kb, %vector.body ]
  %vec.phi225 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.kc, %vector.body ]
  %vec.phi226 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.kd, %vector.body ]
  %vec.phi227 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ke, %vector.body ]
  %index.tr = trunc i64 %index to i32
  %i.hs = shl i32 %index.tr, 1
  %i.ht = add i32 %i.hs, %i.cn                    ; 5 uses
  %i.hu = add i32 %i.ht, 16                       ; 2 uses
  %i.hv = add i32 %i.ht, 32                       ; 2 uses
  %i.hw = add i32 %i.ht, 48                       ; 2 uses
  %i.hx = add i32 %invariant.op.us.us.us.us, %i.ht
  %i.hy = add i32 %invariant.op.us.us.us.us, %i.hu
  %i.hz = add i32 %invariant.op.us.us.us.us, %i.hv
  %i.ia = add i32 %invariant.op.us.us.us.us, %i.hw
  %i.ib = sext i32 %i.hx to i64
  %i.ic = sext i32 %i.hy to i64
  %i.id = sext i32 %i.hz to i64
  %i.ie = sext i32 %i.ia to i64
  %i.if = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ib
  %i.ig = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ic
  %i.ih = getelementptr inbounds [2 x i8], ptr %1, i64 %i.id
  %i.ii = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ie
  %wide.vec = load <16 x i16>, ptr %i.if, align 2, !tbaa !19
  %i.ij = freeze <16 x i16> %wide.vec
  %i.ik = bitcast <16 x i16> %i.ij to <8 x i32>
  %i.il = and <8 x i32> %i.ik, splat (i32 65535)
  %wide.vec228 = load <16 x i16>, ptr %i.ig, align 2, !tbaa !19
  %i.im = freeze <16 x i16> %wide.vec228
  %i.in = bitcast <16 x i16> %i.im to <8 x i32>
  %i.io = and <8 x i32> %i.in, splat (i32 65535)
  %wide.vec230 = load <16 x i16>, ptr %i.ih, align 2, !tbaa !19
  %i.ip = freeze <16 x i16> %wide.vec230
  %i.iq = bitcast <16 x i16> %i.ip to <8 x i32>
  %i.ir = and <8 x i32> %i.iq, splat (i32 65535)
  %wide.vec232 = load <16 x i16>, ptr %i.ii, align 2, !tbaa !19
  %i.is = freeze <16 x i16> %wide.vec232
  %i.it = bitcast <16 x i16> %i.is to <8 x i32>
  %i.iu = and <8 x i32> %i.it, splat (i32 65535)
  %i.iv = add <8 x i32> %vec.phi, %i.il
  %i.iw = add <8 x i32> %vec.phi221.a, %i.io
  %i.ix = add <8 x i32> %vec.phi222.a, %i.ir
  %i.iy = add <8 x i32> %vec.phi223.a, %i.iu
  %i.iz = add i32 %invariant.op138.us.us.us.us, %i.ht
  %i.ja = add i32 %invariant.op138.us.us.us.us, %i.hu
  %i.jb = add i32 %invariant.op138.us.us.us.us, %i.hv
  %i.jc = add i32 %invariant.op138.us.us.us.us, %i.hw
  %i.jd = sext i32 %i.iz to i64
  %i.je = sext i32 %i.ja to i64
  %i.jf = sext i32 %i.jb to i64
  %i.jg = sext i32 %i.jc to i64
  %i.jh = getelementptr inbounds [2 x i8], ptr %1, i64 %i.jd
  %i.ji = getelementptr inbounds [2 x i8], ptr %1, i64 %i.je
  %i.jj = getelementptr inbounds [2 x i8], ptr %1, i64 %i.jf
  %i.jk = getelementptr inbounds [2 x i8], ptr %1, i64 %i.jg
  %wide.vec234 = load <16 x i16>, ptr %i.jh, align 2, !tbaa !19
  %i.jl = freeze <16 x i16> %wide.vec234
  %i.jm = bitcast <16 x i16> %i.jl to <8 x i32>
  %i.jn = and <8 x i32> %i.jm, splat (i32 65535)
  %wide.vec236 = load <16 x i16>, ptr %i.ji, align 2, !tbaa !19
  %i.jo = freeze <16 x i16> %wide.vec236
  %i.jp = bitcast <16 x i16> %i.jo to <8 x i32>
  %i.jq = and <8 x i32> %i.jp, splat (i32 65535)
  %wide.vec238 = load <16 x i16>, ptr %i.jj, align 2, !tbaa !19
  %i.jr = freeze <16 x i16> %wide.vec238
  %i.js = bitcast <16 x i16> %i.jr to <8 x i32>
  %i.jt = and <8 x i32> %i.js, splat (i32 65535)
  %wide.vec240 = load <16 x i16>, ptr %i.jk, align 2, !tbaa !19
  %i.ju = freeze <16 x i16> %wide.vec240
  %i.jv = bitcast <16 x i16> %i.ju to <8 x i32>
  %i.jw = and <8 x i32> %i.jv, splat (i32 65535)
  %i.jx = add <8 x i32> %i.iv, %i.jn              ; 2 uses
  %i.jy = add <8 x i32> %i.iw, %i.jq              ; 2 uses
  %i.jz = add <8 x i32> %i.ix, %i.jt              ; 2 uses
  %i.ka = add <8 x i32> %i.iy, %i.jw              ; 2 uses
  %i.kb = add <8 x i32> %vec.phi224.a, splat (i32 2) ; 2 uses
  %i.kc = add <8 x i32> %vec.phi225, splat (i32 2) ; 2 uses
  %i.kd = add <8 x i32> %vec.phi226, splat (i32 2) ; 2 uses
  %i.ke = add <8 x i32> %vec.phi227, splat (i32 2) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kf = icmp eq i64 %index.next, %n.vec
  br i1 %i.kf, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !27

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx244 = add <8 x i32> %i.kc, %i.kb
  %bin.rdx245 = add <8 x i32> %i.kd, %bin.rdx244
  %bin.rdx246 = add <8 x i32> %i.ke, %bin.rdx245
  %i.kg = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx246) ; 2 uses
  %bin.rdx = add <8 x i32> %i.jy, %i.jx
  %bin.rdx242 = add <8 x i32> %i.jz, %bin.rdx
  %bin.rdx243 = add <8 x i32> %i.ka, %bin.rdx242
  %i.kh = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx243) ; 2 uses
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.kh, %vec.epilog.iter.check ], [ %.0100141.us.us.us.us, %vector.main.loop.iter.check ]
  %bc.merge.rdx247 = phi i32 [ %i.kg, %vec.epilog.iter.check ], [ %.0101140.us.us.us.us, %vector.main.loop.iter.check ]
  %i.ki = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.kj = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx247, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index250 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next257, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi251 = phi <8 x i32> [ %i.ki, %vec.epilog.ph ], [ %i.kz, %vec.epilog.vector.body ]
  %vec.phi252 = phi <8 x i32> [ %i.kj, %vec.epilog.ph ], [ %i.la, %vec.epilog.vector.body ]
  %index250.tr = trunc i64 %index250 to i32
  %i.kk = shl i32 %index250.tr, 1
  %i.kl = add i32 %i.kk, %i.cn                    ; 2 uses
  %i.km = add i32 %invariant.op.us.us.us.us, %i.kl
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kn
  %wide.vec253 = load <16 x i16>, ptr %i.ko, align 2, !tbaa !19
  %i.kp = freeze <16 x i16> %wide.vec253
  %i.kq = bitcast <16 x i16> %i.kp to <8 x i32>
  %i.kr = and <8 x i32> %i.kq, splat (i32 65535)
  %i.ks = add <8 x i32> %vec.phi251, %i.kr
  %i.kt = add i32 %invariant.op138.us.us.us.us, %i.kl
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ku
  %wide.vec255 = load <16 x i16>, ptr %i.kv, align 2, !tbaa !19
  %i.kw = freeze <16 x i16> %wide.vec255
  %i.kx = bitcast <16 x i16> %i.kw to <8 x i32>
  %i.ky = and <8 x i32> %i.kx, splat (i32 65535)
  %i.kz = add <8 x i32> %i.ks, %i.ky              ; 2 uses
  %i.la = add <8 x i32> %vec.phi252, splat (i32 2) ; 2 uses
  %index.next257 = add nuw i64 %index250, 8       ; 2 uses
  %i.lb = icmp eq i64 %index.next257, %n.vec249
  br i1 %i.lb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.lc = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.kz)
  %i.ld = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.la)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv189.ph = phi i64 [ %i.go, %iter.check ], [ %i.go, %vector.scevcheck ], [ %i.hc, %vec.epilog.iter.check ], [ %i.hg, %vec.epilog.middle.block ]
  %.1134.us.us.us.us.us.ph = phi i32 [ %.0100141.us.us.us.us, %iter.check ], [ %.0100141.us.us.us.us, %vector.scevcheck ], [ %i.kh, %vec.epilog.iter.check ], [ %i.lc, %vec.epilog.middle.block ]
  %.1102133.us.us.us.us.us.ph = phi i32 [ %.0101140.us.us.us.us, %iter.check ], [ %.0101140.us.us.us.us, %vector.scevcheck ], [ %i.kg, %vec.epilog.iter.check ], [ %i.ld, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %vec.epilog.scalar.ph ], [ %indvars.iv189.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1134.us.us.us.us.us = phi i32 [ %i.lo, %vec.epilog.scalar.ph ], [ %.1134.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.1102133.us.us.us.us.us = phi i32 [ %i.lp, %vec.epilog.scalar.ph ], [ %.1102133.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.le = trunc nsw i64 %indvars.iv189 to i32     ; 2 uses
  %.reass.us.us.us.us.us = add i32 %invariant.op.us.us.us.us, %i.le
  %i.lf = sext i32 %.reass.us.us.us.us.us to i64
  %i.lg = getelementptr inbounds [2 x i8], ptr %1, i64 %i.lf
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !19
  %i.li = zext i16 %i.lh to i32
  %i.lj = add i32 %.1134.us.us.us.us.us, %i.li
  %.reass139.us.us.us.us = add i32 %invariant.op138.us.us.us.us, %i.le
  %i.lk = sext i32 %.reass139.us.us.us.us to i64
  %i.ll = getelementptr inbounds [2 x i8], ptr %1, i64 %i.lk
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !19
  %i.ln = zext i16 %i.lm to i32
  %i.lo = add i32 %i.lj, %i.ln                    ; 3 uses
  %i.lp = add nsw i32 %.1102133.us.us.us.us.us, 2 ; 3 uses
  %indvars.iv.next190 = add nsw i64 %indvars.iv189, 2 ; 2 uses
  %i.lq = icmp slt i64 %indvars.iv.next190, %i.gp
  br i1 %i.lq, label %vec.epilog.scalar.ph, label %._crit_edge.split.us.us.us.us.us, !llvm.loop !29

._crit_edge.split.us.us.us.us.us:                 ; preds = %vec.epilog.scalar.ph
  %i.lr = add nsw i32 %.099142.us.us.us.us, 2     ; 2 uses
  %i.ls = icmp slt i32 %i.lr, %i.cc
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ls, label %iter.check, label %._crit_edge143.us.us

._crit_edge175:                                   ; preds = %._crit_edge.us, %.lr.ph174, %.preheader130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_iop_clip_and_zoom_mosaic_half_size_f(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
end_hunk_0
