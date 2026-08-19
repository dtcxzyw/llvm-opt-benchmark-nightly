inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  store i16 -123, ptr %i.jdd, align 8, !tbaa !216
  %i.jde = getelementptr inbounds nuw i8, ptr %i.izr, i64 20
  %i.jdf = getelementptr inbounds nuw i8, ptr %i.ize, i64 10
  %i.jdg = load <4 x i16>, ptr %i.jde, align 4, !tbaa !216 ; 2 uses
  %i.jdh = shufflevector <4 x i16> %i.jdg, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jdi = mul <2 x i16> %i.jdh, splat (i16 -122)
  %i.jdj = shufflevector <4 x i16> %i.jdg, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.jdk = sub <2 x i16> %i.jdi, %i.jdj
  store <2 x i16> %i.jdk, ptr %i.jdf, align 2, !tbaa !216
  %i.jdl = getelementptr inbounds nuw i8, ptr %i.izr, i64 28
  %i.jdm = load i16, ptr %i.jdl, align 4, !tbaa !216
  %.reass.7.2.i537 = mul i16 %i.jdm, -122
  %i.jdn = getelementptr inbounds nuw i8, ptr %i.izr, i64 30
  %i.jdo = load i16, ptr %i.jdn, align 2, !tbaa !216
  %i.jdp = sub i16 %.reass.7.2.i537, %i.jdo
  %i.jdq = getelementptr inbounds nuw i8, ptr %i.ize, i64 14
  store i16 %i.jdp, ptr %i.jdq, align 2, !tbaa !216
  br label %.loopexit1060.2.i

.loopexit1060.2.i:                                ; preds = %.preheader1059.2.i, %.loopexit1060.1.i
  %i.jdr = add nuw nsw i32 %i.izc, 601
  %.urem1316.i = urem i32 %i.jdr, 6
  %i.jds = zext nneg i32 %.urem1316.i to i64
  %i.jdt = getelementptr inbounds nuw i8, ptr %i.fzw, i64 %i.jds
  %i.jdu = load i8, ptr %i.jdt, align 1, !tbaa !169
  %i.jdv = icmp eq i8 %i.jdu, 1
  %i.jdw = add nuw nsw i32 %.1918.2.i, 1
  %.1918.3.i = select i1 %i.jdv, i32 0, i32 %i.jdw ; 3 uses
  %i.jdx = icmp eq i32 %.1918.3.i, 4
  %i.jdy = icmp eq i32 %.1918.3.i, %i.izp
  br i1 %i.jdy, label %.preheader1059.3.i, label %.loopexit1060.3.i

.preheader1059.3.i:                               ; preds = %.loopexit1060.2.i
  %i.jdz = and i32 %i.izp, 2                      ; 5 uses
  %i.jea = zext nneg i32 %i.jdz to i64
  %i.jeb = getelementptr inbounds nuw [2 x i8], ptr %i.ize, i64 %i.jea ; 2 uses
  store i16 -122, ptr %i.jeb, align 4, !tbaa !216
  %i.jec = getelementptr inbounds nuw i8, ptr %i.izr, i64 6
  %i.jed = load i16, ptr %i.jec, align 2, !tbaa !216
  %.reass1066.1.3.i = mul i16 %i.jed, -122
  %i.jee = or i32 %i.izp, 1
  %i.jef = zext nneg i32 %i.jee to i64
  %i.jeg = getelementptr inbounds nuw [2 x i8], ptr %i.ize, i64 %i.jef
  store i16 %.reass1066.1.3.i, ptr %i.jeg, align 2, !tbaa !216
  %i.jeh = getelementptr inbounds nuw i8, ptr %i.izr, i64 8
  %i.jei = load i16, ptr %i.jeh, align 8, !tbaa !216
  %i.jej = xor i32 %i.jdz, 2
  %i.jek = zext nneg i32 %i.jej to i64
  %i.jel = getelementptr inbounds nuw [2 x i8], ptr %i.ize, i64 %i.jek
  store i16 %i.jei, ptr %i.jel, align 4, !tbaa !216
  %i.jem = getelementptr inbounds nuw i8, ptr %i.izr, i64 12
  %i.jen = load i16, ptr %i.jem, align 4, !tbaa !216
  %i.jeo = xor i32 %i.jdz, 3
  %i.jep = zext nneg i32 %i.jeo to i64
  %i.jeq = getelementptr inbounds nuw [2 x i8], ptr %i.ize, i64 %i.jep
  store i16 %i.jen, ptr %i.jeq, align 2, !tbaa !216
  %i.jer = getelementptr inbounds nuw i8, ptr %i.jeb, i64 8
  store i16 -121, ptr %i.jer, align 4, !tbaa !216
  %i.jes = getelementptr inbounds nuw i8, ptr %i.izr, i64 20
  %i.jet = load i16, ptr %i.jes, align 4, !tbaa !216
  %i.jeu = getelementptr inbounds nuw i8, ptr %i.izr, i64 22
  %i.jev = load i16, ptr %i.jeu, align 2, !tbaa !216
  %.reass1066.5.3.i = mul i16 %i.jev, -122
  %i.jew = add i16 %.reass1066.5.3.i, %i.jet
  %i.jex = or i32 %i.izp, 5
  %i.jey = zext nneg i32 %i.jex to i64
  %i.jez = getelementptr inbounds nuw [2 x i8], ptr %i.ize, i64 %i.jey
  store i16 %i.jew, ptr %i.jez, align 2, !tbaa !216
  %i.jfa = getelementptr inbounds nuw i8, ptr %i.izr, i64 24
  %i.jfb = xor i32 %i.jdz, 6
  %i.jfc = zext nneg i32 %i.jfb to i64
  %i.jfd = getelementptr inbounds nuw [2 x i8], ptr %i.ize, i64 %i.jfc
  %i.jfe = load <4 x i16>, ptr %i.jfa, align 8, !tbaa !216 ; 2 uses
  %i.jff = shufflevector <4 x i16> %i.jfe, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.jfg = mul <2 x i16> %i.jff, splat (i16 -122)
  %i.jfh = shufflevector <4 x i16> %i.jfe, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jfi = add <2 x i16> %i.jfg, %i.jfh           ; 2 uses
  %i.jfj = extractelement <2 x i16> %i.jfi, i64 0
  store i16 %i.jfj, ptr %i.jfd, align 4, !tbaa !216
  %i.jfk = xor i32 %i.jdz, 7
  %i.jfl = zext nneg i32 %i.jfk to i64
  %i.jfm = getelementptr inbounds nuw [2 x i8], ptr %i.ize, i64 %i.jfl
  %i.jfn = extractelement <2 x i16> %i.jfi, i64 1
  store i16 %i.jfn, ptr %i.jfm, align 2, !tbaa !216
  br label %.loopexit1060.3.i

.loopexit1060.3.i:                                ; preds = %.preheader1059.3.i, %.loopexit1060.2.i
  %i.jfo = add nuw nsw i32 %.1918.3.i, 1
  %.1918.4.i = select i1 %i.izw, i32 0, i32 %i.jfo ; 2 uses
  %i.jfp = icmp eq i32 %.1918.4.i, 4
  %i.jfq = or i1 %i.jdx, %i.jfp                   ; 2 uses
  %.3851.4.i = select i1 %i.jfq, i16 %i.izd, i16 %.18491073.i ; 4 uses
  %.3.4.i = select i1 %i.jfq, i16 %i.fzf, i16 %.18451074.i ; 4 uses
  %i.jfr = icmp eq i32 %.1918.4.i, %i.izp
  br i1 %i.jfr, label %.preheader1059.4.i, label %.loopexit1060.4.i

