begin_hunk_0_@VP8LResidualImage:bb.a
PredictionCostBias.exit.i.i.i:                    ; preds = %bb.ab, %bb.aa
  %i.lg = phi i64 [ %i.le, %bb.aa ], [ %.neg.i18.i.i.i.i, %bb.ab ]
  %i.lh = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.li = call i64 %i.lh(ptr noundef nonnull %gep.i.i, ptr noundef nonnull %i.ja) #12, !inline_history !32
  %i.lj = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 1024 ; 4 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !3
  %i.ll = zext i32 %i.lk to i64
end_hunk_0
begin_hunk_1_@VP8LResidualImage:bb.a
PredictionCostBias.exit.1.i.i.i:                  ; preds = %bb.aj, %bb.ai
  %i.ml = phi i64 [ %i.mk, %bb.aj ], [ %.neg.i18.i.1.i.i.i, %bb.ai ]
  %i.mm = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.mn = call i64 %i.mm(ptr noundef nonnull %i.lj, ptr noundef nonnull %i.kb) #12, !inline_history !32
  %i.mo = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 2048 ; 4 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3
  %i.mq = zext i32 %i.mp to i64
end_hunk_1
begin_hunk_2_@VP8LResidualImage:bb.a
PredictionCostBias.exit.2.i.i.i:                  ; preds = %bb.ar, %bb.aq
  %i.nq = phi i64 [ %i.np, %bb.ar ], [ %.neg.i18.i.2.i.i.i, %bb.aq ]
  %i.nr = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.ns = call i64 %i.nr(ptr noundef nonnull %i.mo, ptr noundef nonnull %i.kc) #12, !inline_history !32
  %i.nt = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 3072 ; 4 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !3
  %i.nv = zext i32 %i.nu to i64
end_hunk_2
begin_hunk_3_@VP8LResidualImage:bb.a
PredictionCostSpatialHistogram.exit.i.i:          ; preds = %bb.az, %bb.ay
  %i.ov = phi i64 [ %i.ou, %bb.az ], [ %.neg.i18.i.3.i.i.i, %bb.ay ]
  %i.ow = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.ox = call i64 %i.ow(ptr noundef nonnull %i.nt, ptr noundef nonnull %i.kd) #12, !inline_history !32
  %i.oy = add nsw i64 %i.lg, %i.ml
  %i.oz = add i64 %i.li, %i.mn
  %i.pa = add nsw i64 %i.oy, %i.nq
end_hunk_3
begin_hunk_4_@VP8LResidualImage:bb.a
  %.1.i.i = call i64 @llvm.smin.i64(i64 %.2.i.i.i, i64 %.04160.i.i)
  %indvars.iv.next.i169.i = add nuw nsw i64 %indvars.iv.i167.i, 1 ; 2 uses
  %exitcond.not.i170.i = icmp eq i64 %indvars.iv.next.i169.i, 14
  br i1 %exitcond.not.i170.i, label %GetBestPredictorForTile.exit.i, label %bb.t, !llvm.loop !33

GetBestPredictorForTile.exit.i:                   ; preds = %PredictionCostSpatialHistogram.exit.i.i
  %i.pl = mul nsw i32 %.0143.i, 14
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.pm
  %i.po = load ptr, ptr @VP8LAddVectorEq, align 8, !tbaa !31
  call void %i.po(ptr noundef %.143.i.i, ptr noundef nonnull %i.ja, i32 noundef 1024) #12, !inline_history !34
  %i.pp = shl nuw nsw i32 %.145.i.i, 8
  %i.pq = add nuw nsw i32 %i.pp, -16777216
  %i.pr = mul nsw i32 %i.ix, %i.it
end_hunk_4
begin_hunk_5_@VP8LResidualImage:bb.a
  %i.qf = mul i32 %i.qc, 14336
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.qg
  call void %i.qe(ptr noundef %invariant.gep.i166.i, ptr noundef nonnull %i.qh, i32 noundef 14336) #12, !inline_history !35
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
end_hunk_5
begin_hunk_6_@VP8LResidualImage:bb.a

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.ri = icmp ult i32 %i.rc, %i.cp
  br i1 %i.ri, label %bb.f, label %.preheader.i.preheader, !llvm.loop !36

.preheader.i.preheader:                           ; preds = %bb.bo, %.preheader180.i
  br label %.preheader.i
