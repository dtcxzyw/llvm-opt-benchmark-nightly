Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aaccoder?download=true
inline.NumInlined: 68
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 46
begin_hunk_0_@search_for_quantizers_twoloop:bb.a
  %i.awi = icmp slt i32 %.1114072260.us, 0
  %spec.select1755.us = select i1 %i.awi, i32 %i.awh, i32 %.1114072260.us ; 2 uses
  %i.awj = add nsw i32 %spec.select1755.us, -60   ; 2 uses
  %i.awk = add nsw i32 %spec.select1755.us, 60
  %i.awl = icmp slt i32 %i.awh, %i.awj
  %..i.us = tail call i32 @llvm.smin.i32(i32 %i.awh, i32 %i.awk)
  %.0.i.us = select i1 %i.awl, i32 %i.awj, i32 %..i.us ; 5 uses
  store i32 %.0.i.us, ptr %i.awg, align 4, !tbaa !82
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.awd
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !80
  %i.awo = sub i32 304, %.0.i.us
  %i.awp = sext i32 %i.awo to i64
  %i.awq = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.awp
  %i.awr = load float, ptr %i.awq, align 4, !tbaa !80
  %i.aws = tail call nsz float @llvm.fmuladd.f32(float %i.awn, float %i.awr, float 4.054000e-01)
  %i.awt = fptosi float %i.aws to i32             ; 2 uses
  %i.awu = icmp ugt i32 %i.awt, 13
  br i1 %i.awu, label %find_min_book.exit1881.us, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.awv = zext nneg i32 %i.awt to i64
  %i.aww = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.awv
  %i.awx = load i8, ptr %i.aww, align 1, !tbaa !73
  %i.awy = zext i8 %i.awx to i32
  br label %find_min_book.exit1881.us

find_min_book.exit1881.us:                        ; preds = %bb.dg, %bb.df
  %.0.i1880.us = phi i32 [ %i.awy, %bb.dg ], [ 11, %bb.df ]
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %i.awd
  store i32 %.0.i1880.us, ptr %i.awz, align 4, !tbaa !82
  %.not1659.us = icmp eq i32 %.914422259.us, 0
  br i1 %.not1659.us, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %find_min_book.exit1881.us
  %.not1660.us = icmp ne i32 %i.awh, %.0.i.us
  %spec.select1756.us = zext i1 %.not1660.us to i32
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %find_min_book.exit1881.us, %bb.de
  %.111444.us = phi i32 [ %.914422259.us, %bb.de ], [ 1, %find_min_book.exit1881.us ], [ %spec.select1756.us, %bb.dh ] ; 3 uses
  %.131409.us = phi i32 [ %.1114072260.us, %bb.de ], [ %.0.i.us, %find_min_book.exit1881.us ], [ %.0.i.us, %bb.dh ] ; 2 uses
  %indvars.iv.next2442 = add nuw nsw i64 %indvars.iv2441, 1 ; 2 uses
  %exitcond2445.not = icmp eq i64 %indvars.iv.next2442, %wide.trip.count2444
  br i1 %exitcond2445.not, label %._crit_edge2262.us, label %bb.de, !llvm.loop !143

._crit_edge2262.us:                               ; preds = %bb.di
  %i.axa = zext nneg i32 %.122267.us to i64
  %i.axb = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.axa
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !73
  %i.axd = zext i8 %i.axc to i32
  %i.axe = add nuw nsw i32 %.122267.us, %i.axd    ; 2 uses
  %i.axf = icmp slt i32 %i.axe, %i.bgp
  br i1 %i.axf, label %.preheader1976.us, label %._crit_edge2268, !llvm.loop !144

