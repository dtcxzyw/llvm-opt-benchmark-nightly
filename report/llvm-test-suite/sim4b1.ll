inline.NumInlined: 64
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@SIM4:bb.a
  %i.auj = getelementptr inbounds nuw [8 x i8], ptr %i.aug, i64 %i.aui
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !31 ; 4 uses
  %i.aul = zext i32 %.084.i to i64                ; 4 uses
  %i.aum = getelementptr inbounds nuw [8 x i8], ptr %i.aug, i64 %i.aul
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !31 ; 5 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 4
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !33
  %i.auq = getelementptr inbounds nuw i8, ptr %i.auk, i64 4
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !33
  %i.aus = sub i32 %i.aup, %i.aur                 ; 3 uses
  %i.aut = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 36), align 4, !tbaa !105
  %.not81.i = icmp ugt i32 %i.aus, %i.aut
  br i1 %.not81.i, label %bb.fo, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph.i484
  %i.auu = add i32 %i.auf, -1
  store i32 %i.auu, ptr %i.bl, align 8, !tbaa !19
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auk, i64 12
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !51
  %i.aux = getelementptr inbounds nuw i8, ptr %i.aun, i64 12
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !51
  %i.auz = icmp ugt i32 %i.auw, %i.auy
  br i1 %i.auz, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  call void @free(ptr noundef nonnull %i.aun) #18
  %i.ava = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.ava, i64 %i.aul ; 2 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  %i.avd = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.ave = sub i32 %i.avd, %.084.i
  %i.avf = zext i32 %i.ave to i64
  %i.avg = shl nuw nsw i64 %i.avf, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.avb, ptr nonnull align 8 %i.avc, i64 %i.avg, i1 false)
  %i.avh = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.avi = icmp ult i32 %.084.i, %i.avh
  br i1 %i.avi, label %bb.fl, label %bb.fp

bb.fl:                                            ; preds = %bb.fk
  %i.avj = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.avk = getelementptr inbounds nuw [8 x i8], ptr %i.avj, i64 %i.aul
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !31 ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.auk, i64 8 ; 2 uses
  %i.avn = load <2 x i32>, ptr %i.avm, align 4, !tbaa !4
  %i.avo = insertelement <2 x i32> poison, i32 %i.aus, i64 0
  %i.avp = shufflevector <2 x i32> %i.avo, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.avq = add <2 x i32> %i.avn, %i.avp
  store <2 x i32> %i.avq, ptr %i.avm, align 4, !tbaa !4
  %i.avr = load <2 x i32>, ptr %i.avl, align 4, !tbaa !4
  %i.avs = sub <2 x i32> %i.avr, %i.avp
  store <2 x i32> %i.avs, ptr %i.avl, align 4, !tbaa !4
  br label %thread-pre-split

bb.fm:                                            ; preds = %bb.fj
  call void @free(ptr noundef nonnull %i.auk) #18
  %i.avt = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.avu = getelementptr inbounds nuw [8 x i8], ptr %i.avt, i64 %i.aul ; 2 uses
  %i.avv = getelementptr inbounds i8, ptr %i.avu, i64 -8
  %i.avw = load i32, ptr %i.bl, align 8, !tbaa !19
  %reass.sub = sub i32 %i.avw, %.084.i
  %i.avx = add i32 %reass.sub, 1
  %i.avy = zext i32 %i.avx to i64
  %i.avz = shl nuw nsw i64 %i.avy, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.avv, ptr align 8 %i.avu, i64 %i.avz, i1 false)
  %i.awa = icmp ugt i32 %.084.i, 1
  br i1 %i.awa, label %bb.fn, label %thread-pre-split

bb.fn:                                            ; preds = %bb.fm
  %i.awb = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.awc = add i32 %.084.i, -2
  %i.awd = zext i32 %i.awc to i64
  %i.awe = getelementptr inbounds nuw [8 x i8], ptr %i.awb, i64 %i.awd
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !31
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 8 ; 2 uses
  %i.awh = load <2 x i32>, ptr %i.awg, align 4, !tbaa !4
  %i.awi = insertelement <2 x i32> poison, i32 %i.aus, i64 0
  %i.awj = shufflevector <2 x i32> %i.awi, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.awk = add <2 x i32> %i.awh, %i.awj
  store <2 x i32> %i.awk, ptr %i.awg, align 4, !tbaa !4
  %i.awl = load <2 x i32>, ptr %i.aun, align 4, !tbaa !4
  %i.awm = sub <2 x i32> %i.awl, %i.awj
  store <2 x i32> %i.awm, ptr %i.aun, align 4, !tbaa !4
  br label %thread-pre-split

