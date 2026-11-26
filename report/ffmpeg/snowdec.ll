Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowdec?download=true
inline.NumInlined: 37
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@decode_frame:bb.a
  br i1 %i.bii, label %bb.ha, label %bb.hw

bb.ha:                                            ; preds = %bb.gz
  %i.bij = add nsw i32 %i.bih, 1
  %.383 = call i32 @llvm.smin.i32(i32 %i.big, i32 %i.bij) ; 4 uses
  %.not379 = icmp eq i32 %.0312., 0
  %i.bik = add nsw i32 %.0312., 1
  %i.bil = select i1 %.not379, i32 0, i32 %i.bik  ; 2 uses
  %i.bim = call i32 @llvm.smin.i32(i32 %i.big, i32 %i.bil) ; 5 uses
  %i.bin = load i32, ptr %i.bgj, align 8, !tbaa !194 ; 3 uses
  %i.bio = load ptr, ptr %i.bgk, align 8, !tbaa !200
  %i.bip = load ptr, ptr %i.ub, align 8, !tbaa !167
  %i.biq = icmp eq ptr %i.bio, %i.bip
  br i1 %i.biq, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bir = load i32, ptr %i.sm, align 8, !tbaa !138
  %i.bis = load i32, ptr %i.se, align 8, !tbaa !139 ; 2 uses
  %i.bit = load i32, ptr %i.bgl, align 8, !tbaa !154
  %i.biu = add i32 %i.bit, %i.bis
  %i.biv = call i32 @llvm.smax.i32(i32 %i.biu, i32 0)
  %i.biw = call i32 @llvm.umin.i32(i32 %i.biv, i32 512) ; 2 uses
  %i.bix = and i32 %i.biw, 31
  %i.biy = zext nneg i32 %i.bix to i64
  %i.biz = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.biy
  %i.bja = load i8, ptr %i.biz, align 1, !tbaa !44
  %i.bjb = zext i8 %i.bja to i32
  %i.bjc = lshr i32 %i.biw, 5
  %i.bjd = shl nuw nsw i32 %i.bjb, %i.bjc         ; 2 uses
  %i.bje = mul nsw i32 %i.bjd, %i.bir
  %i.bjf = ashr i32 %i.bje, 3
  %i.bjg = icmp eq i32 %i.bis, -128
  br i1 %i.bjg, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.055.i = phi i32 [ 2048, %bb.hc ], [ %i.bjd, %bb.hb ]
  %.054.i = phi i32 [ 0, %bb.hc ], [ %i.bjf, %bb.hb ]
  %.not.i518 = icmp eq i32 %i.bim, 0              ; 2 uses
  %i.bjh = load i32, ptr %i.c, align 16
  %spec.select609 = select i1 %.not.i518, i32 0, i32 %i.bjh ; 2 uses
  %i.bji = icmp slt i32 %i.bil, %.383             ; 2 uses
  br i1 %i.bji, label %.lr.ph69.i, label %decode_subband_slice_buffered.exit

