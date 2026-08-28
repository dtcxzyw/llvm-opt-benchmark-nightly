Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avx512vnni?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.omp_outlined:bb.a
  store i8 %i.atg, ptr %i.ath, align 1, !tbaa !40
  %i.ati = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.apt
  %i.atj = load i8, ptr %i.ati, align 1, !tbaa !40
  %i.atk = getelementptr inbounds nuw i8, ptr %.821132703, i64 31
  store i8 %i.atj, ptr %i.atk, align 1, !tbaa !40
  %i.atl = getelementptr inbounds nuw i8, ptr %.821132703, i64 32 ; 2 uses
  %indvars.iv.next3003 = add nuw nsw i64 %indvars.iv3002, 2 ; 3 uses
  %i.atm = or disjoint i64 %indvars.iv.next3003, 1 ; 2 uses
  %i.atn = load i32, ptr %13, align 4, !tbaa !9   ; 2 uses
  %i.ato = trunc nuw i64 %i.atm to i32
  %i.atp = icmp sgt i32 %i.atn, %i.ato
  br i1 %i.atp, label %.lr.ph2706, label %.preheader2600.loopexit, !llvm.loop !50

.lr.ph2711:                                       ; preds = %.lr.ph2711.preheader, %.lr.ph2711
  %indvars.iv3005 = phi i64 [ %i.aps, %.lr.ph2711.preheader ], [ %indvars.iv.next3006, %.lr.ph2711 ] ; 17 uses
  %.921142709 = phi ptr [ %.82113.lcssa, %.lr.ph2711.preheader ], [ %i.avl, %.lr.ph2711 ] ; 17 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv3005
  %i.atr = load i8, ptr %i.atq, align 1, !tbaa !40
  store i8 %i.atr, ptr %.921142709, align 1, !tbaa !40
  %i.ats = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv3005
  %i.att = load i8, ptr %i.ats, align 1, !tbaa !40
  %i.atu = getelementptr inbounds nuw i8, ptr %.921142709, i64 1
  store i8 %i.att, ptr %i.atu, align 1, !tbaa !40
  %i.atv = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv3005
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !40
  %i.atx = getelementptr inbounds nuw i8, ptr %.921142709, i64 2
  store i8 %i.atw, ptr %i.atx, align 1, !tbaa !40
  %i.aty = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv3005
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !40
  %i.aua = getelementptr inbounds nuw i8, ptr %.921142709, i64 3
  store i8 %i.atz, ptr %i.aua, align 1, !tbaa !40
  %i.aub = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv3005
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !40
  %i.aud = getelementptr inbounds nuw i8, ptr %.921142709, i64 4
  store i8 %i.auc, ptr %i.aud, align 1, !tbaa !40
  %i.aue = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv3005
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !40
  %i.aug = getelementptr inbounds nuw i8, ptr %.921142709, i64 5
  store i8 %i.auf, ptr %i.aug, align 1, !tbaa !40
  %i.auh = getelementptr inbounds nuw i8, ptr %i.hb, i64 %indvars.iv3005
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !40
  %i.auj = getelementptr inbounds nuw i8, ptr %.921142709, i64 6
  store i8 %i.aui, ptr %i.auj, align 1, !tbaa !40
  %i.auk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv3005
  %i.aul = load i8, ptr %i.auk, align 1, !tbaa !40
  %i.aum = getelementptr inbounds nuw i8, ptr %.921142709, i64 7
  store i8 %i.aul, ptr %i.aum, align 1, !tbaa !40
  %i.aun = getelementptr inbounds nuw i8, ptr %i.gn, i64 %indvars.iv3005
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !40
  %i.aup = getelementptr inbounds nuw i8, ptr %.921142709, i64 8
  store i8 %i.auo, ptr %i.aup, align 1, !tbaa !40
  %i.auq = getelementptr inbounds nuw i8, ptr %i.gv, i64 %indvars.iv3005
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !40
  %i.aus = getelementptr inbounds nuw i8, ptr %.921142709, i64 9
  store i8 %i.aur, ptr %i.aus, align 1, !tbaa !40
  %i.aut = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv3005
  %i.auu = load i8, ptr %i.aut, align 1, !tbaa !40
  %i.auv = getelementptr inbounds nuw i8, ptr %.921142709, i64 10
  store i8 %i.auu, ptr %i.auv, align 1, !tbaa !40
  %i.auw = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv3005
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !40
  %i.auy = getelementptr inbounds nuw i8, ptr %.921142709, i64 11
  store i8 %i.aux, ptr %i.auy, align 1, !tbaa !40
  %i.auz = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv3005
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !40
  %i.avb = getelementptr inbounds nuw i8, ptr %.921142709, i64 12
  store i8 %i.ava, ptr %i.avb, align 1, !tbaa !40
  %i.avc = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv3005
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !40
  %i.ave = getelementptr inbounds nuw i8, ptr %.921142709, i64 13
  store i8 %i.avd, ptr %i.ave, align 1, !tbaa !40
  %i.avf = getelementptr inbounds nuw i8, ptr %i.hf, i64 %indvars.iv3005
  %i.avg = load i8, ptr %i.avf, align 1, !tbaa !40
  %i.avh = getelementptr inbounds nuw i8, ptr %.921142709, i64 14
  store i8 %i.avg, ptr %i.avh, align 1, !tbaa !40
  %i.avi = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv3005
  %i.avj = load i8, ptr %i.avi, align 1, !tbaa !40
  %i.avk = getelementptr inbounds nuw i8, ptr %.921142709, i64 15
  store i8 %i.avj, ptr %i.avk, align 1, !tbaa !40
  %i.avl = getelementptr inbounds nuw i8, ptr %.921142709, i64 16
  %indvars.iv.next3006 = add nuw nsw i64 %indvars.iv3005, 1 ; 2 uses
  %i.avm = load i32, ptr %13, align 4, !tbaa !9
  %i.avn = trunc nuw i64 %indvars.iv.next3006 to i32
  %i.avo = icmp sgt i32 %i.avm, %i.avn
  br i1 %i.avo, label %.lr.ph2711, label %._crit_edge2712, !llvm.loop !51