bb.fo:                                            ; preds = %.lr.ph.i484
  %i.awn = add nuw i32 %.084.i, 1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.fl, %bb.fm, %bb.fn, %bb.fo
  %.1.i.ph = phi i32 [ %i.awn, %bb.fo ], [ %.084.i, %bb.fm ], [ %.084.i, %bb.fn ], [ %.084.i, %bb.fl ]
  %.pr560 = load i32, ptr %i.bl, align 8, !tbaa !19
  br label %bb.fp

bb.fp:                                            ; preds = %thread-pre-split, %bb.fk
  %i.awo = phi i32 [ %.pr560, %thread-pre-split ], [ %i.avh, %bb.fk ] ; 5 uses
  %.1.i = phi i32 [ %.1.i.ph, %thread-pre-split ], [ %.084.i, %bb.fk ] ; 2 uses
  %i.awp = icmp ult i32 %.1.i, %i.awo
  br i1 %i.awp, label %.lr.ph.i484, label %.preheader.i485, !llvm.loop !106

bb.fq:                                            ; preds = %about_same_gap_p.exit.thread.i, %.lr.ph86.i
  %i.awq = phi i32 [ %i.awo, %.lr.ph86.i ], [ %i.ayd, %about_same_gap_p.exit.thread.i ] ; 2 uses
  %.285.i = phi i32 [ 1, %.lr.ph86.i ], [ %i.aye, %about_same_gap_p.exit.thread.i ] ; 5 uses
  %i.awr = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.aws = add i32 %.285.i, -1                    ; 2 uses
  %i.awt = zext i32 %i.aws to i64
  %i.awu = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %i.awt
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !31 ; 3 uses
  %i.aww = zext i32 %.285.i to i64                ; 2 uses
  %i.awx = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %i.aww
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !31 ; 5 uses
  %i.awz = load i32, ptr %i.awy, align 4, !tbaa !35 ; 3 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awv, i64 8 ; 2 uses
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !50 ; 3 uses
  %i.axc = add i32 %i.axb, 31
  %i.axd = icmp ult i32 %i.awz, %i.axc
  br i1 %i.axd, label %bb.fr, label %._crit_edge87.i

._crit_edge87.i:                                  ; preds = %bb.fq
  %.phi.trans.insert.i486 = getelementptr inbounds nuw i8, ptr %i.awv, i64 12
  %.pre.i487 = load i32, ptr %.phi.trans.insert.i486, align 4, !tbaa !51
  %.phi.trans.insert88.i = getelementptr inbounds nuw i8, ptr %i.awy, i64 4
  %.pre89.i = load i32, ptr %.phi.trans.insert88.i, align 4, !tbaa !33
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.axe = getelementptr inbounds nuw i8, ptr %i.awy, i64 4
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !33 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.awv, i64 12
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !51 ; 2 uses
  %i.axi = add i32 %i.aue, %i.axh
  %.not.i490 = icmp ugt i32 %i.axf, %i.axi
  br i1 %.not.i490, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr, %._crit_edge87.i
  %i.axj = phi i32 [ %.pre89.i, %._crit_edge87.i ], [ %i.axf, %bb.fr ] ; 2 uses
  %i.axk = phi i32 [ %.pre.i487, %._crit_edge87.i ], [ %i.axh, %bb.fr ] ; 2 uses
  %.not.i.i488 = icmp ugt i32 %i.awz, %i.axb
  %.not27.i.i = icmp ugt i32 %i.axj, %i.axk
  %or.cond.i.i = and i1 %.not.i.i488, %.not27.i.i
  br i1 %or.cond.i.i, label %about_same_gap_p.exit.i, label %about_same_gap_p.exit.thread.i