bb.dj:                                            ; preds = %.lr.ph2255, %._crit_edge2246
  %i.axg = phi i32 [ %i.avl, %.lr.ph2255 ], [ %i.bgp, %._crit_edge2246 ]
  %i.axh = phi i32 [ %.pre2474, %.lr.ph2255 ], [ %i.bgq, %._crit_edge2246 ] ; 2 uses
  %i.axi = phi i32 [ %.pre2474, %.lr.ph2255 ], [ %i.bgr, %._crit_edge2246 ] ; 2 uses
  %.112253 = phi i32 [ 0, %.lr.ph2255 ], [ %i.bgv, %._crit_edge2246 ] ; 5 uses
  %.614022252 = phi i32 [ -1, %.lr.ph2255 ], [ %.71403.lcssa, %._crit_edge2246 ] ; 2 uses
  %.414372250 = phi i32 [ %.014332202.lcssa, %.lr.ph2255 ], [ %.51438.lcssa, %._crit_edge2246 ] ; 2 uses
  %i.axj = icmp sgt i32 %i.axi, 0
  br i1 %i.axj, label %.lr.ph2245, label %.._crit_edge2246_crit_edge

.._crit_edge2246_crit_edge:                       ; preds = %bb.dj
  %.pre2501 = zext nneg i32 %.112253 to i64
  br label %._crit_edge2246

.lr.ph2245:                                       ; preds = %bb.dj
  %i.axk = shl nuw nsw i32 %.112253, 7
  %i.axl = shl nuw nsw i32 %.112253, 4
  %i.axm = zext nneg i32 %.112253 to i64          ; 4 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.axm ; 4 uses
  %i.axo = zext nneg i32 %i.axl to i64
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph2245, %.thread2675
  %i.axp = phi i32 [ %i.axh, %.lr.ph2245 ], [ %i.bgh, %.thread2675 ] ; 2 uses
  %indvars.iv2438 = phi i64 [ 0, %.lr.ph2245 ], [ %indvars.iv.next2439, %.thread2675 ] ; 8 uses
  %.92243 = phi i32 [ %i.axk, %.lr.ph2245 ], [ %i.bgm, %.thread2675 ] ; 2 uses
  %.714032242 = phi i32 [ %.614022252, %.lr.ph2245 ], [ %.91405, %.thread2675 ] ; 4 uses
  %.514382240 = phi i32 [ %.414372250, %.lr.ph2245 ], [ %.71440, %.thread2675 ] ; 3 uses
  %i.axq = add nuw nsw i64 %indvars.iv2438, %i.axo ; 19 uses
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %i.axq ; 8 uses
  %i.axs = load i32, ptr %i.axr, align 4, !tbaa !82 ; 10 uses
  %i.axt = icmp slt i32 %.714032242, 0
  %i.axu = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.axq
  %i.axv = load i8, ptr %i.axu, align 1, !tbaa !73
  %.not1661 = icmp eq i8 %i.axv, 0                ; 2 uses
  br i1 %i.axt, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  br i1 %.not1661, label %.thread2671, label %.thread2675

.thread2671:                                      ; preds = %bb.dl
  %i.axw = load i32, ptr %i.xi, align 4, !tbaa !82
  br label %find_min_book.exit1863

bb.dm:                                            ; preds = %bb.dk
  br i1 %.not1661, label %find_min_book.exit1863, label %.thread2675