.preheader1059.4.i:                               ; preds = %.loopexit1060.3.i
  store i16 1, ptr %i.ize, align 16, !tbaa !216
  %i.jfs = getelementptr inbounds nuw i8, ptr %i.izr, i64 6
  %i.jft = load i16, ptr %i.jfs, align 2, !tbaa !216
  %i.jfu = getelementptr inbounds nuw i8, ptr %i.ize, i64 2
  store i16 %i.jft, ptr %i.jfu, align 2, !tbaa !216
  %i.jfv = getelementptr inbounds nuw i8, ptr %i.izr, i64 8
  %i.jfw = getelementptr inbounds nuw i8, ptr %i.ize, i64 4
  %i.jfx = call <3 x i16> @llvm.masked.load.v3i16.p0(ptr nonnull align 8 %i.jfv, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i16> poison), !tbaa !216
  %i.jfy = shufflevector <3 x i16> %i.jfx, <3 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jfz = mul <2 x i16> %i.jfy, splat (i16 122)
  store <2 x i16> %i.jfz, ptr %i.jfw, align 4, !tbaa !216
  %i.jga = getelementptr inbounds nuw i8, ptr %i.ize, i64 8
  store i16 123, ptr %i.jga, align 8, !tbaa !216
  %i.jgb = getelementptr inbounds nuw i8, ptr %i.izr, i64 20
  %i.jgc = getelementptr inbounds nuw i8, ptr %i.ize, i64 10
  %i.jgd = load <4 x i16>, ptr %i.jgb, align 4, !tbaa !216 ; 2 uses
  %i.jge = shufflevector <4 x i16> %i.jgd, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jgf = mul <2 x i16> %i.jge, splat (i16 122)
  %i.jgg = shufflevector <4 x i16> %i.jgd, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.jgh = add <2 x i16> %i.jgg, %i.jgf
  store <2 x i16> %i.jgh, ptr %i.jgc, align 2, !tbaa !216
  %i.jgi = getelementptr inbounds nuw i8, ptr %i.izr, i64 28
  %i.jgj = load i16, ptr %i.jgi, align 4, !tbaa !216
  %.reass.7.4.i530 = mul i16 %i.jgj, 122
  %i.jgk = getelementptr inbounds nuw i8, ptr %i.izr, i64 30
  %i.jgl = load i16, ptr %i.jgk, align 2, !tbaa !216
  %i.jgm = add i16 %i.jgl, %.reass.7.4.i530
  %i.jgn = getelementptr inbounds nuw i8, ptr %i.ize, i64 14
  store i16 %i.jgm, ptr %i.jgn, align 2, !tbaa !216
  br label %.loopexit1060.4.i

.loopexit1060.4.i:                                ; preds = %.preheader1059.4.i, %.loopexit1060.3.i
  %indvars.iv.next.i506 = add nuw nsw i64 %indvars.iv.i496, 1 ; 2 uses
  %exitcond.not.i507 = icmp eq i64 %indvars.iv.next.i506, 3
  br i1 %exitcond.not.i507, label %bb.os, label %.preheader1061.i

._crit_edge1248.i:                                ; preds = %.lr.ph1247.split.i, %._crit_edge1244.us.i, %bb.mi
  tail call void @free(ptr noundef %i.fzc) #27
  tail call fastcc void @_vng_lininterpolate(ptr noundef nonnull %i.aou, ptr noundef readonly %i.ays, i32 noundef %i.bo, i32 noundef %i.ayi, i32 noundef 9, ptr noundef nonnull readonly %i.x, i32 noundef %i.aqf)
  br label %xtrans_markesteijn_interpolate.exit

.lr.ph1247.split.i:                               ; preds = %.lr.ph1247.i, %.lr.ph1247.split.i
  %.09141245.i = phi i32 [ %i.jgo, %.lr.ph1247.split.i ], [ %.neg.i508, %.lr.ph1247.i ]
  %i.jgo = add i32 %.09141245.i, %reass.sub955.i  ; 2 uses
  %i.jgp = icmp slt i32 %i.jgo, %i.gaa
  br i1 %i.jgp, label %.lr.ph1247.split.i, label %._crit_edge1248.i

xtrans_markesteijn_interpolate.exit:              ; preds = %bb.mh, %._crit_edge1248.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %demosaic_box3.exit

bb.ot:                                            ; preds = %bb.mf
  tail call fastcc void @vng_interpolate(ptr noundef %i.aou, ptr noundef %i.ays, i32 noundef %i.bo, i32 noundef %i.ayi, i32 noundef 9, ptr noundef nonnull %i.x, i32 noundef 0)
  br label %demosaic_box3.exit

bb.ou:                                            ; preds = %bb.iv
  br i1 %or.cond31, label %bb.ov, label %bb.ox

bb.ov:                                            ; preds = %bb.ou
  tail call fastcc void @vng_interpolate(ptr noundef %i.aou, ptr noundef %i.ays, i32 noundef %i.bo, i32 noundef %i.ayi, i32 noundef %.fr1059, ptr noundef nonnull %i.x, i32 noundef 0)
  br i1 %i.bg, label %bb.ow, label %demosaic_box3.exit

bb.ow:                                            ; preds = %bb.ov
  %i.jgq = mul nsw i32 %i.ayi, %i.bo
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.aou, i32 noundef %i.jgq, ptr noundef nonnull %i.apw) #27
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.apx, i32 noundef 1, ptr noundef nonnull %i.apw) #27
  br label %demosaic_box3.exit

bb.ox:                                            ; preds = %bb.ou
  switch i32 %.0394, label %bb.rp [
    i32 5, label %bb.oy
    i32 6, label %bb.ph
    i32 1, label %bb.rq
  ]

bb.oy:                                            ; preds = %bb.ox
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.aou, ptr noundef %i.ays, i32 noundef %i.bo, i32 noundef %i.ayi, i32 noundef range(i32 10, 9) %.fr1059, float noundef 0.000000e+00, i32 noundef 10)
  %i.jgr = icmp slt i32 %i.ayi, 20
  %or.cond.i538 = or i1 %i.apo, %i.jgr
  br i1 %or.cond.i538, label %demosaic_box3.exit, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.jgs = add nsw i32 %i.ayi, -21
  %i.jgt = sdiv i32 %i.jgs, 92
  %i.jgu = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !277 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jgu, i64 64) ]
  %.not.i.i539 = icmp eq ptr %i.jgu, null
  br i1 %.not.i.i539, label %.preheader833.preheader.i, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jgu, i8 0, i64 50176, i1 false), !noalias !277
  br label %.preheader833.preheader.i