about_same_gap_p.exit.i:                          ; preds = %bb.fs
  %i.axl = xor i32 %i.axb, -1
  %i.axm = add i32 %i.awz, %i.axl                 ; 2 uses
  %i.axn = xor i32 %i.axk, -1
  %i.axo = add i32 %i.axj, %i.axn                 ; 2 uses
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %i.axo, i32 %i.axm)
  %spec.select29.i.i = call i32 @llvm.umax.i32(i32 %i.axo, i32 %i.axm) ; 2 uses
  %i.axp = sub i32 %spec.select29.i.i, %spec.select.i.i
  %i.axq = mul i32 %i.axp, 100
  %i.axr = udiv i32 %i.axq, %spec.select29.i.i
  %i.axs = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 32), align 8, !tbaa !107
  %.not28.i.not.i = icmp ugt i32 %i.axr, %i.axs
  br i1 %.not28.i.not.i, label %about_same_gap_p.exit.thread.i, label %bb.ft

bb.ft:                                            ; preds = %about_same_gap_p.exit.i, %bb.fr
  %i.axt = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  %i.axu = load <2 x i32>, ptr %i.axt, align 4, !tbaa !4
  store <2 x i32> %i.axu, ptr %i.axa, align 4, !tbaa !4
  call void @free(ptr noundef nonnull %i.awy) #18
  %i.axv = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.axw = add i32 %i.axv, -1                     ; 2 uses
  store i32 %i.axw, ptr %i.bl, align 8, !tbaa !19
  %i.axx = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.axy = getelementptr inbounds nuw [8 x i8], ptr %i.axx, i64 %i.aww ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 8
  %i.aya = sub i32 %i.axw, %.285.i
  %i.ayb = zext i32 %i.aya to i64
  %i.ayc = shl nuw nsw i64 %i.ayb, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.axy, ptr nonnull align 8 %i.axz, i64 %i.ayc, i1 false)
  %.pre90.i = load i32, ptr %i.bl, align 8, !tbaa !19
  br label %about_same_gap_p.exit.thread.i

about_same_gap_p.exit.thread.i:                   ; preds = %bb.ft, %about_same_gap_p.exit.i, %bb.fs
  %i.ayd = phi i32 [ %.pre90.i, %bb.ft ], [ %i.awq, %about_same_gap_p.exit.i ], [ %i.awq, %bb.fs ] ; 3 uses
  %.3.i489 = phi i32 [ %i.aws, %bb.ft ], [ %.285.i, %about_same_gap_p.exit.i ], [ %.285.i, %bb.fs ]
  %i.aye = add i32 %.3.i489, 1                    ; 2 uses
  %i.ayf = icmp ult i32 %i.aye, %i.ayd
  br i1 %i.ayf, label %bb.fq, label %compact_exons.exit, !llvm.loop !108

compact_exons.exit:                               ; preds = %about_same_gap_p.exit.thread.i, %.loopexit597, %.preheader.i485
  %i.ayg = phi i32 [ %i.awo, %.preheader.i485 ], [ %i.aub, %.loopexit597 ], [ %i.ayd, %about_same_gap_p.exit.thread.i ] ; 2 uses
  %.not339 = icmp eq i32 %i.ayg, 0
  br i1 %.not339, label %._crit_edge232.i.thread, label %.lr.ph663.preheader

.lr.ph663.preheader:                              ; preds = %compact_exons.exit
  %i.ayh = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !31 ; 3 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 12
  %i.ayk = load i32, ptr %i.ayj, align 4, !tbaa !51
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayi, i64 4
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !33
  %i.ayn = add i32 %i.ayk, 1
  %i.ayo = sub i32 %i.ayn, %i.aym
  %i.ayp = load i32, ptr %i.x, align 4, !tbaa !39
  %.not3401022 = icmp ult i32 %i.ayo, %i.ayp
  br i1 %.not3401022, label %.lr.ph1024, label %.thread561

.lr.ph663:                                        ; preds = %.lr.ph1024
  %i.ayq = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %indvars.iv.next751
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !31 ; 3 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 12
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !51
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ays, i64 4
  %i.ayw = load i32, ptr %i.ayv, align 4, !tbaa !33
  %i.ayx = add i32 %i.ayu, 1
  %i.ayy = sub i32 %i.ayx, %i.ayw
  %i.ayz = load i32, ptr %i.x, align 4, !tbaa !39
  %.not340 = icmp ult i32 %i.ayy, %i.ayz
  br i1 %.not340, label %.lr.ph1024, label %.thread561