.lr.ph69.i:                                       ; preds = %bb.hd, %._crit_edge.i519
  %.067.i = phi i32 [ %i.bkr, %._crit_edge.i519 ], [ %i.bim, %bb.hd ] ; 2 uses
  %.166.i = phi i32 [ %.2.lcssa.i, %._crit_edge.i519 ], [ %spec.select609, %bb.hd ] ; 2 uses
  %i.bjj = load ptr, ptr %i.tq, align 8, !tbaa !201
  %i.bjk = load i32, ptr %i.bgm, align 8, !tbaa !202
  %i.bjl = mul nsw i32 %i.bjk, %.067.i
  %i.bjm = load i32, ptr %i.bgn, align 4, !tbaa !203
  %i.bjn = add nsw i32 %i.bjl, %i.bjm             ; 2 uses
  %i.bjo = sext i32 %i.bjn to i64
  %i.bjp = getelementptr inbounds [8 x i8], ptr %i.bjj, i64 %i.bjo
  %i.bjq = load ptr, ptr %i.bjp, align 8, !tbaa !204 ; 2 uses
  %.not57.i = icmp eq ptr %i.bjq, null
  br i1 %.not57.i, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %.lr.ph69.i
  %i.bjr = call ptr @ff_slice_buffer_load_line(ptr noundef nonnull %i.tq, i32 noundef %i.bjn) #9
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %.lr.ph69.i
  %i.bjs = phi ptr [ %i.bjr, %bb.he ], [ %i.bjq, %.lr.ph69.i ]
  %i.bjt = load i32, ptr %i.bgo, align 8, !tbaa !205
  %i.bju = sext i32 %i.bjt to i64
  %i.bjv = getelementptr inbounds [2 x i8], ptr %i.bjs, i64 %i.bju ; 2 uses
  %i.bjw = load i32, ptr %i.bgj, align 8, !tbaa !194
  %i.bjx = sext i32 %i.bjw to i64
  %i.bjy = shl nsw i64 %i.bjx, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.bjv, i8 0, i64 %i.bjy, i1 false)
  %i.bjz = load ptr, ptr %i.bgp, align 8, !tbaa !196 ; 3 uses
  %.pn58.i = sext i32 %.166.i to i64              ; 2 uses
  %.052.in.in59.i = getelementptr inbounds [4 x i8], ptr %i.bjz, i64 %.pn58.i
  %.052.in60.i = load i16, ptr %.052.in.in59.i, align 2, !tbaa !198 ; 2 uses
  %.05261.i = sext i16 %.052.in60.i to i32
  %.262.i = add i32 %.166.i, 1                    ; 2 uses
  %i.bka = icmp sgt i32 %i.bin, %.05261.i
  br i1 %i.bka, label %.lr.ph.preheader.i, label %._crit_edge.i519

.lr.ph.preheader.i:                               ; preds = %bb.hf
  %i.bkb = sext i32 %.262.i to i64
  br label %.lr.ph.i521

.lr.ph.i521:                                      ; preds = %.lr.ph.i521, %.lr.ph.preheader.i
  %indvars.iv.i522 = phi i64 [ %i.bkb, %.lr.ph.preheader.i ], [ %indvars.iv.next.i523, %.lr.ph.i521 ] ; 3 uses
  %.052.in64.i = phi i16 [ %.052.in60.i, %.lr.ph.preheader.i ], [ %.052.in.i, %.lr.ph.i521 ]
  %i.bkc = phi i64 [ %.pn58.i, %.lr.ph.preheader.i ], [ %indvars.iv.i522, %.lr.ph.i521 ]
  %i.bkd = getelementptr inbounds [4 x i8], ptr %i.bjz, i64 %i.bkc
  %.051.in.in.i = getelementptr inbounds nuw i8, ptr %i.bkd, i64 2
  %.051.in.i = load i16, ptr %.051.in.in.i, align 2, !tbaa !199
  %.051.i = zext i16 %.051.in.i to i32            ; 2 uses
  %i.bke = lshr i32 %.051.i, 1
  %i.bkf = mul i32 %i.bke, %.055.i
  %i.bkg = add i32 %i.bkf, %.054.i
  %i.bkh = lshr i32 %i.bkg, 11
  %i.bki = and i32 %.051.i, 1                     ; 2 uses
  %i.bkj = sub nsw i32 0, %i.bki
  %i.bkk = xor i32 %i.bkh, %i.bkj
  %i.bkl = add nsw i32 %i.bkk, %i.bki
  %i.bkm = trunc i32 %i.bkl to i16
  %i.bkn = sext i16 %.052.in64.i to i64
  %i.bko = getelementptr inbounds [2 x i8], ptr %i.bjv, i64 %i.bkn
  store i16 %i.bkm, ptr %i.bko, align 2, !tbaa !55
  %.052.in.in.i = getelementptr inbounds [4 x i8], ptr %i.bjz, i64 %indvars.iv.i522
  %.052.in.i = load i16, ptr %.052.in.in.i, align 2, !tbaa !198 ; 2 uses
  %.052.i = sext i16 %.052.in.i to i32
  %indvars.iv.next.i523 = add nsw i64 %indvars.iv.i522, 1 ; 2 uses
  %i.bkp = icmp sgt i32 %i.bin, %.052.i
  br i1 %i.bkp, label %.lr.ph.i521, label %._crit_edge.loopexit.i524, !llvm.loop !100