._crit_edge2712:                                  ; preds = %.lr.ph2711, %.preheader2600
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv3008
  %i.avq = load <4 x float>, ptr %i.avp, align 1, !tbaa !40
  %i.avr = load i32, ptr %11, align 4, !tbaa !9   ; 3 uses
  %i.avs = sext i32 %i.avr to i64                 ; 2 uses
  %i.avt = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.avs
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.avt, i64 %indvars.iv3008
  %i.avv = load <4 x float>, ptr %i.avu, align 1, !tbaa !40
  %i.avw = shl nsw i32 %i.avr, 1
  %i.avx = sext i32 %i.avw to i64                 ; 2 uses
  %i.avy = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.avx
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %i.avy, i64 %indvars.iv3008
  %i.awa = load <4 x float>, ptr %i.avz, align 1, !tbaa !40
  %i.awb = mul nsw i32 %i.avr, 3
  %i.awc = sext i32 %i.awb to i64                 ; 2 uses
  %i.awd = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.awc
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.awd, i64 %indvars.iv3008
  %i.awf = load <4 x float>, ptr %i.awe, align 1, !tbaa !40
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv3008
  %i.awh = load <4 x float>, ptr %i.awg, align 1, !tbaa !40
  %i.awi = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.avs
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %i.awi, i64 %indvars.iv3008
  %i.awk = load <4 x float>, ptr %i.awj, align 1, !tbaa !40
  %i.awl = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.avx
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.awl, i64 %indvars.iv3008
  %i.awn = load <4 x float>, ptr %i.awm, align 1, !tbaa !40
  %i.awo = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.awc
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %indvars.iv3008
  %i.awq = load <4 x float>, ptr %i.awp, align 1, !tbaa !40
  %i.awr = shufflevector <4 x float> %i.avq, <4 x float> %i.avv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aws = shufflevector <4 x float> %i.awa, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awt = shufflevector <16 x float> %i.awr, <16 x float> %i.aws, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awu = shufflevector <4 x float> %i.awf, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awv = shufflevector <16 x float> %i.awt, <16 x float> %i.awu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.aww = shufflevector <4 x float> %i.awh, <4 x float> %i.awk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awx = shufflevector <4 x float> %i.awn, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awy = shufflevector <16 x float> %i.aww, <16 x float> %i.awx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awz = shufflevector <4 x float> %i.awq, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axa = shufflevector <16 x float> %i.awy, <16 x float> %i.awz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.axb = fdiv fast <16 x float> splat (float 1.000000e+00), %i.awv
  %i.axc = fdiv fast <16 x float> splat (float 1.000000e+00), %i.axa
  store <16 x float> %i.axb, ptr %i.hs, align 1, !tbaa !40
  %i.axd = getelementptr inbounds nuw i8, ptr %i.hs, i64 64
  store <16 x float> %i.axc, ptr %i.axd, align 1, !tbaa !40
  %indvars.iv.next3009 = add nuw nsw i64 %indvars.iv3008, 4 ; 3 uses
  %i.axe = or disjoint i64 %indvars.iv.next3009, 3
  %i.axf = load i32, ptr %11, align 4, !tbaa !9   ; 2 uses
  %i.axg = sext i32 %i.axf to i64
  %i.axh = icmp slt i64 %i.axe, %i.axg
  br i1 %i.axh, label %bb.c, label %.preheader2604.loopexit, !llvm.loop !52

