inline.NumInlined: 336
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 53
begin_hunk_0_@ff_ffv1_encode_init:bb.a
  store ptr %i.eo, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.not315 = icmp eq ptr %i.eo, null
  br i1 %.not315, label %.thread337, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ep = load i32, ptr %i.br, align 8, !tbaa !38
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %.preheader351, label %bb.ap

.preheader351:                                    ; preds = %bb.ao
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 4112 ; 2 uses
  br label %.preheader347

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 722) #19
  call void @abort() #21
  unreachable

.preheader350:                                    ; preds = %bb.at
  %i.et = load i32, ptr %i.dh, align 8, !tbaa !60 ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.preheader346, label %._crit_edge390

.preheader347:                                    ; preds = %.preheader347.backedge, %.preheader351
  %indvars.iv435 = phi i64 [ 0, %.preheader351 ], [ %indvars.iv435.be, %.preheader347.backedge ] ; 3 uses
  %.1274381 = phi ptr [ %i.en, %.preheader351 ], [ %.1274381.be, %.preheader347.backedge ]
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %indvars.iv435
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader347, %bb.as
  %i.ew = phi i1 [ true, %.preheader347 ], [ false, %bb.as ]
  %indvars.iv432 = phi i64 [ 0, %.preheader347 ], [ 1, %bb.as ] ; 2 uses
  %.2275379 = phi ptr [ %.1274381, %.preheader347 ], [ %i.ez, %bb.as ] ; 3 uses
  %i.ex = call i64 @strtol(ptr noundef %.2275379, ptr noundef nonnull %i.b, i32 noundef 0) #19
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv432
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !99
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !62  ; 5 uses
  %i.fa = icmp eq ptr %i.ez, %.2275379
  br i1 %i.fa, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fb = trunc nuw nsw i64 %indvars.iv435 to i32
  %i.fc = trunc nuw nsw i64 %indvars.iv432 to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.fb, i32 noundef %i.fc, ptr noundef %.2275379) #19
  br label %.thread337.sink.split

bb.as:                                            ; preds = %bb.aq
  br i1 %i.ew, label %bb.aq, label %bb.at, !llvm.loop !100

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next436, 256
  br i1 %exitcond438.not, label %.preheader350, label %.preheader347.backedge

.preheader347.backedge:                           ; preds = %.preheader348, %bb.at
  %indvars.iv435.be = phi i64 [ %indvars.iv.next436, %bb.at ], [ 0, %.preheader348 ]
  %.1274381.be = phi ptr [ %i.ez, %bb.at ], [ %.7, %.preheader348 ]
  br label %.preheader347, !llvm.loop !101

.preheader346:                                    ; preds = %.preheader350, %._crit_edge
  %i.fd = phi i32 [ %i.fx, %._crit_edge ], [ %i.et, %.preheader350 ]
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %._crit_edge ], [ 0, %.preheader350 ] ; 4 uses
  %.3389 = phi ptr [ %.4.lcssa, %._crit_edge ], [ %i.ez, %.preheader350 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv449 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !63
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.preheader345.lr.ph, label %._crit_edge

.preheader345.lr.ph:                              ; preds = %.preheader346
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv449
  br label %.preheader345

.preheader345:                                    ; preds = %.preheader345.lr.ph, %bb.ay
  %indvars.iv446 = phi i64 [ 0, %.preheader345.lr.ph ], [ %indvars.iv.next447, %bb.ay ] ; 3 uses
  %.4387 = phi ptr [ %.3389, %.preheader345.lr.ph ], [ %i.fo, %bb.ay ]
  br label %.preheader344

.preheader344:                                    ; preds = %.preheader345, %bb.ax
  %indvars.iv442 = phi i64 [ 0, %.preheader345 ], [ %indvars.iv.next443, %bb.ax ] ; 3 uses
  %.5385 = phi ptr [ %.4387, %.preheader345 ], [ %i.fo, %bb.ax ]
  br label %bb.au

bb.au:                                            ; preds = %.preheader344, %bb.aw
  %i.fi = phi i1 [ true, %.preheader344 ], [ false, %bb.aw ]
  %indvars.iv439 = phi i64 [ 0, %.preheader344 ], [ 1, %bb.aw ] ; 2 uses
  %.6383 = phi ptr [ %.5385, %.preheader344 ], [ %i.fo, %bb.aw ] ; 3 uses
  %i.fj = call i64 @strtol(ptr noundef %.6383, ptr noundef nonnull %i.b, i32 noundef 0) #19
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !96
  %i.fl = getelementptr inbounds nuw [512 x i8], ptr %i.fk, i64 %indvars.iv446
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %indvars.iv442
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv439
  store i64 %i.fj, ptr %i.fn, align 8, !tbaa !99
  %i.fo = load ptr, ptr %i.b, align 8, !tbaa !62  ; 5 uses
  %i.fp = icmp eq ptr %i.fo, %.6383
  br i1 %i.fp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fq = trunc nuw nsw i64 %indvars.iv449 to i32
  %i.fr = trunc nuw nsw i64 %indvars.iv446 to i32
  %i.fs = trunc nuw nsw i64 %indvars.iv442 to i32
  %i.ft = trunc nuw nsw i64 %indvars.iv439 to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.fq, i32 noundef %i.fr, i32 noundef %i.fs, i32 noundef %i.ft, ptr noundef %.6383) #19
  br label %.thread337.sink.split