._crit_edge.loopexit.i524:                        ; preds = %.lr.ph.i521
  %i.bkq = trunc nsw i64 %indvars.iv.next.i523 to i32
  br label %._crit_edge.i519

._crit_edge.i519:                                 ; preds = %._crit_edge.loopexit.i524, %bb.hf
  %.2.lcssa.i = phi i32 [ %.262.i, %bb.hf ], [ %i.bkq, %._crit_edge.loopexit.i524 ] ; 2 uses
  %i.bkr = add i32 %.067.i, 1                     ; 2 uses
  %exitcond.not.i520 = icmp eq i32 %i.bkr, %.383
  br i1 %exitcond.not.i520, label %decode_subband_slice_buffered.exit.loopexit, label %.lr.ph69.i, !llvm.loop !101

decode_subband_slice_buffered.exit.loopexit:      ; preds = %._crit_edge.i519
  %.pre808 = load i32, ptr %i.bgj, align 8, !tbaa !194
  br label %decode_subband_slice_buffered.exit

decode_subband_slice_buffered.exit:               ; preds = %decode_subband_slice_buffered.exit.loopexit, %bb.hd
  %i.bks = phi i32 [ %i.bin, %bb.hd ], [ %.pre808, %decode_subband_slice_buffered.exit.loopexit ]
  %.1.lcssa.i = phi i32 [ %spec.select609, %bb.hd ], [ %.2.lcssa.i, %decode_subband_slice_buffered.exit.loopexit ]
  store i32 %.1.lcssa.i, ptr %i.c, align 16, !tbaa !51
  %.fr15.i = freeze i32 %i.bks                    ; 4 uses
  br i1 %.not.i518, label %bb.hj, label %bb.hg

bb.hg:                                            ; preds = %decode_subband_slice_buffered.exit
  %i.bkt = load ptr, ptr %i.tq, align 8, !tbaa !201
  %i.bku = add nsw i32 %i.bim, -1
  %i.bkv = load i32, ptr %i.bgm, align 8, !tbaa !202
  %i.bkw = mul nsw i32 %i.bkv, %i.bku
  %i.bkx = load i32, ptr %i.bgn, align 4, !tbaa !203
  %i.bky = add nsw i32 %i.bkw, %i.bkx             ; 2 uses
  %i.bkz = sext i32 %i.bky to i64
  %i.bla = getelementptr inbounds [8 x i8], ptr %i.bkt, i64 %i.bkz
  %i.blb = load ptr, ptr %i.bla, align 8, !tbaa !204 ; 2 uses
  %.not81.i = icmp eq ptr %i.blb, null
  br i1 %.not81.i, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.blc = call ptr @ff_slice_buffer_load_line(ptr noundef nonnull %i.tq, i32 noundef %i.bky) #9
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.bld = phi ptr [ %i.blc, %bb.hh ], [ %i.blb, %bb.hg ]
  %i.ble = load i32, ptr %i.bgo, align 8, !tbaa !205
  %i.blf = sext i32 %i.ble to i64
  %i.blg = getelementptr inbounds [2 x i8], ptr %i.bld, i64 %i.blf
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %decode_subband_slice_buffered.exit
  %.0.i526 = phi ptr [ %i.blg, %bb.hi ], [ null, %decode_subband_slice_buffered.exit ]
  br i1 %i.bji, label %.lr.ph5.i, label %correlate_slice_buffered.exit

.lr.ph5.i:                                        ; preds = %bb.hj
  %i.blh = icmp sgt i32 %.fr15.i, 0
  br i1 %i.blh, label %.lr.ph5.split.us.preheader.i, label %.lr.ph5.split.i

.lr.ph5.split.us.preheader.i:                     ; preds = %.lr.ph5.i
  %wide.trip.count.i = zext nneg i32 %.fr15.i to i64 ; 2 uses
  %exitcond20.peel.not.i = icmp eq i32 %.fr15.i, 1 ; 2 uses
  %i.bli = add nsw i64 %wide.trip.count.i, -1     ; 2 uses
  %xtraiter1261 = and i64 %i.bli, 3               ; 3 uses
  %i.blj = add nsw i32 %.fr15.i, -2
  %i.blk = icmp ult i32 %i.blj, 3
  %unroll_iter = and i64 %i.bli, -4
  %lcmp.mod1262.not = icmp eq i64 %xtraiter1261, 0
  %lcmp.mod1263 = icmp ne i64 %xtraiter1261, 0
  br label %.lr.ph5.split.us.i