end_hunk_6
begin_hunk_7_@VP8LResidualImage:bb.a
  %i.rn = mul i32 %.2193.i, 14
  %i.ro = zext i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ro
  %i.rq = call i64 %i.rm(ptr noundef nonnull %i.rp, i32 noundef 14) #12, !inline_history !35
  %i.rr = load ptr, ptr @VP8LShannonEntropy, align 8, !tbaa !31
  %i.rs = call i64 %i.rr(ptr noundef nonnull %i.rl, i32 noundef 256) #12, !inline_history !35
  %i.rt = add i64 %i.rs, %i.rq
  %i.ru = load ptr, ptr @VP8LShannonEntropy, align 8, !tbaa !31
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rl, i64 1024
  %i.rw = call i64 %i.ru(ptr noundef nonnull %i.rv, i32 noundef 256) #12, !inline_history !35
  %i.rx = add i64 %i.rt, %i.rw
  %i.ry = load ptr, ptr @VP8LShannonEntropy, align 8, !tbaa !31
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rl, i64 2048
  %i.sa = call i64 %i.ry(ptr noundef nonnull %i.rz, i32 noundef 256) #12, !inline_history !35
  %i.sb = add i64 %i.rx, %i.sa
  %i.sc = load ptr, ptr @VP8LShannonEntropy, align 8, !tbaa !31
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rl, i64 3072
  %i.se = call i64 %i.sc(ptr noundef nonnull %i.sd, i32 noundef 256) #12, !inline_history !35
  %i.sf = add i64 %i.sb, %i.se                    ; 2 uses
  %i.sg = icmp slt i64 %i.sf, %.0139194.i
  br i1 %i.sg, label %bb.bp, label %bb.bq
end_hunk_7
begin_hunk_8_@VP8LResidualImage:bb.a
  %.1.i = phi i64 [ %i.sf, %bb.bp ], [ %.0139194.i, %.preheader.i ]
  %i.sl = add i32 %.2193.i, 1                     ; 2 uses
  %.not.i = icmp ugt i32 %i.sl, %i.cq
  br i1 %.not.i, label %bb.br, label %.preheader.i, !llvm.loop !37

bb.br:                                            ; preds = %bb.bq
  call void @WebPSafeFree(ptr noundef nonnull %i.cw) #12
end_hunk_8
begin_hunk_9_@VP8LResidualImage:bb.a
  %i.tk = shl nsw i64 %i.tj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %5, i64 %i.tk, i1 false)
  %i.tl = load ptr, ptr @VP8LPredictorsSub, align 16, !tbaa !31
  tail call void %i.tl(ptr noundef %6, ptr noundef null, i32 noundef 1, ptr noundef %5) #12, !inline_history !38
  %i.tm = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.tn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 8), align 8, !tbaa !31
  %i.to = getelementptr inbounds nuw i8, ptr %6, i64 4
  tail call void %i.tn(ptr noundef nonnull %i.to, ptr noundef null, i32 noundef %i.h, ptr noundef nonnull %i.tm) #12, !inline_history !38
  %exitcond.peel.not.i = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not.i, label %CopyImageWithPrediction.exit, label %PredictBatch.exit.i.preheader

end_hunk_9
begin_hunk_10_@VP8LResidualImage:bb.a
  %i.us = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.ur
  call fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %.07387.us.us.i, ptr noundef %.07288.us.us.i, ptr noundef %.1.us.us.i, i32 noundef %i.up, i32 noundef %.07583.us.us.i, i32 noundef %spec.select.us.us.i, i32 noundef %i.uc, i32 noundef %.fr130, i32 noundef %9, i32 noundef %10, ptr noundef %i.us)
  %i.ut = icmp slt i32 %i.uq, %0
  br i1 %i.ut, label %bb.bw, label %.PredictBatch.exit.loopexit_crit_edge.us.us.i, !llvm.loop !39

.PredictBatch.exit.loopexit_crit_edge.us.us.i:    ; preds = %bb.bw
  %exitcond117.not.i = icmp eq i64 %indvars.iv.next114.i, %i.ts
  br i1 %exitcond117.not.i, label %CopyImageWithPrediction.exit, label %.lr.ph89.split.us.split.us.i, !llvm.loop !40

.lr.ph89.split.us.split.i:                        ; preds = %.lr.ph89.i
  br i1 %i.tr, label %.lr.ph89.split.us.split.split.us.i, label %PredictBatch.exit.loopexit.us.i.preheader
