Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lpc?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ff_lpc_calc_coefs:bb.a
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %._crit_edge230.us ], [ %i.ey, %.preheader218.lr.ph.split.us ] ; 3 uses
  %.1236.us = phi double [ %.2.us, %._crit_edge230.us ], [ 0.000000e+00, %.preheader218.lr.ph.split.us ]
  br i1 %min.iters.check393, label %scalar.ph392.preheader, label %vector.body396

vector.body396:                                   ; preds = %.preheader218.us, %vector.body396
  %index397 = phi i64 [ %index.next402, %vector.body396 ], [ 0, %.preheader218.us ] ; 3 uses
  %i.ft = sub nsw i64 %indvars.iv287, %index397
  %i.fu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -4
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 -12
  %wide.load398 = load <2 x i32>, ptr %i.fv, align 4, !tbaa !25
  %wide.load399 = load <2 x i32>, ptr %i.fw, align 4, !tbaa !25
  %reverse400 = shufflevector <2 x i32> %wide.load398, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse401 = shufflevector <2 x i32> %wide.load399, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.fx = sitofp nsz <2 x i32> %reverse400 to <2 x double>
  %i.fy = sitofp nsz <2 x i32> %reverse401 to <2 x double>
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index397 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <2 x double> %i.fx, ptr %i.fz, align 16, !tbaa !18
  store <2 x double> %i.fy, ptr %i.ga, align 16, !tbaa !18
  %index.next402 = add nuw i64 %index397, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next402, %n.vec395
  br i1 %i.gb, label %middle.block403, label %vector.body396, !llvm.loop !49

middle.block403:                                  ; preds = %vector.body396
  br i1 %cmp.n404, label %._crit_edge230.us, label %scalar.ph392.preheader

scalar.ph392.preheader:                           ; preds = %.preheader218.us, %middle.block403
  %indvars.iv282.ph = phi i64 [ 0, %.preheader218.us ], [ %n.vec395, %middle.block403 ]
  br label %scalar.ph392

scalar.ph392:                                     ; preds = %scalar.ph392.preheader, %scalar.ph392
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %scalar.ph392 ], [ %indvars.iv282.ph, %scalar.ph392.preheader ] ; 3 uses
  %i.gc = sub nsw i64 %indvars.iv287, %indvars.iv282
  %i.gd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !25
  %i.gf = sitofp nsz i32 %i.ge to double
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv282
  store double %i.gf, ptr %i.gg, align 8, !tbaa !18
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond286.not = icmp eq i64 %indvars.iv.next283, %wide.trip.count285
  br i1 %exitcond286.not, label %._crit_edge230.us, label %scalar.ph392, !llvm.loop !50

._crit_edge230.us:                                ; preds = %scalar.ph392, %middle.block403
  %.2.us = fadd nsz double %.1236.us, 1.000000e+00 ; 2 uses
  %i.gh = load ptr, ptr %i.fq, align 8, !tbaa !77
  call void %i.gh(ptr noundef nonnull %i.fj, ptr noundef nonnull %i.d) #9
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %lftr.wideiv290 = trunc i64 %indvars.iv.next288 to i32
  %exitcond291.not = icmp eq i32 %2, %lftr.wideiv290
  br i1 %exitcond291.not, label %._crit_edge237, label %.preheader218.us, !llvm.loop !48

.preheader218:                                    ; preds = %.preheader218.lr.ph, %.loopexit
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %.loopexit ], [ %i.ey, %.preheader218.lr.ph ] ; 3 uses
  %.1236 = phi double [ %.2, %.loopexit ], [ 0.000000e+00, %.preheader218.lr.ph ]
  br i1 %.not165227, label %._crit_edge230, label %.lr.ph229.preheader

.lr.ph229.preheader:                              ; preds = %.preheader218
  br i1 %min.iters.check421, label %.lr.ph229.preheader493, label %vector.body424