.lr.ph1024:                                       ; preds = %.lr.ph663.preheader, %.lr.ph663
  %i.aza = phi ptr [ %i.ays, %.lr.ph663 ], [ %i.ayi, %.lr.ph663.preheader ]
  %indvars.iv7501010 = phi i64 [ %indvars.iv.next751, %.lr.ph663 ], [ 0, %.lr.ph663.preheader ]
  call void @free(ptr noundef nonnull %i.aza) #18
  %indvars.iv.next751 = add nuw nsw i64 %indvars.iv7501010, 1 ; 5 uses
  %i.azb = load i32, ptr %i.bl, align 8, !tbaa !19 ; 3 uses
  %11 = zext i32 %i.azb to i64
  %i.azc = icmp samesign ult i64 %indvars.iv.next751, %11
  br i1 %i.azc, label %.lr.ph663, label %.thread561

.thread561:                                       ; preds = %.lr.ph663, %.lr.ph1024, %.lr.ph663.preheader
  %12 = phi i32 [ %i.ayg, %.lr.ph663.preheader ], [ %i.azb, %.lr.ph1024 ], [ %i.azb, %.lr.ph663 ] ; 2 uses
  %.0286.lcssa.ph.in = phi i64 [ 0, %.lr.ph663.preheader ], [ %indvars.iv.next751, %.lr.ph1024 ], [ %indvars.iv.next751, %.lr.ph663 ] ; 3 uses
  %.not341 = icmp eq i64 %.0286.lcssa.ph.in, 0
  br i1 %.not341, label %thread-pre-split564, label %.thread561.thread

.thread561.thread:                                ; preds = %.thread561
  %.0286.lcssa.ph = trunc nuw i64 %.0286.lcssa.ph.in to i32 ; 2 uses
  %i.azd = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.aze = getelementptr inbounds nuw [8 x i8], ptr %i.azd, i64 %.0286.lcssa.ph.in
  %i.azf = sub i32 %12, %.0286.lcssa.ph
  %i.azg = zext i32 %i.azf to i64
  %i.azh = shl nuw nsw i64 %i.azg, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.azd, ptr nonnull align 8 %i.aze, i64 %i.azh, i1 false)
  %i.azi = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.azj = sub i32 %i.azi, %.0286.lcssa.ph        ; 2 uses
  store i32 %i.azj, ptr %i.bl, align 8, !tbaa !19
  br label %thread-pre-split564

thread-pre-split564:                              ; preds = %.thread561, %.thread561.thread
  %i.azk = phi i32 [ %i.azj, %.thread561.thread ], [ %12, %.thread561 ] ; 3 uses
  %.0283667 = add i32 %i.azk, -1                  ; 3 uses
  %i.azl = icmp sgt i32 %.0283667, -1
  br i1 %i.azl, label %.lr.ph669.preheader, label %.thread568

.lr.ph669.preheader:                              ; preds = %thread-pre-split564
  %i.azm = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.azn = zext nneg i32 %.0283667 to i64
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %i.azm, i64 %i.azn
  %i.azp = load ptr, ptr %i.azo, align 8, !tbaa !31 ; 3 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 12
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !51
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azp, i64 4
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !33
  %i.azu = add i32 %i.azr, 1
  %i.azv = sub i32 %i.azu, %i.azt
  %i.azw = load i32, ptr %i.x, align 4, !tbaa !39
  %.not3431026 = icmp ult i32 %i.azv, %i.azw
  br i1 %.not3431026, label %.lr.ph1028, label %.thread568

.lr.ph669:                                        ; preds = %.lr.ph1028
  %.0283 = add nsw i32 %.02836681027, -1          ; 2 uses
  %i.azx = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.azy = zext nneg i32 %.0283 to i64
  %i.azz = getelementptr inbounds nuw [8 x i8], ptr %i.azx, i64 %i.azy
  %i.baa = load ptr, ptr %i.azz, align 8, !tbaa !31 ; 3 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 12
  %i.bac = load i32, ptr %i.bab, align 4, !tbaa !51
  %i.bad = getelementptr inbounds nuw i8, ptr %i.baa, i64 4
  %i.bae = load i32, ptr %i.bad, align 4, !tbaa !33
  %i.baf = add i32 %i.bac, 1
  %i.bag = sub i32 %i.baf, %i.bae
  %i.bah = load i32, ptr %i.x, align 4, !tbaa !39
  %.not343 = icmp ult i32 %i.bag, %i.bah
  br i1 %.not343, label %.lr.ph1028, label %.thread568