bb.aw:                                            ; preds = %bb.au
  br i1 %i.fi, label %bb.au, label %bb.ax, !llvm.loop !102

bb.ax:                                            ; preds = %bb.aw
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %exitcond445.not = icmp eq i64 %indvars.iv.next443, 32
  br i1 %exitcond445.not, label %bb.ay, label %.preheader344, !llvm.loop !103

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %i.fu = load i32, ptr %i.fe, align 4, !tbaa !63
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp slt i64 %indvars.iv.next447, %i.fv
  br i1 %i.fw, label %.preheader345, label %._crit_edge.loopexit, !llvm.loop !104

._crit_edge.loopexit:                             ; preds = %bb.ay
  %.pre469 = load i32, ptr %i.dh, align 8, !tbaa !60
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader346
  %i.fx = phi i32 [ %i.fd, %.preheader346 ], [ %.pre469, %._crit_edge.loopexit ] ; 2 uses
  %.4.lcssa = phi ptr [ %.3389, %.preheader346 ], [ %i.fo, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %i.fy = sext i32 %i.fx to i64
  %i.fz = icmp slt i64 %indvars.iv.next450, %i.fy
  br i1 %i.fz, label %.preheader346, label %._crit_edge390, !llvm.loop !105

._crit_edge390:                                   ; preds = %._crit_edge, %.preheader350
  %.3.lcssa = phi ptr [ %i.ez, %.preheader350 ], [ %.4.lcssa, %._crit_edge ] ; 2 uses
  %i.ga = call i64 @strtol(ptr noundef %.3.lcssa, ptr noundef nonnull %i.b, i32 noundef 0) #19
  %i.gb = trunc i64 %i.ga to i32                  ; 2 uses
  %i.gc = load ptr, ptr %i.b, align 8, !tbaa !62  ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %.3.lcssa
  %i.ge = icmp slt i32 %i.gb, 1
  %or.cond = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond, label %bb.az, label %.preheader348

bb.az:                                            ; preds = %._crit_edge390
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.9) #19
  br label %.thread337.sink.split

.preheader348:                                    ; preds = %._crit_edge390, %.critedge
  %.7 = phi ptr [ %i.gg, %.critedge ], [ %i.gc, %._crit_edge390 ] ; 3 uses
  %i.gf = load i8, ptr %.7, align 1, !tbaa !41
  switch i8 %i.gf, label %.preheader347.backedge [
    i8 10, label %.critedge
    i8 32, label %.critedge
    i8 0, label %bb.ba
  ]

.critedge:                                        ; preds = %.preheader348, %.preheader348
  %i.gg = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br label %.preheader348, !llvm.loop !106