find_min_book.exit1863:                           ; preds = %.thread2671, %bb.dm
  %.814042674 = phi i32 [ %i.axw, %.thread2671 ], [ %.714032242, %bb.dm ] ; 2 uses
  %i.axx = zext nneg i32 %.92243 to i64           ; 2 uses
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.axx ; 2 uses
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.axx ; 2 uses
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.axq
  %i.ayb = load float, ptr %i.aya, align 4, !tbaa !80 ; 4 uses
  %i.ayc = sub i32 304, %i.axs
  %i.ayd = sext i32 %i.ayc to i64
  %i.aye = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.ayd
  %i.ayf = load float, ptr %i.aye, align 4, !tbaa !80
  %i.ayg = tail call nsz float @llvm.fmuladd.f32(float %i.ayb, float %i.ayf, float 4.054000e-01)
  %i.ayh = fptosi float %i.ayg to i32
  %i.ayi = icmp eq i32 %i.ayh, 0
  %i.ayj = tail call i32 @llvm.smax.i32(i32 %.814042674, i32 60)
  %i.ayk = add nsw i32 %i.ayj, -60                ; 5 uses
  %i.ayl = tail call i32 @llvm.smin.i32(i32 %.814042674, i32 159)
  %i.aym = add nsw i32 %i.ayl, 60                 ; 3 uses
  br i1 %i.ayi, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %find_min_book.exit1863
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.axq
  %i.ayo = load float, ptr %i.ayn, align 4, !tbaa !80
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axq
  %i.ayq = load float, ptr %i.ayp, align 4, !tbaa !80
  %i.ayr = fcmp nsz ogt float %i.ayo, %i.ayq
  br i1 %i.ayr, label %bb.do, label %bb.ee

bb.do:                                            ; preds = %bb.dn, %find_min_book.exit1863
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.axq
  %i.ayt = load i32, ptr %i.ays, align 4, !tbaa !82
  %.1746 = tail call i32 @llvm.smax.i32(i32 %i.ayk, i32 %i.ayt)
  %i.ayu = icmp sgt i32 %i.axs, %.1746
  br i1 %i.ayu, label %.preheader1971, label %bb.ee

.preheader1971:                                   ; preds = %bb.do
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.axq ; 3 uses
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.axq
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.axq ; 4 uses
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.axq ; 3 uses
  %.not1667 = icmp eq i64 %indvars.iv2438, 0
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.axq
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axq
  %i.azb = insertelement <2 x float> poison, float %i.ayb, i64 0
  %i.azc = shufflevector <2 x float> %i.azb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %find_min_book.exit1865

find_min_book.exit1865:                           ; preds = %.preheader1971, %.backedge
  %.5134022362843 = phi i32 [ 0, %.preheader1971 ], [ %.513402236.be, %.backedge ] ; 3 uses
  %i.azd = phi i32 [ %i.axs, %.preheader1971 ], [ %.pre-phi2494, %.backedge ] ; 5 uses
  %i.aze = add nsw i32 %i.azd, -1                 ; 2 uses
  %i.azf = sub nsw i32 304, %i.azd
  %i.azg = sext i32 %i.azf to i64
  %i.azh = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.azg
  %i.azi = load <2 x float>, ptr %i.azh, align 4, !tbaa !80
  %i.azj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azc, <2 x float> %i.azi, <2 x float> splat (float 4.054000e-01)) ; 2 uses
  %i.azk = extractelement <2 x float> %i.azj, i64 1
  %i.azl = fptosi float %i.azk to i32
  %i.azm = icmp eq i32 %i.azl, 0
  %i.azn = extractelement <2 x float> %i.azj, i64 0
  %i.azo = fptosi float %i.azn to i32             ; 3 uses
  %i.azp = icmp ugt i32 %i.azo, 13
  br i1 %i.azp, label %find_min_book.exit1867.thread, label %find_min_book.exit1867

find_min_book.exit1867:                           ; preds = %find_min_book.exit1865
  %i.azq = zext nneg i32 %i.azo to i64
  %i.azr = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.azq
  %i.azs = load i8, ptr %i.azr, align 1, !tbaa !73
  %i.azt = zext i8 %i.azs to i32
  %.not1665 = icmp eq i32 %i.azo, 0
  br i1 %.not1665, label %bb.dp, label %find_min_book.exit1867.thread

bb.dp:                                            ; preds = %find_min_book.exit1867
  %i.azu = load i32, ptr %i.ayx, align 4, !tbaa !82
  %.1747 = tail call i32 @llvm.smin.i32(i32 %i.aze, i32 %i.azu)
  store i32 %.1747, ptr %i.ayx, align 4, !tbaa !82
  br label %bb.dr

