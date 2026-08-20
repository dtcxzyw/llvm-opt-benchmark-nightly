inline.NumInlined: 34
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@qdmc_decode_frame:bb.a
  %i.sc = sub nsw i32 %i.nh, %.013.i109.ph.i.i    ; 2 uses
  %i.sd = lshr i32 %i.sc, 28
  %i.se = and i32 %i.sd, 8
  %spec.select.i.i = add nsw i32 %i.se, %i.sc
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ae
  %.264.i.i = phi i32 [ %.163161.i.i, %bb.ae ], [ %i.pt, %bb.an ] ; 2 uses
  %.261.i.i = phi i32 [ %.160162.i.i, %bb.ae ], [ %spec.select.i.i, %bb.an ] ; 2 uses
  %i.sf = ashr i32 %.268.lcssa.i.i, %i.jx
  %i.sg = add nsw i32 %i.sf, 1
  %i.sh = load i32, ptr %i.jj, align 4, !tbaa !47
  %i.si = icmp slt i32 %i.sg, %i.sh
  br i1 %i.si, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.sj = and i32 %.274.i.i, 1                    ; 2 uses
  %i.sk = load i32, ptr %i.jv, align 4, !tbaa !40 ; 3 uses
  %i.sl = icmp ugt i32 %i.sk, 8191
  br i1 %i.sl, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.sm = load ptr, ptr %i.b, align 16, !tbaa !55
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
  %.0131240.i = phi i32 [ 0, %read_wave_data.exit.preheader.i ], [ %i.asm, %read_wave_data.exit.i ] ; 10 uses
  %.0137239.i = phi ptr [ %i.z, %read_wave_data.exit.preheader.i ], [ %i.arc, %read_wave_data.exit.i ] ; 3 uses
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
  %i.vg = shl nuw nsw i64 %indvars.iv.i169.i, 10  ; 5 uses
  %i.vh = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep317 = getelementptr i8, ptr %i.vh, i64 623940 ; 4 uses
  %i.vi = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep318 = getelementptr i8, ptr %i.vi, i64 623944 ; 5 uses
  %i.vj = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep320 = getelementptr i8, ptr %i.vj, i64 623948 ; 5 uses
  %i.vk = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep322 = getelementptr i8, ptr %i.vk, i64 623952 ; 5 uses
  %i.vl = getelementptr i8, ptr %i.b, i64 %i.vg
  %scevgep324 = getelementptr i8, ptr %i.vl, i64 623956
  %i.vm = shl nuw nsw i64 %indvars.iv.i169.i, 10
  %i.vn = getelementptr i8, ptr %i.b, i64 %i.vm
  %scevgep278 = getelementptr i8, ptr %i.vn, i64 623944
  %gep79.i.i = getelementptr [2 x i8], ptr %invariant.gep78.i.i, i64 %indvars.iv.i169.i ; 2 uses
  %i.vo = load i16, ptr %gep79.i.i, align 2, !tbaa !89 ; 2 uses
  %i.vp = zext i16 %i.vo to i32                   ; 5 uses
  %.not.i170.i = icmp sgt i32 %i.ul, %i.vp
  br i1 %.not.i170.i, label %bb.ay, label %._crit_edge.i171.i

bb.ay:                                            ; preds = %bb.ax
  %gep.i.i = getelementptr [17 x i8], ptr %gep.i, i64 %indvars.iv.i169.i
  %i.vq = load i8, ptr %gep.i.i, align 1, !tbaa !32 ; 2 uses
  %.not57.i.i = icmp eq i8 %i.vq, 0
  br i1 %.not57.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.vr = and i8 %i.vq, 63
  %i.vs = zext nneg i8 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr @amplitude_tab, i64 %i.vs
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !29
  %i.vv = fmul nsz float %i.vu, 5.000000e-01
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.vw = phi float [ %i.vv, %bb.az ], [ 0.000000e+00, %bb.ay ] ; 7 uses
  %i.vx = getelementptr i8, ptr %gep79.i.i, i64 4
  %i.vy = load i16, ptr %i.vx, align 2, !tbaa !89
  %i.vz = zext i16 %i.vy to i32
  %i.wa = tail call i32 @llvm.umin.i32(i32 %i.ul, i32 %i.vz) ; 3 uses
  %i.wb = sub nsw i32 %i.wa, %i.vp                ; 5 uses
  %i.wc = and i32 %i.wb, 65532                    ; 11 uses
  %i.wd = shl nuw nsw i64 %indvars.iv.i169.i, 8   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.wc, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ba
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.wd ; 7 uses
  %i.wf = zext i16 %i.vo to i64                   ; 5 uses
  %i.wg = add nsw i32 %i.wc, -4                   ; 2 uses
  %i.wh = lshr exact i32 %i.wg, 2
  %narrow = add nuw nsw i32 %i.wh, 1
  %i.wi = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check414 = icmp ult i32 %i.wg, 60
  br i1 %min.iters.check414, label %scalar.ph413.preheader, label %vector.memcheck300

