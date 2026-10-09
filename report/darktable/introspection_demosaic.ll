Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.jbl = getelementptr inbounds nuw i8, ptr %i.ixn, i64 6
  store i16 %.reass.3.2.i535, ptr %i.jbl, align 2, !tbaa !481
  %i.jbm = getelementptr inbounds nuw i8, ptr %i.ixn, i64 8
  store i16 -123, ptr %i.jbm, align 8, !tbaa !481
  %i.jbn = getelementptr inbounds nuw i8, ptr %i.iya, i64 20
  %i.jbo = getelementptr inbounds nuw i8, ptr %i.ixn, i64 10
  %i.jbp = load <4 x i16>, ptr %i.jbn, align 4, !tbaa !481 ; 2 uses
  %i.jbq = shufflevector <4 x i16> %i.jbp, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jbr = mul <2 x i16> %i.jbq, splat (i16 -122)
  %i.jbs = shufflevector <4 x i16> %i.jbp, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.jbt = sub <2 x i16> %i.jbr, %i.jbs
  store <2 x i16> %i.jbt, ptr %i.jbo, align 2, !tbaa !481
  %i.jbu = getelementptr inbounds nuw i8, ptr %i.iya, i64 28
  %i.jbv = load i16, ptr %i.jbu, align 4, !tbaa !481
  %.reass.7.2.i539 = mul i16 %i.jbv, -122
  %i.jbw = getelementptr inbounds nuw i8, ptr %i.iya, i64 30
  %i.jbx = load i16, ptr %i.jbw, align 2, !tbaa !481
  %i.jby = sub i16 %.reass.7.2.i539, %i.jbx
  %i.jbz = getelementptr inbounds nuw i8, ptr %i.ixn, i64 14
  store i16 %i.jby, ptr %i.jbz, align 2, !tbaa !481
  br label %.loopexit1063.2.i

.loopexit1063.2.i:                                ; preds = %.preheader1062.2.i, %.loopexit1063.1.i
  %i.jca = add nuw nsw i32 %i.ixl, 601
  %.urem1319.i = urem i32 %i.jca, 6
  %i.jcb = zext nneg i32 %.urem1319.i to i64
  %i.jcc = getelementptr inbounds nuw i8, ptr %i.fya, i64 %i.jcb
  %i.jcd = load i8, ptr %i.jcc, align 1, !tbaa !133
  %i.jce = icmp eq i8 %i.jcd, 1
  %i.jcf = add nuw nsw i32 %.1918.2.i, 1
  %.1918.3.i = select i1 %i.jce, i32 0, i32 %i.jcf ; 3 uses
  %i.jcg = icmp eq i32 %.1918.3.i, 4
  %i.jch = icmp eq i32 %.1918.3.i, %i.ixy
  br i1 %i.jch, label %.preheader1062.3.i, label %.loopexit1063.3.i

.preheader1062.3.i:                               ; preds = %.loopexit1063.2.i
  %i.jci = and i32 %i.ixy, 2                      ; 5 uses
  %i.jcj = zext nneg i32 %i.jci to i64
  %i.jck = getelementptr inbounds nuw [2 x i8], ptr %i.ixn, i64 %i.jcj ; 2 uses
  store i16 -122, ptr %i.jck, align 4, !tbaa !481
  %i.jcl = getelementptr inbounds nuw i8, ptr %i.iya, i64 6
  %i.jcm = load i16, ptr %i.jcl, align 2, !tbaa !481
  %.reass1069.1.3.i = mul i16 %i.jcm, -122
  %i.jcn = or i32 %i.ixy, 1
  %i.jco = zext nneg i32 %i.jcn to i64
  %i.jcp = getelementptr inbounds nuw [2 x i8], ptr %i.ixn, i64 %i.jco
  store i16 %.reass1069.1.3.i, ptr %i.jcp, align 2, !tbaa !481
  %i.jcq = getelementptr inbounds nuw i8, ptr %i.iya, i64 8
  %i.jcr = load i16, ptr %i.jcq, align 8, !tbaa !481
  %i.jcs = xor i32 %i.jci, 2
  %i.jct = zext nneg i32 %i.jcs to i64
  %i.jcu = getelementptr inbounds nuw [2 x i8], ptr %i.ixn, i64 %i.jct
  store i16 %i.jcr, ptr %i.jcu, align 4, !tbaa !481
  %i.jcv = getelementptr inbounds nuw i8, ptr %i.iya, i64 12
  %i.jcw = load i16, ptr %i.jcv, align 4, !tbaa !481
  %i.jcx = xor i32 %i.jci, 3
  %i.jcy = zext nneg i32 %i.jcx to i64
  %i.jcz = getelementptr inbounds nuw [2 x i8], ptr %i.ixn, i64 %i.jcy
  store i16 %i.jcw, ptr %i.jcz, align 2, !tbaa !481
  %i.jda = getelementptr inbounds nuw i8, ptr %i.jck, i64 8
  store i16 -121, ptr %i.jda, align 4, !tbaa !481
  %i.jdb = getelementptr inbounds nuw i8, ptr %i.iya, i64 20
  %i.jdc = load i16, ptr %i.jdb, align 4, !tbaa !481
  %i.jdd = getelementptr inbounds nuw i8, ptr %i.iya, i64 22
  %i.jde = load i16, ptr %i.jdd, align 2, !tbaa !481
  %.reass1069.5.3.i = mul i16 %i.jde, -122
  %i.jdf = add i16 %.reass1069.5.3.i, %i.jdc
  %i.jdg = or i32 %i.ixy, 5
  %i.jdh = zext nneg i32 %i.jdg to i64
  %i.jdi = getelementptr inbounds nuw [2 x i8], ptr %i.ixn, i64 %i.jdh
  store i16 %i.jdf, ptr %i.jdi, align 2, !tbaa !481
  %i.jdj = getelementptr inbounds nuw i8, ptr %i.iya, i64 24
  %i.jdk = xor i32 %i.jci, 6
  %i.jdl = zext nneg i32 %i.jdk to i64
  %i.jdm = getelementptr inbounds nuw [2 x i8], ptr %i.ixn, i64 %i.jdl
  %i.jdn = load <4 x i16>, ptr %i.jdj, align 8, !tbaa !481 ; 2 uses
  %i.jdo = shufflevector <4 x i16> %i.jdn, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.jdp = mul <2 x i16> %i.jdo, splat (i16 -122)
  %i.jdq = shufflevector <4 x i16> %i.jdn, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jdr = add <2 x i16> %i.jdp, %i.jdq           ; 2 uses
  %i.jds = extractelement <2 x i16> %i.jdr, i64 0
  store i16 %i.jds, ptr %i.jdm, align 4, !tbaa !481
  %i.jdt = xor i32 %i.jci, 7
  %i.jdu = zext nneg i32 %i.jdt to i64
  %i.jdv = getelementptr inbounds nuw [2 x i8], ptr %i.ixn, i64 %i.jdu
  %i.jdw = extractelement <2 x i16> %i.jdr, i64 1
  store i16 %i.jdw, ptr %i.jdv, align 2, !tbaa !481
  br label %.loopexit1063.3.i