find_min_book.exit1867.thread:                    ; preds = %find_min_book.exit1865, %find_min_book.exit1867
  %.0.i18661943 = phi i32 [ %i.azt, %find_min_book.exit1867 ], [ 11, %find_min_book.exit1865 ] ; 2 uses
  %.not1666 = icmp samesign ult i32 %.5134022362843, %spec.select2279
  br i1 %.not1666, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %find_min_book.exit1867.thread
  %i.azv = load float, ptr %i.ayv, align 4, !tbaa !80
  %i.azw = load float, ptr %i.ayy, align 4, !tbaa !80
  %i.azx = fcmp nsz olt float %i.azv, %i.azw
  br i1 %i.azx, label %.critedge3, label %bb.dr

bb.dr:                                            ; preds = %find_min_book.exit1867.thread, %bb.dq, %bb.dp
  %.0.i18661942 = phi i32 [ %.0.i18661943, %find_min_book.exit1867.thread ], [ %.0.i18661943, %bb.dq ], [ 0, %bb.dp ] ; 4 uses
  br i1 %.not1667, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  %i.azy = load i32, ptr %i.cg, align 4, !tbaa !69
  %i.azz = icmp sgt i32 %i.azy, 1
  br i1 %i.azz, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.baa = load float, ptr %i.ayv, align 4, !tbaa !80
  %i.bab = load float, ptr %i.ayy, align 4, !tbaa !80
  %i.bac = fcmp nsz ult float %i.baa, %i.bab
  br i1 %i.bac, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bad = load i32, ptr %i.ayx, align 4, !tbaa !82
  %.1748 = tail call i32 @llvm.smin.i32(i32 %i.azd, i32 %i.bad)
  store i32 %.1748, ptr %i.ayx, align 4, !tbaa !82
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr
  %i.bae = load i8, ptr %i.axn, align 1, !tbaa !73 ; 2 uses
  %.not2294 = icmp eq i8 %i.bae, 0
  br i1 %.not2294, label %._crit_edge2232, label %.lr.ph2231

.lr.ph2231:                                       ; preds = %bb.dv
  %i.baf = zext nneg i32 %.0.i18661942 to i64
  %i.bag = getelementptr inbounds nuw [8 x i8], ptr @quantize_and_encode_band_cost_arr, i64 %i.baf
  %i.bah = trunc nuw i32 %.0.i18661942 to i8
  %.pre2481 = load i16, ptr %i.xm, align 16, !tbaa !85
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph2231, %quantize_band_cost_cached.exit1871
  %i.bai = phi i8 [ %i.bae, %.lr.ph2231 ], [ %i.bbm, %quantize_band_cost_cached.exit1871 ]
  %i.baj = phi i16 [ %.pre2481, %.lr.ph2231 ], [ %i.bbo, %quantize_band_cost_cached.exit1871 ] ; 2 uses
  %indvars.iv2435 = phi i64 [ 0, %.lr.ph2231 ], [ %indvars.iv.next2436, %quantize_band_cost_cached.exit1871 ] ; 3 uses
  %.013142229 = phi float [ 0.000000e+00, %.lr.ph2231 ], [ %i.bbv, %quantize_band_cost_cached.exit1871 ]
  %.013152228 = phi float [ 0.000000e+00, %.lr.ph2231 ], [ %i.bbt, %quantize_band_cost_cached.exit1871 ]
  %.013162227 = phi i32 [ 0, %.lr.ph2231 ], [ %i.bbu, %quantize_band_cost_cached.exit1871 ]
  %i.bak = add nuw nsw i64 %indvars.iv2435, %i.axm
  %i.bal = shl nuw nsw i64 %indvars.iv2435, 7     ; 2 uses
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %i.bal
  %i.ban = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %i.bal
  %i.bao = load ptr, ptr %i.xk, align 16, !tbaa !72
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 %indvars.iv2438
  %i.baq = load i8, ptr %i.bap, align 1, !tbaa !73
  %i.bar = zext i8 %i.baq to i32
  %i.bas = load i32, ptr %i.axr, align 4, !tbaa !82
  %i.bat = add nsw i32 %i.bas, -1                 ; 2 uses
  %i.bau = sext i32 %i.bat to i64
  %i.bav = getelementptr inbounds [2048 x i8], ptr %i.xl, i64 %i.bau
  %.idx2627 = shl nuw nsw i64 %i.bak, 8
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 %.idx2627
  %i.bax = getelementptr inbounds nuw [16 x i8], ptr %i.baw, i64 %indvars.iv2438 ; 11 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 14 ; 2 uses
  %i.baz = load i16, ptr %i.bay, align 2, !tbaa !87
  %.not.i1868 = icmp eq i16 %i.baz, %i.baj
  br i1 %.not.i1868, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bax, i64 12
  %i.bbb = load i8, ptr %i.bba, align 4, !tbaa !88
  %i.bbc = sext i8 %i.bbb to i32
  %.not34.i1869 = icmp eq i32 %.0.i18661942, %i.bbc
  br i1 %.not34.i1869, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bax, i64 13
  %i.bbe = load i8, ptr %i.bbd, align 1, !tbaa !89
  %.not35.i1870 = icmp eq i8 %i.bbe, 0
  br i1 %.not35.i1870, label %.quantize_band_cost_cached.exit1871_crit_edge, label %bb.dz

