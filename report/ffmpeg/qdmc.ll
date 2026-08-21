Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qdmc?download=true
inline.NumInlined: 34
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@qdmc_decode_frame:bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.sm, i32 noundef 24, ptr noundef nonnull @.str.14) #10
  br label %add_tone.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.sn = zext nneg i32 %i.sk to i64
  %i.so = trunc i32 %.1.lcssa.i.i to i8
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.sn ; 5 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 2
  store i8 %i.so, ptr %i.sq, align 2, !tbaa !81
  %i.sr = trunc i32 %.268.lcssa.i.i to i16
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  store i16 %i.sr, ptr %i.ss, align 2, !tbaa !84
  %i.st = trunc nuw nsw i32 %i.sj to i8
  store i8 %i.st, ptr %i.sp, align 2, !tbaa !85
  %i.su = trunc nuw nsw i32 %.013.i.ph.i165.i to i16
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sp, i64 6
  store i16 %i.su, ptr %i.sv, align 2, !tbaa !86
  %i.sw = trunc nuw nsw i32 %i.nh to i8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sp, i64 1
  store i8 %i.sw, ptr %i.sx, align 1, !tbaa !87
  %i.sy = add nuw nsw i32 %i.sk, 1
  store i32 %i.sy, ptr %i.jv, align 4, !tbaa !40
  br label %add_tone.exit.i.i

add_tone.exit.i.i:                                ; preds = %bb.ar, %bb.aq
  br i1 %i.nk, label %bb.as, label %bb.av

bb.as:                                            ; preds = %add_tone.exit.i.i
  %i.sz = load i32, ptr %i.jv, align 4, !tbaa !40 ; 3 uses
  %i.ta = icmp ugt i32 %i.sz, 8191
  br i1 %i.ta, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.tb = load ptr, ptr %i.b, align 16, !tbaa !55
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.tb, i32 noundef 24, ptr noundef nonnull @.str.14) #10
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.tc = zext nneg i32 %i.sz to i64
  %i.td = trunc i32 %.1.lcssa.i.i to i8
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.tc ; 5 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 2
  store i8 %i.td, ptr %i.tf, align 2, !tbaa !81
  %i.tg = trunc i32 %.268.lcssa.i.i to i16
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  store i16 %i.tg, ptr %i.th, align 2, !tbaa !84
  %i.ti = trunc nuw nsw i32 %i.sj to i8
  %i.tj = xor i8 %i.ti, 1
  store i8 %i.tj, ptr %i.te, align 2, !tbaa !85
  %i.tk = trunc i32 %.264.i.i to i16
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 6
  store i16 %i.tk, ptr %i.tl, align 2, !tbaa !86
  %i.tm = trunc i32 %.261.i.i to i8
  %i.tn = getelementptr inbounds nuw i8, ptr %i.te, i64 1
  store i8 %i.tm, ptr %i.tn, align 1, !tbaa !87
  %i.to = add nuw nsw i32 %i.sz, 1
  store i32 %i.to, ptr %i.jv, align 4, !tbaa !40
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %add_tone.exit.i.i, %bb.ao
  %i.tp = add nsw i32 %.268.lcssa.i.i, 1
  %.val94.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @vtable, i64 72), align 8 ; 2 uses
  %.val95.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vtable, i64 80), align 16 ; 2 uses
  %i.tq = call fastcc i32 @qdmc_get_vlc(ptr noundef nonnull %4, i32 %.val94.i.i, ptr %.val95.i.i, i32 noundef 1) ; 2 uses
  %i.tr = icmp slt i32 %i.tq, 0
  br i1 %i.tr, label %.loopexit, label %bb.x

qdmc_get_vlc.exit.i.i:                            ; preds = %._crit_edge.i155.i
  %indvars.iv.next.i156.i = add nuw nsw i64 %indvars.iv.i152.i, 1 ; 2 uses
  %exitcond.not.i157.i = icmp eq i64 %indvars.iv.next.i156.i, 5
  br i1 %exitcond.not.i157.i, label %read_wave_data.exit.preheader.i, label %bb.w, !llvm.loop !88

read_wave_data.exit.preheader.i:                  ; preds = %qdmc_get_vlc.exit.i.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.b, i64 329028 ; 5 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.b, i64 328408
  %i.tu = getelementptr inbounds nuw i8, ptr %i.b, i64 328404 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.b, i64 262830
  %i.tw = getelementptr inbounds nuw i8, ptr %i.b, i64 328384
  %i.tx = getelementptr inbounds nuw i8, ptr %i.b, i64 591172 ; 9 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.tz = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ua = getelementptr i8, ptr %i.b, i64 623940  ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.b, i64 918864 ; 2 uses
  %i.uc = getelementptr i8, ptr %i.b, <4 x i64> <i64 918880, i64 918884, i64 918880, i64 918880> ; 2 uses
  %i.ud = getelementptr i8, ptr %i.b, i64 918880  ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.b, i64 935272
  %i.uf = getelementptr inbounds nuw i8, ptr %i.b, i64 935264
  %i.ug = getelementptr i8, ptr %i.b, i64 927072  ; 3 uses
  %scevgep167 = getelementptr i8, ptr %i.b, i64 922972
  %scevgep183 = getelementptr i8, ptr %i.b, i64 914780
  %scevgep185 = getelementptr i8, ptr %i.b, i64 918880
  %scevgep187 = getelementptr i8, ptr %i.b, i64 914780
  %scevgep189 = getelementptr i8, ptr %i.b, i64 918884 ; 4 uses
  %scevgep190 = getelementptr i8, ptr %i.b, i64 914784
  %scevgep192 = getelementptr i8, ptr %i.b, i64 918884
  %scevgep194 = getelementptr i8, ptr %i.b, i64 914784
  %scevgep196 = getelementptr i8, ptr %i.b, i64 460100
  %scevgep198 = getelementptr i8, ptr %i.b, i64 394564
  %scevgep200 = getelementptr i8, ptr %i.b, i64 329028
  %scevgep202 = getelementptr i8, ptr %i.b, i64 263492
  %scevgep274 = getelementptr i8, ptr %i.b, i64 591172
  %scevgep276 = getelementptr i8, ptr %i.b, i64 591176
  %scevgep301 = getelementptr i8, ptr %i.b, i64 591172
  %scevgep303 = getelementptr i8, ptr %i.b, i64 591176
  %scevgep305 = getelementptr i8, ptr %i.b, i64 591176
  %scevgep307 = getelementptr i8, ptr %i.b, i64 591180
  %scevgep309 = getelementptr i8, ptr %i.b, i64 591180
  %scevgep311 = getelementptr i8, ptr %i.b, i64 591184
  %scevgep313 = getelementptr i8, ptr %i.b, i64 591184
  %scevgep315 = getelementptr i8, ptr %i.b, i64 591188
  %i.uh = shufflevector <4 x ptr> %i.uc, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  br label %.preheader192.i

