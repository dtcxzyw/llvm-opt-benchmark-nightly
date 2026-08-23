Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_afwtdn?download=true
inline.NumInlined: 37
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@filter_channel:bb.a
  %.sink.i239.i = phi double [ 0.000000e+00, %bb.az ], [ %i.afi, %bb.ay ]
  %.149.i240.i = phi i32 [ %.04855.i222.i, %bb.az ], [ %i.afg, %bb.ay ]
  %i.afl = getelementptr inbounds [8 x i8], ptr %i.aeq, i64 %.sink68.i238.i
  store double %.sink.i239.i, ptr %i.afl, align 8, !tbaa !107
  %i.afm = add nsw i32 %.05054.i223.i, 1          ; 2 uses
  %.not.i241.i = icmp slt i32 %i.afm, %i.aes
  %spec.store.select.i242.i = select i1 %.not.i241.i, i32 %i.afm, i32 0
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.aw
  %.151.i224.i = phi i32 [ %spec.store.select.i242.i, %bb.ba ], [ %.05054.i223.i, %bb.aw ] ; 2 uses
  %.2.i225.i = phi i32 [ %.149.i240.i, %bb.ba ], [ %.04855.i222.i, %bb.aw ]
  %.1.i226.i = phi i32 [ 0, %bb.ba ], [ %.057.i221.i, %bb.aw ] ; 2 uses
  %i.afn = sub i32 %i.aew, %.1.i226.i             ; 2 uses
  %i.afo = icmp sgt i32 %i.afn, 1
  br i1 %i.afo, label %.lr.ph.preheader.i231.i, label %._crit_edge.i227.i

.lr.ph.preheader.i231.i:                          ; preds = %bb.bb
  %i.afp = lshr i32 %i.afn, 1
  %i.afq = zext nneg i32 %.1.i226.i to i64
  %wide.trip.count.i232.i = zext nneg i32 %i.afp to i64
  br label %.lr.ph.i233.i

._crit_edge.i227.i:                               ; preds = %.lr.ph.i233.i, %bb.bb
  %.046.lcssa.i228.i = phi double [ 0.000000e+00, %bb.bb ], [ %i.agj, %.lr.ph.i233.i ]
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %indvars.iv62.i220.i
  store double %.046.lcssa.i228.i, ptr %i.afr, align 8, !tbaa !107
  %indvars.iv.next63.i229.i = add nuw nsw i64 %indvars.iv62.i220.i, 1 ; 2 uses
  %exitcond66.not.i230.i = icmp eq i64 %indvars.iv.next63.i229.i, %wide.trip.count65.i219.i
  br i1 %exitcond66.not.i230.i, label %conv_up.exit243.i, label %bb.aw, !llvm.loop !137

.lr.ph.i233.i:                                    ; preds = %.lr.ph.i233.i, %.lr.ph.preheader.i231.i
  %indvars.iv.i234.i = phi i64 [ 0, %.lr.ph.preheader.i231.i ], [ %indvars.iv.next.i236.i, %.lr.ph.i233.i ] ; 3 uses
  %.04652.i235.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i231.i ], [ %i.agj, %.lr.ph.i233.i ]
  %i.afs = trunc i64 %indvars.iv.i234.i to i32
  %i.aft = xor i32 %i.afs, -1
  %i.afu = add i32 %.151.i224.i, %i.aft
  %i.afv = and i32 %i.afu, %i.aex
  %i.afw = sext i32 %i.afv to i64                 ; 2 uses
  %i.afx = getelementptr inbounds [8 x i8], ptr %i.aeo, i64 %i.afw
  %i.afy = load double, ptr %i.afx, align 8, !tbaa !107
  %i.afz = shl nuw nsw i64 %indvars.iv.i234.i, 1
  %i.aga = add nuw nsw i64 %i.afz, %i.afq         ; 2 uses
  %i.agb = getelementptr inbounds nuw [8 x i8], ptr %i.aek, i64 %i.aga
  %i.agc = load double, ptr %i.agb, align 8, !tbaa !107
  %i.agd = getelementptr inbounds [8 x i8], ptr %i.aeq, i64 %i.afw
  %i.age = load double, ptr %i.agd, align 8, !tbaa !107
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.aem, i64 %i.aga
  %i.agg = load double, ptr %i.agf, align 8, !tbaa !107
  %i.agh = fmul nsz double %i.age, %i.agg
  %i.agi = tail call nsz double @llvm.fmuladd.f64(double %i.afy, double %i.agc, double %i.agh)
  %i.agj = fadd nsz double %.04652.i235.i, %i.agi ; 2 uses
  %indvars.iv.next.i236.i = add nuw nsw i64 %indvars.iv.i234.i, 1 ; 2 uses
  %exitcond.not.i237.i = icmp eq i64 %indvars.iv.next.i236.i, %wide.trip.count.i232.i
  br i1 %exitcond.not.i237.i, label %._crit_edge.i227.i, label %.lr.ph.i233.i, !llvm.loop !138

