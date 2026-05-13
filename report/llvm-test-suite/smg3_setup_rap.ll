begin_hunk_0_@hypre_SMG3BuildRAPNoSym:bb.a
  %i.awo = call double @llvm.fmuladd.f64(double %i.awn, double %i.awe, double %i.awl)
  %i.awp = load double, ptr %i.ari, align 8, !tbaa !35
  %i.awq = call double @llvm.fmuladd.f64(double %i.awp, double %i.awk, double %i.awo)
  %i.awr = getelementptr inbounds [8 x i8], ptr %.12023, i64 %i.aqu
  %i.aws = load double, ptr %i.awr, align 8, !tbaa !35
  %i.awt = call double @llvm.fmuladd.f64(double %i.avz, double %i.aws, double %i.awq)
  %i.awu = getelementptr inbounds [8 x i8], ptr %.12039, i64 %i.aqv
  %i.awv = load double, ptr %i.awu, align 8, !tbaa !35
  %i.aww = call double @llvm.fmuladd.f64(double %i.awg, double %i.awv, double %i.awt)
  %i.awx = getelementptr inbounds [8 x i8], ptr %.12046, i64 %indvars.iv2769
  store double %i.aww, ptr %i.awx, align 8, !tbaa !35
  %i.awy = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv2767
  %i.awz = load double, ptr %i.awy, align 8, !tbaa !35
  %i.axa = load double, ptr %i.avy, align 8, !tbaa !35 ; 2 uses
  %i.axb = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.aqu
  %i.axc = load double, ptr %i.axb, align 8, !tbaa !35
  %i.axd = fmul double %i.axa, %i.axc
  %i.axe = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.avu
  %i.axf = load double, ptr %i.axe, align 8, !tbaa !35 ; 2 uses
  %i.axg = call double @llvm.fmuladd.f64(double %i.axd, double %i.axf, double %i.awz)
  %i.axh = load double, ptr %i.aqx, align 8, !tbaa !35 ; 2 uses
  %i.axi = load double, ptr %i.arn, align 8, !tbaa !35
  %i.axj = fmul double %i.axh, %i.axi
  %i.axk = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.avu
  %i.axl = load double, ptr %i.axk, align 8, !tbaa !35 ; 2 uses
  %i.axm = call double @llvm.fmuladd.f64(double %i.axj, double %i.axl, double %i.axg)
  %i.axn = getelementptr inbounds [8 x i8], ptr %.1200722382260, i64 %indvars.iv2767
  %i.axo = load double, ptr %i.axn, align 8, !tbaa !35
  %i.axp = call double @llvm.fmuladd.f64(double %i.axo, double %i.axf, double %i.axm)
  %i.axq = load double, ptr %i.arv, align 8, !tbaa !35
  %i.axr = call double @llvm.fmuladd.f64(double %i.axq, double %i.axl, double %i.axp)
  %i.axs = getelementptr inbounds [8 x i8], ptr %.1200322402258, i64 %i.aqu
  %i.axt = load double, ptr %i.axs, align 8, !tbaa !35
  %i.axu = call double @llvm.fmuladd.f64(double %i.axa, double %i.axt, double %i.axr)
  %i.axv = getelementptr inbounds [8 x i8], ptr %.1200722382260, i64 %i.aqv
  %i.axw = load double, ptr %i.axv, align 8, !tbaa !35
  %i.axx = call double @llvm.fmuladd.f64(double %i.axh, double %i.axw, double %i.axu)
  %i.axy = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %indvars.iv2769
  store double %i.axx, ptr %i.axy, align 8, !tbaa !35
  %i.axz = trunc nsw i64 %indvars.iv2771 to i32
  %i.aya = add i32 %i.dx, %i.axz
  %i.ayb = getelementptr inbounds [8 x i8], ptr %.120132262, i64 %indvars.iv2767
  %i.ayc = load double, ptr %i.ayb, align 8, !tbaa !35
  %i.ayd = load double, ptr %i.avy, align 8, !tbaa !35 ; 2 uses
  %i.aye = getelementptr inbounds [8 x i8], ptr %.120132262, i64 %i.aqu
  %i.ayf = load double, ptr %i.aye, align 8, !tbaa !35
  %i.ayg = fmul double %i.ayd, %i.ayf
  %i.ayh = sext i32 %i.aya to i64                 ; 2 uses
  %i.ayi = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.ayh
  %i.ayj = load double, ptr %i.ayi, align 8, !tbaa !35 ; 2 uses
  %i.ayk = call double @llvm.fmuladd.f64(double %i.ayg, double %i.ayj, double %i.ayc)
  %i.ayl = load double, ptr %i.aqx, align 8, !tbaa !35 ; 2 uses
  %i.aym = load double, ptr %i.asa, align 8, !tbaa !35
  %i.ayn = fmul double %i.ayl, %i.aym
  %i.ayo = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ayh
  %i.ayp = load double, ptr %i.ayo, align 8, !tbaa !35 ; 2 uses
  %i.ayq = call double @llvm.fmuladd.f64(double %i.ayn, double %i.ayp, double %i.ayk)
  %i.ayr = getelementptr inbounds [8 x i8], ptr %.12037, i64 %indvars.iv2767
  %i.ays = load double, ptr %i.ayr, align 8, !tbaa !35
  %i.ayt = call double @llvm.fmuladd.f64(double %i.ays, double %i.ayj, double %i.ayq)
  %i.ayu = load double, ptr %i.asj, align 8, !tbaa !35
  %i.ayv = call double @llvm.fmuladd.f64(double %i.ayu, double %i.ayp, double %i.ayt)
  %i.ayw = getelementptr inbounds [8 x i8], ptr %.12021, i64 %i.aqu
  %i.ayx = load double, ptr %i.ayw, align 8, !tbaa !35
  %i.ayy = call double @llvm.fmuladd.f64(double %i.ayd, double %i.ayx, double %i.ayv)
  %i.ayz = getelementptr inbounds [8 x i8], ptr %.12037, i64 %i.aqv
  %i.aza = load double, ptr %i.ayz, align 8, !tbaa !35
  %i.azb = call double @llvm.fmuladd.f64(double %i.ayl, double %i.aza, double %i.ayy)
  %i.azc = getelementptr inbounds [8 x i8], ptr %.12041, i64 %indvars.iv2769
  store double %i.azb, ptr %i.azc, align 8, !tbaa !35
  %indvars.iv.next2772 = add nsw i64 %indvars.iv2771, 1 ; 4 uses
  %i.azd = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv2767
  %i.aze = load double, ptr %i.azd, align 8, !tbaa !35
  %i.azf = load double, ptr %i.avy, align 8, !tbaa !35 ; 2 uses
  %i.azg = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.aqu
  %i.azh = load double, ptr %i.azg, align 8, !tbaa !35
  %i.azi = fmul double %i.azf, %i.azh
  %i.azj = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv.next2772
  %i.azk = load double, ptr %i.azj, align 8, !tbaa !35 ; 2 uses
  %i.azl = call double @llvm.fmuladd.f64(double %i.azi, double %i.azk, double %i.aze)
  %i.azm = load double, ptr %i.aqx, align 8, !tbaa !35 ; 2 uses
  %i.azn = load double, ptr %i.aso, align 8, !tbaa !35
  %i.azo = fmul double %i.azm, %i.azn
  %i.azp = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next2772
  %i.azq = load double, ptr %i.azp, align 8, !tbaa !35 ; 2 uses
  %i.azr = call double @llvm.fmuladd.f64(double %i.azo, double %i.azq, double %i.azl)
  %i.azs = getelementptr inbounds [8 x i8], ptr %.1200522392259, i64 %indvars.iv2767
  %i.azt = load double, ptr %i.azs, align 8, !tbaa !35
  %i.azu = call double @llvm.fmuladd.f64(double %i.azt, double %i.azk, double %i.azr)
  %i.azv = load double, ptr %i.asy, align 8, !tbaa !35
  %i.azw = call double @llvm.fmuladd.f64(double %i.azv, double %i.azq, double %i.azu)
  %i.azx = getelementptr inbounds [8 x i8], ptr %.1199922422256, i64 %i.aqu
  %i.azy = load double, ptr %i.azx, align 8, !tbaa !35
  %i.azz = call double @llvm.fmuladd.f64(double %i.azf, double %i.azy, double %i.azw)
  %i.baa = getelementptr inbounds [8 x i8], ptr %.1200522392259, i64 %i.aqv
  %i.bab = load double, ptr %i.baa, align 8, !tbaa !35
  %i.bac = call double @llvm.fmuladd.f64(double %i.azm, double %i.bab, double %i.azz)
  %i.bad = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv2769
  store double %i.bac, ptr %i.bad, align 8, !tbaa !35
  %indvars.iv.next2774 = add nsw i64 %indvars.iv2773, 1 ; 2 uses
  %indvars.iv.next2768 = add nsw i64 %indvars.iv2767, %i.aqm ; 2 uses
  %indvars.iv.next2770 = add nsw i64 %indvars.iv2769, 1 ; 2 uses
  %i.bae = add nuw nsw i32 %.72556.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2782.not = icmp eq i32 %i.bae, %i.app
  br i1 %exitcond2782.not, label %._crit_edge.us.us.us.us.us.us2620, label %bb.bd, !llvm.loop !60

