begin_hunk_0_@SizeGalley:bb.a
  %i.agz = load ptr, ptr %i.agv, align 8, !tbaa !8
  store ptr %i.agz, ptr %i.agu, align 8, !tbaa !13
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  %i.aha = phi ptr [ %i.agy, %bb.gs ], [ %i.agv, %bb.gt ] ; 14 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 32
  store i8 0, ptr %i.ahb, align 8, !tbaa !8
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  store ptr %i.aha, ptr %i.ahc, align 8, !tbaa !8
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 16
  store ptr %i.aha, ptr %i.ahd, align 8, !tbaa !8
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  store ptr %i.aha, ptr %i.ahe, align 8, !tbaa !8
  store ptr %i.aha, ptr %i.aha, align 8, !tbaa !8
  store ptr %i.aha, ptr @xx_link, align 8, !tbaa !13
  store ptr %i.aha, ptr @zz_res, align 8, !tbaa !13
  %i.ahf = load ptr, ptr %11, align 8, !tbaa !13  ; 4 uses
  store ptr %i.ahf, ptr @zz_hold, align 8, !tbaa !13
  %i.ahg = icmp eq ptr %i.ahf, null
  br i1 %i.ahg, label %.thread835, label %bb.gv

.thread835:                                       ; preds = %bb.gu
  store ptr %i.aha, ptr @zz_res, align 8, !tbaa !13
  store ptr %.1437, ptr @zz_hold, align 8, !tbaa !13
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.ahh = load ptr, ptr %i.ahf, align 8, !tbaa !8
  store ptr %i.ahh, ptr @zz_tmp, align 8, !tbaa !13
  %i.ahi = load ptr, ptr %i.aha, align 8, !tbaa !8
  store ptr %i.ahi, ptr %i.ahf, align 8, !tbaa !8
  %i.ahj = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.ahk = load ptr, ptr @zz_res, align 8, !tbaa !13 ; 2 uses
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !8
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  store ptr %i.ahj, ptr %i.ahm, align 8, !tbaa !8
  %i.ahn = load ptr, ptr @zz_tmp, align 8, !tbaa !13 ; 2 uses
  store ptr %i.ahn, ptr %i.ahk, align 8, !tbaa !8
  %i.aho = load ptr, ptr @zz_res, align 8, !tbaa !13
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  store ptr %i.aho, ptr %i.ahp, align 8, !tbaa !8
  %.pre726 = load ptr, ptr @xx_link, align 8, !tbaa !13 ; 3 uses
  store ptr %.pre726, ptr @zz_res, align 8, !tbaa !13
  store ptr %.1437, ptr @zz_hold, align 8, !tbaa !13
  %i.ahq = icmp eq ptr %.pre726, null
  br i1 %i.ahq, label %bb.hp, label %bb.gw

bb.gw:                                            ; preds = %.thread835, %bb.gv
  %i.ahr = phi ptr [ %i.aha, %.thread835 ], [ %.pre726, %bb.gv ] ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.1437, i64 16 ; 2 uses
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !8 ; 3 uses
  store ptr %i.aht, ptr @zz_tmp, align 8, !tbaa !13
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahr, i64 16 ; 2 uses
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !8 ; 2 uses
  store ptr %i.ahv, ptr %i.ahs, align 8, !tbaa !8
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 24
  store ptr %.1437, ptr %i.ahw, align 8, !tbaa !8
  store ptr %i.aht, ptr %i.ahu, align 8, !tbaa !8
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aht, i64 24
  store ptr %i.ahr, ptr %i.ahx, align 8, !tbaa !8
  br label %bb.hp