.preheader192.i:                                  ; preds = %read_wave_data.exit.i, %read_wave_data.exit.preheader.i
  %.0131240.i = phi i32 [ 0, %read_wave_data.exit.preheader.i ], [ %i.asn, %read_wave_data.exit.i ] ; 10 uses
  %.0137239.i = phi ptr [ %i.z, %read_wave_data.exit.preheader.i ], [ %i.ard, %read_wave_data.exit.i ] ; 3 uses
  %i.ui = load i32, ptr %i.bv, align 16, !tbaa !35 ; 5 uses
  %i.uj = icmp sgt i32 %i.ui, 0                   ; 2 uses
  br i1 %i.uj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader192.i
  %i.uk = load i32, ptr %i.br, align 8, !tbaa !73
  %i.ul = load i32, ptr %i.jj, align 4, !tbaa !47 ; 6 uses
  %i.um = mul nsw i32 %i.ul, %.0131240.i
  %i.un = add nsw i32 %i.um, %i.uk
  %i.uo = sext i32 %i.un to i64                   ; 2 uses
  %i.up = shl nsw i32 %i.ul, 2
  %i.uq = sext i32 %i.up to i64
  %i.ur = load i32, ptr %i.ty, align 4, !tbaa !48 ; 3 uses
  %.not64.i.i = icmp eq i32 %i.ur, 6
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr inbounds i8, ptr @noise_bands_size, i64 %i.us
  %i.uu = mul nsw i32 %i.ur, 21
  %i.uv = lshr i32 %.0131240.i, 1
  %i.uw = zext nneg i32 %i.uv to i64
  %invariant.gep.i = getelementptr i8, ptr %i.tz, i64 %i.uw
  %i.ux = sext i32 %i.uu to i64
  %invariant.gep78.i.i = getelementptr [2 x i8], ptr @qdmc_nodes, i64 %i.ux
  %i.uy = icmp sgt i32 %i.ul, 3
  %i.uz = add nsw i32 %i.ul, -1
  %wide.trip.count69.i.i = zext nneg i32 %i.uz to i64
  %wide.trip.count.i = zext nneg i32 %i.ui to i64
  br label %bb.aw

bb.aw:                                            ; preds = %add_noise.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %add_noise.exit.i ] ; 3 uses
  %i.va = getelementptr [65536 x i8], ptr %i.ts, i64 %indvars.iv.i ; 2 uses
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.uo ; 3 uses
  %i.vc = getelementptr i8, ptr %i.va, i64 131072
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.uo ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.tx, i8 0, i64 %i.uq, i1 false)
  br i1 %.not64.i.i, label %._crit_edge.i171.i, label %.lr.ph.i167.i