.quantize_band_cost_cached.exit1871_crit_edge:    ; preds = %bb.dy
  %.pre2482 = load float, ptr %i.bax, align 4, !tbaa !90
  br label %quantize_band_cost_cached.exit1871

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bax, i64 8
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bax, i64 4
  %i.bbh = load ptr, ptr %i.bag, align 8, !tbaa !19
  %i.bbi = tail call nsz float %i.bbh(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.bam, ptr noundef null, ptr noundef nonnull %i.ban, i32 noundef range(i32 0, 256) %i.bar, i32 noundef %i.bat, i32 noundef range(i32 0, 256) %.0.i18661942, float noundef 1.000000e+00, float noundef +inf, ptr noundef nonnull %i.bbf, ptr noundef nonnull %i.bbg) #13, !inline_history !2 ; 2 uses
  store float %i.bbi, ptr %i.bax, align 4, !tbaa !90
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bax, i64 12
  store i8 %i.bah, ptr %i.bbj, align 4, !tbaa !88
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bax, i64 13
  store i8 0, ptr %i.bbk, align 1, !tbaa !89
  %i.bbl = load i16, ptr %i.xm, align 16, !tbaa !85 ; 2 uses
  store i16 %i.bbl, ptr %i.bay, align 2, !tbaa !87
  %.pre2483 = load i8, ptr %i.axn, align 1, !tbaa !73
  br label %quantize_band_cost_cached.exit1871

quantize_band_cost_cached.exit1871:               ; preds = %.quantize_band_cost_cached.exit1871_crit_edge, %bb.dz
  %i.bbm = phi i8 [ %i.bai, %.quantize_band_cost_cached.exit1871_crit_edge ], [ %.pre2483, %bb.dz ] ; 2 uses
  %i.bbn = phi float [ %.pre2482, %.quantize_band_cost_cached.exit1871_crit_edge ], [ %i.bbi, %bb.dz ]
  %i.bbo = phi i16 [ %i.baj, %.quantize_band_cost_cached.exit1871_crit_edge ], [ %i.bbl, %bb.dz ]
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bax, i64 8
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !91
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bax, i64 4
  %i.bbs = load float, ptr %i.bbr, align 4, !tbaa !161
  %i.bbt = fadd nsz float %.013152228, %i.bbn     ; 2 uses
  %i.bbu = add nsw i32 %i.bbq, %.013162227        ; 2 uses
  %i.bbv = fadd nsz float %.013142229, %i.bbs     ; 2 uses
  %indvars.iv.next2436 = add nuw nsw i64 %indvars.iv2435, 1 ; 2 uses
  %i.bbw = zext i8 %i.bbm to i64
  %i.bbx = icmp samesign ult i64 %indvars.iv.next2436, %i.bbw
  br i1 %i.bbx, label %bb.dw, label %._crit_edge2232.loopexit, !llvm.loop !145