vector.memcheck300:                               ; preds = %.lr.ph.i.i.i
  %i.wj = shl nuw nsw i64 %i.wf, 2                ; 5 uses
  %scevgep302 = getelementptr i8, ptr %scevgep301, i64 %i.wj ; 7 uses
  %i.wk = add nsw i32 %i.wc, -4
  %i.wl = lshr exact i32 %i.wk, 2
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = shl nuw nsw i64 %i.wm, 4                ; 5 uses
  %i.wo = add nuw nsw i64 %i.wn, %i.wj            ; 4 uses
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.wo ; 7 uses
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.wj ; 7 uses
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.wo ; 7 uses
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.wj ; 7 uses
  %scevgep312 = getelementptr i8, ptr %scevgep311, i64 %i.wo ; 7 uses
  %scevgep314 = getelementptr i8, ptr %scevgep313, i64 %i.wj ; 7 uses
  %scevgep316 = getelementptr i8, ptr %scevgep315, i64 %i.wo ; 7 uses
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.wn ; 4 uses
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.wn ; 4 uses
  %scevgep323 = getelementptr i8, ptr %scevgep322, i64 %i.wn ; 4 uses
  %scevgep325 = getelementptr i8, ptr %scevgep324, i64 %i.wn ; 4 uses
  %bound0326 = icmp ult ptr %scevgep302, %scevgep308
  %bound1327 = icmp ult ptr %scevgep306, %scevgep304
  %found.conflict328 = and i1 %bound0326, %bound1327
  %bound0329 = icmp ult ptr %scevgep302, %scevgep312
  %bound1330 = icmp ult ptr %scevgep310, %scevgep304
  %found.conflict331 = and i1 %bound0329, %bound1330
  %conflict.rdx332 = or i1 %found.conflict328, %found.conflict331
  %bound0333 = icmp ult ptr %scevgep302, %scevgep316
  %bound1334 = icmp ult ptr %scevgep314, %scevgep304
  %found.conflict335 = and i1 %bound0333, %bound1334
  %conflict.rdx336 = or i1 %conflict.rdx332, %found.conflict335
  %bound0337 = icmp ult ptr %scevgep302, %scevgep319
  %bound1338 = icmp ult ptr %scevgep317, %scevgep304
  %found.conflict339 = and i1 %bound0337, %bound1338
  %conflict.rdx340 = or i1 %conflict.rdx336, %found.conflict339
  %bound0341 = icmp ult ptr %scevgep302, %scevgep321
  %bound1342 = icmp ult ptr %scevgep318, %scevgep304
  %found.conflict343 = and i1 %bound0341, %bound1342
  %conflict.rdx344 = or i1 %conflict.rdx340, %found.conflict343
  %bound0345 = icmp ult ptr %scevgep302, %scevgep323
  %bound1346 = icmp ult ptr %scevgep320, %scevgep304
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx348 = or i1 %conflict.rdx344, %found.conflict347
  %bound0349 = icmp ult ptr %scevgep302, %scevgep325
  %bound1350 = icmp ult ptr %scevgep322, %scevgep304
  %found.conflict351 = and i1 %bound0349, %bound1350
  %conflict.rdx352 = or i1 %conflict.rdx348, %found.conflict351
  %bound0353 = icmp ult ptr %scevgep306, %scevgep312
  %bound1354 = icmp ult ptr %scevgep310, %scevgep308
  %found.conflict355 = and i1 %bound0353, %bound1354
  %conflict.rdx356 = or i1 %conflict.rdx352, %found.conflict355
  %bound0357 = icmp ult ptr %scevgep306, %scevgep316
  %bound1358 = icmp ult ptr %scevgep314, %scevgep308
  %found.conflict359 = and i1 %bound0357, %bound1358
  %conflict.rdx360 = or i1 %conflict.rdx356, %found.conflict359
  %bound0361 = icmp ult ptr %scevgep306, %scevgep319
  %bound1362 = icmp ult ptr %scevgep317, %scevgep308
  %found.conflict363 = and i1 %bound0361, %bound1362
  %conflict.rdx364 = or i1 %conflict.rdx360, %found.conflict363
  %bound0365 = icmp ult ptr %scevgep306, %scevgep321
  %bound1366 = icmp ult ptr %scevgep318, %scevgep308
  %found.conflict367 = and i1 %bound0365, %bound1366
  %conflict.rdx368 = or i1 %conflict.rdx364, %found.conflict367
  %bound0369 = icmp ult ptr %scevgep306, %scevgep323
  %bound1370 = icmp ult ptr %scevgep320, %scevgep308
  %found.conflict371 = and i1 %bound0369, %bound1370
  %conflict.rdx372 = or i1 %conflict.rdx368, %found.conflict371
  %bound0373 = icmp ult ptr %scevgep306, %scevgep325
  %bound1374 = icmp ult ptr %scevgep322, %scevgep308
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx376 = or i1 %conflict.rdx372, %found.conflict375
  %bound0377 = icmp ult ptr %scevgep310, %scevgep316
  %bound1378 = icmp ult ptr %scevgep314, %scevgep312
  %found.conflict379 = and i1 %bound0377, %bound1378
  %conflict.rdx380 = or i1 %conflict.rdx376, %found.conflict379
  %bound0381 = icmp ult ptr %scevgep310, %scevgep319
  %bound1382 = icmp ult ptr %scevgep317, %scevgep312
  %found.conflict383 = and i1 %bound0381, %bound1382
  %conflict.rdx384 = or i1 %conflict.rdx380, %found.conflict383
  %bound0385 = icmp ult ptr %scevgep310, %scevgep321
  %bound1386 = icmp ult ptr %scevgep318, %scevgep312
  %found.conflict387 = and i1 %bound0385, %bound1386
  %conflict.rdx388 = or i1 %conflict.rdx384, %found.conflict387
  %bound0389 = icmp ult ptr %scevgep310, %scevgep323
  %bound1390 = icmp ult ptr %scevgep320, %scevgep312
  %found.conflict391 = and i1 %bound0389, %bound1390
  %conflict.rdx392 = or i1 %conflict.rdx388, %found.conflict391
  %bound0393 = icmp ult ptr %scevgep310, %scevgep325
  %bound1394 = icmp ult ptr %scevgep322, %scevgep312
  %found.conflict395 = and i1 %bound0393, %bound1394
  %conflict.rdx396 = or i1 %conflict.rdx392, %found.conflict395
  %bound0397 = icmp ult ptr %scevgep314, %scevgep319
  %bound1398 = icmp ult ptr %scevgep317, %scevgep316
  %found.conflict399 = and i1 %bound0397, %bound1398
  %conflict.rdx400 = or i1 %conflict.rdx396, %found.conflict399
  %bound0401 = icmp ult ptr %scevgep314, %scevgep321
  %bound1402 = icmp ult ptr %scevgep318, %scevgep316
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %conflict.rdx400, %found.conflict403
  %bound0405 = icmp ult ptr %scevgep314, %scevgep323
  %bound1406 = icmp ult ptr %scevgep320, %scevgep316
  %found.conflict407 = and i1 %bound0405, %bound1406
  %conflict.rdx408 = or i1 %conflict.rdx404, %found.conflict407
  %bound0409 = icmp ult ptr %scevgep314, %scevgep325
  %bound1410 = icmp ult ptr %scevgep322, %scevgep316
  %found.conflict411 = and i1 %bound0409, %bound1410
  %conflict.rdx412 = or i1 %conflict.rdx408, %found.conflict411
  br i1 %conflict.rdx412, label %scalar.ph413.preheader, label %vector.ph415