.lr.ph.i167.i:                                    ; preds = %bb.aw
  %i.ve = load i8, ptr %i.ut, align 1, !tbaa !32
  %gep.i = getelementptr [323 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.vf = tail call i8 @llvm.umax.i8(i8 %i.ve, i8 1)
  %wide.trip.count.i168.i = zext i8 %i.vf to i64
  br label %bb.ax

bb.ax:                                            ; preds = %lin_calc.exit.i.i, %.lr.ph.i167.i
  %indvars.iv.i169.i = phi i64 [ 0, %.lr.ph.i167.i ], [ %indvars.iv.next.i173.i, %lin_calc.exit.i.i ] ; 6 uses
  %i.vg = shl nuw nsw i64 %indvars.iv.i169.i, 10  ; 4 uses
  %i.vh = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep317 = getelementptr i8, ptr %i.vh, i64 623944 ; 5 uses
  %i.vi = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep319 = getelementptr i8, ptr %i.vi, i64 623948 ; 5 uses
  %i.vj = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep321 = getelementptr i8, ptr %i.vj, i64 623952 ; 5 uses
  %i.vk = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep323 = getelementptr i8, ptr %i.vk, i64 623956
  %i.vl = shl nuw nsw i64 %indvars.iv.i169.i, 10
  %i.vm = getelementptr i8, ptr %i.b, i64 %i.vl
  %scevgep278 = getelementptr i8, ptr %i.vm, i64 623944
  %gep79.i.i = getelementptr [2 x i8], ptr %invariant.gep78.i.i, i64 %indvars.iv.i169.i ; 2 uses
  %i.vn = load i16, ptr %gep79.i.i, align 2, !tbaa !89 ; 2 uses
  %i.vo = zext i16 %i.vn to i32                   ; 5 uses
  %.not.i170.i = icmp sgt i32 %i.ul, %i.vo
  br i1 %.not.i170.i, label %bb.ay, label %._crit_edge.i171.i

bb.ay:                                            ; preds = %bb.ax
  %gep.i.i = getelementptr [17 x i8], ptr %gep.i, i64 %indvars.iv.i169.i
  %i.vp = load i8, ptr %gep.i.i, align 1, !tbaa !32 ; 2 uses
  %.not57.i.i = icmp eq i8 %i.vp, 0
  br i1 %.not57.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.vq = and i8 %i.vp, 63
  %i.vr = zext nneg i8 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr @amplitude_tab, i64 %i.vr
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !29
  %i.vu = fmul nsz float %i.vt, 5.000000e-01
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.vv = phi float [ %i.vu, %bb.az ], [ 0.000000e+00, %bb.ay ] ; 7 uses
  %i.vw = getelementptr i8, ptr %gep79.i.i, i64 4
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !89
  %i.vy = zext i16 %i.vx to i32
  %i.vz = tail call i32 @llvm.umin.i32(i32 %i.ul, i32 %i.vy) ; 3 uses
  %i.wa = sub nsw i32 %i.vz, %i.vo                ; 5 uses
  %i.wb = and i32 %i.wa, 65532                    ; 11 uses
  %i.wc = shl nuw nsw i64 %indvars.iv.i169.i, 8   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.wb, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ba
  %i.wd = getelementptr [4 x i8], ptr %i.ua, i64 %i.wc ; 11 uses
  %i.we = zext i16 %i.vn to i64                   ; 5 uses
  %i.wf = add nsw i32 %i.wb, -4                   ; 2 uses
  %i.wg = lshr exact i32 %i.wf, 2
  %narrow = add nuw nsw i32 %i.wg, 1
  %i.wh = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check413 = icmp ult i32 %i.wf, 60
  br i1 %min.iters.check413, label %scalar.ph412.preheader, label %vector.memcheck300

vector.memcheck300:                               ; preds = %.lr.ph.i.i.i
  %i.wi = shl nuw nsw i64 %i.we, 2                ; 5 uses
  %scevgep302 = getelementptr i8, ptr %scevgep301, i64 %i.wi ; 7 uses
  %i.wj = add nsw i32 %i.wb, -4
  %i.wk = lshr exact i32 %i.wj, 2
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = shl nuw nsw i64 %i.wl, 4                ; 5 uses
  %i.wn = add nuw nsw i64 %i.wm, %i.wi            ; 4 uses
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.wn ; 7 uses
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.wi ; 7 uses
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.wn ; 7 uses
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.wi ; 7 uses
  %scevgep312 = getelementptr i8, ptr %scevgep311, i64 %i.wn ; 7 uses
  %scevgep314 = getelementptr i8, ptr %scevgep313, i64 %i.wi ; 7 uses
  %scevgep316 = getelementptr i8, ptr %scevgep315, i64 %i.wn ; 7 uses
  %scevgep318 = getelementptr i8, ptr %scevgep317, i64 %i.wm ; 4 uses
  %scevgep320 = getelementptr i8, ptr %scevgep319, i64 %i.wm ; 4 uses
  %scevgep322 = getelementptr i8, ptr %scevgep321, i64 %i.wm ; 4 uses
  %scevgep324 = getelementptr i8, ptr %scevgep323, i64 %i.wm ; 4 uses
  %bound0325 = icmp ult ptr %scevgep302, %scevgep308
  %bound1326 = icmp ult ptr %scevgep306, %scevgep304
  %found.conflict327 = and i1 %bound0325, %bound1326
  %bound0328 = icmp ult ptr %scevgep302, %scevgep312
  %bound1329 = icmp ult ptr %scevgep310, %scevgep304
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx331 = or i1 %found.conflict327, %found.conflict330
  %bound0332 = icmp ult ptr %scevgep302, %scevgep316
  %bound1333 = icmp ult ptr %scevgep314, %scevgep304
  %found.conflict334 = and i1 %bound0332, %bound1333
  %conflict.rdx335 = or i1 %conflict.rdx331, %found.conflict334
  %bound0336 = icmp ult ptr %scevgep302, %scevgep318
  %bound1337 = icmp ult ptr %i.wd, %scevgep304
  %found.conflict338 = and i1 %bound0336, %bound1337
  %conflict.rdx339 = or i1 %conflict.rdx335, %found.conflict338
  %bound0340 = icmp ult ptr %scevgep302, %scevgep320
  %bound1341 = icmp ult ptr %scevgep317, %scevgep304
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx343 = or i1 %conflict.rdx339, %found.conflict342
  %bound0344 = icmp ult ptr %scevgep302, %scevgep322
  %bound1345 = icmp ult ptr %scevgep319, %scevgep304
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %conflict.rdx343, %found.conflict346
  %bound0348 = icmp ult ptr %scevgep302, %scevgep324
  %bound1349 = icmp ult ptr %scevgep321, %scevgep304
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  %bound0352 = icmp ult ptr %scevgep306, %scevgep312
  %bound1353 = icmp ult ptr %scevgep310, %scevgep308
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  %bound0356 = icmp ult ptr %scevgep306, %scevgep316
  %bound1357 = icmp ult ptr %scevgep314, %scevgep308
  %found.conflict358 = and i1 %bound0356, %bound1357
  %conflict.rdx359 = or i1 %conflict.rdx355, %found.conflict358
  %bound0360 = icmp ult ptr %scevgep306, %scevgep318
  %bound1361 = icmp ult ptr %i.wd, %scevgep308
  %found.conflict362 = and i1 %bound0360, %bound1361
  %conflict.rdx363 = or i1 %conflict.rdx359, %found.conflict362
  %bound0364 = icmp ult ptr %scevgep306, %scevgep320
  %bound1365 = icmp ult ptr %scevgep317, %scevgep308
  %found.conflict366 = and i1 %bound0364, %bound1365
  %conflict.rdx367 = or i1 %conflict.rdx363, %found.conflict366
  %bound0368 = icmp ult ptr %scevgep306, %scevgep322
  %bound1369 = icmp ult ptr %scevgep319, %scevgep308
  %found.conflict370 = and i1 %bound0368, %bound1369
  %conflict.rdx371 = or i1 %conflict.rdx367, %found.conflict370
  %bound0372 = icmp ult ptr %scevgep306, %scevgep324
  %bound1373 = icmp ult ptr %scevgep321, %scevgep308
  %found.conflict374 = and i1 %bound0372, %bound1373
  %conflict.rdx375 = or i1 %conflict.rdx371, %found.conflict374
  %bound0376 = icmp ult ptr %scevgep310, %scevgep316
  %bound1377 = icmp ult ptr %scevgep314, %scevgep312
  %found.conflict378 = and i1 %bound0376, %bound1377
  %conflict.rdx379 = or i1 %conflict.rdx375, %found.conflict378
  %bound0380 = icmp ult ptr %scevgep310, %scevgep318
  %bound1381 = icmp ult ptr %i.wd, %scevgep312
  %found.conflict382 = and i1 %bound0380, %bound1381
  %conflict.rdx383 = or i1 %conflict.rdx379, %found.conflict382
  %bound0384 = icmp ult ptr %scevgep310, %scevgep320
  %bound1385 = icmp ult ptr %scevgep317, %scevgep312
  %found.conflict386 = and i1 %bound0384, %bound1385
  %conflict.rdx387 = or i1 %conflict.rdx383, %found.conflict386
  %bound0388 = icmp ult ptr %scevgep310, %scevgep322
  %bound1389 = icmp ult ptr %scevgep319, %scevgep312
  %found.conflict390 = and i1 %bound0388, %bound1389
  %conflict.rdx391 = or i1 %conflict.rdx387, %found.conflict390
  %bound0392 = icmp ult ptr %scevgep310, %scevgep324
  %bound1393 = icmp ult ptr %scevgep321, %scevgep312
  %found.conflict394 = and i1 %bound0392, %bound1393
  %conflict.rdx395 = or i1 %conflict.rdx391, %found.conflict394
  %bound0396 = icmp ult ptr %scevgep314, %scevgep318
  %bound1397 = icmp ult ptr %i.wd, %scevgep316
  %found.conflict398 = and i1 %bound0396, %bound1397
  %conflict.rdx399 = or i1 %conflict.rdx395, %found.conflict398
  %bound0400 = icmp ult ptr %scevgep314, %scevgep320
  %bound1401 = icmp ult ptr %scevgep317, %scevgep316
  %found.conflict402 = and i1 %bound0400, %bound1401
  %conflict.rdx403 = or i1 %conflict.rdx399, %found.conflict402
  %bound0404 = icmp ult ptr %scevgep314, %scevgep322
  %bound1405 = icmp ult ptr %scevgep319, %scevgep316
  %found.conflict406 = and i1 %bound0404, %bound1405
  %conflict.rdx407 = or i1 %conflict.rdx403, %found.conflict406
  %bound0408 = icmp ult ptr %scevgep314, %scevgep324
  %bound1409 = icmp ult ptr %scevgep321, %scevgep316
  %found.conflict410 = and i1 %bound0408, %bound1409
  %conflict.rdx411 = or i1 %conflict.rdx407, %found.conflict410
  br i1 %conflict.rdx411, label %scalar.ph412.preheader, label %vector.ph414

vector.ph414:                                     ; preds = %vector.memcheck300
  %n.vec415 = and i64 %i.wh, 2147483644           ; 5 uses
  %i.wo = shl nuw nsw i64 %n.vec415, 2
  %i.wp = add nuw nsw i64 %i.wo, %i.we
  %i.wq = shl nuw nsw i64 %n.vec415, 4
  %i.wr = getelementptr i8, ptr %i.wd, i64 %i.wq
  %i.ws = trunc nuw nsw i64 %n.vec415 to i32
  %i.wt = shl i32 %i.ws, 2
  %broadcast.splatinsert416 = insertelement <4 x float> poison, float %i.vv, i64 0 ; 2 uses
  %i.wu = shufflevector <4 x float> %broadcast.splatinsert416, <4 x float> poison, <8 x i32> zeroinitializer
  %i.wv = shufflevector <4 x float> %broadcast.splatinsert416, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %vector.ph414
  %index419 = phi i64 [ 0, %vector.ph414 ], [ %index.next425, %vector.body418 ] ; 3 uses
  %i.ww = shl nuw i64 %index419, 2
  %i.wx = add nuw i64 %i.ww, %i.we                ; 4 uses
  %i.wy = shl i64 %index419, 4                    ; 4 uses
  %next.gep420 = getelementptr i8, ptr %i.wd, i64 %i.wy ; 4 uses
  %i.wz = getelementptr i8, ptr %i.wd, i64 %i.wy  ; 4 uses
  %next.gep421 = getelementptr i8, ptr %i.wz, i64 16
  %i.xa = getelementptr i8, ptr %i.wd, i64 %i.wy  ; 4 uses
  %next.gep422 = getelementptr i8, ptr %i.xa, i64 32
  %i.xb = getelementptr i8, ptr %i.wd, i64 %i.wy  ; 4 uses
  %next.gep423 = getelementptr i8, ptr %i.xb, i64 48
  %i.xc = load float, ptr %next.gep420, align 4, !tbaa !29, !alias.scope !90
  %i.xd = load float, ptr %next.gep421, align 4, !tbaa !29, !alias.scope !90
  %i.xe = load float, ptr %next.gep422, align 4, !tbaa !29, !alias.scope !90
  %i.xf = load float, ptr %next.gep423, align 4, !tbaa !29, !alias.scope !90
  %i.xg = insertelement <4 x float> poison, float %i.xc, i64 0
  %i.xh = insertelement <4 x float> %i.xg, float %i.xd, i64 1
  %i.xi = insertelement <4 x float> %i.xh, float %i.xe, i64 2
  %i.xj = insertelement <4 x float> %i.xi, float %i.xf, i64 3
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.wx ; 5 uses
  %i.xl = getelementptr [4 x i8], ptr %i.tx, i64 %i.wx ; 4 uses
  %i.xm = getelementptr i8, ptr %i.xl, i64 16
  %i.xn = getelementptr [4 x i8], ptr %i.tx, i64 %i.wx ; 4 uses
  %i.xo = getelementptr i8, ptr %i.xn, i64 32
  %i.xp = getelementptr [4 x i8], ptr %i.tx, i64 %i.wx ; 4 uses
  %i.xq = getelementptr i8, ptr %i.xp, i64 48
  %i.xr = load float, ptr %i.xk, align 4, !tbaa !29, !alias.scope !93, !noalias !95
  %i.xs = load float, ptr %i.xm, align 4, !tbaa !29, !alias.scope !93, !noalias !95
  %i.xt = load float, ptr %i.xo, align 4, !tbaa !29, !alias.scope !93, !noalias !95
  %i.xu = load float, ptr %i.xq, align 4, !tbaa !29, !alias.scope !93, !noalias !95
  %i.xv = insertelement <4 x float> poison, float %i.xr, i64 0
  %i.xw = insertelement <4 x float> %i.xv, float %i.xs, i64 1
  %i.xx = insertelement <4 x float> %i.xw, float %i.xt, i64 2
  %i.xy = insertelement <4 x float> %i.xx, float %i.xu, i64 3
  %i.xz = getelementptr inbounds nuw i8, ptr %next.gep420, i64 4
  %i.ya = getelementptr i8, ptr %i.wz, i64 20
  %i.yb = getelementptr i8, ptr %i.xa, i64 36
  %i.yc = getelementptr i8, ptr %i.xb, i64 52
  %i.yd = load float, ptr %i.xz, align 4, !tbaa !29, !alias.scope !102
  %i.ye = load float, ptr %i.ya, align 4, !tbaa !29, !alias.scope !102
  %i.yf = load float, ptr %i.yb, align 4, !tbaa !29, !alias.scope !102
  %i.yg = load float, ptr %i.yc, align 4, !tbaa !29, !alias.scope !102
  %i.yh = insertelement <4 x float> poison, float %i.yd, i64 0
  %i.yi = insertelement <4 x float> %i.yh, float %i.ye, i64 1
  %i.yj = insertelement <4 x float> %i.yi, float %i.yf, i64 2
  %i.yk = insertelement <4 x float> %i.yj, float %i.yg, i64 3
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xk, i64 4
  %i.ym = getelementptr i8, ptr %i.xl, i64 20
  %i.yn = getelementptr i8, ptr %i.xn, i64 36
  %i.yo = getelementptr i8, ptr %i.xp, i64 52
  %i.yp = load float, ptr %i.yl, align 4, !tbaa !29, !alias.scope !103, !noalias !104
  %i.yq = load float, ptr %i.ym, align 4, !tbaa !29, !alias.scope !103, !noalias !104
  %i.yr = load float, ptr %i.yn, align 4, !tbaa !29, !alias.scope !103, !noalias !104
  %i.ys = load float, ptr %i.yo, align 4, !tbaa !29, !alias.scope !103, !noalias !104
  %i.yt = insertelement <4 x float> poison, float %i.yp, i64 0
  %i.yu = insertelement <4 x float> %i.yt, float %i.yq, i64 1
  %i.yv = insertelement <4 x float> %i.yu, float %i.yr, i64 2
  %i.yw = insertelement <4 x float> %i.yv, float %i.ys, i64 3
  %i.yx = getelementptr inbounds nuw i8, ptr %next.gep420, i64 8
  %i.yy = getelementptr i8, ptr %i.wz, i64 24
  %i.yz = getelementptr i8, ptr %i.xa, i64 40
  %i.za = getelementptr i8, ptr %i.xb, i64 56
  %i.zb = load float, ptr %i.yx, align 4, !tbaa !29, !alias.scope !105
  %i.zc = load float, ptr %i.yy, align 4, !tbaa !29, !alias.scope !105
  %i.zd = load float, ptr %i.yz, align 4, !tbaa !29, !alias.scope !105
  %i.ze = load float, ptr %i.za, align 4, !tbaa !29, !alias.scope !105
  %i.zf = insertelement <4 x float> poison, float %i.zb, i64 0
  %i.zg = insertelement <4 x float> %i.zf, float %i.zc, i64 1
  %i.zh = insertelement <4 x float> %i.zg, float %i.zd, i64 2
  %i.zi = insertelement <4 x float> %i.zh, float %i.ze, i64 3
  %i.zj = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.zk = getelementptr i8, ptr %i.xl, i64 24
  %i.zl = getelementptr i8, ptr %i.xn, i64 40
  %i.zm = getelementptr i8, ptr %i.xp, i64 56
  %i.zn = load float, ptr %i.zj, align 4, !tbaa !29, !alias.scope !106, !noalias !107
  %i.zo = load float, ptr %i.zk, align 4, !tbaa !29, !alias.scope !106, !noalias !107
  %i.zp = load float, ptr %i.zl, align 4, !tbaa !29, !alias.scope !106, !noalias !107
  %i.zq = load float, ptr %i.zm, align 4, !tbaa !29, !alias.scope !106, !noalias !107
  %i.zr = insertelement <4 x float> poison, float %i.zn, i64 0
  %i.zs = insertelement <4 x float> %i.zr, float %i.zo, i64 1
  %i.zt = insertelement <4 x float> %i.zs, float %i.zp, i64 2
  %i.zu = insertelement <4 x float> %i.zt, float %i.zq, i64 3
  %i.zv = getelementptr inbounds nuw i8, ptr %next.gep420, i64 12
  %i.zw = getelementptr i8, ptr %i.wz, i64 28
  %i.zx = getelementptr i8, ptr %i.xa, i64 44
  %i.zy = getelementptr i8, ptr %i.xb, i64 60
  %i.zz = load float, ptr %i.zv, align 4, !tbaa !29, !alias.scope !108
  %i.aaa = load float, ptr %i.zw, align 4, !tbaa !29, !alias.scope !108
  %i.aab = load float, ptr %i.zx, align 4, !tbaa !29, !alias.scope !108
  %i.aac = load float, ptr %i.zy, align 4, !tbaa !29, !alias.scope !108
  %i.aad = insertelement <4 x float> poison, float %i.zz, i64 0
  %i.aae = insertelement <4 x float> %i.aad, float %i.aaa, i64 1
  %i.aaf = insertelement <4 x float> %i.aae, float %i.aab, i64 2
  %i.aag = insertelement <4 x float> %i.aaf, float %i.aac, i64 3
  %i.aah = getelementptr inbounds nuw i8, ptr %i.xk, i64 12
  %i.aai = getelementptr i8, ptr %i.xl, i64 28
  %i.aaj = getelementptr i8, ptr %i.xn, i64 44
  %i.aak = getelementptr i8, ptr %i.xp, i64 60
  %i.aal = load float, ptr %i.aah, align 4, !tbaa !29, !alias.scope !109, !noalias !110
  %i.aam = load float, ptr %i.aai, align 4, !tbaa !29, !alias.scope !109, !noalias !110
  %i.aan = load float, ptr %i.aaj, align 4, !tbaa !29, !alias.scope !109, !noalias !110
  %i.aao = load float, ptr %i.aak, align 4, !tbaa !29, !alias.scope !109, !noalias !110
  %i.aap = insertelement <4 x float> poison, float %i.aal, i64 0
  %i.aaq = insertelement <4 x float> %i.aap, float %i.aam, i64 1
  %i.aar = insertelement <4 x float> %i.aaq, float %i.aan, i64 2
  %i.aas = insertelement <4 x float> %i.aar, float %i.aao, i64 3
  %i.aat = shufflevector <4 x float> %i.xj, <4 x float> %i.yk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aau = shufflevector <4 x float> %i.xy, <4 x float> %i.yw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aav = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.wu, <8 x float> %i.aat, <8 x float> %i.aau)
  %i.aaw = shufflevector <4 x float> %i.zi, <4 x float> %i.aag, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aax = shufflevector <4 x float> %i.zu, <4 x float> %i.aas, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aay = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.wv, <8 x float> %i.aaw, <8 x float> %i.aax)
  %interleaved.vec424 = shufflevector <8 x float> %i.aav, <8 x float> %i.aay, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec424, ptr %i.xk, align 4, !tbaa !29
  %index.next425 = add nuw i64 %index419, 4       ; 2 uses
  %i.aaz = icmp eq i64 %index.next425, %n.vec415
  br i1 %i.aaz, label %middle.block426, label %vector.body418, !llvm.loop !111