._crit_edge2232.loopexit:                         ; preds = %quantize_band_cost_cached.exit1871
  %.pre2484 = load i32, ptr %i.axr, align 4, !tbaa !82 ; 2 uses
  %.pre2493 = add nsw i32 %.pre2484, -1
  %i.bby = sitofp nsz i32 %i.bbu to float
  %i.bbz = fsub nsz float %i.bbt, %i.bby
  br label %._crit_edge2232

._crit_edge2232:                                  ; preds = %._crit_edge2232.loopexit, %bb.dv
  %.pre-phi2494 = phi i32 [ %.pre2493, %._crit_edge2232.loopexit ], [ %i.aze, %bb.dv ] ; 7 uses
  %i.bca = phi i32 [ %.pre2484, %._crit_edge2232.loopexit ], [ %i.azd, %bb.dv ]
  %.01314.lcssa = phi float [ %i.bbv, %._crit_edge2232.loopexit ], [ 0.000000e+00, %bb.dv ] ; 2 uses
  %i.bcb = phi float [ %i.bbz, %._crit_edge2232.loopexit ], [ 0.000000e+00, %bb.dv ] ; 2 uses
  store i32 %.pre-phi2494, ptr %i.axr, align 4, !tbaa !82
  store float %i.bcb, ptr %i.ayv, align 4, !tbaa !80
  store float %.01314.lcssa, ptr %i.ayz, align 4, !tbaa !80
  br i1 %i.azm, label %bb.ed, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge2232
  %.not1963 = icmp sgt i32 %i.bca, %i.ayk
  br i1 %.not1963, label %bb.eb, label %.critedge3

bb.eb:                                            ; preds = %bb.ea
  %i.bcc = load float, ptr %i.aza, align 4, !tbaa !80
  %i.bcd = fmul nsz float %i.avx, %i.bcc          ; 2 uses
  %i.bce = load float, ptr %i.ayy, align 4, !tbaa !80 ; 3 uses
  %i.bcf = fcmp nsz ogt float %i.bcd, %i.bce
  %.1749 = select nsz i1 %i.bcf, float %i.bce, float %i.bcd
  %i.bcg = fcmp nsz olt float %i.bcb, %.1749
  br i1 %i.bcg, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.bch = load float, ptr %i.ayw, align 4, !tbaa !80
  %i.bci = fsub nsz float %.01314.lcssa, %i.bch
  %i.bcj = tail call nsz float @llvm.fabs.f32(float %i.bci)
  %i.bck = fcmp nsz uge float %i.bcj, %i.bce
  %i.bcl = add nuw nsw i32 %.5134022362843, 1     ; 2 uses
  %i.bcm = icmp samesign ult i32 %i.bcl, %i.avv
  %or.cond2284 = select i1 %i.bck, i1 %i.bcm, i1 false
  br i1 %or.cond2284, label %.backedge, label %.critedge3

bb.ed:                                            ; preds = %bb.eb, %._crit_edge2232
  %.old = add nuw nsw i32 %.5134022362843, 1      ; 2 uses
  %.old2283 = icmp samesign ult i32 %.old, %i.avv
  br i1 %.old2283, label %.backedge, label %.critedge3

.backedge:                                        ; preds = %bb.ed, %bb.ec
  %.513402236.be = phi i32 [ %.old, %bb.ed ], [ %i.bcl, %bb.ec ]
  %i.bcn = icmp sgt i32 %.pre-phi2494, %i.ayk
  br i1 %i.bcn, label %find_min_book.exit1865, label %.critedge3, !llvm.loop !146