.lr.ph5.split.us.i:                               ; preds = %._crit_edge.us.i531, %.lr.ph5.split.us.preheader.i
  %.13.us.i = phi ptr [ %i.blx, %._crit_edge.us.i531 ], [ %.0.i526, %.lr.ph5.split.us.preheader.i ] ; 3 uses
  %.0742.us.i = phi i32 [ %i.bnk, %._crit_edge.us.i531 ], [ %i.bim, %.lr.ph5.split.us.preheader.i ] ; 3 uses
  %i.bll = load ptr, ptr %i.tq, align 8, !tbaa !201
  %i.blm = load i32, ptr %i.bgm, align 8, !tbaa !202
  %i.bln = mul nsw i32 %i.blm, %.0742.us.i
  %i.blo = load i32, ptr %i.bgn, align 4, !tbaa !203
  %i.blp = add nsw i32 %i.bln, %i.blo             ; 2 uses
  %i.blq = sext i32 %i.blp to i64
  %i.blr = getelementptr inbounds [8 x i8], ptr %i.bll, i64 %i.blq
  %i.bls = load ptr, ptr %i.blr, align 8, !tbaa !204 ; 2 uses
  %.not82.us.i = icmp eq ptr %i.bls, null
  br i1 %.not82.us.i, label %bb.hk, label %.lr.ph.us.i528

bb.hk:                                            ; preds = %.lr.ph5.split.us.i
  %i.blt = call ptr @ff_slice_buffer_load_line(ptr noundef nonnull %i.tq, i32 noundef %i.blp) #9
  br label %.lr.ph.us.i528

.lr.ph.us.i528:                                   ; preds = %bb.hk, %.lr.ph5.split.us.i
  %i.blu = phi ptr [ %i.blt, %bb.hk ], [ %i.bls, %.lr.ph5.split.us.i ]
  %i.blv = load i32, ptr %i.bgo, align 8, !tbaa !205
  %i.blw = sext i32 %i.blv to i64
  %i.blx = getelementptr [2 x i8], ptr %i.blu, i64 %i.blw ; 11 uses
  %.not85.us.i = icmp eq i32 %.0742.us.i, 0
  br i1 %.not85.us.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %.lr.ph.us.i528
  %i.bly = load i16, ptr %.13.us.i, align 2, !tbaa !55
  %i.blz = load i16, ptr %i.blx, align 2, !tbaa !55
  %i.bma = add i16 %i.blz, %i.bly
  store i16 %i.bma, ptr %i.blx, align 2, !tbaa !55
  br i1 %exitcond20.peel.not.i, label %._crit_edge.us.i531, label %.lr.ph.split.us7.peel.next.i.preheader

.lr.ph.split.us7.peel.next.i.preheader:           ; preds = %bb.hl
  %load_initial = load i16, ptr %i.blx, align 2
  br label %.lr.ph.split.us7.peel.next.i