middle.block426:                                  ; preds = %vector.body418
  %cmp.n427 = icmp eq i64 %n.vec415, %i.wh
  br i1 %cmp.n427, label %._crit_edge.i.i.i, label %scalar.ph412.preheader

scalar.ph412.preheader:                           ; preds = %vector.memcheck300, %.lr.ph.i.i.i, %middle.block426
  %indvars.iv.i.i.i.ph = phi i64 [ %i.we, %vector.memcheck300 ], [ %i.we, %.lr.ph.i.i.i ], [ %i.wp, %middle.block426 ]
  %.056.i.i.i.ph = phi ptr [ %i.wd, %vector.memcheck300 ], [ %i.wd, %.lr.ph.i.i.i ], [ %i.wr, %middle.block426 ]
  %.04854.i.i.i.ph = phi i32 [ 0, %vector.memcheck300 ], [ 0, %.lr.ph.i.i.i ], [ %i.wt, %middle.block426 ]
  br label %scalar.ph412

scalar.ph412:                                     ; preds = %scalar.ph412.preheader, %scalar.ph412
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph412 ], [ %indvars.iv.i.i.i.ph, %scalar.ph412.preheader ] ; 2 uses
  %.056.i.i.i = phi ptr [ %i.abu, %scalar.ph412 ], [ %.056.i.i.i.ph, %scalar.ph412.preheader ] ; 5 uses
  %.04854.i.i.i = phi i32 [ %i.abt, %scalar.ph412 ], [ %.04854.i.i.i.ph, %scalar.ph412.preheader ]
  %i.aba = load float, ptr %.056.i.i.i, align 4, !tbaa !29
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv.i.i.i ; 5 uses
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !29
  %i.abd = tail call nsz float @llvm.fmuladd.f32(float %i.vv, float %i.aba, float %i.abc)
  store float %i.abd, ptr %i.abb, align 4, !tbaa !29
  %i.abe = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 4
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !29
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abb, i64 4 ; 2 uses
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !29
  %i.abi = tail call nsz float @llvm.fmuladd.f32(float %i.vv, float %i.abf, float %i.abh)
  store float %i.abi, ptr %i.abg, align 4, !tbaa !29
  %i.abj = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 8
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !29
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abb, i64 8 ; 2 uses
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !29
  %i.abn = tail call nsz float @llvm.fmuladd.f32(float %i.vv, float %i.abk, float %i.abm)
  store float %i.abn, ptr %i.abl, align 4, !tbaa !29
  %i.abo = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 12
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !29
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abb, i64 12 ; 2 uses
  %i.abr = load float, ptr %i.abq, align 4, !tbaa !29
  %i.abs = tail call nsz float @llvm.fmuladd.f32(float %i.vv, float %i.abp, float %i.abr)
  store float %i.abs, ptr %i.abq, align 4, !tbaa !29
  %i.abt = add nuw nsw i32 %.04854.i.i.i, 4       ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 4
  %i.abu = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 16
  %i.abv = icmp samesign ult i32 %i.abt, %i.wb
  br i1 %i.abv, label %scalar.ph412, label %._crit_edge.i.i.i, !llvm.loop !112