vector.ph415:                                     ; preds = %vector.memcheck300
  %n.vec416 = and i64 %i.wi, 2147483644           ; 5 uses
  %i.wp = shl nuw nsw i64 %n.vec416, 2
  %i.wq = add nuw nsw i64 %i.wp, %i.wf
  %i.wr = shl nuw nsw i64 %n.vec416, 4
  %i.ws = getelementptr i8, ptr %i.we, i64 %i.wr
  %i.wt = trunc nuw nsw i64 %n.vec416 to i32
  %i.wu = shl i32 %i.wt, 2
  %broadcast.splatinsert417 = insertelement <4 x float> poison, float %i.vw, i64 0 ; 2 uses
  %i.wv = shufflevector <4 x float> %broadcast.splatinsert417, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ww = shufflevector <4 x float> %broadcast.splatinsert417, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph415
  %index420 = phi i64 [ 0, %vector.ph415 ], [ %index.next426, %vector.body419 ] ; 3 uses
  %i.wx = shl nuw i64 %index420, 2
  %i.wy = add nuw i64 %i.wx, %i.wf                ; 4 uses
  %i.wz = shl i64 %index420, 4                    ; 4 uses
  %next.gep421 = getelementptr i8, ptr %i.we, i64 %i.wz ; 4 uses
  %i.xa = getelementptr i8, ptr %i.we, i64 %i.wz  ; 4 uses
  %next.gep422 = getelementptr i8, ptr %i.xa, i64 16
  %i.xb = getelementptr i8, ptr %i.we, i64 %i.wz  ; 4 uses
  %next.gep423 = getelementptr i8, ptr %i.xb, i64 32
  %i.xc = getelementptr i8, ptr %i.we, i64 %i.wz  ; 4 uses
  %next.gep424 = getelementptr i8, ptr %i.xc, i64 48
  %i.xd = load float, ptr %next.gep421, align 4, !tbaa !29, !alias.scope !90
  %i.xe = load float, ptr %next.gep422, align 4, !tbaa !29, !alias.scope !90
  %i.xf = load float, ptr %next.gep423, align 4, !tbaa !29, !alias.scope !90
  %i.xg = load float, ptr %next.gep424, align 4, !tbaa !29, !alias.scope !90
  %i.xh = insertelement <4 x float> poison, float %i.xd, i64 0
  %i.xi = insertelement <4 x float> %i.xh, float %i.xe, i64 1
  %i.xj = insertelement <4 x float> %i.xi, float %i.xf, i64 2
  %i.xk = insertelement <4 x float> %i.xj, float %i.xg, i64 3
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.wy ; 5 uses
  %i.xm = getelementptr [4 x i8], ptr %i.tx, i64 %i.wy ; 4 uses
  %i.xn = getelementptr i8, ptr %i.xm, i64 16
  %i.xo = getelementptr [4 x i8], ptr %i.tx, i64 %i.wy ; 4 uses
  %i.xp = getelementptr i8, ptr %i.xo, i64 32
  %i.xq = getelementptr [4 x i8], ptr %i.tx, i64 %i.wy ; 4 uses
  %i.xr = getelementptr i8, ptr %i.xq, i64 48
  %i.xs = load float, ptr %i.xl, align 4, !tbaa !29, !alias.scope !93, !noalias !95
  %i.xt = load float, ptr %i.xn, align 4, !tbaa !29, !alias.scope !93, !noalias !95
  %i.xu = load float, ptr %i.xp, align 4, !tbaa !29, !alias.scope !93, !noalias !95
  %i.xv = load float, ptr %i.xr, align 4, !tbaa !29, !alias.scope !93, !noalias !95
  %i.xw = insertelement <4 x float> poison, float %i.xs, i64 0
  %i.xx = insertelement <4 x float> %i.xw, float %i.xt, i64 1
  %i.xy = insertelement <4 x float> %i.xx, float %i.xu, i64 2
  %i.xz = insertelement <4 x float> %i.xy, float %i.xv, i64 3
  %i.ya = getelementptr inbounds nuw i8, ptr %next.gep421, i64 4
  %i.yb = getelementptr i8, ptr %i.xa, i64 20
  %i.yc = getelementptr i8, ptr %i.xb, i64 36
  %i.yd = getelementptr i8, ptr %i.xc, i64 52
  %i.ye = load float, ptr %i.ya, align 4, !tbaa !29, !alias.scope !102
  %i.yf = load float, ptr %i.yb, align 4, !tbaa !29, !alias.scope !102
  %i.yg = load float, ptr %i.yc, align 4, !tbaa !29, !alias.scope !102
  %i.yh = load float, ptr %i.yd, align 4, !tbaa !29, !alias.scope !102
  %i.yi = insertelement <4 x float> poison, float %i.ye, i64 0
  %i.yj = insertelement <4 x float> %i.yi, float %i.yf, i64 1
  %i.yk = insertelement <4 x float> %i.yj, float %i.yg, i64 2
  %i.yl = insertelement <4 x float> %i.yk, float %i.yh, i64 3
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.yn = getelementptr i8, ptr %i.xm, i64 20
  %i.yo = getelementptr i8, ptr %i.xo, i64 36
  %i.yp = getelementptr i8, ptr %i.xq, i64 52
  %i.yq = load float, ptr %i.ym, align 4, !tbaa !29, !alias.scope !103, !noalias !104
  %i.yr = load float, ptr %i.yn, align 4, !tbaa !29, !alias.scope !103, !noalias !104
  %i.ys = load float, ptr %i.yo, align 4, !tbaa !29, !alias.scope !103, !noalias !104
  %i.yt = load float, ptr %i.yp, align 4, !tbaa !29, !alias.scope !103, !noalias !104
  %i.yu = insertelement <4 x float> poison, float %i.yq, i64 0
  %i.yv = insertelement <4 x float> %i.yu, float %i.yr, i64 1
  %i.yw = insertelement <4 x float> %i.yv, float %i.ys, i64 2
  %i.yx = insertelement <4 x float> %i.yw, float %i.yt, i64 3
  %i.yy = getelementptr inbounds nuw i8, ptr %next.gep421, i64 8
  %i.yz = getelementptr i8, ptr %i.xa, i64 24
  %i.za = getelementptr i8, ptr %i.xb, i64 40
  %i.zb = getelementptr i8, ptr %i.xc, i64 56
  %i.zc = load float, ptr %i.yy, align 4, !tbaa !29, !alias.scope !105
  %i.zd = load float, ptr %i.yz, align 4, !tbaa !29, !alias.scope !105
  %i.ze = load float, ptr %i.za, align 4, !tbaa !29, !alias.scope !105
  %i.zf = load float, ptr %i.zb, align 4, !tbaa !29, !alias.scope !105
  %i.zg = insertelement <4 x float> poison, float %i.zc, i64 0
  %i.zh = insertelement <4 x float> %i.zg, float %i.zd, i64 1
  %i.zi = insertelement <4 x float> %i.zh, float %i.ze, i64 2
  %i.zj = insertelement <4 x float> %i.zi, float %i.zf, i64 3
  %i.zk = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %i.zl = getelementptr i8, ptr %i.xm, i64 24
  %i.zm = getelementptr i8, ptr %i.xo, i64 40
  %i.zn = getelementptr i8, ptr %i.xq, i64 56
  %i.zo = load float, ptr %i.zk, align 4, !tbaa !29, !alias.scope !106, !noalias !107
  %i.zp = load float, ptr %i.zl, align 4, !tbaa !29, !alias.scope !106, !noalias !107
  %i.zq = load float, ptr %i.zm, align 4, !tbaa !29, !alias.scope !106, !noalias !107
  %i.zr = load float, ptr %i.zn, align 4, !tbaa !29, !alias.scope !106, !noalias !107
  %i.zs = insertelement <4 x float> poison, float %i.zo, i64 0
  %i.zt = insertelement <4 x float> %i.zs, float %i.zp, i64 1
  %i.zu = insertelement <4 x float> %i.zt, float %i.zq, i64 2
  %i.zv = insertelement <4 x float> %i.zu, float %i.zr, i64 3
  %i.zw = getelementptr inbounds nuw i8, ptr %next.gep421, i64 12
  %i.zx = getelementptr i8, ptr %i.xa, i64 28
  %i.zy = getelementptr i8, ptr %i.xb, i64 44
  %i.zz = getelementptr i8, ptr %i.xc, i64 60
  %i.aaa = load float, ptr %i.zw, align 4, !tbaa !29, !alias.scope !108
  %i.aab = load float, ptr %i.zx, align 4, !tbaa !29, !alias.scope !108
  %i.aac = load float, ptr %i.zy, align 4, !tbaa !29, !alias.scope !108
  %i.aad = load float, ptr %i.zz, align 4, !tbaa !29, !alias.scope !108
  %i.aae = insertelement <4 x float> poison, float %i.aaa, i64 0
  %i.aaf = insertelement <4 x float> %i.aae, float %i.aab, i64 1
  %i.aag = insertelement <4 x float> %i.aaf, float %i.aac, i64 2
  %i.aah = insertelement <4 x float> %i.aag, float %i.aad, i64 3
  %i.aai = getelementptr inbounds nuw i8, ptr %i.xl, i64 12
  %i.aaj = getelementptr i8, ptr %i.xm, i64 28
  %i.aak = getelementptr i8, ptr %i.xo, i64 44
  %i.aal = getelementptr i8, ptr %i.xq, i64 60
  %i.aam = load float, ptr %i.aai, align 4, !tbaa !29, !alias.scope !109, !noalias !110
  %i.aan = load float, ptr %i.aaj, align 4, !tbaa !29, !alias.scope !109, !noalias !110
  %i.aao = load float, ptr %i.aak, align 4, !tbaa !29, !alias.scope !109, !noalias !110
  %i.aap = load float, ptr %i.aal, align 4, !tbaa !29, !alias.scope !109, !noalias !110
  %i.aaq = insertelement <4 x float> poison, float %i.aam, i64 0
  %i.aar = insertelement <4 x float> %i.aaq, float %i.aan, i64 1
  %i.aas = insertelement <4 x float> %i.aar, float %i.aao, i64 2
  %i.aat = insertelement <4 x float> %i.aas, float %i.aap, i64 3
  %i.aau = shufflevector <4 x float> %i.xk, <4 x float> %i.yl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aav = shufflevector <4 x float> %i.xz, <4 x float> %i.yx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aaw = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.wv, <8 x float> %i.aau, <8 x float> %i.aav)
  %i.aax = shufflevector <4 x float> %i.zj, <4 x float> %i.aah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aay = shufflevector <4 x float> %i.zv, <4 x float> %i.aat, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aaz = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ww, <8 x float> %i.aax, <8 x float> %i.aay)
  %interleaved.vec425 = shufflevector <8 x float> %i.aaw, <8 x float> %i.aaz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec425, ptr %i.xl, align 4, !tbaa !29
  %index.next426 = add nuw i64 %index420, 4       ; 2 uses
  %i.aba = icmp eq i64 %index.next426, %n.vec416
  br i1 %i.aba, label %middle.block427, label %vector.body419, !llvm.loop !111