bb.ba:                                            ; preds = %.preheader348
  %i.gh = load i32, ptr %i.bs, align 4, !tbaa !40
  %i.gi = icmp eq i32 %i.gh, 2
  br i1 %i.gi, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 24832
  call fastcc void @sort_stt(ptr noundef nonnull %i.d, ptr noundef nonnull %i.gj)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 24832
  call fastcc void @find_best_state(ptr noundef %i.gk, ptr noundef nonnull %i.gl)
  %i.gm = load i32, ptr %i.dh, align 8, !tbaa !60
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.preheader343.lr.ph, label %._crit_edge407

.preheader343.lr.ph:                              ; preds = %bb.bc
  %i.go = uitofp nneg i32 %i.gb to double         ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 25088
  %i.gq = insertelement <2 x double> poison, double %i.go, i64 1
  br label %.preheader343

.preheader343:                                    ; preds = %.preheader343.lr.ph, %bb.be
  %indvars.iv463.a = phi i64 [ 0, %.preheader343.lr.ph ], [ %indvars.iv.next464, %bb.be ] ; 4 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv463.a ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv463.a ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv463.a ; 3 uses
  %.pre470 = load i32, ptr %i.gr, align 4, !tbaa !63
  br label %.preheader

.preheader:                                       ; preds = %.preheader343, %._crit_edge404
  %i.gu = phi i32 [ %.pre470, %.preheader343 ], [ %i.jx, %._crit_edge404 ] ; 2 uses
  %indvars.iv459 = phi i64 [ 0, %.preheader343 ], [ %indvars.iv.next460, %._crit_edge404 ] ; 7 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph403, label %._crit_edge404