.lr.ph.split.us7.peel.next.i:                     ; preds = %.lr.ph.split.us7.peel.next.i.preheader, %.lr.ph.split.us7.peel.next.i
  %i.bmb = phi i16 [ %load_initial, %.lr.ph.split.us7.peel.next.i.preheader ], [ %i.bmr, %.lr.ph.split.us7.peel.next.i ]
  %indvars.iv.i529 = phi i64 [ 1, %.lr.ph.split.us7.peel.next.i.preheader ], [ %indvars.iv.next.i530, %.lr.ph.split.us7.peel.next.i ] ; 4 uses
  %i.bmc = sext i16 %i.bmb to i32                 ; 3 uses
  %i.bmd = getelementptr inbounds nuw [2 x i8], ptr %.13.us.i, i64 %indvars.iv.i529
  %i.bme = load i16, ptr %i.bmd, align 2, !tbaa !55
  %i.bmf = sext i16 %i.bme to i32                 ; 3 uses
  %i.bmg = add nsw i32 %i.bmf, %i.bmc
  %i.bmh = getelementptr [2 x i8], ptr %.13.us.i, i64 %indvars.iv.i529
  %i.bmi = getelementptr i8, ptr %i.bmh, i64 -2
  %i.bmj = load i16, ptr %i.bmi, align 2, !tbaa !55
  %i.bmk = sext i16 %i.bmj to i32
  %i.bml = sub nsw i32 %i.bmg, %i.bmk
  %..i.us.i = call i32 @llvm.smax.i32(i32 range(i32 -8388608, 8388608) %i.bmc, i32 range(i32 -8388608, 8388608) %i.bmf)
  %.20.i.us.i = call i32 @llvm.smin.i32(i32 range(i32 -8388608, 8388608) %i.bmc, i32 range(i32 -8388608, 8388608) %i.bmf)
  %i.bmm = call i32 @llvm.smin.i32(i32 range(i32 -8388608, 8388608) %i.bml, i32 %..i.us.i)
  %i.bmn = call range(i32 -8388608, 8388608) i32 @llvm.smax.i32(i32 %i.bmm, i32 %.20.i.us.i)
  %i.bmo = getelementptr inbounds nuw [2 x i8], ptr %i.blx, i64 %indvars.iv.i529 ; 2 uses
  %i.bmp = load i16, ptr %i.bmo, align 2, !tbaa !55
  %i.bmq = trunc nsw i32 %i.bmn to i16
  %i.bmr = add i16 %i.bmp, %i.bmq                 ; 2 uses
  store i16 %i.bmr, ptr %i.bmo, align 2, !tbaa !55
  %indvars.iv.next.i530 = add nuw nsw i64 %indvars.iv.i529, 1 ; 2 uses
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next.i530, %wide.trip.count.i
  br i1 %exitcond20.not.i, label %._crit_edge.us.i531, label %.lr.ph.split.us7.peel.next.i, !llvm.loop !102

bb.hm:                                            ; preds = %.lr.ph.us.i528
  br i1 %exitcond20.peel.not.i, label %._crit_edge.us.i531, label %.lr.ph.split.us.split.us.us.peel.next.i.preheader

.lr.ph.split.us.split.us.us.peel.next.i.preheader: ; preds = %bb.hm
  %load_initial.a = load i16, ptr %i.blx, align 2 ; 2 uses
  br i1 %i.blk, label %.lr.ph.split.us.split.us.us.peel.next.i.epil.preheader, label %.lr.ph.split.us.split.us.us.peel.next.i

.lr.ph.split.us.split.us.us.peel.next.i:          ; preds = %.lr.ph.split.us.split.us.us.peel.next.i.preheader, %.lr.ph.split.us.split.us.us.peel.next.i
  %store_forwarded = phi i16 [ %i.bng, %.lr.ph.split.us.split.us.us.peel.next.i ], [ %load_initial.a, %.lr.ph.split.us.split.us.us.peel.next.i.preheader ]
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i.3, %.lr.ph.split.us.split.us.us.peel.next.i ], [ 1, %.lr.ph.split.us.split.us.us.peel.next.i.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.split.us.split.us.us.peel.next.i ], [ 0, %.lr.ph.split.us.split.us.us.peel.next.i.preheader ]
  %i.bms = getelementptr [2 x i8], ptr %i.blx, i64 %indvars.iv28.i ; 2 uses
  %i.bmt = load i16, ptr %i.bms, align 2, !tbaa !55
  %i.bmu = add i16 %i.bmt, %store_forwarded       ; 2 uses
  store i16 %i.bmu, ptr %i.bms, align 2, !tbaa !55
  %i.bmv = getelementptr [2 x i8], ptr %i.blx, i64 %indvars.iv28.i
  %i.bmw = getelementptr i8, ptr %i.bmv, i64 2    ; 2 uses
  %i.bmx = load i16, ptr %i.bmw, align 2, !tbaa !55
  %i.bmy = add i16 %i.bmx, %i.bmu                 ; 2 uses
  store i16 %i.bmy, ptr %i.bmw, align 2, !tbaa !55
  %i.bmz = getelementptr [2 x i8], ptr %i.blx, i64 %indvars.iv28.i
  %i.bna = getelementptr i8, ptr %i.bmz, i64 4    ; 2 uses
  %i.bnb = load i16, ptr %i.bna, align 2, !tbaa !55
  %i.bnc = add i16 %i.bnb, %i.bmy                 ; 2 uses
  store i16 %i.bnc, ptr %i.bna, align 2, !tbaa !55
  %i.bnd = getelementptr [2 x i8], ptr %i.blx, i64 %indvars.iv28.i
  %i.bne = getelementptr i8, ptr %i.bnd, i64 6    ; 2 uses
  %i.bnf = load i16, ptr %i.bne, align 2, !tbaa !55
  %i.bng = add i16 %i.bnf, %i.bnc                 ; 3 uses
  store i16 %i.bng, ptr %i.bne, align 2, !tbaa !55
  %indvars.iv.next29.i.3 = add nuw nsw i64 %indvars.iv28.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i531.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us.us.peel.next.i, !llvm.loop !103