.preheader833.preheader.i:                        ; preds = %bb.pa, %bb.oz
  %i.jgv = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !277 ; 28 uses
  %i.jgw = ptrtoaddr ptr %i.jgv to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jgv, i64 64) ]
  %i.jgx = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !277 ; 38 uses
  %i.jgy = ptrtoaddr ptr %i.jgx to i64            ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jgx, i64 64) ]
  %i.jgz = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !277 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jgz, i64 64) ]
  %i.jha = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !277 ; 13 uses
  %6 = insertelement <2 x ptr> poison, ptr %i.jgz, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.jha, i64 1
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jha, i64 64) ]
  %i.jhb = tail call ptr @dt_alloc_aligned(i64 noundef 150528) #27, !noalias !277 ; 61 uses
  %i.jhc = ptrtoaddr ptr %i.jhb to i64            ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jhb, i64 64) ]
  %i.jhd = getelementptr inbounds nuw i8, ptr %i.jhb, i64 50176 ; 24 uses
  %i.jhe = getelementptr inbounds nuw i8, ptr %i.jhb, i64 100352 ; 12 uses
  %scevgep2977 = getelementptr i8, ptr %i.jhb, i64 -1344
  %scevgep2979 = getelementptr i8, ptr %i.jhb, i64 101700
  %scevgep2983 = getelementptr i8, ptr %i.jgu, i64 -452
  %scevgep2985 = getelementptr i8, ptr %i.jgu, i64 456
  %scevgep3066 = getelementptr i8, ptr %i.jhb, i64 100352
  %scevgep3068 = getelementptr i8, ptr %i.jhb, i64 100356
  %scevgep3073 = getelementptr i8, ptr %i.jgv, i64 8
  %scevgep3076 = getelementptr i8, ptr %i.jgv, i64 8
  %scevgep3078 = getelementptr i8, ptr %i.jgv, i64 8
  %scevgep3082 = getelementptr i8, ptr %i.jgv, i64 12
  %scevgep3084 = getelementptr i8, ptr %i.jhb, i64 99900
  %scevgep3086 = getelementptr i8, ptr %i.jhb, i64 99904
  %scevgep3088 = getelementptr i8, ptr %i.jhb, i64 100804
  %scevgep3090 = getelementptr i8, ptr %i.jhb, i64 100808
  %scevgep3092 = getelementptr i8, ptr %i.jhb, i64 98996
  %scevgep3094 = getelementptr i8, ptr %i.jhb, i64 99000
  %scevgep3096 = getelementptr i8, ptr %i.jhb, i64 50176
  %scevgep3098 = getelementptr i8, ptr %i.jhb, i64 50180
  %scevgep3100 = getelementptr i8, ptr %i.jhb, i64 49272
  %scevgep3102 = getelementptr i8, ptr %i.jhb, i64 49276
  %scevgep3104 = getelementptr i8, ptr %i.jhb, i64 99908
  %scevgep3106 = getelementptr i8, ptr %i.jhb, i64 99912
  %scevgep3108 = getelementptr i8, ptr %i.jhb, i64 100796
  %scevgep3110 = getelementptr i8, ptr %i.jhb, i64 100800
  %scevgep3112 = getelementptr i8, ptr %i.jhb, i64 99020
  %scevgep3114 = getelementptr i8, ptr %i.jhb, i64 99024
  %scevgep3116 = getelementptr i8, ptr %i.jhb, i64 49288
  %scevgep3118 = getelementptr i8, ptr %i.jhb, i64 49292
  %scevgep3120 = getelementptr i8, ptr %i.jhb, i64 101684
  %scevgep3122 = getelementptr i8, ptr %i.jhb, i64 101688
  %scevgep3124 = getelementptr i8, ptr %i.jhb, i64 51064
  %scevgep3126 = getelementptr i8, ptr %i.jhb, i64 51068
  %scevgep3128 = getelementptr i8, ptr %i.jhb, i64 101708
  %scevgep3130 = getelementptr i8, ptr %i.jhb, i64 101712
  %scevgep3132 = getelementptr i8, ptr %i.jhb, i64 51080
  %scevgep3134 = getelementptr i8, ptr %i.jhb, i64 51084
  %scevgep3136 = getelementptr i8, ptr %i.jhb, i64 49724
  %scevgep3138 = getelementptr i8, ptr %i.jhb, i64 49728
  %scevgep3140 = getelementptr i8, ptr %i.jhb, i64 49732
  %scevgep3142 = getelementptr i8, ptr %i.jhb, i64 49736
  %scevgep3144 = getelementptr i8, ptr %i.jhb, i64 50620
  %scevgep3146 = getelementptr i8, ptr %i.jhb, i64 50624
  %scevgep3148 = getelementptr i8, ptr %i.jhb, i64 50628
  %scevgep3150 = getelementptr i8, ptr %i.jhb, i64 50632
  %i.jhf = insertelement <4 x i64> poison, i64 %i.jgw, i64 0
  %i.jhg = shufflevector <4 x i64> %i.jhf, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jhh = or disjoint <4 x i64> %i.jhg, <i64 4, i64 8, i64 8, i64 4>
  %scevgep3326 = getelementptr i8, ptr %i.jgx, i64 -1344
  %scevgep3331 = getelementptr i8, ptr %i.jgx, i64 -440
  %scevgep3333 = getelementptr i8, ptr %i.jgx, i64 -892
  %scevgep3335 = getelementptr i8, ptr %i.jgx, i64 12
  %scevgep3337 = getelementptr i8, ptr %i.jgx, i64 -1320
  %scevgep3339 = getelementptr i8, ptr %i.jgx, i64 -432
  %scevgep3341 = getelementptr i8, ptr %i.jgx, i64 -876
  %scevgep3351 = getelementptr i8, ptr %i.jgx, i64 -1344
  %scevgep3353 = getelementptr i8, ptr %i.jgx, i64 1364
  %scevgep3409 = getelementptr i8, ptr %i.jhb, i64 50176
  %scevgep3411 = getelementptr i8, ptr %i.jhb, i64 50180
  %scevgep3415 = getelementptr i8, ptr %i.jgx, i64 -1792
  %scevgep3417 = getelementptr i8, ptr %i.jgx, i64 1796
  %scevgep3419 = getelementptr i8, ptr %i.jgv, i64 -448
  %scevgep3421 = getelementptr i8, ptr %i.jgv, i64 452
  %scevgep3423 = getelementptr i8, ptr %i.jgu, i64 -452
  %scevgep3425 = getelementptr i8, ptr %i.jgu, i64 456
  %scevgep3502 = getelementptr i8, ptr %i.jgv, i64 4
  %scevgep3506 = getelementptr i8, ptr %i.jgx, i64 -452
  %scevgep3508 = getelementptr i8, ptr %i.jgx, i64 456
  %scevgep3540 = getelementptr i8, ptr %i.jgu, i64 16
  %scevgep3591 = getelementptr i8, ptr %i.jgx, i64 -1328
  %scevgep3593 = getelementptr i8, ptr %i.jgx, i64 1344
  %invariant.op4940 = sub i64 %i.jhc, %i.jgy
  %invariant.op4942 = sub i64 %i.jhc, %i.jgy
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %9 = ptrtoaddr <4 x ptr> %8 to <4 x i64>
  br label %.preheader833.i

.preheader833.i:                                  ; preds = %._crit_edge939.i, %.preheader833.preheader.i
  %indvars.iv1055.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next1056.i, %._crit_edge939.i ] ; 2 uses
  %indvars.iv947.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next948.i, %._crit_edge939.i ] ; 2 uses
  %.0740941.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %i.jif, %._crit_edge939.i ] ; 4 uses
  %i.jhi = mul nuw nsw i32 %.0740941.i, 92        ; 5 uses
  %i.jhj = add nuw nsw i32 %i.jhi, 112            ; 2 uses
  %i.jhk = tail call i32 @llvm.smin.i32(i32 %i.jhj, i32 %i.ayi) ; 3 uses
  %i.jhl = sub nsw i32 %i.jhk, %i.jhi             ; 6 uses
  %i.jhm = icmp sgt i32 %i.jhj, %i.ayi
  %i.jhn = icmp sgt i32 %i.ayi, %i.jhi
  %i.jho = add nsw i32 %i.jhl, -3                 ; 2 uses
  %i.jhp = tail call i32 @llvm.smin.i32(i32 %i.jho, i32 5)
  %i.jhq = icmp sgt i32 %i.jhl, 6                 ; 2 uses
  %i.jhr = add nsw i32 %i.jhl, -4                 ; 5 uses
  %i.jhs = icmp sgt i32 %i.jhl, 8                 ; 3 uses
  %i.jht = add nsw i32 %i.jhl, -2
  %i.jhu = icmp sgt i32 %i.jhl, 4
  %i.jhv = icmp eq i32 %.0740941.i, 0
  %i.jhw = select i1 %i.jhv, i32 9, i32 10        ; 3 uses
  %i.jhx = add nuw nsw i32 %i.jhw, %i.jhi         ; 2 uses
  %i.jhy = icmp eq i32 %.0740941.i, %i.jgt        ; 2 uses
  %.neg.i540 = select i1 %i.jhy, i32 -9, i32 -10
  %i.jhz = add nsw i32 %i.jhk, %.neg.i540         ; 2 uses
  %i.jia = icmp slt i32 %i.jhx, %i.jhz
  %i.jib = sext i32 %i.jhp to i64
  %i.jic = add i32 %i.jhw, %indvars.iv1055.i
  %i.jid = mul i32 %i.jic, %i.bo
  %i.jie = mul nuw nsw i32 %i.jhw, 112
  %invariant.op.i = add nsw i64 %i.jib, -1
  br label %bb.pb

._crit_edge942.split.i:                           ; preds = %._crit_edge939.i
  tail call void @free(ptr noundef %i.jgx) #27, !noalias !277
  tail call void @free(ptr noundef %i.jhb) #27, !noalias !277
  tail call void @free(ptr noundef %i.jgu) #27, !noalias !277
  tail call void @free(ptr noundef %i.jgv) #27, !noalias !277
  tail call void @free(ptr noundef %i.jgz) #27, !noalias !277
  tail call void @free(ptr noundef %i.jha) #27, !noalias !277
  br label %demosaic_box3.exit

._crit_edge939.i:                                 ; preds = %._crit_edge935.split.i
  %i.jif = add nuw nsw i32 %.0740941.i, 1
  %indvars.iv.next948.i = add i32 %indvars.iv947.i, %i.apt
  %indvars.iv.next1056.i = add nuw i32 %indvars.iv1055.i, 92
  br i1 %i.jhy, label %._crit_edge942.split.i, label %.preheader833.i