._crit_edge.i.i.i:                                ; preds = %scalar.ph412, %middle.block426, %bb.ba
  %i.abw = icmp slt i32 %i.wb, %i.wa
  br i1 %i.abw, label %.lr.ph61.i.i.i, label %lin_calc.exit.i.i

.lr.ph61.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.abx = zext nneg i32 %i.wb to i64
  %i.aby = getelementptr [4 x i8], ptr %i.ua, i64 %i.abx
  %i.abz = getelementptr [4 x i8], ptr %i.aby, i64 %i.wc ; 5 uses
  %i.aca = add nuw nsw i32 %i.wb, %i.vo
  %i.acb = zext nneg i32 %i.aca to i64            ; 5 uses
  %5 = and i32 %i.wa, 65532
  %i.acc = xor i32 %i.vo, -1
  %i.acd = add nsw i32 %i.vz, %i.acc
  %i.ace = sub nsw i32 %i.acd, %5                 ; 2 uses
  %i.acf = zext i32 %i.ace to i64
  %i.acg = add nuw nsw i64 %i.acf, 1              ; 2 uses
  %min.iters.check284 = icmp ult i32 %i.ace, 7
  br i1 %min.iters.check284, label %scalar.ph283.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %.lr.ph61.i.i.i
  %i.ach = shl nuw nsw i64 %i.acb, 2              ; 2 uses
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.ach
  %i.aci = xor i32 %i.vo, -1
  %i.acj = add nsw i32 %i.vz, %i.aci
  %i.ack = sub nsw i32 %i.acj, %i.wb
  %i.acl = zext i32 %i.ack to i64
  %i.acm = shl nuw nsw i64 %i.acl, 2              ; 2 uses
  %i.acn = getelementptr i8, ptr %scevgep276, i64 %i.acm
  %scevgep277 = getelementptr i8, ptr %i.acn, i64 %i.ach
  %i.aco = shl nsw i32 %i.wa, 2
  %i.acp = and i32 %i.aco, 262128
  %i.acq = zext nneg i32 %i.acp to i64
  %i.acr = getelementptr i8, ptr %scevgep278, i64 %i.acm
  %scevgep279 = getelementptr i8, ptr %i.acr, i64 %i.acq
  %bound0280 = icmp ult ptr %scevgep275, %scevgep279
  %bound1281 = icmp ult ptr %i.abz, %scevgep277
  %found.conflict282 = and i1 %bound0280, %bound1281
  br i1 %found.conflict282, label %scalar.ph283.preheader, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck273
  %n.vec286 = and i64 %i.acg, 8589934584          ; 5 uses
  %i.acs = add nuw nsw i64 %n.vec286, %i.acb
  %i.act = shl nuw nsw i64 %n.vec286, 2
  %i.acu = getelementptr i8, ptr %i.abz, i64 %i.act
  %i.acv = trunc i64 %n.vec286 to i32
  %i.acw = add i32 %i.wb, %i.acv
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.vv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.tx, i64 %i.acb
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph285
  %index288 = phi i64 [ 0, %vector.ph285 ], [ %index.next294, %vector.body287 ] ; 3 uses
  %i.acx = shl i64 %index288, 2
  %next.gep289 = getelementptr i8, ptr %i.abz, i64 %i.acx ; 2 uses
  %i.acy = getelementptr i8, ptr %next.gep289, i64 16
  %wide.load290 = load <4 x float>, ptr %next.gep289, align 4, !tbaa !29, !alias.scope !113
  %wide.load291 = load <4 x float>, ptr %i.acy, align 4, !tbaa !29, !alias.scope !113
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index288 ; 3 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load292 = load <4 x float>, ptr %gep, align 4, !tbaa !29, !alias.scope !116, !noalias !113
  %wide.load293 = load <4 x float>, ptr %i.acz, align 4, !tbaa !29, !alias.scope !116, !noalias !113
  %i.ada = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load290, <4 x float> %wide.load292)
  %i.adb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load291, <4 x float> %wide.load293)
  store <4 x float> %i.ada, ptr %gep, align 4, !tbaa !29, !alias.scope !116, !noalias !113
  store <4 x float> %i.adb, ptr %i.acz, align 4, !tbaa !29, !alias.scope !116, !noalias !113
  %index.next294 = add nuw i64 %index288, 8       ; 2 uses
  %i.adc = icmp eq i64 %index.next294, %n.vec286
  br i1 %i.adc, label %middle.block295, label %vector.body287, !llvm.loop !118