bb.gx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  %i.ahy = getelementptr inbounds nuw i8, ptr %.1437, i64 80
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !8 ; 7 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 32 ; 12 uses
  %i.aib = load i8, ptr %i.aia, align 8, !tbaa !8 ; 4 uses
  %i.aic = icmp ne i8 %i.aib, 32                  ; 10 uses
  %.in564.v = select i1 %i.aic, i64 16, i64 24    ; 2 uses
  %.in564 = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %.in564.v
  %i.aid = load ptr, ptr %.in564, align 8, !tbaa !8
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gy, %bb.gx
  %.0456.in = phi ptr [ %i.aid, %bb.gx ], [ %.0456, %bb.gy ]
  %.0456 = load ptr, ptr %.0456.in, align 8, !tbaa !8 ; 4 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %.0456, i64 32
  %i.aif = load i8, ptr %i.aie, align 8, !tbaa !8 ; 3 uses
  %i.aig = icmp eq i8 %i.aif, 0
  br i1 %i.aig, label %bb.gy, label %.preheader, !llvm.loop !27

.preheader:                                       ; preds = %bb.gy
  %. = zext i1 %i.aic to i32                      ; 2 uses
  %.602 = select i1 %i.aic, i32 15, i32 16        ; 2 uses
  %.603 = select i1 %i.aic, i32 17, i32 19
  %.604 = select i1 %i.aic, i32 18, i32 19
  %.605 = select i1 %i.aic, i32 31, i32 30        ; 8 uses
  %.606 = select i1 %i.aic, i8 25, i8 24
  %i.aih = icmp eq i8 %i.aif, 9
  %i.aii = zext i8 %i.aif to i32                  ; 2 uses
  %i.aij = icmp eq i32 %.602, %i.aii
  %or.cond608669 = or i1 %i.aih, %i.aij
  br i1 %or.cond608669, label %.critedge, label %._crit_edge671

.loopexit:                                        ; preds = %bb.gz
  %i.aik = icmp eq i8 %i.aip, 9
  %i.ail = zext i8 %i.aip to i32                  ; 2 uses
  %i.aim = icmp eq i32 %.602, %i.ail
  %or.cond608 = or i1 %i.aik, %i.aim
  br i1 %or.cond608, label %.critedge, label %._crit_edge671, !llvm.loop !28

.critedge:                                        ; preds = %.preheader, %.loopexit
  %.1457670 = phi ptr [ %.2458, %.loopexit ], [ %.0456, %.preheader ]
  %.in570 = getelementptr inbounds nuw i8, ptr %.1457670, i64 %.in564.v
  %i.ain = load ptr, ptr %.in570, align 8, !tbaa !8
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gz, %.critedge
  %.2458.in = phi ptr [ %i.ain, %.critedge ], [ %.2458, %bb.gz ]
  %.2458 = load ptr, ptr %.2458.in, align 8, !tbaa !8 ; 4 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.2458, i64 32
  %i.aip = load i8, ptr %i.aio, align 8, !tbaa !8 ; 3 uses
  %i.aiq = icmp eq i8 %i.aip, 0
  br i1 %i.aiq, label %bb.gz, label %.loopexit, !llvm.loop !29

._crit_edge671:                                   ; preds = %.loopexit, %.preheader
  %.1457.lcssa = phi ptr [ %.0456, %.preheader ], [ %.2458, %.loopexit ] ; 2 uses
  %.lcssa638 = phi i32 [ %i.aii, %.preheader ], [ %i.ail, %.loopexit ] ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !8
  br label %bb.ha

bb.ha:                                            ; preds = %bb.ha, %._crit_edge671
  %.pn = phi ptr [ %i.ais, %._crit_edge671 ], [ %.0455, %bb.ha ]
  %.0455.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.0455 = load ptr, ptr %.0455.in, align 8, !tbaa !8 ; 4 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.0455, i64 32
  %i.aiu = load i8, ptr %i.ait, align 8, !tbaa !8
  %i.aiv = icmp eq i8 %i.aiu, 0
  br i1 %i.aiv, label %bb.ha, label %bb.hb, !llvm.loop !30