._crit_edge.us.us.us.us.us.us2620:                ; preds = %bb.bd
  %i.baf = trunc nsw i64 %indvars.iv.next2774 to i32
  %i.bag = trunc nsw i64 %indvars.iv.next2772 to i32
  %i.bah = trunc nsw i64 %indvars.iv.next2770 to i32
  %i.bai = trunc nsw i64 %indvars.iv.next2768 to i32
  %i.baj = add nsw i32 %i.aqd, %i.bag             ; 2 uses
  %i.bak = add nsw i32 %i.aqe, %i.baf             ; 2 uses
  %i.bal = add nsw i32 %i.aqf, %i.bai             ; 2 uses
  %i.bam = add nsw i32 %i.aqg, %i.bah             ; 2 uses
  %i.ban = add nuw nsw i32 %.719872565.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond2783.not = icmp eq i32 %i.ban, %i.apq
  br i1 %exitcond2783.not, label %._crit_edge2566.split.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !61

._crit_edge2566.split.us.us.us.us.us.us:          ; preds = %._crit_edge.us.us.us.us.us.us2620
  %i.bao = add nsw i32 %i.aqh, %i.baj
  %i.bap = add nsw i32 %i.aqi, %i.bak
  %i.baq = add nsw i32 %i.aqj, %i.bal
  %i.bar = add nsw i32 %i.aqk, %i.bam
  %i.bas = add nuw nsw i32 %.719952586.us.us.us.us.us, 1 ; 2 uses
  %exitcond2784.not = icmp eq i32 %i.bas, %i.apr
  br i1 %exitcond2784.not, label %.loopexit2341, label %.preheader2330.us.us.us.us.us, !llvm.loop !62