bb.pb:                                            ; preds = %._crit_edge935.split.i, %.preheader833.i
  %indvars.iv1057.i = phi i32 [ %i.jid, %.preheader833.i ], [ %indvars.iv.next1058.i, %._crit_edge935.split.i ] ; 2 uses
  %indvars.iv1018.i = phi i32 [ 0, %.preheader833.i ], [ %indvars.iv.next1019.i, %._crit_edge935.split.i ] ; 14 uses
  %indvars.iv1016.i = phi i32 [ 112, %.preheader833.i ], [ %indvars.iv.next1017.i, %._crit_edge935.split.i ] ; 14 uses
  %indvars.iv949.i = phi i32 [ %indvars.iv947.i, %.preheader833.i ], [ %indvars.iv.next950.i, %._crit_edge935.split.i ] ; 2 uses
  %.0745937.i = phi i32 [ 0, %.preheader833.i ], [ %i.luh, %._crit_edge935.split.i ] ; 5 uses
  %smin4812 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jig = add i32 %smin4812, %indvars.iv1018.i
  %smin4813 = call i32 @llvm.smin.i32(i32 %i.jig, i32 112)
  %i.jih = add i32 %smin4813, -4
  %i.jii = sext i32 %i.jih to i64                 ; 2 uses
  %smin4807 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jij = add i32 %smin4807, %indvars.iv1018.i
  %smin4808 = call i32 @llvm.smin.i32(i32 %i.jij, i32 112)
  %i.jik = add i32 %smin4808, -4
  %i.jil = sext i32 %i.jik to i64                 ; 2 uses
  %smin3665 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jim = mul i32 %.0745937.i, 92
  %i.jin = or disjoint i32 %i.jim, 1
  %smax3666 = call i32 @llvm.smax.i32(i32 %smin3665, i32 %i.jin)
  %i.jio = add i32 %indvars.iv1018.i, -1
  %i.jip = add i32 %smax3666, %i.jio              ; 3 uses
  %i.jiq = zext i32 %i.jip to i64
  %i.jir = add nuw nsw i64 %i.jiq, 1              ; 5 uses
  %smin3588 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jis = add i32 %smin3588, %indvars.iv1018.i
  %smin3589 = call i32 @llvm.smin.i32(i32 %i.jis, i32 112)
  %i.jit = add i32 %smin3589, -4
  %i.jiu = sext i32 %i.jit to i64
  %i.jiv = shl nsw i64 %i.jiu, 2                  ; 2 uses
  %smin3542 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jiw = add i32 %smin3542, %indvars.iv1018.i
  %smin3543 = call i32 @llvm.smin.i32(i32 %i.jiw, i32 112)
  %i.jix = add i32 %smin3543, -4
  %i.jiy = sext i32 %i.jix to i64
  %i.jiz = shl nsw i64 %i.jiy, 2                  ; 5 uses
  %scevgep3553 = getelementptr i8, ptr %scevgep3552, i64 %i.jiz
  %smin3503 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jja = add i32 %smin3503, %indvars.iv1018.i
  %smin3504 = call i32 @llvm.smin.i32(i32 %i.jja, i32 112)
  %smin3412 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjb = add i32 %smin3412, %indvars.iv1018.i
  %smin3413 = call i32 @llvm.smin.i32(i32 %i.jjb, i32 112)
  %smin3345 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjc = add i32 %smin3345, %indvars.iv1018.i
  %smin3346 = call i32 @llvm.smin.i32(i32 %i.jjc, i32 112)
  %i.jjd = add i32 %smin3346, -3
  %smax3347 = call i32 @llvm.smax.i32(i32 %i.jjd, i32 5)
  %i.jje = add nsw i32 %smax3347, -4
  %i.jjf = lshr i32 %i.jje, 1
  %smin3323 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjg = add i32 %smin3323, %indvars.iv1018.i
  %smin3324 = call i32 @llvm.smin.i32(i32 %i.jjg, i32 112)
  %i.jjh = add i32 %smin3324, -3
  %smax3325 = call i32 @llvm.smax.i32(i32 %i.jjh, i32 5)
  %i.jji = add nsw i32 %smax3325, -4
  %i.jjj = lshr i32 %i.jji, 1
  %smin3069 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjk = add i32 %smin3069, %indvars.iv1018.i
  %smin3070 = call i32 @llvm.smin.i32(i32 %i.jjk, i32 112)
  %smin2980 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjl = add i32 %smin2980, %indvars.iv1018.i
  %smin2981 = call i32 @llvm.smin.i32(i32 %i.jjl, i32 112)
  %smin2957 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjm = add i32 %indvars.iv1018.i, -1
  %smin1162 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjn = add i32 %smin1162, %indvars.iv1018.i
  %smin1163 = call i32 @llvm.smin.i32(i32 %i.jjn, i32 112) ; 7 uses
  %i.jjo = add i32 %smin1163, -4
  %i.jjp = sext i32 %i.jjo to i64                 ; 6 uses
  %i.jjq = add i32 %smin1163, -3                  ; 3 uses
  %i.jjr = sext i32 %i.jjq to i64                 ; 2 uses
  %i.jjs = add nsw i64 %i.jjp, 336
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.jjq, i32 5)
  %i.jjt = add nsw i32 %smax.i, -4
  %i.jju = lshr i32 %i.jjt, 1
  %i.jjv = mul i32 %.0745937.i, 92                ; 8 uses
  %i.jjw = add i32 %i.jjv, 112                    ; 2 uses
  %i.jjx = tail call i32 @llvm.smin.i32(i32 %i.jjw, i32 %i.bo) ; 3 uses
  %i.jjy = sub nsw i32 %i.jjx, %i.jjv             ; 5 uses
  %i.jjz = tail call i32 @llvm.smin.i32(i32 %i.jjy, i32 112) ; 3 uses
  %i.jka = icmp sgt i32 %i.jjw, %i.bo
  %or.cond794.i = select i1 %i.jhm, i1 true, i1 %i.jka
  br i1 %or.cond794.i, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jgu, i8 0, i64 50176, i1 false), !noalias !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(150528) %i.jhb, i8 0, i64 150528, i1 false), !noalias !277
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %i.jkb = icmp sgt i32 %i.bo, %i.jjv
  %or.cond943.i = select i1 %i.jhn, i1 %i.jkb, i1 false
  br i1 %or.cond943.i, label %iter.check3688.preheader, label %._crit_edge842.split.i

iter.check3688.preheader:                         ; preds = %bb.pd
  %min.iters.check3668 = icmp ult i32 %i.jip, 3
  %min.iters.check3670 = icmp ult i32 %i.jip, 31
  %i.jkc = and i64 %i.jir, 28
  %n.vec3672 = and i64 %i.jir, 8589934560         ; 6 uses
  %i.jkd = trunc i64 %n.vec3672 to i32
  %i.jke = add i32 %i.jjv, %i.jkd
  %cmp.n3683 = icmp eq i64 %i.jir, %n.vec3672
  %min.epilog.iters.check3691 = icmp eq i64 %i.jkc, 0
  %n.vec3693 = and i64 %i.jir, 8589934588         ; 5 uses
  %i.jkf = trunc i64 %n.vec3693 to i32
  %i.jkg = add i32 %i.jjv, %i.jkf
  %cmp.n3701 = icmp eq i64 %i.jir, %n.vec3693
  br label %iter.check3688

._crit_edge842.split.i:                           ; preds = %._crit_edge.i547, %bb.pd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !282
  br i1 %i.jhq, label %.lr.ph850.i, label %._crit_edge851.split.thread.i

._crit_edge851.split.thread.i:                    ; preds = %._crit_edge842.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !282
  br label %.preheader832.i

.lr.ph850.i:                                      ; preds = %._crit_edge842.split.i
  %i.jkh = icmp sgt i32 %i.jjy, 8
  br i1 %i.jkh, label %.lr.ph846.i.preheader, label %._crit_edge851.split.i

.lr.ph846.i.preheader:                            ; preds = %.lr.ph850.i
  %i.jki = add nsw i64 %i.jjp, -4                 ; 3 uses
  %min.iters.check3635 = icmp ult i64 %i.jki, 8
  %n.vec3637 = and i64 %i.jki, -8                 ; 4 uses
  %i.jkj = or disjoint i64 %n.vec3637, 4
  %cmp.n3649 = icmp eq i64 %i.jki, %n.vec3637
  br label %.lr.ph846.i

iter.check3688:                                   ; preds = %iter.check3688.preheader, %._crit_edge.i547
  %indvars.iv951.i = phi i32 [ %indvars.iv.next952.i, %._crit_edge.i547 ], [ %indvars.iv949.i, %iter.check3688.preheader ] ; 3 uses
  %indvars.iv.i546 = phi i32 [ %indvars.iv.next.i548, %._crit_edge.i547 ], [ 0, %iter.check3688.preheader ] ; 3 uses
  %.0746839.i = phi i32 [ %i.jmx, %._crit_edge.i547 ], [ %i.jhi, %iter.check3688.preheader ] ; 2 uses
  %i.jkk = sext i32 %indvars.iv.i546 to i64       ; 6 uses
  %i.jkl = zext i32 %indvars.iv951.i to i64       ; 6 uses
  %i.jkm = shl i32 %.0746839.i, 2
  %i.jkn = and i32 %i.jkm, 28                     ; 2 uses
  %i.jko = lshr i32 %.fr1059, %i.jkn
  %i.jkp = and i32 %i.jko, 3
  %i.jkq = or disjoint i32 %i.jkn, 2
  %i.jkr = lshr i32 %.fr1059, %i.jkq
  %i.jks = and i32 %i.jkr, 3
  %i.jkt = zext nneg i32 %i.jks to i64            ; 2 uses
  %i.jku = getelementptr inbounds nuw [50176 x i8], ptr %i.jhb, i64 %i.jkt ; 3 uses
  %i.jkv = zext nneg i32 %i.jkp to i64            ; 2 uses
  %i.jkw = getelementptr inbounds nuw [50176 x i8], ptr %i.jhb, i64 %i.jkv ; 3 uses
  br i1 %min.iters.check3668, label %vec.epilog.scalar.ph3689.preheader, label %vector.memcheck3652

vector.memcheck3652:                              ; preds = %iter.check3688
  %i.jkx = sext i32 %indvars.iv.i546 to i64
  %i.jky = shl nsw i64 %i.jkx, 2                  ; 3 uses