bb.hb:                                            ; preds = %bb.ha
  %.not565 = icmp eq i32 %.603, %.lcssa638
  %.not566 = icmp eq i32 %.604, %.lcssa638
  %or.cond609 = or i1 %.not565, %.not566
  br i1 %or.cond609, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.aiw = zext i8 %i.aib to i32
  %i.aix = call ptr @Image(i32 noundef %i.aiw) #4
  %i.aiy = call ptr @Image(i32 noundef %.605) #4
  %i.aiz = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 8, ptr noundef nonnull @.str.24, i32 noundef 2, ptr noundef nonnull %i.aia, ptr noundef %i.aix, ptr noundef %i.aiy) #4 ; 0 uses
  %i.aja = trunc nuw nsw i32 %.605 to i8
  store i8 %i.aja, ptr %i.aia, align 8, !tbaa !8
  br label %bb.hn

bb.hd:                                            ; preds = %bb.hb
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0455, i64 48
  %i.ajc = zext i1 %i.aic to i64                  ; 4 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.ajb, i64 %i.ajc
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !8 ; 3 uses
  %i.ajf = icmp eq i32 %i.aje, 0
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0455, i64 56
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.ajc
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !8 ; 3 uses
  %i.ajj = icmp eq i32 %i.aji, 0                  ; 2 uses
  br i1 %i.ajf, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  br i1 %i.ajj, label %bb.hf, label %.thread623

bb.hf:                                            ; preds = %bb.he
  store i8 %.606, ptr %i.aia, align 8, !tbaa !8
  br label %bb.hn

bb.hg:                                            ; preds = %bb.hd
  br i1 %i.ajj, label %.thread623, label %bb.hh

.thread623:                                       ; preds = %bb.he, %bb.hg
  %i.ajk = zext i8 %i.aib to i32
  %i.ajl = call ptr @Image(i32 noundef %i.ajk) #4
  %i.ajm = call ptr @Image(i32 noundef %.605) #4
  %i.ajn = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 9, ptr noundef nonnull @.str.25, i32 noundef 2, ptr noundef nonnull %i.aia, ptr noundef %i.ajl, ptr noundef %i.ajm) #4 ; 0 uses
  %i.ajo = trunc nuw nsw i32 %.605 to i8
  store i8 %i.ajo, ptr %i.aia, align 8, !tbaa !8
  br label %bb.hn

bb.hh:                                            ; preds = %bb.hg
  %i.ajp = getelementptr inbounds nuw i8, ptr %.1457.lcssa, i64 48
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.ajp, i64 %i.ajc
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !8 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %.1457.lcssa, i64 56
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ajs, i64 %i.ajc
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !8 ; 2 uses
  %i.ajv = sub i32 0, %i.aju
  %i.ajw = icmp eq i32 %i.ajr, %i.ajv
  br i1 %i.ajw, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.ajx = zext i8 %i.aib to i32
  %i.ajy = call ptr @Image(i32 noundef %i.ajx) #4
  %i.ajz = call ptr @Image(i32 noundef %.605) #4
  %i.aka = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 10, ptr noundef nonnull @.str.26, i32 noundef 2, ptr noundef nonnull %i.aia, ptr noundef %i.ajy, ptr noundef %i.ajz) #4 ; 0 uses
  %i.akb = trunc nuw nsw i32 %.605 to i8
  store i8 %i.akb, ptr %i.aia, align 8, !tbaa !8
  br label %bb.hn