end_hunk_10
begin_hunk_11_@VP8LResidualImage:bb.a

PredictBatch.exit.loopexit.us.us95.i:             ; preds = %bb.bx, %.lr.ph89.split.us.split.split.us.i
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next109.i, %i.ts
  br i1 %exitcond112.not.i, label %CopyImageWithPrediction.exit, label %.lr.ph89.split.us.split.split.us.i, !llvm.loop !40

PredictBatch.exit.loopexit.us.i:                  ; preds = %PredictBatch.exit.loopexit.us.i, %PredictBatch.exit.loopexit.us.i.preheader.new
  %indvars.iv103.i = phi i64 [ 0, %PredictBatch.exit.loopexit.us.i.preheader.new ], [ %indvars.iv.next104.i.1, %PredictBatch.exit.loopexit.us.i ] ; 3 uses
end_hunk_11
begin_hunk_12_@VP8LResidualImage:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sy, ptr align 4 %i.vo, i64 %i.vt, i1 false)
  %niter262.next.1 = add i64 %niter262, 2         ; 2 uses
  %niter262.ncmp.1 = icmp eq i64 %niter262.next.1, %unroll_iter261
  br i1 %niter262.ncmp.1, label %CopyImageWithPrediction.exit.loopexit241.unr-lcssa, label %PredictBatch.exit.loopexit.us.i, !llvm.loop !40

PredictBatch.exit.i:                              ; preds = %PredictBatch.exit.i.preheader, %PredictBatch.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %PredictBatch.exit.i ], [ 1, %PredictBatch.exit.i.preheader ] ; 2 uses
end_hunk_12
begin_hunk_13_@VP8LResidualImage:bb.a
  %i.wa = shl nsw i64 %i.vz, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.07288.i, ptr align 4 %i.vv, i64 %i.wa, i1 false)
  %i.wb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 16), align 16, !tbaa !31
  tail call void %i.wb(ptr noundef nonnull %.07288.i, ptr noundef nonnull %.07387.i, i32 noundef 1, ptr noundef %i.vv) #12, !inline_history !38
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.wd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 88), align 8, !tbaa !31
  %i.we = getelementptr inbounds nuw i8, ptr %.07288.i, i64 4
  %i.wf = getelementptr inbounds nuw i8, ptr %.07387.i, i64 4
  tail call void %i.wd(ptr noundef nonnull %i.we, ptr noundef nonnull %i.wf, i32 noundef %i.h, ptr noundef nonnull %i.wc) #12, !inline_history !38
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.tf
  br i1 %exitcond.not.i, label %CopyImageWithPrediction.exit, label %PredictBatch.exit.i, !llvm.loop !41

CopyImageWithPrediction.exit.loopexit241.unr-lcssa: ; preds = %PredictBatch.exit.loopexit.us.i
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
end_hunk_13
begin_hunk_14_@VP8LColorSpaceTransform:bb.a
  %.01415.i.us = phi ptr [ %i.bb, %.lr.ph.i.us ], [ %i.be, %bb.d ] ; 2 uses
  %i.bc = add nsw i32 %.016.i.us, -1
  %i.bd = load ptr, ptr @VP8LTransformColor, align 8, !tbaa !31
  call void %i.bd(ptr noundef nonnull %10, ptr noundef %.01415.i.us, i32 noundef %i.ay) #12, !inline_history !43
  %i.be = getelementptr inbounds [4 x i8], ptr %.01415.i.us, i64 %i.l
  %i.bf = icmp samesign ugt i32 %.016.i.us, 1
  br i1 %i.bf, label %bb.d, label %CopyTileWithColorTransform.exit.us, !llvm.loop !44

CopyTileWithColorTransform.exit.us:               ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
end_hunk_14
begin_hunk_15_@VP8LColorSpaceTransform:bb.a
._crit_edge171.us:                                ; preds = %._crit_edge.us, %CopyTileWithColorTransform.exit.us
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count
  br i1 %exitcond205.not, label %._crit_edge180.us, label %bb.b, !llvm.loop !45

bb.e:                                             ; preds = %.lr.ph170.us, %._crit_edge.us
  %indvars.iv199 = phi i32 [ %i.cv, %.lr.ph170.us ], [ %indvars.iv.next200, %._crit_edge.us ] ; 2 uses
