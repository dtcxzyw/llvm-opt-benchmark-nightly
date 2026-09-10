Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.jbd = shufflevector <4 x i16> %i.jbc, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jbe = mul <2 x i16> %i.jbd, splat (i16 -122)
  %i.jbf = shufflevector <4 x i16> %i.jbc, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.jbg = sub <2 x i16> %i.jbe, %i.jbf
  store <2 x i16> %i.jbg, ptr %i.jbb, align 2, !tbaa !481
  %i.jbh = getelementptr inbounds nuw i8, ptr %i.ixn, i64 28
  %i.jbi = load i16, ptr %i.jbh, align 4, !tbaa !481
  %.reass.7.2.i537 = mul i16 %i.jbi, -122
  %i.jbj = getelementptr inbounds nuw i8, ptr %i.ixn, i64 30
  %i.jbk = load i16, ptr %i.jbj, align 2, !tbaa !481
  %i.jbl = sub i16 %.reass.7.2.i537, %i.jbk
  %i.jbm = getelementptr inbounds nuw i8, ptr %i.ixa, i64 14
  store i16 %i.jbl, ptr %i.jbm, align 2, !tbaa !481
  br label %.loopexit1063.2.i

.loopexit1063.2.i:                                ; preds = %.preheader1062.2.i, %.loopexit1063.1.i
  %i.jbn = add nuw nsw i32 %i.iwy, 601
  %.urem1319.i = urem i32 %i.jbn, 6
  %i.jbo = zext nneg i32 %.urem1319.i to i64
  %i.jbp = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %i.jbo
  %i.jbq = load i8, ptr %i.jbp, align 1, !tbaa !133
  %i.jbr = icmp eq i8 %i.jbq, 1
  %i.jbs = add nuw nsw i32 %.1918.2.i, 1
  %.1918.3.i = select i1 %i.jbr, i32 0, i32 %i.jbs ; 3 uses
  %i.jbt = icmp eq i32 %.1918.3.i, 4
  %i.jbu = icmp eq i32 %.1918.3.i, %i.ixl
  br i1 %i.jbu, label %.preheader1062.3.i, label %.loopexit1063.3.i

.preheader1062.3.i:                               ; preds = %.loopexit1063.2.i
  %i.jbv = and i32 %i.ixl, 2                      ; 5 uses
  %i.jbw = zext nneg i32 %i.jbv to i64
  %i.jbx = getelementptr inbounds nuw [2 x i8], ptr %i.ixa, i64 %i.jbw ; 2 uses
  store i16 -122, ptr %i.jbx, align 4, !tbaa !481
  %i.jby = getelementptr inbounds nuw i8, ptr %i.ixn, i64 6
  %i.jbz = load i16, ptr %i.jby, align 2, !tbaa !481
  %.reass1069.1.3.i = mul i16 %i.jbz, -122
  %i.jca = or i32 %i.ixl, 1
  %i.jcb = zext nneg i32 %i.jca to i64
  %i.jcc = getelementptr inbounds nuw [2 x i8], ptr %i.ixa, i64 %i.jcb
  store i16 %.reass1069.1.3.i, ptr %i.jcc, align 2, !tbaa !481
  %i.jcd = getelementptr inbounds nuw i8, ptr %i.ixn, i64 8
  %i.jce = load i16, ptr %i.jcd, align 8, !tbaa !481
  %i.jcf = xor i32 %i.jbv, 2
  %i.jcg = zext nneg i32 %i.jcf to i64
  %i.jch = getelementptr inbounds nuw [2 x i8], ptr %i.ixa, i64 %i.jcg
  store i16 %i.jce, ptr %i.jch, align 4, !tbaa !481
  %i.jci = getelementptr inbounds nuw i8, ptr %i.ixn, i64 12
  %i.jcj = load i16, ptr %i.jci, align 4, !tbaa !481
  %i.jck = xor i32 %i.jbv, 3
  %i.jcl = zext nneg i32 %i.jck to i64
  %i.jcm = getelementptr inbounds nuw [2 x i8], ptr %i.ixa, i64 %i.jcl
  store i16 %i.jcj, ptr %i.jcm, align 2, !tbaa !481
  %i.jcn = getelementptr inbounds nuw i8, ptr %i.jbx, i64 8
  store i16 -121, ptr %i.jcn, align 4, !tbaa !481
  %i.jco = getelementptr inbounds nuw i8, ptr %i.ixn, i64 20
  %i.jcp = load i16, ptr %i.jco, align 4, !tbaa !481
  %i.jcq = getelementptr inbounds nuw i8, ptr %i.ixn, i64 22
  %i.jcr = load i16, ptr %i.jcq, align 2, !tbaa !481
  %.reass1069.5.3.i = mul i16 %i.jcr, -122
  %i.jcs = add i16 %.reass1069.5.3.i, %i.jcp
  %i.jct = or i32 %i.ixl, 5
  %i.jcu = zext nneg i32 %i.jct to i64
  %i.jcv = getelementptr inbounds nuw [2 x i8], ptr %i.ixa, i64 %i.jcu
  store i16 %i.jcs, ptr %i.jcv, align 2, !tbaa !481
  %i.jcw = getelementptr inbounds nuw i8, ptr %i.ixn, i64 24
  %i.jcx = xor i32 %i.jbv, 6
  %i.jcy = zext nneg i32 %i.jcx to i64
  %i.jcz = getelementptr inbounds nuw [2 x i8], ptr %i.ixa, i64 %i.jcy
  %i.jda = load <4 x i16>, ptr %i.jcw, align 8, !tbaa !481 ; 2 uses
  %i.jdb = shufflevector <4 x i16> %i.jda, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.jdc = mul <2 x i16> %i.jdb, splat (i16 -122)
  %i.jdd = shufflevector <4 x i16> %i.jda, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jde = add <2 x i16> %i.jdc, %i.jdd           ; 2 uses
  %i.jdf = extractelement <2 x i16> %i.jde, i64 0
  store i16 %i.jdf, ptr %i.jcz, align 4, !tbaa !481
  %i.jdg = xor i32 %i.jbv, 7
  %i.jdh = zext nneg i32 %i.jdg to i64
  %i.jdi = getelementptr inbounds nuw [2 x i8], ptr %i.ixa, i64 %i.jdh
  %i.jdj = extractelement <2 x i16> %i.jde, i64 1
  store i16 %i.jdj, ptr %i.jdi, align 2, !tbaa !481
  br label %.loopexit1063.3.i

.loopexit1063.3.i:                                ; preds = %.preheader1062.3.i, %.loopexit1063.2.i
  %i.jdk = add nuw nsw i32 %.1918.3.i, 1
  %.1918.4.i = select i1 %i.ixs, i32 0, i32 %i.jdk ; 2 uses
  %i.jdl = icmp eq i32 %.1918.4.i, 4
  %i.jdm = or i1 %i.jbt, %i.jdl                   ; 2 uses
  %.3851.4.i = select i1 %i.jdm, i16 %i.iwz, i16 %.18491076.i ; 4 uses
  %.3.4.i = select i1 %i.jdm, i16 %i.fxh, i16 %.18451077.i ; 4 uses
  %i.jdn = icmp eq i32 %.1918.4.i, %i.ixl
  br i1 %i.jdn, label %.preheader1062.4.i, label %.loopexit1063.4.i

.preheader1062.4.i:                               ; preds = %.loopexit1063.3.i
  store i16 1, ptr %i.ixa, align 16, !tbaa !481
  %i.jdo = getelementptr inbounds nuw i8, ptr %i.ixn, i64 6
  %i.jdp = load i16, ptr %i.jdo, align 2, !tbaa !481
  %i.jdq = getelementptr inbounds nuw i8, ptr %i.ixa, i64 2
  store i16 %i.jdp, ptr %i.jdq, align 2, !tbaa !481
  %i.jdr = getelementptr inbounds nuw i8, ptr %i.ixn, i64 8
  %i.jds = getelementptr inbounds nuw i8, ptr %i.ixa, i64 4
  %i.jdt = call <3 x i16> @llvm.masked.load.v3i16.p0(ptr nonnull align 8 %i.jdr, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i16> poison), !tbaa !481
  %i.jdu = shufflevector <3 x i16> %i.jdt, <3 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jdv = mul <2 x i16> %i.jdu, splat (i16 122)
  store <2 x i16> %i.jdv, ptr %i.jds, align 4, !tbaa !481
  %i.jdw = getelementptr inbounds nuw i8, ptr %i.ixa, i64 8
  store i16 123, ptr %i.jdw, align 8, !tbaa !481
  %i.jdx = getelementptr inbounds nuw i8, ptr %i.ixn, i64 20
  %i.jdy = getelementptr inbounds nuw i8, ptr %i.ixa, i64 10
  %i.jdz = load <4 x i16>, ptr %i.jdx, align 4, !tbaa !481 ; 2 uses
  %i.jea = shufflevector <4 x i16> %i.jdz, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jeb = mul <2 x i16> %i.jea, splat (i16 122)
  %i.jec = shufflevector <4 x i16> %i.jdz, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.jed = add <2 x i16> %i.jec, %i.jeb
  store <2 x i16> %i.jed, ptr %i.jdy, align 2, !tbaa !481
  %i.jee = getelementptr inbounds nuw i8, ptr %i.ixn, i64 28
  %i.jef = load i16, ptr %i.jee, align 4, !tbaa !481
  %.reass.7.4.i530 = mul i16 %i.jef, 122
  %i.jeg = getelementptr inbounds nuw i8, ptr %i.ixn, i64 30
  %i.jeh = load i16, ptr %i.jeg, align 2, !tbaa !481
  %i.jei = add i16 %i.jeh, %.reass.7.4.i530
  %i.jej = getelementptr inbounds nuw i8, ptr %i.ixa, i64 14
  store i16 %i.jei, ptr %i.jej, align 2, !tbaa !481
  br label %.loopexit1063.4.i

.loopexit1063.4.i:                                ; preds = %.preheader1062.4.i, %.loopexit1063.3.i
  %indvars.iv.next.i507 = add nuw nsw i64 %indvars.iv.i497, 1 ; 2 uses
  %exitcond.not.i508 = icmp eq i64 %indvars.iv.next.i507, 3
  br i1 %exitcond.not.i508, label %bb.ns, label %.preheader1064.i

._crit_edge1251.i:                                ; preds = %.lr.ph1250.split.i, %._crit_edge1247.us.i, %bb.lk
  tail call void @free(ptr noundef %i.fxe) #27
  tail call fastcc void @_vng_lininterpolate(ptr noundef nonnull %i.anw, ptr noundef readonly %i.axt, i32 noundef %i.bo, i32 noundef %i.axj, i32 noundef 9, ptr noundef nonnull readonly %i.x, i32 noundef %i.aph)
  br label %xtrans_markesteijn_interpolate.exit

.lr.ph1250.split.i:                               ; preds = %.lr.ph1250.i, %.lr.ph1250.split.i
  %.09141248.i = phi i32 [ %i.jek, %.lr.ph1250.split.i ], [ %.neg.i509, %.lr.ph1250.i ]
  %i.jek = add i32 %.09141248.i, %reass.sub955.i  ; 2 uses
  %i.jel = icmp slt i32 %i.jek, %i.fyc
  br i1 %i.jel, label %.lr.ph1250.split.i, label %._crit_edge1251.i

xtrans_markesteijn_interpolate.exit:              ; preds = %bb.lj, %._crit_edge1251.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %demosaic_box3.exit

bb.nt:                                            ; preds = %bb.lh
  tail call fastcc void @vng_interpolate(ptr noundef %i.anw, ptr noundef %i.axt, i32 noundef %i.bo, i32 noundef %i.axj, i32 noundef 9, ptr noundef nonnull %i.x, i32 noundef 0)
  br label %demosaic_box3.exit

bb.nu:                                            ; preds = %bb.hz
  br i1 %or.cond31, label %bb.nv, label %bb.nx

bb.nv:                                            ; preds = %bb.nu
  tail call fastcc void @vng_interpolate(ptr noundef %i.anw, ptr noundef %i.axt, i32 noundef %i.bo, i32 noundef %i.axj, i32 noundef %.fr1063, ptr noundef nonnull %i.x, i32 noundef 0)
  br i1 %i.bg, label %bb.nw, label %demosaic_box3.exit

bb.nw:                                            ; preds = %bb.nv
  %i.jem = mul nsw i32 %i.axj, %i.bo
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.anw, i32 noundef %i.jem, ptr noundef nonnull %i.aoy) #27
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.aoz, i32 noundef 1, ptr noundef nonnull %i.aoy) #27
  br label %demosaic_box3.exit

bb.nx:                                            ; preds = %bb.nu
  switch i32 %.0394, label %bb.qh [
    i32 5, label %bb.ny
    i32 6, label %bb.oh
    i32 1, label %bb.qi
  ]

bb.ny:                                            ; preds = %bb.nx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.anw, ptr noundef %i.axt, i32 noundef %i.bo, i32 noundef %i.axj, i32 noundef range(i32 10, 9) %.fr1063, float noundef 0.000000e+00, i32 noundef 10)
  %i.jen = icmp slt i32 %i.axj, 20
  %or.cond.i538 = or i1 %i.aoq, %i.jen
  br i1 %or.cond.i538, label %demosaic_box3.exit, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.jeo = add nsw i32 %i.axj, -21
  %i.jep = sdiv i32 %i.jeo, 92
  %i.jeq = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !499 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jeq, i64 64) ]
  %.not.i.i539 = icmp eq ptr %i.jeq, null
  br i1 %.not.i.i539, label %.preheader833.preheader.i, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jeq, i8 0, i64 50176, i1 false), !noalias !499
  br label %.preheader833.preheader.i