vector.body424:                                   ; preds = %.lr.ph229.preheader, %vector.body424
  %index425 = phi i64 [ %index.next430, %vector.body424 ], [ 0, %.lr.ph229.preheader ] ; 3 uses
  %i.gi = sub nsw i64 %indvars.iv278, %index425
  %i.gj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -4
  %i.gl = getelementptr inbounds i8, ptr %i.gj, i64 -12
  %wide.load426 = load <2 x i32>, ptr %i.gk, align 4, !tbaa !25
  %wide.load427 = load <2 x i32>, ptr %i.gl, align 4, !tbaa !25
  %reverse428 = shufflevector <2 x i32> %wide.load426, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse429 = shufflevector <2 x i32> %wide.load427, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.gm = sitofp nsz <2 x i32> %reverse428 to <2 x double>
  %i.gn = sitofp nsz <2 x i32> %reverse429 to <2 x double>
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index425 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <2 x double> %i.gm, ptr %i.go, align 16, !tbaa !18
  store <2 x double> %i.gn, ptr %i.gp, align 16, !tbaa !18
  %index.next430 = add nuw i64 %index425, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next430, %n.vec423
  br i1 %i.gq, label %middle.block431, label %vector.body424, !llvm.loop !51

middle.block431:                                  ; preds = %vector.body424
  br i1 %cmp.n432, label %._crit_edge230, label %.lr.ph229.preheader493

.lr.ph229.preheader493:                           ; preds = %.lr.ph229.preheader, %middle.block431
  %indvars.iv268.ph = phi i64 [ 0, %.lr.ph229.preheader ], [ %n.vec423, %middle.block431 ]
  br label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph229.preheader493, %.lr.ph229
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %.lr.ph229 ], [ %indvars.iv268.ph, %.lr.ph229.preheader493 ] ; 3 uses
  %i.gr = sub nsw i64 %indvars.iv278, %indvars.iv268
  %i.gs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !25
  %i.gu = sitofp nsz i32 %i.gt to double
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv268
  store double %i.gu, ptr %i.gv, align 8, !tbaa !18
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %._crit_edge230, label %.lr.ph229, !llvm.loop !52

._crit_edge230:                                   ; preds = %.lr.ph229, %middle.block431, %.preheader218
  %i.gw = load ptr, ptr %i.fk, align 16, !tbaa !78
  %i.gx = call nsz double %i.gw(ptr noundef nonnull %i.fn, ptr noundef nonnull %i.ev, i32 noundef %i.ew) #9
  %i.gy = load double, ptr %i.d, align 16, !tbaa !18
  %i.gz = fsub nsz double %i.gx, %i.gy
  %i.ha = call nsz double @llvm.fabs.f64(double %i.gz)
  %i.hb = fadd nsz double %i.ha, %i.fp
  %i.hc = fdiv nsz double 1.000000e+00, %i.hb     ; 2 uses
  %i.hd = call nsz double @llvm.sqrt.f64(double %i.hc) ; 2 uses
  br i1 %.not165227, label %.loopexit, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %._crit_edge230
  br i1 %min.iters.check407, label %.lr.ph234.preheader492, label %vector.ph408

vector.ph408:                                     ; preds = %.lr.ph234.preheader
  %broadcast.splatinsert410 = insertelement <2 x double> poison, double %i.hd, i64 0
  %broadcast.splat411 = shufflevector <2 x double> %broadcast.splatinsert410, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body412

vector.body412:                                   ; preds = %vector.body412, %vector.ph408
  %index413 = phi i64 [ 0, %vector.ph408 ], [ %index.next416, %vector.body412 ] ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index413 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %wide.load414 = load <2 x double>, ptr %i.he, align 16, !tbaa !18
  %wide.load415 = load <2 x double>, ptr %i.hf, align 16, !tbaa !18
  %i.hg = fmul nsz <2 x double> %broadcast.splat411, %wide.load414
  %i.hh = fmul nsz <2 x double> %broadcast.splat411, %wide.load415
  store <2 x double> %i.hg, ptr %i.he, align 16, !tbaa !18
  store <2 x double> %i.hh, ptr %i.hf, align 16, !tbaa !18
  %index.next416 = add nuw i64 %index413, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next416, %n.vec409
  br i1 %i.hi, label %middle.block417, label %vector.body412, !llvm.loop !53

middle.block417:                                  ; preds = %vector.body412
  br i1 %cmp.n418, label %.loopexit, label %.lr.ph234.preheader492