.preheader2603.loopexit:                          ; preds = %._crit_edge2794
  %i.axi = trunc nuw nsw i64 %indvars.iv.next3044 to i32
  br label %.preheader2603

.preheader2603:                                   ; preds = %.preheader2603.loopexit, %.preheader2604
  %i.axj = phi i32 [ %i.dc, %.preheader2604 ], [ %i.bxa, %.preheader2603.loopexit ] ; 3 uses
  %.12079.lcssa = phi i32 [ %.02078.lcssa, %.preheader2604 ], [ %i.axi, %.preheader2603.loopexit ] ; 2 uses
  %.12076.lcssa = phi ptr [ %.02075.lcssa, %.preheader2604 ], [ %i.ayo, %.preheader2603.loopexit ]
  %i.axk = icmp slt i32 %.12079.lcssa, %i.axj
  br i1 %i.axk, label %.lr.ph2879, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph2879:                                       ; preds = %.preheader2603
  %i.axl = mul i64 %i.am, %i.ap                   ; 4 uses
  %i.axm = mul i64 %i.au, %i.ax                   ; 4 uses
  %i.axn = mul i64 %i.by, %i.cb
  %i.axo = mul i64 %i.cm, %i.cp
  %i.axp = zext nneg i32 %.12079.lcssa to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph2797, %._crit_edge2794
  %indvars.iv3043 = phi i64 [ %i.dj, %.lr.ph2797 ], [ %indvars.iv.next3044, %._crit_edge2794 ] ; 10 uses
  %indvars.iv3041 = phi i64 [ %i.dk, %.lr.ph2797 ], [ %indvars.iv.next3042, %._crit_edge2794 ] ; 9 uses
  %i.axq = phi i32 [ %i.dc, %.lr.ph2797 ], [ %i.bxa, %._crit_edge2794 ] ; 3 uses
  %.120762796 = phi ptr [ %.02075.lcssa, %.lr.ph2797 ], [ %i.ayo, %._crit_edge2794 ] ; 9 uses
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv3043
  %i.axs = load float, ptr %i.axr, align 4, !tbaa !53
  store float %i.axs, ptr %.120762796, align 4, !tbaa !53
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv3043
  %i.axu = load float, ptr %i.axt, align 4, !tbaa !53
  %i.axv = getelementptr inbounds nuw i8, ptr %.120762796, i64 4
  store float %i.axu, ptr %i.axv, align 4, !tbaa !53
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv3043
  %i.axx = load float, ptr %i.axw, align 4, !tbaa !53
  %i.axy = getelementptr inbounds nuw i8, ptr %.120762796, i64 8
  store float %i.axx, ptr %i.axy, align 4, !tbaa !53
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv3043
  %i.aya = load float, ptr %i.axz, align 4, !tbaa !53
  %i.ayb = getelementptr inbounds nuw i8, ptr %.120762796, i64 12
  store float %i.aya, ptr %i.ayb, align 4, !tbaa !53
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv3041
  %i.ayd = load float, ptr %i.ayc, align 4, !tbaa !53
  %i.aye = getelementptr inbounds nuw i8, ptr %.120762796, i64 16
  store float %i.ayd, ptr %i.aye, align 4, !tbaa !53
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv3041
  %i.ayg = load float, ptr %i.ayf, align 4, !tbaa !53
  %i.ayh = getelementptr inbounds nuw i8, ptr %.120762796, i64 20
  store float %i.ayg, ptr %i.ayh, align 4, !tbaa !53
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv3041
  %i.ayj = load float, ptr %i.ayi, align 4, !tbaa !53
  %i.ayk = getelementptr inbounds nuw i8, ptr %.120762796, i64 24
  store float %i.ayj, ptr %i.ayk, align 4, !tbaa !53
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv3041
  %i.aym = load float, ptr %i.ayl, align 4, !tbaa !53
  %i.ayn = getelementptr inbounds nuw i8, ptr %.120762796, i64 28
  store float %i.aym, ptr %i.ayn, align 4, !tbaa !53
  %i.ayo = getelementptr inbounds nuw i8, ptr %.120762796, i64 32 ; 2 uses
  %i.ayp = mul i64 %i.df, %indvars.iv3043
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ayp ; 9 uses
  %i.ayr = trunc nuw nsw i64 %indvars.iv3043 to i32 ; 8 uses
  %i.ays = add nsw i32 %i.axq, %i.ayr             ; 2 uses
  %i.ayt = sext i32 %i.ays to i64                 ; 2 uses
  %i.ayu = mul i64 %i.df, %i.ayt
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ayu ; 9 uses
  %i.ayw = shl nsw i32 %i.axq, 1
  %i.ayx = add nsw i32 %i.ayw, %i.ayr             ; 2 uses
  %i.ayy = sext i32 %i.ayx to i64                 ; 2 uses
  %i.ayz = mul i64 %i.df, %i.ayy
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ayz ; 9 uses
  %i.azb = mul nsw i32 %i.axq, 3
  %i.azc = add nsw i32 %i.azb, %i.ayr             ; 2 uses
  %i.azd = sext i32 %i.azc to i64                 ; 2 uses
  %i.aze = mul i64 %i.df, %i.azd
  %i.azf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aze ; 9 uses
  %i.azg = mul i64 %i.df, %indvars.iv3041
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.azg ; 9 uses
  %i.azi = add nsw i32 %i.ays, 1
  %i.azj = sext i32 %i.azi to i64                 ; 2 uses
  %i.azk = mul i64 %i.df, %i.azj
  %i.azl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.azk ; 9 uses
  %i.azm = or disjoint i32 %i.ayx, 1
  %i.azn = sext i32 %i.azm to i64                 ; 2 uses
  %i.azo = mul i64 %i.df, %i.azn
  %i.azp = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.azo ; 9 uses
  %i.azq = add nsw i32 %i.azc, 1
  %i.azr = sext i32 %i.azq to i64                 ; 2 uses
  %i.azs = mul i64 %i.df, %i.azr
  %i.azt = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.azs ; 9 uses
  %i.azu = mul i64 %i.dg, %indvars.iv3043
  %i.azv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.azu ; 9 uses
  %i.azw = mul i64 %i.dg, %i.ayt
  %i.azx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.azw ; 9 uses
  %i.azy = mul i64 %i.dg, %i.ayy
  %i.azz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.azy ; 9 uses
  %i.baa = mul i64 %i.dg, %i.azd
  %i.bab = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.baa ; 9 uses
  %i.bac = mul i64 %i.dg, %indvars.iv3041
  %i.bad = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bac ; 9 uses
  %i.bae = mul i64 %i.dg, %i.azj
  %i.baf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bae ; 9 uses
  %i.bag = mul i64 %i.dg, %i.azn
  %i.bah = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bag ; 9 uses
  %i.bai = mul i64 %i.dg, %i.azr
  %i.baj = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bai ; 9 uses
  %i.bak = lshr i32 %i.ayr, 2
  %i.bal = lshr exact i32 %i.ayr, 1
  %i.bam = and i32 %i.bal, 1
  %i.ban = add nuw nsw i32 %i.bam, %i.bak
  %i.bao = zext nneg i32 %i.ban to i64            ; 2 uses
  %i.bap = mul i64 %i.dh, %i.bao
  %i.baq = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bap ; 2 uses
  %i.bar = mul i64 %i.di, %i.bao
  %i.bas = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.bar ; 16 uses
  %i.bat = load i32, ptr %12, align 4, !tbaa !9   ; 2 uses
  %i.bau = icmp sgt i32 %i.bat, 15
  br i1 %i.bau, label %.lr.ph2721, label %._crit_edge2722