middle.block295:                                  ; preds = %vector.body287
  %cmp.n296 = icmp eq i64 %i.acg, %n.vec286
  br i1 %cmp.n296, label %lin_calc.exit.i.i, label %scalar.ph283.preheader

scalar.ph283.preheader:                           ; preds = %vector.memcheck273, %.lr.ph61.i.i.i, %middle.block295
  %indvars.iv64.i.i.i.ph = phi i64 [ %i.acb, %vector.memcheck273 ], [ %i.acb, %.lr.ph61.i.i.i ], [ %i.acs, %middle.block295 ]
  %.159.i.i.i.ph = phi ptr [ %i.abz, %vector.memcheck273 ], [ %i.abz, %.lr.ph61.i.i.i ], [ %i.acu, %middle.block295 ]
  %.14957.i.i.i.ph = phi i32 [ %i.wb, %vector.memcheck273 ], [ %i.wb, %.lr.ph61.i.i.i ], [ %i.acw, %middle.block295 ]
  br label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.preheader, %scalar.ph283
  %indvars.iv64.i.i.i = phi i64 [ %indvars.iv.next65.i.i.i, %scalar.ph283 ], [ %indvars.iv64.i.i.i.ph, %scalar.ph283.preheader ] ; 2 uses
  %.159.i.i.i = phi ptr [ %i.adi, %scalar.ph283 ], [ %.159.i.i.i.ph, %scalar.ph283.preheader ] ; 2 uses
  %.14957.i.i.i = phi i32 [ %i.adh, %scalar.ph283 ], [ %.14957.i.i.i.ph, %scalar.ph283.preheader ]
  %i.add = load float, ptr %.159.i.i.i, align 4, !tbaa !29
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv64.i.i.i ; 2 uses
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !29
  %i.adg = tail call nsz float @llvm.fmuladd.f32(float %i.vv, float %i.add, float %i.adf)
  store float %i.adg, ptr %i.ade, align 4, !tbaa !29
  %i.adh = add nuw nsw i32 %.14957.i.i.i, 1       ; 2 uses
  %indvars.iv.next65.i.i.i = add nuw nsw i64 %indvars.iv64.i.i.i, 1
  %i.adi = getelementptr inbounds nuw i8, ptr %.159.i.i.i, i64 4
  %i.adj = icmp slt i32 %i.adh, %i.wa
  br i1 %i.adj, label %scalar.ph283, label %lin_calc.exit.i.i, !llvm.loop !119