.lr.ph234.preheader492:                           ; preds = %.lr.ph234.preheader, %middle.block417
  %indvars.iv273.ph = phi i64 [ 0, %.lr.ph234.preheader ], [ %n.vec409, %middle.block417 ]
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234.preheader492, %.lr.ph234
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %.lr.ph234 ], [ %indvars.iv273.ph, %.lr.ph234.preheader492 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv273 ; 2 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !18
  %i.hl = fmul nsz double %i.hd, %i.hk
  store double %i.hl, ptr %i.hj, align 8, !tbaa !18
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %.loopexit, label %.lr.ph234, !llvm.loop !54

.loopexit:                                        ; preds = %.lr.ph234, %middle.block417, %._crit_edge230
  %.2 = fadd nsz double %.1236, %i.hc             ; 2 uses
  %i.hm = load ptr, ptr %i.fq, align 8, !tbaa !77
  call void %i.hm(ptr noundef nonnull %i.fj, ptr noundef nonnull %i.d) #9
  %indvars.iv.next279 = add nsw i64 %indvars.iv278, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next279 to i32
  %exitcond281.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond281.not, label %._crit_edge237, label %.preheader218, !llvm.loop !48

._crit_edge237:                                   ; preds = %.loopexit, %._crit_edge230.us, %.preheader218.us.us, %bb.i
  %.1.lcssa = phi double [ 0.000000e+00, %bb.i ], [ %.2.us, %._crit_edge230.us ], [ %.2.us.us, %.preheader218.us.us ], [ %.2, %.loopexit ]
  call void @avpriv_solve_lls(ptr noundef nonnull %i.fj, double noundef 1.000000e-03, i16 noundef zeroext 0) #9
  %i.hn = add nuw i32 %.1151239, 1                ; 2 uses
  %exitcond293.not = icmp eq i32 %i.hn, %spec.store.select
  br i1 %exitcond293.not, label %.preheader217, label %bb.i, !llvm.loop !55

.lr.ph245:                                        ; preds = %._crit_edge246, %.preheader216.lr.ph
  %indvars.iv299 = phi i64 [ 0, %.preheader216.lr.ph ], [ %indvars.iv.next300, %._crit_edge246 ] ; 5 uses
  %i.ho = getelementptr inbounds nuw [256 x i8], ptr %i.fd, i64 %indvars.iv299 ; 2 uses
  %i.hp = getelementptr inbounds nuw [256 x i8], ptr %i.c, i64 %indvars.iv299 ; 2 uses
  br i1 %min.iters.check435, label %scalar.ph434.preheader, label %vector.body438

vector.body438:                                   ; preds = %.lr.ph245, %vector.body438
  %index439 = phi i64 [ %index.next442, %vector.body438 ], [ 0, %.lr.ph245 ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %index439 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %wide.load440 = load <2 x double>, ptr %i.hq, align 8, !tbaa !18
  %wide.load441 = load <2 x double>, ptr %i.hr, align 8, !tbaa !18
  %i.hs = fneg nsz <2 x double> %wide.load440
  %i.ht = fneg nsz <2 x double> %wide.load441
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %index439 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <2 x double> %i.hs, ptr %i.hu, align 16, !tbaa !18
  store <2 x double> %i.ht, ptr %i.hv, align 16, !tbaa !18
  %index.next442 = add nuw i64 %index439, 4       ; 2 uses
  %i.hw = icmp eq i64 %index.next442, %n.vec437
  br i1 %i.hw, label %middle.block443, label %vector.body438, !llvm.loop !56

middle.block443:                                  ; preds = %vector.body438
  br i1 %cmp.n444, label %._crit_edge246, label %scalar.ph434.preheader

scalar.ph434.preheader:                           ; preds = %.lr.ph245, %middle.block443
  %indvars.iv294.ph = phi i64 [ 0, %.lr.ph245 ], [ %n.vec437, %middle.block443 ]
  br label %scalar.ph434

.preheader:                                       ; preds = %._crit_edge246
  %.not323 = icmp eq i32 %4, 1
  br i1 %.not323, label %._crit_edge250, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %.preheader
  %i.hx = zext nneg i32 %4 to i64                 ; 3 uses
  %i.hy = call i64 @llvm.usub.sat.i64(i64 %wide.trip.count302, i64 2) ; 2 uses
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check447 = icmp samesign ult i64 %i.hy, 3
  br i1 %min.iters.check447, label %.lr.ph249.preheader491, label %vector.ph448

vector.ph448:                                     ; preds = %.lr.ph249.preheader
  %n.vec449 = and i64 %i.hz, 4294967292           ; 3 uses
  %i.ia = sub nsw i64 %i.hx, %n.vec449
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph448
  %index451 = phi i64 [ 0, %vector.ph448 ], [ %index.next456, %vector.body450 ] ; 2 uses
  %i.ib = sub i64 %i.hx, %index451                ; 2 uses
  %i.ic = getelementptr [8 x i8], ptr %i.b, i64 %i.ib ; 2 uses
  %i.id = getelementptr i8, ptr %i.ic, i64 -24
  %i.ie = getelementptr i8, ptr %i.ic, i64 -40
  %wide.load452 = load <2 x double>, ptr %i.id, align 8, !tbaa !18
  %wide.load453 = load <2 x double>, ptr %i.ie, align 8, !tbaa !18
  %i.if = getelementptr [8 x i8], ptr %i.b, i64 %i.ib ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 -16    ; 2 uses
  %i.ih = getelementptr i8, ptr %i.if, i64 -32    ; 2 uses
  %wide.load454 = load <2 x double>, ptr %i.ig, align 8, !tbaa !18
  %wide.load455 = load <2 x double>, ptr %i.ih, align 8, !tbaa !18
  %i.ii = fsub nsz <2 x double> %wide.load452, %wide.load454
  %i.ij = fsub nsz <2 x double> %wide.load453, %wide.load455
  store <2 x double> %i.ii, ptr %i.ig, align 8, !tbaa !18
  store <2 x double> %i.ij, ptr %i.ih, align 8, !tbaa !18
  %index.next456 = add nuw i64 %index451, 4       ; 2 uses
  %i.ik = icmp eq i64 %index.next456, %n.vec449
  br i1 %i.ik, label %middle.block457, label %vector.body450, !llvm.loop !57

middle.block457:                                  ; preds = %vector.body450
  %cmp.n458 = icmp eq i64 %i.hz, %n.vec449
  br i1 %cmp.n458, label %._crit_edge250, label %.lr.ph249.preheader491

.lr.ph249.preheader491:                           ; preds = %.lr.ph249.preheader, %middle.block457
  %indvars.iv304.ph = phi i64 [ %i.hx, %.lr.ph249.preheader ], [ %i.ia, %middle.block457 ]
  br label %.lr.ph249

scalar.ph434:                                     ; preds = %scalar.ph434.preheader, %scalar.ph434
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %scalar.ph434 ], [ %indvars.iv294.ph, %scalar.ph434.preheader ] ; 3 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv294
  %i.im = load double, ptr %i.il, align 8, !tbaa !18
  %i.in = fneg nsz double %i.im
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv294
  store double %i.in, ptr %i.io, align 8, !tbaa !18
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count302
  br i1 %exitcond298.not, label %._crit_edge246, label %scalar.ph434, !llvm.loop !58

._crit_edge246:                                   ; preds = %scalar.ph434, %middle.block443
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv299
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !18
  %i.ir = fdiv nsz double %i.iq, %.0.lcssa
  %i.is = call nsz double @llvm.sqrt.f64(double %i.ir)
  %i.it = fmul nsz double %i.is, %i.fg
  %i.iu = fdiv nsz double %i.it, 4.000000e+03
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv299
  store double %i.iu, ptr %i.iv, align 8, !tbaa !18
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count302
  br i1 %exitcond303.not, label %.preheader, label %.lr.ph245, !llvm.loop !59

.lr.ph249:                                        ; preds = %.lr.ph249.preheader491, %.lr.ph249
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %.lr.ph249 ], [ %indvars.iv304.ph, %.lr.ph249.preheader491 ] ; 3 uses
  %indvars.iv.next305 = add nsw i64 %indvars.iv304, -1 ; 2 uses
  %i.iw = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv304
  %i.ix = getelementptr i8, ptr %i.iw, i64 -16
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !18
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next305 ; 2 uses
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !18
  %i.jb = fsub nsz double %i.iy, %i.ja
  store double %i.jb, ptr %i.iz, align 8, !tbaa !18
  %i.jc = icmp samesign ugt i64 %indvars.iv304, 2
  br i1 %i.jc, label %.lr.ph249, label %._crit_edge250, !llvm.loop !60