.preheader833.preheader.i:                        ; preds = %bb.oa, %bb.nz
  %i.jer = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 28 uses
  %i.jes = ptrtoaddr ptr %i.jer to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jer, i64 64) ]
  %i.jet = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !499 ; 38 uses
  %i.jeu = ptrtoaddr ptr %i.jet to i64            ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jet, i64 64) ]
  %i.jev = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jev, i64 64) ]
  %i.jew = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 13 uses
  %i.jex = insertelement <2 x ptr> poison, ptr %i.jev, i64 0
  %i.jey = insertelement <2 x ptr> %i.jex, ptr %i.jew, i64 1
  %6 = shufflevector <2 x ptr> %i.jey, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %7 = ptrtoaddr <4 x ptr> %6 to <4 x i64>
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jew, i64 64) ]
  %i.jez = tail call ptr @dt_alloc_aligned(i64 noundef 150528) #27, !noalias !499 ; 61 uses
  %i.jfa = ptrtoaddr ptr %i.jez to i64            ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jez, i64 64) ]
  %i.jfb = getelementptr inbounds nuw i8, ptr %i.jez, i64 50176 ; 24 uses
  %i.jfc = getelementptr inbounds nuw i8, ptr %i.jez, i64 100352 ; 12 uses
  %scevgep2954 = getelementptr i8, ptr %i.jez, i64 -1344
  %scevgep2956 = getelementptr i8, ptr %i.jez, i64 101700
  %scevgep2958 = getelementptr i8, ptr %i.jeq, i64 -452
  %scevgep2960 = getelementptr i8, ptr %i.jeq, i64 456
  %scevgep3041 = getelementptr i8, ptr %i.jez, i64 100352
  %scevgep3043 = getelementptr i8, ptr %i.jez, i64 100356
  %scevgep3046 = getelementptr i8, ptr %i.jer, i64 8
  %scevgep3049 = getelementptr i8, ptr %i.jer, i64 8
  %scevgep3051 = getelementptr i8, ptr %i.jer, i64 8
  %scevgep3055 = getelementptr i8, ptr %i.jer, i64 12
  %scevgep3057 = getelementptr i8, ptr %i.jez, i64 99900
  %scevgep3059 = getelementptr i8, ptr %i.jez, i64 99904
  %scevgep3061 = getelementptr i8, ptr %i.jez, i64 100804
  %scevgep3063 = getelementptr i8, ptr %i.jez, i64 100808
  %scevgep3065 = getelementptr i8, ptr %i.jez, i64 98996
  %scevgep3067 = getelementptr i8, ptr %i.jez, i64 99000
  %scevgep3069 = getelementptr i8, ptr %i.jez, i64 50176
  %scevgep3071 = getelementptr i8, ptr %i.jez, i64 50180
  %scevgep3073 = getelementptr i8, ptr %i.jez, i64 49272
  %scevgep3075 = getelementptr i8, ptr %i.jez, i64 49276
  %scevgep3077 = getelementptr i8, ptr %i.jez, i64 99908
  %scevgep3079 = getelementptr i8, ptr %i.jez, i64 99912
  %scevgep3081 = getelementptr i8, ptr %i.jez, i64 100796
  %scevgep3083 = getelementptr i8, ptr %i.jez, i64 100800
  %scevgep3085 = getelementptr i8, ptr %i.jez, i64 99020
  %scevgep3087 = getelementptr i8, ptr %i.jez, i64 99024
  %scevgep3089 = getelementptr i8, ptr %i.jez, i64 49288
  %scevgep3091 = getelementptr i8, ptr %i.jez, i64 49292
  %scevgep3093 = getelementptr i8, ptr %i.jez, i64 101684
  %scevgep3095 = getelementptr i8, ptr %i.jez, i64 101688
  %scevgep3097 = getelementptr i8, ptr %i.jez, i64 51064
  %scevgep3099 = getelementptr i8, ptr %i.jez, i64 51068
  %scevgep3101 = getelementptr i8, ptr %i.jez, i64 101708
  %scevgep3103 = getelementptr i8, ptr %i.jez, i64 101712
  %scevgep3105 = getelementptr i8, ptr %i.jez, i64 51080
  %scevgep3107 = getelementptr i8, ptr %i.jez, i64 51084
  %scevgep3109 = getelementptr i8, ptr %i.jez, i64 49724
  %scevgep3111 = getelementptr i8, ptr %i.jez, i64 49728
  %scevgep3113 = getelementptr i8, ptr %i.jez, i64 49732
  %scevgep3115 = getelementptr i8, ptr %i.jez, i64 49736
  %scevgep3117 = getelementptr i8, ptr %i.jez, i64 50620
  %scevgep3119 = getelementptr i8, ptr %i.jez, i64 50624
  %scevgep3121 = getelementptr i8, ptr %i.jez, i64 50628
  %scevgep3123 = getelementptr i8, ptr %i.jez, i64 50632
  %i.jfd = insertelement <4 x i64> poison, i64 %i.jes, i64 0
  %i.jfe = shufflevector <4 x i64> %i.jfd, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jff = or disjoint <4 x i64> %i.jfe, <i64 4, i64 8, i64 8, i64 4>
  %scevgep3299 = getelementptr i8, ptr %i.jet, i64 -1344
  %scevgep3304 = getelementptr i8, ptr %i.jet, i64 -440
  %scevgep3306 = getelementptr i8, ptr %i.jet, i64 -892
  %scevgep3308 = getelementptr i8, ptr %i.jet, i64 12
  %scevgep3310 = getelementptr i8, ptr %i.jet, i64 -1320
  %scevgep3312 = getelementptr i8, ptr %i.jet, i64 -432
  %scevgep3314 = getelementptr i8, ptr %i.jet, i64 -876
  %scevgep3324 = getelementptr i8, ptr %i.jet, i64 -1344
  %scevgep3326 = getelementptr i8, ptr %i.jet, i64 1364
  %scevgep3382 = getelementptr i8, ptr %i.jez, i64 50176
  %scevgep3384 = getelementptr i8, ptr %i.jez, i64 50180
  %scevgep3386 = getelementptr i8, ptr %i.jet, i64 -1792
  %scevgep3388 = getelementptr i8, ptr %i.jet, i64 1796
  %scevgep3390 = getelementptr i8, ptr %i.jer, i64 -448
  %scevgep3392 = getelementptr i8, ptr %i.jer, i64 452
  %scevgep3394 = getelementptr i8, ptr %i.jeq, i64 -452
  %scevgep3396 = getelementptr i8, ptr %i.jeq, i64 456
  %scevgep3473 = getelementptr i8, ptr %i.jer, i64 4
  %scevgep3475 = getelementptr i8, ptr %i.jet, i64 -452
  %scevgep3477 = getelementptr i8, ptr %i.jet, i64 456
  %scevgep3509 = getelementptr i8, ptr %i.jeq, i64 16
  %scevgep3560 = getelementptr i8, ptr %i.jet, i64 -1328
  %scevgep3562 = getelementptr i8, ptr %i.jet, i64 1344
  %invariant.op4871 = sub i64 %i.jfa, %i.jeu
  %invariant.op4873 = sub i64 %i.jfa, %i.jeu
  br label %.preheader833.i

.preheader833.i:                                  ; preds = %._crit_edge939.i, %.preheader833.preheader.i
  %indvars.iv1055.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next1056.i, %._crit_edge939.i ] ; 2 uses
  %indvars.iv947.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next948.i, %._crit_edge939.i ] ; 2 uses
  %.0740941.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %i.jgd, %._crit_edge939.i ] ; 4 uses
  %i.jfg = mul nuw nsw i32 %.0740941.i, 92        ; 5 uses
  %i.jfh = add nuw nsw i32 %i.jfg, 112            ; 2 uses
  %i.jfi = tail call i32 @llvm.smin.i32(i32 %i.jfh, i32 %i.axj) ; 3 uses
  %i.jfj = sub nsw i32 %i.jfi, %i.jfg             ; 6 uses
  %i.jfk = icmp sgt i32 %i.jfh, %i.axj
  %i.jfl = icmp sgt i32 %i.axj, %i.jfg
  %i.jfm = add nsw i32 %i.jfj, -3                 ; 2 uses
  %i.jfn = tail call i32 @llvm.smin.i32(i32 %i.jfm, i32 5)
  %i.jfo = icmp sgt i32 %i.jfj, 6                 ; 2 uses
  %i.jfp = add nsw i32 %i.jfj, -4                 ; 5 uses
  %i.jfq = icmp sgt i32 %i.jfj, 8                 ; 3 uses
  %i.jfr = add nsw i32 %i.jfj, -2
  %i.jfs = icmp sgt i32 %i.jfj, 4
  %i.jft = icmp eq i32 %.0740941.i, 0
  %i.jfu = select i1 %i.jft, i32 9, i32 10        ; 3 uses
  %i.jfv = add nuw nsw i32 %i.jfu, %i.jfg         ; 2 uses
  %i.jfw = icmp eq i32 %.0740941.i, %i.jep        ; 2 uses
  %.neg.i540 = select i1 %i.jfw, i32 -9, i32 -10
  %i.jfx = add nsw i32 %i.jfi, %.neg.i540         ; 2 uses
  %i.jfy = icmp slt i32 %i.jfv, %i.jfx
  %i.jfz = sext i32 %i.jfn to i64
  %i.jga = add i32 %i.jfu, %indvars.iv1055.i
  %i.jgb = mul i32 %i.jga, %i.bo
  %i.jgc = mul nuw nsw i32 %i.jfu, 112
  %invariant.op.i = add nsw i64 %i.jfz, -1
  br label %bb.ob

._crit_edge942.split.i:                           ; preds = %._crit_edge939.i
  tail call void @free(ptr noundef %i.jet) #27, !noalias !499
  tail call void @free(ptr noundef %i.jez) #27, !noalias !499
  tail call void @free(ptr noundef %i.jeq) #27, !noalias !499
  tail call void @free(ptr noundef %i.jer) #27, !noalias !499
  tail call void @free(ptr noundef %i.jev) #27, !noalias !499
  tail call void @free(ptr noundef %i.jew) #27, !noalias !499
  br label %demosaic_box3.exit

._crit_edge939.i:                                 ; preds = %._crit_edge935.split.i
  %i.jgd = add nuw nsw i32 %.0740941.i, 1
  %indvars.iv.next948.i = add i32 %indvars.iv947.i, %i.aov
  %indvars.iv.next1056.i = add nuw i32 %indvars.iv1055.i, 92
  br i1 %i.jfw, label %._crit_edge942.split.i, label %.preheader833.i

bb.ob:                                            ; preds = %._crit_edge935.split.i, %.preheader833.i
  %indvars.iv1057.i = phi i32 [ %i.jgb, %.preheader833.i ], [ %indvars.iv.next1058.i, %._crit_edge935.split.i ] ; 2 uses
  %indvars.iv949.i = phi i32 [ %indvars.iv947.i, %.preheader833.i ], [ %indvars.iv.next950.i, %._crit_edge935.split.i ] ; 2 uses
  %.0745937.i = phi i32 [ 0, %.preheader833.i ], [ %i.lrl, %._crit_edge935.split.i ] ; 5 uses
  %i.jge = phi <2 x i32> [ <i32 112, i32 0>, %.preheader833.i ], [ %i.lrm, %._crit_edge935.split.i ] ; 5 uses
  %i.jgf = extractelement <2 x i32> %i.jge, i64 0 ; 4 uses
  %smin3634 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.jgf)
  %i.jgg = mul i32 %.0745937.i, 92
  %i.jgh = or disjoint i32 %i.jgg, 1
  %smax3635 = call i32 @llvm.smax.i32(i32 %smin3634, i32 %i.jgh)
  %i.jgi = extractelement <2 x i32> %i.jge, i64 1 ; 5 uses
  %i.jgj = add i32 %i.jgi, -1
  %i.jgk = add i32 %smax3635, %i.jgj              ; 3 uses
  %i.jgl = zext i32 %i.jgk to i64
  %i.jgm = add nuw nsw i64 %i.jgl, 1              ; 5 uses
  %smin3557 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.jgf)
  %i.jgn = add i32 %smin3557, %i.jgi
  %smin3558 = call i32 @llvm.smin.i32(i32 %i.jgn, i32 112)
  %i.jgo = add i32 %smin3558, -4
  %i.jgp = sext i32 %i.jgo to i64
  %i.jgq = shl nsw i64 %i.jgp, 2                  ; 2 uses
  %smin3511 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.jgf)
  %i.jgr = add i32 %smin3511, %i.jgi
  %smin3512 = call i32 @llvm.smin.i32(i32 %i.jgr, i32 112)
  %i.jgs = add i32 %smin3512, -4
  %i.jgt = sext i32 %i.jgs to i64
  %i.jgu = shl nsw i64 %i.jgt, 2                  ; 5 uses
  %scevgep3522 = getelementptr i8, ptr %scevgep3521, i64 %i.jgu
  %smin3318 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.jgf)
  %i.jgv = add i32 %smin3318, %i.jgi
  %smin3319 = call i32 @llvm.smin.i32(i32 %i.jgv, i32 112)
  %i.jgw = add i32 %smin3319, -3
  %smax3320 = call i32 @llvm.smax.i32(i32 %i.jgw, i32 5)
  %i.jgx = add nsw i32 %smax3320, -4
  %i.jgy = lshr i32 %i.jgx, 1
  %i.jgz = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.awb, <2 x i32> %i.jge)
  %i.jha = shufflevector <2 x i32> %i.jgz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jhb = add i32 %i.jgi, -1
  %i.jhc = shufflevector <2 x i32> %i.jge, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %i.jhd = add <2 x i32> %i.jha, %i.jhc
  %i.jhe = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.jhd, <2 x i32> splat (i32 112)) ; 2 uses
  %i.jhf = extractelement <2 x i32> %i.jhe, i64 0 ; 11 uses
  %i.jhg = add <2 x i32> %i.jhe, splat (i32 -3)
  %i.jhh = add i32 %i.jhf, -3                     ; 2 uses
  %i.jhi = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jhg, <2 x i32> splat (i32 5))
  %i.jhj = add nsw <2 x i32> %i.jhi, splat (i32 -4)
  %i.jhk = add i32 %i.jhf, -4
  %i.jhl = sext i32 %i.jhk to i64                 ; 10 uses
  %i.jhm = sext i32 %i.jhh to i64                 ; 2 uses
  %i.jhn = add nsw i64 %i.jhl, 336
  %i.jho = lshr <2 x i32> %i.jhj, splat (i32 1)
  %i.jhp = mul i32 %.0745937.i, 92                ; 8 uses
  %i.jhq = add i32 %i.jhp, 112                    ; 2 uses
  %i.jhr = tail call i32 @llvm.smin.i32(i32 %i.jhq, i32 %i.bo) ; 4 uses
  %i.jhs = sub nsw i32 %i.jhr, %i.jhp             ; 5 uses
  %i.jht = tail call i32 @llvm.smin.i32(i32 %i.jhs, i32 112) ; 3 uses
  %i.jhu = icmp sgt i32 %i.jhq, %i.bo
  %or.cond794.i = select i1 %i.jfk, i1 true, i1 %i.jhu
  br i1 %or.cond794.i, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jeq, i8 0, i64 50176, i1 false), !noalias !499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(150528) %i.jez, i8 0, i64 150528, i1 false), !noalias !499
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %i.jhv = icmp sgt i32 %i.bo, %i.jhp
  %or.cond943.i = select i1 %i.jfl, i1 %i.jhv, i1 false
  br i1 %or.cond943.i, label %iter.check3657.preheader, label %._crit_edge842.split.i