end_hunk_0
begin_hunk_1_@process:bb.a
  br i1 %i.kpr, label %scalar.ph3366.preheader, label %vector.memcheck3343

vector.memcheck3343:                              ; preds = %vector.scevcheck3322
  %bound03355 = icmp ult ptr %scevgep3344, %scevgep3350
  %bound13356 = icmp ult ptr %scevgep3349, %scevgep3348
  %found.conflict3357 = and i1 %bound03355, %bound13356
  %bound03358 = icmp ult ptr %scevgep3344, %scevgep3354
  %bound13359 = icmp ult ptr %scevgep3352, %scevgep3348
  %found.conflict3360 = and i1 %bound03358, %bound13359
  %conflict.rdx3361 = or i1 %found.conflict3357, %found.conflict3360
  %bound03362 = icmp ult ptr %scevgep3349, %scevgep3354
  %bound13363 = icmp ult ptr %scevgep3352, %scevgep3350
  %found.conflict3364 = and i1 %bound03362, %bound13363
  %conflict.rdx3365 = or i1 %conflict.rdx3361, %found.conflict3364
  br i1 %conflict.rdx3365, label %scalar.ph3366.preheader, label %vector.ph3368

vector.ph3368:                                    ; preds = %vector.memcheck3343
  %i.kps = and i64 %i.kon, 7                      ; 2 uses
  %i.kpt = icmp eq i64 %i.kps, 0
  %i.kpu = select i1 %i.kpt, i64 8, i64 %i.kps
  %n.vec3369 = sub nsw i64 %i.kon, %i.kpu         ; 3 uses
  %i.kpv = shl nsw i64 %n.vec3369, 1
  %i.kpw = add nsw i64 %i.kpv, %i.kof
  %i.kpx = add nsw i64 %i.kog, %n.vec3369
  %broadcast.splatinsert3370 = insertelement <8 x i64> poison, i64 %i.kof, i64 0
  %broadcast.splat3371 = shufflevector <8 x i64> %broadcast.splatinsert3370, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3372 = add nuw nsw <8 x i64> %broadcast.splat3371, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3373

vector.body3373:                                  ; preds = %vector.body3373, %vector.ph3368
  %index3374 = phi i64 [ 0, %vector.ph3368 ], [ %index.next3403, %vector.body3373 ] ; 2 uses
  %vec.ind3375 = phi <8 x i64> [ %induction3372, %vector.ph3368 ], [ %vec.ind.next3404, %vector.body3373 ] ; 2 uses
  %i.kpy = add nuw i64 %i.kog, %index3374         ; 2 uses
  %wide.gep3376 = getelementptr [4 x i8], ptr %i.jgx, <8 x i64> %vec.ind3375 ; 9 uses
  %i.kpz = extractelement <8 x ptr> %wide.gep3376, i64 0 ; 6 uses
  %wide.gep3377 = getelementptr i8, <8 x ptr> %wide.gep3376, i64 -1356
  %wide.masked.gather3378 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3377, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %wide.gep3379 = getelementptr i8, <8 x ptr> %wide.gep3376, i64 -452
  %wide.masked.gather3380 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3379, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqa = getelementptr inbounds nuw i8, ptr %i.kpz, i64 452
  %wide.vec3381 = load <16 x float>, ptr %i.kqa, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3382 = shufflevector <16 x float> %wide.vec3381, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqb = getelementptr inbounds nuw i8, ptr %i.kpz, i64 1356
  %wide.vec3383 = load <16 x float>, ptr %i.kqb, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3384 = shufflevector <16 x float> %wide.vec3383, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3385 = getelementptr i8, <8 x ptr> %wide.gep3376, i64 -904
  %wide.masked.gather3386 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3385, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqc = getelementptr inbounds nuw i8, ptr %i.kpz, i64 904
  %wide.vec3387 = load <16 x float>, ptr %i.kqc, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3388 = shufflevector <16 x float> %wide.vec3387, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqd = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3388, %wide.masked.gather3386
  %i.kqe = fmul reassoc nsz arcp contract afn <8 x float> %i.kqd, splat (float -3.000000e+00)
  %wide.masked.gather3389 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3376, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3389, splat (float 6.000000e+00)
  %i.kqg = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3380, %strided.vec3382
  %i.kqh = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3378, %i.kqg
  %i.kqi = fadd reassoc nsz arcp contract afn <8 x float> %i.kqh, %strided.vec3384
  %i.kqj = fadd reassoc nsz arcp contract afn <8 x float> %i.kqi, %i.kqe
  %i.kqk = fadd reassoc nsz arcp contract afn <8 x float> %i.kqj, %i.kqf ; 2 uses
  %i.kql = fmul reassoc nsz arcp contract afn <8 x float> %i.kqk, %i.kqk
  %i.kqm = getelementptr inbounds nuw [4 x i8], ptr %i.jgz, i64 %i.kpy
  store <8 x float> %i.kql, ptr %i.kqm, align 4, !tbaa !22, !alias.scope !335, !noalias !337
  %wide.gep3390 = getelementptr i8, <8 x ptr> %wide.gep3376, i64 -1332
  %wide.masked.gather3391 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3390, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %wide.gep3392 = getelementptr i8, <8 x ptr> %wide.gep3376, i64 -444
  %wide.masked.gather3393 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3392, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqn = getelementptr inbounds nuw i8, ptr %i.kpz, i64 444
  %wide.vec3394 = load <16 x float>, ptr %i.kqn, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3395 = shufflevector <16 x float> %wide.vec3394, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqo = getelementptr inbounds nuw i8, ptr %i.kpz, i64 1332
  %wide.vec3396 = load <16 x float>, ptr %i.kqo, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3397 = shufflevector <16 x float> %wide.vec3396, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3398 = getelementptr i8, <8 x ptr> %wide.gep3376, i64 -888
  %wide.masked.gather3399 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3398, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqp = getelementptr inbounds nuw i8, ptr %i.kpz, i64 888
  %wide.vec3400 = load <16 x float>, ptr %i.kqp, align 4, !tbaa !22, !alias.scope !332, !noalias !277
  %strided.vec3401 = shufflevector <16 x float> %wide.vec3400, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kqq = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3401, %wide.masked.gather3399
  %i.kqr = fmul reassoc nsz arcp contract afn <8 x float> %i.kqq, splat (float -3.000000e+00)
  %wide.masked.gather3402 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3376, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22, !alias.scope !332, !noalias !277
  %i.kqs = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3402, splat (float 6.000000e+00)
  %i.kqt = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3393, %strided.vec3395
  %i.kqu = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3391, %i.kqt
  %i.kqv = fadd reassoc nsz arcp contract afn <8 x float> %i.kqu, %strided.vec3397
  %i.kqw = fadd reassoc nsz arcp contract afn <8 x float> %i.kqv, %i.kqr
  %i.kqx = fadd reassoc nsz arcp contract afn <8 x float> %i.kqw, %i.kqs ; 2 uses
  %i.kqy = fmul reassoc nsz arcp contract afn <8 x float> %i.kqx, %i.kqx
  %i.kqz = getelementptr inbounds nuw [4 x i8], ptr %i.jha, i64 %i.kpy
  store <8 x float> %i.kqy, ptr %i.kqz, align 4, !tbaa !22, !alias.scope !339, !noalias !340
  %index.next3403 = add nuw i64 %index3374, 8     ; 2 uses
  %vec.ind.next3404 = add nuw nsw <8 x i64> %vec.ind3375, splat (i64 16)
  %i.kra = icmp eq i64 %index.next3403, %n.vec3369
  br i1 %i.kra, label %scalar.ph3366.preheader, label %vector.body3373, !llvm.loop !341

._crit_edge895.i:                                 ; preds = %scalar.ph3366
  %i.krb = add nuw nsw i32 %.0767896.i, 1         ; 2 uses
  %i.krc = icmp slt i32 %i.krb, %i.jho
  %indvars.iv.next1010.i = add i32 %indvars.iv1009.i, 112
  br i1 %i.krc, label %.lr.ph894.i, label %.preheader829.i