bb.hj:                                            ; preds = %bb.hh
  %15 = insertelement <2 x i32> poison, i32 %i.ajr, i64 0
  %16 = insertelement <2 x i32> %15, i32 %i.aju, i64 1
  %17 = sitofp <2 x i32> %16 to <2 x float>
  %18 = insertelement <2 x i32> poison, i32 %i.aje, i64 0
  %19 = insertelement <2 x i32> %18, i32 %i.aji, i64 1
  %20 = sitofp <2 x i32> %19 to <2 x float>
  %21 = fdiv <2 x float> %17, %20                 ; 2 uses
  %22 = extractelement <2 x float> %21, i64 0     ; 2 uses
  %23 = extractelement <2 x float> %21, i64 1     ; 2 uses
  %i.akc = fcmp olt float %22, %23
  %i.akd = select i1 %i.akc, float %23, float %22
  %i.ake = fmul float %i.akd, 1.280000e+02
  %i.akf = fptosi float %i.ake to i32             ; 4 uses
  %i.akg = mul nsw i32 %i.aje, %i.akf
  %i.akh = sdiv i32 %i.akg, 128                   ; 3 uses
  %i.aki = mul nsw i32 %i.aji, %i.akf
  %i.akj = sdiv i32 %i.aki, 128                   ; 3 uses
  call void @Constrained(ptr noundef nonnull %i.ahz, ptr noundef nonnull %14, i32 noundef %., ptr noundef nonnull %i.b) #4
  %i.akk = load i32, ptr %14, align 4, !tbaa !17
  %.not567 = icmp sgt i32 %i.akh, %i.akk
  br i1 %.not567, label %bb.hm, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.akl = add nsw i32 %i.akh, %i.akj
  %i.akm = load i32, ptr %i.acc, align 4, !tbaa !19
  %.not568 = icmp sgt i32 %i.akl, %i.akm
  %i.akn = load i32, ptr %i.acd, align 4
  %.not569 = icmp sgt i32 %i.akj, %i.akn
  %or.cond611 = select i1 %.not568, i1 true, i1 %.not569
  br i1 %or.cond611, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  store i8 34, ptr %i.aia, align 8, !tbaa !8
  %spec.select875 = select i1 %i.aic, i32 128, i32 %i.akf
  %spec.select876 = select i1 %i.aic, i32 %i.akf, i32 128
  %i.ako = getelementptr inbounds nuw i8, ptr %i.ahz, i64 64
  store i32 %spec.select875, ptr %i.ako, align 8, !tbaa !8
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ahz, i64 72
  store i32 %spec.select876, ptr %i.akp, align 8, !tbaa !8
  call void @AdjustSize(ptr noundef nonnull %i.ahz, i32 noundef %i.akh, i32 noundef %i.akj, i32 noundef %.) #4
  br label %bb.hn

bb.hm:                                            ; preds = %bb.hk, %bb.hj
  %i.akq = load i8, ptr %i.aia, align 8, !tbaa !8
  %i.akr = zext i8 %i.akq to i32
  %i.aks = call ptr @Image(i32 noundef %i.akr) #4
  %i.akt = call ptr @Image(i32 noundef %.605) #4
  %i.aku = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 21, i32 noundef 11, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef nonnull %i.aia, ptr noundef %i.aks, ptr noundef %i.akt) #4 ; 0 uses
  %i.akv = trunc nuw nsw i32 %.605 to i8
  store i8 %i.akv, ptr %i.aia, align 8, !tbaa !8
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hf, %bb.hi, %bb.hm, %bb.hl, %.thread623, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  br label %bb.hp

bb.ho:                                            ; preds = %bb.fw
  %i.akw = zext i8 %i.adb to i32
  %i.akx = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.aky = call ptr @Image(i32 noundef %i.akw) #4
  %i.akz = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef %i.akx, ptr noundef nonnull @.str.29, ptr noundef %i.aky) #4 ; 0 uses
  br label %bb.hp

bb.hp:                                            ; preds = %bb.fz, %bb.hn, %bb.ho, %bb.gk, %bb.gj, %bb.gv, %bb.gw, %bb.gl, %bb.fw, %bb.fw, %bb.fw, %bb.fw, %bb.fw, %bb.fw, %bb.fw, %bb.fw, %bb.fw, %bb.fw, %bb.fw
  %.2443 = phi i32 [ %.1442677, %bb.ho ], [ %.1442677, %bb.hn ], [ %spec.select, %bb.fz ], [ %.1442677, %bb.gj ], [ %.1442677, %bb.gk ], [ 1, %bb.gl ], [ 0, %bb.gv ], [ 0, %bb.gw ], [ %.1442677, %bb.fw ], [ %.1442677, %bb.fw ], [ %.1442677, %bb.fw ], [ %.1442677, %bb.fw ], [ %.1442677, %bb.fw ], [ %.1442677, %bb.fw ], [ %.1442677, %bb.fw ], [ %.1442677, %bb.fw ], [ %.1442677, %bb.fw ], [ %.1442677, %bb.fw ], [ %.1442677, %bb.fw ] ; 2 uses
  %.0440.in = getelementptr inbounds nuw i8, ptr %.0440678, i64 8
  %.0440 = load ptr, ptr %.0440.in, align 8, !tbaa !8 ; 2 uses
  %i.ala = load ptr, ptr %i.c, align 8, !tbaa !13 ; 3 uses
  %.not562 = icmp eq ptr %.0440, %i.ala
  br i1 %.not562, label %._crit_edge679.loopexit, label %.preheader624, !llvm.loop !31