iter.check3657.preheader:                         ; preds = %bb.od
  %min.iters.check3637 = icmp ult i32 %i.jgk, 3
  %min.iters.check3639 = icmp ult i32 %i.jgk, 31
  %i.jhw = and i64 %i.jgm, 28
  %n.vec3641 = and i64 %i.jgm, 8589934560         ; 6 uses
  %i.jhx = trunc i64 %n.vec3641 to i32
  %i.jhy = add i32 %i.jhp, %i.jhx
  %cmp.n3652 = icmp eq i64 %i.jgm, %n.vec3641
  %min.epilog.iters.check3660 = icmp eq i64 %i.jhw, 0
  %n.vec3662 = and i64 %i.jgm, 8589934588         ; 5 uses
  %i.jhz = trunc i64 %n.vec3662 to i32
  %i.jia = add i32 %i.jhp, %i.jhz
  %cmp.n3670 = icmp eq i64 %i.jgm, %n.vec3662
  br label %iter.check3657

._crit_edge842.split.i:                           ; preds = %._crit_edge.i547, %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !501
  br i1 %i.jfo, label %.lr.ph850.i, label %._crit_edge851.split.thread.i

._crit_edge851.split.thread.i:                    ; preds = %._crit_edge842.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !501
  br label %.preheader832.i

.lr.ph850.i:                                      ; preds = %._crit_edge842.split.i
  %i.jib = icmp sgt i32 %i.jhs, 8
  br i1 %i.jib, label %.lr.ph846.i.preheader, label %._crit_edge851.split.i

.lr.ph846.i.preheader:                            ; preds = %.lr.ph850.i
  %i.jic = add nsw i64 %i.jhl, -4                 ; 3 uses
  %min.iters.check3604 = icmp ult i64 %i.jic, 8
  %n.vec3606 = and i64 %i.jic, -8                 ; 4 uses
  %i.jid = or disjoint i64 %n.vec3606, 4
  %cmp.n3618 = icmp eq i64 %i.jic, %n.vec3606
  br label %.lr.ph846.i

iter.check3657:                                   ; preds = %iter.check3657.preheader, %._crit_edge.i547
  %indvars.iv951.i = phi i32 [ %indvars.iv.next952.i, %._crit_edge.i547 ], [ %indvars.iv949.i, %iter.check3657.preheader ] ; 3 uses
  %indvars.iv.i546 = phi i32 [ %indvars.iv.next.i548, %._crit_edge.i547 ], [ 0, %iter.check3657.preheader ] ; 3 uses
  %.0746839.i = phi i32 [ %i.jkr, %._crit_edge.i547 ], [ %i.jfg, %iter.check3657.preheader ] ; 2 uses
  %i.jie = zext i32 %indvars.iv.i546 to i64       ; 6 uses
  %i.jif = zext i32 %indvars.iv951.i to i64       ; 6 uses
  %i.jig = shl i32 %.0746839.i, 2
  %i.jih = and i32 %i.jig, 28                     ; 2 uses
  %i.jii = lshr i32 %.fr1063, %i.jih
  %i.jij = and i32 %i.jii, 3
  %i.jik = or disjoint i32 %i.jih, 2
  %i.jil = lshr i32 %.fr1063, %i.jik
  %i.jim = and i32 %i.jil, 3
  %i.jin = zext nneg i32 %i.jim to i64            ; 2 uses
  %i.jio = getelementptr inbounds nuw [50176 x i8], ptr %i.jez, i64 %i.jin ; 3 uses
  %i.jip = zext nneg i32 %i.jij to i64            ; 2 uses
  %i.jiq = getelementptr inbounds nuw [50176 x i8], ptr %i.jez, i64 %i.jip ; 3 uses
  br i1 %min.iters.check3637, label %vec.epilog.scalar.ph3658.preheader, label %vector.memcheck3621

vector.memcheck3621:                              ; preds = %iter.check3657
  %i.jir = zext i32 %indvars.iv.i546 to i64
  %i.jis = shl nuw nsw i64 %i.jir, 2              ; 3 uses
  %i.jit = add i64 %i.jis, %i.jeu
  %i.jiu = zext i32 %indvars.iv951.i to i64
  %i.jiv = add nsw i64 %i.axs, %i.jiu
  %i.jiw = shl nsw i64 %i.jiv, 2
  %i.jix = add i64 %i.jiw, %.13625                ; 3 uses
  %i.jiy = mul nuw nsw i64 %i.jip, 50176          ; 2 uses
  %i.jiz = mul nuw nsw i64 %i.jin, 50176          ; 2 uses
  %.reass4872 = add i64 %i.jiz, %invariant.op4871
  %diff.check3623 = icmp ugt i64 %.reass4872, -128
  %i.jja = add i64 %i.jiz, %i.jfa
  %i.jjb = add i64 %i.jja, %i.jis
  %i.jjc = sub i64 %i.jix, %i.jjb
  %diff.check3626 = icmp ugt i64 %i.jjc, -128
  %conflict.rdx3627 = or i1 %diff.check3623, %diff.check3626
  %.reass4874 = add i64 %i.jiy, %invariant.op4873
  %diff.check3628 = icmp ugt i64 %.reass4874, -128
  %conflict.rdx3629 = or i1 %conflict.rdx3627, %diff.check3628
  %i.jjd = add i64 %i.jiy, %i.jfa
  %i.jje = add i64 %i.jjd, %i.jis
  %i.jjf = sub i64 %i.jix, %i.jje
  %diff.check3630 = icmp ugt i64 %i.jjf, -128
  %conflict.rdx3631 = or i1 %conflict.rdx3629, %diff.check3630
  %i.jjg = sub i64 %i.jix, %i.jit
  %diff.check3632 = icmp ugt i64 %i.jjg, -128
  %conflict.rdx3633 = or i1 %conflict.rdx3631, %diff.check3632
end_hunk_0
begin_hunk_1_@process:bb.a
vector.scevcheck3295:                             ; preds = %.lr.ph894.i
  %i.kmh = zext i32 %indvars.iv1009.i to i64      ; 2 uses
  %i.kmi = shl nuw nsw i64 %i.kmh, 2              ; 7 uses
  %scevgep3315 = getelementptr i8, ptr %scevgep3314, i64 %i.kmi ; 2 uses
  %scevgep3313 = getelementptr i8, ptr %scevgep3312, i64 %i.kmi ; 2 uses
  %scevgep3311 = getelementptr i8, ptr %scevgep3310, i64 %i.kmi ; 2 uses
  %scevgep3309 = getelementptr i8, ptr %scevgep3308, i64 %i.kmi ; 2 uses
  %scevgep3307 = getelementptr i8, ptr %scevgep3306, i64 %i.kmi ; 2 uses
  %scevgep3305 = getelementptr i8, ptr %scevgep3304, i64 %i.kmi ; 2 uses
  %scevgep3300 = getelementptr i8, ptr %scevgep3299, i64 %i.kmi ; 2 uses
  %i.kmj = lshr exact i64 %i.kmh, 1               ; 2 uses
  %i.kmk = trunc nuw nsw i64 %i.kmj to i32
  %i.kml = or disjoint i32 %i.kmk, 1
  %i.kmm = add i32 %i.kaa, %i.kml
  %i.kmn = zext i32 %i.kmm to i64
  %i.kmo = xor i64 %i.kmj, -2
  %i.kmp = add nsw i64 %i.kmo, %i.kmn             ; 2 uses
  %mul.result3302 = shl nsw i64 %i.kmp, 3         ; 7 uses
  %mul.overflow3303 = icmp ugt i64 %i.kmp, 2305843009213693951
  %i.kmq = getelementptr i8, ptr %scevgep3300, i64 %mul.result3302
  %i.kmr = icmp ult ptr %i.kmq, %scevgep3300
  %i.kms = getelementptr i8, ptr %scevgep3305, i64 %mul.result3302
  %i.kmt = icmp ult ptr %i.kms, %scevgep3305
  %i.kmu = getelementptr i8, ptr %scevgep3307, i64 %mul.result3302
  %i.kmv = icmp ult ptr %i.kmu, %scevgep3307
  %i.kmw = or i1 %i.kmv, %mul.overflow3303
  %i.kmx = getelementptr i8, ptr %scevgep3309, i64 %mul.result3302
  %i.kmy = icmp ult ptr %i.kmx, %scevgep3309
  %i.kmz = getelementptr i8, ptr %scevgep3311, i64 %mul.result3302
  %i.kna = icmp ult ptr %i.kmz, %scevgep3311
  %i.knb = getelementptr i8, ptr %scevgep3313, i64 %mul.result3302
  %i.knc = icmp ult ptr %i.knb, %scevgep3313
  %i.knd = getelementptr i8, ptr %scevgep3315, i64 %mul.result3302
  %i.kne = icmp ult ptr %i.knd, %scevgep3315
  %i.knf = or i1 %i.kmt, %i.kmr
  %i.kng = or i1 %i.knf, %i.kmw
  %i.knh = or i1 %i.kmy, %i.kng
  %i.kni = or i1 %i.kna, %i.knh
  %i.knj = or i1 %i.knc, %i.kni
  %i.knk = or i1 %i.kne, %i.knj
  br i1 %i.knk, label %scalar.ph3339.preheader, label %vector.memcheck3316

vector.memcheck3316:                              ; preds = %vector.scevcheck3295
  %bound03328 = icmp ult ptr %scevgep3317, %scevgep3323
  %bound13329 = icmp ult ptr %scevgep3322, %scevgep3321
  %found.conflict3330 = and i1 %bound03328, %bound13329
  %bound03331 = icmp ult ptr %scevgep3317, %scevgep3327
  %bound13332 = icmp ult ptr %scevgep3325, %scevgep3321
  %found.conflict3333 = and i1 %bound03331, %bound13332
  %conflict.rdx3334 = or i1 %found.conflict3330, %found.conflict3333
  %bound03335 = icmp ult ptr %scevgep3322, %scevgep3327
  %bound13336 = icmp ult ptr %scevgep3325, %scevgep3323
  %found.conflict3337 = and i1 %bound03335, %bound13336
  %conflict.rdx3338 = or i1 %conflict.rdx3334, %found.conflict3337
  br i1 %conflict.rdx3338, label %scalar.ph3339.preheader, label %vector.ph3341

vector.ph3341:                                    ; preds = %vector.memcheck3316
  %i.knl = and i64 %i.kmg, 7                      ; 2 uses
  %i.knm = icmp eq i64 %i.knl, 0
  %i.knn = select i1 %i.knm, i64 8, i64 %i.knl
  %n.vec3342 = sub nsw i64 %i.kmg, %i.knn         ; 3 uses
  %i.kno = shl nsw i64 %n.vec3342, 1
  %i.knp = add nsw i64 %i.kno, %i.kly
  %i.knq = add nsw i64 %i.klz, %n.vec3342
  %broadcast.splatinsert3343 = insertelement <8 x i64> poison, i64 %i.kly, i64 0
  %broadcast.splat3344 = shufflevector <8 x i64> %broadcast.splatinsert3343, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3345 = add nuw nsw <8 x i64> %broadcast.splat3344, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3346