.loopexit1063.3.i:                                ; preds = %.preheader1062.3.i, %.loopexit1063.2.i
  %i.jdx = add nuw nsw i32 %.1918.3.i, 1
  %.1918.4.i = select i1 %i.iyf, i32 0, i32 %i.jdx ; 2 uses
  %i.jdy = icmp eq i32 %.1918.4.i, 4
  %i.jdz = or i1 %i.jcg, %i.jdy                   ; 2 uses
  %.3851.4.i = select i1 %i.jdz, i16 %i.ixm, i16 %.18491076.i ; 4 uses
  %.3.4.i = select i1 %i.jdz, i16 %i.fxk, i16 %.18451077.i ; 4 uses
  %i.jea = icmp eq i32 %.1918.4.i, %i.ixy
  br i1 %i.jea, label %.preheader1062.4.i, label %.loopexit1063.4.i

.preheader1062.4.i:                               ; preds = %.loopexit1063.3.i
  store i16 1, ptr %i.ixn, align 16, !tbaa !481
  %i.jeb = getelementptr inbounds nuw i8, ptr %i.iya, i64 6
  %i.jec = load i16, ptr %i.jeb, align 2, !tbaa !481
  %i.jed = getelementptr inbounds nuw i8, ptr %i.ixn, i64 2
  store i16 %i.jec, ptr %i.jed, align 2, !tbaa !481
  %i.jee = getelementptr inbounds nuw i8, ptr %i.iya, i64 8
  %i.jef = getelementptr inbounds nuw i8, ptr %i.ixn, i64 4
  %i.jeg = call <3 x i16> @llvm.masked.load.v3i16.p0(ptr nonnull align 8 %i.jee, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i16> poison), !tbaa !481
  %i.jeh = shufflevector <3 x i16> %i.jeg, <3 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jei = mul <2 x i16> %i.jeh, splat (i16 122)
  store <2 x i16> %i.jei, ptr %i.jef, align 4, !tbaa !481
  %i.jej = getelementptr inbounds nuw i8, ptr %i.ixn, i64 8
  store i16 123, ptr %i.jej, align 8, !tbaa !481
  %i.jek = getelementptr inbounds nuw i8, ptr %i.iya, i64 20
  %i.jel = getelementptr inbounds nuw i8, ptr %i.ixn, i64 10
  %i.jem = load <4 x i16>, ptr %i.jek, align 4, !tbaa !481 ; 2 uses
  %i.jen = shufflevector <4 x i16> %i.jem, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jeo = mul <2 x i16> %i.jen, splat (i16 122)
  %i.jep = shufflevector <4 x i16> %i.jem, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.jeq = add <2 x i16> %i.jep, %i.jeo
  store <2 x i16> %i.jeq, ptr %i.jel, align 2, !tbaa !481
  %i.jer = getelementptr inbounds nuw i8, ptr %i.iya, i64 28
  %i.jes = load i16, ptr %i.jer, align 4, !tbaa !481
  %.reass.7.4.i532 = mul i16 %i.jes, 122
  %i.jet = getelementptr inbounds nuw i8, ptr %i.iya, i64 30
  %i.jeu = load i16, ptr %i.jet, align 2, !tbaa !481
  %i.jev = add i16 %i.jeu, %.reass.7.4.i532
  %i.jew = getelementptr inbounds nuw i8, ptr %i.ixn, i64 14
  store i16 %i.jev, ptr %i.jew, align 2, !tbaa !481
  br label %.loopexit1063.4.i

.loopexit1063.4.i:                                ; preds = %.preheader1062.4.i, %.loopexit1063.3.i
  %indvars.iv.next.i509 = add nuw nsw i64 %indvars.iv.i499, 1 ; 2 uses
  %exitcond.not.i510 = icmp eq i64 %indvars.iv.next.i509, 3
  br i1 %exitcond.not.i510, label %bb.ns, label %.preheader1064.i

._crit_edge1251.i:                                ; preds = %.lr.ph1250.split.i, %._crit_edge1247.us.i, %bb.lk
  tail call void @free(ptr noundef %i.fxh) #27
  tail call fastcc void @_vng_lininterpolate(ptr noundef nonnull %i.anw, ptr noundef readonly %i.axp, i32 noundef %i.bo, i32 noundef %i.axf, i32 noundef 9, ptr noundef nonnull readonly %i.x, i32 noundef %i.aph)
  br label %xtrans_markesteijn_interpolate.exit

.lr.ph1250.split.i:                               ; preds = %.lr.ph1250.i, %.lr.ph1250.split.i
  %.09141248.i = phi i32 [ %i.jex, %.lr.ph1250.split.i ], [ %.neg.i511, %.lr.ph1250.i ]
  %i.jex = add i32 %.09141248.i, %reass.sub955.i  ; 2 uses
  %i.jey = icmp slt i32 %i.jex, %i.fye
  br i1 %i.jey, label %.lr.ph1250.split.i, label %._crit_edge1251.i

xtrans_markesteijn_interpolate.exit:              ; preds = %bb.lj, %._crit_edge1251.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %demosaic_box3.exit

bb.nt:                                            ; preds = %bb.lh
  tail call fastcc void @vng_interpolate(ptr noundef %i.anw, ptr noundef %i.axp, i32 noundef %i.bo, i32 noundef %i.axf, i32 noundef 9, ptr noundef nonnull %i.x, i32 noundef 0)
  br label %demosaic_box3.exit

bb.nu:                                            ; preds = %bb.hz
  br i1 %or.cond31, label %bb.nv, label %bb.nx

bb.nv:                                            ; preds = %bb.nu
  tail call fastcc void @vng_interpolate(ptr noundef %i.anw, ptr noundef %i.axp, i32 noundef %i.bo, i32 noundef %i.axf, i32 noundef %.fr1070, ptr noundef nonnull %i.x, i32 noundef 0)
  br i1 %i.bg, label %bb.nw, label %demosaic_box3.exit