._crit_edge.us.i531.loopexit.unr-lcssa:           ; preds = %.lr.ph.split.us.split.us.us.peel.next.i
  br i1 %lcmp.mod1262.not, label %._crit_edge.us.i531, label %.lr.ph.split.us.split.us.us.peel.next.i.epil.preheader

.lr.ph.split.us.split.us.us.peel.next.i.epil.preheader: ; preds = %._crit_edge.us.i531.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.us.peel.next.i.preheader
  %store_forwarded.epil.init = phi i16 [ %load_initial.a, %.lr.ph.split.us.split.us.us.peel.next.i.preheader ], [ %i.bng, %._crit_edge.us.i531.loopexit.unr-lcssa ]
  %indvars.iv28.i.epil.init = phi i64 [ 1, %.lr.ph.split.us.split.us.us.peel.next.i.preheader ], [ %indvars.iv.next29.i.3, %._crit_edge.us.i531.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1263)
  br label %.lr.ph.split.us.split.us.us.peel.next.i.epil

.lr.ph.split.us.split.us.us.peel.next.i.epil:     ; preds = %.lr.ph.split.us.split.us.us.peel.next.i.epil, %.lr.ph.split.us.split.us.us.peel.next.i.epil.preheader
  %store_forwarded.epil = phi i16 [ %store_forwarded.epil.init, %.lr.ph.split.us.split.us.us.peel.next.i.epil.preheader ], [ %i.bnj, %.lr.ph.split.us.split.us.us.peel.next.i.epil ]
  %indvars.iv28.i.epil = phi i64 [ %indvars.iv28.i.epil.init, %.lr.ph.split.us.split.us.us.peel.next.i.epil.preheader ], [ %indvars.iv.next29.i.epil, %.lr.ph.split.us.split.us.us.peel.next.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.split.us.split.us.us.peel.next.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.us.split.us.us.peel.next.i.epil ]
  %i.bnh = getelementptr [2 x i8], ptr %i.blx, i64 %indvars.iv28.i.epil ; 2 uses
  %i.bni = load i16, ptr %i.bnh, align 2, !tbaa !55
  %i.bnj = add i16 %i.bni, %store_forwarded.epil  ; 2 uses
  store i16 %i.bnj, ptr %i.bnh, align 2, !tbaa !55
  %indvars.iv.next29.i.epil = add nuw nsw i64 %indvars.iv28.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1261
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i531, label %.lr.ph.split.us.split.us.us.peel.next.i.epil, !llvm.loop !104

._crit_edge.us.i531:                              ; preds = %.lr.ph.split.us7.peel.next.i, %._crit_edge.us.i531.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.us.peel.next.i.epil, %bb.hm, %bb.hl
  %i.bnk = add nsw i32 %.0742.us.i, 1             ; 2 uses
  %exitcond34.not.i = icmp eq i32 %i.bnk, %.383
  br i1 %exitcond34.not.i, label %correlate_slice_buffered.exit, label %.lr.ph5.split.us.i, !llvm.loop !105