conv_up.exit243.i:                                ; preds = %._crit_edge.i227.i, %bb.av
  %i.agk = icmp sgt i32 %i.ye, 2
  br i1 %i.agk, label %append_left_ext.exit283.i, label %append_left_ext.exit.i

append_left_ext.exit.i:                           ; preds = %conv_up.exit309.i, %conv_up.exit243.i
  %.0200.lcssa.i = phi ptr [ %i.adl, %conv_up.exit243.i ], [ %.0199322.i, %conv_up.exit309.i ]
  %i.agl = load i32, ptr %i.fm, align 4, !tbaa !59 ; 3 uses
  %i.agm = add nsw i32 %i.agl, -2
  %mulshl.i244.i = shl i32 %i.agm, %i.ado
  %i.agn = lshr i64 %i.ads, 1
  %i.ago = trunc nuw nsw i64 %i.agn to i32
  %reass.sub.i245.i = add nuw nsw i32 %i.ago, 2
  %i.agp = sub i32 %reass.sub.i245.i, %i.agl
  %i.agq = add i32 %i.agp, %mulshl.i244.i         ; 2 uses
  %i.agr = load ptr, ptr %i.yf, align 8, !tbaa !95
  %i.ags = sext i32 %i.agq to i64
  %i.agt = sub nsw i64 0, %i.ags
  %i.agu = getelementptr inbounds [8 x i8], ptr %i.agr, i64 %i.agt
  %i.agv = load i32, ptr %i.yg, align 4, !tbaa !71
  %i.agw = add nsw i32 %i.agq, %i.agv
  %i.agx = load ptr, ptr %i.zh, align 8, !tbaa !100
  %i.agy = load i32, ptr %i.zu, align 8, !tbaa !101 ; 2 uses
  %i.agz = load ptr, ptr %i.aej, align 8, !tbaa !62
  %i.aha = load ptr, ptr %i.ael, align 8, !tbaa !63
  %i.ahb = load ptr, ptr %i.aen, align 8, !tbaa !79 ; 4 uses
  %i.ahc = load ptr, ptr %i.aep, align 8, !tbaa !80 ; 3 uses
  %i.ahd = load i32, ptr %i.aer, align 8, !tbaa !78 ; 3 uses
  %i.ahe = sext i32 %i.ahd to i64
  %i.ahf = shl nsw i64 %i.ahe, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ahb, i8 0, i64 %i.ahf, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ahc, i8 0, i64 %i.ahf, i1 false)
  %i.ahg = icmp sgt i32 %i.agy, 0
  br i1 %i.ahg, label %.lr.ph59.i248.i, label %conv_up.exit273.i