bb.nw:                                            ; preds = %bb.nv
  %i.jez = mul nsw i32 %i.axf, %i.bo
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.anw, i32 noundef %i.jez, ptr noundef nonnull %i.aoy) #27
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
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.anw, ptr noundef %i.axp, i32 noundef %i.bo, i32 noundef %i.axf, i32 noundef range(i32 10, 9) %.fr1070, float noundef 0.000000e+00, i32 noundef 10)
  %i.jfa = icmp slt i32 %i.axf, 20
  %or.cond.i540 = or i1 %i.aoq, %i.jfa
  br i1 %or.cond.i540, label %demosaic_box3.exit, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.jfb = add nsw i32 %i.axf, -21
  %i.jfc = sdiv i32 %i.jfb, 92
  %i.jfd = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !499 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jfd, i64 64) ]
  %.not.i.i541 = icmp eq ptr %i.jfd, null
  br i1 %.not.i.i541, label %.preheader833.preheader.i, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jfd, i8 0, i64 50176, i1 false), !noalias !499
  br label %.preheader833.preheader.i

.preheader833.preheader.i:                        ; preds = %bb.oa, %bb.nz
  %i.jfe = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 28 uses
  %i.jff = ptrtoaddr ptr %i.jfe to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jfe, i64 64) ]
  %i.jfg = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !499 ; 38 uses
  %i.jfh = ptrtoaddr ptr %i.jfg to i64            ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jfg, i64 64) ]
  %i.jfi = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jfi, i64 64) ]
  %i.jfj = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 13 uses
  %i.jfk = insertelement <2 x ptr> poison, ptr %i.jfi, i64 0
  %i.jfl = insertelement <2 x ptr> %i.jfk, ptr %i.jfj, i64 1
  %i.jfm = shufflevector <2 x ptr> %i.jfl, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jfn = ptrtoaddr <4 x ptr> %i.jfm to <4 x i64>
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jfj, i64 64) ]
  %i.jfo = tail call ptr @dt_alloc_aligned(i64 noundef 150528) #27, !noalias !499 ; 61 uses
  %i.jfp = ptrtoaddr ptr %i.jfo to i64            ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jfo, i64 64) ]
  %i.jfq = getelementptr inbounds nuw i8, ptr %i.jfo, i64 50176 ; 24 uses
  %i.jfr = getelementptr inbounds nuw i8, ptr %i.jfo, i64 100352 ; 12 uses
  %scevgep2963 = getelementptr i8, ptr %i.jfo, i64 -1344
  %scevgep2965 = getelementptr i8, ptr %i.jfo, i64 101700
  %scevgep2967 = getelementptr i8, ptr %i.jfd, i64 -452
  %scevgep2969 = getelementptr i8, ptr %i.jfd, i64 456
  %scevgep3050 = getelementptr i8, ptr %i.jfo, i64 100352
  %scevgep3052 = getelementptr i8, ptr %i.jfo, i64 100356
  %scevgep3055 = getelementptr i8, ptr %i.jfe, i64 8
  %scevgep3058 = getelementptr i8, ptr %i.jfe, i64 8
  %scevgep3060 = getelementptr i8, ptr %i.jfe, i64 8
  %scevgep3064 = getelementptr i8, ptr %i.jfe, i64 12
  %scevgep3066 = getelementptr i8, ptr %i.jfo, i64 99900
  %scevgep3068 = getelementptr i8, ptr %i.jfo, i64 99904
  %scevgep3070 = getelementptr i8, ptr %i.jfo, i64 100804
  %scevgep3072 = getelementptr i8, ptr %i.jfo, i64 100808
  %scevgep3074 = getelementptr i8, ptr %i.jfo, i64 98996
  %scevgep3076 = getelementptr i8, ptr %i.jfo, i64 99000
  %scevgep3078 = getelementptr i8, ptr %i.jfo, i64 50176
  %scevgep3080 = getelementptr i8, ptr %i.jfo, i64 50180
  %scevgep3082 = getelementptr i8, ptr %i.jfo, i64 49272
  %scevgep3084 = getelementptr i8, ptr %i.jfo, i64 49276
  %scevgep3086 = getelementptr i8, ptr %i.jfo, i64 99908
  %scevgep3088 = getelementptr i8, ptr %i.jfo, i64 99912
  %scevgep3090 = getelementptr i8, ptr %i.jfo, i64 100796
  %scevgep3092 = getelementptr i8, ptr %i.jfo, i64 100800
  %scevgep3094 = getelementptr i8, ptr %i.jfo, i64 99020
  %scevgep3096 = getelementptr i8, ptr %i.jfo, i64 99024
  %scevgep3098 = getelementptr i8, ptr %i.jfo, i64 49288
  %scevgep3100 = getelementptr i8, ptr %i.jfo, i64 49292
  %scevgep3102 = getelementptr i8, ptr %i.jfo, i64 101684
  %scevgep3104 = getelementptr i8, ptr %i.jfo, i64 101688
  %scevgep3106 = getelementptr i8, ptr %i.jfo, i64 51064
  %scevgep3108 = getelementptr i8, ptr %i.jfo, i64 51068
  %scevgep3110 = getelementptr i8, ptr %i.jfo, i64 101708
  %scevgep3112 = getelementptr i8, ptr %i.jfo, i64 101712
  %scevgep3114 = getelementptr i8, ptr %i.jfo, i64 51080
  %scevgep3116 = getelementptr i8, ptr %i.jfo, i64 51084
  %scevgep3118 = getelementptr i8, ptr %i.jfo, i64 49724
  %scevgep3120 = getelementptr i8, ptr %i.jfo, i64 49728
  %scevgep3122 = getelementptr i8, ptr %i.jfo, i64 49732
  %scevgep3124 = getelementptr i8, ptr %i.jfo, i64 49736
  %scevgep3126 = getelementptr i8, ptr %i.jfo, i64 50620
  %scevgep3128 = getelementptr i8, ptr %i.jfo, i64 50624
  %scevgep3130 = getelementptr i8, ptr %i.jfo, i64 50628
  %scevgep3132 = getelementptr i8, ptr %i.jfo, i64 50632
  %i.jfs = insertelement <4 x i64> poison, i64 %i.jff, i64 0
  %i.jft = shufflevector <4 x i64> %i.jfs, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jfu = or disjoint <4 x i64> %i.jft, <i64 4, i64 8, i64 8, i64 4>
  %scevgep3308 = getelementptr i8, ptr %i.jfg, i64 -1344
  %scevgep3313 = getelementptr i8, ptr %i.jfg, i64 -440
  %scevgep3315 = getelementptr i8, ptr %i.jfg, i64 -892
  %scevgep3317 = getelementptr i8, ptr %i.jfg, i64 12
  %scevgep3319 = getelementptr i8, ptr %i.jfg, i64 -1320
  %scevgep3321 = getelementptr i8, ptr %i.jfg, i64 -432
  %scevgep3323 = getelementptr i8, ptr %i.jfg, i64 -876
  %scevgep3333 = getelementptr i8, ptr %i.jfg, i64 -1344
  %scevgep3335 = getelementptr i8, ptr %i.jfg, i64 1364
  %scevgep3387 = getelementptr i8, ptr %i.jfo, i64 50176
  %scevgep3389 = getelementptr i8, ptr %i.jfo, i64 50180
  %scevgep3391 = getelementptr i8, ptr %i.jfg, i64 -1792
  %scevgep3393 = getelementptr i8, ptr %i.jfg, i64 1796
  %scevgep3395 = getelementptr i8, ptr %i.jfe, i64 -448
  %scevgep3397 = getelementptr i8, ptr %i.jfe, i64 452
  %scevgep3399 = getelementptr i8, ptr %i.jfd, i64 -452
  %scevgep3401 = getelementptr i8, ptr %i.jfd, i64 456
  %scevgep3478 = getelementptr i8, ptr %i.jfe, i64 4
  %scevgep3480 = getelementptr i8, ptr %i.jfg, i64 -452
  %scevgep3482 = getelementptr i8, ptr %i.jfg, i64 456
  %scevgep3514 = getelementptr i8, ptr %i.jfd, i64 16
  %scevgep3565 = getelementptr i8, ptr %i.jfg, i64 -1328
  %scevgep3567 = getelementptr i8, ptr %i.jfg, i64 1344
  %invariant.op4857 = sub i64 %i.jfh, %i.jfp      ; 2 uses
  br label %.preheader833.i