.lr.ph403:                                        ; preds = %.preheader, %.loopexit
  %indvars.iv456 = phi i64 [ %indvars.iv.next457, %.loopexit ], [ 0, %.preheader ] ; 7 uses
  %.0266402 = phi i32 [ %.2268, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %.0269401 = phi double [ %i.it, %.loopexit ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %.0271400 = phi double [ %i.iu, %.loopexit ], [ 0.000000e+00, %.preheader ]
  %i.gw = phi <2 x double> [ %i.is, %.loopexit ], [ zeroinitializer, %.preheader ]
  %i.gx = load ptr, ptr %i.gs, align 8, !tbaa !96
  %i.gy = getelementptr inbounds nuw [512 x i8], ptr %i.gx, i64 %indvars.iv456
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %indvars.iv459 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !99
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !99
  %i.hd = add i64 %i.hc, %i.ha
  %i.he = icmp ugt i64 %i.hd, 200
  %i.hf = icmp ne i64 %indvars.iv456, 0
  %or.cond3 = and i1 %i.hf, %i.he
  %i.hg = fadd nsz double %.0271400, %.0269401    ; 4 uses
  %i.hh = fcmp nsz ogt double %i.hg, 2.000000e+02
  %or.cond323 = or i1 %i.hh, %or.cond3
  br i1 %or.cond323, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %.lr.ph403
  %i.hi = fcmp nsz une double %i.hg, 0.000000e+00
  %i.hj = fmul nsz double %.0269401, 2.560000e+02
  %i.hk = fdiv nsz double %i.hj, %i.hg
  %.0 = select nsz i1 %i.hi, double %i.hk, double 1.280000e+02 ; 3 uses
  %i.hl = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.hm = call nsz double @llvm.round.f64(double %.0)
  %i.hn = fptosi double %i.hm to i32
  %i.ho = call i32 @llvm.smax.i32(i32 %i.hn, i32 1)
  %i.hp = call i32 @llvm.umin.i32(i32 %i.ho, i32 255)
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [256 x i8], ptr %i.hl, i64 %i.hq
  %i.hs = fdiv nsz double %i.hg, %i.go
  %i.ht = fptosi double %i.hs to i32              ; 3 uses
  %.not.i327 = icmp ult i32 %i.ht, 256
  %isnotneg.i328 = icmp sgt i32 %i.ht, -1
  %i.hu = sext i1 %isnotneg.i328 to i64
  %i.hv = zext nneg i32 %i.ht to i64
  %.0.i329 = select i1 %.not.i327, i64 %i.hv, i64 %i.hu
  %i.hw = and i64 %.0.i329, 255
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !41
  %i.hz = load ptr, ptr %i.gt, align 8, !tbaa !62
  %i.ia = sext i32 %.0266402 to i64               ; 2 uses
  %i.ib = getelementptr inbounds [32 x i8], ptr %i.hz, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv459
  store i8 %i.hy, ptr %i.ic, align 1, !tbaa !41
  %.1267392 = add nsw i32 %.0266402, 1            ; 2 uses
  %i.id = sext i32 %.1267392 to i64               ; 2 uses
  %i.ie = icmp sgt i64 %indvars.iv456, %i.id
  br i1 %i.ie, label %.lr.ph396, label %.loopexit

.lr.ph396:                                        ; preds = %bb.bd, %.lr.ph396
  %indvars.iv452.a = phi i64 [ %indvars.iv.next453.a, %.lr.ph396 ], [ %i.ia, %bb.bd ] ; 2 uses
  %.1267.in393 = phi i64 [ %indvars.iv.next453, %.lr.ph396 ], [ %i.id, %bb.bd ] ; 2 uses
  %i.if = load ptr, ptr %i.gt, align 8, !tbaa !62 ; 2 uses
  %i.ig = getelementptr inbounds [32 x i8], ptr %i.if, i64 %indvars.iv452.a
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv459
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !41
  %i.ij = getelementptr inbounds [32 x i8], ptr %i.if, i64 %.1267.in393
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv459
  store i8 %i.ii, ptr %i.ik, align 1, !tbaa !41
  %indvars.iv.next453 = add nsw i64 %.1267.in393, 1 ; 3 uses
  %indvars.iv.next453.a = add nsw i64 %indvars.iv452.a, 1
  %i.il = and i64 %indvars.iv.next453, 4294967295
  %exitcond455.not = icmp eq i64 %i.il, %indvars.iv456
  br i1 %exitcond455.not, label %.loopexit.loopexit, label %.lr.ph396, !llvm.loop !107

.loopexit.loopexit:                               ; preds = %.lr.ph396
  %lftr.wideiv = trunc i64 %indvars.iv.next453 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bd, %.lr.ph403
  %.2268 = phi i32 [ %.0266402, %.lr.ph403 ], [ %.1267392, %bb.bd ], [ %lftr.wideiv, %.loopexit.loopexit ]
  %.1 = phi nsz double [ 1.280000e+02, %.lr.ph403 ], [ %.0, %bb.bd ], [ %.0, %.loopexit.loopexit ]
  %i.im = phi <2 x double> [ %i.gw, %.lr.ph403 ], [ zeroinitializer, %bb.bd ], [ zeroinitializer, %.loopexit.loopexit ]
  %i.in = load ptr, ptr %i.gs, align 8, !tbaa !96
  %i.io = getelementptr inbounds nuw [512 x i8], ptr %i.in, i64 %indvars.iv456
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %indvars.iv459
  %i.iq = load <2 x i64>, ptr %i.ip, align 8, !tbaa !99
  %i.ir = uitofp <2 x i64> %i.iq to <2 x double>
  %i.is = fadd nsz <2 x double> %i.im, %i.ir      ; 3 uses
  %i.it = extractelement <2 x double> %i.is, i64 1 ; 3 uses
  %i.iu = extractelement <2 x double> %i.is, i64 0 ; 2 uses
  %i.iv = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.iw = fadd nsz double %i.iu, %i.it            ; 3 uses
  %i.ix = fmul nsz double %i.it, 2.560000e+02
  %i.iy = fcmp nsz une double %i.iw, 0.000000e+00
  %i.iz = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.ja = insertelement <2 x double> %i.iz, double %i.iw, i64 1
  %i.jb = insertelement <2 x double> %i.gq, double %i.iw, i64 0
  %i.jc = fdiv nsz <2 x double> %i.ja, %i.jb      ; 2 uses
  %i.jd = extractelement <2 x double> %i.jc, i64 0
  %.2 = select nsz i1 %i.iy, double %i.jd, double %.1
  %i.je = call nsz double @llvm.round.f64(double %.2)
  %i.jf = fptosi double %i.je to i32
  %i.jg = call i32 @llvm.smax.i32(i32 %i.jf, i32 1)
  %i.jh = call i32 @llvm.umin.i32(i32 %i.jg, i32 255)
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [256 x i8], ptr %i.iv, i64 %i.ji
  %i.jk = extractelement <2 x double> %i.jc, i64 1
  %i.jl = fptosi double %i.jk to i32              ; 3 uses
  %.not.i = icmp ult i32 %i.jl, 256
  %isnotneg.i = icmp sgt i32 %i.jl, -1
  %i.jm = sext i1 %isnotneg.i to i64
  %i.jn = zext nneg i32 %i.jl to i64
  %.0.i326 = select i1 %.not.i, i64 %i.jn, i64 %i.jm
  %i.jo = and i64 %.0.i326, 255
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !41
  %i.jr = load ptr, ptr %i.gt, align 8, !tbaa !62
  %i.js = getelementptr inbounds nuw [32 x i8], ptr %i.jr, i64 %indvars.iv456
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %indvars.iv459
  store i8 %i.jq, ptr %i.jt, align 1, !tbaa !41
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %i.ju = load i32, ptr %i.gr, align 4, !tbaa !63 ; 2 uses
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp slt i64 %indvars.iv.next457, %i.jv
  br i1 %i.jw, label %.lr.ph403, label %._crit_edge404, !llvm.loop !108

._crit_edge404:                                   ; preds = %.loopexit, %.preheader
  %i.jx = phi i32 [ %i.gu, %.preheader ], [ %i.ju, %.loopexit ]
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next460, 32
  br i1 %exitcond462.not, label %bb.be, label %.preheader, !llvm.loop !109

bb.be:                                            ; preds = %._crit_edge404
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463.a, 1 ; 2 uses
  %i.jy = load i32, ptr %i.dh, align 8, !tbaa !60
  %i.jz = sext i32 %i.jy to i64
  %i.ka = icmp slt i64 %indvars.iv.next464, %i.jz
  br i1 %i.ka, label %.preheader343, label %._crit_edge407, !llvm.loop !110

.thread337.sink.split:                            ; preds = %bb.az, %bb.av, %bb.ar
  call void @av_freep(ptr noundef nonnull %i.a) #19
  br label %.thread337

.thread337:                                       ; preds = %.thread337.sink.split, %bb.an
  %.0290.ph = phi i32 [ -12, %bb.an ], [ -1094995529, %.thread337.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %set_micro_version.exit

._crit_edge407:                                   ; preds = %bb.be, %bb.bc
  call void @av_freep(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge407, %.loopexit353
  %i.kb = load i32, ptr %i.br, align 8, !tbaa !38 ; 4 uses
  %i.kc = icmp slt i32 %i.kb, 2
  br i1 %i.kc, label %.thread340, label %bb.bg

.thread340:                                       ; preds = %bb.bf
  %i.kd = getelementptr inbounds nuw i8, ptr %i.d, i64 25232
  store i32 1, ptr %i.kd, align 8, !tbaa !58
  %i.ke = getelementptr inbounds nuw i8, ptr %i.d, i64 25228
  store i32 1, ptr %i.ke, align 4, !tbaa !59
  %i.kf = shl i32 %i.kb, 16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.d, i64 4184
  store i32 %i.kf, ptr %i.kg, align 8, !tbaa !71
  br label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.kh = shl i32 %i.kb, 16                       ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.d, i64 4184 ; 2 uses
  store i32 %i.kh, ptr %i.ki, align 8, !tbaa !71
  switch i32 %i.kb, label %bb.bi [
    i32 2, label %bb.bk
    i32 3, label %bb.bj
    i32 4, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, i32 noundef 440) #19
  call void @abort() #21
  unreachable

bb.bj:                                            ; preds = %bb.bg, %bb.bh
  %.sink.i = phi i32 [ 10, %bb.bh ], [ 4, %bb.bg ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.d, i64 4180
  store i32 %.sink.i, ptr %i.kj, align 4, !tbaa !39
  %i.kk = or disjoint i32 %.sink.i, %i.kh
  store i32 %i.kk, ptr %i.ki, align 8, !tbaa !71
  br label %set_micro_version.exit

bb.bk:                                            ; preds = %bb.bg, %.thread340
  %i.kl = getelementptr inbounds nuw i8, ptr %i.d, i64 4180
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !39
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %set_micro_version.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.6, i32 noundef 444) #19
  call void @abort() #21
  unreachable

set_micro_version.exit:                           ; preds = %bb.am, %bb.bk, %bb.bj, %.thread337, %bb.ac, %bb.u, %bb.l, %bb.d
  %.1291 = phi i32 [ -22, %bb.d ], [ -22, %bb.l ], [ -1094995529, %bb.u ], [ %.0290.ph, %.thread337 ], [ %i.di, %bb.ac ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ -12, %bb.am ]
  ret i32 %.1291
}

declare i32 @ff_ffv1_allocate_initial_states(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #8

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sort_stt(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.b

.loopexit162:                                     ; preds = %.loopexit, %bb.b
  %.1.lcssa = phi i32 [ %.0149170, %bb.b ], [ %.2, %.loopexit ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1
  %exitcond186.not = icmp eq i64 %indvars.iv.next184, 244
  br i1 %exitcond186.not, label %bb.m, label %.backedge

.backedge:                                        ; preds = %.loopexit162, %bb.m
  %indvars.iv183.be = phi i64 [ %indvars.iv.next184, %.loopexit162 ], [ 12, %bb.m ]
  %indvars.iv178.be = phi i64 [ %indvars.iv.next179, %.loopexit162 ], [ 13, %bb.m ]
  %.0149170.be = phi i32 [ %.1.lcssa, %.loopexit162 ], [ 0, %bb.m ]
  br label %bb.b, !llvm.loop !111

bb.b:                                             ; preds = %.backedge, %bb.a
  %indvars.iv183 = phi i64 [ 12, %bb.a ], [ %indvars.iv183.be, %.backedge ] ; 11 uses
  %indvars.iv178 = phi i64 [ 13, %bb.a ], [ %indvars.iv178.be, %.backedge ] ; 2 uses
  %.0149170 = phi i32 [ 0, %bb.a ], [ %.0149170.be, %.backedge ] ; 2 uses
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 3 uses
  %i.b = trunc nuw nsw i64 %indvars.iv183 to i32  ; 2 uses
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 241)
  %invariant.umin = add nuw nsw i32 %i.c, 4
  %i.d = zext nneg i32 %invariant.umin to i64     ; 2 uses
  %i.e = icmp samesign ult i64 %indvars.iv.next184, %i.d
  br i1 %i.e, label %.lr.ph, label %.loopexit162

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv183 ; 3 uses
  %i.g = sub nuw nsw i64 256, %indvars.iv183      ; 5 uses
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = uitofp nneg i32 %i.h to double
  %i.j = fmul nnan nsz double %i.i, 3.906250e-03
  %i.k = tail call nsz double @llvm.log2.f64(double %i.j)
  %i.l = fneg nsz double %i.k
  %i.m = uitofp nneg i32 %i.b to double
  %i.n = fmul nnan nsz double %i.m, 3.906250e-03
  %i.o = tail call nsz double @llvm.log2.f64(double %i.n)
  %i.p = fneg nsz double %i.o
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.g ; 3 uses
  %i.r = icmp ne i64 %indvars.iv183, 128
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv183 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.u = trunc i64 %indvars.iv183 to i8           ; 3 uses
  %i.v = insertelement <2 x double> poison, double %i.p, i64 1
  %i.w = insertelement <2 x double> poison, double %i.l, i64 1
  br label %bb.c
end_hunk_0
