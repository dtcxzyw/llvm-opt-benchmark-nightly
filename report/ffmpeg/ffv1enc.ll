Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffv1enc?download=true
inline.NumInlined: 336
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 31
begin_hunk_0_@ff_ffv1_encode_init:bb.a
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !71  ; 5 uses
  %i.fa = icmp eq ptr %i.ez, %.2275381
  br i1 %i.fa, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fb = trunc nuw nsw i64 %indvars.iv437 to i32
  %i.fc = trunc nuw nsw i64 %indvars.iv434 to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.fb, i32 noundef %i.fc, ptr noundef %.2275381) #19
  br label %.thread337.sink.split

bb.as:                                            ; preds = %bb.aq
  br i1 %i.ew, label %bb.aq, label %bb.at, !llvm.loop !156

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %exitcond440.not = icmp eq i64 %indvars.iv.next438, 256
  br i1 %exitcond440.not, label %.preheader352, label %.preheader349.backedge

.preheader349.backedge:                           ; preds = %.preheader350, %bb.at
  %indvars.iv437.be = phi i64 [ %indvars.iv.next438, %bb.at ], [ 0, %.preheader350 ]
  %.1274383.be = phi ptr [ %i.ez, %bb.at ], [ %.7, %.preheader350 ]
  br label %.preheader349, !llvm.loop !157

.preheader348:                                    ; preds = %.preheader352, %._crit_edge
  %i.fd = phi i32 [ %i.fx, %._crit_edge ], [ %i.et, %.preheader352 ]
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %._crit_edge ], [ 0, %.preheader352 ] ; 4 uses
  %.3391 = phi ptr [ %.4.lcssa, %._crit_edge ], [ %i.ez, %.preheader352 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv451 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !72
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.preheader347.lr.ph, label %._crit_edge

.preheader347.lr.ph:                              ; preds = %.preheader348
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv451
  br label %.preheader347

.preheader347:                                    ; preds = %.preheader347.lr.ph, %bb.ay
  %indvars.iv448 = phi i64 [ 0, %.preheader347.lr.ph ], [ %indvars.iv.next449, %bb.ay ] ; 3 uses
  %.4389 = phi ptr [ %.3391, %.preheader347.lr.ph ], [ %i.fo, %bb.ay ]
  br label %.preheader346

.preheader346:                                    ; preds = %.preheader347, %bb.ax
  %indvars.iv444 = phi i64 [ 0, %.preheader347 ], [ %indvars.iv.next445, %bb.ax ] ; 3 uses
  %.5387 = phi ptr [ %.4389, %.preheader347 ], [ %i.fo, %bb.ax ]
  br label %bb.au

bb.au:                                            ; preds = %.preheader346, %bb.aw
  %i.fi = phi i1 [ true, %.preheader346 ], [ false, %bb.aw ]
  %indvars.iv441 = phi i64 [ 0, %.preheader346 ], [ 1, %bb.aw ] ; 2 uses
  %.6385 = phi ptr [ %.5387, %.preheader346 ], [ %i.fo, %bb.aw ] ; 3 uses
  %i.fj = call i64 @strtol(ptr noundef %.6385, ptr noundef nonnull %i.b, i32 noundef 0) #19
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !88
  %i.fl = getelementptr inbounds nuw [512 x i8], ptr %i.fk, i64 %indvars.iv448
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %indvars.iv444
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv441
  store i64 %i.fj, ptr %i.fn, align 8, !tbaa !89
  %i.fo = load ptr, ptr %i.b, align 8, !tbaa !71  ; 5 uses
  %i.fp = icmp eq ptr %i.fo, %.6385
  br i1 %i.fp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fq = trunc nuw nsw i64 %indvars.iv451 to i32
  %i.fr = trunc nuw nsw i64 %indvars.iv448 to i32
  %i.fs = trunc nuw nsw i64 %indvars.iv444 to i32
  %i.ft = trunc nuw nsw i64 %indvars.iv441 to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.fq, i32 noundef %i.fr, i32 noundef %i.fs, i32 noundef %i.ft, ptr noundef %.6385) #19
  br label %.thread337.sink.split

bb.aw:                                            ; preds = %bb.au
  br i1 %i.fi, label %bb.au, label %bb.ax, !llvm.loop !158