._crit_edge250:                                   ; preds = %.lr.ph249, %middle.block457, %.preheader217, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge250, %._crit_edge
  %i.jd = icmp eq i32 %10, 0
  br i1 %i.jd, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.je = sext i32 %3 to i64
  %.not.i170329 = icmp slt i32 %4, %3
  br i1 %.not.i170329, label %estimate_best_order.exit, label %.lr.ph332

.lr.ph332:                                        ; preds = %bb.k
  %i.jf = sext i32 %4 to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %.not.i170.not = icmp sgt i64 %indvars.iv.i169330, %i.je
  br i1 %.not.i170.not, label %bb.m, label %estimate_best_order.exit, !llvm.loop !61

bb.m:                                             ; preds = %.lr.ph332, %bb.l
  %indvars.iv.i169330 = phi i64 [ %i.jf, %.lr.ph332 ], [ %indvars.iv.next.i171, %bb.l ] ; 3 uses
  %indvars.iv.next.i171 = add nsw i64 %indvars.iv.i169330, -1 ; 2 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next.i171
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !18
  %i.ji = fcmp nsz ogt double %i.jh, 1.000000e-01
  br i1 %i.ji, label %.split.loop.exit.i, label %bb.l, !llvm.loop !61

.split.loop.exit.i:                               ; preds = %bb.m
  %i.jj = trunc nsw i64 %indvars.iv.i169330 to i32
  br label %estimate_best_order.exit