.lr.ph5.split.i:                                  ; preds = %.lr.ph5.i, %bb.ho
  %.0742.i = phi i32 [ %i.bnu, %bb.ho ], [ %i.bim, %.lr.ph5.i ] ; 2 uses
  %i.bnl = load ptr, ptr %i.tq, align 8, !tbaa !201
  %i.bnm = load i32, ptr %i.bgm, align 8, !tbaa !202
  %i.bnn = mul nsw i32 %i.bnm, %.0742.i
  %i.bno = load i32, ptr %i.bgn, align 4, !tbaa !203
  %i.bnp = add nsw i32 %i.bnn, %i.bno             ; 2 uses
  %i.bnq = sext i32 %i.bnp to i64
  %i.bnr = getelementptr inbounds [8 x i8], ptr %i.bnl, i64 %i.bnq
  %i.bns = load ptr, ptr %i.bnr, align 8, !tbaa !204
  %.not82.i = icmp eq ptr %i.bns, null
  br i1 %.not82.i, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %.lr.ph5.split.i
  %i.bnt = call ptr @ff_slice_buffer_load_line(ptr noundef nonnull %i.tq, i32 noundef %i.bnp) #9 ; 0 uses
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %.lr.ph5.split.i
  %i.bnu = add i32 %.0742.i, 1                    ; 2 uses
  %exitcond.not.i527 = icmp eq i32 %i.bnu, %.383
  br i1 %exitcond.not.i527, label %correlate_slice_buffered.exit, label %.lr.ph5.split.i, !llvm.loop !105

correlate_slice_buffered.exit:                    ; preds = %bb.ho, %._crit_edge.us.i531, %bb.hj
  %.val = load i32, ptr %i.se, align 8, !tbaa !139 ; 2 uses
  %.val508 = load i32, ptr %i.sm, align 8, !tbaa !138
  %i.bnv = load i32, ptr %i.bgj, align 8, !tbaa !194
  %.fr4.i = freeze i32 %i.bnv                     ; 3 uses
  %i.bnw = load i32, ptr %i.bgl, align 8, !tbaa !154
  %i.bnx = add i32 %i.bnw, %.val
  %i.bny = call i32 @llvm.smax.i32(i32 %i.bnx, i32 0)
  %i.bnz = call i32 @llvm.umin.i32(i32 %i.bny, i32 512) ; 2 uses
  %i.boa = and i32 %i.bnz, 31
  %i.bob = zext nneg i32 %i.boa to i64
  %i.boc = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.bob
  %i.bod = load i8, ptr %i.boc, align 1, !tbaa !44
  %i.boe = zext i8 %i.bod to i32
  %i.bof = lshr i32 %i.bnz, 5
  %i.bog = shl nuw nsw i32 %i.boe, %i.bof         ; 4 uses
  %i.boh = mul nsw i32 %i.bog, %.val508
  %i.boi = ashr i32 %i.boh, 3                     ; 3 uses
  %i.boj = icmp ne i32 %.val, -128
  %i.bok = icmp slt i32 %.0312, %i.bih
  %or.cond.i532 = and i1 %i.bok, %i.boj
  br i1 %or.cond.i532, label %.lr.ph3.i, label %dequantize_slice_buffered.exit

.lr.ph3.i:                                        ; preds = %correlate_slice_buffered.exit
  %i.bol = icmp sgt i32 %.fr4.i, 0
  br i1 %i.bol, label %.lr.ph3.split.us.preheader.i, label %.lr.ph3.split.i

.lr.ph3.split.us.preheader.i:                     ; preds = %.lr.ph3.i
  %wide.trip.count.i536 = zext nneg i32 %.fr4.i to i64 ; 3 uses
  %min.iters.check1037 = icmp ult i32 %.fr4.i, 8
  %n.vec1039 = and i64 %wide.trip.count.i536, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bog, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1040 = insertelement <8 x i32> poison, i32 %i.boi, i64 0
  %broadcast.splat1041 = shufflevector <8 x i32> %broadcast.splatinsert1040, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n1061 = icmp eq i64 %n.vec1039, %wide.trip.count.i536
  br label %.lr.ph3.split.us.i