end_hunk_15
begin_hunk_16_@VP8LColorSpaceTransform:bb.a
  %indvars.iv.next = add i32 %indvars.iv, %0
  %indvars.iv.next200 = add i32 %indvars.iv199, %0
  %exitcond202.not = icmp eq i32 %i.bl, %i.s
  br i1 %exitcond202.not, label %._crit_edge171.us, label %bb.e, !llvm.loop !46

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.m
  %indvars.iv196 = phi i64 [ %i.bk, %.lr.ph.us.preheader ], [ %indvars.iv.next197, %bb.m ] ; 5 uses
end_hunk_16
begin_hunk_17_@VP8LColorSpaceTransform:bb.a
  %indvars.iv.next197 = add nsw i64 %indvars.iv196, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next197 to i32
  %exitcond201.not = icmp eq i32 %indvars.iv199, %lftr.wideiv
  br i1 %exitcond201.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !47

bb.n:                                             ; preds = %._crit_edge180.us
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count208
  br i1 %exitcond209.not, label %._crit_edge193, label %.preheader.us, !llvm.loop !48

.lr.ph170.us:                                     ; preds = %CopyTileWithColorTransform.exit.us
  %i.cu = add i32 %i.x, %i.aa
end_hunk_17
begin_hunk_18_@VP8LColorSpaceTransform:bb.a
bb.o:                                             ; preds = %.preheader
  %i.db = add nuw nsw i32 %.0102192, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.db, %i.h
  br i1 %exitcond.not, label %._crit_edge193, label %.preheader, !llvm.loop !48

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.o
  %.0102192 = phi i32 [ %i.db, %bb.o ], [ 0, %.preheader.lr.ph ] ; 2 uses
end_hunk_18
begin_hunk_19_@GetBestColorTransformForTile:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false)
  %i.s = load ptr, ptr @VP8LCollectColorRedTransforms, align 8, !tbaa !31
  call void %i.s(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef 0, ptr noundef nonnull %i.d) #12, !inline_history !49
  %i.t = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.u = call i64 %i.t(ptr noundef nonnull %i.d, ptr noundef nonnull %8) #12, !inline_history !50
  %i.v = load i32, ptr %i.d, align 16, !tbaa !3
  %i.w = zext i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, 25165824
end_hunk_19
begin_hunk_20_@GetBestColorTransformForTile:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  %i.bp = load ptr, ptr @VP8LCollectColorRedTransforms, align 8, !tbaa !31
  call void %i.bp(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.bo, ptr noundef nonnull %i.c) #12, !inline_history !49
  %i.bq = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.br = call i64 %i.bq(ptr noundef nonnull %i.c, ptr noundef nonnull %8) #12, !inline_history !50
  %i.bs = load i32, ptr %i.c, align 16, !tbaa !3
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 25165824
end_hunk_20
begin_hunk_21_@GetBestColorTransformForTile:bb.a
  %spec.select46.i = select i1 %i.dc, i32 %i.bo, i32 %.167.i ; 3 uses
  %i.dd = add nsw i32 %.04066.i, %i.bn            ; 2 uses
  %.not.i = icmp sgt i32 %i.dd, %i.bl
  br i1 %.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !51

._crit_edge.i:                                    ; preds = %GetPredictionCostCrossColorRed.exit62.i
  %i.de = add nuw nsw i32 %.03970.i, 1
  %exitcond.not.i = icmp eq i32 %.03970.i, %i.bk
  br i1 %exitcond.not.i, label %._crit_edge73.loopexit.i, label %.lr.ph.i, !llvm.loop !52

._crit_edge73.loopexit.i:                         ; preds = %._crit_edge.i
  %i.df = trunc i32 %spec.select46.i to i8