.preheader833.i:                                  ; preds = %._crit_edge939.i, %.preheader833.preheader.i
  %indvars.iv1056.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next1057.i, %._crit_edge939.i ] ; 2 uses
  %indvars.iv947.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next948.i, %._crit_edge939.i ] ; 2 uses
  %.0740941.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %i.jgs, %._crit_edge939.i ] ; 4 uses
  %i.jfv = mul nuw nsw i32 %.0740941.i, 92        ; 5 uses
  %i.jfw = add nuw nsw i32 %i.jfv, 112            ; 2 uses
  %i.jfx = tail call i32 @llvm.smin.i32(i32 %i.jfw, i32 %i.axf) ; 3 uses
  %i.jfy = sub nsw i32 %i.jfx, %i.jfv             ; 6 uses
  %i.jfz = icmp sgt i32 %i.jfw, %i.axf
  %i.jga = icmp sgt i32 %i.axf, %i.jfv
  %i.jgb = add nsw i32 %i.jfy, -3                 ; 2 uses
  %i.jgc = tail call i32 @llvm.smin.i32(i32 %i.jgb, i32 5)
  %i.jgd = icmp sgt i32 %i.jfy, 6                 ; 2 uses
  %i.jge = add nsw i32 %i.jfy, -4                 ; 5 uses
  %i.jgf = icmp sgt i32 %i.jfy, 8                 ; 3 uses
  %i.jgg = add nsw i32 %i.jfy, -2
  %i.jgh = icmp sgt i32 %i.jfy, 4
  %i.jgi = icmp eq i32 %.0740941.i, 0
  %i.jgj = select i1 %i.jgi, i32 9, i32 10        ; 3 uses
  %i.jgk = add nuw nsw i32 %i.jgj, %i.jfv         ; 2 uses
  %i.jgl = icmp eq i32 %.0740941.i, %i.jfc        ; 2 uses
  %.neg.i542 = select i1 %i.jgl, i32 -9, i32 -10
  %i.jgm = add nsw i32 %i.jfx, %.neg.i542         ; 2 uses
  %i.jgn = icmp slt i32 %i.jgk, %i.jgm
  %i.jgo = sext i32 %i.jgc to i64
  %i.jgp = add i32 %i.jgj, %indvars.iv1056.i
  %i.jgq = mul i32 %i.jgp, %i.bo
  %i.jgr = mul nuw nsw i32 %i.jgj, 112
  %invariant.op.i = add nsw i64 %i.jgo, -1
  br label %bb.ob

._crit_edge942.split.i:                           ; preds = %._crit_edge939.i
  tail call void @free(ptr noundef %i.jfg) #27, !noalias !499
  tail call void @free(ptr noundef %i.jfo) #27, !noalias !499
  tail call void @free(ptr noundef %i.jfd) #27, !noalias !499
  tail call void @free(ptr noundef %i.jfe) #27, !noalias !499
  tail call void @free(ptr noundef %i.jfi) #27, !noalias !499
  tail call void @free(ptr noundef %i.jfj) #27, !noalias !499
  br label %demosaic_box3.exit

._crit_edge939.i:                                 ; preds = %._crit_edge935.split.i
  %i.jgs = add nuw nsw i32 %.0740941.i, 1
  %indvars.iv.next948.i = add i32 %indvars.iv947.i, %i.aov
  %indvars.iv.next1057.i = add nuw i32 %indvars.iv1056.i, 92
  br i1 %i.jgl, label %._crit_edge942.split.i, label %.preheader833.i