vector.body3346:                                  ; preds = %vector.body3346, %vector.ph3341
  %index3347 = phi i64 [ 0, %vector.ph3341 ], [ %index.next3376, %vector.body3346 ] ; 2 uses
  %vec.ind3348 = phi <8 x i64> [ %induction3345, %vector.ph3341 ], [ %vec.ind.next3377, %vector.body3346 ] ; 2 uses
  %i.knr = add nuw i64 %i.klz, %index3347         ; 2 uses
  %wide.gep3349 = getelementptr [4 x i8], ptr %i.jet, <8 x i64> %vec.ind3348 ; 9 uses
  %i.kns = extractelement <8 x ptr> %wide.gep3349, i64 0 ; 6 uses
  %wide.gep3350 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -1356
  %wide.masked.gather3351 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3350, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %wide.gep3352 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -452
  %wide.masked.gather3353 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3352, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.knt = getelementptr inbounds nuw i8, ptr %i.kns, i64 452
  %wide.vec3354 = load <16 x float>, ptr %i.knt, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3355 = shufflevector <16 x float> %wide.vec3354, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.knu = getelementptr inbounds nuw i8, ptr %i.kns, i64 1356
  %wide.vec3356 = load <16 x float>, ptr %i.knu, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3357 = shufflevector <16 x float> %wide.vec3356, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3358 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -904
  %wide.masked.gather3359 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3358, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.knv = getelementptr inbounds nuw i8, ptr %i.kns, i64 904
  %wide.vec3360 = load <16 x float>, ptr %i.knv, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3361 = shufflevector <16 x float> %wide.vec3360, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.knw = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3361, %wide.masked.gather3359
  %i.knx = fmul reassoc nsz arcp contract afn <8 x float> %i.knw, splat (float -3.000000e+00)
  %wide.masked.gather3362 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3349, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.kny = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3362, splat (float 6.000000e+00)
  %i.knz = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3353, %strided.vec3355
  %i.koa = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3351, %i.knz
  %i.kob = fadd reassoc nsz arcp contract afn <8 x float> %i.koa, %strided.vec3357
  %i.koc = fadd reassoc nsz arcp contract afn <8 x float> %i.kob, %i.knx
  %i.kod = fadd reassoc nsz arcp contract afn <8 x float> %i.koc, %i.kny ; 2 uses
  %i.koe = fmul reassoc nsz arcp contract afn <8 x float> %i.kod, %i.kod
  %i.kof = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %i.knr
  store <8 x float> %i.koe, ptr %i.kof, align 4, !tbaa !12, !alias.scope !520, !noalias !521
  %wide.gep3363 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -1332
  %wide.masked.gather3364 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3363, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %wide.gep3365 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -444
  %wide.masked.gather3366 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3365, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.kog = getelementptr inbounds nuw i8, ptr %i.kns, i64 444
  %wide.vec3367 = load <16 x float>, ptr %i.kog, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3368 = shufflevector <16 x float> %wide.vec3367, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.koh = getelementptr inbounds nuw i8, ptr %i.kns, i64 1332
  %wide.vec3369 = load <16 x float>, ptr %i.koh, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3370 = shufflevector <16 x float> %wide.vec3369, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3371 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -888
  %wide.masked.gather3372 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3371, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.koi = getelementptr inbounds nuw i8, ptr %i.kns, i64 888
  %wide.vec3373 = load <16 x float>, ptr %i.koi, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3374 = shufflevector <16 x float> %wide.vec3373, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.koj = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3374, %wide.masked.gather3372
  %i.kok = fmul reassoc nsz arcp contract afn <8 x float> %i.koj, splat (float -3.000000e+00)
  %wide.masked.gather3375 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3349, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.kol = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3375, splat (float 6.000000e+00)
  %i.kom = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3366, %strided.vec3368
  %i.kon = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3364, %i.kom
  %i.koo = fadd reassoc nsz arcp contract afn <8 x float> %i.kon, %strided.vec3370
  %i.kop = fadd reassoc nsz arcp contract afn <8 x float> %i.koo, %i.kok
  %i.koq = fadd reassoc nsz arcp contract afn <8 x float> %i.kop, %i.kol ; 2 uses
  %i.kor = fmul reassoc nsz arcp contract afn <8 x float> %i.koq, %i.koq
  %i.kos = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %i.knr
  store <8 x float> %i.kor, ptr %i.kos, align 4, !tbaa !12, !alias.scope !522, !noalias !523
  %index.next3376 = add nuw i64 %index3347, 8     ; 2 uses
  %vec.ind.next3377 = add nuw nsw <8 x i64> %vec.ind3348, splat (i64 16)
  %i.kot = icmp eq i64 %index.next3376, %n.vec3342
  br i1 %i.kot, label %scalar.ph3339.preheader, label %vector.body3346, !llvm.loop !295

._crit_edge895.i:                                 ; preds = %scalar.ph3339
  %i.kou = add nuw nsw i32 %.0767896.i, 1         ; 2 uses
  %i.kov = icmp slt i32 %i.kou, %i.jfm
  %indvars.iv.next1010.i = add i32 %indvars.iv1009.i, 112
  br i1 %i.kov, label %.lr.ph894.i, label %.preheader829.i

scalar.ph3339:                                    ; preds = %scalar.ph3339.preheader, %scalar.ph3339
  %indvars.iv1013.i = phi i64 [ %indvars.iv.next1014.i, %scalar.ph3339 ], [ %indvars.iv1013.i.ph, %scalar.ph3339.preheader ] ; 2 uses
  %indvars.iv1011.i = phi i64 [ %indvars.iv.next1012.i, %scalar.ph3339 ], [ %indvars.iv1011.i.ph, %scalar.ph3339.preheader ] ; 3 uses
  %i.kow = getelementptr [4 x i8], ptr %i.jet, i64 %indvars.iv1013.i ; 14 uses
  %i.kox = getelementptr i8, ptr %i.kow, i64 -1356
  %i.koy = load float, ptr %i.kox, align 4, !tbaa !12, !noalias !499
  %i.koz = getelementptr i8, ptr %i.kow, i64 -452
  %i.kpa = load float, ptr %i.koz, align 4, !tbaa !12, !noalias !499
  %i.kpb = getelementptr inbounds nuw i8, ptr %i.kow, i64 452
  %i.kpc = load float, ptr %i.kpb, align 4, !tbaa !12, !noalias !499
  %i.kpd = getelementptr inbounds nuw i8, ptr %i.kow, i64 1356
  %i.kpe = load float, ptr %i.kpd, align 4, !tbaa !12, !noalias !499
  %i.kpf = getelementptr i8, ptr %i.kow, i64 -904
  %i.kpg = load float, ptr %i.kpf, align 4, !tbaa !12, !noalias !499
  %i.kph = getelementptr inbounds nuw i8, ptr %i.kow, i64 904
  %i.kpi = load float, ptr %i.kph, align 4, !tbaa !12, !noalias !499
  %i.kpj = fadd reassoc nsz arcp contract afn float %i.kpi, %i.kpg
  %.neg806.i = fmul reassoc nsz arcp contract afn float %i.kpj, -3.000000e+00
  %i.kpk = load float, ptr %i.kow, align 4, !tbaa !12, !noalias !499
  %i.kpl = fmul reassoc nsz arcp contract afn float %i.kpk, 6.000000e+00
  %i.kpm = fadd reassoc nsz arcp contract afn float %i.kpa, %i.kpc
  %.neg807.i = fsub reassoc nsz arcp contract afn float %i.koy, %i.kpm
  %i.kpn = fadd reassoc nsz arcp contract afn float %.neg807.i, %i.kpe
  %i.kpo = fadd reassoc nsz arcp contract afn float %i.kpn, %.neg806.i
  %i.kpp = fadd reassoc nsz arcp contract afn float %i.kpo, %i.kpl ; 2 uses
  %i.kpq = fmul reassoc nsz arcp contract afn float %i.kpp, %i.kpp
  %i.kpr = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %indvars.iv1011.i
  store float %i.kpq, ptr %i.kpr, align 4, !tbaa !12, !noalias !499
  %i.kps = getelementptr i8, ptr %i.kow, i64 -1332
  %i.kpt = load float, ptr %i.kps, align 4, !tbaa !12, !noalias !499
  %i.kpu = getelementptr i8, ptr %i.kow, i64 -444
  %i.kpv = load float, ptr %i.kpu, align 4, !tbaa !12, !noalias !499
  %i.kpw = getelementptr inbounds nuw i8, ptr %i.kow, i64 444
  %i.kpx = load float, ptr %i.kpw, align 4, !tbaa !12, !noalias !499
  %i.kpy = getelementptr inbounds nuw i8, ptr %i.kow, i64 1332
  %i.kpz = load float, ptr %i.kpy, align 4, !tbaa !12, !noalias !499
  %i.kqa = getelementptr i8, ptr %i.kow, i64 -888
  %i.kqb = load float, ptr %i.kqa, align 4, !tbaa !12, !noalias !499
  %i.kqc = getelementptr inbounds nuw i8, ptr %i.kow, i64 888
  %i.kqd = load float, ptr %i.kqc, align 4, !tbaa !12, !noalias !499
  %i.kqe = fadd reassoc nsz arcp contract afn float %i.kqd, %i.kqb
  %.neg811.i = fmul reassoc nsz arcp contract afn float %i.kqe, -3.000000e+00
  %i.kqf = load float, ptr %i.kow, align 4, !tbaa !12, !noalias !499
  %i.kqg = fmul reassoc nsz arcp contract afn float %i.kqf, 6.000000e+00
  %i.kqh = fadd reassoc nsz arcp contract afn float %i.kpv, %i.kpx
  %.neg812.i = fsub reassoc nsz arcp contract afn float %i.kpt, %i.kqh
  %i.kqi = fadd reassoc nsz arcp contract afn float %.neg812.i, %i.kpz
  %i.kqj = fadd reassoc nsz arcp contract afn float %i.kqi, %.neg811.i
  %i.kqk = fadd reassoc nsz arcp contract afn float %i.kqj, %i.kqg ; 2 uses
  %i.kql = fmul reassoc nsz arcp contract afn float %i.kqk, %i.kqk
  %i.kqm = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %indvars.iv1011.i
  store float %i.kql, ptr %i.kqm, align 4, !tbaa !12, !noalias !499
  %indvars.iv.next1014.i = add nuw nsw i64 %indvars.iv1013.i, 2
  %indvars.iv.next1012.i = add nuw nsw i64 %indvars.iv1011.i, 1 ; 2 uses
  %exitcond.not.i542 = icmp eq i64 %indvars.iv.next1012.i, %wide.trip.count.i
  br i1 %exitcond.not.i542, label %._crit_edge895.i, label %scalar.ph3339, !llvm.loop !296

bb.og:                                            ; preds = %._crit_edge904.i, %.lr.ph906.i
  %indvar3263 = phi i32 [ %indvar.next3264, %._crit_edge904.i ], [ 0, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1027.i.a = phi i32 [ %indvars.iv.next1028.i.a, %._crit_edge904.i ], [ 452, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1021.i = phi i32 [ %i.ksm, %._crit_edge904.i ], [ 4, %.lr.ph906.i ] ; 2 uses
  %8 = phi <2 x i32> [ %16, %._crit_edge904.i ], [ <i32 563, i32 339>, %.lr.ph906.i ] ; 2 uses
  %i.kqn = mul i32 %indvar3263, 112
  %i.kqo = add i32 %i.kqn, 448
  %i.kqp = zext i32 %i.kqo to i64
  %i.kqq = shl nuw nsw i64 %i.kqp, 1
  %i.kqr = shl i32 %indvars.iv1021.i, 2
  %i.kqs = and i32 %i.kqr, 28
  %i.kqt = lshr i32 %.fr1063, %i.kqs
  %i.kqu = and i32 %i.kqt, 1                      ; 3 uses
  %i.kqv = or disjoint i32 %i.kqu, 4              ; 4 uses
  %i.kqw = icmp slt i32 %i.kqv, %i.kli
  br i1 %i.kqw, label %.lr.ph903.preheader.i, label %._crit_edge904.i

.lr.ph903.preheader.i:                            ; preds = %bb.og
  %9 = insertelement <2 x i32> poison, i32 %i.kqu, i64 0
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <2 x i32> zeroinitializer
  %11 = add <2 x i32> %10, %8
  %12 = lshr <2 x i32> %11, splat (i32 1)
  %13 = zext nneg <2 x i32> %12 to <2 x i64>      ; 3 uses
  %i.kqx = lshr exact i32 %indvars.iv1027.i.a, 1
  %i.kqy = zext nneg i32 %i.kqx to i64            ; 4 uses
  %i.kqz = sub i32 %i.klj, %i.kqu                 ; 2 uses
  %i.kra = lshr i32 %i.kqz, 1
  %narrow4566 = add nuw i32 %i.kra, 1
  %i.krb = zext i32 %narrow4566 to i64            ; 2 uses
  %min.iters.check3277 = icmp ult i32 %i.kqz, 14
  %14 = extractelement <2 x i64> %13, i64 0       ; 4 uses
  %15 = extractelement <2 x i64> %13, i64 1       ; 4 uses
  br i1 %min.iters.check3277, label %.lr.ph903.i.preheader, label %vector.memcheck3262

vector.memcheck3262:                              ; preds = %.lr.ph903.preheader.i
  %i.krc = shl nuw nsw <2 x i64> %13, splat (i64 2)
  %i.krd = shufflevector <2 x i64> %i.krc, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.kre = insertelement <4 x i64> poison, i64 %i.kqq, i64 0
  %i.krf = shufflevector <4 x i64> %i.kre, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.krg = add <4 x i64> %i.jff, %i.krf
  %i.krh = add <4 x i64> %i.krd, %7
  %i.kri = sub <4 x i64> %i.krh, %i.krg
  %i.krj = icmp ugt <4 x i64> %i.kri, splat (i64 -32)
  %i.krk = bitcast <4 x i1> %i.krj to i4
  %.not = icmp eq i4 %i.krk, 0
  br i1 %.not, label %vector.ph3278, label %.lr.ph903.i.preheader

vector.ph3278:                                    ; preds = %vector.memcheck3262
  %n.vec3279 = and i64 %i.krb, 4294967288         ; 6 uses
  %i.krl = add nuw nsw i64 %n.vec3279, %i.kqy
  %i.krm = add nuw nsw i64 %n.vec3279, %15
  %i.krn = add nuw nsw i64 %n.vec3279, %14
  %i.kro = trunc nuw i64 %n.vec3279 to i32
  %i.krp = shl i32 %i.kro, 1
  %i.krq = or disjoint i32 %i.kqv, %i.krp
  br label %vector.body3280

vector.body3280:                                  ; preds = %vector.body3280, %vector.ph3278
  %index3281 = phi i64 [ 0, %vector.ph3278 ], [ %index.next3288, %vector.body3280 ] ; 4 uses
  %i.krr = add nuw i64 %index3281, %i.kqy         ; 3 uses
  %i.krs = add nuw i64 %index3281, %15            ; 2 uses
  %i.krt = add nuw i64 %index3281, %14            ; 2 uses
  %i.kru = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %i.krs
  %wide.load3282 = load <8 x float>, ptr %i.kru, align 4, !tbaa !12, !noalias !499
  %i.krv = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %i.krr
  %wide.load3283 = load <8 x float>, ptr %i.krv, align 8, !tbaa !12, !noalias !499
  %i.krw = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3283, %wide.load3282
  %i.krx = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %i.krt
  %i.kry = getelementptr inbounds nuw i8, ptr %i.krx, i64 4
  %wide.load3284 = load <8 x float>, ptr %i.kry, align 4, !tbaa !12, !noalias !499
  %i.krz = fadd reassoc nsz arcp contract afn <8 x float> %i.krw, %wide.load3284
  %i.ksa = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.krz, <8 x float> splat (float 1.000000e-10)) ; 2 uses
  %i.ksb = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %i.krs
  %i.ksc = getelementptr inbounds nuw i8, ptr %i.ksb, i64 4
  %wide.load3285 = load <8 x float>, ptr %i.ksc, align 4, !tbaa !12, !noalias !499
  %i.ksd = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %i.krr
  %wide.load3286 = load <8 x float>, ptr %i.ksd, align 8, !tbaa !12, !noalias !499
  %i.kse = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3286, %wide.load3285
  %i.ksf = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %i.krt
  %wide.load3287 = load <8 x float>, ptr %i.ksf, align 4, !tbaa !12, !noalias !499
  %i.ksg = fadd reassoc nsz arcp contract afn <8 x float> %i.kse, %wide.load3287
  %i.ksh = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ksg, <8 x float> splat (float 1.000000e-10))
  %i.ksi = fadd reassoc nsz arcp contract afn <8 x float> %i.ksh, %i.ksa
  %i.ksj = fdiv reassoc nsz arcp contract afn <8 x float> %i.ksa, %i.ksi
  %i.ksk = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %i.krr
  store <8 x float> %i.ksj, ptr %i.ksk, align 8, !tbaa !12, !noalias !499
  %index.next3288 = add nuw i64 %index3281, 8     ; 2 uses
  %i.ksl = icmp eq i64 %index.next3288, %n.vec3279
  br i1 %i.ksl, label %middle.block3289, label %vector.body3280, !llvm.loop !297