._crit_edge679.loopexit:                          ; preds = %bb.hp
  %.phi.trans.insert733 = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %.pre734 = load ptr, ptr %.phi.trans.insert733, align 8, !tbaa !8
  br label %._crit_edge679

._crit_edge679:                                   ; preds = %._crit_edge679.loopexit, %bb.fu
  %i.alb = phi ptr [ %.0440675, %bb.fu ], [ %.pre734, %._crit_edge679.loopexit ] ; 6 uses
  %.1442.lcssa = phi i32 [ %.0441684, %bb.fu ], [ %.2443, %._crit_edge679.loopexit ]
  %.lcssa639 = phi ptr [ %i.acz, %bb.fu ], [ %i.ala, %._crit_edge679.loopexit ] ; 4 uses
  %.not563 = icmp eq ptr %i.alb, %.lcssa639
  br i1 %.not563, label %bb.hu, label %bb.hq

bb.hq:                                            ; preds = %._crit_edge679
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 32
  %i.ald = load i8, ptr %i.alc, align 8, !tbaa !8
  %i.ale = icmp eq i8 %i.ald, 0
  br i1 %i.ale, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.alf = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.alg = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.alf, ptr noundef nonnull @.str.8) #4 ; 0 uses
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  store ptr %i.alb, ptr @zz_res, align 8, !tbaa !13
  store ptr %.lcssa639, ptr @zz_hold, align 8, !tbaa !13
  %i.alh = load ptr, ptr %.lcssa639, align 8, !tbaa !8
  store ptr %i.alh, ptr @zz_tmp, align 8, !tbaa !13
  %i.ali = load ptr, ptr %i.alb, align 8, !tbaa !8
  store ptr %i.ali, ptr %.lcssa639, align 8, !tbaa !8
  %i.alj = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.alk = load ptr, ptr @zz_res, align 8, !tbaa !13 ; 2 uses
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !8
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  store ptr %i.alj, ptr %i.alm, align 8, !tbaa !8
  %i.aln = load ptr, ptr @zz_tmp, align 8, !tbaa !13 ; 2 uses
  store ptr %i.aln, ptr %i.alk, align 8, !tbaa !8
  %i.alo = load ptr, ptr @zz_res, align 8, !tbaa !13
  %i.alp = getelementptr inbounds nuw i8, ptr %i.aln, i64 8
  store ptr %i.alo, ptr %i.alp, align 8, !tbaa !8
  store ptr %i.alb, ptr @zz_res, align 8, !tbaa !13
  store ptr %.3435685, ptr @zz_hold, align 8, !tbaa !13
  %i.alq = icmp eq ptr %.3435685, null
  br i1 %i.alq, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.alr = load ptr, ptr %.3435685, align 8, !tbaa !8
  store ptr %i.alr, ptr @zz_tmp, align 8, !tbaa !13
  %i.als = load ptr, ptr %i.alb, align 8, !tbaa !8
  store ptr %i.als, ptr %.3435685, align 8, !tbaa !8
  %i.alt = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.alu = load ptr, ptr @zz_res, align 8, !tbaa !13 ; 2 uses
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !8
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  store ptr %i.alt, ptr %i.alw, align 8, !tbaa !8
  %i.alx = load ptr, ptr @zz_tmp, align 8, !tbaa !13 ; 2 uses
  store ptr %i.alx, ptr %i.alu, align 8, !tbaa !8
  %i.aly = load ptr, ptr @zz_res, align 8, !tbaa !13
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  store ptr %i.aly, ptr %i.alz, align 8, !tbaa !8
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hs, %bb.ht, %._crit_edge679
  %i.ama = load ptr, ptr %i.c, align 8, !tbaa !13 ; 5 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 8
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !8
  %i.amd = icmp eq ptr %i.amc, %i.ama
  br i1 %i.amd, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ama, i64 24
  %i.amf = load ptr, ptr %i.ame, align 8, !tbaa !8
  %i.amg = icmp eq ptr %i.amf, %i.ama
  br i1 %i.amg, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.amh = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ami = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.amh, ptr noundef nonnull @.str.30) #4 ; 0 uses
  %.pre735 = load ptr, ptr %i.c, align 8, !tbaa !13
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %i.amj = phi ptr [ %.pre735, %bb.hw ], [ %i.ama, %bb.hv ] ; 4 uses
  store ptr %i.amj, ptr @zz_hold, align 8, !tbaa !13
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 32
  %i.aml = load i8, ptr %i.amk, align 8, !tbaa !8 ; 2 uses
  %.off618 = add i8 %i.aml, -11
  %switch619 = icmp ult i8 %.off618, 2
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amj, i64 33
  %i.amn = zext i8 %i.aml to i64
  %i.amo = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.amn
  %.in.in = select i1 %switch619, ptr %i.amm, ptr %i.amo
  %.in = load i8, ptr %.in.in, align 1, !tbaa !8  ; 2 uses
  %i.amp = zext i8 %.in to i32
  store i32 %i.amp, ptr @zz_size, align 4, !tbaa !4
  %i.amq = zext i8 %.in to i64
  %i.amr = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.amq
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !13
  store ptr %i.ams, ptr %i.amj, align 8, !tbaa !8
  %i.amt = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.amu = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.amv = sext i32 %i.amu to i64
  %i.amw = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.amv
  store ptr %i.amt, ptr %i.amw, align 8, !tbaa !13
  br label %.loopexit626