.lr.ph3.split.us.i:                               ; preds = %._crit_edge.us.i541, %.lr.ph3.split.us.preheader.i
  %.02.us.i = phi i32 [ %i.brd, %._crit_edge.us.i541 ], [ %.0312., %.lr.ph3.split.us.preheader.i ] ; 2 uses
  %i.bom = load ptr, ptr %i.tq, align 8, !tbaa !201
  %i.bon = load i32, ptr %i.bgm, align 8, !tbaa !202
  %i.boo = mul nsw i32 %i.bon, %.02.us.i
  %i.bop = load i32, ptr %i.bgn, align 4, !tbaa !203
  %i.boq = add nsw i32 %i.boo, %i.bop             ; 2 uses
  %i.bor = sext i32 %i.boq to i64
  %i.bos = getelementptr inbounds [8 x i8], ptr %i.bom, i64 %i.bor
  %i.bot = load ptr, ptr %i.bos, align 8, !tbaa !204 ; 2 uses
  %.not.us.i = icmp eq ptr %i.bot, null
  br i1 %.not.us.i, label %bb.hp, label %.lr.ph.us.i537

bb.hp:                                            ; preds = %.lr.ph3.split.us.i
  %i.bou = call ptr @ff_slice_buffer_load_line(ptr noundef nonnull %i.tq, i32 noundef %i.boq) #9
  br label %.lr.ph.us.i537

.lr.ph.us.i537:                                   ; preds = %bb.hp, %.lr.ph3.split.us.i
  %i.bov = phi ptr [ %i.bou, %bb.hp ], [ %i.bot, %.lr.ph3.split.us.i ]
  %i.bow = load i32, ptr %i.bgo, align 8, !tbaa !205
  %i.box = sext i32 %i.bow to i64
  %i.boy = getelementptr inbounds [2 x i8], ptr %i.bov, i64 %i.box ; 9 uses
  br i1 %min.iters.check1037, label %scalar.ph1036.preheader, label %vector.body1042

vector.body1042:                                  ; preds = %.lr.ph.us.i537, %pred.store.continue1058
  %index1043 = phi i64 [ %index.next1059, %pred.store.continue1058 ], [ 0, %.lr.ph.us.i537 ] ; 9 uses
  %i.boz = getelementptr inbounds nuw [2 x i8], ptr %i.boy, i64 %index1043 ; 2 uses
  %wide.load1044 = load <8 x i16>, ptr %i.boz, align 2, !tbaa !55 ; 3 uses
  %i.bpa = sext <8 x i16> %wide.load1044 to <8 x i32>
  %i.bpb = icmp sgt <8 x i16> %wide.load1044, zeroinitializer
  %i.bpc = mul <8 x i32> %broadcast.splat, %i.bpa ; 2 uses
  %i.bpd = add <8 x i32> %i.bpc, %broadcast.splat1041
  %i.bpe = lshr <8 x i32> %i.bpd, splat (i32 11)
  %i.bpf = trunc <8 x i32> %i.bpe to <8 x i16>
  %i.bpg = sub <8 x i32> %broadcast.splat1041, %i.bpc
  %i.bph = lshr <8 x i32> %i.bpg, splat (i32 11)
  %i.bpi = trunc <8 x i32> %i.bph to <8 x i16>
  %i.bpj = sub <8 x i16> zeroinitializer, %i.bpi
  %i.bpk = icmp ne <8 x i16> %wide.load1044, zeroinitializer ; 8 uses
  %predphi = select <8 x i1> %i.bpb, <8 x i16> %i.bpf, <8 x i16> %i.bpj ; 8 uses
  %i.bpl = extractelement <8 x i1> %i.bpk, i64 0
  br i1 %i.bpl, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1042
  %i.bpm = extractelement <8 x i16> %predphi, i64 0
  store i16 %i.bpm, ptr %i.boz, align 2, !tbaa !55
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1042
  %i.bpn = extractelement <8 x i1> %i.bpk, i64 1
  br i1 %i.bpn, label %pred.store.if1045, label %pred.store.continue1046

pred.store.if1045:                                ; preds = %pred.store.continue
  %i.bpo = getelementptr inbounds nuw [2 x i8], ptr %i.boy, i64 %index1043
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpo, i64 2
end_hunk_0