bb.ob:                                            ; preds = %._crit_edge935.split.i, %.preheader833.i
  %indvars.iv1058.i = phi i32 [ %i.jgq, %.preheader833.i ], [ %indvars.iv.next1059.i, %._crit_edge935.split.i ] ; 2 uses
  %indvars.iv949.i = phi i32 [ %indvars.iv947.i, %.preheader833.i ], [ %indvars.iv.next950.i, %._crit_edge935.split.i ] ; 2 uses
  %.0745937.i = phi i32 [ 0, %.preheader833.i ], [ %i.lsq, %._crit_edge935.split.i ] ; 5 uses
  %i.jgt = phi <2 x i32> [ <i32 112, i32 0>, %.preheader833.i ], [ %i.lsr, %._crit_edge935.split.i ] ; 5 uses
  %i.jgu = extractelement <2 x i32> %i.jgt, i64 0 ; 4 uses
  %smin3639 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.jgu)
  %i.jgv = mul i32 %.0745937.i, 92
  %i.jgw = or disjoint i32 %i.jgv, 1
  %smax3640 = call i32 @llvm.smax.i32(i32 %smin3639, i32 %i.jgw)
  %i.jgx = extractelement <2 x i32> %i.jgt, i64 1 ; 5 uses
  %i.jgy = add i32 %i.jgx, -1
  %i.jgz = add i32 %smax3640, %i.jgy              ; 3 uses
  %i.jha = zext i32 %i.jgz to i64
  %i.jhb = add nuw nsw i64 %i.jha, 1              ; 5 uses
  %smin3562 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.jgu)
  %i.jhc = add i32 %smin3562, %i.jgx
  %smin3563 = call i32 @llvm.smin.i32(i32 %i.jhc, i32 112)
  %i.jhd = add i32 %smin3563, -4
  %i.jhe = sext i32 %i.jhd to i64
  %i.jhf = shl nsw i64 %i.jhe, 2                  ; 2 uses
  %smin3516 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.jgu)
  %i.jhg = add i32 %smin3516, %i.jgx
  %smin3517 = call i32 @llvm.smin.i32(i32 %i.jhg, i32 112)
  %i.jhh = add i32 %smin3517, -4
  %i.jhi = sext i32 %i.jhh to i64
  %i.jhj = shl nsw i64 %i.jhi, 2                  ; 5 uses
  %scevgep3527 = getelementptr i8, ptr %scevgep3526, i64 %i.jhj
  %smin3327 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.jgu)
  %i.jhk = add i32 %smin3327, %i.jgx
  %smin3328 = call i32 @llvm.smin.i32(i32 %i.jhk, i32 112)
  %i.jhl = add i32 %smin3328, -3
  %smax3329 = call i32 @llvm.smax.i32(i32 %i.jhl, i32 5)
  %i.jhm = add nsw i32 %smax3329, -4
  %i.jhn = lshr i32 %i.jhm, 1
  %i.jho = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.awb, <2 x i32> %i.jgt)
  %i.jhp = shufflevector <2 x i32> %i.jho, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jhq = add i32 %i.jgx, -1
  %i.jhr = shufflevector <2 x i32> %i.jgt, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %i.jhs = add <2 x i32> %i.jhp, %i.jhr
  %i.jht = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.jhs, <2 x i32> splat (i32 112)) ; 2 uses
  %i.jhu = extractelement <2 x i32> %i.jht, i64 0 ; 11 uses
  %i.jhv = add <2 x i32> %i.jht, splat (i32 -3)
  %i.jhw = add i32 %i.jhu, -3                     ; 2 uses
  %i.jhx = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jhv, <2 x i32> splat (i32 5))
  %i.jhy = add nsw <2 x i32> %i.jhx, splat (i32 -4)
  %i.jhz = add i32 %i.jhu, -4
  %i.jia = sext i32 %i.jhz to i64                 ; 10 uses
  %i.jib = sext i32 %i.jhw to i64                 ; 2 uses
  %i.jic = add nsw i64 %i.jia, 336
  %i.jid = lshr <2 x i32> %i.jhy, splat (i32 1)
  %i.jie = mul i32 %.0745937.i, 92                ; 8 uses
  %i.jif = add i32 %i.jie, 112                    ; 2 uses
  %i.jig = tail call i32 @llvm.smin.i32(i32 %i.jif, i32 %i.bo) ; 4 uses
  %i.jih = sub nsw i32 %i.jig, %i.jie             ; 4 uses
  %i.jii = tail call i32 @llvm.smin.i32(i32 %i.jih, i32 112) ; 3 uses
  %i.jij = icmp sgt i32 %i.jif, %i.bo
  %or.cond794.i = select i1 %i.jfz, i1 true, i1 %i.jij
  br i1 %or.cond794.i, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jfd, i8 0, i64 50176, i1 false), !noalias !499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(150528) %i.jfo, i8 0, i64 150528, i1 false), !noalias !499
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %i.jik = icmp sgt i32 %i.bo, %i.jie
  %or.cond943.i = select i1 %i.jga, i1 %i.jik, i1 false
  br i1 %or.cond943.i, label %iter.check3662.preheader, label %._crit_edge842.split.i

iter.check3662.preheader:                         ; preds = %bb.od
  %min.iters.check3642 = icmp ult i32 %i.jgz, 3
  %min.iters.check3644 = icmp ult i32 %i.jgz, 31
  %i.jil = and i64 %i.jhb, 28
  %n.vec3646 = and i64 %i.jhb, 8589934560         ; 6 uses
  %i.jim = trunc i64 %n.vec3646 to i32
  %i.jin = add i32 %i.jie, %i.jim
  %cmp.n3657 = icmp eq i64 %i.jhb, %n.vec3646
  %min.epilog.iters.check3665 = icmp eq i64 %i.jil, 0
  %n.vec3667 = and i64 %i.jhb, 8589934588         ; 5 uses
  %i.jio = trunc i64 %n.vec3667 to i32
  %i.jip = add i32 %i.jie, %i.jio
  %cmp.n3675 = icmp eq i64 %i.jhb, %n.vec3667
  br label %iter.check3662

._crit_edge842.split.i:                           ; preds = %._crit_edge.i549, %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !501
  br i1 %i.jgd, label %.lr.ph850.i, label %._crit_edge851.split.thread.i

._crit_edge851.split.thread.i:                    ; preds = %._crit_edge842.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !501
  br label %.preheader832.i

.lr.ph850.i:                                      ; preds = %._crit_edge842.split.i
  %i.jiq = icmp sgt i32 %i.jih, 8                 ; 2 uses
  br i1 %i.jiq, label %.lr.ph846.i.preheader, label %._crit_edge851.split.i

.lr.ph846.i.preheader:                            ; preds = %.lr.ph850.i
  %i.jir = add nsw i64 %i.jia, -4                 ; 3 uses
  %min.iters.check3609 = icmp ult i64 %i.jir, 8
  %n.vec3611 = and i64 %i.jir, -8                 ; 4 uses
  %i.jis = or disjoint i64 %n.vec3611, 4
  %cmp.n3623 = icmp eq i64 %i.jir, %n.vec3611
  br label %.lr.ph846.i

iter.check3662:                                   ; preds = %iter.check3662.preheader, %._crit_edge.i549
  %indvars.iv951.i = phi i32 [ %indvars.iv.next952.i, %._crit_edge.i549 ], [ %indvars.iv949.i, %iter.check3662.preheader ] ; 3 uses
  %indvars.iv.i548 = phi i32 [ %indvars.iv.next.i550, %._crit_edge.i549 ], [ 0, %iter.check3662.preheader ] ; 3 uses
  %.0746839.i = phi i32 [ %i.jlg, %._crit_edge.i549 ], [ %i.jfv, %iter.check3662.preheader ] ; 2 uses
  %i.jit = zext i32 %indvars.iv.i548 to i64       ; 6 uses
  %i.jiu = zext i32 %indvars.iv951.i to i64       ; 6 uses
  %i.jiv = shl i32 %.0746839.i, 2
  %i.jiw = and i32 %i.jiv, 28                     ; 2 uses
  %i.jix = lshr i32 %.fr1070, %i.jiw
  %i.jiy = and i32 %i.jix, 3
  %i.jiz = or disjoint i32 %i.jiw, 2
  %i.jja = lshr i32 %.fr1070, %i.jiz
  %i.jjb = and i32 %i.jja, 3
  %i.jjc = zext nneg i32 %i.jjb to i64            ; 2 uses
  %i.jjd = getelementptr inbounds nuw [50176 x i8], ptr %i.jfo, i64 %i.jjc ; 3 uses
  %i.jje = zext nneg i32 %i.jiy to i64            ; 2 uses
  %i.jjf = getelementptr inbounds nuw [50176 x i8], ptr %i.jfo, i64 %i.jje ; 3 uses
  br i1 %min.iters.check3642, label %vec.epilog.scalar.ph3663.preheader, label %vector.memcheck3626