.lr.ph1028:                                       ; preds = %.lr.ph669.preheader, %.lr.ph669
  %i.bai = phi ptr [ %i.baa, %.lr.ph669 ], [ %i.azp, %.lr.ph669.preheader ]
  %.02836681027 = phi i32 [ %.0283, %.lr.ph669 ], [ %.0283667, %.lr.ph669.preheader ] ; 2 uses
  call void @free(ptr noundef nonnull %i.bai) #18
  %i.baj = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.bak = add i32 %i.baj, -1                     ; 3 uses
  store i32 %i.bak, ptr %i.bl, align 8, !tbaa !19
  %i.bal = icmp sgt i32 %.02836681027, 0
  br i1 %i.bal, label %.lr.ph669, label %.thread568

.thread568:                                       ; preds = %.lr.ph669, %.lr.ph1028, %.lr.ph669.preheader, %thread-pre-split564
  %.pr572 = phi i32 [ %i.azk, %thread-pre-split564 ], [ %i.azk, %.lr.ph669.preheader ], [ %i.bak, %.lr.ph1028 ], [ %i.bak, %.lr.ph669 ] ; 2 uses
  %i.bam = load ptr, ptr %i.w, align 8, !tbaa !30 ; 13 uses
  %i.ban = load ptr, ptr %i.o, align 8, !tbaa !21 ; 7 uses
  %i.bao = icmp ugt i32 %.pr572, 1
  br i1 %i.bao, label %.lr.ph.i493, label %._crit_edge232.i

.lr.ph.i493:                                      ; preds = %.thread568
  %i.bap = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 4 uses
  %i.baq = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 16), align 8 ; 2 uses
  %.not.i523 = icmp eq i32 %i.baq, 0
  %i.bar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 8), align 8
  %wide.trip.count.i525 = zext i32 %i.baq to i64
  br label %bb.fu

.preheader216.i:                                  ; preds = %bb.gb
  %i.bas = icmp ugt i32 %i.bfk, 1
  br i1 %i.bas, label %.lr.ph231.i, label %._crit_edge232.i

bb.fu:                                            ; preds = %bb.gb, %.lr.ph.i493
  %indvars.iv.i494 = phi i64 [ 1, %.lr.ph.i493 ], [ %indvars.iv.next.i495, %bb.gb ] ; 2 uses
  %i.bat = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.bau = getelementptr [8 x i8], ptr %i.bat, i64 %indvars.iv.i494 ; 2 uses
  %i.bav = getelementptr i8, ptr %i.bau, i64 -8
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !31 ; 3 uses
  %i.bax = load ptr, ptr %i.bau, align 8, !tbaa !31 ; 2 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.baw, i64 24 ; 5 uses
  %i.baz = load i64, ptr %i.bay, align 4
  %i.bba = and i64 %i.baz, 4294967295
  %i.bbb = or disjoint i64 %i.bba, -72057594037927936
  store i64 %i.bbb, ptr %i.bay, align 4
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bax, i64 4
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !33
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.baw, i64 12
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !51 ; 2 uses
  %i.bbg = sub i32 %i.bbd, %i.bbf
  %.not181.i = icmp eq i32 %i.bbg, 1
  br i1 %.not181.i, label %bb.fv, label %bb.gb

bb.fv:                                            ; preds = %bb.fu
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.baw, i64 8
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !50
  %i.bbj = load i32, ptr %i.bax, align 4, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bbk = zext i32 %i.bbi to i64
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bam, i64 %i.bbk ; 2 uses
  %i.bbm = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 44), align 4, !tbaa !109 ; 5 uses
  %i.bbn = zext i32 %i.bbm to i64                 ; 3 uses
  %i.bbo = sub nsw i64 0, %i.bbn                  ; 2 uses
  %i.bbp = getelementptr inbounds i8, ptr %i.bbl, i64 %i.bbo ; 2 uses
  %i.bbq = zext i32 %i.bbf to i64
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.ban, i64 %i.bbq ; 4 uses
  %i.bbs = getelementptr inbounds i8, ptr %i.bbr, i64 %i.bbo ; 2 uses
  %i.bbt = load i8, ptr %i.bbp, align 1, !tbaa !20 ; 2 uses
  %i.bbu = load i8, ptr %i.bbs, align 1, !tbaa !20 ; 2 uses
  %i.bbv = icmp eq i8 %i.bbt, %i.bbu
  %i.bbw = zext i1 %i.bbv to i32                  ; 2 uses
  %i.bbx = icmp ugt i32 %i.bbm, 1
  br i1 %i.bbx, label %.lr.ph.i.i530, label %SWscore.exit.thread.i