.lr.ph2721:                                       ; preds = %bb.d, %.lr.ph2721
  %indvars.iv3011 = phi i64 [ %indvars.iv.next3012, %.lr.ph2721 ], [ 0, %bb.d ] ; 9 uses
  %.020652718 = phi ptr [ %i.bce, %.lr.ph2721 ], [ %i.baq, %bb.d ] ; 10 uses
  %i.bav = phi <8 x i32> [ %i.bcd, %.lr.ph2721 ], [ zeroinitializer, %bb.d ]
  %i.baw = phi <8 x i32> [ %i.bcc, %.lr.ph2721 ], [ zeroinitializer, %bb.d ]
  %i.bax = phi <8 x i32> [ %i.bcb, %.lr.ph2721 ], [ zeroinitializer, %bb.d ]
  %i.bay = phi <8 x i32> [ %i.bca, %.lr.ph2721 ], [ zeroinitializer, %bb.d ]
  %i.baz = getelementptr inbounds nuw i8, ptr %i.ayq, i64 %indvars.iv3011
  %i.bba = load <2 x i64>, ptr %i.baz, align 1, !tbaa !40
  store <2 x i64> %i.bba, ptr %.020652718, align 1, !tbaa !40
  %i.bbb = getelementptr inbounds nuw i8, ptr %.020652718, i64 16
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.azh, i64 %indvars.iv3011
  %i.bbd = load <2 x i64>, ptr %i.bbc, align 1, !tbaa !40
  store <2 x i64> %i.bbd, ptr %i.bbb, align 1, !tbaa !40
  %i.bbe = getelementptr inbounds nuw i8, ptr %.020652718, i64 32 ; 2 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.ayv, i64 %indvars.iv3011
  %i.bbg = load <2 x i64>, ptr %i.bbf, align 1, !tbaa !40
  store <2 x i64> %i.bbg, ptr %i.bbe, align 1, !tbaa !40
  %i.bbh = getelementptr inbounds nuw i8, ptr %.020652718, i64 48
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv3011
  %i.bbj = load <2 x i64>, ptr %i.bbi, align 1, !tbaa !40
  store <2 x i64> %i.bbj, ptr %i.bbh, align 1, !tbaa !40
  %i.bbk = getelementptr inbounds nuw i8, ptr %.020652718, i64 64 ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.aza, i64 %indvars.iv3011
  %i.bbm = load <2 x i64>, ptr %i.bbl, align 1, !tbaa !40
  store <2 x i64> %i.bbm, ptr %i.bbk, align 1, !tbaa !40
  %i.bbn = getelementptr inbounds nuw i8, ptr %.020652718, i64 80
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.azp, i64 %indvars.iv3011
  %i.bbp = load <2 x i64>, ptr %i.bbo, align 1, !tbaa !40
  store <2 x i64> %i.bbp, ptr %i.bbn, align 1, !tbaa !40
  %i.bbq = getelementptr inbounds nuw i8, ptr %.020652718, i64 96 ; 2 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.azf, i64 %indvars.iv3011
  %i.bbs = load <2 x i64>, ptr %i.bbr, align 1, !tbaa !40
  store <2 x i64> %i.bbs, ptr %i.bbq, align 1, !tbaa !40
  %i.bbt = getelementptr inbounds nuw i8, ptr %.020652718, i64 112
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.azt, i64 %indvars.iv3011
  %i.bbv = load <2 x i64>, ptr %i.bbu, align 1, !tbaa !40
  store <2 x i64> %i.bbv, ptr %i.bbt, align 1, !tbaa !40
  %i.bbw = load <32 x i8>, ptr %.020652718, align 1, !tbaa !40
  %i.bbx = load <32 x i8>, ptr %i.bbe, align 1, !tbaa !40
  %i.bby = load <32 x i8>, ptr %i.bbk, align 1, !tbaa !40
  %i.bbz = load <32 x i8>, ptr %i.bbq, align 1, !tbaa !40
  %i.bca = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bay, <32 x i8> splat (i8 127), <32 x i8> %i.bbw) ; 2 uses
  %i.bcb = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bax, <32 x i8> splat (i8 127), <32 x i8> %i.bbx) ; 2 uses
  %i.bcc = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.baw, <32 x i8> splat (i8 127), <32 x i8> %i.bby) ; 2 uses
  %i.bcd = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bav, <32 x i8> splat (i8 127), <32 x i8> %i.bbz) ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %.020652718, i64 128 ; 2 uses
  %indvars.iv.next3012 = add nuw nsw i64 %indvars.iv3011, 16 ; 3 uses
  %i.bcf = or disjoint i64 %indvars.iv.next3012, 15
  %i.bcg = load i32, ptr %12, align 4, !tbaa !9   ; 2 uses
  %i.bch = sext i32 %i.bcg to i64
  %i.bci = icmp slt i64 %i.bcf, %i.bch
  br i1 %i.bci, label %.lr.ph2721, label %._crit_edge2722.loopexit, !llvm.loop !55