vector.memcheck3626:                              ; preds = %iter.check3662
  %i.jjg = zext i32 %indvars.iv.i548 to i64
  %i.jjh = shl nuw nsw i64 %i.jjg, 2              ; 3 uses
  %i.jji = add i64 %i.jjh, %i.jfh
  %i.jjj = zext i32 %indvars.iv951.i to i64
  %i.jjk = add nsw i64 %i.axo, %i.jjj
  %i.jjl = shl nsw i64 %i.jjk, 2
  %i.jjm = add i64 %i.jjl, %.13630                ; 3 uses
  %i.jjn = mul nuw nsw i64 %i.jje, 50176          ; 2 uses
  %i.jjo = mul nuw nsw i64 %i.jjc, 50176          ; 2 uses
  %6 = sub i64 %i.jjo, %invariant.op4857
  %diff.check3628 = icmp ugt i64 %6, -128
  %i.jjp = add i64 %i.jjo, %i.jfp
  %i.jjq = add i64 %i.jjp, %i.jjh
  %i.jjr = sub i64 %i.jjm, %i.jjq
  %diff.check3631 = icmp ugt i64 %i.jjr, -128
  %conflict.rdx3632 = or i1 %diff.check3628, %diff.check3631
  %7 = sub i64 %i.jjn, %invariant.op4857
  %diff.check3633 = icmp ugt i64 %7, -128
  %conflict.rdx3634 = or i1 %conflict.rdx3632, %diff.check3633
  %i.jjs = add i64 %i.jjn, %i.jfp
  %i.jjt = add i64 %i.jjs, %i.jjh
  %i.jju = sub i64 %i.jjm, %i.jjt
  %diff.check3635 = icmp ugt i64 %i.jju, -128
  %conflict.rdx3636 = or i1 %conflict.rdx3634, %diff.check3635
  %i.jjv = sub i64 %i.jjm, %i.jji
  %diff.check3637 = icmp ugt i64 %i.jjv, -128
  %conflict.rdx3638 = or i1 %conflict.rdx3636, %diff.check3637
  br i1 %conflict.rdx3638, label %vec.epilog.scalar.ph3663.preheader, label %vector.main.loop.iter.check3643

vector.main.loop.iter.check3643:                  ; preds = %vector.memcheck3626
  br i1 %min.iters.check3644, label %vec.epilog.ph3666, label %vector.ph3645

vector.ph3645:                                    ; preds = %vector.main.loop.iter.check3643
  %i.jjw = add nuw nsw i64 %n.vec3646, %i.jiu
  %i.jjx = add nuw nsw i64 %n.vec3646, %i.jit
  %invariant.gep4851 = getelementptr [4 x i8], ptr %i.axp, i64 %i.jiu
  br label %vector.body3649

vector.body3649:                                  ; preds = %vector.ph3645, %vector.body3649
  %index3650 = phi i64 [ 0, %vector.ph3645 ], [ %index.next3655, %vector.body3649 ] ; 3 uses
  %i.jjy = add nuw i64 %index3650, %i.jit         ; 3 uses
  %gep4852 = getelementptr [4 x i8], ptr %invariant.gep4851, i64 %index3650 ; 4 uses
  %i.jjz = getelementptr inbounds nuw i8, ptr %gep4852, i64 32
  %i.jka = getelementptr inbounds nuw i8, ptr %gep4852, i64 64
  %i.jkb = getelementptr inbounds nuw i8, ptr %gep4852, i64 96
  %wide.load3651 = load <8 x float>, ptr %gep4852, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %wide.load3652 = load <8 x float>, ptr %i.jjz, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %wide.load3653 = load <8 x float>, ptr %i.jka, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %wide.load3654 = load <8 x float>, ptr %i.jkb, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %i.jkc = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3651, <8 x float> zeroinitializer)
  %i.jkd = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3652, <8 x float> zeroinitializer)
  %i.jke = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3653, <8 x float> zeroinitializer)
  %i.jkf = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3654, <8 x float> zeroinitializer)
  %i.jkg = fmul reassoc nsz arcp contract afn <8 x float> %i.jkc, %i.awc ; 3 uses
  %i.jkh = fmul reassoc nsz arcp contract afn <8 x float> %i.jkd, %i.awd ; 3 uses
  %i.jki = fmul reassoc nsz arcp contract afn <8 x float> %i.jke, %i.awe ; 3 uses
  %i.jkj = fmul reassoc nsz arcp contract afn <8 x float> %i.jkf, %i.awf ; 3 uses
  %i.jkk = getelementptr inbounds nuw [4 x i8], ptr %i.jjd, i64 %i.jjy ; 4 uses
  %i.jkl = getelementptr inbounds nuw i8, ptr %i.jkk, i64 32
  %i.jkm = getelementptr inbounds nuw i8, ptr %i.jkk, i64 64
  %i.jkn = getelementptr inbounds nuw i8, ptr %i.jkk, i64 96
  store <8 x float> %i.jkg, ptr %i.jkk, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jkh, ptr %i.jkl, align 32, !tbaa !12, !noalias !499
  store <8 x float> %i.jki, ptr %i.jkm, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jkj, ptr %i.jkn, align 32, !tbaa !12, !noalias !499
  %i.jko = getelementptr inbounds nuw [4 x i8], ptr %i.jjf, i64 %i.jjy ; 4 uses
  %i.jkp = getelementptr inbounds nuw i8, ptr %i.jko, i64 32
  %i.jkq = getelementptr inbounds nuw i8, ptr %i.jko, i64 64
  %i.jkr = getelementptr inbounds nuw i8, ptr %i.jko, i64 96
  store <8 x float> %i.jkg, ptr %i.jko, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jkh, ptr %i.jkp, align 32, !tbaa !12, !noalias !499
  store <8 x float> %i.jki, ptr %i.jkq, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jkj, ptr %i.jkr, align 32, !tbaa !12, !noalias !499
  %i.jks = getelementptr inbounds nuw [4 x i8], ptr %i.jfg, i64 %i.jjy ; 4 uses
  %i.jkt = getelementptr inbounds nuw i8, ptr %i.jks, i64 32
  %i.jku = getelementptr inbounds nuw i8, ptr %i.jks, i64 64
  %i.jkv = getelementptr inbounds nuw i8, ptr %i.jks, i64 96
  store <8 x float> %i.jkg, ptr %i.jks, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jkh, ptr %i.jkt, align 32, !tbaa !12, !noalias !499
  store <8 x float> %i.jki, ptr %i.jku, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jkj, ptr %i.jkv, align 32, !tbaa !12, !noalias !499
  %index.next3655 = add nuw i64 %index3650, 32    ; 2 uses
  %i.jkw = icmp eq i64 %index.next3655, %n.vec3646
  br i1 %i.jkw, label %middle.block3656, label %vector.body3649, !llvm.loop !259