middle.block427:                                  ; preds = %vector.body419
  %cmp.n428 = icmp eq i64 %n.vec416, %i.wi
  br i1 %cmp.n428, label %._crit_edge.i.i.i, label %scalar.ph413.preheader

scalar.ph413.preheader:                           ; preds = %vector.memcheck300, %.lr.ph.i.i.i, %middle.block427
  %indvars.iv.i.i.i.ph = phi i64 [ %i.wf, %vector.memcheck300 ], [ %i.wf, %.lr.ph.i.i.i ], [ %i.wq, %middle.block427 ]
  %.056.i.i.i.ph = phi ptr [ %i.we, %vector.memcheck300 ], [ %i.we, %.lr.ph.i.i.i ], [ %i.ws, %middle.block427 ]
  %.04854.i.i.i.ph = phi i32 [ 0, %vector.memcheck300 ], [ 0, %.lr.ph.i.i.i ], [ %i.wu, %middle.block427 ]
  br label %scalar.ph413

scalar.ph413:                                     ; preds = %scalar.ph413.preheader, %scalar.ph413
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph413 ], [ %indvars.iv.i.i.i.ph, %scalar.ph413.preheader ] ; 2 uses
  %.056.i.i.i = phi ptr [ %i.abv, %scalar.ph413 ], [ %.056.i.i.i.ph, %scalar.ph413.preheader ] ; 5 uses
  %.04854.i.i.i = phi i32 [ %i.abu, %scalar.ph413 ], [ %.04854.i.i.i.ph, %scalar.ph413.preheader ]
  %i.abb = load float, ptr %.056.i.i.i, align 4, !tbaa !29
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv.i.i.i ; 5 uses
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !29
  %i.abe = tail call nsz float @llvm.fmuladd.f32(float %i.vw, float %i.abb, float %i.abd)
  store float %i.abe, ptr %i.abc, align 4, !tbaa !29
  %i.abf = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 4
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !29
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abc, i64 4 ; 2 uses
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !29
  %i.abj = tail call nsz float @llvm.fmuladd.f32(float %i.vw, float %i.abg, float %i.abi)
  store float %i.abj, ptr %i.abh, align 4, !tbaa !29
  %i.abk = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 8
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !29
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abc, i64 8 ; 2 uses
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !29
  %i.abo = tail call nsz float @llvm.fmuladd.f32(float %i.vw, float %i.abl, float %i.abn)
  store float %i.abo, ptr %i.abm, align 4, !tbaa !29
  %i.abp = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 12
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !29
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abc, i64 12 ; 2 uses
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !29
  %i.abt = tail call nsz float @llvm.fmuladd.f32(float %i.vw, float %i.abq, float %i.abs)
  store float %i.abt, ptr %i.abr, align 4, !tbaa !29
  %i.abu = add nuw nsw i32 %.04854.i.i.i, 4       ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 4
  %i.abv = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 16
  %i.abw = icmp samesign ult i32 %i.abu, %i.wc
  br i1 %i.abw, label %scalar.ph413, label %._crit_edge.i.i.i, !llvm.loop !112