._crit_edge2722.loopexit:                         ; preds = %.lr.ph2721
  %i.bcj = trunc nuw nsw i64 %indvars.iv.next3012 to i32
  br label %._crit_edge2722

._crit_edge2722:                                  ; preds = %._crit_edge2722.loopexit, %bb.d
  %i.bck = phi i32 [ %i.bat, %bb.d ], [ %i.bcg, %._crit_edge2722.loopexit ] ; 2 uses
  %.lcssa2615 = phi <8 x i32> [ zeroinitializer, %bb.d ], [ %i.bca, %._crit_edge2722.loopexit ]
  %.lcssa2614 = phi <8 x i32> [ zeroinitializer, %bb.d ], [ %i.bcb, %._crit_edge2722.loopexit ]
  %.lcssa2613 = phi <8 x i32> [ zeroinitializer, %bb.d ], [ %i.bcc, %._crit_edge2722.loopexit ]
  %.lcssa2612 = phi <8 x i32> [ zeroinitializer, %bb.d ], [ %i.bcd, %._crit_edge2722.loopexit ]
  %.02065.lcssa = phi ptr [ %i.baq, %bb.d ], [ %i.bce, %._crit_edge2722.loopexit ] ; 2 uses
  %.02055.lcssa = phi i32 [ 0, %bb.d ], [ %i.bcj, %._crit_edge2722.loopexit ] ; 3 uses
  %i.bcl = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa2615, <8 x i32> %.lcssa2614)
  %i.bcm = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa2613, <8 x i32> %.lcssa2612)
  %i.bcn = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %i.bcl, <8 x i32> %i.bcm)
  %i.bco = or disjoint i32 %.02055.lcssa, 7
  %i.bcp = icmp slt i32 %i.bco, %i.bck
  br i1 %i.bcp, label %.lr.ph2732.preheader, label %._crit_edge2733