middle.block3289:                                 ; preds = %vector.body3280
  %cmp.n3290 = icmp eq i64 %n.vec3279, %i.krb
  br i1 %cmp.n3290, label %._crit_edge904.i, label %.lr.ph903.i.preheader

.lr.ph903.i.preheader:                            ; preds = %vector.memcheck3262, %.lr.ph903.preheader.i, %middle.block3289
  %indvars.iv1029.i.ph = phi i64 [ %i.kqy, %vector.memcheck3262 ], [ %i.kqy, %.lr.ph903.preheader.i ], [ %i.krl, %middle.block3289 ]
  %indvars.iv1025.i.ph = phi i64 [ %15, %vector.memcheck3262 ], [ %15, %.lr.ph903.preheader.i ], [ %i.krm, %middle.block3289 ]
  %indvars.iv1023.i.ph = phi i64 [ %14, %vector.memcheck3262 ], [ %14, %.lr.ph903.preheader.i ], [ %i.krn, %middle.block3289 ]
  %.0762898.i.ph = phi i32 [ %i.kqv, %vector.memcheck3262 ], [ %i.kqv, %.lr.ph903.preheader.i ], [ %i.krq, %middle.block3289 ]
  br label %.lr.ph903.i

._crit_edge904.i:                                 ; preds = %.lr.ph903.i, %middle.block3289, %bb.og
  %i.ksm = add nuw nsw i32 %indvars.iv1021.i, 1   ; 2 uses
  %i.ksn = icmp slt i32 %i.ksm, %i.jfp
  %16 = add <2 x i32> %8, splat (i32 112)
  %indvars.iv.next1028.i.a = add i32 %indvars.iv1027.i.a, 112
  %indvar.next3264 = add i32 %indvar3263, 1
  br i1 %i.ksn, label %bb.og, label %.preheader828.i.preheader

.preheader828.i.preheader:                        ; preds = %._crit_edge904.i
  %i.kso = add i32 %i.jhf, -9
  %i.ksp = add i32 %i.jhf, -9
  br label %.preheader828.i

.lr.ph903.i:                                      ; preds = %.lr.ph903.i.preheader, %.lr.ph903.i
  %indvars.iv1029.i = phi i64 [ %indvars.iv.next1030.i, %.lr.ph903.i ], [ %indvars.iv1029.i.ph, %.lr.ph903.i.preheader ] ; 4 uses
  %indvars.iv1025.i = phi i64 [ %indvars.iv.next1026.i, %.lr.ph903.i ], [ %indvars.iv1025.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %indvars.iv1023.i = phi i64 [ %indvars.iv.next1024.i, %.lr.ph903.i ], [ %indvars.iv1023.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %.0762898.i = phi i32 [ %i.ktl, %.lr.ph903.i ], [ %.0762898.i.ph, %.lr.ph903.i.preheader ]
  %i.ksq = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %indvars.iv1025.i
  %i.ksr = load float, ptr %i.ksq, align 4, !tbaa !12, !noalias !499
  %i.kss = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %indvars.iv1029.i
  %i.kst = load float, ptr %i.kss, align 4, !tbaa !12, !noalias !499
  %i.ksu = fadd reassoc nsz arcp contract afn float %i.kst, %i.ksr
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %i.ksv = getelementptr inbounds nuw [4 x i8], ptr %i.jev, i64 %indvars.iv.next1024.i
  %i.ksw = load float, ptr %i.ksv, align 4, !tbaa !12, !noalias !499
  %i.ksx = fadd reassoc nsz arcp contract afn float %i.ksu, %i.ksw
  %i.ksy = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ksx, float 1.000000e-10) ; 2 uses
  %indvars.iv.next1026.i = add nuw nsw i64 %indvars.iv1025.i, 1 ; 2 uses
  %i.ksz = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %indvars.iv.next1026.i
  %i.kta = load float, ptr %i.ksz, align 4, !tbaa !12, !noalias !499
  %i.ktb = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %indvars.iv1029.i
  %i.ktc = load float, ptr %i.ktb, align 4, !tbaa !12, !noalias !499
  %i.ktd = fadd reassoc nsz arcp contract afn float %i.ktc, %i.kta
  %i.kte = getelementptr inbounds nuw [4 x i8], ptr %i.jew, i64 %indvars.iv1023.i
  %i.ktf = load float, ptr %i.kte, align 4, !tbaa !12, !noalias !499
  %i.ktg = fadd reassoc nsz arcp contract afn float %i.ktd, %i.ktf
  %i.kth = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ktg, float 1.000000e-10)
  %i.kti = fadd reassoc nsz arcp contract afn float %i.kth, %i.ksy
  %i.ktj = fdiv reassoc nsz arcp contract afn float %i.ksy, %i.kti
  %i.ktk = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %indvars.iv1029.i
  store float %i.ktj, ptr %i.ktk, align 4, !tbaa !12, !noalias !499
  %i.ktl = add nuw nsw i32 %.0762898.i, 2         ; 2 uses
  %indvars.iv.next1030.i = add nuw nsw i64 %indvars.iv1029.i, 1
  %i.ktm = icmp slt i32 %i.ktl, %i.kli
  br i1 %i.ktm, label %.lr.ph903.i, label %._crit_edge904.i, !llvm.loop !298

.preheader828.i:                                  ; preds = %.preheader828.i.preheader, %._crit_edge914.i
  %indvar3052 = phi i32 [ 0, %.preheader828.i.preheader ], [ %indvar.next3053, %._crit_edge914.i ] ; 2 uses
  %indvar3052.a = phi i32 [ 452, %.preheader828.i.preheader ], [ %indvars.iv.next1042.i, %._crit_edge914.i ] ; 4 uses
  %indvars.iv1038.i = phi i32 [ 339, %.preheader828.i.preheader ], [ %indvars.iv.next1039.i, %._crit_edge914.i ] ; 2 uses
  %indvars.iv1032.i = phi i32 [ 563, %.preheader828.i.preheader ], [ %indvars.iv.next1033.i, %._crit_edge914.i ] ; 2 uses
  %.0755915.i = phi i32 [ 4, %.preheader828.i.preheader ], [ %i.kzk, %._crit_edge914.i ] ; 2 uses
  %i.ktn = mul i32 %indvar3052, 112
  %i.kto = add i32 %i.ktn, 448
  %i.ktp = zext i32 %i.kto to i64
  %i.ktq = shl nuw nsw i64 %i.ktp, 1              ; 2 uses
  %scevgep3054 = getelementptr i8, ptr %scevgep3051, i64 %i.ktq
  %i.ktr = shl nuw i32 %.0755915.i, 1
  %i.kts = and i32 %i.ktr, 14                     ; 2 uses
  %i.ktt = shl nuw nsw i32 %i.kts, 1
  %i.ktu = lshr i32 %.fr1063, %i.ktt
  %i.ktv = and i32 %i.ktu, 1                      ; 8 uses
  %i.ktw = or disjoint i32 %i.ktv, 4              ; 4 uses
  %i.ktx = icmp slt i32 %i.ktw, %i.kli
  br i1 %i.ktx, label %.lr.ph913.i, label %._crit_edge914.i

.lr.ph913.i:                                      ; preds = %.preheader828.i
  %i.kty = or disjoint i32 %i.ktv, %i.kts
  %i.ktz = shl nuw nsw i32 %i.kty, 1
  %i.kua = lshr i32 %.fr1063, %i.ktz              ; 2 uses
  %i.kub = and i32 %i.kua, 3
  %i.kuc = sub nsw i32 2, %i.kub
  %i.kud = sext i32 %i.kuc to i64
  %i.kue = getelementptr inbounds [50176 x i8], ptr %i.jez, i64 %i.kud ; 10 uses
  %i.kuf = add i32 %i.ktv, %indvars.iv1032.i
  %i.kug = lshr i32 %i.kuf, 1
  %i.kuh = zext nneg i32 %i.kug to i64            ; 5 uses
  %17 = add i32 %i.ktv, %indvars.iv1038.i
  %18 = lshr i32 %17, 1
  %19 = zext nneg i32 %18 to i64                  ; 5 uses
  %i.kui = or disjoint i32 %i.ktv, %indvar3052.a
  %i.kuj = lshr exact i32 %indvar3052.a, 1
  %i.kuk = zext nneg i32 %i.kuj to i64            ; 4 uses
  %i.kul = sext i32 %i.kui to i64                 ; 5 uses
  %i.kum = sub i32 %i.ksp, %i.ktv                 ; 2 uses
  %i.kun = lshr i32 %i.kum, 1
  %narrow4567 = add nuw i32 %i.kun, 1
  %i.kuo = zext i32 %narrow4567 to i64            ; 2 uses
  %min.iters.check3205 = icmp ult i32 %i.kum, 16
  br i1 %min.iters.check3205, label %scalar.ph3204.preheader, label %vector.memcheck3040

scalar.ph3204.preheader:                          ; preds = %vector.body3211, %vector.memcheck3040, %.lr.ph913.i
  %indvars.iv1042.i.ph = phi i64 [ %i.kul, %vector.memcheck3040 ], [ %i.kul, %.lr.ph913.i ], [ %i.kvm, %vector.body3211 ]
  %indvars.iv1040.i.ph = phi i64 [ %i.kuk, %vector.memcheck3040 ], [ %i.kuk, %.lr.ph913.i ], [ %i.kvn, %vector.body3211 ]
  %indvars.iv1036.i.ph = phi i64 [ %19, %vector.memcheck3040 ], [ %19, %.lr.ph913.i ], [ %i.kvo, %vector.body3211 ]
  %indvars.iv1034.i.ph = phi i64 [ %i.kuh, %vector.memcheck3040 ], [ %i.kuh, %.lr.ph913.i ], [ %i.kvp, %vector.body3211 ]
  %.0754907.i.ph = phi i32 [ %i.ktw, %vector.memcheck3040 ], [ %i.ktw, %.lr.ph913.i ], [ %i.kvs, %vector.body3211 ]
  br label %scalar.ph3204