middle.block3656:                                 ; preds = %vector.body3649
  br i1 %cmp.n3657, label %._crit_edge.i549, label %vec.epilog.iter.check3664

vec.epilog.iter.check3664:                        ; preds = %middle.block3656
  br i1 %min.epilog.iters.check3665, label %vec.epilog.scalar.ph3663.preheader, label %vec.epilog.ph3666, !prof !469

vec.epilog.ph3666:                                ; preds = %vector.main.loop.iter.check3643, %vec.epilog.iter.check3664
  %vec.epilog.resume.val3658 = phi i64 [ %n.vec3646, %vec.epilog.iter.check3664 ], [ 0, %vector.main.loop.iter.check3643 ]
  %i.jkx = add nuw nsw i64 %n.vec3667, %i.jiu
  %i.jky = add nuw nsw i64 %n.vec3667, %i.jit
  %invariant.gep4853 = getelementptr [4 x i8], ptr %i.axp, i64 %i.jiu
  br label %vec.epilog.vector.body3670

vec.epilog.vector.body3670:                       ; preds = %vec.epilog.vector.body3670, %vec.epilog.ph3666
  %index3671 = phi i64 [ %vec.epilog.resume.val3658, %vec.epilog.ph3666 ], [ %index.next3673, %vec.epilog.vector.body3670 ] ; 3 uses
  %i.jkz = add nuw i64 %index3671, %i.jit         ; 3 uses
  %gep4854 = getelementptr [4 x i8], ptr %invariant.gep4853, i64 %index3671
  %wide.load3672 = load <4 x float>, ptr %gep4854, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %i.jla = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load3672, <4 x float> zeroinitializer)
  %i.jlb = fmul reassoc nsz arcp contract afn <4 x float> %i.jla, %i.awg ; 3 uses
  %i.jlc = getelementptr inbounds nuw [4 x i8], ptr %i.jjd, i64 %i.jkz
  store <4 x float> %i.jlb, ptr %i.jlc, align 16, !tbaa !12, !noalias !499
  %i.jld = getelementptr inbounds nuw [4 x i8], ptr %i.jjf, i64 %i.jkz
  store <4 x float> %i.jlb, ptr %i.jld, align 16, !tbaa !12, !noalias !499
  %i.jle = getelementptr inbounds nuw [4 x i8], ptr %i.jfg, i64 %i.jkz
  store <4 x float> %i.jlb, ptr %i.jle, align 16, !tbaa !12, !noalias !499
  %index.next3673 = add nuw i64 %index3671, 4     ; 2 uses
  %i.jlf = icmp eq i64 %index.next3673, %n.vec3667
  br i1 %i.jlf, label %vec.epilog.middle.block3674, label %vec.epilog.vector.body3670, !llvm.loop !260

vec.epilog.middle.block3674:                      ; preds = %vec.epilog.vector.body3670
  br i1 %cmp.n3675, label %._crit_edge.i549, label %vec.epilog.scalar.ph3663.preheader

vec.epilog.scalar.ph3663.preheader:               ; preds = %iter.check3662, %vector.memcheck3626, %vec.epilog.iter.check3664, %vec.epilog.middle.block3674
  %indvars.iv953.i.ph = phi i64 [ %i.jiu, %iter.check3662 ], [ %i.jiu, %vector.memcheck3626 ], [ %i.jjw, %vec.epilog.iter.check3664 ], [ %i.jkx, %vec.epilog.middle.block3674 ]
  %indvars.iv945.i.ph = phi i64 [ %i.jit, %iter.check3662 ], [ %i.jit, %vector.memcheck3626 ], [ %i.jjx, %vec.epilog.iter.check3664 ], [ %i.jky, %vec.epilog.middle.block3674 ]
  %.0747838.i.ph = phi i32 [ %i.jie, %iter.check3662 ], [ %i.jie, %vector.memcheck3626 ], [ %i.jin, %vec.epilog.iter.check3664 ], [ %i.jip, %vec.epilog.middle.block3674 ]
  br label %vec.epilog.scalar.ph3663

._crit_edge.i549:                                 ; preds = %vec.epilog.scalar.ph3663, %vec.epilog.middle.block3674, %middle.block3656
  %i.jlg = add nuw nsw i32 %.0746839.i, 1         ; 2 uses
  %i.jlh = icmp slt i32 %i.jlg, %i.jfx
  %indvars.iv.next.i550 = add i32 %indvars.iv.i548, 112
  %indvars.iv.next952.i = add i32 %indvars.iv951.i, %i.bo
  br i1 %i.jlh, label %iter.check3662, label %._crit_edge842.split.i

vec.epilog.scalar.ph3663:                         ; preds = %vec.epilog.scalar.ph3663.preheader, %vec.epilog.scalar.ph3663
  %indvars.iv953.i = phi i64 [ %indvars.iv.next954.i, %vec.epilog.scalar.ph3663 ], [ %indvars.iv953.i.ph, %vec.epilog.scalar.ph3663.preheader ] ; 2 uses
  %indvars.iv945.i = phi i64 [ %indvars.iv.next946.i, %vec.epilog.scalar.ph3663 ], [ %indvars.iv945.i.ph, %vec.epilog.scalar.ph3663.preheader ] ; 4 uses
  %.0747838.i = phi i32 [ %i.jlp, %vec.epilog.scalar.ph3663 ], [ %.0747838.i.ph, %vec.epilog.scalar.ph3663.preheader ]
  %i.jli = getelementptr inbounds nuw [4 x i8], ptr %i.axp, i64 %indvars.iv953.i
  %i.jlj = load float, ptr %i.jli, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %i.jlk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jlj, float 0.000000e+00)
  %i.jll = fmul reassoc nsz arcp contract afn float %i.jlk, %i.awh ; 3 uses
  %i.jlm = getelementptr inbounds nuw [4 x i8], ptr %i.jjd, i64 %indvars.iv945.i
  store float %i.jll, ptr %i.jlm, align 4, !tbaa !12, !noalias !499
  %i.jln = getelementptr inbounds nuw [4 x i8], ptr %i.jjf, i64 %indvars.iv945.i
  store float %i.jll, ptr %i.jln, align 4, !tbaa !12, !noalias !499
  %i.jlo = getelementptr inbounds nuw [4 x i8], ptr %i.jfg, i64 %indvars.iv945.i
  store float %i.jll, ptr %i.jlo, align 4, !tbaa !12, !noalias !499
  %i.jlp = add nuw nsw i32 %.0747838.i, 1         ; 2 uses
  %indvars.iv.next946.i = add nuw nsw i64 %indvars.iv945.i, 1
  %indvars.iv.next954.i = add nuw nsw i64 %indvars.iv953.i, 1
  %i.jlq = icmp slt i32 %i.jlp, %i.jig
  br i1 %i.jlq, label %vec.epilog.scalar.ph3663, label %._crit_edge.i549, !llvm.loop !261