.lr.ph2732.preheader:                             ; preds = %._crit_edge2722
  %i.bcq = zext nneg i32 %.02055.lcssa to i64
  br label %.lr.ph2732

.lr.ph2732:                                       ; preds = %.lr.ph2732.preheader, %.lr.ph2732
  %indvars.iv3014 = phi i64 [ %i.bcq, %.lr.ph2732.preheader ], [ %indvars.iv.next3015, %.lr.ph2732 ] ; 9 uses
  %.120662729 = phi ptr [ %.02065.lcssa, %.lr.ph2732.preheader ], [ %i.bdu, %.lr.ph2732 ] ; 10 uses
  %i.bcr = phi <8 x i32> [ zeroinitializer, %.lr.ph2732.preheader ], [ %i.bdt, %.lr.ph2732 ]
  %i.bcs = phi <8 x i32> [ zeroinitializer, %.lr.ph2732.preheader ], [ %i.bds, %.lr.ph2732 ]
  %i.bct = getelementptr inbounds nuw i8, ptr %i.ayq, i64 %indvars.iv3014
  %i.bcu = load i64, ptr %i.bct, align 1, !tbaa !40
  store i64 %i.bcu, ptr %.120662729, align 1, !tbaa !40
  %i.bcv = getelementptr inbounds nuw i8, ptr %.120662729, i64 8
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 %indvars.iv3014
  %i.bcx = load i64, ptr %i.bcw, align 1, !tbaa !40
  store i64 %i.bcx, ptr %i.bcv, align 1, !tbaa !40
  %i.bcy = getelementptr inbounds nuw i8, ptr %.120662729, i64 16
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.azh, i64 %indvars.iv3014
  %i.bda = load i64, ptr %i.bcz, align 1, !tbaa !40
  store i64 %i.bda, ptr %i.bcy, align 1, !tbaa !40
  %i.bdb = getelementptr inbounds nuw i8, ptr %.120662729, i64 24
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv3014
  %i.bdd = load i64, ptr %i.bdc, align 1, !tbaa !40
  store i64 %i.bdd, ptr %i.bdb, align 1, !tbaa !40
  %i.bde = getelementptr inbounds nuw i8, ptr %.120662729, i64 32 ; 2 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.aza, i64 %indvars.iv3014
  %i.bdg = load i64, ptr %i.bdf, align 1, !tbaa !40
  store i64 %i.bdg, ptr %i.bde, align 1, !tbaa !40
  %i.bdh = getelementptr inbounds nuw i8, ptr %.120662729, i64 40
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.azf, i64 %indvars.iv3014
  %i.bdj = load i64, ptr %i.bdi, align 1, !tbaa !40
  store i64 %i.bdj, ptr %i.bdh, align 1, !tbaa !40
  %i.bdk = getelementptr inbounds nuw i8, ptr %.120662729, i64 48
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.azp, i64 %indvars.iv3014
  %i.bdm = load i64, ptr %i.bdl, align 1, !tbaa !40
  store i64 %i.bdm, ptr %i.bdk, align 1, !tbaa !40
  %i.bdn = getelementptr inbounds nuw i8, ptr %.120662729, i64 56
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.azt, i64 %indvars.iv3014
  %i.bdp = load i64, ptr %i.bdo, align 1, !tbaa !40
  store i64 %i.bdp, ptr %i.bdn, align 1, !tbaa !40
  %i.bdq = load <32 x i8>, ptr %.120662729, align 1, !tbaa !40
  %i.bdr = load <32 x i8>, ptr %i.bde, align 1, !tbaa !40
  %i.bds = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bcs, <32 x i8> splat (i8 127), <32 x i8> %i.bdq) ; 2 uses
  %i.bdt = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bcr, <32 x i8> splat (i8 127), <32 x i8> %i.bdr) ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %.120662729, i64 64 ; 2 uses
  %indvars.iv.next3015 = add nuw nsw i64 %indvars.iv3014, 8 ; 3 uses
  %i.bdv = load i32, ptr %12, align 4, !tbaa !9   ; 2 uses
  %i.bdw = trunc i64 %indvars.iv.next3015 to i32
  %i.bdx = or i32 %i.bdw, 7
  %i.bdy = icmp slt i32 %i.bdx, %i.bdv
  br i1 %i.bdy, label %.lr.ph2732, label %._crit_edge2733.loopexit, !llvm.loop !56