._crit_edge.i.i.i:                                ; preds = %scalar.ph413, %middle.block427, %bb.ba
  %i.abx = icmp slt i32 %i.wc, %i.wb
  br i1 %i.abx, label %.lr.ph61.i.i.i, label %lin_calc.exit.i.i

.lr.ph61.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.aby = zext nneg i32 %i.wc to i64
  %i.abz = getelementptr [4 x i8], ptr %i.ua, i64 %i.aby
  %i.aca = getelementptr [4 x i8], ptr %i.abz, i64 %i.wd ; 5 uses
  %i.acb = add nuw nsw i32 %i.wc, %i.vp
  %i.acc = zext nneg i32 %i.acb to i64            ; 5 uses
  %i.acd = and i32 %i.wb, 65532
  %i.ace = xor i32 %i.vp, -1
  %i.acf = add nsw i32 %i.wa, %i.ace
  %i.acg = sub nsw i32 %i.acf, %i.acd             ; 2 uses
  %i.ach = zext i32 %i.acg to i64
  %i.aci = add nuw nsw i64 %i.ach, 1              ; 2 uses
  %min.iters.check284 = icmp ult i32 %i.acg, 7
  br i1 %min.iters.check284, label %scalar.ph283.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %.lr.ph61.i.i.i
  %i.acj = shl nuw nsw i64 %i.acc, 2              ; 2 uses
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.acj
  %i.ack = xor i32 %i.vp, -1
  %i.acl = add nsw i32 %i.wa, %i.ack
  %i.acm = sub nsw i32 %i.acl, %i.wc
  %i.acn = zext i32 %i.acm to i64
  %i.aco = shl nuw nsw i64 %i.acn, 2              ; 2 uses
  %i.acp = getelementptr i8, ptr %scevgep276, i64 %i.aco
  %scevgep277.a = getelementptr i8, ptr %i.acp, i64 %i.acj
  %5 = shl nsw i32 %i.wb, 2
  %6 = and i32 %5, 262128
  %7 = zext nneg i32 %6 to i64
  %i.acq = getelementptr i8, ptr %scevgep278, i64 %i.aco
  %scevgep279 = getelementptr i8, ptr %i.acq, i64 %7
  %bound0280 = icmp ult ptr %scevgep275, %scevgep279
  %bound1281 = icmp ult ptr %i.aca, %scevgep277.a
  %found.conflict282 = and i1 %bound0280, %bound1281
  br i1 %found.conflict282, label %scalar.ph283.preheader, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck273
  %n.vec286 = and i64 %i.aci, 8589934584          ; 5 uses
  %i.acr = add nuw nsw i64 %n.vec286, %i.acc
  %i.acs = shl nuw nsw i64 %n.vec286, 2
  %i.act = getelementptr i8, ptr %i.aca, i64 %i.acs
  %i.acu = trunc i64 %n.vec286 to i32
  %i.acv = add i32 %i.wc, %i.acu
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.vw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.tx, i64 %i.acc
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph285
  %index288 = phi i64 [ 0, %vector.ph285 ], [ %index.next294, %vector.body287 ] ; 3 uses
  %i.acw = shl i64 %index288, 2
  %next.gep289 = getelementptr i8, ptr %i.aca, i64 %i.acw ; 2 uses
  %i.acx = getelementptr i8, ptr %next.gep289, i64 16
  %wide.load290 = load <4 x float>, ptr %next.gep289, align 4, !tbaa !29, !alias.scope !113
  %wide.load291 = load <4 x float>, ptr %i.acx, align 4, !tbaa !29, !alias.scope !113
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index288 ; 3 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load292 = load <4 x float>, ptr %gep, align 4, !tbaa !29, !alias.scope !116, !noalias !113
  %wide.load293 = load <4 x float>, ptr %i.acy, align 4, !tbaa !29, !alias.scope !116, !noalias !113
  %i.acz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load290, <4 x float> %wide.load292)
  %i.ada = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load291, <4 x float> %wide.load293)
  store <4 x float> %i.acz, ptr %gep, align 4, !tbaa !29, !alias.scope !116, !noalias !113
  store <4 x float> %i.ada, ptr %i.acy, align 4, !tbaa !29, !alias.scope !116, !noalias !113
  %index.next294 = add nuw i64 %index288, 8       ; 2 uses
  %i.adb = icmp eq i64 %index.next294, %n.vec286
  br i1 %i.adb, label %middle.block295, label %vector.body287, !llvm.loop !118