.lr.ph59.i248.i:                                  ; preds = %append_left_ext.exit.i
  %i.ahh = add i32 %i.agl, 1
  %i.ahi = add nsw i32 %i.ahd, -1
  %wide.trip.count65.i249.i = zext nneg i32 %i.agy to i64
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i257.i, %.lr.ph59.i248.i
  %indvars.iv62.i250.i = phi i64 [ 0, %.lr.ph59.i248.i ], [ %indvars.iv.next63.i259.i, %._crit_edge.i257.i ] ; 3 uses
  %.057.i251.i = phi i32 [ 0, %.lr.ph59.i248.i ], [ 1, %._crit_edge.i257.i ]
  %.04855.i252.i = phi i32 [ 0, %.lr.ph59.i248.i ], [ %.2.i255.i, %._crit_edge.i257.i ] ; 5 uses
  %.05054.i253.i = phi i32 [ 0, %.lr.ph59.i248.i ], [ %.151.i254.i, %._crit_edge.i257.i ] ; 4 uses
  %i.ahj = and i64 %indvars.iv62.i250.i, 1
  %i.ahk = icmp eq i64 %i.ahj, 0
  br i1 %i.ahk, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.ahl = icmp slt i32 %.04855.i252.i, %i.agw
  br i1 %i.ahl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ahm = sext i32 %.04855.i252.i to i64         ; 2 uses
  %i.ahn = getelementptr inbounds [8 x i8], ptr %.0200.lcssa.i, i64 %i.ahm
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !107
  %i.ahp = sext i32 %.05054.i253.i to i64         ; 2 uses
  %i.ahq = getelementptr inbounds [8 x i8], ptr %i.ahb, i64 %i.ahp
  store double %i.aho, ptr %i.ahq, align 8, !tbaa !107
  %i.ahr = add nsw i32 %.04855.i252.i, 1
  %i.ahs = getelementptr inbounds [8 x i8], ptr %i.agu, i64 %i.ahm
  %i.aht = load double, ptr %i.ahs, align 8, !tbaa !107
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.ahu = sext i32 %.05054.i253.i to i64         ; 2 uses
  %i.ahv = getelementptr inbounds [8 x i8], ptr %i.ahb, i64 %i.ahu
  store double 0.000000e+00, ptr %i.ahv, align 8, !tbaa !107
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.sink68.i268.i = phi i64 [ %i.ahu, %bb.bf ], [ %i.ahp, %bb.be ]
  %.sink.i269.i = phi double [ 0.000000e+00, %bb.bf ], [ %i.aht, %bb.be ]
  %.149.i270.i = phi i32 [ %.04855.i252.i, %bb.bf ], [ %i.ahr, %bb.be ]
  %i.ahw = getelementptr inbounds [8 x i8], ptr %i.ahc, i64 %.sink68.i268.i
  store double %.sink.i269.i, ptr %i.ahw, align 8, !tbaa !107
  %i.ahx = add nsw i32 %.05054.i253.i, 1          ; 2 uses
  %.not.i271.i = icmp slt i32 %i.ahx, %i.ahd
  %spec.store.select.i272.i = select i1 %.not.i271.i, i32 %i.ahx, i32 0
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bc
  %.151.i254.i = phi i32 [ %spec.store.select.i272.i, %bb.bg ], [ %.05054.i253.i, %bb.bc ] ; 2 uses
  %.2.i255.i = phi i32 [ %.149.i270.i, %bb.bg ], [ %.04855.i252.i, %bb.bc ]
  %.1.i256.i = phi i32 [ 0, %bb.bg ], [ %.057.i251.i, %bb.bc ] ; 2 uses
  %i.ahy = sub i32 %i.ahh, %.1.i256.i             ; 2 uses
  %i.ahz = icmp sgt i32 %i.ahy, 1
  br i1 %i.ahz, label %.lr.ph.preheader.i261.i, label %._crit_edge.i257.i

.lr.ph.preheader.i261.i:                          ; preds = %bb.bh
  %i.aia = lshr i32 %i.ahy, 1
  %i.aib = zext nneg i32 %.1.i256.i to i64
  %wide.trip.count.i262.i = zext nneg i32 %i.aia to i64
  br label %.lr.ph.i263.i