bb.ee:                                            ; preds = %bb.do, %bb.dn
  br i1 %i.avu, label %bb.ef, label %.critedge3

bb.ef:                                            ; preds = %bb.ee
  %i.bco = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.axq ; 2 uses
  %i.bcp = load i32, ptr %i.bco, align 4, !tbaa !82 ; 2 uses
  %.1750 = tail call i32 @llvm.smin.i32(i32 %i.aym, i32 %i.bcp)
  %i.bcq = icmp slt i32 %i.axs, %.1750
  br i1 %i.bcq, label %bb.eg, label %.critedge3

bb.eg:                                            ; preds = %bb.ef
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.axq ; 2 uses
  %i.bcs = load float, ptr %i.bcr, align 4, !tbaa !80
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.axq
  %i.bcu = load float, ptr %i.bct, align 4, !tbaa !80 ; 3 uses
  %i.bcv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axq
  %i.bcw = load float, ptr %i.bcv, align 4, !tbaa !80 ; 2 uses
  %i.bcx = fcmp nsz ogt float %i.bcu, %i.bcw
  %.1751 = select nsz i1 %i.bcx, float %i.bcw, float %i.bcu ; 2 uses
  %i.bcy = fcmp nsz olt float %i.bcs, %.1751
  br i1 %i.bcy, label %bb.eh, label %.critedge3

bb.eh:                                            ; preds = %bb.eg
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.axq ; 2 uses
  %i.bda = load float, ptr %i.bcz, align 4, !tbaa !80
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.axq
  %i.bdc = load float, ptr %i.bdb, align 4, !tbaa !80
  %i.bdd = fsub nsz float %i.bda, %i.bdc
  %i.bde = tail call nsz float @llvm.fabs.f32(float %i.bdd)
  %i.bdf = fcmp nsz olt float %i.bde, %i.bcu
  br i1 %i.bdf, label %.preheader1972, label %.critedge3

.preheader1972:                                   ; preds = %bb.eh, %bb.eo
  %i.bdg = phi i32 [ %i.bfr, %bb.eo ], [ %i.axs, %bb.eh ] ; 6 uses
  %.613412225 = phi i32 [ %i.bfs, %bb.eo ], [ 0, %bb.eh ]
  %i.bdh = icmp slt i32 %i.bdg, %i.aym
  br i1 %i.bdh, label %bb.ei, label %.critedge3

bb.ei:                                            ; preds = %.preheader1972
  %i.bdi = sub i32 303, %i.bdg
  %i.bdj = sext i32 %i.bdi to i64
  %i.bdk = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.bdj
  %i.bdl = load float, ptr %i.bdk, align 4, !tbaa !80
  %i.bdm = tail call nsz float @llvm.fmuladd.f32(float %i.ayb, float %i.bdl, float 4.054000e-01)
  %i.bdn = fptosi float %i.bdm to i32             ; 3 uses
  %i.bdo = icmp ugt i32 %i.bdn, 13
  br i1 %i.bdo, label %.preheader1968, label %find_min_book.exit1873

find_min_book.exit1873:                           ; preds = %bb.ei
  %i.bdp = zext nneg i32 %i.bdn to i64
  %i.bdq = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.bdp
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !73
  %i.bds = zext i8 %i.bdr to i32
  %.not1664 = icmp eq i32 %i.bdn, 0
  br i1 %.not1664, label %bb.en, label %.preheader1968

.preheader1968:                                   ; preds = %bb.ei, %find_min_book.exit1873
  %.0.i18722680 = phi i32 [ %i.bds, %find_min_book.exit1873 ], [ 11, %bb.ei ] ; 4 uses
  %i.bdt = load i8, ptr %i.axn, align 1, !tbaa !73 ; 2 uses
  %.not2293 = icmp eq i8 %i.bdt, 0
  br i1 %.not2293, label %._crit_edge2221, label %.lr.ph2220
end_hunk_0