vector.memcheck3040:                              ; preds = %.lr.ph913.i
  %i.kup = or disjoint i32 %indvar3052.a, %i.ktv
  %i.kuq = sext i32 %i.kup to i64
  %i.kur = shl nsw i64 %i.kuq, 2                  ; 12 uses
  %i.kus = and i32 %i.kua, 3
  %narrow4568 = mul nuw nsw i32 %i.kus, 50176
  %i.kut = zext nneg i32 %narrow4568 to i64       ; 2 uses
  %i.kuu = sub nsw i64 %i.kur, %i.kut             ; 9 uses
  %scevgep3042 = getelementptr i8, ptr %scevgep3041, i64 %i.kuu ; 20 uses
  %i.kuv = sub i32 %i.kso, %i.ktv
  %i.kuw = lshr i32 %i.kuv, 1
  %i.kux = zext nneg i32 %i.kuw to i64            ; 2 uses
  %i.kuy = shl nuw nsw i64 %i.kux, 3              ; 2 uses
  %i.kuz = add nsw i64 %i.kuy, %i.kur
  %i.kva = sub nsw i64 %i.kuz, %i.kut             ; 9 uses
  %scevgep3044 = getelementptr i8, ptr %scevgep3043, i64 %i.kva ; 20 uses
  %i.kvb = shl nuw nsw i64 %i.kuh, 2              ; 2 uses
  %scevgep3045 = getelementptr i8, ptr %i.jer, i64 %i.kvb
  %i.kvc = shl nuw nsw i64 %i.kux, 2              ; 3 uses
  %i.kvd = getelementptr i8, ptr %scevgep3046, i64 %i.kvc
  %scevgep3047 = getelementptr i8, ptr %i.kvd, i64 %i.kvb
  %i.kve = shl nuw nsw i64 %19, 2                 ; 2 uses
  %scevgep3048 = getelementptr i8, ptr %i.jer, i64 %i.kve
  %i.kvf = getelementptr i8, ptr %scevgep3049, i64 %i.kvc
  %scevgep3050 = getelementptr i8, ptr %i.kvf, i64 %i.kve
  %i.kvg = getelementptr i8, ptr %scevgep3055, i64 %i.kvc
  %scevgep3056 = getelementptr i8, ptr %i.kvg, i64 %i.ktq
  %scevgep3058 = getelementptr i8, ptr %scevgep3057, i64 %i.kuu
  %scevgep3060 = getelementptr i8, ptr %scevgep3059, i64 %i.kva
  %scevgep3062 = getelementptr i8, ptr %scevgep3061, i64 %i.kuu
  %scevgep3064 = getelementptr i8, ptr %scevgep3063, i64 %i.kva
  %scevgep3066 = getelementptr i8, ptr %scevgep3065, i64 %i.kuu
  %scevgep3068 = getelementptr i8, ptr %scevgep3067, i64 %i.kva
  %scevgep3070 = getelementptr i8, ptr %scevgep3069, i64 %i.kur
  %i.kvh = add nsw i64 %i.kuy, %i.kur             ; 9 uses
  %scevgep3072 = getelementptr i8, ptr %scevgep3071, i64 %i.kvh
  %scevgep3074 = getelementptr i8, ptr %scevgep3073, i64 %i.kur
  %scevgep3076 = getelementptr i8, ptr %scevgep3075, i64 %i.kvh
  %scevgep3078 = getelementptr i8, ptr %scevgep3077, i64 %i.kuu
  %scevgep3080 = getelementptr i8, ptr %scevgep3079, i64 %i.kva
  %scevgep3082 = getelementptr i8, ptr %scevgep3081, i64 %i.kuu
  %scevgep3084 = getelementptr i8, ptr %scevgep3083, i64 %i.kva
  %scevgep3086 = getelementptr i8, ptr %scevgep3085, i64 %i.kuu
  %scevgep3088 = getelementptr i8, ptr %scevgep3087, i64 %i.kva
  %scevgep3090 = getelementptr i8, ptr %scevgep3089, i64 %i.kur
  %scevgep3092 = getelementptr i8, ptr %scevgep3091, i64 %i.kvh
  %scevgep3094 = getelementptr i8, ptr %scevgep3093, i64 %i.kuu
  %scevgep3096 = getelementptr i8, ptr %scevgep3095, i64 %i.kva
  %scevgep3098 = getelementptr i8, ptr %scevgep3097, i64 %i.kur
  %scevgep3100 = getelementptr i8, ptr %scevgep3099, i64 %i.kvh
  %scevgep3102 = getelementptr i8, ptr %scevgep3101, i64 %i.kuu
  %scevgep3104 = getelementptr i8, ptr %scevgep3103, i64 %i.kva
  %scevgep3106 = getelementptr i8, ptr %scevgep3105, i64 %i.kur
  %scevgep3108 = getelementptr i8, ptr %scevgep3107, i64 %i.kvh
  %scevgep3110 = getelementptr i8, ptr %scevgep3109, i64 %i.kur
  %scevgep3112 = getelementptr i8, ptr %scevgep3111, i64 %i.kvh
  %scevgep3114 = getelementptr i8, ptr %scevgep3113, i64 %i.kur
  %scevgep3116 = getelementptr i8, ptr %scevgep3115, i64 %i.kvh
  %scevgep3118 = getelementptr i8, ptr %scevgep3117, i64 %i.kur
  %scevgep3120 = getelementptr i8, ptr %scevgep3119, i64 %i.kvh
  %scevgep3122 = getelementptr i8, ptr %scevgep3121, i64 %i.kur
  %scevgep3124 = getelementptr i8, ptr %scevgep3123, i64 %i.kvh
  %bound03125 = icmp ult ptr %scevgep3042, %scevgep3047
  %bound13126 = icmp ult ptr %scevgep3045, %scevgep3044
  %found.conflict3127 = and i1 %bound03125, %bound13126
  %bound03128 = icmp ult ptr %scevgep3042, %scevgep3050
  %bound13129 = icmp ult ptr %scevgep3048, %scevgep3044
  %found.conflict3130 = and i1 %bound03128, %bound13129
  %conflict.rdx3131 = or i1 %found.conflict3127, %found.conflict3130
  %bound03132 = icmp ult ptr %scevgep3042, %scevgep3056
  %bound13133 = icmp ult ptr %scevgep3054, %scevgep3044
  %found.conflict3134 = and i1 %bound03132, %bound13133
  %conflict.rdx3135 = or i1 %conflict.rdx3131, %found.conflict3134
  %bound03136 = icmp ult ptr %scevgep3042, %scevgep3060
  %bound13137 = icmp ult ptr %scevgep3058, %scevgep3044
  %found.conflict3138 = and i1 %bound03136, %bound13137
  %conflict.rdx3139 = or i1 %conflict.rdx3135, %found.conflict3138
  %bound03140 = icmp ult ptr %scevgep3042, %scevgep3064
  %bound13141 = icmp ult ptr %scevgep3062, %scevgep3044
  %found.conflict3142 = and i1 %bound03140, %bound13141
  %conflict.rdx3143 = or i1 %conflict.rdx3139, %found.conflict3142
  %bound03144 = icmp ult ptr %scevgep3042, %scevgep3068
  %bound13145 = icmp ult ptr %scevgep3066, %scevgep3044
  %found.conflict3146 = and i1 %bound03144, %bound13145
  %conflict.rdx3147 = or i1 %conflict.rdx3143, %found.conflict3146
  %bound03148 = icmp ult ptr %scevgep3042, %scevgep3072
  %bound13149 = icmp ult ptr %scevgep3070, %scevgep3044
  %found.conflict3150 = and i1 %bound03148, %bound13149
  %conflict.rdx3151 = or i1 %conflict.rdx3147, %found.conflict3150
  %bound03152 = icmp ult ptr %scevgep3042, %scevgep3076
  %bound13153 = icmp ult ptr %scevgep3074, %scevgep3044
  %found.conflict3154 = and i1 %bound03152, %bound13153
  %conflict.rdx3155 = or i1 %conflict.rdx3151, %found.conflict3154
  %bound03156 = icmp ult ptr %scevgep3042, %scevgep3080
  %bound13157 = icmp ult ptr %scevgep3078, %scevgep3044
  %found.conflict3158 = and i1 %bound03156, %bound13157
  %conflict.rdx3159 = or i1 %conflict.rdx3155, %found.conflict3158
  %bound03160 = icmp ult ptr %scevgep3042, %scevgep3084
  %bound13161 = icmp ult ptr %scevgep3082, %scevgep3044
  %found.conflict3162 = and i1 %bound03160, %bound13161
  %conflict.rdx3163 = or i1 %conflict.rdx3159, %found.conflict3162
  %bound03164 = icmp ult ptr %scevgep3042, %scevgep3088
  %bound13165 = icmp ult ptr %scevgep3086, %scevgep3044
  %found.conflict3166 = and i1 %bound03164, %bound13165
  %conflict.rdx3167 = or i1 %conflict.rdx3163, %found.conflict3166
  %bound03168 = icmp ult ptr %scevgep3042, %scevgep3092
  %bound13169 = icmp ult ptr %scevgep3090, %scevgep3044
  %found.conflict3170 = and i1 %bound03168, %bound13169
  %conflict.rdx3171 = or i1 %conflict.rdx3167, %found.conflict3170
  %bound03172 = icmp ult ptr %scevgep3042, %scevgep3096
  %bound13173 = icmp ult ptr %scevgep3094, %scevgep3044
  %found.conflict3174 = and i1 %bound03172, %bound13173
  %conflict.rdx3175 = or i1 %conflict.rdx3171, %found.conflict3174
  %bound03176 = icmp ult ptr %scevgep3042, %scevgep3100
  %bound13177 = icmp ult ptr %scevgep3098, %scevgep3044
  %found.conflict3178 = and i1 %bound03176, %bound13177
  %conflict.rdx3179 = or i1 %conflict.rdx3175, %found.conflict3178
  %bound03180 = icmp ult ptr %scevgep3042, %scevgep3104
  %bound13181 = icmp ult ptr %scevgep3102, %scevgep3044
  %found.conflict3182 = and i1 %bound03180, %bound13181
  %conflict.rdx3183 = or i1 %conflict.rdx3179, %found.conflict3182
  %bound03184 = icmp ult ptr %scevgep3042, %scevgep3108
  %bound13185 = icmp ult ptr %scevgep3106, %scevgep3044
  %found.conflict3186 = and i1 %bound03184, %bound13185
  %conflict.rdx3187 = or i1 %conflict.rdx3183, %found.conflict3186
  %bound03188 = icmp ult ptr %scevgep3042, %scevgep3112
  %bound13189 = icmp ult ptr %scevgep3110, %scevgep3044
  %found.conflict3190 = and i1 %bound03188, %bound13189
  %conflict.rdx3191 = or i1 %conflict.rdx3187, %found.conflict3190
  %bound03192 = icmp ult ptr %scevgep3042, %scevgep3116
  %bound13193 = icmp ult ptr %scevgep3114, %scevgep3044
  %found.conflict3194 = and i1 %bound03192, %bound13193
  %conflict.rdx3195 = or i1 %conflict.rdx3191, %found.conflict3194
  %bound03196 = icmp ult ptr %scevgep3042, %scevgep3120
  %bound13197 = icmp ult ptr %scevgep3118, %scevgep3044
  %found.conflict3198 = and i1 %bound03196, %bound13197
  %conflict.rdx3199 = or i1 %conflict.rdx3195, %found.conflict3198
  %bound03200 = icmp ult ptr %scevgep3042, %scevgep3124
  %bound13201 = icmp ult ptr %scevgep3122, %scevgep3044
  %found.conflict3202 = and i1 %bound03200, %bound13201
  %conflict.rdx3203 = or i1 %conflict.rdx3199, %found.conflict3202
  br i1 %conflict.rdx3203, label %scalar.ph3204.preheader, label %vector.ph3206

vector.ph3206:                                    ; preds = %vector.memcheck3040
  %i.kvi = and i64 %i.kuo, 7                      ; 2 uses
  %i.kvj = icmp eq i64 %i.kvi, 0
  %i.kvk = select i1 %i.kvj, i64 8, i64 %i.kvi
  %n.vec3207 = sub nsw i64 %i.kuo, %i.kvk         ; 6 uses
  %i.kvl = shl nsw i64 %n.vec3207, 1
  %i.kvm = add nsw i64 %i.kvl, %i.kul
  %i.kvn = add nsw i64 %n.vec3207, %i.kuk
  %i.kvo = add nsw i64 %n.vec3207, %19
  %i.kvp = add nsw i64 %n.vec3207, %i.kuh
  %i.kvq = trunc i64 %n.vec3207 to i32
  %i.kvr = shl i32 %i.kvq, 1
  %i.kvs = add i32 %i.ktw, %i.kvr
  %broadcast.splatinsert3208 = insertelement <8 x i64> poison, i64 %i.kul, i64 0
  %broadcast.splat3209 = shufflevector <8 x i64> %broadcast.splatinsert3208, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3210 = add nuw nsw <8 x i64> %broadcast.splat3209, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4881 = getelementptr [4 x i8], ptr %i.jer, i64 %i.kuk
  br label %vector.body3211