._crit_edge2733.loopexit:                         ; preds = %.lr.ph2732
  %i.bdz = trunc nuw nsw i64 %indvars.iv.next3015 to i32
  br label %._crit_edge2733

._crit_edge2733:                                  ; preds = %._crit_edge2733.loopexit, %._crit_edge2722
  %i.bea = phi i32 [ %i.bck, %._crit_edge2722 ], [ %i.bdv, %._crit_edge2733.loopexit ]
  %.lcssa2617 = phi <8 x i32> [ zeroinitializer, %._crit_edge2722 ], [ %i.bds, %._crit_edge2733.loopexit ]
  %.lcssa2616 = phi <8 x i32> [ zeroinitializer, %._crit_edge2722 ], [ %i.bdt, %._crit_edge2733.loopexit ]
  %.12066.lcssa = phi ptr [ %.02065.lcssa, %._crit_edge2722 ], [ %i.bdu, %._crit_edge2733.loopexit ] ; 2 uses
  %.12056.lcssa = phi i32 [ %.02055.lcssa, %._crit_edge2722 ], [ %i.bdz, %._crit_edge2733.loopexit ] ; 3 uses
  %i.beb = call <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32> %.lcssa2617, <8 x i32> %.lcssa2616)
  %i.bec = add <8 x i32> %i.beb, %i.bcn           ; 2 uses
  %i.bed = or disjoint i32 %.12056.lcssa, 3       ; 2 uses
  %i.bee = icmp slt i32 %i.bed, %i.bea
  br i1 %i.bee, label %.lr.ph2742.preheader, label %._crit_edge2743

.lr.ph2742.preheader:                             ; preds = %._crit_edge2733
  %i.bef = zext nneg i32 %.12056.lcssa to i64
  %i.beg = zext nneg i32 %i.bed to i64
  br label %.lr.ph2742

.lr.ph2742:                                       ; preds = %.lr.ph2742.preheader, %.lr.ph2742
  %indvars.iv3017 = phi i64 [ %i.bef, %.lr.ph2742.preheader ], [ %indvars.iv.next3018, %.lr.ph2742 ] ; 11 uses
  %i.beh = phi i64 [ %i.beg, %.lr.ph2742.preheader ], [ %i.bie, %.lr.ph2742 ] ; 8 uses
  %.220672739 = phi ptr [ %.12066.lcssa, %.lr.ph2742.preheader ], [ %i.bid, %.lr.ph2742 ] ; 34 uses
  %.02593.in2738 = phi <8 x i32> [ %i.bec, %.lr.ph2742.preheader ], [ %i.bic, %.lr.ph2742 ]
  %i.bei = getelementptr inbounds nuw i8, ptr %i.ayq, i64 %indvars.iv3017
  %i.bej = load i8, ptr %i.bei, align 1, !tbaa !40
end_hunk_0