bb.ax:                                            ; preds = %bb.aw
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next445, 32
  br i1 %exitcond447.not, label %bb.ay, label %.preheader346, !llvm.loop !159

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %i.fu = load i32, ptr %i.fe, align 4, !tbaa !72
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp slt i64 %indvars.iv.next449, %i.fv
  br i1 %i.fw, label %.preheader347, label %._crit_edge.loopexit, !llvm.loop !160

._crit_edge.loopexit:                             ; preds = %bb.ay
  %.pre471 = load i32, ptr %i.dh, align 8, !tbaa !70
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader348
  %i.fx = phi i32 [ %i.fd, %.preheader348 ], [ %.pre471, %._crit_edge.loopexit ] ; 2 uses
  %.4.lcssa = phi ptr [ %.3391, %.preheader348 ], [ %i.fo, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %i.fy = sext i32 %i.fx to i64
  %i.fz = icmp slt i64 %indvars.iv.next452, %i.fy
  br i1 %i.fz, label %.preheader348, label %._crit_edge392, !llvm.loop !161

._crit_edge392:                                   ; preds = %._crit_edge, %.preheader352
  %.3.lcssa = phi ptr [ %i.ez, %.preheader352 ], [ %.4.lcssa, %._crit_edge ] ; 2 uses
  %i.ga = call i64 @strtol(ptr noundef %.3.lcssa, ptr noundef nonnull %i.b, i32 noundef 0) #19
  %i.gb = trunc i64 %i.ga to i32                  ; 2 uses
  %i.gc = load ptr, ptr %i.b, align 8, !tbaa !71  ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %.3.lcssa
  %i.ge = icmp slt i32 %i.gb, 1
  %or.cond = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond, label %bb.az, label %.preheader350

bb.az:                                            ; preds = %._crit_edge392
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.9) #19
  br label %.thread337.sink.split

.preheader350:                                    ; preds = %._crit_edge392, %.critedge
  %.7 = phi ptr [ %i.gg, %.critedge ], [ %i.gc, %._crit_edge392 ] ; 3 uses
  %i.gf = load i8, ptr %.7, align 1, !tbaa !54
  switch i8 %i.gf, label %.preheader349.backedge [
    i8 10, label %.critedge
    i8 32, label %.critedge
    i8 0, label %bb.ba
  ]

.critedge:                                        ; preds = %.preheader350, %.preheader350
  %i.gg = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br label %.preheader350, !llvm.loop !162

bb.ba:                                            ; preds = %.preheader350
  %i.gh = load i32, ptr %i.bs, align 4, !tbaa !53
  %i.gi = icmp eq i32 %i.gh, 2
  br i1 %i.gi, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 24832
  call fastcc void @sort_stt(ptr noundef nonnull %i.d, ptr noundef nonnull %i.gj)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 24832
  call fastcc void @find_best_state(ptr noundef %i.gk, ptr noundef nonnull %i.gl)
  %i.gm = load i32, ptr %i.dh, align 8, !tbaa !70
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.preheader345.lr.ph, label %._crit_edge409

.preheader345.lr.ph:                              ; preds = %bb.bc
  %i.go = uitofp nneg i32 %i.gb to double         ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 25088
  br label %.preheader345