vector.body3211:                                  ; preds = %vector.body3211, %vector.ph3206
  %index3212 = phi i64 [ 0, %vector.ph3206 ], [ %index.next3254, %vector.body3211 ] ; 5 uses
  %vec.ind3213 = phi <8 x i64> [ %induction3210, %vector.ph3206 ], [ %vec.ind.next3255, %vector.body3211 ] ; 2 uses
  %i.kvt = shl nuw i64 %index3212, 1
  %i.kvu = add nuw i64 %i.kvt, %i.kul             ; 5 uses
  %i.kvv = add nuw i64 %index3212, %19            ; 2 uses
  %i.kvw = add nuw i64 %index3212, %i.kuh         ; 2 uses
  %gep4882 = getelementptr [4 x i8], ptr %invariant.gep4881, i64 %index3212
  %wide.load3214 = load <8 x float>, ptr %gep4882, align 8, !tbaa !12, !alias.scope !524, !noalias !499 ; 2 uses
  %i.kvx = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %i.kvv
  %wide.load3215 = load <8 x float>, ptr %i.kvx, align 4, !tbaa !12, !alias.scope !525, !noalias !499
  %i.kvy = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %i.kvv
  %i.kvz = getelementptr inbounds nuw i8, ptr %i.kvy, i64 4
  %wide.load3216 = load <8 x float>, ptr %i.kvz, align 4, !tbaa !12, !alias.scope !525, !noalias !499
  %i.kwa = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3216, %wide.load3215
  %i.kwb = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %i.kvw
  %wide.load3217 = load <8 x float>, ptr %i.kwb, align 4, !tbaa !12, !alias.scope !526, !noalias !499
  %i.kwc = fadd reassoc nsz arcp contract afn <8 x float> %i.kwa, %wide.load3217
  %i.kwd = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %i.kvw
  %i.kwe = getelementptr inbounds nuw i8, ptr %i.kwd, i64 4
  %wide.load3218 = load <8 x float>, ptr %i.kwe, align 4, !tbaa !12, !alias.scope !526, !noalias !499
  %i.kwf = fadd reassoc nsz arcp contract afn <8 x float> %i.kwc, %wide.load3218
  %i.kwg = fmul reassoc nsz arcp contract afn <8 x float> %i.kwf, splat (float 2.500000e-01) ; 2 uses
  %i.kwh = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %wide.load3214
  %i.kwi = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwh)
  %i.kwj = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.kwg
  %i.kwk = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwj)
  %i.kwl = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.kwi, %i.kwk
  %i.kwm = select reassoc nsz arcp contract afn <8 x i1> %i.kwl, <8 x float> %i.kwg, <8 x float> %wide.load3214 ; 3 uses
  %i.kwn = add nsw i64 %i.kvu, -113               ; 2 uses
  %i.kwo = getelementptr inbounds [4 x i8], ptr %i.kue, i64 %i.kwn
  %wide.vec3219 = load <16 x float>, ptr %i.kwo, align 4, !tbaa !12, !alias.scope !527, !noalias !499
  %strided.vec3220 = shufflevector <16 x float> %wide.vec3219, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kwp = add nuw nsw i64 %i.kvu, 113            ; 2 uses
  %i.kwq = getelementptr inbounds nuw [4 x i8], ptr %i.kue, i64 %i.kwp
  %wide.vec3221 = load <16 x float>, ptr %i.kwq, align 4, !tbaa !12, !alias.scope !528, !noalias !499
  %strided.vec3222 = shufflevector <16 x float> %wide.vec3221, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kwr = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3220, %strided.vec3222
  %i.kws = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwr)
  %i.kwt = fadd reassoc nsz arcp contract afn <8 x float> %i.kws, splat (float f0x3727C5AC) ; 2 uses
  %wide.gep3223 = getelementptr [4 x i8], ptr %i.kue, <8 x i64> %vec.ind3213 ; 2 uses
  %i.kwu = extractelement <8 x ptr> %wide.gep3223, i64 0 ; 4 uses
  %i.kwv = getelementptr i8, ptr %i.kwu, i64 -1356
  %wide.vec3224 = load <16 x float>, ptr %i.kwv, align 4, !tbaa !12, !alias.scope !529, !noalias !499
  %strided.vec3225 = shufflevector <16 x float> %wide.vec3224, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kww = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3220, %strided.vec3225
  %i.kwx = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kww)
  %i.kwy = fadd reassoc nsz arcp contract afn <8 x float> %i.kwt, %i.kwx
  %i.kwz = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.kvu ; 5 uses
  %wide.vec3226 = load <16 x float>, ptr %i.kwz, align 4, !tbaa !12, !alias.scope !530, !noalias !499
  %strided.vec3227 = shufflevector <16 x float> %wide.vec3226, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 5 uses
  %i.kxa = getelementptr i8, ptr %i.kwz, i64 -904
  %wide.vec3228 = load <16 x float>, ptr %i.kxa, align 4, !tbaa !12, !alias.scope !531, !noalias !499
  %strided.vec3229 = shufflevector <16 x float> %wide.vec3228, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227, %strided.vec3229
  %i.kxc = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxb)
  %i.kxd = fadd reassoc nsz arcp contract afn <8 x float> %i.kwy, %i.kxc ; 2 uses
  %i.kxe = add nsw i64 %i.kvu, -111               ; 2 uses
  %i.kxf = getelementptr inbounds [4 x i8], ptr %i.kue, i64 %i.kxe
  %wide.vec3230 = load <16 x float>, ptr %i.kxf, align 4, !tbaa !12, !alias.scope !532, !noalias !499
  %strided.vec3231 = shufflevector <16 x float> %wide.vec3230, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxg = add nuw nsw i64 %i.kvu, 111            ; 2 uses
  %i.kxh = getelementptr inbounds nuw [4 x i8], ptr %i.kue, i64 %i.kxg
  %wide.vec3232 = load <16 x float>, ptr %i.kxh, align 4, !tbaa !12, !alias.scope !533, !noalias !499
  %strided.vec3233 = shufflevector <16 x float> %wide.vec3232, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxi = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231, %strided.vec3233
  %i.kxj = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxi)
  %i.kxk = fadd reassoc nsz arcp contract afn <8 x float> %i.kxj, splat (float f0x3727C5AC) ; 2 uses
  %i.kxl = getelementptr i8, ptr %i.kwu, i64 -1332
  %wide.vec3234 = load <16 x float>, ptr %i.kxl, align 4, !tbaa !12, !alias.scope !534, !noalias !499
  %strided.vec3235 = shufflevector <16 x float> %wide.vec3234, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxm = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231, %strided.vec3235
  %i.kxn = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxm)
  %i.kxo = fadd reassoc nsz arcp contract afn <8 x float> %i.kxk, %i.kxn
  %i.kxp = getelementptr i8, ptr %i.kwz, i64 -888
  %wide.vec3236 = load <16 x float>, ptr %i.kxp, align 4, !tbaa !12, !alias.scope !535, !noalias !499
  %strided.vec3237 = shufflevector <16 x float> %wide.vec3236, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227, %strided.vec3237
  %i.kxr = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxq)
  %i.kxs = fadd reassoc nsz arcp contract afn <8 x float> %i.kxo, %i.kxr ; 2 uses
  %i.kxt = getelementptr inbounds nuw i8, ptr %i.kwu, i64 1332
  %wide.vec3238 = load <16 x float>, ptr %i.kxt, align 4, !tbaa !12, !alias.scope !536, !noalias !499
  %strided.vec3239 = shufflevector <16 x float> %wide.vec3238, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3233, %strided.vec3239
  %i.kxv = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxu)
  %i.kxw = fadd reassoc nsz arcp contract afn <8 x float> %i.kxv, %i.kxk
  %i.kxx = getelementptr inbounds nuw i8, ptr %i.kwz, i64 888
  %wide.vec3240 = load <16 x float>, ptr %i.kxx, align 4, !tbaa !12, !alias.scope !537, !noalias !499
  %strided.vec3241 = shufflevector <16 x float> %wide.vec3240, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227, %strided.vec3241
  %i.kxz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxy)
  %i.kya = fadd reassoc nsz arcp contract afn <8 x float> %i.kxw, %i.kxz ; 2 uses
  %i.kyb = getelementptr inbounds nuw i8, ptr %i.kwu, i64 1356
  %wide.vec3242 = load <16 x float>, ptr %i.kyb, align 4, !tbaa !12, !alias.scope !538, !noalias !499
  %strided.vec3243 = shufflevector <16 x float> %wide.vec3242, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3222, %strided.vec3243
  %i.kyd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyc)
  %i.kye = fadd reassoc nsz arcp contract afn <8 x float> %i.kyd, %i.kwt
  %i.kyf = getelementptr inbounds nuw i8, ptr %i.kwz, i64 904
  %wide.vec3244 = load <16 x float>, ptr %i.kyf, align 4, !tbaa !12, !alias.scope !539, !noalias !499
  %strided.vec3245 = shufflevector <16 x float> %wide.vec3244, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227, %strided.vec3245
  %i.kyh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyg)
  %i.kyi = fadd reassoc nsz arcp contract afn <8 x float> %i.kye, %i.kyh ; 2 uses
  %i.kyj = getelementptr inbounds [4 x i8], ptr %i.jfb, i64 %i.kwn
  %wide.vec3246 = load <16 x float>, ptr %i.kyj, align 4, !tbaa !12, !alias.scope !540, !noalias !499
  %strided.vec3247 = shufflevector <16 x float> %wide.vec3246, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3220, %strided.vec3247
  %i.kyl = getelementptr inbounds [4 x i8], ptr %i.jfb, i64 %i.kxe
  %wide.vec3248 = load <16 x float>, ptr %i.kyl, align 4, !tbaa !12, !alias.scope !541, !noalias !499
  %strided.vec3249 = shufflevector <16 x float> %wide.vec3248, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kym = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231, %strided.vec3249
  %i.kyn = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.kxg
  %wide.vec3250 = load <16 x float>, ptr %i.kyn, align 4, !tbaa !12, !alias.scope !542, !noalias !499
  %strided.vec3251 = shufflevector <16 x float> %wide.vec3250, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3233, %strided.vec3251
  %i.kyp = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.kwp
  %wide.vec3252 = load <16 x float>, ptr %i.kyp, align 4, !tbaa !12, !alias.scope !543, !noalias !499
  %strided.vec3253 = shufflevector <16 x float> %wide.vec3252, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3222, %strided.vec3253
  %i.kyr = fmul reassoc nsz arcp contract afn <8 x float> %i.kyq, %i.kxd
  %i.kys = fmul reassoc nsz arcp contract afn <8 x float> %i.kyi, %i.kyk
  %i.kyt = fadd reassoc nsz arcp contract afn <8 x float> %i.kyr, %i.kys
  %i.kyu = fadd reassoc nsz arcp contract afn <8 x float> %i.kyi, %i.kxd
  %i.kyv = fdiv reassoc nsz arcp contract afn <8 x float> %i.kyt, %i.kyu ; 2 uses
  %i.kyw = fmul reassoc nsz arcp contract afn <8 x float> %i.kyo, %i.kxs
  %i.kyx = fmul reassoc nsz arcp contract afn <8 x float> %i.kym, %i.kya
  %i.kyy = fadd reassoc nsz arcp contract afn <8 x float> %i.kyw, %i.kyx
  %i.kyz = fadd reassoc nsz arcp contract afn <8 x float> %i.kya, %i.kxs
  %i.kza = fdiv reassoc nsz arcp contract afn <8 x float> %i.kyy, %i.kyz
  %i.kzb = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.kwm, zeroinitializer
  %i.kzc = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.kwm, splat (float 1.000000e+00)
  %i.kzd = select reassoc nsz arcp contract afn <8 x i1> %i.kzc, <8 x float> %i.kwm, <8 x float> splat (float 1.000000e+00)
  %i.kze = select reassoc nsz arcp contract afn <8 x i1> %i.kzb, <8 x float> %i.kzd, <8 x float> zeroinitializer
  %i.kzf = fsub reassoc nsz arcp contract afn <8 x float> %i.kza, %i.kyv
  %i.kzg = fmul reassoc nsz arcp contract afn <8 x float> %i.kzf, %i.kze
  %i.kzh = fadd reassoc nsz arcp contract afn <8 x float> %i.kyv, %i.kzg
  %i.kzi = fadd reassoc nsz arcp contract afn <8 x float> %i.kzh, %strided.vec3227
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kzi, <8 x ptr> align 4 %wide.gep3223, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !544, !noalias !545
  %index.next3254 = add nuw i64 %index3212, 8     ; 2 uses
  %vec.ind.next3255 = add nuw nsw <8 x i64> %vec.ind3213, splat (i64 16)
  %i.kzj = icmp eq i64 %index.next3254, %n.vec3207
  br i1 %i.kzj, label %scalar.ph3204.preheader, label %vector.body3211, !llvm.loop !321

._crit_edge914.i:                                 ; preds = %scalar.ph3204, %.preheader828.i
  %i.kzk = add nuw nsw i32 %.0755915.i, 1         ; 2 uses
  %i.kzl = icmp slt i32 %i.kzk, %i.jfp
  %indvars.iv.next1033.i = add i32 %indvars.iv1032.i, 112
  %indvars.iv.next1039.i = add i32 %indvars.iv1038.i, 112
  %indvars.iv.next1042.i = add i32 %indvar3052.a, 112
  %indvar.next3053 = add i32 %indvar3052, 1
  br i1 %i.kzl, label %.preheader828.i, label %.preheader.i541.preheader

.preheader.i541.preheader:                        ; preds = %._crit_edge914.i
  %i.kzm = add i32 %i.jhf, -9
  %i.kzn = add i32 %i.jhf, -9
  br label %.preheader.i541