._crit_edge.i257.i:                               ; preds = %.lr.ph.i263.i, %bb.bh
  %.046.lcssa.i258.i = phi double [ 0.000000e+00, %bb.bh ], [ %i.aiu, %.lr.ph.i263.i ]
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %indvars.iv62.i250.i
  store double %.046.lcssa.i258.i, ptr %i.aic, align 8, !tbaa !107
  %indvars.iv.next63.i259.i = add nuw nsw i64 %indvars.iv62.i250.i, 1 ; 2 uses
  %exitcond66.not.i260.i = icmp eq i64 %indvars.iv.next63.i259.i, %wide.trip.count65.i249.i
  br i1 %exitcond66.not.i260.i, label %conv_up.exit273.i, label %bb.bc, !llvm.loop !137

.lr.ph.i263.i:                                    ; preds = %.lr.ph.i263.i, %.lr.ph.preheader.i261.i
  %indvars.iv.i264.i = phi i64 [ 0, %.lr.ph.preheader.i261.i ], [ %indvars.iv.next.i266.i, %.lr.ph.i263.i ] ; 3 uses
  %.04652.i265.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i261.i ], [ %i.aiu, %.lr.ph.i263.i ]
  %i.aid = trunc i64 %indvars.iv.i264.i to i32
  %i.aie = xor i32 %i.aid, -1
  %i.aif = add i32 %.151.i254.i, %i.aie
  %i.aig = and i32 %i.aif, %i.ahi
  %i.aih = sext i32 %i.aig to i64                 ; 2 uses
  %i.aii = getelementptr inbounds [8 x i8], ptr %i.ahb, i64 %i.aih
  %i.aij = load double, ptr %i.aii, align 8, !tbaa !107
  %i.aik = shl nuw nsw i64 %indvars.iv.i264.i, 1
  %i.ail = add nuw nsw i64 %i.aik, %i.aib         ; 2 uses
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.agz, i64 %i.ail
  %i.ain = load double, ptr %i.aim, align 8, !tbaa !107
  %i.aio = getelementptr inbounds [8 x i8], ptr %i.ahc, i64 %i.aih
  %i.aip = load double, ptr %i.aio, align 8, !tbaa !107
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %i.ail
  %i.air = load double, ptr %i.aiq, align 8, !tbaa !107
  %i.ais = fmul nsz double %i.aip, %i.air
  %i.ait = tail call nsz double @llvm.fmuladd.f64(double %i.aij, double %i.ain, double %i.ais)
  %i.aiu = fadd nsz double %.04652.i265.i, %i.ait ; 2 uses
  %indvars.iv.next.i266.i = add nuw nsw i64 %indvars.iv.i264.i, 1 ; 2 uses
  %exitcond.not.i267.i = icmp eq i64 %indvars.iv.next.i266.i, %wide.trip.count.i262.i
  br i1 %exitcond.not.i267.i, label %._crit_edge.i257.i, label %.lr.ph.i263.i, !llvm.loop !138