.loopexit2341:                                    ; preds = %._crit_edge2360.split.us.us.us.us.us.us, %._crit_edge2426.split.us.us.us.us.us.us, %._crit_edge2496.split.us.us.us.us.us.us, %._crit_edge2566.split.us.us.us.us.us.us, %.preheader2334.lr.ph, %.preheader2339.lr.ph, %.preheader2337.lr.ph, %.preheader2335.lr.ph, %bb.aq, %bb.ae, %bb.s, %bb.bc
  %indvars.iv.next2786 = add nuw nsw i64 %indvars.iv2785, 1 ; 2 uses
  %i.bat = load i32, ptr %i.r, align 8, !tbaa !29
  %i.bau = sext i32 %i.bat to i64
  %i.bav = icmp slt i64 %indvars.iv.next2786, %i.bau
  br i1 %i.bav, label %.preheader2345, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %.loopexit2341, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMG3RAPPeriodicSym(ptr noundef %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 32 uses
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %.loopexit717

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @hypre_StructMatrixAssemble(ptr noundef nonnull %0) #5 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %.loopexit717

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 15 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 15 uses
  %i.u = icmp eq i32 %i.f, 27                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit716
  %indvars.iv878 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next879, %.loopexit716 ] ; 4 uses
  %.0596834 = phi ptr [ undef, %.lr.ph ], [ %.1597, %.loopexit716 ]
  %.0598833 = phi ptr [ undef, %.lr.ph ], [ %.1599, %.loopexit716 ]
  %.0600832 = phi ptr [ undef, %.lr.ph ], [ %.1601, %.loopexit716 ]
  %.0614831 = phi ptr [ undef, %.lr.ph ], [ %.1615, %.loopexit716 ]
  %.0616830 = phi ptr [ undef, %.lr.ph ], [ %.1617, %.loopexit716 ]
  %.0618829 = phi ptr [ undef, %.lr.ph ], [ %.1619, %.loopexit716 ]
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv878 ; 6 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv878 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.s, align 4, !tbaa !4
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ah = sub i32 %i.af, %i.ag
  %i.ai = call i32 @llvm.smax.i32(i32 %i.ah, i32 -1) ; 8 uses
  %.neg = xor i32 %i.ai, -1                       ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.aj = trunc nuw nsw i64 %indvars.iv878 to i32 ; 14 uses
  %i.ak = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.am = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.an = ptrtoaddr ptr %i.am to i64              ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.ao = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.aq = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64              ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.as = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 9 uses
  %i.at = ptrtoaddr ptr %i.as to i64              ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.s, align 4, !tbaa !4
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %i.au = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.s, align 4, !tbaa !4
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %i.av = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %i.aw = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5 ; 4 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.ax = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.ay = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.az = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.s, align 4, !tbaa !4
  store i32 -1, ptr %i.t, align 4, !tbaa !4
  %i.ba = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %i.bb = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.s, align 4, !tbaa !4
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %i.bc = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aj, ptr noundef nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1619 = phi ptr [ %i.bc, %bb.d ], [ %.0618829, %bb.c ] ; 5 uses
  %.1617 = phi ptr [ %i.bb, %bb.d ], [ %.0616830, %bb.c ] ; 5 uses
  %.1615 = phi ptr [ %i.ba, %bb.d ], [ %.0614831, %bb.c ] ; 10 uses
  %.1601 = phi ptr [ %i.az, %bb.d ], [ %.0600832, %bb.c ] ; 10 uses
  %.1599 = phi ptr [ %i.ay, %bb.d ], [ %.0598833, %bb.c ] ; 10 uses
  %.1597 = phi ptr [ %i.ax, %bb.d ], [ %.0596834, %bb.c ] ; 10 uses
  %.1599931 = ptrtoaddr ptr %.1599 to i64         ; 3 uses
  %.1597932 = ptrtoaddr ptr %.1597 to i64         ; 3 uses
  %.1601933 = ptrtoaddr ptr %.1601 to i64         ; 3 uses
  %.1615935 = ptrtoaddr ptr %.1615 to i64         ; 3 uses
  %i.bd = call i32 @hypre_BoxGetSize(ptr noundef %i.y, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.be = load i32, ptr %i.y, align 4, !tbaa !4
  %i.bf = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %i.bg = sub nsw i32 %i.be, %i.bf                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = load i32, ptr %i.ae, align 4, !tbaa !4  ; 2 uses
  %i.bk = sub nsw i32 %i.bi, %i.bj                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.bn = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.bo = sub nsw i32 %i.bn, %i.bj                ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, -1                  ; 3 uses
  br i1 %i.bp, label %bb.f, label %._crit_edge882

._crit_edge882:                                   ; preds = %bb.e
  %.pre = add nuw nsw i32 %i.bo, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bq = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.br = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bs = sub nsw i32 %i.bq, %i.br
  %i.bt = add nuw nsw i32 %i.bo, 1                ; 2 uses
  %i.bu = mul nsw i32 %i.bs, %i.bt
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge882, %bb.f
  %.pre-phi = phi i32 [ %.pre, %._crit_edge882 ], [ %i.bt, %bb.f ] ; 2 uses
  %i.bv = phi i32 [ 0, %._crit_edge882 ], [ %i.bu, %bb.f ]
  %i.bw = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.bx = sub i32 %i.bw, %i.bf                    ; 2 uses
  %i.by = icmp sgt i32 %i.bx, -1                  ; 3 uses
  %i.bz = add i32 %i.bx, 1                        ; 3 uses
  %i.ca = select i1 %i.by, i32 %i.bz, i32 0       ; 5 uses
  %i.cb = mul nsw i32 %i.ca, %.pre-phi
  %i.cc = select i1 %i.bp, i32 %i.cb, i32 0       ; 2 uses
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !4   ; 14 uses
  %i.ce = load i32, ptr %i.v, align 4, !tbaa !4   ; 7 uses
  %i.cf = load i32, ptr %i.w, align 4, !tbaa !4   ; 5 uses
  %.0646 = call i32 @llvm.smax.i32(i32 %i.ce, i32 %i.cd)
  %.1647 = call i32 @llvm.smax.i32(i32 %i.cf, i32 %.0646)
  %i.cg = icmp sgt i32 %.1647, 0                  ; 2 uses
  br i1 %i.cg, label %.preheader714.lr.ph, label %._crit_edge

.preheader714.lr.ph:                              ; preds = %bb.g
  %factor.op.mul732 = mul i32 %i.ca, %i.ce
  %i.ch = icmp slt i32 %i.cf, 1
  %i.ci = icmp slt i32 %i.cd, 1
  %i.cj = sub i32 %i.ca, %i.cd
  %i.ck = sub i32 %i.cc, %factor.op.mul732
  %i.cl = icmp slt i32 %i.ce, 1
  %or.cond.not921 = or i1 %i.ch, %i.cl
  %brmerge = or i1 %or.cond.not921, %i.ci
  br i1 %brmerge, label %._crit_edge, label %.preheader708.us.us.us.us.us.preheader

.preheader708.us.us.us.us.us.preheader:           ; preds = %.preheader714.lr.ph
  %i.cm = add nsw i32 %i.bv, %i.bk
  %i.cn = mul nsw i32 %i.bz, %i.cm
  %i.co = select i1 %i.by, i32 %i.cn, i32 0
  %i.cp = add nsw i32 %i.co, %i.bg
  %i.cq = add nsw i32 %i.cd, -1                   ; 2 uses
  %i.cr = xor i32 %i.ai, -1
  %scevgep1054 = getelementptr i8, ptr %i.au, i64 8
  %i.cs = zext i32 %i.cq to i64
  %i.ct = shl nuw nsw i64 %i.cs, 3                ; 8 uses
  %scevgep1055 = getelementptr i8, ptr %scevgep1054, i64 %i.ct
  %scevgep1058 = getelementptr i8, ptr %i.av, i64 8
  %scevgep1059 = getelementptr i8, ptr %scevgep1058, i64 %i.ct
  %scevgep1062 = getelementptr i8, ptr %i.aw, i64 8
  %scevgep1063 = getelementptr i8, ptr %scevgep1062, i64 %i.ct
  %scevgep1066 = getelementptr i8, ptr %i.ak, i64 8
  %scevgep1067 = getelementptr i8, ptr %scevgep1066, i64 %i.ct
  %scevgep1070 = getelementptr i8, ptr %i.am, i64 8
  %scevgep1071 = getelementptr i8, ptr %scevgep1070, i64 %i.ct
  %scevgep1073 = getelementptr i8, ptr %i.ao, i64 -8
  %scevgep1075 = getelementptr i8, ptr %i.ao, i64 %i.ct
  %scevgep1078 = getelementptr i8, ptr %i.aq, i64 8
  %scevgep1079 = getelementptr i8, ptr %scevgep1078, i64 %i.ct
  %i.cu = xor i32 %i.ai, -1
  %scevgep1082 = getelementptr i8, ptr %i.as, i64 8
  %scevgep1083 = getelementptr i8, ptr %scevgep1082, i64 %i.ct
  %i.cv = zext nneg i32 %i.cd to i64              ; 2 uses
  %min.iters.check1157 = icmp ult i32 %i.cd, 16
  %n.vec1160 = and i64 %i.cv, 2147483646          ; 4 uses
  %i.cw = trunc nuw nsw i64 %n.vec1160 to i32
  %cmp.n1173 = icmp eq i64 %n.vec1160, %i.cv
  br label %.preheader708.us.us.us.us.us

.preheader708.us.us.us.us.us:                     ; preds = %.preheader708.us.us.us.us.us.preheader, %._crit_edge722.split.us.us.us.us.us.us
  %.1589725.us.us.us.us.us = phi i32 [ %i.fd, %._crit_edge722.split.us.us.us.us.us.us ], [ 0, %.preheader708.us.us.us.us.us.preheader ]
  %.0623724.us.us.us.us.us = phi i32 [ %i.fc, %._crit_edge722.split.us.us.us.us.us.us ], [ %i.cp, %.preheader708.us.us.us.us.us.preheader ]
  br label %.preheader704.us.us.us.us.us.us

.preheader704.us.us.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader708.us.us.us.us.us
  %.1578721.us.us.us.us.us.us = phi i32 [ 0, %.preheader708.us.us.us.us.us ], [ %i.fb, %._crit_edge.us.us.us.us.us.us ]
  %.1624720.us.us.us.us.us.us = phi i32 [ %.0623724.us.us.us.us.us, %.preheader708.us.us.us.us.us ], [ %i.fa, %._crit_edge.us.us.us.us.us.us ] ; 3 uses
  %i.cx = sext i32 %.1624720.us.us.us.us.us.us to i64 ; 6 uses
  br i1 %min.iters.check1157, label %scalar.ph1156.preheader, label %vector.scevcheck1051

vector.scevcheck1051:                             ; preds = %.preheader704.us.us.us.us.us.us
  %i.cy = add i32 %.1624720.us.us.us.us.us.us, %i.cr ; 2 uses
  %i.cz = add i32 %i.cy, %i.cq
  %i.da = icmp slt i32 %i.cz, %i.cy
  br i1 %i.da, label %scalar.ph1156.preheader, label %vector.memcheck1052

vector.memcheck1052:                              ; preds = %vector.scevcheck1051
  %i.db = shl nsw i64 %i.cx, 3                    ; 14 uses
  %scevgep1053 = getelementptr i8, ptr %i.au, i64 %i.db ; 7 uses
  %scevgep1056 = getelementptr i8, ptr %scevgep1055, i64 %i.db ; 7 uses
  %scevgep1057 = getelementptr i8, ptr %i.av, i64 %i.db ; 7 uses
  %scevgep1060 = getelementptr i8, ptr %scevgep1059, i64 %i.db ; 7 uses
  %scevgep1061 = getelementptr i8, ptr %i.aw, i64 %i.db ; 7 uses
  %scevgep1064 = getelementptr i8, ptr %scevgep1063, i64 %i.db ; 7 uses
  %scevgep1065 = getelementptr i8, ptr %i.ak, i64 %i.db ; 3 uses
  %scevgep1068 = getelementptr i8, ptr %scevgep1067, i64 %i.db ; 3 uses
  %scevgep1069 = getelementptr i8, ptr %i.am, i64 %i.db ; 3 uses
  %scevgep1072 = getelementptr i8, ptr %scevgep1071, i64 %i.db ; 3 uses
  %scevgep1074 = getelementptr i8, ptr %scevgep1073, i64 %i.db ; 3 uses
  %scevgep1076 = getelementptr i8, ptr %scevgep1075, i64 %i.db ; 3 uses
  %scevgep1077 = getelementptr i8, ptr %i.aq, i64 %i.db ; 3 uses
  %scevgep1080 = getelementptr i8, ptr %scevgep1079, i64 %i.db ; 3 uses
end_hunk_0
begin_hunk_1_@hypre_SMG3RAPPeriodicSym:bb.a
  %i.fn = icmp slt i32 %i.ce, 1
  %or.cond910.not923 = or i1 %i.fj, %i.fn
  %brmerge912 = or i1 %or.cond910.not923, %i.fk
  br i1 %brmerge912, label %._crit_edge760, label %.preheader707.us.us.us.us.us.preheader

.preheader707.us.us.us.us.us.preheader:           ; preds = %.preheader712.lr.ph
  %i.fo = add nsw i32 %i.fi, %i.bk
  %i.fp = mul nsw i32 %i.fo, %i.bz
  %i.fq = select i1 %i.by, i32 %i.fp, i32 0
  %i.fr = add nsw i32 %i.fq, %i.bg
  %i.fs = sub i64 %i.an, %i.al
  %i.ft = sub i64 %i.ap, %i.al
  %i.fu = sub i64 %i.ar, %i.al
  %i.fv = sub i64 %i.at, %i.al
  %i.fw = sub i64 %i.ap, %i.an
  %i.fx = sub i64 %i.ar, %i.an
  %i.fy = sub i64 %i.at, %i.an
  %i.fz = sub i64 %i.ar, %i.ap
  %i.ga = sub i64 %i.at, %i.ap
  %i.gb = sub i64 %i.at, %i.ar
  %i.gc = zext nneg i32 %i.cd to i64              ; 2 uses
  %min.iters.check1040 = icmp ult i32 %i.cd, 8
  %diff.check1020 = icmp ult i64 %i.fs, 32
  %diff.check1021 = icmp ult i64 %i.ft, 32
  %conflict.rdx1022 = or i1 %diff.check1020, %diff.check1021
  %diff.check1023 = icmp ult i64 %i.fu, 32
  %conflict.rdx1024 = or i1 %conflict.rdx1022, %diff.check1023
  %diff.check1025 = icmp ult i64 %i.fv, 32
  %conflict.rdx1026 = or i1 %conflict.rdx1024, %diff.check1025
  %diff.check1027 = icmp ult i64 %i.fw, 32
  %conflict.rdx1028 = or i1 %conflict.rdx1026, %diff.check1027
  %diff.check1029 = icmp ult i64 %i.fx, 32
  %conflict.rdx1030 = or i1 %conflict.rdx1028, %diff.check1029
  %diff.check1031 = icmp ult i64 %i.fy, 32
  %conflict.rdx1032 = or i1 %conflict.rdx1030, %diff.check1031
  %diff.check1033 = icmp ult i64 %i.fz, 32
  %conflict.rdx1034 = or i1 %conflict.rdx1032, %diff.check1033
  %diff.check1035 = icmp ult i64 %i.ga, 32
  %conflict.rdx1036 = or i1 %conflict.rdx1034, %diff.check1035
  %diff.check1037 = icmp ult i64 %i.gb, 32
  %conflict.rdx1038 = or i1 %conflict.rdx1036, %diff.check1037
  %n.vec1043 = and i64 %i.gc, 2147483644          ; 4 uses
  %i.gd = trunc nuw nsw i64 %n.vec1043 to i32
  %cmp.n1048 = icmp eq i64 %n.vec1043, %i.gc
  br label %.preheader707.us.us.us.us.us

.preheader707.us.us.us.us.us:                     ; preds = %.preheader707.us.us.us.us.us.preheader, %._crit_edge748.split.us.us.us.us.us.us
  %.3591751.us.us.us.us.us = phi i32 [ %i.hp, %._crit_edge748.split.us.us.us.us.us.us ], [ 0, %.preheader707.us.us.us.us.us.preheader ]
  %.3626750.us.us.us.us.us = phi i32 [ %i.ho, %._crit_edge748.split.us.us.us.us.us.us ], [ %i.fr, %.preheader707.us.us.us.us.us.preheader ]
  br label %.preheader703.us.us.us.us.us.us

.preheader703.us.us.us.us.us.us:                  ; preds = %._crit_edge745.us.us.us.us.us.us, %.preheader707.us.us.us.us.us
  %.3580747.us.us.us.us.us.us = phi i32 [ 0, %.preheader707.us.us.us.us.us ], [ %i.hn, %._crit_edge745.us.us.us.us.us.us ]
  %.4627746.us.us.us.us.us.us = phi i32 [ %.3626750.us.us.us.us.us, %.preheader707.us.us.us.us.us ], [ %i.hm, %._crit_edge745.us.us.us.us.us.us ]
  %i.ge = sext i32 %.4627746.us.us.us.us.us.us to i64 ; 3 uses
  %brmerge1195 = select i1 %min.iters.check1040, i1 true, i1 %conflict.rdx1038
  br i1 %brmerge1195, label %scalar.ph1039.preheader, label %vector.ph1041

vector.ph1041:                                    ; preds = %.preheader703.us.us.us.us.us.us
  %i.gf = add nsw i64 %n.vec1043, %i.ge           ; 2 uses
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.body1044, %vector.ph1041
  %index1045 = phi i64 [ 0, %vector.ph1041 ], [ %index.next1046, %vector.body1044 ] ; 2 uses
  %i.gg = add i64 %index1045, %i.ge               ; 5 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.gg ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <2 x double> zeroinitializer, ptr %i.gh, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.gi, align 8, !tbaa !35
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.gg ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store <2 x double> zeroinitializer, ptr %i.gj, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.gk, align 8, !tbaa !35
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.gg ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store <2 x double> zeroinitializer, ptr %i.gl, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.gm, align 8, !tbaa !35
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.gg ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <2 x double> zeroinitializer, ptr %i.gn, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.go, align 8, !tbaa !35
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.gg ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <2 x double> zeroinitializer, ptr %i.gp, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.gq, align 8, !tbaa !35
  %index.next1046 = add nuw i64 %index1045, 4     ; 2 uses
  %i.gr = icmp eq i64 %index.next1046, %n.vec1043
  br i1 %i.gr, label %middle.block1047, label %vector.body1044, !llvm.loop !90

middle.block1047:                                 ; preds = %vector.body1044
  br i1 %cmp.n1048, label %._crit_edge745.us.us.us.us.us.us, label %scalar.ph1039.preheader

scalar.ph1039.preheader:                          ; preds = %.preheader703.us.us.us.us.us.us, %middle.block1047
  %indvars.iv860.ph = phi i64 [ %i.gf, %middle.block1047 ], [ %i.ge, %.preheader703.us.us.us.us.us.us ] ; 7 uses
  %.3744.us.us.us.us.us.us.ph = phi i32 [ %i.gd, %middle.block1047 ], [ 0, %.preheader703.us.us.us.us.us.us ] ; 4 uses
  %i.gs = sub i32 %i.cd, %.3744.us.us.us.us.us.us.ph
  %.neg1186 = add i32 %.3744.us.us.us.us.us.us.ph, 1
  %xtraiter = and i32 %i.gs, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph1039.prol.loopexit, label %scalar.ph1039.prol

scalar.ph1039.prol:                               ; preds = %scalar.ph1039.preheader
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv860.ph
  store double 0.000000e+00, ptr %i.gt, align 8, !tbaa !35
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv860.ph
  store double 0.000000e+00, ptr %i.gu, align 8, !tbaa !35
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv860.ph
  store double 0.000000e+00, ptr %i.gv, align 8, !tbaa !35
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv860.ph
  store double 0.000000e+00, ptr %i.gw, align 8, !tbaa !35
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.as, i64 %indvars.iv860.ph
  store double 0.000000e+00, ptr %i.gx, align 8, !tbaa !35
  %indvars.iv.next861.prol = add nsw i64 %indvars.iv860.ph, 1 ; 2 uses
  %i.gy = add nuw nsw i32 %.3744.us.us.us.us.us.us.ph, 1
  br label %scalar.ph1039.prol.loopexit

scalar.ph1039.prol.loopexit:                      ; preds = %scalar.ph1039.prol, %scalar.ph1039.preheader
  %indvars.iv.next861.lcssa1178.unr = phi i64 [ poison, %scalar.ph1039.preheader ], [ %indvars.iv.next861.prol, %scalar.ph1039.prol ]
  %indvars.iv860.unr = phi i64 [ %indvars.iv860.ph, %scalar.ph1039.preheader ], [ %indvars.iv.next861.prol, %scalar.ph1039.prol ]
  %.3744.us.us.us.us.us.us.unr = phi i32 [ %.3744.us.us.us.us.us.us.ph, %scalar.ph1039.preheader ], [ %i.gy, %scalar.ph1039.prol ]
  %i.gz = icmp eq i32 %i.cd, %.neg1186
  br i1 %i.gz, label %._crit_edge745.us.us.us.us.us.us, label %scalar.ph1039

scalar.ph1039:                                    ; preds = %scalar.ph1039.prol.loopexit, %scalar.ph1039
  %indvars.iv860 = phi i64 [ %indvars.iv.next861.1, %scalar.ph1039 ], [ %indvars.iv860.unr, %scalar.ph1039.prol.loopexit ] ; 7 uses
  %.3744.us.us.us.us.us.us = phi i32 [ %i.hk, %scalar.ph1039 ], [ %.3744.us.us.us.us.us.us.unr, %scalar.ph1039.prol.loopexit ]
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv860
  store double 0.000000e+00, ptr %i.ha, align 8, !tbaa !35
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv860
  store double 0.000000e+00, ptr %i.hb, align 8, !tbaa !35
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv860
  store double 0.000000e+00, ptr %i.hc, align 8, !tbaa !35
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv860
  store double 0.000000e+00, ptr %i.hd, align 8, !tbaa !35
  %i.he = getelementptr inbounds [8 x i8], ptr %i.as, i64 %indvars.iv860
  store double 0.000000e+00, ptr %i.he, align 8, !tbaa !35
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, 1 ; 5 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv.next861
  store double 0.000000e+00, ptr %i.hf, align 8, !tbaa !35
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv.next861
  store double 0.000000e+00, ptr %i.hg, align 8, !tbaa !35
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.next861
  store double 0.000000e+00, ptr %i.hh, align 8, !tbaa !35
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv.next861
  store double 0.000000e+00, ptr %i.hi, align 8, !tbaa !35
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.as, i64 %indvars.iv.next861
  store double 0.000000e+00, ptr %i.hj, align 8, !tbaa !35
  %indvars.iv.next861.1 = add nsw i64 %indvars.iv860, 2 ; 2 uses
  %i.hk = add nuw nsw i32 %.3744.us.us.us.us.us.us, 2 ; 2 uses
  %exitcond863.not.1 = icmp eq i32 %i.hk, %i.cd
  br i1 %exitcond863.not.1, label %._crit_edge745.us.us.us.us.us.us, label %scalar.ph1039, !llvm.loop !91

._crit_edge745.us.us.us.us.us.us:                 ; preds = %scalar.ph1039.prol.loopexit, %scalar.ph1039, %middle.block1047
  %indvars.iv.next861.lcssa = phi i64 [ %i.gf, %middle.block1047 ], [ %indvars.iv.next861.lcssa1178.unr, %scalar.ph1039.prol.loopexit ], [ %indvars.iv.next861.1, %scalar.ph1039 ]
  %i.hl = trunc nsw i64 %indvars.iv.next861.lcssa to i32
  %i.hm = add nsw i32 %i.fl, %i.hl                ; 2 uses
  %i.hn = add nuw nsw i32 %.3580747.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond864.not = icmp eq i32 %i.hn, %i.ce
  br i1 %exitcond864.not, label %._crit_edge748.split.us.us.us.us.us.us, label %.preheader703.us.us.us.us.us.us, !llvm.loop !92

._crit_edge748.split.us.us.us.us.us.us:           ; preds = %._crit_edge745.us.us.us.us.us.us
  %i.ho = add nsw i32 %i.fm, %i.hm
  %i.hp = add nuw nsw i32 %.3591751.us.us.us.us.us, 1 ; 2 uses
  %exitcond865.not = icmp eq i32 %i.hp, %i.cf
  br i1 %exitcond865.not, label %._crit_edge760, label %.preheader707.us.us.us.us.us, !llvm.loop !93

._crit_edge760:                                   ; preds = %._crit_edge748.split.us.us.us.us.us.us, %.preheader712.lr.ph, %bb.i
  br i1 %i.u, label %bb.j, label %.loopexit716

bb.j:                                             ; preds = %._crit_edge760
  %i.hq = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.y, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.hr = load i32, ptr %i.y, align 4, !tbaa !4
  %i.hs = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %i.ht = sub nsw i32 %i.hr, %i.hs                ; 2 uses
  %i.hu = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.hv = load i32, ptr %i.ae, align 4, !tbaa !4  ; 2 uses
  %i.hw = sub nsw i32 %i.hu, %i.hv                ; 2 uses
  %i.hx = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.hy = sub nsw i32 %i.hx, %i.hv                ; 3 uses
  %i.hz = icmp sgt i32 %i.hy, -1                  ; 3 uses
  br i1 %i.hz, label %bb.k, label %._crit_edge881

._crit_edge881:                                   ; preds = %bb.j
  %.pre883 = add nuw nsw i32 %i.hy, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ia = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.ib = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.ic = sub nsw i32 %i.ia, %i.ib
  %i.id = add nuw nsw i32 %i.hy, 1                ; 2 uses
  %i.ie = mul nsw i32 %i.ic, %i.id
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge881, %bb.k
  %.pre-phi884 = phi i32 [ %.pre883, %._crit_edge881 ], [ %i.id, %bb.k ] ; 2 uses
  %i.if = phi i32 [ 0, %._crit_edge881 ], [ %i.ie, %bb.k ]
  %i.ig = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ih = sub i32 %i.ig, %i.hs                    ; 2 uses
  %i.ii = icmp sgt i32 %i.ih, -1                  ; 3 uses
  %3 = add nsw i32 %i.if, %i.hw
  %4 = add i32 %i.ih, 1                           ; 3 uses
  %5 = mul nsw i32 %4, %3
  %6 = select i1 %i.ii, i32 %5, i32 0
  %i.ij = add nsw i32 %6, %i.ht
  %i.ik = select i1 %i.ii, i32 %4, i32 0          ; 5 uses
  %i.il = mul nsw i32 %i.ik, %.pre-phi884
  %i.im = select i1 %i.hz, i32 %i.il, i32 0       ; 2 uses
  %i.in = load i32, ptr %i.b, align 4, !tbaa !4   ; 14 uses
  %i.io = load i32, ptr %i.v, align 4, !tbaa !4   ; 7 uses
  %i.ip = load i32, ptr %i.w, align 4, !tbaa !4   ; 5 uses
  %.0610 = call i32 @llvm.smax.i32(i32 %i.io, i32 %i.in)
  %.1611 = call i32 @llvm.smax.i32(i32 %i.ip, i32 %.0610)
  %i.iq = icmp sgt i32 %.1611, 0                  ; 2 uses
  br i1 %i.iq, label %.preheader710.lr.ph, label %._crit_edge789

.preheader710.lr.ph:                              ; preds = %bb.l
  %factor.op.mul787 = mul i32 %i.ik, %i.io
  %i.ir = icmp slt i32 %i.ip, 1
  %i.is = icmp slt i32 %i.in, 1
  %i.it = sub i32 %i.ik, %i.in
  %i.iu = sub i32 %i.im, %factor.op.mul787
  %i.iv = icmp slt i32 %i.io, 1
  %or.cond913.not925 = or i1 %i.ir, %i.iv
  %brmerge915 = or i1 %or.cond913.not925, %i.is
  br i1 %brmerge915, label %._crit_edge789, label %.preheader706.us.us.us.us.us.preheader

.preheader706.us.us.us.us.us.preheader:           ; preds = %.preheader710.lr.ph
  %7 = sext i32 %i.ai to i64                      ; 4 uses
  %i.iw = add nsw i32 %i.in, -1                   ; 2 uses
  %scevgep947.a = getelementptr i8, ptr %.1617, i64 8
  %i.ix = zext i32 %i.iw to i64                   ; 2 uses
  %i.iy = shl nuw nsw i64 %i.ix, 3                ; 5 uses
  %scevgep948.a = getelementptr i8, ptr %scevgep947.a, i64 %i.iy
  %scevgep951.a = getelementptr i8, ptr %.1619, i64 8
  %scevgep952.a = getelementptr i8, ptr %scevgep951.a, i64 %i.iy
  %scevgep955.a = getelementptr i8, ptr %.1597, i64 8
  %scevgep956.a = getelementptr i8, ptr %scevgep955.a, i64 %i.iy
  %scevgep959.a = getelementptr i8, ptr %.1615, i64 8
  %scevgep960.a = getelementptr i8, ptr %scevgep959.a, i64 %i.iy
  %scevgep963.a = getelementptr i8, ptr %.1599, i64 8
  %scevgep963 = getelementptr i8, ptr %scevgep963.a, i64 %i.iy
  %8 = mul nsw i64 %7, -8
  %scevgep964.a = getelementptr i8, ptr %.1601, i64 %8
  %scevgep967 = getelementptr i8, ptr %.1601, i64 8
  %9 = sub nsw i64 %i.ix, %7
  %10 = shl nsw i64 %9, 3
  %scevgep968 = getelementptr i8, ptr %scevgep967, i64 %10
  %i.iz = zext nneg i32 %i.in to i64              ; 2 uses
  %min.iters.check1003 = icmp ult i32 %i.in, 10
  %invariant.op.a = sub i32 -2, %i.ai
  %invariant.op1193 = sub i32 -2, %i.ai
  %n.vec1006 = and i64 %i.iz, 2147483646          ; 4 uses
  %i.ja = trunc nuw nsw i64 %n.vec1006 to i32
  %invariant.op = sub i32 -2, %i.ai
  %cmp.n1016 = icmp eq i64 %n.vec1006, %i.iz
  %invariant.op1195 = sub i32 -2, %i.ai
  br label %.preheader706.us.us.us.us.us

.preheader706.us.us.us.us.us:                     ; preds = %.preheader706.us.us.us.us.us.preheader, %._crit_edge777.split.us.us.us.us.us.us
  %.5593780.us.us.us.us.us = phi i32 [ %i.kt, %._crit_edge777.split.us.us.us.us.us.us ], [ 0, %.preheader706.us.us.us.us.us.preheader ]
  %.6629779.us.us.us.us.us = phi i32 [ %i.ks, %._crit_edge777.split.us.us.us.us.us.us ], [ %i.ij, %.preheader706.us.us.us.us.us.preheader ]
  br label %.preheader702.us.us.us.us.us.us

.preheader702.us.us.us.us.us.us:                  ; preds = %._crit_edge774.us.us.us.us.us.us, %.preheader706.us.us.us.us.us
  %.5582776.us.us.us.us.us.us = phi i32 [ 0, %.preheader706.us.us.us.us.us ], [ %i.kr, %._crit_edge774.us.us.us.us.us.us ]
  %.7630775.us.us.us.us.us.us = phi i32 [ %.6629779.us.us.us.us.us, %.preheader706.us.us.us.us.us ], [ %i.kq, %._crit_edge774.us.us.us.us.us.us ] ; 3 uses
  %i.jb = sext i32 %.7630775.us.us.us.us.us.us to i64 ; 6 uses
  br i1 %min.iters.check1003, label %scalar.ph1002.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader702.us.us.us.us.us.us
  %.reass = add i32 %.7630775.us.us.us.us.us.us, %invariant.op.a ; 2 uses
  %i.jc = add i32 %.reass, %i.iw
  %i.jd = icmp slt i32 %i.jc, %.reass
  br i1 %i.jd, label %scalar.ph1002.preheader, label %vector.memcheck946

vector.memcheck946:                               ; preds = %vector.scevcheck
  %i.je = shl nsw i64 %i.jb, 3                    ; 10 uses
  %scevgep = getelementptr i8, ptr %.1617, i64 %i.je ; 5 uses
  %scevgep949.a = getelementptr i8, ptr %scevgep948.a, i64 %i.je ; 5 uses
  %scevgep950 = getelementptr i8, ptr %.1619, i64 %i.je ; 5 uses
  %scevgep953.a = getelementptr i8, ptr %scevgep952.a, i64 %i.je ; 5 uses
  %scevgep954 = getelementptr i8, ptr %.1597, i64 %i.je ; 2 uses
  %scevgep957.a = getelementptr i8, ptr %scevgep956.a, i64 %i.je ; 2 uses
  %.reass1194.a = add i32 %.7630775.us.us.us.us.us.us, %invariant.op1193
  %i.jf = sext i32 %.reass1194.a to i64
  %i.jg = shl nsw i64 %i.jf, 3                    ; 2 uses
  %scevgep958 = getelementptr i8, ptr %.1615, i64 %i.jg ; 2 uses
  %scevgep961.a = getelementptr i8, ptr %scevgep960.a, i64 %i.jg ; 2 uses
  %scevgep962 = getelementptr i8, ptr %.1599, i64 %i.je ; 2 uses
  %scevgep965 = getelementptr i8, ptr %scevgep963, i64 %i.je ; 2 uses
  %scevgep966 = getelementptr i8, ptr %scevgep964.a, i64 %i.je ; 2 uses
  %scevgep969 = getelementptr i8, ptr %scevgep968, i64 %i.je ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep953.a
  %bound1 = icmp ult ptr %scevgep950, %scevgep949.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0970 = icmp ult ptr %scevgep, %scevgep957.a
  %bound1971 = icmp ult ptr %scevgep954, %scevgep949.a
  %found.conflict972 = and i1 %bound0970, %bound1971
  %conflict.rdx973 = or i1 %found.conflict, %found.conflict972
  %bound0974 = icmp ult ptr %scevgep, %scevgep961.a
  %bound1975 = icmp ult ptr %scevgep958, %scevgep949.a
  %found.conflict976 = and i1 %bound0974, %bound1975
  %conflict.rdx977 = or i1 %conflict.rdx973, %found.conflict976
  %bound0978 = icmp ult ptr %scevgep, %scevgep965
  %bound1979 = icmp ult ptr %scevgep962, %scevgep949.a
  %found.conflict980 = and i1 %bound0978, %bound1979
  %conflict.rdx981 = or i1 %conflict.rdx977, %found.conflict980
  %bound0982 = icmp ult ptr %scevgep, %scevgep969
  %bound1983 = icmp ult ptr %scevgep966, %scevgep949.a
  %found.conflict984 = and i1 %bound0982, %bound1983
  %conflict.rdx985 = or i1 %conflict.rdx981, %found.conflict984
  %bound0986 = icmp ult ptr %scevgep950, %scevgep957.a
  %bound1987 = icmp ult ptr %scevgep954, %scevgep953.a
  %found.conflict988 = and i1 %bound0986, %bound1987
  %conflict.rdx989 = or i1 %conflict.rdx985, %found.conflict988
  %bound0990 = icmp ult ptr %scevgep950, %scevgep961.a
  %bound1991 = icmp ult ptr %scevgep958, %scevgep953.a
  %found.conflict992 = and i1 %bound0990, %bound1991
  %conflict.rdx993 = or i1 %conflict.rdx989, %found.conflict992
  %bound0994 = icmp ult ptr %scevgep950, %scevgep965
  %bound1995 = icmp ult ptr %scevgep962, %scevgep953.a
  %found.conflict996 = and i1 %bound0994, %bound1995
  %conflict.rdx997 = or i1 %conflict.rdx993, %found.conflict996
  %bound0998 = icmp ult ptr %scevgep950, %scevgep969
  %bound1999 = icmp ult ptr %scevgep966, %scevgep953.a
  %found.conflict1000 = and i1 %bound0998, %bound1999
  %conflict.rdx1001 = or i1 %conflict.rdx997, %found.conflict1000
  br i1 %conflict.rdx1001, label %scalar.ph1002.preheader, label %vector.ph1004

vector.ph1004:                                    ; preds = %vector.memcheck946
  %i.jh = add nsw i64 %n.vec1006, %i.jb           ; 2 uses
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %vector.ph1004
  %index1008 = phi i64 [ 0, %vector.ph1004 ], [ %index.next1014, %vector.body1007 ] ; 2 uses
  %i.ji = add i64 %index1008, %i.jb               ; 6 uses
  %i.jj = trunc nsw i64 %i.ji to i32
  %.reass1194 = add i32 %i.jj, %invariant.op
  %11 = sub nsw i64 %i.ji, %7
  %i.jk = getelementptr inbounds [8 x i8], ptr %.1597, i64 %i.ji
  %wide.load = load <2 x double>, ptr %i.jk, align 8, !tbaa !35, !alias.scope !94
  %i.jl = sext i32 %.reass1194 to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %.1615, i64 %i.jl
  %wide.load1009 = load <2 x double>, ptr %i.jm, align 8, !tbaa !35, !alias.scope !97
  %i.jn = fadd <2 x double> %wide.load, %wide.load1009
  %i.jo = getelementptr inbounds [8 x i8], ptr %.1617, i64 %i.ji ; 2 uses
  %wide.load1010 = load <2 x double>, ptr %i.jo, align 8, !tbaa !35, !alias.scope !99, !noalias !101
  %i.jp = fadd <2 x double> %wide.load1010, %i.jn
  store <2 x double> %i.jp, ptr %i.jo, align 8, !tbaa !35, !alias.scope !99, !noalias !101
  %i.jq = getelementptr inbounds [8 x i8], ptr %.1599, i64 %i.ji
  %wide.load1011 = load <2 x double>, ptr %i.jq, align 8, !tbaa !35, !alias.scope !105
  %i.jr = getelementptr inbounds [8 x i8], ptr %.1601, i64 %11
  %wide.load1012 = load <2 x double>, ptr %i.jr, align 8, !tbaa !35, !alias.scope !106
  %i.js = fadd <2 x double> %wide.load1011, %wide.load1012
  %i.jt = getelementptr inbounds [8 x i8], ptr %.1619, i64 %i.ji ; 2 uses
  %wide.load1013 = load <2 x double>, ptr %i.jt, align 8, !tbaa !35, !alias.scope !107, !noalias !108
  %i.ju = fadd <2 x double> %wide.load1013, %i.js
  store <2 x double> %i.ju, ptr %i.jt, align 8, !tbaa !35, !alias.scope !107, !noalias !108
  %index.next1014 = add nuw i64 %index1008, 2     ; 2 uses
  %i.jv = icmp eq i64 %index.next1014, %n.vec1006
  br i1 %i.jv, label %middle.block1015, label %vector.body1007, !llvm.loop !109

middle.block1015:                                 ; preds = %vector.body1007
  br i1 %cmp.n1016, label %._crit_edge774.us.us.us.us.us.us, label %scalar.ph1002.preheader

scalar.ph1002.preheader:                          ; preds = %vector.memcheck946, %vector.scevcheck, %.preheader702.us.us.us.us.us.us, %middle.block1015
  %indvars.iv866.ph = phi i64 [ %i.jb, %vector.memcheck946 ], [ %i.jb, %vector.scevcheck ], [ %i.jb, %.preheader702.us.us.us.us.us.us ], [ %i.jh, %middle.block1015 ]
  %.5773.us.us.us.us.us.us.ph = phi i32 [ 0, %vector.memcheck946 ], [ 0, %vector.scevcheck ], [ 0, %.preheader702.us.us.us.us.us.us ], [ %i.ja, %middle.block1015 ]
  br label %scalar.ph1002

scalar.ph1002:                                    ; preds = %scalar.ph1002.preheader, %scalar.ph1002
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %scalar.ph1002 ], [ %indvars.iv866.ph, %scalar.ph1002.preheader ] ; 7 uses
  %.5773.us.us.us.us.us.us = phi i32 [ %i.ko, %scalar.ph1002 ], [ %.5773.us.us.us.us.us.us.ph, %scalar.ph1002.preheader ]
  %i.jw = trunc nsw i64 %indvars.iv866 to i32
  %.reass.reass = add i32 %i.jw, %invariant.op1195
  %indvars.iv.next867 = add nsw i64 %indvars.iv866, 1 ; 2 uses
  %12 = sub nsw i64 %indvars.iv866, %7
  %i.jx = getelementptr inbounds [8 x i8], ptr %.1597, i64 %indvars.iv866
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !35
  %i.jz = sext i32 %.reass.reass to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %.1615, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !35
  %i.kc = fadd double %i.jy, %i.kb
  %i.kd = getelementptr inbounds [8 x i8], ptr %.1617, i64 %indvars.iv866 ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !35
  %i.kf = fadd double %i.ke, %i.kc
  store double %i.kf, ptr %i.kd, align 8, !tbaa !35
  %i.kg = getelementptr inbounds [8 x i8], ptr %.1599, i64 %indvars.iv866
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !35
  %i.ki = getelementptr inbounds [8 x i8], ptr %.1601, i64 %12
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !35
  %i.kk = fadd double %i.kh, %i.kj
  %i.kl = getelementptr inbounds [8 x i8], ptr %.1619, i64 %indvars.iv866 ; 2 uses
  %i.km = load double, ptr %i.kl, align 8, !tbaa !35
  %i.kn = fadd double %i.km, %i.kk
  store double %i.kn, ptr %i.kl, align 8, !tbaa !35
  %i.ko = add nuw nsw i32 %.5773.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond869.not = icmp eq i32 %i.ko, %i.in
  br i1 %exitcond869.not, label %._crit_edge774.us.us.us.us.us.us, label %scalar.ph1002, !llvm.loop !110