.lr.ph.i.i530:                                    ; preds = %bb.fv, %.lr.ph.i.i530
  %i.bby = phi i8 [ %i.bcb, %.lr.ph.i.i530 ], [ %i.bbu, %bb.fv ]
  %i.bbz = phi i8 [ %i.bcg, %.lr.ph.i.i530 ], [ %i.bbt, %bb.fv ]
  %indvars.iv.i.i531 = phi i64 [ %indvars.iv.next.i.i533, %.lr.ph.i.i530 ], [ 1, %bb.fv ] ; 3 uses
  %.sroa.0.051.i.i = phi i32 [ %.sroa.10.0..i.i, %.lr.ph.i.i530 ], [ 0, %bb.fv ]
  %.sroa.10.050.i.i = phi i32 [ %i.bcq, %.lr.ph.i.i530 ], [ %i.bbw, %bb.fv ] ; 3 uses
  %.sroa.19.049.i.i = phi i32 [ %i.bck, %.lr.ph.i.i530 ], [ 0, %bb.fv ]
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbs, i64 %indvars.iv.i.i531
  %i.bcb = load i8, ptr %i.bca, align 1, !tbaa !20 ; 3 uses
  %i.bcc = icmp eq i8 %i.bbz, %i.bcb
  %i.bcd = zext i1 %i.bcc to i32
  %i.bce = add nuw nsw i32 %.sroa.0.051.i.i, %i.bcd
  %.sroa.10.0..i.i = call i32 @llvm.smax.i32(i32 %i.bce, i32 %.sroa.10.050.i.i) ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bbp, i64 %indvars.iv.i.i531
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !20 ; 3 uses
  %i.bch = icmp eq i8 %i.bcg, %i.bby
  %i.bci = zext i1 %i.bch to i32
  %i.bcj = add nuw nsw i32 %.sroa.19.049.i.i, %i.bci
  %i.bck = call i32 @llvm.smax.i32(i32 %i.bcj, i32 %.sroa.10.050.i.i) ; 2 uses
  %i.bcl = call i32 @llvm.smax.i32(i32 %.sroa.10.0..i.i, i32 %i.bck) ; 2 uses
  %i.bcm = icmp eq i8 %i.bcg, %i.bcb
  %i.bcn = zext i1 %i.bcm to i32
  %i.bco = add nsw i32 %.sroa.10.050.i.i, %i.bcn  ; 2 uses
  %.not.i.i532 = icmp sgt i32 %i.bcl, %i.bco
  %i.bcp = add nsw i32 %i.bcl, -1
  %i.bcq = select i1 %.not.i.i532, i32 %i.bcp, i32 %i.bco ; 2 uses
  %indvars.iv.next.i.i533 = add nuw nsw i64 %indvars.iv.i.i531, 1 ; 2 uses
  %exitcond.not.i.i534 = icmp eq i64 %indvars.iv.next.i.i533, %i.bbn
  br i1 %exitcond.not.i.i534, label %SWscore.exit.i, label %.lr.ph.i.i530, !llvm.loop !110

SWscore.exit.i:                                   ; preds = %.lr.ph.i.i530
  %i.bcr = icmp ult i32 %i.bcq, %i.bbm
  br i1 %i.bcr, label %perfect_spl_p.exit.thread, label %bb.fw

SWscore.exit.thread.i:                            ; preds = %bb.fv
  %i.bcs = icmp samesign ugt i32 %i.bbm, %i.bbw
  br i1 %i.bcs, label %perfect_spl_p.exit.thread, label %.thread.i522

.thread.i522:                                     ; preds = %SWscore.exit.thread.i
  %i.bct = zext i32 %i.bbj to i64                 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bam, i64 %i.bct
  %i.bcv = getelementptr inbounds i8, ptr %i.bcu, i64 -1
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !20
  %i.bcx = load i8, ptr %i.bbr, align 1, !tbaa !20
  %i.bcy = icmp eq i8 %i.bcw, %i.bcx
  %i.bcz = zext i1 %i.bcy to i32
  br label %SWscore.exit39.i