append_left_ext.exit283.i:                        ; preds = %conv_up.exit243.i, %conv_up.exit309.i
  %indvars.iv.i226 = phi i64 [ %indvars.iv.next.i227, %conv_up.exit309.i ], [ %i.adt, %conv_up.exit243.i ] ; 5 uses
  %.0199322.i = phi ptr [ %.0200321.i, %conv_up.exit309.i ], [ %i.adm, %conv_up.exit243.i ] ; 3 uses
  %.0200321.i = phi ptr [ %.0199322.i, %conv_up.exit309.i ], [ %i.adl, %conv_up.exit243.i ] ; 2 uses
  %i.aiv = load i32, ptr %i.fm, align 4, !tbaa !59 ; 4 uses
  %indvars.iv.next.i227 = add nsw i64 %indvars.iv.i226, -1 ; 5 uses
  %i.aiw = add nsw i32 %i.aiv, -2                 ; 2 uses
  %i.aix = trunc i64 %indvars.iv.next.i227 to i32
  %i.aiy = sub i32 %i.ye, %i.aix
  %mulshl.i274.i = shl i32 %i.aiw, %i.aiy
  %i.aiz = lshr i64 %i.ads, %indvars.iv.next.i227
  %i.aja = trunc nuw nsw i64 %i.aiz to i32
  %reass.sub.i275.i = add nuw i32 %i.aja, 2
  %i.ajb = sub i32 %reass.sub.i275.i, %i.aiv
  %i.ajc = add i32 %i.ajb, %mulshl.i274.i
  %4 = lshr i64 %i.ads, %indvars.iv.i226
  %5 = trunc nuw nsw i64 %4 to i32
  %reass.sub.i280.i = add nuw i32 %5, 2
  %6 = sub i32 %reass.sub.i280.i, %i.aiv
  %i.ajd = trunc i64 %indvars.iv.i226 to i32
  %7 = sub i32 %i.ye, %i.ajd
  %mulshl.i279.i = shl i32 %i.aiw, %7
  %i.aje = add i32 %6, %mulshl.i279.i             ; 2 uses
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %indvars.iv.next.i227
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !95
  %i.ajh = sext i32 %i.aje to i64
  %i.aji = sub nsw i64 0, %i.ajh
  %i.ajj = getelementptr inbounds [8 x i8], ptr %i.ajg, i64 %i.aji
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv.next.i227
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !71
  %i.ajm = add nsw i32 %i.aje, %i.ajl
  %i.ajn = getelementptr [4 x i8], ptr %i.yg, i64 %indvars.iv.i226
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 -8
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !71
  %i.ajq = add nsw i32 %i.ajc, %i.ajp             ; 2 uses
  %i.ajr = load ptr, ptr %i.aej, align 8, !tbaa !62
  %i.ajs = load ptr, ptr %i.ael, align 8, !tbaa !63
  %i.ajt = load ptr, ptr %i.aen, align 8, !tbaa !79 ; 4 uses
  %i.aju = load ptr, ptr %i.aep, align 8, !tbaa !80 ; 3 uses
  %i.ajv = load i32, ptr %i.aer, align 8, !tbaa !78 ; 3 uses
  %i.ajw = sext i32 %i.ajv to i64
  %i.ajx = shl nsw i64 %i.ajw, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ajt, i8 0, i64 %i.ajx, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aju, i8 0, i64 %i.ajx, i1 false)
  %i.ajy = icmp sgt i32 %i.ajq, 0
  br i1 %i.ajy, label %.lr.ph59.i284.i, label %conv_up.exit309.i