._crit_edge774.us.us.us.us.us.us:                 ; preds = %scalar.ph1002, %middle.block1015
  %indvars.iv.next867.lcssa = phi i64 [ %i.jh, %middle.block1015 ], [ %indvars.iv.next867, %scalar.ph1002 ]
  %i.kp = trunc nsw i64 %indvars.iv.next867.lcssa to i32
  %i.kq = add nsw i32 %i.it, %i.kp                ; 2 uses
  %i.kr = add nuw nsw i32 %.5582776.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond870.not = icmp eq i32 %i.kr, %i.io
  br i1 %exitcond870.not, label %._crit_edge777.split.us.us.us.us.us.us, label %.preheader702.us.us.us.us.us.us, !llvm.loop !111

._crit_edge777.split.us.us.us.us.us.us:           ; preds = %._crit_edge774.us.us.us.us.us.us
  %i.ks = add nsw i32 %i.iu, %i.kq
  %i.kt = add nuw nsw i32 %.5593780.us.us.us.us.us, 1 ; 2 uses
  %exitcond871.not = icmp eq i32 %i.kt, %i.ip
  br i1 %exitcond871.not, label %._crit_edge789, label %.preheader706.us.us.us.us.us, !llvm.loop !112

._crit_edge789:                                   ; preds = %._crit_edge777.split.us.us.us.us.us.us, %.preheader710.lr.ph, %bb.l
  br i1 %i.hz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge789
  %i.ku = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.kv = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.kw = sub nsw i32 %i.ku, %i.kv
  %i.kx = mul nsw i32 %i.kw, %.pre-phi884
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge789, %bb.m
  %i.ky = phi i32 [ %i.kx, %bb.m ], [ 0, %._crit_edge789 ]
  br i1 %i.iq, label %.preheader709.lr.ph, label %.loopexit716