lin_calc.exit.i.i:                                ; preds = %scalar.ph283, %middle.block295, %._crit_edge.i.i.i
  %indvars.iv.next.i173.i = add nuw nsw i64 %indvars.iv.i169.i, 1 ; 2 uses
  %exitcond.not.i174.i = icmp eq i64 %indvars.iv.next.i173.i, %wide.trip.count.i168.i
  br i1 %exitcond.not.i174.i, label %._crit_edge.i171.i, label %bb.ax, !llvm.loop !120

._crit_edge.i171.i:                               ; preds = %lin_calc.exit.i.i, %bb.ax, %bb.aw
  br i1 %i.uy, label %.lr.ph62.i.i, label %add_noise.exit.i

.lr.ph62.i.i:                                     ; preds = %._crit_edge.i171.i
  %.promoted.i.i = load i32, ptr %i.ub, align 16, !tbaa !121
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %.pre.i172.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !29
  %.phi.trans.insert71.i.i = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %.pre72.i.i = load float, ptr %.phi.trans.insert71.i.i, align 4, !tbaa !29
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph62.i.i
  %i.adk = phi float [ %.pre72.i.i, %.lr.ph62.i.i ], [ %i.aem, %bb.bb ]
  %i.adl = phi float [ %.pre.i172.i, %.lr.ph62.i.i ], [ %i.aej, %bb.bb ]
  %indvars.iv66.i.i = phi i64 [ 2, %.lr.ph62.i.i ], [ %indvars.iv.next67.i.i, %bb.bb ] ; 4 uses
  %i.adm = phi i32 [ %.promoted.i.i, %.lr.ph62.i.i ], [ %i.adx, %bb.bb ]
  %i.adn = mul i32 %i.adm, 214013
  %i.ado = add i32 %i.adn, 2531011                ; 2 uses
  %i.adp = and i32 %i.ado, 32767
  %i.adq = add nsw i32 %i.adp, -16384
  %i.adr = sitofp i32 %i.adq to float
  %i.ads = fmul nnan nsz float %i.adr, f0x38000000
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv66.i.i
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !29 ; 2 uses
  %i.adv = fmul nsz float %i.adu, %i.ads          ; 2 uses
  %i.adw = mul i32 %i.ado, 214013
  %i.adx = add i32 %i.adw, 2531011                ; 3 uses
  %i.ady = and i32 %i.adx, 32767
  %i.adz = add nsw i32 %i.ady, -16384
  %i.aea = sitofp i32 %i.adz to float
  %i.aeb = fmul nnan nsz float %i.aea, f0x38000000
  %i.aec = fmul nsz float %i.adu, %i.aeb          ; 2 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv66.i.i
  %i.aee = fadd nsz float %i.adl, %i.adv
  store float %i.aee, ptr %i.aed, align 4, !tbaa !29
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %indvars.iv66.i.i
  %i.aeg = fadd nsz float %i.adk, %i.aec
  store float %i.aeg, ptr %i.aef, align 4, !tbaa !29
  %indvars.iv.next67.i.i = add nuw nsw i64 %indvars.iv66.i.i, 1 ; 4 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv.next67.i.i ; 2 uses
  %i.aei = load float, ptr %i.aeh, align 4, !tbaa !29
  %i.aej = fsub nsz float %i.aei, %i.adv          ; 2 uses
  store float %i.aej, ptr %i.aeh, align 4, !tbaa !29
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %indvars.iv.next67.i.i ; 2 uses
  %i.ael = load float, ptr %i.aek, align 4, !tbaa !29
  %i.aem = fsub nsz float %i.ael, %i.aec          ; 2 uses
  store float %i.aem, ptr %i.aek, align 4, !tbaa !29
  %exitcond70.not.i.i = icmp eq i64 %indvars.iv.next67.i.i, %wide.trip.count69.i.i
  br i1 %exitcond70.not.i.i, label %._crit_edge63.i.i, label %bb.bb, !llvm.loop !122