estimate_best_order.exit:                         ; preds = %bb.l, %bb.k, %.split.loop.exit.i
  %.0.i = phi i32 [ %i.jj, %.split.loop.exit.i ], [ %3, %bb.k ], [ %3, %bb.l ] ; 11 uses
  %i.jk = add nsw i32 %.0.i, -1
  %i.jl = sext i32 %i.jk to i64                   ; 3 uses
  %i.jm = getelementptr inbounds [256 x i8], ptr %i.c, i64 %i.jl ; 6 uses
  %i.jn = getelementptr inbounds [128 x i8], ptr %6, i64 %i.jl ; 2 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %7, i64 %i.jl ; 2 uses
  %i.jp = add nsw i32 %5, -1
  %notmask.i = shl nsw i32 -1, %i.jp              ; 3 uses
  %.neg.i = add nsw i32 %notmask.i, 1
  %i.jq = xor i32 %notmask.i, -1                  ; 2 uses
  %i.jr = icmp sgt i32 %.0.i, 0                   ; 3 uses
  br i1 %i.jr, label %.lr.ph.preheader.i175, label %._crit_edge.i172

.lr.ph.preheader.i175:                            ; preds = %estimate_best_order.exit
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter506 = and i64 %wide.trip.count.i, 1
  %i.js = icmp eq i32 %.0.i, 1
  br i1 %i.js, label %.lr.ph.i176.epil.preheader, label %.lr.ph.preheader.i175.new

.lr.ph.preheader.i175.new:                        ; preds = %.lr.ph.preheader.i175
  %unroll_iter510 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i176

.lr.ph.i176:                                      ; preds = %.lr.ph.i176, %.lr.ph.preheader.i175.new
  %indvars.iv.i177 = phi i64 [ 0, %.lr.ph.preheader.i175.new ], [ %indvars.iv.next.i178.1, %.lr.ph.i176 ] ; 3 uses
  %.05158.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i175.new ], [ %.051..i.1, %.lr.ph.i176 ] ; 2 uses
  %niter511 = phi i64 [ 0, %.lr.ph.preheader.i175.new ], [ %niter511.next.1, %.lr.ph.i176 ]
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv.i177
  %i.ju = load double, ptr %i.jt, align 16, !tbaa !18
  %i.jv = call nsz double @llvm.fabs.f64(double %i.ju) ; 2 uses
  %i.jw = fcmp nsz ogt double %.05158.i, %i.jv
  %.051..i = select nsz i1 %i.jw, double %.05158.i, double %i.jv ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv.i177
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !18
  %i.ka = call nsz double @llvm.fabs.f64(double %i.jz) ; 2 uses
  %i.kb = fcmp nsz ogt double %.051..i, %i.ka
  %.051..i.1 = select nsz i1 %i.kb, double %.051..i, double %i.ka ; 3 uses
  %indvars.iv.next.i178.1 = add nuw nsw i64 %indvars.iv.i177, 2 ; 2 uses
  %niter511.next.1 = add i64 %niter511, 2         ; 2 uses
  %niter511.ncmp.1 = icmp eq i64 %niter511.next.1, %unroll_iter510
  br i1 %niter511.ncmp.1, label %._crit_edge.i172.loopexit.unr-lcssa, label %.lr.ph.i176, !llvm.loop !62