.lr.ph59.i284.i:                                  ; preds = %append_left_ext.exit283.i
  %i.ajz = add i32 %i.aiv, 1
  %i.aka = add nsw i32 %i.ajv, -1
  %wide.trip.count65.i285.i = zext nneg i32 %i.ajq to i64
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i293.i, %.lr.ph59.i284.i
  %indvars.iv62.i286.i = phi i64 [ 0, %.lr.ph59.i284.i ], [ %indvars.iv.next63.i295.i, %._crit_edge.i293.i ] ; 3 uses
  %.057.i287.i = phi i32 [ 0, %.lr.ph59.i284.i ], [ 1, %._crit_edge.i293.i ]
  %.04855.i288.i = phi i32 [ 0, %.lr.ph59.i284.i ], [ %.2.i291.i, %._crit_edge.i293.i ] ; 5 uses
  %.05054.i289.i = phi i32 [ 0, %.lr.ph59.i284.i ], [ %.151.i290.i, %._crit_edge.i293.i ] ; 4 uses
  %i.akb = and i64 %indvars.iv62.i286.i, 1
  %i.akc = icmp eq i64 %i.akb, 0
  br i1 %i.akc, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.akd = icmp slt i32 %.04855.i288.i, %i.ajm
  br i1 %i.akd, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ake = sext i32 %.04855.i288.i to i64         ; 2 uses
  %i.akf = getelementptr inbounds [8 x i8], ptr %.0200321.i, i64 %i.ake
  %i.akg = load double, ptr %i.akf, align 8, !tbaa !107
  %i.akh = sext i32 %.05054.i289.i to i64         ; 2 uses
  %i.aki = getelementptr inbounds [8 x i8], ptr %i.ajt, i64 %i.akh
  store double %i.akg, ptr %i.aki, align 8, !tbaa !107
  %i.akj = add nsw i32 %.04855.i288.i, 1
  %i.akk = getelementptr inbounds [8 x i8], ptr %i.ajj, i64 %i.ake
  %i.akl = load double, ptr %i.akk, align 8, !tbaa !107
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.akm = sext i32 %.05054.i289.i to i64         ; 2 uses
  %i.akn = getelementptr inbounds [8 x i8], ptr %i.ajt, i64 %i.akm
  store double 0.000000e+00, ptr %i.akn, align 8, !tbaa !107
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.sink68.i304.i = phi i64 [ %i.akm, %bb.bl ], [ %i.akh, %bb.bk ]
  %.sink.i305.i = phi double [ 0.000000e+00, %bb.bl ], [ %i.akl, %bb.bk ]
  %.149.i306.i = phi i32 [ %.04855.i288.i, %bb.bl ], [ %i.akj, %bb.bk ]
  %i.ako = getelementptr inbounds [8 x i8], ptr %i.aju, i64 %.sink68.i304.i
  store double %.sink.i305.i, ptr %i.ako, align 8, !tbaa !107
  %i.akp = add nsw i32 %.05054.i289.i, 1          ; 2 uses
  %.not.i307.i = icmp slt i32 %i.akp, %i.ajv
  %spec.store.select.i308.i = select i1 %.not.i307.i, i32 %i.akp, i32 0
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bi
  %.151.i290.i = phi i32 [ %spec.store.select.i308.i, %bb.bm ], [ %.05054.i289.i, %bb.bi ] ; 2 uses
  %.2.i291.i = phi i32 [ %.149.i306.i, %bb.bm ], [ %.04855.i288.i, %bb.bi ]
  %.1.i292.i = phi i32 [ 0, %bb.bm ], [ %.057.i287.i, %bb.bi ] ; 2 uses
  %i.akq = sub i32 %i.ajz, %.1.i292.i             ; 2 uses
  %i.akr = icmp sgt i32 %i.akq, 1
  br i1 %i.akr, label %.lr.ph.preheader.i297.i, label %._crit_edge.i293.i

.lr.ph.preheader.i297.i:                          ; preds = %bb.bn
  %i.aks = lshr i32 %i.akq, 1
  %i.akt = zext nneg i32 %.1.i292.i to i64
  %wide.trip.count.i298.i = zext nneg i32 %i.aks to i64
  br label %.lr.ph.i299.i

._crit_edge.i293.i:                               ; preds = %.lr.ph.i299.i, %bb.bn
  %.046.lcssa.i294.i = phi double [ 0.000000e+00, %bb.bn ], [ %i.alm, %.lr.ph.i299.i ]
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %.0199322.i, i64 %indvars.iv62.i286.i
  store double %.046.lcssa.i294.i, ptr %i.aku, align 8, !tbaa !107
  %indvars.iv.next63.i295.i = add nuw nsw i64 %indvars.iv62.i286.i, 1 ; 2 uses
  %exitcond66.not.i296.i = icmp eq i64 %indvars.iv.next63.i295.i, %wide.trip.count65.i285.i
  br i1 %exitcond66.not.i296.i, label %conv_up.exit309.i, label %bb.bi, !llvm.loop !137