._crit_edge63.i.i:                                ; preds = %bb.bb
  store i32 %i.adx, ptr %i.ub, align 16, !tbaa !121
  br label %add_noise.exit.i

add_noise.exit.i:                                 ; preds = %._crit_edge63.i.i, %._crit_edge.i171.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.aw, !llvm.loop !123

._crit_edge.i:                                    ; preds = %add_noise.exit.i, %.preheader192.i
  %i.aen = icmp eq i32 %i.ui, 1                   ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %add_wave.exit.i.i, %._crit_edge.i
  %indvars.iv59.i.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next60.i.i, %add_wave.exit.i.i ] ; 6 uses
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv59.i.i ; 2 uses
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !40 ; 3 uses
  %i.aeq = getelementptr inbounds nuw [65536 x i8], ptr %i.jk, i64 %indvars.iv59.i.i
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv59.i.i
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !40 ; 3 uses
  %i.aet = icmp slt i32 %i.aep, %i.aes
  br i1 %i.aet, label %.lr.ph.i176.i, label %add_wave.exit.i.i

.lr.ph.i176.i:                                    ; preds = %bb.bc
  %i.aeu = getelementptr inbounds nuw [124 x i8], ptr %i.tt, i64 %indvars.iv59.i.i
  %i.aev = trunc i64 %indvars.iv59.i.i to i32     ; 3 uses
  %umax.i.i.i = lshr i32 31, %i.aev
  %wide.trip.count.i.i.i = zext nneg i32 %umax.i.i.i to i64
  %i.aew = sext i32 %i.aep to i64
  %wide.trip.count.i177.i = sext i32 %i.aes to i64
  %i.aex = sub i32 4, %i.aev
  %i.aey = add i32 %i.aev, 3
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bg, %.lr.ph.i176.i
  %indvars.iv.i178.i = phi i64 [ %i.aew, %.lr.ph.i176.i ], [ %indvars.iv.next.i183.i, %bb.bg ] ; 3 uses
  %i.aez = getelementptr inbounds [8 x i8], ptr %i.aeq, i64 %indvars.iv.i178.i ; 5 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 2
  %i.afb = load i8, ptr %i.afa, align 2, !tbaa !81
  %i.afc = zext i8 %i.afb to i32                  ; 2 uses
  %i.afd = icmp samesign ult i32 %.0131240.i, %i.afc
  br i1 %i.afd, label %add_wave.exit.loopexit.split.loop.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aez, i64 4
  %i.aff = load i16, ptr %i.afe, align 2, !tbaa !84
  %i.afg = sext i16 %i.aff to i32                 ; 2 uses
  %i.afh = load i8, ptr %i.aez, align 2, !tbaa !85
  %i.afi = zext i8 %i.afh to i64
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aez, i64 6
  %i.afk = load i16, ptr %i.afj, align 2, !tbaa !86
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aez, i64 1
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !87
  %i.afn = zext i8 %i.afm to i32
  %i.afo = and i16 %i.afk, 63
  %i.afp = zext nneg i16 %i.afo to i64
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr @amplitude_tab, i64 %i.afp
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !29
  %i.afs = shl nuw nsw i32 %i.afn, 6
  %i.aft = ashr i32 %i.afg, %i.aex                ; 3 uses
  %i.afu = shl nsw i32 %i.aft, 8
  %reass.sub47 = sub nsw i32 %i.afs, %i.afu
  %i.afv = add nsw i32 %reass.sub47, -128
  %spec.select.i.i.i = select i1 %i.aen, i64 0, i64 %i.afi
end_hunk_0