scalar.ph3366:                                    ; preds = %scalar.ph3366.preheader, %scalar.ph3366
  %indvars.iv1013.i = phi i64 [ %indvars.iv.next1014.i, %scalar.ph3366 ], [ %indvars.iv1013.i.ph, %scalar.ph3366.preheader ] ; 2 uses
  %indvars.iv1011.i = phi i64 [ %indvars.iv.next1012.i, %scalar.ph3366 ], [ %indvars.iv1011.i.ph, %scalar.ph3366.preheader ] ; 3 uses
  %i.krd = getelementptr [4 x i8], ptr %i.jgx, i64 %indvars.iv1013.i ; 14 uses
  %i.kre = getelementptr i8, ptr %i.krd, i64 -1356
  %i.krf = load float, ptr %i.kre, align 4, !tbaa !22, !noalias !277
  %i.krg = getelementptr i8, ptr %i.krd, i64 -452
  %i.krh = load float, ptr %i.krg, align 4, !tbaa !22, !noalias !277
  %i.kri = getelementptr inbounds nuw i8, ptr %i.krd, i64 452
  %i.krj = load float, ptr %i.kri, align 4, !tbaa !22, !noalias !277
  %i.krk = getelementptr inbounds nuw i8, ptr %i.krd, i64 1356
  %i.krl = load float, ptr %i.krk, align 4, !tbaa !22, !noalias !277
  %i.krm = getelementptr i8, ptr %i.krd, i64 -904
  %i.krn = load float, ptr %i.krm, align 4, !tbaa !22, !noalias !277
  %i.kro = getelementptr inbounds nuw i8, ptr %i.krd, i64 904
  %i.krp = load float, ptr %i.kro, align 4, !tbaa !22, !noalias !277
  %i.krq = fadd reassoc nsz arcp contract afn float %i.krp, %i.krn
  %.neg806.i = fmul reassoc nsz arcp contract afn float %i.krq, -3.000000e+00
  %i.krr = load float, ptr %i.krd, align 4, !tbaa !22, !noalias !277
  %i.krs = fmul reassoc nsz arcp contract afn float %i.krr, 6.000000e+00
  %i.krt = fadd reassoc nsz arcp contract afn float %i.krh, %i.krj
  %.neg807.i = fsub reassoc nsz arcp contract afn float %i.krf, %i.krt
  %i.kru = fadd reassoc nsz arcp contract afn float %.neg807.i, %i.krl
  %i.krv = fadd reassoc nsz arcp contract afn float %i.kru, %.neg806.i
  %i.krw = fadd reassoc nsz arcp contract afn float %i.krv, %i.krs ; 2 uses
  %i.krx = fmul reassoc nsz arcp contract afn float %i.krw, %i.krw
  %i.kry = getelementptr inbounds nuw [4 x i8], ptr %i.jgz, i64 %indvars.iv1011.i
  store float %i.krx, ptr %i.kry, align 4, !tbaa !22, !noalias !277
  %i.krz = getelementptr i8, ptr %i.krd, i64 -1332
  %i.ksa = load float, ptr %i.krz, align 4, !tbaa !22, !noalias !277
  %i.ksb = getelementptr i8, ptr %i.krd, i64 -444
  %i.ksc = load float, ptr %i.ksb, align 4, !tbaa !22, !noalias !277
  %i.ksd = getelementptr inbounds nuw i8, ptr %i.krd, i64 444
  %i.kse = load float, ptr %i.ksd, align 4, !tbaa !22, !noalias !277
  %i.ksf = getelementptr inbounds nuw i8, ptr %i.krd, i64 1332
  %i.ksg = load float, ptr %i.ksf, align 4, !tbaa !22, !noalias !277
  %i.ksh = getelementptr i8, ptr %i.krd, i64 -888
  %i.ksi = load float, ptr %i.ksh, align 4, !tbaa !22, !noalias !277
  %i.ksj = getelementptr inbounds nuw i8, ptr %i.krd, i64 888
  %i.ksk = load float, ptr %i.ksj, align 4, !tbaa !22, !noalias !277
  %i.ksl = fadd reassoc nsz arcp contract afn float %i.ksk, %i.ksi
  %.neg811.i = fmul reassoc nsz arcp contract afn float %i.ksl, -3.000000e+00
  %i.ksm = load float, ptr %i.krd, align 4, !tbaa !22, !noalias !277
  %i.ksn = fmul reassoc nsz arcp contract afn float %i.ksm, 6.000000e+00
  %i.kso = fadd reassoc nsz arcp contract afn float %i.ksc, %i.kse
  %.neg812.i = fsub reassoc nsz arcp contract afn float %i.ksa, %i.kso
  %i.ksp = fadd reassoc nsz arcp contract afn float %.neg812.i, %i.ksg
  %i.ksq = fadd reassoc nsz arcp contract afn float %i.ksp, %.neg811.i
  %i.ksr = fadd reassoc nsz arcp contract afn float %i.ksq, %i.ksn ; 2 uses
  %i.kss = fmul reassoc nsz arcp contract afn float %i.ksr, %i.ksr
  %i.kst = getelementptr inbounds nuw [4 x i8], ptr %i.jha, i64 %indvars.iv1011.i
  store float %i.kss, ptr %i.kst, align 4, !tbaa !22, !noalias !277
  %indvars.iv.next1014.i = add nuw nsw i64 %indvars.iv1013.i, 2
  %indvars.iv.next1012.i = add nuw nsw i64 %indvars.iv1011.i, 1 ; 2 uses
  %exitcond.not.i542 = icmp eq i64 %indvars.iv.next1012.i, %wide.trip.count.i
  br i1 %exitcond.not.i542, label %._crit_edge895.i, label %scalar.ph3366, !llvm.loop !342

bb.pg:                                            ; preds = %._crit_edge904.i, %.lr.ph906.i
  %indvar3290 = phi i32 [ %indvar.next3291, %._crit_edge904.i ], [ 0, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1027.i = phi i32 [ %indvars.iv.next1028.i, %._crit_edge904.i ], [ 452, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1021.i = phi i32 [ %indvars.iv.next1022.i, %._crit_edge904.i ], [ 563, %.lr.ph906.i ] ; 2 uses
  %.0763905.i = phi i32 [ %i.kvd, %._crit_edge904.i ], [ 4, %.lr.ph906.i ] ; 3 uses
  %i.ksu = mul i32 %indvar3290, 112
  %i.ksv = add i32 %i.ksu, 448
  %i.ksw = zext i32 %i.ksv to i64
  %i.ksx = shl nuw nsw i64 %i.ksw, 1
  %i.ksy = shl i32 %.0763905.i, 2
  %i.ksz = and i32 %i.ksy, 28
  %i.kta = lshr i32 %.fr1059, %i.ksz
  %i.ktb = and i32 %i.kta, 1                      ; 3 uses
  %i.ktc = or disjoint i32 %i.ktb, 4              ; 5 uses
  %i.ktd = icmp slt i32 %i.ktc, %i.knp
  br i1 %i.ktd, label %.lr.ph903.preheader.i, label %._crit_edge904.i

.lr.ph903.preheader.i:                            ; preds = %bb.pg
  %i.kte = mul nuw nsw i32 %.0763905.i, 112
  %i.ktf = add nsw i32 %i.kte, -113
  %i.ktg = add nsw i32 %i.ktf, %i.ktc
  %i.kth = sdiv i32 %i.ktg, 2
  %i.kti = add i32 %i.ktb, %indvars.iv1021.i
  %i.ktj = lshr i32 %i.kti, 1
  %i.ktk = zext nneg i32 %i.ktj to i64            ; 5 uses
  %i.ktl = sext i32 %i.kth to i64                 ; 5 uses
  %i.ktm = lshr exact i32 %indvars.iv1027.i, 1
  %i.ktn = zext nneg i32 %i.ktm to i64            ; 4 uses
  %i.kto = sub i32 %i.knq, %i.ktb                 ; 2 uses
  %i.ktp = lshr i32 %i.kto, 1
  %narrow4626 = add nuw i32 %i.ktp, 1
  %i.ktq = zext i32 %narrow4626 to i64            ; 2 uses
  %min.iters.check3304 = icmp ult i32 %i.kto, 14
  br i1 %min.iters.check3304, label %.lr.ph903.i.preheader, label %vector.memcheck3289

vector.memcheck3289:                              ; preds = %.lr.ph903.preheader.i
  %i.ktr = insertelement <2 x i64> poison, i64 %i.ktk, i64 0
  %i.kts = insertelement <2 x i64> %i.ktr, i64 %i.ktl, i64 1
  %i.ktt = shl nsw <2 x i64> %i.kts, splat (i64 2)
  %i.ktu = shufflevector <2 x i64> %i.ktt, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ktv = insertelement <4 x i64> poison, i64 %i.ksx, i64 0
  %i.ktw = shufflevector <4 x i64> %i.ktv, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ktx = add <4 x i64> %i.jhh, %i.ktw
  %i.kty = add <4 x i64> %i.ktu, %9
  %i.ktz = sub <4 x i64> %i.kty, %i.ktx
  %i.kua = icmp ugt <4 x i64> %i.ktz, splat (i64 -32)
  %i.kub = bitcast <4 x i1> %i.kua to i4
  %.not = icmp eq i4 %i.kub, 0
  br i1 %.not, label %vector.ph3305, label %.lr.ph903.i.preheader

vector.ph3305:                                    ; preds = %vector.memcheck3289
  %n.vec3306 = and i64 %i.ktq, 4294967288         ; 6 uses
  %i.kuc = add nuw nsw i64 %n.vec3306, %i.ktn
  %i.kud = add nsw i64 %n.vec3306, %i.ktl
  %i.kue = add nuw nsw i64 %n.vec3306, %i.ktk
  %i.kuf = trunc nuw i64 %n.vec3306 to i32
  %i.kug = shl i32 %i.kuf, 1
  %i.kuh = or disjoint i32 %i.ktc, %i.kug
  br label %vector.body3307

vector.body3307:                                  ; preds = %vector.body3307, %vector.ph3305
  %index3308 = phi i64 [ 0, %vector.ph3305 ], [ %index.next3315, %vector.body3307 ] ; 4 uses
  %i.kui = add nuw i64 %index3308, %i.ktn         ; 3 uses
  %i.kuj = add i64 %index3308, %i.ktl             ; 2 uses
  %i.kuk = add nuw i64 %index3308, %i.ktk         ; 2 uses
  %i.kul = getelementptr inbounds [4 x i8], ptr %i.jgz, i64 %i.kuj
  %wide.load3309 = load <8 x float>, ptr %i.kul, align 4, !tbaa !22, !noalias !277
  %i.kum = getelementptr inbounds nuw [4 x i8], ptr %i.jgz, i64 %i.kui
  %wide.load3310 = load <8 x float>, ptr %i.kum, align 8, !tbaa !22, !noalias !277
  %i.kun = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3310, %wide.load3309
  %i.kuo = getelementptr inbounds nuw [4 x i8], ptr %i.jgz, i64 %i.kuk
  %i.kup = getelementptr inbounds nuw i8, ptr %i.kuo, i64 4
  %wide.load3311 = load <8 x float>, ptr %i.kup, align 4, !tbaa !22, !noalias !277
  %i.kuq = fadd reassoc nsz arcp contract afn <8 x float> %i.kun, %wide.load3311
  %i.kur = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kuq, <8 x float> splat (float 1.000000e-10)) ; 2 uses
  %i.kus = getelementptr [4 x i8], ptr %i.jha, i64 %i.kuj
  %i.kut = getelementptr i8, ptr %i.kus, i64 4
  %wide.load3312 = load <8 x float>, ptr %i.kut, align 4, !tbaa !22, !noalias !277
  %i.kuu = getelementptr inbounds nuw [4 x i8], ptr %i.jha, i64 %i.kui
  %wide.load3313 = load <8 x float>, ptr %i.kuu, align 8, !tbaa !22, !noalias !277
  %i.kuv = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3313, %wide.load3312
  %i.kuw = getelementptr inbounds nuw [4 x i8], ptr %i.jha, i64 %i.kuk
  %wide.load3314 = load <8 x float>, ptr %i.kuw, align 4, !tbaa !22, !noalias !277
  %i.kux = fadd reassoc nsz arcp contract afn <8 x float> %i.kuv, %wide.load3314
  %i.kuy = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kux, <8 x float> splat (float 1.000000e-10))
  %i.kuz = fadd reassoc nsz arcp contract afn <8 x float> %i.kuy, %i.kur
  %i.kva = fdiv reassoc nsz arcp contract afn <8 x float> %i.kur, %i.kuz
  %i.kvb = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %i.kui
  store <8 x float> %i.kva, ptr %i.kvb, align 8, !tbaa !22, !noalias !277
  %index.next3315 = add nuw i64 %index3308, 8     ; 2 uses
  %i.kvc = icmp eq i64 %index.next3315, %n.vec3306
  br i1 %i.kvc, label %middle.block3316, label %vector.body3307, !llvm.loop !343