scalar.ph3204:                                    ; preds = %scalar.ph3204.preheader, %scalar.ph3204
  %indvars.iv1042.i = phi i64 [ %indvars.iv.next1043.i, %scalar.ph3204 ], [ %indvars.iv1042.i.ph, %scalar.ph3204.preheader ] ; 7 uses
  %indvars.iv1040.i = phi i64 [ %indvars.iv.next1041.i, %scalar.ph3204 ], [ %indvars.iv1040.i.ph, %scalar.ph3204.preheader ] ; 2 uses
  %indvars.iv1036.i = phi i64 [ %indvars.iv.next1037.i, %scalar.ph3204 ], [ %indvars.iv1036.i.ph, %scalar.ph3204.preheader ] ; 2 uses
  %indvars.iv1034.i = phi i64 [ %indvars.iv.next1035.i, %scalar.ph3204 ], [ %indvars.iv1034.i.ph, %scalar.ph3204.preheader ] ; 2 uses
  %.0754907.i = phi i32 [ %i.ldq, %scalar.ph3204 ], [ %.0754907.i.ph, %scalar.ph3204.preheader ]
  %i.kzo = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %indvars.iv1040.i
  %i.kzp = load float, ptr %i.kzo, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.kzq = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %indvars.iv1036.i
  %indvars.iv.next1037.i = add nuw nsw i64 %indvars.iv1036.i, 1
  %i.kzr = getelementptr inbounds nuw [4 x i8], ptr %i.jer, i64 %indvars.iv1034.i
  %indvars.iv.next1035.i = add nuw nsw i64 %indvars.iv1034.i, 1
  %i.kzs = load <2 x float>, ptr %i.kzq, align 4, !tbaa !12, !noalias !499
  %i.kzt = load <2 x float>, ptr %i.kzr, align 4, !tbaa !12, !noalias !499
  %i.kzu = shufflevector <2 x float> %i.kzt, <2 x float> %i.kzs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kzv = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.kzu)
  %i.kzw = fmul reassoc nsz arcp contract afn float %i.kzv, 2.500000e-01 ; 2 uses
  %i.kzx = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kzp
  %i.kzy = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kzx)
  %i.kzz = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kzw
  %i.laa = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kzz)
  %i.lab = fcmp reassoc nsz arcp contract afn olt float %i.kzy, %i.laa
  %i.lac = select reassoc nsz arcp contract afn i1 %i.lab, float %i.kzw, float %i.kzp ; 3 uses
  %i.lad = add nsw i64 %indvars.iv1042.i, -113    ; 2 uses
  %i.lae = getelementptr inbounds [4 x i8], ptr %i.kue, i64 %i.lad
  %i.laf = load float, ptr %i.lae, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lag = add nuw nsw i64 %indvars.iv1042.i, 113 ; 2 uses
  %i.lah = getelementptr inbounds nuw [4 x i8], ptr %i.kue, i64 %i.lag
  %i.lai = load float, ptr %i.lah, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.laj = fsub reassoc nsz arcp contract afn float %i.laf, %i.lai
  %i.lak = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.laj)
  %i.lal = fadd reassoc nsz arcp contract afn float %i.lak, f0x3727C5AC ; 2 uses
  %i.lam = getelementptr [4 x i8], ptr %i.kue, i64 %indvars.iv1042.i ; 5 uses
  %i.lan = getelementptr i8, ptr %i.lam, i64 -1356
  %i.lao = load float, ptr %i.lan, align 4, !tbaa !12, !noalias !499
  %i.lap = fsub reassoc nsz arcp contract afn float %i.laf, %i.lao
  %i.laq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lap)
  %i.lar = fadd reassoc nsz arcp contract afn float %i.lal, %i.laq
  %i.las = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %indvars.iv1042.i ; 5 uses
  %i.lat = load float, ptr %i.las, align 4, !tbaa !12, !noalias !499 ; 5 uses
  %i.lau = getelementptr i8, ptr %i.las, i64 -904
  %i.lav = load float, ptr %i.lau, align 4, !tbaa !12, !noalias !499
  %i.law = fsub reassoc nsz arcp contract afn float %i.lat, %i.lav
  %i.lax = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.law)
  %i.lay = fadd reassoc nsz arcp contract afn float %i.lar, %i.lax ; 2 uses
  %i.laz = add nsw i64 %indvars.iv1042.i, -111    ; 2 uses
  %i.lba = getelementptr inbounds [4 x i8], ptr %i.kue, i64 %i.laz
  %i.lbb = load float, ptr %i.lba, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lbc = add nuw nsw i64 %indvars.iv1042.i, 111 ; 2 uses
  %i.lbd = getelementptr inbounds nuw [4 x i8], ptr %i.kue, i64 %i.lbc
  %i.lbe = load float, ptr %i.lbd, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lbf = fsub reassoc nsz arcp contract afn float %i.lbb, %i.lbe
  %i.lbg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbf)
  %i.lbh = fadd reassoc nsz arcp contract afn float %i.lbg, f0x3727C5AC ; 2 uses
  %i.lbi = getelementptr i8, ptr %i.lam, i64 -1332
  %i.lbj = load float, ptr %i.lbi, align 4, !tbaa !12, !noalias !499
  %i.lbk = fsub reassoc nsz arcp contract afn float %i.lbb, %i.lbj
  %i.lbl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbk)
  %i.lbm = fadd reassoc nsz arcp contract afn float %i.lbh, %i.lbl
  %i.lbn = getelementptr i8, ptr %i.las, i64 -888
  %i.lbo = load float, ptr %i.lbn, align 4, !tbaa !12, !noalias !499
  %i.lbp = fsub reassoc nsz arcp contract afn float %i.lat, %i.lbo
  %i.lbq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbp)
  %i.lbr = fadd reassoc nsz arcp contract afn float %i.lbm, %i.lbq ; 2 uses
  %i.lbs = getelementptr inbounds nuw i8, ptr %i.lam, i64 1332
  %i.lbt = load float, ptr %i.lbs, align 4, !tbaa !12, !noalias !499
  %i.lbu = fsub reassoc nsz arcp contract afn float %i.lbe, %i.lbt
  %i.lbv = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbu)
  %i.lbw = fadd reassoc nsz arcp contract afn float %i.lbv, %i.lbh
  %i.lbx = getelementptr inbounds nuw i8, ptr %i.las, i64 888
  %i.lby = load float, ptr %i.lbx, align 4, !tbaa !12, !noalias !499
  %i.lbz = fsub reassoc nsz arcp contract afn float %i.lat, %i.lby
  %i.lca = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbz)
  %i.lcb = fadd reassoc nsz arcp contract afn float %i.lbw, %i.lca ; 2 uses
  %i.lcc = getelementptr inbounds nuw i8, ptr %i.lam, i64 1356
  %i.lcd = load float, ptr %i.lcc, align 4, !tbaa !12, !noalias !499
  %i.lce = fsub reassoc nsz arcp contract afn float %i.lai, %i.lcd
  %i.lcf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lce)
  %i.lcg = fadd reassoc nsz arcp contract afn float %i.lcf, %i.lal
  %i.lch = getelementptr inbounds nuw i8, ptr %i.las, i64 904
  %i.lci = load float, ptr %i.lch, align 4, !tbaa !12, !noalias !499
  %i.lcj = fsub reassoc nsz arcp contract afn float %i.lat, %i.lci
  %i.lck = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcj)
  %i.lcl = fadd reassoc nsz arcp contract afn float %i.lcg, %i.lck ; 2 uses
  %i.lcm = getelementptr inbounds [4 x i8], ptr %i.jfb, i64 %i.lad
  %i.lcn = load float, ptr %i.lcm, align 4, !tbaa !12, !noalias !499
  %i.lco = fsub reassoc nsz arcp contract afn float %i.laf, %i.lcn
  %i.lcp = getelementptr inbounds [4 x i8], ptr %i.jfb, i64 %i.laz
  %i.lcq = load float, ptr %i.lcp, align 4, !tbaa !12, !noalias !499
  %i.lcr = fsub reassoc nsz arcp contract afn float %i.lbb, %i.lcq
  %i.lcs = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.lbc
  %i.lct = load float, ptr %i.lcs, align 4, !tbaa !12, !noalias !499
  %i.lcu = fsub reassoc nsz arcp contract afn float %i.lbe, %i.lct
  %i.lcv = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.lag
  %i.lcw = load float, ptr %i.lcv, align 4, !tbaa !12, !noalias !499
  %i.lcx = fsub reassoc nsz arcp contract afn float %i.lai, %i.lcw
  %i.lcy = fmul reassoc nsz arcp contract afn float %i.lcx, %i.lay
  %i.lcz = fmul reassoc nsz arcp contract afn float %i.lcl, %i.lco
  %i.lda = fadd reassoc nsz arcp contract afn float %i.lcy, %i.lcz
  %i.ldb = fadd reassoc nsz arcp contract afn float %i.lcl, %i.lay
  %i.ldc = fdiv reassoc nsz arcp contract afn float %i.lda, %i.ldb ; 2 uses
  %i.ldd = fmul reassoc nsz arcp contract afn float %i.lcu, %i.lbr
  %i.lde = fmul reassoc nsz arcp contract afn float %i.lcr, %i.lcb
  %i.ldf = fadd reassoc nsz arcp contract afn float %i.ldd, %i.lde
  %i.ldg = fadd reassoc nsz arcp contract afn float %i.lcb, %i.lbr
  %i.ldh = fdiv reassoc nsz arcp contract afn float %i.ldf, %i.ldg
  %i.ldi = fcmp reassoc nsz arcp contract afn oge float %i.lac, 0.000000e+00
  %i.ldj = fcmp reassoc nsz arcp contract afn ole float %i.lac, 1.000000e+00
  %i.ldk = select reassoc nsz arcp contract afn i1 %i.ldj, float %i.lac, float 1.000000e+00
  %i.ldl = select reassoc nsz arcp contract afn i1 %i.ldi, float %i.ldk, float 0.000000e+00
  %i.ldm = fsub reassoc nsz arcp contract afn float %i.ldh, %i.ldc
  %i.ldn = fmul reassoc nsz arcp contract afn float %i.ldm, %i.ldl
  %i.ldo = fadd reassoc nsz arcp contract afn float %i.ldc, %i.ldn
  %i.ldp = fadd reassoc nsz arcp contract afn float %i.ldo, %i.lat
  store float %i.ldp, ptr %i.lam, align 4, !tbaa !12, !noalias !499
  %i.ldq = add nuw nsw i32 %.0754907.i, 2         ; 2 uses
  %indvars.iv.next1043.i = add nuw nsw i64 %indvars.iv1042.i, 2
  %indvars.iv.next1041.i = add nuw nsw i64 %indvars.iv1040.i, 1
  %i.ldr = icmp slt i32 %i.ldq, %i.kli
  br i1 %i.ldr, label %scalar.ph3204, label %._crit_edge914.i, !llvm.loop !322

._crit_edge925.i:                                 ; preds = %._crit_edge922.i, %.preheader829.i, %.preheader830.i, %.preheader832.i
  %i.lds = icmp eq i32 %.0745937.i, 0
  %i.ldt = select i1 %i.lds, i32 9, i32 10        ; 4 uses
  %i.ldu = add nuw nsw i32 %i.ldt, %i.jhp         ; 3 uses
  %i.ldv = icmp eq i32 %.0745937.i, %i.aos        ; 2 uses
  %.neg793.i = select i1 %i.ldv, i32 -9, i32 -10  ; 2 uses
  %i.ldw = add nsw i32 %i.jhr, %.neg793.i         ; 2 uses
  %i.ldx = icmp slt i32 %i.ldu, %i.ldw
  %or.cond944.i = select i1 %i.jfy, i1 %i.ldx, i1 false
  br i1 %or.cond944.i, label %.lr.ph930.preheader.i, label %._crit_edge935.split.i

.lr.ph930.preheader.i:                            ; preds = %._crit_edge925.i
  %i.ldy = add i32 %i.ldt, %indvars.iv1057.i
  %i.ldz = shl i32 %i.ldy, 2
  %i.lea = or disjoint i32 %i.ldt, %i.jgc
  %i.leb = add i32 %.neg793.i, %i.jhr
  %i.lec = add i32 %i.leb, %i.jhb
  %i.led = sub i32 %i.lec, %i.ldt                 ; 2 uses
  %i.lee = zext i32 %i.led to i64
  %i.lef = add nuw nsw i64 %i.lee, 1              ; 2 uses
  %min.iters.check2936 = icmp ult i32 %i.led, 7
  %n.vec2938 = and i64 %i.lef, 8589934584         ; 5 uses
  %i.leg = shl nuw nsw i64 %n.vec2938, 2
  %i.leh = trunc i64 %n.vec2938 to i32
  %i.lei = add i32 %i.ldu, %i.leh
  %cmp.n2949 = icmp eq i64 %i.lef, %n.vec2938
  br label %.lr.ph930.i

.preheader.i541:                                  ; preds = %.preheader.i541.preheader, %._crit_edge922.i
  %indvars.iv1050.i = phi i32 [ %indvars.iv.next1051.i, %._crit_edge922.i ], [ 452, %.preheader.i541.preheader ] ; 3 uses
  %.0744923.i = phi i32 [ %i.lkv, %._crit_edge922.i ], [ 4, %.preheader.i541.preheader ] ; 2 uses
  %i.lej = shl i32 %.0744923.i, 2
  %i.lek = and i32 %i.lej, 28
  %i.lel = or disjoint i32 %i.lek, 2
  %i.lem = lshr i32 %.fr1063, %i.lel
  %i.len = and i32 %i.lem, 1                      ; 5 uses
  %i.leo = or disjoint i32 %i.len, 4              ; 4 uses
  %i.lep = icmp slt i32 %i.leo, %i.kli
  br i1 %i.lep, label %.lr.ph921.preheader.i, label %._crit_edge922.i

.lr.ph921.preheader.i:                            ; preds = %.preheader.i541
  %i.leq = or disjoint i32 %i.len, %indvars.iv1050.i
  %i.ler = sext i32 %i.leq to i64                 ; 5 uses
  %i.les = sub i32 %i.kzn, %i.len                 ; 2 uses
  %i.let = lshr i32 %i.les, 1
  %narrow4569 = add nuw i32 %i.let, 1
  %i.leu = zext i32 %narrow4569 to i64            ; 2 uses
  %min.iters.check2966 = icmp ult i32 %i.les, 16
  br i1 %min.iters.check2966, label %.lr.ph921.i.preheader, label %vector.memcheck2953

.lr.ph921.i.preheader:                            ; preds = %vector.body2972, %vector.memcheck2953, %.lr.ph921.preheader.i
  %indvars.iv1052.i.ph = phi i64 [ %i.ler, %vector.memcheck2953 ], [ %i.ler, %.lr.ph921.preheader.i ], [ %i.lfh, %vector.body2972 ]
  %.0743918.i.ph = phi i32 [ %i.leo, %vector.memcheck2953 ], [ %i.leo, %.lr.ph921.preheader.i ], [ %i.lfk, %vector.body2972 ]
  br label %.lr.ph921.i

vector.memcheck2953:                              ; preds = %.lr.ph921.preheader.i
  %i.lev = or disjoint i32 %indvars.iv1050.i, %i.len
  %i.lew = sext i32 %i.lev to i64
  %i.lex = shl nsw i64 %i.lew, 2                  ; 3 uses
  %scevgep2955 = getelementptr i8, ptr %scevgep2954, i64 %i.lex
  %i.ley = sub i32 %i.kzm, %i.len
  %i.lez = lshr i32 %i.ley, 1
  %i.lfa = zext nneg i32 %i.lez to i64
  %i.lfb = shl nuw nsw i64 %i.lfa, 3
  %i.lfc = add nsw i64 %i.lfb, %i.lex             ; 2 uses
  %scevgep2957 = getelementptr i8, ptr %scevgep2956, i64 %i.lfc
  %scevgep2959 = getelementptr i8, ptr %scevgep2958, i64 %i.lex
  %scevgep2961 = getelementptr i8, ptr %scevgep2960, i64 %i.lfc
  %bound02962 = icmp ult ptr %scevgep2955, %scevgep2961
  %bound12963 = icmp ult ptr %scevgep2959, %scevgep2957
  %found.conflict2964 = and i1 %bound02962, %bound12963
  br i1 %found.conflict2964, label %.lr.ph921.i.preheader, label %vector.ph2967

vector.ph2967:                                    ; preds = %vector.memcheck2953
  %i.lfd = and i64 %i.leu, 7                      ; 2 uses
  %i.lfe = icmp eq i64 %i.lfd, 0
  %i.lff = select i1 %i.lfe, i64 8, i64 %i.lfd
  %n.vec2968 = sub nsw i64 %i.leu, %i.lff         ; 3 uses
  %i.lfg = shl nsw i64 %n.vec2968, 1
  %i.lfh = add nsw i64 %i.lfg, %i.ler
  %i.lfi = trunc i64 %n.vec2968 to i32
  %i.lfj = shl i32 %i.lfi, 1
  %i.lfk = add i32 %i.leo, %i.lfj
  %broadcast.splatinsert2969 = insertelement <8 x i64> poison, i64 %i.ler, i64 0
  %broadcast.splat2970 = shufflevector <8 x i64> %broadcast.splatinsert2969, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction2971 = add nuw nsw <8 x i64> %broadcast.splat2970, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body2972

vector.body2972:                                  ; preds = %vector.body2972, %vector.ph2967
end_hunk_1