.lr.ph.i299.i:                                    ; preds = %.lr.ph.i299.i, %.lr.ph.preheader.i297.i
  %indvars.iv.i300.i = phi i64 [ 0, %.lr.ph.preheader.i297.i ], [ %indvars.iv.next.i302.i, %.lr.ph.i299.i ] ; 3 uses
  %.04652.i301.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i297.i ], [ %i.alm, %.lr.ph.i299.i ]
  %i.akv = trunc i64 %indvars.iv.i300.i to i32
  %i.akw = xor i32 %i.akv, -1
  %i.akx = add i32 %.151.i290.i, %i.akw
  %i.aky = and i32 %i.akx, %i.aka
  %i.akz = sext i32 %i.aky to i64                 ; 2 uses
  %i.ala = getelementptr inbounds [8 x i8], ptr %i.ajt, i64 %i.akz
  %i.alb = load double, ptr %i.ala, align 8, !tbaa !107
  %i.alc = shl nuw nsw i64 %indvars.iv.i300.i, 1
  %i.ald = add nuw nsw i64 %i.alc, %i.akt         ; 2 uses
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %i.ajr, i64 %i.ald
  %i.alf = load double, ptr %i.ale, align 8, !tbaa !107
  %i.alg = getelementptr inbounds [8 x i8], ptr %i.aju, i64 %i.akz
  %i.alh = load double, ptr %i.alg, align 8, !tbaa !107
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.ald
  %i.alj = load double, ptr %i.ali, align 8, !tbaa !107
  %i.alk = fmul nsz double %i.alh, %i.alj
  %i.all = tail call nsz double @llvm.fmuladd.f64(double %i.alb, double %i.alf, double %i.alk)
  %i.alm = fadd nsz double %.04652.i301.i, %i.all ; 2 uses
  %indvars.iv.next.i302.i = add nuw nsw i64 %indvars.iv.i300.i, 1 ; 2 uses
  %exitcond.not.i303.i = icmp eq i64 %indvars.iv.next.i302.i, %wide.trip.count.i298.i
  br i1 %exitcond.not.i303.i, label %._crit_edge.i293.i, label %.lr.ph.i299.i, !llvm.loop !138

conv_up.exit309.i:                                ; preds = %._crit_edge.i293.i, %append_left_ext.exit283.i
  %i.aln = icmp sgt i64 %indvars.iv.i226, 2
  br i1 %i.aln, label %append_left_ext.exit283.i, label %append_left_ext.exit.i, !llvm.loop !139

conv_up.exit273.i:                                ; preds = %._crit_edge.i257.i, %append_left_ext.exit.i, %conv_up.exit.i
  %i.alo = load ptr, ptr %i.zh, align 8, !tbaa !100
  %i.alp = shl nsw i64 %.0202.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.alo, i8 0, i64 %i.alp, i1 false)
  %i.alq = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 4 uses
  %i.alr = load i32, ptr %i.alq, align 8, !tbaa !83 ; 2 uses
  %.not211.i = icmp sgt i32 %i.alr, %i.yi
  %i.als = load i32, ptr %i.za, align 8, !tbaa !99 ; 4 uses
  br i1 %.not211.i, label %.preheader.i, label %bb.bo

.preheader.i:                                     ; preds = %conv_up.exit273.i
  %.neg212.i = add i32 %i.alr, %.0.i311.i
  %i.alt = sub i32 %.neg212.i, %i.als             ; 3 uses
  %i.alu = icmp sgt i32 %i.alt, 0
  br i1 %i.alu, label %.lr.ph328.i, label %.preheader.._crit_edge329_crit_edge.i

.preheader.._crit_edge329_crit_edge.i:            ; preds = %.preheader.i
  %.phi.trans.insert352.i = getelementptr inbounds nuw i8, ptr %i.yl, i64 120
  %.pre353.i = load ptr, ptr %.phi.trans.insert352.i, align 8, !tbaa !84
  br label %._crit_edge329.i