middle.block3316:                                 ; preds = %vector.body3307
  %cmp.n3317 = icmp eq i64 %n.vec3306, %i.ktq
  br i1 %cmp.n3317, label %._crit_edge904.i, label %.lr.ph903.i.preheader

.lr.ph903.i.preheader:                            ; preds = %vector.memcheck3289, %.lr.ph903.preheader.i, %middle.block3316
  %indvars.iv1029.i.ph = phi i64 [ %i.ktn, %vector.memcheck3289 ], [ %i.ktn, %.lr.ph903.preheader.i ], [ %i.kuc, %middle.block3316 ]
  %indvars.iv1025.i.ph = phi i64 [ %i.ktl, %vector.memcheck3289 ], [ %i.ktl, %.lr.ph903.preheader.i ], [ %i.kud, %middle.block3316 ]
  %indvars.iv1023.i.ph = phi i64 [ %i.ktk, %vector.memcheck3289 ], [ %i.ktk, %.lr.ph903.preheader.i ], [ %i.kue, %middle.block3316 ]
  %.0762898.i.ph = phi i32 [ %i.ktc, %vector.memcheck3289 ], [ %i.ktc, %.lr.ph903.preheader.i ], [ %i.kuh, %middle.block3316 ]
  br label %.lr.ph903.i

._crit_edge904.i:                                 ; preds = %.lr.ph903.i, %middle.block3316, %bb.pg
  %i.kvd = add nuw nsw i32 %.0763905.i, 1         ; 2 uses
  %i.kve = icmp slt i32 %i.kvd, %i.jhr
  %indvars.iv.next1022.i = add i32 %indvars.iv1021.i, 112
  %indvars.iv.next1028.i = add i32 %indvars.iv1027.i, 112
  %indvar.next3291 = add i32 %indvar3290, 1
  br i1 %i.kve, label %bb.pg, label %.preheader828.i.preheader

.preheader828.i.preheader:                        ; preds = %._crit_edge904.i
  %i.kvf = add i32 %smin3070, -9
  %i.kvg = add i32 %smin1163, -9
  br label %.preheader828.i

.lr.ph903.i:                                      ; preds = %.lr.ph903.i.preheader, %.lr.ph903.i
  %indvars.iv1029.i = phi i64 [ %indvars.iv.next1030.i, %.lr.ph903.i ], [ %indvars.iv1029.i.ph, %.lr.ph903.i.preheader ] ; 4 uses
  %indvars.iv1025.i = phi i64 [ %indvars.iv.next1026.i, %.lr.ph903.i ], [ %indvars.iv1025.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %indvars.iv1023.i = phi i64 [ %indvars.iv.next1024.i, %.lr.ph903.i ], [ %indvars.iv1023.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %.0762898.i = phi i32 [ %i.kwc, %.lr.ph903.i ], [ %.0762898.i.ph, %.lr.ph903.i.preheader ]
  %i.kvh = getelementptr inbounds [4 x i8], ptr %i.jgz, i64 %indvars.iv1025.i
  %i.kvi = load float, ptr %i.kvh, align 4, !tbaa !22, !noalias !277
  %i.kvj = getelementptr inbounds nuw [4 x i8], ptr %i.jgz, i64 %indvars.iv1029.i
  %i.kvk = load float, ptr %i.kvj, align 4, !tbaa !22, !noalias !277
  %i.kvl = fadd reassoc nsz arcp contract afn float %i.kvk, %i.kvi
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %i.kvm = getelementptr inbounds nuw [4 x i8], ptr %i.jgz, i64 %indvars.iv.next1024.i
  %i.kvn = load float, ptr %i.kvm, align 4, !tbaa !22, !noalias !277
  %i.kvo = fadd reassoc nsz arcp contract afn float %i.kvl, %i.kvn
  %i.kvp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kvo, float 1.000000e-10) ; 2 uses
  %indvars.iv.next1026.i = add nsw i64 %indvars.iv1025.i, 1 ; 2 uses
  %i.kvq = getelementptr inbounds [4 x i8], ptr %i.jha, i64 %indvars.iv.next1026.i
  %i.kvr = load float, ptr %i.kvq, align 4, !tbaa !22, !noalias !277
  %i.kvs = getelementptr inbounds nuw [4 x i8], ptr %i.jha, i64 %indvars.iv1029.i
  %i.kvt = load float, ptr %i.kvs, align 4, !tbaa !22, !noalias !277
  %i.kvu = fadd reassoc nsz arcp contract afn float %i.kvt, %i.kvr
  %i.kvv = getelementptr inbounds nuw [4 x i8], ptr %i.jha, i64 %indvars.iv1023.i
  %i.kvw = load float, ptr %i.kvv, align 4, !tbaa !22, !noalias !277
  %i.kvx = fadd reassoc nsz arcp contract afn float %i.kvu, %i.kvw
  %i.kvy = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kvx, float 1.000000e-10)
  %i.kvz = fadd reassoc nsz arcp contract afn float %i.kvy, %i.kvp
  %i.kwa = fdiv reassoc nsz arcp contract afn float %i.kvp, %i.kvz
  %i.kwb = getelementptr inbounds nuw [4 x i8], ptr %i.jgv, i64 %indvars.iv1029.i
  store float %i.kwa, ptr %i.kwb, align 4, !tbaa !22, !noalias !277
  %i.kwc = add nuw nsw i32 %.0762898.i, 2         ; 2 uses
  %indvars.iv.next1030.i = add nuw nsw i64 %indvars.iv1029.i, 1
  %i.kwd = icmp slt i32 %i.kwc, %i.knp
  br i1 %i.kwd, label %.lr.ph903.i, label %._crit_edge904.i, !llvm.loop !344