.preheader709.lr.ph:                              ; preds = %bb.n
  %factor.op.mul816 = mul i32 %i.ik, %i.io
  %i.kz = icmp slt i32 %i.ip, 1
  %i.la = icmp slt i32 %i.in, 1
  %i.lb = sub i32 %i.ik, %i.in
  %i.lc = sub i32 %i.im, %factor.op.mul816
  %i.ld = icmp slt i32 %i.io, 1
  %or.cond916.not927 = or i1 %i.kz, %i.ld
  %brmerge918 = or i1 %or.cond916.not927, %i.la
  br i1 %brmerge918, label %.loopexit716, label %.preheader705.us.us.us.us.us.preheader

.preheader705.us.us.us.us.us.preheader:           ; preds = %.preheader709.lr.ph
  %i.le = add nsw i32 %i.ky, %i.hw
  %i.lf = mul nsw i32 %i.le, %4
  %i.lg = select i1 %i.ii, i32 %i.lf, i32 0
  %i.lh = add nsw i32 %i.lg, %i.ht
  %i.li = sub i64 %.1599931, %.1597932
  %i.lj = sub i64 %.1601933, %.1597932
  %i.lk = sub i64 %.1615935, %.1597932
  %i.ll = sub i64 %.1601933, %.1599931
  %i.lm = sub i64 %.1615935, %.1599931
  %i.ln = sub i64 %.1615935, %.1601933
  %i.lo = zext nneg i32 %i.in to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.in, 6
  %diff.check = icmp ult i64 %i.li, 32
  %diff.check934 = icmp ult i64 %i.lj, 32
  %conflict.rdx = or i1 %diff.check, %diff.check934
  %diff.check936 = icmp ult i64 %i.lk, 32
  %conflict.rdx937 = or i1 %conflict.rdx, %diff.check936
  %diff.check938 = icmp ult i64 %i.ll, 32
  %conflict.rdx939 = or i1 %conflict.rdx937, %diff.check938
  %diff.check940 = icmp ult i64 %i.lm, 32
  %conflict.rdx941 = or i1 %conflict.rdx939, %diff.check940
  %diff.check942 = icmp ult i64 %i.ln, 32
  %conflict.rdx943 = or i1 %conflict.rdx941, %diff.check942
  %n.vec = and i64 %i.lo, 2147483644              ; 4 uses
  %i.lp = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.lo
  br label %.preheader705.us.us.us.us.us