.preheader345:                                    ; preds = %.preheader345.lr.ph, %bb.be
  %indvars.iv465 = phi i64 [ 0, %.preheader345.lr.ph ], [ %indvars.iv.next466, %bb.be ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv465 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv465 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv465 ; 3 uses
  %.pre472 = load i32, ptr %i.gq, align 4, !tbaa !72
  br label %.preheader

.preheader:                                       ; preds = %.preheader345, %._crit_edge406
  %i.gt = phi i32 [ %.pre472, %.preheader345 ], [ %i.jm, %._crit_edge406 ] ; 2 uses
  %indvars.iv461 = phi i64 [ 0, %.preheader345 ], [ %indvars.iv.next462, %._crit_edge406 ] ; 7 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph405, label %._crit_edge406

.lr.ph405:                                        ; preds = %.preheader, %.loopexit
  %indvars.iv458 = phi i64 [ %indvars.iv.next459, %.loopexit ], [ 0, %.preheader ] ; 7 uses
  %.0266404 = phi i32 [ %.2268, %.loopexit ], [ 0, %.preheader ] ; 4 uses
  %.0269403 = phi double [ %i.io, %.loopexit ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %.0271402 = phi double [ %i.ip, %.loopexit ], [ 0.000000e+00, %.preheader ]
  %i.gv = phi <2 x double> [ %i.in, %.loopexit ], [ zeroinitializer, %.preheader ]
  %i.gw = load ptr, ptr %i.gr, align 8, !tbaa !88
  %i.gx = getelementptr inbounds nuw [512 x i8], ptr %i.gw, i64 %indvars.iv458
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %indvars.iv461 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !89
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !89
  %i.hc = add i64 %i.hb, %i.gz
  %i.hd = icmp ugt i64 %i.hc, 200
  %i.he = icmp ne i64 %indvars.iv458, 0
  %or.cond3 = and i1 %i.he, %i.hd
  %i.hf = fadd nsz double %.0271402, %.0269403    ; 4 uses
  %i.hg = fcmp nsz ogt double %i.hf, 2.000000e+02
  %or.cond323 = or i1 %i.hg, %or.cond3
  br i1 %or.cond323, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %.lr.ph405
  %i.hh = fcmp nsz une double %i.hf, 0.000000e+00
  %i.hi = fmul nsz double %.0269403, 2.560000e+02
  %i.hj = fdiv nsz double %i.hi, %i.hf
  %.0 = select nsz i1 %i.hh, double %i.hj, double 1.280000e+02 ; 3 uses
  %i.hk = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.hl = call nsz double @llvm.round.f64(double %.0)
  %i.hm = fptosi double %i.hl to i32
  %i.hn = call i32 @llvm.smax.i32(i32 %i.hm, i32 1)
  %i.ho = call i32 @llvm.umin.i32(i32 %i.hn, i32 255)
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [256 x i8], ptr %i.hk, i64 %i.hp
  %i.hr = fdiv nsz double %i.hf, %i.go
  %i.hs = fptosi double %i.hr to i32
  %i.ht = call i32 @llvm.smax.i32(i32 %i.hs, i32 0)
  %.0.i329342 = call i32 @llvm.umin.i32(i32 %i.ht, i32 255)
  %.0.i329 = zext nneg i32 %.0.i329342 to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.0.i329
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !54
  %i.hw = load ptr, ptr %i.gs, align 8, !tbaa !71
  %2 = zext nneg i32 %.0266404 to i64
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %i.hw, i64 %2
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv461
  store i8 %i.hv, ptr %i.hy, align 1, !tbaa !54
  %.1267394 = add nuw nsw i32 %.0266404, 1        ; 3 uses
  %3 = zext i32 %.1267394 to i64
  %4 = icmp samesign ugt i64 %indvars.iv458, %3
  br i1 %4, label %.lr.ph398.preheader, label %.loopexit

.lr.ph398.preheader:                              ; preds = %bb.bd
  %5 = sext i32 %.1267394 to i64
  %i.hz = sext i32 %.0266404 to i64
  br label %.lr.ph398

.lr.ph398:                                        ; preds = %.lr.ph398.preheader, %.lr.ph398
  %indvars.iv454 = phi i64 [ %5, %.lr.ph398.preheader ], [ %indvars.iv.next455, %.lr.ph398 ] ; 3 uses
  %.1267.in395 = phi i64 [ %i.hz, %.lr.ph398.preheader ], [ %indvars.iv454, %.lr.ph398 ]
  %i.ia = load ptr, ptr %i.gs, align 8, !tbaa !71 ; 2 uses
  %i.ib = getelementptr inbounds [32 x i8], ptr %i.ia, i64 %.1267.in395
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv461
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !54
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.ia, i64 %indvars.iv454
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv461
  store i8 %i.id, ptr %i.if, align 1, !tbaa !54
  %indvars.iv.next455 = add nsw i64 %indvars.iv454, 1 ; 3 uses
  %i.ig = and i64 %indvars.iv.next455, 4294967295
  %exitcond457.not = icmp eq i64 %i.ig, %indvars.iv458
  br i1 %exitcond457.not, label %.loopexit.loopexit, label %.lr.ph398, !llvm.loop !163

.loopexit.loopexit:                               ; preds = %.lr.ph398
  %lftr.wideiv = trunc i64 %indvars.iv.next455 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bd, %.lr.ph405
  %.2268 = phi i32 [ %.0266404, %.lr.ph405 ], [ %.1267394, %bb.bd ], [ %lftr.wideiv, %.loopexit.loopexit ]
  %.1 = phi nsz double [ 1.280000e+02, %.lr.ph405 ], [ %.0, %bb.bd ], [ %.0, %.loopexit.loopexit ]
  %i.ih = phi <2 x double> [ %i.gv, %.lr.ph405 ], [ zeroinitializer, %bb.bd ], [ zeroinitializer, %.loopexit.loopexit ]
  %i.ii = load ptr, ptr %i.gr, align 8, !tbaa !88
  %i.ij = getelementptr inbounds nuw [512 x i8], ptr %i.ii, i64 %indvars.iv458
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %indvars.iv461
  %i.il = load <2 x i64>, ptr %i.ik, align 8, !tbaa !89
  %i.im = uitofp nsz <2 x i64> %i.il to <2 x double>
  %i.in = fadd nsz <2 x double> %i.ih, %i.im      ; 3 uses
  %i.io = extractelement <2 x double> %i.in, i64 1 ; 3 uses
  %i.ip = extractelement <2 x double> %i.in, i64 0 ; 2 uses
  %i.iq = fadd nsz double %i.ip, %i.io            ; 3 uses
  %i.ir = fcmp nsz une double %i.iq, 0.000000e+00
  %i.is = fmul nsz double %i.io, 2.560000e+02
  %i.it = fdiv nsz double %i.is, %i.iq
  %.2 = select nsz i1 %i.ir, double %i.it, double %.1
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.iv = call nsz double @llvm.round.f64(double %.2)
  %i.iw = fptosi double %i.iv to i32
  %i.ix = call i32 @llvm.smax.i32(i32 %i.iw, i32 1)
  %i.iy = call i32 @llvm.umin.i32(i32 %i.ix, i32 255)
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [256 x i8], ptr %i.iu, i64 %i.iz
  %i.jb = fdiv nsz double %i.iq, %i.go
  %i.jc = fptosi double %i.jb to i32
  %i.jd = call i32 @llvm.smax.i32(i32 %i.jc, i32 0)
  %.0.i326343 = call i32 @llvm.umin.i32(i32 %i.jd, i32 255)
  %.0.i326 = zext nneg i32 %.0.i326343 to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.0.i326
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !54
  %i.jg = load ptr, ptr %i.gs, align 8, !tbaa !71
  %i.jh = getelementptr inbounds nuw [32 x i8], ptr %i.jg, i64 %indvars.iv458
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %indvars.iv461
  store i8 %i.jf, ptr %i.ji, align 1, !tbaa !54
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %i.jj = load i32, ptr %i.gq, align 4, !tbaa !72 ; 2 uses
  %i.jk = sext i32 %i.jj to i64
  %i.jl = icmp slt i64 %indvars.iv.next459, %i.jk
  br i1 %i.jl, label %.lr.ph405, label %._crit_edge406, !llvm.loop !164

._crit_edge406:                                   ; preds = %.loopexit, %.preheader
  %i.jm = phi i32 [ %i.gt, %.preheader ], [ %i.jj, %.loopexit ]
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %exitcond464.not = icmp eq i64 %indvars.iv.next462, 32
  br i1 %exitcond464.not, label %bb.be, label %.preheader, !llvm.loop !165

bb.be:                                            ; preds = %._crit_edge406
  %indvars.iv.next466 = add nuw nsw i64 %indvars.iv465, 1 ; 2 uses
  %i.jn = load i32, ptr %i.dh, align 8, !tbaa !70
  %i.jo = sext i32 %i.jn to i64
  %i.jp = icmp slt i64 %indvars.iv.next466, %i.jo
  br i1 %i.jp, label %.preheader345, label %._crit_edge409, !llvm.loop !166

.thread337.sink.split:                            ; preds = %bb.az, %bb.av, %bb.ar
  call void @av_freep(ptr noundef nonnull %i.a) #19
  br label %.thread337

.thread337:                                       ; preds = %.thread337.sink.split, %bb.an
  %.0290.ph = phi i32 [ -12, %bb.an ], [ -1094995529, %.thread337.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %set_micro_version.exit

._crit_edge409:                                   ; preds = %bb.be, %bb.bc
  call void @av_freep(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge409, %.loopexit355
  %i.jq = load i32, ptr %i.br, align 8, !tbaa !51 ; 4 uses
  %i.jr = icmp slt i32 %i.jq, 2
  br i1 %i.jr, label %.thread340, label %bb.bg

.thread340:                                       ; preds = %bb.bf
  %i.js = getelementptr inbounds nuw i8, ptr %i.d, i64 25228
  store <2 x i32> splat (i32 1), ptr %i.js, align 4, !tbaa !72
  %i.jt = shl i32 %i.jq, 16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.d, i64 4184
  store i32 %i.jt, ptr %i.ju, align 8, !tbaa !75
  br label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.jv = shl i32 %i.jq, 16                       ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.d, i64 4184 ; 2 uses
  store i32 %i.jv, ptr %i.jw, align 8, !tbaa !75
  switch i32 %i.jq, label %bb.bi [
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
  %i.jx = getelementptr inbounds nuw i8, ptr %i.d, i64 4180
  store i32 %.sink.i, ptr %i.jx, align 4, !tbaa !52
  %i.jy = or disjoint i32 %.sink.i, %i.jv
  store i32 %i.jy, ptr %i.jw, align 8, !tbaa !75
  br label %set_micro_version.exit

bb.bk:                                            ; preds = %bb.bg, %.thread340
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 4180
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !52
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %set_micro_version.exit, label %bb.bl

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

.loopexit159:                                     ; preds = %.loopexit, %bb.b
  %.1.lcssa = phi i32 [ %.0149167, %bb.b ], [ %.2, %.loopexit ] ; 2 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1
  %exitcond183.not = icmp eq i64 %indvars.iv.next181, 244
  br i1 %exitcond183.not, label %bb.m, label %.backedge

.backedge:                                        ; preds = %.loopexit159, %bb.m
  %indvars.iv180.be = phi i64 [ %indvars.iv.next181, %.loopexit159 ], [ 12, %bb.m ]
  %indvars.iv175.be = phi i64 [ %indvars.iv.next176, %.loopexit159 ], [ 13, %bb.m ]
  %.0149167.be = phi i32 [ %.1.lcssa, %.loopexit159 ], [ 0, %bb.m ]
  br label %bb.b, !llvm.loop !171

bb.b:                                             ; preds = %.backedge, %bb.a
  %indvars.iv180 = phi i64 [ 12, %bb.a ], [ %indvars.iv180.be, %.backedge ] ; 11 uses
  %indvars.iv175 = phi i64 [ 13, %bb.a ], [ %indvars.iv175.be, %.backedge ] ; 2 uses
  %.0149167 = phi i32 [ 0, %bb.a ], [ %.0149167.be, %.backedge ] ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 3 uses
  %i.b = trunc nuw nsw i64 %indvars.iv180 to i32  ; 2 uses
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 241)
  %invariant.umin = add nuw nsw i32 %i.c, 4
  %i.d = zext nneg i32 %invariant.umin to i64     ; 2 uses
  %i.e = icmp samesign ult i64 %indvars.iv.next181, %i.d
  br i1 %i.e, label %.lr.ph, label %.loopexit159

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv180 ; 3 uses
  %i.g = sub nuw nsw i64 256, %indvars.iv180      ; 5 uses
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = uitofp nneg i32 %i.h to double
  %i.j = fmul nnan nsz double %i.i, 3.906250e-03
  %i.k = tail call nsz double @llvm.log2.f64(double %i.j)
  %i.l = fneg nsz double %i.k
  %i.m = uitofp nsz nneg i32 %i.b to double
  %i.n = fmul nnan nsz double %i.m, 3.906250e-03
  %i.o = tail call nsz double @llvm.log2.f64(double %i.n)
  %i.p = fneg nsz double %i.o
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.g ; 3 uses
  %i.r = icmp ne i64 %indvars.iv180, 128
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv180 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.u = trunc i64 %indvars.iv180 to i8           ; 3 uses
  %i.v = insertelement <2 x double> poison, double %i.p, i64 1
  %i.w = insertelement <2 x double> poison, double %i.l, i64 1
  br label %bb.c
end_hunk_0