.preheader828.i:                                  ; preds = %.preheader828.i.preheader, %._crit_edge914.i
  %indvar3079 = phi i32 [ 0, %.preheader828.i.preheader ], [ %indvar.next3080, %._crit_edge914.i ] ; 2 uses
  %indvars.iv1038.i = phi i32 [ 452, %.preheader828.i.preheader ], [ %indvars.iv.next1039.i, %._crit_edge914.i ] ; 4 uses
  %indvars.iv1032.i = phi i32 [ 563, %.preheader828.i.preheader ], [ %indvars.iv.next1033.i, %._crit_edge914.i ] ; 2 uses
  %.0755915.i = phi i32 [ 4, %.preheader828.i.preheader ], [ %i.lcg, %._crit_edge914.i ] ; 3 uses
  %i.kwe = mul i32 %indvar3079, 112
  %i.kwf = add i32 %i.kwe, 448
  %i.kwg = zext i32 %i.kwf to i64
  %i.kwh = shl nuw nsw i64 %i.kwg, 1              ; 2 uses
  %scevgep3081 = getelementptr i8, ptr %scevgep3078, i64 %i.kwh
  %i.kwi = shl nuw i32 %.0755915.i, 1
  %i.kwj = and i32 %i.kwi, 14                     ; 2 uses
  %i.kwk = shl nuw nsw i32 %i.kwj, 1
  %i.kwl = lshr i32 %.fr1059, %i.kwk
  %i.kwm = and i32 %i.kwl, 1                      ; 7 uses
  %i.kwn = or disjoint i32 %i.kwm, 4              ; 5 uses
  %i.kwo = icmp slt i32 %i.kwn, %i.knp
  br i1 %i.kwo, label %.lr.ph913.i, label %._crit_edge914.i

.lr.ph913.i:                                      ; preds = %.preheader828.i
  %i.kwp = mul nuw nsw i32 %.0755915.i, 112
  %i.kwq = add nsw i32 %i.kwp, -113
  %i.kwr = add nsw i32 %i.kwq, %i.kwn
  %i.kws = sdiv i32 %i.kwr, 2
  %i.kwt = or disjoint i32 %i.kwm, %i.kwj
  %i.kwu = shl nuw nsw i32 %i.kwt, 1
  %i.kwv = lshr i32 %.fr1059, %i.kwu              ; 2 uses
  %i.kww = and i32 %i.kwv, 3
  %i.kwx = sub nsw i32 2, %i.kww
  %i.kwy = sext i32 %i.kwx to i64
  %i.kwz = getelementptr inbounds [50176 x i8], ptr %i.jhb, i64 %i.kwy ; 10 uses
  %i.kxa = add i32 %i.kwm, %indvars.iv1032.i
  %i.kxb = lshr i32 %i.kxa, 1
  %i.kxc = zext nneg i32 %i.kxb to i64            ; 5 uses
  %i.kxd = sext i32 %i.kws to i64                 ; 5 uses
  %i.kxe = or disjoint i32 %i.kwm, %indvars.iv1038.i
  %i.kxf = lshr exact i32 %indvars.iv1038.i, 1
  %i.kxg = zext nneg i32 %i.kxf to i64            ; 4 uses
  %i.kxh = sext i32 %i.kxe to i64                 ; 5 uses
  %i.kxi = sub i32 %i.kvg, %i.kwm                 ; 2 uses
  %i.kxj = lshr i32 %i.kxi, 1
  %narrow4627 = add nuw i32 %i.kxj, 1
  %i.kxk = zext i32 %narrow4627 to i64            ; 2 uses
  %min.iters.check3232 = icmp ult i32 %i.kxi, 16
  br i1 %min.iters.check3232, label %scalar.ph3231.preheader, label %vector.memcheck3065

scalar.ph3231.preheader:                          ; preds = %vector.body3238, %vector.memcheck3065, %.lr.ph913.i
  %indvars.iv1042.i.ph = phi i64 [ %i.kxh, %vector.memcheck3065 ], [ %i.kxh, %.lr.ph913.i ], [ %i.kyi, %vector.body3238 ]
  %indvars.iv1040.i.ph = phi i64 [ %i.kxg, %vector.memcheck3065 ], [ %i.kxg, %.lr.ph913.i ], [ %i.kyj, %vector.body3238 ]
  %indvars.iv1036.i.ph = phi i64 [ %i.kxd, %vector.memcheck3065 ], [ %i.kxd, %.lr.ph913.i ], [ %i.kyk, %vector.body3238 ]
  %indvars.iv1034.i.ph = phi i64 [ %i.kxc, %vector.memcheck3065 ], [ %i.kxc, %.lr.ph913.i ], [ %i.kyl, %vector.body3238 ]
  %.0754907.i.ph = phi i32 [ %i.kwn, %vector.memcheck3065 ], [ %i.kwn, %.lr.ph913.i ], [ %i.kyo, %vector.body3238 ]
  br label %scalar.ph3231

vector.memcheck3065:                              ; preds = %.lr.ph913.i
  %i.kxl = or disjoint i32 %indvars.iv1038.i, %i.kwm
  %i.kxm = sext i32 %i.kxl to i64
  %i.kxn = shl nsw i64 %i.kxm, 2                  ; 12 uses
  %i.kxo = and i32 %i.kwv, 3
  %narrow4628 = mul nuw nsw i32 %i.kxo, 50176
  %i.kxp = zext nneg i32 %narrow4628 to i64       ; 2 uses
  %i.kxq = sub nsw i64 %i.kxn, %i.kxp             ; 9 uses
  %scevgep3067 = getelementptr i8, ptr %scevgep3066, i64 %i.kxq ; 20 uses
  %i.kxr = sub i32 %i.kvf, %i.kwm
  %i.kxs = lshr i32 %i.kxr, 1
  %i.kxt = zext nneg i32 %i.kxs to i64            ; 2 uses
  %i.kxu = shl nuw nsw i64 %i.kxt, 3              ; 2 uses
  %i.kxv = add nsw i64 %i.kxu, %i.kxn
  %i.kxw = sub nsw i64 %i.kxv, %i.kxp             ; 9 uses
  %scevgep3071 = getelementptr i8, ptr %scevgep3068, i64 %i.kxw ; 20 uses
  %i.kxx = shl nuw nsw i64 %i.kxc, 2              ; 2 uses
  %scevgep3072 = getelementptr i8, ptr %i.jgv, i64 %i.kxx
  %i.kxy = shl nuw nsw i64 %i.kxt, 2              ; 3 uses
  %i.kxz = getelementptr i8, ptr %scevgep3073, i64 %i.kxy
  %scevgep3074 = getelementptr i8, ptr %i.kxz, i64 %i.kxx
  %i.kya = shl nsw i64 %i.kxd, 2                  ; 2 uses
  %scevgep3075 = getelementptr i8, ptr %i.jgv, i64 %i.kya
  %i.kyb = getelementptr i8, ptr %scevgep3076, i64 %i.kxy
  %scevgep3077 = getelementptr i8, ptr %i.kyb, i64 %i.kya
  %i.kyc = getelementptr i8, ptr %scevgep3082, i64 %i.kxy
  %scevgep3083 = getelementptr i8, ptr %i.kyc, i64 %i.kwh
  %scevgep3085 = getelementptr i8, ptr %scevgep3084, i64 %i.kxq
  %scevgep3087 = getelementptr i8, ptr %scevgep3086, i64 %i.kxw
  %scevgep3089 = getelementptr i8, ptr %scevgep3088, i64 %i.kxq
  %scevgep3091 = getelementptr i8, ptr %scevgep3090, i64 %i.kxw
  %scevgep3093 = getelementptr i8, ptr %scevgep3092, i64 %i.kxq
  %scevgep3095 = getelementptr i8, ptr %scevgep3094, i64 %i.kxw
  %scevgep3097 = getelementptr i8, ptr %scevgep3096, i64 %i.kxn
  %i.kyd = add nsw i64 %i.kxu, %i.kxn             ; 9 uses
  %scevgep3099 = getelementptr i8, ptr %scevgep3098, i64 %i.kyd
  %scevgep3101 = getelementptr i8, ptr %scevgep3100, i64 %i.kxn
  %scevgep3103 = getelementptr i8, ptr %scevgep3102, i64 %i.kyd
  %scevgep3105 = getelementptr i8, ptr %scevgep3104, i64 %i.kxq
end_hunk_1