end_hunk_21
begin_hunk_22_@GetBestColorTransformForTile:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.dg = load ptr, ptr @VP8LCollectColorBlueTransforms, align 8, !tbaa !31
  call void %i.dg(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #12, !inline_history !53
  %i.dh = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.di = call i64 %i.dh(ptr noundef nonnull %i.a, ptr noundef nonnull %9) #12, !inline_history !54
  %i.dj = load i32, ptr %i.a, align 16, !tbaa !3
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw nsw i64 %i.dk, 25165824
end_hunk_22
begin_hunk_23_@GetBestColorTransformForTile:bb.a
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %i.fc = icmp samesign ugt i64 %i.ei, %indvars.iv.next85.i
  %i.fd = select i1 %i.eg, i1 %i.fc, i1 false
  br i1 %i.fd, label %bb.ab, label %GetBestGreenRedToBlue.exit, !llvm.loop !55

bb.ab:                                            ; preds = %bb.aa, %GetPredictionCostCrossColorBlue.exit
  %indvars.iv84.i = phi i64 [ 0, %GetPredictionCostCrossColorBlue.exit ], [ %indvars.iv.next85.i, %bb.aa ] ; 4 uses
end_hunk_23
begin_hunk_24_@GetBestColorTransformForTile:bb.a
  %.06078.i = phi i32 [ 0, %GetPredictionCostCrossColorBlue.exit ], [ %.262.i, %bb.aa ]
  %.06676.i = phi i64 [ %i.fb, %GetPredictionCostCrossColorBlue.exit ], [ %.268.i, %bb.aa ]
  %i.fe = getelementptr inbounds nuw i8, ptr @__const.GetBestGreenRedToBlue.delta_lut, i64 %indvars.iv84.i
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !56
  %i.fg = sext i8 %i.ff to i32                    ; 2 uses
  %i.fh = icmp ne i64 %indvars.iv84.i, 4
  %or.cond.not82.i = or i1 %i.eg, %i.fh
end_hunk_24
begin_hunk_25_@GetBestColorTransformForTile:bb.a
  %.16174.i = phi i32 [ %.262.i, %GetPredictionCostCrossColorBlue.exit.i ], [ %.06078.i, %bb.ab ] ; 2 uses
  %.16773.i = phi i64 [ %.268.i, %GetPredictionCostCrossColorBlue.exit.i ], [ %.06676.i, %bb.ab ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr @__const.GetBestGreenRedToBlue.offset, i64 %indvars.iv.i ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !56
  %i.fk = sext i8 %i.fj to i32
  %i.fl = mul nsw i32 %i.fk, %i.fg
  %i.fm = add nsw i32 %i.fl, %.15975.i            ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !56
  %i.fp = sext i8 %i.fo to i32
  %i.fq = mul nsw i32 %i.fp, %i.fg
  %i.fr = add nsw i32 %i.fq, %.16174.i            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  %i.fs = load ptr, ptr @VP8LCollectColorBlueTransforms, align 8, !tbaa !31
  call void %i.fs(ptr noundef %i.r, i32 noundef %6, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.fm, i32 noundef %i.fr, ptr noundef nonnull %i.b) #12, !inline_history !57
  %i.ft = load ptr, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !31
  %i.fu = call i64 %i.ft(ptr noundef nonnull %i.b, ptr noundef nonnull %9) #12, !inline_history !58
  %i.fv = load i32, ptr %i.b, align 16, !tbaa !3
  %i.fw = zext i32 %i.fv to i64
  %i.fx = mul nuw nsw i64 %i.fw, 25165824
end_hunk_25
begin_hunk_26_@GetBestColorTransformForTile:bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hn = icmp samesign ult i64 %indvars.iv.i, 7
  %or.cond80.i = select i1 %or.cond.not82.i, i1 %i.hn, i1 false
  br i1 %or.cond80.i, label %bb.ac, label %bb.al, !llvm.loop !59

bb.al:                                            ; preds = %GetPredictionCostCrossColorBlue.exit.i
  %i.ho = trunc i64 %indvars.iv84.i to i32
end_hunk_26
begin_hunk_27_@MaxDiffsForRow:bb.a
  %i.du = tail call range(i32 0, 256) i32 @llvm.umax.i32(i32 %i.ds, i32 %i.dt)
  %i.dv = trunc nuw i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !56
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !60

.loopexit:                                        ; preds = %bb.e, %bb.a
  ret void
end_hunk_27
begin_hunk_28_@GetResidual:bb.a

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @VP8LPredictorsSub, align 16, !tbaa !31
  tail call void %i.d(ptr noundef %3, ptr noundef null, i32 noundef 1, ptr noundef %12) #12, !inline_history !61
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 16), align 16, !tbaa !31
  tail call void %i.e(ptr noundef %3, ptr noundef %2, i32 noundef 1, ptr noundef %12) #12, !inline_history !61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
end_hunk_28
begin_hunk_29_@GetResidual:bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 8), align 8, !tbaa !31
  %i.j = sext i32 %.021.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %3, i64 %i.j
  tail call void %i.i(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef %.022.i, ptr noundef %.0.i) #12, !inline_history !61
  br label %PredictBatch.exit