bb.fw:                                            ; preds = %SWscore.exit.i
  %i.bda = zext i32 %i.bbj to i64                 ; 2 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bam, i64 %i.bda
  %i.bdc = getelementptr inbounds i8, ptr %i.bdb, i64 -1 ; 2 uses
  %i.bdd = load i8, ptr %i.bdc, align 1, !tbaa !20 ; 2 uses
  %i.bde = load i8, ptr %i.bbr, align 1, !tbaa !20 ; 2 uses
  %i.bdf = icmp eq i8 %i.bdd, %i.bde
  %i.bdg = zext i1 %i.bdf to i32
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i, %bb.fw
  %i.bdh = phi i8 [ %i.bdk, %.lr.ph.i30.i ], [ %i.bde, %bb.fw ]
  %i.bdi = phi i8 [ %i.bdp, %.lr.ph.i30.i ], [ %i.bdd, %bb.fw ]
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i37.i, %.lr.ph.i30.i ], [ 1, %bb.fw ] ; 3 uses
  %.sroa.0.051.i32.i = phi i32 [ %.sroa.10.0..i35.i, %.lr.ph.i30.i ], [ 0, %bb.fw ]
  %.sroa.10.050.i33.i = phi i32 [ %i.bdz, %.lr.ph.i30.i ], [ %i.bdg, %bb.fw ] ; 3 uses
  %.sroa.19.049.i34.i = phi i32 [ %i.bdt, %.lr.ph.i30.i ], [ 0, %bb.fw ]
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bbr, i64 %indvars.iv.i31.i
  %i.bdk = load i8, ptr %i.bdj, align 1, !tbaa !20 ; 3 uses
  %i.bdl = icmp eq i8 %i.bdi, %i.bdk
  %i.bdm = zext i1 %i.bdl to i32
  %i.bdn = add nuw nsw i32 %.sroa.0.051.i32.i, %i.bdm
  %.sroa.10.0..i35.i = call i32 @llvm.smax.i32(i32 %i.bdn, i32 %.sroa.10.050.i33.i) ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdc, i64 %indvars.iv.i31.i
  %i.bdp = load i8, ptr %i.bdo, align 1, !tbaa !20 ; 3 uses
  %i.bdq = icmp eq i8 %i.bdp, %i.bdh
  %i.bdr = zext i1 %i.bdq to i32
  %i.bds = add nuw nsw i32 %.sroa.19.049.i34.i, %i.bdr
  %i.bdt = call i32 @llvm.smax.i32(i32 %i.bds, i32 %.sroa.10.050.i33.i) ; 2 uses
  %i.bdu = call i32 @llvm.smax.i32(i32 %.sroa.10.0..i35.i, i32 %i.bdt) ; 2 uses
  %i.bdv = icmp eq i8 %i.bdp, %i.bdk
  %i.bdw = zext i1 %i.bdv to i32
  %i.bdx = add nsw i32 %.sroa.10.050.i33.i, %i.bdw ; 2 uses
  %.not.i36.i = icmp sgt i32 %i.bdu, %i.bdx
  %i.bdy = add nsw i32 %i.bdu, -1
  %i.bdz = select i1 %.not.i36.i, i32 %i.bdy, i32 %i.bdx ; 2 uses
  %indvars.iv.next.i37.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %exitcond.not.i38.i = icmp eq i64 %indvars.iv.next.i37.i, %i.bbn
  br i1 %exitcond.not.i38.i, label %SWscore.exit39.i, label %.lr.ph.i30.i, !llvm.loop !110

SWscore.exit39.i:                                 ; preds = %.lr.ph.i30.i, %.thread.i522
  %i.bea = phi i64 [ %i.bct, %.thread.i522 ], [ %i.bda, %.lr.ph.i30.i ]
  %.sroa.10.0.lcssa.i27.i = phi i32 [ %i.bcz, %.thread.i522 ], [ %i.bdz, %.lr.ph.i30.i ]
  %i.beb = icmp ult i32 %.sroa.10.0.lcssa.i27.i, %i.bbm
  br i1 %i.beb, label %perfect_spl_p.exit.thread, label %bb.fx

bb.fx:                                            ; preds = %SWscore.exit39.i
end_hunk_0