._crit_edge.i172.loopexit.unr-lcssa:              ; preds = %.lr.ph.i176
  %lcmp.mod507.not = icmp eq i64 %xtraiter506, 0
  br i1 %lcmp.mod507.not, label %._crit_edge.i172, label %.lr.ph.i176.epil.preheader

.lr.ph.i176.epil.preheader:                       ; preds = %._crit_edge.i172.loopexit.unr-lcssa, %.lr.ph.preheader.i175
  %indvars.iv.i177.epil.init = phi i64 [ 0, %.lr.ph.preheader.i175 ], [ %indvars.iv.next.i178.1, %._crit_edge.i172.loopexit.unr-lcssa ]
  %.05158.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i175 ], [ %.051..i.1, %._crit_edge.i172.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod509 = trunc i32 %.0.i to i1
  call void @llvm.assume(i1 %lcmp.mod509)
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv.i177.epil.init
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !18
  %i.ke = call nsz double @llvm.fabs.f64(double %i.kd) ; 2 uses
  %i.kf = fcmp nsz ogt double %.05158.i.epil.init, %i.ke
  %.051..i.epil = select nsz i1 %i.kf, double %.05158.i.epil.init, double %i.ke
  br label %._crit_edge.i172

._crit_edge.i172:                                 ; preds = %.lr.ph.i176.epil.preheader, %._crit_edge.i172.loopexit.unr-lcssa, %estimate_best_order.exit
  %.051.lcssa.i = phi double [ 0.000000e+00, %estimate_best_order.exit ], [ %.051..i.1, %._crit_edge.i172.loopexit.unr-lcssa ], [ %.051..i.epil, %.lr.ph.i176.epil.preheader ] ; 4 uses
  %i.kg = shl nuw i32 1, %12
  %i.kh = sitofp nsz i32 %i.kg to double
  %i.ki = fmul nsz double %.051.lcssa.i, %i.kh
  %i.kj = fcmp nsz olt double %i.ki, 1.000000e+00
  br i1 %i.kj, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i172
  %i.kk = uitofp nsz nneg i32 %i.jq to double     ; 3 uses
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i172
  store i32 %13, ptr %i.jo, align 4, !tbaa !25
  %i.kl = sext i32 %.0.i to i64
  %i.km = shl nsw i64 %i.kl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jn, i8 0, i64 %i.km, i1 false)
  br label %quantize_lpc_coefs.exit

bb.o:                                             ; preds = %bb.o, %.preheader.i
  %.0.i173 = phi i32 [ %i.kt, %bb.o ], [ %12, %.preheader.i ] ; 5 uses
  %i.kn = shl nuw i32 1, %.0.i173
  %i.ko = sitofp nsz i32 %i.kn to double          ; 2 uses
  %i.kp = fmul nsz double %.051.lcssa.i, %i.ko
  %i.kq = fcmp nsz ogt double %i.kp, %i.kk
  %i.kr = icmp sgt i32 %.0.i173, %11
  %i.ks = and i1 %i.kr, %i.kq
  %i.kt = add nsw i32 %.0.i173, -1
  br i1 %i.ks, label %bb.o, label %bb.p, !llvm.loop !63

bb.p:                                             ; preds = %bb.o
  %i.ku = icmp eq i32 %.0.i173, 0
  %i.kv = fcmp nsz ogt double %.051.lcssa.i, %i.kk
  %or.cond.i = and i1 %i.kv, %i.ku
end_hunk_0