.preheader705.us.us.us.us.us:                     ; preds = %.preheader705.us.us.us.us.us.preheader, %._crit_edge806.split.us.us.us.us.us.us
  %.7595809.us.us.us.us.us = phi i32 [ %i.mw, %._crit_edge806.split.us.us.us.us.us.us ], [ 0, %.preheader705.us.us.us.us.us.preheader ]
  %.9808.us.us.us.us.us = phi i32 [ %i.mv, %._crit_edge806.split.us.us.us.us.us.us ], [ %i.lh, %.preheader705.us.us.us.us.us.preheader ]
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge803.us.us.us.us.us.us, %.preheader705.us.us.us.us.us
  %.7584805.us.us.us.us.us.us = phi i32 [ 0, %.preheader705.us.us.us.us.us ], [ %i.mu, %._crit_edge803.us.us.us.us.us.us ]
  %.10804.us.us.us.us.us.us = phi i32 [ %.9808.us.us.us.us.us, %.preheader705.us.us.us.us.us ], [ %i.mt, %._crit_edge803.us.us.us.us.us.us ]
  %i.lq = sext i32 %.10804.us.us.us.us.us.us to i64 ; 3 uses
  %brmerge1196 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx943
  br i1 %brmerge1196, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.us.us.us.us
  %i.lr = add nsw i64 %n.vec, %i.lq               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ls = add i64 %index, %i.lq                   ; 4 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %.1597, i64 %i.ls ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store <2 x double> zeroinitializer, ptr %i.lt, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.lu, align 8, !tbaa !35
  %i.lv = getelementptr inbounds [8 x i8], ptr %.1599, i64 %i.ls ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <2 x double> zeroinitializer, ptr %i.lv, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.lw, align 8, !tbaa !35
  %i.lx = getelementptr inbounds [8 x i8], ptr %.1601, i64 %i.ls ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store <2 x double> zeroinitializer, ptr %i.lx, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.ly, align 8, !tbaa !35
  %i.lz = getelementptr inbounds [8 x i8], ptr %.1615, i64 %i.ls ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  store <2 x double> zeroinitializer, ptr %i.lz, align 8, !tbaa !35
  store <2 x double> zeroinitializer, ptr %i.ma, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mb = icmp eq i64 %index.next, %n.vec
  br i1 %i.mb, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge803.us.us.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us.us.us.us, %middle.block
  %indvars.iv872.ph = phi i64 [ %i.lr, %middle.block ], [ %i.lq, %.preheader.us.us.us.us.us.us ] ; 6 uses
  %.7802.us.us.us.us.us.us.ph = phi i32 [ %i.lp, %middle.block ], [ 0, %.preheader.us.us.us.us.us.us ] ; 4 uses
  %i.mc = sub i32 %i.in, %.7802.us.us.us.us.us.us.ph
  %.neg1187 = add i32 %.7802.us.us.us.us.us.us.ph, 1
  %xtraiter1184 = and i32 %i.mc, 1
  %lcmp.mod1185.not = icmp eq i32 %xtraiter1184, 0
  br i1 %lcmp.mod1185.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.md = getelementptr inbounds [8 x i8], ptr %.1597, i64 %indvars.iv872.ph
  store double 0.000000e+00, ptr %i.md, align 8, !tbaa !35
  %i.me = getelementptr inbounds [8 x i8], ptr %.1599, i64 %indvars.iv872.ph
  store double 0.000000e+00, ptr %i.me, align 8, !tbaa !35
  %i.mf = getelementptr inbounds [8 x i8], ptr %.1601, i64 %indvars.iv872.ph
  store double 0.000000e+00, ptr %i.mf, align 8, !tbaa !35
  %i.mg = getelementptr inbounds [8 x i8], ptr %.1615, i64 %indvars.iv872.ph
  store double 0.000000e+00, ptr %i.mg, align 8, !tbaa !35
  %indvars.iv.next873.prol = add nsw i64 %indvars.iv872.ph, 1 ; 2 uses
  %i.mh = add nuw nsw i32 %.7802.us.us.us.us.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next873.lcssa1182.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next873.prol, %scalar.ph.prol ]
  %indvars.iv872.unr = phi i64 [ %indvars.iv872.ph, %scalar.ph.preheader ], [ %indvars.iv.next873.prol, %scalar.ph.prol ]
  %.7802.us.us.us.us.us.us.unr = phi i32 [ %.7802.us.us.us.us.us.us.ph, %scalar.ph.preheader ], [ %i.mh, %scalar.ph.prol ]
  %i.mi = icmp eq i32 %i.in, %.neg1187
  br i1 %i.mi, label %._crit_edge803.us.us.us.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv872 = phi i64 [ %indvars.iv.next873.1, %scalar.ph ], [ %indvars.iv872.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.7802.us.us.us.us.us.us = phi i32 [ %i.mr, %scalar.ph ], [ %.7802.us.us.us.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.mj = getelementptr inbounds [8 x i8], ptr %.1597, i64 %indvars.iv872
  store double 0.000000e+00, ptr %i.mj, align 8, !tbaa !35
  %i.mk = getelementptr inbounds [8 x i8], ptr %.1599, i64 %indvars.iv872
  store double 0.000000e+00, ptr %i.mk, align 8, !tbaa !35
  %i.ml = getelementptr inbounds [8 x i8], ptr %.1601, i64 %indvars.iv872
  store double 0.000000e+00, ptr %i.ml, align 8, !tbaa !35
  %i.mm = getelementptr inbounds [8 x i8], ptr %.1615, i64 %indvars.iv872
  store double 0.000000e+00, ptr %i.mm, align 8, !tbaa !35
  %indvars.iv.next873 = add nsw i64 %indvars.iv872, 1 ; 4 uses
  %i.mn = getelementptr inbounds [8 x i8], ptr %.1597, i64 %indvars.iv.next873
  store double 0.000000e+00, ptr %i.mn, align 8, !tbaa !35
  %i.mo = getelementptr inbounds [8 x i8], ptr %.1599, i64 %indvars.iv.next873
  store double 0.000000e+00, ptr %i.mo, align 8, !tbaa !35
  %i.mp = getelementptr inbounds [8 x i8], ptr %.1601, i64 %indvars.iv.next873
  store double 0.000000e+00, ptr %i.mp, align 8, !tbaa !35
  %i.mq = getelementptr inbounds [8 x i8], ptr %.1615, i64 %indvars.iv.next873
  store double 0.000000e+00, ptr %i.mq, align 8, !tbaa !35
  %indvars.iv.next873.1 = add nsw i64 %indvars.iv872, 2 ; 2 uses
  %i.mr = add nuw nsw i32 %.7802.us.us.us.us.us.us, 2 ; 2 uses
  %exitcond875.not.1 = icmp eq i32 %i.mr, %i.in
  br i1 %exitcond875.not.1, label %._crit_edge803.us.us.us.us.us.us, label %scalar.ph, !llvm.loop !114

._crit_edge803.us.us.us.us.us.us:                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next873.lcssa = phi i64 [ %i.lr, %middle.block ], [ %indvars.iv.next873.lcssa1182.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next873.1, %scalar.ph ]
  %i.ms = trunc nsw i64 %indvars.iv.next873.lcssa to i32
  %i.mt = add nsw i32 %i.lb, %i.ms                ; 2 uses
  %i.mu = add nuw nsw i32 %.7584805.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond876.not = icmp eq i32 %i.mu, %i.io
  br i1 %exitcond876.not, label %._crit_edge806.split.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !115

._crit_edge806.split.us.us.us.us.us.us:           ; preds = %._crit_edge803.us.us.us.us.us.us
  %i.mv = add nsw i32 %i.lc, %i.mt
  %i.mw = add nuw nsw i32 %.7595809.us.us.us.us.us, 1 ; 2 uses
  %exitcond877.not = icmp eq i32 %i.mw, %i.ip
  br i1 %exitcond877.not, label %.loopexit716, label %.preheader705.us.us.us.us.us, !llvm.loop !116

.loopexit716:                                     ; preds = %._crit_edge806.split.us.us.us.us.us.us, %.preheader709.lr.ph, %bb.n, %._crit_edge760
  %indvars.iv.next879 = add nuw nsw i64 %indvars.iv878, 1 ; 2 uses
  %i.mx = load i32, ptr %i.o, align 8, !tbaa !29
  %i.my = sext i32 %i.mx to i64
  %i.mz = icmp slt i64 %indvars.iv.next879, %i.my
  br i1 %i.mz, label %bb.c, label %.loopexit717, !llvm.loop !117

.loopexit717:                                     ; preds = %.loopexit716, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

declare i32 @hypre_StructMatrixAssemble(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMG3RAPPeriodicNoSym(ptr noundef %0, ptr noundef readnone captures(none) %1, ptr noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 58 uses
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %.preheader491, label %.loopexit492

.preheader491:                                    ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.loopexit492

.lr.ph:                                           ; preds = %.preheader491
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 27 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 27 uses
  %i.t = icmp eq i32 %i.f, 27                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit490
  %indvars.iv577 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next578, %.loopexit490 ] ; 4 uses
  %.0420557 = phi ptr [ undef, %.lr.ph ], [ %.1421, %.loopexit490 ]
  %.0422556 = phi ptr [ undef, %.lr.ph ], [ %.1423, %.loopexit490 ]
  %.0424555 = phi ptr [ undef, %.lr.ph ], [ %.1425, %.loopexit490 ]
  %.0436554 = phi ptr [ undef, %.lr.ph ], [ %.1437, %.loopexit490 ]
  %.0438553 = phi ptr [ undef, %.lr.ph ], [ %.1439, %.loopexit490 ]
  %.0440552 = phi ptr [ undef, %.lr.ph ], [ %.1441, %.loopexit490 ]
  %.0445551 = phi ptr [ undef, %.lr.ph ], [ %.1446, %.loopexit490 ]
  %.0447550 = phi ptr [ undef, %.lr.ph ], [ %.1448, %.loopexit490 ]
  %.0449549 = phi ptr [ undef, %.lr.ph ], [ %.1450, %.loopexit490 ]
  %.0451548 = phi ptr [ undef, %.lr.ph ], [ %.1452, %.loopexit490 ]
  %.0453547 = phi ptr [ undef, %.lr.ph ], [ %.1454, %.loopexit490 ]
  %.0455546 = phi ptr [ undef, %.lr.ph ], [ %.1456, %.loopexit490 ]
end_hunk_1