bb.i:                                             ; preds = %bb.g
end_hunk_29
begin_hunk_30_@GetResidual:bb.a
  %i.o = sext i32 %.021.i to i64                  ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %i.o
  tail call void %i.n(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, i32 noundef %.022.i, ptr noundef %.0.i) #12, !inline_history !61
  br label %PredictBatch.exit

bb.j:                                             ; preds = %bb.a
end_hunk_30
begin_hunk_31_@GetResidual:bb.a
  store i32 %.1.us, ptr %i.av, align 4, !tbaa !3
  %indvars.iv.next112 = add nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count
  br i1 %exitcond114.not, label %PredictBatch.exit, label %.lr.ph.split.us, !llvm.loop !62

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aw = icmp eq i32 %5, 0
end_hunk_31
begin_hunk_32_@GetResidual:bb.a
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, 1 ; 2 uses
  %lftr.wideiv109 = trunc i64 %indvars.iv.next107 to i32
  %exitcond110.not = icmp eq i32 %7, %lftr.wideiv109
  br i1 %exitcond110.not, label %PredictBatch.exit, label %.lr.ph.split.split.us, !llvm.loop !62

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.x, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split.preheader
end_hunk_32
begin_hunk_33_@GetResidual:bb.a
  %indvars.iv.next102 = add nsw i64 %indvars.iv101, 1 ; 2 uses
  %lftr.wideiv104 = trunc i64 %indvars.iv.next102 to i32
  %exitcond105.not = icmp eq i32 %7, %lftr.wideiv104
  br i1 %exitcond105.not, label %PredictBatch.exit, label %.lr.ph.split.split.split.us, !llvm.loop !62

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split.split.preheader, %bb.ao
  %indvars.iv = phi i64 [ %i.ay, %.lr.ph.split.split.split.preheader ], [ %indvars.iv.next, %bb.ao ] ; 11 uses
end_hunk_33
begin_hunk_34_@GetResidual:bb.a
  %i.da = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3  ; 6 uses
  %i.dc = getelementptr inbounds i8, ptr %4, i64 %indvars.iv
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !56  ; 2 uses
  %i.de = zext i8 %i.dd to i32
  %i.df = icmp ult i8 %i.dd, 3
  br i1 %i.df, label %bb.z, label %.preheader.i
end_hunk_34
begin_hunk_35_@GetResidual:bb.a
  %.037.i = phi i32 [ %i.dp, %.preheader.i ], [ %9, %bb.y ] ; 8 uses
  %.not.i = icmp slt i32 %.037.i, %i.de
  %i.dp = lshr i32 %.037.i, 1                     ; 5 uses
  br i1 %.not.i, label %bb.aa, label %.preheader.i, !llvm.loop !63

bb.aa:                                            ; preds = %.preheader.i
  %i.dq = lshr i32 %i.db, 24                      ; 3 uses
end_hunk_35
begin_hunk_36_@GetResidual:bb.a
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %7, %lftr.wideiv
  br i1 %exitcond.not, label %PredictBatch.exit, label %.lr.ph.split.split.split, !llvm.loop !62

PredictBatch.exit:                                ; preds = %bb.ao, %bb.w, %bb.r, %bb.m, %bb.j, %bb.i, %bb.h
  ret void
end_hunk_36
begin_hunk_37_@llvm.assume
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = !{!21, !21, i64 0}
!32 = distinct !{null, null, null}
!33 = distinct !{!33, !8}
!34 = distinct !{null, null}
!35 = distinct !{null}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{null, null}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8, !42}
!42 = !{!"llvm.loop.peeled.count", i32 1}
!43 = distinct !{null}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{null, null}
!50 = distinct !{null, null, null}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{null}
!54 = distinct !{null, null}
!55 = distinct !{!55, !8}
!56 = !{!5, !5, i64 0}
!57 = distinct !{null, null}
!58 = distinct !{null, null, null}
!59 = distinct !{!59, !8}
!60 = distinct !{!60, !8}
!61 = distinct !{null}
!62 = distinct !{!62, !8}
!63 = distinct !{!63, !8}
end_hunk_37