middle.block295:                                  ; preds = %vector.body287
  %cmp.n296 = icmp eq i64 %i.aci, %n.vec286
  br i1 %cmp.n296, label %lin_calc.exit.i.i, label %scalar.ph283.preheader

scalar.ph283.preheader:                           ; preds = %vector.memcheck273, %.lr.ph61.i.i.i, %middle.block295
  %indvars.iv64.i.i.i.ph = phi i64 [ %i.acc, %vector.memcheck273 ], [ %i.acc, %.lr.ph61.i.i.i ], [ %i.acr, %middle.block295 ]
  %.159.i.i.i.ph = phi ptr [ %i.aca, %vector.memcheck273 ], [ %i.aca, %.lr.ph61.i.i.i ], [ %i.act, %middle.block295 ]
  %.14957.i.i.i.ph = phi i32 [ %i.wc, %vector.memcheck273 ], [ %i.wc, %.lr.ph61.i.i.i ], [ %i.acv, %middle.block295 ]
  br label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.preheader, %scalar.ph283
  %indvars.iv64.i.i.i = phi i64 [ %indvars.iv.next65.i.i.i, %scalar.ph283 ], [ %indvars.iv64.i.i.i.ph, %scalar.ph283.preheader ] ; 2 uses
  %.159.i.i.i = phi ptr [ %i.adh, %scalar.ph283 ], [ %.159.i.i.i.ph, %scalar.ph283.preheader ] ; 2 uses
  %.14957.i.i.i = phi i32 [ %i.adg, %scalar.ph283 ], [ %.14957.i.i.i.ph, %scalar.ph283.preheader ]
  %i.adc = load float, ptr %.159.i.i.i, align 4, !tbaa !29
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv64.i.i.i ; 2 uses
  %i.ade = load float, ptr %i.add, align 4, !tbaa !29
  %i.adf = tail call nsz float @llvm.fmuladd.f32(float %i.vw, float %i.adc, float %i.ade)
  store float %i.adf, ptr %i.add, align 4, !tbaa !29
  %i.adg = add nuw nsw i32 %.14957.i.i.i, 1       ; 2 uses
  %indvars.iv.next65.i.i.i = add nuw nsw i64 %indvars.iv64.i.i.i, 1
  %i.adh = getelementptr inbounds nuw i8, ptr %.159.i.i.i, i64 4
  %i.adi = icmp slt i32 %i.adg, %i.wb
  br i1 %i.adi, label %scalar.ph283, label %lin_calc.exit.i.i, !llvm.loop !119

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
  %i.adj = phi float [ %.pre72.i.i, %.lr.ph62.i.i ], [ %i.ael, %bb.bb ]
  %i.adk = phi float [ %.pre.i172.i, %.lr.ph62.i.i ], [ %i.aei, %bb.bb ]
  %indvars.iv66.i.i = phi i64 [ 2, %.lr.ph62.i.i ], [ %indvars.iv.next67.i.i, %bb.bb ] ; 4 uses
  %i.adl = phi i32 [ %.promoted.i.i, %.lr.ph62.i.i ], [ %i.adw, %bb.bb ]
  %i.adm = mul i32 %i.adl, 214013
  %i.adn = add i32 %i.adm, 2531011                ; 2 uses
  %i.ado = and i32 %i.adn, 32767
  %i.adp = add nsw i32 %i.ado, -16384
  %i.adq = sitofp i32 %i.adp to float
  %i.adr = fmul nnan nsz float %i.adq, f0x38000000
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv66.i.i
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !29 ; 2 uses
  %i.adu = fmul nsz float %i.adt, %i.adr          ; 2 uses
  %i.adv = mul i32 %i.adn, 214013
  %i.adw = add i32 %i.adv, 2531011                ; 3 uses
  %i.adx = and i32 %i.adw, 32767
  %i.ady = add nsw i32 %i.adx, -16384
  %i.adz = sitofp i32 %i.ady to float
  %i.aea = fmul nnan nsz float %i.adz, f0x38000000
  %i.aeb = fmul nsz float %i.adt, %i.aea          ; 2 uses
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv66.i.i
  %i.aed = fadd nsz float %i.adk, %i.adu
  store float %i.aed, ptr %i.aec, align 4, !tbaa !29
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %indvars.iv66.i.i
  %i.aef = fadd nsz float %i.adj, %i.aeb
  store float %i.aef, ptr %i.aee, align 4, !tbaa !29
  %indvars.iv.next67.i.i = add nuw nsw i64 %indvars.iv66.i.i, 1 ; 4 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv.next67.i.i ; 2 uses
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !29
  %i.aei = fsub nsz float %i.aeh, %i.adu          ; 2 uses
  store float %i.aei, ptr %i.aeg, align 4, !tbaa !29
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %indvars.iv.next67.i.i ; 2 uses
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !29
  %i.ael = fsub nsz float %i.aek, %i.aeb          ; 2 uses
  store float %i.ael, ptr %i.aej, align 4, !tbaa !29
  %exitcond70.not.i.i = icmp eq i64 %indvars.iv.next67.i.i, %wide.trip.count69.i.i
  br i1 %exitcond70.not.i.i, label %._crit_edge63.i.i, label %bb.bb, !llvm.loop !122