.lr.ph328.i:                                      ; preds = %.preheader.i
  %i.alv = load ptr, ptr %i.zh, align 8, !tbaa !100 ; 6 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.yl, i64 120
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !84 ; 9 uses
  %invariant.op.i = sub i32 %i.als, %.0.i311.i    ; 7 uses
  %wide.trip.count340.i = zext nneg i32 %i.alt to i64 ; 7 uses
  %min.iters.check481 = icmp ult i32 %i.alt, 14
  br i1 %min.iters.check481, label %scalar.ph480.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph328.i
  %i.aly = add nsw i64 %wide.trip.count340.i, -1  ; 2 uses
  %i.alz = trunc nsw i64 %i.aly to i32
  %i.ama = add i32 %invariant.op.i, %i.alz
  %i.amb = icmp slt i32 %i.ama, %invariant.op.i
  %i.amc = icmp ugt i64 %i.aly, 4294967295
  %i.amd = or i1 %i.amb, %i.amc
  br i1 %i.amd, label %scalar.ph480.preheader, label %vector.memcheck473

vector.memcheck473:                               ; preds = %vector.scevcheck
  %i.ame = shl nuw nsw i64 %wide.trip.count340.i, 3 ; 2 uses
  %scevgep474 = getelementptr i8, ptr %i.alv, i64 %i.ame
  %i.amf = sext i32 %invariant.op.i to i64
  %i.amg = shl nsw i64 %i.amf, 3                  ; 2 uses
  %scevgep475 = getelementptr i8, ptr %i.alx, i64 %i.amg
  %i.amh = getelementptr i8, ptr %i.alx, i64 %i.amg
  %scevgep476 = getelementptr i8, ptr %i.amh, i64 %i.ame
  %bound0477 = icmp ult ptr %i.alv, %scevgep476
  %bound1478 = icmp ult ptr %scevgep475, %scevgep474
  %found.conflict479 = and i1 %bound0477, %bound1478
  br i1 %found.conflict479, label %scalar.ph480.preheader, label %vector.ph482

vector.ph482:                                     ; preds = %vector.memcheck473
  %n.vec483 = and i64 %wide.trip.count340.i, 2147483644 ; 3 uses
  br label %vector.body484

vector.body484:                                   ; preds = %vector.body484, %vector.ph482
  %index485 = phi i64 [ 0, %vector.ph482 ], [ %index.next490, %vector.body484 ] ; 3 uses
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %i.alv, i64 %index485 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 16
  %wide.load486 = load <2 x double>, ptr %i.ami, align 8, !tbaa !107, !alias.scope !140, !noalias !143
  %wide.load487 = load <2 x double>, ptr %i.amj, align 8, !tbaa !107, !alias.scope !140, !noalias !143
  %i.amk = trunc nuw nsw i64 %index485 to i32
  %i.aml = add i32 %invariant.op.i, %i.amk
  %i.amm = sext i32 %i.aml to i64
  %i.amn = getelementptr inbounds [8 x i8], ptr %i.alx, i64 %i.amm ; 3 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 16 ; 2 uses
  %wide.load488 = load <2 x double>, ptr %i.amn, align 8, !tbaa !107, !alias.scope !143
  %wide.load489 = load <2 x double>, ptr %i.amo, align 8, !tbaa !107, !alias.scope !143
  %i.amp = fadd nsz <2 x double> %wide.load486, %wide.load488
  %i.amq = fadd nsz <2 x double> %wide.load487, %wide.load489
  store <2 x double> %i.amp, ptr %i.amn, align 8, !tbaa !107, !alias.scope !143
  store <2 x double> %i.amq, ptr %i.amo, align 8, !tbaa !107, !alias.scope !143
  %index.next490 = add nuw i64 %index485, 4       ; 2 uses
  %i.amr = icmp eq i64 %index.next490, %n.vec483
  br i1 %i.amr, label %middle.block491, label %vector.body484, !llvm.loop !145

end_hunk_0