.loopexit626:                                     ; preds = %bb.fp, %bb.fq, %bb.hx
  %.3444 = phi i32 [ %.1442.lcssa, %bb.hx ], [ %.0441684, %bb.fq ], [ %.0441684, %bb.fp ]
  %i.amx = getelementptr inbounds nuw i8, ptr %.3435685, i64 8
  %.3435 = load ptr, ptr %i.amx, align 8, !tbaa !8 ; 2 uses
  %.not558 = icmp eq ptr %.3435, %0
  br i1 %.not558, label %._crit_edge687, label %.preheader625, !llvm.loop !32

._crit_edge687:                                   ; preds = %.loopexit626, %._crit_edge668
  %i.amy = load ptr, ptr %i.a, align 8, !tbaa !13 ; 6 uses
  %.not559 = icmp eq ptr %i.amy, null
  br i1 %.not559, label %bb.ie, label %bb.hy

bb.hy:                                            ; preds = %._crit_edge687
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !8 ; 6 uses
  %i.anb = load ptr, ptr %i.t, align 8, !tbaa !8  ; 4 uses
  %.not560 = icmp eq ptr %i.ana, %i.amy
  br i1 %.not560, label %bb.id, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.anc = getelementptr inbounds nuw i8, ptr %i.ana, i64 32
  %i.and = load i8, ptr %i.anc, align 8, !tbaa !8
  %i.ane = icmp eq i8 %i.and, 0
  br i1 %i.ane, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.anf = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ang = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.anf, ptr noundef nonnull @.str.8) #4 ; 0 uses
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  store ptr %i.ana, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.amy, ptr @zz_hold, align 8, !tbaa !13
  %i.anh = load ptr, ptr %i.amy, align 8, !tbaa !8
end_hunk_0