._crit_edge851.split.i:                           ; preds = %._crit_edge847.i, %.lr.ph850.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !501
  br i1 %i.jgf, label %.lr.ph872.i, label %.preheader832.i

.lr.ph872.i:                                      ; preds = %._crit_edge851.split.i
  %i.jlr = icmp sgt i32 %i.jih, 6
  br i1 %i.jlr, label %.lr.ph855.preheader.i.preheader, label %.lr.ph881.i

.lr.ph855.preheader.i.preheader:                  ; preds = %.lr.ph872.i
  %scevgep3518 = getelementptr i8, ptr %i.jfd, i64 %i.jhj
  %scevgep3568 = getelementptr i8, ptr %scevgep3567, i64 %i.jhf
  %i.jls = add nsw i64 %i.jia, -1
  %i.jlt = add nsw i64 %i.jia, -1
  %i.jlu = add nsw i64 %i.jib, -3                 ; 3 uses
  %min.iters.check3592 = icmp ult i64 %i.jlu, 8
  %n.vec3594 = and i64 %i.jlu, -8                 ; 4 uses
  %i.jlv = or disjoint i64 %n.vec3594, 3
  %cmp.n3605 = icmp eq i64 %i.jlu, %n.vec3594
  %i.jlw = add nsw i64 %i.jia, -4                 ; 3 uses
  %min.iters.check3574 = icmp ult i64 %i.jlw, 8
  %n.vec3576 = and i64 %i.jlw, -8                 ; 4 uses
  %i.jlx = or disjoint i64 %n.vec3576, 4
  %cmp.n3588 = icmp eq i64 %i.jlw, %n.vec3576
  %i.jly = add nsw i64 %i.jia, -4                 ; 3 uses
  %min.iters.check3544 = icmp ult i64 %i.jly, 8
  %n.vec3546 = and i64 %i.jly, -8                 ; 4 uses
  %i.jlz = or disjoint i64 %n.vec3546, 4
  %cmp.n3557 = icmp eq i64 %i.jly, %n.vec3546
  br label %.lr.ph855.preheader.i

.lr.ph846.i:                                      ; preds = %.lr.ph846.i.preheader, %._crit_edge847.i
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166, %._crit_edge847.i ], [ %i.jic, %.lr.ph846.i.preheader ] ; 2 uses
  %.sroa.phi = phi ptr [ %.sroa.gep, %._crit_edge847.i ], [ %.sroa.gep4799, %.lr.ph846.i.preheader ] ; 2 uses
  %indvars.iv967.i = phi i64 [ 4, %._crit_edge847.i ], [ 3, %.lr.ph846.i.preheader ]
  %indvars.iv960.i = phi i64 [ %indvars.iv.next961.i, %._crit_edge847.i ], [ 340, %.lr.ph846.i.preheader ] ; 4 uses
  br i1 %min.iters.check3609, label %scalar.ph3608.preheader, label %vector.ph3610

vector.ph3610:                                    ; preds = %.lr.ph846.i
  %i.jma = add i64 %indvars.iv960.i, %n.vec3611
  %i.jmb = getelementptr [4 x i8], ptr %i.jfg, i64 %indvars.iv960.i
  br label %vector.body3612

vector.body3612:                                  ; preds = %vector.body3612, %vector.ph3610
  %index3613 = phi i64 [ 0, %vector.ph3610 ], [ %index.next3621, %vector.body3612 ] ; 3 uses
  %i.jmc = getelementptr [4 x i8], ptr %i.jmb, i64 %index3613 ; 7 uses
  %i.jmd = getelementptr i8, ptr %i.jmc, i64 -1344
  %wide.load3614 = load <8 x float>, ptr %i.jmd, align 16, !tbaa !12, !noalias !499
  %i.jme = getelementptr i8, ptr %i.jmc, i64 -448
  %wide.load3615 = load <8 x float>, ptr %i.jme, align 16, !tbaa !12, !noalias !499
  %i.jmf = getelementptr inbounds nuw i8, ptr %i.jmc, i64 448
  %wide.load3616 = load <8 x float>, ptr %i.jmf, align 16, !tbaa !12, !noalias !499
  %i.jmg = getelementptr inbounds nuw i8, ptr %i.jmc, i64 1344
  %wide.load3617 = load <8 x float>, ptr %i.jmg, align 16, !tbaa !12, !noalias !499
  %i.jmh = getelementptr i8, ptr %i.jmc, i64 -896
  %wide.load3618 = load <8 x float>, ptr %i.jmh, align 16, !tbaa !12, !noalias !499
  %i.jmi = getelementptr inbounds nuw i8, ptr %i.jmc, i64 896
  %wide.load3619 = load <8 x float>, ptr %i.jmi, align 16, !tbaa !12, !noalias !499
  %i.jmj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3619, %wide.load3618
  %i.jmk = fmul reassoc nsz arcp contract afn <8 x float> %i.jmj, splat (float -3.000000e+00)
  %wide.load3620 = load <8 x float>, ptr %i.jmc, align 16, !tbaa !12, !noalias !499
  %i.jml = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3620, splat (float 6.000000e+00)
  %i.jmm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3615, %wide.load3616
  %i.jmn = fsub reassoc nsz arcp contract afn <8 x float> %wide.load3614, %i.jmm
  %i.jmo = fadd reassoc nsz arcp contract afn <8 x float> %i.jmn, %wide.load3617
  %i.jmp = fadd reassoc nsz arcp contract afn <8 x float> %i.jmo, %i.jmk
  %i.jmq = fadd reassoc nsz arcp contract afn <8 x float> %i.jmp, %i.jml ; 2 uses
  %i.jmr = fmul reassoc nsz arcp contract afn <8 x float> %i.jmq, %i.jmq
end_hunk_0