._crit_edge63.i.i:                                ; preds = %bb.bb
  store i32 %i.adw, ptr %i.ub, align 16, !tbaa !121
  br label %add_noise.exit.i

add_noise.exit.i:                                 ; preds = %._crit_edge63.i.i, %._crit_edge.i171.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.aw, !llvm.loop !123

._crit_edge.i:                                    ; preds = %add_noise.exit.i, %.preheader192.i
  %i.aem = icmp eq i32 %i.ui, 1                   ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %add_wave.exit.i.i, %._crit_edge.i
  %indvars.iv59.i.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next60.i.i, %add_wave.exit.i.i ] ; 6 uses
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv59.i.i ; 2 uses
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !40 ; 3 uses
  %i.aep = getelementptr inbounds nuw [65536 x i8], ptr %i.jk, i64 %indvars.iv59.i.i
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv59.i.i
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !40 ; 3 uses
  %i.aes = icmp slt i32 %i.aeo, %i.aer
  br i1 %i.aes, label %.lr.ph.i176.i, label %add_wave.exit.i.i

.lr.ph.i176.i:                                    ; preds = %bb.bc
  %i.aet = getelementptr inbounds nuw [124 x i8], ptr %i.tt, i64 %indvars.iv59.i.i
  %i.aeu = trunc i64 %indvars.iv59.i.i to i32     ; 3 uses
  %umax.i.i.i = lshr i32 31, %i.aeu
  %wide.trip.count.i.i.i = zext nneg i32 %umax.i.i.i to i64
  %i.aev = sext i32 %i.aeo to i64
  %wide.trip.count.i177.i = sext i32 %i.aer to i64
  %i.aew = sub i32 4, %i.aeu
  %i.aex = add i32 %i.aeu, 3
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bg, %.lr.ph.i176.i
  %indvars.iv.i178.i = phi i64 [ %i.aev, %.lr.ph.i176.i ], [ %indvars.iv.next.i183.i, %bb.bg ] ; 3 uses
  %i.aey = getelementptr inbounds [8 x i8], ptr %i.aep, i64 %indvars.iv.i178.i ; 5 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 2
  %i.afa = load i8, ptr %i.aez, align 2, !tbaa !81
  %i.afb = zext i8 %i.afa to i32                  ; 2 uses
  %i.afc = icmp samesign ult i32 %.0131240.i, %i.afb
  br i1 %i.afc, label %add_wave.exit.loopexit.split.loop.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aey, i64 4
  %i.afe = load i16, ptr %i.afd, align 2, !tbaa !84
  %i.aff = sext i16 %i.afe to i32                 ; 2 uses
  %i.afg = load i8, ptr %i.aey, align 2, !tbaa !85
  %i.afh = zext i8 %i.afg to i64
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aey, i64 6
  %i.afj = load i16, ptr %i.afi, align 2, !tbaa !86
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aey, i64 1
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !87
  %i.afm = zext i8 %i.afl to i32
  %i.afn = and i16 %i.afj, 63
  %i.afo = zext nneg i16 %i.afn to i64
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr @amplitude_tab, i64 %i.afo
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !29
  %i.afr = shl nuw nsw i32 %i.afm, 6
  %i.afs = ashr i32 %i.aff, %i.aew                ; 3 uses
  %i.aft = shl nsw i32 %i.afs, 8
  %reass.sub47 = sub nsw i32 %i.afr, %i.aft
  %i.afu = add nsw i32 %reass.sub47, -128
  %spec.select.i.i.i = select i1 %i.aem, i64 0, i64 %i.afh
  %i.afv = getelementptr inbounds nuw [65536 x i8], ptr %i.ts, i64 %spec.select.i.i.i ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 131072 ; 2 uses
  %i.afx = load i32, ptr %i.br, align 8, !tbaa !73
  %i.afy = add i32 %i.afx, %i.afs
  %i.afz = load i32, ptr %i.jj, align 4, !tbaa !47 ; 2 uses
  %i.aga = mul nsw i32 %i.afz, %i.afb
  %i.agb = add i32 %i.afy, %i.aga
  %i.agc = sext i32 %i.agb to i64                 ; 2 uses
  %i.agd = getelementptr inbounds [4 x i8], ptr %i.afw, i64 %i.agc
  %i.age = getelementptr inbounds [4 x i8], ptr %i.afv, i64 %i.agc
  %i.agf = shl nsw i32 %i.aff, 1
  %i.agg = or disjoint i32 %i.agf, 1
  %i.agh = shl nsw i32 %i.agg, %i.aex
  %i.agi = sext i32 %i.afz to i64                 ; 2 uses
  %i.agj = load i32, ptr %i.j, align 16, !tbaa !46
  %i.agk = shl nsw i32 %i.agj, 1
  %i.agl = sext i32 %i.agk to i64
  %i.agm = getelementptr inbounds [4 x i8], ptr %i.afv, i64 %i.agl
  %i.agn = sext i32 %i.afs to i64                 ; 2 uses
  %i.ago = getelementptr inbounds [4 x i8], ptr %i.afv, i64 %i.agn
  %i.agp = getelementptr inbounds [4 x i8], ptr %i.afw, i64 %i.agn
  br label %bb.bf
end_hunk_0
