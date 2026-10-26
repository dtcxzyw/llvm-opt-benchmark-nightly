Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/connectedcomponents?download=true
inline.NumInlined: 3211
inline.NumDeleted: 270
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.div = zext i16 %.0.i15.i3077 to i64
  %i.diw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.div
  %i.dix = load i16, ptr %i.diw, align 2, !tbaa !54 ; 2 uses
  %i.diy = icmp ult i16 %i.dix, %.0.i15.i3077
  br i1 %i.diy, label %.preheader.i3076, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078: ; preds = %.preheader.i3076
  %spec.select.i3079 = tail call i16 @llvm.umin.i16(i16 %.0.i.i3073, i16 %.0.i15.i3077) ; 3 uses
  %i.diz = zext i16 %i.diq to i64
  %i.dja = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.diz ; 3 uses
  %i.djb = load i16, ptr %i.dja, align 2, !tbaa !54 ; 2 uses
  %i.djc = icmp ult i16 %i.djb, %i.diq
  br i1 %i.djc, label %.lr.ph.i.i3085, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3080

.lr.ph.i.i3085:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078, %.lr.ph.i.i3085
  %i.djd = phi i16 [ %i.djh, %.lr.ph.i.i3085 ], [ %i.djb, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078 ] ; 2 uses
  %i.dje = phi ptr [ %i.djg, %.lr.ph.i.i3085 ], [ %i.dja, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078 ]
  store i16 %spec.select.i3079, ptr %i.dje, align 2, !tbaa !54
  %i.djf = zext i16 %i.djd to i64
  %i.djg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.djf ; 3 uses
  %i.djh = load i16, ptr %i.djg, align 2, !tbaa !54 ; 2 uses
  %i.dji = icmp ult i16 %i.djh, %i.djd
  br i1 %i.dji, label %.lr.ph.i.i3085, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3080, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3080: ; preds = %.lr.ph.i.i3085, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078
  %.lcssa.i.i3081 = phi ptr [ %i.dja, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078 ], [ %i.djg, %.lr.ph.i.i3085 ]
  store i16 %spec.select.i3079, ptr %.lcssa.i.i3081, align 2, !tbaa !54
  br label %bb.qt

bb.qt:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3080, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i3074
  %.1.i3082 = phi i16 [ %spec.select.i3079, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3080 ], [ %.0.i.i3073, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i3074 ] ; 3 uses
  %i.djj = zext i16 %i.dio to i64
  %i.djk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.djj ; 3 uses
  %i.djl = load i16, ptr %i.djk, align 2, !tbaa !54 ; 2 uses
  %i.djm = icmp ult i16 %i.djl, %i.dio
  br i1 %i.djm, label %.lr.ph.i18.i3084, label %.loopexit3290

.lr.ph.i18.i3084:                                 ; preds = %bb.qt, %.lr.ph.i18.i3084
  %i.djn = phi i16 [ %i.djr, %.lr.ph.i18.i3084 ], [ %i.djl, %bb.qt ] ; 2 uses
  %i.djo = phi ptr [ %i.djq, %.lr.ph.i18.i3084 ], [ %i.djk, %bb.qt ]
  store i16 %.1.i3082, ptr %i.djo, align 2, !tbaa !54
  %i.djp = zext i16 %i.djn to i64
  %i.djq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.djp ; 3 uses
  %i.djr = load i16, ptr %i.djq, align 2, !tbaa !54 ; 2 uses
  %i.djs = icmp ult i16 %i.djr, %i.djn
  br i1 %i.djs, label %.lr.ph.i18.i3084, label %.loopexit3290, !llvm.loop !1

.loopexit3290:                                    ; preds = %.lr.ph.i18.i3084, %bb.qt
  %.lcssa.i17.i3083 = phi ptr [ %i.djk, %bb.qt ], [ %i.djq, %.lr.ph.i18.i3084 ]
  store i16 %.1.i3082, ptr %.lcssa.i17.i3083, align 2, !tbaa !54
  %i.djt = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.1.i3082, ptr %i.djt, align 2, !tbaa !54
  br label %bb.rb

bb.qu:                                            ; preds = %bb.qo
  %i.dju = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.did
  %i.djv = load i16, ptr %i.dju, align 2, !tbaa !54
  %i.djw = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %i.djv, ptr %i.djw, align 2, !tbaa !54
  br label %bb.rb

bb.qv:                                            ; preds = %bb.qn, %bb.qm
  %i.djx = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv
  %i.djy = load i8, ptr %i.djx, align 1, !tbaa !32
  %.not1892 = icmp eq i8 %i.djy, 0
  br i1 %.not1892, label %bb.qx, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.djz = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv
  %i.dka = load i16, ptr %i.djz, align 2, !tbaa !54
  %i.dkb = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %i.dka, ptr %i.dkb, align 2, !tbaa !54
  br label %bb.rb

bb.qx:                                            ; preds = %bb.qj, %bb.qv
  %i.dkc = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.13517, ptr %i.dkc, align 2, !tbaa !54
  %i.dkd = zext i16 %.13517 to i64
  %i.dke = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.dkd
  store i16 %.13517, ptr %i.dke, align 2, !tbaa !54
  %.not.i3087 = icmp eq i16 %.13517, -1
  br i1 %.not.i3087, label %.invoke, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3089

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3089: ; preds = %bb.qx
  %i.dkf = add nuw i16 %.13517, 1
  br label %bb.rb

bb.qy:                                            ; preds = %bb.qi
  br i1 %i.cq, label %bb.qz, label %.critedge2069

bb.qz:                                            ; preds = %bb.qy
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dhu
  %i.dkh = load i8, ptr %i.dkg, align 1, !tbaa !32
  %.not1886 = icmp eq i8 %i.dkh, 0
  br i1 %.not1886, label %.critedge2069, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.dki = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 %.13517, ptr %i.dki, align 2, !tbaa !54
  %i.dkj = zext i16 %.13517 to i64
  %i.dkk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.dkj
  store i16 %.13517, ptr %i.dkk, align 2, !tbaa !54
  %.not.i3090 = icmp eq i16 %.13517, -1
  br i1 %.not.i3090, label %.invoke, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3092

.invoke:                                          ; preds = %bb.ra, %bb.qx, %.critedge2066, %bb.qb, %.thread3257, %.thread3255
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 65535, i32 noundef 65535, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_E15__cv_check__269) #16
          to label %.cont unwind label %.thread3273

.cont:                                            ; preds = %.invoke
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3092: ; preds = %bb.ra
  %i.dkl = add nuw i16 %.13517, 1
  br label %bb.rb

.critedge2069:                                    ; preds = %bb.qh, %bb.qy, %bb.qz
  %i.dkm = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  store i16 0, ptr %i.dkm, align 2, !tbaa !54
  br label %bb.rb

bb.rb:                                            ; preds = %.critedge2069, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3092, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3089, %bb.qw, %bb.qu, %.loopexit3290, %bb.qq, %bb.ql, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3072, %bb.qg, %bb.qe, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3069, %bb.qa, %bb.py, %.loopexit3291, %bb.pu, %bb.pp, %bb.pn, %.loopexit3292, %.loopexit3293, %.loopexit3294, %bb.pd, %bb.pa, %.loopexit3295, %.loopexit3296, %bb.oo, %bb.on, %bb.om, %.loopexit3298, %.loopexit3299, %.loopexit3300, %.loopexit3301, %bb.nu, %bb.nt, %bb.nr, %.loopexit3302, %bb.nk, %bb.ni, %.loopexit3303, %.loopexit3304, %.loopexit3305, %bb.ms, %bb.mr, %bb.mp, %.loopexit3306, %bb.mi, %bb.mg, %.thread3259, %.loopexit3307, %.loopexit3308, %.loopexit3309, %.loopexit3310, %bb.ln, %bb.lk, %bb.lh, %.loopexit3311, %.loopexit3312, %.loopexit3313, %bb.kt, %bb.kq, %bb.kn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit2744, %bb.kd, %bb.ka, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit, %bb.jx, %bb.ju, %bb.js, %.loopexit3314, %.loopexit3315, %bb.jl, %.loopexit3316, %bb.jd, %bb.iw, %.loopexit3317, %bb.is, %bb.io, %bb.il, %.loopexit3318, %.loopexit3319, %.loopexit3320, %bb.ib, %.loopexit3321, %bb.ht, %bb.hp, %.loopexit3322, %.loopexit3323, %.loopexit3324, %bb.hf, %.loopexit3325, %bb.gx, %.loopexit3326, %.loopexit3327, %.loopexit3329, %.loopexit3331, %.loopexit3332, %.loopexit3334, %.loopexit3335, %.loopexit3336, %.loopexit3338, %.loopexit3340, %.loopexit3341, %.loopexit3342, %.loopexit3343, %bb.eo, %bb.em, %.loopexit3344, %.loopexit3345, %bb.eb, %bb.dz, %.loopexit3346, %.loopexit3347, %.loopexit3349, %.loopexit3350, %.loopexit3351, %.loopexit3352, %.loopexit3353, %bb.cq, %bb.co, %.loopexit3354, %bb.ch, %bb.cf, %bb.bx, %bb.bw, %.loopexit3355, %.loopexit3356, %.loopexit3357, %.loopexit3358, %bb.bj, %bb.bg, %bb.bd, %.loopexit3359, %.loopexit3360, %.loopexit3361, %bb.an, %bb.ak, %bb.ah
  %.2 = phi i16 [ %.13517, %bb.ah ], [ %.13517, %bb.ak ], [ %.13517, %bb.an ], [ %.13517, %.loopexit3361 ], [ %.13517, %.loopexit3360 ], [ %.13517, %.loopexit3359 ], [ %.13517, %bb.bd ], [ %.13517, %bb.bg ], [ %.13517, %bb.bj ], [ %.13517, %.loopexit3358 ], [ %.13517, %.loopexit3357 ], [ %.13517, %.loopexit3356 ], [ %.13517, %.loopexit3355 ], [ %.13517, %bb.bw ], [ %.13517, %bb.bx ], [ %.13517, %bb.cf ], [ %.13517, %bb.ch ], [ %.13517, %.loopexit3354 ], [ %.13517, %bb.co ], [ %.13517, %bb.cq ], [ %.13517, %.loopexit3353 ], [ %.13517, %.loopexit3352 ], [ %.13517, %.loopexit3351 ], [ %.13517, %.loopexit3350 ], [ %.13517, %.loopexit3349 ], [ %.13517, %.loopexit3347 ], [ %.13517, %.loopexit3346 ], [ %.13517, %bb.dz ], [ %.13517, %bb.eb ], [ %.13517, %.loopexit3345 ], [ %.13517, %.loopexit3344 ], [ %.13517, %bb.em ], [ %.13517, %bb.eo ], [ %.13517, %.loopexit3343 ], [ %.13517, %.loopexit3342 ], [ %.13517, %.loopexit3341 ], [ %.13517, %.loopexit3340 ], [ %.13517, %.loopexit3338 ], [ %.13517, %.loopexit3336 ], [ %.13517, %.loopexit3335 ], [ %.13517, %.loopexit3334 ], [ %.13517, %.loopexit3332 ], [ %.13517, %.loopexit3331 ], [ %.13517, %.loopexit3329 ], [ %.13517, %.loopexit3327 ], [ %.13517, %.loopexit3326 ], [ %.13517, %bb.gx ], [ %.13517, %.loopexit3325 ], [ %.13517, %bb.hf ], [ %.13517, %.loopexit3324 ], [ %.13517, %.loopexit3323 ], [ %.13517, %.loopexit3322 ], [ %.13517, %bb.hp ], [ %.13517, %bb.ht ], [ %.13517, %.loopexit3321 ], [ %.13517, %bb.ib ], [ %.13517, %.loopexit3320 ], [ %.13517, %.loopexit3319 ], [ %.13517, %.loopexit3318 ], [ %.13517, %bb.il ], [ %.13517, %bb.io ], [ %.13517, %bb.is ], [ %.13517, %.loopexit3317 ], [ %.13517, %bb.iw ], [ %.13517, %bb.jd ], [ %.13517, %.loopexit3316 ], [ %.13517, %bb.jl ], [ %.13517, %.loopexit3315 ], [ %.13517, %.loopexit3314 ], [ %.13517, %bb.js ], [ %.13517, %bb.ju ], [ %.13517, %bb.jx ], [ %i.bvb, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit ], [ %.13517, %bb.ka ], [ %.13517, %bb.kd ], [ %i.bvq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit2744 ], [ %.13517, %bb.kn ], [ %.13517, %bb.kq ], [ %.13517, %bb.kt ], [ %.13517, %.loopexit3313 ], [ %.13517, %.loopexit3312 ], [ %.13517, %.loopexit3311 ], [ %.13517, %bb.lh ], [ %.13517, %bb.lk ], [ %.13517, %bb.ln ], [ %.13517, %.loopexit3310 ], [ %.13517, %.loopexit3309 ], [ %.13517, %.loopexit3308 ], [ %.13517, %.loopexit3307 ], [ %.13517, %.thread3259 ], [ %.13517, %bb.mg ], [ %.13517, %bb.mi ], [ %.13517, %.loopexit3306 ], [ %.13517, %bb.mp ], [ %.13517, %bb.mr ], [ %.13517, %bb.ms ], [ %.13517, %.loopexit3305 ], [ %.13517, %.loopexit3304 ], [ %.13517, %.loopexit3303 ], [ %.13517, %bb.ni ], [ %.13517, %bb.nk ], [ %.13517, %.loopexit3302 ], [ %.13517, %bb.nr ], [ %.13517, %bb.nt ], [ %.13517, %bb.nu ], [ %.13517, %.loopexit3301 ], [ %.13517, %.loopexit3300 ], [ %.13517, %.loopexit3299 ], [ %.13517, %.loopexit3298 ], [ %.13517, %bb.om ], [ %.13517, %bb.on ], [ %.13517, %bb.oo ], [ %.13517, %.loopexit3296 ], [ %.13517, %.loopexit3295 ], [ %.13517, %bb.pa ], [ %.13517, %bb.pd ], [ %.13517, %.loopexit3294 ], [ %.13517, %.loopexit3293 ], [ %.13517, %.loopexit3292 ], [ %.13517, %bb.pn ], [ %.13517, %bb.pp ], [ %.13517, %bb.pu ], [ %.13517, %.loopexit3291 ], [ %.13517, %bb.py ], [ %.13517, %bb.qa ], [ %i.dhe, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3069 ], [ %.13517, %bb.qe ], [ %.13517, %bb.qg ], [ %i.dht, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3072 ], [ %.13517, %bb.ql ], [ %.13517, %bb.qq ], [ %.13517, %.loopexit3290 ], [ %.13517, %bb.qu ], [ %.13517, %bb.qw ], [ %i.dkf, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3089 ], [ %i.dkl, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3092 ], [ %.13517, %.critedge2069 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dkn = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.dkn, label %bb.ab, label %._crit_edge, !llvm.loop !318

bb.rc:                                            ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit
  %i.dko = load i32, ptr %i.c, align 8, !tbaa !39 ; 6 uses
  %i.dkp = and i32 %i.dko, 1
  %.not = icmp eq i32 %i.dkp, 0
  %i.dkq = load i32, ptr %i.o, align 4, !tbaa !52 ; 5 uses
  %i.dkr = and i32 %i.dkq, 1
  %.not1858 = icmp eq i32 %i.dkr, 0               ; 2 uses
  %i.dks = icmp sgt i32 %i.dko, 0                 ; 4 uses
  br i1 %.not, label %bb.sw, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  br i1 %.not1858, label %.preheader3286, label %.preheader3288

.preheader3288:                                   ; preds = %bb.rd
  br i1 %i.dks, label %.lr.ph3531, label %.loopexit

.lr.ph3531:                                       ; preds = %.preheader3288
  %i.dkt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dku = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dkv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dkw = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dkx = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  %i.dky = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.dkz = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 5 uses
  %i.dla = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %.pre = load ptr, ptr %i.dkt, align 8, !tbaa !55
  %.pre3724 = load ptr, ptr %i.dkv, align 8, !tbaa !55
  br label %bb.re

.preheader3286:                                   ; preds = %bb.rd
  br i1 %i.dks, label %.lr.ph3538, label %.loopexit

.lr.ph3538:                                       ; preds = %.preheader3286
  %i.dlb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dlc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dld = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dle = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dlf = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.dlg = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.dlh = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  %i.dli = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %.pre3726 = load ptr, ptr %i.dlb, align 8, !tbaa !55
  %.pre3727 = load ptr, ptr %i.dld, align 8, !tbaa !55
  br label %bb.se

bb.re:                                            ; preds = %.lr.ph3531, %._crit_edge3529
  %i.dlj = phi i32 [ %i.dko, %.lr.ph3531 ], [ %i.dmj, %._crit_edge3529 ]
  %i.dlk = phi i32 [ %i.dkq, %.lr.ph3531 ], [ %i.dmk, %._crit_edge3529 ] ; 2 uses
  %indvars.iv3703 = phi i64 [ 0, %.lr.ph3531 ], [ %indvars.iv.next3704, %._crit_edge3529 ] ; 13 uses
  %i.dll = load i64, ptr %i.dku, align 8, !tbaa !40 ; 2 uses
  %i.dlm = mul i64 %i.dll, %indvars.iv3703
  %i.dln = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.dlm ; 3 uses
  %i.dlo = getelementptr inbounds nuw i8, ptr %i.dln, i64 %i.dll ; 3 uses
  %i.dlp = load i64, ptr %i.dkw, align 8, !tbaa !40 ; 2 uses
  %i.dlq = mul i64 %i.dlp, %indvars.iv3703
  %i.dlr = getelementptr inbounds nuw i8, ptr %.pre3724, i64 %i.dlq ; 4 uses
  %i.dls = getelementptr inbounds nuw i8, ptr %i.dlr, i64 %i.dlp ; 6 uses
  %i.dlt = icmp sgt i32 %i.dlk, 0
  br i1 %i.dlt, label %.lr.ph3528, label %._crit_edge3529

.lr.ph3528:                                       ; preds = %bb.re
  %i.dlu = or disjoint i64 %indvars.iv3703, 1     ; 16 uses
  %i.dlv = trunc nuw nsw i64 %indvars.iv3703 to i32 ; 2 uses
  %i.dlw = trunc nuw nsw i64 %indvars.iv3703 to i32 ; 2 uses
  %i.dlx = trunc nuw nsw i64 %i.dlu to i32        ; 2 uses
  %i.dly = trunc nuw nsw i64 %i.dlu to i32        ; 2 uses
  %i.dlz = trunc nuw nsw i64 %indvars.iv3703 to i32 ; 2 uses
  %i.dma = trunc nuw nsw i64 %indvars.iv3703 to i32 ; 2 uses
  %i.dmb = trunc nuw nsw i64 %i.dlu to i32        ; 2 uses
  %i.dmc = trunc nuw nsw i64 %i.dlu to i32        ; 2 uses
  %i.dmd = trunc nuw nsw i64 %i.dlu to i32        ; 2 uses
  %i.dme = trunc nuw nsw i64 %i.dlu to i32        ; 2 uses
  %i.dmf = trunc nuw nsw i64 %indvars.iv3703 to i32 ; 2 uses
  %i.dmg = trunc nuw nsw i64 %i.dlu to i32        ; 2 uses
  %i.dmh = trunc nuw nsw i64 %i.dlu to i32        ; 2 uses
  %invariant.op = shl nuw i64 %i.dlu, 1
  %i.dmi = insertelement <2 x i64> poison, i64 %i.dlu, i64 1 ; 4 uses
  br label %bb.rf

._crit_edge3529.loopexit:                         ; preds = %bb.sd
  %.pre3725 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3529

._crit_edge3529:                                  ; preds = %._crit_edge3529.loopexit, %bb.re
  %i.dmj = phi i32 [ %.pre3725, %._crit_edge3529.loopexit ], [ %i.dlj, %bb.re ] ; 2 uses
  %i.dmk = phi i32 [ %i.dxm, %._crit_edge3529.loopexit ], [ %i.dlk, %bb.re ]
  %indvars.iv.next3704 = add nuw nsw i64 %indvars.iv3703, 2 ; 2 uses
  %i.dml = sext i32 %i.dmj to i64
  %i.dmm = icmp slt i64 %indvars.iv.next3704, %i.dml
  br i1 %i.dmm, label %bb.re, label %.loopexit, !llvm.loop !319

bb.rf:                                            ; preds = %.lr.ph3528, %bb.sd
  %indvars.iv3700 = phi i64 [ 0, %.lr.ph3528 ], [ %indvars.iv.next3701, %bb.sd ] ; 27 uses
  %i.dmn = getelementptr inbounds nuw [2 x i8], ptr %i.dlr, i64 %indvars.iv3700 ; 3 uses
  %i.dmo = load i16, ptr %i.dmn, align 2, !tbaa !54 ; 2 uses
  %.not1875 = icmp eq i16 %i.dmo, 0
  br i1 %.not1875, label %bb.ry, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.dmp = zext i16 %i.dmo to i64
  %i.dmq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.dmp
  %i.dmr = load i16, ptr %i.dmq, align 2, !tbaa !54 ; 10 uses
  %i.dms = getelementptr inbounds nuw i8, ptr %i.dln, i64 %indvars.iv3700
  %i.dmt = load i8, ptr %i.dms, align 1, !tbaa !32
  %.not1876 = icmp eq i8 %i.dmt, 0
  br i1 %.not1876, label %bb.ri, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  store i16 %i.dmr, ptr %i.dmn, align 2, !tbaa !54
  %i.dmu = load i32, ptr %i.dkx, align 4, !tbaa !96
  %i.dmv = icmp slt i32 %i.dmu, 2
  %i.dmw = load ptr, ptr %i.dky, align 8, !tbaa !55 ; 2 uses
  %i.dmx = load i64, ptr %i.dkz, align 8
  %i.dmy = zext i16 %i.dmr to i64                 ; 2 uses
  %i.dmz = mul i64 %i.dmx, %i.dmy
  %.sink.idx.i.i = select i1 %i.dmv, i64 0, i64 %i.dmz
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.dmw, i64 %.sink.idx.i.i ; 6 uses
  %i.dna = load i32, ptr %.sink.i.i, align 4, !tbaa !33
  %i.dnb = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.dna, i32 %i.dnb)
  store i32 %..i, ptr %.sink.i.i, align 4, !tbaa !33
  %i.dnc = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  %i.dnd = load i32, ptr %i.dnc, align 4, !tbaa !33
  %i.dne = tail call i32 @llvm.smax.i32(i32 %i.dnd, i32 %i.dnb)
  store i32 %i.dne, ptr %i.dnc, align 4, !tbaa !33
  %i.dnf = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 4 ; 2 uses
  %i.dng = load i32, ptr %i.dnf, align 4, !tbaa !33
  %i.dnh = tail call i32 @llvm.smin.i32(i32 %i.dng, i32 %i.dlv)
  store i32 %i.dnh, ptr %i.dnf, align 4, !tbaa !33
  %i.dni = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 12 ; 2 uses
  %i.dnj = load i32, ptr %i.dni, align 4, !tbaa !33
  %i.dnk = tail call i32 @llvm.smax.i32(i32 %i.dnj, i32 %i.dlv)
  store i32 %i.dnk, ptr %i.dni, align 4, !tbaa !33
  %i.dnl = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16 ; 2 uses
  %i.dnm = load i32, ptr %i.dnl, align 4, !tbaa !33
  %i.dnn = add nsw i32 %i.dnm, 1
  store i32 %i.dnn, ptr %i.dnl, align 4, !tbaa !33
  %i.dno = load ptr, ptr %i.dla, align 8, !tbaa !50 ; 2 uses
  %i.dnp = getelementptr inbounds nuw [16 x i8], ptr %i.dno, i64 %i.dmy ; 3 uses
  %i.dnq = load i64, ptr %i.dnp, align 8, !tbaa !116
  %i.dnr = add i64 %i.dnq, %indvars.iv3700
  store i64 %i.dnr, ptr %i.dnp, align 8, !tbaa !116
  br label %bb.rj

bb.ri:                                            ; preds = %bb.rg
  store i16 0, ptr %i.dmn, align 2, !tbaa !54
  %i.dns = load ptr, ptr %i.dky, align 8, !tbaa !55 ; 7 uses
  %i.dnt = load i32, ptr %i.dns, align 4, !tbaa !33
  %i.dnu = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 2 uses
  %..i3095 = tail call i32 @llvm.smin.i32(i32 %i.dnt, i32 %i.dnu)
  store i32 %..i3095, ptr %i.dns, align 4, !tbaa !33
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.dns, i64 8 ; 2 uses
  %i.dnw = load i32, ptr %i.dnv, align 4, !tbaa !33
  %i.dnx = tail call i32 @llvm.smax.i32(i32 %i.dnw, i32 %i.dnu)
  store i32 %i.dnx, ptr %i.dnv, align 4, !tbaa !33
  %i.dny = getelementptr inbounds nuw i8, ptr %i.dns, i64 4 ; 2 uses
  %i.dnz = load i32, ptr %i.dny, align 4, !tbaa !33
  %i.doa = tail call i32 @llvm.smin.i32(i32 %i.dnz, i32 %i.dlw)
  store i32 %i.doa, ptr %i.dny, align 4, !tbaa !33
  %i.dob = getelementptr inbounds nuw i8, ptr %i.dns, i64 12 ; 2 uses
  %i.doc = load i32, ptr %i.dob, align 4, !tbaa !33
  %i.dod = tail call i32 @llvm.smax.i32(i32 %i.doc, i32 %i.dlw)
  store i32 %i.dod, ptr %i.dob, align 4, !tbaa !33
  %i.doe = getelementptr inbounds nuw i8, ptr %i.dns, i64 16 ; 2 uses
  %i.dof = load i32, ptr %i.doe, align 4, !tbaa !33
  %i.dog = add nsw i32 %i.dof, 1
  store i32 %i.dog, ptr %i.doe, align 4, !tbaa !33
  %i.doh = load ptr, ptr %i.dla, align 8, !tbaa !50 ; 4 uses
  %i.doi = load i64, ptr %i.doh, align 8, !tbaa !116
  %i.doj = add i64 %i.doi, %indvars.iv3700
  store i64 %i.doj, ptr %i.doh, align 8, !tbaa !116
  br label %bb.rj

bb.rj:                                            ; preds = %bb.ri, %bb.rh
  %.sink4165 = phi ptr [ %i.doh, %bb.ri ], [ %i.dnp, %bb.rh ]
  %i.dok = phi ptr [ %i.doh, %bb.ri ], [ %i.dno, %bb.rh ] ; 14 uses
  %i.dol = phi ptr [ %i.dns, %bb.ri ], [ %i.dmw, %bb.rh ] ; 28 uses
  %i.dom = getelementptr inbounds nuw i8, ptr %.sink4165, i64 8 ; 2 uses
  %i.don = load i64, ptr %i.dom, align 8, !tbaa !117
  %i.doo = add i64 %i.don, %indvars.iv3703
  store i64 %i.doo, ptr %i.dom, align 8, !tbaa !117
  %i.dop = or disjoint i64 %indvars.iv3700, 1     ; 13 uses
  %i.doq = load i32, ptr %i.o, align 4, !tbaa !52
  %i.dor = sext i32 %i.doq to i64
  %i.dos = icmp slt i64 %i.dop, %i.dor
  br i1 %i.dos, label %bb.rk, label %bb.ru

bb.rk:                                            ; preds = %bb.rj
  %i.dot = getelementptr inbounds nuw i8, ptr %i.dln, i64 %i.dop
  %i.dou = load i8, ptr %i.dot, align 1, !tbaa !32
  %.not1878 = icmp eq i8 %i.dou, 0
  %i.dov = getelementptr inbounds nuw [2 x i8], ptr %i.dlr, i64 %i.dop ; 2 uses
  br i1 %.not1878, label %bb.rm, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  store i16 %i.dmr, ptr %i.dov, align 2, !tbaa !54
  %i.dow = load i32, ptr %i.dkx, align 4, !tbaa !96
  %i.dox = icmp slt i32 %i.dow, 2
  %i.doy = load i64, ptr %i.dkz, align 8
  %i.doz = zext i16 %i.dmr to i64                 ; 2 uses
  %i.dpa = mul i64 %i.doy, %i.doz
  %.sink.idx.i.i3096 = select i1 %i.dox, i64 0, i64 %i.dpa
  %.sink.i.i3097 = getelementptr inbounds nuw i8, ptr %i.dol, i64 %.sink.idx.i.i3096 ; 6 uses
  %i.dpb = load i32, ptr %.sink.i.i3097, align 4, !tbaa !33
  %i.dpc = trunc nuw nsw i64 %i.dop to i32        ; 2 uses
  %..i3098 = tail call i32 @llvm.smin.i32(i32 %i.dpb, i32 %i.dpc)
  store i32 %..i3098, ptr %.sink.i.i3097, align 4, !tbaa !33
  %i.dpd = getelementptr inbounds nuw i8, ptr %.sink.i.i3097, i64 8 ; 2 uses
  %i.dpe = load i32, ptr %i.dpd, align 4, !tbaa !33
  %i.dpf = tail call i32 @llvm.smax.i32(i32 %i.dpe, i32 %i.dpc)
  store i32 %i.dpf, ptr %i.dpd, align 4, !tbaa !33
  %i.dpg = getelementptr inbounds nuw i8, ptr %.sink.i.i3097, i64 4 ; 2 uses
  %i.dph = load i32, ptr %i.dpg, align 4, !tbaa !33
  %i.dpi = tail call i32 @llvm.smin.i32(i32 %i.dph, i32 %i.dlz)
  store i32 %i.dpi, ptr %i.dpg, align 4, !tbaa !33
  %i.dpj = getelementptr inbounds nuw i8, ptr %.sink.i.i3097, i64 12 ; 2 uses
  %i.dpk = load i32, ptr %i.dpj, align 4, !tbaa !33
  %i.dpl = tail call i32 @llvm.smax.i32(i32 %i.dpk, i32 %i.dlz)
  store i32 %i.dpl, ptr %i.dpj, align 4, !tbaa !33
  %i.dpm = getelementptr inbounds nuw i8, ptr %.sink.i.i3097, i64 16 ; 2 uses
  %i.dpn = load i32, ptr %i.dpm, align 4, !tbaa !33
  %i.dpo = add nsw i32 %i.dpn, 1
  store i32 %i.dpo, ptr %i.dpm, align 4, !tbaa !33
  %i.dpp = getelementptr inbounds nuw [16 x i8], ptr %i.dok, i64 %i.doz ; 3 uses
  %i.dpq = load i64, ptr %i.dpp, align 8, !tbaa !116
  %i.dpr = add i64 %i.dpq, %i.dop
  store i64 %i.dpr, ptr %i.dpp, align 8, !tbaa !116
  br label %bb.rn

bb.rm:                                            ; preds = %bb.rk
  store i16 0, ptr %i.dov, align 2, !tbaa !54
  %i.dps = load i32, ptr %i.dol, align 4, !tbaa !33
  %i.dpt = trunc nuw nsw i64 %i.dop to i32        ; 2 uses
  %..i3101 = tail call i32 @llvm.smin.i32(i32 %i.dps, i32 %i.dpt)
  store i32 %..i3101, ptr %i.dol, align 4, !tbaa !33
  %i.dpu = getelementptr inbounds nuw i8, ptr %i.dol, i64 8 ; 2 uses
  %i.dpv = load i32, ptr %i.dpu, align 4, !tbaa !33
  %i.dpw = tail call i32 @llvm.smax.i32(i32 %i.dpv, i32 %i.dpt)
  store i32 %i.dpw, ptr %i.dpu, align 4, !tbaa !33
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.dol, i64 4 ; 2 uses
  %i.dpy = load i32, ptr %i.dpx, align 4, !tbaa !33
  %i.dpz = tail call i32 @llvm.smin.i32(i32 %i.dpy, i32 %i.dma)
  store i32 %i.dpz, ptr %i.dpx, align 4, !tbaa !33
  %i.dqa = getelementptr inbounds nuw i8, ptr %i.dol, i64 12 ; 2 uses
  %i.dqb = load i32, ptr %i.dqa, align 4, !tbaa !33
  %i.dqc = tail call i32 @llvm.smax.i32(i32 %i.dqb, i32 %i.dma)
  store i32 %i.dqc, ptr %i.dqa, align 4, !tbaa !33
  %i.dqd = getelementptr inbounds nuw i8, ptr %i.dol, i64 16 ; 2 uses
  %i.dqe = load i32, ptr %i.dqd, align 4, !tbaa !33
  %i.dqf = add nsw i32 %i.dqe, 1
  store i32 %i.dqf, ptr %i.dqd, align 4, !tbaa !33
  %i.dqg = load i64, ptr %i.dok, align 8, !tbaa !116
  %i.dqh = add i64 %i.dqg, %i.dop
  store i64 %i.dqh, ptr %i.dok, align 8, !tbaa !116
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %bb.rl
  %.sink4168 = phi ptr [ %i.dok, %bb.rm ], [ %i.dpp, %bb.rl ]
  %i.dqi = getelementptr inbounds nuw i8, ptr %.sink4168, i64 8 ; 2 uses
  %i.dqj = load i64, ptr %i.dqi, align 8, !tbaa !117
  %i.dqk = add i64 %i.dqj, %indvars.iv3703
  store i64 %i.dqk, ptr %i.dqi, align 8, !tbaa !117
  %i.dql = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dqm = sext i32 %i.dql to i64
  %i.dqn = icmp slt i64 %i.dlu, %i.dqm
  br i1 %i.dqn, label %bb.ro, label %bb.sd

bb.ro:                                            ; preds = %bb.rn
  %i.dqo = getelementptr inbounds nuw i8, ptr %i.dlo, i64 %indvars.iv3700
  %i.dqp = load i8, ptr %i.dqo, align 1, !tbaa !32
  %.not1879 = icmp eq i8 %i.dqp, 0
  %i.dqq = getelementptr inbounds nuw [2 x i8], ptr %i.dls, i64 %indvars.iv3700 ; 2 uses
  br i1 %.not1879, label %bb.rq, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
end_hunk_0
begin_hunk_1_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.drc = load i32, ptr %i.drb, align 4, !tbaa !33
  %i.drd = tail call i32 @llvm.smin.i32(i32 %i.drc, i32 %i.dmb)
  store i32 %i.drd, ptr %i.drb, align 4, !tbaa !33
  %i.dre = getelementptr inbounds nuw i8, ptr %.sink.i.i3103, i64 12 ; 2 uses
  %i.drf = load i32, ptr %i.dre, align 4, !tbaa !33
  %i.drg = tail call i32 @llvm.smax.i32(i32 %i.drf, i32 %i.dmb)
  store i32 %i.drg, ptr %i.dre, align 4, !tbaa !33
  %i.drh = getelementptr inbounds nuw i8, ptr %.sink.i.i3103, i64 16 ; 2 uses
  %i.dri = load i32, ptr %i.drh, align 4, !tbaa !33
  %i.drj = add nsw i32 %i.dri, 1
  store i32 %i.drj, ptr %i.drh, align 4, !tbaa !33
  %i.drk = getelementptr inbounds nuw [16 x i8], ptr %i.dok, i64 %i.dqu ; 3 uses
  %i.drl = load i64, ptr %i.drk, align 8, !tbaa !116
  %i.drm = add i64 %i.drl, %indvars.iv3700
  store i64 %i.drm, ptr %i.drk, align 8, !tbaa !116
  br label %bb.rr

bb.rq:                                            ; preds = %bb.ro
  store i16 0, ptr %i.dqq, align 2, !tbaa !54
  %i.drn = load i32, ptr %i.dol, align 4, !tbaa !33
  %i.dro = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 2 uses
  %..i3107 = tail call i32 @llvm.smin.i32(i32 %i.drn, i32 %i.dro)
  store i32 %..i3107, ptr %i.dol, align 4, !tbaa !33
  %i.drp = getelementptr inbounds nuw i8, ptr %i.dol, i64 8 ; 2 uses
  %i.drq = load i32, ptr %i.drp, align 4, !tbaa !33
  %i.drr = tail call i32 @llvm.smax.i32(i32 %i.drq, i32 %i.dro)
  store i32 %i.drr, ptr %i.drp, align 4, !tbaa !33
  %i.drs = getelementptr inbounds nuw i8, ptr %i.dol, i64 4 ; 2 uses
  %i.drt = load i32, ptr %i.drs, align 4, !tbaa !33
  %i.dru = tail call i32 @llvm.smin.i32(i32 %i.drt, i32 %i.dmc)
  store i32 %i.dru, ptr %i.drs, align 4, !tbaa !33
  %i.drv = getelementptr inbounds nuw i8, ptr %i.dol, i64 12 ; 2 uses
  %i.drw = load i32, ptr %i.drv, align 4, !tbaa !33
  %i.drx = tail call i32 @llvm.smax.i32(i32 %i.drw, i32 %i.dmc)
  store i32 %i.drx, ptr %i.drv, align 4, !tbaa !33
  %i.dry = getelementptr inbounds nuw i8, ptr %i.dol, i64 16 ; 2 uses
  %i.drz = load i32, ptr %i.dry, align 4, !tbaa !33
  %i.dsa = add nsw i32 %i.drz, 1
  store i32 %i.dsa, ptr %i.dry, align 4, !tbaa !33
  %i.dsb = load i64, ptr %i.dok, align 8, !tbaa !116
  %i.dsc = add i64 %i.dsb, %indvars.iv3700
  store i64 %i.dsc, ptr %i.dok, align 8, !tbaa !116
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.rp
  %.sink4171 = phi ptr [ %i.dok, %bb.rq ], [ %i.drk, %bb.rp ]
  %i.dsd = getelementptr inbounds nuw i8, ptr %.sink4171, i64 8 ; 2 uses
  %i.dse = load i64, ptr %i.dsd, align 8, !tbaa !117
  %i.dsf = add i64 %i.dse, %i.dlu
  store i64 %i.dsf, ptr %i.dsd, align 8, !tbaa !117
  %i.dsg = getelementptr inbounds nuw i8, ptr %i.dlo, i64 %i.dop
  %i.dsh = load i8, ptr %i.dsg, align 1, !tbaa !32
  %.not1880 = icmp eq i8 %i.dsh, 0
  %i.dsi = getelementptr inbounds nuw [2 x i8], ptr %i.dls, i64 %i.dop ; 2 uses
  br i1 %.not1880, label %bb.rt, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  store i16 %i.dmr, ptr %i.dsi, align 2, !tbaa !54
  %i.dsj = load i32, ptr %i.dkx, align 4, !tbaa !96
  %i.dsk = icmp slt i32 %i.dsj, 2
  %i.dsl = load i64, ptr %i.dkz, align 8
  %i.dsm = zext i16 %i.dmr to i64                 ; 2 uses
  %i.dsn = mul i64 %i.dsl, %i.dsm
  %.sink.idx.i.i3108 = select i1 %i.dsk, i64 0, i64 %i.dsn
  %.sink.i.i3109 = getelementptr inbounds nuw i8, ptr %i.dol, i64 %.sink.idx.i.i3108 ; 6 uses
  %i.dso = load i32, ptr %.sink.i.i3109, align 4, !tbaa !33
  %i.dsp = trunc nuw nsw i64 %i.dop to i32        ; 2 uses
  %..i3110 = tail call i32 @llvm.smin.i32(i32 %i.dso, i32 %i.dsp)
  store i32 %..i3110, ptr %.sink.i.i3109, align 4, !tbaa !33
  %i.dsq = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 8 ; 2 uses
  %i.dsr = load i32, ptr %i.dsq, align 4, !tbaa !33
  %i.dss = tail call i32 @llvm.smax.i32(i32 %i.dsr, i32 %i.dsp)
  store i32 %i.dss, ptr %i.dsq, align 4, !tbaa !33
  %i.dst = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 4 ; 2 uses
  %i.dsu = load i32, ptr %i.dst, align 4, !tbaa !33
  %i.dsv = tail call i32 @llvm.smin.i32(i32 %i.dsu, i32 %i.dmd)
  store i32 %i.dsv, ptr %i.dst, align 4, !tbaa !33
  %i.dsw = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 12 ; 2 uses
  %i.dsx = load i32, ptr %i.dsw, align 4, !tbaa !33
  %i.dsy = tail call i32 @llvm.smax.i32(i32 %i.dsx, i32 %i.dmd)
  store i32 %i.dsy, ptr %i.dsw, align 4, !tbaa !33
  %i.dsz = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 16 ; 2 uses
  %i.dta = load i32, ptr %i.dsz, align 4, !tbaa !33
  %i.dtb = add nsw i32 %i.dta, 1
  store i32 %i.dtb, ptr %i.dsz, align 4, !tbaa !33
  %i.dtc = getelementptr inbounds nuw [16 x i8], ptr %i.dok, i64 %i.dsm ; 2 uses
  %i.dtd = load <2 x i64>, ptr %i.dtc, align 8, !tbaa !40
  %i.dte = insertelement <2 x i64> %i.dmi, i64 %i.dop, i64 0
  %i.dtf = add <2 x i64> %i.dtd, %i.dte
  store <2 x i64> %i.dtf, ptr %i.dtc, align 8, !tbaa !40
  br label %bb.sd

bb.rt:                                            ; preds = %bb.rr
  store i16 0, ptr %i.dsi, align 2, !tbaa !54
  %i.dtg = load i32, ptr %i.dol, align 4, !tbaa !33
  %i.dth = trunc nuw nsw i64 %i.dop to i32        ; 2 uses
  %..i3113 = tail call i32 @llvm.smin.i32(i32 %i.dtg, i32 %i.dth)
  store i32 %..i3113, ptr %i.dol, align 4, !tbaa !33
  %i.dti = getelementptr inbounds nuw i8, ptr %i.dol, i64 8 ; 2 uses
  %i.dtj = load i32, ptr %i.dti, align 4, !tbaa !33
  %i.dtk = tail call i32 @llvm.smax.i32(i32 %i.dtj, i32 %i.dth)
  store i32 %i.dtk, ptr %i.dti, align 4, !tbaa !33
  %i.dtl = getelementptr inbounds nuw i8, ptr %i.dol, i64 4 ; 2 uses
  %i.dtm = load i32, ptr %i.dtl, align 4, !tbaa !33
  %i.dtn = tail call i32 @llvm.smin.i32(i32 %i.dtm, i32 %i.dme)
  store i32 %i.dtn, ptr %i.dtl, align 4, !tbaa !33
  %i.dto = getelementptr inbounds nuw i8, ptr %i.dol, i64 12 ; 2 uses
  %i.dtp = load i32, ptr %i.dto, align 4, !tbaa !33
  %i.dtq = tail call i32 @llvm.smax.i32(i32 %i.dtp, i32 %i.dme)
  store i32 %i.dtq, ptr %i.dto, align 4, !tbaa !33
  %i.dtr = getelementptr inbounds nuw i8, ptr %i.dol, i64 16 ; 2 uses
  %i.dts = load i32, ptr %i.dtr, align 4, !tbaa !33
  %i.dtt = add nsw i32 %i.dts, 1
  store i32 %i.dtt, ptr %i.dtr, align 4, !tbaa !33
  %i.dtu = load <2 x i64>, ptr %i.dok, align 8, !tbaa !40
  %i.dtv = insertelement <2 x i64> %i.dmi, i64 %i.dop, i64 0
  %i.dtw = add <2 x i64> %i.dtu, %i.dtv
  store <2 x i64> %i.dtw, ptr %i.dok, align 8, !tbaa !40
  br label %bb.sd

bb.ru:                                            ; preds = %bb.rj
  %i.dtx = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dty = sext i32 %i.dtx to i64
  %i.dtz = icmp slt i64 %i.dlu, %i.dty
  br i1 %i.dtz, label %bb.rv, label %bb.sd

bb.rv:                                            ; preds = %bb.ru
  %i.dua = getelementptr inbounds nuw i8, ptr %i.dlo, i64 %indvars.iv3700
  %i.dub = load i8, ptr %i.dua, align 1, !tbaa !32
  %.not1877 = icmp eq i8 %i.dub, 0
  %i.duc = getelementptr inbounds nuw [2 x i8], ptr %i.dls, i64 %indvars.iv3700 ; 2 uses
  br i1 %.not1877, label %bb.rx, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  store i16 %i.dmr, ptr %i.duc, align 2, !tbaa !54
  %i.dud = load i32, ptr %i.dkx, align 4, !tbaa !96
  %i.due = icmp slt i32 %i.dud, 2
  %i.duf = load i64, ptr %i.dkz, align 8
  %i.dug = zext i16 %i.dmr to i64                 ; 2 uses
  %i.duh = mul i64 %i.duf, %i.dug
  %.sink.idx.i.i3114 = select i1 %i.due, i64 0, i64 %i.duh
  %.sink.i.i3115 = getelementptr inbounds nuw i8, ptr %i.dol, i64 %.sink.idx.i.i3114 ; 6 uses
  %i.dui = load i32, ptr %.sink.i.i3115, align 4, !tbaa !33
  %i.duj = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 2 uses
  %..i3116 = tail call i32 @llvm.smin.i32(i32 %i.dui, i32 %i.duj)
  store i32 %..i3116, ptr %.sink.i.i3115, align 4, !tbaa !33
  %i.duk = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 8 ; 2 uses
  %i.dul = load i32, ptr %i.duk, align 4, !tbaa !33
  %i.dum = tail call i32 @llvm.smax.i32(i32 %i.dul, i32 %i.duj)
  store i32 %i.dum, ptr %i.duk, align 4, !tbaa !33
  %i.dun = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 4 ; 2 uses
  %i.duo = load i32, ptr %i.dun, align 4, !tbaa !33
  %i.dup = tail call i32 @llvm.smin.i32(i32 %i.duo, i32 %i.dlx)
  store i32 %i.dup, ptr %i.dun, align 4, !tbaa !33
  %i.duq = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 12 ; 2 uses
  %i.dur = load i32, ptr %i.duq, align 4, !tbaa !33
  %i.dus = tail call i32 @llvm.smax.i32(i32 %i.dur, i32 %i.dlx)
  store i32 %i.dus, ptr %i.duq, align 4, !tbaa !33
  %i.dut = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 16 ; 2 uses
  %i.duu = load i32, ptr %i.dut, align 4, !tbaa !33
  %i.duv = add nsw i32 %i.duu, 1
  store i32 %i.duv, ptr %i.dut, align 4, !tbaa !33
  %i.duw = getelementptr inbounds nuw [16 x i8], ptr %i.dok, i64 %i.dug ; 2 uses
  %i.dux = load <2 x i64>, ptr %i.duw, align 8, !tbaa !40
  %i.duy = insertelement <2 x i64> %i.dmi, i64 %indvars.iv3700, i64 0
  %i.duz = add <2 x i64> %i.dux, %i.duy
  store <2 x i64> %i.duz, ptr %i.duw, align 8, !tbaa !40
  br label %bb.sd

bb.rx:                                            ; preds = %bb.rv
  store i16 0, ptr %i.duc, align 2, !tbaa !54
  %i.dva = load i32, ptr %i.dol, align 4, !tbaa !33
  %i.dvb = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 2 uses
  %..i3119 = tail call i32 @llvm.smin.i32(i32 %i.dva, i32 %i.dvb)
  store i32 %..i3119, ptr %i.dol, align 4, !tbaa !33
  %i.dvc = getelementptr inbounds nuw i8, ptr %i.dol, i64 8 ; 2 uses
  %i.dvd = load i32, ptr %i.dvc, align 4, !tbaa !33
  %i.dve = tail call i32 @llvm.smax.i32(i32 %i.dvd, i32 %i.dvb)
  store i32 %i.dve, ptr %i.dvc, align 4, !tbaa !33
  %i.dvf = getelementptr inbounds nuw i8, ptr %i.dol, i64 4 ; 2 uses
  %i.dvg = load i32, ptr %i.dvf, align 4, !tbaa !33
  %i.dvh = tail call i32 @llvm.smin.i32(i32 %i.dvg, i32 %i.dly)
  store i32 %i.dvh, ptr %i.dvf, align 4, !tbaa !33
  %i.dvi = getelementptr inbounds nuw i8, ptr %i.dol, i64 12 ; 2 uses
  %i.dvj = load i32, ptr %i.dvi, align 4, !tbaa !33
  %i.dvk = tail call i32 @llvm.smax.i32(i32 %i.dvj, i32 %i.dly)
  store i32 %i.dvk, ptr %i.dvi, align 4, !tbaa !33
  %i.dvl = getelementptr inbounds nuw i8, ptr %i.dol, i64 16 ; 2 uses
  %i.dvm = load i32, ptr %i.dvl, align 4, !tbaa !33
  %i.dvn = add nsw i32 %i.dvm, 1
  store i32 %i.dvn, ptr %i.dvl, align 4, !tbaa !33
  %i.dvo = load <2 x i64>, ptr %i.dok, align 8, !tbaa !40
  %i.dvp = insertelement <2 x i64> %i.dmi, i64 %indvars.iv3700, i64 0
  %i.dvq = add <2 x i64> %i.dvo, %i.dvp
  store <2 x i64> %i.dvq, ptr %i.dok, align 8, !tbaa !40
  br label %bb.sd

bb.ry:                                            ; preds = %bb.rf
  %i.dvr = load ptr, ptr %i.dky, align 8, !tbaa !55 ; 9 uses
  %i.dvs = load i32, ptr %i.dvr, align 4, !tbaa !33
  %i.dvt = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 4 uses
  %..i3122 = tail call i32 @llvm.smin.i32(i32 %i.dvs, i32 %i.dvt) ; 3 uses
  store i32 %..i3122, ptr %i.dvr, align 4, !tbaa !33
  %i.dvu = getelementptr inbounds nuw i8, ptr %i.dvr, i64 8 ; 5 uses
  %i.dvv = load i32, ptr %i.dvu, align 4, !tbaa !33
  %i.dvw = tail call i32 @llvm.smax.i32(i32 %i.dvv, i32 %i.dvt) ; 3 uses
  store i32 %i.dvw, ptr %i.dvu, align 4, !tbaa !33
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvr, i64 4 ; 5 uses
  %i.dvy = load i32, ptr %i.dvx, align 4, !tbaa !33
  %i.dvz = tail call i32 @llvm.smin.i32(i32 %i.dvy, i32 %i.dmf) ; 4 uses
  store i32 %i.dvz, ptr %i.dvx, align 4, !tbaa !33
  %i.dwa = getelementptr inbounds nuw i8, ptr %i.dvr, i64 12 ; 5 uses
  %i.dwb = load i32, ptr %i.dwa, align 4, !tbaa !33
  %i.dwc = tail call i32 @llvm.smax.i32(i32 %i.dwb, i32 %i.dmf) ; 4 uses
  store i32 %i.dwc, ptr %i.dwa, align 4, !tbaa !33
  %i.dwd = getelementptr inbounds nuw i8, ptr %i.dvr, i64 16 ; 5 uses
  %i.dwe = load i32, ptr %i.dwd, align 4, !tbaa !33 ; 4 uses
  %i.dwf = add nsw i32 %i.dwe, 1
  store i32 %i.dwf, ptr %i.dwd, align 4, !tbaa !33
  %i.dwg = load ptr, ptr %i.dla, align 8, !tbaa !50 ; 6 uses
  %i.dwh = load i64, ptr %i.dwg, align 8, !tbaa !116
  %i.dwi = add i64 %i.dwh, %indvars.iv3700        ; 3 uses
  store i64 %i.dwi, ptr %i.dwg, align 8, !tbaa !116
  %i.dwj = getelementptr inbounds nuw i8, ptr %i.dwg, i64 8 ; 5 uses
  %i.dwk = load i64, ptr %i.dwj, align 8, !tbaa !117
  %i.dwl = add i64 %i.dwk, %indvars.iv3703        ; 3 uses
  store i64 %i.dwl, ptr %i.dwj, align 8, !tbaa !117
  %i.dwm = or disjoint i64 %indvars.iv3700, 1     ; 6 uses
  %i.dwn = load i32, ptr %i.o, align 4, !tbaa !52
  %i.dwo = sext i32 %i.dwn to i64
  %i.dwp = icmp slt i64 %i.dwm, %i.dwo
  br i1 %i.dwp, label %bb.rz, label %bb.sb

bb.rz:                                            ; preds = %bb.ry
  %i.dwq = getelementptr inbounds nuw [2 x i8], ptr %i.dlr, i64 %i.dwm
  store i16 0, ptr %i.dwq, align 2, !tbaa !54
  %11 = trunc nuw nsw i64 %i.dwm to i32           ; 4 uses
  %..i3125 = tail call i32 @llvm.smin.i32(i32 %..i3122, i32 %11) ; 2 uses
  store i32 %..i3125, ptr %i.dvr, align 4, !tbaa !33
  %i.dwr = tail call i32 @llvm.umax.i32(i32 %i.dvw, i32 %11) ; 2 uses
  store i32 %i.dwr, ptr %i.dvu, align 4, !tbaa !33
  store i32 %i.dvz, ptr %i.dvx, align 4, !tbaa !33
  store i32 %i.dwc, ptr %i.dwa, align 4, !tbaa !33
  %i.dws = add nsw i32 %i.dwe, 2
  store i32 %i.dws, ptr %i.dwd, align 4, !tbaa !33
  %i.dwt = add i64 %i.dwi, %i.dwm                 ; 2 uses
  store i64 %i.dwt, ptr %i.dwg, align 8, !tbaa !116
  %i.dwu = add i64 %i.dwl, %indvars.iv3703        ; 2 uses
  store i64 %i.dwu, ptr %i.dwj, align 8, !tbaa !117
  %i.dwv = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dww = sext i32 %i.dwv to i64
  %i.dwx = icmp slt i64 %i.dlu, %i.dww
  br i1 %i.dwx, label %bb.sa, label %bb.sd

bb.sa:                                            ; preds = %bb.rz
  %i.dwy = getelementptr inbounds nuw [2 x i8], ptr %i.dls, i64 %indvars.iv3700
  store i16 0, ptr %i.dwy, align 2, !tbaa !54
  %i.dwz = getelementptr inbounds nuw [2 x i8], ptr %i.dls, i64 %i.dwm
  store i16 0, ptr %i.dwz, align 2, !tbaa !54
  %..i3128 = tail call i32 @llvm.smin.i32(i32 %..i3125, i32 %i.dvt)
  %12 = tail call i32 @llvm.umax.i32(i32 %i.dwr, i32 %i.dvt)
  %13 = tail call i32 @llvm.smin.i32(i32 %i.dvz, i32 %i.dmh)
  %i.dxa = tail call i32 @llvm.smax.i32(i32 %i.dwc, i32 %i.dmh)
  %i.dxb = add i64 %i.dwt, %indvars.iv3700
  %..i3131 = tail call i32 @llvm.smin.i32(i32 %..i3128, i32 %11)
  store i32 %..i3131, ptr %i.dvr, align 4, !tbaa !33
  %14 = tail call i32 @llvm.umax.i32(i32 %12, i32 %11)
  store i32 %14, ptr %i.dvu, align 4, !tbaa !33
  store i32 %13, ptr %i.dvx, align 4, !tbaa !33
  store i32 %i.dxa, ptr %i.dwa, align 4, !tbaa !33
  %i.dxc = add nsw i32 %i.dwe, 4
  store i32 %i.dxc, ptr %i.dwd, align 4, !tbaa !33
  %i.dxd = add i64 %i.dxb, %i.dwm
  store i64 %i.dxd, ptr %i.dwg, align 8, !tbaa !116
  %.reass = add i64 %i.dwu, %invariant.op
  store i64 %.reass, ptr %i.dwj, align 8, !tbaa !117
  br label %bb.sd

bb.sb:                                            ; preds = %bb.ry
  %i.dxe = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dxf = sext i32 %i.dxe to i64
  %i.dxg = icmp slt i64 %i.dlu, %i.dxf
  br i1 %i.dxg, label %bb.sc, label %bb.sd

bb.sc:                                            ; preds = %bb.sb
  %i.dxh = getelementptr inbounds nuw [2 x i8], ptr %i.dls, i64 %indvars.iv3700
  store i16 0, ptr %i.dxh, align 2, !tbaa !54
  store i32 %..i3122, ptr %i.dvr, align 4, !tbaa !33
  store i32 %i.dvw, ptr %i.dvu, align 4, !tbaa !33
  %15 = tail call i32 @llvm.smin.i32(i32 %i.dvz, i32 %i.dmg)
  store i32 %15, ptr %i.dvx, align 4, !tbaa !33
  %i.dxi = tail call i32 @llvm.smax.i32(i32 %i.dwc, i32 %i.dmg)
  store i32 %i.dxi, ptr %i.dwa, align 4, !tbaa !33
  %i.dxj = add nsw i32 %i.dwe, 2
  store i32 %i.dxj, ptr %i.dwd, align 4, !tbaa !33
  %i.dxk = add i64 %i.dwi, %indvars.iv3700
  store i64 %i.dxk, ptr %i.dwg, align 8, !tbaa !116
  %i.dxl = add i64 %i.dwl, %i.dlu
  store i64 %i.dxl, ptr %i.dwj, align 8, !tbaa !117
  br label %bb.sd

bb.sd:                                            ; preds = %bb.sc, %bb.sa, %bb.rx, %bb.rw, %bb.rt, %bb.rs, %bb.rz, %bb.sb, %bb.rn, %bb.ru
  %indvars.iv.next3701 = add nuw nsw i64 %indvars.iv3700, 2 ; 2 uses
  %i.dxm = load i32, ptr %i.o, align 4, !tbaa !52 ; 2 uses
  %i.dxn = sext i32 %i.dxm to i64
  %i.dxo = icmp slt i64 %indvars.iv.next3701, %i.dxn
  br i1 %i.dxo, label %bb.rf, label %._crit_edge3529.loopexit, !llvm.loop !320

bb.se:                                            ; preds = %.lr.ph3538, %._crit_edge3536
  %i.dxp = phi i32 [ %i.dko, %.lr.ph3538 ], [ %i.dym, %._crit_edge3536 ]
  %i.dxq = phi i32 [ %i.dkq, %.lr.ph3538 ], [ %i.dyn, %._crit_edge3536 ] ; 2 uses
  %indvars.iv3709 = phi i64 [ 0, %.lr.ph3538 ], [ %indvars.iv.next3710, %._crit_edge3536 ] ; 12 uses
  %i.dxr = load i64, ptr %i.dlc, align 8, !tbaa !40 ; 2 uses
  %i.dxs = mul i64 %i.dxr, %indvars.iv3709
  %i.dxt = getelementptr inbounds nuw i8, ptr %.pre3726, i64 %i.dxs ; 3 uses
  %i.dxu = getelementptr inbounds nuw i8, ptr %i.dxt, i64 %i.dxr ; 2 uses
  %i.dxv = load i64, ptr %i.dle, align 8, !tbaa !40 ; 2 uses
  %i.dxw = mul i64 %i.dxv, %indvars.iv3709
  %i.dxx = getelementptr inbounds nuw i8, ptr %.pre3727, i64 %i.dxw ; 4 uses
  %i.dxy = getelementptr inbounds nuw i8, ptr %i.dxx, i64 %i.dxv ; 4 uses
  %i.dxz = icmp sgt i32 %i.dxq, 0
  br i1 %i.dxz, label %.lr.ph3535, label %._crit_edge3536

.lr.ph3535:                                       ; preds = %bb.se
  %i.dya = or disjoint i64 %indvars.iv3709, 1     ; 10 uses
  %i.dyb = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %i.dyc = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %i.dyd = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %i.dye = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %i.dyf = trunc nuw nsw i64 %i.dya to i32        ; 2 uses
  %i.dyg = trunc nuw nsw i64 %i.dya to i32        ; 2 uses
  %i.dyh = trunc nuw nsw i64 %i.dya to i32        ; 2 uses
  %i.dyi = trunc nuw nsw i64 %i.dya to i32        ; 2 uses
  %i.dyj = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %invariant.op4149 = shl nuw i64 %indvars.iv3709, 1
  %i.dyk = trunc nuw nsw i64 %i.dya to i32        ; 2 uses
  %invariant.op4151 = shl nuw i64 %i.dya, 1
  %i.dyl = insertelement <2 x i64> poison, i64 %i.dya, i64 1 ; 2 uses
  br label %bb.sf

._crit_edge3536.loopexit:                         ; preds = %bb.sv
  %.pre3728 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3536

._crit_edge3536:                                  ; preds = %._crit_edge3536.loopexit, %bb.se
  %i.dym = phi i32 [ %.pre3728, %._crit_edge3536.loopexit ], [ %i.dxp, %bb.se ] ; 2 uses
  %i.dyn = phi i32 [ %i.ehe, %._crit_edge3536.loopexit ], [ %i.dxq, %bb.se ]
  %indvars.iv.next3710 = add nuw nsw i64 %indvars.iv3709, 2 ; 2 uses
  %i.dyo = sext i32 %i.dym to i64
  %i.dyp = icmp slt i64 %indvars.iv.next3710, %i.dyo
  br i1 %i.dyp, label %bb.se, label %.loopexit, !llvm.loop !321

bb.sf:                                            ; preds = %.lr.ph3535, %bb.sv
  %indvars.iv3706 = phi i64 [ 0, %.lr.ph3535 ], [ %indvars.iv.next3707, %bb.sv ] ; 19 uses
  %i.dyq = getelementptr inbounds nuw [2 x i8], ptr %i.dxx, i64 %indvars.iv3706 ; 3 uses
  %i.dyr = load i16, ptr %i.dyq, align 2, !tbaa !54 ; 2 uses
  %.not1870 = icmp eq i16 %i.dyr, 0
  br i1 %.not1870, label %bb.st, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.dys = zext i16 %i.dyr to i64
  %i.dyt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.dys
  %i.dyu = load i16, ptr %i.dyt, align 2, !tbaa !54 ; 8 uses
  %i.dyv = getelementptr inbounds nuw i8, ptr %i.dxt, i64 %indvars.iv3706
  %i.dyw = load i8, ptr %i.dyv, align 1, !tbaa !32
  %.not1871 = icmp eq i8 %i.dyw, 0
  br i1 %.not1871, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  store i16 %i.dyu, ptr %i.dyq, align 2, !tbaa !54
  %i.dyx = load i32, ptr %i.dlf, align 4, !tbaa !96
  %i.dyy = icmp slt i32 %i.dyx, 2
  %i.dyz = load ptr, ptr %i.dlg, align 8, !tbaa !55 ; 2 uses
  %i.dza = load i64, ptr %i.dlh, align 8
  %i.dzb = zext i16 %i.dyu to i64                 ; 2 uses
  %i.dzc = mul i64 %i.dza, %i.dzb
  %.sink.idx.i.i3135 = select i1 %i.dyy, i64 0, i64 %i.dzc
  %.sink.i.i3136 = getelementptr inbounds nuw i8, ptr %i.dyz, i64 %.sink.idx.i.i3135 ; 6 uses
  %i.dzd = load i32, ptr %.sink.i.i3136, align 4, !tbaa !33
  %i.dze = trunc nuw nsw i64 %indvars.iv3706 to i32 ; 2 uses
  %..i3137 = tail call i32 @llvm.smin.i32(i32 %i.dzd, i32 %i.dze)
  store i32 %..i3137, ptr %.sink.i.i3136, align 4, !tbaa !33
  %i.dzf = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 8 ; 2 uses
  %i.dzg = load i32, ptr %i.dzf, align 4, !tbaa !33
  %i.dzh = tail call i32 @llvm.smax.i32(i32 %i.dzg, i32 %i.dze)
  store i32 %i.dzh, ptr %i.dzf, align 4, !tbaa !33
  %i.dzi = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 4 ; 2 uses
  %i.dzj = load i32, ptr %i.dzi, align 4, !tbaa !33
  %i.dzk = tail call i32 @llvm.smin.i32(i32 %i.dzj, i32 %i.dyb)
  store i32 %i.dzk, ptr %i.dzi, align 4, !tbaa !33
  %i.dzl = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 12 ; 2 uses
  %i.dzm = load i32, ptr %i.dzl, align 4, !tbaa !33
  %i.dzn = tail call i32 @llvm.smax.i32(i32 %i.dzm, i32 %i.dyb)
  store i32 %i.dzn, ptr %i.dzl, align 4, !tbaa !33
  %i.dzo = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 16 ; 2 uses
  %i.dzp = load i32, ptr %i.dzo, align 4, !tbaa !33
  %i.dzq = add nsw i32 %i.dzp, 1
  store i32 %i.dzq, ptr %i.dzo, align 4, !tbaa !33
  %i.dzr = load ptr, ptr %i.dli, align 8, !tbaa !50 ; 2 uses
  %i.dzs = getelementptr inbounds nuw [16 x i8], ptr %i.dzr, i64 %i.dzb ; 3 uses
  %i.dzt = load i64, ptr %i.dzs, align 8, !tbaa !116
  %i.dzu = add i64 %i.dzt, %indvars.iv3706
  store i64 %i.dzu, ptr %i.dzs, align 8, !tbaa !116
  br label %bb.sj

bb.si:                                            ; preds = %bb.sg
  store i16 0, ptr %i.dyq, align 2, !tbaa !54
  %i.dzv = load ptr, ptr %i.dlg, align 8, !tbaa !55 ; 7 uses
  %i.dzw = load i32, ptr %i.dzv, align 4, !tbaa !33
  %i.dzx = trunc nuw nsw i64 %indvars.iv3706 to i32 ; 2 uses
  %..i3140 = tail call i32 @llvm.smin.i32(i32 %i.dzw, i32 %i.dzx)
  store i32 %..i3140, ptr %i.dzv, align 4, !tbaa !33
  %i.dzy = getelementptr inbounds nuw i8, ptr %i.dzv, i64 8 ; 2 uses
  %i.dzz = load i32, ptr %i.dzy, align 4, !tbaa !33
  %i.eaa = tail call i32 @llvm.smax.i32(i32 %i.dzz, i32 %i.dzx)
  store i32 %i.eaa, ptr %i.dzy, align 4, !tbaa !33
  %i.eab = getelementptr inbounds nuw i8, ptr %i.dzv, i64 4 ; 2 uses
  %i.eac = load i32, ptr %i.eab, align 4, !tbaa !33
  %i.ead = tail call i32 @llvm.smin.i32(i32 %i.eac, i32 %i.dyc)
  store i32 %i.ead, ptr %i.eab, align 4, !tbaa !33
  %i.eae = getelementptr inbounds nuw i8, ptr %i.dzv, i64 12 ; 2 uses
  %i.eaf = load i32, ptr %i.eae, align 4, !tbaa !33
  %i.eag = tail call i32 @llvm.smax.i32(i32 %i.eaf, i32 %i.dyc)
  store i32 %i.eag, ptr %i.eae, align 4, !tbaa !33
  %i.eah = getelementptr inbounds nuw i8, ptr %i.dzv, i64 16 ; 2 uses
  %i.eai = load i32, ptr %i.eah, align 4, !tbaa !33
  %i.eaj = add nsw i32 %i.eai, 1
  store i32 %i.eaj, ptr %i.eah, align 4, !tbaa !33
  %i.eak = load ptr, ptr %i.dli, align 8, !tbaa !50 ; 4 uses
  %i.eal = load i64, ptr %i.eak, align 8, !tbaa !116
  %i.eam = add i64 %i.eal, %indvars.iv3706
  store i64 %i.eam, ptr %i.eak, align 8, !tbaa !116
  br label %bb.sj

bb.sj:                                            ; preds = %bb.si, %bb.sh
  %.sink4174 = phi ptr [ %i.eak, %bb.si ], [ %i.dzs, %bb.sh ]
  %i.ean = phi ptr [ %i.eak, %bb.si ], [ %i.dzr, %bb.sh ] ; 11 uses
  %i.eao = phi ptr [ %i.dzv, %bb.si ], [ %i.dyz, %bb.sh ] ; 21 uses
  %i.eap = getelementptr inbounds nuw i8, ptr %.sink4174, i64 8 ; 2 uses
  %i.eaq = load i64, ptr %i.eap, align 8, !tbaa !117
  %i.ear = add i64 %i.eaq, %indvars.iv3709
  store i64 %i.ear, ptr %i.eap, align 8, !tbaa !117
  %i.eas = or disjoint i64 %indvars.iv3706, 1     ; 12 uses
  %i.eat = getelementptr inbounds nuw i8, ptr %i.dxt, i64 %i.eas
  %i.eau = load i8, ptr %i.eat, align 1, !tbaa !32
  %.not1872 = icmp eq i8 %i.eau, 0
  %i.eav = getelementptr inbounds nuw [2 x i8], ptr %i.dxx, i64 %i.eas ; 2 uses
  br i1 %.not1872, label %bb.sl, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  store i16 %i.dyu, ptr %i.eav, align 2, !tbaa !54
  %i.eaw = load i32, ptr %i.dlf, align 4, !tbaa !96
  %i.eax = icmp slt i32 %i.eaw, 2
  %i.eay = load i64, ptr %i.dlh, align 8
  %i.eaz = zext i16 %i.dyu to i64                 ; 2 uses
  %i.eba = mul i64 %i.eay, %i.eaz
  %.sink.idx.i.i3141 = select i1 %i.eax, i64 0, i64 %i.eba
  %.sink.i.i3142 = getelementptr inbounds nuw i8, ptr %i.eao, i64 %.sink.idx.i.i3141 ; 6 uses
  %i.ebb = load i32, ptr %.sink.i.i3142, align 4, !tbaa !33
  %i.ebc = trunc nuw nsw i64 %i.eas to i32        ; 2 uses
  %..i3143 = tail call i32 @llvm.smin.i32(i32 %i.ebb, i32 %i.ebc)
  store i32 %..i3143, ptr %.sink.i.i3142, align 4, !tbaa !33
  %i.ebd = getelementptr inbounds nuw i8, ptr %.sink.i.i3142, i64 8 ; 2 uses
  %i.ebe = load i32, ptr %i.ebd, align 4, !tbaa !33
  %i.ebf = tail call i32 @llvm.smax.i32(i32 %i.ebe, i32 %i.ebc)
  store i32 %i.ebf, ptr %i.ebd, align 4, !tbaa !33
  %i.ebg = getelementptr inbounds nuw i8, ptr %.sink.i.i3142, i64 4 ; 2 uses
  %i.ebh = load i32, ptr %i.ebg, align 4, !tbaa !33
  %i.ebi = tail call i32 @llvm.smin.i32(i32 %i.ebh, i32 %i.dyd)
  store i32 %i.ebi, ptr %i.ebg, align 4, !tbaa !33
  %i.ebj = getelementptr inbounds nuw i8, ptr %.sink.i.i3142, i64 12 ; 2 uses
  %i.ebk = load i32, ptr %i.ebj, align 4, !tbaa !33
  %i.ebl = tail call i32 @llvm.smax.i32(i32 %i.ebk, i32 %i.dyd)
  store i32 %i.ebl, ptr %i.ebj, align 4, !tbaa !33
  %i.ebm = getelementptr inbounds nuw i8, ptr %.sink.i.i3142, i64 16 ; 2 uses
  %i.ebn = load i32, ptr %i.ebm, align 4, !tbaa !33
  %i.ebo = add nsw i32 %i.ebn, 1
  store i32 %i.ebo, ptr %i.ebm, align 4, !tbaa !33
  %i.ebp = getelementptr inbounds nuw [16 x i8], ptr %i.ean, i64 %i.eaz ; 3 uses
  %i.ebq = load i64, ptr %i.ebp, align 8, !tbaa !116
  %i.ebr = add i64 %i.ebq, %i.eas
  store i64 %i.ebr, ptr %i.ebp, align 8, !tbaa !116
  br label %bb.sm

bb.sl:                                            ; preds = %bb.sj
  store i16 0, ptr %i.eav, align 2, !tbaa !54
  %i.ebs = load i32, ptr %i.eao, align 4, !tbaa !33
  %i.ebt = trunc nuw nsw i64 %i.eas to i32        ; 2 uses
  %..i3146 = tail call i32 @llvm.smin.i32(i32 %i.ebs, i32 %i.ebt)
  store i32 %..i3146, ptr %i.eao, align 4, !tbaa !33
  %i.ebu = getelementptr inbounds nuw i8, ptr %i.eao, i64 8 ; 2 uses
  %i.ebv = load i32, ptr %i.ebu, align 4, !tbaa !33
  %i.ebw = tail call i32 @llvm.smax.i32(i32 %i.ebv, i32 %i.ebt)
  store i32 %i.ebw, ptr %i.ebu, align 4, !tbaa !33
  %i.ebx = getelementptr inbounds nuw i8, ptr %i.eao, i64 4 ; 2 uses
  %i.eby = load i32, ptr %i.ebx, align 4, !tbaa !33
  %i.ebz = tail call i32 @llvm.smin.i32(i32 %i.eby, i32 %i.dye)
  store i32 %i.ebz, ptr %i.ebx, align 4, !tbaa !33
  %i.eca = getelementptr inbounds nuw i8, ptr %i.eao, i64 12 ; 2 uses
  %i.ecb = load i32, ptr %i.eca, align 4, !tbaa !33
  %i.ecc = tail call i32 @llvm.smax.i32(i32 %i.ecb, i32 %i.dye)
  store i32 %i.ecc, ptr %i.eca, align 4, !tbaa !33
  %i.ecd = getelementptr inbounds nuw i8, ptr %i.eao, i64 16 ; 2 uses
  %i.ece = load i32, ptr %i.ecd, align 4, !tbaa !33
  %i.ecf = add nsw i32 %i.ece, 1
  store i32 %i.ecf, ptr %i.ecd, align 4, !tbaa !33
  %i.ecg = load i64, ptr %i.ean, align 8, !tbaa !116
  %i.ech = add i64 %i.ecg, %i.eas
  store i64 %i.ech, ptr %i.ean, align 8, !tbaa !116
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %bb.sk
  %.sink4177 = phi ptr [ %i.ean, %bb.sl ], [ %i.ebp, %bb.sk ]
  %i.eci = getelementptr inbounds nuw i8, ptr %.sink4177, i64 8 ; 2 uses
  %i.ecj = load i64, ptr %i.eci, align 8, !tbaa !117
  %i.eck = add i64 %i.ecj, %indvars.iv3709
  store i64 %i.eck, ptr %i.eci, align 8, !tbaa !117
  %i.ecl = load i32, ptr %i.c, align 8, !tbaa !39
  %i.ecm = sext i32 %i.ecl to i64
  %i.ecn = icmp slt i64 %i.dya, %i.ecm
  br i1 %i.ecn, label %bb.sn, label %bb.sv

bb.sn:                                            ; preds = %bb.sm
  %i.eco = getelementptr inbounds nuw i8, ptr %i.dxu, i64 %indvars.iv3706
  %i.ecp = load i8, ptr %i.eco, align 1, !tbaa !32
  %.not1873 = icmp eq i8 %i.ecp, 0
  %i.ecq = getelementptr inbounds nuw [2 x i8], ptr %i.dxy, i64 %indvars.iv3706 ; 2 uses
  br i1 %.not1873, label %bb.sp, label %bb.so

bb.so:                                            ; preds = %bb.sn
  store i16 %i.dyu, ptr %i.ecq, align 2, !tbaa !54
  %i.ecr = load i32, ptr %i.dlf, align 4, !tbaa !96
  %i.ecs = icmp slt i32 %i.ecr, 2
  %i.ect = load i64, ptr %i.dlh, align 8
  %i.ecu = zext i16 %i.dyu to i64                 ; 2 uses
  %i.ecv = mul i64 %i.ect, %i.ecu
  %.sink.idx.i.i3147 = select i1 %i.ecs, i64 0, i64 %i.ecv
  %.sink.i.i3148 = getelementptr inbounds nuw i8, ptr %i.eao, i64 %.sink.idx.i.i3147 ; 6 uses
  %i.ecw = load i32, ptr %.sink.i.i3148, align 4, !tbaa !33
  %i.ecx = trunc nuw nsw i64 %indvars.iv3706 to i32 ; 2 uses
  %..i3149 = tail call i32 @llvm.smin.i32(i32 %i.ecw, i32 %i.ecx)
  store i32 %..i3149, ptr %.sink.i.i3148, align 4, !tbaa !33
  %i.ecy = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 8 ; 2 uses
  %i.ecz = load i32, ptr %i.ecy, align 4, !tbaa !33
  %i.eda = tail call i32 @llvm.smax.i32(i32 %i.ecz, i32 %i.ecx)
  store i32 %i.eda, ptr %i.ecy, align 4, !tbaa !33
  %i.edb = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 4 ; 2 uses
  %i.edc = load i32, ptr %i.edb, align 4, !tbaa !33
  %i.edd = tail call i32 @llvm.smin.i32(i32 %i.edc, i32 %i.dyf)
  store i32 %i.edd, ptr %i.edb, align 4, !tbaa !33
  %i.ede = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 12 ; 2 uses
  %i.edf = load i32, ptr %i.ede, align 4, !tbaa !33
  %i.edg = tail call i32 @llvm.smax.i32(i32 %i.edf, i32 %i.dyf)
  store i32 %i.edg, ptr %i.ede, align 4, !tbaa !33
  %i.edh = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 16 ; 2 uses
  %i.edi = load i32, ptr %i.edh, align 4, !tbaa !33
  %i.edj = add nsw i32 %i.edi, 1
  store i32 %i.edj, ptr %i.edh, align 4, !tbaa !33
  %i.edk = getelementptr inbounds nuw [16 x i8], ptr %i.ean, i64 %i.ecu ; 3 uses
  %i.edl = load i64, ptr %i.edk, align 8, !tbaa !116
  %i.edm = add i64 %i.edl, %indvars.iv3706
  store i64 %i.edm, ptr %i.edk, align 8, !tbaa !116
  br label %bb.sq

bb.sp:                                            ; preds = %bb.sn
  store i16 0, ptr %i.ecq, align 2, !tbaa !54
  %i.edn = load i32, ptr %i.eao, align 4, !tbaa !33
  %i.edo = trunc nuw nsw i64 %indvars.iv3706 to i32 ; 2 uses
  %..i3152 = tail call i32 @llvm.smin.i32(i32 %i.edn, i32 %i.edo)
  store i32 %..i3152, ptr %i.eao, align 4, !tbaa !33
  %i.edp = getelementptr inbounds nuw i8, ptr %i.eao, i64 8 ; 2 uses
  %i.edq = load i32, ptr %i.edp, align 4, !tbaa !33
  %i.edr = tail call i32 @llvm.smax.i32(i32 %i.edq, i32 %i.edo)
  store i32 %i.edr, ptr %i.edp, align 4, !tbaa !33
  %i.eds = getelementptr inbounds nuw i8, ptr %i.eao, i64 4 ; 2 uses
  %i.edt = load i32, ptr %i.eds, align 4, !tbaa !33
  %i.edu = tail call i32 @llvm.smin.i32(i32 %i.edt, i32 %i.dyg)
  store i32 %i.edu, ptr %i.eds, align 4, !tbaa !33
  %i.edv = getelementptr inbounds nuw i8, ptr %i.eao, i64 12 ; 2 uses
  %i.edw = load i32, ptr %i.edv, align 4, !tbaa !33
  %i.edx = tail call i32 @llvm.smax.i32(i32 %i.edw, i32 %i.dyg)
  store i32 %i.edx, ptr %i.edv, align 4, !tbaa !33
  %i.edy = getelementptr inbounds nuw i8, ptr %i.eao, i64 16 ; 2 uses
  %i.edz = load i32, ptr %i.edy, align 4, !tbaa !33
  %i.eea = add nsw i32 %i.edz, 1
  store i32 %i.eea, ptr %i.edy, align 4, !tbaa !33
  %i.eeb = load i64, ptr %i.ean, align 8, !tbaa !116
  %i.eec = add i64 %i.eeb, %indvars.iv3706
  store i64 %i.eec, ptr %i.ean, align 8, !tbaa !116
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %bb.so
  %.sink4180 = phi ptr [ %i.ean, %bb.sp ], [ %i.edk, %bb.so ]
  %i.eed = getelementptr inbounds nuw i8, ptr %.sink4180, i64 8 ; 2 uses
  %i.eee = load i64, ptr %i.eed, align 8, !tbaa !117
  %i.eef = add i64 %i.eee, %i.dya
  store i64 %i.eef, ptr %i.eed, align 8, !tbaa !117
  %i.eeg = getelementptr inbounds nuw i8, ptr %i.dxu, i64 %i.eas
  %i.eeh = load i8, ptr %i.eeg, align 1, !tbaa !32
  %.not1874 = icmp eq i8 %i.eeh, 0
  %i.eei = getelementptr inbounds nuw [2 x i8], ptr %i.dxy, i64 %i.eas ; 2 uses
  br i1 %.not1874, label %bb.ss, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  store i16 %i.dyu, ptr %i.eei, align 2, !tbaa !54
  %i.eej = load i32, ptr %i.dlf, align 4, !tbaa !96
  %i.eek = icmp slt i32 %i.eej, 2
  %i.eel = load i64, ptr %i.dlh, align 8
  %i.eem = zext i16 %i.dyu to i64                 ; 2 uses
  %i.een = mul i64 %i.eel, %i.eem
  %.sink.idx.i.i3153 = select i1 %i.eek, i64 0, i64 %i.een
  %.sink.i.i3154 = getelementptr inbounds nuw i8, ptr %i.eao, i64 %.sink.idx.i.i3153 ; 6 uses
  %i.eeo = load i32, ptr %.sink.i.i3154, align 4, !tbaa !33
  %i.eep = trunc nuw nsw i64 %i.eas to i32        ; 2 uses
  %..i3155 = tail call i32 @llvm.smin.i32(i32 %i.eeo, i32 %i.eep)
  store i32 %..i3155, ptr %.sink.i.i3154, align 4, !tbaa !33
  %i.eeq = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 8 ; 2 uses
  %i.eer = load i32, ptr %i.eeq, align 4, !tbaa !33
  %i.ees = tail call i32 @llvm.smax.i32(i32 %i.eer, i32 %i.eep)
  store i32 %i.ees, ptr %i.eeq, align 4, !tbaa !33
  %i.eet = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 4 ; 2 uses
  %i.eeu = load i32, ptr %i.eet, align 4, !tbaa !33
  %i.eev = tail call i32 @llvm.smin.i32(i32 %i.eeu, i32 %i.dyh)
  store i32 %i.eev, ptr %i.eet, align 4, !tbaa !33
  %i.eew = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 12 ; 2 uses
  %i.eex = load i32, ptr %i.eew, align 4, !tbaa !33
  %i.eey = tail call i32 @llvm.smax.i32(i32 %i.eex, i32 %i.dyh)
  store i32 %i.eey, ptr %i.eew, align 4, !tbaa !33
  %i.eez = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 16 ; 2 uses
  %i.efa = load i32, ptr %i.eez, align 4, !tbaa !33
  %i.efb = add nsw i32 %i.efa, 1
  store i32 %i.efb, ptr %i.eez, align 4, !tbaa !33
  %i.efc = getelementptr inbounds nuw [16 x i8], ptr %i.ean, i64 %i.eem ; 2 uses
  %i.efd = load <2 x i64>, ptr %i.efc, align 8, !tbaa !40
  %i.efe = insertelement <2 x i64> %i.dyl, i64 %i.eas, i64 0
  %i.eff = add <2 x i64> %i.efd, %i.efe
  store <2 x i64> %i.eff, ptr %i.efc, align 8, !tbaa !40
  br label %bb.sv

bb.ss:                                            ; preds = %bb.sq
  store i16 0, ptr %i.eei, align 2, !tbaa !54
  %i.efg = load i32, ptr %i.eao, align 4, !tbaa !33
  %i.efh = trunc nuw nsw i64 %i.eas to i32        ; 2 uses
  %..i3158 = tail call i32 @llvm.smin.i32(i32 %i.efg, i32 %i.efh)
  store i32 %..i3158, ptr %i.eao, align 4, !tbaa !33
  %i.efi = getelementptr inbounds nuw i8, ptr %i.eao, i64 8 ; 2 uses
  %i.efj = load i32, ptr %i.efi, align 4, !tbaa !33
  %i.efk = tail call i32 @llvm.smax.i32(i32 %i.efj, i32 %i.efh)
  store i32 %i.efk, ptr %i.efi, align 4, !tbaa !33
  %i.efl = getelementptr inbounds nuw i8, ptr %i.eao, i64 4 ; 2 uses
  %i.efm = load i32, ptr %i.efl, align 4, !tbaa !33
  %i.efn = tail call i32 @llvm.smin.i32(i32 %i.efm, i32 %i.dyi)
  store i32 %i.efn, ptr %i.efl, align 4, !tbaa !33
  %i.efo = getelementptr inbounds nuw i8, ptr %i.eao, i64 12 ; 2 uses
  %i.efp = load i32, ptr %i.efo, align 4, !tbaa !33
  %i.efq = tail call i32 @llvm.smax.i32(i32 %i.efp, i32 %i.dyi)
  store i32 %i.efq, ptr %i.efo, align 4, !tbaa !33
  %i.efr = getelementptr inbounds nuw i8, ptr %i.eao, i64 16 ; 2 uses
  %i.efs = load i32, ptr %i.efr, align 4, !tbaa !33
  %i.eft = add nsw i32 %i.efs, 1
  store i32 %i.eft, ptr %i.efr, align 4, !tbaa !33
  %i.efu = load <2 x i64>, ptr %i.ean, align 8, !tbaa !40
  %i.efv = insertelement <2 x i64> %i.dyl, i64 %i.eas, i64 0
  %i.efw = add <2 x i64> %i.efu, %i.efv
  store <2 x i64> %i.efw, ptr %i.ean, align 8, !tbaa !40
  br label %bb.sv

bb.st:                                            ; preds = %bb.sf
  %i.efx = or disjoint i64 %indvars.iv3706, 1     ; 5 uses
  %i.efy = getelementptr inbounds nuw [2 x i8], ptr %i.dxx, i64 %i.efx
  store i16 0, ptr %i.efy, align 2, !tbaa !54
  %i.efz = load ptr, ptr %i.dlg, align 8, !tbaa !55 ; 7 uses
  %i.ega = load i32, ptr %i.efz, align 4, !tbaa !33
  %i.egb = trunc nuw nsw i64 %indvars.iv3706 to i32 ; 4 uses
  %..i3161 = tail call i32 @llvm.smin.i32(i32 %i.ega, i32 %i.egb)
  %i.egc = getelementptr inbounds nuw i8, ptr %i.efz, i64 8 ; 3 uses
  %i.egd = load i32, ptr %i.egc, align 4, !tbaa !33
  %i.ege = tail call i32 @llvm.smax.i32(i32 %i.egd, i32 %i.egb)
  %i.egf = getelementptr inbounds nuw i8, ptr %i.efz, i64 4 ; 3 uses
  %i.egg = load i32, ptr %i.egf, align 4, !tbaa !33
  %i.egh = tail call i32 @llvm.smin.i32(i32 %i.egg, i32 %i.dyj) ; 2 uses
  %i.egi = getelementptr inbounds nuw i8, ptr %i.efz, i64 12 ; 3 uses
  %i.egj = load i32, ptr %i.egi, align 4, !tbaa !33
  %i.egk = tail call i32 @llvm.smax.i32(i32 %i.egj, i32 %i.dyj) ; 2 uses
  %i.egl = getelementptr inbounds nuw i8, ptr %i.efz, i64 16 ; 3 uses
  %i.egm = load i32, ptr %i.egl, align 4, !tbaa !33 ; 2 uses
  %i.egn = load ptr, ptr %i.dli, align 8, !tbaa !50 ; 4 uses
  %i.ego = load i64, ptr %i.egn, align 8, !tbaa !116
  %i.egp = add i64 %i.ego, %indvars.iv3706
  %i.egq = getelementptr inbounds nuw i8, ptr %i.egn, i64 8 ; 3 uses
  %i.egr = load i64, ptr %i.egq, align 8, !tbaa !117
  %16 = trunc nuw nsw i64 %i.efx to i32           ; 4 uses
  %..i3164 = tail call i32 @llvm.smin.i32(i32 %..i3161, i32 %16) ; 2 uses
  store i32 %..i3164, ptr %i.efz, align 4, !tbaa !33
  %i.egs = tail call i32 @llvm.umax.i32(i32 %i.ege, i32 %16) ; 2 uses
  store i32 %i.egs, ptr %i.egc, align 4, !tbaa !33
  store i32 %i.egh, ptr %i.egf, align 4, !tbaa !33
  store i32 %i.egk, ptr %i.egi, align 4, !tbaa !33
  %i.egt = add nsw i32 %i.egm, 2
  store i32 %i.egt, ptr %i.egl, align 4, !tbaa !33
  %i.egu = add i64 %i.egp, %i.efx                 ; 2 uses
  store i64 %i.egu, ptr %i.egn, align 8, !tbaa !116
  %.reass4150 = add i64 %i.egr, %invariant.op4149 ; 2 uses
  store i64 %.reass4150, ptr %i.egq, align 8, !tbaa !117
  %i.egv = load i32, ptr %i.c, align 8, !tbaa !39
  %i.egw = sext i32 %i.egv to i64
  %i.egx = icmp slt i64 %i.dya, %i.egw
  br i1 %i.egx, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %bb.st
  %i.egy = getelementptr inbounds nuw [2 x i8], ptr %i.dxy, i64 %indvars.iv3706
  store i16 0, ptr %i.egy, align 2, !tbaa !54
  %i.egz = getelementptr inbounds nuw [2 x i8], ptr %i.dxy, i64 %i.efx
  store i16 0, ptr %i.egz, align 2, !tbaa !54
  %..i3167 = tail call i32 @llvm.smin.i32(i32 %..i3164, i32 %i.egb)
  %17 = tail call i32 @llvm.umax.i32(i32 %i.egs, i32 %i.egb)
  %18 = tail call i32 @llvm.smin.i32(i32 %i.egh, i32 %i.dyk)
  %i.eha = tail call i32 @llvm.smax.i32(i32 %i.egk, i32 %i.dyk)
  %i.ehb = add i64 %i.egu, %indvars.iv3706
  %..i3170 = tail call i32 @llvm.smin.i32(i32 %..i3167, i32 %16)
  store i32 %..i3170, ptr %i.efz, align 4, !tbaa !33
  %19 = tail call i32 @llvm.umax.i32(i32 %17, i32 %16)
  store i32 %19, ptr %i.egc, align 4, !tbaa !33
  store i32 %18, ptr %i.egf, align 4, !tbaa !33
  store i32 %i.eha, ptr %i.egi, align 4, !tbaa !33
  %i.ehc = add nsw i32 %i.egm, 4
  store i32 %i.ehc, ptr %i.egl, align 4, !tbaa !33
  %i.ehd = add i64 %i.ehb, %i.efx
  store i64 %i.ehd, ptr %i.egn, align 8, !tbaa !116
  %.reass4152 = add i64 %.reass4150, %invariant.op4151
  store i64 %.reass4152, ptr %i.egq, align 8, !tbaa !117
  br label %bb.sv

bb.sv:                                            ; preds = %bb.su, %bb.ss, %bb.sr, %bb.st, %bb.sm
  %indvars.iv.next3707 = add nuw nsw i64 %indvars.iv3706, 2 ; 2 uses
  %i.ehe = load i32, ptr %i.o, align 4, !tbaa !52 ; 2 uses
  %i.ehf = sext i32 %i.ehe to i64
  %i.ehg = icmp slt i64 %indvars.iv.next3707, %i.ehf
  br i1 %i.ehg, label %bb.sf, label %._crit_edge3536.loopexit, !llvm.loop !322

bb.sw:                                            ; preds = %bb.rc
  br i1 %.not1858, label %.preheader, label %.preheader3284

.preheader3284:                                   ; preds = %bb.sw
  br i1 %i.dks, label %.lr.ph3544, label %.loopexit

.lr.ph3544:                                       ; preds = %.preheader3284
  %i.ehh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ehi = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ehj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ehk = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ehl = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.ehm = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ehn = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  %i.eho = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %.pre3729 = load ptr, ptr %i.ehh, align 8, !tbaa !55
  %.pre3730 = load ptr, ptr %i.ehj, align 8, !tbaa !55
  br label %bb.sx

.preheader:                                       ; preds = %bb.sw
  br i1 %i.dks, label %.lr.ph3551, label %.loopexit

.lr.ph3551:                                       ; preds = %.preheader
  %i.ehp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ehq = load ptr, ptr %i.ehp, align 8, !tbaa !55
  %i.ehr = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ehs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eht = load ptr, ptr %i.ehs, align 8, !tbaa !55
  %i.ehu = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ehv = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.ehw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ehx = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  %i.ehy = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  br label %bb.tp

bb.sx:                                            ; preds = %.lr.ph3544, %._crit_edge3542
  %i.ehz = phi i32 [ %i.dko, %.lr.ph3544 ], [ %i.eiw, %._crit_edge3542 ]
  %i.eia = phi i32 [ %i.dkq, %.lr.ph3544 ], [ %i.eix, %._crit_edge3542 ] ; 2 uses
  %indvars.iv3715 = phi i64 [ 0, %.lr.ph3544 ], [ %indvars.iv.next3716, %._crit_edge3542 ] ; 13 uses
  %i.eib = load i64, ptr %i.ehi, align 8, !tbaa !40 ; 2 uses
  %i.eic = mul i64 %i.eib, %indvars.iv3715
  %i.eid = getelementptr inbounds nuw i8, ptr %.pre3729, i64 %i.eic ; 3 uses
  %i.eie = getelementptr inbounds nuw i8, ptr %i.eid, i64 %i.eib ; 2 uses
  %i.eif = load i64, ptr %i.ehk, align 8, !tbaa !40 ; 2 uses
  %i.eig = mul i64 %i.eif, %indvars.iv3715
  %i.eih = getelementptr inbounds nuw i8, ptr %.pre3730, i64 %i.eig ; 4 uses
  %i.eii = getelementptr inbounds nuw i8, ptr %i.eih, i64 %i.eif ; 4 uses
  %i.eij = icmp sgt i32 %i.eia, 0
  br i1 %i.eij, label %.lr.ph3541, label %._crit_edge3542

.lr.ph3541:                                       ; preds = %bb.sx
  %i.eik = or disjoint i64 %indvars.iv3715, 1     ; 9 uses
  %i.eil = trunc nuw nsw i64 %indvars.iv3715 to i32 ; 2 uses
  %i.eim = trunc nuw nsw i64 %indvars.iv3715 to i32 ; 2 uses
  %i.ein = trunc nuw nsw i64 %i.eik to i32        ; 2 uses
  %i.eio = trunc nuw nsw i64 %i.eik to i32        ; 2 uses
  %i.eip = trunc nuw nsw i64 %indvars.iv3715 to i32 ; 2 uses
  %i.eiq = trunc nuw nsw i64 %indvars.iv3715 to i32 ; 2 uses
  %i.eir = trunc nuw nsw i64 %i.eik to i32        ; 2 uses
  %i.eis = trunc nuw nsw i64 %i.eik to i32        ; 2 uses
  %i.eit = trunc nuw nsw i64 %indvars.iv3715 to i32 ; 4 uses
  %i.eiu = trunc nuw nsw i64 %i.eik to i32        ; 4 uses
  %invariant.op4153 = add nuw i64 %indvars.iv3715, %i.eik
  %invariant.op4155 = add nuw i64 %indvars.iv3715, %i.eik
  %i.eiv = insertelement <2 x i64> poison, i64 %i.eik, i64 1 ; 2 uses
  br label %bb.sy

._crit_edge3542.loopexit:                         ; preds = %bb.to
  %.pre3731 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3542

._crit_edge3542:                                  ; preds = %._crit_edge3542.loopexit, %bb.sx
  %i.eiw = phi i32 [ %.pre3731, %._crit_edge3542.loopexit ], [ %i.ehz, %bb.sx ] ; 2 uses
  %i.eix = phi i32 [ %i.ern, %._crit_edge3542.loopexit ], [ %i.eia, %bb.sx ]
  %indvars.iv.next3716 = add nuw nsw i64 %indvars.iv3715, 2 ; 2 uses
  %i.eiy = sext i32 %i.eiw to i64
  %i.eiz = icmp slt i64 %indvars.iv.next3716, %i.eiy
  br i1 %i.eiz, label %bb.sx, label %.loopexit, !llvm.loop !323

bb.sy:                                            ; preds = %.lr.ph3541, %bb.to
  %indvars.iv3712 = phi i64 [ 0, %.lr.ph3541 ], [ %indvars.iv.next3713, %bb.to ] ; 18 uses
  %i.eja = getelementptr inbounds nuw [2 x i8], ptr %i.eih, i64 %indvars.iv3712 ; 3 uses
  %i.ejb = load i16, ptr %i.eja, align 2, !tbaa !54 ; 2 uses
  %.not1864 = icmp eq i16 %i.ejb, 0
  br i1 %.not1864, label %bb.tm, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  %i.ejc = zext i16 %i.ejb to i64
  %i.ejd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.ejc
  %i.eje = load i16, ptr %i.ejd, align 2, !tbaa !54 ; 8 uses
  %i.ejf = getelementptr inbounds nuw i8, ptr %i.eid, i64 %indvars.iv3712
  %i.ejg = load i8, ptr %i.ejf, align 1, !tbaa !32
  %.not1865 = icmp eq i8 %i.ejg, 0
  br i1 %.not1865, label %bb.tb, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  store i16 %i.eje, ptr %i.eja, align 2, !tbaa !54
  %i.ejh = load i32, ptr %i.ehl, align 4, !tbaa !96
  %i.eji = icmp slt i32 %i.ejh, 2
  %i.ejj = load ptr, ptr %i.ehm, align 8, !tbaa !55 ; 2 uses
  %i.ejk = load i64, ptr %i.ehn, align 8
  %i.ejl = zext i16 %i.eje to i64                 ; 2 uses
  %i.ejm = mul i64 %i.ejk, %i.ejl
  %.sink.idx.i.i3171 = select i1 %i.eji, i64 0, i64 %i.ejm
  %.sink.i.i3172 = getelementptr inbounds nuw i8, ptr %i.ejj, i64 %.sink.idx.i.i3171 ; 6 uses
  %i.ejn = load i32, ptr %.sink.i.i3172, align 4, !tbaa !33
  %i.ejo = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 2 uses
  %..i3173 = tail call i32 @llvm.smin.i32(i32 %i.ejn, i32 %i.ejo)
  store i32 %..i3173, ptr %.sink.i.i3172, align 4, !tbaa !33
  %i.ejp = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 8 ; 2 uses
  %i.ejq = load i32, ptr %i.ejp, align 4, !tbaa !33
  %i.ejr = tail call i32 @llvm.smax.i32(i32 %i.ejq, i32 %i.ejo)
  store i32 %i.ejr, ptr %i.ejp, align 4, !tbaa !33
  %i.ejs = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 4 ; 2 uses
  %i.ejt = load i32, ptr %i.ejs, align 4, !tbaa !33
  %i.eju = tail call i32 @llvm.smin.i32(i32 %i.ejt, i32 %i.eil)
  store i32 %i.eju, ptr %i.ejs, align 4, !tbaa !33
  %i.ejv = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 12 ; 2 uses
  %i.ejw = load i32, ptr %i.ejv, align 4, !tbaa !33
  %i.ejx = tail call i32 @llvm.smax.i32(i32 %i.ejw, i32 %i.eil)
  store i32 %i.ejx, ptr %i.ejv, align 4, !tbaa !33
  %i.ejy = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 16 ; 2 uses
  %i.ejz = load i32, ptr %i.ejy, align 4, !tbaa !33
  %i.eka = add nsw i32 %i.ejz, 1
  store i32 %i.eka, ptr %i.ejy, align 4, !tbaa !33
  %i.ekb = load ptr, ptr %i.eho, align 8, !tbaa !50 ; 2 uses
  %i.ekc = getelementptr inbounds nuw [16 x i8], ptr %i.ekb, i64 %i.ejl ; 3 uses
  %i.ekd = load i64, ptr %i.ekc, align 8, !tbaa !116
  %i.eke = add i64 %i.ekd, %indvars.iv3712
  store i64 %i.eke, ptr %i.ekc, align 8, !tbaa !116
  br label %bb.tc

bb.tb:                                            ; preds = %bb.sz
  store i16 0, ptr %i.eja, align 2, !tbaa !54
  %i.ekf = load ptr, ptr %i.ehm, align 8, !tbaa !55 ; 7 uses
  %i.ekg = load i32, ptr %i.ekf, align 4, !tbaa !33
  %i.ekh = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 2 uses
  %..i3176 = tail call i32 @llvm.smin.i32(i32 %i.ekg, i32 %i.ekh)
  store i32 %..i3176, ptr %i.ekf, align 4, !tbaa !33
  %i.eki = getelementptr inbounds nuw i8, ptr %i.ekf, i64 8 ; 2 uses
  %i.ekj = load i32, ptr %i.eki, align 4, !tbaa !33
  %i.ekk = tail call i32 @llvm.smax.i32(i32 %i.ekj, i32 %i.ekh)
  store i32 %i.ekk, ptr %i.eki, align 4, !tbaa !33
  %i.ekl = getelementptr inbounds nuw i8, ptr %i.ekf, i64 4 ; 2 uses
  %i.ekm = load i32, ptr %i.ekl, align 4, !tbaa !33
  %i.ekn = tail call i32 @llvm.smin.i32(i32 %i.ekm, i32 %i.eim)
  store i32 %i.ekn, ptr %i.ekl, align 4, !tbaa !33
  %i.eko = getelementptr inbounds nuw i8, ptr %i.ekf, i64 12 ; 2 uses
  %i.ekp = load i32, ptr %i.eko, align 4, !tbaa !33
  %i.ekq = tail call i32 @llvm.smax.i32(i32 %i.ekp, i32 %i.eim)
  store i32 %i.ekq, ptr %i.eko, align 4, !tbaa !33
  %i.ekr = getelementptr inbounds nuw i8, ptr %i.ekf, i64 16 ; 2 uses
  %i.eks = load i32, ptr %i.ekr, align 4, !tbaa !33
  %i.ekt = add nsw i32 %i.eks, 1
  store i32 %i.ekt, ptr %i.ekr, align 4, !tbaa !33
  %i.eku = load ptr, ptr %i.eho, align 8, !tbaa !50 ; 4 uses
  %i.ekv = load i64, ptr %i.eku, align 8, !tbaa !116
  %i.ekw = add i64 %i.ekv, %indvars.iv3712
  store i64 %i.ekw, ptr %i.eku, align 8, !tbaa !116
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.ta
  %.sink4183 = phi ptr [ %i.eku, %bb.tb ], [ %i.ekc, %bb.ta ]
  %i.ekx = phi ptr [ %i.eku, %bb.tb ], [ %i.ekb, %bb.ta ] ; 11 uses
  %i.eky = phi ptr [ %i.ekf, %bb.tb ], [ %i.ejj, %bb.ta ] ; 21 uses
  %i.ekz = getelementptr inbounds nuw i8, ptr %.sink4183, i64 8 ; 2 uses
  %i.ela = load i64, ptr %i.ekz, align 8, !tbaa !117
  %i.elb = add i64 %i.ela, %indvars.iv3715
  store i64 %i.elb, ptr %i.ekz, align 8, !tbaa !117
  %i.elc = getelementptr inbounds nuw i8, ptr %i.eie, i64 %indvars.iv3712
  %i.eld = load i8, ptr %i.elc, align 1, !tbaa !32
  %.not1866 = icmp eq i8 %i.eld, 0
  %i.ele = getelementptr inbounds nuw [2 x i8], ptr %i.eii, i64 %indvars.iv3712 ; 2 uses
  br i1 %.not1866, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  store i16 %i.eje, ptr %i.ele, align 2, !tbaa !54
  %i.elf = load i32, ptr %i.ehl, align 4, !tbaa !96
  %i.elg = icmp slt i32 %i.elf, 2
  %i.elh = load i64, ptr %i.ehn, align 8
  %i.eli = zext i16 %i.eje to i64                 ; 2 uses
  %i.elj = mul i64 %i.elh, %i.eli
  %.sink.idx.i.i3177 = select i1 %i.elg, i64 0, i64 %i.elj
  %.sink.i.i3178 = getelementptr inbounds nuw i8, ptr %i.eky, i64 %.sink.idx.i.i3177 ; 6 uses
  %i.elk = load i32, ptr %.sink.i.i3178, align 4, !tbaa !33
  %i.ell = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 2 uses
  %..i3179 = tail call i32 @llvm.smin.i32(i32 %i.elk, i32 %i.ell)
  store i32 %..i3179, ptr %.sink.i.i3178, align 4, !tbaa !33
  %i.elm = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 8 ; 2 uses
  %i.eln = load i32, ptr %i.elm, align 4, !tbaa !33
  %i.elo = tail call i32 @llvm.smax.i32(i32 %i.eln, i32 %i.ell)
  store i32 %i.elo, ptr %i.elm, align 4, !tbaa !33
  %i.elp = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 4 ; 2 uses
  %i.elq = load i32, ptr %i.elp, align 4, !tbaa !33
  %i.elr = tail call i32 @llvm.smin.i32(i32 %i.elq, i32 %i.ein)
  store i32 %i.elr, ptr %i.elp, align 4, !tbaa !33
  %i.els = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 12 ; 2 uses
  %i.elt = load i32, ptr %i.els, align 4, !tbaa !33
  %i.elu = tail call i32 @llvm.smax.i32(i32 %i.elt, i32 %i.ein)
  store i32 %i.elu, ptr %i.els, align 4, !tbaa !33
  %i.elv = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 16 ; 2 uses
  %i.elw = load i32, ptr %i.elv, align 4, !tbaa !33
  %i.elx = add nsw i32 %i.elw, 1
  store i32 %i.elx, ptr %i.elv, align 4, !tbaa !33
  %i.ely = getelementptr inbounds nuw [16 x i8], ptr %i.ekx, i64 %i.eli ; 3 uses
  %i.elz = load i64, ptr %i.ely, align 8, !tbaa !116
  %i.ema = add i64 %i.elz, %indvars.iv3712
  store i64 %i.ema, ptr %i.ely, align 8, !tbaa !116
  br label %bb.tf

bb.te:                                            ; preds = %bb.tc
  store i16 0, ptr %i.ele, align 2, !tbaa !54
  %i.emb = load i32, ptr %i.eky, align 4, !tbaa !33
  %i.emc = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 2 uses
  %..i3182 = tail call i32 @llvm.smin.i32(i32 %i.emb, i32 %i.emc)
  store i32 %..i3182, ptr %i.eky, align 4, !tbaa !33
  %i.emd = getelementptr inbounds nuw i8, ptr %i.eky, i64 8 ; 2 uses
  %i.eme = load i32, ptr %i.emd, align 4, !tbaa !33
  %i.emf = tail call i32 @llvm.smax.i32(i32 %i.eme, i32 %i.emc)
  store i32 %i.emf, ptr %i.emd, align 4, !tbaa !33
  %i.emg = getelementptr inbounds nuw i8, ptr %i.eky, i64 4 ; 2 uses
  %i.emh = load i32, ptr %i.emg, align 4, !tbaa !33
  %i.emi = tail call i32 @llvm.smin.i32(i32 %i.emh, i32 %i.eio)
  store i32 %i.emi, ptr %i.emg, align 4, !tbaa !33
  %i.emj = getelementptr inbounds nuw i8, ptr %i.eky, i64 12 ; 2 uses
  %i.emk = load i32, ptr %i.emj, align 4, !tbaa !33
  %i.eml = tail call i32 @llvm.smax.i32(i32 %i.emk, i32 %i.eio)
  store i32 %i.eml, ptr %i.emj, align 4, !tbaa !33
  %i.emm = getelementptr inbounds nuw i8, ptr %i.eky, i64 16 ; 2 uses
  %i.emn = load i32, ptr %i.emm, align 4, !tbaa !33
  %i.emo = add nsw i32 %i.emn, 1
  store i32 %i.emo, ptr %i.emm, align 4, !tbaa !33
  %i.emp = load i64, ptr %i.ekx, align 8, !tbaa !116
  %i.emq = add i64 %i.emp, %indvars.iv3712
  store i64 %i.emq, ptr %i.ekx, align 8, !tbaa !116
  br label %bb.tf

bb.tf:                                            ; preds = %bb.te, %bb.td
  %.sink4186 = phi ptr [ %i.ekx, %bb.te ], [ %i.ely, %bb.td ]
  %i.emr = getelementptr inbounds nuw i8, ptr %.sink4186, i64 8 ; 2 uses
  %i.ems = load i64, ptr %i.emr, align 8, !tbaa !117
  %i.emt = add i64 %i.ems, %i.eik
  store i64 %i.emt, ptr %i.emr, align 8, !tbaa !117
  %i.emu = or disjoint i64 %indvars.iv3712, 1     ; 13 uses
  %i.emv = load i32, ptr %i.o, align 4, !tbaa !52
  %i.emw = sext i32 %i.emv to i64
  %i.emx = icmp slt i64 %i.emu, %i.emw
  br i1 %i.emx, label %bb.tg, label %bb.to

bb.tg:                                            ; preds = %bb.tf
  %i.emy = getelementptr inbounds nuw i8, ptr %i.eid, i64 %i.emu
  %i.emz = load i8, ptr %i.emy, align 1, !tbaa !32
  %.not1867 = icmp eq i8 %i.emz, 0
  %i.ena = getelementptr inbounds nuw [2 x i8], ptr %i.eih, i64 %i.emu ; 2 uses
  br i1 %.not1867, label %bb.ti, label %bb.th

bb.th:                                            ; preds = %bb.tg
  store i16 %i.eje, ptr %i.ena, align 2, !tbaa !54
  %i.enb = load i32, ptr %i.ehl, align 4, !tbaa !96
  %i.enc = icmp slt i32 %i.enb, 2
  %i.end = load i64, ptr %i.ehn, align 8
  %i.ene = zext i16 %i.eje to i64                 ; 2 uses
  %i.enf = mul i64 %i.end, %i.ene
  %.sink.idx.i.i3183 = select i1 %i.enc, i64 0, i64 %i.enf
  %.sink.i.i3184 = getelementptr inbounds nuw i8, ptr %i.eky, i64 %.sink.idx.i.i3183 ; 6 uses
  %i.eng = load i32, ptr %.sink.i.i3184, align 4, !tbaa !33
  %i.enh = trunc nuw nsw i64 %i.emu to i32        ; 2 uses
  %..i3185 = tail call i32 @llvm.smin.i32(i32 %i.eng, i32 %i.enh)
  store i32 %..i3185, ptr %.sink.i.i3184, align 4, !tbaa !33
  %i.eni = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 8 ; 2 uses
  %i.enj = load i32, ptr %i.eni, align 4, !tbaa !33
  %i.enk = tail call i32 @llvm.smax.i32(i32 %i.enj, i32 %i.enh)
  store i32 %i.enk, ptr %i.eni, align 4, !tbaa !33
  %i.enl = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 4 ; 2 uses
  %i.enm = load i32, ptr %i.enl, align 4, !tbaa !33
  %i.enn = tail call i32 @llvm.smin.i32(i32 %i.enm, i32 %i.eip)
  store i32 %i.enn, ptr %i.enl, align 4, !tbaa !33
  %i.eno = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 12 ; 2 uses
  %i.enp = load i32, ptr %i.eno, align 4, !tbaa !33
  %i.enq = tail call i32 @llvm.smax.i32(i32 %i.enp, i32 %i.eip)
  store i32 %i.enq, ptr %i.eno, align 4, !tbaa !33
  %i.enr = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 16 ; 2 uses
  %i.ens = load i32, ptr %i.enr, align 4, !tbaa !33
  %i.ent = add nsw i32 %i.ens, 1
  store i32 %i.ent, ptr %i.enr, align 4, !tbaa !33
  %i.enu = getelementptr inbounds nuw [16 x i8], ptr %i.ekx, i64 %i.ene ; 3 uses
  %i.env = load i64, ptr %i.enu, align 8, !tbaa !116
  %i.enw = add i64 %i.env, %i.emu
  store i64 %i.enw, ptr %i.enu, align 8, !tbaa !116
  br label %bb.tj

bb.ti:                                            ; preds = %bb.tg
  store i16 0, ptr %i.ena, align 2, !tbaa !54
  %i.enx = load i32, ptr %i.eky, align 4, !tbaa !33
  %i.eny = trunc nuw nsw i64 %i.emu to i32        ; 2 uses
  %..i3188 = tail call i32 @llvm.smin.i32(i32 %i.enx, i32 %i.eny)
  store i32 %..i3188, ptr %i.eky, align 4, !tbaa !33
  %i.enz = getelementptr inbounds nuw i8, ptr %i.eky, i64 8 ; 2 uses
  %i.eoa = load i32, ptr %i.enz, align 4, !tbaa !33
  %i.eob = tail call i32 @llvm.smax.i32(i32 %i.eoa, i32 %i.eny)
  store i32 %i.eob, ptr %i.enz, align 4, !tbaa !33
  %i.eoc = getelementptr inbounds nuw i8, ptr %i.eky, i64 4 ; 2 uses
  %i.eod = load i32, ptr %i.eoc, align 4, !tbaa !33
  %i.eoe = tail call i32 @llvm.smin.i32(i32 %i.eod, i32 %i.eiq)
  store i32 %i.eoe, ptr %i.eoc, align 4, !tbaa !33
  %i.eof = getelementptr inbounds nuw i8, ptr %i.eky, i64 12 ; 2 uses
  %i.eog = load i32, ptr %i.eof, align 4, !tbaa !33
  %i.eoh = tail call i32 @llvm.smax.i32(i32 %i.eog, i32 %i.eiq)
  store i32 %i.eoh, ptr %i.eof, align 4, !tbaa !33
  %i.eoi = getelementptr inbounds nuw i8, ptr %i.eky, i64 16 ; 2 uses
  %i.eoj = load i32, ptr %i.eoi, align 4, !tbaa !33
  %i.eok = add nsw i32 %i.eoj, 1
  store i32 %i.eok, ptr %i.eoi, align 4, !tbaa !33
  %i.eol = load i64, ptr %i.ekx, align 8, !tbaa !116
  %i.eom = add i64 %i.eol, %i.emu
  store i64 %i.eom, ptr %i.ekx, align 8, !tbaa !116
  br label %bb.tj

bb.tj:                                            ; preds = %bb.ti, %bb.th
  %.sink4189 = phi ptr [ %i.ekx, %bb.ti ], [ %i.enu, %bb.th ]
  %i.eon = getelementptr inbounds nuw i8, ptr %.sink4189, i64 8 ; 2 uses
  %i.eoo = load i64, ptr %i.eon, align 8, !tbaa !117
  %i.eop = add i64 %i.eoo, %indvars.iv3715
  store i64 %i.eop, ptr %i.eon, align 8, !tbaa !117
  %i.eoq = getelementptr inbounds nuw i8, ptr %i.eie, i64 %i.emu
  %i.eor = load i8, ptr %i.eoq, align 1, !tbaa !32
  %.not1868 = icmp eq i8 %i.eor, 0
  %i.eos = getelementptr inbounds nuw [2 x i8], ptr %i.eii, i64 %i.emu ; 2 uses
  br i1 %.not1868, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  store i16 %i.eje, ptr %i.eos, align 2, !tbaa !54
  %i.eot = load i32, ptr %i.ehl, align 4, !tbaa !96
  %i.eou = icmp slt i32 %i.eot, 2
  %i.eov = load i64, ptr %i.ehn, align 8
  %i.eow = zext i16 %i.eje to i64                 ; 2 uses
  %i.eox = mul i64 %i.eov, %i.eow
  %.sink.idx.i.i3189 = select i1 %i.eou, i64 0, i64 %i.eox
  %.sink.i.i3190 = getelementptr inbounds nuw i8, ptr %i.eky, i64 %.sink.idx.i.i3189 ; 6 uses
  %i.eoy = load i32, ptr %.sink.i.i3190, align 4, !tbaa !33
  %i.eoz = trunc nuw nsw i64 %i.emu to i32        ; 2 uses
  %..i3191 = tail call i32 @llvm.smin.i32(i32 %i.eoy, i32 %i.eoz)
  store i32 %..i3191, ptr %.sink.i.i3190, align 4, !tbaa !33
  %i.epa = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 8 ; 2 uses
  %i.epb = load i32, ptr %i.epa, align 4, !tbaa !33
  %i.epc = tail call i32 @llvm.smax.i32(i32 %i.epb, i32 %i.eoz)
  store i32 %i.epc, ptr %i.epa, align 4, !tbaa !33
  %i.epd = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 4 ; 2 uses
  %i.epe = load i32, ptr %i.epd, align 4, !tbaa !33
  %i.epf = tail call i32 @llvm.smin.i32(i32 %i.epe, i32 %i.eir)
  store i32 %i.epf, ptr %i.epd, align 4, !tbaa !33
  %i.epg = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 12 ; 2 uses
  %i.eph = load i32, ptr %i.epg, align 4, !tbaa !33
  %i.epi = tail call i32 @llvm.smax.i32(i32 %i.eph, i32 %i.eir)
  store i32 %i.epi, ptr %i.epg, align 4, !tbaa !33
  %i.epj = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 16 ; 2 uses
  %i.epk = load i32, ptr %i.epj, align 4, !tbaa !33
  %i.epl = add nsw i32 %i.epk, 1
  store i32 %i.epl, ptr %i.epj, align 4, !tbaa !33
  %i.epm = getelementptr inbounds nuw [16 x i8], ptr %i.ekx, i64 %i.eow ; 2 uses
  %i.epn = load <2 x i64>, ptr %i.epm, align 8, !tbaa !40
  %i.epo = insertelement <2 x i64> %i.eiv, i64 %i.emu, i64 0
  %i.epp = add <2 x i64> %i.epn, %i.epo
  store <2 x i64> %i.epp, ptr %i.epm, align 8, !tbaa !40
  br label %bb.to

bb.tl:                                            ; preds = %bb.tj
  store i16 0, ptr %i.eos, align 2, !tbaa !54
  %i.epq = load i32, ptr %i.eky, align 4, !tbaa !33
  %i.epr = trunc nuw nsw i64 %i.emu to i32        ; 2 uses
  %..i3194 = tail call i32 @llvm.smin.i32(i32 %i.epq, i32 %i.epr)
  store i32 %..i3194, ptr %i.eky, align 4, !tbaa !33
  %i.eps = getelementptr inbounds nuw i8, ptr %i.eky, i64 8 ; 2 uses
  %i.ept = load i32, ptr %i.eps, align 4, !tbaa !33
  %i.epu = tail call i32 @llvm.smax.i32(i32 %i.ept, i32 %i.epr)
  store i32 %i.epu, ptr %i.eps, align 4, !tbaa !33
  %i.epv = getelementptr inbounds nuw i8, ptr %i.eky, i64 4 ; 2 uses
  %i.epw = load i32, ptr %i.epv, align 4, !tbaa !33
  %i.epx = tail call i32 @llvm.smin.i32(i32 %i.epw, i32 %i.eis)
  store i32 %i.epx, ptr %i.epv, align 4, !tbaa !33
  %i.epy = getelementptr inbounds nuw i8, ptr %i.eky, i64 12 ; 2 uses
  %i.epz = load i32, ptr %i.epy, align 4, !tbaa !33
  %i.eqa = tail call i32 @llvm.smax.i32(i32 %i.epz, i32 %i.eis)
  store i32 %i.eqa, ptr %i.epy, align 4, !tbaa !33
  %i.eqb = getelementptr inbounds nuw i8, ptr %i.eky, i64 16 ; 2 uses
  %i.eqc = load i32, ptr %i.eqb, align 4, !tbaa !33
  %i.eqd = add nsw i32 %i.eqc, 1
  store i32 %i.eqd, ptr %i.eqb, align 4, !tbaa !33
  %i.eqe = load <2 x i64>, ptr %i.ekx, align 8, !tbaa !40
  %i.eqf = insertelement <2 x i64> %i.eiv, i64 %i.emu, i64 0
  %i.eqg = add <2 x i64> %i.eqe, %i.eqf
  store <2 x i64> %i.eqg, ptr %i.ekx, align 8, !tbaa !40
  br label %bb.to

bb.tm:                                            ; preds = %bb.sy
  %i.eqh = getelementptr inbounds nuw [2 x i8], ptr %i.eii, i64 %indvars.iv3712
  store i16 0, ptr %i.eqh, align 2, !tbaa !54
  %i.eqi = load ptr, ptr %i.ehm, align 8, !tbaa !55 ; 7 uses
  %i.eqj = load i32, ptr %i.eqi, align 4, !tbaa !33
  %i.eqk = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 2 uses
  %..i3197 = tail call i32 @llvm.smin.i32(i32 %i.eqj, i32 %i.eqk) ; 2 uses
  %i.eql = getelementptr inbounds nuw i8, ptr %i.eqi, i64 8 ; 3 uses
  %i.eqm = load i32, ptr %i.eql, align 4, !tbaa !33
  %i.eqn = tail call i32 @llvm.smax.i32(i32 %i.eqm, i32 %i.eqk) ; 2 uses
  %i.eqo = getelementptr inbounds nuw i8, ptr %i.eqi, i64 4 ; 3 uses
  %i.eqp = load i32, ptr %i.eqo, align 4, !tbaa !33
  %i.eqq = tail call i32 @llvm.smin.i32(i32 %i.eqp, i32 %i.eit)
  %i.eqr = getelementptr inbounds nuw i8, ptr %i.eqi, i64 12 ; 3 uses
  %i.eqs = load i32, ptr %i.eqr, align 4, !tbaa !33
  %i.eqt = tail call i32 @llvm.smax.i32(i32 %i.eqs, i32 %i.eit)
  %i.equ = getelementptr inbounds nuw i8, ptr %i.eqi, i64 16 ; 3 uses
  %i.eqv = load i32, ptr %i.equ, align 4, !tbaa !33 ; 2 uses
  %i.eqw = load ptr, ptr %i.eho, align 8, !tbaa !50 ; 4 uses
  %i.eqx = load i64, ptr %i.eqw, align 8, !tbaa !116
  %i.eqy = getelementptr inbounds nuw i8, ptr %i.eqw, i64 8 ; 3 uses
  %i.eqz = load i64, ptr %i.eqy, align 8, !tbaa !117
  store i32 %..i3197, ptr %i.eqi, align 4, !tbaa !33
  store i32 %i.eqn, ptr %i.eql, align 4, !tbaa !33
  %20 = tail call i32 @llvm.smin.i32(i32 %i.eqq, i32 %i.eiu) ; 2 uses
  store i32 %20, ptr %i.eqo, align 4, !tbaa !33
  %i.era = tail call i32 @llvm.smax.i32(i32 %i.eqt, i32 %i.eiu) ; 2 uses
  store i32 %i.era, ptr %i.eqr, align 4, !tbaa !33
  %i.erb = add nsw i32 %i.eqv, 2
  store i32 %i.erb, ptr %i.equ, align 4, !tbaa !33
  %reass.add = shl nuw i64 %indvars.iv3712, 1
  %i.erc = add i64 %i.eqx, %reass.add             ; 2 uses
  store i64 %i.erc, ptr %i.eqw, align 8, !tbaa !116
  %.reass4154 = add i64 %i.eqz, %invariant.op4153 ; 2 uses
  store i64 %.reass4154, ptr %i.eqy, align 8, !tbaa !117
  %i.erd = or disjoint i64 %indvars.iv3712, 1     ; 5 uses
  %i.ere = load i32, ptr %i.o, align 4, !tbaa !52
  %i.erf = sext i32 %i.ere to i64
  %i.erg = icmp slt i64 %i.erd, %i.erf
  br i1 %i.erg, label %bb.tn, label %bb.to

bb.tn:                                            ; preds = %bb.tm
  %i.erh = getelementptr inbounds nuw [2 x i8], ptr %i.eih, i64 %i.erd
  store i16 0, ptr %i.erh, align 2, !tbaa !54
  %i.eri = getelementptr inbounds nuw [2 x i8], ptr %i.eii, i64 %i.erd
  store i16 0, ptr %i.eri, align 2, !tbaa !54
  %i.erj = trunc nuw nsw i64 %i.erd to i32        ; 2 uses
  %..i3203 = tail call i32 @llvm.smin.i32(i32 %..i3197, i32 %i.erj)
  %21 = tail call i32 @llvm.umax.i32(i32 %i.eqn, i32 %i.erj)
  %22 = tail call i32 @llvm.smin.i32(i32 %20, i32 %i.eit)
  %i.erk = tail call i32 @llvm.smax.i32(i32 %i.era, i32 %i.eit)
  store i32 %..i3203, ptr %i.eqi, align 4, !tbaa !33
  store i32 %21, ptr %i.eql, align 4, !tbaa !33
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 %i.eiu)
  store i32 %23, ptr %i.eqo, align 4, !tbaa !33
  %24 = tail call i32 @llvm.smax.i32(i32 %i.erk, i32 %i.eiu)
  store i32 %24, ptr %i.eqr, align 4, !tbaa !33
  %i.erl = add nsw i32 %i.eqv, 4
  store i32 %i.erl, ptr %i.equ, align 4, !tbaa !33
  %reass.add4199 = shl nuw i64 %i.erd, 1
  %i.erm = add i64 %i.erc, %reass.add4199
  store i64 %i.erm, ptr %i.eqw, align 8, !tbaa !116
  %.reass4156 = add i64 %.reass4154, %invariant.op4155
  store i64 %.reass4156, ptr %i.eqy, align 8, !tbaa !117
  br label %bb.to

bb.to:                                            ; preds = %bb.tn, %bb.tl, %bb.tk, %bb.tm, %bb.tf
  %indvars.iv.next3713 = add nuw nsw i64 %indvars.iv3712, 2 ; 2 uses
  %i.ern = load i32, ptr %i.o, align 4, !tbaa !52 ; 2 uses
  %i.ero = sext i32 %i.ern to i64
  %i.erp = icmp slt i64 %indvars.iv.next3713, %i.ero
  br i1 %i.erp, label %bb.sy, label %._crit_edge3542.loopexit, !llvm.loop !324

bb.tp:                                            ; preds = %.lr.ph3551, %._crit_edge3549
  %i.erq = phi i32 [ %i.dko, %.lr.ph3551 ], [ %i.esn, %._crit_edge3549 ]
  %i.err = phi i32 [ %i.dkq, %.lr.ph3551 ], [ %i.eso, %._crit_edge3549 ] ; 2 uses
  %indvars.iv3721 = phi i64 [ 0, %.lr.ph3551 ], [ %indvars.iv.next3722, %._crit_edge3549 ] ; 12 uses
  %i.ers = load i64, ptr %i.ehr, align 8, !tbaa !40 ; 2 uses
  %i.ert = mul i64 %i.ers, %indvars.iv3721
  %i.eru = getelementptr inbounds nuw i8, ptr %i.ehq, i64 %i.ert ; 3 uses
  %i.erv = getelementptr inbounds nuw i8, ptr %i.eru, i64 %i.ers ; 2 uses
  %i.erw = load i64, ptr %i.ehu, align 8, !tbaa !40 ; 2 uses
  %i.erx = mul i64 %i.erw, %indvars.iv3721
  %i.ery = getelementptr inbounds nuw i8, ptr %i.eht, i64 %i.erx ; 4 uses
  %i.erz = getelementptr inbounds nuw i8, ptr %i.ery, i64 %i.erw ; 4 uses
  %i.esa = icmp sgt i32 %i.err, 0
  br i1 %i.esa, label %.lr.ph3548, label %._crit_edge3549

.lr.ph3548:                                       ; preds = %bb.tp
  %i.esb = or disjoint i64 %indvars.iv3721, 1     ; 8 uses
  %i.esc = trunc nuw nsw i64 %indvars.iv3721 to i32 ; 2 uses
  %i.esd = trunc nuw nsw i64 %indvars.iv3721 to i32 ; 2 uses
  %i.ese = trunc nuw nsw i64 %indvars.iv3721 to i32 ; 2 uses
  %i.esf = trunc nuw nsw i64 %indvars.iv3721 to i32 ; 2 uses
  %i.esg = trunc nuw nsw i64 %i.esb to i32        ; 2 uses
  %i.esh = trunc nuw nsw i64 %i.esb to i32        ; 2 uses
  %i.esi = trunc nuw nsw i64 %i.esb to i32        ; 2 uses
  %i.esj = trunc nuw nsw i64 %i.esb to i32        ; 2 uses
  %i.esk = trunc nuw nsw i64 %indvars.iv3721 to i32 ; 2 uses
  %i.esl = trunc nuw nsw i64 %i.esb to i32        ; 2 uses
  %invariant.op41574201 = add nuw i64 %indvars.iv3721, %i.esb
  %invariant.op4161 = shl i64 %invariant.op41574201, 1
  %i.esm = insertelement <2 x i64> poison, i64 %i.esb, i64 1 ; 2 uses
  br label %bb.tq

._crit_edge3549.loopexit:                         ; preds = %bb.ug
  %.pre3732 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3549

._crit_edge3549:                                  ; preds = %._crit_edge3549.loopexit, %bb.tp
  %i.esn = phi i32 [ %.pre3732, %._crit_edge3549.loopexit ], [ %i.erq, %bb.tp ] ; 2 uses
  %i.eso = phi i32 [ %i.fbb, %._crit_edge3549.loopexit ], [ %i.err, %bb.tp ]
  %indvars.iv.next3722 = add nuw nsw i64 %indvars.iv3721, 2 ; 2 uses
  %i.esp = sext i32 %i.esn to i64
  %i.esq = icmp slt i64 %indvars.iv.next3722, %i.esp
  br i1 %i.esq, label %bb.tp, label %.loopexit, !llvm.loop !325

bb.tq:                                            ; preds = %.lr.ph3548, %bb.ug
  %indvars.iv3718 = phi i64 [ 0, %.lr.ph3548 ], [ %indvars.iv.next3719, %bb.ug ] ; 19 uses
  %i.esr = getelementptr inbounds nuw [2 x i8], ptr %i.ery, i64 %indvars.iv3718 ; 3 uses
  %i.ess = load i16, ptr %i.esr, align 2, !tbaa !54 ; 2 uses
  %.not1859 = icmp eq i16 %i.ess, 0
  br i1 %.not1859, label %bb.uf, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  %i.est = zext i16 %i.ess to i64
  %i.esu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.est
  %i.esv = load i16, ptr %i.esu, align 2, !tbaa !54 ; 8 uses
  %i.esw = getelementptr inbounds nuw i8, ptr %i.eru, i64 %indvars.iv3718
  %i.esx = load i8, ptr %i.esw, align 1, !tbaa !32
  %.not1860 = icmp eq i8 %i.esx, 0
  br i1 %.not1860, label %bb.tv, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  store i16 %i.esv, ptr %i.esr, align 2, !tbaa !54
  %i.esy = load i32, ptr %i.ehv, align 4, !tbaa !96
  %i.esz = icmp slt i32 %i.esy, 2
  %i.eta = load ptr, ptr %i.ehw, align 8, !tbaa !55 ; 2 uses
  %i.etb = load i64, ptr %i.ehx, align 8
  %i.etc = zext i16 %i.esv to i64                 ; 2 uses
  %i.etd = mul i64 %i.etb, %i.etc
  %.sink.idx.i.i3207 = select i1 %i.esz, i64 0, i64 %i.etd
  %.sink.i.i3208 = getelementptr inbounds nuw i8, ptr %i.eta, i64 %.sink.idx.i.i3207 ; 6 uses
  %i.ete = load i32, ptr %.sink.i.i3208, align 4, !tbaa !33
  %i.etf = trunc nuw nsw i64 %indvars.iv3718 to i32 ; 2 uses
  %..i3209 = tail call i32 @llvm.smin.i32(i32 %i.ete, i32 %i.etf)
  store i32 %..i3209, ptr %.sink.i.i3208, align 4, !tbaa !33
  %i.etg = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 8 ; 2 uses
  %i.eth = load i32, ptr %i.etg, align 4, !tbaa !33
  %i.eti = tail call i32 @llvm.smax.i32(i32 %i.eth, i32 %i.etf)
  store i32 %i.eti, ptr %i.etg, align 4, !tbaa !33
  %i.etj = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 4 ; 2 uses
  %i.etk = load i32, ptr %i.etj, align 4, !tbaa !33
  %i.etl = tail call i32 @llvm.smin.i32(i32 %i.etk, i32 %i.esc)
  store i32 %i.etl, ptr %i.etj, align 4, !tbaa !33
  %i.etm = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 12 ; 2 uses
  %i.etn = load i32, ptr %i.etm, align 4, !tbaa !33
  %i.eto = tail call i32 @llvm.smax.i32(i32 %i.etn, i32 %i.esc)
  store i32 %i.eto, ptr %i.etm, align 4, !tbaa !33
  %i.etp = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 16 ; 2 uses
  %i.etq = load i32, ptr %i.etp, align 4, !tbaa !33
  %i.etr = add nsw i32 %i.etq, 1
  store i32 %i.etr, ptr %i.etp, align 4, !tbaa !33
  %i.ets = load ptr, ptr %i.ehy, align 8, !tbaa !50 ; 2 uses
  %i.ett = getelementptr inbounds nuw [16 x i8], ptr %i.ets, i64 %i.etc ; 3 uses
  %i.etu = load i64, ptr %i.ett, align 8, !tbaa !116
  %i.etv = add i64 %i.etu, %indvars.iv3718
  store i64 %i.etv, ptr %i.ett, align 8, !tbaa !116
  br label %bb.tw

.thread3273:                                      ; preds = %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.tu

bb.tt:                                            ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.03251.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.tu

bb.tu:                                            ; preds = %.thread3273, %bb.tt
  %lpad.phi3276 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread3273 ], [ %lpad.thr_comm.split-lp, %bb.tt ]
  %i.etw = ptrtoint ptr %.sroa.03251.0 to i64
  %i.etx = sub i64 %.sroa.10.0, %i.etw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.etx) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.tv:                                            ; preds = %bb.tr
  store i16 0, ptr %i.esr, align 2, !tbaa !54
  %i.ety = load ptr, ptr %i.ehw, align 8, !tbaa !55 ; 7 uses
  %i.etz = load i32, ptr %i.ety, align 4, !tbaa !33
  %i.eua = trunc nuw nsw i64 %indvars.iv3718 to i32 ; 2 uses
  %..i3212 = tail call i32 @llvm.smin.i32(i32 %i.etz, i32 %i.eua)
  store i32 %..i3212, ptr %i.ety, align 4, !tbaa !33
  %i.eub = getelementptr inbounds nuw i8, ptr %i.ety, i64 8 ; 2 uses
  %i.euc = load i32, ptr %i.eub, align 4, !tbaa !33
  %i.eud = tail call i32 @llvm.smax.i32(i32 %i.euc, i32 %i.eua)
  store i32 %i.eud, ptr %i.eub, align 4, !tbaa !33
  %i.eue = getelementptr inbounds nuw i8, ptr %i.ety, i64 4 ; 2 uses
  %i.euf = load i32, ptr %i.eue, align 4, !tbaa !33
  %i.eug = tail call i32 @llvm.smin.i32(i32 %i.euf, i32 %i.esd)
  store i32 %i.eug, ptr %i.eue, align 4, !tbaa !33
  %i.euh = getelementptr inbounds nuw i8, ptr %i.ety, i64 12 ; 2 uses
  %i.eui = load i32, ptr %i.euh, align 4, !tbaa !33
  %i.euj = tail call i32 @llvm.smax.i32(i32 %i.eui, i32 %i.esd)
  store i32 %i.euj, ptr %i.euh, align 4, !tbaa !33
  %i.euk = getelementptr inbounds nuw i8, ptr %i.ety, i64 16 ; 2 uses
  %i.eul = load i32, ptr %i.euk, align 4, !tbaa !33
  %i.eum = add nsw i32 %i.eul, 1
  store i32 %i.eum, ptr %i.euk, align 4, !tbaa !33
  %i.eun = load ptr, ptr %i.ehy, align 8, !tbaa !50 ; 4 uses
  %i.euo = load i64, ptr %i.eun, align 8, !tbaa !116
  %i.eup = add i64 %i.euo, %indvars.iv3718
  store i64 %i.eup, ptr %i.eun, align 8, !tbaa !116
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.ts
  %.sink4192 = phi ptr [ %i.eun, %bb.tv ], [ %i.ett, %bb.ts ]
  %i.euq = phi ptr [ %i.eun, %bb.tv ], [ %i.ets, %bb.ts ] ; 11 uses
  %i.eur = phi ptr [ %i.ety, %bb.tv ], [ %i.eta, %bb.ts ] ; 21 uses
  %i.eus = getelementptr inbounds nuw i8, ptr %.sink4192, i64 8 ; 2 uses
  %i.eut = load i64, ptr %i.eus, align 8, !tbaa !117
  %i.euu = add i64 %i.eut, %indvars.iv3721
  store i64 %i.euu, ptr %i.eus, align 8, !tbaa !117
  %i.euv = or disjoint i64 %indvars.iv3718, 1     ; 12 uses
  %i.euw = getelementptr inbounds nuw i8, ptr %i.eru, i64 %i.euv
  %i.eux = load i8, ptr %i.euw, align 1, !tbaa !32
  %.not1861 = icmp eq i8 %i.eux, 0
  %i.euy = getelementptr inbounds nuw [2 x i8], ptr %i.ery, i64 %i.euv ; 2 uses
  br i1 %.not1861, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  store i16 %i.esv, ptr %i.euy, align 2, !tbaa !54
  %i.euz = load i32, ptr %i.ehv, align 4, !tbaa !96
  %i.eva = icmp slt i32 %i.euz, 2
  %i.evb = load i64, ptr %i.ehx, align 8
  %i.evc = zext i16 %i.esv to i64                 ; 2 uses
  %i.evd = mul i64 %i.evb, %i.evc
  %.sink.idx.i.i3213 = select i1 %i.eva, i64 0, i64 %i.evd
  %.sink.i.i3214 = getelementptr inbounds nuw i8, ptr %i.eur, i64 %.sink.idx.i.i3213 ; 6 uses
  %i.eve = load i32, ptr %.sink.i.i3214, align 4, !tbaa !33
  %i.evf = trunc nuw nsw i64 %i.euv to i32        ; 2 uses
  %..i3215 = tail call i32 @llvm.smin.i32(i32 %i.eve, i32 %i.evf)
  store i32 %..i3215, ptr %.sink.i.i3214, align 4, !tbaa !33
  %i.evg = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 8 ; 2 uses
  %i.evh = load i32, ptr %i.evg, align 4, !tbaa !33
  %i.evi = tail call i32 @llvm.smax.i32(i32 %i.evh, i32 %i.evf)
  store i32 %i.evi, ptr %i.evg, align 4, !tbaa !33
  %i.evj = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 4 ; 2 uses
  %i.evk = load i32, ptr %i.evj, align 4, !tbaa !33
  %i.evl = tail call i32 @llvm.smin.i32(i32 %i.evk, i32 %i.ese)
  store i32 %i.evl, ptr %i.evj, align 4, !tbaa !33
  %i.evm = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 12 ; 2 uses
  %i.evn = load i32, ptr %i.evm, align 4, !tbaa !33
  %i.evo = tail call i32 @llvm.smax.i32(i32 %i.evn, i32 %i.ese)
  store i32 %i.evo, ptr %i.evm, align 4, !tbaa !33
  %i.evp = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 16 ; 2 uses
  %i.evq = load i32, ptr %i.evp, align 4, !tbaa !33
  %i.evr = add nsw i32 %i.evq, 1
  store i32 %i.evr, ptr %i.evp, align 4, !tbaa !33
  %i.evs = getelementptr inbounds nuw [16 x i8], ptr %i.euq, i64 %i.evc ; 3 uses
  %i.evt = load i64, ptr %i.evs, align 8, !tbaa !116
  %i.evu = add i64 %i.evt, %i.euv
  store i64 %i.evu, ptr %i.evs, align 8, !tbaa !116
  br label %bb.tz

bb.ty:                                            ; preds = %bb.tw
  store i16 0, ptr %i.euy, align 2, !tbaa !54
  %i.evv = load i32, ptr %i.eur, align 4, !tbaa !33
  %i.evw = trunc nuw nsw i64 %i.euv to i32        ; 2 uses
  %..i3218 = tail call i32 @llvm.smin.i32(i32 %i.evv, i32 %i.evw)
  store i32 %..i3218, ptr %i.eur, align 4, !tbaa !33
  %i.evx = getelementptr inbounds nuw i8, ptr %i.eur, i64 8 ; 2 uses
  %i.evy = load i32, ptr %i.evx, align 4, !tbaa !33
  %i.evz = tail call i32 @llvm.smax.i32(i32 %i.evy, i32 %i.evw)
  store i32 %i.evz, ptr %i.evx, align 4, !tbaa !33
  %i.ewa = getelementptr inbounds nuw i8, ptr %i.eur, i64 4 ; 2 uses
  %i.ewb = load i32, ptr %i.ewa, align 4, !tbaa !33
  %i.ewc = tail call i32 @llvm.smin.i32(i32 %i.ewb, i32 %i.esf)
  store i32 %i.ewc, ptr %i.ewa, align 4, !tbaa !33
  %i.ewd = getelementptr inbounds nuw i8, ptr %i.eur, i64 12 ; 2 uses
  %i.ewe = load i32, ptr %i.ewd, align 4, !tbaa !33
  %i.ewf = tail call i32 @llvm.smax.i32(i32 %i.ewe, i32 %i.esf)
  store i32 %i.ewf, ptr %i.ewd, align 4, !tbaa !33
  %i.ewg = getelementptr inbounds nuw i8, ptr %i.eur, i64 16 ; 2 uses
  %i.ewh = load i32, ptr %i.ewg, align 4, !tbaa !33
  %i.ewi = add nsw i32 %i.ewh, 1
  store i32 %i.ewi, ptr %i.ewg, align 4, !tbaa !33
  %i.ewj = load i64, ptr %i.euq, align 8, !tbaa !116
  %i.ewk = add i64 %i.ewj, %i.euv
  store i64 %i.ewk, ptr %i.euq, align 8, !tbaa !116
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.tx
  %.sink4195 = phi ptr [ %i.euq, %bb.ty ], [ %i.evs, %bb.tx ]
  %i.ewl = getelementptr inbounds nuw i8, ptr %.sink4195, i64 8 ; 2 uses
  %i.ewm = load i64, ptr %i.ewl, align 8, !tbaa !117
  %i.ewn = add i64 %i.ewm, %indvars.iv3721
  store i64 %i.ewn, ptr %i.ewl, align 8, !tbaa !117
  %i.ewo = getelementptr inbounds nuw i8, ptr %i.erv, i64 %indvars.iv3718
  %i.ewp = load i8, ptr %i.ewo, align 1, !tbaa !32
  %.not1862 = icmp eq i8 %i.ewp, 0
  %i.ewq = getelementptr inbounds nuw [2 x i8], ptr %i.erz, i64 %indvars.iv3718 ; 2 uses
  br i1 %.not1862, label %bb.ub, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  store i16 %i.esv, ptr %i.ewq, align 2, !tbaa !54
  %i.ewr = load i32, ptr %i.ehv, align 4, !tbaa !96
  %i.ews = icmp slt i32 %i.ewr, 2
  %i.ewt = load i64, ptr %i.ehx, align 8
  %i.ewu = zext i16 %i.esv to i64                 ; 2 uses
  %i.ewv = mul i64 %i.ewt, %i.ewu
  %.sink.idx.i.i3219 = select i1 %i.ews, i64 0, i64 %i.ewv
  %.sink.i.i3220 = getelementptr inbounds nuw i8, ptr %i.eur, i64 %.sink.idx.i.i3219 ; 6 uses
  %i.eww = load i32, ptr %.sink.i.i3220, align 4, !tbaa !33
  %i.ewx = trunc nuw nsw i64 %indvars.iv3718 to i32 ; 2 uses
  %..i3221 = tail call i32 @llvm.smin.i32(i32 %i.eww, i32 %i.ewx)
  store i32 %..i3221, ptr %.sink.i.i3220, align 4, !tbaa !33
  %i.ewy = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 8 ; 2 uses
  %i.ewz = load i32, ptr %i.ewy, align 4, !tbaa !33
  %i.exa = tail call i32 @llvm.smax.i32(i32 %i.ewz, i32 %i.ewx)
  store i32 %i.exa, ptr %i.ewy, align 4, !tbaa !33
  %i.exb = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 4 ; 2 uses
  %i.exc = load i32, ptr %i.exb, align 4, !tbaa !33
  %i.exd = tail call i32 @llvm.smin.i32(i32 %i.exc, i32 %i.esg)
  store i32 %i.exd, ptr %i.exb, align 4, !tbaa !33
  %i.exe = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 12 ; 2 uses
  %i.exf = load i32, ptr %i.exe, align 4, !tbaa !33
  %i.exg = tail call i32 @llvm.smax.i32(i32 %i.exf, i32 %i.esg)
  store i32 %i.exg, ptr %i.exe, align 4, !tbaa !33
  %i.exh = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 16 ; 2 uses
  %i.exi = load i32, ptr %i.exh, align 4, !tbaa !33
  %i.exj = add nsw i32 %i.exi, 1
  store i32 %i.exj, ptr %i.exh, align 4, !tbaa !33
  %i.exk = getelementptr inbounds nuw [16 x i8], ptr %i.euq, i64 %i.ewu ; 3 uses
  %i.exl = load i64, ptr %i.exk, align 8, !tbaa !116
  %i.exm = add i64 %i.exl, %indvars.iv3718
  store i64 %i.exm, ptr %i.exk, align 8, !tbaa !116
  br label %bb.uc

bb.ub:                                            ; preds = %bb.tz
  store i16 0, ptr %i.ewq, align 2, !tbaa !54
  %i.exn = load i32, ptr %i.eur, align 4, !tbaa !33
  %i.exo = trunc nuw nsw i64 %indvars.iv3718 to i32 ; 2 uses
  %..i3224 = tail call i32 @llvm.smin.i32(i32 %i.exn, i32 %i.exo)
  store i32 %..i3224, ptr %i.eur, align 4, !tbaa !33
  %i.exp = getelementptr inbounds nuw i8, ptr %i.eur, i64 8 ; 2 uses
  %i.exq = load i32, ptr %i.exp, align 4, !tbaa !33
  %i.exr = tail call i32 @llvm.smax.i32(i32 %i.exq, i32 %i.exo)
  store i32 %i.exr, ptr %i.exp, align 4, !tbaa !33
  %i.exs = getelementptr inbounds nuw i8, ptr %i.eur, i64 4 ; 2 uses
  %i.ext = load i32, ptr %i.exs, align 4, !tbaa !33
  %i.exu = tail call i32 @llvm.smin.i32(i32 %i.ext, i32 %i.esh)
  store i32 %i.exu, ptr %i.exs, align 4, !tbaa !33
  %i.exv = getelementptr inbounds nuw i8, ptr %i.eur, i64 12 ; 2 uses
  %i.exw = load i32, ptr %i.exv, align 4, !tbaa !33
  %i.exx = tail call i32 @llvm.smax.i32(i32 %i.exw, i32 %i.esh)
  store i32 %i.exx, ptr %i.exv, align 4, !tbaa !33
  %i.exy = getelementptr inbounds nuw i8, ptr %i.eur, i64 16 ; 2 uses
  %i.exz = load i32, ptr %i.exy, align 4, !tbaa !33
  %i.eya = add nsw i32 %i.exz, 1
  store i32 %i.eya, ptr %i.exy, align 4, !tbaa !33
  %i.eyb = load i64, ptr %i.euq, align 8, !tbaa !116
  %i.eyc = add i64 %i.eyb, %indvars.iv3718
  store i64 %i.eyc, ptr %i.euq, align 8, !tbaa !116
  br label %bb.uc

bb.uc:                                            ; preds = %bb.ub, %bb.ua
  %.sink4198 = phi ptr [ %i.euq, %bb.ub ], [ %i.exk, %bb.ua ]
  %i.eyd = getelementptr inbounds nuw i8, ptr %.sink4198, i64 8 ; 2 uses
  %i.eye = load i64, ptr %i.eyd, align 8, !tbaa !117
  %i.eyf = add i64 %i.eye, %i.esb
  store i64 %i.eyf, ptr %i.eyd, align 8, !tbaa !117
  %i.eyg = getelementptr inbounds nuw i8, ptr %i.erv, i64 %i.euv
  %i.eyh = load i8, ptr %i.eyg, align 1, !tbaa !32
  %.not1863 = icmp eq i8 %i.eyh, 0
  %i.eyi = getelementptr inbounds nuw [2 x i8], ptr %i.erz, i64 %i.euv ; 2 uses
  br i1 %.not1863, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  store i16 %i.esv, ptr %i.eyi, align 2, !tbaa !54
  %i.eyj = load i32, ptr %i.ehv, align 4, !tbaa !96
  %i.eyk = icmp slt i32 %i.eyj, 2
  %i.eyl = load i64, ptr %i.ehx, align 8
  %i.eym = zext i16 %i.esv to i64                 ; 2 uses
  %i.eyn = mul i64 %i.eyl, %i.eym
  %.sink.idx.i.i3225 = select i1 %i.eyk, i64 0, i64 %i.eyn
  %.sink.i.i3226 = getelementptr inbounds nuw i8, ptr %i.eur, i64 %.sink.idx.i.i3225 ; 6 uses
  %i.eyo = load i32, ptr %.sink.i.i3226, align 4, !tbaa !33
  %i.eyp = trunc nuw nsw i64 %i.euv to i32        ; 2 uses
  %..i3227 = tail call i32 @llvm.smin.i32(i32 %i.eyo, i32 %i.eyp)
  store i32 %..i3227, ptr %.sink.i.i3226, align 4, !tbaa !33
  %i.eyq = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 8 ; 2 uses
  %i.eyr = load i32, ptr %i.eyq, align 4, !tbaa !33
  %i.eys = tail call i32 @llvm.smax.i32(i32 %i.eyr, i32 %i.eyp)
  store i32 %i.eys, ptr %i.eyq, align 4, !tbaa !33
  %i.eyt = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 4 ; 2 uses
  %i.eyu = load i32, ptr %i.eyt, align 4, !tbaa !33
  %i.eyv = tail call i32 @llvm.smin.i32(i32 %i.eyu, i32 %i.esi)
  store i32 %i.eyv, ptr %i.eyt, align 4, !tbaa !33
  %i.eyw = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 12 ; 2 uses
  %i.eyx = load i32, ptr %i.eyw, align 4, !tbaa !33
  %i.eyy = tail call i32 @llvm.smax.i32(i32 %i.eyx, i32 %i.esi)
  store i32 %i.eyy, ptr %i.eyw, align 4, !tbaa !33
  %i.eyz = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 16 ; 2 uses
  %i.eza = load i32, ptr %i.eyz, align 4, !tbaa !33
  %i.ezb = add nsw i32 %i.eza, 1
  store i32 %i.ezb, ptr %i.eyz, align 4, !tbaa !33
  %i.ezc = getelementptr inbounds nuw [16 x i8], ptr %i.euq, i64 %i.eym ; 2 uses
  %i.ezd = load <2 x i64>, ptr %i.ezc, align 8, !tbaa !40
  %i.eze = insertelement <2 x i64> %i.esm, i64 %i.euv, i64 0
  %i.ezf = add <2 x i64> %i.ezd, %i.eze
  store <2 x i64> %i.ezf, ptr %i.ezc, align 8, !tbaa !40
  br label %bb.ug

bb.ue:                                            ; preds = %bb.uc
  store i16 0, ptr %i.eyi, align 2, !tbaa !54
  %i.ezg = load i32, ptr %i.eur, align 4, !tbaa !33
  %i.ezh = trunc nuw nsw i64 %i.euv to i32        ; 2 uses
  %..i3230 = tail call i32 @llvm.smin.i32(i32 %i.ezg, i32 %i.ezh)
  store i32 %..i3230, ptr %i.eur, align 4, !tbaa !33
  %i.ezi = getelementptr inbounds nuw i8, ptr %i.eur, i64 8 ; 2 uses
  %i.ezj = load i32, ptr %i.ezi, align 4, !tbaa !33
  %i.ezk = tail call i32 @llvm.smax.i32(i32 %i.ezj, i32 %i.ezh)
  store i32 %i.ezk, ptr %i.ezi, align 4, !tbaa !33
  %i.ezl = getelementptr inbounds nuw i8, ptr %i.eur, i64 4 ; 2 uses
  %i.ezm = load i32, ptr %i.ezl, align 4, !tbaa !33
  %i.ezn = tail call i32 @llvm.smin.i32(i32 %i.ezm, i32 %i.esj)
  store i32 %i.ezn, ptr %i.ezl, align 4, !tbaa !33
  %i.ezo = getelementptr inbounds nuw i8, ptr %i.eur, i64 12 ; 2 uses
  %i.ezp = load i32, ptr %i.ezo, align 4, !tbaa !33
  %i.ezq = tail call i32 @llvm.smax.i32(i32 %i.ezp, i32 %i.esj)
  store i32 %i.ezq, ptr %i.ezo, align 4, !tbaa !33
  %i.ezr = getelementptr inbounds nuw i8, ptr %i.eur, i64 16 ; 2 uses
  %i.ezs = load i32, ptr %i.ezr, align 4, !tbaa !33
  %i.ezt = add nsw i32 %i.ezs, 1
  store i32 %i.ezt, ptr %i.ezr, align 4, !tbaa !33
  %i.ezu = load <2 x i64>, ptr %i.euq, align 8, !tbaa !40
  %i.ezv = insertelement <2 x i64> %i.esm, i64 %i.euv, i64 0
  %i.ezw = add <2 x i64> %i.ezu, %i.ezv
  store <2 x i64> %i.ezw, ptr %i.euq, align 8, !tbaa !40
  br label %bb.ug

bb.uf:                                            ; preds = %bb.tq
  %i.ezx = or disjoint i64 %indvars.iv3718, 1     ; 5 uses
  %i.ezy = getelementptr inbounds nuw [2 x i8], ptr %i.ery, i64 %i.ezx
  store i16 0, ptr %i.ezy, align 2, !tbaa !54
  %i.ezz = getelementptr inbounds nuw [2 x i8], ptr %i.erz, i64 %indvars.iv3718
  store i16 0, ptr %i.ezz, align 2, !tbaa !54
  %i.faa = getelementptr inbounds nuw [2 x i8], ptr %i.erz, i64 %i.ezx
  store i16 0, ptr %i.faa, align 2, !tbaa !54
  %i.fab = load ptr, ptr %i.ehw, align 8, !tbaa !55 ; 6 uses
  %i.fac = load i32, ptr %i.fab, align 4, !tbaa !33
  %i.fad = trunc nuw nsw i64 %indvars.iv3718 to i32 ; 4 uses
  %..i3233 = tail call i32 @llvm.smin.i32(i32 %i.fac, i32 %i.fad)
  %i.fae = getelementptr inbounds nuw i8, ptr %i.fab, i64 8 ; 2 uses
  %i.faf = load i32, ptr %i.fae, align 4, !tbaa !33
  %i.fag = tail call i32 @llvm.smax.i32(i32 %i.faf, i32 %i.fad)
  %i.fah = getelementptr inbounds nuw i8, ptr %i.fab, i64 4 ; 2 uses
  %i.fai = load i32, ptr %i.fah, align 4, !tbaa !33
  %i.faj = tail call i32 @llvm.smin.i32(i32 %i.fai, i32 %i.esk)
  %i.fak = getelementptr inbounds nuw i8, ptr %i.fab, i64 12 ; 2 uses
  %i.fal = load i32, ptr %i.fak, align 4, !tbaa !33
  %i.fam = tail call i32 @llvm.smax.i32(i32 %i.fal, i32 %i.esk)
  %i.fan = getelementptr inbounds nuw i8, ptr %i.fab, i64 16 ; 2 uses
  %i.fao = load i32, ptr %i.fan, align 4, !tbaa !33
  %i.fap = load ptr, ptr %i.ehy, align 8, !tbaa !50 ; 3 uses
  %i.faq = load i64, ptr %i.fap, align 8, !tbaa !116
  %i.far = add i64 %i.faq, %indvars.iv3718
  %i.fas = getelementptr inbounds nuw i8, ptr %i.fap, i64 8 ; 2 uses
  %i.fat = load i64, ptr %i.fas, align 8, !tbaa !117
  %i.fau = trunc nuw nsw i64 %i.ezx to i32        ; 4 uses
  %..i3236 = tail call i32 @llvm.smin.i32(i32 %..i3233, i32 %i.fau)
  %i.fav = tail call i32 @llvm.umax.i32(i32 %i.fag, i32 %i.fau)
  %i.faw = add i64 %i.far, %i.ezx
  %..i3239 = tail call i32 @llvm.smin.i32(i32 %..i3236, i32 %i.fad)
  %25 = tail call i32 @llvm.umax.i32(i32 %i.fav, i32 %i.fad)
  %26 = tail call i32 @llvm.smin.i32(i32 %i.faj, i32 %i.esl)
  %i.fax = tail call i32 @llvm.smax.i32(i32 %i.fam, i32 %i.esl)
  %i.fay = add i64 %i.faw, %indvars.iv3718
  %..i3242 = tail call i32 @llvm.smin.i32(i32 %..i3239, i32 %i.fau)
  store i32 %..i3242, ptr %i.fab, align 4, !tbaa !33
  %27 = tail call i32 @llvm.umax.i32(i32 %25, i32 %i.fau)
  store i32 %27, ptr %i.fae, align 4, !tbaa !33
  store i32 %26, ptr %i.fah, align 4, !tbaa !33
  store i32 %i.fax, ptr %i.fak, align 4, !tbaa !33
  %i.faz = add nsw i32 %i.fao, 4
  store i32 %i.faz, ptr %i.fan, align 4, !tbaa !33
  %i.fba = add i64 %i.fay, %i.ezx
  store i64 %i.fba, ptr %i.fap, align 8, !tbaa !116
  %.reass4162 = add i64 %i.fat, %invariant.op4161
  store i64 %.reass4162, ptr %i.fas, align 8, !tbaa !117
  br label %bb.ug

bb.ug:                                            ; preds = %bb.uf, %bb.ue, %bb.ud
  %indvars.iv.next3719 = add nuw nsw i64 %indvars.iv3718, 2 ; 2 uses
  %i.fbb = load i32, ptr %i.o, align 4, !tbaa !52 ; 2 uses
  %i.fbc = sext i32 %i.fbb to i64
  %i.fbd = icmp slt i64 %indvars.iv.next3719, %i.fbc
  br i1 %i.fbd, label %bb.tq, label %._crit_edge3549.loopexit, !llvm.loop !326

.loopexit:                                        ; preds = %._crit_edge3529, %._crit_edge3536, %._crit_edge3542, %._crit_edge3549, %.preheader3288, %.preheader3286, %.preheader3284, %.preheader
  %i.fbe = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fbf = load i32, ptr %i.fbe, align 8, !tbaa !95
  %i.fbg = icmp sgt i32 %i.fbf, 0
  br i1 %i.fbg, label %.lr.ph.i3243, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit

.lr.ph.i3243:                                     ; preds = %.loopexit
  %i.fbh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fbi = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fbj = load ptr, ptr %i.fbi, align 8, !tbaa !55
  %i.fbk = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.fbl = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.fbm = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.fbn = load ptr, ptr %i.fbm, align 8, !tbaa !55
  %i.fbo = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.fbp = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.fbq = load ptr, ptr %i.fbp, align 8
  br label %bb.uh

bb.uh:                                            ; preds = %bb.uk, %.lr.ph.i3243
  %indvars.iv.i3244 = phi i64 [ 0, %.lr.ph.i3243 ], [ %indvars.iv.next.i3248, %bb.uk ] ; 4 uses
  %i.fbr = load i32, ptr %i.fbh, align 4, !tbaa !96
  %i.fbs = icmp slt i32 %i.fbr, 2
  %i.fbt = load i64, ptr %i.fbk, align 8
  %i.fbu = mul i64 %i.fbt, %indvars.iv.i3244
  %.sink.idx.i.i3245 = select i1 %i.fbs, i64 0, i64 %i.fbu
  %.sink.i.i3246 = getelementptr inbounds nuw i8, ptr %i.fbj, i64 %.sink.idx.i.i3245 ; 6 uses
  %i.fbv = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 16
  %i.fbw = load i32, ptr %i.fbv, align 4, !tbaa !33 ; 2 uses
  %i.fbx = load i32, ptr %i.fbl, align 4, !tbaa !96
  %i.fby = icmp slt i32 %i.fbx, 2
  %i.fbz = load i64, ptr %i.fbo, align 8
  %i.fca = mul i64 %i.fbz, %indvars.iv.i3244
  %.sink.idx.i25.i = select i1 %i.fby, i64 0, i64 %i.fca
  %.sink.i26.i = getelementptr inbounds nuw i8, ptr %i.fbn, i64 %.sink.idx.i25.i
  %.not.i3247 = icmp eq i32 %i.fbw, 0
  br i1 %.not.i3247, label %bb.uj, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.fcb = uitofp i32 %i.fbw to double
  %i.fcc = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8 ; 2 uses
  %i.fcd = load <2 x i32>, ptr %i.fcc, align 4, !tbaa !33
  %i.fce = load <2 x i32>, ptr %.sink.i.i3246, align 4, !tbaa !33
  %i.fcf = add <2 x i32> %i.fcd, splat (i32 1)
  %i.fcg = sub <2 x i32> %i.fcf, %i.fce
  store <2 x i32> %i.fcg, ptr %i.fcc, align 4, !tbaa !33
  %i.fch = getelementptr inbounds nuw [16 x i8], ptr %i.fbq, i64 %indvars.iv.i3244
  %i.fci = load <2 x i64>, ptr %i.fch, align 8, !tbaa !40
  %i.fcj = uitofp <2 x i64> %i.fci to <2 x double>
  %i.fck = insertelement <2 x double> poison, double %i.fcb, i64 0
  %i.fcl = shufflevector <2 x double> %i.fck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fcm = fdiv <2 x double> %i.fcj, %i.fcl
  br label %bb.uk

bb.uj:                                            ; preds = %bb.uh
  %i.fcn = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8
  store i32 0, ptr %i.fcn, align 4, !tbaa !33
  %i.fco = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 12
  store i32 0, ptr %i.fco, align 4, !tbaa !33
  store i32 -1, ptr %.sink.i.i3246, align 4, !tbaa !33
  br label %bb.uk

bb.uk:                                            ; preds = %bb.uj, %bb.ui
  %i.fcp = phi <2 x double> [ splat (double +qnan), %bb.uj ], [ %i.fcm, %bb.ui ]
  store <2 x double> %i.fcp, ptr %.sink.i26.i, align 8, !tbaa !98
  %indvars.iv.next.i3248 = add nuw nsw i64 %indvars.iv.i3244, 1 ; 2 uses
  %i.fcq = load i32, ptr %i.fbe, align 8, !tbaa !95
  %i.fcr = sext i32 %i.fcq to i64
  %i.fcs = icmp slt i64 %indvars.iv.next.i3248, %i.fcr
  br i1 %i.fcs, label %bb.uh, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, !llvm.loop !7

_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit: ; preds = %bb.uk, %.loopexit
  %.not.i.i.i3249 = icmp eq ptr %.sroa.03251.0, null
  br i1 %.not.i.i.i3249, label %_ZNSt6vectorItSaItEED2Ev.exit3250, label %bb.ul

bb.ul:                                            ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit
  %i.fct = ptrtoint ptr %.sroa.03251.0 to i64
  %i.fcu = sub i64 %.sroa.10.0, %i.fct
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.fcu) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit3250

_ZNSt6vectorItSaItEED2Ev.exit3250:                ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, %bb.ul
  ret i16 %.015.lcssa.i

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.tt, %bb.tu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2045.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn1856, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079 ], [ %.pn1854, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076 ], [ %lpad.phi3276, %bb.tu ], [ %lpad.thr_comm.split-lp, %bb.tt ]
  resume { ptr, i32 } %.pn2045.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv19connectedcomponents13LabelingGranaIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(460) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4309) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !52
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4310) #16
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !31     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074: ; preds = %bb.l
  %i.w = load i64, ptr %i.u, align 8, !tbaa !32
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074, %bb.k
end_hunk_1
begin_hunk_2_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  store i32 %i.dsa, ptr %i.dry, align 4, !tbaa !33
  %i.dsb = load i64, ptr %i.dok, align 8, !tbaa !116
  %i.dsc = add i64 %i.dsb, %indvars.iv3702
  store i64 %i.dsc, ptr %i.dok, align 8, !tbaa !116
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.rp
  %.sink4173 = phi ptr [ %i.dok, %bb.rq ], [ %i.drk, %bb.rp ]
  %i.dsd = getelementptr inbounds nuw i8, ptr %.sink4173, i64 8 ; 2 uses
  %i.dse = load i64, ptr %i.dsd, align 8, !tbaa !117
  %i.dsf = add i64 %i.dse, %i.dlt
  store i64 %i.dsf, ptr %i.dsd, align 8, !tbaa !117
  %i.dsg = getelementptr inbounds nuw i8, ptr %i.dln, i64 %i.dop
  %i.dsh = load i8, ptr %i.dsg, align 1, !tbaa !32
  %.not1880 = icmp eq i8 %i.dsh, 0
  %i.dsi = getelementptr inbounds nuw [4 x i8], ptr %i.dlr, i64 %i.dop ; 2 uses
  br i1 %.not1880, label %bb.rt, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  store i32 %i.dmr, ptr %i.dsi, align 4, !tbaa !33
  %i.dsj = load i32, ptr %i.dky, align 4, !tbaa !96
  %i.dsk = icmp slt i32 %i.dsj, 2
  %i.dsl = load i64, ptr %i.dkz, align 8
  %i.dsm = sext i32 %i.dmr to i64                 ; 2 uses
  %i.dsn = mul i64 %i.dsl, %i.dsm
  %.sink.idx.i.i3108 = select i1 %i.dsk, i64 0, i64 %i.dsn
  %.sink.i.i3109 = getelementptr inbounds nuw i8, ptr %i.dol, i64 %.sink.idx.i.i3108 ; 6 uses
  %i.dso = load i32, ptr %.sink.i.i3109, align 4, !tbaa !33
  %i.dsp = trunc nuw nsw i64 %i.dop to i32        ; 2 uses
  %..i3110 = tail call i32 @llvm.smin.i32(i32 %i.dso, i32 %i.dsp)
  store i32 %..i3110, ptr %.sink.i.i3109, align 4, !tbaa !33
  %i.dsq = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 8 ; 2 uses
  %i.dsr = load i32, ptr %i.dsq, align 4, !tbaa !33
  %i.dss = tail call i32 @llvm.smax.i32(i32 %i.dsr, i32 %i.dsp)
  store i32 %i.dss, ptr %i.dsq, align 4, !tbaa !33
  %i.dst = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 4 ; 2 uses
  %i.dsu = load i32, ptr %i.dst, align 4, !tbaa !33
  %i.dsv = tail call i32 @llvm.smin.i32(i32 %i.dsu, i32 %i.dmf)
  store i32 %i.dsv, ptr %i.dst, align 4, !tbaa !33
  %i.dsw = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 12 ; 2 uses
  %i.dsx = load i32, ptr %i.dsw, align 4, !tbaa !33
  %i.dsy = tail call i32 @llvm.smax.i32(i32 %i.dsx, i32 %i.dmf)
  store i32 %i.dsy, ptr %i.dsw, align 4, !tbaa !33
  %i.dsz = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 16 ; 2 uses
  %i.dta = load i32, ptr %i.dsz, align 4, !tbaa !33
  %i.dtb = add nsw i32 %i.dta, 1
  store i32 %i.dtb, ptr %i.dsz, align 4, !tbaa !33
  %i.dtc = getelementptr inbounds nuw [16 x i8], ptr %i.dok, i64 %i.dsm ; 2 uses
  %i.dtd = load <2 x i64>, ptr %i.dtc, align 8, !tbaa !40
  %i.dte = insertelement <2 x i64> %i.dmh, i64 %i.dop, i64 0
  %i.dtf = add <2 x i64> %i.dtd, %i.dte
  store <2 x i64> %i.dtf, ptr %i.dtc, align 8, !tbaa !40
  br label %bb.sd

bb.rt:                                            ; preds = %bb.rr
  store i32 0, ptr %i.dsi, align 4, !tbaa !33
  %i.dtg = load i32, ptr %i.dol, align 4, !tbaa !33
  %i.dth = trunc nuw nsw i64 %i.dop to i32        ; 2 uses
  %..i3113 = tail call i32 @llvm.smin.i32(i32 %i.dtg, i32 %i.dth)
  store i32 %..i3113, ptr %i.dol, align 4, !tbaa !33
  %i.dti = getelementptr inbounds nuw i8, ptr %i.dol, i64 8 ; 2 uses
  %i.dtj = load i32, ptr %i.dti, align 4, !tbaa !33
  %i.dtk = tail call i32 @llvm.smax.i32(i32 %i.dtj, i32 %i.dth)
  store i32 %i.dtk, ptr %i.dti, align 4, !tbaa !33
  %i.dtl = getelementptr inbounds nuw i8, ptr %i.dol, i64 4 ; 2 uses
  %i.dtm = load i32, ptr %i.dtl, align 4, !tbaa !33
  %i.dtn = tail call i32 @llvm.smin.i32(i32 %i.dtm, i32 %i.dmg)
  store i32 %i.dtn, ptr %i.dtl, align 4, !tbaa !33
  %i.dto = getelementptr inbounds nuw i8, ptr %i.dol, i64 12 ; 2 uses
  %i.dtp = load i32, ptr %i.dto, align 4, !tbaa !33
  %i.dtq = tail call i32 @llvm.smax.i32(i32 %i.dtp, i32 %i.dmg)
  store i32 %i.dtq, ptr %i.dto, align 4, !tbaa !33
  %i.dtr = getelementptr inbounds nuw i8, ptr %i.dol, i64 16 ; 2 uses
  %i.dts = load i32, ptr %i.dtr, align 4, !tbaa !33
  %i.dtt = add nsw i32 %i.dts, 1
  store i32 %i.dtt, ptr %i.dtr, align 4, !tbaa !33
  %i.dtu = load <2 x i64>, ptr %i.dok, align 8, !tbaa !40
  %i.dtv = insertelement <2 x i64> %i.dmh, i64 %i.dop, i64 0
  %i.dtw = add <2 x i64> %i.dtu, %i.dtv
  store <2 x i64> %i.dtw, ptr %i.dok, align 8, !tbaa !40
  br label %bb.sd

bb.ru:                                            ; preds = %bb.rj
  %i.dtx = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dty = sext i32 %i.dtx to i64
  %i.dtz = icmp slt i64 %i.dlt, %i.dty
  br i1 %i.dtz, label %bb.rv, label %bb.sd

bb.rv:                                            ; preds = %bb.ru
  %i.dua = getelementptr inbounds nuw i8, ptr %i.dln, i64 %indvars.iv3702
  %i.dub = load i8, ptr %i.dua, align 1, !tbaa !32
  %.not1877 = icmp eq i8 %i.dub, 0
  %i.duc = getelementptr inbounds nuw [4 x i8], ptr %i.dlr, i64 %indvars.iv3702 ; 2 uses
  br i1 %.not1877, label %bb.rx, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  store i32 %i.dmr, ptr %i.duc, align 4, !tbaa !33
  %i.dud = load i32, ptr %i.dky, align 4, !tbaa !96
  %i.due = icmp slt i32 %i.dud, 2
  %i.duf = load i64, ptr %i.dkz, align 8
  %i.dug = sext i32 %i.dmr to i64                 ; 2 uses
  %i.duh = mul i64 %i.duf, %i.dug
  %.sink.idx.i.i3114 = select i1 %i.due, i64 0, i64 %i.duh
  %.sink.i.i3115 = getelementptr inbounds nuw i8, ptr %i.dol, i64 %.sink.idx.i.i3114 ; 6 uses
  %i.dui = load i32, ptr %.sink.i.i3115, align 4, !tbaa !33
  %i.duj = trunc nuw nsw i64 %indvars.iv3702 to i32 ; 2 uses
  %..i3116 = tail call i32 @llvm.smin.i32(i32 %i.dui, i32 %i.duj)
  store i32 %..i3116, ptr %.sink.i.i3115, align 4, !tbaa !33
  %i.duk = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 8 ; 2 uses
  %i.dul = load i32, ptr %i.duk, align 4, !tbaa !33
  %i.dum = tail call i32 @llvm.smax.i32(i32 %i.dul, i32 %i.duj)
  store i32 %i.dum, ptr %i.duk, align 4, !tbaa !33
  %i.dun = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 4 ; 2 uses
  %i.duo = load i32, ptr %i.dun, align 4, !tbaa !33
  %i.dup = tail call i32 @llvm.smin.i32(i32 %i.duo, i32 %i.dlz)
  store i32 %i.dup, ptr %i.dun, align 4, !tbaa !33
  %i.duq = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 12 ; 2 uses
  %i.dur = load i32, ptr %i.duq, align 4, !tbaa !33
  %i.dus = tail call i32 @llvm.smax.i32(i32 %i.dur, i32 %i.dlz)
  store i32 %i.dus, ptr %i.duq, align 4, !tbaa !33
  %i.dut = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 16 ; 2 uses
  %i.duu = load i32, ptr %i.dut, align 4, !tbaa !33
  %i.duv = add nsw i32 %i.duu, 1
  store i32 %i.duv, ptr %i.dut, align 4, !tbaa !33
  %i.duw = getelementptr inbounds nuw [16 x i8], ptr %i.dok, i64 %i.dug ; 2 uses
  %i.dux = load <2 x i64>, ptr %i.duw, align 8, !tbaa !40
  %i.duy = insertelement <2 x i64> %i.dmh, i64 %indvars.iv3702, i64 0
  %i.duz = add <2 x i64> %i.dux, %i.duy
  store <2 x i64> %i.duz, ptr %i.duw, align 8, !tbaa !40
  br label %bb.sd

bb.rx:                                            ; preds = %bb.rv
  store i32 0, ptr %i.duc, align 4, !tbaa !33
  %i.dva = load i32, ptr %i.dol, align 4, !tbaa !33
  %i.dvb = trunc nuw nsw i64 %indvars.iv3702 to i32 ; 2 uses
  %..i3119 = tail call i32 @llvm.smin.i32(i32 %i.dva, i32 %i.dvb)
  store i32 %..i3119, ptr %i.dol, align 4, !tbaa !33
  %i.dvc = getelementptr inbounds nuw i8, ptr %i.dol, i64 8 ; 2 uses
  %i.dvd = load i32, ptr %i.dvc, align 4, !tbaa !33
  %i.dve = tail call i32 @llvm.smax.i32(i32 %i.dvd, i32 %i.dvb)
  store i32 %i.dve, ptr %i.dvc, align 4, !tbaa !33
  %i.dvf = getelementptr inbounds nuw i8, ptr %i.dol, i64 4 ; 2 uses
  %i.dvg = load i32, ptr %i.dvf, align 4, !tbaa !33
  %i.dvh = tail call i32 @llvm.smin.i32(i32 %i.dvg, i32 %i.dma)
  store i32 %i.dvh, ptr %i.dvf, align 4, !tbaa !33
  %i.dvi = getelementptr inbounds nuw i8, ptr %i.dol, i64 12 ; 2 uses
  %i.dvj = load i32, ptr %i.dvi, align 4, !tbaa !33
  %i.dvk = tail call i32 @llvm.smax.i32(i32 %i.dvj, i32 %i.dma)
  store i32 %i.dvk, ptr %i.dvi, align 4, !tbaa !33
  %i.dvl = getelementptr inbounds nuw i8, ptr %i.dol, i64 16 ; 2 uses
  %i.dvm = load i32, ptr %i.dvl, align 4, !tbaa !33
  %i.dvn = add nsw i32 %i.dvm, 1
  store i32 %i.dvn, ptr %i.dvl, align 4, !tbaa !33
  %i.dvo = load <2 x i64>, ptr %i.dok, align 8, !tbaa !40
  %i.dvp = insertelement <2 x i64> %i.dmh, i64 %indvars.iv3702, i64 0
  %i.dvq = add <2 x i64> %i.dvo, %i.dvp
  store <2 x i64> %i.dvq, ptr %i.dok, align 8, !tbaa !40
  br label %bb.sd

bb.ry:                                            ; preds = %bb.rf
  store i32 0, ptr %i.dmm, align 4, !tbaa !33
  %i.dvr = load ptr, ptr %i.dkw, align 8, !tbaa !55 ; 12 uses
  %i.dvs = load i32, ptr %i.dvr, align 4, !tbaa !33
  %i.dvt = trunc nuw nsw i64 %indvars.iv3702 to i32 ; 6 uses
  %..i3122 = tail call i32 @llvm.smin.i32(i32 %i.dvs, i32 %i.dvt)
  store i32 %..i3122, ptr %i.dvr, align 4, !tbaa !33
  %i.dvu = getelementptr inbounds nuw i8, ptr %i.dvr, i64 8 ; 8 uses
  %i.dvv = load i32, ptr %i.dvu, align 4, !tbaa !33
  %i.dvw = tail call i32 @llvm.smax.i32(i32 %i.dvv, i32 %i.dvt)
  store i32 %i.dvw, ptr %i.dvu, align 4, !tbaa !33
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvr, i64 4 ; 8 uses
  %i.dvy = load i32, ptr %i.dvx, align 4, !tbaa !33
  %i.dvz = tail call i32 @llvm.smin.i32(i32 %i.dvy, i32 %i.dlu)
  store i32 %i.dvz, ptr %i.dvx, align 4, !tbaa !33
  %i.dwa = getelementptr inbounds nuw i8, ptr %i.dvr, i64 12 ; 8 uses
  %i.dwb = load i32, ptr %i.dwa, align 4, !tbaa !33
  %i.dwc = tail call i32 @llvm.smax.i32(i32 %i.dwb, i32 %i.dlu)
  store i32 %i.dwc, ptr %i.dwa, align 4, !tbaa !33
  %i.dwd = getelementptr inbounds nuw i8, ptr %i.dvr, i64 16 ; 8 uses
  %i.dwe = load i32, ptr %i.dwd, align 4, !tbaa !33
  %i.dwf = add nsw i32 %i.dwe, 1
  store i32 %i.dwf, ptr %i.dwd, align 4, !tbaa !33
  %i.dwg = load ptr, ptr %i.dkx, align 8, !tbaa !50 ; 6 uses
  %i.dwh = load i64, ptr %i.dwg, align 8, !tbaa !116
  %i.dwi = add i64 %i.dwh, %indvars.iv3702        ; 3 uses
  store i64 %i.dwi, ptr %i.dwg, align 8, !tbaa !116
  %i.dwj = getelementptr inbounds nuw i8, ptr %i.dwg, i64 8 ; 5 uses
  %i.dwk = load i64, ptr %i.dwj, align 8, !tbaa !117
  %i.dwl = add i64 %i.dwk, %indvars.iv3705        ; 3 uses
  store i64 %i.dwl, ptr %i.dwj, align 8, !tbaa !117
  %i.dwm = or disjoint i64 %indvars.iv3702, 1     ; 6 uses
  %i.dwn = load i32, ptr %i.o, align 4, !tbaa !52
  %i.dwo = sext i32 %i.dwn to i64
  %i.dwp = icmp slt i64 %i.dwm, %i.dwo
  br i1 %i.dwp, label %bb.rz, label %bb.sb

bb.rz:                                            ; preds = %bb.ry
  %i.dwq = getelementptr inbounds nuw [4 x i8], ptr %i.dlq, i64 %i.dwm
  store i32 0, ptr %i.dwq, align 4, !tbaa !33
  %i.dwr = load i32, ptr %i.dvr, align 4, !tbaa !33
  %i.dws = trunc nuw nsw i64 %i.dwm to i32        ; 4 uses
  %..i3125 = tail call i32 @llvm.smin.i32(i32 %i.dwr, i32 %i.dws)
  store i32 %..i3125, ptr %i.dvr, align 4, !tbaa !33
  %i.dwt = load i32, ptr %i.dvu, align 4, !tbaa !33
  %i.dwu = tail call i32 @llvm.smax.i32(i32 %i.dwt, i32 %i.dws)
  store i32 %i.dwu, ptr %i.dvu, align 4, !tbaa !33
  %i.dwv = load i32, ptr %i.dvx, align 4, !tbaa !33
  %i.dww = tail call i32 @llvm.smin.i32(i32 %i.dwv, i32 %i.dlu)
  store i32 %i.dww, ptr %i.dvx, align 4, !tbaa !33
  %i.dwx = load i32, ptr %i.dwa, align 4, !tbaa !33
  %i.dwy = tail call i32 @llvm.smax.i32(i32 %i.dwx, i32 %i.dlu)
  store i32 %i.dwy, ptr %i.dwa, align 4, !tbaa !33
  %i.dwz = load i32, ptr %i.dwd, align 4, !tbaa !33
  %i.dxa = add nsw i32 %i.dwz, 1
  store i32 %i.dxa, ptr %i.dwd, align 4, !tbaa !33
  %i.dxb = add i64 %i.dwi, %i.dwm                 ; 2 uses
  store i64 %i.dxb, ptr %i.dwg, align 8, !tbaa !116
  %i.dxc = add i64 %i.dwl, %indvars.iv3705        ; 2 uses
  store i64 %i.dxc, ptr %i.dwj, align 8, !tbaa !117
  %i.dxd = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dxe = sext i32 %i.dxd to i64
  %i.dxf = icmp slt i64 %i.dlt, %i.dxe
  br i1 %i.dxf, label %bb.sa, label %bb.sd

bb.sa:                                            ; preds = %bb.rz
  %i.dxg = getelementptr inbounds nuw [4 x i8], ptr %i.dlr, i64 %indvars.iv3702
  store i32 0, ptr %i.dxg, align 4, !tbaa !33
  %i.dxh = getelementptr inbounds nuw [4 x i8], ptr %i.dlr, i64 %i.dwm
  store i32 0, ptr %i.dxh, align 4, !tbaa !33
  %i.dxi = load i32, ptr %i.dvr, align 4, !tbaa !33
  %..i3128 = tail call i32 @llvm.smin.i32(i32 %i.dxi, i32 %i.dvt)
  %i.dxj = load i32, ptr %i.dvu, align 4, !tbaa !33
  %i.dxk = tail call i32 @llvm.smax.i32(i32 %i.dxj, i32 %i.dvt)
  %i.dxl = load i32, ptr %i.dvx, align 4, !tbaa !33
  %i.dxm = tail call i32 @llvm.smin.i32(i32 %i.dxl, i32 %i.dlw)
  %i.dxn = load i32, ptr %i.dwa, align 4, !tbaa !33
  %i.dxo = tail call i32 @llvm.smax.i32(i32 %i.dxn, i32 %i.dlw)
  %i.dxp = load i32, ptr %i.dwd, align 4, !tbaa !33
  %i.dxq = add i64 %i.dxb, %indvars.iv3702
  %..i3131 = tail call i32 @llvm.smin.i32(i32 %..i3128, i32 %i.dws)
  store i32 %..i3131, ptr %i.dvr, align 4, !tbaa !33
  %i.dxr = tail call i32 @llvm.umax.i32(i32 %i.dxk, i32 %i.dws)
  store i32 %i.dxr, ptr %i.dvu, align 4, !tbaa !33
  store i32 %i.dxm, ptr %i.dvx, align 4, !tbaa !33
  store i32 %i.dxo, ptr %i.dwa, align 4, !tbaa !33
  %i.dxs = add nsw i32 %i.dxp, 2
  store i32 %i.dxs, ptr %i.dwd, align 4, !tbaa !33
  %i.dxt = add i64 %i.dxq, %i.dwm
  store i64 %i.dxt, ptr %i.dwg, align 8, !tbaa !116
  %.reass = add i64 %i.dxc, %invariant.op
  store i64 %.reass, ptr %i.dwj, align 8, !tbaa !117
  br label %bb.sd

bb.sb:                                            ; preds = %bb.ry
  %i.dxu = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dxv = sext i32 %i.dxu to i64
  %i.dxw = icmp slt i64 %i.dlt, %i.dxv
  br i1 %i.dxw, label %bb.sc, label %bb.sd

bb.sc:                                            ; preds = %bb.sb
  %i.dxx = getelementptr inbounds nuw [4 x i8], ptr %i.dlr, i64 %indvars.iv3702
  store i32 0, ptr %i.dxx, align 4, !tbaa !33
  %i.dxy = load i32, ptr %i.dvr, align 4, !tbaa !33
  %..i3134 = tail call i32 @llvm.smin.i32(i32 %i.dxy, i32 %i.dvt)
  store i32 %..i3134, ptr %i.dvr, align 4, !tbaa !33
  %i.dxz = load i32, ptr %i.dvu, align 4, !tbaa !33
  %i.dya = tail call i32 @llvm.smax.i32(i32 %i.dxz, i32 %i.dvt)
  store i32 %i.dya, ptr %i.dvu, align 4, !tbaa !33
  %i.dyb = load i32, ptr %i.dvx, align 4, !tbaa !33
  %i.dyc = tail call i32 @llvm.smin.i32(i32 %i.dyb, i32 %i.dlv)
  store i32 %i.dyc, ptr %i.dvx, align 4, !tbaa !33
  %i.dyd = load i32, ptr %i.dwa, align 4, !tbaa !33
  %i.dye = tail call i32 @llvm.smax.i32(i32 %i.dyd, i32 %i.dlv)
  store i32 %i.dye, ptr %i.dwa, align 4, !tbaa !33
  %i.dyf = load i32, ptr %i.dwd, align 4, !tbaa !33
  %i.dyg = add nsw i32 %i.dyf, 1
  store i32 %i.dyg, ptr %i.dwd, align 4, !tbaa !33
  %i.dyh = add i64 %i.dwi, %indvars.iv3702
  store i64 %i.dyh, ptr %i.dwg, align 8, !tbaa !116
  %i.dyi = add i64 %i.dwl, %i.dlt
  store i64 %i.dyi, ptr %i.dwj, align 8, !tbaa !117
  br label %bb.sd

bb.sd:                                            ; preds = %bb.sc, %bb.sa, %bb.rx, %bb.rw, %bb.rt, %bb.rs, %bb.rz, %bb.sb, %bb.rn, %bb.ru
  %indvars.iv.next3703 = add nuw nsw i64 %indvars.iv3702, 2 ; 2 uses
  %i.dyj = load i32, ptr %i.o, align 4, !tbaa !52 ; 2 uses
  %i.dyk = sext i32 %i.dyj to i64
  %i.dyl = icmp slt i64 %indvars.iv.next3703, %i.dyk
  br i1 %i.dyl, label %bb.rf, label %._crit_edge3529.loopexit, !llvm.loop !330

bb.se:                                            ; preds = %.lr.ph3538, %._crit_edge3536
  %i.dym = phi i32 [ %i.dkn, %.lr.ph3538 ], [ %i.dzj, %._crit_edge3536 ]
  %i.dyn = phi i32 [ %i.dkp, %.lr.ph3538 ], [ %i.dzk, %._crit_edge3536 ] ; 2 uses
  %indvars.iv3711 = phi i64 [ 0, %.lr.ph3538 ], [ %indvars.iv.next3712, %._crit_edge3536 ] ; 12 uses
  %i.dyo = load i64, ptr %i.dlb, align 8, !tbaa !40 ; 2 uses
  %i.dyp = mul i64 %i.dyo, %indvars.iv3711
  %i.dyq = getelementptr inbounds nuw i8, ptr %.pre3728, i64 %i.dyp ; 3 uses
  %i.dyr = getelementptr inbounds nuw i8, ptr %i.dyq, i64 %i.dyo ; 2 uses
  %i.dys = load i64, ptr %i.dld, align 8, !tbaa !40 ; 2 uses
  %i.dyt = mul i64 %i.dys, %indvars.iv3711
  %i.dyu = getelementptr inbounds nuw i8, ptr %.pre3729, i64 %i.dyt ; 4 uses
  %i.dyv = getelementptr inbounds nuw i8, ptr %i.dyu, i64 %i.dys ; 4 uses
  %i.dyw = icmp sgt i32 %i.dyn, 0
  br i1 %i.dyw, label %.lr.ph3535, label %._crit_edge3536

.lr.ph3535:                                       ; preds = %bb.se
  %i.dyx = or disjoint i64 %indvars.iv3711, 1     ; 10 uses
  %i.dyy = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %invariant.op4151 = shl nuw i64 %indvars.iv3711, 1
  %i.dyz = trunc nuw nsw i64 %i.dyx to i32        ; 2 uses
  %invariant.op4153 = shl nuw i64 %i.dyx, 1
  %i.dza = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %i.dzb = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %i.dzc = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %i.dzd = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %i.dze = trunc nuw nsw i64 %i.dyx to i32        ; 2 uses
  %i.dzf = trunc nuw nsw i64 %i.dyx to i32        ; 2 uses
  %i.dzg = trunc nuw nsw i64 %i.dyx to i32        ; 2 uses
  %i.dzh = trunc nuw nsw i64 %i.dyx to i32        ; 2 uses
  %i.dzi = insertelement <2 x i64> poison, i64 %i.dyx, i64 1 ; 2 uses
  br label %bb.sf

._crit_edge3536.loopexit:                         ; preds = %bb.sv
  %.pre3730 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3536

._crit_edge3536:                                  ; preds = %._crit_edge3536.loopexit, %bb.se
  %i.dzj = phi i32 [ %.pre3730, %._crit_edge3536.loopexit ], [ %i.dym, %bb.se ] ; 2 uses
  %i.dzk = phi i32 [ %i.eik, %._crit_edge3536.loopexit ], [ %i.dyn, %bb.se ]
  %indvars.iv.next3712 = add nuw nsw i64 %indvars.iv3711, 2 ; 2 uses
  %i.dzl = sext i32 %i.dzj to i64
  %i.dzm = icmp slt i64 %indvars.iv.next3712, %i.dzl
  br i1 %i.dzm, label %bb.se, label %.loopexit, !llvm.loop !331

bb.sf:                                            ; preds = %.lr.ph3535, %bb.sv
  %indvars.iv3708 = phi i64 [ 0, %.lr.ph3535 ], [ %indvars.iv.next3709, %bb.sv ] ; 19 uses
  %i.dzn = getelementptr inbounds nuw [4 x i8], ptr %i.dyu, i64 %indvars.iv3708 ; 4 uses
  %i.dzo = load i32, ptr %i.dzn, align 4, !tbaa !33 ; 2 uses
  %i.dzp = icmp sgt i32 %i.dzo, 0
  br i1 %i.dzp, label %bb.sg, label %bb.st

bb.sg:                                            ; preds = %bb.sf
  %i.dzq = zext nneg i32 %i.dzo to i64
  %i.dzr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %i.dzq
  %i.dzs = load i32, ptr %i.dzr, align 4, !tbaa !33 ; 8 uses
  %i.dzt = getelementptr inbounds nuw i8, ptr %i.dyq, i64 %indvars.iv3708
  %i.dzu = load i8, ptr %i.dzt, align 1, !tbaa !32
  %.not1872 = icmp eq i8 %i.dzu, 0
  br i1 %.not1872, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  store i32 %i.dzs, ptr %i.dzn, align 4, !tbaa !33
  %i.dzv = load i32, ptr %i.dlg, align 4, !tbaa !96
  %i.dzw = icmp slt i32 %i.dzv, 2
  %i.dzx = load ptr, ptr %i.dle, align 8, !tbaa !55 ; 2 uses
  %i.dzy = load i64, ptr %i.dlh, align 8
  %i.dzz = sext i32 %i.dzs to i64                 ; 2 uses
  %i.eaa = mul i64 %i.dzy, %i.dzz
  %.sink.idx.i.i3135 = select i1 %i.dzw, i64 0, i64 %i.eaa
  %.sink.i.i3136 = getelementptr inbounds nuw i8, ptr %i.dzx, i64 %.sink.idx.i.i3135 ; 6 uses
  %i.eab = load i32, ptr %.sink.i.i3136, align 4, !tbaa !33
  %i.eac = trunc nuw nsw i64 %indvars.iv3708 to i32 ; 2 uses
  %..i3137 = tail call i32 @llvm.smin.i32(i32 %i.eab, i32 %i.eac)
  store i32 %..i3137, ptr %.sink.i.i3136, align 4, !tbaa !33
  %i.ead = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 8 ; 2 uses
  %i.eae = load i32, ptr %i.ead, align 4, !tbaa !33
  %i.eaf = tail call i32 @llvm.smax.i32(i32 %i.eae, i32 %i.eac)
  store i32 %i.eaf, ptr %i.ead, align 4, !tbaa !33
  %i.eag = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 4 ; 2 uses
  %i.eah = load i32, ptr %i.eag, align 4, !tbaa !33
  %i.eai = tail call i32 @llvm.smin.i32(i32 %i.eah, i32 %i.dza)
  store i32 %i.eai, ptr %i.eag, align 4, !tbaa !33
  %i.eaj = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 12 ; 2 uses
  %i.eak = load i32, ptr %i.eaj, align 4, !tbaa !33
  %i.eal = tail call i32 @llvm.smax.i32(i32 %i.eak, i32 %i.dza)
  store i32 %i.eal, ptr %i.eaj, align 4, !tbaa !33
  %i.eam = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 16 ; 2 uses
  %i.ean = load i32, ptr %i.eam, align 4, !tbaa !33
  %i.eao = add nsw i32 %i.ean, 1
  store i32 %i.eao, ptr %i.eam, align 4, !tbaa !33
  %i.eap = load ptr, ptr %i.dlf, align 8, !tbaa !50 ; 2 uses
  %i.eaq = getelementptr inbounds nuw [16 x i8], ptr %i.eap, i64 %i.dzz ; 3 uses
  %i.ear = load i64, ptr %i.eaq, align 8, !tbaa !116
  %i.eas = add i64 %i.ear, %indvars.iv3708
  store i64 %i.eas, ptr %i.eaq, align 8, !tbaa !116
  br label %bb.sj

bb.si:                                            ; preds = %bb.sg
  store i32 0, ptr %i.dzn, align 4, !tbaa !33
  %i.eat = load ptr, ptr %i.dle, align 8, !tbaa !55 ; 7 uses
  %i.eau = load i32, ptr %i.eat, align 4, !tbaa !33
  %i.eav = trunc nuw nsw i64 %indvars.iv3708 to i32 ; 2 uses
  %..i3140 = tail call i32 @llvm.smin.i32(i32 %i.eau, i32 %i.eav)
  store i32 %..i3140, ptr %i.eat, align 4, !tbaa !33
  %i.eaw = getelementptr inbounds nuw i8, ptr %i.eat, i64 8 ; 2 uses
  %i.eax = load i32, ptr %i.eaw, align 4, !tbaa !33
  %i.eay = tail call i32 @llvm.smax.i32(i32 %i.eax, i32 %i.eav)
  store i32 %i.eay, ptr %i.eaw, align 4, !tbaa !33
  %i.eaz = getelementptr inbounds nuw i8, ptr %i.eat, i64 4 ; 2 uses
  %i.eba = load i32, ptr %i.eaz, align 4, !tbaa !33
  %i.ebb = tail call i32 @llvm.smin.i32(i32 %i.eba, i32 %i.dzb)
  store i32 %i.ebb, ptr %i.eaz, align 4, !tbaa !33
  %i.ebc = getelementptr inbounds nuw i8, ptr %i.eat, i64 12 ; 2 uses
  %i.ebd = load i32, ptr %i.ebc, align 4, !tbaa !33
  %i.ebe = tail call i32 @llvm.smax.i32(i32 %i.ebd, i32 %i.dzb)
  store i32 %i.ebe, ptr %i.ebc, align 4, !tbaa !33
  %i.ebf = getelementptr inbounds nuw i8, ptr %i.eat, i64 16 ; 2 uses
  %i.ebg = load i32, ptr %i.ebf, align 4, !tbaa !33
  %i.ebh = add nsw i32 %i.ebg, 1
  store i32 %i.ebh, ptr %i.ebf, align 4, !tbaa !33
  %i.ebi = load ptr, ptr %i.dlf, align 8, !tbaa !50 ; 4 uses
  %i.ebj = load i64, ptr %i.ebi, align 8, !tbaa !116
  %i.ebk = add i64 %i.ebj, %indvars.iv3708
  store i64 %i.ebk, ptr %i.ebi, align 8, !tbaa !116
  br label %bb.sj

bb.sj:                                            ; preds = %bb.si, %bb.sh
  %.sink4176 = phi ptr [ %i.ebi, %bb.si ], [ %i.eaq, %bb.sh ]
  %i.ebl = phi ptr [ %i.ebi, %bb.si ], [ %i.eap, %bb.sh ] ; 11 uses
  %i.ebm = phi ptr [ %i.eat, %bb.si ], [ %i.dzx, %bb.sh ] ; 21 uses
  %i.ebn = getelementptr inbounds nuw i8, ptr %.sink4176, i64 8 ; 2 uses
  %i.ebo = load i64, ptr %i.ebn, align 8, !tbaa !117
  %i.ebp = add i64 %i.ebo, %indvars.iv3711
  store i64 %i.ebp, ptr %i.ebn, align 8, !tbaa !117
  %i.ebq = or disjoint i64 %indvars.iv3708, 1     ; 12 uses
  %i.ebr = getelementptr inbounds nuw i8, ptr %i.dyq, i64 %i.ebq
  %i.ebs = load i8, ptr %i.ebr, align 1, !tbaa !32
  %.not1873 = icmp eq i8 %i.ebs, 0
  %i.ebt = getelementptr inbounds nuw [4 x i8], ptr %i.dyu, i64 %i.ebq ; 2 uses
  br i1 %.not1873, label %bb.sl, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  store i32 %i.dzs, ptr %i.ebt, align 4, !tbaa !33
  %i.ebu = load i32, ptr %i.dlg, align 4, !tbaa !96
  %i.ebv = icmp slt i32 %i.ebu, 2
  %i.ebw = load i64, ptr %i.dlh, align 8
  %i.ebx = sext i32 %i.dzs to i64                 ; 2 uses
  %i.eby = mul i64 %i.ebw, %i.ebx
  %.sink.idx.i.i3141 = select i1 %i.ebv, i64 0, i64 %i.eby
  %.sink.i.i3142 = getelementptr inbounds nuw i8, ptr %i.ebm, i64 %.sink.idx.i.i3141 ; 6 uses
  %i.ebz = load i32, ptr %.sink.i.i3142, align 4, !tbaa !33
end_hunk_2
begin_hunk_3_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.ecu = tail call i32 @llvm.smax.i32(i32 %i.ect, i32 %i.ecr)
  store i32 %i.ecu, ptr %i.ecs, align 4, !tbaa !33
  %i.ecv = getelementptr inbounds nuw i8, ptr %i.ebm, i64 4 ; 2 uses
  %i.ecw = load i32, ptr %i.ecv, align 4, !tbaa !33
  %i.ecx = tail call i32 @llvm.smin.i32(i32 %i.ecw, i32 %i.dzd)
  store i32 %i.ecx, ptr %i.ecv, align 4, !tbaa !33
  %i.ecy = getelementptr inbounds nuw i8, ptr %i.ebm, i64 12 ; 2 uses
  %i.ecz = load i32, ptr %i.ecy, align 4, !tbaa !33
  %i.eda = tail call i32 @llvm.smax.i32(i32 %i.ecz, i32 %i.dzd)
  store i32 %i.eda, ptr %i.ecy, align 4, !tbaa !33
  %i.edb = getelementptr inbounds nuw i8, ptr %i.ebm, i64 16 ; 2 uses
  %i.edc = load i32, ptr %i.edb, align 4, !tbaa !33
  %i.edd = add nsw i32 %i.edc, 1
  store i32 %i.edd, ptr %i.edb, align 4, !tbaa !33
  %i.ede = load i64, ptr %i.ebl, align 8, !tbaa !116
  %i.edf = add i64 %i.ede, %i.ebq
  store i64 %i.edf, ptr %i.ebl, align 8, !tbaa !116
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %bb.sk
  %.sink4179 = phi ptr [ %i.ebl, %bb.sl ], [ %i.ecn, %bb.sk ]
  %i.edg = getelementptr inbounds nuw i8, ptr %.sink4179, i64 8 ; 2 uses
  %i.edh = load i64, ptr %i.edg, align 8, !tbaa !117
  %i.edi = add i64 %i.edh, %indvars.iv3711
  store i64 %i.edi, ptr %i.edg, align 8, !tbaa !117
  %i.edj = load i32, ptr %i.c, align 8, !tbaa !39
  %i.edk = sext i32 %i.edj to i64
  %i.edl = icmp slt i64 %i.dyx, %i.edk
  br i1 %i.edl, label %bb.sn, label %bb.sv

bb.sn:                                            ; preds = %bb.sm
  %i.edm = getelementptr inbounds nuw i8, ptr %i.dyr, i64 %indvars.iv3708
  %i.edn = load i8, ptr %i.edm, align 1, !tbaa !32
  %.not1874 = icmp eq i8 %i.edn, 0
  %i.edo = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %indvars.iv3708 ; 2 uses
  br i1 %.not1874, label %bb.sp, label %bb.so

bb.so:                                            ; preds = %bb.sn
  store i32 %i.dzs, ptr %i.edo, align 4, !tbaa !33
  %i.edp = load i32, ptr %i.dlg, align 4, !tbaa !96
  %i.edq = icmp slt i32 %i.edp, 2
  %i.edr = load i64, ptr %i.dlh, align 8
  %i.eds = sext i32 %i.dzs to i64                 ; 2 uses
  %i.edt = mul i64 %i.edr, %i.eds
  %.sink.idx.i.i3147 = select i1 %i.edq, i64 0, i64 %i.edt
  %.sink.i.i3148 = getelementptr inbounds nuw i8, ptr %i.ebm, i64 %.sink.idx.i.i3147 ; 6 uses
  %i.edu = load i32, ptr %.sink.i.i3148, align 4, !tbaa !33
  %i.edv = trunc nuw nsw i64 %indvars.iv3708 to i32 ; 2 uses
  %..i3149 = tail call i32 @llvm.smin.i32(i32 %i.edu, i32 %i.edv)
  store i32 %..i3149, ptr %.sink.i.i3148, align 4, !tbaa !33
  %i.edw = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 8 ; 2 uses
  %i.edx = load i32, ptr %i.edw, align 4, !tbaa !33
  %i.edy = tail call i32 @llvm.smax.i32(i32 %i.edx, i32 %i.edv)
  store i32 %i.edy, ptr %i.edw, align 4, !tbaa !33
  %i.edz = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 4 ; 2 uses
  %i.eea = load i32, ptr %i.edz, align 4, !tbaa !33
  %i.eeb = tail call i32 @llvm.smin.i32(i32 %i.eea, i32 %i.dze)
  store i32 %i.eeb, ptr %i.edz, align 4, !tbaa !33
  %i.eec = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 12 ; 2 uses
  %i.eed = load i32, ptr %i.eec, align 4, !tbaa !33
  %i.eee = tail call i32 @llvm.smax.i32(i32 %i.eed, i32 %i.dze)
  store i32 %i.eee, ptr %i.eec, align 4, !tbaa !33
  %i.eef = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 16 ; 2 uses
  %i.eeg = load i32, ptr %i.eef, align 4, !tbaa !33
  %i.eeh = add nsw i32 %i.eeg, 1
  store i32 %i.eeh, ptr %i.eef, align 4, !tbaa !33
  %i.eei = getelementptr inbounds nuw [16 x i8], ptr %i.ebl, i64 %i.eds ; 3 uses
  %i.eej = load i64, ptr %i.eei, align 8, !tbaa !116
  %i.eek = add i64 %i.eej, %indvars.iv3708
  store i64 %i.eek, ptr %i.eei, align 8, !tbaa !116
  br label %bb.sq

bb.sp:                                            ; preds = %bb.sn
  store i32 0, ptr %i.edo, align 4, !tbaa !33
  %i.eel = load i32, ptr %i.ebm, align 4, !tbaa !33
  %i.eem = trunc nuw nsw i64 %indvars.iv3708 to i32 ; 2 uses
  %..i3152 = tail call i32 @llvm.smin.i32(i32 %i.eel, i32 %i.eem)
  store i32 %..i3152, ptr %i.ebm, align 4, !tbaa !33
  %i.een = getelementptr inbounds nuw i8, ptr %i.ebm, i64 8 ; 2 uses
  %i.eeo = load i32, ptr %i.een, align 4, !tbaa !33
  %i.eep = tail call i32 @llvm.smax.i32(i32 %i.eeo, i32 %i.eem)
  store i32 %i.eep, ptr %i.een, align 4, !tbaa !33
  %i.eeq = getelementptr inbounds nuw i8, ptr %i.ebm, i64 4 ; 2 uses
  %i.eer = load i32, ptr %i.eeq, align 4, !tbaa !33
  %i.ees = tail call i32 @llvm.smin.i32(i32 %i.eer, i32 %i.dzf)
  store i32 %i.ees, ptr %i.eeq, align 4, !tbaa !33
  %i.eet = getelementptr inbounds nuw i8, ptr %i.ebm, i64 12 ; 2 uses
  %i.eeu = load i32, ptr %i.eet, align 4, !tbaa !33
  %i.eev = tail call i32 @llvm.smax.i32(i32 %i.eeu, i32 %i.dzf)
  store i32 %i.eev, ptr %i.eet, align 4, !tbaa !33
  %i.eew = getelementptr inbounds nuw i8, ptr %i.ebm, i64 16 ; 2 uses
  %i.eex = load i32, ptr %i.eew, align 4, !tbaa !33
  %i.eey = add nsw i32 %i.eex, 1
  store i32 %i.eey, ptr %i.eew, align 4, !tbaa !33
  %i.eez = load i64, ptr %i.ebl, align 8, !tbaa !116
  %i.efa = add i64 %i.eez, %indvars.iv3708
  store i64 %i.efa, ptr %i.ebl, align 8, !tbaa !116
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %bb.so
  %.sink4182 = phi ptr [ %i.ebl, %bb.sp ], [ %i.eei, %bb.so ]
  %i.efb = getelementptr inbounds nuw i8, ptr %.sink4182, i64 8 ; 2 uses
  %i.efc = load i64, ptr %i.efb, align 8, !tbaa !117
  %i.efd = add i64 %i.efc, %i.dyx
  store i64 %i.efd, ptr %i.efb, align 8, !tbaa !117
  %i.efe = getelementptr inbounds nuw i8, ptr %i.dyr, i64 %i.ebq
  %i.eff = load i8, ptr %i.efe, align 1, !tbaa !32
  %.not1875 = icmp eq i8 %i.eff, 0
  %i.efg = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %i.ebq ; 2 uses
  br i1 %.not1875, label %bb.ss, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  store i32 %i.dzs, ptr %i.efg, align 4, !tbaa !33
  %i.efh = load i32, ptr %i.dlg, align 4, !tbaa !96
  %i.efi = icmp slt i32 %i.efh, 2
  %i.efj = load i64, ptr %i.dlh, align 8
  %i.efk = sext i32 %i.dzs to i64                 ; 2 uses
  %i.efl = mul i64 %i.efj, %i.efk
  %.sink.idx.i.i3153 = select i1 %i.efi, i64 0, i64 %i.efl
  %.sink.i.i3154 = getelementptr inbounds nuw i8, ptr %i.ebm, i64 %.sink.idx.i.i3153 ; 6 uses
  %i.efm = load i32, ptr %.sink.i.i3154, align 4, !tbaa !33
  %i.efn = trunc nuw nsw i64 %i.ebq to i32        ; 2 uses
  %..i3155 = tail call i32 @llvm.smin.i32(i32 %i.efm, i32 %i.efn)
  store i32 %..i3155, ptr %.sink.i.i3154, align 4, !tbaa !33
  %i.efo = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 8 ; 2 uses
  %i.efp = load i32, ptr %i.efo, align 4, !tbaa !33
  %i.efq = tail call i32 @llvm.smax.i32(i32 %i.efp, i32 %i.efn)
  store i32 %i.efq, ptr %i.efo, align 4, !tbaa !33
  %i.efr = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 4 ; 2 uses
  %i.efs = load i32, ptr %i.efr, align 4, !tbaa !33
  %i.eft = tail call i32 @llvm.smin.i32(i32 %i.efs, i32 %i.dzg)
  store i32 %i.eft, ptr %i.efr, align 4, !tbaa !33
  %i.efu = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 12 ; 2 uses
  %i.efv = load i32, ptr %i.efu, align 4, !tbaa !33
  %i.efw = tail call i32 @llvm.smax.i32(i32 %i.efv, i32 %i.dzg)
  store i32 %i.efw, ptr %i.efu, align 4, !tbaa !33
  %i.efx = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 16 ; 2 uses
  %i.efy = load i32, ptr %i.efx, align 4, !tbaa !33
  %i.efz = add nsw i32 %i.efy, 1
  store i32 %i.efz, ptr %i.efx, align 4, !tbaa !33
  %i.ega = getelementptr inbounds nuw [16 x i8], ptr %i.ebl, i64 %i.efk ; 2 uses
  %i.egb = load <2 x i64>, ptr %i.ega, align 8, !tbaa !40
  %i.egc = insertelement <2 x i64> %i.dzi, i64 %i.ebq, i64 0
  %i.egd = add <2 x i64> %i.egb, %i.egc
  store <2 x i64> %i.egd, ptr %i.ega, align 8, !tbaa !40
  br label %bb.sv

bb.ss:                                            ; preds = %bb.sq
  store i32 0, ptr %i.efg, align 4, !tbaa !33
  %i.ege = load i32, ptr %i.ebm, align 4, !tbaa !33
  %i.egf = trunc nuw nsw i64 %i.ebq to i32        ; 2 uses
  %..i3158 = tail call i32 @llvm.smin.i32(i32 %i.ege, i32 %i.egf)
  store i32 %..i3158, ptr %i.ebm, align 4, !tbaa !33
  %i.egg = getelementptr inbounds nuw i8, ptr %i.ebm, i64 8 ; 2 uses
  %i.egh = load i32, ptr %i.egg, align 4, !tbaa !33
  %i.egi = tail call i32 @llvm.smax.i32(i32 %i.egh, i32 %i.egf)
  store i32 %i.egi, ptr %i.egg, align 4, !tbaa !33
  %i.egj = getelementptr inbounds nuw i8, ptr %i.ebm, i64 4 ; 2 uses
  %i.egk = load i32, ptr %i.egj, align 4, !tbaa !33
  %i.egl = tail call i32 @llvm.smin.i32(i32 %i.egk, i32 %i.dzh)
  store i32 %i.egl, ptr %i.egj, align 4, !tbaa !33
  %i.egm = getelementptr inbounds nuw i8, ptr %i.ebm, i64 12 ; 2 uses
  %i.egn = load i32, ptr %i.egm, align 4, !tbaa !33
  %i.ego = tail call i32 @llvm.smax.i32(i32 %i.egn, i32 %i.dzh)
  store i32 %i.ego, ptr %i.egm, align 4, !tbaa !33
  %i.egp = getelementptr inbounds nuw i8, ptr %i.ebm, i64 16 ; 2 uses
  %i.egq = load i32, ptr %i.egp, align 4, !tbaa !33
  %i.egr = add nsw i32 %i.egq, 1
  store i32 %i.egr, ptr %i.egp, align 4, !tbaa !33
  %i.egs = load <2 x i64>, ptr %i.ebl, align 8, !tbaa !40
  %i.egt = insertelement <2 x i64> %i.dzi, i64 %i.ebq, i64 0
  %i.egu = add <2 x i64> %i.egs, %i.egt
  store <2 x i64> %i.egu, ptr %i.ebl, align 8, !tbaa !40
  br label %bb.sv

bb.st:                                            ; preds = %bb.sf
  store i32 0, ptr %i.dzn, align 4, !tbaa !33
  %i.egv = or disjoint i64 %indvars.iv3708, 1     ; 5 uses
  %i.egw = getelementptr inbounds nuw [4 x i8], ptr %i.dyu, i64 %i.egv
  store i32 0, ptr %i.egw, align 4, !tbaa !33
  %i.egx = load ptr, ptr %i.dle, align 8, !tbaa !55 ; 8 uses
  %i.egy = load i32, ptr %i.egx, align 4, !tbaa !33
  %i.egz = trunc nuw nsw i64 %indvars.iv3708 to i32 ; 4 uses
  %..i3161 = tail call i32 @llvm.smin.i32(i32 %i.egy, i32 %i.egz)
  %i.eha = getelementptr inbounds nuw i8, ptr %i.egx, i64 8 ; 4 uses
  %i.ehb = load i32, ptr %i.eha, align 4, !tbaa !33
  %i.ehc = tail call i32 @llvm.smax.i32(i32 %i.ehb, i32 %i.egz)
  %i.ehd = getelementptr inbounds nuw i8, ptr %i.egx, i64 4 ; 4 uses
  %i.ehe = load i32, ptr %i.ehd, align 4, !tbaa !33
  %i.ehf = tail call i32 @llvm.smin.i32(i32 %i.ehe, i32 %i.dyy)
  %i.ehg = getelementptr inbounds nuw i8, ptr %i.egx, i64 12 ; 4 uses
  %i.ehh = load i32, ptr %i.ehg, align 4, !tbaa !33
  %i.ehi = tail call i32 @llvm.smax.i32(i32 %i.ehh, i32 %i.dyy)
  %i.ehj = getelementptr inbounds nuw i8, ptr %i.egx, i64 16 ; 4 uses
  %i.ehk = load i32, ptr %i.ehj, align 4, !tbaa !33
  %i.ehl = load ptr, ptr %i.dlf, align 8, !tbaa !50 ; 4 uses
  %i.ehm = load i64, ptr %i.ehl, align 8, !tbaa !116
  %i.ehn = add i64 %i.ehm, %indvars.iv3708
  %i.eho = getelementptr inbounds nuw i8, ptr %i.ehl, i64 8 ; 3 uses
  %i.ehp = load i64, ptr %i.eho, align 8, !tbaa !117
  %11 = trunc nuw nsw i64 %i.egv to i32           ; 4 uses
  %..i3164 = tail call i32 @llvm.smin.i32(i32 %..i3161, i32 %11)
  store i32 %..i3164, ptr %i.egx, align 4, !tbaa !33
  %i.ehq = tail call i32 @llvm.umax.i32(i32 %i.ehc, i32 %11)
  store i32 %i.ehq, ptr %i.eha, align 4, !tbaa !33
  store i32 %i.ehf, ptr %i.ehd, align 4, !tbaa !33
  store i32 %i.ehi, ptr %i.ehg, align 4, !tbaa !33
  %i.ehr = add nsw i32 %i.ehk, 2
  store i32 %i.ehr, ptr %i.ehj, align 4, !tbaa !33
  %i.ehs = add i64 %i.ehn, %i.egv                 ; 2 uses
  store i64 %i.ehs, ptr %i.ehl, align 8, !tbaa !116
  %.reass4152 = add i64 %i.ehp, %invariant.op4151 ; 2 uses
  store i64 %.reass4152, ptr %i.eho, align 8, !tbaa !117
  %i.eht = load i32, ptr %i.c, align 8, !tbaa !39
  %i.ehu = sext i32 %i.eht to i64
  %i.ehv = icmp slt i64 %i.dyx, %i.ehu
  br i1 %i.ehv, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %bb.st
  %i.ehw = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %indvars.iv3708
  store i32 0, ptr %i.ehw, align 4, !tbaa !33
  %i.ehx = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %i.egv
  store i32 0, ptr %i.ehx, align 4, !tbaa !33
  %i.ehy = load i32, ptr %i.egx, align 4, !tbaa !33
  %..i3167 = tail call i32 @llvm.smin.i32(i32 %i.ehy, i32 %i.egz)
  %i.ehz = load i32, ptr %i.eha, align 4, !tbaa !33
  %i.eia = tail call i32 @llvm.smax.i32(i32 %i.ehz, i32 %i.egz)
  %i.eib = load i32, ptr %i.ehd, align 4, !tbaa !33
  %i.eic = tail call i32 @llvm.smin.i32(i32 %i.eib, i32 %i.dyz)
  %i.eid = load i32, ptr %i.ehg, align 4, !tbaa !33
  %i.eie = tail call i32 @llvm.smax.i32(i32 %i.eid, i32 %i.dyz)
  %i.eif = load i32, ptr %i.ehj, align 4, !tbaa !33
  %i.eig = add i64 %i.ehs, %indvars.iv3708
  %..i3170 = tail call i32 @llvm.smin.i32(i32 %..i3167, i32 %11)
  store i32 %..i3170, ptr %i.egx, align 4, !tbaa !33
  %i.eih = tail call i32 @llvm.umax.i32(i32 %i.eia, i32 %11)
  store i32 %i.eih, ptr %i.eha, align 4, !tbaa !33
  store i32 %i.eic, ptr %i.ehd, align 4, !tbaa !33
  store i32 %i.eie, ptr %i.ehg, align 4, !tbaa !33
  %i.eii = add nsw i32 %i.eif, 2
  store i32 %i.eii, ptr %i.ehj, align 4, !tbaa !33
  %i.eij = add i64 %i.eig, %i.egv
  store i64 %i.eij, ptr %i.ehl, align 8, !tbaa !116
  %.reass4154 = add i64 %.reass4152, %invariant.op4153
  store i64 %.reass4154, ptr %i.eho, align 8, !tbaa !117
  br label %bb.sv

bb.sv:                                            ; preds = %bb.su, %bb.ss, %bb.sr, %bb.st, %bb.sm
  %indvars.iv.next3709 = add nuw nsw i64 %indvars.iv3708, 2 ; 2 uses
  %i.eik = load i32, ptr %i.o, align 4, !tbaa !52 ; 2 uses
  %i.eil = sext i32 %i.eik to i64
  %i.eim = icmp slt i64 %indvars.iv.next3709, %i.eil
  br i1 %i.eim, label %bb.sf, label %._crit_edge3536.loopexit, !llvm.loop !332

bb.sw:                                            ; preds = %bb.rc
  br i1 %.not1862, label %.preheader, label %.preheader3284

.preheader3284:                                   ; preds = %bb.sw
  br i1 %i.dkr, label %.lr.ph3544, label %.loopexit

.lr.ph3544:                                       ; preds = %.preheader3284
  %i.ein = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eio = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eip = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eiq = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.eir = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.eis = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %i.eit = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.eiu = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  %.pre3731 = load ptr, ptr %i.ein, align 8, !tbaa !55
  %.pre3732 = load ptr, ptr %i.eip, align 8, !tbaa !55
  br label %bb.sx

.preheader:                                       ; preds = %bb.sw
  br i1 %i.dkr, label %.lr.ph3551, label %.loopexit

.lr.ph3551:                                       ; preds = %.preheader
  %i.eiv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eiw = load ptr, ptr %i.eiv, align 8, !tbaa !55
  %i.eix = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eiy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eiz = load ptr, ptr %i.eiy, align 8, !tbaa !55
  %i.eja = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ejb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ejc = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %i.ejd = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.eje = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  br label %bb.tp

bb.sx:                                            ; preds = %.lr.ph3544, %._crit_edge3542
  %i.ejf = phi i32 [ %i.dkn, %.lr.ph3544 ], [ %i.ekc, %._crit_edge3542 ]
  %i.ejg = phi i32 [ %i.dkp, %.lr.ph3544 ], [ %i.ekd, %._crit_edge3542 ] ; 2 uses
  %indvars.iv3717 = phi i64 [ 0, %.lr.ph3544 ], [ %indvars.iv.next3718, %._crit_edge3542 ] ; 13 uses
  %i.ejh = load i64, ptr %i.eio, align 8, !tbaa !40 ; 2 uses
  %i.eji = mul i64 %i.ejh, %indvars.iv3717
  %i.ejj = getelementptr inbounds nuw i8, ptr %.pre3731, i64 %i.eji ; 3 uses
  %i.ejk = getelementptr inbounds nuw i8, ptr %i.ejj, i64 %i.ejh ; 2 uses
  %i.ejl = load i64, ptr %i.eiq, align 8, !tbaa !40 ; 2 uses
  %i.ejm = mul i64 %i.ejl, %indvars.iv3717
  %i.ejn = getelementptr inbounds nuw i8, ptr %.pre3732, i64 %i.ejm ; 4 uses
  %i.ejo = getelementptr inbounds nuw i8, ptr %i.ejn, i64 %i.ejl ; 4 uses
  %i.ejp = icmp sgt i32 %i.ejg, 0
  br i1 %i.ejp, label %.lr.ph3541, label %._crit_edge3542

.lr.ph3541:                                       ; preds = %bb.sx
  %i.ejq = or disjoint i64 %indvars.iv3717, 1     ; 9 uses
  %i.ejr = trunc nuw nsw i64 %indvars.iv3717 to i32 ; 4 uses
  %i.ejs = trunc nuw nsw i64 %i.ejq to i32        ; 4 uses
  %invariant.op4155 = add nuw i64 %indvars.iv3717, %i.ejq
  %invariant.op4157 = add nuw i64 %indvars.iv3717, %i.ejq
  %i.ejt = trunc nuw nsw i64 %indvars.iv3717 to i32 ; 2 uses
  %i.eju = trunc nuw nsw i64 %indvars.iv3717 to i32 ; 2 uses
  %i.ejv = trunc nuw nsw i64 %i.ejq to i32        ; 2 uses
  %i.ejw = trunc nuw nsw i64 %i.ejq to i32        ; 2 uses
  %i.ejx = trunc nuw nsw i64 %indvars.iv3717 to i32 ; 2 uses
  %i.ejy = trunc nuw nsw i64 %indvars.iv3717 to i32 ; 2 uses
  %i.ejz = trunc nuw nsw i64 %i.ejq to i32        ; 2 uses
  %i.eka = trunc nuw nsw i64 %i.ejq to i32        ; 2 uses
  %i.ekb = insertelement <2 x i64> poison, i64 %i.ejq, i64 1 ; 2 uses
  br label %bb.sy

._crit_edge3542.loopexit:                         ; preds = %bb.to
  %.pre3733 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3542

._crit_edge3542:                                  ; preds = %._crit_edge3542.loopexit, %bb.sx
  %i.ekc = phi i32 [ %.pre3733, %._crit_edge3542.loopexit ], [ %i.ejf, %bb.sx ] ; 2 uses
  %i.ekd = phi i32 [ %i.etc, %._crit_edge3542.loopexit ], [ %i.ejg, %bb.sx ]
  %indvars.iv.next3718 = add nuw nsw i64 %indvars.iv3717, 2 ; 2 uses
  %i.eke = sext i32 %i.ekc to i64
  %i.ekf = icmp slt i64 %indvars.iv.next3718, %i.eke
  br i1 %i.ekf, label %bb.sx, label %.loopexit, !llvm.loop !333

bb.sy:                                            ; preds = %.lr.ph3541, %bb.to
  %indvars.iv3714 = phi i64 [ 0, %.lr.ph3541 ], [ %indvars.iv.next3715, %bb.to ] ; 18 uses
  %i.ekg = getelementptr inbounds nuw [4 x i8], ptr %i.ejn, i64 %indvars.iv3714 ; 4 uses
  %i.ekh = load i32, ptr %i.ekg, align 4, !tbaa !33 ; 2 uses
  %i.eki = icmp sgt i32 %i.ekh, 0
  br i1 %i.eki, label %bb.sz, label %bb.tm

bb.sz:                                            ; preds = %bb.sy
  %i.ekj = zext nneg i32 %i.ekh to i64
  %i.ekk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %i.ekj
  %i.ekl = load i32, ptr %i.ekk, align 4, !tbaa !33 ; 8 uses
  %i.ekm = getelementptr inbounds nuw i8, ptr %i.ejj, i64 %indvars.iv3714
  %i.ekn = load i8, ptr %i.ekm, align 1, !tbaa !32
  %.not1867 = icmp eq i8 %i.ekn, 0
  br i1 %.not1867, label %bb.tb, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  store i32 %i.ekl, ptr %i.ekg, align 4, !tbaa !33
  %i.eko = load i32, ptr %i.eit, align 4, !tbaa !96
  %i.ekp = icmp slt i32 %i.eko, 2
  %i.ekq = load ptr, ptr %i.eir, align 8, !tbaa !55 ; 2 uses
  %i.ekr = load i64, ptr %i.eiu, align 8
  %i.eks = sext i32 %i.ekl to i64                 ; 2 uses
  %i.ekt = mul i64 %i.ekr, %i.eks
  %.sink.idx.i.i3171 = select i1 %i.ekp, i64 0, i64 %i.ekt
  %.sink.i.i3172 = getelementptr inbounds nuw i8, ptr %i.ekq, i64 %.sink.idx.i.i3171 ; 6 uses
  %i.eku = load i32, ptr %.sink.i.i3172, align 4, !tbaa !33
  %i.ekv = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 2 uses
  %..i3173 = tail call i32 @llvm.smin.i32(i32 %i.eku, i32 %i.ekv)
  store i32 %..i3173, ptr %.sink.i.i3172, align 4, !tbaa !33
  %i.ekw = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 8 ; 2 uses
  %i.ekx = load i32, ptr %i.ekw, align 4, !tbaa !33
  %i.eky = tail call i32 @llvm.smax.i32(i32 %i.ekx, i32 %i.ekv)
  store i32 %i.eky, ptr %i.ekw, align 4, !tbaa !33
  %i.ekz = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 4 ; 2 uses
  %i.ela = load i32, ptr %i.ekz, align 4, !tbaa !33
  %i.elb = tail call i32 @llvm.smin.i32(i32 %i.ela, i32 %i.ejt)
  store i32 %i.elb, ptr %i.ekz, align 4, !tbaa !33
  %i.elc = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 12 ; 2 uses
  %i.eld = load i32, ptr %i.elc, align 4, !tbaa !33
  %i.ele = tail call i32 @llvm.smax.i32(i32 %i.eld, i32 %i.ejt)
  store i32 %i.ele, ptr %i.elc, align 4, !tbaa !33
  %i.elf = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 16 ; 2 uses
  %i.elg = load i32, ptr %i.elf, align 4, !tbaa !33
  %i.elh = add nsw i32 %i.elg, 1
  store i32 %i.elh, ptr %i.elf, align 4, !tbaa !33
  %i.eli = load ptr, ptr %i.eis, align 8, !tbaa !50 ; 2 uses
  %i.elj = getelementptr inbounds nuw [16 x i8], ptr %i.eli, i64 %i.eks ; 3 uses
  %i.elk = load i64, ptr %i.elj, align 8, !tbaa !116
  %i.ell = add i64 %i.elk, %indvars.iv3714
  store i64 %i.ell, ptr %i.elj, align 8, !tbaa !116
  br label %bb.tc

bb.tb:                                            ; preds = %bb.sz
  store i32 0, ptr %i.ekg, align 4, !tbaa !33
  %i.elm = load ptr, ptr %i.eir, align 8, !tbaa !55 ; 7 uses
  %i.eln = load i32, ptr %i.elm, align 4, !tbaa !33
  %i.elo = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 2 uses
  %..i3176 = tail call i32 @llvm.smin.i32(i32 %i.eln, i32 %i.elo)
  store i32 %..i3176, ptr %i.elm, align 4, !tbaa !33
  %i.elp = getelementptr inbounds nuw i8, ptr %i.elm, i64 8 ; 2 uses
  %i.elq = load i32, ptr %i.elp, align 4, !tbaa !33
  %i.elr = tail call i32 @llvm.smax.i32(i32 %i.elq, i32 %i.elo)
  store i32 %i.elr, ptr %i.elp, align 4, !tbaa !33
  %i.els = getelementptr inbounds nuw i8, ptr %i.elm, i64 4 ; 2 uses
  %i.elt = load i32, ptr %i.els, align 4, !tbaa !33
  %i.elu = tail call i32 @llvm.smin.i32(i32 %i.elt, i32 %i.eju)
  store i32 %i.elu, ptr %i.els, align 4, !tbaa !33
  %i.elv = getelementptr inbounds nuw i8, ptr %i.elm, i64 12 ; 2 uses
  %i.elw = load i32, ptr %i.elv, align 4, !tbaa !33
  %i.elx = tail call i32 @llvm.smax.i32(i32 %i.elw, i32 %i.eju)
  store i32 %i.elx, ptr %i.elv, align 4, !tbaa !33
  %i.ely = getelementptr inbounds nuw i8, ptr %i.elm, i64 16 ; 2 uses
  %i.elz = load i32, ptr %i.ely, align 4, !tbaa !33
  %i.ema = add nsw i32 %i.elz, 1
  store i32 %i.ema, ptr %i.ely, align 4, !tbaa !33
  %i.emb = load ptr, ptr %i.eis, align 8, !tbaa !50 ; 4 uses
  %i.emc = load i64, ptr %i.emb, align 8, !tbaa !116
  %i.emd = add i64 %i.emc, %indvars.iv3714
  store i64 %i.emd, ptr %i.emb, align 8, !tbaa !116
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.ta
  %.sink4185 = phi ptr [ %i.emb, %bb.tb ], [ %i.elj, %bb.ta ]
  %i.eme = phi ptr [ %i.emb, %bb.tb ], [ %i.eli, %bb.ta ] ; 11 uses
  %i.emf = phi ptr [ %i.elm, %bb.tb ], [ %i.ekq, %bb.ta ] ; 21 uses
  %i.emg = getelementptr inbounds nuw i8, ptr %.sink4185, i64 8 ; 2 uses
  %i.emh = load i64, ptr %i.emg, align 8, !tbaa !117
  %i.emi = add i64 %i.emh, %indvars.iv3717
  store i64 %i.emi, ptr %i.emg, align 8, !tbaa !117
  %i.emj = getelementptr inbounds nuw i8, ptr %i.ejk, i64 %indvars.iv3714
  %i.emk = load i8, ptr %i.emj, align 1, !tbaa !32
  %.not1868 = icmp eq i8 %i.emk, 0
  %i.eml = getelementptr inbounds nuw [4 x i8], ptr %i.ejo, i64 %indvars.iv3714 ; 2 uses
  br i1 %.not1868, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  store i32 %i.ekl, ptr %i.eml, align 4, !tbaa !33
  %i.emm = load i32, ptr %i.eit, align 4, !tbaa !96
  %i.emn = icmp slt i32 %i.emm, 2
  %i.emo = load i64, ptr %i.eiu, align 8
  %i.emp = sext i32 %i.ekl to i64                 ; 2 uses
  %i.emq = mul i64 %i.emo, %i.emp
  %.sink.idx.i.i3177 = select i1 %i.emn, i64 0, i64 %i.emq
  %.sink.i.i3178 = getelementptr inbounds nuw i8, ptr %i.emf, i64 %.sink.idx.i.i3177 ; 6 uses
  %i.emr = load i32, ptr %.sink.i.i3178, align 4, !tbaa !33
  %i.ems = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 2 uses
  %..i3179 = tail call i32 @llvm.smin.i32(i32 %i.emr, i32 %i.ems)
  store i32 %..i3179, ptr %.sink.i.i3178, align 4, !tbaa !33
  %i.emt = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 8 ; 2 uses
  %i.emu = load i32, ptr %i.emt, align 4, !tbaa !33
  %i.emv = tail call i32 @llvm.smax.i32(i32 %i.emu, i32 %i.ems)
  store i32 %i.emv, ptr %i.emt, align 4, !tbaa !33
  %i.emw = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 4 ; 2 uses
  %i.emx = load i32, ptr %i.emw, align 4, !tbaa !33
  %i.emy = tail call i32 @llvm.smin.i32(i32 %i.emx, i32 %i.ejv)
  store i32 %i.emy, ptr %i.emw, align 4, !tbaa !33
  %i.emz = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 12 ; 2 uses
  %i.ena = load i32, ptr %i.emz, align 4, !tbaa !33
  %i.enb = tail call i32 @llvm.smax.i32(i32 %i.ena, i32 %i.ejv)
  store i32 %i.enb, ptr %i.emz, align 4, !tbaa !33
  %i.enc = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 16 ; 2 uses
  %i.end = load i32, ptr %i.enc, align 4, !tbaa !33
  %i.ene = add nsw i32 %i.end, 1
  store i32 %i.ene, ptr %i.enc, align 4, !tbaa !33
  %i.enf = getelementptr inbounds nuw [16 x i8], ptr %i.eme, i64 %i.emp ; 3 uses
  %i.eng = load i64, ptr %i.enf, align 8, !tbaa !116
  %i.enh = add i64 %i.eng, %indvars.iv3714
  store i64 %i.enh, ptr %i.enf, align 8, !tbaa !116
  br label %bb.tf

bb.te:                                            ; preds = %bb.tc
  store i32 0, ptr %i.eml, align 4, !tbaa !33
  %i.eni = load i32, ptr %i.emf, align 4, !tbaa !33
  %i.enj = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 2 uses
  %..i3182 = tail call i32 @llvm.smin.i32(i32 %i.eni, i32 %i.enj)
  store i32 %..i3182, ptr %i.emf, align 4, !tbaa !33
  %i.enk = getelementptr inbounds nuw i8, ptr %i.emf, i64 8 ; 2 uses
  %i.enl = load i32, ptr %i.enk, align 4, !tbaa !33
  %i.enm = tail call i32 @llvm.smax.i32(i32 %i.enl, i32 %i.enj)
  store i32 %i.enm, ptr %i.enk, align 4, !tbaa !33
  %i.enn = getelementptr inbounds nuw i8, ptr %i.emf, i64 4 ; 2 uses
  %i.eno = load i32, ptr %i.enn, align 4, !tbaa !33
  %i.enp = tail call i32 @llvm.smin.i32(i32 %i.eno, i32 %i.ejw)
  store i32 %i.enp, ptr %i.enn, align 4, !tbaa !33
  %i.enq = getelementptr inbounds nuw i8, ptr %i.emf, i64 12 ; 2 uses
  %i.enr = load i32, ptr %i.enq, align 4, !tbaa !33
  %i.ens = tail call i32 @llvm.smax.i32(i32 %i.enr, i32 %i.ejw)
  store i32 %i.ens, ptr %i.enq, align 4, !tbaa !33
  %i.ent = getelementptr inbounds nuw i8, ptr %i.emf, i64 16 ; 2 uses
  %i.enu = load i32, ptr %i.ent, align 4, !tbaa !33
  %i.env = add nsw i32 %i.enu, 1
  store i32 %i.env, ptr %i.ent, align 4, !tbaa !33
  %i.enw = load i64, ptr %i.eme, align 8, !tbaa !116
  %i.enx = add i64 %i.enw, %indvars.iv3714
  store i64 %i.enx, ptr %i.eme, align 8, !tbaa !116
  br label %bb.tf

bb.tf:                                            ; preds = %bb.te, %bb.td
  %.sink4188 = phi ptr [ %i.eme, %bb.te ], [ %i.enf, %bb.td ]
  %i.eny = getelementptr inbounds nuw i8, ptr %.sink4188, i64 8 ; 2 uses
  %i.enz = load i64, ptr %i.eny, align 8, !tbaa !117
  %i.eoa = add i64 %i.enz, %i.ejq
  store i64 %i.eoa, ptr %i.eny, align 8, !tbaa !117
  %i.eob = or disjoint i64 %indvars.iv3714, 1     ; 13 uses
  %i.eoc = load i32, ptr %i.o, align 4, !tbaa !52
  %i.eod = sext i32 %i.eoc to i64
  %i.eoe = icmp slt i64 %i.eob, %i.eod
  br i1 %i.eoe, label %bb.tg, label %bb.to

bb.tg:                                            ; preds = %bb.tf
  %i.eof = getelementptr inbounds nuw i8, ptr %i.ejj, i64 %i.eob
  %i.eog = load i8, ptr %i.eof, align 1, !tbaa !32
  %.not1869 = icmp eq i8 %i.eog, 0
  %i.eoh = getelementptr inbounds nuw [4 x i8], ptr %i.ejn, i64 %i.eob ; 2 uses
  br i1 %.not1869, label %bb.ti, label %bb.th

bb.th:                                            ; preds = %bb.tg
  store i32 %i.ekl, ptr %i.eoh, align 4, !tbaa !33
  %i.eoi = load i32, ptr %i.eit, align 4, !tbaa !96
  %i.eoj = icmp slt i32 %i.eoi, 2
  %i.eok = load i64, ptr %i.eiu, align 8
  %i.eol = sext i32 %i.ekl to i64                 ; 2 uses
  %i.eom = mul i64 %i.eok, %i.eol
  %.sink.idx.i.i3183 = select i1 %i.eoj, i64 0, i64 %i.eom
  %.sink.i.i3184 = getelementptr inbounds nuw i8, ptr %i.emf, i64 %.sink.idx.i.i3183 ; 6 uses
  %i.eon = load i32, ptr %.sink.i.i3184, align 4, !tbaa !33
  %i.eoo = trunc nuw nsw i64 %i.eob to i32        ; 2 uses
  %..i3185 = tail call i32 @llvm.smin.i32(i32 %i.eon, i32 %i.eoo)
  store i32 %..i3185, ptr %.sink.i.i3184, align 4, !tbaa !33
  %i.eop = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 8 ; 2 uses
  %i.eoq = load i32, ptr %i.eop, align 4, !tbaa !33
  %i.eor = tail call i32 @llvm.smax.i32(i32 %i.eoq, i32 %i.eoo)
  store i32 %i.eor, ptr %i.eop, align 4, !tbaa !33
  %i.eos = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 4 ; 2 uses
  %i.eot = load i32, ptr %i.eos, align 4, !tbaa !33
  %i.eou = tail call i32 @llvm.smin.i32(i32 %i.eot, i32 %i.ejx)
  store i32 %i.eou, ptr %i.eos, align 4, !tbaa !33
  %i.eov = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 12 ; 2 uses
  %i.eow = load i32, ptr %i.eov, align 4, !tbaa !33
  %i.eox = tail call i32 @llvm.smax.i32(i32 %i.eow, i32 %i.ejx)
  store i32 %i.eox, ptr %i.eov, align 4, !tbaa !33
  %i.eoy = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 16 ; 2 uses
  %i.eoz = load i32, ptr %i.eoy, align 4, !tbaa !33
  %i.epa = add nsw i32 %i.eoz, 1
  store i32 %i.epa, ptr %i.eoy, align 4, !tbaa !33
  %i.epb = getelementptr inbounds nuw [16 x i8], ptr %i.eme, i64 %i.eol ; 3 uses
  %i.epc = load i64, ptr %i.epb, align 8, !tbaa !116
  %i.epd = add i64 %i.epc, %i.eob
  store i64 %i.epd, ptr %i.epb, align 8, !tbaa !116
  br label %bb.tj

bb.ti:                                            ; preds = %bb.tg
  store i32 0, ptr %i.eoh, align 4, !tbaa !33
  %i.epe = load i32, ptr %i.emf, align 4, !tbaa !33
  %i.epf = trunc nuw nsw i64 %i.eob to i32        ; 2 uses
  %..i3188 = tail call i32 @llvm.smin.i32(i32 %i.epe, i32 %i.epf)
  store i32 %..i3188, ptr %i.emf, align 4, !tbaa !33
  %i.epg = getelementptr inbounds nuw i8, ptr %i.emf, i64 8 ; 2 uses
  %i.eph = load i32, ptr %i.epg, align 4, !tbaa !33
  %i.epi = tail call i32 @llvm.smax.i32(i32 %i.eph, i32 %i.epf)
  store i32 %i.epi, ptr %i.epg, align 4, !tbaa !33
  %i.epj = getelementptr inbounds nuw i8, ptr %i.emf, i64 4 ; 2 uses
  %i.epk = load i32, ptr %i.epj, align 4, !tbaa !33
  %i.epl = tail call i32 @llvm.smin.i32(i32 %i.epk, i32 %i.ejy)
  store i32 %i.epl, ptr %i.epj, align 4, !tbaa !33
  %i.epm = getelementptr inbounds nuw i8, ptr %i.emf, i64 12 ; 2 uses
  %i.epn = load i32, ptr %i.epm, align 4, !tbaa !33
  %i.epo = tail call i32 @llvm.smax.i32(i32 %i.epn, i32 %i.ejy)
  store i32 %i.epo, ptr %i.epm, align 4, !tbaa !33
  %i.epp = getelementptr inbounds nuw i8, ptr %i.emf, i64 16 ; 2 uses
  %i.epq = load i32, ptr %i.epp, align 4, !tbaa !33
  %i.epr = add nsw i32 %i.epq, 1
  store i32 %i.epr, ptr %i.epp, align 4, !tbaa !33
  %i.eps = load i64, ptr %i.eme, align 8, !tbaa !116
  %i.ept = add i64 %i.eps, %i.eob
  store i64 %i.ept, ptr %i.eme, align 8, !tbaa !116
  br label %bb.tj

bb.tj:                                            ; preds = %bb.ti, %bb.th
  %.sink4191 = phi ptr [ %i.eme, %bb.ti ], [ %i.epb, %bb.th ]
  %i.epu = getelementptr inbounds nuw i8, ptr %.sink4191, i64 8 ; 2 uses
  %i.epv = load i64, ptr %i.epu, align 8, !tbaa !117
  %i.epw = add i64 %i.epv, %indvars.iv3717
  store i64 %i.epw, ptr %i.epu, align 8, !tbaa !117
  %i.epx = getelementptr inbounds nuw i8, ptr %i.ejk, i64 %i.eob
  %i.epy = load i8, ptr %i.epx, align 1, !tbaa !32
  %.not1870 = icmp eq i8 %i.epy, 0
  %i.epz = getelementptr inbounds nuw [4 x i8], ptr %i.ejo, i64 %i.eob ; 2 uses
  br i1 %.not1870, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  store i32 %i.ekl, ptr %i.epz, align 4, !tbaa !33
  %i.eqa = load i32, ptr %i.eit, align 4, !tbaa !96
  %i.eqb = icmp slt i32 %i.eqa, 2
  %i.eqc = load i64, ptr %i.eiu, align 8
  %i.eqd = sext i32 %i.ekl to i64                 ; 2 uses
  %i.eqe = mul i64 %i.eqc, %i.eqd
  %.sink.idx.i.i3189 = select i1 %i.eqb, i64 0, i64 %i.eqe
  %.sink.i.i3190 = getelementptr inbounds nuw i8, ptr %i.emf, i64 %.sink.idx.i.i3189 ; 6 uses
  %i.eqf = load i32, ptr %.sink.i.i3190, align 4, !tbaa !33
  %i.eqg = trunc nuw nsw i64 %i.eob to i32        ; 2 uses
  %..i3191 = tail call i32 @llvm.smin.i32(i32 %i.eqf, i32 %i.eqg)
  store i32 %..i3191, ptr %.sink.i.i3190, align 4, !tbaa !33
  %i.eqh = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 8 ; 2 uses
  %i.eqi = load i32, ptr %i.eqh, align 4, !tbaa !33
  %i.eqj = tail call i32 @llvm.smax.i32(i32 %i.eqi, i32 %i.eqg)
  store i32 %i.eqj, ptr %i.eqh, align 4, !tbaa !33
  %i.eqk = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 4 ; 2 uses
  %i.eql = load i32, ptr %i.eqk, align 4, !tbaa !33
  %i.eqm = tail call i32 @llvm.smin.i32(i32 %i.eql, i32 %i.ejz)
  store i32 %i.eqm, ptr %i.eqk, align 4, !tbaa !33
  %i.eqn = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 12 ; 2 uses
  %i.eqo = load i32, ptr %i.eqn, align 4, !tbaa !33
  %i.eqp = tail call i32 @llvm.smax.i32(i32 %i.eqo, i32 %i.ejz)
  store i32 %i.eqp, ptr %i.eqn, align 4, !tbaa !33
  %i.eqq = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 16 ; 2 uses
  %i.eqr = load i32, ptr %i.eqq, align 4, !tbaa !33
  %i.eqs = add nsw i32 %i.eqr, 1
  store i32 %i.eqs, ptr %i.eqq, align 4, !tbaa !33
  %i.eqt = getelementptr inbounds nuw [16 x i8], ptr %i.eme, i64 %i.eqd ; 2 uses
  %i.equ = load <2 x i64>, ptr %i.eqt, align 8, !tbaa !40
  %i.eqv = insertelement <2 x i64> %i.ekb, i64 %i.eob, i64 0
  %i.eqw = add <2 x i64> %i.equ, %i.eqv
  store <2 x i64> %i.eqw, ptr %i.eqt, align 8, !tbaa !40
  br label %bb.to

bb.tl:                                            ; preds = %bb.tj
  store i32 0, ptr %i.epz, align 4, !tbaa !33
  %i.eqx = load i32, ptr %i.emf, align 4, !tbaa !33
  %i.eqy = trunc nuw nsw i64 %i.eob to i32        ; 2 uses
  %..i3194 = tail call i32 @llvm.smin.i32(i32 %i.eqx, i32 %i.eqy)
  store i32 %..i3194, ptr %i.emf, align 4, !tbaa !33
  %i.eqz = getelementptr inbounds nuw i8, ptr %i.emf, i64 8 ; 2 uses
  %i.era = load i32, ptr %i.eqz, align 4, !tbaa !33
  %i.erb = tail call i32 @llvm.smax.i32(i32 %i.era, i32 %i.eqy)
  store i32 %i.erb, ptr %i.eqz, align 4, !tbaa !33
  %i.erc = getelementptr inbounds nuw i8, ptr %i.emf, i64 4 ; 2 uses
  %i.erd = load i32, ptr %i.erc, align 4, !tbaa !33
  %i.ere = tail call i32 @llvm.smin.i32(i32 %i.erd, i32 %i.eka)
  store i32 %i.ere, ptr %i.erc, align 4, !tbaa !33
  %i.erf = getelementptr inbounds nuw i8, ptr %i.emf, i64 12 ; 2 uses
  %i.erg = load i32, ptr %i.erf, align 4, !tbaa !33
  %i.erh = tail call i32 @llvm.smax.i32(i32 %i.erg, i32 %i.eka)
  store i32 %i.erh, ptr %i.erf, align 4, !tbaa !33
  %i.eri = getelementptr inbounds nuw i8, ptr %i.emf, i64 16 ; 2 uses
  %i.erj = load i32, ptr %i.eri, align 4, !tbaa !33
  %i.erk = add nsw i32 %i.erj, 1
  store i32 %i.erk, ptr %i.eri, align 4, !tbaa !33
  %i.erl = load <2 x i64>, ptr %i.eme, align 8, !tbaa !40
  %i.erm = insertelement <2 x i64> %i.ekb, i64 %i.eob, i64 0
  %i.ern = add <2 x i64> %i.erl, %i.erm
  store <2 x i64> %i.ern, ptr %i.eme, align 8, !tbaa !40
  br label %bb.to

bb.tm:                                            ; preds = %bb.sy
  store i32 0, ptr %i.ekg, align 4, !tbaa !33
  %i.ero = getelementptr inbounds nuw [4 x i8], ptr %i.ejo, i64 %indvars.iv3714
  store i32 0, ptr %i.ero, align 4, !tbaa !33
  %i.erp = load ptr, ptr %i.eir, align 8, !tbaa !55 ; 8 uses
  %i.erq = load i32, ptr %i.erp, align 4, !tbaa !33
  %i.err = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 2 uses
  %..i3197 = tail call i32 @llvm.smin.i32(i32 %i.erq, i32 %i.err)
  %i.ers = getelementptr inbounds nuw i8, ptr %i.erp, i64 8 ; 4 uses
  %i.ert = load i32, ptr %i.ers, align 4, !tbaa !33
  %i.eru = tail call i32 @llvm.smax.i32(i32 %i.ert, i32 %i.err)
  %i.erv = getelementptr inbounds nuw i8, ptr %i.erp, i64 4 ; 4 uses
  %i.erw = load i32, ptr %i.erv, align 4, !tbaa !33
  %i.erx = tail call i32 @llvm.smin.i32(i32 %i.erw, i32 %i.ejr)
  %i.ery = getelementptr inbounds nuw i8, ptr %i.erp, i64 12 ; 4 uses
  %i.erz = load i32, ptr %i.ery, align 4, !tbaa !33
  %i.esa = tail call i32 @llvm.smax.i32(i32 %i.erz, i32 %i.ejr)
  %i.esb = getelementptr inbounds nuw i8, ptr %i.erp, i64 16 ; 4 uses
  %i.esc = load i32, ptr %i.esb, align 4, !tbaa !33
  %i.esd = load ptr, ptr %i.eis, align 8, !tbaa !50 ; 4 uses
  %i.ese = load i64, ptr %i.esd, align 8, !tbaa !116
  %i.esf = getelementptr inbounds nuw i8, ptr %i.esd, i64 8 ; 3 uses
  %i.esg = load i64, ptr %i.esf, align 8, !tbaa !117
  store i32 %..i3197, ptr %i.erp, align 4, !tbaa !33
  store i32 %i.eru, ptr %i.ers, align 4, !tbaa !33
  %12 = tail call i32 @llvm.smin.i32(i32 %i.erx, i32 %i.ejs)
  store i32 %12, ptr %i.erv, align 4, !tbaa !33
  %i.esh = tail call i32 @llvm.smax.i32(i32 %i.esa, i32 %i.ejs)
  store i32 %i.esh, ptr %i.ery, align 4, !tbaa !33
  %i.esi = add nsw i32 %i.esc, 2
  store i32 %i.esi, ptr %i.esb, align 4, !tbaa !33
  %reass.add = shl nuw i64 %indvars.iv3714, 1
  %i.esj = add i64 %i.ese, %reass.add             ; 2 uses
  store i64 %i.esj, ptr %i.esd, align 8, !tbaa !116
  %.reass4156 = add i64 %i.esg, %invariant.op4155 ; 2 uses
  store i64 %.reass4156, ptr %i.esf, align 8, !tbaa !117
  %i.esk = or disjoint i64 %indvars.iv3714, 1     ; 5 uses
  %i.esl = load i32, ptr %i.o, align 4, !tbaa !52
  %i.esm = sext i32 %i.esl to i64
  %i.esn = icmp slt i64 %i.esk, %i.esm
  br i1 %i.esn, label %bb.tn, label %bb.to

bb.tn:                                            ; preds = %bb.tm
  %i.eso = getelementptr inbounds nuw [4 x i8], ptr %i.ejn, i64 %i.esk
  store i32 0, ptr %i.eso, align 4, !tbaa !33
  %i.esp = getelementptr inbounds nuw [4 x i8], ptr %i.ejo, i64 %i.esk
  store i32 0, ptr %i.esp, align 4, !tbaa !33
  %i.esq = load i32, ptr %i.erp, align 4, !tbaa !33
  %i.esr = trunc nuw nsw i64 %i.esk to i32        ; 2 uses
  %..i3203 = tail call i32 @llvm.smin.i32(i32 %i.esq, i32 %i.esr)
  %i.ess = load i32, ptr %i.ers, align 4, !tbaa !33
  %i.est = tail call i32 @llvm.smax.i32(i32 %i.ess, i32 %i.esr)
  %i.esu = load i32, ptr %i.erv, align 4, !tbaa !33
  %i.esv = tail call i32 @llvm.smin.i32(i32 %i.esu, i32 %i.ejr)
  %i.esw = load i32, ptr %i.ery, align 4, !tbaa !33
  %i.esx = tail call i32 @llvm.smax.i32(i32 %i.esw, i32 %i.ejr)
  %i.esy = load i32, ptr %i.esb, align 4, !tbaa !33
  store i32 %..i3203, ptr %i.erp, align 4, !tbaa !33
  store i32 %i.est, ptr %i.ers, align 4, !tbaa !33
  %13 = tail call i32 @llvm.smin.i32(i32 %i.esv, i32 %i.ejs)
  store i32 %13, ptr %i.erv, align 4, !tbaa !33
  %i.esz = tail call i32 @llvm.smax.i32(i32 %i.esx, i32 %i.ejs)
  store i32 %i.esz, ptr %i.ery, align 4, !tbaa !33
  %i.eta = add nsw i32 %i.esy, 2
  store i32 %i.eta, ptr %i.esb, align 4, !tbaa !33
  %reass.add4201 = shl nuw i64 %i.esk, 1
  %i.etb = add i64 %i.esj, %reass.add4201
  store i64 %i.etb, ptr %i.esd, align 8, !tbaa !116
  %.reass4158 = add i64 %.reass4156, %invariant.op4157
  store i64 %.reass4158, ptr %i.esf, align 8, !tbaa !117
  br label %bb.to

bb.to:                                            ; preds = %bb.tn, %bb.tl, %bb.tk, %bb.tm, %bb.tf
  %indvars.iv.next3715 = add nuw nsw i64 %indvars.iv3714, 2 ; 2 uses
  %i.etc = load i32, ptr %i.o, align 4, !tbaa !52 ; 2 uses
  %i.etd = sext i32 %i.etc to i64
  %i.ete = icmp slt i64 %indvars.iv.next3715, %i.etd
  br i1 %i.ete, label %bb.sy, label %._crit_edge3542.loopexit, !llvm.loop !334

bb.tp:                                            ; preds = %.lr.ph3551, %._crit_edge3549
  %i.etf = phi i32 [ %i.dkn, %.lr.ph3551 ], [ %i.euc, %._crit_edge3549 ]
  %i.etg = phi i32 [ %i.dkp, %.lr.ph3551 ], [ %i.eud, %._crit_edge3549 ] ; 2 uses
  %indvars.iv3723 = phi i64 [ 0, %.lr.ph3551 ], [ %indvars.iv.next3724, %._crit_edge3549 ] ; 12 uses
  %i.eth = load i64, ptr %i.eix, align 8, !tbaa !40 ; 2 uses
  %i.eti = mul i64 %i.eth, %indvars.iv3723
  %i.etj = getelementptr inbounds nuw i8, ptr %i.eiw, i64 %i.eti ; 3 uses
  %i.etk = getelementptr inbounds nuw i8, ptr %i.etj, i64 %i.eth ; 2 uses
  %i.etl = load i64, ptr %i.eja, align 8, !tbaa !40 ; 2 uses
  %i.etm = mul i64 %i.etl, %indvars.iv3723
  %i.etn = getelementptr inbounds nuw i8, ptr %i.eiz, i64 %i.etm ; 4 uses
  %i.eto = getelementptr inbounds nuw i8, ptr %i.etn, i64 %i.etl ; 4 uses
  %i.etp = icmp sgt i32 %i.etg, 0
  br i1 %i.etp, label %.lr.ph3548, label %._crit_edge3549

.lr.ph3548:                                       ; preds = %bb.tp
  %i.etq = or disjoint i64 %indvars.iv3723, 1     ; 8 uses
  %i.etr = trunc nuw nsw i64 %indvars.iv3723 to i32 ; 2 uses
  %i.ets = trunc nuw nsw i64 %i.etq to i32        ; 2 uses
  %invariant.op41594203 = add nuw i64 %indvars.iv3723, %i.etq
  %invariant.op4163 = shl i64 %invariant.op41594203, 1
  %i.ett = trunc nuw nsw i64 %indvars.iv3723 to i32 ; 2 uses
  %i.etu = trunc nuw nsw i64 %indvars.iv3723 to i32 ; 2 uses
  %i.etv = trunc nuw nsw i64 %indvars.iv3723 to i32 ; 2 uses
  %i.etw = trunc nuw nsw i64 %indvars.iv3723 to i32 ; 2 uses
  %i.etx = trunc nuw nsw i64 %i.etq to i32        ; 2 uses
  %i.ety = trunc nuw nsw i64 %i.etq to i32        ; 2 uses
  %i.etz = trunc nuw nsw i64 %i.etq to i32        ; 2 uses
  %i.eua = trunc nuw nsw i64 %i.etq to i32        ; 2 uses
  %i.eub = insertelement <2 x i64> poison, i64 %i.etq, i64 1 ; 2 uses
  br label %bb.tq

._crit_edge3549.loopexit:                         ; preds = %bb.ug
  %.pre3734 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3549

._crit_edge3549:                                  ; preds = %._crit_edge3549.loopexit, %bb.tp
  %i.euc = phi i32 [ %.pre3734, %._crit_edge3549.loopexit ], [ %i.etf, %bb.tp ] ; 2 uses
  %i.eud = phi i32 [ %i.fcr, %._crit_edge3549.loopexit ], [ %i.etg, %bb.tp ]
  %indvars.iv.next3724 = add nuw nsw i64 %indvars.iv3723, 2 ; 2 uses
  %i.eue = sext i32 %i.euc to i64
  %i.euf = icmp slt i64 %indvars.iv.next3724, %i.eue
  br i1 %i.euf, label %bb.tp, label %.loopexit, !llvm.loop !335

bb.tq:                                            ; preds = %.lr.ph3548, %bb.ug
  %indvars.iv3720 = phi i64 [ 0, %.lr.ph3548 ], [ %indvars.iv.next3721, %bb.ug ] ; 19 uses
  %i.eug = getelementptr inbounds nuw [4 x i8], ptr %i.etn, i64 %indvars.iv3720 ; 4 uses
  %i.euh = load i32, ptr %i.eug, align 4, !tbaa !33 ; 2 uses
  %i.eui = icmp sgt i32 %i.euh, 0
  br i1 %i.eui, label %bb.tr, label %bb.uf

bb.tr:                                            ; preds = %bb.tq
  %i.euj = zext nneg i32 %i.euh to i64
  %i.euk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %i.euj
  %i.eul = load i32, ptr %i.euk, align 4, !tbaa !33 ; 8 uses
  %i.eum = getelementptr inbounds nuw i8, ptr %i.etj, i64 %indvars.iv3720
  %i.eun = load i8, ptr %i.eum, align 1, !tbaa !32
  %.not1863 = icmp eq i8 %i.eun, 0
  br i1 %.not1863, label %bb.tv, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  store i32 %i.eul, ptr %i.eug, align 4, !tbaa !33
  %i.euo = load i32, ptr %i.ejd, align 4, !tbaa !96
  %i.eup = icmp slt i32 %i.euo, 2
  %i.euq = load ptr, ptr %i.ejb, align 8, !tbaa !55 ; 2 uses
  %i.eur = load i64, ptr %i.eje, align 8
  %i.eus = sext i32 %i.eul to i64                 ; 2 uses
  %i.eut = mul i64 %i.eur, %i.eus
  %.sink.idx.i.i3207 = select i1 %i.eup, i64 0, i64 %i.eut
  %.sink.i.i3208 = getelementptr inbounds nuw i8, ptr %i.euq, i64 %.sink.idx.i.i3207 ; 6 uses
  %i.euu = load i32, ptr %.sink.i.i3208, align 4, !tbaa !33
  %i.euv = trunc nuw nsw i64 %indvars.iv3720 to i32 ; 2 uses
  %..i3209 = tail call i32 @llvm.smin.i32(i32 %i.euu, i32 %i.euv)
  store i32 %..i3209, ptr %.sink.i.i3208, align 4, !tbaa !33
  %i.euw = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 8 ; 2 uses
  %i.eux = load i32, ptr %i.euw, align 4, !tbaa !33
  %i.euy = tail call i32 @llvm.smax.i32(i32 %i.eux, i32 %i.euv)
  store i32 %i.euy, ptr %i.euw, align 4, !tbaa !33
  %i.euz = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 4 ; 2 uses
  %i.eva = load i32, ptr %i.euz, align 4, !tbaa !33
  %i.evb = tail call i32 @llvm.smin.i32(i32 %i.eva, i32 %i.ett)
  store i32 %i.evb, ptr %i.euz, align 4, !tbaa !33
  %i.evc = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 12 ; 2 uses
  %i.evd = load i32, ptr %i.evc, align 4, !tbaa !33
  %i.eve = tail call i32 @llvm.smax.i32(i32 %i.evd, i32 %i.ett)
  store i32 %i.eve, ptr %i.evc, align 4, !tbaa !33
  %i.evf = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 16 ; 2 uses
  %i.evg = load i32, ptr %i.evf, align 4, !tbaa !33
  %i.evh = add nsw i32 %i.evg, 1
  store i32 %i.evh, ptr %i.evf, align 4, !tbaa !33
  %i.evi = load ptr, ptr %i.ejc, align 8, !tbaa !50 ; 2 uses
  %i.evj = getelementptr inbounds nuw [16 x i8], ptr %i.evi, i64 %i.eus ; 3 uses
  %i.evk = load i64, ptr %i.evj, align 8, !tbaa !116
  %i.evl = add i64 %i.evk, %indvars.iv3720
  store i64 %i.evl, ptr %i.evj, align 8, !tbaa !116
  br label %bb.tw

.thread3273:                                      ; preds = %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.tu

bb.tt:                                            ; preds = %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.03251.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.tu

bb.tu:                                            ; preds = %.thread3273, %bb.tt
  %lpad.phi3276 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread3273 ], [ %lpad.thr_comm.split-lp, %bb.tt ]
  %i.evm = ptrtoint ptr %.sroa.03251.0 to i64
  %i.evn = sub i64 %.sroa.10.0, %i.evm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.evn) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.tv:                                            ; preds = %bb.tr
  store i32 0, ptr %i.eug, align 4, !tbaa !33
  %i.evo = load ptr, ptr %i.ejb, align 8, !tbaa !55 ; 7 uses
  %i.evp = load i32, ptr %i.evo, align 4, !tbaa !33
  %i.evq = trunc nuw nsw i64 %indvars.iv3720 to i32 ; 2 uses
  %..i3212 = tail call i32 @llvm.smin.i32(i32 %i.evp, i32 %i.evq)
  store i32 %..i3212, ptr %i.evo, align 4, !tbaa !33
  %i.evr = getelementptr inbounds nuw i8, ptr %i.evo, i64 8 ; 2 uses
  %i.evs = load i32, ptr %i.evr, align 4, !tbaa !33
  %i.evt = tail call i32 @llvm.smax.i32(i32 %i.evs, i32 %i.evq)
  store i32 %i.evt, ptr %i.evr, align 4, !tbaa !33
  %i.evu = getelementptr inbounds nuw i8, ptr %i.evo, i64 4 ; 2 uses
  %i.evv = load i32, ptr %i.evu, align 4, !tbaa !33
  %i.evw = tail call i32 @llvm.smin.i32(i32 %i.evv, i32 %i.etu)
  store i32 %i.evw, ptr %i.evu, align 4, !tbaa !33
  %i.evx = getelementptr inbounds nuw i8, ptr %i.evo, i64 12 ; 2 uses
  %i.evy = load i32, ptr %i.evx, align 4, !tbaa !33
  %i.evz = tail call i32 @llvm.smax.i32(i32 %i.evy, i32 %i.etu)
  store i32 %i.evz, ptr %i.evx, align 4, !tbaa !33
  %i.ewa = getelementptr inbounds nuw i8, ptr %i.evo, i64 16 ; 2 uses
  %i.ewb = load i32, ptr %i.ewa, align 4, !tbaa !33
  %i.ewc = add nsw i32 %i.ewb, 1
  store i32 %i.ewc, ptr %i.ewa, align 4, !tbaa !33
  %i.ewd = load ptr, ptr %i.ejc, align 8, !tbaa !50 ; 4 uses
  %i.ewe = load i64, ptr %i.ewd, align 8, !tbaa !116
  %i.ewf = add i64 %i.ewe, %indvars.iv3720
  store i64 %i.ewf, ptr %i.ewd, align 8, !tbaa !116
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.ts
  %.sink4194 = phi ptr [ %i.ewd, %bb.tv ], [ %i.evj, %bb.ts ]
  %i.ewg = phi ptr [ %i.ewd, %bb.tv ], [ %i.evi, %bb.ts ] ; 11 uses
  %i.ewh = phi ptr [ %i.evo, %bb.tv ], [ %i.euq, %bb.ts ] ; 21 uses
  %i.ewi = getelementptr inbounds nuw i8, ptr %.sink4194, i64 8 ; 2 uses
  %i.ewj = load i64, ptr %i.ewi, align 8, !tbaa !117
  %i.ewk = add i64 %i.ewj, %indvars.iv3723
  store i64 %i.ewk, ptr %i.ewi, align 8, !tbaa !117
  %i.ewl = or disjoint i64 %indvars.iv3720, 1     ; 12 uses
  %i.ewm = getelementptr inbounds nuw i8, ptr %i.etj, i64 %i.ewl
  %i.ewn = load i8, ptr %i.ewm, align 1, !tbaa !32
  %.not1864 = icmp eq i8 %i.ewn, 0
  %i.ewo = getelementptr inbounds nuw [4 x i8], ptr %i.etn, i64 %i.ewl ; 2 uses
  br i1 %.not1864, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  store i32 %i.eul, ptr %i.ewo, align 4, !tbaa !33
  %i.ewp = load i32, ptr %i.ejd, align 4, !tbaa !96
  %i.ewq = icmp slt i32 %i.ewp, 2
  %i.ewr = load i64, ptr %i.eje, align 8
  %i.ews = sext i32 %i.eul to i64                 ; 2 uses
  %i.ewt = mul i64 %i.ewr, %i.ews
  %.sink.idx.i.i3213 = select i1 %i.ewq, i64 0, i64 %i.ewt
  %.sink.i.i3214 = getelementptr inbounds nuw i8, ptr %i.ewh, i64 %.sink.idx.i.i3213 ; 6 uses
  %i.ewu = load i32, ptr %.sink.i.i3214, align 4, !tbaa !33
  %i.ewv = trunc nuw nsw i64 %i.ewl to i32        ; 2 uses
  %..i3215 = tail call i32 @llvm.smin.i32(i32 %i.ewu, i32 %i.ewv)
  store i32 %..i3215, ptr %.sink.i.i3214, align 4, !tbaa !33
  %i.eww = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 8 ; 2 uses
  %i.ewx = load i32, ptr %i.eww, align 4, !tbaa !33
  %i.ewy = tail call i32 @llvm.smax.i32(i32 %i.ewx, i32 %i.ewv)
  store i32 %i.ewy, ptr %i.eww, align 4, !tbaa !33
  %i.ewz = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 4 ; 2 uses
  %i.exa = load i32, ptr %i.ewz, align 4, !tbaa !33
  %i.exb = tail call i32 @llvm.smin.i32(i32 %i.exa, i32 %i.etv)
  store i32 %i.exb, ptr %i.ewz, align 4, !tbaa !33
  %i.exc = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 12 ; 2 uses
  %i.exd = load i32, ptr %i.exc, align 4, !tbaa !33
  %i.exe = tail call i32 @llvm.smax.i32(i32 %i.exd, i32 %i.etv)
  store i32 %i.exe, ptr %i.exc, align 4, !tbaa !33
  %i.exf = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 16 ; 2 uses
  %i.exg = load i32, ptr %i.exf, align 4, !tbaa !33
  %i.exh = add nsw i32 %i.exg, 1
  store i32 %i.exh, ptr %i.exf, align 4, !tbaa !33
  %i.exi = getelementptr inbounds nuw [16 x i8], ptr %i.ewg, i64 %i.ews ; 3 uses
  %i.exj = load i64, ptr %i.exi, align 8, !tbaa !116
  %i.exk = add i64 %i.exj, %i.ewl
  store i64 %i.exk, ptr %i.exi, align 8, !tbaa !116
  br label %bb.tz

bb.ty:                                            ; preds = %bb.tw
  store i32 0, ptr %i.ewo, align 4, !tbaa !33
  %i.exl = load i32, ptr %i.ewh, align 4, !tbaa !33
  %i.exm = trunc nuw nsw i64 %i.ewl to i32        ; 2 uses
  %..i3218 = tail call i32 @llvm.smin.i32(i32 %i.exl, i32 %i.exm)
  store i32 %..i3218, ptr %i.ewh, align 4, !tbaa !33
  %i.exn = getelementptr inbounds nuw i8, ptr %i.ewh, i64 8 ; 2 uses
  %i.exo = load i32, ptr %i.exn, align 4, !tbaa !33
  %i.exp = tail call i32 @llvm.smax.i32(i32 %i.exo, i32 %i.exm)
  store i32 %i.exp, ptr %i.exn, align 4, !tbaa !33
  %i.exq = getelementptr inbounds nuw i8, ptr %i.ewh, i64 4 ; 2 uses
  %i.exr = load i32, ptr %i.exq, align 4, !tbaa !33
  %i.exs = tail call i32 @llvm.smin.i32(i32 %i.exr, i32 %i.etw)
  store i32 %i.exs, ptr %i.exq, align 4, !tbaa !33
  %i.ext = getelementptr inbounds nuw i8, ptr %i.ewh, i64 12 ; 2 uses
  %i.exu = load i32, ptr %i.ext, align 4, !tbaa !33
  %i.exv = tail call i32 @llvm.smax.i32(i32 %i.exu, i32 %i.etw)
  store i32 %i.exv, ptr %i.ext, align 4, !tbaa !33
  %i.exw = getelementptr inbounds nuw i8, ptr %i.ewh, i64 16 ; 2 uses
  %i.exx = load i32, ptr %i.exw, align 4, !tbaa !33
  %i.exy = add nsw i32 %i.exx, 1
  store i32 %i.exy, ptr %i.exw, align 4, !tbaa !33
  %i.exz = load i64, ptr %i.ewg, align 8, !tbaa !116
  %i.eya = add i64 %i.exz, %i.ewl
  store i64 %i.eya, ptr %i.ewg, align 8, !tbaa !116
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.tx
  %.sink4197 = phi ptr [ %i.ewg, %bb.ty ], [ %i.exi, %bb.tx ]
  %i.eyb = getelementptr inbounds nuw i8, ptr %.sink4197, i64 8 ; 2 uses
  %i.eyc = load i64, ptr %i.eyb, align 8, !tbaa !117
  %i.eyd = add i64 %i.eyc, %indvars.iv3723
  store i64 %i.eyd, ptr %i.eyb, align 8, !tbaa !117
  %i.eye = getelementptr inbounds nuw i8, ptr %i.etk, i64 %indvars.iv3720
  %i.eyf = load i8, ptr %i.eye, align 1, !tbaa !32
  %.not1865 = icmp eq i8 %i.eyf, 0
  %i.eyg = getelementptr inbounds nuw [4 x i8], ptr %i.eto, i64 %indvars.iv3720 ; 2 uses
  br i1 %.not1865, label %bb.ub, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  store i32 %i.eul, ptr %i.eyg, align 4, !tbaa !33
  %i.eyh = load i32, ptr %i.ejd, align 4, !tbaa !96
  %i.eyi = icmp slt i32 %i.eyh, 2
  %i.eyj = load i64, ptr %i.eje, align 8
  %i.eyk = sext i32 %i.eul to i64                 ; 2 uses
  %i.eyl = mul i64 %i.eyj, %i.eyk
  %.sink.idx.i.i3219 = select i1 %i.eyi, i64 0, i64 %i.eyl
  %.sink.i.i3220 = getelementptr inbounds nuw i8, ptr %i.ewh, i64 %.sink.idx.i.i3219 ; 6 uses
  %i.eym = load i32, ptr %.sink.i.i3220, align 4, !tbaa !33
  %i.eyn = trunc nuw nsw i64 %indvars.iv3720 to i32 ; 2 uses
  %..i3221 = tail call i32 @llvm.smin.i32(i32 %i.eym, i32 %i.eyn)
  store i32 %..i3221, ptr %.sink.i.i3220, align 4, !tbaa !33
  %i.eyo = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 8 ; 2 uses
  %i.eyp = load i32, ptr %i.eyo, align 4, !tbaa !33
  %i.eyq = tail call i32 @llvm.smax.i32(i32 %i.eyp, i32 %i.eyn)
  store i32 %i.eyq, ptr %i.eyo, align 4, !tbaa !33
  %i.eyr = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 4 ; 2 uses
  %i.eys = load i32, ptr %i.eyr, align 4, !tbaa !33
  %i.eyt = tail call i32 @llvm.smin.i32(i32 %i.eys, i32 %i.etx)
  store i32 %i.eyt, ptr %i.eyr, align 4, !tbaa !33
  %i.eyu = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 12 ; 2 uses
  %i.eyv = load i32, ptr %i.eyu, align 4, !tbaa !33
  %i.eyw = tail call i32 @llvm.smax.i32(i32 %i.eyv, i32 %i.etx)
  store i32 %i.eyw, ptr %i.eyu, align 4, !tbaa !33
  %i.eyx = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 16 ; 2 uses
  %i.eyy = load i32, ptr %i.eyx, align 4, !tbaa !33
  %i.eyz = add nsw i32 %i.eyy, 1
  store i32 %i.eyz, ptr %i.eyx, align 4, !tbaa !33
  %i.eza = getelementptr inbounds nuw [16 x i8], ptr %i.ewg, i64 %i.eyk ; 3 uses
  %i.ezb = load i64, ptr %i.eza, align 8, !tbaa !116
  %i.ezc = add i64 %i.ezb, %indvars.iv3720
  store i64 %i.ezc, ptr %i.eza, align 8, !tbaa !116
  br label %bb.uc

bb.ub:                                            ; preds = %bb.tz
  store i32 0, ptr %i.eyg, align 4, !tbaa !33
  %i.ezd = load i32, ptr %i.ewh, align 4, !tbaa !33
  %i.eze = trunc nuw nsw i64 %indvars.iv3720 to i32 ; 2 uses
  %..i3224 = tail call i32 @llvm.smin.i32(i32 %i.ezd, i32 %i.eze)
  store i32 %..i3224, ptr %i.ewh, align 4, !tbaa !33
  %i.ezf = getelementptr inbounds nuw i8, ptr %i.ewh, i64 8 ; 2 uses
  %i.ezg = load i32, ptr %i.ezf, align 4, !tbaa !33
  %i.ezh = tail call i32 @llvm.smax.i32(i32 %i.ezg, i32 %i.eze)
  store i32 %i.ezh, ptr %i.ezf, align 4, !tbaa !33
  %i.ezi = getelementptr inbounds nuw i8, ptr %i.ewh, i64 4 ; 2 uses
  %i.ezj = load i32, ptr %i.ezi, align 4, !tbaa !33
  %i.ezk = tail call i32 @llvm.smin.i32(i32 %i.ezj, i32 %i.ety)
  store i32 %i.ezk, ptr %i.ezi, align 4, !tbaa !33
  %i.ezl = getelementptr inbounds nuw i8, ptr %i.ewh, i64 12 ; 2 uses
  %i.ezm = load i32, ptr %i.ezl, align 4, !tbaa !33
  %i.ezn = tail call i32 @llvm.smax.i32(i32 %i.ezm, i32 %i.ety)
  store i32 %i.ezn, ptr %i.ezl, align 4, !tbaa !33
  %i.ezo = getelementptr inbounds nuw i8, ptr %i.ewh, i64 16 ; 2 uses
  %i.ezp = load i32, ptr %i.ezo, align 4, !tbaa !33
  %i.ezq = add nsw i32 %i.ezp, 1
  store i32 %i.ezq, ptr %i.ezo, align 4, !tbaa !33
  %i.ezr = load i64, ptr %i.ewg, align 8, !tbaa !116
  %i.ezs = add i64 %i.ezr, %indvars.iv3720
  store i64 %i.ezs, ptr %i.ewg, align 8, !tbaa !116
  br label %bb.uc

bb.uc:                                            ; preds = %bb.ub, %bb.ua
  %.sink4200 = phi ptr [ %i.ewg, %bb.ub ], [ %i.eza, %bb.ua ]
  %i.ezt = getelementptr inbounds nuw i8, ptr %.sink4200, i64 8 ; 2 uses
  %i.ezu = load i64, ptr %i.ezt, align 8, !tbaa !117
  %i.ezv = add i64 %i.ezu, %i.etq
  store i64 %i.ezv, ptr %i.ezt, align 8, !tbaa !117
  %i.ezw = getelementptr inbounds nuw i8, ptr %i.etk, i64 %i.ewl
  %i.ezx = load i8, ptr %i.ezw, align 1, !tbaa !32
  %.not1866 = icmp eq i8 %i.ezx, 0
  %i.ezy = getelementptr inbounds nuw [4 x i8], ptr %i.eto, i64 %i.ewl ; 2 uses
  br i1 %.not1866, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  store i32 %i.eul, ptr %i.ezy, align 4, !tbaa !33
  %i.ezz = load i32, ptr %i.ejd, align 4, !tbaa !96
  %i.faa = icmp slt i32 %i.ezz, 2
  %i.fab = load i64, ptr %i.eje, align 8
  %i.fac = sext i32 %i.eul to i64                 ; 2 uses
  %i.fad = mul i64 %i.fab, %i.fac
  %.sink.idx.i.i3225 = select i1 %i.faa, i64 0, i64 %i.fad
  %.sink.i.i3226 = getelementptr inbounds nuw i8, ptr %i.ewh, i64 %.sink.idx.i.i3225 ; 6 uses
  %i.fae = load i32, ptr %.sink.i.i3226, align 4, !tbaa !33
  %i.faf = trunc nuw nsw i64 %i.ewl to i32        ; 2 uses
  %..i3227 = tail call i32 @llvm.smin.i32(i32 %i.fae, i32 %i.faf)
  store i32 %..i3227, ptr %.sink.i.i3226, align 4, !tbaa !33
  %i.fag = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 8 ; 2 uses
  %i.fah = load i32, ptr %i.fag, align 4, !tbaa !33
  %i.fai = tail call i32 @llvm.smax.i32(i32 %i.fah, i32 %i.faf)
  store i32 %i.fai, ptr %i.fag, align 4, !tbaa !33
  %i.faj = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 4 ; 2 uses
  %i.fak = load i32, ptr %i.faj, align 4, !tbaa !33
  %i.fal = tail call i32 @llvm.smin.i32(i32 %i.fak, i32 %i.etz)
  store i32 %i.fal, ptr %i.faj, align 4, !tbaa !33
  %i.fam = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 12 ; 2 uses
  %i.fan = load i32, ptr %i.fam, align 4, !tbaa !33
  %i.fao = tail call i32 @llvm.smax.i32(i32 %i.fan, i32 %i.etz)
  store i32 %i.fao, ptr %i.fam, align 4, !tbaa !33
  %i.fap = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 16 ; 2 uses
  %i.faq = load i32, ptr %i.fap, align 4, !tbaa !33
  %i.far = add nsw i32 %i.faq, 1
  store i32 %i.far, ptr %i.fap, align 4, !tbaa !33
  %i.fas = getelementptr inbounds nuw [16 x i8], ptr %i.ewg, i64 %i.fac ; 2 uses
  %i.fat = load <2 x i64>, ptr %i.fas, align 8, !tbaa !40
  %i.fau = insertelement <2 x i64> %i.eub, i64 %i.ewl, i64 0
  %i.fav = add <2 x i64> %i.fat, %i.fau
  store <2 x i64> %i.fav, ptr %i.fas, align 8, !tbaa !40
  br label %bb.ug

bb.ue:                                            ; preds = %bb.uc
  store i32 0, ptr %i.ezy, align 4, !tbaa !33
  %i.faw = load i32, ptr %i.ewh, align 4, !tbaa !33
  %i.fax = trunc nuw nsw i64 %i.ewl to i32        ; 2 uses
  %..i3230 = tail call i32 @llvm.smin.i32(i32 %i.faw, i32 %i.fax)
  store i32 %..i3230, ptr %i.ewh, align 4, !tbaa !33
  %i.fay = getelementptr inbounds nuw i8, ptr %i.ewh, i64 8 ; 2 uses
  %i.faz = load i32, ptr %i.fay, align 4, !tbaa !33
  %i.fba = tail call i32 @llvm.smax.i32(i32 %i.faz, i32 %i.fax)
  store i32 %i.fba, ptr %i.fay, align 4, !tbaa !33
  %i.fbb = getelementptr inbounds nuw i8, ptr %i.ewh, i64 4 ; 2 uses
  %i.fbc = load i32, ptr %i.fbb, align 4, !tbaa !33
  %i.fbd = tail call i32 @llvm.smin.i32(i32 %i.fbc, i32 %i.eua)
  store i32 %i.fbd, ptr %i.fbb, align 4, !tbaa !33
  %i.fbe = getelementptr inbounds nuw i8, ptr %i.ewh, i64 12 ; 2 uses
  %i.fbf = load i32, ptr %i.fbe, align 4, !tbaa !33
  %i.fbg = tail call i32 @llvm.smax.i32(i32 %i.fbf, i32 %i.eua)
  store i32 %i.fbg, ptr %i.fbe, align 4, !tbaa !33
  %i.fbh = getelementptr inbounds nuw i8, ptr %i.ewh, i64 16 ; 2 uses
  %i.fbi = load i32, ptr %i.fbh, align 4, !tbaa !33
  %i.fbj = add nsw i32 %i.fbi, 1
  store i32 %i.fbj, ptr %i.fbh, align 4, !tbaa !33
  %i.fbk = load <2 x i64>, ptr %i.ewg, align 8, !tbaa !40
  %i.fbl = insertelement <2 x i64> %i.eub, i64 %i.ewl, i64 0
  %i.fbm = add <2 x i64> %i.fbk, %i.fbl
  store <2 x i64> %i.fbm, ptr %i.ewg, align 8, !tbaa !40
  br label %bb.ug

bb.uf:                                            ; preds = %bb.tq
  store i32 0, ptr %i.eug, align 4, !tbaa !33
  %i.fbn = or disjoint i64 %indvars.iv3720, 1     ; 5 uses
  %i.fbo = getelementptr inbounds nuw [4 x i8], ptr %i.etn, i64 %i.fbn
  store i32 0, ptr %i.fbo, align 4, !tbaa !33
  %i.fbp = getelementptr inbounds nuw [4 x i8], ptr %i.eto, i64 %indvars.iv3720
  store i32 0, ptr %i.fbp, align 4, !tbaa !33
  %i.fbq = getelementptr inbounds nuw [4 x i8], ptr %i.eto, i64 %i.fbn
  store i32 0, ptr %i.fbq, align 4, !tbaa !33
  %i.fbr = load ptr, ptr %i.ejb, align 8, !tbaa !55 ; 6 uses
  %i.fbs = load i32, ptr %i.fbr, align 4, !tbaa !33
  %i.fbt = trunc nuw nsw i64 %indvars.iv3720 to i32 ; 4 uses
  %..i3233 = tail call i32 @llvm.smin.i32(i32 %i.fbs, i32 %i.fbt)
  %i.fbu = getelementptr inbounds nuw i8, ptr %i.fbr, i64 8 ; 2 uses
  %i.fbv = load i32, ptr %i.fbu, align 4, !tbaa !33
  %i.fbw = tail call i32 @llvm.smax.i32(i32 %i.fbv, i32 %i.fbt)
  %i.fbx = getelementptr inbounds nuw i8, ptr %i.fbr, i64 4 ; 2 uses
  %i.fby = load i32, ptr %i.fbx, align 4, !tbaa !33
  %i.fbz = tail call i32 @llvm.smin.i32(i32 %i.fby, i32 %i.etr)
  %i.fca = getelementptr inbounds nuw i8, ptr %i.fbr, i64 12 ; 2 uses
  %i.fcb = load i32, ptr %i.fca, align 4, !tbaa !33
  %i.fcc = tail call i32 @llvm.smax.i32(i32 %i.fcb, i32 %i.etr)
  %i.fcd = getelementptr inbounds nuw i8, ptr %i.fbr, i64 16 ; 2 uses
  %i.fce = load i32, ptr %i.fcd, align 4, !tbaa !33
  %i.fcf = load ptr, ptr %i.ejc, align 8, !tbaa !50 ; 3 uses
  %i.fcg = load i64, ptr %i.fcf, align 8, !tbaa !116
  %i.fch = add i64 %i.fcg, %indvars.iv3720
  %i.fci = getelementptr inbounds nuw i8, ptr %i.fcf, i64 8 ; 2 uses
  %i.fcj = load i64, ptr %i.fci, align 8, !tbaa !117
  %i.fck = trunc nuw nsw i64 %i.fbn to i32        ; 4 uses
  %..i3236 = tail call i32 @llvm.smin.i32(i32 %..i3233, i32 %i.fck)
  %i.fcl = tail call i32 @llvm.umax.i32(i32 %i.fbw, i32 %i.fck)
  %i.fcm = add i64 %i.fch, %i.fbn
  %..i3239 = tail call i32 @llvm.smin.i32(i32 %..i3236, i32 %i.fbt)
  %14 = tail call i32 @llvm.umax.i32(i32 %i.fcl, i32 %i.fbt)
  %15 = tail call i32 @llvm.smin.i32(i32 %i.fbz, i32 %i.ets)
  %i.fcn = tail call i32 @llvm.smax.i32(i32 %i.fcc, i32 %i.ets)
  %i.fco = add i64 %i.fcm, %indvars.iv3720
  %..i3242 = tail call i32 @llvm.smin.i32(i32 %..i3239, i32 %i.fck)
  store i32 %..i3242, ptr %i.fbr, align 4, !tbaa !33
  %16 = tail call i32 @llvm.umax.i32(i32 %14, i32 %i.fck)
  store i32 %16, ptr %i.fbu, align 4, !tbaa !33
  store i32 %15, ptr %i.fbx, align 4, !tbaa !33
  store i32 %i.fcn, ptr %i.fca, align 4, !tbaa !33
  %i.fcp = add nsw i32 %i.fce, 4
  store i32 %i.fcp, ptr %i.fcd, align 4, !tbaa !33
  %i.fcq = add i64 %i.fco, %i.fbn
  store i64 %i.fcq, ptr %i.fcf, align 8, !tbaa !116
  %.reass4164 = add i64 %i.fcj, %invariant.op4163
  store i64 %.reass4164, ptr %i.fci, align 8, !tbaa !117
  br label %bb.ug

bb.ug:                                            ; preds = %bb.uf, %bb.ue, %bb.ud
  %indvars.iv.next3721 = add nuw nsw i64 %indvars.iv3720, 2 ; 2 uses
  %i.fcr = load i32, ptr %i.o, align 4, !tbaa !52 ; 2 uses
  %i.fcs = sext i32 %i.fcr to i64
  %i.fct = icmp slt i64 %indvars.iv.next3721, %i.fcs
  br i1 %i.fct, label %bb.tq, label %._crit_edge3549.loopexit, !llvm.loop !336

.loopexit:                                        ; preds = %._crit_edge3529, %._crit_edge3536, %._crit_edge3542, %._crit_edge3549, %.preheader3288, %.preheader3286, %.preheader3284, %.preheader
  %i.fcu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fcv = load i32, ptr %i.fcu, align 8, !tbaa !95
  %i.fcw = icmp sgt i32 %i.fcv, 0
  br i1 %i.fcw, label %.lr.ph.i3243, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit

.lr.ph.i3243:                                     ; preds = %.loopexit
  %i.fcx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fcy = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fcz = load ptr, ptr %i.fcy, align 8, !tbaa !55
  %i.fda = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.fdb = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.fdc = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.fdd = load ptr, ptr %i.fdc, align 8, !tbaa !55
  %i.fde = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.fdf = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.fdg = load ptr, ptr %i.fdf, align 8
  br label %bb.uh

bb.uh:                                            ; preds = %bb.uk, %.lr.ph.i3243
  %indvars.iv.i3244 = phi i64 [ 0, %.lr.ph.i3243 ], [ %indvars.iv.next.i3248, %bb.uk ] ; 4 uses
  %i.fdh = load i32, ptr %i.fcx, align 4, !tbaa !96
  %i.fdi = icmp slt i32 %i.fdh, 2
  %i.fdj = load i64, ptr %i.fda, align 8
  %i.fdk = mul i64 %i.fdj, %indvars.iv.i3244
  %.sink.idx.i.i3245 = select i1 %i.fdi, i64 0, i64 %i.fdk
  %.sink.i.i3246 = getelementptr inbounds nuw i8, ptr %i.fcz, i64 %.sink.idx.i.i3245 ; 6 uses
  %i.fdl = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 16
  %i.fdm = load i32, ptr %i.fdl, align 4, !tbaa !33 ; 2 uses
  %i.fdn = load i32, ptr %i.fdb, align 4, !tbaa !96
  %i.fdo = icmp slt i32 %i.fdn, 2
  %i.fdp = load i64, ptr %i.fde, align 8
  %i.fdq = mul i64 %i.fdp, %indvars.iv.i3244
  %.sink.idx.i25.i = select i1 %i.fdo, i64 0, i64 %i.fdq
  %.sink.i26.i = getelementptr inbounds nuw i8, ptr %i.fdd, i64 %.sink.idx.i25.i
  %.not.i3247 = icmp eq i32 %i.fdm, 0
  br i1 %.not.i3247, label %bb.uj, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.fdr = uitofp i32 %i.fdm to double
  %i.fds = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8 ; 2 uses
  %i.fdt = load <2 x i32>, ptr %i.fds, align 4, !tbaa !33
  %i.fdu = load <2 x i32>, ptr %.sink.i.i3246, align 4, !tbaa !33
  %i.fdv = add <2 x i32> %i.fdt, splat (i32 1)
  %i.fdw = sub <2 x i32> %i.fdv, %i.fdu
  store <2 x i32> %i.fdw, ptr %i.fds, align 4, !tbaa !33
  %i.fdx = getelementptr inbounds nuw [16 x i8], ptr %i.fdg, i64 %indvars.iv.i3244
  %i.fdy = load <2 x i64>, ptr %i.fdx, align 8, !tbaa !40
  %i.fdz = uitofp <2 x i64> %i.fdy to <2 x double>
  %i.fea = insertelement <2 x double> poison, double %i.fdr, i64 0
  %i.feb = shufflevector <2 x double> %i.fea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fec = fdiv <2 x double> %i.fdz, %i.feb
  br label %bb.uk

bb.uj:                                            ; preds = %bb.uh
  %i.fed = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8
  store i32 0, ptr %i.fed, align 4, !tbaa !33
  %i.fee = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 12
  store i32 0, ptr %i.fee, align 4, !tbaa !33
  store i32 -1, ptr %.sink.i.i3246, align 4, !tbaa !33
  br label %bb.uk

bb.uk:                                            ; preds = %bb.uj, %bb.ui
  %i.fef = phi <2 x double> [ splat (double +qnan), %bb.uj ], [ %i.fec, %bb.ui ]
  store <2 x double> %i.fef, ptr %.sink.i26.i, align 8, !tbaa !98
  %indvars.iv.next.i3248 = add nuw nsw i64 %indvars.iv.i3244, 1 ; 2 uses
  %i.feg = load i32, ptr %i.fcu, align 8, !tbaa !95
  %i.feh = sext i32 %i.feg to i64
  %i.fei = icmp slt i64 %indvars.iv.next.i3248, %i.feh
  br i1 %i.fei, label %bb.uh, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, !llvm.loop !7

_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit: ; preds = %bb.uk, %.loopexit
  %.not.i.i.i3249 = icmp eq ptr %.sroa.03251.0, null
  br i1 %.not.i.i.i3249, label %_ZNSt6vectorIiSaIiEED2Ev.exit3250, label %bb.ul

bb.ul:                                            ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit
  %i.fej = ptrtoint ptr %.sroa.03251.0 to i64
  %i.fek = sub i64 %.sroa.10.0, %i.fej
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.fek) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3250

_ZNSt6vectorIiSaIiEED2Ev.exit3250:                ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, %bb.ul
  ret i32 %.015.lcssa.i

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.tt, %bb.tu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2045.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn1860, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079 ], [ %.pn1858, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076 ], [ %lpad.phi3276, %bb.tu ], [ %lpad.thr_comm.split-lp, %bb.tt ]
  resume { ptr, i32 } %.pn2045.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(460) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.cv::Range", align 4        ; 7 uses
  %12 = alloca %"class.cv::connectedcomponents::LabelingGranaParallel<int, unsigned char, cv::connectedcomponents::CCStatsOp>::FirstScan", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %13 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %14 = alloca %"class.cv::connectedcomponents::LabelingGranaParallel<int, unsigned char, cv::connectedcomponents::CCStatsOp>::SecondScan", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4248) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit93

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !52   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !52
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4249) #16
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %7, align 8, !tbaa !31     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.l
  %i.x = load i64, ptr %i.v, align 8, !tbaa !32
end_hunk_3
begin_hunk_4_@_ZN2cv19connectedcomponents15LabelingBolelliIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.fti = load i16, ptr %i.fth, align 2, !tbaa !54
  %i.ftj = getelementptr inbounds [2 x i8], ptr %i.epy, i64 %i.fih
  store i16 %i.fti, ptr %i.ftj, align 2, !tbaa !54
  br label %bb.ajj

bb.ajc:                                           ; preds = %.preheader5046._crit_edge
  %i.ftk = sext i32 %.lcssa5168 to i64            ; 8 uses
  %i.ftl = getelementptr inbounds i8, ptr %i.epr, i64 %i.ftk
  %i.ftm = load i8, ptr %i.ftl, align 1, !tbaa !32
  %.not3483 = icmp eq i8 %i.ftm, 0
  br i1 %.not3483, label %bb.ahv, label %bb.ajd

bb.ajd:                                           ; preds = %bb.ajc
  %i.ftn = getelementptr i8, ptr %i.ept, i64 %.16.lcssa ; 2 uses
  %i.fto = getelementptr i8, ptr %i.ftn, i64 3
  %i.ftp = load i8, ptr %i.fto, align 1, !tbaa !32
  %.not3486 = icmp eq i8 %i.ftp, 0
  br i1 %.not3486, label %bb.aji, label %bb.aje

bb.aje:                                           ; preds = %bb.ajd
  %i.ftq = getelementptr inbounds i8, ptr %i.epu, i64 %i.ftk
  %i.ftr = load i8, ptr %i.ftq, align 1, !tbaa !32
  %.not3487 = icmp eq i8 %i.ftr, 0
  br i1 %.not3487, label %bb.ajh, label %bb.ajf

bb.ajf:                                           ; preds = %bb.aje
  %i.fts = load i8, ptr %i.ftn, align 1, !tbaa !32
  %.not3488 = icmp eq i8 %i.fts, 0
  br i1 %.not3488, label %bb.ajg, label %bb.aid

bb.ajg:                                           ; preds = %bb.ajf
  %i.ftt = getelementptr inbounds [2 x i8], ptr %i.eqb, i64 %i.ftk
  %i.ftu = load i16, ptr %i.ftt, align 2, !tbaa !54
  %i.ftv = getelementptr inbounds [2 x i8], ptr %i.epy, i64 %.16.lcssa
  %i.ftw = load i16, ptr %i.ftv, align 2, !tbaa !54
  %i.ftx = tail call fastcc noundef zeroext i16 @_ZN2cv19connectedcomponentsL9set_unionItEET_PS2_S2_S2_(ptr noundef %.sroa.05029.0, i16 noundef zeroext %i.ftu, i16 noundef zeroext %i.ftw)
  %i.fty = getelementptr inbounds [2 x i8], ptr %i.epy, i64 %i.ftk
  store i16 %i.ftx, ptr %i.fty, align 2, !tbaa !54
  br label %bb.ajj

bb.ajh:                                           ; preds = %bb.aje
  %i.ftz = getelementptr inbounds [2 x i8], ptr %i.eqb, i64 %i.ftk
  %i.fua = load i16, ptr %i.ftz, align 2, !tbaa !54
  %i.fub = getelementptr inbounds [2 x i8], ptr %i.epy, i64 %.16.lcssa
  %i.fuc = load i16, ptr %i.fub, align 2, !tbaa !54
  %i.fud = tail call fastcc noundef zeroext i16 @_ZN2cv19connectedcomponentsL9set_unionItEET_PS2_S2_S2_(ptr noundef %.sroa.05029.0, i16 noundef zeroext %i.fua, i16 noundef zeroext %i.fuc)
  %i.fue = getelementptr inbounds [2 x i8], ptr %i.epy, i64 %i.ftk
  store i16 %i.fud, ptr %i.fue, align 2, !tbaa !54
  br label %bb.ajj

bb.aji:                                           ; preds = %bb.ajd
  %i.fuf = getelementptr inbounds [2 x i8], ptr %i.epy, i64 %.16.lcssa
  %i.fug = load i16, ptr %i.fuf, align 2, !tbaa !54
  %i.fuh = getelementptr inbounds [2 x i8], ptr %i.epy, i64 %i.ftk
  store i16 %i.fug, ptr %i.fuh, align 2, !tbaa !54
  br label %bb.ajj

bb.ajj:                                           ; preds = %bb.aq, %bb.ajb, %bb.agj, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4935, %bb.agl, %bb.ago, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4938, %bb.agq, %bb.ags, %bb.agv, %bb.agu, %bb.agy, %bb.ahb, %bb.aha, %bb.ahc, %bb.ahh, %bb.ahf, %bb.ahq, %bb.ahp, %bb.aho, %bb.ahl, %bb.ahz, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4941, %bb.ahx, %bb.aht, %bb.ahu, %bb.aih, %bb.aie, %bb.aif, %bb.aig, %bb.ain, %bb.aio, %bb.aik, %bb.ail, %bb.aiw, %bb.aiu, %bb.aiv, %bb.ais, %bb.aji, %bb.ajh, %bb.ajg, %bb.ae, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3865, %bb.ah, %bb.ag, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3874, %bb.ao, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3868, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3871, %._crit_edge5541
  %.124 = phi i16 [ %.153215.lcssa, %._crit_edge5541 ], [ %.102, %bb.ahq ], [ %i.dd, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3865 ], [ %.03200.lcssa, %bb.ae ], [ %i.do, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3868 ], [ %i.dp, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3871 ], [ %i.dw, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3874 ], [ %.33203, %bb.ao ], [ %.23202.ph, %bb.ag ], [ %.23202.ph, %bb.ah ], [ %.23202.ph, %bb.aq ], [ %.115, %bb.agj ], [ %i.fmm, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4935 ], [ %.98.lcssa, %bb.agl ], [ %.117, %bb.ahf ], [ %.118, %bb.ahh ], [ %.113.ph, %bb.agy ], [ %.113.ph, %bb.aha ], [ %.113.ph, %bb.ahb ], [ %.113.ph, %bb.ahc ], [ %.122, %bb.ais ], [ %.122, %bb.aiu ], [ %.122, %bb.aiv ], [ %.122, %bb.aiw ], [ %.113.ph, %bb.ajb ], [ %.119, %bb.aho ], [ %.119, %bb.ahp ], [ %.116, %bb.agu ], [ %.116, %bb.agv ], [ %.110.ph, %bb.aik ], [ %.110.ph, %bb.ail ], [ %.110.ph, %bb.ain ], [ %.110.ph, %bb.aio ], [ %.121, %bb.aie ], [ %.121, %bb.aif ], [ %.114.ph, %bb.ajg ], [ %.114.ph, %bb.ajh ], [ %.114.ph, %bb.aji ], [ %.120, %bb.ahx ], [ %i.fqk, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4941 ], [ %.120, %bb.ahz ], [ %.107, %bb.aig ], [ %.107, %bb.aih ], [ %.105, %bb.aht ], [ %.105, %bb.ahu ], [ %.102, %bb.ago ], [ %.102, %bb.agq ], [ %i.fnd, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4938 ], [ %.102, %bb.ags ], [ %.102, %bb.ahl ] ; 3 uses
  %i.fui = icmp ugt i16 %.124, 1
  br i1 %i.fui, label %.lr.ph.preheader.i, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.ajj
  %wide.trip.count.i = zext i16 %.124 to i64
  %i.fuj = add nsw i64 %wide.trip.count.i, -1     ; 3 uses
  %xtraiter = and i64 %i.fuj, 1
  %i.fuk = icmp eq i16 %.124, 2
  br i1 %i.fuk, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.fuj, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ajo, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.ajo ] ; 5 uses
  %.01517.i = phi i16 [ 1, %.lr.ph.preheader.i.new ], [ %.1.i4942.1, %bb.ajo ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.ajo ]
  %i.ful = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %indvars.iv.i ; 2 uses
  %i.fum = load i16, ptr %i.ful, align 2, !tbaa !54
  %i.fun = zext i16 %i.fum to i64                 ; 2 uses
  %i.fuo = icmp samesign ugt i64 %indvars.iv.i, %i.fun
  br i1 %i.fuo, label %bb.ajk, label %bb.ajl

bb.ajk:                                           ; preds = %.lr.ph.i
  %i.fup = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.fun
  %i.fuq = load i16, ptr %i.fup, align 2, !tbaa !54
  br label %.lr.ph.i.1

bb.ajl:                                           ; preds = %.lr.ph.i
  %i.fur = add i16 %.01517.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ajl, %bb.ajk
  %.01517.sink.i = phi i16 [ %i.fuq, %bb.ajk ], [ %.01517.i, %bb.ajl ]
  %.1.i4942 = phi i16 [ %.01517.i, %bb.ajk ], [ %i.fur, %bb.ajl ] ; 3 uses
  store i16 %.01517.sink.i, ptr %i.ful, align 2, !tbaa !54
  %i.fus = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %indvars.iv.i
  %i.fut = getelementptr inbounds nuw i8, ptr %i.fus, i64 2 ; 2 uses
  %i.fuu = load i16, ptr %i.fut, align 2, !tbaa !54
  %i.fuv = zext i16 %i.fuu to i64                 ; 2 uses
  %.not7297 = icmp samesign ult i64 %indvars.iv.i, %i.fuv
  br i1 %.not7297, label %bb.ajm, label %bb.ajn

bb.ajm:                                           ; preds = %.lr.ph.i.1
  %i.fuw = add i16 %.1.i4942, 1
  br label %bb.ajo

bb.ajn:                                           ; preds = %.lr.ph.i.1
  %i.fux = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.fuv
  %i.fuy = load i16, ptr %i.fux, align 2, !tbaa !54
  br label %bb.ajo

bb.ajo:                                           ; preds = %bb.ajn, %bb.ajm
  %.01517.sink.i.1 = phi i16 [ %i.fuy, %bb.ajn ], [ %.1.i4942, %bb.ajm ]
  %.1.i4942.1 = phi i16 [ %.1.i4942, %bb.ajn ], [ %i.fuw, %bb.ajm ] ; 3 uses
  store i16 %.01517.sink.i.1, ptr %i.fut, align 2, !tbaa !54
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa: ; preds = %bb.ajo
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01517.i.epil.init = phi i16 [ 1, %.lr.ph.preheader.i ], [ %.1.i4942.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod7296 = trunc i64 %i.fuj to i1
  tail call void @llvm.assume(i1 %lcmp.mod7296)
  %i.fuz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fva = load i16, ptr %i.fuz, align 2, !tbaa !54
  %i.fvb = zext i16 %i.fva to i64                 ; 2 uses
  %i.fvc = icmp samesign ugt i64 %indvars.iv.i.epil.init, %i.fvb
  br i1 %i.fvc, label %bb.ajq, label %bb.ajp

bb.ajp:                                           ; preds = %.lr.ph.i.epil.preheader
  %i.fvd = add i16 %.01517.i.epil.init, 1
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa

bb.ajq:                                           ; preds = %.lr.ph.i.epil.preheader
  %i.fve = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.fvb
  %i.fvf = load i16, ptr %i.fve, align 2, !tbaa !54
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa: ; preds = %bb.ajq, %bb.ajp
  %.01517.sink.i.epil = phi i16 [ %i.fvf, %bb.ajq ], [ %.01517.i.epil.init, %bb.ajp ]
  %.1.i4942.epil = phi i16 [ %.01517.i.epil.init, %bb.ajq ], [ %i.fvd, %bb.ajp ]
  store i16 %.01517.sink.i.epil, ptr %i.fuz, align 2, !tbaa !54
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit: ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, %bb.ajj
  %.015.lcssa.i = phi i16 [ 1, %bb.ajj ], [ %.1.i4942.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ], [ %.1.i4942.epil, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa ] ; 2 uses
  %i.fvg = zext i16 %.015.lcssa.i to i32
  invoke void @_ZN2cv19connectedcomponents9CCStatsOp4initEi(ptr noundef nonnull align 8 dereferenceable(460) %4, i32 noundef %i.fvg)
          to label %.preheader unwind label %bb.ald

.preheader:                                       ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit
  %i.fvh = icmp sgt i32 %i.b, 1
  br i1 %i.fvh, label %.lr.ph5610, label %._crit_edge5611

.lr.ph5610:                                       ; preds = %.preheader
  %i.fvi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fvj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fvk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fvl = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.fvm = icmp sgt i32 %i.n, 1
  %i.fvn = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 6 uses
  %i.fvo = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.fvp = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 6 uses
  %i.fvq = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 6 uses
  %i.fvr = sext i32 %i.aj to i64
  %i.fvs = zext nneg i32 %i.ag to i64
  %.pre6052 = load ptr, ptr %i.fvi, align 8, !tbaa !55
  %.pre6053 = load ptr, ptr %i.fvk, align 8, !tbaa !55
  br label %bb.ajr

bb.ajr:                                           ; preds = %.lr.ph5610, %bb.akp
  %indvars.iv6023 = phi i64 [ 0, %.lr.ph5610 ], [ %indvars.iv.next6024, %bb.akp ] ; 19 uses
  %i.fvt = load i64, ptr %i.fvj, align 8, !tbaa !40 ; 2 uses
  %i.fvu = mul i64 %i.fvt, %indvars.iv6023
  %i.fvv = getelementptr inbounds nuw i8, ptr %.pre6052, i64 %i.fvu ; 4 uses
  %i.fvw = getelementptr inbounds nuw i8, ptr %i.fvv, i64 %i.fvt ; 3 uses
  %i.fvx = load i64, ptr %i.fvl, align 8, !tbaa !40 ; 2 uses
  %i.fvy = mul i64 %i.fvx, %indvars.iv6023
  %i.fvz = getelementptr inbounds nuw i8, ptr %.pre6053, i64 %i.fvy ; 5 uses
  %i.fwa = getelementptr inbounds nuw i8, ptr %i.fvz, i64 %i.fvx ; 6 uses
  br i1 %i.fvm, label %.lr.ph5606, label %._crit_edge5607

.lr.ph5606:                                       ; preds = %bb.ajr
  %i.fwb = or disjoint i64 %indvars.iv6023, 1     ; 8 uses
  %i.fwc = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.fwd = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.fwe = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.fwf = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.fwg = trunc nuw nsw i64 %i.fwb to i32        ; 2 uses
  %i.fwh = trunc nuw nsw i64 %i.fwb to i32        ; 2 uses
  %i.fwi = trunc nuw nsw i64 %i.fwb to i32        ; 2 uses
  %i.fwj = trunc nuw nsw i64 %i.fwb to i32        ; 2 uses
  %i.fwk = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.fwl = trunc nuw nsw i64 %i.fwb to i32        ; 2 uses
  %invariant.op6746 = add nuw i64 %indvars.iv6023, %i.fwb
  %invariant.op6700 = shl i64 %invariant.op6746, 1
  %i.fwm = insertelement <2 x i64> poison, i64 %i.fwb, i64 1 ; 2 uses
  br label %bb.ajs

bb.ajs:                                           ; preds = %.lr.ph5606, %bb.akg
  %indvars.iv6020 = phi i64 [ 0, %.lr.ph5606 ], [ %indvars.iv.next6021, %bb.akg ] ; 19 uses
  %i.fwn = getelementptr inbounds nuw [2 x i8], ptr %i.fvz, i64 %indvars.iv6020 ; 3 uses
  %i.fwo = load i16, ptr %i.fwn, align 2, !tbaa !54 ; 2 uses
  %.not3837 = icmp eq i16 %i.fwo, 0
  br i1 %.not3837, label %bb.akf, label %bb.ajt

bb.ajt:                                           ; preds = %bb.ajs
  %i.fwp = zext i16 %i.fwo to i64
  %i.fwq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.fwp
  %i.fwr = load i16, ptr %i.fwq, align 2, !tbaa !54 ; 8 uses
  %i.fws = getelementptr inbounds nuw i8, ptr %i.fvv, i64 %indvars.iv6020
  %i.fwt = load i8, ptr %i.fws, align 1, !tbaa !32
  %.not3838 = icmp eq i8 %i.fwt, 0
  br i1 %.not3838, label %bb.ajv, label %bb.aju

bb.aju:                                           ; preds = %bb.ajt
  store i16 %i.fwr, ptr %i.fwn, align 2, !tbaa !54
  %i.fwu = load i32, ptr %i.fvn, align 4, !tbaa !96
  %i.fwv = icmp slt i32 %i.fwu, 2
  %i.fww = load ptr, ptr %i.fvo, align 8, !tbaa !55 ; 2 uses
  %i.fwx = load i64, ptr %i.fvp, align 8
  %i.fwy = zext i16 %i.fwr to i64                 ; 2 uses
  %i.fwz = mul i64 %i.fwx, %i.fwy
  %.sink.idx.i.i = select i1 %i.fwv, i64 0, i64 %i.fwz
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.fww, i64 %.sink.idx.i.i ; 6 uses
  %i.fxa = load i32, ptr %.sink.i.i, align 4, !tbaa !33
  %i.fxb = trunc nuw nsw i64 %indvars.iv6020 to i32 ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.fxa, i32 %i.fxb)
  store i32 %..i, ptr %.sink.i.i, align 4, !tbaa !33
  %i.fxc = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  %i.fxd = load i32, ptr %i.fxc, align 4, !tbaa !33
  %i.fxe = tail call i32 @llvm.smax.i32(i32 %i.fxd, i32 %i.fxb)
  store i32 %i.fxe, ptr %i.fxc, align 4, !tbaa !33
  %i.fxf = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 4 ; 2 uses
  %i.fxg = load i32, ptr %i.fxf, align 4, !tbaa !33
  %i.fxh = tail call i32 @llvm.smin.i32(i32 %i.fxg, i32 %i.fwc)
  store i32 %i.fxh, ptr %i.fxf, align 4, !tbaa !33
  %i.fxi = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 12 ; 2 uses
  %i.fxj = load i32, ptr %i.fxi, align 4, !tbaa !33
  %i.fxk = tail call i32 @llvm.smax.i32(i32 %i.fxj, i32 %i.fwc)
  store i32 %i.fxk, ptr %i.fxi, align 4, !tbaa !33
  %i.fxl = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16 ; 2 uses
  %i.fxm = load i32, ptr %i.fxl, align 4, !tbaa !33
  %i.fxn = add nsw i32 %i.fxm, 1
  store i32 %i.fxn, ptr %i.fxl, align 4, !tbaa !33
  %i.fxo = load ptr, ptr %i.fvq, align 8, !tbaa !50 ; 2 uses
  %i.fxp = getelementptr inbounds nuw [16 x i8], ptr %i.fxo, i64 %i.fwy ; 3 uses
  %i.fxq = load i64, ptr %i.fxp, align 8, !tbaa !116
  %i.fxr = add i64 %i.fxq, %indvars.iv6020
  store i64 %i.fxr, ptr %i.fxp, align 8, !tbaa !116
  br label %bb.ajw

bb.ajv:                                           ; preds = %bb.ajt
  store i16 0, ptr %i.fwn, align 2, !tbaa !54
  %i.fxs = load ptr, ptr %i.fvo, align 8, !tbaa !55 ; 7 uses
  %i.fxt = load i32, ptr %i.fxs, align 4, !tbaa !33
  %i.fxu = trunc nuw nsw i64 %indvars.iv6020 to i32 ; 2 uses
  %..i4945 = tail call i32 @llvm.smin.i32(i32 %i.fxt, i32 %i.fxu)
  store i32 %..i4945, ptr %i.fxs, align 4, !tbaa !33
  %i.fxv = getelementptr inbounds nuw i8, ptr %i.fxs, i64 8 ; 2 uses
  %i.fxw = load i32, ptr %i.fxv, align 4, !tbaa !33
  %i.fxx = tail call i32 @llvm.smax.i32(i32 %i.fxw, i32 %i.fxu)
  store i32 %i.fxx, ptr %i.fxv, align 4, !tbaa !33
  %i.fxy = getelementptr inbounds nuw i8, ptr %i.fxs, i64 4 ; 2 uses
  %i.fxz = load i32, ptr %i.fxy, align 4, !tbaa !33
  %i.fya = tail call i32 @llvm.smin.i32(i32 %i.fxz, i32 %i.fwd)
  store i32 %i.fya, ptr %i.fxy, align 4, !tbaa !33
  %i.fyb = getelementptr inbounds nuw i8, ptr %i.fxs, i64 12 ; 2 uses
  %i.fyc = load i32, ptr %i.fyb, align 4, !tbaa !33
  %i.fyd = tail call i32 @llvm.smax.i32(i32 %i.fyc, i32 %i.fwd)
  store i32 %i.fyd, ptr %i.fyb, align 4, !tbaa !33
  %i.fye = getelementptr inbounds nuw i8, ptr %i.fxs, i64 16 ; 2 uses
  %i.fyf = load i32, ptr %i.fye, align 4, !tbaa !33
  %i.fyg = add nsw i32 %i.fyf, 1
  store i32 %i.fyg, ptr %i.fye, align 4, !tbaa !33
  %i.fyh = load ptr, ptr %i.fvq, align 8, !tbaa !50 ; 4 uses
  %i.fyi = load i64, ptr %i.fyh, align 8, !tbaa !116
  %i.fyj = add i64 %i.fyi, %indvars.iv6020
  store i64 %i.fyj, ptr %i.fyh, align 8, !tbaa !116
  br label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv, %bb.aju
  %.sink6720 = phi ptr [ %i.fyh, %bb.ajv ], [ %i.fxp, %bb.aju ]
  %i.fyk = phi ptr [ %i.fyh, %bb.ajv ], [ %i.fxo, %bb.aju ] ; 11 uses
  %i.fyl = phi ptr [ %i.fxs, %bb.ajv ], [ %i.fww, %bb.aju ] ; 21 uses
  %i.fym = getelementptr inbounds nuw i8, ptr %.sink6720, i64 8 ; 2 uses
  %i.fyn = load i64, ptr %i.fym, align 8, !tbaa !117
  %i.fyo = add i64 %i.fyn, %indvars.iv6023
  store i64 %i.fyo, ptr %i.fym, align 8, !tbaa !117
  %i.fyp = or disjoint i64 %indvars.iv6020, 1     ; 12 uses
  %i.fyq = getelementptr inbounds nuw i8, ptr %i.fvv, i64 %i.fyp
  %i.fyr = load i8, ptr %i.fyq, align 1, !tbaa !32
  %.not3839 = icmp eq i8 %i.fyr, 0
  %i.fys = getelementptr inbounds nuw [2 x i8], ptr %i.fvz, i64 %i.fyp ; 2 uses
  br i1 %.not3839, label %bb.ajy, label %bb.ajx

bb.ajx:                                           ; preds = %bb.ajw
  store i16 %i.fwr, ptr %i.fys, align 2, !tbaa !54
  %i.fyt = load i32, ptr %i.fvn, align 4, !tbaa !96
  %i.fyu = icmp slt i32 %i.fyt, 2
  %i.fyv = load i64, ptr %i.fvp, align 8
  %i.fyw = zext i16 %i.fwr to i64                 ; 2 uses
  %i.fyx = mul i64 %i.fyv, %i.fyw
  %.sink.idx.i.i4946 = select i1 %i.fyu, i64 0, i64 %i.fyx
  %.sink.i.i4947 = getelementptr inbounds nuw i8, ptr %i.fyl, i64 %.sink.idx.i.i4946 ; 6 uses
  %i.fyy = load i32, ptr %.sink.i.i4947, align 4, !tbaa !33
  %i.fyz = trunc nuw nsw i64 %i.fyp to i32        ; 2 uses
  %..i4948 = tail call i32 @llvm.smin.i32(i32 %i.fyy, i32 %i.fyz)
  store i32 %..i4948, ptr %.sink.i.i4947, align 4, !tbaa !33
  %i.fza = getelementptr inbounds nuw i8, ptr %.sink.i.i4947, i64 8 ; 2 uses
  %i.fzb = load i32, ptr %i.fza, align 4, !tbaa !33
  %i.fzc = tail call i32 @llvm.smax.i32(i32 %i.fzb, i32 %i.fyz)
  store i32 %i.fzc, ptr %i.fza, align 4, !tbaa !33
  %i.fzd = getelementptr inbounds nuw i8, ptr %.sink.i.i4947, i64 4 ; 2 uses
  %i.fze = load i32, ptr %i.fzd, align 4, !tbaa !33
  %i.fzf = tail call i32 @llvm.smin.i32(i32 %i.fze, i32 %i.fwe)
  store i32 %i.fzf, ptr %i.fzd, align 4, !tbaa !33
  %i.fzg = getelementptr inbounds nuw i8, ptr %.sink.i.i4947, i64 12 ; 2 uses
  %i.fzh = load i32, ptr %i.fzg, align 4, !tbaa !33
  %i.fzi = tail call i32 @llvm.smax.i32(i32 %i.fzh, i32 %i.fwe)
  store i32 %i.fzi, ptr %i.fzg, align 4, !tbaa !33
  %i.fzj = getelementptr inbounds nuw i8, ptr %.sink.i.i4947, i64 16 ; 2 uses
  %i.fzk = load i32, ptr %i.fzj, align 4, !tbaa !33
  %i.fzl = add nsw i32 %i.fzk, 1
  store i32 %i.fzl, ptr %i.fzj, align 4, !tbaa !33
  %i.fzm = getelementptr inbounds nuw [16 x i8], ptr %i.fyk, i64 %i.fyw ; 3 uses
  %i.fzn = load i64, ptr %i.fzm, align 8, !tbaa !116
  %i.fzo = add i64 %i.fzn, %i.fyp
  store i64 %i.fzo, ptr %i.fzm, align 8, !tbaa !116
  br label %bb.ajz

bb.ajy:                                           ; preds = %bb.ajw
  store i16 0, ptr %i.fys, align 2, !tbaa !54
  %i.fzp = load i32, ptr %i.fyl, align 4, !tbaa !33
  %i.fzq = trunc nuw nsw i64 %i.fyp to i32        ; 2 uses
  %..i4951 = tail call i32 @llvm.smin.i32(i32 %i.fzp, i32 %i.fzq)
  store i32 %..i4951, ptr %i.fyl, align 4, !tbaa !33
  %i.fzr = getelementptr inbounds nuw i8, ptr %i.fyl, i64 8 ; 2 uses
  %i.fzs = load i32, ptr %i.fzr, align 4, !tbaa !33
  %i.fzt = tail call i32 @llvm.smax.i32(i32 %i.fzs, i32 %i.fzq)
  store i32 %i.fzt, ptr %i.fzr, align 4, !tbaa !33
  %i.fzu = getelementptr inbounds nuw i8, ptr %i.fyl, i64 4 ; 2 uses
  %i.fzv = load i32, ptr %i.fzu, align 4, !tbaa !33
  %i.fzw = tail call i32 @llvm.smin.i32(i32 %i.fzv, i32 %i.fwf)
  store i32 %i.fzw, ptr %i.fzu, align 4, !tbaa !33
  %i.fzx = getelementptr inbounds nuw i8, ptr %i.fyl, i64 12 ; 2 uses
  %i.fzy = load i32, ptr %i.fzx, align 4, !tbaa !33
  %i.fzz = tail call i32 @llvm.smax.i32(i32 %i.fzy, i32 %i.fwf)
  store i32 %i.fzz, ptr %i.fzx, align 4, !tbaa !33
  %i.gaa = getelementptr inbounds nuw i8, ptr %i.fyl, i64 16 ; 2 uses
  %i.gab = load i32, ptr %i.gaa, align 4, !tbaa !33
  %i.gac = add nsw i32 %i.gab, 1
  store i32 %i.gac, ptr %i.gaa, align 4, !tbaa !33
  %i.gad = load i64, ptr %i.fyk, align 8, !tbaa !116
  %i.gae = add i64 %i.gad, %i.fyp
  store i64 %i.gae, ptr %i.fyk, align 8, !tbaa !116
  br label %bb.ajz

bb.ajz:                                           ; preds = %bb.ajy, %bb.ajx
  %.sink6725 = phi ptr [ %i.fyk, %bb.ajy ], [ %i.fzm, %bb.ajx ]
  %i.gaf = getelementptr inbounds nuw i8, ptr %.sink6725, i64 8 ; 2 uses
  %i.gag = load i64, ptr %i.gaf, align 8, !tbaa !117
  %i.gah = add i64 %i.gag, %indvars.iv6023
  store i64 %i.gah, ptr %i.gaf, align 8, !tbaa !117
  %i.gai = getelementptr inbounds nuw i8, ptr %i.fvw, i64 %indvars.iv6020
  %i.gaj = load i8, ptr %i.gai, align 1, !tbaa !32
  %.not3840 = icmp eq i8 %i.gaj, 0
  %i.gak = getelementptr inbounds nuw [2 x i8], ptr %i.fwa, i64 %indvars.iv6020 ; 2 uses
  br i1 %.not3840, label %bb.akb, label %bb.aka

bb.aka:                                           ; preds = %bb.ajz
  store i16 %i.fwr, ptr %i.gak, align 2, !tbaa !54
  %i.gal = load i32, ptr %i.fvn, align 4, !tbaa !96
  %i.gam = icmp slt i32 %i.gal, 2
  %i.gan = load i64, ptr %i.fvp, align 8
  %i.gao = zext i16 %i.fwr to i64                 ; 2 uses
  %i.gap = mul i64 %i.gan, %i.gao
  %.sink.idx.i.i4952 = select i1 %i.gam, i64 0, i64 %i.gap
  %.sink.i.i4953 = getelementptr inbounds nuw i8, ptr %i.fyl, i64 %.sink.idx.i.i4952 ; 6 uses
  %i.gaq = load i32, ptr %.sink.i.i4953, align 4, !tbaa !33
  %i.gar = trunc nuw nsw i64 %indvars.iv6020 to i32 ; 2 uses
  %..i4954 = tail call i32 @llvm.smin.i32(i32 %i.gaq, i32 %i.gar)
  store i32 %..i4954, ptr %.sink.i.i4953, align 4, !tbaa !33
  %i.gas = getelementptr inbounds nuw i8, ptr %.sink.i.i4953, i64 8 ; 2 uses
  %i.gat = load i32, ptr %i.gas, align 4, !tbaa !33
  %i.gau = tail call i32 @llvm.smax.i32(i32 %i.gat, i32 %i.gar)
  store i32 %i.gau, ptr %i.gas, align 4, !tbaa !33
  %i.gav = getelementptr inbounds nuw i8, ptr %.sink.i.i4953, i64 4 ; 2 uses
  %i.gaw = load i32, ptr %i.gav, align 4, !tbaa !33
  %i.gax = tail call i32 @llvm.smin.i32(i32 %i.gaw, i32 %i.fwg)
  store i32 %i.gax, ptr %i.gav, align 4, !tbaa !33
  %i.gay = getelementptr inbounds nuw i8, ptr %.sink.i.i4953, i64 12 ; 2 uses
  %i.gaz = load i32, ptr %i.gay, align 4, !tbaa !33
  %i.gba = tail call i32 @llvm.smax.i32(i32 %i.gaz, i32 %i.fwg)
  store i32 %i.gba, ptr %i.gay, align 4, !tbaa !33
  %i.gbb = getelementptr inbounds nuw i8, ptr %.sink.i.i4953, i64 16 ; 2 uses
  %i.gbc = load i32, ptr %i.gbb, align 4, !tbaa !33
  %i.gbd = add nsw i32 %i.gbc, 1
  store i32 %i.gbd, ptr %i.gbb, align 4, !tbaa !33
  %i.gbe = getelementptr inbounds nuw [16 x i8], ptr %i.fyk, i64 %i.gao ; 3 uses
  %i.gbf = load i64, ptr %i.gbe, align 8, !tbaa !116
  %i.gbg = add i64 %i.gbf, %indvars.iv6020
  store i64 %i.gbg, ptr %i.gbe, align 8, !tbaa !116
  br label %bb.akc

bb.akb:                                           ; preds = %bb.ajz
  store i16 0, ptr %i.gak, align 2, !tbaa !54
  %i.gbh = load i32, ptr %i.fyl, align 4, !tbaa !33
  %i.gbi = trunc nuw nsw i64 %indvars.iv6020 to i32 ; 2 uses
  %..i4957 = tail call i32 @llvm.smin.i32(i32 %i.gbh, i32 %i.gbi)
  store i32 %..i4957, ptr %i.fyl, align 4, !tbaa !33
  %i.gbj = getelementptr inbounds nuw i8, ptr %i.fyl, i64 8 ; 2 uses
  %i.gbk = load i32, ptr %i.gbj, align 4, !tbaa !33
  %i.gbl = tail call i32 @llvm.smax.i32(i32 %i.gbk, i32 %i.gbi)
  store i32 %i.gbl, ptr %i.gbj, align 4, !tbaa !33
  %i.gbm = getelementptr inbounds nuw i8, ptr %i.fyl, i64 4 ; 2 uses
  %i.gbn = load i32, ptr %i.gbm, align 4, !tbaa !33
  %i.gbo = tail call i32 @llvm.smin.i32(i32 %i.gbn, i32 %i.fwh)
  store i32 %i.gbo, ptr %i.gbm, align 4, !tbaa !33
  %i.gbp = getelementptr inbounds nuw i8, ptr %i.fyl, i64 12 ; 2 uses
  %i.gbq = load i32, ptr %i.gbp, align 4, !tbaa !33
  %i.gbr = tail call i32 @llvm.smax.i32(i32 %i.gbq, i32 %i.fwh)
  store i32 %i.gbr, ptr %i.gbp, align 4, !tbaa !33
  %i.gbs = getelementptr inbounds nuw i8, ptr %i.fyl, i64 16 ; 2 uses
  %i.gbt = load i32, ptr %i.gbs, align 4, !tbaa !33
  %i.gbu = add nsw i32 %i.gbt, 1
  store i32 %i.gbu, ptr %i.gbs, align 4, !tbaa !33
  %i.gbv = load i64, ptr %i.fyk, align 8, !tbaa !116
  %i.gbw = add i64 %i.gbv, %indvars.iv6020
  store i64 %i.gbw, ptr %i.fyk, align 8, !tbaa !116
  br label %bb.akc

bb.akc:                                           ; preds = %bb.akb, %bb.aka
  %.sink6730 = phi ptr [ %i.fyk, %bb.akb ], [ %i.gbe, %bb.aka ]
  %i.gbx = getelementptr inbounds nuw i8, ptr %.sink6730, i64 8 ; 2 uses
  %i.gby = load i64, ptr %i.gbx, align 8, !tbaa !117
  %i.gbz = add i64 %i.gby, %i.fwb
  store i64 %i.gbz, ptr %i.gbx, align 8, !tbaa !117
  %i.gca = getelementptr inbounds nuw i8, ptr %i.fvw, i64 %i.fyp
  %i.gcb = load i8, ptr %i.gca, align 1, !tbaa !32
  %.not3841 = icmp eq i8 %i.gcb, 0
  %i.gcc = getelementptr inbounds nuw [2 x i8], ptr %i.fwa, i64 %i.fyp ; 2 uses
  br i1 %.not3841, label %bb.ake, label %bb.akd

bb.akd:                                           ; preds = %bb.akc
  store i16 %i.fwr, ptr %i.gcc, align 2, !tbaa !54
  %i.gcd = load i32, ptr %i.fvn, align 4, !tbaa !96
  %i.gce = icmp slt i32 %i.gcd, 2
  %i.gcf = load i64, ptr %i.fvp, align 8
  %i.gcg = zext i16 %i.fwr to i64                 ; 2 uses
  %i.gch = mul i64 %i.gcf, %i.gcg
  %.sink.idx.i.i4958 = select i1 %i.gce, i64 0, i64 %i.gch
  %.sink.i.i4959 = getelementptr inbounds nuw i8, ptr %i.fyl, i64 %.sink.idx.i.i4958 ; 6 uses
  %i.gci = load i32, ptr %.sink.i.i4959, align 4, !tbaa !33
  %i.gcj = trunc nuw nsw i64 %i.fyp to i32        ; 2 uses
  %..i4960 = tail call i32 @llvm.smin.i32(i32 %i.gci, i32 %i.gcj)
  store i32 %..i4960, ptr %.sink.i.i4959, align 4, !tbaa !33
  %i.gck = getelementptr inbounds nuw i8, ptr %.sink.i.i4959, i64 8 ; 2 uses
  %i.gcl = load i32, ptr %i.gck, align 4, !tbaa !33
  %i.gcm = tail call i32 @llvm.smax.i32(i32 %i.gcl, i32 %i.gcj)
  store i32 %i.gcm, ptr %i.gck, align 4, !tbaa !33
  %i.gcn = getelementptr inbounds nuw i8, ptr %.sink.i.i4959, i64 4 ; 2 uses
  %i.gco = load i32, ptr %i.gcn, align 4, !tbaa !33
  %i.gcp = tail call i32 @llvm.smin.i32(i32 %i.gco, i32 %i.fwi)
  store i32 %i.gcp, ptr %i.gcn, align 4, !tbaa !33
  %i.gcq = getelementptr inbounds nuw i8, ptr %.sink.i.i4959, i64 12 ; 2 uses
  %i.gcr = load i32, ptr %i.gcq, align 4, !tbaa !33
  %i.gcs = tail call i32 @llvm.smax.i32(i32 %i.gcr, i32 %i.fwi)
  store i32 %i.gcs, ptr %i.gcq, align 4, !tbaa !33
  %i.gct = getelementptr inbounds nuw i8, ptr %.sink.i.i4959, i64 16 ; 2 uses
  %i.gcu = load i32, ptr %i.gct, align 4, !tbaa !33
  %i.gcv = add nsw i32 %i.gcu, 1
  store i32 %i.gcv, ptr %i.gct, align 4, !tbaa !33
  %i.gcw = getelementptr inbounds nuw [16 x i8], ptr %i.fyk, i64 %i.gcg ; 2 uses
  %i.gcx = load <2 x i64>, ptr %i.gcw, align 8, !tbaa !40
  %i.gcy = insertelement <2 x i64> %i.fwm, i64 %i.fyp, i64 0
  %i.gcz = add <2 x i64> %i.gcx, %i.gcy
  store <2 x i64> %i.gcz, ptr %i.gcw, align 8, !tbaa !40
  br label %bb.akg

bb.ake:                                           ; preds = %bb.akc
  store i16 0, ptr %i.gcc, align 2, !tbaa !54
  %i.gda = load i32, ptr %i.fyl, align 4, !tbaa !33
  %i.gdb = trunc nuw nsw i64 %i.fyp to i32        ; 2 uses
  %..i4963 = tail call i32 @llvm.smin.i32(i32 %i.gda, i32 %i.gdb)
  store i32 %..i4963, ptr %i.fyl, align 4, !tbaa !33
  %i.gdc = getelementptr inbounds nuw i8, ptr %i.fyl, i64 8 ; 2 uses
  %i.gdd = load i32, ptr %i.gdc, align 4, !tbaa !33
  %i.gde = tail call i32 @llvm.smax.i32(i32 %i.gdd, i32 %i.gdb)
  store i32 %i.gde, ptr %i.gdc, align 4, !tbaa !33
  %i.gdf = getelementptr inbounds nuw i8, ptr %i.fyl, i64 4 ; 2 uses
  %i.gdg = load i32, ptr %i.gdf, align 4, !tbaa !33
  %i.gdh = tail call i32 @llvm.smin.i32(i32 %i.gdg, i32 %i.fwj)
  store i32 %i.gdh, ptr %i.gdf, align 4, !tbaa !33
  %i.gdi = getelementptr inbounds nuw i8, ptr %i.fyl, i64 12 ; 2 uses
  %i.gdj = load i32, ptr %i.gdi, align 4, !tbaa !33
  %i.gdk = tail call i32 @llvm.smax.i32(i32 %i.gdj, i32 %i.fwj)
  store i32 %i.gdk, ptr %i.gdi, align 4, !tbaa !33
  %i.gdl = getelementptr inbounds nuw i8, ptr %i.fyl, i64 16 ; 2 uses
  %i.gdm = load i32, ptr %i.gdl, align 4, !tbaa !33
  %i.gdn = add nsw i32 %i.gdm, 1
  store i32 %i.gdn, ptr %i.gdl, align 4, !tbaa !33
  %i.gdo = load <2 x i64>, ptr %i.fyk, align 8, !tbaa !40
  %i.gdp = insertelement <2 x i64> %i.fwm, i64 %i.fyp, i64 0
  %i.gdq = add <2 x i64> %i.gdo, %i.gdp
  store <2 x i64> %i.gdq, ptr %i.fyk, align 8, !tbaa !40
  br label %bb.akg

bb.akf:                                           ; preds = %bb.ajs
  %i.gdr = load ptr, ptr %i.fvo, align 8, !tbaa !55 ; 6 uses
  %i.gds = load i32, ptr %i.gdr, align 4, !tbaa !33
  %i.gdt = trunc nuw nsw i64 %indvars.iv6020 to i32 ; 4 uses
  %..i4966 = tail call i32 @llvm.smin.i32(i32 %i.gds, i32 %i.gdt)
  %i.gdu = getelementptr inbounds nuw i8, ptr %i.gdr, i64 8 ; 2 uses
  %i.gdv = load i32, ptr %i.gdu, align 4, !tbaa !33
  %i.gdw = tail call i32 @llvm.smax.i32(i32 %i.gdv, i32 %i.gdt)
  %i.gdx = getelementptr inbounds nuw i8, ptr %i.gdr, i64 4 ; 2 uses
  %i.gdy = load i32, ptr %i.gdx, align 4, !tbaa !33
  %i.gdz = tail call i32 @llvm.smin.i32(i32 %i.gdy, i32 %i.fwk)
  %i.gea = getelementptr inbounds nuw i8, ptr %i.gdr, i64 12 ; 2 uses
  %i.geb = load i32, ptr %i.gea, align 4, !tbaa !33
  %i.gec = tail call i32 @llvm.smax.i32(i32 %i.geb, i32 %i.fwk)
  %i.ged = getelementptr inbounds nuw i8, ptr %i.gdr, i64 16 ; 2 uses
  %i.gee = load i32, ptr %i.ged, align 4, !tbaa !33
  %i.gef = load ptr, ptr %i.fvq, align 8, !tbaa !50 ; 3 uses
  %i.geg = load i64, ptr %i.gef, align 8, !tbaa !116
  %i.geh = add i64 %i.geg, %indvars.iv6020
  %i.gei = getelementptr inbounds nuw i8, ptr %i.gef, i64 8 ; 2 uses
  %i.gej = load i64, ptr %i.gei, align 8, !tbaa !117
  %i.gek = or disjoint i64 %indvars.iv6020, 1     ; 5 uses
  %i.gel = getelementptr inbounds nuw [2 x i8], ptr %i.fvz, i64 %i.gek
  store i16 0, ptr %i.gel, align 2, !tbaa !54
  %i.gem = trunc nuw nsw i64 %i.gek to i32        ; 4 uses
  %..i4969 = tail call i32 @llvm.smin.i32(i32 %..i4966, i32 %i.gem)
  %i.gen = tail call i32 @llvm.smax.i32(i32 %i.gdw, i32 %i.gem)
  %i.geo = add i64 %i.geh, %i.gek
  %i.gep = getelementptr inbounds nuw [2 x i8], ptr %i.fwa, i64 %indvars.iv6020
  store i16 0, ptr %i.gep, align 2, !tbaa !54
  %..i4972 = tail call i32 @llvm.smin.i32(i32 %..i4969, i32 %i.gdt)
  %11 = tail call i32 @llvm.smax.i32(i32 %i.gen, i32 %i.gdt)
  %12 = tail call i32 @llvm.smin.i32(i32 %i.gdz, i32 %i.fwl)
  %i.geq = tail call i32 @llvm.smax.i32(i32 %i.gec, i32 %i.fwl)
  %i.ger = add i64 %i.geo, %indvars.iv6020
  %i.ges = getelementptr inbounds nuw [2 x i8], ptr %i.fwa, i64 %i.gek
  store i16 0, ptr %i.ges, align 2, !tbaa !54
  %..i4975 = tail call i32 @llvm.smin.i32(i32 %..i4972, i32 %i.gem)
  store i32 %..i4975, ptr %i.gdr, align 4, !tbaa !33
  %13 = tail call i32 @llvm.smax.i32(i32 %11, i32 %i.gem)
  store i32 %13, ptr %i.gdu, align 4, !tbaa !33
  store i32 %12, ptr %i.gdx, align 4, !tbaa !33
  store i32 %i.geq, ptr %i.gea, align 4, !tbaa !33
  %i.get = add nsw i32 %i.gee, 4
  store i32 %i.get, ptr %i.ged, align 4, !tbaa !33
  %i.geu = add i64 %i.ger, %i.gek
  store i64 %i.geu, ptr %i.gef, align 8, !tbaa !116
  %.reass = add i64 %i.gej, %invariant.op6700
  store i64 %.reass, ptr %i.gei, align 8, !tbaa !117
  br label %bb.akg

bb.akg:                                           ; preds = %bb.akf, %bb.ake, %bb.akd
  %indvars.iv.next6021 = add nuw nsw i64 %indvars.iv6020, 2 ; 3 uses
  %i.gev = icmp slt i64 %indvars.iv.next6021, %i.fvr
  br i1 %i.gev, label %bb.ajs, label %._crit_edge5607.loopexit, !llvm.loop !339

._crit_edge5607.loopexit:                         ; preds = %bb.akg
  %i.gew = trunc nuw nsw i64 %indvars.iv.next6021 to i32
  br label %._crit_edge5607

._crit_edge5607:                                  ; preds = %._crit_edge5607.loopexit, %bb.ajr
  %.03158.lcssa = phi i32 [ 0, %bb.ajr ], [ %i.gew, %._crit_edge5607.loopexit ] ; 11 uses
  br i1 %i.al, label %bb.akh, label %bb.akp

bb.akh:                                           ; preds = %._crit_edge5607
  %i.gex = zext nneg i32 %.03158.lcssa to i64     ; 10 uses
  %i.gey = getelementptr inbounds nuw [2 x i8], ptr %i.fvz, i64 %i.gex ; 3 uses
  %i.gez = load i16, ptr %i.gey, align 2, !tbaa !54 ; 2 uses
  %.not3834 = icmp eq i16 %i.gez, 0
  br i1 %.not3834, label %bb.ako, label %bb.aki

bb.aki:                                           ; preds = %bb.akh
  %i.gfa = zext i16 %i.gez to i64
  %i.gfb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.gfa
  %i.gfc = load i16, ptr %i.gfb, align 2, !tbaa !54 ; 4 uses
  %i.gfd = getelementptr inbounds nuw i8, ptr %i.fvv, i64 %i.gex
  %i.gfe = load i8, ptr %i.gfd, align 1, !tbaa !32
  %.not3835 = icmp eq i8 %i.gfe, 0
  br i1 %.not3835, label %bb.akk, label %bb.akj

bb.akj:                                           ; preds = %bb.aki
  store i16 %i.gfc, ptr %i.gey, align 2, !tbaa !54
  %i.gff = load i32, ptr %i.fvn, align 4, !tbaa !96
  %i.gfg = icmp slt i32 %i.gff, 2
  %i.gfh = load ptr, ptr %i.fvo, align 8, !tbaa !55 ; 2 uses
  %i.gfi = load i64, ptr %i.fvp, align 8
  %i.gfj = zext i16 %i.gfc to i64                 ; 2 uses
  %i.gfk = mul i64 %i.gfi, %i.gfj
  %.sink.idx.i.i4976 = select i1 %i.gfg, i64 0, i64 %i.gfk
  %.sink.i.i4977 = getelementptr inbounds nuw i8, ptr %i.gfh, i64 %.sink.idx.i.i4976 ; 6 uses
  %i.gfl = load i32, ptr %.sink.i.i4977, align 4, !tbaa !33
  %..i4978 = tail call i32 @llvm.smin.i32(i32 %i.gfl, i32 %.03158.lcssa)
  store i32 %..i4978, ptr %.sink.i.i4977, align 4, !tbaa !33
  %i.gfm = getelementptr inbounds nuw i8, ptr %.sink.i.i4977, i64 8 ; 2 uses
  %i.gfn = load i32, ptr %i.gfm, align 4, !tbaa !33
  %i.gfo = tail call i32 @llvm.smax.i32(i32 %i.gfn, i32 %.03158.lcssa)
  store i32 %i.gfo, ptr %i.gfm, align 4, !tbaa !33
  %i.gfp = getelementptr inbounds nuw i8, ptr %.sink.i.i4977, i64 4 ; 2 uses
  %i.gfq = load i32, ptr %i.gfp, align 4, !tbaa !33
  %i.gfr = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.gfs = tail call i32 @llvm.smin.i32(i32 %i.gfq, i32 %i.gfr)
  store i32 %i.gfs, ptr %i.gfp, align 4, !tbaa !33
  %i.gft = getelementptr inbounds nuw i8, ptr %.sink.i.i4977, i64 12 ; 2 uses
  %i.gfu = load i32, ptr %i.gft, align 4, !tbaa !33
  %i.gfv = tail call i32 @llvm.smax.i32(i32 %i.gfu, i32 %i.gfr)
  store i32 %i.gfv, ptr %i.gft, align 4, !tbaa !33
  %i.gfw = getelementptr inbounds nuw i8, ptr %.sink.i.i4977, i64 16 ; 2 uses
  %i.gfx = load i32, ptr %i.gfw, align 4, !tbaa !33
  %i.gfy = add nsw i32 %i.gfx, 1
  store i32 %i.gfy, ptr %i.gfw, align 4, !tbaa !33
  %i.gfz = load ptr, ptr %i.fvq, align 8, !tbaa !50 ; 2 uses
  %i.gga = getelementptr inbounds nuw [16 x i8], ptr %i.gfz, i64 %i.gfj ; 3 uses
  %i.ggb = load i64, ptr %i.gga, align 8, !tbaa !116
  %i.ggc = add i64 %i.ggb, %i.gex
  store i64 %i.ggc, ptr %i.gga, align 8, !tbaa !116
  br label %bb.akl

bb.akk:                                           ; preds = %bb.aki
  store i16 0, ptr %i.gey, align 2, !tbaa !54
  %i.ggd = load ptr, ptr %i.fvo, align 8, !tbaa !55 ; 7 uses
  %i.gge = load i32, ptr %i.ggd, align 4, !tbaa !33
  %..i4981 = tail call i32 @llvm.smin.i32(i32 %i.gge, i32 %.03158.lcssa)
  store i32 %..i4981, ptr %i.ggd, align 4, !tbaa !33
  %i.ggf = getelementptr inbounds nuw i8, ptr %i.ggd, i64 8 ; 2 uses
  %i.ggg = load i32, ptr %i.ggf, align 4, !tbaa !33
  %i.ggh = tail call i32 @llvm.smax.i32(i32 %i.ggg, i32 %.03158.lcssa)
  store i32 %i.ggh, ptr %i.ggf, align 4, !tbaa !33
  %i.ggi = getelementptr inbounds nuw i8, ptr %i.ggd, i64 4 ; 2 uses
  %i.ggj = load i32, ptr %i.ggi, align 4, !tbaa !33
  %i.ggk = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.ggl = tail call i32 @llvm.smin.i32(i32 %i.ggj, i32 %i.ggk)
  store i32 %i.ggl, ptr %i.ggi, align 4, !tbaa !33
  %i.ggm = getelementptr inbounds nuw i8, ptr %i.ggd, i64 12 ; 2 uses
  %i.ggn = load i32, ptr %i.ggm, align 4, !tbaa !33
  %i.ggo = tail call i32 @llvm.smax.i32(i32 %i.ggn, i32 %i.ggk)
  store i32 %i.ggo, ptr %i.ggm, align 4, !tbaa !33
  %i.ggp = getelementptr inbounds nuw i8, ptr %i.ggd, i64 16 ; 2 uses
  %i.ggq = load i32, ptr %i.ggp, align 4, !tbaa !33
  %i.ggr = add nsw i32 %i.ggq, 1
  store i32 %i.ggr, ptr %i.ggp, align 4, !tbaa !33
  %i.ggs = load ptr, ptr %i.fvq, align 8, !tbaa !50 ; 4 uses
  %i.ggt = load i64, ptr %i.ggs, align 8, !tbaa !116
  %i.ggu = add i64 %i.ggt, %i.gex
  store i64 %i.ggu, ptr %i.ggs, align 8, !tbaa !116
  br label %bb.akl

bb.akl:                                           ; preds = %bb.akk, %bb.akj
  %.sink6735 = phi ptr [ %i.ggs, %bb.akk ], [ %i.gga, %bb.akj ]
  %i.ggv = phi ptr [ %i.ggs, %bb.akk ], [ %i.gfz, %bb.akj ] ; 4 uses
  %i.ggw = phi ptr [ %i.ggd, %bb.akk ], [ %i.gfh, %bb.akj ] ; 7 uses
  %i.ggx = getelementptr inbounds nuw i8, ptr %.sink6735, i64 8 ; 2 uses
  %i.ggy = load i64, ptr %i.ggx, align 8, !tbaa !117
  %i.ggz = add i64 %i.ggy, %indvars.iv6023
  store i64 %i.ggz, ptr %i.ggx, align 8, !tbaa !117
  %i.gha = getelementptr inbounds nuw i8, ptr %i.fvw, i64 %i.gex
  %i.ghb = load i8, ptr %i.gha, align 1, !tbaa !32
  %.not3836 = icmp eq i8 %i.ghb, 0
  %i.ghc = getelementptr inbounds nuw [2 x i8], ptr %i.fwa, i64 %i.gex ; 2 uses
  %i.ghd = or disjoint i64 %indvars.iv6023, 1     ; 4 uses
  br i1 %.not3836, label %bb.akn, label %bb.akm

bb.akm:                                           ; preds = %bb.akl
  store i16 %i.gfc, ptr %i.ghc, align 2, !tbaa !54
  %i.ghe = load i32, ptr %i.fvn, align 4, !tbaa !96
  %i.ghf = icmp slt i32 %i.ghe, 2
  %i.ghg = load i64, ptr %i.fvp, align 8
  %i.ghh = zext i16 %i.gfc to i64                 ; 2 uses
  %i.ghi = mul i64 %i.ghg, %i.ghh
  %.sink.idx.i.i4982 = select i1 %i.ghf, i64 0, i64 %i.ghi
  %.sink.i.i4983 = getelementptr inbounds nuw i8, ptr %i.ggw, i64 %.sink.idx.i.i4982 ; 6 uses
  %i.ghj = load i32, ptr %.sink.i.i4983, align 4, !tbaa !33
  %..i4984 = tail call i32 @llvm.smin.i32(i32 %i.ghj, i32 %.03158.lcssa)
  store i32 %..i4984, ptr %.sink.i.i4983, align 4, !tbaa !33
  %i.ghk = getelementptr inbounds nuw i8, ptr %.sink.i.i4983, i64 8 ; 2 uses
  %i.ghl = load i32, ptr %i.ghk, align 4, !tbaa !33
  %i.ghm = tail call i32 @llvm.smax.i32(i32 %i.ghl, i32 %.03158.lcssa)
  store i32 %i.ghm, ptr %i.ghk, align 4, !tbaa !33
  %i.ghn = getelementptr inbounds nuw i8, ptr %.sink.i.i4983, i64 4 ; 2 uses
  %i.gho = load i32, ptr %i.ghn, align 4, !tbaa !33
  %i.ghp = trunc nuw nsw i64 %i.ghd to i32        ; 2 uses
  %i.ghq = tail call i32 @llvm.smin.i32(i32 %i.gho, i32 %i.ghp)
  store i32 %i.ghq, ptr %i.ghn, align 4, !tbaa !33
  %i.ghr = getelementptr inbounds nuw i8, ptr %.sink.i.i4983, i64 12 ; 2 uses
  %i.ghs = load i32, ptr %i.ghr, align 4, !tbaa !33
  %i.ght = tail call i32 @llvm.smax.i32(i32 %i.ghs, i32 %i.ghp)
  store i32 %i.ght, ptr %i.ghr, align 4, !tbaa !33
  %i.ghu = getelementptr inbounds nuw i8, ptr %.sink.i.i4983, i64 16 ; 2 uses
  %i.ghv = load i32, ptr %i.ghu, align 4, !tbaa !33
  %i.ghw = add nsw i32 %i.ghv, 1
  store i32 %i.ghw, ptr %i.ghu, align 4, !tbaa !33
  %i.ghx = getelementptr inbounds nuw [16 x i8], ptr %i.ggv, i64 %i.ghh ; 3 uses
  %i.ghy = load i64, ptr %i.ghx, align 8, !tbaa !116
  %i.ghz = add i64 %i.ghy, %i.gex
  store i64 %i.ghz, ptr %i.ghx, align 8, !tbaa !116
  %i.gia = getelementptr inbounds nuw i8, ptr %i.ghx, i64 8 ; 2 uses
  %i.gib = load i64, ptr %i.gia, align 8, !tbaa !117
  %i.gic = add i64 %i.gib, %i.ghd
  store i64 %i.gic, ptr %i.gia, align 8, !tbaa !117
  br label %bb.akp

bb.akn:                                           ; preds = %bb.akl
  store i16 0, ptr %i.ghc, align 2, !tbaa !54
  %i.gid = load i32, ptr %i.ggw, align 4, !tbaa !33
  %..i4987 = tail call i32 @llvm.smin.i32(i32 %i.gid, i32 %.03158.lcssa)
  store i32 %..i4987, ptr %i.ggw, align 4, !tbaa !33
  %i.gie = getelementptr inbounds nuw i8, ptr %i.ggw, i64 8 ; 2 uses
  %i.gif = load i32, ptr %i.gie, align 4, !tbaa !33
  %i.gig = tail call i32 @llvm.smax.i32(i32 %i.gif, i32 %.03158.lcssa)
  store i32 %i.gig, ptr %i.gie, align 4, !tbaa !33
  %i.gih = getelementptr inbounds nuw i8, ptr %i.ggw, i64 4 ; 2 uses
  %i.gii = load i32, ptr %i.gih, align 4, !tbaa !33
  %i.gij = trunc nuw nsw i64 %i.ghd to i32        ; 2 uses
  %i.gik = tail call i32 @llvm.smin.i32(i32 %i.gii, i32 %i.gij)
  store i32 %i.gik, ptr %i.gih, align 4, !tbaa !33
  %i.gil = getelementptr inbounds nuw i8, ptr %i.ggw, i64 12 ; 2 uses
  %i.gim = load i32, ptr %i.gil, align 4, !tbaa !33
  %i.gin = tail call i32 @llvm.smax.i32(i32 %i.gim, i32 %i.gij)
  store i32 %i.gin, ptr %i.gil, align 4, !tbaa !33
  %i.gio = getelementptr inbounds nuw i8, ptr %i.ggw, i64 16 ; 2 uses
  %i.gip = load i32, ptr %i.gio, align 4, !tbaa !33
  %i.giq = add nsw i32 %i.gip, 1
  store i32 %i.giq, ptr %i.gio, align 4, !tbaa !33
  %i.gir = load i64, ptr %i.ggv, align 8, !tbaa !116
  %i.gis = add i64 %i.gir, %i.gex
  store i64 %i.gis, ptr %i.ggv, align 8, !tbaa !116
  %i.git = getelementptr inbounds nuw i8, ptr %i.ggv, i64 8 ; 2 uses
  %i.giu = load i64, ptr %i.git, align 8, !tbaa !117
  %i.giv = add i64 %i.giu, %i.ghd
  store i64 %i.giv, ptr %i.git, align 8, !tbaa !117
  br label %bb.akp

bb.ako:                                           ; preds = %bb.akh
  %i.giw = load ptr, ptr %i.fvo, align 8, !tbaa !55 ; 6 uses
  %i.gix = load i32, ptr %i.giw, align 4, !tbaa !33
  %..i4990 = tail call i32 @llvm.smin.i32(i32 %i.gix, i32 %.03158.lcssa)
  %i.giy = getelementptr inbounds nuw i8, ptr %i.giw, i64 8 ; 2 uses
  %i.giz = load i32, ptr %i.giy, align 4, !tbaa !33
  %i.gja = tail call i32 @llvm.smax.i32(i32 %i.giz, i32 %.03158.lcssa)
  %i.gjb = getelementptr inbounds nuw i8, ptr %i.giw, i64 4 ; 2 uses
  %i.gjc = load i32, ptr %i.gjb, align 4, !tbaa !33
  %i.gjd = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.gje = tail call i32 @llvm.smin.i32(i32 %i.gjc, i32 %i.gjd)
  %i.gjf = getelementptr inbounds nuw i8, ptr %i.giw, i64 12 ; 2 uses
  %i.gjg = load i32, ptr %i.gjf, align 4, !tbaa !33
  %i.gjh = tail call i32 @llvm.smax.i32(i32 %i.gjg, i32 %i.gjd)
  %i.gji = getelementptr inbounds nuw i8, ptr %i.giw, i64 16 ; 2 uses
  %i.gjj = load i32, ptr %i.gji, align 4, !tbaa !33
  %i.gjk = load ptr, ptr %i.fvq, align 8, !tbaa !50 ; 3 uses
  %i.gjl = load i64, ptr %i.gjk, align 8, !tbaa !116
  %i.gjm = getelementptr inbounds nuw i8, ptr %i.gjk, i64 8 ; 2 uses
  %i.gjn = load i64, ptr %i.gjm, align 8, !tbaa !117
  %i.gjo = add i64 %i.gjn, %indvars.iv6023
  %i.gjp = getelementptr inbounds nuw [2 x i8], ptr %i.fwa, i64 %i.gex
  store i16 0, ptr %i.gjp, align 2, !tbaa !54
  %i.gjq = or disjoint i64 %indvars.iv6023, 1     ; 2 uses
  store i32 %..i4990, ptr %i.giw, align 4, !tbaa !33
  store i32 %i.gja, ptr %i.giy, align 4, !tbaa !33
  %14 = trunc nuw nsw i64 %i.gjq to i32           ; 2 uses
  %15 = tail call i32 @llvm.smin.i32(i32 %i.gje, i32 %14)
  store i32 %15, ptr %i.gjb, align 4, !tbaa !33
  %i.gjr = tail call i32 @llvm.smax.i32(i32 %i.gjh, i32 %14)
  store i32 %i.gjr, ptr %i.gjf, align 4, !tbaa !33
  %i.gjs = add nsw i32 %i.gjj, 2
  store i32 %i.gjs, ptr %i.gji, align 4, !tbaa !33
  %reass.add = shl nuw nsw i64 %i.gex, 1
  %i.gjt = add i64 %i.gjl, %reass.add
  store i64 %i.gjt, ptr %i.gjk, align 8, !tbaa !116
  %i.gju = add i64 %i.gjo, %i.gjq
  store i64 %i.gju, ptr %i.gjm, align 8, !tbaa !117
  br label %bb.akp

bb.akp:                                           ; preds = %bb.ako, %bb.akn, %bb.akm, %._crit_edge5607
  %indvars.iv.next6024 = add nuw nsw i64 %indvars.iv6023, 2 ; 3 uses
  %i.gjv = icmp samesign ult i64 %indvars.iv.next6024, %i.fvs
  br i1 %i.gjv, label %bb.ajr, label %._crit_edge5611.loopexit, !llvm.loop !340

._crit_edge5611.loopexit:                         ; preds = %bb.akp
  %i.gjw = trunc nuw nsw i64 %indvars.iv.next6024 to i32
  br label %._crit_edge5611

._crit_edge5611:                                  ; preds = %._crit_edge5611.loopexit, %.preheader
  %.03159.lcssa = phi i32 [ 0, %.preheader ], [ %i.gjw, %._crit_edge5611.loopexit ] ; 17 uses
  br i1 %i.ai, label %bb.akq, label %bb.alh

bb.akq:                                           ; preds = %._crit_edge5611
  %i.gjx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gjy = load ptr, ptr %i.gjx, align 8, !tbaa !55
  %i.gjz = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.gka = load i64, ptr %i.gjz, align 8, !tbaa !40
  %i.gkb = zext nneg i32 %.03159.lcssa to i64     ; 7 uses
  %i.gkc = mul i64 %i.gka, %i.gkb
  %i.gkd = getelementptr inbounds nuw i8, ptr %i.gjy, i64 %i.gkc ; 3 uses
  %i.gke = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gkf = load ptr, ptr %i.gke, align 8, !tbaa !55
  %i.gkg = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.gkh = load i64, ptr %i.gkg, align 8, !tbaa !40
  %i.gki = mul i64 %i.gkh, %i.gkb
  %i.gkj = getelementptr inbounds nuw i8, ptr %i.gkf, i64 %i.gki ; 4 uses
  %i.gkk = icmp sgt i32 %i.n, 1
  br i1 %i.gkk, label %.lr.ph5615, label %._crit_edge5616

.lr.ph5615:                                       ; preds = %bb.akq
  %i.gkl = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.gkm = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.gkn = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.gko = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %i.gkp = zext nneg i32 %i.aj to i64
  %invariant.op6701 = shl nuw nsw i64 %i.gkb, 1
  br label %bb.akr

bb.akr:                                           ; preds = %.lr.ph5615, %bb.akz
  %indvars.iv6026 = phi i64 [ 0, %.lr.ph5615 ], [ %indvars.iv.next6027, %bb.akz ] ; 11 uses
  %i.gkq = getelementptr inbounds nuw [2 x i8], ptr %i.gkj, i64 %indvars.iv6026 ; 3 uses
  %i.gkr = load i16, ptr %i.gkq, align 2, !tbaa !54 ; 2 uses
  %.not3829 = icmp eq i16 %i.gkr, 0
  br i1 %.not3829, label %bb.aky, label %bb.aks

bb.aks:                                           ; preds = %bb.akr
  %i.gks = zext i16 %i.gkr to i64
  %i.gkt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.gks
  %i.gku = load i16, ptr %i.gkt, align 2, !tbaa !54 ; 4 uses
  %i.gkv = getelementptr inbounds nuw i8, ptr %i.gkd, i64 %indvars.iv6026
  %i.gkw = load i8, ptr %i.gkv, align 1, !tbaa !32
  %.not3830 = icmp eq i8 %i.gkw, 0
  br i1 %.not3830, label %bb.aku, label %bb.akt

bb.akt:                                           ; preds = %bb.aks
  store i16 %i.gku, ptr %i.gkq, align 2, !tbaa !54
  %i.gkx = load i32, ptr %i.gkl, align 4, !tbaa !96
  %i.gky = icmp slt i32 %i.gkx, 2
  %i.gkz = load ptr, ptr %i.gkm, align 8, !tbaa !55 ; 2 uses
  %i.gla = load i64, ptr %i.gkn, align 8
  %i.glb = zext i16 %i.gku to i64                 ; 2 uses
  %i.glc = mul i64 %i.gla, %i.glb
  %.sink.idx.i.i4994 = select i1 %i.gky, i64 0, i64 %i.glc
  %.sink.i.i4995 = getelementptr inbounds nuw i8, ptr %i.gkz, i64 %.sink.idx.i.i4994 ; 6 uses
  %i.gld = load i32, ptr %.sink.i.i4995, align 4, !tbaa !33
  %i.gle = trunc nuw nsw i64 %indvars.iv6026 to i32 ; 2 uses
  %..i4996 = tail call i32 @llvm.smin.i32(i32 %i.gld, i32 %i.gle)
  store i32 %..i4996, ptr %.sink.i.i4995, align 4, !tbaa !33
  %i.glf = getelementptr inbounds nuw i8, ptr %.sink.i.i4995, i64 8 ; 2 uses
  %i.glg = load i32, ptr %i.glf, align 4, !tbaa !33
  %i.glh = tail call i32 @llvm.smax.i32(i32 %i.glg, i32 %i.gle)
  store i32 %i.glh, ptr %i.glf, align 4, !tbaa !33
  %i.gli = getelementptr inbounds nuw i8, ptr %.sink.i.i4995, i64 4 ; 2 uses
  %i.glj = load i32, ptr %i.gli, align 4, !tbaa !33
  %i.glk = tail call i32 @llvm.smin.i32(i32 %i.glj, i32 %.03159.lcssa)
  store i32 %i.glk, ptr %i.gli, align 4, !tbaa !33
  %i.gll = getelementptr inbounds nuw i8, ptr %.sink.i.i4995, i64 12 ; 2 uses
  %i.glm = load i32, ptr %i.gll, align 4, !tbaa !33
  %i.gln = tail call i32 @llvm.smax.i32(i32 %i.glm, i32 %.03159.lcssa)
  store i32 %i.gln, ptr %i.gll, align 4, !tbaa !33
  %i.glo = getelementptr inbounds nuw i8, ptr %.sink.i.i4995, i64 16 ; 2 uses
  %i.glp = load i32, ptr %i.glo, align 4, !tbaa !33
  %i.glq = add nsw i32 %i.glp, 1
  store i32 %i.glq, ptr %i.glo, align 4, !tbaa !33
  %i.glr = load ptr, ptr %i.gko, align 8, !tbaa !50 ; 2 uses
  %i.gls = getelementptr inbounds nuw [16 x i8], ptr %i.glr, i64 %i.glb ; 3 uses
  %i.glt = load i64, ptr %i.gls, align 8, !tbaa !116
  %i.glu = add i64 %i.glt, %indvars.iv6026
  store i64 %i.glu, ptr %i.gls, align 8, !tbaa !116
  br label %bb.akv

bb.aku:                                           ; preds = %bb.aks
  store i16 0, ptr %i.gkq, align 2, !tbaa !54
  %i.glv = load ptr, ptr %i.gkm, align 8, !tbaa !55 ; 7 uses
  %i.glw = load i32, ptr %i.glv, align 4, !tbaa !33
  %i.glx = trunc nuw nsw i64 %indvars.iv6026 to i32 ; 2 uses
  %..i4999 = tail call i32 @llvm.smin.i32(i32 %i.glw, i32 %i.glx)
  store i32 %..i4999, ptr %i.glv, align 4, !tbaa !33
  %i.gly = getelementptr inbounds nuw i8, ptr %i.glv, i64 8 ; 2 uses
  %i.glz = load i32, ptr %i.gly, align 4, !tbaa !33
  %i.gma = tail call i32 @llvm.smax.i32(i32 %i.glz, i32 %i.glx)
  store i32 %i.gma, ptr %i.gly, align 4, !tbaa !33
  %i.gmb = getelementptr inbounds nuw i8, ptr %i.glv, i64 4 ; 2 uses
  %i.gmc = load i32, ptr %i.gmb, align 4, !tbaa !33
  %i.gmd = tail call i32 @llvm.smin.i32(i32 %i.gmc, i32 %.03159.lcssa)
  store i32 %i.gmd, ptr %i.gmb, align 4, !tbaa !33
  %i.gme = getelementptr inbounds nuw i8, ptr %i.glv, i64 12 ; 2 uses
  %i.gmf = load i32, ptr %i.gme, align 4, !tbaa !33
  %i.gmg = tail call i32 @llvm.smax.i32(i32 %i.gmf, i32 %.03159.lcssa)
  store i32 %i.gmg, ptr %i.gme, align 4, !tbaa !33
  %i.gmh = getelementptr inbounds nuw i8, ptr %i.glv, i64 16 ; 2 uses
  %i.gmi = load i32, ptr %i.gmh, align 4, !tbaa !33
  %i.gmj = add nsw i32 %i.gmi, 1
  store i32 %i.gmj, ptr %i.gmh, align 4, !tbaa !33
  %i.gmk = load ptr, ptr %i.gko, align 8, !tbaa !50 ; 4 uses
  %i.gml = load i64, ptr %i.gmk, align 8, !tbaa !116
  %i.gmm = add i64 %i.gml, %indvars.iv6026
  store i64 %i.gmm, ptr %i.gmk, align 8, !tbaa !116
  br label %bb.akv

bb.akv:                                           ; preds = %bb.aku, %bb.akt
  %.sink6740 = phi ptr [ %i.gmk, %bb.aku ], [ %i.gls, %bb.akt ]
  %i.gmn = phi ptr [ %i.gmk, %bb.aku ], [ %i.glr, %bb.akt ] ; 4 uses
  %i.gmo = phi ptr [ %i.glv, %bb.aku ], [ %i.gkz, %bb.akt ] ; 7 uses
  %i.gmp = getelementptr inbounds nuw i8, ptr %.sink6740, i64 8 ; 2 uses
  %i.gmq = load i64, ptr %i.gmp, align 8, !tbaa !117
  %i.gmr = add i64 %i.gmq, %i.gkb
  store i64 %i.gmr, ptr %i.gmp, align 8, !tbaa !117
  %i.gms = or disjoint i64 %indvars.iv6026, 1     ; 6 uses
  %i.gmt = getelementptr inbounds nuw i8, ptr %i.gkd, i64 %i.gms
  %i.gmu = load i8, ptr %i.gmt, align 1, !tbaa !32
  %.not3831 = icmp eq i8 %i.gmu, 0
  %i.gmv = getelementptr inbounds nuw [2 x i8], ptr %i.gkj, i64 %i.gms ; 2 uses
  br i1 %.not3831, label %bb.akx, label %bb.akw

bb.akw:                                           ; preds = %bb.akv
  store i16 %i.gku, ptr %i.gmv, align 2, !tbaa !54
  %i.gmw = load i32, ptr %i.gkl, align 4, !tbaa !96
  %i.gmx = icmp slt i32 %i.gmw, 2
  %i.gmy = load i64, ptr %i.gkn, align 8
  %i.gmz = zext i16 %i.gku to i64                 ; 2 uses
  %i.gna = mul i64 %i.gmy, %i.gmz
  %.sink.idx.i.i5000 = select i1 %i.gmx, i64 0, i64 %i.gna
  %.sink.i.i5001 = getelementptr inbounds nuw i8, ptr %i.gmo, i64 %.sink.idx.i.i5000 ; 6 uses
  %i.gnb = load i32, ptr %.sink.i.i5001, align 4, !tbaa !33
  %i.gnc = trunc nuw nsw i64 %i.gms to i32        ; 2 uses
  %..i5002 = tail call i32 @llvm.smin.i32(i32 %i.gnb, i32 %i.gnc)
  store i32 %..i5002, ptr %.sink.i.i5001, align 4, !tbaa !33
  %i.gnd = getelementptr inbounds nuw i8, ptr %.sink.i.i5001, i64 8 ; 2 uses
  %i.gne = load i32, ptr %i.gnd, align 4, !tbaa !33
  %i.gnf = tail call i32 @llvm.smax.i32(i32 %i.gne, i32 %i.gnc)
  store i32 %i.gnf, ptr %i.gnd, align 4, !tbaa !33
  %i.gng = getelementptr inbounds nuw i8, ptr %.sink.i.i5001, i64 4 ; 2 uses
  %i.gnh = load i32, ptr %i.gng, align 4, !tbaa !33
  %i.gni = tail call i32 @llvm.smin.i32(i32 %i.gnh, i32 %.03159.lcssa)
  store i32 %i.gni, ptr %i.gng, align 4, !tbaa !33
  %i.gnj = getelementptr inbounds nuw i8, ptr %.sink.i.i5001, i64 12 ; 2 uses
  %i.gnk = load i32, ptr %i.gnj, align 4, !tbaa !33
  %i.gnl = tail call i32 @llvm.smax.i32(i32 %i.gnk, i32 %.03159.lcssa)
  store i32 %i.gnl, ptr %i.gnj, align 4, !tbaa !33
  %i.gnm = getelementptr inbounds nuw i8, ptr %.sink.i.i5001, i64 16 ; 2 uses
  %i.gnn = load i32, ptr %i.gnm, align 4, !tbaa !33
  %i.gno = add nsw i32 %i.gnn, 1
  store i32 %i.gno, ptr %i.gnm, align 4, !tbaa !33
  %i.gnp = getelementptr inbounds nuw [16 x i8], ptr %i.gmn, i64 %i.gmz ; 3 uses
  %i.gnq = load i64, ptr %i.gnp, align 8, !tbaa !116
  %i.gnr = add i64 %i.gnq, %i.gms
  store i64 %i.gnr, ptr %i.gnp, align 8, !tbaa !116
  %i.gns = getelementptr inbounds nuw i8, ptr %i.gnp, i64 8 ; 2 uses
  %i.gnt = load i64, ptr %i.gns, align 8, !tbaa !117
  %i.gnu = add i64 %i.gnt, %i.gkb
  store i64 %i.gnu, ptr %i.gns, align 8, !tbaa !117
  br label %bb.akz

bb.akx:                                           ; preds = %bb.akv
  store i16 0, ptr %i.gmv, align 2, !tbaa !54
  %i.gnv = load i32, ptr %i.gmo, align 4, !tbaa !33
  %i.gnw = trunc nuw nsw i64 %i.gms to i32        ; 2 uses
  %..i5005 = tail call i32 @llvm.smin.i32(i32 %i.gnv, i32 %i.gnw)
  store i32 %..i5005, ptr %i.gmo, align 4, !tbaa !33
  %i.gnx = getelementptr inbounds nuw i8, ptr %i.gmo, i64 8 ; 2 uses
  %i.gny = load i32, ptr %i.gnx, align 4, !tbaa !33
  %i.gnz = tail call i32 @llvm.smax.i32(i32 %i.gny, i32 %i.gnw)
  store i32 %i.gnz, ptr %i.gnx, align 4, !tbaa !33
  %i.goa = getelementptr inbounds nuw i8, ptr %i.gmo, i64 4 ; 2 uses
  %i.gob = load i32, ptr %i.goa, align 4, !tbaa !33
  %i.goc = tail call i32 @llvm.smin.i32(i32 %i.gob, i32 %.03159.lcssa)
  store i32 %i.goc, ptr %i.goa, align 4, !tbaa !33
  %i.god = getelementptr inbounds nuw i8, ptr %i.gmo, i64 12 ; 2 uses
  %i.goe = load i32, ptr %i.god, align 4, !tbaa !33
  %i.gof = tail call i32 @llvm.smax.i32(i32 %i.goe, i32 %.03159.lcssa)
  store i32 %i.gof, ptr %i.god, align 4, !tbaa !33
  %i.gog = getelementptr inbounds nuw i8, ptr %i.gmo, i64 16 ; 2 uses
  %i.goh = load i32, ptr %i.gog, align 4, !tbaa !33
  %i.goi = add nsw i32 %i.goh, 1
  store i32 %i.goi, ptr %i.gog, align 4, !tbaa !33
  %i.goj = load i64, ptr %i.gmn, align 8, !tbaa !116
  %i.gok = add i64 %i.goj, %i.gms
  store i64 %i.gok, ptr %i.gmn, align 8, !tbaa !116
  %i.gol = getelementptr inbounds nuw i8, ptr %i.gmn, i64 8 ; 2 uses
  %i.gom = load i64, ptr %i.gol, align 8, !tbaa !117
  %i.gon = add i64 %i.gom, %i.gkb
  store i64 %i.gon, ptr %i.gol, align 8, !tbaa !117
  br label %bb.akz

bb.aky:                                           ; preds = %bb.akr
  %i.goo = load ptr, ptr %i.gkm, align 8, !tbaa !55 ; 6 uses
  %i.gop = load i32, ptr %i.goo, align 4, !tbaa !33
  %i.goq = trunc nuw nsw i64 %indvars.iv6026 to i32 ; 2 uses
  %..i5008 = tail call i32 @llvm.smin.i32(i32 %i.gop, i32 %i.goq)
  %i.gor = getelementptr inbounds nuw i8, ptr %i.goo, i64 8 ; 2 uses
  %i.gos = load i32, ptr %i.gor, align 4, !tbaa !33
  %i.got = tail call i32 @llvm.smax.i32(i32 %i.gos, i32 %i.goq)
  %i.gou = getelementptr inbounds nuw i8, ptr %i.goo, i64 4 ; 2 uses
  %i.gov = load i32, ptr %i.gou, align 4, !tbaa !33
  %i.gow = tail call i32 @llvm.smin.i32(i32 %i.gov, i32 %.03159.lcssa)
  %i.gox = getelementptr inbounds nuw i8, ptr %i.goo, i64 12 ; 2 uses
  %i.goy = load i32, ptr %i.gox, align 4, !tbaa !33
  %i.goz = tail call i32 @llvm.smax.i32(i32 %i.goy, i32 %.03159.lcssa)
  %i.gpa = getelementptr inbounds nuw i8, ptr %i.goo, i64 16 ; 2 uses
  %i.gpb = load i32, ptr %i.gpa, align 4, !tbaa !33
  %i.gpc = load ptr, ptr %i.gko, align 8, !tbaa !50 ; 3 uses
  %i.gpd = load i64, ptr %i.gpc, align 8, !tbaa !116
  %i.gpe = add i64 %i.gpd, %indvars.iv6026
  %i.gpf = getelementptr inbounds nuw i8, ptr %i.gpc, i64 8 ; 2 uses
  %i.gpg = load i64, ptr %i.gpf, align 8, !tbaa !117
  %i.gph = or disjoint i64 %indvars.iv6026, 1     ; 3 uses
  %i.gpi = getelementptr inbounds nuw [2 x i8], ptr %i.gkj, i64 %i.gph
  store i16 0, ptr %i.gpi, align 2, !tbaa !54
  %16 = trunc nuw nsw i64 %i.gph to i32           ; 2 uses
  %..i5011 = tail call i32 @llvm.smin.i32(i32 %..i5008, i32 %16)
  store i32 %..i5011, ptr %i.goo, align 4, !tbaa !33
  %i.gpj = tail call i32 @llvm.smax.i32(i32 %i.got, i32 %16)
  store i32 %i.gpj, ptr %i.gor, align 4, !tbaa !33
  store i32 %i.gow, ptr %i.gou, align 4, !tbaa !33
  store i32 %i.goz, ptr %i.gox, align 4, !tbaa !33
  %i.gpk = add nsw i32 %i.gpb, 2
  store i32 %i.gpk, ptr %i.gpa, align 4, !tbaa !33
  %i.gpl = add i64 %i.gpe, %i.gph
  store i64 %i.gpl, ptr %i.gpc, align 8, !tbaa !116
  %.reass6702 = add i64 %i.gpg, %invariant.op6701
  store i64 %.reass6702, ptr %i.gpf, align 8, !tbaa !117
  br label %bb.akz

bb.akz:                                           ; preds = %bb.aky, %bb.akx, %bb.akw
  %indvars.iv.next6027 = add nuw nsw i64 %indvars.iv6026, 2 ; 3 uses
  %i.gpm = icmp samesign ult i64 %indvars.iv.next6027, %i.gkp
  br i1 %i.gpm, label %bb.akr, label %._crit_edge5616.loopexit, !llvm.loop !341

._crit_edge5616.loopexit:                         ; preds = %bb.akz
  %i.gpn = trunc nuw nsw i64 %indvars.iv.next6027 to i32
  br label %._crit_edge5616

._crit_edge5616:                                  ; preds = %._crit_edge5616.loopexit, %bb.akq
  %.0.lcssa = phi i32 [ 0, %bb.akq ], [ %i.gpn, %._crit_edge5616.loopexit ] ; 7 uses
  br i1 %i.al, label %bb.ala, label %bb.alh

bb.ala:                                           ; preds = %._crit_edge5616
  %i.gpo = zext nneg i32 %.0.lcssa to i64         ; 5 uses
  %i.gpp = getelementptr inbounds nuw [2 x i8], ptr %i.gkj, i64 %i.gpo ; 3 uses
  %i.gpq = load i16, ptr %i.gpp, align 2, !tbaa !54 ; 2 uses
  %.not3827 = icmp eq i16 %i.gpq, 0
  br i1 %.not3827, label %bb.alg, label %bb.alb

bb.alb:                                           ; preds = %bb.ala
  %i.gpr = getelementptr inbounds nuw i8, ptr %i.gkd, i64 %i.gpo
  %i.gps = load i8, ptr %i.gpr, align 1, !tbaa !32
  %.not3828 = icmp eq i8 %i.gps, 0
  br i1 %.not3828, label %bb.alf, label %bb.alc

bb.alc:                                           ; preds = %bb.alb
  %i.gpt = zext i16 %i.gpq to i64
  %i.gpu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.gpt
  %i.gpv = load i16, ptr %i.gpu, align 2, !tbaa !54 ; 2 uses
  store i16 %i.gpv, ptr %i.gpp, align 2, !tbaa !54
  %i.gpw = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.gpx = load i32, ptr %i.gpw, align 4, !tbaa !96
  %i.gpy = icmp slt i32 %i.gpx, 2
  %i.gpz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gqa = load ptr, ptr %i.gpz, align 8, !tbaa !55
  %i.gqb = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.gqc = load i64, ptr %i.gqb, align 8
  %i.gqd = zext i16 %i.gpv to i64                 ; 2 uses
  %i.gqe = mul i64 %i.gqc, %i.gqd
  %.sink.idx.i.i5012 = select i1 %i.gpy, i64 0, i64 %i.gqe
  %.sink.i.i5013 = getelementptr inbounds nuw i8, ptr %i.gqa, i64 %.sink.idx.i.i5012 ; 6 uses
  %i.gqf = load i32, ptr %.sink.i.i5013, align 4, !tbaa !33
  %..i5014 = tail call i32 @llvm.smin.i32(i32 %i.gqf, i32 %.0.lcssa)
  store i32 %..i5014, ptr %.sink.i.i5013, align 4, !tbaa !33
  %i.gqg = getelementptr inbounds nuw i8, ptr %.sink.i.i5013, i64 8 ; 2 uses
  %i.gqh = load i32, ptr %i.gqg, align 4, !tbaa !33
  %i.gqi = tail call i32 @llvm.smax.i32(i32 %i.gqh, i32 %.0.lcssa)
  store i32 %i.gqi, ptr %i.gqg, align 4, !tbaa !33
  %i.gqj = getelementptr inbounds nuw i8, ptr %.sink.i.i5013, i64 4 ; 2 uses
  %i.gqk = load i32, ptr %i.gqj, align 4, !tbaa !33
  %i.gql = tail call i32 @llvm.smin.i32(i32 %i.gqk, i32 %.03159.lcssa)
  store i32 %i.gql, ptr %i.gqj, align 4, !tbaa !33
  %i.gqm = getelementptr inbounds nuw i8, ptr %.sink.i.i5013, i64 12 ; 2 uses
  %i.gqn = load i32, ptr %i.gqm, align 4, !tbaa !33
  %i.gqo = tail call i32 @llvm.smax.i32(i32 %i.gqn, i32 %.03159.lcssa)
  store i32 %i.gqo, ptr %i.gqm, align 4, !tbaa !33
  %i.gqp = getelementptr inbounds nuw i8, ptr %.sink.i.i5013, i64 16 ; 2 uses
  %i.gqq = load i32, ptr %i.gqp, align 4, !tbaa !33
  %i.gqr = add nsw i32 %i.gqq, 1
  store i32 %i.gqr, ptr %i.gqp, align 4, !tbaa !33
  %i.gqs = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.gqt = load ptr, ptr %i.gqs, align 8, !tbaa !50
  %i.gqu = getelementptr inbounds nuw [16 x i8], ptr %i.gqt, i64 %i.gqd ; 3 uses
  %i.gqv = load i64, ptr %i.gqu, align 8, !tbaa !116
  %i.gqw = add i64 %i.gqv, %i.gpo
  store i64 %i.gqw, ptr %i.gqu, align 8, !tbaa !116
  br label %.sink.split

.thread:                                          ; preds = %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ale

bb.ald:                                           ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.05029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.ale

bb.ale:                                           ; preds = %.thread, %bb.ald
  %lpad.phi5035 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.ald ]
  %i.gqx = ptrtoint ptr %.sroa.05029.0 to i64
  %i.gqy = sub i64 %.sroa.10.0, %i.gqx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.05029.0, i64 noundef %i.gqy) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.alf:                                           ; preds = %bb.alb
  store i16 0, ptr %i.gpp, align 2, !tbaa !54
  %i.gqz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gra = load ptr, ptr %i.gqz, align 8, !tbaa !55 ; 6 uses
  %i.grb = load i32, ptr %i.gra, align 4, !tbaa !33
  %..i5017 = tail call i32 @llvm.smin.i32(i32 %i.grb, i32 %.0.lcssa)
  store i32 %..i5017, ptr %i.gra, align 4, !tbaa !33
  %i.grc = getelementptr inbounds nuw i8, ptr %i.gra, i64 8 ; 2 uses
  %i.grd = load i32, ptr %i.grc, align 4, !tbaa !33
  %i.gre = tail call i32 @llvm.smax.i32(i32 %i.grd, i32 %.0.lcssa)
  store i32 %i.gre, ptr %i.grc, align 4, !tbaa !33
  %i.grf = getelementptr inbounds nuw i8, ptr %i.gra, i64 4 ; 2 uses
  %i.grg = load i32, ptr %i.grf, align 4, !tbaa !33
  %i.grh = tail call i32 @llvm.smin.i32(i32 %i.grg, i32 %.03159.lcssa)
  store i32 %i.grh, ptr %i.grf, align 4, !tbaa !33
  %i.gri = getelementptr inbounds nuw i8, ptr %i.gra, i64 12 ; 2 uses
  %i.grj = load i32, ptr %i.gri, align 4, !tbaa !33
  %i.grk = tail call i32 @llvm.smax.i32(i32 %i.grj, i32 %.03159.lcssa)
  store i32 %i.grk, ptr %i.gri, align 4, !tbaa !33
  %i.grl = getelementptr inbounds nuw i8, ptr %i.gra, i64 16 ; 2 uses
  %i.grm = load i32, ptr %i.grl, align 4, !tbaa !33
  %i.grn = add nsw i32 %i.grm, 1
  store i32 %i.grn, ptr %i.grl, align 4, !tbaa !33
  %i.gro = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.grp = load ptr, ptr %i.gro, align 8, !tbaa !50 ; 3 uses
  %i.grq = load i64, ptr %i.grp, align 8, !tbaa !116
  %i.grr = add i64 %i.grq, %i.gpo
  store i64 %i.grr, ptr %i.grp, align 8, !tbaa !116
  br label %.sink.split

bb.alg:                                           ; preds = %bb.ala
  %i.grs = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.grt = load ptr, ptr %i.grs, align 8, !tbaa !55 ; 6 uses
  %i.gru = load i32, ptr %i.grt, align 4, !tbaa !33
  %..i5020 = tail call i32 @llvm.smin.i32(i32 %i.gru, i32 %.0.lcssa)
  store i32 %..i5020, ptr %i.grt, align 4, !tbaa !33
  %i.grv = getelementptr inbounds nuw i8, ptr %i.grt, i64 8 ; 2 uses
  %i.grw = load i32, ptr %i.grv, align 4, !tbaa !33
  %i.grx = tail call i32 @llvm.smax.i32(i32 %i.grw, i32 %.0.lcssa)
  store i32 %i.grx, ptr %i.grv, align 4, !tbaa !33
  %i.gry = getelementptr inbounds nuw i8, ptr %i.grt, i64 4 ; 2 uses
  %i.grz = load i32, ptr %i.gry, align 4, !tbaa !33
  %i.gsa = tail call i32 @llvm.smin.i32(i32 %i.grz, i32 %.03159.lcssa)
  store i32 %i.gsa, ptr %i.gry, align 4, !tbaa !33
  %i.gsb = getelementptr inbounds nuw i8, ptr %i.grt, i64 12 ; 2 uses
  %i.gsc = load i32, ptr %i.gsb, align 4, !tbaa !33
  %i.gsd = tail call i32 @llvm.smax.i32(i32 %i.gsc, i32 %.03159.lcssa)
  store i32 %i.gsd, ptr %i.gsb, align 4, !tbaa !33
  %i.gse = getelementptr inbounds nuw i8, ptr %i.grt, i64 16 ; 2 uses
  %i.gsf = load i32, ptr %i.gse, align 4, !tbaa !33
  %i.gsg = add nsw i32 %i.gsf, 1
  store i32 %i.gsg, ptr %i.gse, align 4, !tbaa !33
  %i.gsh = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.gsi = load ptr, ptr %i.gsh, align 8, !tbaa !50 ; 3 uses
  %i.gsj = load i64, ptr %i.gsi, align 8, !tbaa !116
  %i.gsk = add i64 %i.gsj, %i.gpo
  store i64 %i.gsk, ptr %i.gsi, align 8, !tbaa !116
  br label %.sink.split

.sink.split:                                      ; preds = %bb.alc, %bb.alf, %bb.alg
  %.sink6745 = phi ptr [ %i.gsi, %bb.alg ], [ %i.grp, %bb.alf ], [ %i.gqu, %bb.alc ]
  %i.gsl = getelementptr inbounds nuw i8, ptr %.sink6745, i64 8 ; 2 uses
  %i.gsm = load i64, ptr %i.gsl, align 8, !tbaa !117
  %i.gsn = add i64 %i.gsm, %i.gkb
  store i64 %i.gsn, ptr %i.gsl, align 8, !tbaa !117
  br label %bb.alh

bb.alh:                                           ; preds = %.sink.split, %._crit_edge5616, %._crit_edge5611
  %i.gso = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gsp = load i32, ptr %i.gso, align 8, !tbaa !95
  %i.gsq = icmp sgt i32 %i.gsp, 0
  br i1 %i.gsq, label %.lr.ph.i5021, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit

.lr.ph.i5021:                                     ; preds = %bb.alh
  %i.gsr = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.gss = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gst = load ptr, ptr %i.gss, align 8, !tbaa !55
  %i.gsu = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.gsv = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.gsw = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.gsx = load ptr, ptr %i.gsw, align 8, !tbaa !55
  %i.gsy = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.gsz = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.gta = load ptr, ptr %i.gsz, align 8
  br label %bb.ali

bb.ali:                                           ; preds = %bb.all, %.lr.ph.i5021
  %indvars.iv.i5022 = phi i64 [ 0, %.lr.ph.i5021 ], [ %indvars.iv.next.i5026, %bb.all ] ; 4 uses
  %i.gtb = load i32, ptr %i.gsr, align 4, !tbaa !96
  %i.gtc = icmp slt i32 %i.gtb, 2
  %i.gtd = load i64, ptr %i.gsu, align 8
  %i.gte = mul i64 %i.gtd, %indvars.iv.i5022
  %.sink.idx.i.i5023 = select i1 %i.gtc, i64 0, i64 %i.gte
  %.sink.i.i5024 = getelementptr inbounds nuw i8, ptr %i.gst, i64 %.sink.idx.i.i5023 ; 6 uses
  %i.gtf = getelementptr inbounds nuw i8, ptr %.sink.i.i5024, i64 16
  %i.gtg = load i32, ptr %i.gtf, align 4, !tbaa !33 ; 2 uses
  %i.gth = load i32, ptr %i.gsv, align 4, !tbaa !96
  %i.gti = icmp slt i32 %i.gth, 2
  %i.gtj = load i64, ptr %i.gsy, align 8
  %i.gtk = mul i64 %i.gtj, %indvars.iv.i5022
  %.sink.idx.i25.i = select i1 %i.gti, i64 0, i64 %i.gtk
  %.sink.i26.i = getelementptr inbounds nuw i8, ptr %i.gsx, i64 %.sink.idx.i25.i
end_hunk_4
begin_hunk_5_@_ZNK2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %.sink1318 = phi ptr [ %i.kl, %bb.p ], [ %i.jt, %bb.o ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sink1318, i64 8 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !117
  %i.kq = add i64 %i.kp, %i.ed
  store i64 %i.kq, ptr %i.ko, align 8, !tbaa !117
  %i.kr = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.gt
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !32
  %.not803 = icmp eq i8 %i.ks, 0
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.gt ; 2 uses
  br i1 %.not803, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.ex, ptr %i.kt, align 4, !tbaa !33
  %i.ku = load i32, ptr %i.bw, align 4, !tbaa !96
  %i.kv = icmp slt i32 %i.ku, 2
  %i.kw = load ptr, ptr %i.bx, align 8, !tbaa !55
  %i.kx = load i64, ptr %i.by, align 8
  %i.ky = sext i32 %i.ex to i64                   ; 2 uses
  %i.kz = mul i64 %i.kx, %i.ky
  %.sink.idx.i.i820 = select i1 %i.kv, i64 0, i64 %i.kz
  %.sink.i.i821 = getelementptr inbounds nuw i8, ptr %i.kw, i64 %.sink.idx.i.i820 ; 6 uses
  %i.la = load i32, ptr %.sink.i.i821, align 4, !tbaa !33
  %i.lb = trunc nuw nsw i64 %i.gt to i32          ; 2 uses
  %..i822 = tail call i32 @llvm.smin.i32(i32 %i.la, i32 %i.lb)
  store i32 %..i822, ptr %.sink.i.i821, align 4, !tbaa !33
  %i.lc = getelementptr inbounds nuw i8, ptr %.sink.i.i821, i64 8 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !33
  %i.le = tail call i32 @llvm.smax.i32(i32 %i.ld, i32 %i.lb)
  store i32 %i.le, ptr %i.lc, align 4, !tbaa !33
  %i.lf = getelementptr inbounds nuw i8, ptr %.sink.i.i821, i64 4 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !33
  %i.lh = tail call i32 @llvm.smin.i32(i32 %i.lg, i32 %i.em)
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !33
  %i.li = getelementptr inbounds nuw i8, ptr %.sink.i.i821, i64 12 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !33
  %i.lk = tail call i32 @llvm.smax.i32(i32 %i.lj, i32 %i.em)
  store i32 %i.lk, ptr %i.li, align 4, !tbaa !33
  %i.ll = getelementptr inbounds nuw i8, ptr %.sink.i.i821, i64 16 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !33
  %i.ln = add nsw i32 %i.lm, 1
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !33
  %i.lo = load ptr, ptr %i.bz, align 8, !tbaa !50
  %i.lp = getelementptr inbounds nuw [16 x i8], ptr %i.lo, i64 %i.ky ; 2 uses
  %i.lq = load <2 x i64>, ptr %i.lp, align 8, !tbaa !40
  %i.lr = insertelement <2 x i64> %i.en, i64 %i.gt, i64 0
  %i.ls = add <2 x i64> %i.lq, %i.lr
  store <2 x i64> %i.ls, ptr %i.lp, align 8, !tbaa !40
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  store i32 0, ptr %i.kt, align 4, !tbaa !33
  %i.lt = load ptr, ptr %i.ca, align 8, !tbaa !55 ; 6 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !33
  %i.lv = trunc nuw nsw i64 %i.gt to i32          ; 2 uses
  %..i825 = tail call i32 @llvm.smin.i32(i32 %i.lu, i32 %i.lv)
  store i32 %..i825, ptr %i.lt, align 4, !tbaa !33
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !33
  %i.ly = tail call i32 @llvm.smax.i32(i32 %i.lx, i32 %i.lv)
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !33
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 4 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !33
  %i.mb = tail call i32 @llvm.smin.i32(i32 %i.ma, i32 %i.em)
  store i32 %i.mb, ptr %i.lz, align 4, !tbaa !33
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lt, i64 12 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !33
  %i.me = tail call i32 @llvm.smax.i32(i32 %i.md, i32 %i.em)
  store i32 %i.me, ptr %i.mc, align 4, !tbaa !33
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !33
  %i.mh = add nsw i32 %i.mg, 1
  store i32 %i.mh, ptr %i.mf, align 4, !tbaa !33
  %i.mi = load ptr, ptr %i.cb, align 8, !tbaa !50 ; 2 uses
  %i.mj = load <2 x i64>, ptr %i.mi, align 8, !tbaa !40
  %i.mk = insertelement <2 x i64> %i.en, i64 %i.gt, i64 0
  %i.ml = add <2 x i64> %i.mj, %i.mk
  store <2 x i64> %i.ml, ptr %i.mi, align 8, !tbaa !40
  br label %bb.ac

bb.t:                                             ; preds = %bb.i
  %i.mm = load i32, ptr %i.av, align 8, !tbaa !39
  %i.mn = icmp sgt i32 %i.mm, %i.ej
  br i1 %i.mn, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.mo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv1204
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !32
  %.not800 = icmp eq i8 %i.mp, 0
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv1204 ; 2 uses
  br i1 %.not800, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.ex, ptr %i.mq, align 4, !tbaa !33
  %i.mr = load i32, ptr %i.ax, align 4, !tbaa !96
  %i.ms = icmp slt i32 %i.mr, 2
  %i.mt = load ptr, ptr %i.ay, align 8, !tbaa !55
  %i.mu = load i64, ptr %i.az, align 8
  %i.mv = sext i32 %i.ex to i64                   ; 2 uses
  %i.mw = mul i64 %i.mu, %i.mv
  %.sink.idx.i.i826 = select i1 %i.ms, i64 0, i64 %i.mw
  %.sink.i.i827 = getelementptr inbounds nuw i8, ptr %i.mt, i64 %.sink.idx.i.i826 ; 6 uses
  %i.mx = load i32, ptr %.sink.i.i827, align 4, !tbaa !33
  %i.my = trunc nuw nsw i64 %indvars.iv1204 to i32 ; 2 uses
  %..i828 = tail call i32 @llvm.smin.i32(i32 %i.mx, i32 %i.my)
  store i32 %..i828, ptr %.sink.i.i827, align 4, !tbaa !33
  %i.mz = getelementptr inbounds nuw i8, ptr %.sink.i.i827, i64 8 ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !33
  %i.nb = tail call i32 @llvm.smax.i32(i32 %i.na, i32 %i.my)
  store i32 %i.nb, ptr %i.mz, align 4, !tbaa !33
  %i.nc = getelementptr inbounds nuw i8, ptr %.sink.i.i827, i64 4 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !33
  %i.ne = tail call i32 @llvm.smin.i32(i32 %i.nd, i32 %i.ej)
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !33
  %i.nf = getelementptr inbounds nuw i8, ptr %.sink.i.i827, i64 12 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !33
  %i.nh = tail call i32 @llvm.smax.i32(i32 %i.ng, i32 %i.ej)
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !33
  %i.ni = getelementptr inbounds nuw i8, ptr %.sink.i.i827, i64 16 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !33
  %i.nk = add nsw i32 %i.nj, 1
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !33
  %i.nl = load ptr, ptr %i.ba, align 8, !tbaa !50
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.nl, i64 %i.mv ; 2 uses
  %i.nn = load <2 x i64>, ptr %i.nm, align 8, !tbaa !40
  %i.no = insertelement <2 x i64> %i.en, i64 %indvars.iv1204, i64 0
  %i.np = add <2 x i64> %i.nn, %i.no
  store <2 x i64> %i.np, ptr %i.nm, align 8, !tbaa !40
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  store i32 0, ptr %i.mq, align 4, !tbaa !33
  %i.nq = load ptr, ptr %i.bc, align 8, !tbaa !55 ; 6 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !33
  %i.ns = trunc nuw nsw i64 %indvars.iv1204 to i32 ; 2 uses
  %..i831 = tail call i32 @llvm.smin.i32(i32 %i.nr, i32 %i.ns)
  store i32 %..i831, ptr %i.nq, align 4, !tbaa !33
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !33
  %i.nv = tail call i32 @llvm.smax.i32(i32 %i.nu, i32 %i.ns)
  store i32 %i.nv, ptr %i.nt, align 4, !tbaa !33
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 4 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !33
  %i.ny = tail call i32 @llvm.smin.i32(i32 %i.nx, i32 %i.ej)
  store i32 %i.ny, ptr %i.nw, align 4, !tbaa !33
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 12 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !33
  %i.ob = tail call i32 @llvm.smax.i32(i32 %i.oa, i32 %i.ej)
  store i32 %i.ob, ptr %i.nz, align 4, !tbaa !33
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nq, i64 16 ; 2 uses
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !33
  %i.oe = add nsw i32 %i.od, 1
  store i32 %i.oe, ptr %i.oc, align 4, !tbaa !33
  %i.of = load ptr, ptr %i.bd, align 8, !tbaa !50 ; 2 uses
  %i.og = load <2 x i64>, ptr %i.of, align 8, !tbaa !40
  %i.oh = insertelement <2 x i64> %i.en, i64 %indvars.iv1204, i64 0
  %i.oi = add <2 x i64> %i.og, %i.oh
  store <2 x i64> %i.oi, ptr %i.of, align 8, !tbaa !40
  br label %bb.ac

bb.x:                                             ; preds = %bb.e
  store i32 0, ptr %i.er, align 4, !tbaa !33
  %i.oj = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 12 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !33
  %i.ol = trunc nuw nsw i64 %indvars.iv1204 to i32 ; 6 uses
  %..i834 = tail call i32 @llvm.smin.i32(i32 %i.ok, i32 %i.ol)
  store i32 %..i834, ptr %i.oj, align 4, !tbaa !33
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 8 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !33
  %i.oo = tail call i32 @llvm.smax.i32(i32 %i.on, i32 %i.ol)
  store i32 %i.oo, ptr %i.om, align 4, !tbaa !33
  %i.op = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 8 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !33
  %i.or = tail call i32 @llvm.smin.i32(i32 %i.oq, i32 %i.ee)
  store i32 %i.or, ptr %i.op, align 4, !tbaa !33
  %i.os = getelementptr inbounds nuw i8, ptr %i.oj, i64 12 ; 8 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !33
  %i.ou = tail call i32 @llvm.smax.i32(i32 %i.ot, i32 %i.ee)
  store i32 %i.ou, ptr %i.os, align 4, !tbaa !33
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oj, i64 16 ; 8 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !33
  %i.ox = add nsw i32 %i.ow, 1
  store i32 %i.ox, ptr %i.ov, align 4, !tbaa !33
  %i.oy = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 6 uses
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !116
  %i.pa = add i64 %i.oz, %indvars.iv1204          ; 3 uses
  store i64 %i.pa, ptr %i.oy, align 8, !tbaa !116
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 8 ; 5 uses
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !117
  %i.pd = add i64 %i.pc, %indvars.iv1207          ; 3 uses
  store i64 %i.pd, ptr %i.pb, align 8, !tbaa !117
  %i.pe = or disjoint i64 %indvars.iv1204, 1      ; 6 uses
  %i.pf = load i32, ptr %i.eq, align 4, !tbaa !52
  %i.pg = sext i32 %i.pf to i64
  %i.ph = icmp slt i64 %i.pe, %i.pg
  br i1 %i.ph, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.pe
  store i32 0, ptr %i.pi, align 4, !tbaa !33
  %i.pj = load i32, ptr %i.oj, align 4, !tbaa !33
  %i.pk = trunc nuw nsw i64 %i.pe to i32          ; 4 uses
  %..i837 = tail call i32 @llvm.smin.i32(i32 %i.pj, i32 %i.pk)
  store i32 %..i837, ptr %i.oj, align 4, !tbaa !33
  %i.pl = load i32, ptr %i.om, align 4, !tbaa !33
  %i.pm = tail call i32 @llvm.smax.i32(i32 %i.pl, i32 %i.pk)
  store i32 %i.pm, ptr %i.om, align 4, !tbaa !33
  %i.pn = load i32, ptr %i.op, align 4, !tbaa !33
  %i.po = tail call i32 @llvm.smin.i32(i32 %i.pn, i32 %i.ee)
  store i32 %i.po, ptr %i.op, align 4, !tbaa !33
  %i.pp = load i32, ptr %i.os, align 4, !tbaa !33
  %i.pq = tail call i32 @llvm.smax.i32(i32 %i.pp, i32 %i.ee)
  store i32 %i.pq, ptr %i.os, align 4, !tbaa !33
  %i.pr = load i32, ptr %i.ov, align 4, !tbaa !33
  %i.ps = add nsw i32 %i.pr, 1
  store i32 %i.ps, ptr %i.ov, align 4, !tbaa !33
  %i.pt = add i64 %i.pa, %i.pe                    ; 2 uses
  store i64 %i.pt, ptr %i.oy, align 8, !tbaa !116
  %i.pu = add i64 %i.pd, %indvars.iv1207          ; 2 uses
  store i64 %i.pu, ptr %i.pb, align 8, !tbaa !117
  %i.pv = load i32, ptr %i.am, align 8, !tbaa !39
  %i.pw = icmp sgt i32 %i.pv, %i.eg
  br i1 %i.pw, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv1204
  store i32 0, ptr %i.px, align 4, !tbaa !33
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.pe
  store i32 0, ptr %i.py, align 4, !tbaa !33
  %i.pz = load i32, ptr %i.oj, align 4, !tbaa !33
  %..i840 = tail call i32 @llvm.smin.i32(i32 %i.pz, i32 %i.ol)
  %i.qa = load i32, ptr %i.om, align 4, !tbaa !33
  %i.qb = tail call i32 @llvm.smax.i32(i32 %i.qa, i32 %i.ol)
  %i.qc = load i32, ptr %i.op, align 4, !tbaa !33
  %i.qd = tail call i32 @llvm.smin.i32(i32 %i.qc, i32 %i.eg)
  %i.qe = load i32, ptr %i.os, align 4, !tbaa !33
  %i.qf = tail call i32 @llvm.smax.i32(i32 %i.qe, i32 %i.eg)
  %i.qg = load i32, ptr %i.ov, align 4, !tbaa !33
  %i.qh = add i64 %i.pt, %indvars.iv1204
  %..i843 = tail call i32 @llvm.smin.i32(i32 %..i840, i32 %i.pk)
  store i32 %..i843, ptr %i.oj, align 4, !tbaa !33
  %i.qi = tail call i32 @llvm.umax.i32(i32 %i.qb, i32 %i.pk)
  store i32 %i.qi, ptr %i.om, align 4, !tbaa !33
  store i32 %i.qd, ptr %i.op, align 4, !tbaa !33
  store i32 %i.qf, ptr %i.os, align 4, !tbaa !33
  %i.qj = add nsw i32 %i.qg, 2
  store i32 %i.qj, ptr %i.ov, align 4, !tbaa !33
  %i.qk = add i64 %i.qh, %i.pe
  store i64 %i.qk, ptr %i.oy, align 8, !tbaa !116
  %.reass1295 = add i64 %i.pu, %invariant.op1294
  store i64 %.reass1295, ptr %i.pb, align 8, !tbaa !117
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.ql = load i32, ptr %i.al, align 8, !tbaa !39
  %i.qm = icmp sgt i32 %i.ql, %i.ef
  br i1 %i.qm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv1204
  store i32 0, ptr %i.qn, align 4, !tbaa !33
  %i.qo = load i32, ptr %i.oj, align 4, !tbaa !33
  %..i846 = tail call i32 @llvm.smin.i32(i32 %i.qo, i32 %i.ol)
  store i32 %..i846, ptr %i.oj, align 4, !tbaa !33
  %i.qp = load i32, ptr %i.om, align 4, !tbaa !33
  %i.qq = tail call i32 @llvm.smax.i32(i32 %i.qp, i32 %i.ol)
  store i32 %i.qq, ptr %i.om, align 4, !tbaa !33
  %i.qr = load i32, ptr %i.op, align 4, !tbaa !33
  %i.qs = tail call i32 @llvm.smin.i32(i32 %i.qr, i32 %i.ef)
  store i32 %i.qs, ptr %i.op, align 4, !tbaa !33
  %i.qt = load i32, ptr %i.os, align 4, !tbaa !33
  %i.qu = tail call i32 @llvm.smax.i32(i32 %i.qt, i32 %i.ef)
  store i32 %i.qu, ptr %i.os, align 4, !tbaa !33
  %i.qv = load i32, ptr %i.ov, align 4, !tbaa !33
  %i.qw = add nsw i32 %i.qv, 1
  store i32 %i.qw, ptr %i.ov, align 4, !tbaa !33
  %i.qx = add i64 %i.pa, %indvars.iv1204
  store i64 %i.qx, ptr %i.oy, align 8, !tbaa !116
  %i.qy = add i64 %i.pd, %i.ed
  store i64 %i.qy, ptr %i.pb, align 8, !tbaa !117
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.y, %bb.ab, %bb.aa, %bb.r, %bb.s, %bb.m, %bb.v, %bb.w, %bb.t
  %indvars.iv.next1205 = add nuw nsw i64 %indvars.iv1204, 2 ; 2 uses
  %i.qz = load i32, ptr %i.z, align 4, !tbaa !52
  %i.ra = sext i32 %i.qz to i64
  %i.rb = icmp slt i64 %indvars.iv.next1205, %i.ra
  br i1 %i.rb, label %bb.e, label %._crit_edge1151, !llvm.loop !401

bb.ad:                                            ; preds = %.lr.ph1160, %._crit_edge1158
  %indvars.iv1213 = phi i64 [ %i.m, %.lr.ph1160 ], [ %indvars.iv.next1214, %._crit_edge1158 ] ; 12 uses
  %i.rc = load i64, ptr %i.cd, align 8, !tbaa !40 ; 2 uses
  %i.rd = mul i64 %i.rc, %indvars.iv1213
  %i.re = getelementptr inbounds nuw i8, ptr %.pre1237, i64 %i.rd ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rc ; 2 uses
  %i.rg = load i64, ptr %i.cg, align 8, !tbaa !40 ; 2 uses
  %i.rh = mul i64 %i.rg, %indvars.iv1213
  %i.ri = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.rh ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rg ; 4 uses
  %i.rk = load i32, ptr %i.ch, align 4, !tbaa !52
  %i.rl = icmp sgt i32 %i.rk, 0
  br i1 %i.rl, label %.lr.ph1157, label %._crit_edge1158

.lr.ph1157:                                       ; preds = %bb.ad
  %i.rm = or disjoint i64 %indvars.iv1213, 1      ; 5 uses
  %i.rn = trunc nuw i64 %indvars.iv1213 to i32    ; 2 uses
  %invariant.op1296 = shl nuw i64 %indvars.iv1213, 1
  %i.ro = trunc nuw i64 %i.rm to i32              ; 3 uses
  %invariant.op1298 = shl nuw i64 %i.rm, 1
  %i.rp = trunc nuw i64 %indvars.iv1213 to i32    ; 2 uses
  %i.rq = trunc nuw i64 %indvars.iv1213 to i32    ; 2 uses
  %i.rr = trunc nuw i64 %indvars.iv1213 to i32    ; 2 uses
  %i.rs = trunc nuw i64 %indvars.iv1213 to i32    ; 2 uses
  %i.rt = trunc nuw i64 %i.rm to i32              ; 9 uses
  %i.ru = insertelement <2 x i64> poison, i64 %i.rm, i64 1 ; 2 uses
  br label %bb.ae

._crit_edge1158:                                  ; preds = %bb.au, %bb.ad
  %indvars.iv.next1214 = add nuw nsw i64 %indvars.iv1213, 2 ; 2 uses
  %i.rv = trunc nuw i64 %indvars.iv.next1214 to i32
  %i.rw = icmp sgt i32 %.sroa.speculated, %i.rv
  br i1 %i.rw, label %bb.ad, label %.loopexit, !llvm.loop !402

bb.ae:                                            ; preds = %.lr.ph1157, %bb.au
  %indvars.iv1210 = phi i64 [ 0, %.lr.ph1157 ], [ %indvars.iv.next1211, %bb.au ] ; 19 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv1210 ; 4 uses
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !33 ; 2 uses
  %i.rz = icmp sgt i32 %i.ry, 0
  br i1 %i.rz, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.sa = load ptr, ptr %i.cc, align 8, !tbaa !122
  %i.sb = zext nneg i32 %i.ry to i64
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !33 ; 8 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.re, i64 %indvars.iv1210
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !32
  %.not795 = icmp eq i8 %i.sf, 0
  br i1 %.not795, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %i.sd, ptr %i.rx, align 4, !tbaa !33
  %i.sg = load i32, ptr %i.cn, align 4, !tbaa !96
  %i.sh = icmp slt i32 %i.sg, 2
  %i.si = load ptr, ptr %i.co, align 8, !tbaa !55
  %i.sj = load i64, ptr %i.cp, align 8
  %i.sk = sext i32 %i.sd to i64                   ; 2 uses
  %i.sl = mul i64 %i.sj, %i.sk
  %.sink.idx.i.i847 = select i1 %i.sh, i64 0, i64 %i.sl
  %.sink.i.i848 = getelementptr inbounds nuw i8, ptr %i.si, i64 %.sink.idx.i.i847 ; 6 uses
  %i.sm = load i32, ptr %.sink.i.i848, align 4, !tbaa !33
  %i.sn = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 2 uses
  %..i849 = tail call i32 @llvm.smin.i32(i32 %i.sm, i32 %i.sn)
  store i32 %..i849, ptr %.sink.i.i848, align 4, !tbaa !33
  %i.so = getelementptr inbounds nuw i8, ptr %.sink.i.i848, i64 8 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !33
  %i.sq = tail call i32 @llvm.smax.i32(i32 %i.sp, i32 %i.sn)
  store i32 %i.sq, ptr %i.so, align 4, !tbaa !33
  %i.sr = getelementptr inbounds nuw i8, ptr %.sink.i.i848, i64 4 ; 2 uses
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !33
  %i.st = tail call i32 @llvm.smin.i32(i32 %i.ss, i32 %i.rp)
  store i32 %i.st, ptr %i.sr, align 4, !tbaa !33
  %i.su = getelementptr inbounds nuw i8, ptr %.sink.i.i848, i64 12 ; 2 uses
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !33
  %i.sw = tail call i32 @llvm.smax.i32(i32 %i.sv, i32 %i.rp)
  store i32 %i.sw, ptr %i.su, align 4, !tbaa !33
  %i.sx = getelementptr inbounds nuw i8, ptr %.sink.i.i848, i64 16 ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !33
  %i.sz = add nsw i32 %i.sy, 1
  store i32 %i.sz, ptr %i.sx, align 4, !tbaa !33
  %i.ta = load ptr, ptr %i.cq, align 8, !tbaa !50
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.ta, i64 %i.sk ; 3 uses
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !116
  %i.td = add i64 %i.tc, %indvars.iv1210
  store i64 %i.td, ptr %i.tb, align 8, !tbaa !116
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store i32 0, ptr %i.rx, align 4, !tbaa !33
  %i.te = load ptr, ptr %i.cs, align 8, !tbaa !55 ; 6 uses
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !33
  %i.tg = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 2 uses
  %..i852 = tail call i32 @llvm.smin.i32(i32 %i.tf, i32 %i.tg)
  store i32 %..i852, ptr %i.te, align 4, !tbaa !33
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !33
  %i.tj = tail call i32 @llvm.smax.i32(i32 %i.ti, i32 %i.tg)
  store i32 %i.tj, ptr %i.th, align 4, !tbaa !33
  %i.tk = getelementptr inbounds nuw i8, ptr %i.te, i64 4 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !33
  %i.tm = tail call i32 @llvm.smin.i32(i32 %i.tl, i32 %i.rq)
  store i32 %i.tm, ptr %i.tk, align 4, !tbaa !33
  %i.tn = getelementptr inbounds nuw i8, ptr %i.te, i64 12 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !33
  %i.tp = tail call i32 @llvm.smax.i32(i32 %i.to, i32 %i.rq)
  store i32 %i.tp, ptr %i.tn, align 4, !tbaa !33
  %i.tq = getelementptr inbounds nuw i8, ptr %i.te, i64 16 ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !33
  %i.ts = add nsw i32 %i.tr, 1
  store i32 %i.ts, ptr %i.tq, align 4, !tbaa !33
  %i.tt = load ptr, ptr %i.ct, align 8, !tbaa !50 ; 3 uses
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !116
  %i.tv = add i64 %i.tu, %indvars.iv1210
  store i64 %i.tv, ptr %i.tt, align 8, !tbaa !116
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink1321 = phi ptr [ %i.tt, %bb.ah ], [ %i.tb, %bb.ag ]
  %i.tw = getelementptr inbounds nuw i8, ptr %.sink1321, i64 8 ; 2 uses
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !117
  %i.ty = add i64 %i.tx, %indvars.iv1213
  store i64 %i.ty, ptr %i.tw, align 8, !tbaa !117
  %i.tz = or disjoint i64 %indvars.iv1210, 1      ; 12 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !32
  %.not796 = icmp eq i8 %i.ub, 0
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.tz ; 2 uses
  br i1 %.not796, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.sd, ptr %i.uc, align 4, !tbaa !33
  %i.ud = load i32, ptr %i.cv, align 4, !tbaa !96
  %i.ue = icmp slt i32 %i.ud, 2
  %i.uf = load ptr, ptr %i.cw, align 8, !tbaa !55
  %i.ug = load i64, ptr %i.cx, align 8
  %i.uh = sext i32 %i.sd to i64                   ; 2 uses
  %i.ui = mul i64 %i.ug, %i.uh
  %.sink.idx.i.i853 = select i1 %i.ue, i64 0, i64 %i.ui
  %.sink.i.i854 = getelementptr inbounds nuw i8, ptr %i.uf, i64 %.sink.idx.i.i853 ; 6 uses
  %i.uj = load i32, ptr %.sink.i.i854, align 4, !tbaa !33
  %i.uk = trunc nuw nsw i64 %i.tz to i32          ; 2 uses
  %..i855 = tail call i32 @llvm.smin.i32(i32 %i.uj, i32 %i.uk)
  store i32 %..i855, ptr %.sink.i.i854, align 4, !tbaa !33
  %i.ul = getelementptr inbounds nuw i8, ptr %.sink.i.i854, i64 8 ; 2 uses
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !33
  %i.un = tail call i32 @llvm.smax.i32(i32 %i.um, i32 %i.uk)
  store i32 %i.un, ptr %i.ul, align 4, !tbaa !33
  %i.uo = getelementptr inbounds nuw i8, ptr %.sink.i.i854, i64 4 ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !33
  %i.uq = tail call i32 @llvm.smin.i32(i32 %i.up, i32 %i.rr)
  store i32 %i.uq, ptr %i.uo, align 4, !tbaa !33
end_hunk_5
begin_hunk_6_@_ZNK2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.vm = tail call i32 @llvm.smax.i32(i32 %i.vl, i32 %i.rs)
  store i32 %i.vm, ptr %i.vk, align 4, !tbaa !33
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vb, i64 16 ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !33
  %i.vp = add nsw i32 %i.vo, 1
  store i32 %i.vp, ptr %i.vn, align 4, !tbaa !33
  %i.vq = load ptr, ptr %i.db, align 8, !tbaa !50 ; 3 uses
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !116
  %i.vs = add i64 %i.vr, %i.tz
  store i64 %i.vs, ptr %i.vq, align 8, !tbaa !116
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink1324 = phi ptr [ %i.vq, %bb.ak ], [ %i.uy, %bb.aj ]
  %i.vt = getelementptr inbounds nuw i8, ptr %.sink1324, i64 8 ; 2 uses
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !117
  %i.vv = add i64 %i.vu, %indvars.iv1213
  store i64 %i.vv, ptr %i.vt, align 8, !tbaa !117
  %i.vw = load i32, ptr %i.dc, align 8, !tbaa !39
  %i.vx = icmp sgt i32 %i.vw, %i.rt
  br i1 %i.vx, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.vy = getelementptr inbounds nuw i8, ptr %i.rf, i64 %indvars.iv1210
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !32
  %.not797 = icmp eq i8 %i.vz, 0
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv1210 ; 2 uses
  br i1 %.not797, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 %i.sd, ptr %i.wa, align 4, !tbaa !33
  %i.wb = load i32, ptr %i.de, align 4, !tbaa !96
  %i.wc = icmp slt i32 %i.wb, 2
  %i.wd = load ptr, ptr %i.df, align 8, !tbaa !55
  %i.we = load i64, ptr %i.dg, align 8
  %i.wf = sext i32 %i.sd to i64                   ; 2 uses
  %i.wg = mul i64 %i.we, %i.wf
  %.sink.idx.i.i859 = select i1 %i.wc, i64 0, i64 %i.wg
  %.sink.i.i860 = getelementptr inbounds nuw i8, ptr %i.wd, i64 %.sink.idx.i.i859 ; 6 uses
  %i.wh = load i32, ptr %.sink.i.i860, align 4, !tbaa !33
  %i.wi = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 2 uses
  %..i861 = tail call i32 @llvm.smin.i32(i32 %i.wh, i32 %i.wi)
  store i32 %..i861, ptr %.sink.i.i860, align 4, !tbaa !33
  %i.wj = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 8 ; 2 uses
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !33
  %i.wl = tail call i32 @llvm.smax.i32(i32 %i.wk, i32 %i.wi)
  store i32 %i.wl, ptr %i.wj, align 4, !tbaa !33
  %i.wm = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 4 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !33
  %i.wo = tail call i32 @llvm.smin.i32(i32 %i.wn, i32 %i.rt)
  store i32 %i.wo, ptr %i.wm, align 4, !tbaa !33
  %i.wp = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 12 ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !33
  %i.wr = tail call i32 @llvm.smax.i32(i32 %i.wq, i32 %i.rt)
  store i32 %i.wr, ptr %i.wp, align 4, !tbaa !33
  %i.ws = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 16 ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !33
  %i.wu = add nsw i32 %i.wt, 1
  store i32 %i.wu, ptr %i.ws, align 4, !tbaa !33
  %i.wv = load ptr, ptr %i.dh, align 8, !tbaa !50
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr %i.wv, i64 %i.wf ; 3 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !116
  %i.wy = add i64 %i.wx, %indvars.iv1210
  store i64 %i.wy, ptr %i.ww, align 8, !tbaa !116
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i32 0, ptr %i.wa, align 4, !tbaa !33
  %i.wz = load ptr, ptr %i.dj, align 8, !tbaa !55 ; 6 uses
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !33
  %i.xb = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 2 uses
  %..i864 = tail call i32 @llvm.smin.i32(i32 %i.xa, i32 %i.xb)
  store i32 %..i864, ptr %i.wz, align 4, !tbaa !33
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 8 ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !33
  %i.xe = tail call i32 @llvm.smax.i32(i32 %i.xd, i32 %i.xb)
  store i32 %i.xe, ptr %i.xc, align 4, !tbaa !33
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wz, i64 4 ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !33
  %i.xh = tail call i32 @llvm.smin.i32(i32 %i.xg, i32 %i.rt)
  store i32 %i.xh, ptr %i.xf, align 4, !tbaa !33
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wz, i64 12 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !33
  %i.xk = tail call i32 @llvm.smax.i32(i32 %i.xj, i32 %i.rt)
  store i32 %i.xk, ptr %i.xi, align 4, !tbaa !33
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 2 uses
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !33
  %i.xn = add nsw i32 %i.xm, 1
  store i32 %i.xn, ptr %i.xl, align 4, !tbaa !33
  %i.xo = load ptr, ptr %i.dk, align 8, !tbaa !50 ; 3 uses
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !116
  %i.xq = add i64 %i.xp, %indvars.iv1210
  store i64 %i.xq, ptr %i.xo, align 8, !tbaa !116
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink1327 = phi ptr [ %i.xo, %bb.ao ], [ %i.ww, %bb.an ]
  %i.xr = getelementptr inbounds nuw i8, ptr %.sink1327, i64 8 ; 2 uses
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !117
  %i.xt = add i64 %i.xs, %i.rm
  store i64 %i.xt, ptr %i.xr, align 8, !tbaa !117
  %i.xu = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.tz
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !32
  %.not798 = icmp eq i8 %i.xv, 0
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.tz ; 2 uses
  br i1 %.not798, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.sd, ptr %i.xw, align 4, !tbaa !33
  %i.xx = load i32, ptr %i.dm, align 4, !tbaa !96
  %i.xy = icmp slt i32 %i.xx, 2
  %i.xz = load ptr, ptr %i.dn, align 8, !tbaa !55
  %i.ya = load i64, ptr %i.do, align 8
  %i.yb = sext i32 %i.sd to i64                   ; 2 uses
  %i.yc = mul i64 %i.ya, %i.yb
  %.sink.idx.i.i865 = select i1 %i.xy, i64 0, i64 %i.yc
  %.sink.i.i866 = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.sink.idx.i.i865 ; 6 uses
  %i.yd = load i32, ptr %.sink.i.i866, align 4, !tbaa !33
  %i.ye = trunc nuw nsw i64 %i.tz to i32          ; 2 uses
  %..i867 = tail call i32 @llvm.smin.i32(i32 %i.yd, i32 %i.ye)
  store i32 %..i867, ptr %.sink.i.i866, align 4, !tbaa !33
  %i.yf = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 8 ; 2 uses
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !33
  %i.yh = tail call i32 @llvm.smax.i32(i32 %i.yg, i32 %i.ye)
  store i32 %i.yh, ptr %i.yf, align 4, !tbaa !33
  %i.yi = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 4 ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !33
  %i.yk = tail call i32 @llvm.smin.i32(i32 %i.yj, i32 %i.rt)
  store i32 %i.yk, ptr %i.yi, align 4, !tbaa !33
  %i.yl = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 12 ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !33
  %i.yn = tail call i32 @llvm.smax.i32(i32 %i.ym, i32 %i.rt)
  store i32 %i.yn, ptr %i.yl, align 4, !tbaa !33
  %i.yo = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 16 ; 2 uses
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !33
  %i.yq = add nsw i32 %i.yp, 1
  store i32 %i.yq, ptr %i.yo, align 4, !tbaa !33
  %i.yr = load ptr, ptr %i.dp, align 8, !tbaa !50
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %i.yr, i64 %i.yb ; 2 uses
  %i.yt = load <2 x i64>, ptr %i.ys, align 8, !tbaa !40
  %i.yu = insertelement <2 x i64> %i.ru, i64 %i.tz, i64 0
  %i.yv = add <2 x i64> %i.yt, %i.yu
  store <2 x i64> %i.yv, ptr %i.ys, align 8, !tbaa !40
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  store i32 0, ptr %i.xw, align 4, !tbaa !33
  %i.yw = load ptr, ptr %i.dq, align 8, !tbaa !55 ; 6 uses
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !33
  %i.yy = trunc nuw nsw i64 %i.tz to i32          ; 2 uses
  %..i870 = tail call i32 @llvm.smin.i32(i32 %i.yx, i32 %i.yy)
  store i32 %..i870, ptr %i.yw, align 4, !tbaa !33
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 8 ; 2 uses
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !33
  %i.zb = tail call i32 @llvm.smax.i32(i32 %i.za, i32 %i.yy)
  store i32 %i.zb, ptr %i.yz, align 4, !tbaa !33
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yw, i64 4 ; 2 uses
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !33
  %i.ze = tail call i32 @llvm.smin.i32(i32 %i.zd, i32 %i.rt)
  store i32 %i.ze, ptr %i.zc, align 4, !tbaa !33
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yw, i64 12 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !33
  %i.zh = tail call i32 @llvm.smax.i32(i32 %i.zg, i32 %i.rt)
  store i32 %i.zh, ptr %i.zf, align 4, !tbaa !33
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yw, i64 16 ; 2 uses
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !33
  %i.zk = add nsw i32 %i.zj, 1
  store i32 %i.zk, ptr %i.zi, align 4, !tbaa !33
  %i.zl = load ptr, ptr %i.dr, align 8, !tbaa !50 ; 2 uses
  %i.zm = load <2 x i64>, ptr %i.zl, align 8, !tbaa !40
  %i.zn = insertelement <2 x i64> %i.ru, i64 %i.tz, i64 0
  %i.zo = add <2 x i64> %i.zm, %i.zn
  store <2 x i64> %i.zo, ptr %i.zl, align 8, !tbaa !40
  br label %bb.au

bb.as:                                            ; preds = %bb.ae
  store i32 0, ptr %i.rx, align 4, !tbaa !33
  %i.zp = or disjoint i64 %indvars.iv1210, 1      ; 5 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.zp
  store i32 0, ptr %i.zq, align 4, !tbaa !33
  %i.zr = load ptr, ptr %i.cj, align 8, !tbaa !55 ; 8 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !33
  %i.zt = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 4 uses
  %..i873 = tail call i32 @llvm.smin.i32(i32 %i.zs, i32 %i.zt)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 8 ; 4 uses
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !33
  %i.zw = tail call i32 @llvm.smax.i32(i32 %i.zv, i32 %i.zt)
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zr, i64 4 ; 4 uses
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !33
  %i.zz = tail call i32 @llvm.smin.i32(i32 %i.zy, i32 %i.rn)
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zr, i64 12 ; 4 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !33
  %i.aac = tail call i32 @llvm.smax.i32(i32 %i.aab, i32 %i.rn)
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zr, i64 16 ; 4 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !33
  %i.aaf = load ptr, ptr %i.ck, align 8, !tbaa !50 ; 4 uses
  %i.aag = load i64, ptr %i.aaf, align 8, !tbaa !116
  %i.aah = add i64 %i.aag, %indvars.iv1210
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8 ; 3 uses
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !117
  %2 = trunc nuw nsw i64 %i.zp to i32             ; 4 uses
  %..i876 = tail call i32 @llvm.smin.i32(i32 %..i873, i32 %2)
  store i32 %..i876, ptr %i.zr, align 4, !tbaa !33
  %i.aak = tail call i32 @llvm.umax.i32(i32 %i.zw, i32 %2)
  store i32 %i.aak, ptr %i.zu, align 4, !tbaa !33
  store i32 %i.zz, ptr %i.zx, align 4, !tbaa !33
  store i32 %i.aac, ptr %i.aaa, align 4, !tbaa !33
  %i.aal = add nsw i32 %i.aae, 2
  store i32 %i.aal, ptr %i.aad, align 4, !tbaa !33
  %i.aam = add i64 %i.aah, %i.zp                  ; 2 uses
  store i64 %i.aam, ptr %i.aaf, align 8, !tbaa !116
  %.reass1297 = add i64 %i.aaj, %invariant.op1296 ; 2 uses
  store i64 %.reass1297, ptr %i.aai, align 8, !tbaa !117
  %i.aan = load i32, ptr %i.cl, align 8, !tbaa !39
  %i.aao = icmp sgt i32 %i.aan, %i.ro
  br i1 %i.aao, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv1210
  store i32 0, ptr %i.aap, align 4, !tbaa !33
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.zp
  store i32 0, ptr %i.aaq, align 4, !tbaa !33
  %i.aar = load i32, ptr %i.zr, align 4, !tbaa !33
  %..i879 = tail call i32 @llvm.smin.i32(i32 %i.aar, i32 %i.zt)
  %i.aas = load i32, ptr %i.zu, align 4, !tbaa !33
  %i.aat = tail call i32 @llvm.smax.i32(i32 %i.aas, i32 %i.zt)
  %i.aau = load i32, ptr %i.zx, align 4, !tbaa !33
  %i.aav = tail call i32 @llvm.smin.i32(i32 %i.aau, i32 %i.ro)
  %i.aaw = load i32, ptr %i.aaa, align 4, !tbaa !33
  %i.aax = tail call i32 @llvm.smax.i32(i32 %i.aaw, i32 %i.ro)
  %i.aay = load i32, ptr %i.aad, align 4, !tbaa !33
  %i.aaz = add i64 %i.aam, %indvars.iv1210
  %..i882 = tail call i32 @llvm.smin.i32(i32 %..i879, i32 %2)
  store i32 %..i882, ptr %i.zr, align 4, !tbaa !33
  %i.aba = tail call i32 @llvm.umax.i32(i32 %i.aat, i32 %2)
  store i32 %i.aba, ptr %i.zu, align 4, !tbaa !33
  store i32 %i.aav, ptr %i.zx, align 4, !tbaa !33
  store i32 %i.aax, ptr %i.aaa, align 4, !tbaa !33
  %i.abb = add nsw i32 %i.aay, 2
  store i32 %i.abb, ptr %i.aad, align 4, !tbaa !33
  %i.abc = add i64 %i.aaz, %i.zp
  store i64 %i.abc, ptr %i.aaf, align 8, !tbaa !116
  %.reass1299 = add i64 %.reass1297, %invariant.op1298
  store i64 %.reass1299, ptr %i.aai, align 8, !tbaa !117
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.al, %bb.ar, %bb.aq
  %indvars.iv.next1211 = add nuw nsw i64 %indvars.iv1210, 2 ; 2 uses
  %i.abd = load i32, ptr %i.z, align 4, !tbaa !52
  %i.abe = sext i32 %i.abd to i64
  %i.abf = icmp slt i64 %indvars.iv.next1211, %i.abe
  br i1 %i.abf, label %bb.ae, label %._crit_edge1158, !llvm.loop !403

bb.av:                                            ; preds = %bb.b
  br i1 %.not785, label %.preheader, label %.preheader1109

.preheader1109:                                   ; preds = %bb.av
  br i1 %i.ac, label %.lr.ph1166, label %.loopexit

.lr.ph1166:                                       ; preds = %.preheader1109
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre1238 = load ptr, ptr %i.f, align 8, !tbaa !416 ; 2 uses
  %.phi.trans.insert1239 = getelementptr inbounds nuw i8, ptr %.pre1238, i64 24
  %.pre1240 = load ptr, ptr %.phi.trans.insert1239, align 8, !tbaa !55
  %i.abh = getelementptr inbounds nuw i8, ptr %.pre1238, i64 128
  %i.abi = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !55
  %i.abk = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.abl = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.abm = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 32
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 432
  %i.abp = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 12
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 32
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 136
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abp, i64 432
  %i.abu = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 32
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abu, i64 432
  %i.abx = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 12
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abx, i64 32
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abx, i64 136
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abx, i64 432
  %i.acc = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 32
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acc, i64 432
  %i.acf = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 12
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 32
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acf, i64 136
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acf, i64 432
  %i.ack = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 32
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 432
  %i.acn = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 12
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 32
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acn, i64 136
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acn, i64 432
  %i.acs = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.act = getelementptr inbounds nuw i8, ptr %i.s, i64 432
  br label %bb.aw

.preheader:                                       ; preds = %bb.av
  br i1 %i.ac, label %.lr.ph1173, label %.loopexit

.lr.ph1173:                                       ; preds = %.preheader
  %i.acu = load ptr, ptr %i.f, align 8, !tbaa !416, !nonnull !93, !align !94 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 24
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !55
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acu, i64 128
  %i.acy = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !55
  %i.ada = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.adc = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 4 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.s, i64 136 ; 4 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.s, i64 432 ; 3 uses
  %i.adg = icmp sgt i32 %i.aa, 0
  br i1 %i.adg, label %.lr.ph1173.split, label %.loopexit

bb.aw:                                            ; preds = %.lr.ph1166, %._crit_edge1164
  %indvars.iv1219 = phi i64 [ %i.m, %.lr.ph1166 ], [ %indvars.iv.next1220, %._crit_edge1164 ] ; 13 uses
  %i.adh = load i64, ptr %i.abh, align 8, !tbaa !40 ; 2 uses
  %i.adi = mul i64 %i.adh, %indvars.iv1219
  %i.adj = getelementptr inbounds nuw i8, ptr %.pre1240, i64 %i.adi ; 3 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 %i.adh ; 2 uses
  %i.adl = load i64, ptr %i.abk, align 8, !tbaa !40 ; 2 uses
  %i.adm = mul i64 %i.adl, %indvars.iv1219
  %i.adn = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.adm ; 4 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.adl ; 4 uses
  %i.adp = load i32, ptr %i.abl, align 4, !tbaa !52
  %i.adq = icmp sgt i32 %i.adp, 0
  br i1 %i.adq, label %.lr.ph1163, label %._crit_edge1164

.lr.ph1163:                                       ; preds = %bb.aw
  %i.adr = or disjoint i64 %indvars.iv1219, 1     ; 9 uses
  %i.ads = trunc nuw i64 %indvars.iv1219 to i32   ; 4 uses
  %i.adt = trunc nuw i64 %i.adr to i32            ; 4 uses
  %invariant.op1300 = add nuw i64 %indvars.iv1219, %i.adr
  %invariant.op1302 = add nuw i64 %indvars.iv1219, %i.adr
  %i.adu = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.adv = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.adw = trunc nuw i64 %i.adr to i32            ; 2 uses
  %i.adx = trunc nuw i64 %i.adr to i32            ; 2 uses
  %i.ady = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.adz = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.aea = trunc nuw i64 %i.adr to i32            ; 2 uses
  %i.aeb = trunc nuw i64 %i.adr to i32            ; 2 uses
  %i.aec = insertelement <2 x i64> poison, i64 %i.adr, i64 1 ; 2 uses
  br label %bb.ax

._crit_edge1164:                                  ; preds = %bb.bn, %bb.aw
  %indvars.iv.next1220 = add nuw nsw i64 %indvars.iv1219, 2 ; 2 uses
  %i.aed = trunc nuw i64 %indvars.iv.next1220 to i32
  %i.aee = icmp sgt i32 %.sroa.speculated, %i.aed
  br i1 %i.aee, label %bb.aw, label %.loopexit, !llvm.loop !404

bb.ax:                                            ; preds = %.lr.ph1163, %bb.bn
  %indvars.iv1216 = phi i64 [ 0, %.lr.ph1163 ], [ %indvars.iv.next1217, %bb.bn ] ; 18 uses
  %i.aef = phi ptr [ %i.abl, %.lr.ph1163 ], [ %i.z, %bb.bn ] ; 2 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %indvars.iv1216 ; 4 uses
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !33 ; 2 uses
  %i.aei = icmp sgt i32 %i.aeh, 0
  br i1 %i.aei, label %bb.ay, label %bb.bl

bb.ay:                                            ; preds = %bb.ax
  %i.aej = load ptr, ptr %i.abg, align 8, !tbaa !122
  %i.aek = zext nneg i32 %i.aeh to i64
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.aej, i64 %i.aek
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !33 ; 8 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adj, i64 %indvars.iv1216
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !32
  %.not790 = icmp eq i8 %i.aeo, 0
  br i1 %.not790, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 %i.aem, ptr %i.aeg, align 4, !tbaa !33
  %i.aep = load i32, ptr %i.abq, align 4, !tbaa !96
  %i.aeq = icmp slt i32 %i.aep, 2
  %i.aer = load ptr, ptr %i.abr, align 8, !tbaa !55
  %i.aes = load i64, ptr %i.abs, align 8
  %i.aet = sext i32 %i.aem to i64                 ; 2 uses
  %i.aeu = mul i64 %i.aes, %i.aet
  %.sink.idx.i.i883 = select i1 %i.aeq, i64 0, i64 %i.aeu
  %.sink.i.i884 = getelementptr inbounds nuw i8, ptr %i.aer, i64 %.sink.idx.i.i883 ; 6 uses
  %i.aev = load i32, ptr %.sink.i.i884, align 4, !tbaa !33
  %i.aew = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i885 = tail call i32 @llvm.smin.i32(i32 %i.aev, i32 %i.aew)
  store i32 %..i885, ptr %.sink.i.i884, align 4, !tbaa !33
  %i.aex = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 8 ; 2 uses
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !33
  %i.aez = tail call i32 @llvm.smax.i32(i32 %i.aey, i32 %i.aew)
  store i32 %i.aez, ptr %i.aex, align 4, !tbaa !33
  %i.afa = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 4 ; 2 uses
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !33
  %i.afc = tail call i32 @llvm.smin.i32(i32 %i.afb, i32 %i.adu)
  store i32 %i.afc, ptr %i.afa, align 4, !tbaa !33
  %i.afd = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 12 ; 2 uses
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !33
  %i.aff = tail call i32 @llvm.smax.i32(i32 %i.afe, i32 %i.adu)
  store i32 %i.aff, ptr %i.afd, align 4, !tbaa !33
  %i.afg = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 16 ; 2 uses
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !33
  %i.afi = add nsw i32 %i.afh, 1
  store i32 %i.afi, ptr %i.afg, align 4, !tbaa !33
  %i.afj = load ptr, ptr %i.abt, align 8, !tbaa !50
  %i.afk = getelementptr inbounds nuw [16 x i8], ptr %i.afj, i64 %i.aet ; 3 uses
  %i.afl = load i64, ptr %i.afk, align 8, !tbaa !116
  %i.afm = add i64 %i.afl, %indvars.iv1216
  store i64 %i.afm, ptr %i.afk, align 8, !tbaa !116
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  store i32 0, ptr %i.aeg, align 4, !tbaa !33
  %i.afn = load ptr, ptr %i.abv, align 8, !tbaa !55 ; 6 uses
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !33
  %i.afp = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i888 = tail call i32 @llvm.smin.i32(i32 %i.afo, i32 %i.afp)
  store i32 %..i888, ptr %i.afn, align 4, !tbaa !33
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 8 ; 2 uses
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !33
  %i.afs = tail call i32 @llvm.smax.i32(i32 %i.afr, i32 %i.afp)
  store i32 %i.afs, ptr %i.afq, align 4, !tbaa !33
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afn, i64 4 ; 2 uses
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !33
  %i.afv = tail call i32 @llvm.smin.i32(i32 %i.afu, i32 %i.adv)
  store i32 %i.afv, ptr %i.aft, align 4, !tbaa !33
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afn, i64 12 ; 2 uses
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !33
  %i.afy = tail call i32 @llvm.smax.i32(i32 %i.afx, i32 %i.adv)
  store i32 %i.afy, ptr %i.afw, align 4, !tbaa !33
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afn, i64 16 ; 2 uses
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !33
  %i.agb = add nsw i32 %i.aga, 1
  store i32 %i.agb, ptr %i.afz, align 4, !tbaa !33
  %i.agc = load ptr, ptr %i.abw, align 8, !tbaa !50 ; 3 uses
  %i.agd = load i64, ptr %i.agc, align 8, !tbaa !116
  %i.age = add i64 %i.agd, %indvars.iv1216
  store i64 %i.age, ptr %i.agc, align 8, !tbaa !116
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink1330 = phi ptr [ %i.agc, %bb.ba ], [ %i.afk, %bb.az ]
  %i.agf = getelementptr inbounds nuw i8, ptr %.sink1330, i64 8 ; 2 uses
  %i.agg = load i64, ptr %i.agf, align 8, !tbaa !117
  %i.agh = add i64 %i.agg, %indvars.iv1219
  store i64 %i.agh, ptr %i.agf, align 8, !tbaa !117
  %i.agi = getelementptr inbounds nuw i8, ptr %i.adk, i64 %indvars.iv1216
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !32
  %.not791 = icmp eq i8 %i.agj, 0
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %indvars.iv1216 ; 2 uses
  br i1 %.not791, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.aem, ptr %i.agk, align 4, !tbaa !33
  %i.agl = load i32, ptr %i.aby, align 4, !tbaa !96
  %i.agm = icmp slt i32 %i.agl, 2
  %i.agn = load ptr, ptr %i.abz, align 8, !tbaa !55
  %i.ago = load i64, ptr %i.aca, align 8
  %i.agp = sext i32 %i.aem to i64                 ; 2 uses
  %i.agq = mul i64 %i.ago, %i.agp
  %.sink.idx.i.i889 = select i1 %i.agm, i64 0, i64 %i.agq
  %.sink.i.i890 = getelementptr inbounds nuw i8, ptr %i.agn, i64 %.sink.idx.i.i889 ; 6 uses
  %i.agr = load i32, ptr %.sink.i.i890, align 4, !tbaa !33
  %i.ags = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i891 = tail call i32 @llvm.smin.i32(i32 %i.agr, i32 %i.ags)
  store i32 %..i891, ptr %.sink.i.i890, align 4, !tbaa !33
  %i.agt = getelementptr inbounds nuw i8, ptr %.sink.i.i890, i64 8 ; 2 uses
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !33
  %i.agv = tail call i32 @llvm.smax.i32(i32 %i.agu, i32 %i.ags)
  store i32 %i.agv, ptr %i.agt, align 4, !tbaa !33
  %i.agw = getelementptr inbounds nuw i8, ptr %.sink.i.i890, i64 4 ; 2 uses
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !33
  %i.agy = tail call i32 @llvm.smin.i32(i32 %i.agx, i32 %i.adw)
  store i32 %i.agy, ptr %i.agw, align 4, !tbaa !33
  %i.agz = getelementptr inbounds nuw i8, ptr %.sink.i.i890, i64 12 ; 2 uses
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !33
  %i.ahb = tail call i32 @llvm.smax.i32(i32 %i.aha, i32 %i.adw)
  store i32 %i.ahb, ptr %i.agz, align 4, !tbaa !33
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sink.i.i890, i64 16 ; 2 uses
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !33
  %i.ahe = add nsw i32 %i.ahd, 1
  store i32 %i.ahe, ptr %i.ahc, align 4, !tbaa !33
  %i.ahf = load ptr, ptr %i.acb, align 8, !tbaa !50
  %i.ahg = getelementptr inbounds nuw [16 x i8], ptr %i.ahf, i64 %i.agp ; 3 uses
  %i.ahh = load i64, ptr %i.ahg, align 8, !tbaa !116
  %i.ahi = add i64 %i.ahh, %indvars.iv1216
  store i64 %i.ahi, ptr %i.ahg, align 8, !tbaa !116
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  store i32 0, ptr %i.agk, align 4, !tbaa !33
  %i.ahj = load ptr, ptr %i.acd, align 8, !tbaa !55 ; 6 uses
  %i.ahk = load i32, ptr %i.ahj, align 4, !tbaa !33
  %i.ahl = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i894 = tail call i32 @llvm.smin.i32(i32 %i.ahk, i32 %i.ahl)
  store i32 %..i894, ptr %i.ahj, align 4, !tbaa !33
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8 ; 2 uses
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !33
  %i.aho = tail call i32 @llvm.smax.i32(i32 %i.ahn, i32 %i.ahl)
  store i32 %i.aho, ptr %i.ahm, align 4, !tbaa !33
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4 ; 2 uses
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !33
  %i.ahr = tail call i32 @llvm.smin.i32(i32 %i.ahq, i32 %i.adx)
  store i32 %i.ahr, ptr %i.ahp, align 4, !tbaa !33
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahj, i64 12 ; 2 uses
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !33
  %i.ahu = tail call i32 @llvm.smax.i32(i32 %i.aht, i32 %i.adx)
  store i32 %i.ahu, ptr %i.ahs, align 4, !tbaa !33
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16 ; 2 uses
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !33
  %i.ahx = add nsw i32 %i.ahw, 1
  store i32 %i.ahx, ptr %i.ahv, align 4, !tbaa !33
  %i.ahy = load ptr, ptr %i.ace, align 8, !tbaa !50 ; 3 uses
  %i.ahz = load i64, ptr %i.ahy, align 8, !tbaa !116
  %i.aia = add i64 %i.ahz, %indvars.iv1216
  store i64 %i.aia, ptr %i.ahy, align 8, !tbaa !116
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink1333 = phi ptr [ %i.ahy, %bb.bd ], [ %i.ahg, %bb.bc ]
  %i.aib = getelementptr inbounds nuw i8, ptr %.sink1333, i64 8 ; 2 uses
  %i.aic = load i64, ptr %i.aib, align 8, !tbaa !117
  %i.aid = add i64 %i.aic, %i.adr
  store i64 %i.aid, ptr %i.aib, align 8, !tbaa !117
  %i.aie = or disjoint i64 %indvars.iv1216, 1     ; 13 uses
  %i.aif = load i32, ptr %i.aef, align 4, !tbaa !52
  %i.aig = sext i32 %i.aif to i64
  %i.aih = icmp slt i64 %i.aie, %i.aig
  br i1 %i.aih, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %bb.be
  %i.aii = getelementptr inbounds nuw i8, ptr %i.adj, i64 %i.aie
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !32
  %.not792 = icmp eq i8 %i.aij, 0
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %i.aie ; 2 uses
  br i1 %.not792, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.aem, ptr %i.aik, align 4, !tbaa !33
  %i.ail = load i32, ptr %i.acg, align 4, !tbaa !96
  %i.aim = icmp slt i32 %i.ail, 2
  %i.ain = load ptr, ptr %i.ach, align 8, !tbaa !55
  %i.aio = load i64, ptr %i.aci, align 8
  %i.aip = sext i32 %i.aem to i64                 ; 2 uses
  %i.aiq = mul i64 %i.aio, %i.aip
  %.sink.idx.i.i895 = select i1 %i.aim, i64 0, i64 %i.aiq
  %.sink.i.i896 = getelementptr inbounds nuw i8, ptr %i.ain, i64 %.sink.idx.i.i895 ; 6 uses
  %i.air = load i32, ptr %.sink.i.i896, align 4, !tbaa !33
  %i.ais = trunc nuw nsw i64 %i.aie to i32        ; 2 uses
  %..i897 = tail call i32 @llvm.smin.i32(i32 %i.air, i32 %i.ais)
  store i32 %..i897, ptr %.sink.i.i896, align 4, !tbaa !33
  %i.ait = getelementptr inbounds nuw i8, ptr %.sink.i.i896, i64 8 ; 2 uses
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !33
  %i.aiv = tail call i32 @llvm.smax.i32(i32 %i.aiu, i32 %i.ais)
  store i32 %i.aiv, ptr %i.ait, align 4, !tbaa !33
  %i.aiw = getelementptr inbounds nuw i8, ptr %.sink.i.i896, i64 4 ; 2 uses
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !33
  %i.aiy = tail call i32 @llvm.smin.i32(i32 %i.aix, i32 %i.ady)
  store i32 %i.aiy, ptr %i.aiw, align 4, !tbaa !33
  %i.aiz = getelementptr inbounds nuw i8, ptr %.sink.i.i896, i64 12 ; 2 uses
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !33
  %i.ajb = tail call i32 @llvm.smax.i32(i32 %i.aja, i32 %i.ady)
  store i32 %i.ajb, ptr %i.aiz, align 4, !tbaa !33
  %i.ajc = getelementptr inbounds nuw i8, ptr %.sink.i.i896, i64 16 ; 2 uses
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !33
  %i.aje = add nsw i32 %i.ajd, 1
  store i32 %i.aje, ptr %i.ajc, align 4, !tbaa !33
  %i.ajf = load ptr, ptr %i.acj, align 8, !tbaa !50
  %i.ajg = getelementptr inbounds nuw [16 x i8], ptr %i.ajf, i64 %i.aip ; 3 uses
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !116
  %i.aji = add i64 %i.ajh, %i.aie
  store i64 %i.aji, ptr %i.ajg, align 8, !tbaa !116
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  store i32 0, ptr %i.aik, align 4, !tbaa !33
  %i.ajj = load ptr, ptr %i.acl, align 8, !tbaa !55 ; 6 uses
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !33
  %i.ajl = trunc nuw nsw i64 %i.aie to i32        ; 2 uses
  %..i900 = tail call i32 @llvm.smin.i32(i32 %i.ajk, i32 %i.ajl)
  store i32 %..i900, ptr %i.ajj, align 4, !tbaa !33
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8 ; 2 uses
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !33
  %i.ajo = tail call i32 @llvm.smax.i32(i32 %i.ajn, i32 %i.ajl)
  store i32 %i.ajo, ptr %i.ajm, align 4, !tbaa !33
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajj, i64 4 ; 2 uses
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !33
  %i.ajr = tail call i32 @llvm.smin.i32(i32 %i.ajq, i32 %i.adz)
  store i32 %i.ajr, ptr %i.ajp, align 4, !tbaa !33
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajj, i64 12 ; 2 uses
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !33
  %i.aju = tail call i32 @llvm.smax.i32(i32 %i.ajt, i32 %i.adz)
  store i32 %i.aju, ptr %i.ajs, align 4, !tbaa !33
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajj, i64 16 ; 2 uses
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !33
  %i.ajx = add nsw i32 %i.ajw, 1
  store i32 %i.ajx, ptr %i.ajv, align 4, !tbaa !33
  %i.ajy = load ptr, ptr %i.acm, align 8, !tbaa !50 ; 3 uses
  %i.ajz = load i64, ptr %i.ajy, align 8, !tbaa !116
  %i.aka = add i64 %i.ajz, %i.aie
  store i64 %i.aka, ptr %i.ajy, align 8, !tbaa !116
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sink1336 = phi ptr [ %i.ajy, %bb.bh ], [ %i.ajg, %bb.bg ]
  %i.akb = getelementptr inbounds nuw i8, ptr %.sink1336, i64 8 ; 2 uses
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !117
  %i.akd = add i64 %i.akc, %indvars.iv1219
  store i64 %i.akd, ptr %i.akb, align 8, !tbaa !117
  %i.ake = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.aie
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !32
  %.not793 = icmp eq i8 %i.akf, 0
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %i.aie ; 2 uses
  br i1 %.not793, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.aem, ptr %i.akg, align 4, !tbaa !33
  %i.akh = load i32, ptr %i.aco, align 4, !tbaa !96
  %i.aki = icmp slt i32 %i.akh, 2
  %i.akj = load ptr, ptr %i.acp, align 8, !tbaa !55
  %i.akk = load i64, ptr %i.acq, align 8
  %i.akl = sext i32 %i.aem to i64                 ; 2 uses
  %i.akm = mul i64 %i.akk, %i.akl
  %.sink.idx.i.i901 = select i1 %i.aki, i64 0, i64 %i.akm
  %.sink.i.i902 = getelementptr inbounds nuw i8, ptr %i.akj, i64 %.sink.idx.i.i901 ; 6 uses
  %i.akn = load i32, ptr %.sink.i.i902, align 4, !tbaa !33
  %i.ako = trunc nuw nsw i64 %i.aie to i32        ; 2 uses
  %..i903 = tail call i32 @llvm.smin.i32(i32 %i.akn, i32 %i.ako)
  store i32 %..i903, ptr %.sink.i.i902, align 4, !tbaa !33
  %i.akp = getelementptr inbounds nuw i8, ptr %.sink.i.i902, i64 8 ; 2 uses
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !33
  %i.akr = tail call i32 @llvm.smax.i32(i32 %i.akq, i32 %i.ako)
  store i32 %i.akr, ptr %i.akp, align 4, !tbaa !33
  %i.aks = getelementptr inbounds nuw i8, ptr %.sink.i.i902, i64 4 ; 2 uses
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !33
  %i.aku = tail call i32 @llvm.smin.i32(i32 %i.akt, i32 %i.aea)
  store i32 %i.aku, ptr %i.aks, align 4, !tbaa !33
  %i.akv = getelementptr inbounds nuw i8, ptr %.sink.i.i902, i64 12 ; 2 uses
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !33
  %i.akx = tail call i32 @llvm.smax.i32(i32 %i.akw, i32 %i.aea)
  store i32 %i.akx, ptr %i.akv, align 4, !tbaa !33
  %i.aky = getelementptr inbounds nuw i8, ptr %.sink.i.i902, i64 16 ; 2 uses
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !33
  %i.ala = add nsw i32 %i.akz, 1
  store i32 %i.ala, ptr %i.aky, align 4, !tbaa !33
  %i.alb = load ptr, ptr %i.acr, align 8, !tbaa !50
  %i.alc = getelementptr inbounds nuw [16 x i8], ptr %i.alb, i64 %i.akl ; 2 uses
  %i.ald = load <2 x i64>, ptr %i.alc, align 8, !tbaa !40
  %i.ale = insertelement <2 x i64> %i.aec, i64 %i.aie, i64 0
  %i.alf = add <2 x i64> %i.ald, %i.ale
  store <2 x i64> %i.alf, ptr %i.alc, align 8, !tbaa !40
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  store i32 0, ptr %i.akg, align 4, !tbaa !33
  %i.alg = load ptr, ptr %i.acs, align 8, !tbaa !55 ; 6 uses
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !33
  %i.ali = trunc nuw nsw i64 %i.aie to i32        ; 2 uses
  %..i906 = tail call i32 @llvm.smin.i32(i32 %i.alh, i32 %i.ali)
  store i32 %..i906, ptr %i.alg, align 4, !tbaa !33
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alg, i64 8 ; 2 uses
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !33
  %i.all = tail call i32 @llvm.smax.i32(i32 %i.alk, i32 %i.ali)
  store i32 %i.all, ptr %i.alj, align 4, !tbaa !33
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alg, i64 4 ; 2 uses
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !33
  %i.alo = tail call i32 @llvm.smin.i32(i32 %i.aln, i32 %i.aeb)
  store i32 %i.alo, ptr %i.alm, align 4, !tbaa !33
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alg, i64 12 ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !33
  %i.alr = tail call i32 @llvm.smax.i32(i32 %i.alq, i32 %i.aeb)
  store i32 %i.alr, ptr %i.alp, align 4, !tbaa !33
  %i.als = getelementptr inbounds nuw i8, ptr %i.alg, i64 16 ; 2 uses
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !33
  %i.alu = add nsw i32 %i.alt, 1
  store i32 %i.alu, ptr %i.als, align 4, !tbaa !33
  %i.alv = load ptr, ptr %i.act, align 8, !tbaa !50 ; 2 uses
  %i.alw = load <2 x i64>, ptr %i.alv, align 8, !tbaa !40
  %i.alx = insertelement <2 x i64> %i.aec, i64 %i.aie, i64 0
  %i.aly = add <2 x i64> %i.alw, %i.alx
  store <2 x i64> %i.aly, ptr %i.alv, align 8, !tbaa !40
  br label %bb.bn

bb.bl:                                            ; preds = %bb.ax
  store i32 0, ptr %i.aeg, align 4, !tbaa !33
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %indvars.iv1216
  store i32 0, ptr %i.alz, align 4, !tbaa !33
  %i.ama = load ptr, ptr %i.abn, align 8, !tbaa !55 ; 8 uses
  %i.amb = load i32, ptr %i.ama, align 4, !tbaa !33
  %i.amc = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i909 = tail call i32 @llvm.smin.i32(i32 %i.amb, i32 %i.amc)
  %i.amd = getelementptr inbounds nuw i8, ptr %i.ama, i64 8 ; 4 uses
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !33
  %i.amf = tail call i32 @llvm.smax.i32(i32 %i.ame, i32 %i.amc)
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ama, i64 4 ; 4 uses
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !33
  %i.ami = tail call i32 @llvm.smin.i32(i32 %i.amh, i32 %i.ads)
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ama, i64 12 ; 4 uses
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !33
  %i.aml = tail call i32 @llvm.smax.i32(i32 %i.amk, i32 %i.ads)
  %i.amm = getelementptr inbounds nuw i8, ptr %i.ama, i64 16 ; 4 uses
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !33
  %i.amo = load ptr, ptr %i.abo, align 8, !tbaa !50 ; 4 uses
  %i.amp = load i64, ptr %i.amo, align 8, !tbaa !116
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 8 ; 3 uses
  %i.amr = load i64, ptr %i.amq, align 8, !tbaa !117
  store i32 %..i909, ptr %i.ama, align 4, !tbaa !33
  store i32 %i.amf, ptr %i.amd, align 4, !tbaa !33
  %3 = tail call i32 @llvm.smin.i32(i32 %i.ami, i32 %i.adt)
  store i32 %3, ptr %i.amg, align 4, !tbaa !33
  %i.ams = tail call i32 @llvm.smax.i32(i32 %i.aml, i32 %i.adt)
  store i32 %i.ams, ptr %i.amj, align 4, !tbaa !33
  %i.amt = add nsw i32 %i.amn, 2
  store i32 %i.amt, ptr %i.amm, align 4, !tbaa !33
  %reass.add1385 = shl nuw i64 %indvars.iv1216, 1
  %i.amu = add i64 %i.amp, %reass.add1385         ; 2 uses
  store i64 %i.amu, ptr %i.amo, align 8, !tbaa !116
  %.reass1301 = add i64 %i.amr, %invariant.op1300 ; 2 uses
  store i64 %.reass1301, ptr %i.amq, align 8, !tbaa !117
  %i.amv = or disjoint i64 %indvars.iv1216, 1     ; 5 uses
  %i.amw = load i32, ptr %i.aef, align 4, !tbaa !52
  %i.amx = sext i32 %i.amw to i64
  %i.amy = icmp slt i64 %i.amv, %i.amx
  br i1 %i.amy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %i.amv
  store i32 0, ptr %i.amz, align 4, !tbaa !33
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %i.amv
  store i32 0, ptr %i.ana, align 4, !tbaa !33
  %i.anb = load i32, ptr %i.ama, align 4, !tbaa !33
  %i.anc = trunc nuw nsw i64 %i.amv to i32        ; 2 uses
  %..i915 = tail call i32 @llvm.smin.i32(i32 %i.anb, i32 %i.anc)
  %i.and = load i32, ptr %i.amd, align 4, !tbaa !33
  %i.ane = tail call i32 @llvm.smax.i32(i32 %i.and, i32 %i.anc)
  %i.anf = load i32, ptr %i.amg, align 4, !tbaa !33
  %i.ang = tail call i32 @llvm.smin.i32(i32 %i.anf, i32 %i.ads)
  %i.anh = load i32, ptr %i.amj, align 4, !tbaa !33
  %i.ani = tail call i32 @llvm.smax.i32(i32 %i.anh, i32 %i.ads)
  %i.anj = load i32, ptr %i.amm, align 4, !tbaa !33
  store i32 %..i915, ptr %i.ama, align 4, !tbaa !33
  store i32 %i.ane, ptr %i.amd, align 4, !tbaa !33
  %4 = tail call i32 @llvm.smin.i32(i32 %i.ang, i32 %i.adt)
  store i32 %4, ptr %i.amg, align 4, !tbaa !33
  %i.ank = tail call i32 @llvm.smax.i32(i32 %i.ani, i32 %i.adt)
  store i32 %i.ank, ptr %i.amj, align 4, !tbaa !33
  %i.anl = add nsw i32 %i.anj, 2
  store i32 %i.anl, ptr %i.amm, align 4, !tbaa !33
  %reass.add1386 = shl nuw i64 %i.amv, 1
  %i.anm = add i64 %i.amu, %reass.add1386
  store i64 %i.anm, ptr %i.amo, align 8, !tbaa !116
  %.reass1303 = add i64 %.reass1301, %invariant.op1302
  store i64 %.reass1303, ptr %i.amq, align 8, !tbaa !117
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.be, %bb.bk, %bb.bj
  %indvars.iv.next1217 = add nuw nsw i64 %indvars.iv1216, 2 ; 2 uses
  %i.ann = load i32, ptr %i.z, align 4, !tbaa !52
  %i.ano = sext i32 %i.ann to i64
  %i.anp = icmp slt i64 %indvars.iv.next1217, %i.ano
  br i1 %i.anp, label %bb.ax, label %._crit_edge1164, !llvm.loop !405

.lr.ph1173.split:                                 ; preds = %.lr.ph1173, %._crit_edge1171
  %i.anq = phi i32 [ %i.aom, %._crit_edge1171 ], [ %i.aa, %.lr.ph1173 ] ; 2 uses
  %indvars.iv1225 = phi i64 [ %indvars.iv.next1226, %._crit_edge1171 ], [ %i.m, %.lr.ph1173 ] ; 12 uses
  %i.anr = load i64, ptr %i.acx, align 8, !tbaa !40 ; 2 uses
  %i.ans = mul i64 %i.anr, %indvars.iv1225
  %i.ant = getelementptr inbounds nuw i8, ptr %i.acw, i64 %i.ans ; 3 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.anr ; 2 uses
  %i.anv = load i64, ptr %i.ada, align 8, !tbaa !40 ; 2 uses
  %i.anw = mul i64 %i.anv, %indvars.iv1225
  %i.anx = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.anw ; 4 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 %i.anv ; 4 uses
  %i.anz = icmp sgt i32 %i.anq, 0
  br i1 %i.anz, label %.lr.ph1170, label %._crit_edge1171

.lr.ph1170:                                       ; preds = %.lr.ph1173.split
  %i.aoa = or disjoint i64 %indvars.iv1225, 1     ; 8 uses
  %i.aob = trunc nuw i64 %indvars.iv1225 to i32   ; 2 uses
  %i.aoc = trunc nuw i64 %i.aoa to i32            ; 2 uses
  %invariant.op13041388 = add nuw i64 %indvars.iv1225, %i.aoa
  %invariant.op1308 = shl i64 %invariant.op13041388, 1
  %i.aod = trunc nuw i64 %indvars.iv1225 to i32   ; 2 uses
  %i.aoe = trunc nuw i64 %indvars.iv1225 to i32   ; 2 uses
  %i.aof = trunc nuw i64 %indvars.iv1225 to i32   ; 2 uses
  %i.aog = trunc nuw i64 %indvars.iv1225 to i32   ; 2 uses
  %i.aoh = trunc nuw i64 %i.aoa to i32            ; 2 uses
  %i.aoi = trunc nuw i64 %i.aoa to i32            ; 2 uses
  %i.aoj = trunc nuw i64 %i.aoa to i32            ; 2 uses
  %i.aok = trunc nuw i64 %i.aoa to i32            ; 2 uses
  %i.aol = insertelement <2 x i64> poison, i64 %i.aoa, i64 1 ; 2 uses
  br label %bb.bo

._crit_edge1171:                                  ; preds = %bb.cc, %.lr.ph1173.split
  %i.aom = phi i32 [ %i.anq, %.lr.ph1173.split ], [ %i.awz, %bb.cc ]
  %indvars.iv.next1226 = add nuw nsw i64 %indvars.iv1225, 2 ; 2 uses
  %i.aon = trunc nuw i64 %indvars.iv.next1226 to i32
  %i.aoo = icmp sgt i32 %.sroa.speculated, %i.aon
  br i1 %i.aoo, label %.lr.ph1173.split, label %.loopexit, !llvm.loop !406

bb.bo:                                            ; preds = %.lr.ph1170, %bb.cc
  %indvars.iv1222 = phi i64 [ 0, %.lr.ph1170 ], [ %indvars.iv.next1223, %bb.cc ] ; 19 uses
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %indvars.iv1222 ; 4 uses
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !33 ; 2 uses
  %i.aor = icmp sgt i32 %i.aoq, 0
  br i1 %i.aor, label %bb.bp, label %bb.cb

bb.bp:                                            ; preds = %bb.bo
  %i.aos = load ptr, ptr %i.adb, align 8, !tbaa !122
  %i.aot = zext nneg i32 %i.aoq to i64
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.aot
  %i.aov = load i32, ptr %i.aou, align 4, !tbaa !33 ; 8 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.ant, i64 %indvars.iv1222
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !32
  %.not786 = icmp eq i8 %i.aox, 0
  br i1 %.not786, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 %i.aov, ptr %i.aop, align 4, !tbaa !33
  %i.aoy = load i32, ptr %i.adc, align 4, !tbaa !96
  %i.aoz = icmp slt i32 %i.aoy, 2
  %i.apa = load ptr, ptr %i.add, align 8, !tbaa !55 ; 2 uses
  %i.apb = load i64, ptr %i.ade, align 8
  %i.apc = sext i32 %i.aov to i64                 ; 2 uses
  %i.apd = mul i64 %i.apb, %i.apc
  %.sink.idx.i.i919 = select i1 %i.aoz, i64 0, i64 %i.apd
  %.sink.i.i920 = getelementptr inbounds nuw i8, ptr %i.apa, i64 %.sink.idx.i.i919 ; 6 uses
  %i.ape = load i32, ptr %.sink.i.i920, align 4, !tbaa !33
  %i.apf = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %..i921 = tail call i32 @llvm.smin.i32(i32 %i.ape, i32 %i.apf)
  store i32 %..i921, ptr %.sink.i.i920, align 4, !tbaa !33
  %i.apg = getelementptr inbounds nuw i8, ptr %.sink.i.i920, i64 8 ; 2 uses
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !33
  %i.api = tail call i32 @llvm.smax.i32(i32 %i.aph, i32 %i.apf)
  store i32 %i.api, ptr %i.apg, align 4, !tbaa !33
  %i.apj = getelementptr inbounds nuw i8, ptr %.sink.i.i920, i64 4 ; 2 uses
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !33
  %i.apl = tail call i32 @llvm.smin.i32(i32 %i.apk, i32 %i.aod)
  store i32 %i.apl, ptr %i.apj, align 4, !tbaa !33
  %i.apm = getelementptr inbounds nuw i8, ptr %.sink.i.i920, i64 12 ; 2 uses
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !33
  %i.apo = tail call i32 @llvm.smax.i32(i32 %i.apn, i32 %i.aod)
  store i32 %i.apo, ptr %i.apm, align 4, !tbaa !33
  %i.app = getelementptr inbounds nuw i8, ptr %.sink.i.i920, i64 16 ; 2 uses
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !33
  %i.apr = add nsw i32 %i.apq, 1
  store i32 %i.apr, ptr %i.app, align 4, !tbaa !33
  %i.aps = load ptr, ptr %i.adf, align 8, !tbaa !50 ; 2 uses
  %i.apt = getelementptr inbounds nuw [16 x i8], ptr %i.aps, i64 %i.apc ; 3 uses
  %i.apu = load i64, ptr %i.apt, align 8, !tbaa !116
  %i.apv = add i64 %i.apu, %indvars.iv1222
  store i64 %i.apv, ptr %i.apt, align 8, !tbaa !116
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  store i32 0, ptr %i.aop, align 4, !tbaa !33
  %i.apw = load ptr, ptr %i.add, align 8, !tbaa !55 ; 7 uses
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !33
  %i.apy = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %..i924 = tail call i32 @llvm.smin.i32(i32 %i.apx, i32 %i.apy)
  store i32 %..i924, ptr %i.apw, align 4, !tbaa !33
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apw, i64 8 ; 2 uses
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !33
  %i.aqb = tail call i32 @llvm.smax.i32(i32 %i.aqa, i32 %i.apy)
  store i32 %i.aqb, ptr %i.apz, align 4, !tbaa !33
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apw, i64 4 ; 2 uses
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !33
  %i.aqe = tail call i32 @llvm.smin.i32(i32 %i.aqd, i32 %i.aoe)
  store i32 %i.aqe, ptr %i.aqc, align 4, !tbaa !33
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apw, i64 12 ; 2 uses
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !33
  %i.aqh = tail call i32 @llvm.smax.i32(i32 %i.aqg, i32 %i.aoe)
  store i32 %i.aqh, ptr %i.aqf, align 4, !tbaa !33
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.apw, i64 16 ; 2 uses
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !33
  %i.aqk = add nsw i32 %i.aqj, 1
  store i32 %i.aqk, ptr %i.aqi, align 4, !tbaa !33
  %i.aql = load ptr, ptr %i.adf, align 8, !tbaa !50 ; 4 uses
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !116
  %i.aqn = add i64 %i.aqm, %indvars.iv1222
  store i64 %i.aqn, ptr %i.aql, align 8, !tbaa !116
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sink1339 = phi ptr [ %i.aql, %bb.br ], [ %i.apt, %bb.bq ]
  %i.aqo = phi ptr [ %i.aql, %bb.br ], [ %i.aps, %bb.bq ] ; 11 uses
  %i.aqp = phi ptr [ %i.apw, %bb.br ], [ %i.apa, %bb.bq ] ; 21 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %.sink1339, i64 8 ; 2 uses
  %i.aqr = load i64, ptr %i.aqq, align 8, !tbaa !117
  %i.aqs = add i64 %i.aqr, %indvars.iv1225
  store i64 %i.aqs, ptr %i.aqq, align 8, !tbaa !117
  %i.aqt = or disjoint i64 %indvars.iv1222, 1     ; 12 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.aqt
  %i.aqv = load i8, ptr %i.aqu, align 1, !tbaa !32
  %.not787 = icmp eq i8 %i.aqv, 0
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %i.aqt ; 2 uses
  br i1 %.not787, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 %i.aov, ptr %i.aqw, align 4, !tbaa !33
  %i.aqx = load i32, ptr %i.adc, align 4, !tbaa !96
  %i.aqy = icmp slt i32 %i.aqx, 2
  %i.aqz = load i64, ptr %i.ade, align 8
  %i.ara = sext i32 %i.aov to i64                 ; 2 uses
  %i.arb = mul i64 %i.aqz, %i.ara
  %.sink.idx.i.i925 = select i1 %i.aqy, i64 0, i64 %i.arb
  %.sink.i.i926 = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %.sink.idx.i.i925 ; 6 uses
  %i.arc = load i32, ptr %.sink.i.i926, align 4, !tbaa !33
  %i.ard = trunc nuw nsw i64 %i.aqt to i32        ; 2 uses
  %..i927 = tail call i32 @llvm.smin.i32(i32 %i.arc, i32 %i.ard)
  store i32 %..i927, ptr %.sink.i.i926, align 4, !tbaa !33
  %i.are = getelementptr inbounds nuw i8, ptr %.sink.i.i926, i64 8 ; 2 uses
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !33
  %i.arg = tail call i32 @llvm.smax.i32(i32 %i.arf, i32 %i.ard)
  store i32 %i.arg, ptr %i.are, align 4, !tbaa !33
  %i.arh = getelementptr inbounds nuw i8, ptr %.sink.i.i926, i64 4 ; 2 uses
  %i.ari = load i32, ptr %i.arh, align 4, !tbaa !33
  %i.arj = tail call i32 @llvm.smin.i32(i32 %i.ari, i32 %i.aof)
  store i32 %i.arj, ptr %i.arh, align 4, !tbaa !33
  %i.ark = getelementptr inbounds nuw i8, ptr %.sink.i.i926, i64 12 ; 2 uses
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !33
  %i.arm = tail call i32 @llvm.smax.i32(i32 %i.arl, i32 %i.aof)
  store i32 %i.arm, ptr %i.ark, align 4, !tbaa !33
  %i.arn = getelementptr inbounds nuw i8, ptr %.sink.i.i926, i64 16 ; 2 uses
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !33
  %i.arp = add nsw i32 %i.aro, 1
  store i32 %i.arp, ptr %i.arn, align 4, !tbaa !33
  %i.arq = getelementptr inbounds nuw [16 x i8], ptr %i.aqo, i64 %i.ara ; 3 uses
  %i.arr = load i64, ptr %i.arq, align 8, !tbaa !116
  %i.ars = add i64 %i.arr, %i.aqt
  store i64 %i.ars, ptr %i.arq, align 8, !tbaa !116
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  store i32 0, ptr %i.aqw, align 4, !tbaa !33
  %i.art = load i32, ptr %i.aqp, align 4, !tbaa !33
  %i.aru = trunc nuw nsw i64 %i.aqt to i32        ; 2 uses
  %..i930 = tail call i32 @llvm.smin.i32(i32 %i.art, i32 %i.aru)
  store i32 %..i930, ptr %i.aqp, align 4, !tbaa !33
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8 ; 2 uses
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !33
  %i.arx = tail call i32 @llvm.smax.i32(i32 %i.arw, i32 %i.aru)
  store i32 %i.arx, ptr %i.arv, align 4, !tbaa !33
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4 ; 2 uses
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !33
  %i.asa = tail call i32 @llvm.smin.i32(i32 %i.arz, i32 %i.aog)
  store i32 %i.asa, ptr %i.ary, align 4, !tbaa !33
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aqp, i64 12 ; 2 uses
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !33
  %i.asd = tail call i32 @llvm.smax.i32(i32 %i.asc, i32 %i.aog)
  store i32 %i.asd, ptr %i.asb, align 4, !tbaa !33
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16 ; 2 uses
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !33
  %i.asg = add nsw i32 %i.asf, 1
  store i32 %i.asg, ptr %i.ase, align 4, !tbaa !33
  %i.ash = load i64, ptr %i.aqo, align 8, !tbaa !116
  %i.asi = add i64 %i.ash, %i.aqt
  store i64 %i.asi, ptr %i.aqo, align 8, !tbaa !116
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sink1342 = phi ptr [ %i.aqo, %bb.bu ], [ %i.arq, %bb.bt ]
  %i.asj = getelementptr inbounds nuw i8, ptr %.sink1342, i64 8 ; 2 uses
  %i.ask = load i64, ptr %i.asj, align 8, !tbaa !117
  %i.asl = add i64 %i.ask, %indvars.iv1225
  store i64 %i.asl, ptr %i.asj, align 8, !tbaa !117
  %i.asm = getelementptr inbounds nuw i8, ptr %i.anu, i64 %indvars.iv1222
  %i.asn = load i8, ptr %i.asm, align 1, !tbaa !32
  %.not788 = icmp eq i8 %i.asn, 0
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %indvars.iv1222 ; 2 uses
  br i1 %.not788, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i32 %i.aov, ptr %i.aso, align 4, !tbaa !33
  %i.asp = load i32, ptr %i.adc, align 4, !tbaa !96
  %i.asq = icmp slt i32 %i.asp, 2
  %i.asr = load i64, ptr %i.ade, align 8
  %i.ass = sext i32 %i.aov to i64                 ; 2 uses
  %i.ast = mul i64 %i.asr, %i.ass
  %.sink.idx.i.i931 = select i1 %i.asq, i64 0, i64 %i.ast
  %.sink.i.i932 = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %.sink.idx.i.i931 ; 6 uses
  %i.asu = load i32, ptr %.sink.i.i932, align 4, !tbaa !33
  %i.asv = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %..i933 = tail call i32 @llvm.smin.i32(i32 %i.asu, i32 %i.asv)
  store i32 %..i933, ptr %.sink.i.i932, align 4, !tbaa !33
  %i.asw = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 8 ; 2 uses
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !33
  %i.asy = tail call i32 @llvm.smax.i32(i32 %i.asx, i32 %i.asv)
  store i32 %i.asy, ptr %i.asw, align 4, !tbaa !33
  %i.asz = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 4 ; 2 uses
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !33
  %i.atb = tail call i32 @llvm.smin.i32(i32 %i.ata, i32 %i.aoh)
  store i32 %i.atb, ptr %i.asz, align 4, !tbaa !33
  %i.atc = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 12 ; 2 uses
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !33
  %i.ate = tail call i32 @llvm.smax.i32(i32 %i.atd, i32 %i.aoh)
  store i32 %i.ate, ptr %i.atc, align 4, !tbaa !33
  %i.atf = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 16 ; 2 uses
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !33
  %i.ath = add nsw i32 %i.atg, 1
  store i32 %i.ath, ptr %i.atf, align 4, !tbaa !33
  %i.ati = getelementptr inbounds nuw [16 x i8], ptr %i.aqo, i64 %i.ass ; 3 uses
  %i.atj = load i64, ptr %i.ati, align 8, !tbaa !116
  %i.atk = add i64 %i.atj, %indvars.iv1222
  store i64 %i.atk, ptr %i.ati, align 8, !tbaa !116
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  store i32 0, ptr %i.aso, align 4, !tbaa !33
  %i.atl = load i32, ptr %i.aqp, align 4, !tbaa !33
  %i.atm = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %..i936 = tail call i32 @llvm.smin.i32(i32 %i.atl, i32 %i.atm)
  store i32 %..i936, ptr %i.aqp, align 4, !tbaa !33
  %i.atn = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8 ; 2 uses
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !33
  %i.atp = tail call i32 @llvm.smax.i32(i32 %i.ato, i32 %i.atm)
  store i32 %i.atp, ptr %i.atn, align 4, !tbaa !33
  %i.atq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4 ; 2 uses
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !33
  %i.ats = tail call i32 @llvm.smin.i32(i32 %i.atr, i32 %i.aoi)
  store i32 %i.ats, ptr %i.atq, align 4, !tbaa !33
  %i.att = getelementptr inbounds nuw i8, ptr %i.aqp, i64 12 ; 2 uses
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !33
  %i.atv = tail call i32 @llvm.smax.i32(i32 %i.atu, i32 %i.aoi)
  store i32 %i.atv, ptr %i.att, align 4, !tbaa !33
  %i.atw = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16 ; 2 uses
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !33
  %i.aty = add nsw i32 %i.atx, 1
  store i32 %i.aty, ptr %i.atw, align 4, !tbaa !33
  %i.atz = load i64, ptr %i.aqo, align 8, !tbaa !116
  %i.aua = add i64 %i.atz, %indvars.iv1222
  store i64 %i.aua, ptr %i.aqo, align 8, !tbaa !116
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sink1345 = phi ptr [ %i.aqo, %bb.bx ], [ %i.ati, %bb.bw ]
  %i.aub = getelementptr inbounds nuw i8, ptr %.sink1345, i64 8 ; 2 uses
  %i.auc = load i64, ptr %i.aub, align 8, !tbaa !117
  %i.aud = add i64 %i.auc, %i.aoa
  store i64 %i.aud, ptr %i.aub, align 8, !tbaa !117
  %i.aue = getelementptr inbounds nuw i8, ptr %i.anu, i64 %i.aqt
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !32
  %.not789 = icmp eq i8 %i.auf, 0
  %i.aug = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %i.aqt ; 2 uses
  br i1 %.not789, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 %i.aov, ptr %i.aug, align 4, !tbaa !33
  %i.auh = load i32, ptr %i.adc, align 4, !tbaa !96
  %i.aui = icmp slt i32 %i.auh, 2
  %i.auj = load i64, ptr %i.ade, align 8
  %i.auk = sext i32 %i.aov to i64                 ; 2 uses
  %i.aul = mul i64 %i.auj, %i.auk
  %.sink.idx.i.i937 = select i1 %i.aui, i64 0, i64 %i.aul
  %.sink.i.i938 = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %.sink.idx.i.i937 ; 6 uses
  %i.aum = load i32, ptr %.sink.i.i938, align 4, !tbaa !33
  %i.aun = trunc nuw nsw i64 %i.aqt to i32        ; 2 uses
  %..i939 = tail call i32 @llvm.smin.i32(i32 %i.aum, i32 %i.aun)
  store i32 %..i939, ptr %.sink.i.i938, align 4, !tbaa !33
  %i.auo = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 8 ; 2 uses
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !33
  %i.auq = tail call i32 @llvm.smax.i32(i32 %i.aup, i32 %i.aun)
  store i32 %i.auq, ptr %i.auo, align 4, !tbaa !33
  %i.aur = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 4 ; 2 uses
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !33
  %i.aut = tail call i32 @llvm.smin.i32(i32 %i.aus, i32 %i.aoj)
  store i32 %i.aut, ptr %i.aur, align 4, !tbaa !33
  %i.auu = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 12 ; 2 uses
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !33
  %i.auw = tail call i32 @llvm.smax.i32(i32 %i.auv, i32 %i.aoj)
  store i32 %i.auw, ptr %i.auu, align 4, !tbaa !33
  %i.aux = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 16 ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !33
  %i.auz = add nsw i32 %i.auy, 1
  store i32 %i.auz, ptr %i.aux, align 4, !tbaa !33
  %i.ava = getelementptr inbounds nuw [16 x i8], ptr %i.aqo, i64 %i.auk ; 2 uses
  %i.avb = load <2 x i64>, ptr %i.ava, align 8, !tbaa !40
  %i.avc = insertelement <2 x i64> %i.aol, i64 %i.aqt, i64 0
  %i.avd = add <2 x i64> %i.avb, %i.avc
  store <2 x i64> %i.avd, ptr %i.ava, align 8, !tbaa !40
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  store i32 0, ptr %i.aug, align 4, !tbaa !33
  %i.ave = load i32, ptr %i.aqp, align 4, !tbaa !33
  %i.avf = trunc nuw nsw i64 %i.aqt to i32        ; 2 uses
  %..i942 = tail call i32 @llvm.smin.i32(i32 %i.ave, i32 %i.avf)
  store i32 %..i942, ptr %i.aqp, align 4, !tbaa !33
  %i.avg = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8 ; 2 uses
  %i.avh = load i32, ptr %i.avg, align 4, !tbaa !33
  %i.avi = tail call i32 @llvm.smax.i32(i32 %i.avh, i32 %i.avf)
  store i32 %i.avi, ptr %i.avg, align 4, !tbaa !33
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4 ; 2 uses
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !33
  %i.avl = tail call i32 @llvm.smin.i32(i32 %i.avk, i32 %i.aok)
  store i32 %i.avl, ptr %i.avj, align 4, !tbaa !33
  %i.avm = getelementptr inbounds nuw i8, ptr %i.aqp, i64 12 ; 2 uses
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !33
  %i.avo = tail call i32 @llvm.smax.i32(i32 %i.avn, i32 %i.aok)
  store i32 %i.avo, ptr %i.avm, align 4, !tbaa !33
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16 ; 2 uses
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !33
  %i.avr = add nsw i32 %i.avq, 1
  store i32 %i.avr, ptr %i.avp, align 4, !tbaa !33
  %i.avs = load <2 x i64>, ptr %i.aqo, align 8, !tbaa !40
  %i.avt = insertelement <2 x i64> %i.aol, i64 %i.aqt, i64 0
  %i.avu = add <2 x i64> %i.avs, %i.avt
  store <2 x i64> %i.avu, ptr %i.aqo, align 8, !tbaa !40
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bo
  store i32 0, ptr %i.aop, align 4, !tbaa !33
  %i.avv = or disjoint i64 %indvars.iv1222, 1     ; 5 uses
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %i.avv
  store i32 0, ptr %i.avw, align 4, !tbaa !33
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %indvars.iv1222
  store i32 0, ptr %i.avx, align 4, !tbaa !33
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %i.avv
  store i32 0, ptr %i.avy, align 4, !tbaa !33
  %i.avz = load ptr, ptr %i.add, align 8, !tbaa !55 ; 6 uses
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !33
  %i.awb = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 4 uses
  %..i945 = tail call i32 @llvm.smin.i32(i32 %i.awa, i32 %i.awb)
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avz, i64 8 ; 2 uses
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !33
  %i.awe = tail call i32 @llvm.smax.i32(i32 %i.awd, i32 %i.awb)
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avz, i64 4 ; 2 uses
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !33
  %i.awh = tail call i32 @llvm.smin.i32(i32 %i.awg, i32 %i.aob)
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avz, i64 12 ; 2 uses
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !33
  %i.awk = tail call i32 @llvm.smax.i32(i32 %i.awj, i32 %i.aob)
  %i.awl = getelementptr inbounds nuw i8, ptr %i.avz, i64 16 ; 2 uses
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !33
  %i.awn = load ptr, ptr %i.adf, align 8, !tbaa !50 ; 3 uses
  %i.awo = load i64, ptr %i.awn, align 8, !tbaa !116
  %i.awp = add i64 %i.awo, %indvars.iv1222
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awn, i64 8 ; 2 uses
  %i.awr = load i64, ptr %i.awq, align 8, !tbaa !117
  %i.aws = trunc nuw nsw i64 %i.avv to i32        ; 4 uses
  %..i948 = tail call i32 @llvm.smin.i32(i32 %..i945, i32 %i.aws)
  %i.awt = tail call i32 @llvm.umax.i32(i32 %i.awe, i32 %i.aws)
  %i.awu = add i64 %i.awp, %i.avv
  %..i951 = tail call i32 @llvm.smin.i32(i32 %..i948, i32 %i.awb)
  %5 = tail call i32 @llvm.umax.i32(i32 %i.awt, i32 %i.awb)
  %6 = tail call i32 @llvm.smin.i32(i32 %i.awh, i32 %i.aoc)
  %i.awv = tail call i32 @llvm.smax.i32(i32 %i.awk, i32 %i.aoc)
  %i.aww = add i64 %i.awu, %indvars.iv1222
  %..i954 = tail call i32 @llvm.smin.i32(i32 %..i951, i32 %i.aws)
  store i32 %..i954, ptr %i.avz, align 4, !tbaa !33
  %7 = tail call i32 @llvm.umax.i32(i32 %5, i32 %i.aws)
  store i32 %7, ptr %i.awc, align 4, !tbaa !33
  store i32 %6, ptr %i.awf, align 4, !tbaa !33
  store i32 %i.awv, ptr %i.awi, align 4, !tbaa !33
  %i.awx = add nsw i32 %i.awm, 4
  store i32 %i.awx, ptr %i.awl, align 4, !tbaa !33
  %i.awy = add i64 %i.aww, %i.avv
  store i64 %i.awy, ptr %i.awn, align 8, !tbaa !116
  %.reass1309 = add i64 %i.awr, %invariant.op1308
  store i64 %.reass1309, ptr %i.awq, align 8, !tbaa !117
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %bb.ca, %bb.cb
  %indvars.iv.next1223 = add nuw nsw i64 %indvars.iv1222, 2 ; 2 uses
  %i.awz = load i32, ptr %i.z, align 4, !tbaa !52 ; 2 uses
  %i.axa = sext i32 %i.awz to i64
  %i.axb = icmp slt i64 %indvars.iv.next1223, %i.axa
  br i1 %i.axb, label %bb.bo, label %._crit_edge1171, !llvm.loop !407

bb.cd:                                            ; preds = %bb.a
  %i.axc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !419, !nonnull !93, !align !94 ; 89 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 456
  store i32 %.sroa.speculated, ptr %i.axe, align 8, !tbaa !114
  %i.axf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.axg = load ptr, ptr %i.axf, align 8, !tbaa !418, !nonnull !93, !align !94 ; 19 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.axi = load i32, ptr %i.axh, align 8, !tbaa !39
  %i.axj = and i32 %i.axi, 1
  %.not = icmp eq i32 %i.axj, 0
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axg, i64 12 ; 7 uses
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !52 ; 2 uses
  %i.axm = and i32 %i.axl, 1
  %.not765 = icmp eq i32 %i.axm, 0                ; 2 uses
  %i.axn = icmp slt i32 %i.b, %.sroa.speculated   ; 4 uses
  br i1 %.not, label %bb.dx, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not765, label %.preheader1119, label %.preheader1121

.preheader1121:                                   ; preds = %bb.ce
  br i1 %i.axn, label %.lr.ph1126, label %.loopexit

.lr.ph1126:                                       ; preds = %.preheader1121
  %i.axo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.axp = sext i32 %i.b to i64
  %i.axq = sext i32 %.sroa.speculated to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55
  %i.axr = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axg, i64 24
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axg, i64 128
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axg, i64 12 ; 2 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ays = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.aza = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.azb = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.azc = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.azd = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.aze = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  br label %bb.cf

.preheader1119:                                   ; preds = %bb.ce
  br i1 %i.axn, label %.lr.ph1133, label %.loopexit

.lr.ph1133:                                       ; preds = %.preheader1119
  %i.azf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.azg = sext i32 %i.b to i64
  %i.azh = sext i32 %.sroa.speculated to i64
  %.phi.trans.insert1228 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre1229 = load ptr, ptr %.phi.trans.insert1228, align 8, !tbaa !55
  %i.azi = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.azj = getelementptr inbounds nuw i8, ptr %i.axg, i64 24
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !55
  %i.azl = getelementptr inbounds nuw i8, ptr %i.axg, i64 128
  %i.azm = getelementptr inbounds nuw i8, ptr %i.axg, i64 12
  %i.azn = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.azo = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.azp = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.azq = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.azr = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.azs = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.azt = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.azu = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.azv = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.azw = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.azx = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.azy = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.azz = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.baa = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bab = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bac = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.bad = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.bae = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.baf = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.bag = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bah = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bai = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.baj = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.bak = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bal = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.bam = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ban = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bao = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  br label %bb.df

bb.cf:                                            ; preds = %.lr.ph1126, %._crit_edge
  %indvars.iv1183 = phi i64 [ %i.axp, %.lr.ph1126 ], [ %indvars.iv.next1184, %._crit_edge ] ; 13 uses
  %i.bap = load i64, ptr %i.axr, align 8, !tbaa !40 ; 2 uses
  %i.baq = mul i64 %i.bap, %indvars.iv1183
  %i.bar = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.baq ; 3 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 %i.bap ; 3 uses
  %i.bat = load ptr, ptr %i.axs, align 8, !tbaa !55
  %i.bau = load i64, ptr %i.axt, align 8, !tbaa !40 ; 2 uses
  %i.bav = mul i64 %i.bau, %indvars.iv1183
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bat, i64 %i.bav ; 4 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 %i.bau ; 6 uses
  %i.bay = load i32, ptr %i.axu, align 4, !tbaa !52
  %i.baz = icmp sgt i32 %i.bay, 0
  br i1 %i.baz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.cf
  %i.bba = or disjoint i64 %indvars.iv1183, 1     ; 16 uses
  %i.bbb = trunc nsw i64 %indvars.iv1183 to i32   ; 4 uses
  %i.bbc = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbd = trunc nsw i64 %i.bba to i32            ; 2 uses
  %invariant.op = shl i64 %i.bba, 1
  %i.bbe = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbf = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbg = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbh = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbi = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbj = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbk = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbl = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbm = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbn = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbo = insertelement <2 x i64> poison, i64 %i.bba, i64 1 ; 4 uses
  br label %bb.cg

._crit_edge:                                      ; preds = %bb.de, %bb.cf
  %indvars.iv.next1184 = add nsw i64 %indvars.iv1183, 2 ; 2 uses
  %i.bbp = icmp slt i64 %indvars.iv.next1184, %i.axq
  br i1 %i.bbp, label %bb.cf, label %.loopexit, !llvm.loop !408

bb.cg:                                            ; preds = %.lr.ph, %bb.de
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.de ] ; 27 uses
  %i.bbq = phi ptr [ %i.axu, %.lr.ph ], [ %i.axk, %bb.de ] ; 2 uses
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.baw, i64 %indvars.iv ; 4 uses
  %i.bbs = load i32, ptr %i.bbr, align 4, !tbaa !33 ; 2 uses
  %i.bbt = icmp sgt i32 %i.bbs, 0
  br i1 %i.bbt, label %bb.ch, label %bb.cz

bb.ch:                                            ; preds = %bb.cg
  %i.bbu = load ptr, ptr %i.axo, align 8, !tbaa !122
  %i.bbv = zext nneg i32 %i.bbs to i64
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %i.bbu, i64 %i.bbv
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !33 ; 10 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bar, i64 %indvars.iv
  %i.bbz = load i8, ptr %i.bby, align 1, !tbaa !32
  %.not779 = icmp eq i8 %i.bbz, 0
  br i1 %.not779, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i32 %i.bbx, ptr %i.bbr, align 4, !tbaa !33
  %i.bca = load i32, ptr %i.axz, align 4, !tbaa !96
  %i.bcb = icmp slt i32 %i.bca, 2
  %i.bcc = load ptr, ptr %i.aya, align 8, !tbaa !55
  %i.bcd = load i64, ptr %i.ayb, align 8
  %i.bce = sext i32 %i.bbx to i64                 ; 2 uses
  %i.bcf = mul i64 %i.bcd, %i.bce
  %.sink.idx.i.i955 = select i1 %i.bcb, i64 0, i64 %i.bcf
  %.sink.i.i956 = getelementptr inbounds nuw i8, ptr %i.bcc, i64 %.sink.idx.i.i955 ; 6 uses
  %i.bcg = load i32, ptr %.sink.i.i956, align 4, !tbaa !33
end_hunk_6
begin_hunk_7_@_ZNK2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.bhp = getelementptr inbounds nuw i8, ptr %.sink1354, i64 8 ; 2 uses
  %i.bhq = load i64, ptr %i.bhp, align 8, !tbaa !117
  %i.bhr = add i64 %i.bhq, %i.bba
  store i64 %i.bhr, ptr %i.bhp, align 8, !tbaa !117
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bas, i64 %i.bdt
  %i.bht = load i8, ptr %i.bhs, align 1, !tbaa !32
  %.not783 = icmp eq i8 %i.bht, 0
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %i.bax, i64 %i.bdt ; 2 uses
  br i1 %.not783, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i32 %i.bbx, ptr %i.bhu, align 4, !tbaa !33
  %i.bhv = load i32, ptr %i.ayz, align 4, !tbaa !96
  %i.bhw = icmp slt i32 %i.bhv, 2
  %i.bhx = load ptr, ptr %i.aza, align 8, !tbaa !55
  %i.bhy = load i64, ptr %i.azb, align 8
  %i.bhz = sext i32 %i.bbx to i64                 ; 2 uses
  %i.bia = mul i64 %i.bhy, %i.bhz
  %.sink.idx.i.i973 = select i1 %i.bhw, i64 0, i64 %i.bia
  %.sink.i.i974 = getelementptr inbounds nuw i8, ptr %i.bhx, i64 %.sink.idx.i.i973 ; 6 uses
  %i.bib = load i32, ptr %.sink.i.i974, align 4, !tbaa !33
  %i.bic = trunc nuw nsw i64 %i.bdt to i32        ; 2 uses
  %..i975 = tail call i32 @llvm.smin.i32(i32 %i.bib, i32 %i.bic)
  store i32 %..i975, ptr %.sink.i.i974, align 4, !tbaa !33
  %i.bid = getelementptr inbounds nuw i8, ptr %.sink.i.i974, i64 8 ; 2 uses
  %i.bie = load i32, ptr %i.bid, align 4, !tbaa !33
  %i.bif = tail call i32 @llvm.smax.i32(i32 %i.bie, i32 %i.bic)
  store i32 %i.bif, ptr %i.bid, align 4, !tbaa !33
  %i.big = getelementptr inbounds nuw i8, ptr %.sink.i.i974, i64 4 ; 2 uses
  %i.bih = load i32, ptr %i.big, align 4, !tbaa !33
  %i.bii = tail call i32 @llvm.smin.i32(i32 %i.bih, i32 %i.bbm)
  store i32 %i.bii, ptr %i.big, align 4, !tbaa !33
  %i.bij = getelementptr inbounds nuw i8, ptr %.sink.i.i974, i64 12 ; 2 uses
  %i.bik = load i32, ptr %i.bij, align 4, !tbaa !33
  %i.bil = tail call i32 @llvm.smax.i32(i32 %i.bik, i32 %i.bbm)
  store i32 %i.bil, ptr %i.bij, align 4, !tbaa !33
  %i.bim = getelementptr inbounds nuw i8, ptr %.sink.i.i974, i64 16 ; 2 uses
  %i.bin = load i32, ptr %i.bim, align 4, !tbaa !33
  %i.bio = add nsw i32 %i.bin, 1
  store i32 %i.bio, ptr %i.bim, align 4, !tbaa !33
  %i.bip = load ptr, ptr %i.azc, align 8, !tbaa !50
  %i.biq = getelementptr inbounds nuw [16 x i8], ptr %i.bip, i64 %i.bhz ; 2 uses
  %i.bir = load <2 x i64>, ptr %i.biq, align 8, !tbaa !40
  %i.bis = insertelement <2 x i64> %i.bbo, i64 %i.bdt, i64 0
  %i.bit = add <2 x i64> %i.bir, %i.bis
  store <2 x i64> %i.bit, ptr %i.biq, align 8, !tbaa !40
  br label %bb.de

bb.cu:                                            ; preds = %bb.cs
  store i32 0, ptr %i.bhu, align 4, !tbaa !33
  %i.biu = load ptr, ptr %i.azd, align 8, !tbaa !55 ; 6 uses
  %i.biv = load i32, ptr %i.biu, align 4, !tbaa !33
  %i.biw = trunc nuw nsw i64 %i.bdt to i32        ; 2 uses
  %..i978 = tail call i32 @llvm.smin.i32(i32 %i.biv, i32 %i.biw)
  store i32 %..i978, ptr %i.biu, align 4, !tbaa !33
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biu, i64 8 ; 2 uses
  %i.biy = load i32, ptr %i.bix, align 4, !tbaa !33
  %i.biz = tail call i32 @llvm.smax.i32(i32 %i.biy, i32 %i.biw)
  store i32 %i.biz, ptr %i.bix, align 4, !tbaa !33
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biu, i64 4 ; 2 uses
  %i.bjb = load i32, ptr %i.bja, align 4, !tbaa !33
  %i.bjc = tail call i32 @llvm.smin.i32(i32 %i.bjb, i32 %i.bbn)
  store i32 %i.bjc, ptr %i.bja, align 4, !tbaa !33
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.biu, i64 12 ; 2 uses
  %i.bje = load i32, ptr %i.bjd, align 4, !tbaa !33
  %i.bjf = tail call i32 @llvm.smax.i32(i32 %i.bje, i32 %i.bbn)
  store i32 %i.bjf, ptr %i.bjd, align 4, !tbaa !33
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.biu, i64 16 ; 2 uses
  %i.bjh = load i32, ptr %i.bjg, align 4, !tbaa !33
  %i.bji = add nsw i32 %i.bjh, 1
  store i32 %i.bji, ptr %i.bjg, align 4, !tbaa !33
  %i.bjj = load ptr, ptr %i.aze, align 8, !tbaa !50 ; 2 uses
  %i.bjk = load <2 x i64>, ptr %i.bjj, align 8, !tbaa !40
  %i.bjl = insertelement <2 x i64> %i.bbo, i64 %i.bdt, i64 0
  %i.bjm = add <2 x i64> %i.bjk, %i.bjl
  store <2 x i64> %i.bjm, ptr %i.bjj, align 8, !tbaa !40
  br label %bb.de

bb.cv:                                            ; preds = %bb.ck
  %i.bjn = load i32, ptr %i.ayf, align 8, !tbaa !39
  %i.bjo = sext i32 %i.bjn to i64
  %i.bjp = icmp slt i64 %i.bba, %i.bjo
  br i1 %i.bjp, label %bb.cw, label %bb.de

bb.cw:                                            ; preds = %bb.cv
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bas, i64 %indvars.iv
  %i.bjr = load i8, ptr %i.bjq, align 1, !tbaa !32
  %.not780 = icmp eq i8 %i.bjr, 0
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.bax, i64 %indvars.iv ; 2 uses
  br i1 %.not780, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i32 %i.bbx, ptr %i.bjs, align 4, !tbaa !33
  %i.bjt = load i32, ptr %i.ayg, align 4, !tbaa !96
  %i.bju = icmp slt i32 %i.bjt, 2
  %i.bjv = load ptr, ptr %i.ayh, align 8, !tbaa !55
  %i.bjw = load i64, ptr %i.ayi, align 8
  %i.bjx = sext i32 %i.bbx to i64                 ; 2 uses
  %i.bjy = mul i64 %i.bjw, %i.bjx
  %.sink.idx.i.i979 = select i1 %i.bju, i64 0, i64 %i.bjy
  %.sink.i.i980 = getelementptr inbounds nuw i8, ptr %i.bjv, i64 %.sink.idx.i.i979 ; 6 uses
  %i.bjz = load i32, ptr %.sink.i.i980, align 4, !tbaa !33
  %i.bka = trunc nuw nsw i64 %indvars.iv to i32   ; 2 uses
  %..i981 = tail call i32 @llvm.smin.i32(i32 %i.bjz, i32 %i.bka)
  store i32 %..i981, ptr %.sink.i.i980, align 4, !tbaa !33
  %i.bkb = getelementptr inbounds nuw i8, ptr %.sink.i.i980, i64 8 ; 2 uses
  %i.bkc = load i32, ptr %i.bkb, align 4, !tbaa !33
  %i.bkd = tail call i32 @llvm.smax.i32(i32 %i.bkc, i32 %i.bka)
  store i32 %i.bkd, ptr %i.bkb, align 4, !tbaa !33
  %i.bke = getelementptr inbounds nuw i8, ptr %.sink.i.i980, i64 4 ; 2 uses
  %i.bkf = load i32, ptr %i.bke, align 4, !tbaa !33
  %i.bkg = tail call i32 @llvm.smin.i32(i32 %i.bkf, i32 %i.bbg)
  store i32 %i.bkg, ptr %i.bke, align 4, !tbaa !33
  %i.bkh = getelementptr inbounds nuw i8, ptr %.sink.i.i980, i64 12 ; 2 uses
  %i.bki = load i32, ptr %i.bkh, align 4, !tbaa !33
  %i.bkj = tail call i32 @llvm.smax.i32(i32 %i.bki, i32 %i.bbg)
  store i32 %i.bkj, ptr %i.bkh, align 4, !tbaa !33
  %i.bkk = getelementptr inbounds nuw i8, ptr %.sink.i.i980, i64 16 ; 2 uses
  %i.bkl = load i32, ptr %i.bkk, align 4, !tbaa !33
  %i.bkm = add nsw i32 %i.bkl, 1
  store i32 %i.bkm, ptr %i.bkk, align 4, !tbaa !33
  %i.bkn = load ptr, ptr %i.ayj, align 8, !tbaa !50
  %i.bko = getelementptr inbounds nuw [16 x i8], ptr %i.bkn, i64 %i.bjx ; 2 uses
  %i.bkp = load <2 x i64>, ptr %i.bko, align 8, !tbaa !40
  %i.bkq = insertelement <2 x i64> %i.bbo, i64 %indvars.iv, i64 0
  %i.bkr = add <2 x i64> %i.bkp, %i.bkq
  store <2 x i64> %i.bkr, ptr %i.bko, align 8, !tbaa !40
  br label %bb.de

bb.cy:                                            ; preds = %bb.cw
  store i32 0, ptr %i.bjs, align 4, !tbaa !33
  %i.bks = load ptr, ptr %i.ayk, align 8, !tbaa !55 ; 6 uses
  %i.bkt = load i32, ptr %i.bks, align 4, !tbaa !33
  %i.bku = trunc nuw nsw i64 %indvars.iv to i32   ; 2 uses
  %..i984 = tail call i32 @llvm.smin.i32(i32 %i.bkt, i32 %i.bku)
  store i32 %..i984, ptr %i.bks, align 4, !tbaa !33
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bks, i64 8 ; 2 uses
  %i.bkw = load i32, ptr %i.bkv, align 4, !tbaa !33
  %i.bkx = tail call i32 @llvm.smax.i32(i32 %i.bkw, i32 %i.bku)
  store i32 %i.bkx, ptr %i.bkv, align 4, !tbaa !33
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bks, i64 4 ; 2 uses
  %i.bkz = load i32, ptr %i.bky, align 4, !tbaa !33
  %i.bla = tail call i32 @llvm.smin.i32(i32 %i.bkz, i32 %i.bbh)
  store i32 %i.bla, ptr %i.bky, align 4, !tbaa !33
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bks, i64 12 ; 2 uses
  %i.blc = load i32, ptr %i.blb, align 4, !tbaa !33
  %i.bld = tail call i32 @llvm.smax.i32(i32 %i.blc, i32 %i.bbh)
  store i32 %i.bld, ptr %i.blb, align 4, !tbaa !33
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bks, i64 16 ; 2 uses
  %i.blf = load i32, ptr %i.ble, align 4, !tbaa !33
  %i.blg = add nsw i32 %i.blf, 1
  store i32 %i.blg, ptr %i.ble, align 4, !tbaa !33
  %i.blh = load ptr, ptr %i.ayl, align 8, !tbaa !50 ; 2 uses
  %i.bli = load <2 x i64>, ptr %i.blh, align 8, !tbaa !40
  %i.blj = insertelement <2 x i64> %i.bbo, i64 %indvars.iv, i64 0
  %i.blk = add <2 x i64> %i.bli, %i.blj
  store <2 x i64> %i.blk, ptr %i.blh, align 8, !tbaa !40
  br label %bb.de

bb.cz:                                            ; preds = %bb.cg
  store i32 0, ptr %i.bbr, align 4, !tbaa !33
  %i.bll = load ptr, ptr %i.axv, align 8, !tbaa !55 ; 12 uses
  %i.blm = load i32, ptr %i.bll, align 4, !tbaa !33
  %i.bln = trunc nuw nsw i64 %indvars.iv to i32   ; 6 uses
  %..i987 = tail call i32 @llvm.smin.i32(i32 %i.blm, i32 %i.bln)
  store i32 %..i987, ptr %i.bll, align 4, !tbaa !33
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bll, i64 8 ; 8 uses
  %i.blp = load i32, ptr %i.blo, align 4, !tbaa !33
  %i.blq = tail call i32 @llvm.smax.i32(i32 %i.blp, i32 %i.bln)
  store i32 %i.blq, ptr %i.blo, align 4, !tbaa !33
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bll, i64 4 ; 8 uses
  %i.bls = load i32, ptr %i.blr, align 4, !tbaa !33
  %i.blt = tail call i32 @llvm.smin.i32(i32 %i.bls, i32 %i.bbb)
  store i32 %i.blt, ptr %i.blr, align 4, !tbaa !33
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bll, i64 12 ; 8 uses
  %i.blv = load i32, ptr %i.blu, align 4, !tbaa !33
  %i.blw = tail call i32 @llvm.smax.i32(i32 %i.blv, i32 %i.bbb)
  store i32 %i.blw, ptr %i.blu, align 4, !tbaa !33
  %i.blx = getelementptr inbounds nuw i8, ptr %i.bll, i64 16 ; 8 uses
  %i.bly = load i32, ptr %i.blx, align 4, !tbaa !33
  %i.blz = add nsw i32 %i.bly, 1
  store i32 %i.blz, ptr %i.blx, align 4, !tbaa !33
  %i.bma = load ptr, ptr %i.axw, align 8, !tbaa !50 ; 6 uses
  %i.bmb = load i64, ptr %i.bma, align 8, !tbaa !116
  %i.bmc = add i64 %i.bmb, %indvars.iv            ; 3 uses
  store i64 %i.bmc, ptr %i.bma, align 8, !tbaa !116
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bma, i64 8 ; 5 uses
  %i.bme = load i64, ptr %i.bmd, align 8, !tbaa !117
  %i.bmf = add i64 %i.bme, %indvars.iv1183        ; 3 uses
  store i64 %i.bmf, ptr %i.bmd, align 8, !tbaa !117
  %i.bmg = or disjoint i64 %indvars.iv, 1         ; 6 uses
  %i.bmh = load i32, ptr %i.bbq, align 4, !tbaa !52
  %i.bmi = sext i32 %i.bmh to i64
  %i.bmj = icmp slt i64 %i.bmg, %i.bmi
  br i1 %i.bmj, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.bmk = getelementptr inbounds nuw [4 x i8], ptr %i.baw, i64 %i.bmg
  store i32 0, ptr %i.bmk, align 4, !tbaa !33
  %i.bml = load i32, ptr %i.bll, align 4, !tbaa !33
  %i.bmm = trunc nuw nsw i64 %i.bmg to i32        ; 4 uses
  %..i990 = tail call i32 @llvm.smin.i32(i32 %i.bml, i32 %i.bmm)
  store i32 %..i990, ptr %i.bll, align 4, !tbaa !33
  %i.bmn = load i32, ptr %i.blo, align 4, !tbaa !33
  %i.bmo = tail call i32 @llvm.smax.i32(i32 %i.bmn, i32 %i.bmm)
  store i32 %i.bmo, ptr %i.blo, align 4, !tbaa !33
  %i.bmp = load i32, ptr %i.blr, align 4, !tbaa !33
  %i.bmq = tail call i32 @llvm.smin.i32(i32 %i.bmp, i32 %i.bbb)
  store i32 %i.bmq, ptr %i.blr, align 4, !tbaa !33
  %i.bmr = load i32, ptr %i.blu, align 4, !tbaa !33
  %i.bms = tail call i32 @llvm.smax.i32(i32 %i.bmr, i32 %i.bbb)
  store i32 %i.bms, ptr %i.blu, align 4, !tbaa !33
  %i.bmt = load i32, ptr %i.blx, align 4, !tbaa !33
  %i.bmu = add nsw i32 %i.bmt, 1
  store i32 %i.bmu, ptr %i.blx, align 4, !tbaa !33
  %i.bmv = add i64 %i.bmc, %i.bmg                 ; 2 uses
  store i64 %i.bmv, ptr %i.bma, align 8, !tbaa !116
  %i.bmw = add i64 %i.bmf, %indvars.iv1183        ; 2 uses
  store i64 %i.bmw, ptr %i.bmd, align 8, !tbaa !117
  %i.bmx = load i32, ptr %i.axy, align 8, !tbaa !39
  %i.bmy = sext i32 %i.bmx to i64
  %i.bmz = icmp slt i64 %i.bba, %i.bmy
  br i1 %i.bmz, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %i.bax, i64 %indvars.iv
  store i32 0, ptr %i.bna, align 4, !tbaa !33
  %i.bnb = getelementptr inbounds nuw [4 x i8], ptr %i.bax, i64 %i.bmg
  store i32 0, ptr %i.bnb, align 4, !tbaa !33
  %i.bnc = load i32, ptr %i.bll, align 4, !tbaa !33
  %..i993 = tail call i32 @llvm.smin.i32(i32 %i.bnc, i32 %i.bln)
  %i.bnd = load i32, ptr %i.blo, align 4, !tbaa !33
  %i.bne = tail call i32 @llvm.smax.i32(i32 %i.bnd, i32 %i.bln)
  %i.bnf = load i32, ptr %i.blr, align 4, !tbaa !33
  %i.bng = tail call i32 @llvm.smin.i32(i32 %i.bnf, i32 %i.bbd)
  %i.bnh = load i32, ptr %i.blu, align 4, !tbaa !33
  %i.bni = tail call i32 @llvm.smax.i32(i32 %i.bnh, i32 %i.bbd)
  %i.bnj = load i32, ptr %i.blx, align 4, !tbaa !33
  %i.bnk = add i64 %i.bmv, %indvars.iv
  %..i996 = tail call i32 @llvm.smin.i32(i32 %..i993, i32 %i.bmm)
  store i32 %..i996, ptr %i.bll, align 4, !tbaa !33
  %i.bnl = tail call i32 @llvm.umax.i32(i32 %i.bne, i32 %i.bmm)
  store i32 %i.bnl, ptr %i.blo, align 4, !tbaa !33
  store i32 %i.bng, ptr %i.blr, align 4, !tbaa !33
  store i32 %i.bni, ptr %i.blu, align 4, !tbaa !33
  %i.bnm = add nsw i32 %i.bnj, 2
  store i32 %i.bnm, ptr %i.blx, align 4, !tbaa !33
  %i.bnn = add i64 %i.bnk, %i.bmg
  store i64 %i.bnn, ptr %i.bma, align 8, !tbaa !116
  %.reass = add i64 %i.bmw, %invariant.op
  store i64 %.reass, ptr %i.bmd, align 8, !tbaa !117
  br label %bb.de

bb.dc:                                            ; preds = %bb.cz
  %i.bno = load i32, ptr %i.axx, align 8, !tbaa !39
  %i.bnp = sext i32 %i.bno to i64
  %i.bnq = icmp slt i64 %i.bba, %i.bnp
  br i1 %i.bnq, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.bax, i64 %indvars.iv
  store i32 0, ptr %i.bnr, align 4, !tbaa !33
  %i.bns = load i32, ptr %i.bll, align 4, !tbaa !33
  %..i999 = tail call i32 @llvm.smin.i32(i32 %i.bns, i32 %i.bln)
  store i32 %..i999, ptr %i.bll, align 4, !tbaa !33
  %i.bnt = load i32, ptr %i.blo, align 4, !tbaa !33
  %i.bnu = tail call i32 @llvm.smax.i32(i32 %i.bnt, i32 %i.bln)
  store i32 %i.bnu, ptr %i.blo, align 4, !tbaa !33
  %i.bnv = load i32, ptr %i.blr, align 4, !tbaa !33
  %i.bnw = tail call i32 @llvm.smin.i32(i32 %i.bnv, i32 %i.bbc)
  store i32 %i.bnw, ptr %i.blr, align 4, !tbaa !33
  %i.bnx = load i32, ptr %i.blu, align 4, !tbaa !33
  %i.bny = tail call i32 @llvm.smax.i32(i32 %i.bnx, i32 %i.bbc)
  store i32 %i.bny, ptr %i.blu, align 4, !tbaa !33
  %i.bnz = load i32, ptr %i.blx, align 4, !tbaa !33
  %i.boa = add nsw i32 %i.bnz, 1
  store i32 %i.boa, ptr %i.blx, align 4, !tbaa !33
  %i.bob = add i64 %i.bmc, %indvars.iv
  store i64 %i.bob, ptr %i.bma, align 8, !tbaa !116
  %i.boc = add i64 %i.bmf, %i.bba
  store i64 %i.boc, ptr %i.bmd, align 8, !tbaa !117
  br label %bb.de

bb.de:                                            ; preds = %bb.db, %bb.da, %bb.dd, %bb.dc, %bb.ct, %bb.cu, %bb.co, %bb.cx, %bb.cy, %bb.cv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bod = load i32, ptr %i.axk, align 4, !tbaa !52
  %i.boe = sext i32 %i.bod to i64
  %i.bof = icmp slt i64 %indvars.iv.next, %i.boe
  br i1 %i.bof, label %bb.cg, label %._crit_edge, !llvm.loop !409

bb.df:                                            ; preds = %.lr.ph1133, %._crit_edge1131
  %indvars.iv1189 = phi i64 [ %i.azg, %.lr.ph1133 ], [ %indvars.iv.next1190, %._crit_edge1131 ] ; 12 uses
  %i.bog = load i64, ptr %i.azi, align 8, !tbaa !40 ; 2 uses
  %i.boh = mul i64 %i.bog, %indvars.iv1189
  %i.boi = getelementptr inbounds nuw i8, ptr %.pre1229, i64 %i.boh ; 3 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 %i.bog ; 2 uses
  %i.bok = load i64, ptr %i.azl, align 8, !tbaa !40 ; 2 uses
  %i.bol = mul i64 %i.bok, %indvars.iv1189
  %i.bom = getelementptr inbounds nuw i8, ptr %i.azk, i64 %i.bol ; 4 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 %i.bok ; 4 uses
  %i.boo = load i32, ptr %i.azm, align 4, !tbaa !52
  %i.bop = icmp sgt i32 %i.boo, 0
  br i1 %i.bop, label %.lr.ph1130, label %._crit_edge1131

.lr.ph1130:                                       ; preds = %bb.df
  %i.boq = or disjoint i64 %indvars.iv1189, 1     ; 10 uses
  %i.bor = trunc nsw i64 %indvars.iv1189 to i32   ; 2 uses
  %invariant.op1280 = shl i64 %indvars.iv1189, 1
  %i.bos = trunc nsw i64 %i.boq to i32            ; 2 uses
  %invariant.op1282 = shl i64 %i.boq, 1
  %i.bot = trunc nsw i64 %indvars.iv1189 to i32   ; 2 uses
  %i.bou = trunc nsw i64 %indvars.iv1189 to i32   ; 2 uses
  %i.bov = trunc nsw i64 %indvars.iv1189 to i32   ; 2 uses
  %i.bow = trunc nsw i64 %indvars.iv1189 to i32   ; 2 uses
  %i.box = trunc nsw i64 %i.boq to i32            ; 2 uses
  %i.boy = trunc nsw i64 %i.boq to i32            ; 2 uses
  %i.boz = trunc nsw i64 %i.boq to i32            ; 2 uses
  %i.bpa = trunc nsw i64 %i.boq to i32            ; 2 uses
  %i.bpb = insertelement <2 x i64> poison, i64 %i.boq, i64 1 ; 2 uses
  br label %bb.dg

._crit_edge1131:                                  ; preds = %bb.dw, %bb.df
  %indvars.iv.next1190 = add nsw i64 %indvars.iv1189, 2 ; 2 uses
  %i.bpc = icmp slt i64 %indvars.iv.next1190, %i.azh
  br i1 %i.bpc, label %bb.df, label %.loopexit, !llvm.loop !410

bb.dg:                                            ; preds = %.lr.ph1130, %bb.dw
  %indvars.iv1186 = phi i64 [ 0, %.lr.ph1130 ], [ %indvars.iv.next1187, %bb.dw ] ; 19 uses
  %i.bpd = getelementptr inbounds nuw [4 x i8], ptr %i.bom, i64 %indvars.iv1186 ; 4 uses
  %i.bpe = load i32, ptr %i.bpd, align 4, !tbaa !33 ; 2 uses
  %i.bpf = icmp sgt i32 %i.bpe, 0
  br i1 %i.bpf, label %bb.dh, label %bb.du

bb.dh:                                            ; preds = %bb.dg
  %i.bpg = load ptr, ptr %i.azf, align 8, !tbaa !122
  %i.bph = zext nneg i32 %i.bpe to i64
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %i.bpg, i64 %i.bph
  %i.bpj = load i32, ptr %i.bpi, align 4, !tbaa !33 ; 8 uses
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.boi, i64 %indvars.iv1186
  %i.bpl = load i8, ptr %i.bpk, align 1, !tbaa !32
  %.not775 = icmp eq i8 %i.bpl, 0
  br i1 %.not775, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store i32 %i.bpj, ptr %i.bpd, align 4, !tbaa !33
  %i.bpm = load i32, ptr %i.azq, align 4, !tbaa !96
  %i.bpn = icmp slt i32 %i.bpm, 2
  %i.bpo = load ptr, ptr %i.azr, align 8, !tbaa !55
  %i.bpp = load i64, ptr %i.azs, align 8
  %i.bpq = sext i32 %i.bpj to i64                 ; 2 uses
  %i.bpr = mul i64 %i.bpp, %i.bpq
  %.sink.idx.i.i1000 = select i1 %i.bpn, i64 0, i64 %i.bpr
  %.sink.i.i1001 = getelementptr inbounds nuw i8, ptr %i.bpo, i64 %.sink.idx.i.i1000 ; 6 uses
  %i.bps = load i32, ptr %.sink.i.i1001, align 4, !tbaa !33
  %i.bpt = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 2 uses
  %..i1002 = tail call i32 @llvm.smin.i32(i32 %i.bps, i32 %i.bpt)
  store i32 %..i1002, ptr %.sink.i.i1001, align 4, !tbaa !33
  %i.bpu = getelementptr inbounds nuw i8, ptr %.sink.i.i1001, i64 8 ; 2 uses
  %i.bpv = load i32, ptr %i.bpu, align 4, !tbaa !33
  %i.bpw = tail call i32 @llvm.smax.i32(i32 %i.bpv, i32 %i.bpt)
  store i32 %i.bpw, ptr %i.bpu, align 4, !tbaa !33
  %i.bpx = getelementptr inbounds nuw i8, ptr %.sink.i.i1001, i64 4 ; 2 uses
  %i.bpy = load i32, ptr %i.bpx, align 4, !tbaa !33
  %i.bpz = tail call i32 @llvm.smin.i32(i32 %i.bpy, i32 %i.bot)
  store i32 %i.bpz, ptr %i.bpx, align 4, !tbaa !33
  %i.bqa = getelementptr inbounds nuw i8, ptr %.sink.i.i1001, i64 12 ; 2 uses
  %i.bqb = load i32, ptr %i.bqa, align 4, !tbaa !33
  %i.bqc = tail call i32 @llvm.smax.i32(i32 %i.bqb, i32 %i.bot)
  store i32 %i.bqc, ptr %i.bqa, align 4, !tbaa !33
  %i.bqd = getelementptr inbounds nuw i8, ptr %.sink.i.i1001, i64 16 ; 2 uses
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !33
  %i.bqf = add nsw i32 %i.bqe, 1
  store i32 %i.bqf, ptr %i.bqd, align 4, !tbaa !33
  %i.bqg = load ptr, ptr %i.azt, align 8, !tbaa !50
  %i.bqh = getelementptr inbounds nuw [16 x i8], ptr %i.bqg, i64 %i.bpq ; 3 uses
  %i.bqi = load i64, ptr %i.bqh, align 8, !tbaa !116
  %i.bqj = add i64 %i.bqi, %indvars.iv1186
  store i64 %i.bqj, ptr %i.bqh, align 8, !tbaa !116
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  store i32 0, ptr %i.bpd, align 4, !tbaa !33
  %i.bqk = load ptr, ptr %i.azu, align 8, !tbaa !55 ; 6 uses
  %i.bql = load i32, ptr %i.bqk, align 4, !tbaa !33
  %i.bqm = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 2 uses
  %..i1005 = tail call i32 @llvm.smin.i32(i32 %i.bql, i32 %i.bqm)
  store i32 %..i1005, ptr %i.bqk, align 4, !tbaa !33
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqk, i64 8 ; 2 uses
  %i.bqo = load i32, ptr %i.bqn, align 4, !tbaa !33
  %i.bqp = tail call i32 @llvm.smax.i32(i32 %i.bqo, i32 %i.bqm)
  store i32 %i.bqp, ptr %i.bqn, align 4, !tbaa !33
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqk, i64 4 ; 2 uses
  %i.bqr = load i32, ptr %i.bqq, align 4, !tbaa !33
  %i.bqs = tail call i32 @llvm.smin.i32(i32 %i.bqr, i32 %i.bou)
  store i32 %i.bqs, ptr %i.bqq, align 4, !tbaa !33
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqk, i64 12 ; 2 uses
  %i.bqu = load i32, ptr %i.bqt, align 4, !tbaa !33
  %i.bqv = tail call i32 @llvm.smax.i32(i32 %i.bqu, i32 %i.bou)
  store i32 %i.bqv, ptr %i.bqt, align 4, !tbaa !33
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqk, i64 16 ; 2 uses
  %i.bqx = load i32, ptr %i.bqw, align 4, !tbaa !33
  %i.bqy = add nsw i32 %i.bqx, 1
  store i32 %i.bqy, ptr %i.bqw, align 4, !tbaa !33
  %i.bqz = load ptr, ptr %i.azv, align 8, !tbaa !50 ; 3 uses
  %i.bra = load i64, ptr %i.bqz, align 8, !tbaa !116
  %i.brb = add i64 %i.bra, %indvars.iv1186
  store i64 %i.brb, ptr %i.bqz, align 8, !tbaa !116
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.sink1357 = phi ptr [ %i.bqz, %bb.dj ], [ %i.bqh, %bb.di ]
  %i.brc = getelementptr inbounds nuw i8, ptr %.sink1357, i64 8 ; 2 uses
  %i.brd = load i64, ptr %i.brc, align 8, !tbaa !117
  %i.bre = add i64 %i.brd, %indvars.iv1189
  store i64 %i.bre, ptr %i.brc, align 8, !tbaa !117
  %i.brf = or disjoint i64 %indvars.iv1186, 1     ; 12 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.boi, i64 %i.brf
  %i.brh = load i8, ptr %i.brg, align 1, !tbaa !32
  %.not776 = icmp eq i8 %i.brh, 0
  %i.bri = getelementptr inbounds nuw [4 x i8], ptr %i.bom, i64 %i.brf ; 2 uses
  br i1 %.not776, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  store i32 %i.bpj, ptr %i.bri, align 4, !tbaa !33
  %i.brj = load i32, ptr %i.azw, align 4, !tbaa !96
  %i.brk = icmp slt i32 %i.brj, 2
  %i.brl = load ptr, ptr %i.azx, align 8, !tbaa !55
  %i.brm = load i64, ptr %i.azy, align 8
  %i.brn = sext i32 %i.bpj to i64                 ; 2 uses
  %i.bro = mul i64 %i.brm, %i.brn
  %.sink.idx.i.i1006 = select i1 %i.brk, i64 0, i64 %i.bro
  %.sink.i.i1007 = getelementptr inbounds nuw i8, ptr %i.brl, i64 %.sink.idx.i.i1006 ; 6 uses
  %i.brp = load i32, ptr %.sink.i.i1007, align 4, !tbaa !33
  %i.brq = trunc nuw nsw i64 %i.brf to i32        ; 2 uses
  %..i1008 = tail call i32 @llvm.smin.i32(i32 %i.brp, i32 %i.brq)
  store i32 %..i1008, ptr %.sink.i.i1007, align 4, !tbaa !33
  %i.brr = getelementptr inbounds nuw i8, ptr %.sink.i.i1007, i64 8 ; 2 uses
  %i.brs = load i32, ptr %i.brr, align 4, !tbaa !33
  %i.brt = tail call i32 @llvm.smax.i32(i32 %i.brs, i32 %i.brq)
  store i32 %i.brt, ptr %i.brr, align 4, !tbaa !33
  %i.bru = getelementptr inbounds nuw i8, ptr %.sink.i.i1007, i64 4 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  store i32 %i.bss, ptr %i.bsq, align 4, !tbaa !33
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bsh, i64 16 ; 2 uses
  %i.bsu = load i32, ptr %i.bst, align 4, !tbaa !33
  %i.bsv = add nsw i32 %i.bsu, 1
  store i32 %i.bsv, ptr %i.bst, align 4, !tbaa !33
  %i.bsw = load ptr, ptr %i.bab, align 8, !tbaa !50 ; 3 uses
  %i.bsx = load i64, ptr %i.bsw, align 8, !tbaa !116
  %i.bsy = add i64 %i.bsx, %i.brf
  store i64 %i.bsy, ptr %i.bsw, align 8, !tbaa !116
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.sink1360 = phi ptr [ %i.bsw, %bb.dm ], [ %i.bse, %bb.dl ]
  %i.bsz = getelementptr inbounds nuw i8, ptr %.sink1360, i64 8 ; 2 uses
  %i.bta = load i64, ptr %i.bsz, align 8, !tbaa !117
  %i.btb = add i64 %i.bta, %indvars.iv1189
  store i64 %i.btb, ptr %i.bsz, align 8, !tbaa !117
  %i.btc = load i32, ptr %i.bac, align 8, !tbaa !39
  %i.btd = sext i32 %i.btc to i64
  %i.bte = icmp slt i64 %i.boq, %i.btd
  br i1 %i.bte, label %bb.do, label %bb.dw

bb.do:                                            ; preds = %bb.dn
  %i.btf = getelementptr inbounds nuw i8, ptr %i.boj, i64 %indvars.iv1186
  %i.btg = load i8, ptr %i.btf, align 1, !tbaa !32
  %.not777 = icmp eq i8 %i.btg, 0
  %i.bth = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %indvars.iv1186 ; 2 uses
  br i1 %.not777, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  store i32 %i.bpj, ptr %i.bth, align 4, !tbaa !33
  %i.bti = load i32, ptr %i.bad, align 4, !tbaa !96
  %i.btj = icmp slt i32 %i.bti, 2
  %i.btk = load ptr, ptr %i.bae, align 8, !tbaa !55
  %i.btl = load i64, ptr %i.baf, align 8
  %i.btm = sext i32 %i.bpj to i64                 ; 2 uses
  %i.btn = mul i64 %i.btl, %i.btm
  %.sink.idx.i.i1012 = select i1 %i.btj, i64 0, i64 %i.btn
  %.sink.i.i1013 = getelementptr inbounds nuw i8, ptr %i.btk, i64 %.sink.idx.i.i1012 ; 6 uses
  %i.bto = load i32, ptr %.sink.i.i1013, align 4, !tbaa !33
  %i.btp = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 2 uses
  %..i1014 = tail call i32 @llvm.smin.i32(i32 %i.bto, i32 %i.btp)
  store i32 %..i1014, ptr %.sink.i.i1013, align 4, !tbaa !33
  %i.btq = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 8 ; 2 uses
  %i.btr = load i32, ptr %i.btq, align 4, !tbaa !33
  %i.bts = tail call i32 @llvm.smax.i32(i32 %i.btr, i32 %i.btp)
  store i32 %i.bts, ptr %i.btq, align 4, !tbaa !33
  %i.btt = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 4 ; 2 uses
  %i.btu = load i32, ptr %i.btt, align 4, !tbaa !33
  %i.btv = tail call i32 @llvm.smin.i32(i32 %i.btu, i32 %i.box)
  store i32 %i.btv, ptr %i.btt, align 4, !tbaa !33
  %i.btw = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 12 ; 2 uses
  %i.btx = load i32, ptr %i.btw, align 4, !tbaa !33
  %i.bty = tail call i32 @llvm.smax.i32(i32 %i.btx, i32 %i.box)
  store i32 %i.bty, ptr %i.btw, align 4, !tbaa !33
  %i.btz = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 16 ; 2 uses
  %i.bua = load i32, ptr %i.btz, align 4, !tbaa !33
  %i.bub = add nsw i32 %i.bua, 1
  store i32 %i.bub, ptr %i.btz, align 4, !tbaa !33
  %i.buc = load ptr, ptr %i.bag, align 8, !tbaa !50
  %i.bud = getelementptr inbounds nuw [16 x i8], ptr %i.buc, i64 %i.btm ; 3 uses
  %i.bue = load i64, ptr %i.bud, align 8, !tbaa !116
  %i.buf = add i64 %i.bue, %indvars.iv1186
  store i64 %i.buf, ptr %i.bud, align 8, !tbaa !116
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  store i32 0, ptr %i.bth, align 4, !tbaa !33
  %i.bug = load ptr, ptr %i.bah, align 8, !tbaa !55 ; 6 uses
  %i.buh = load i32, ptr %i.bug, align 4, !tbaa !33
  %i.bui = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 2 uses
  %..i1017 = tail call i32 @llvm.smin.i32(i32 %i.buh, i32 %i.bui)
  store i32 %..i1017, ptr %i.bug, align 4, !tbaa !33
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bug, i64 8 ; 2 uses
  %i.buk = load i32, ptr %i.buj, align 4, !tbaa !33
  %i.bul = tail call i32 @llvm.smax.i32(i32 %i.buk, i32 %i.bui)
  store i32 %i.bul, ptr %i.buj, align 4, !tbaa !33
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bug, i64 4 ; 2 uses
  %i.bun = load i32, ptr %i.bum, align 4, !tbaa !33
  %i.buo = tail call i32 @llvm.smin.i32(i32 %i.bun, i32 %i.boy)
  store i32 %i.buo, ptr %i.bum, align 4, !tbaa !33
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bug, i64 12 ; 2 uses
  %i.buq = load i32, ptr %i.bup, align 4, !tbaa !33
  %i.bur = tail call i32 @llvm.smax.i32(i32 %i.buq, i32 %i.boy)
  store i32 %i.bur, ptr %i.bup, align 4, !tbaa !33
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bug, i64 16 ; 2 uses
  %i.but = load i32, ptr %i.bus, align 4, !tbaa !33
  %i.buu = add nsw i32 %i.but, 1
  store i32 %i.buu, ptr %i.bus, align 4, !tbaa !33
  %i.buv = load ptr, ptr %i.bai, align 8, !tbaa !50 ; 3 uses
  %i.buw = load i64, ptr %i.buv, align 8, !tbaa !116
  %i.bux = add i64 %i.buw, %indvars.iv1186
  store i64 %i.bux, ptr %i.buv, align 8, !tbaa !116
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.sink1363 = phi ptr [ %i.buv, %bb.dq ], [ %i.bud, %bb.dp ]
  %i.buy = getelementptr inbounds nuw i8, ptr %.sink1363, i64 8 ; 2 uses
  %i.buz = load i64, ptr %i.buy, align 8, !tbaa !117
  %i.bva = add i64 %i.buz, %i.boq
  store i64 %i.bva, ptr %i.buy, align 8, !tbaa !117
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.boj, i64 %i.brf
  %i.bvc = load i8, ptr %i.bvb, align 1, !tbaa !32
  %.not778 = icmp eq i8 %i.bvc, 0
  %i.bvd = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %i.brf ; 2 uses
  br i1 %.not778, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store i32 %i.bpj, ptr %i.bvd, align 4, !tbaa !33
  %i.bve = load i32, ptr %i.baj, align 4, !tbaa !96
  %i.bvf = icmp slt i32 %i.bve, 2
  %i.bvg = load ptr, ptr %i.bak, align 8, !tbaa !55
  %i.bvh = load i64, ptr %i.bal, align 8
  %i.bvi = sext i32 %i.bpj to i64                 ; 2 uses
  %i.bvj = mul i64 %i.bvh, %i.bvi
  %.sink.idx.i.i1018 = select i1 %i.bvf, i64 0, i64 %i.bvj
  %.sink.i.i1019 = getelementptr inbounds nuw i8, ptr %i.bvg, i64 %.sink.idx.i.i1018 ; 6 uses
  %i.bvk = load i32, ptr %.sink.i.i1019, align 4, !tbaa !33
  %i.bvl = trunc nuw nsw i64 %i.brf to i32        ; 2 uses
  %..i1020 = tail call i32 @llvm.smin.i32(i32 %i.bvk, i32 %i.bvl)
  store i32 %..i1020, ptr %.sink.i.i1019, align 4, !tbaa !33
  %i.bvm = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 8 ; 2 uses
  %i.bvn = load i32, ptr %i.bvm, align 4, !tbaa !33
  %i.bvo = tail call i32 @llvm.smax.i32(i32 %i.bvn, i32 %i.bvl)
  store i32 %i.bvo, ptr %i.bvm, align 4, !tbaa !33
  %i.bvp = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 4 ; 2 uses
  %i.bvq = load i32, ptr %i.bvp, align 4, !tbaa !33
  %i.bvr = tail call i32 @llvm.smin.i32(i32 %i.bvq, i32 %i.boz)
  store i32 %i.bvr, ptr %i.bvp, align 4, !tbaa !33
  %i.bvs = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 12 ; 2 uses
  %i.bvt = load i32, ptr %i.bvs, align 4, !tbaa !33
  %i.bvu = tail call i32 @llvm.smax.i32(i32 %i.bvt, i32 %i.boz)
  store i32 %i.bvu, ptr %i.bvs, align 4, !tbaa !33
  %i.bvv = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 16 ; 2 uses
  %i.bvw = load i32, ptr %i.bvv, align 4, !tbaa !33
  %i.bvx = add nsw i32 %i.bvw, 1
  store i32 %i.bvx, ptr %i.bvv, align 4, !tbaa !33
  %i.bvy = load ptr, ptr %i.bam, align 8, !tbaa !50
  %i.bvz = getelementptr inbounds nuw [16 x i8], ptr %i.bvy, i64 %i.bvi ; 2 uses
  %i.bwa = load <2 x i64>, ptr %i.bvz, align 8, !tbaa !40
  %i.bwb = insertelement <2 x i64> %i.bpb, i64 %i.brf, i64 0
  %i.bwc = add <2 x i64> %i.bwa, %i.bwb
  store <2 x i64> %i.bwc, ptr %i.bvz, align 8, !tbaa !40
  br label %bb.dw

bb.dt:                                            ; preds = %bb.dr
  store i32 0, ptr %i.bvd, align 4, !tbaa !33
  %i.bwd = load ptr, ptr %i.ban, align 8, !tbaa !55 ; 6 uses
  %i.bwe = load i32, ptr %i.bwd, align 4, !tbaa !33
  %i.bwf = trunc nuw nsw i64 %i.brf to i32        ; 2 uses
  %..i1023 = tail call i32 @llvm.smin.i32(i32 %i.bwe, i32 %i.bwf)
  store i32 %..i1023, ptr %i.bwd, align 4, !tbaa !33
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwd, i64 8 ; 2 uses
  %i.bwh = load i32, ptr %i.bwg, align 4, !tbaa !33
  %i.bwi = tail call i32 @llvm.smax.i32(i32 %i.bwh, i32 %i.bwf)
  store i32 %i.bwi, ptr %i.bwg, align 4, !tbaa !33
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwd, i64 4 ; 2 uses
  %i.bwk = load i32, ptr %i.bwj, align 4, !tbaa !33
  %i.bwl = tail call i32 @llvm.smin.i32(i32 %i.bwk, i32 %i.bpa)
  store i32 %i.bwl, ptr %i.bwj, align 4, !tbaa !33
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwd, i64 12 ; 2 uses
  %i.bwn = load i32, ptr %i.bwm, align 4, !tbaa !33
  %i.bwo = tail call i32 @llvm.smax.i32(i32 %i.bwn, i32 %i.bpa)
  store i32 %i.bwo, ptr %i.bwm, align 4, !tbaa !33
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwd, i64 16 ; 2 uses
  %i.bwq = load i32, ptr %i.bwp, align 4, !tbaa !33
  %i.bwr = add nsw i32 %i.bwq, 1
  store i32 %i.bwr, ptr %i.bwp, align 4, !tbaa !33
  %i.bws = load ptr, ptr %i.bao, align 8, !tbaa !50 ; 2 uses
  %i.bwt = load <2 x i64>, ptr %i.bws, align 8, !tbaa !40
  %i.bwu = insertelement <2 x i64> %i.bpb, i64 %i.brf, i64 0
  %i.bwv = add <2 x i64> %i.bwt, %i.bwu
  store <2 x i64> %i.bwv, ptr %i.bws, align 8, !tbaa !40
  br label %bb.dw

bb.du:                                            ; preds = %bb.dg
  store i32 0, ptr %i.bpd, align 4, !tbaa !33
  %i.bww = or disjoint i64 %indvars.iv1186, 1     ; 5 uses
  %i.bwx = getelementptr inbounds nuw [4 x i8], ptr %i.bom, i64 %i.bww
  store i32 0, ptr %i.bwx, align 4, !tbaa !33
  %i.bwy = load ptr, ptr %i.azn, align 8, !tbaa !55 ; 8 uses
  %i.bwz = load i32, ptr %i.bwy, align 4, !tbaa !33
  %i.bxa = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 4 uses
  %..i1026 = tail call i32 @llvm.smin.i32(i32 %i.bwz, i32 %i.bxa)
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bwy, i64 8 ; 4 uses
  %i.bxc = load i32, ptr %i.bxb, align 4, !tbaa !33
  %i.bxd = tail call i32 @llvm.smax.i32(i32 %i.bxc, i32 %i.bxa)
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bwy, i64 4 ; 4 uses
  %i.bxf = load i32, ptr %i.bxe, align 4, !tbaa !33
  %i.bxg = tail call i32 @llvm.smin.i32(i32 %i.bxf, i32 %i.bor)
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bwy, i64 12 ; 4 uses
  %i.bxi = load i32, ptr %i.bxh, align 4, !tbaa !33
  %i.bxj = tail call i32 @llvm.smax.i32(i32 %i.bxi, i32 %i.bor)
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bwy, i64 16 ; 4 uses
  %i.bxl = load i32, ptr %i.bxk, align 4, !tbaa !33
  %i.bxm = load ptr, ptr %i.azo, align 8, !tbaa !50 ; 4 uses
  %i.bxn = load i64, ptr %i.bxm, align 8, !tbaa !116
  %i.bxo = add i64 %i.bxn, %indvars.iv1186
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxm, i64 8 ; 3 uses
  %i.bxq = load i64, ptr %i.bxp, align 8, !tbaa !117
  %8 = trunc nuw nsw i64 %i.bww to i32            ; 4 uses
  %..i1029 = tail call i32 @llvm.smin.i32(i32 %..i1026, i32 %8)
  store i32 %..i1029, ptr %i.bwy, align 4, !tbaa !33
  %i.bxr = tail call i32 @llvm.umax.i32(i32 %i.bxd, i32 %8)
  store i32 %i.bxr, ptr %i.bxb, align 4, !tbaa !33
  store i32 %i.bxg, ptr %i.bxe, align 4, !tbaa !33
  store i32 %i.bxj, ptr %i.bxh, align 4, !tbaa !33
  %i.bxs = add nsw i32 %i.bxl, 2
  store i32 %i.bxs, ptr %i.bxk, align 4, !tbaa !33
  %i.bxt = add i64 %i.bxo, %i.bww                 ; 2 uses
  store i64 %i.bxt, ptr %i.bxm, align 8, !tbaa !116
  %.reass1281 = add i64 %i.bxq, %invariant.op1280 ; 2 uses
  store i64 %.reass1281, ptr %i.bxp, align 8, !tbaa !117
  %i.bxu = load i32, ptr %i.azp, align 8, !tbaa !39
  %i.bxv = sext i32 %i.bxu to i64
  %i.bxw = icmp slt i64 %i.boq, %i.bxv
  br i1 %i.bxw, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.bxx = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %indvars.iv1186
  store i32 0, ptr %i.bxx, align 4, !tbaa !33
  %i.bxy = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %i.bww
  store i32 0, ptr %i.bxy, align 4, !tbaa !33
  %i.bxz = load i32, ptr %i.bwy, align 4, !tbaa !33
  %..i1032 = tail call i32 @llvm.smin.i32(i32 %i.bxz, i32 %i.bxa)
  %i.bya = load i32, ptr %i.bxb, align 4, !tbaa !33
  %i.byb = tail call i32 @llvm.smax.i32(i32 %i.bya, i32 %i.bxa)
  %i.byc = load i32, ptr %i.bxe, align 4, !tbaa !33
  %i.byd = tail call i32 @llvm.smin.i32(i32 %i.byc, i32 %i.bos)
  %i.bye = load i32, ptr %i.bxh, align 4, !tbaa !33
  %i.byf = tail call i32 @llvm.smax.i32(i32 %i.bye, i32 %i.bos)
  %i.byg = load i32, ptr %i.bxk, align 4, !tbaa !33
  %i.byh = add i64 %i.bxt, %indvars.iv1186
  %..i1035 = tail call i32 @llvm.smin.i32(i32 %..i1032, i32 %8)
  store i32 %..i1035, ptr %i.bwy, align 4, !tbaa !33
  %i.byi = tail call i32 @llvm.umax.i32(i32 %i.byb, i32 %8)
  store i32 %i.byi, ptr %i.bxb, align 4, !tbaa !33
  store i32 %i.byd, ptr %i.bxe, align 4, !tbaa !33
  store i32 %i.byf, ptr %i.bxh, align 4, !tbaa !33
  %i.byj = add nsw i32 %i.byg, 2
  store i32 %i.byj, ptr %i.bxk, align 4, !tbaa !33
  %i.byk = add i64 %i.byh, %i.bww
  store i64 %i.byk, ptr %i.bxm, align 8, !tbaa !116
  %.reass1283 = add i64 %.reass1281, %invariant.op1282
  store i64 %.reass1283, ptr %i.bxp, align 8, !tbaa !117
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv, %bb.dn, %bb.dt, %bb.ds
  %indvars.iv.next1187 = add nuw nsw i64 %indvars.iv1186, 2 ; 2 uses
  %i.byl = load i32, ptr %i.axk, align 4, !tbaa !52
  %i.bym = sext i32 %i.byl to i64
  %i.byn = icmp slt i64 %indvars.iv.next1187, %i.bym
  br i1 %i.byn, label %bb.dg, label %._crit_edge1131, !llvm.loop !411

bb.dx:                                            ; preds = %bb.cd
  br i1 %.not765, label %.preheader1115, label %.preheader1117

.preheader1117:                                   ; preds = %bb.dx
  br i1 %i.axn, label %.lr.ph1139, label %.loopexit

.lr.ph1139:                                       ; preds = %.preheader1117
  %i.byo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.byp = sext i32 %i.b to i64
  %i.byq = sext i32 %.sroa.speculated to i64
  %.phi.trans.insert1230 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre1231 = load ptr, ptr %.phi.trans.insert1230, align 8, !tbaa !55
  %i.byr = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.bys = getelementptr inbounds nuw i8, ptr %i.axg, i64 24
  %i.byt = load ptr, ptr %i.bys, align 8, !tbaa !55
  %i.byu = getelementptr inbounds nuw i8, ptr %i.axg, i64 128
  %i.byv = getelementptr inbounds nuw i8, ptr %i.axg, i64 12 ; 2 uses
  %i.byw = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.byx = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.byy = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.byz = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bza = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bze = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  br label %bb.dy

.preheader1115:                                   ; preds = %bb.dx
  br i1 %i.axn, label %.lr.ph1146, label %.loopexit

.lr.ph1146:                                       ; preds = %.preheader1115
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bzx = load ptr, ptr %i.bzw, align 8, !tbaa !55
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.axg, i64 24
  %i.caa = load ptr, ptr %i.bzz, align 8, !tbaa !55
  %i.cab = getelementptr inbounds nuw i8, ptr %i.axg, i64 128
  %i.cac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cad = getelementptr inbounds nuw i8, ptr %i.axd, i64 12 ; 4 uses
  %i.cae = getelementptr inbounds nuw i8, ptr %i.axd, i64 32 ; 3 uses
  %i.caf = getelementptr inbounds nuw i8, ptr %i.axd, i64 136 ; 4 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %i.axd, i64 432 ; 3 uses
  %i.cah = sext i32 %i.b to i64
  %i.cai = sext i32 %.sroa.speculated to i64
  br label %bb.eq

bb.dy:                                            ; preds = %.lr.ph1139, %._crit_edge1137
  %indvars.iv1195 = phi i64 [ %i.byp, %.lr.ph1139 ], [ %indvars.iv.next1196, %._crit_edge1137 ] ; 13 uses
  %i.caj = load i64, ptr %i.byr, align 8, !tbaa !40 ; 2 uses
  %i.cak = mul i64 %i.caj, %indvars.iv1195
  %i.cal = getelementptr inbounds nuw i8, ptr %.pre1231, i64 %i.cak ; 3 uses
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cal, i64 %i.caj ; 2 uses
  %i.can = load i64, ptr %i.byu, align 8, !tbaa !40 ; 2 uses
  %i.cao = mul i64 %i.can, %indvars.iv1195
  %i.cap = getelementptr inbounds nuw i8, ptr %i.byt, i64 %i.cao ; 4 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 %i.can ; 4 uses
  %i.car = load i32, ptr %i.byv, align 4, !tbaa !52
  %i.cas = icmp sgt i32 %i.car, 0
  br i1 %i.cas, label %.lr.ph1136, label %._crit_edge1137

.lr.ph1136:                                       ; preds = %bb.dy
  %i.cat = or disjoint i64 %indvars.iv1195, 1     ; 9 uses
  %i.cau = trunc nsw i64 %indvars.iv1195 to i32   ; 4 uses
  %i.cav = trunc nsw i64 %i.cat to i32            ; 4 uses
  %invariant.op1284 = add i64 %indvars.iv1195, %i.cat
  %invariant.op1286 = add i64 %indvars.iv1195, %i.cat
  %i.caw = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cax = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cay = trunc nsw i64 %i.cat to i32            ; 2 uses
  %i.caz = trunc nsw i64 %i.cat to i32            ; 2 uses
  %i.cba = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cbb = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cbc = trunc nsw i64 %i.cat to i32            ; 2 uses
  %i.cbd = trunc nsw i64 %i.cat to i32            ; 2 uses
  %i.cbe = insertelement <2 x i64> poison, i64 %i.cat, i64 1 ; 2 uses
  br label %bb.dz

._crit_edge1137:                                  ; preds = %bb.ep, %bb.dy
  %indvars.iv.next1196 = add nsw i64 %indvars.iv1195, 2 ; 2 uses
  %i.cbf = icmp slt i64 %indvars.iv.next1196, %i.byq
  br i1 %i.cbf, label %bb.dy, label %.loopexit, !llvm.loop !412

bb.dz:                                            ; preds = %.lr.ph1136, %bb.ep
  %indvars.iv1192 = phi i64 [ 0, %.lr.ph1136 ], [ %indvars.iv.next1193, %bb.ep ] ; 18 uses
  %i.cbg = phi ptr [ %i.byv, %.lr.ph1136 ], [ %i.axk, %bb.ep ] ; 2 uses
  %i.cbh = getelementptr inbounds nuw [4 x i8], ptr %i.cap, i64 %indvars.iv1192 ; 4 uses
  %i.cbi = load i32, ptr %i.cbh, align 4, !tbaa !33 ; 2 uses
  %i.cbj = icmp sgt i32 %i.cbi, 0
  br i1 %i.cbj, label %bb.ea, label %bb.en

bb.ea:                                            ; preds = %bb.dz
  %i.cbk = load ptr, ptr %i.byo, align 8, !tbaa !122
  %i.cbl = zext nneg i32 %i.cbi to i64
  %i.cbm = getelementptr inbounds nuw [4 x i8], ptr %i.cbk, i64 %i.cbl
  %i.cbn = load i32, ptr %i.cbm, align 4, !tbaa !33 ; 8 uses
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cal, i64 %indvars.iv1192
  %i.cbp = load i8, ptr %i.cbo, align 1, !tbaa !32
  %.not770 = icmp eq i8 %i.cbp, 0
  br i1 %.not770, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  store i32 %i.cbn, ptr %i.cbh, align 4, !tbaa !33
  %i.cbq = load i32, ptr %i.byy, align 4, !tbaa !96
  %i.cbr = icmp slt i32 %i.cbq, 2
  %i.cbs = load ptr, ptr %i.byz, align 8, !tbaa !55
  %i.cbt = load i64, ptr %i.bza, align 8
  %i.cbu = sext i32 %i.cbn to i64                 ; 2 uses
  %i.cbv = mul i64 %i.cbt, %i.cbu
  %.sink.idx.i.i1036 = select i1 %i.cbr, i64 0, i64 %i.cbv
  %.sink.i.i1037 = getelementptr inbounds nuw i8, ptr %i.cbs, i64 %.sink.idx.i.i1036 ; 6 uses
  %i.cbw = load i32, ptr %.sink.i.i1037, align 4, !tbaa !33
  %i.cbx = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1038 = tail call i32 @llvm.smin.i32(i32 %i.cbw, i32 %i.cbx)
  store i32 %..i1038, ptr %.sink.i.i1037, align 4, !tbaa !33
  %i.cby = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 8 ; 2 uses
  %i.cbz = load i32, ptr %i.cby, align 4, !tbaa !33
  %i.cca = tail call i32 @llvm.smax.i32(i32 %i.cbz, i32 %i.cbx)
  store i32 %i.cca, ptr %i.cby, align 4, !tbaa !33
  %i.ccb = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 4 ; 2 uses
  %i.ccc = load i32, ptr %i.ccb, align 4, !tbaa !33
  %i.ccd = tail call i32 @llvm.smin.i32(i32 %i.ccc, i32 %i.caw)
  store i32 %i.ccd, ptr %i.ccb, align 4, !tbaa !33
  %i.cce = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 12 ; 2 uses
  %i.ccf = load i32, ptr %i.cce, align 4, !tbaa !33
  %i.ccg = tail call i32 @llvm.smax.i32(i32 %i.ccf, i32 %i.caw)
  store i32 %i.ccg, ptr %i.cce, align 4, !tbaa !33
  %i.cch = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 16 ; 2 uses
  %i.cci = load i32, ptr %i.cch, align 4, !tbaa !33
  %i.ccj = add nsw i32 %i.cci, 1
  store i32 %i.ccj, ptr %i.cch, align 4, !tbaa !33
  %i.cck = load ptr, ptr %i.bzb, align 8, !tbaa !50
  %i.ccl = getelementptr inbounds nuw [16 x i8], ptr %i.cck, i64 %i.cbu ; 3 uses
  %i.ccm = load i64, ptr %i.ccl, align 8, !tbaa !116
  %i.ccn = add i64 %i.ccm, %indvars.iv1192
  store i64 %i.ccn, ptr %i.ccl, align 8, !tbaa !116
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  store i32 0, ptr %i.cbh, align 4, !tbaa !33
  %i.cco = load ptr, ptr %i.bzc, align 8, !tbaa !55 ; 6 uses
  %i.ccp = load i32, ptr %i.cco, align 4, !tbaa !33
  %i.ccq = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1041 = tail call i32 @llvm.smin.i32(i32 %i.ccp, i32 %i.ccq)
  store i32 %..i1041, ptr %i.cco, align 4, !tbaa !33
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.cco, i64 8 ; 2 uses
  %i.ccs = load i32, ptr %i.ccr, align 4, !tbaa !33
  %i.cct = tail call i32 @llvm.smax.i32(i32 %i.ccs, i32 %i.ccq)
  store i32 %i.cct, ptr %i.ccr, align 4, !tbaa !33
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cco, i64 4 ; 2 uses
  %i.ccv = load i32, ptr %i.ccu, align 4, !tbaa !33
  %i.ccw = tail call i32 @llvm.smin.i32(i32 %i.ccv, i32 %i.cax)
  store i32 %i.ccw, ptr %i.ccu, align 4, !tbaa !33
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.cco, i64 12 ; 2 uses
  %i.ccy = load i32, ptr %i.ccx, align 4, !tbaa !33
  %i.ccz = tail call i32 @llvm.smax.i32(i32 %i.ccy, i32 %i.cax)
  store i32 %i.ccz, ptr %i.ccx, align 4, !tbaa !33
  %i.cda = getelementptr inbounds nuw i8, ptr %i.cco, i64 16 ; 2 uses
  %i.cdb = load i32, ptr %i.cda, align 4, !tbaa !33
  %i.cdc = add nsw i32 %i.cdb, 1
  store i32 %i.cdc, ptr %i.cda, align 4, !tbaa !33
  %i.cdd = load ptr, ptr %i.bzd, align 8, !tbaa !50 ; 3 uses
  %i.cde = load i64, ptr %i.cdd, align 8, !tbaa !116
  %i.cdf = add i64 %i.cde, %indvars.iv1192
  store i64 %i.cdf, ptr %i.cdd, align 8, !tbaa !116
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.sink1366 = phi ptr [ %i.cdd, %bb.ec ], [ %i.ccl, %bb.eb ]
  %i.cdg = getelementptr inbounds nuw i8, ptr %.sink1366, i64 8 ; 2 uses
  %i.cdh = load i64, ptr %i.cdg, align 8, !tbaa !117
  %i.cdi = add i64 %i.cdh, %indvars.iv1195
  store i64 %i.cdi, ptr %i.cdg, align 8, !tbaa !117
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.cam, i64 %indvars.iv1192
  %i.cdk = load i8, ptr %i.cdj, align 1, !tbaa !32
  %.not771 = icmp eq i8 %i.cdk, 0
  %i.cdl = getelementptr inbounds nuw [4 x i8], ptr %i.caq, i64 %indvars.iv1192 ; 2 uses
  br i1 %.not771, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  store i32 %i.cbn, ptr %i.cdl, align 4, !tbaa !33
  %i.cdm = load i32, ptr %i.bze, align 4, !tbaa !96
  %i.cdn = icmp slt i32 %i.cdm, 2
  %i.cdo = load ptr, ptr %i.bzf, align 8, !tbaa !55
  %i.cdp = load i64, ptr %i.bzg, align 8
  %i.cdq = sext i32 %i.cbn to i64                 ; 2 uses
  %i.cdr = mul i64 %i.cdp, %i.cdq
  %.sink.idx.i.i1042 = select i1 %i.cdn, i64 0, i64 %i.cdr
  %.sink.i.i1043 = getelementptr inbounds nuw i8, ptr %i.cdo, i64 %.sink.idx.i.i1042 ; 6 uses
  %i.cds = load i32, ptr %.sink.i.i1043, align 4, !tbaa !33
  %i.cdt = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1044 = tail call i32 @llvm.smin.i32(i32 %i.cds, i32 %i.cdt)
  store i32 %..i1044, ptr %.sink.i.i1043, align 4, !tbaa !33
  %i.cdu = getelementptr inbounds nuw i8, ptr %.sink.i.i1043, i64 8 ; 2 uses
  %i.cdv = load i32, ptr %i.cdu, align 4, !tbaa !33
  %i.cdw = tail call i32 @llvm.smax.i32(i32 %i.cdv, i32 %i.cdt)
  store i32 %i.cdw, ptr %i.cdu, align 4, !tbaa !33
  %i.cdx = getelementptr inbounds nuw i8, ptr %.sink.i.i1043, i64 4 ; 2 uses
  %i.cdy = load i32, ptr %i.cdx, align 4, !tbaa !33
  %i.cdz = tail call i32 @llvm.smin.i32(i32 %i.cdy, i32 %i.cay)
  store i32 %i.cdz, ptr %i.cdx, align 4, !tbaa !33
  %i.cea = getelementptr inbounds nuw i8, ptr %.sink.i.i1043, i64 12 ; 2 uses
  %i.ceb = load i32, ptr %i.cea, align 4, !tbaa !33
  %i.cec = tail call i32 @llvm.smax.i32(i32 %i.ceb, i32 %i.cay)
  store i32 %i.cec, ptr %i.cea, align 4, !tbaa !33
  %i.ced = getelementptr inbounds nuw i8, ptr %.sink.i.i1043, i64 16 ; 2 uses
  %i.cee = load i32, ptr %i.ced, align 4, !tbaa !33
  %i.cef = add nsw i32 %i.cee, 1
  store i32 %i.cef, ptr %i.ced, align 4, !tbaa !33
  %i.ceg = load ptr, ptr %i.bzh, align 8, !tbaa !50
  %i.ceh = getelementptr inbounds nuw [16 x i8], ptr %i.ceg, i64 %i.cdq ; 3 uses
  %i.cei = load i64, ptr %i.ceh, align 8, !tbaa !116
  %i.cej = add i64 %i.cei, %indvars.iv1192
  store i64 %i.cej, ptr %i.ceh, align 8, !tbaa !116
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  store i32 0, ptr %i.cdl, align 4, !tbaa !33
  %i.cek = load ptr, ptr %i.bzi, align 8, !tbaa !55 ; 6 uses
  %i.cel = load i32, ptr %i.cek, align 4, !tbaa !33
  %i.cem = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1047 = tail call i32 @llvm.smin.i32(i32 %i.cel, i32 %i.cem)
  store i32 %..i1047, ptr %i.cek, align 4, !tbaa !33
  %i.cen = getelementptr inbounds nuw i8, ptr %i.cek, i64 8 ; 2 uses
  %i.ceo = load i32, ptr %i.cen, align 4, !tbaa !33
  %i.cep = tail call i32 @llvm.smax.i32(i32 %i.ceo, i32 %i.cem)
  store i32 %i.cep, ptr %i.cen, align 4, !tbaa !33
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cek, i64 4 ; 2 uses
  %i.cer = load i32, ptr %i.ceq, align 4, !tbaa !33
  %i.ces = tail call i32 @llvm.smin.i32(i32 %i.cer, i32 %i.caz)
  store i32 %i.ces, ptr %i.ceq, align 4, !tbaa !33
  %i.cet = getelementptr inbounds nuw i8, ptr %i.cek, i64 12 ; 2 uses
  %i.ceu = load i32, ptr %i.cet, align 4, !tbaa !33
  %i.cev = tail call i32 @llvm.smax.i32(i32 %i.ceu, i32 %i.caz)
  store i32 %i.cev, ptr %i.cet, align 4, !tbaa !33
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cek, i64 16 ; 2 uses
  %i.cex = load i32, ptr %i.cew, align 4, !tbaa !33
  %i.cey = add nsw i32 %i.cex, 1
  store i32 %i.cey, ptr %i.cew, align 4, !tbaa !33
  %i.cez = load ptr, ptr %i.bzj, align 8, !tbaa !50 ; 3 uses
  %i.cfa = load i64, ptr %i.cez, align 8, !tbaa !116
  %i.cfb = add i64 %i.cfa, %indvars.iv1192
  store i64 %i.cfb, ptr %i.cez, align 8, !tbaa !116
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.sink1369 = phi ptr [ %i.cez, %bb.ef ], [ %i.ceh, %bb.ee ]
  %i.cfc = getelementptr inbounds nuw i8, ptr %.sink1369, i64 8 ; 2 uses
  %i.cfd = load i64, ptr %i.cfc, align 8, !tbaa !117
  %i.cfe = add i64 %i.cfd, %i.cat
  store i64 %i.cfe, ptr %i.cfc, align 8, !tbaa !117
  %i.cff = or disjoint i64 %indvars.iv1192, 1     ; 13 uses
  %i.cfg = load i32, ptr %i.cbg, align 4, !tbaa !52
  %i.cfh = sext i32 %i.cfg to i64
  %i.cfi = icmp slt i64 %i.cff, %i.cfh
  br i1 %i.cfi, label %bb.eh, label %bb.ep

bb.eh:                                            ; preds = %bb.eg
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.cal, i64 %i.cff
  %i.cfk = load i8, ptr %i.cfj, align 1, !tbaa !32
  %.not772 = icmp eq i8 %i.cfk, 0
  %i.cfl = getelementptr inbounds nuw [4 x i8], ptr %i.cap, i64 %i.cff ; 2 uses
  br i1 %.not772, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i32 %i.cbn, ptr %i.cfl, align 4, !tbaa !33
  %i.cfm = load i32, ptr %i.bzk, align 4, !tbaa !96
  %i.cfn = icmp slt i32 %i.cfm, 2
  %i.cfo = load ptr, ptr %i.bzl, align 8, !tbaa !55
  %i.cfp = load i64, ptr %i.bzm, align 8
  %i.cfq = sext i32 %i.cbn to i64                 ; 2 uses
  %i.cfr = mul i64 %i.cfp, %i.cfq
  %.sink.idx.i.i1048 = select i1 %i.cfn, i64 0, i64 %i.cfr
  %.sink.i.i1049 = getelementptr inbounds nuw i8, ptr %i.cfo, i64 %.sink.idx.i.i1048 ; 6 uses
  %i.cfs = load i32, ptr %.sink.i.i1049, align 4, !tbaa !33
  %i.cft = trunc nuw nsw i64 %i.cff to i32        ; 2 uses
  %..i1050 = tail call i32 @llvm.smin.i32(i32 %i.cfs, i32 %i.cft)
  store i32 %..i1050, ptr %.sink.i.i1049, align 4, !tbaa !33
  %i.cfu = getelementptr inbounds nuw i8, ptr %.sink.i.i1049, i64 8 ; 2 uses
  %i.cfv = load i32, ptr %i.cfu, align 4, !tbaa !33
  %i.cfw = tail call i32 @llvm.smax.i32(i32 %i.cfv, i32 %i.cft)
  store i32 %i.cfw, ptr %i.cfu, align 4, !tbaa !33
  %i.cfx = getelementptr inbounds nuw i8, ptr %.sink.i.i1049, i64 4 ; 2 uses
  %i.cfy = load i32, ptr %i.cfx, align 4, !tbaa !33
  %i.cfz = tail call i32 @llvm.smin.i32(i32 %i.cfy, i32 %i.cba)
  store i32 %i.cfz, ptr %i.cfx, align 4, !tbaa !33
  %i.cga = getelementptr inbounds nuw i8, ptr %.sink.i.i1049, i64 12 ; 2 uses
  %i.cgb = load i32, ptr %i.cga, align 4, !tbaa !33
  %i.cgc = tail call i32 @llvm.smax.i32(i32 %i.cgb, i32 %i.cba)
  store i32 %i.cgc, ptr %i.cga, align 4, !tbaa !33
  %i.cgd = getelementptr inbounds nuw i8, ptr %.sink.i.i1049, i64 16 ; 2 uses
  %i.cge = load i32, ptr %i.cgd, align 4, !tbaa !33
  %i.cgf = add nsw i32 %i.cge, 1
  store i32 %i.cgf, ptr %i.cgd, align 4, !tbaa !33
  %i.cgg = load ptr, ptr %i.bzn, align 8, !tbaa !50
  %i.cgh = getelementptr inbounds nuw [16 x i8], ptr %i.cgg, i64 %i.cfq ; 3 uses
  %i.cgi = load i64, ptr %i.cgh, align 8, !tbaa !116
  %i.cgj = add i64 %i.cgi, %i.cff
  store i64 %i.cgj, ptr %i.cgh, align 8, !tbaa !116
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  store i32 0, ptr %i.cfl, align 4, !tbaa !33
  %i.cgk = load ptr, ptr %i.bzo, align 8, !tbaa !55 ; 6 uses
  %i.cgl = load i32, ptr %i.cgk, align 4, !tbaa !33
  %i.cgm = trunc nuw nsw i64 %i.cff to i32        ; 2 uses
  %..i1053 = tail call i32 @llvm.smin.i32(i32 %i.cgl, i32 %i.cgm)
  store i32 %..i1053, ptr %i.cgk, align 4, !tbaa !33
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.cgk, i64 8 ; 2 uses
  %i.cgo = load i32, ptr %i.cgn, align 4, !tbaa !33
  %i.cgp = tail call i32 @llvm.smax.i32(i32 %i.cgo, i32 %i.cgm)
  store i32 %i.cgp, ptr %i.cgn, align 4, !tbaa !33
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgk, i64 4 ; 2 uses
  %i.cgr = load i32, ptr %i.cgq, align 4, !tbaa !33
  %i.cgs = tail call i32 @llvm.smin.i32(i32 %i.cgr, i32 %i.cbb)
  store i32 %i.cgs, ptr %i.cgq, align 4, !tbaa !33
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgk, i64 12 ; 2 uses
  %i.cgu = load i32, ptr %i.cgt, align 4, !tbaa !33
  %i.cgv = tail call i32 @llvm.smax.i32(i32 %i.cgu, i32 %i.cbb)
  store i32 %i.cgv, ptr %i.cgt, align 4, !tbaa !33
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.cgk, i64 16 ; 2 uses
  %i.cgx = load i32, ptr %i.cgw, align 4, !tbaa !33
  %i.cgy = add nsw i32 %i.cgx, 1
  store i32 %i.cgy, ptr %i.cgw, align 4, !tbaa !33
  %i.cgz = load ptr, ptr %i.bzp, align 8, !tbaa !50 ; 3 uses
  %i.cha = load i64, ptr %i.cgz, align 8, !tbaa !116
  %i.chb = add i64 %i.cha, %i.cff
  store i64 %i.chb, ptr %i.cgz, align 8, !tbaa !116
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.sink1372 = phi ptr [ %i.cgz, %bb.ej ], [ %i.cgh, %bb.ei ]
  %i.chc = getelementptr inbounds nuw i8, ptr %.sink1372, i64 8 ; 2 uses
  %i.chd = load i64, ptr %i.chc, align 8, !tbaa !117
  %i.che = add i64 %i.chd, %indvars.iv1195
  store i64 %i.che, ptr %i.chc, align 8, !tbaa !117
  %i.chf = getelementptr inbounds nuw i8, ptr %i.cam, i64 %i.cff
  %i.chg = load i8, ptr %i.chf, align 1, !tbaa !32
  %.not773 = icmp eq i8 %i.chg, 0
  %i.chh = getelementptr inbounds nuw [4 x i8], ptr %i.caq, i64 %i.cff ; 2 uses
  br i1 %.not773, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store i32 %i.cbn, ptr %i.chh, align 4, !tbaa !33
  %i.chi = load i32, ptr %i.bzq, align 4, !tbaa !96
  %i.chj = icmp slt i32 %i.chi, 2
  %i.chk = load ptr, ptr %i.bzr, align 8, !tbaa !55
  %i.chl = load i64, ptr %i.bzs, align 8
  %i.chm = sext i32 %i.cbn to i64                 ; 2 uses
  %i.chn = mul i64 %i.chl, %i.chm
  %.sink.idx.i.i1054 = select i1 %i.chj, i64 0, i64 %i.chn
  %.sink.i.i1055 = getelementptr inbounds nuw i8, ptr %i.chk, i64 %.sink.idx.i.i1054 ; 6 uses
  %i.cho = load i32, ptr %.sink.i.i1055, align 4, !tbaa !33
  %i.chp = trunc nuw nsw i64 %i.cff to i32        ; 2 uses
  %..i1056 = tail call i32 @llvm.smin.i32(i32 %i.cho, i32 %i.chp)
  store i32 %..i1056, ptr %.sink.i.i1055, align 4, !tbaa !33
  %i.chq = getelementptr inbounds nuw i8, ptr %.sink.i.i1055, i64 8 ; 2 uses
  %i.chr = load i32, ptr %i.chq, align 4, !tbaa !33
  %i.chs = tail call i32 @llvm.smax.i32(i32 %i.chr, i32 %i.chp)
  store i32 %i.chs, ptr %i.chq, align 4, !tbaa !33
  %i.cht = getelementptr inbounds nuw i8, ptr %.sink.i.i1055, i64 4 ; 2 uses
  %i.chu = load i32, ptr %i.cht, align 4, !tbaa !33
  %i.chv = tail call i32 @llvm.smin.i32(i32 %i.chu, i32 %i.cbc)
  store i32 %i.chv, ptr %i.cht, align 4, !tbaa !33
  %i.chw = getelementptr inbounds nuw i8, ptr %.sink.i.i1055, i64 12 ; 2 uses
  %i.chx = load i32, ptr %i.chw, align 4, !tbaa !33
  %i.chy = tail call i32 @llvm.smax.i32(i32 %i.chx, i32 %i.cbc)
  store i32 %i.chy, ptr %i.chw, align 4, !tbaa !33
  %i.chz = getelementptr inbounds nuw i8, ptr %.sink.i.i1055, i64 16 ; 2 uses
  %i.cia = load i32, ptr %i.chz, align 4, !tbaa !33
  %i.cib = add nsw i32 %i.cia, 1
  store i32 %i.cib, ptr %i.chz, align 4, !tbaa !33
  %i.cic = load ptr, ptr %i.bzt, align 8, !tbaa !50
  %i.cid = getelementptr inbounds nuw [16 x i8], ptr %i.cic, i64 %i.chm ; 2 uses
  %i.cie = load <2 x i64>, ptr %i.cid, align 8, !tbaa !40
  %i.cif = insertelement <2 x i64> %i.cbe, i64 %i.cff, i64 0
  %i.cig = add <2 x i64> %i.cie, %i.cif
  store <2 x i64> %i.cig, ptr %i.cid, align 8, !tbaa !40
  br label %bb.ep

bb.em:                                            ; preds = %bb.ek
  store i32 0, ptr %i.chh, align 4, !tbaa !33
  %i.cih = load ptr, ptr %i.bzu, align 8, !tbaa !55 ; 6 uses
  %i.cii = load i32, ptr %i.cih, align 4, !tbaa !33
  %i.cij = trunc nuw nsw i64 %i.cff to i32        ; 2 uses
  %..i1059 = tail call i32 @llvm.smin.i32(i32 %i.cii, i32 %i.cij)
  store i32 %..i1059, ptr %i.cih, align 4, !tbaa !33
  %i.cik = getelementptr inbounds nuw i8, ptr %i.cih, i64 8 ; 2 uses
  %i.cil = load i32, ptr %i.cik, align 4, !tbaa !33
  %i.cim = tail call i32 @llvm.smax.i32(i32 %i.cil, i32 %i.cij)
  store i32 %i.cim, ptr %i.cik, align 4, !tbaa !33
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cih, i64 4 ; 2 uses
  %i.cio = load i32, ptr %i.cin, align 4, !tbaa !33
  %i.cip = tail call i32 @llvm.smin.i32(i32 %i.cio, i32 %i.cbd)
  store i32 %i.cip, ptr %i.cin, align 4, !tbaa !33
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cih, i64 12 ; 2 uses
  %i.cir = load i32, ptr %i.ciq, align 4, !tbaa !33
  %i.cis = tail call i32 @llvm.smax.i32(i32 %i.cir, i32 %i.cbd)
  store i32 %i.cis, ptr %i.ciq, align 4, !tbaa !33
  %i.cit = getelementptr inbounds nuw i8, ptr %i.cih, i64 16 ; 2 uses
  %i.ciu = load i32, ptr %i.cit, align 4, !tbaa !33
  %i.civ = add nsw i32 %i.ciu, 1
  store i32 %i.civ, ptr %i.cit, align 4, !tbaa !33
  %i.ciw = load ptr, ptr %i.bzv, align 8, !tbaa !50 ; 2 uses
  %i.cix = load <2 x i64>, ptr %i.ciw, align 8, !tbaa !40
  %i.ciy = insertelement <2 x i64> %i.cbe, i64 %i.cff, i64 0
  %i.ciz = add <2 x i64> %i.cix, %i.ciy
  store <2 x i64> %i.ciz, ptr %i.ciw, align 8, !tbaa !40
  br label %bb.ep

bb.en:                                            ; preds = %bb.dz
  store i32 0, ptr %i.cbh, align 4, !tbaa !33
  %i.cja = getelementptr inbounds nuw [4 x i8], ptr %i.caq, i64 %indvars.iv1192
  store i32 0, ptr %i.cja, align 4, !tbaa !33
  %i.cjb = load ptr, ptr %i.byw, align 8, !tbaa !55 ; 8 uses
  %i.cjc = load i32, ptr %i.cjb, align 4, !tbaa !33
  %i.cjd = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1062 = tail call i32 @llvm.smin.i32(i32 %i.cjc, i32 %i.cjd)
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cjb, i64 8 ; 4 uses
  %i.cjf = load i32, ptr %i.cje, align 4, !tbaa !33
  %i.cjg = tail call i32 @llvm.smax.i32(i32 %i.cjf, i32 %i.cjd)
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cjb, i64 4 ; 4 uses
  %i.cji = load i32, ptr %i.cjh, align 4, !tbaa !33
  %i.cjj = tail call i32 @llvm.smin.i32(i32 %i.cji, i32 %i.cau)
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cjb, i64 12 ; 4 uses
  %i.cjl = load i32, ptr %i.cjk, align 4, !tbaa !33
  %i.cjm = tail call i32 @llvm.smax.i32(i32 %i.cjl, i32 %i.cau)
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cjb, i64 16 ; 4 uses
  %i.cjo = load i32, ptr %i.cjn, align 4, !tbaa !33
  %i.cjp = load ptr, ptr %i.byx, align 8, !tbaa !50 ; 4 uses
  %i.cjq = load i64, ptr %i.cjp, align 8, !tbaa !116
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cjp, i64 8 ; 3 uses
  %i.cjs = load i64, ptr %i.cjr, align 8, !tbaa !117
  store i32 %..i1062, ptr %i.cjb, align 4, !tbaa !33
  store i32 %i.cjg, ptr %i.cje, align 4, !tbaa !33
  %9 = tail call i32 @llvm.smin.i32(i32 %i.cjj, i32 %i.cav)
  store i32 %9, ptr %i.cjh, align 4, !tbaa !33
  %i.cjt = tail call i32 @llvm.smax.i32(i32 %i.cjm, i32 %i.cav)
  store i32 %i.cjt, ptr %i.cjk, align 4, !tbaa !33
  %i.cju = add nsw i32 %i.cjo, 2
  store i32 %i.cju, ptr %i.cjn, align 4, !tbaa !33
  %reass.add = shl nuw i64 %indvars.iv1192, 1
  %i.cjv = add i64 %i.cjq, %reass.add             ; 2 uses
  store i64 %i.cjv, ptr %i.cjp, align 8, !tbaa !116
  %.reass1285 = add i64 %i.cjs, %invariant.op1284 ; 2 uses
  store i64 %.reass1285, ptr %i.cjr, align 8, !tbaa !117
  %i.cjw = or disjoint i64 %indvars.iv1192, 1     ; 5 uses
  %i.cjx = load i32, ptr %i.cbg, align 4, !tbaa !52
  %i.cjy = sext i32 %i.cjx to i64
  %i.cjz = icmp slt i64 %i.cjw, %i.cjy
  br i1 %i.cjz, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.cka = getelementptr inbounds nuw [4 x i8], ptr %i.cap, i64 %i.cjw
  store i32 0, ptr %i.cka, align 4, !tbaa !33
  %i.ckb = getelementptr inbounds nuw [4 x i8], ptr %i.caq, i64 %i.cjw
  store i32 0, ptr %i.ckb, align 4, !tbaa !33
  %i.ckc = load i32, ptr %i.cjb, align 4, !tbaa !33
  %i.ckd = trunc nuw nsw i64 %i.cjw to i32        ; 2 uses
  %..i1068 = tail call i32 @llvm.smin.i32(i32 %i.ckc, i32 %i.ckd)
  %i.cke = load i32, ptr %i.cje, align 4, !tbaa !33
  %i.ckf = tail call i32 @llvm.smax.i32(i32 %i.cke, i32 %i.ckd)
  %i.ckg = load i32, ptr %i.cjh, align 4, !tbaa !33
  %i.ckh = tail call i32 @llvm.smin.i32(i32 %i.ckg, i32 %i.cau)
  %i.cki = load i32, ptr %i.cjk, align 4, !tbaa !33
  %i.ckj = tail call i32 @llvm.smax.i32(i32 %i.cki, i32 %i.cau)
  %i.ckk = load i32, ptr %i.cjn, align 4, !tbaa !33
  store i32 %..i1068, ptr %i.cjb, align 4, !tbaa !33
  store i32 %i.ckf, ptr %i.cje, align 4, !tbaa !33
  %10 = tail call i32 @llvm.smin.i32(i32 %i.ckh, i32 %i.cav)
  store i32 %10, ptr %i.cjh, align 4, !tbaa !33
  %i.ckl = tail call i32 @llvm.smax.i32(i32 %i.ckj, i32 %i.cav)
  store i32 %i.ckl, ptr %i.cjk, align 4, !tbaa !33
  %i.ckm = add nsw i32 %i.ckk, 2
  store i32 %i.ckm, ptr %i.cjn, align 4, !tbaa !33
  %reass.add1382 = shl nuw i64 %i.cjw, 1
  %i.ckn = add i64 %i.cjv, %reass.add1382
  store i64 %i.ckn, ptr %i.cjp, align 8, !tbaa !116
  %.reass1287 = add i64 %.reass1285, %invariant.op1286
  store i64 %.reass1287, ptr %i.cjr, align 8, !tbaa !117
  br label %bb.ep

bb.ep:                                            ; preds = %bb.en, %bb.eo, %bb.eg, %bb.em, %bb.el
  %indvars.iv.next1193 = add nuw nsw i64 %indvars.iv1192, 2 ; 2 uses
  %i.cko = load i32, ptr %i.axk, align 4, !tbaa !52
  %i.ckp = sext i32 %i.cko to i64
  %i.ckq = icmp slt i64 %indvars.iv.next1193, %i.ckp
  br i1 %i.ckq, label %bb.dz, label %._crit_edge1137, !llvm.loop !413

bb.eq:                                            ; preds = %.lr.ph1146, %._crit_edge1144
  %i.ckr = phi i32 [ %i.axl, %.lr.ph1146 ], [ %i.cln, %._crit_edge1144 ] ; 2 uses
  %indvars.iv1201 = phi i64 [ %i.cah, %.lr.ph1146 ], [ %indvars.iv.next1202, %._crit_edge1144 ] ; 12 uses
  %i.cks = load i64, ptr %i.bzy, align 8, !tbaa !40 ; 2 uses
  %i.ckt = mul i64 %i.cks, %indvars.iv1201
  %i.cku = getelementptr inbounds nuw i8, ptr %i.bzx, i64 %i.ckt ; 3 uses
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cku, i64 %i.cks ; 2 uses
  %i.ckw = load i64, ptr %i.cab, align 8, !tbaa !40 ; 2 uses
  %i.ckx = mul i64 %i.ckw, %indvars.iv1201
  %i.cky = getelementptr inbounds nuw i8, ptr %i.caa, i64 %i.ckx ; 4 uses
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.cky, i64 %i.ckw ; 4 uses
  %i.cla = icmp sgt i32 %i.ckr, 0
  br i1 %i.cla, label %.lr.ph1143, label %._crit_edge1144

.lr.ph1143:                                       ; preds = %bb.eq
  %i.clb = or disjoint i64 %indvars.iv1201, 1     ; 8 uses
  %i.clc = trunc nsw i64 %indvars.iv1201 to i32   ; 2 uses
  %i.cld = trunc nsw i64 %i.clb to i32            ; 2 uses
  %invariant.op12881384 = add i64 %indvars.iv1201, %i.clb
  %invariant.op1292 = shl i64 %invariant.op12881384, 1
  %i.cle = trunc nsw i64 %indvars.iv1201 to i32   ; 2 uses
  %i.clf = trunc nsw i64 %indvars.iv1201 to i32   ; 2 uses
  %i.clg = trunc nsw i64 %indvars.iv1201 to i32   ; 2 uses
  %i.clh = trunc nsw i64 %indvars.iv1201 to i32   ; 2 uses
  %i.cli = trunc nsw i64 %i.clb to i32            ; 2 uses
  %i.clj = trunc nsw i64 %i.clb to i32            ; 2 uses
  %i.clk = trunc nsw i64 %i.clb to i32            ; 2 uses
  %i.cll = trunc nsw i64 %i.clb to i32            ; 2 uses
  %i.clm = insertelement <2 x i64> poison, i64 %i.clb, i64 1 ; 2 uses
  br label %bb.er

._crit_edge1144:                                  ; preds = %bb.ff, %bb.eq
  %i.cln = phi i32 [ %i.ckr, %bb.eq ], [ %i.ctz, %bb.ff ]
  %indvars.iv.next1202 = add nsw i64 %indvars.iv1201, 2 ; 2 uses
  %i.clo = icmp slt i64 %indvars.iv.next1202, %i.cai
  br i1 %i.clo, label %bb.eq, label %.loopexit, !llvm.loop !414

bb.er:                                            ; preds = %.lr.ph1143, %bb.ff
  %indvars.iv1198 = phi i64 [ 0, %.lr.ph1143 ], [ %indvars.iv.next1199, %bb.ff ] ; 19 uses
  %i.clp = getelementptr inbounds nuw [4 x i8], ptr %i.cky, i64 %indvars.iv1198 ; 4 uses
  %i.clq = load i32, ptr %i.clp, align 4, !tbaa !33 ; 2 uses
  %i.clr = icmp sgt i32 %i.clq, 0
  br i1 %i.clr, label %bb.es, label %bb.fe

bb.es:                                            ; preds = %bb.er
  %i.cls = load ptr, ptr %i.cac, align 8, !tbaa !122
  %i.clt = zext nneg i32 %i.clq to i64
  %i.clu = getelementptr inbounds nuw [4 x i8], ptr %i.cls, i64 %i.clt
  %i.clv = load i32, ptr %i.clu, align 4, !tbaa !33 ; 8 uses
  %i.clw = getelementptr inbounds nuw i8, ptr %i.cku, i64 %indvars.iv1198
  %i.clx = load i8, ptr %i.clw, align 1, !tbaa !32
  %.not766 = icmp eq i8 %i.clx, 0
  br i1 %.not766, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  store i32 %i.clv, ptr %i.clp, align 4, !tbaa !33
  %i.cly = load i32, ptr %i.cad, align 4, !tbaa !96
  %i.clz = icmp slt i32 %i.cly, 2
  %i.cma = load ptr, ptr %i.cae, align 8, !tbaa !55 ; 2 uses
  %i.cmb = load i64, ptr %i.caf, align 8
  %i.cmc = sext i32 %i.clv to i64                 ; 2 uses
  %i.cmd = mul i64 %i.cmb, %i.cmc
  %.sink.idx.i.i1072 = select i1 %i.clz, i64 0, i64 %i.cmd
  %.sink.i.i1073 = getelementptr inbounds nuw i8, ptr %i.cma, i64 %.sink.idx.i.i1072 ; 6 uses
  %i.cme = load i32, ptr %.sink.i.i1073, align 4, !tbaa !33
  %i.cmf = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1074 = tail call i32 @llvm.smin.i32(i32 %i.cme, i32 %i.cmf)
  store i32 %..i1074, ptr %.sink.i.i1073, align 4, !tbaa !33
  %i.cmg = getelementptr inbounds nuw i8, ptr %.sink.i.i1073, i64 8 ; 2 uses
  %i.cmh = load i32, ptr %i.cmg, align 4, !tbaa !33
  %i.cmi = tail call i32 @llvm.smax.i32(i32 %i.cmh, i32 %i.cmf)
  store i32 %i.cmi, ptr %i.cmg, align 4, !tbaa !33
  %i.cmj = getelementptr inbounds nuw i8, ptr %.sink.i.i1073, i64 4 ; 2 uses
  %i.cmk = load i32, ptr %i.cmj, align 4, !tbaa !33
  %i.cml = tail call i32 @llvm.smin.i32(i32 %i.cmk, i32 %i.cle)
  store i32 %i.cml, ptr %i.cmj, align 4, !tbaa !33
  %i.cmm = getelementptr inbounds nuw i8, ptr %.sink.i.i1073, i64 12 ; 2 uses
  %i.cmn = load i32, ptr %i.cmm, align 4, !tbaa !33
  %i.cmo = tail call i32 @llvm.smax.i32(i32 %i.cmn, i32 %i.cle)
  store i32 %i.cmo, ptr %i.cmm, align 4, !tbaa !33
  %i.cmp = getelementptr inbounds nuw i8, ptr %.sink.i.i1073, i64 16 ; 2 uses
  %i.cmq = load i32, ptr %i.cmp, align 4, !tbaa !33
  %i.cmr = add nsw i32 %i.cmq, 1
  store i32 %i.cmr, ptr %i.cmp, align 4, !tbaa !33
  %i.cms = load ptr, ptr %i.cag, align 8, !tbaa !50 ; 2 uses
  %i.cmt = getelementptr inbounds nuw [16 x i8], ptr %i.cms, i64 %i.cmc ; 3 uses
  %i.cmu = load i64, ptr %i.cmt, align 8, !tbaa !116
  %i.cmv = add i64 %i.cmu, %indvars.iv1198
  store i64 %i.cmv, ptr %i.cmt, align 8, !tbaa !116
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  store i32 0, ptr %i.clp, align 4, !tbaa !33
  %i.cmw = load ptr, ptr %i.cae, align 8, !tbaa !55 ; 7 uses
  %i.cmx = load i32, ptr %i.cmw, align 4, !tbaa !33
  %i.cmy = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1077 = tail call i32 @llvm.smin.i32(i32 %i.cmx, i32 %i.cmy)
  store i32 %..i1077, ptr %i.cmw, align 4, !tbaa !33
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmw, i64 8 ; 2 uses
  %i.cna = load i32, ptr %i.cmz, align 4, !tbaa !33
  %i.cnb = tail call i32 @llvm.smax.i32(i32 %i.cna, i32 %i.cmy)
  store i32 %i.cnb, ptr %i.cmz, align 4, !tbaa !33
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cmw, i64 4 ; 2 uses
  %i.cnd = load i32, ptr %i.cnc, align 4, !tbaa !33
  %i.cne = tail call i32 @llvm.smin.i32(i32 %i.cnd, i32 %i.clf)
  store i32 %i.cne, ptr %i.cnc, align 4, !tbaa !33
  %i.cnf = getelementptr inbounds nuw i8, ptr %i.cmw, i64 12 ; 2 uses
  %i.cng = load i32, ptr %i.cnf, align 4, !tbaa !33
  %i.cnh = tail call i32 @llvm.smax.i32(i32 %i.cng, i32 %i.clf)
  store i32 %i.cnh, ptr %i.cnf, align 4, !tbaa !33
  %i.cni = getelementptr inbounds nuw i8, ptr %i.cmw, i64 16 ; 2 uses
  %i.cnj = load i32, ptr %i.cni, align 4, !tbaa !33
  %i.cnk = add nsw i32 %i.cnj, 1
  store i32 %i.cnk, ptr %i.cni, align 4, !tbaa !33
  %i.cnl = load ptr, ptr %i.cag, align 8, !tbaa !50 ; 4 uses
  %i.cnm = load i64, ptr %i.cnl, align 8, !tbaa !116
  %i.cnn = add i64 %i.cnm, %indvars.iv1198
  store i64 %i.cnn, ptr %i.cnl, align 8, !tbaa !116
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.sink1375 = phi ptr [ %i.cnl, %bb.eu ], [ %i.cmt, %bb.et ]
  %i.cno = phi ptr [ %i.cnl, %bb.eu ], [ %i.cms, %bb.et ] ; 11 uses
  %i.cnp = phi ptr [ %i.cmw, %bb.eu ], [ %i.cma, %bb.et ] ; 21 uses
  %i.cnq = getelementptr inbounds nuw i8, ptr %.sink1375, i64 8 ; 2 uses
  %i.cnr = load i64, ptr %i.cnq, align 8, !tbaa !117
  %i.cns = add i64 %i.cnr, %indvars.iv1201
  store i64 %i.cns, ptr %i.cnq, align 8, !tbaa !117
  %i.cnt = or disjoint i64 %indvars.iv1198, 1     ; 12 uses
  %i.cnu = getelementptr inbounds nuw i8, ptr %i.cku, i64 %i.cnt
  %i.cnv = load i8, ptr %i.cnu, align 1, !tbaa !32
  %.not767 = icmp eq i8 %i.cnv, 0
  %i.cnw = getelementptr inbounds nuw [4 x i8], ptr %i.cky, i64 %i.cnt ; 2 uses
  br i1 %.not767, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  store i32 %i.clv, ptr %i.cnw, align 4, !tbaa !33
  %i.cnx = load i32, ptr %i.cad, align 4, !tbaa !96
  %i.cny = icmp slt i32 %i.cnx, 2
  %i.cnz = load i64, ptr %i.caf, align 8
  %i.coa = sext i32 %i.clv to i64                 ; 2 uses
  %i.cob = mul i64 %i.cnz, %i.coa
  %.sink.idx.i.i1078 = select i1 %i.cny, i64 0, i64 %i.cob
  %.sink.i.i1079 = getelementptr inbounds nuw i8, ptr %i.cnp, i64 %.sink.idx.i.i1078 ; 6 uses
  %i.coc = load i32, ptr %.sink.i.i1079, align 4, !tbaa !33
  %i.cod = trunc nuw nsw i64 %i.cnt to i32        ; 2 uses
  %..i1080 = tail call i32 @llvm.smin.i32(i32 %i.coc, i32 %i.cod)
  store i32 %..i1080, ptr %.sink.i.i1079, align 4, !tbaa !33
  %i.coe = getelementptr inbounds nuw i8, ptr %.sink.i.i1079, i64 8 ; 2 uses
  %i.cof = load i32, ptr %i.coe, align 4, !tbaa !33
  %i.cog = tail call i32 @llvm.smax.i32(i32 %i.cof, i32 %i.cod)
  store i32 %i.cog, ptr %i.coe, align 4, !tbaa !33
  %i.coh = getelementptr inbounds nuw i8, ptr %.sink.i.i1079, i64 4 ; 2 uses
  %i.coi = load i32, ptr %i.coh, align 4, !tbaa !33
  %i.coj = tail call i32 @llvm.smin.i32(i32 %i.coi, i32 %i.clg)
  store i32 %i.coj, ptr %i.coh, align 4, !tbaa !33
  %i.cok = getelementptr inbounds nuw i8, ptr %.sink.i.i1079, i64 12 ; 2 uses
  %i.col = load i32, ptr %i.cok, align 4, !tbaa !33
  %i.com = tail call i32 @llvm.smax.i32(i32 %i.col, i32 %i.clg)
  store i32 %i.com, ptr %i.cok, align 4, !tbaa !33
  %i.con = getelementptr inbounds nuw i8, ptr %.sink.i.i1079, i64 16 ; 2 uses
  %i.coo = load i32, ptr %i.con, align 4, !tbaa !33
  %i.cop = add nsw i32 %i.coo, 1
  store i32 %i.cop, ptr %i.con, align 4, !tbaa !33
  %i.coq = getelementptr inbounds nuw [16 x i8], ptr %i.cno, i64 %i.coa ; 3 uses
  %i.cor = load i64, ptr %i.coq, align 8, !tbaa !116
  %i.cos = add i64 %i.cor, %i.cnt
  store i64 %i.cos, ptr %i.coq, align 8, !tbaa !116
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  store i32 0, ptr %i.cnw, align 4, !tbaa !33
  %i.cot = load i32, ptr %i.cnp, align 4, !tbaa !33
  %i.cou = trunc nuw nsw i64 %i.cnt to i32        ; 2 uses
  %..i1083 = tail call i32 @llvm.smin.i32(i32 %i.cot, i32 %i.cou)
  store i32 %..i1083, ptr %i.cnp, align 4, !tbaa !33
  %i.cov = getelementptr inbounds nuw i8, ptr %i.cnp, i64 8 ; 2 uses
  %i.cow = load i32, ptr %i.cov, align 4, !tbaa !33
  %i.cox = tail call i32 @llvm.smax.i32(i32 %i.cow, i32 %i.cou)
  store i32 %i.cox, ptr %i.cov, align 4, !tbaa !33
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cnp, i64 4 ; 2 uses
  %i.coz = load i32, ptr %i.coy, align 4, !tbaa !33
  %i.cpa = tail call i32 @llvm.smin.i32(i32 %i.coz, i32 %i.clh)
  store i32 %i.cpa, ptr %i.coy, align 4, !tbaa !33
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.cnp, i64 12 ; 2 uses
  %i.cpc = load i32, ptr %i.cpb, align 4, !tbaa !33
  %i.cpd = tail call i32 @llvm.smax.i32(i32 %i.cpc, i32 %i.clh)
  store i32 %i.cpd, ptr %i.cpb, align 4, !tbaa !33
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.cnp, i64 16 ; 2 uses
  %i.cpf = load i32, ptr %i.cpe, align 4, !tbaa !33
  %i.cpg = add nsw i32 %i.cpf, 1
  store i32 %i.cpg, ptr %i.cpe, align 4, !tbaa !33
  %i.cph = load i64, ptr %i.cno, align 8, !tbaa !116
  %i.cpi = add i64 %i.cph, %i.cnt
  store i64 %i.cpi, ptr %i.cno, align 8, !tbaa !116
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.sink1378 = phi ptr [ %i.cno, %bb.ex ], [ %i.coq, %bb.ew ]
  %i.cpj = getelementptr inbounds nuw i8, ptr %.sink1378, i64 8 ; 2 uses
  %i.cpk = load i64, ptr %i.cpj, align 8, !tbaa !117
  %i.cpl = add i64 %i.cpk, %indvars.iv1201
  store i64 %i.cpl, ptr %i.cpj, align 8, !tbaa !117
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.ckv, i64 %indvars.iv1198
  %i.cpn = load i8, ptr %i.cpm, align 1, !tbaa !32
  %.not768 = icmp eq i8 %i.cpn, 0
  %i.cpo = getelementptr inbounds nuw [4 x i8], ptr %i.ckz, i64 %indvars.iv1198 ; 2 uses
  br i1 %.not768, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  store i32 %i.clv, ptr %i.cpo, align 4, !tbaa !33
  %i.cpp = load i32, ptr %i.cad, align 4, !tbaa !96
  %i.cpq = icmp slt i32 %i.cpp, 2
  %i.cpr = load i64, ptr %i.caf, align 8
  %i.cps = sext i32 %i.clv to i64                 ; 2 uses
  %i.cpt = mul i64 %i.cpr, %i.cps
  %.sink.idx.i.i1084 = select i1 %i.cpq, i64 0, i64 %i.cpt
  %.sink.i.i1085 = getelementptr inbounds nuw i8, ptr %i.cnp, i64 %.sink.idx.i.i1084 ; 6 uses
  %i.cpu = load i32, ptr %.sink.i.i1085, align 4, !tbaa !33
  %i.cpv = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1086 = tail call i32 @llvm.smin.i32(i32 %i.cpu, i32 %i.cpv)
  store i32 %..i1086, ptr %.sink.i.i1085, align 4, !tbaa !33
  %i.cpw = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 8 ; 2 uses
  %i.cpx = load i32, ptr %i.cpw, align 4, !tbaa !33
  %i.cpy = tail call i32 @llvm.smax.i32(i32 %i.cpx, i32 %i.cpv)
  store i32 %i.cpy, ptr %i.cpw, align 4, !tbaa !33
  %i.cpz = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 4 ; 2 uses
  %i.cqa = load i32, ptr %i.cpz, align 4, !tbaa !33
  %i.cqb = tail call i32 @llvm.smin.i32(i32 %i.cqa, i32 %i.cli)
  store i32 %i.cqb, ptr %i.cpz, align 4, !tbaa !33
  %i.cqc = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 12 ; 2 uses
  %i.cqd = load i32, ptr %i.cqc, align 4, !tbaa !33
  %i.cqe = tail call i32 @llvm.smax.i32(i32 %i.cqd, i32 %i.cli)
  store i32 %i.cqe, ptr %i.cqc, align 4, !tbaa !33
  %i.cqf = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 16 ; 2 uses
  %i.cqg = load i32, ptr %i.cqf, align 4, !tbaa !33
  %i.cqh = add nsw i32 %i.cqg, 1
  store i32 %i.cqh, ptr %i.cqf, align 4, !tbaa !33
  %i.cqi = getelementptr inbounds nuw [16 x i8], ptr %i.cno, i64 %i.cps ; 3 uses
  %i.cqj = load i64, ptr %i.cqi, align 8, !tbaa !116
  %i.cqk = add i64 %i.cqj, %indvars.iv1198
  store i64 %i.cqk, ptr %i.cqi, align 8, !tbaa !116
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  store i32 0, ptr %i.cpo, align 4, !tbaa !33
  %i.cql = load i32, ptr %i.cnp, align 4, !tbaa !33
  %i.cqm = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1089 = tail call i32 @llvm.smin.i32(i32 %i.cql, i32 %i.cqm)
  store i32 %..i1089, ptr %i.cnp, align 4, !tbaa !33
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cnp, i64 8 ; 2 uses
  %i.cqo = load i32, ptr %i.cqn, align 4, !tbaa !33
  %i.cqp = tail call i32 @llvm.smax.i32(i32 %i.cqo, i32 %i.cqm)
  store i32 %i.cqp, ptr %i.cqn, align 4, !tbaa !33
  %i.cqq = getelementptr inbounds nuw i8, ptr %i.cnp, i64 4 ; 2 uses
  %i.cqr = load i32, ptr %i.cqq, align 4, !tbaa !33
  %i.cqs = tail call i32 @llvm.smin.i32(i32 %i.cqr, i32 %i.clj)
  store i32 %i.cqs, ptr %i.cqq, align 4, !tbaa !33
  %i.cqt = getelementptr inbounds nuw i8, ptr %i.cnp, i64 12 ; 2 uses
  %i.cqu = load i32, ptr %i.cqt, align 4, !tbaa !33
  %i.cqv = tail call i32 @llvm.smax.i32(i32 %i.cqu, i32 %i.clj)
  store i32 %i.cqv, ptr %i.cqt, align 4, !tbaa !33
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cnp, i64 16 ; 2 uses
  %i.cqx = load i32, ptr %i.cqw, align 4, !tbaa !33
  %i.cqy = add nsw i32 %i.cqx, 1
  store i32 %i.cqy, ptr %i.cqw, align 4, !tbaa !33
  %i.cqz = load i64, ptr %i.cno, align 8, !tbaa !116
  %i.cra = add i64 %i.cqz, %indvars.iv1198
  store i64 %i.cra, ptr %i.cno, align 8, !tbaa !116
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.sink1381 = phi ptr [ %i.cno, %bb.fa ], [ %i.cqi, %bb.ez ]
  %i.crb = getelementptr inbounds nuw i8, ptr %.sink1381, i64 8 ; 2 uses
  %i.crc = load i64, ptr %i.crb, align 8, !tbaa !117
  %i.crd = add i64 %i.crc, %i.clb
  store i64 %i.crd, ptr %i.crb, align 8, !tbaa !117
  %i.cre = getelementptr inbounds nuw i8, ptr %i.ckv, i64 %i.cnt
  %i.crf = load i8, ptr %i.cre, align 1, !tbaa !32
  %.not769 = icmp eq i8 %i.crf, 0
  %i.crg = getelementptr inbounds nuw [4 x i8], ptr %i.ckz, i64 %i.cnt ; 2 uses
  br i1 %.not769, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  store i32 %i.clv, ptr %i.crg, align 4, !tbaa !33
  %i.crh = load i32, ptr %i.cad, align 4, !tbaa !96
  %i.cri = icmp slt i32 %i.crh, 2
  %i.crj = load i64, ptr %i.caf, align 8
  %i.crk = sext i32 %i.clv to i64                 ; 2 uses
  %i.crl = mul i64 %i.crj, %i.crk
  %.sink.idx.i.i1090 = select i1 %i.cri, i64 0, i64 %i.crl
  %.sink.i.i1091 = getelementptr inbounds nuw i8, ptr %i.cnp, i64 %.sink.idx.i.i1090 ; 6 uses
  %i.crm = load i32, ptr %.sink.i.i1091, align 4, !tbaa !33
  %i.crn = trunc nuw nsw i64 %i.cnt to i32        ; 2 uses
  %..i1092 = tail call i32 @llvm.smin.i32(i32 %i.crm, i32 %i.crn)
  store i32 %..i1092, ptr %.sink.i.i1091, align 4, !tbaa !33
  %i.cro = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 8 ; 2 uses
  %i.crp = load i32, ptr %i.cro, align 4, !tbaa !33
  %i.crq = tail call i32 @llvm.smax.i32(i32 %i.crp, i32 %i.crn)
  store i32 %i.crq, ptr %i.cro, align 4, !tbaa !33
  %i.crr = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 4 ; 2 uses
  %i.crs = load i32, ptr %i.crr, align 4, !tbaa !33
  %i.crt = tail call i32 @llvm.smin.i32(i32 %i.crs, i32 %i.clk)
  store i32 %i.crt, ptr %i.crr, align 4, !tbaa !33
  %i.cru = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 12 ; 2 uses
  %i.crv = load i32, ptr %i.cru, align 4, !tbaa !33
  %i.crw = tail call i32 @llvm.smax.i32(i32 %i.crv, i32 %i.clk)
  store i32 %i.crw, ptr %i.cru, align 4, !tbaa !33
  %i.crx = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 16 ; 2 uses
  %i.cry = load i32, ptr %i.crx, align 4, !tbaa !33
  %i.crz = add nsw i32 %i.cry, 1
  store i32 %i.crz, ptr %i.crx, align 4, !tbaa !33
  %i.csa = getelementptr inbounds nuw [16 x i8], ptr %i.cno, i64 %i.crk ; 2 uses
  %i.csb = load <2 x i64>, ptr %i.csa, align 8, !tbaa !40
  %i.csc = insertelement <2 x i64> %i.clm, i64 %i.cnt, i64 0
  %i.csd = add <2 x i64> %i.csb, %i.csc
  store <2 x i64> %i.csd, ptr %i.csa, align 8, !tbaa !40
  br label %bb.ff

bb.fd:                                            ; preds = %bb.fb
  store i32 0, ptr %i.crg, align 4, !tbaa !33
  %i.cse = load i32, ptr %i.cnp, align 4, !tbaa !33
  %i.csf = trunc nuw nsw i64 %i.cnt to i32        ; 2 uses
  %..i1095 = tail call i32 @llvm.smin.i32(i32 %i.cse, i32 %i.csf)
  store i32 %..i1095, ptr %i.cnp, align 4, !tbaa !33
  %i.csg = getelementptr inbounds nuw i8, ptr %i.cnp, i64 8 ; 2 uses
  %i.csh = load i32, ptr %i.csg, align 4, !tbaa !33
  %i.csi = tail call i32 @llvm.smax.i32(i32 %i.csh, i32 %i.csf)
  store i32 %i.csi, ptr %i.csg, align 4, !tbaa !33
  %i.csj = getelementptr inbounds nuw i8, ptr %i.cnp, i64 4 ; 2 uses
  %i.csk = load i32, ptr %i.csj, align 4, !tbaa !33
  %i.csl = tail call i32 @llvm.smin.i32(i32 %i.csk, i32 %i.cll)
  store i32 %i.csl, ptr %i.csj, align 4, !tbaa !33
  %i.csm = getelementptr inbounds nuw i8, ptr %i.cnp, i64 12 ; 2 uses
  %i.csn = load i32, ptr %i.csm, align 4, !tbaa !33
  %i.cso = tail call i32 @llvm.smax.i32(i32 %i.csn, i32 %i.cll)
  store i32 %i.cso, ptr %i.csm, align 4, !tbaa !33
  %i.csp = getelementptr inbounds nuw i8, ptr %i.cnp, i64 16 ; 2 uses
  %i.csq = load i32, ptr %i.csp, align 4, !tbaa !33
  %i.csr = add nsw i32 %i.csq, 1
  store i32 %i.csr, ptr %i.csp, align 4, !tbaa !33
  %i.css = load <2 x i64>, ptr %i.cno, align 8, !tbaa !40
  %i.cst = insertelement <2 x i64> %i.clm, i64 %i.cnt, i64 0
  %i.csu = add <2 x i64> %i.css, %i.cst
  store <2 x i64> %i.csu, ptr %i.cno, align 8, !tbaa !40
  br label %bb.ff

bb.fe:                                            ; preds = %bb.er
  store i32 0, ptr %i.clp, align 4, !tbaa !33
  %i.csv = or disjoint i64 %indvars.iv1198, 1     ; 5 uses
  %i.csw = getelementptr inbounds nuw [4 x i8], ptr %i.cky, i64 %i.csv
  store i32 0, ptr %i.csw, align 4, !tbaa !33
  %i.csx = getelementptr inbounds nuw [4 x i8], ptr %i.ckz, i64 %indvars.iv1198
  store i32 0, ptr %i.csx, align 4, !tbaa !33
  %i.csy = getelementptr inbounds nuw [4 x i8], ptr %i.ckz, i64 %i.csv
  store i32 0, ptr %i.csy, align 4, !tbaa !33
  %i.csz = load ptr, ptr %i.cae, align 8, !tbaa !55 ; 6 uses
  %i.cta = load i32, ptr %i.csz, align 4, !tbaa !33
  %i.ctb = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 4 uses
  %..i1098 = tail call i32 @llvm.smin.i32(i32 %i.cta, i32 %i.ctb)
  %i.ctc = getelementptr inbounds nuw i8, ptr %i.csz, i64 8 ; 2 uses
  %i.ctd = load i32, ptr %i.ctc, align 4, !tbaa !33
  %i.cte = tail call i32 @llvm.smax.i32(i32 %i.ctd, i32 %i.ctb)
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.csz, i64 4 ; 2 uses
  %i.ctg = load i32, ptr %i.ctf, align 4, !tbaa !33
  %i.cth = tail call i32 @llvm.smin.i32(i32 %i.ctg, i32 %i.clc)
  %i.cti = getelementptr inbounds nuw i8, ptr %i.csz, i64 12 ; 2 uses
  %i.ctj = load i32, ptr %i.cti, align 4, !tbaa !33
  %i.ctk = tail call i32 @llvm.smax.i32(i32 %i.ctj, i32 %i.clc)
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.csz, i64 16 ; 2 uses
  %i.ctm = load i32, ptr %i.ctl, align 4, !tbaa !33
  %i.ctn = load ptr, ptr %i.cag, align 8, !tbaa !50 ; 3 uses
  %i.cto = load i64, ptr %i.ctn, align 8, !tbaa !116
  %i.ctp = add i64 %i.cto, %indvars.iv1198
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.ctn, i64 8 ; 2 uses
  %i.ctr = load i64, ptr %i.ctq, align 8, !tbaa !117
  %i.cts = trunc nuw nsw i64 %i.csv to i32        ; 4 uses
  %..i1101 = tail call i32 @llvm.smin.i32(i32 %..i1098, i32 %i.cts)
  %i.ctt = tail call i32 @llvm.umax.i32(i32 %i.cte, i32 %i.cts)
  %i.ctu = add i64 %i.ctp, %i.csv
  %..i1104 = tail call i32 @llvm.smin.i32(i32 %..i1101, i32 %i.ctb)
  %11 = tail call i32 @llvm.umax.i32(i32 %i.ctt, i32 %i.ctb)
  %12 = tail call i32 @llvm.smin.i32(i32 %i.cth, i32 %i.cld)
  %i.ctv = tail call i32 @llvm.smax.i32(i32 %i.ctk, i32 %i.cld)
  %i.ctw = add i64 %i.ctu, %indvars.iv1198
  %..i1107 = tail call i32 @llvm.smin.i32(i32 %..i1104, i32 %i.cts)
  store i32 %..i1107, ptr %i.csz, align 4, !tbaa !33
  %13 = tail call i32 @llvm.umax.i32(i32 %11, i32 %i.cts)
  store i32 %13, ptr %i.ctc, align 4, !tbaa !33
  store i32 %12, ptr %i.ctf, align 4, !tbaa !33
  store i32 %i.ctv, ptr %i.cti, align 4, !tbaa !33
  %i.ctx = add nsw i32 %i.ctm, 4
  store i32 %i.ctx, ptr %i.ctl, align 4, !tbaa !33
  %i.cty = add i64 %i.ctw, %i.csv
  store i64 %i.cty, ptr %i.ctn, align 8, !tbaa !116
  %.reass1293 = add i64 %i.ctr, %invariant.op1292
  store i64 %.reass1293, ptr %i.ctq, align 8, !tbaa !117
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fc, %bb.fd, %bb.fe
  %indvars.iv.next1199 = add nuw nsw i64 %indvars.iv1198, 2 ; 2 uses
  %i.ctz = load i32, ptr %i.axk, align 4, !tbaa !52 ; 2 uses
  %i.cua = sext i32 %i.ctz to i64
  %i.cub = icmp slt i64 %indvars.iv.next1199, %i.cua
  br i1 %i.cub, label %bb.er, label %._crit_edge1144, !llvm.loop !415

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge1131, %._crit_edge1137, %._crit_edge1144, %._crit_edge1151, %._crit_edge1158, %._crit_edge1164, %._crit_edge1171, %.lr.ph1173, %.preheader1121, %.preheader1119, %.preheader1117, %.preheader1115, %.preheader1113, %.preheader1111, %.preheader1109, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE11mergeLabelsERKNS_3MatERS4_PiS8_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.087159 = load i32, ptr %3, align 4, !tbaa !33 ; 2 uses
  %i.e = icmp slt i32 %.087159, %i.d
  br i1 %i.e, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = sub i64 0, %i.i                          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load i64, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %i.o = sub i64 0, %i.n
  %i.p = icmp sgt i32 %i.b, 0
  br i1 %i.p, label %.lr.ph.us.preheader, label %._crit_edge163

.lr.ph.us.preheader:                              ; preds = %.lr.ph162
  %i.q = add nsw i32 %i.b, -2
  %i.r = add nsw i32 %i.b, -1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = sext i32 %i.q to i64
  %i.u = zext nneg i32 %i.b to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.087160.us = phi i32 [ %.087.us, %._crit_edge.us ], [ %.087159, %.lr.ph.us.preheader ]
  %i.v = sext i32 %.087160.us to i64              ; 3 uses
  %i.w = mul i64 %i.i, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.j
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.j ; 3 uses
  %i.aa = mul i64 %i.n, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aa ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.o ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.ab ] ; 16 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33 ; 9 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %.not.us = icmp eq i64 %indvars.iv, 0
  br i1 %.not.us, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33 ; 5 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !32
  %.not93.us = icmp eq i8 %i.al, 0
  br i1 %.not93.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr i8, ptr %i.ac, i64 %indvars.iv
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !32
  %.not94.us = icmp eq i8 %i.ao, 0
  br i1 %.not94.us, label %bb.h, label %.preheader.us

.preheader.us:                                    ; preds = %bb.f, %.preheader.us
  %.0.i.i.us = phi i32 [ %i.ar, %.preheader.us ], [ %i.ai, %bb.f ] ; 4 uses
  %i.ap = sext i32 %.0.i.i.us to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !33 ; 2 uses
  %i.as = icmp slt i32 %i.ar, %.0.i.i.us
  br i1 %i.as, label %.preheader.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us: ; preds = %.preheader.us
  %.not.i.us = icmp eq i32 %i.ai, %i.ae
  br i1 %.not.i.us, label %bb.g, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, %.preheader.i.us
  %.0.i18.i.us = phi i32 [ %i.av, %.preheader.i.us ], [ %i.ae, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.at = sext i32 %.0.i18.i.us to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !33 ; 2 uses
  %i.aw = icmp slt i32 %i.av, %.0.i18.i.us
  br i1 %i.aw, label %.preheader.i.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us: ; preds = %.preheader.i.us
  %spec.select.i.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i.us, i32 %.0.i18.i.us) ; 3 uses
  %i.ax = zext nneg i32 %i.ae to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !33 ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.ae
  br i1 %i.ba, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, %.lr.ph.i.i.us
  %i.bb = phi i32 [ %i.bf, %.lr.ph.i.i.us ], [ %i.az, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ] ; 2 uses
  %i.bc = phi ptr [ %i.be, %.lr.ph.i.i.us ], [ %i.ay, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ]
  store i32 %spec.select.i.us, ptr %i.bc, align 4, !tbaa !33
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bd ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.bb
  br i1 %i.bg, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us: ; preds = %.lr.ph.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us
  %.lcssa.i.i.us = phi ptr [ %i.ay, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ], [ %i.be, %.lr.ph.i.i.us ]
  store i32 %spec.select.i.us, ptr %.lcssa.i.i.us, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us
  %.1.i.us = phi i32 [ %spec.select.i.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us ], [ %.0.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 4 uses
  %i.bh = zext nneg i32 %i.ai to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bh ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !33 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.ai
  br i1 %i.bk, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us

.lr.ph.i21.i.us:                                  ; preds = %bb.g, %.lr.ph.i21.i.us
  %i.bl = phi i32 [ %i.bp, %.lr.ph.i21.i.us ], [ %i.bj, %bb.g ] ; 2 uses
  %i.bm = phi ptr [ %i.bo, %.lr.ph.i21.i.us ], [ %i.bi, %bb.g ]
  store i32 %.1.i.us, ptr %i.bm, align 4, !tbaa !33
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bn ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !33 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.bl
  br i1 %i.bq, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us: ; preds = %.lr.ph.i21.i.us, %bb.g
  %.lcssa.i20.i.us = phi ptr [ %i.bi, %bb.g ], [ %i.bo, %.lr.ph.i21.i.us ]
  store i32 %.1.i.us, ptr %.lcssa.i20.i.us, align 4, !tbaa !33
  store i32 %.1.i.us, ptr %i.ad, align 4, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, %bb.f, %bb.e, %bb.d, %bb.c
  %i.br = phi i32 [ %.1.i.us, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us ], [ %i.ae, %bb.f ], [ %i.ae, %bb.e ], [ %i.ae, %bb.d ], [ %i.ae, %bb.c ] ; 13 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !33 ; 9 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.bv = icmp samesign ult i64 %indvars.iv, %i.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %.not97.us = icmp eq i8 %i.bx, 0                ; 3 uses
  br i1 %i.bv, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not97.us, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !32
  %.not96.us = icmp eq i8 %i.bz, 0
  br i1 %.not96.us, label %bb.w, label %.preheader195

.preheader195:                                    ; preds = %bb.k, %.preheader195
  %.0.i.i121.us = phi i32 [ %i.cc, %.preheader195 ], [ %i.bt, %bb.k ] ; 4 uses
  %i.ca = sext i32 %.0.i.i121.us to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !33 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %.0.i.i121.us
  br i1 %i.cd, label %.preheader195, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us: ; preds = %.preheader195
  %.not.i123.us = icmp eq i32 %i.bt, %i.br
  br i1 %.not.i123.us, label %bb.l, label %.preheader.i124.us

.preheader.i124.us:                               ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us, %.preheader.i124.us
  %.0.i18.i125.us = phi i32 [ %i.cg, %.preheader.i124.us ], [ %i.br, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us ] ; 3 uses
end_hunk_8
begin_hunk_9_@_ZNK2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %.sink1318 = phi ptr [ %i.kl, %bb.p ], [ %i.jt, %bb.o ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sink1318, i64 8 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !117
  %i.kq = add i64 %i.kp, %i.ed
  store i64 %i.kq, ptr %i.ko, align 8, !tbaa !117
  %i.kr = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.gt
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !32
  %.not803 = icmp eq i8 %i.ks, 0
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.gt ; 2 uses
  br i1 %.not803, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.ex, ptr %i.kt, align 4, !tbaa !33
  %i.ku = load i32, ptr %i.bw, align 4, !tbaa !96
  %i.kv = icmp slt i32 %i.ku, 2
  %i.kw = load ptr, ptr %i.bx, align 8, !tbaa !55
  %i.kx = load i64, ptr %i.by, align 8
  %i.ky = sext i32 %i.ex to i64                   ; 2 uses
  %i.kz = mul i64 %i.kx, %i.ky
  %.sink.idx.i.i820 = select i1 %i.kv, i64 0, i64 %i.kz
  %.sink.i.i821 = getelementptr inbounds nuw i8, ptr %i.kw, i64 %.sink.idx.i.i820 ; 6 uses
  %i.la = load i32, ptr %.sink.i.i821, align 4, !tbaa !33
  %i.lb = trunc nuw nsw i64 %i.gt to i32          ; 2 uses
  %..i822 = tail call i32 @llvm.smin.i32(i32 %i.la, i32 %i.lb)
  store i32 %..i822, ptr %.sink.i.i821, align 4, !tbaa !33
  %i.lc = getelementptr inbounds nuw i8, ptr %.sink.i.i821, i64 8 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !33
  %i.le = tail call i32 @llvm.smax.i32(i32 %i.ld, i32 %i.lb)
  store i32 %i.le, ptr %i.lc, align 4, !tbaa !33
  %i.lf = getelementptr inbounds nuw i8, ptr %.sink.i.i821, i64 4 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !33
  %i.lh = tail call i32 @llvm.smin.i32(i32 %i.lg, i32 %i.em)
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !33
  %i.li = getelementptr inbounds nuw i8, ptr %.sink.i.i821, i64 12 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !33
  %i.lk = tail call i32 @llvm.smax.i32(i32 %i.lj, i32 %i.em)
  store i32 %i.lk, ptr %i.li, align 4, !tbaa !33
  %i.ll = getelementptr inbounds nuw i8, ptr %.sink.i.i821, i64 16 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !33
  %i.ln = add nsw i32 %i.lm, 1
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !33
  %i.lo = load ptr, ptr %i.bz, align 8, !tbaa !50
  %i.lp = getelementptr inbounds nuw [16 x i8], ptr %i.lo, i64 %i.ky ; 2 uses
  %i.lq = load <2 x i64>, ptr %i.lp, align 8, !tbaa !40
  %i.lr = insertelement <2 x i64> %i.en, i64 %i.gt, i64 0
  %i.ls = add <2 x i64> %i.lq, %i.lr
  store <2 x i64> %i.ls, ptr %i.lp, align 8, !tbaa !40
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  store i32 0, ptr %i.kt, align 4, !tbaa !33
  %i.lt = load ptr, ptr %i.ca, align 8, !tbaa !55 ; 6 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !33
  %i.lv = trunc nuw nsw i64 %i.gt to i32          ; 2 uses
  %..i825 = tail call i32 @llvm.smin.i32(i32 %i.lu, i32 %i.lv)
  store i32 %..i825, ptr %i.lt, align 4, !tbaa !33
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !33
  %i.ly = tail call i32 @llvm.smax.i32(i32 %i.lx, i32 %i.lv)
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !33
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 4 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !33
  %i.mb = tail call i32 @llvm.smin.i32(i32 %i.ma, i32 %i.em)
  store i32 %i.mb, ptr %i.lz, align 4, !tbaa !33
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lt, i64 12 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !33
  %i.me = tail call i32 @llvm.smax.i32(i32 %i.md, i32 %i.em)
  store i32 %i.me, ptr %i.mc, align 4, !tbaa !33
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !33
  %i.mh = add nsw i32 %i.mg, 1
  store i32 %i.mh, ptr %i.mf, align 4, !tbaa !33
  %i.mi = load ptr, ptr %i.cb, align 8, !tbaa !50 ; 2 uses
  %i.mj = load <2 x i64>, ptr %i.mi, align 8, !tbaa !40
  %i.mk = insertelement <2 x i64> %i.en, i64 %i.gt, i64 0
  %i.ml = add <2 x i64> %i.mj, %i.mk
  store <2 x i64> %i.ml, ptr %i.mi, align 8, !tbaa !40
  br label %bb.ac

bb.t:                                             ; preds = %bb.i
  %i.mm = load i32, ptr %i.av, align 8, !tbaa !39
  %i.mn = icmp sgt i32 %i.mm, %i.ej
  br i1 %i.mn, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.mo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv1204
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !32
  %.not800 = icmp eq i8 %i.mp, 0
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv1204 ; 2 uses
  br i1 %.not800, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.ex, ptr %i.mq, align 4, !tbaa !33
  %i.mr = load i32, ptr %i.ax, align 4, !tbaa !96
  %i.ms = icmp slt i32 %i.mr, 2
  %i.mt = load ptr, ptr %i.ay, align 8, !tbaa !55
  %i.mu = load i64, ptr %i.az, align 8
  %i.mv = sext i32 %i.ex to i64                   ; 2 uses
  %i.mw = mul i64 %i.mu, %i.mv
  %.sink.idx.i.i826 = select i1 %i.ms, i64 0, i64 %i.mw
  %.sink.i.i827 = getelementptr inbounds nuw i8, ptr %i.mt, i64 %.sink.idx.i.i826 ; 6 uses
  %i.mx = load i32, ptr %.sink.i.i827, align 4, !tbaa !33
  %i.my = trunc nuw nsw i64 %indvars.iv1204 to i32 ; 2 uses
  %..i828 = tail call i32 @llvm.smin.i32(i32 %i.mx, i32 %i.my)
  store i32 %..i828, ptr %.sink.i.i827, align 4, !tbaa !33
  %i.mz = getelementptr inbounds nuw i8, ptr %.sink.i.i827, i64 8 ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !33
  %i.nb = tail call i32 @llvm.smax.i32(i32 %i.na, i32 %i.my)
  store i32 %i.nb, ptr %i.mz, align 4, !tbaa !33
  %i.nc = getelementptr inbounds nuw i8, ptr %.sink.i.i827, i64 4 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !33
  %i.ne = tail call i32 @llvm.smin.i32(i32 %i.nd, i32 %i.ej)
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !33
  %i.nf = getelementptr inbounds nuw i8, ptr %.sink.i.i827, i64 12 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !33
  %i.nh = tail call i32 @llvm.smax.i32(i32 %i.ng, i32 %i.ej)
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !33
  %i.ni = getelementptr inbounds nuw i8, ptr %.sink.i.i827, i64 16 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !33
  %i.nk = add nsw i32 %i.nj, 1
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !33
  %i.nl = load ptr, ptr %i.ba, align 8, !tbaa !50
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.nl, i64 %i.mv ; 2 uses
  %i.nn = load <2 x i64>, ptr %i.nm, align 8, !tbaa !40
  %i.no = insertelement <2 x i64> %i.en, i64 %indvars.iv1204, i64 0
  %i.np = add <2 x i64> %i.nn, %i.no
  store <2 x i64> %i.np, ptr %i.nm, align 8, !tbaa !40
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  store i32 0, ptr %i.mq, align 4, !tbaa !33
  %i.nq = load ptr, ptr %i.bc, align 8, !tbaa !55 ; 6 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !33
  %i.ns = trunc nuw nsw i64 %indvars.iv1204 to i32 ; 2 uses
  %..i831 = tail call i32 @llvm.smin.i32(i32 %i.nr, i32 %i.ns)
  store i32 %..i831, ptr %i.nq, align 4, !tbaa !33
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !33
  %i.nv = tail call i32 @llvm.smax.i32(i32 %i.nu, i32 %i.ns)
  store i32 %i.nv, ptr %i.nt, align 4, !tbaa !33
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 4 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !33
  %i.ny = tail call i32 @llvm.smin.i32(i32 %i.nx, i32 %i.ej)
  store i32 %i.ny, ptr %i.nw, align 4, !tbaa !33
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 12 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !33
  %i.ob = tail call i32 @llvm.smax.i32(i32 %i.oa, i32 %i.ej)
  store i32 %i.ob, ptr %i.nz, align 4, !tbaa !33
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nq, i64 16 ; 2 uses
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !33
  %i.oe = add nsw i32 %i.od, 1
  store i32 %i.oe, ptr %i.oc, align 4, !tbaa !33
  %i.of = load ptr, ptr %i.bd, align 8, !tbaa !50 ; 2 uses
  %i.og = load <2 x i64>, ptr %i.of, align 8, !tbaa !40
  %i.oh = insertelement <2 x i64> %i.en, i64 %indvars.iv1204, i64 0
  %i.oi = add <2 x i64> %i.og, %i.oh
  store <2 x i64> %i.oi, ptr %i.of, align 8, !tbaa !40
  br label %bb.ac

bb.x:                                             ; preds = %bb.e
  store i32 0, ptr %i.er, align 4, !tbaa !33
  %i.oj = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 12 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !33
  %i.ol = trunc nuw nsw i64 %indvars.iv1204 to i32 ; 6 uses
  %..i834 = tail call i32 @llvm.smin.i32(i32 %i.ok, i32 %i.ol)
  store i32 %..i834, ptr %i.oj, align 4, !tbaa !33
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 8 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !33
  %i.oo = tail call i32 @llvm.smax.i32(i32 %i.on, i32 %i.ol)
  store i32 %i.oo, ptr %i.om, align 4, !tbaa !33
  %i.op = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 8 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !33
  %i.or = tail call i32 @llvm.smin.i32(i32 %i.oq, i32 %i.ee)
  store i32 %i.or, ptr %i.op, align 4, !tbaa !33
  %i.os = getelementptr inbounds nuw i8, ptr %i.oj, i64 12 ; 8 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !33
  %i.ou = tail call i32 @llvm.smax.i32(i32 %i.ot, i32 %i.ee)
  store i32 %i.ou, ptr %i.os, align 4, !tbaa !33
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oj, i64 16 ; 8 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !33
  %i.ox = add nsw i32 %i.ow, 1
  store i32 %i.ox, ptr %i.ov, align 4, !tbaa !33
  %i.oy = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 6 uses
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !116
  %i.pa = add i64 %i.oz, %indvars.iv1204          ; 3 uses
  store i64 %i.pa, ptr %i.oy, align 8, !tbaa !116
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 8 ; 5 uses
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !117
  %i.pd = add i64 %i.pc, %indvars.iv1207          ; 3 uses
  store i64 %i.pd, ptr %i.pb, align 8, !tbaa !117
  %i.pe = or disjoint i64 %indvars.iv1204, 1      ; 6 uses
  %i.pf = load i32, ptr %i.eq, align 4, !tbaa !52
  %i.pg = sext i32 %i.pf to i64
  %i.ph = icmp slt i64 %i.pe, %i.pg
  br i1 %i.ph, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.pe
  store i32 0, ptr %i.pi, align 4, !tbaa !33
  %i.pj = load i32, ptr %i.oj, align 4, !tbaa !33
  %i.pk = trunc nuw nsw i64 %i.pe to i32          ; 4 uses
  %..i837 = tail call i32 @llvm.smin.i32(i32 %i.pj, i32 %i.pk)
  store i32 %..i837, ptr %i.oj, align 4, !tbaa !33
  %i.pl = load i32, ptr %i.om, align 4, !tbaa !33
  %i.pm = tail call i32 @llvm.smax.i32(i32 %i.pl, i32 %i.pk)
  store i32 %i.pm, ptr %i.om, align 4, !tbaa !33
  %i.pn = load i32, ptr %i.op, align 4, !tbaa !33
  %i.po = tail call i32 @llvm.smin.i32(i32 %i.pn, i32 %i.ee)
  store i32 %i.po, ptr %i.op, align 4, !tbaa !33
  %i.pp = load i32, ptr %i.os, align 4, !tbaa !33
  %i.pq = tail call i32 @llvm.smax.i32(i32 %i.pp, i32 %i.ee)
  store i32 %i.pq, ptr %i.os, align 4, !tbaa !33
  %i.pr = load i32, ptr %i.ov, align 4, !tbaa !33
  %i.ps = add nsw i32 %i.pr, 1
  store i32 %i.ps, ptr %i.ov, align 4, !tbaa !33
  %i.pt = add i64 %i.pa, %i.pe                    ; 2 uses
  store i64 %i.pt, ptr %i.oy, align 8, !tbaa !116
  %i.pu = add i64 %i.pd, %indvars.iv1207          ; 2 uses
  store i64 %i.pu, ptr %i.pb, align 8, !tbaa !117
  %i.pv = load i32, ptr %i.am, align 8, !tbaa !39
  %i.pw = icmp sgt i32 %i.pv, %i.eg
  br i1 %i.pw, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv1204
  store i32 0, ptr %i.px, align 4, !tbaa !33
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.pe
  store i32 0, ptr %i.py, align 4, !tbaa !33
  %i.pz = load i32, ptr %i.oj, align 4, !tbaa !33
  %..i840 = tail call i32 @llvm.smin.i32(i32 %i.pz, i32 %i.ol)
  %i.qa = load i32, ptr %i.om, align 4, !tbaa !33
  %i.qb = tail call i32 @llvm.smax.i32(i32 %i.qa, i32 %i.ol)
  %i.qc = load i32, ptr %i.op, align 4, !tbaa !33
  %i.qd = tail call i32 @llvm.smin.i32(i32 %i.qc, i32 %i.eg)
  %i.qe = load i32, ptr %i.os, align 4, !tbaa !33
  %i.qf = tail call i32 @llvm.smax.i32(i32 %i.qe, i32 %i.eg)
  %i.qg = load i32, ptr %i.ov, align 4, !tbaa !33
  %i.qh = add i64 %i.pt, %indvars.iv1204
  %..i843 = tail call i32 @llvm.smin.i32(i32 %..i840, i32 %i.pk)
  store i32 %..i843, ptr %i.oj, align 4, !tbaa !33
  %i.qi = tail call i32 @llvm.umax.i32(i32 %i.qb, i32 %i.pk)
  store i32 %i.qi, ptr %i.om, align 4, !tbaa !33
  store i32 %i.qd, ptr %i.op, align 4, !tbaa !33
  store i32 %i.qf, ptr %i.os, align 4, !tbaa !33
  %i.qj = add nsw i32 %i.qg, 2
  store i32 %i.qj, ptr %i.ov, align 4, !tbaa !33
  %i.qk = add i64 %i.qh, %i.pe
  store i64 %i.qk, ptr %i.oy, align 8, !tbaa !116
  %.reass1295 = add i64 %i.pu, %invariant.op1294
  store i64 %.reass1295, ptr %i.pb, align 8, !tbaa !117
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.ql = load i32, ptr %i.al, align 8, !tbaa !39
  %i.qm = icmp sgt i32 %i.ql, %i.ef
  br i1 %i.qm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv1204
  store i32 0, ptr %i.qn, align 4, !tbaa !33
  %i.qo = load i32, ptr %i.oj, align 4, !tbaa !33
  %..i846 = tail call i32 @llvm.smin.i32(i32 %i.qo, i32 %i.ol)
  store i32 %..i846, ptr %i.oj, align 4, !tbaa !33
  %i.qp = load i32, ptr %i.om, align 4, !tbaa !33
  %i.qq = tail call i32 @llvm.smax.i32(i32 %i.qp, i32 %i.ol)
  store i32 %i.qq, ptr %i.om, align 4, !tbaa !33
  %i.qr = load i32, ptr %i.op, align 4, !tbaa !33
  %i.qs = tail call i32 @llvm.smin.i32(i32 %i.qr, i32 %i.ef)
  store i32 %i.qs, ptr %i.op, align 4, !tbaa !33
  %i.qt = load i32, ptr %i.os, align 4, !tbaa !33
  %i.qu = tail call i32 @llvm.smax.i32(i32 %i.qt, i32 %i.ef)
  store i32 %i.qu, ptr %i.os, align 4, !tbaa !33
  %i.qv = load i32, ptr %i.ov, align 4, !tbaa !33
  %i.qw = add nsw i32 %i.qv, 1
  store i32 %i.qw, ptr %i.ov, align 4, !tbaa !33
  %i.qx = add i64 %i.pa, %indvars.iv1204
  store i64 %i.qx, ptr %i.oy, align 8, !tbaa !116
  %i.qy = add i64 %i.pd, %i.ed
  store i64 %i.qy, ptr %i.pb, align 8, !tbaa !117
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.y, %bb.ab, %bb.aa, %bb.r, %bb.s, %bb.m, %bb.v, %bb.w, %bb.t
  %indvars.iv.next1205 = add nuw nsw i64 %indvars.iv1204, 2 ; 2 uses
  %i.qz = load i32, ptr %i.z, align 4, !tbaa !52
  %i.ra = sext i32 %i.qz to i64
  %i.rb = icmp slt i64 %indvars.iv.next1205, %i.ra
  br i1 %i.rb, label %bb.e, label %._crit_edge1151, !llvm.loop !426

bb.ad:                                            ; preds = %.lr.ph1160, %._crit_edge1158
  %indvars.iv1213 = phi i64 [ %i.m, %.lr.ph1160 ], [ %indvars.iv.next1214, %._crit_edge1158 ] ; 12 uses
  %i.rc = load i64, ptr %i.cd, align 8, !tbaa !40 ; 2 uses
  %i.rd = mul i64 %i.rc, %indvars.iv1213
  %i.re = getelementptr inbounds nuw i8, ptr %.pre1237, i64 %i.rd ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rc ; 2 uses
  %i.rg = load i64, ptr %i.cg, align 8, !tbaa !40 ; 2 uses
  %i.rh = mul i64 %i.rg, %indvars.iv1213
  %i.ri = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.rh ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rg ; 4 uses
  %i.rk = load i32, ptr %i.ch, align 4, !tbaa !52
  %i.rl = icmp sgt i32 %i.rk, 0
  br i1 %i.rl, label %.lr.ph1157, label %._crit_edge1158

.lr.ph1157:                                       ; preds = %bb.ad
  %i.rm = or disjoint i64 %indvars.iv1213, 1      ; 5 uses
  %i.rn = trunc nuw i64 %indvars.iv1213 to i32    ; 2 uses
  %invariant.op1296 = shl nuw i64 %indvars.iv1213, 1
  %i.ro = trunc nuw i64 %i.rm to i32              ; 3 uses
  %invariant.op1298 = shl nuw i64 %i.rm, 1
  %i.rp = trunc nuw i64 %indvars.iv1213 to i32    ; 2 uses
  %i.rq = trunc nuw i64 %indvars.iv1213 to i32    ; 2 uses
  %i.rr = trunc nuw i64 %indvars.iv1213 to i32    ; 2 uses
  %i.rs = trunc nuw i64 %indvars.iv1213 to i32    ; 2 uses
  %i.rt = trunc nuw i64 %i.rm to i32              ; 9 uses
  %i.ru = insertelement <2 x i64> poison, i64 %i.rm, i64 1 ; 2 uses
  br label %bb.ae

._crit_edge1158:                                  ; preds = %bb.au, %bb.ad
  %indvars.iv.next1214 = add nuw nsw i64 %indvars.iv1213, 2 ; 2 uses
  %i.rv = trunc nuw i64 %indvars.iv.next1214 to i32
  %i.rw = icmp sgt i32 %.sroa.speculated, %i.rv
  br i1 %i.rw, label %bb.ad, label %.loopexit, !llvm.loop !427

bb.ae:                                            ; preds = %.lr.ph1157, %bb.au
  %indvars.iv1210 = phi i64 [ 0, %.lr.ph1157 ], [ %indvars.iv.next1211, %bb.au ] ; 19 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv1210 ; 4 uses
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !33 ; 2 uses
  %i.rz = icmp sgt i32 %i.ry, 0
  br i1 %i.rz, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.sa = load ptr, ptr %i.cc, align 8, !tbaa !128
  %i.sb = zext nneg i32 %i.ry to i64
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !33 ; 8 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.re, i64 %indvars.iv1210
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !32
  %.not795 = icmp eq i8 %i.sf, 0
  br i1 %.not795, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %i.sd, ptr %i.rx, align 4, !tbaa !33
  %i.sg = load i32, ptr %i.cn, align 4, !tbaa !96
  %i.sh = icmp slt i32 %i.sg, 2
  %i.si = load ptr, ptr %i.co, align 8, !tbaa !55
  %i.sj = load i64, ptr %i.cp, align 8
  %i.sk = sext i32 %i.sd to i64                   ; 2 uses
  %i.sl = mul i64 %i.sj, %i.sk
  %.sink.idx.i.i847 = select i1 %i.sh, i64 0, i64 %i.sl
  %.sink.i.i848 = getelementptr inbounds nuw i8, ptr %i.si, i64 %.sink.idx.i.i847 ; 6 uses
  %i.sm = load i32, ptr %.sink.i.i848, align 4, !tbaa !33
  %i.sn = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 2 uses
  %..i849 = tail call i32 @llvm.smin.i32(i32 %i.sm, i32 %i.sn)
  store i32 %..i849, ptr %.sink.i.i848, align 4, !tbaa !33
  %i.so = getelementptr inbounds nuw i8, ptr %.sink.i.i848, i64 8 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !33
  %i.sq = tail call i32 @llvm.smax.i32(i32 %i.sp, i32 %i.sn)
  store i32 %i.sq, ptr %i.so, align 4, !tbaa !33
  %i.sr = getelementptr inbounds nuw i8, ptr %.sink.i.i848, i64 4 ; 2 uses
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !33
  %i.st = tail call i32 @llvm.smin.i32(i32 %i.ss, i32 %i.rp)
  store i32 %i.st, ptr %i.sr, align 4, !tbaa !33
  %i.su = getelementptr inbounds nuw i8, ptr %.sink.i.i848, i64 12 ; 2 uses
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !33
  %i.sw = tail call i32 @llvm.smax.i32(i32 %i.sv, i32 %i.rp)
  store i32 %i.sw, ptr %i.su, align 4, !tbaa !33
  %i.sx = getelementptr inbounds nuw i8, ptr %.sink.i.i848, i64 16 ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !33
  %i.sz = add nsw i32 %i.sy, 1
  store i32 %i.sz, ptr %i.sx, align 4, !tbaa !33
  %i.ta = load ptr, ptr %i.cq, align 8, !tbaa !50
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.ta, i64 %i.sk ; 3 uses
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !116
  %i.td = add i64 %i.tc, %indvars.iv1210
  store i64 %i.td, ptr %i.tb, align 8, !tbaa !116
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store i32 0, ptr %i.rx, align 4, !tbaa !33
  %i.te = load ptr, ptr %i.cs, align 8, !tbaa !55 ; 6 uses
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !33
  %i.tg = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 2 uses
  %..i852 = tail call i32 @llvm.smin.i32(i32 %i.tf, i32 %i.tg)
  store i32 %..i852, ptr %i.te, align 4, !tbaa !33
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !33
  %i.tj = tail call i32 @llvm.smax.i32(i32 %i.ti, i32 %i.tg)
  store i32 %i.tj, ptr %i.th, align 4, !tbaa !33
  %i.tk = getelementptr inbounds nuw i8, ptr %i.te, i64 4 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !33
  %i.tm = tail call i32 @llvm.smin.i32(i32 %i.tl, i32 %i.rq)
  store i32 %i.tm, ptr %i.tk, align 4, !tbaa !33
  %i.tn = getelementptr inbounds nuw i8, ptr %i.te, i64 12 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !33
  %i.tp = tail call i32 @llvm.smax.i32(i32 %i.to, i32 %i.rq)
  store i32 %i.tp, ptr %i.tn, align 4, !tbaa !33
  %i.tq = getelementptr inbounds nuw i8, ptr %i.te, i64 16 ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !33
  %i.ts = add nsw i32 %i.tr, 1
  store i32 %i.ts, ptr %i.tq, align 4, !tbaa !33
  %i.tt = load ptr, ptr %i.ct, align 8, !tbaa !50 ; 3 uses
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !116
  %i.tv = add i64 %i.tu, %indvars.iv1210
  store i64 %i.tv, ptr %i.tt, align 8, !tbaa !116
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink1321 = phi ptr [ %i.tt, %bb.ah ], [ %i.tb, %bb.ag ]
  %i.tw = getelementptr inbounds nuw i8, ptr %.sink1321, i64 8 ; 2 uses
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !117
  %i.ty = add i64 %i.tx, %indvars.iv1213
  store i64 %i.ty, ptr %i.tw, align 8, !tbaa !117
  %i.tz = or disjoint i64 %indvars.iv1210, 1      ; 12 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !32
  %.not796 = icmp eq i8 %i.ub, 0
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.tz ; 2 uses
  br i1 %.not796, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.sd, ptr %i.uc, align 4, !tbaa !33
  %i.ud = load i32, ptr %i.cv, align 4, !tbaa !96
  %i.ue = icmp slt i32 %i.ud, 2
  %i.uf = load ptr, ptr %i.cw, align 8, !tbaa !55
  %i.ug = load i64, ptr %i.cx, align 8
  %i.uh = sext i32 %i.sd to i64                   ; 2 uses
  %i.ui = mul i64 %i.ug, %i.uh
  %.sink.idx.i.i853 = select i1 %i.ue, i64 0, i64 %i.ui
  %.sink.i.i854 = getelementptr inbounds nuw i8, ptr %i.uf, i64 %.sink.idx.i.i853 ; 6 uses
  %i.uj = load i32, ptr %.sink.i.i854, align 4, !tbaa !33
  %i.uk = trunc nuw nsw i64 %i.tz to i32          ; 2 uses
  %..i855 = tail call i32 @llvm.smin.i32(i32 %i.uj, i32 %i.uk)
  store i32 %..i855, ptr %.sink.i.i854, align 4, !tbaa !33
  %i.ul = getelementptr inbounds nuw i8, ptr %.sink.i.i854, i64 8 ; 2 uses
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !33
  %i.un = tail call i32 @llvm.smax.i32(i32 %i.um, i32 %i.uk)
  store i32 %i.un, ptr %i.ul, align 4, !tbaa !33
  %i.uo = getelementptr inbounds nuw i8, ptr %.sink.i.i854, i64 4 ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !33
  %i.uq = tail call i32 @llvm.smin.i32(i32 %i.up, i32 %i.rr)
  store i32 %i.uq, ptr %i.uo, align 4, !tbaa !33
end_hunk_9
begin_hunk_10_@_ZNK2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.vm = tail call i32 @llvm.smax.i32(i32 %i.vl, i32 %i.rs)
  store i32 %i.vm, ptr %i.vk, align 4, !tbaa !33
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vb, i64 16 ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !33
  %i.vp = add nsw i32 %i.vo, 1
  store i32 %i.vp, ptr %i.vn, align 4, !tbaa !33
  %i.vq = load ptr, ptr %i.db, align 8, !tbaa !50 ; 3 uses
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !116
  %i.vs = add i64 %i.vr, %i.tz
  store i64 %i.vs, ptr %i.vq, align 8, !tbaa !116
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink1324 = phi ptr [ %i.vq, %bb.ak ], [ %i.uy, %bb.aj ]
  %i.vt = getelementptr inbounds nuw i8, ptr %.sink1324, i64 8 ; 2 uses
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !117
  %i.vv = add i64 %i.vu, %indvars.iv1213
  store i64 %i.vv, ptr %i.vt, align 8, !tbaa !117
  %i.vw = load i32, ptr %i.dc, align 8, !tbaa !39
  %i.vx = icmp sgt i32 %i.vw, %i.rt
  br i1 %i.vx, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.vy = getelementptr inbounds nuw i8, ptr %i.rf, i64 %indvars.iv1210
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !32
  %.not797 = icmp eq i8 %i.vz, 0
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv1210 ; 2 uses
  br i1 %.not797, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 %i.sd, ptr %i.wa, align 4, !tbaa !33
  %i.wb = load i32, ptr %i.de, align 4, !tbaa !96
  %i.wc = icmp slt i32 %i.wb, 2
  %i.wd = load ptr, ptr %i.df, align 8, !tbaa !55
  %i.we = load i64, ptr %i.dg, align 8
  %i.wf = sext i32 %i.sd to i64                   ; 2 uses
  %i.wg = mul i64 %i.we, %i.wf
  %.sink.idx.i.i859 = select i1 %i.wc, i64 0, i64 %i.wg
  %.sink.i.i860 = getelementptr inbounds nuw i8, ptr %i.wd, i64 %.sink.idx.i.i859 ; 6 uses
  %i.wh = load i32, ptr %.sink.i.i860, align 4, !tbaa !33
  %i.wi = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 2 uses
  %..i861 = tail call i32 @llvm.smin.i32(i32 %i.wh, i32 %i.wi)
  store i32 %..i861, ptr %.sink.i.i860, align 4, !tbaa !33
  %i.wj = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 8 ; 2 uses
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !33
  %i.wl = tail call i32 @llvm.smax.i32(i32 %i.wk, i32 %i.wi)
  store i32 %i.wl, ptr %i.wj, align 4, !tbaa !33
  %i.wm = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 4 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !33
  %i.wo = tail call i32 @llvm.smin.i32(i32 %i.wn, i32 %i.rt)
  store i32 %i.wo, ptr %i.wm, align 4, !tbaa !33
  %i.wp = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 12 ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !33
  %i.wr = tail call i32 @llvm.smax.i32(i32 %i.wq, i32 %i.rt)
  store i32 %i.wr, ptr %i.wp, align 4, !tbaa !33
  %i.ws = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 16 ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !33
  %i.wu = add nsw i32 %i.wt, 1
  store i32 %i.wu, ptr %i.ws, align 4, !tbaa !33
  %i.wv = load ptr, ptr %i.dh, align 8, !tbaa !50
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr %i.wv, i64 %i.wf ; 3 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !116
  %i.wy = add i64 %i.wx, %indvars.iv1210
  store i64 %i.wy, ptr %i.ww, align 8, !tbaa !116
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i32 0, ptr %i.wa, align 4, !tbaa !33
  %i.wz = load ptr, ptr %i.dj, align 8, !tbaa !55 ; 6 uses
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !33
  %i.xb = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 2 uses
  %..i864 = tail call i32 @llvm.smin.i32(i32 %i.xa, i32 %i.xb)
  store i32 %..i864, ptr %i.wz, align 4, !tbaa !33
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 8 ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !33
  %i.xe = tail call i32 @llvm.smax.i32(i32 %i.xd, i32 %i.xb)
  store i32 %i.xe, ptr %i.xc, align 4, !tbaa !33
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wz, i64 4 ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !33
  %i.xh = tail call i32 @llvm.smin.i32(i32 %i.xg, i32 %i.rt)
  store i32 %i.xh, ptr %i.xf, align 4, !tbaa !33
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wz, i64 12 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !33
  %i.xk = tail call i32 @llvm.smax.i32(i32 %i.xj, i32 %i.rt)
  store i32 %i.xk, ptr %i.xi, align 4, !tbaa !33
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 2 uses
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !33
  %i.xn = add nsw i32 %i.xm, 1
  store i32 %i.xn, ptr %i.xl, align 4, !tbaa !33
  %i.xo = load ptr, ptr %i.dk, align 8, !tbaa !50 ; 3 uses
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !116
  %i.xq = add i64 %i.xp, %indvars.iv1210
  store i64 %i.xq, ptr %i.xo, align 8, !tbaa !116
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink1327 = phi ptr [ %i.xo, %bb.ao ], [ %i.ww, %bb.an ]
  %i.xr = getelementptr inbounds nuw i8, ptr %.sink1327, i64 8 ; 2 uses
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !117
  %i.xt = add i64 %i.xs, %i.rm
  store i64 %i.xt, ptr %i.xr, align 8, !tbaa !117
  %i.xu = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.tz
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !32
  %.not798 = icmp eq i8 %i.xv, 0
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.tz ; 2 uses
  br i1 %.not798, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.sd, ptr %i.xw, align 4, !tbaa !33
  %i.xx = load i32, ptr %i.dm, align 4, !tbaa !96
  %i.xy = icmp slt i32 %i.xx, 2
  %i.xz = load ptr, ptr %i.dn, align 8, !tbaa !55
  %i.ya = load i64, ptr %i.do, align 8
  %i.yb = sext i32 %i.sd to i64                   ; 2 uses
  %i.yc = mul i64 %i.ya, %i.yb
  %.sink.idx.i.i865 = select i1 %i.xy, i64 0, i64 %i.yc
  %.sink.i.i866 = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.sink.idx.i.i865 ; 6 uses
  %i.yd = load i32, ptr %.sink.i.i866, align 4, !tbaa !33
  %i.ye = trunc nuw nsw i64 %i.tz to i32          ; 2 uses
  %..i867 = tail call i32 @llvm.smin.i32(i32 %i.yd, i32 %i.ye)
  store i32 %..i867, ptr %.sink.i.i866, align 4, !tbaa !33
  %i.yf = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 8 ; 2 uses
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !33
  %i.yh = tail call i32 @llvm.smax.i32(i32 %i.yg, i32 %i.ye)
  store i32 %i.yh, ptr %i.yf, align 4, !tbaa !33
  %i.yi = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 4 ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !33
  %i.yk = tail call i32 @llvm.smin.i32(i32 %i.yj, i32 %i.rt)
  store i32 %i.yk, ptr %i.yi, align 4, !tbaa !33
  %i.yl = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 12 ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !33
  %i.yn = tail call i32 @llvm.smax.i32(i32 %i.ym, i32 %i.rt)
  store i32 %i.yn, ptr %i.yl, align 4, !tbaa !33
  %i.yo = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 16 ; 2 uses
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !33
  %i.yq = add nsw i32 %i.yp, 1
  store i32 %i.yq, ptr %i.yo, align 4, !tbaa !33
  %i.yr = load ptr, ptr %i.dp, align 8, !tbaa !50
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %i.yr, i64 %i.yb ; 2 uses
  %i.yt = load <2 x i64>, ptr %i.ys, align 8, !tbaa !40
  %i.yu = insertelement <2 x i64> %i.ru, i64 %i.tz, i64 0
  %i.yv = add <2 x i64> %i.yt, %i.yu
  store <2 x i64> %i.yv, ptr %i.ys, align 8, !tbaa !40
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  store i32 0, ptr %i.xw, align 4, !tbaa !33
  %i.yw = load ptr, ptr %i.dq, align 8, !tbaa !55 ; 6 uses
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !33
  %i.yy = trunc nuw nsw i64 %i.tz to i32          ; 2 uses
  %..i870 = tail call i32 @llvm.smin.i32(i32 %i.yx, i32 %i.yy)
  store i32 %..i870, ptr %i.yw, align 4, !tbaa !33
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 8 ; 2 uses
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !33
  %i.zb = tail call i32 @llvm.smax.i32(i32 %i.za, i32 %i.yy)
  store i32 %i.zb, ptr %i.yz, align 4, !tbaa !33
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yw, i64 4 ; 2 uses
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !33
  %i.ze = tail call i32 @llvm.smin.i32(i32 %i.zd, i32 %i.rt)
  store i32 %i.ze, ptr %i.zc, align 4, !tbaa !33
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yw, i64 12 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !33
  %i.zh = tail call i32 @llvm.smax.i32(i32 %i.zg, i32 %i.rt)
  store i32 %i.zh, ptr %i.zf, align 4, !tbaa !33
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yw, i64 16 ; 2 uses
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !33
  %i.zk = add nsw i32 %i.zj, 1
  store i32 %i.zk, ptr %i.zi, align 4, !tbaa !33
  %i.zl = load ptr, ptr %i.dr, align 8, !tbaa !50 ; 2 uses
  %i.zm = load <2 x i64>, ptr %i.zl, align 8, !tbaa !40
  %i.zn = insertelement <2 x i64> %i.ru, i64 %i.tz, i64 0
  %i.zo = add <2 x i64> %i.zm, %i.zn
  store <2 x i64> %i.zo, ptr %i.zl, align 8, !tbaa !40
  br label %bb.au

bb.as:                                            ; preds = %bb.ae
  store i32 0, ptr %i.rx, align 4, !tbaa !33
  %i.zp = or disjoint i64 %indvars.iv1210, 1      ; 5 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.zp
  store i32 0, ptr %i.zq, align 4, !tbaa !33
  %i.zr = load ptr, ptr %i.cj, align 8, !tbaa !55 ; 8 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !33
  %i.zt = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 4 uses
  %..i873 = tail call i32 @llvm.smin.i32(i32 %i.zs, i32 %i.zt)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 8 ; 4 uses
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !33
  %i.zw = tail call i32 @llvm.smax.i32(i32 %i.zv, i32 %i.zt)
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zr, i64 4 ; 4 uses
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !33
  %i.zz = tail call i32 @llvm.smin.i32(i32 %i.zy, i32 %i.rn)
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zr, i64 12 ; 4 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !33
  %i.aac = tail call i32 @llvm.smax.i32(i32 %i.aab, i32 %i.rn)
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zr, i64 16 ; 4 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !33
  %i.aaf = load ptr, ptr %i.ck, align 8, !tbaa !50 ; 4 uses
  %i.aag = load i64, ptr %i.aaf, align 8, !tbaa !116
  %i.aah = add i64 %i.aag, %indvars.iv1210
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8 ; 3 uses
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !117
  %2 = trunc nuw nsw i64 %i.zp to i32             ; 4 uses
  %..i876 = tail call i32 @llvm.smin.i32(i32 %..i873, i32 %2)
  store i32 %..i876, ptr %i.zr, align 4, !tbaa !33
  %i.aak = tail call i32 @llvm.umax.i32(i32 %i.zw, i32 %2)
  store i32 %i.aak, ptr %i.zu, align 4, !tbaa !33
  store i32 %i.zz, ptr %i.zx, align 4, !tbaa !33
  store i32 %i.aac, ptr %i.aaa, align 4, !tbaa !33
  %i.aal = add nsw i32 %i.aae, 2
  store i32 %i.aal, ptr %i.aad, align 4, !tbaa !33
  %i.aam = add i64 %i.aah, %i.zp                  ; 2 uses
  store i64 %i.aam, ptr %i.aaf, align 8, !tbaa !116
  %.reass1297 = add i64 %i.aaj, %invariant.op1296 ; 2 uses
  store i64 %.reass1297, ptr %i.aai, align 8, !tbaa !117
  %i.aan = load i32, ptr %i.cl, align 8, !tbaa !39
  %i.aao = icmp sgt i32 %i.aan, %i.ro
  br i1 %i.aao, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv1210
  store i32 0, ptr %i.aap, align 4, !tbaa !33
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.zp
  store i32 0, ptr %i.aaq, align 4, !tbaa !33
  %i.aar = load i32, ptr %i.zr, align 4, !tbaa !33
  %..i879 = tail call i32 @llvm.smin.i32(i32 %i.aar, i32 %i.zt)
  %i.aas = load i32, ptr %i.zu, align 4, !tbaa !33
  %i.aat = tail call i32 @llvm.smax.i32(i32 %i.aas, i32 %i.zt)
  %i.aau = load i32, ptr %i.zx, align 4, !tbaa !33
  %i.aav = tail call i32 @llvm.smin.i32(i32 %i.aau, i32 %i.ro)
  %i.aaw = load i32, ptr %i.aaa, align 4, !tbaa !33
  %i.aax = tail call i32 @llvm.smax.i32(i32 %i.aaw, i32 %i.ro)
  %i.aay = load i32, ptr %i.aad, align 4, !tbaa !33
  %i.aaz = add i64 %i.aam, %indvars.iv1210
  %..i882 = tail call i32 @llvm.smin.i32(i32 %..i879, i32 %2)
  store i32 %..i882, ptr %i.zr, align 4, !tbaa !33
  %i.aba = tail call i32 @llvm.umax.i32(i32 %i.aat, i32 %2)
  store i32 %i.aba, ptr %i.zu, align 4, !tbaa !33
  store i32 %i.aav, ptr %i.zx, align 4, !tbaa !33
  store i32 %i.aax, ptr %i.aaa, align 4, !tbaa !33
  %i.abb = add nsw i32 %i.aay, 2
  store i32 %i.abb, ptr %i.aad, align 4, !tbaa !33
  %i.abc = add i64 %i.aaz, %i.zp
  store i64 %i.abc, ptr %i.aaf, align 8, !tbaa !116
  %.reass1299 = add i64 %.reass1297, %invariant.op1298
  store i64 %.reass1299, ptr %i.aai, align 8, !tbaa !117
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.al, %bb.ar, %bb.aq
  %indvars.iv.next1211 = add nuw nsw i64 %indvars.iv1210, 2 ; 2 uses
  %i.abd = load i32, ptr %i.z, align 4, !tbaa !52
  %i.abe = sext i32 %i.abd to i64
  %i.abf = icmp slt i64 %indvars.iv.next1211, %i.abe
  br i1 %i.abf, label %bb.ae, label %._crit_edge1158, !llvm.loop !428

bb.av:                                            ; preds = %bb.b
  br i1 %.not785, label %.preheader, label %.preheader1109

.preheader1109:                                   ; preds = %bb.av
  br i1 %i.ac, label %.lr.ph1166, label %.loopexit

.lr.ph1166:                                       ; preds = %.preheader1109
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre1238 = load ptr, ptr %i.f, align 8, !tbaa !441 ; 2 uses
  %.phi.trans.insert1239 = getelementptr inbounds nuw i8, ptr %.pre1238, i64 24
  %.pre1240 = load ptr, ptr %.phi.trans.insert1239, align 8, !tbaa !55
  %i.abh = getelementptr inbounds nuw i8, ptr %.pre1238, i64 128
  %i.abi = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !55
  %i.abk = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.abl = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.abm = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 32
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 432
  %i.abp = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 12
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 32
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 136
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abp, i64 432
  %i.abu = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 32
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abu, i64 432
  %i.abx = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 12
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abx, i64 32
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abx, i64 136
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abx, i64 432
  %i.acc = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 32
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acc, i64 432
  %i.acf = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 12
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 32
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acf, i64 136
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acf, i64 432
  %i.ack = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 32
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 432
  %i.acn = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 12
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 32
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acn, i64 136
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acn, i64 432
  %i.acs = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.act = getelementptr inbounds nuw i8, ptr %i.s, i64 432
  br label %bb.aw

.preheader:                                       ; preds = %bb.av
  br i1 %i.ac, label %.lr.ph1173, label %.loopexit

.lr.ph1173:                                       ; preds = %.preheader
  %i.acu = load ptr, ptr %i.f, align 8, !tbaa !441, !nonnull !93, !align !94 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 24
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !55
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acu, i64 128
  %i.acy = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !55
  %i.ada = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.adc = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 4 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.s, i64 136 ; 4 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.s, i64 432 ; 3 uses
  %i.adg = icmp sgt i32 %i.aa, 0
  br i1 %i.adg, label %.lr.ph1173.split, label %.loopexit

bb.aw:                                            ; preds = %.lr.ph1166, %._crit_edge1164
  %indvars.iv1219 = phi i64 [ %i.m, %.lr.ph1166 ], [ %indvars.iv.next1220, %._crit_edge1164 ] ; 13 uses
  %i.adh = load i64, ptr %i.abh, align 8, !tbaa !40 ; 2 uses
  %i.adi = mul i64 %i.adh, %indvars.iv1219
  %i.adj = getelementptr inbounds nuw i8, ptr %.pre1240, i64 %i.adi ; 3 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 %i.adh ; 2 uses
  %i.adl = load i64, ptr %i.abk, align 8, !tbaa !40 ; 2 uses
  %i.adm = mul i64 %i.adl, %indvars.iv1219
  %i.adn = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.adm ; 4 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.adl ; 4 uses
  %i.adp = load i32, ptr %i.abl, align 4, !tbaa !52
  %i.adq = icmp sgt i32 %i.adp, 0
  br i1 %i.adq, label %.lr.ph1163, label %._crit_edge1164

.lr.ph1163:                                       ; preds = %bb.aw
  %i.adr = or disjoint i64 %indvars.iv1219, 1     ; 9 uses
  %i.ads = trunc nuw i64 %indvars.iv1219 to i32   ; 4 uses
  %i.adt = trunc nuw i64 %i.adr to i32            ; 4 uses
  %invariant.op1300 = add nuw i64 %indvars.iv1219, %i.adr
  %invariant.op1302 = add nuw i64 %indvars.iv1219, %i.adr
  %i.adu = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.adv = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.adw = trunc nuw i64 %i.adr to i32            ; 2 uses
  %i.adx = trunc nuw i64 %i.adr to i32            ; 2 uses
  %i.ady = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.adz = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.aea = trunc nuw i64 %i.adr to i32            ; 2 uses
  %i.aeb = trunc nuw i64 %i.adr to i32            ; 2 uses
  %i.aec = insertelement <2 x i64> poison, i64 %i.adr, i64 1 ; 2 uses
  br label %bb.ax

._crit_edge1164:                                  ; preds = %bb.bn, %bb.aw
  %indvars.iv.next1220 = add nuw nsw i64 %indvars.iv1219, 2 ; 2 uses
  %i.aed = trunc nuw i64 %indvars.iv.next1220 to i32
  %i.aee = icmp sgt i32 %.sroa.speculated, %i.aed
  br i1 %i.aee, label %bb.aw, label %.loopexit, !llvm.loop !429

bb.ax:                                            ; preds = %.lr.ph1163, %bb.bn
  %indvars.iv1216 = phi i64 [ 0, %.lr.ph1163 ], [ %indvars.iv.next1217, %bb.bn ] ; 18 uses
  %i.aef = phi ptr [ %i.abl, %.lr.ph1163 ], [ %i.z, %bb.bn ] ; 2 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %indvars.iv1216 ; 4 uses
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !33 ; 2 uses
  %i.aei = icmp sgt i32 %i.aeh, 0
  br i1 %i.aei, label %bb.ay, label %bb.bl

bb.ay:                                            ; preds = %bb.ax
  %i.aej = load ptr, ptr %i.abg, align 8, !tbaa !128
  %i.aek = zext nneg i32 %i.aeh to i64
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.aej, i64 %i.aek
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !33 ; 8 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adj, i64 %indvars.iv1216
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !32
  %.not790 = icmp eq i8 %i.aeo, 0
  br i1 %.not790, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 %i.aem, ptr %i.aeg, align 4, !tbaa !33
  %i.aep = load i32, ptr %i.abq, align 4, !tbaa !96
  %i.aeq = icmp slt i32 %i.aep, 2
  %i.aer = load ptr, ptr %i.abr, align 8, !tbaa !55
  %i.aes = load i64, ptr %i.abs, align 8
  %i.aet = sext i32 %i.aem to i64                 ; 2 uses
  %i.aeu = mul i64 %i.aes, %i.aet
  %.sink.idx.i.i883 = select i1 %i.aeq, i64 0, i64 %i.aeu
  %.sink.i.i884 = getelementptr inbounds nuw i8, ptr %i.aer, i64 %.sink.idx.i.i883 ; 6 uses
  %i.aev = load i32, ptr %.sink.i.i884, align 4, !tbaa !33
  %i.aew = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i885 = tail call i32 @llvm.smin.i32(i32 %i.aev, i32 %i.aew)
  store i32 %..i885, ptr %.sink.i.i884, align 4, !tbaa !33
  %i.aex = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 8 ; 2 uses
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !33
  %i.aez = tail call i32 @llvm.smax.i32(i32 %i.aey, i32 %i.aew)
  store i32 %i.aez, ptr %i.aex, align 4, !tbaa !33
  %i.afa = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 4 ; 2 uses
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !33
  %i.afc = tail call i32 @llvm.smin.i32(i32 %i.afb, i32 %i.adu)
  store i32 %i.afc, ptr %i.afa, align 4, !tbaa !33
  %i.afd = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 12 ; 2 uses
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !33
  %i.aff = tail call i32 @llvm.smax.i32(i32 %i.afe, i32 %i.adu)
  store i32 %i.aff, ptr %i.afd, align 4, !tbaa !33
  %i.afg = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 16 ; 2 uses
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !33
  %i.afi = add nsw i32 %i.afh, 1
  store i32 %i.afi, ptr %i.afg, align 4, !tbaa !33
  %i.afj = load ptr, ptr %i.abt, align 8, !tbaa !50
  %i.afk = getelementptr inbounds nuw [16 x i8], ptr %i.afj, i64 %i.aet ; 3 uses
  %i.afl = load i64, ptr %i.afk, align 8, !tbaa !116
  %i.afm = add i64 %i.afl, %indvars.iv1216
  store i64 %i.afm, ptr %i.afk, align 8, !tbaa !116
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  store i32 0, ptr %i.aeg, align 4, !tbaa !33
  %i.afn = load ptr, ptr %i.abv, align 8, !tbaa !55 ; 6 uses
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !33
  %i.afp = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i888 = tail call i32 @llvm.smin.i32(i32 %i.afo, i32 %i.afp)
  store i32 %..i888, ptr %i.afn, align 4, !tbaa !33
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 8 ; 2 uses
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !33
  %i.afs = tail call i32 @llvm.smax.i32(i32 %i.afr, i32 %i.afp)
  store i32 %i.afs, ptr %i.afq, align 4, !tbaa !33
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afn, i64 4 ; 2 uses
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !33
  %i.afv = tail call i32 @llvm.smin.i32(i32 %i.afu, i32 %i.adv)
  store i32 %i.afv, ptr %i.aft, align 4, !tbaa !33
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afn, i64 12 ; 2 uses
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !33
  %i.afy = tail call i32 @llvm.smax.i32(i32 %i.afx, i32 %i.adv)
  store i32 %i.afy, ptr %i.afw, align 4, !tbaa !33
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afn, i64 16 ; 2 uses
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !33
  %i.agb = add nsw i32 %i.aga, 1
  store i32 %i.agb, ptr %i.afz, align 4, !tbaa !33
  %i.agc = load ptr, ptr %i.abw, align 8, !tbaa !50 ; 3 uses
  %i.agd = load i64, ptr %i.agc, align 8, !tbaa !116
  %i.age = add i64 %i.agd, %indvars.iv1216
  store i64 %i.age, ptr %i.agc, align 8, !tbaa !116
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink1330 = phi ptr [ %i.agc, %bb.ba ], [ %i.afk, %bb.az ]
  %i.agf = getelementptr inbounds nuw i8, ptr %.sink1330, i64 8 ; 2 uses
  %i.agg = load i64, ptr %i.agf, align 8, !tbaa !117
  %i.agh = add i64 %i.agg, %indvars.iv1219
  store i64 %i.agh, ptr %i.agf, align 8, !tbaa !117
  %i.agi = getelementptr inbounds nuw i8, ptr %i.adk, i64 %indvars.iv1216
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !32
  %.not791 = icmp eq i8 %i.agj, 0
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %indvars.iv1216 ; 2 uses
  br i1 %.not791, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.aem, ptr %i.agk, align 4, !tbaa !33
  %i.agl = load i32, ptr %i.aby, align 4, !tbaa !96
  %i.agm = icmp slt i32 %i.agl, 2
  %i.agn = load ptr, ptr %i.abz, align 8, !tbaa !55
  %i.ago = load i64, ptr %i.aca, align 8
  %i.agp = sext i32 %i.aem to i64                 ; 2 uses
  %i.agq = mul i64 %i.ago, %i.agp
  %.sink.idx.i.i889 = select i1 %i.agm, i64 0, i64 %i.agq
  %.sink.i.i890 = getelementptr inbounds nuw i8, ptr %i.agn, i64 %.sink.idx.i.i889 ; 6 uses
  %i.agr = load i32, ptr %.sink.i.i890, align 4, !tbaa !33
  %i.ags = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i891 = tail call i32 @llvm.smin.i32(i32 %i.agr, i32 %i.ags)
  store i32 %..i891, ptr %.sink.i.i890, align 4, !tbaa !33
  %i.agt = getelementptr inbounds nuw i8, ptr %.sink.i.i890, i64 8 ; 2 uses
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !33
  %i.agv = tail call i32 @llvm.smax.i32(i32 %i.agu, i32 %i.ags)
  store i32 %i.agv, ptr %i.agt, align 4, !tbaa !33
  %i.agw = getelementptr inbounds nuw i8, ptr %.sink.i.i890, i64 4 ; 2 uses
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !33
  %i.agy = tail call i32 @llvm.smin.i32(i32 %i.agx, i32 %i.adw)
  store i32 %i.agy, ptr %i.agw, align 4, !tbaa !33
  %i.agz = getelementptr inbounds nuw i8, ptr %.sink.i.i890, i64 12 ; 2 uses
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !33
  %i.ahb = tail call i32 @llvm.smax.i32(i32 %i.aha, i32 %i.adw)
  store i32 %i.ahb, ptr %i.agz, align 4, !tbaa !33
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sink.i.i890, i64 16 ; 2 uses
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !33
  %i.ahe = add nsw i32 %i.ahd, 1
  store i32 %i.ahe, ptr %i.ahc, align 4, !tbaa !33
  %i.ahf = load ptr, ptr %i.acb, align 8, !tbaa !50
  %i.ahg = getelementptr inbounds nuw [16 x i8], ptr %i.ahf, i64 %i.agp ; 3 uses
  %i.ahh = load i64, ptr %i.ahg, align 8, !tbaa !116
  %i.ahi = add i64 %i.ahh, %indvars.iv1216
  store i64 %i.ahi, ptr %i.ahg, align 8, !tbaa !116
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  store i32 0, ptr %i.agk, align 4, !tbaa !33
  %i.ahj = load ptr, ptr %i.acd, align 8, !tbaa !55 ; 6 uses
  %i.ahk = load i32, ptr %i.ahj, align 4, !tbaa !33
  %i.ahl = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i894 = tail call i32 @llvm.smin.i32(i32 %i.ahk, i32 %i.ahl)
  store i32 %..i894, ptr %i.ahj, align 4, !tbaa !33
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8 ; 2 uses
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !33
  %i.aho = tail call i32 @llvm.smax.i32(i32 %i.ahn, i32 %i.ahl)
  store i32 %i.aho, ptr %i.ahm, align 4, !tbaa !33
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4 ; 2 uses
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !33
  %i.ahr = tail call i32 @llvm.smin.i32(i32 %i.ahq, i32 %i.adx)
  store i32 %i.ahr, ptr %i.ahp, align 4, !tbaa !33
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahj, i64 12 ; 2 uses
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !33
  %i.ahu = tail call i32 @llvm.smax.i32(i32 %i.aht, i32 %i.adx)
  store i32 %i.ahu, ptr %i.ahs, align 4, !tbaa !33
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16 ; 2 uses
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !33
  %i.ahx = add nsw i32 %i.ahw, 1
  store i32 %i.ahx, ptr %i.ahv, align 4, !tbaa !33
  %i.ahy = load ptr, ptr %i.ace, align 8, !tbaa !50 ; 3 uses
  %i.ahz = load i64, ptr %i.ahy, align 8, !tbaa !116
  %i.aia = add i64 %i.ahz, %indvars.iv1216
  store i64 %i.aia, ptr %i.ahy, align 8, !tbaa !116
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink1333 = phi ptr [ %i.ahy, %bb.bd ], [ %i.ahg, %bb.bc ]
  %i.aib = getelementptr inbounds nuw i8, ptr %.sink1333, i64 8 ; 2 uses
  %i.aic = load i64, ptr %i.aib, align 8, !tbaa !117
  %i.aid = add i64 %i.aic, %i.adr
  store i64 %i.aid, ptr %i.aib, align 8, !tbaa !117
  %i.aie = or disjoint i64 %indvars.iv1216, 1     ; 13 uses
  %i.aif = load i32, ptr %i.aef, align 4, !tbaa !52
  %i.aig = sext i32 %i.aif to i64
  %i.aih = icmp slt i64 %i.aie, %i.aig
  br i1 %i.aih, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %bb.be
  %i.aii = getelementptr inbounds nuw i8, ptr %i.adj, i64 %i.aie
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !32
  %.not792 = icmp eq i8 %i.aij, 0
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %i.aie ; 2 uses
  br i1 %.not792, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.aem, ptr %i.aik, align 4, !tbaa !33
  %i.ail = load i32, ptr %i.acg, align 4, !tbaa !96
  %i.aim = icmp slt i32 %i.ail, 2
  %i.ain = load ptr, ptr %i.ach, align 8, !tbaa !55
  %i.aio = load i64, ptr %i.aci, align 8
  %i.aip = sext i32 %i.aem to i64                 ; 2 uses
  %i.aiq = mul i64 %i.aio, %i.aip
  %.sink.idx.i.i895 = select i1 %i.aim, i64 0, i64 %i.aiq
  %.sink.i.i896 = getelementptr inbounds nuw i8, ptr %i.ain, i64 %.sink.idx.i.i895 ; 6 uses
  %i.air = load i32, ptr %.sink.i.i896, align 4, !tbaa !33
  %i.ais = trunc nuw nsw i64 %i.aie to i32        ; 2 uses
  %..i897 = tail call i32 @llvm.smin.i32(i32 %i.air, i32 %i.ais)
  store i32 %..i897, ptr %.sink.i.i896, align 4, !tbaa !33
  %i.ait = getelementptr inbounds nuw i8, ptr %.sink.i.i896, i64 8 ; 2 uses
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !33
  %i.aiv = tail call i32 @llvm.smax.i32(i32 %i.aiu, i32 %i.ais)
  store i32 %i.aiv, ptr %i.ait, align 4, !tbaa !33
  %i.aiw = getelementptr inbounds nuw i8, ptr %.sink.i.i896, i64 4 ; 2 uses
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !33
  %i.aiy = tail call i32 @llvm.smin.i32(i32 %i.aix, i32 %i.ady)
  store i32 %i.aiy, ptr %i.aiw, align 4, !tbaa !33
  %i.aiz = getelementptr inbounds nuw i8, ptr %.sink.i.i896, i64 12 ; 2 uses
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !33
  %i.ajb = tail call i32 @llvm.smax.i32(i32 %i.aja, i32 %i.ady)
  store i32 %i.ajb, ptr %i.aiz, align 4, !tbaa !33
  %i.ajc = getelementptr inbounds nuw i8, ptr %.sink.i.i896, i64 16 ; 2 uses
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !33
  %i.aje = add nsw i32 %i.ajd, 1
  store i32 %i.aje, ptr %i.ajc, align 4, !tbaa !33
  %i.ajf = load ptr, ptr %i.acj, align 8, !tbaa !50
  %i.ajg = getelementptr inbounds nuw [16 x i8], ptr %i.ajf, i64 %i.aip ; 3 uses
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !116
  %i.aji = add i64 %i.ajh, %i.aie
  store i64 %i.aji, ptr %i.ajg, align 8, !tbaa !116
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  store i32 0, ptr %i.aik, align 4, !tbaa !33
  %i.ajj = load ptr, ptr %i.acl, align 8, !tbaa !55 ; 6 uses
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !33
  %i.ajl = trunc nuw nsw i64 %i.aie to i32        ; 2 uses
  %..i900 = tail call i32 @llvm.smin.i32(i32 %i.ajk, i32 %i.ajl)
  store i32 %..i900, ptr %i.ajj, align 4, !tbaa !33
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8 ; 2 uses
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !33
  %i.ajo = tail call i32 @llvm.smax.i32(i32 %i.ajn, i32 %i.ajl)
  store i32 %i.ajo, ptr %i.ajm, align 4, !tbaa !33
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajj, i64 4 ; 2 uses
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !33
  %i.ajr = tail call i32 @llvm.smin.i32(i32 %i.ajq, i32 %i.adz)
  store i32 %i.ajr, ptr %i.ajp, align 4, !tbaa !33
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajj, i64 12 ; 2 uses
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !33
  %i.aju = tail call i32 @llvm.smax.i32(i32 %i.ajt, i32 %i.adz)
  store i32 %i.aju, ptr %i.ajs, align 4, !tbaa !33
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajj, i64 16 ; 2 uses
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !33
  %i.ajx = add nsw i32 %i.ajw, 1
  store i32 %i.ajx, ptr %i.ajv, align 4, !tbaa !33
  %i.ajy = load ptr, ptr %i.acm, align 8, !tbaa !50 ; 3 uses
  %i.ajz = load i64, ptr %i.ajy, align 8, !tbaa !116
  %i.aka = add i64 %i.ajz, %i.aie
  store i64 %i.aka, ptr %i.ajy, align 8, !tbaa !116
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sink1336 = phi ptr [ %i.ajy, %bb.bh ], [ %i.ajg, %bb.bg ]
  %i.akb = getelementptr inbounds nuw i8, ptr %.sink1336, i64 8 ; 2 uses
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !117
  %i.akd = add i64 %i.akc, %indvars.iv1219
  store i64 %i.akd, ptr %i.akb, align 8, !tbaa !117
  %i.ake = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.aie
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !32
  %.not793 = icmp eq i8 %i.akf, 0
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %i.aie ; 2 uses
  br i1 %.not793, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.aem, ptr %i.akg, align 4, !tbaa !33
  %i.akh = load i32, ptr %i.aco, align 4, !tbaa !96
  %i.aki = icmp slt i32 %i.akh, 2
  %i.akj = load ptr, ptr %i.acp, align 8, !tbaa !55
  %i.akk = load i64, ptr %i.acq, align 8
  %i.akl = sext i32 %i.aem to i64                 ; 2 uses
  %i.akm = mul i64 %i.akk, %i.akl
  %.sink.idx.i.i901 = select i1 %i.aki, i64 0, i64 %i.akm
  %.sink.i.i902 = getelementptr inbounds nuw i8, ptr %i.akj, i64 %.sink.idx.i.i901 ; 6 uses
  %i.akn = load i32, ptr %.sink.i.i902, align 4, !tbaa !33
  %i.ako = trunc nuw nsw i64 %i.aie to i32        ; 2 uses
  %..i903 = tail call i32 @llvm.smin.i32(i32 %i.akn, i32 %i.ako)
  store i32 %..i903, ptr %.sink.i.i902, align 4, !tbaa !33
  %i.akp = getelementptr inbounds nuw i8, ptr %.sink.i.i902, i64 8 ; 2 uses
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !33
  %i.akr = tail call i32 @llvm.smax.i32(i32 %i.akq, i32 %i.ako)
  store i32 %i.akr, ptr %i.akp, align 4, !tbaa !33
  %i.aks = getelementptr inbounds nuw i8, ptr %.sink.i.i902, i64 4 ; 2 uses
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !33
  %i.aku = tail call i32 @llvm.smin.i32(i32 %i.akt, i32 %i.aea)
  store i32 %i.aku, ptr %i.aks, align 4, !tbaa !33
  %i.akv = getelementptr inbounds nuw i8, ptr %.sink.i.i902, i64 12 ; 2 uses
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !33
  %i.akx = tail call i32 @llvm.smax.i32(i32 %i.akw, i32 %i.aea)
  store i32 %i.akx, ptr %i.akv, align 4, !tbaa !33
  %i.aky = getelementptr inbounds nuw i8, ptr %.sink.i.i902, i64 16 ; 2 uses
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !33
  %i.ala = add nsw i32 %i.akz, 1
  store i32 %i.ala, ptr %i.aky, align 4, !tbaa !33
  %i.alb = load ptr, ptr %i.acr, align 8, !tbaa !50
  %i.alc = getelementptr inbounds nuw [16 x i8], ptr %i.alb, i64 %i.akl ; 2 uses
  %i.ald = load <2 x i64>, ptr %i.alc, align 8, !tbaa !40
  %i.ale = insertelement <2 x i64> %i.aec, i64 %i.aie, i64 0
  %i.alf = add <2 x i64> %i.ald, %i.ale
  store <2 x i64> %i.alf, ptr %i.alc, align 8, !tbaa !40
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  store i32 0, ptr %i.akg, align 4, !tbaa !33
  %i.alg = load ptr, ptr %i.acs, align 8, !tbaa !55 ; 6 uses
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !33
  %i.ali = trunc nuw nsw i64 %i.aie to i32        ; 2 uses
  %..i906 = tail call i32 @llvm.smin.i32(i32 %i.alh, i32 %i.ali)
  store i32 %..i906, ptr %i.alg, align 4, !tbaa !33
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alg, i64 8 ; 2 uses
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !33
  %i.all = tail call i32 @llvm.smax.i32(i32 %i.alk, i32 %i.ali)
  store i32 %i.all, ptr %i.alj, align 4, !tbaa !33
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alg, i64 4 ; 2 uses
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !33
  %i.alo = tail call i32 @llvm.smin.i32(i32 %i.aln, i32 %i.aeb)
  store i32 %i.alo, ptr %i.alm, align 4, !tbaa !33
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alg, i64 12 ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !33
  %i.alr = tail call i32 @llvm.smax.i32(i32 %i.alq, i32 %i.aeb)
  store i32 %i.alr, ptr %i.alp, align 4, !tbaa !33
  %i.als = getelementptr inbounds nuw i8, ptr %i.alg, i64 16 ; 2 uses
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !33
  %i.alu = add nsw i32 %i.alt, 1
  store i32 %i.alu, ptr %i.als, align 4, !tbaa !33
  %i.alv = load ptr, ptr %i.act, align 8, !tbaa !50 ; 2 uses
  %i.alw = load <2 x i64>, ptr %i.alv, align 8, !tbaa !40
  %i.alx = insertelement <2 x i64> %i.aec, i64 %i.aie, i64 0
  %i.aly = add <2 x i64> %i.alw, %i.alx
  store <2 x i64> %i.aly, ptr %i.alv, align 8, !tbaa !40
  br label %bb.bn

bb.bl:                                            ; preds = %bb.ax
  store i32 0, ptr %i.aeg, align 4, !tbaa !33
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %indvars.iv1216
  store i32 0, ptr %i.alz, align 4, !tbaa !33
  %i.ama = load ptr, ptr %i.abn, align 8, !tbaa !55 ; 8 uses
  %i.amb = load i32, ptr %i.ama, align 4, !tbaa !33
  %i.amc = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i909 = tail call i32 @llvm.smin.i32(i32 %i.amb, i32 %i.amc)
  %i.amd = getelementptr inbounds nuw i8, ptr %i.ama, i64 8 ; 4 uses
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !33
  %i.amf = tail call i32 @llvm.smax.i32(i32 %i.ame, i32 %i.amc)
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ama, i64 4 ; 4 uses
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !33
  %i.ami = tail call i32 @llvm.smin.i32(i32 %i.amh, i32 %i.ads)
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ama, i64 12 ; 4 uses
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !33
  %i.aml = tail call i32 @llvm.smax.i32(i32 %i.amk, i32 %i.ads)
  %i.amm = getelementptr inbounds nuw i8, ptr %i.ama, i64 16 ; 4 uses
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !33
  %i.amo = load ptr, ptr %i.abo, align 8, !tbaa !50 ; 4 uses
  %i.amp = load i64, ptr %i.amo, align 8, !tbaa !116
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 8 ; 3 uses
  %i.amr = load i64, ptr %i.amq, align 8, !tbaa !117
  store i32 %..i909, ptr %i.ama, align 4, !tbaa !33
  store i32 %i.amf, ptr %i.amd, align 4, !tbaa !33
  %3 = tail call i32 @llvm.smin.i32(i32 %i.ami, i32 %i.adt)
  store i32 %3, ptr %i.amg, align 4, !tbaa !33
  %i.ams = tail call i32 @llvm.smax.i32(i32 %i.aml, i32 %i.adt)
  store i32 %i.ams, ptr %i.amj, align 4, !tbaa !33
  %i.amt = add nsw i32 %i.amn, 2
  store i32 %i.amt, ptr %i.amm, align 4, !tbaa !33
  %reass.add1385 = shl nuw i64 %indvars.iv1216, 1
  %i.amu = add i64 %i.amp, %reass.add1385         ; 2 uses
  store i64 %i.amu, ptr %i.amo, align 8, !tbaa !116
  %.reass1301 = add i64 %i.amr, %invariant.op1300 ; 2 uses
  store i64 %.reass1301, ptr %i.amq, align 8, !tbaa !117
  %i.amv = or disjoint i64 %indvars.iv1216, 1     ; 5 uses
  %i.amw = load i32, ptr %i.aef, align 4, !tbaa !52
  %i.amx = sext i32 %i.amw to i64
  %i.amy = icmp slt i64 %i.amv, %i.amx
  br i1 %i.amy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %i.amv
  store i32 0, ptr %i.amz, align 4, !tbaa !33
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %i.amv
  store i32 0, ptr %i.ana, align 4, !tbaa !33
  %i.anb = load i32, ptr %i.ama, align 4, !tbaa !33
  %i.anc = trunc nuw nsw i64 %i.amv to i32        ; 2 uses
  %..i915 = tail call i32 @llvm.smin.i32(i32 %i.anb, i32 %i.anc)
  %i.and = load i32, ptr %i.amd, align 4, !tbaa !33
  %i.ane = tail call i32 @llvm.smax.i32(i32 %i.and, i32 %i.anc)
  %i.anf = load i32, ptr %i.amg, align 4, !tbaa !33
  %i.ang = tail call i32 @llvm.smin.i32(i32 %i.anf, i32 %i.ads)
  %i.anh = load i32, ptr %i.amj, align 4, !tbaa !33
  %i.ani = tail call i32 @llvm.smax.i32(i32 %i.anh, i32 %i.ads)
  %i.anj = load i32, ptr %i.amm, align 4, !tbaa !33
  store i32 %..i915, ptr %i.ama, align 4, !tbaa !33
  store i32 %i.ane, ptr %i.amd, align 4, !tbaa !33
  %4 = tail call i32 @llvm.smin.i32(i32 %i.ang, i32 %i.adt)
  store i32 %4, ptr %i.amg, align 4, !tbaa !33
  %i.ank = tail call i32 @llvm.smax.i32(i32 %i.ani, i32 %i.adt)
  store i32 %i.ank, ptr %i.amj, align 4, !tbaa !33
  %i.anl = add nsw i32 %i.anj, 2
  store i32 %i.anl, ptr %i.amm, align 4, !tbaa !33
  %reass.add1386 = shl nuw i64 %i.amv, 1
  %i.anm = add i64 %i.amu, %reass.add1386
  store i64 %i.anm, ptr %i.amo, align 8, !tbaa !116
  %.reass1303 = add i64 %.reass1301, %invariant.op1302
  store i64 %.reass1303, ptr %i.amq, align 8, !tbaa !117
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.be, %bb.bk, %bb.bj
  %indvars.iv.next1217 = add nuw nsw i64 %indvars.iv1216, 2 ; 2 uses
  %i.ann = load i32, ptr %i.z, align 4, !tbaa !52
  %i.ano = sext i32 %i.ann to i64
  %i.anp = icmp slt i64 %indvars.iv.next1217, %i.ano
  br i1 %i.anp, label %bb.ax, label %._crit_edge1164, !llvm.loop !430

.lr.ph1173.split:                                 ; preds = %.lr.ph1173, %._crit_edge1171
  %i.anq = phi i32 [ %i.aom, %._crit_edge1171 ], [ %i.aa, %.lr.ph1173 ] ; 2 uses
  %indvars.iv1225 = phi i64 [ %indvars.iv.next1226, %._crit_edge1171 ], [ %i.m, %.lr.ph1173 ] ; 12 uses
  %i.anr = load i64, ptr %i.acx, align 8, !tbaa !40 ; 2 uses
  %i.ans = mul i64 %i.anr, %indvars.iv1225
  %i.ant = getelementptr inbounds nuw i8, ptr %i.acw, i64 %i.ans ; 3 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.anr ; 2 uses
  %i.anv = load i64, ptr %i.ada, align 8, !tbaa !40 ; 2 uses
  %i.anw = mul i64 %i.anv, %indvars.iv1225
  %i.anx = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.anw ; 4 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 %i.anv ; 4 uses
  %i.anz = icmp sgt i32 %i.anq, 0
  br i1 %i.anz, label %.lr.ph1170, label %._crit_edge1171

.lr.ph1170:                                       ; preds = %.lr.ph1173.split
  %i.aoa = or disjoint i64 %indvars.iv1225, 1     ; 8 uses
  %i.aob = trunc nuw i64 %indvars.iv1225 to i32   ; 2 uses
  %i.aoc = trunc nuw i64 %i.aoa to i32            ; 2 uses
  %invariant.op13041388 = add nuw i64 %indvars.iv1225, %i.aoa
  %invariant.op1308 = shl i64 %invariant.op13041388, 1
  %i.aod = trunc nuw i64 %indvars.iv1225 to i32   ; 2 uses
  %i.aoe = trunc nuw i64 %indvars.iv1225 to i32   ; 2 uses
  %i.aof = trunc nuw i64 %indvars.iv1225 to i32   ; 2 uses
  %i.aog = trunc nuw i64 %indvars.iv1225 to i32   ; 2 uses
  %i.aoh = trunc nuw i64 %i.aoa to i32            ; 2 uses
  %i.aoi = trunc nuw i64 %i.aoa to i32            ; 2 uses
  %i.aoj = trunc nuw i64 %i.aoa to i32            ; 2 uses
  %i.aok = trunc nuw i64 %i.aoa to i32            ; 2 uses
  %i.aol = insertelement <2 x i64> poison, i64 %i.aoa, i64 1 ; 2 uses
  br label %bb.bo

._crit_edge1171:                                  ; preds = %bb.cc, %.lr.ph1173.split
  %i.aom = phi i32 [ %i.anq, %.lr.ph1173.split ], [ %i.awz, %bb.cc ]
  %indvars.iv.next1226 = add nuw nsw i64 %indvars.iv1225, 2 ; 2 uses
  %i.aon = trunc nuw i64 %indvars.iv.next1226 to i32
  %i.aoo = icmp sgt i32 %.sroa.speculated, %i.aon
  br i1 %i.aoo, label %.lr.ph1173.split, label %.loopexit, !llvm.loop !431

bb.bo:                                            ; preds = %.lr.ph1170, %bb.cc
  %indvars.iv1222 = phi i64 [ 0, %.lr.ph1170 ], [ %indvars.iv.next1223, %bb.cc ] ; 19 uses
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %indvars.iv1222 ; 4 uses
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !33 ; 2 uses
  %i.aor = icmp sgt i32 %i.aoq, 0
  br i1 %i.aor, label %bb.bp, label %bb.cb

bb.bp:                                            ; preds = %bb.bo
  %i.aos = load ptr, ptr %i.adb, align 8, !tbaa !128
  %i.aot = zext nneg i32 %i.aoq to i64
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.aot
  %i.aov = load i32, ptr %i.aou, align 4, !tbaa !33 ; 8 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.ant, i64 %indvars.iv1222
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !32
  %.not786 = icmp eq i8 %i.aox, 0
  br i1 %.not786, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 %i.aov, ptr %i.aop, align 4, !tbaa !33
  %i.aoy = load i32, ptr %i.adc, align 4, !tbaa !96
  %i.aoz = icmp slt i32 %i.aoy, 2
  %i.apa = load ptr, ptr %i.add, align 8, !tbaa !55 ; 2 uses
  %i.apb = load i64, ptr %i.ade, align 8
  %i.apc = sext i32 %i.aov to i64                 ; 2 uses
  %i.apd = mul i64 %i.apb, %i.apc
  %.sink.idx.i.i919 = select i1 %i.aoz, i64 0, i64 %i.apd
  %.sink.i.i920 = getelementptr inbounds nuw i8, ptr %i.apa, i64 %.sink.idx.i.i919 ; 6 uses
  %i.ape = load i32, ptr %.sink.i.i920, align 4, !tbaa !33
  %i.apf = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %..i921 = tail call i32 @llvm.smin.i32(i32 %i.ape, i32 %i.apf)
  store i32 %..i921, ptr %.sink.i.i920, align 4, !tbaa !33
  %i.apg = getelementptr inbounds nuw i8, ptr %.sink.i.i920, i64 8 ; 2 uses
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !33
  %i.api = tail call i32 @llvm.smax.i32(i32 %i.aph, i32 %i.apf)
  store i32 %i.api, ptr %i.apg, align 4, !tbaa !33
  %i.apj = getelementptr inbounds nuw i8, ptr %.sink.i.i920, i64 4 ; 2 uses
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !33
  %i.apl = tail call i32 @llvm.smin.i32(i32 %i.apk, i32 %i.aod)
  store i32 %i.apl, ptr %i.apj, align 4, !tbaa !33
  %i.apm = getelementptr inbounds nuw i8, ptr %.sink.i.i920, i64 12 ; 2 uses
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !33
  %i.apo = tail call i32 @llvm.smax.i32(i32 %i.apn, i32 %i.aod)
  store i32 %i.apo, ptr %i.apm, align 4, !tbaa !33
  %i.app = getelementptr inbounds nuw i8, ptr %.sink.i.i920, i64 16 ; 2 uses
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !33
  %i.apr = add nsw i32 %i.apq, 1
  store i32 %i.apr, ptr %i.app, align 4, !tbaa !33
  %i.aps = load ptr, ptr %i.adf, align 8, !tbaa !50 ; 2 uses
  %i.apt = getelementptr inbounds nuw [16 x i8], ptr %i.aps, i64 %i.apc ; 3 uses
  %i.apu = load i64, ptr %i.apt, align 8, !tbaa !116
  %i.apv = add i64 %i.apu, %indvars.iv1222
  store i64 %i.apv, ptr %i.apt, align 8, !tbaa !116
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  store i32 0, ptr %i.aop, align 4, !tbaa !33
  %i.apw = load ptr, ptr %i.add, align 8, !tbaa !55 ; 7 uses
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !33
  %i.apy = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %..i924 = tail call i32 @llvm.smin.i32(i32 %i.apx, i32 %i.apy)
  store i32 %..i924, ptr %i.apw, align 4, !tbaa !33
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apw, i64 8 ; 2 uses
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !33
  %i.aqb = tail call i32 @llvm.smax.i32(i32 %i.aqa, i32 %i.apy)
  store i32 %i.aqb, ptr %i.apz, align 4, !tbaa !33
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apw, i64 4 ; 2 uses
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !33
  %i.aqe = tail call i32 @llvm.smin.i32(i32 %i.aqd, i32 %i.aoe)
  store i32 %i.aqe, ptr %i.aqc, align 4, !tbaa !33
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apw, i64 12 ; 2 uses
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !33
  %i.aqh = tail call i32 @llvm.smax.i32(i32 %i.aqg, i32 %i.aoe)
  store i32 %i.aqh, ptr %i.aqf, align 4, !tbaa !33
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.apw, i64 16 ; 2 uses
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !33
  %i.aqk = add nsw i32 %i.aqj, 1
  store i32 %i.aqk, ptr %i.aqi, align 4, !tbaa !33
  %i.aql = load ptr, ptr %i.adf, align 8, !tbaa !50 ; 4 uses
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !116
  %i.aqn = add i64 %i.aqm, %indvars.iv1222
  store i64 %i.aqn, ptr %i.aql, align 8, !tbaa !116
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sink1339 = phi ptr [ %i.aql, %bb.br ], [ %i.apt, %bb.bq ]
  %i.aqo = phi ptr [ %i.aql, %bb.br ], [ %i.aps, %bb.bq ] ; 11 uses
  %i.aqp = phi ptr [ %i.apw, %bb.br ], [ %i.apa, %bb.bq ] ; 21 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %.sink1339, i64 8 ; 2 uses
  %i.aqr = load i64, ptr %i.aqq, align 8, !tbaa !117
  %i.aqs = add i64 %i.aqr, %indvars.iv1225
  store i64 %i.aqs, ptr %i.aqq, align 8, !tbaa !117
  %i.aqt = or disjoint i64 %indvars.iv1222, 1     ; 12 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.aqt
  %i.aqv = load i8, ptr %i.aqu, align 1, !tbaa !32
  %.not787 = icmp eq i8 %i.aqv, 0
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %i.aqt ; 2 uses
  br i1 %.not787, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 %i.aov, ptr %i.aqw, align 4, !tbaa !33
  %i.aqx = load i32, ptr %i.adc, align 4, !tbaa !96
  %i.aqy = icmp slt i32 %i.aqx, 2
  %i.aqz = load i64, ptr %i.ade, align 8
  %i.ara = sext i32 %i.aov to i64                 ; 2 uses
  %i.arb = mul i64 %i.aqz, %i.ara
  %.sink.idx.i.i925 = select i1 %i.aqy, i64 0, i64 %i.arb
  %.sink.i.i926 = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %.sink.idx.i.i925 ; 6 uses
  %i.arc = load i32, ptr %.sink.i.i926, align 4, !tbaa !33
  %i.ard = trunc nuw nsw i64 %i.aqt to i32        ; 2 uses
  %..i927 = tail call i32 @llvm.smin.i32(i32 %i.arc, i32 %i.ard)
  store i32 %..i927, ptr %.sink.i.i926, align 4, !tbaa !33
  %i.are = getelementptr inbounds nuw i8, ptr %.sink.i.i926, i64 8 ; 2 uses
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !33
  %i.arg = tail call i32 @llvm.smax.i32(i32 %i.arf, i32 %i.ard)
  store i32 %i.arg, ptr %i.are, align 4, !tbaa !33
  %i.arh = getelementptr inbounds nuw i8, ptr %.sink.i.i926, i64 4 ; 2 uses
  %i.ari = load i32, ptr %i.arh, align 4, !tbaa !33
  %i.arj = tail call i32 @llvm.smin.i32(i32 %i.ari, i32 %i.aof)
  store i32 %i.arj, ptr %i.arh, align 4, !tbaa !33
  %i.ark = getelementptr inbounds nuw i8, ptr %.sink.i.i926, i64 12 ; 2 uses
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !33
  %i.arm = tail call i32 @llvm.smax.i32(i32 %i.arl, i32 %i.aof)
  store i32 %i.arm, ptr %i.ark, align 4, !tbaa !33
  %i.arn = getelementptr inbounds nuw i8, ptr %.sink.i.i926, i64 16 ; 2 uses
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !33
  %i.arp = add nsw i32 %i.aro, 1
  store i32 %i.arp, ptr %i.arn, align 4, !tbaa !33
  %i.arq = getelementptr inbounds nuw [16 x i8], ptr %i.aqo, i64 %i.ara ; 3 uses
  %i.arr = load i64, ptr %i.arq, align 8, !tbaa !116
  %i.ars = add i64 %i.arr, %i.aqt
  store i64 %i.ars, ptr %i.arq, align 8, !tbaa !116
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  store i32 0, ptr %i.aqw, align 4, !tbaa !33
  %i.art = load i32, ptr %i.aqp, align 4, !tbaa !33
  %i.aru = trunc nuw nsw i64 %i.aqt to i32        ; 2 uses
  %..i930 = tail call i32 @llvm.smin.i32(i32 %i.art, i32 %i.aru)
  store i32 %..i930, ptr %i.aqp, align 4, !tbaa !33
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8 ; 2 uses
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !33
  %i.arx = tail call i32 @llvm.smax.i32(i32 %i.arw, i32 %i.aru)
  store i32 %i.arx, ptr %i.arv, align 4, !tbaa !33
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4 ; 2 uses
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !33
  %i.asa = tail call i32 @llvm.smin.i32(i32 %i.arz, i32 %i.aog)
  store i32 %i.asa, ptr %i.ary, align 4, !tbaa !33
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aqp, i64 12 ; 2 uses
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !33
  %i.asd = tail call i32 @llvm.smax.i32(i32 %i.asc, i32 %i.aog)
  store i32 %i.asd, ptr %i.asb, align 4, !tbaa !33
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16 ; 2 uses
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !33
  %i.asg = add nsw i32 %i.asf, 1
  store i32 %i.asg, ptr %i.ase, align 4, !tbaa !33
  %i.ash = load i64, ptr %i.aqo, align 8, !tbaa !116
  %i.asi = add i64 %i.ash, %i.aqt
  store i64 %i.asi, ptr %i.aqo, align 8, !tbaa !116
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sink1342 = phi ptr [ %i.aqo, %bb.bu ], [ %i.arq, %bb.bt ]
  %i.asj = getelementptr inbounds nuw i8, ptr %.sink1342, i64 8 ; 2 uses
  %i.ask = load i64, ptr %i.asj, align 8, !tbaa !117
  %i.asl = add i64 %i.ask, %indvars.iv1225
  store i64 %i.asl, ptr %i.asj, align 8, !tbaa !117
  %i.asm = getelementptr inbounds nuw i8, ptr %i.anu, i64 %indvars.iv1222
  %i.asn = load i8, ptr %i.asm, align 1, !tbaa !32
  %.not788 = icmp eq i8 %i.asn, 0
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %indvars.iv1222 ; 2 uses
  br i1 %.not788, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i32 %i.aov, ptr %i.aso, align 4, !tbaa !33
  %i.asp = load i32, ptr %i.adc, align 4, !tbaa !96
  %i.asq = icmp slt i32 %i.asp, 2
  %i.asr = load i64, ptr %i.ade, align 8
  %i.ass = sext i32 %i.aov to i64                 ; 2 uses
  %i.ast = mul i64 %i.asr, %i.ass
  %.sink.idx.i.i931 = select i1 %i.asq, i64 0, i64 %i.ast
  %.sink.i.i932 = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %.sink.idx.i.i931 ; 6 uses
  %i.asu = load i32, ptr %.sink.i.i932, align 4, !tbaa !33
  %i.asv = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %..i933 = tail call i32 @llvm.smin.i32(i32 %i.asu, i32 %i.asv)
  store i32 %..i933, ptr %.sink.i.i932, align 4, !tbaa !33
  %i.asw = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 8 ; 2 uses
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !33
  %i.asy = tail call i32 @llvm.smax.i32(i32 %i.asx, i32 %i.asv)
  store i32 %i.asy, ptr %i.asw, align 4, !tbaa !33
  %i.asz = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 4 ; 2 uses
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !33
  %i.atb = tail call i32 @llvm.smin.i32(i32 %i.ata, i32 %i.aoh)
  store i32 %i.atb, ptr %i.asz, align 4, !tbaa !33
  %i.atc = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 12 ; 2 uses
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !33
  %i.ate = tail call i32 @llvm.smax.i32(i32 %i.atd, i32 %i.aoh)
  store i32 %i.ate, ptr %i.atc, align 4, !tbaa !33
  %i.atf = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 16 ; 2 uses
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !33
  %i.ath = add nsw i32 %i.atg, 1
  store i32 %i.ath, ptr %i.atf, align 4, !tbaa !33
  %i.ati = getelementptr inbounds nuw [16 x i8], ptr %i.aqo, i64 %i.ass ; 3 uses
  %i.atj = load i64, ptr %i.ati, align 8, !tbaa !116
  %i.atk = add i64 %i.atj, %indvars.iv1222
  store i64 %i.atk, ptr %i.ati, align 8, !tbaa !116
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  store i32 0, ptr %i.aso, align 4, !tbaa !33
  %i.atl = load i32, ptr %i.aqp, align 4, !tbaa !33
  %i.atm = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %..i936 = tail call i32 @llvm.smin.i32(i32 %i.atl, i32 %i.atm)
  store i32 %..i936, ptr %i.aqp, align 4, !tbaa !33
  %i.atn = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8 ; 2 uses
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !33
  %i.atp = tail call i32 @llvm.smax.i32(i32 %i.ato, i32 %i.atm)
  store i32 %i.atp, ptr %i.atn, align 4, !tbaa !33
  %i.atq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4 ; 2 uses
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !33
  %i.ats = tail call i32 @llvm.smin.i32(i32 %i.atr, i32 %i.aoi)
  store i32 %i.ats, ptr %i.atq, align 4, !tbaa !33
  %i.att = getelementptr inbounds nuw i8, ptr %i.aqp, i64 12 ; 2 uses
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !33
  %i.atv = tail call i32 @llvm.smax.i32(i32 %i.atu, i32 %i.aoi)
  store i32 %i.atv, ptr %i.att, align 4, !tbaa !33
  %i.atw = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16 ; 2 uses
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !33
  %i.aty = add nsw i32 %i.atx, 1
  store i32 %i.aty, ptr %i.atw, align 4, !tbaa !33
  %i.atz = load i64, ptr %i.aqo, align 8, !tbaa !116
  %i.aua = add i64 %i.atz, %indvars.iv1222
  store i64 %i.aua, ptr %i.aqo, align 8, !tbaa !116
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sink1345 = phi ptr [ %i.aqo, %bb.bx ], [ %i.ati, %bb.bw ]
  %i.aub = getelementptr inbounds nuw i8, ptr %.sink1345, i64 8 ; 2 uses
  %i.auc = load i64, ptr %i.aub, align 8, !tbaa !117
  %i.aud = add i64 %i.auc, %i.aoa
  store i64 %i.aud, ptr %i.aub, align 8, !tbaa !117
  %i.aue = getelementptr inbounds nuw i8, ptr %i.anu, i64 %i.aqt
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !32
  %.not789 = icmp eq i8 %i.auf, 0
  %i.aug = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %i.aqt ; 2 uses
  br i1 %.not789, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 %i.aov, ptr %i.aug, align 4, !tbaa !33
  %i.auh = load i32, ptr %i.adc, align 4, !tbaa !96
  %i.aui = icmp slt i32 %i.auh, 2
  %i.auj = load i64, ptr %i.ade, align 8
  %i.auk = sext i32 %i.aov to i64                 ; 2 uses
  %i.aul = mul i64 %i.auj, %i.auk
  %.sink.idx.i.i937 = select i1 %i.aui, i64 0, i64 %i.aul
  %.sink.i.i938 = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %.sink.idx.i.i937 ; 6 uses
  %i.aum = load i32, ptr %.sink.i.i938, align 4, !tbaa !33
  %i.aun = trunc nuw nsw i64 %i.aqt to i32        ; 2 uses
  %..i939 = tail call i32 @llvm.smin.i32(i32 %i.aum, i32 %i.aun)
  store i32 %..i939, ptr %.sink.i.i938, align 4, !tbaa !33
  %i.auo = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 8 ; 2 uses
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !33
  %i.auq = tail call i32 @llvm.smax.i32(i32 %i.aup, i32 %i.aun)
  store i32 %i.auq, ptr %i.auo, align 4, !tbaa !33
  %i.aur = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 4 ; 2 uses
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !33
  %i.aut = tail call i32 @llvm.smin.i32(i32 %i.aus, i32 %i.aoj)
  store i32 %i.aut, ptr %i.aur, align 4, !tbaa !33
  %i.auu = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 12 ; 2 uses
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !33
  %i.auw = tail call i32 @llvm.smax.i32(i32 %i.auv, i32 %i.aoj)
  store i32 %i.auw, ptr %i.auu, align 4, !tbaa !33
  %i.aux = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 16 ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !33
  %i.auz = add nsw i32 %i.auy, 1
  store i32 %i.auz, ptr %i.aux, align 4, !tbaa !33
  %i.ava = getelementptr inbounds nuw [16 x i8], ptr %i.aqo, i64 %i.auk ; 2 uses
  %i.avb = load <2 x i64>, ptr %i.ava, align 8, !tbaa !40
  %i.avc = insertelement <2 x i64> %i.aol, i64 %i.aqt, i64 0
  %i.avd = add <2 x i64> %i.avb, %i.avc
  store <2 x i64> %i.avd, ptr %i.ava, align 8, !tbaa !40
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  store i32 0, ptr %i.aug, align 4, !tbaa !33
  %i.ave = load i32, ptr %i.aqp, align 4, !tbaa !33
  %i.avf = trunc nuw nsw i64 %i.aqt to i32        ; 2 uses
  %..i942 = tail call i32 @llvm.smin.i32(i32 %i.ave, i32 %i.avf)
  store i32 %..i942, ptr %i.aqp, align 4, !tbaa !33
  %i.avg = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8 ; 2 uses
  %i.avh = load i32, ptr %i.avg, align 4, !tbaa !33
  %i.avi = tail call i32 @llvm.smax.i32(i32 %i.avh, i32 %i.avf)
  store i32 %i.avi, ptr %i.avg, align 4, !tbaa !33
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4 ; 2 uses
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !33
  %i.avl = tail call i32 @llvm.smin.i32(i32 %i.avk, i32 %i.aok)
  store i32 %i.avl, ptr %i.avj, align 4, !tbaa !33
  %i.avm = getelementptr inbounds nuw i8, ptr %i.aqp, i64 12 ; 2 uses
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !33
  %i.avo = tail call i32 @llvm.smax.i32(i32 %i.avn, i32 %i.aok)
  store i32 %i.avo, ptr %i.avm, align 4, !tbaa !33
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16 ; 2 uses
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !33
  %i.avr = add nsw i32 %i.avq, 1
  store i32 %i.avr, ptr %i.avp, align 4, !tbaa !33
  %i.avs = load <2 x i64>, ptr %i.aqo, align 8, !tbaa !40
  %i.avt = insertelement <2 x i64> %i.aol, i64 %i.aqt, i64 0
  %i.avu = add <2 x i64> %i.avs, %i.avt
  store <2 x i64> %i.avu, ptr %i.aqo, align 8, !tbaa !40
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bo
  store i32 0, ptr %i.aop, align 4, !tbaa !33
  %i.avv = or disjoint i64 %indvars.iv1222, 1     ; 5 uses
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %i.avv
  store i32 0, ptr %i.avw, align 4, !tbaa !33
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %indvars.iv1222
  store i32 0, ptr %i.avx, align 4, !tbaa !33
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %i.avv
  store i32 0, ptr %i.avy, align 4, !tbaa !33
  %i.avz = load ptr, ptr %i.add, align 8, !tbaa !55 ; 6 uses
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !33
  %i.awb = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 4 uses
  %..i945 = tail call i32 @llvm.smin.i32(i32 %i.awa, i32 %i.awb)
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avz, i64 8 ; 2 uses
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !33
  %i.awe = tail call i32 @llvm.smax.i32(i32 %i.awd, i32 %i.awb)
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avz, i64 4 ; 2 uses
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !33
  %i.awh = tail call i32 @llvm.smin.i32(i32 %i.awg, i32 %i.aob)
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avz, i64 12 ; 2 uses
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !33
  %i.awk = tail call i32 @llvm.smax.i32(i32 %i.awj, i32 %i.aob)
  %i.awl = getelementptr inbounds nuw i8, ptr %i.avz, i64 16 ; 2 uses
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !33
  %i.awn = load ptr, ptr %i.adf, align 8, !tbaa !50 ; 3 uses
  %i.awo = load i64, ptr %i.awn, align 8, !tbaa !116
  %i.awp = add i64 %i.awo, %indvars.iv1222
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awn, i64 8 ; 2 uses
  %i.awr = load i64, ptr %i.awq, align 8, !tbaa !117
  %i.aws = trunc nuw nsw i64 %i.avv to i32        ; 4 uses
  %..i948 = tail call i32 @llvm.smin.i32(i32 %..i945, i32 %i.aws)
  %i.awt = tail call i32 @llvm.umax.i32(i32 %i.awe, i32 %i.aws)
  %i.awu = add i64 %i.awp, %i.avv
  %..i951 = tail call i32 @llvm.smin.i32(i32 %..i948, i32 %i.awb)
  %5 = tail call i32 @llvm.umax.i32(i32 %i.awt, i32 %i.awb)
  %6 = tail call i32 @llvm.smin.i32(i32 %i.awh, i32 %i.aoc)
  %i.awv = tail call i32 @llvm.smax.i32(i32 %i.awk, i32 %i.aoc)
  %i.aww = add i64 %i.awu, %indvars.iv1222
  %..i954 = tail call i32 @llvm.smin.i32(i32 %..i951, i32 %i.aws)
  store i32 %..i954, ptr %i.avz, align 4, !tbaa !33
  %7 = tail call i32 @llvm.umax.i32(i32 %5, i32 %i.aws)
  store i32 %7, ptr %i.awc, align 4, !tbaa !33
  store i32 %6, ptr %i.awf, align 4, !tbaa !33
  store i32 %i.awv, ptr %i.awi, align 4, !tbaa !33
  %i.awx = add nsw i32 %i.awm, 4
  store i32 %i.awx, ptr %i.awl, align 4, !tbaa !33
  %i.awy = add i64 %i.aww, %i.avv
  store i64 %i.awy, ptr %i.awn, align 8, !tbaa !116
  %.reass1309 = add i64 %i.awr, %invariant.op1308
  store i64 %.reass1309, ptr %i.awq, align 8, !tbaa !117
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %bb.ca, %bb.cb
  %indvars.iv.next1223 = add nuw nsw i64 %indvars.iv1222, 2 ; 2 uses
  %i.awz = load i32, ptr %i.z, align 4, !tbaa !52 ; 2 uses
  %i.axa = sext i32 %i.awz to i64
  %i.axb = icmp slt i64 %indvars.iv.next1223, %i.axa
  br i1 %i.axb, label %bb.bo, label %._crit_edge1171, !llvm.loop !432

bb.cd:                                            ; preds = %bb.a
  %i.axc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !444, !nonnull !93, !align !94 ; 89 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 456
  store i32 %.sroa.speculated, ptr %i.axe, align 8, !tbaa !114
  %i.axf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.axg = load ptr, ptr %i.axf, align 8, !tbaa !443, !nonnull !93, !align !94 ; 19 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.axi = load i32, ptr %i.axh, align 8, !tbaa !39
  %i.axj = and i32 %i.axi, 1
  %.not = icmp eq i32 %i.axj, 0
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axg, i64 12 ; 7 uses
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !52 ; 2 uses
  %i.axm = and i32 %i.axl, 1
  %.not765 = icmp eq i32 %i.axm, 0                ; 2 uses
  %i.axn = icmp slt i32 %i.b, %.sroa.speculated   ; 4 uses
  br i1 %.not, label %bb.dx, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not765, label %.preheader1119, label %.preheader1121

.preheader1121:                                   ; preds = %bb.ce
  br i1 %i.axn, label %.lr.ph1126, label %.loopexit

.lr.ph1126:                                       ; preds = %.preheader1121
  %i.axo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.axp = sext i32 %i.b to i64
  %i.axq = sext i32 %.sroa.speculated to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55
  %i.axr = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axg, i64 24
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axg, i64 128
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axg, i64 12 ; 2 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ays = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.aza = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.azb = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.azc = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.azd = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.aze = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  br label %bb.cf

.preheader1119:                                   ; preds = %bb.ce
  br i1 %i.axn, label %.lr.ph1133, label %.loopexit

.lr.ph1133:                                       ; preds = %.preheader1119
  %i.azf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.azg = sext i32 %i.b to i64
  %i.azh = sext i32 %.sroa.speculated to i64
  %.phi.trans.insert1228 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre1229 = load ptr, ptr %.phi.trans.insert1228, align 8, !tbaa !55
  %i.azi = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.azj = getelementptr inbounds nuw i8, ptr %i.axg, i64 24
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !55
  %i.azl = getelementptr inbounds nuw i8, ptr %i.axg, i64 128
  %i.azm = getelementptr inbounds nuw i8, ptr %i.axg, i64 12
  %i.azn = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.azo = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.azp = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.azq = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.azr = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.azs = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.azt = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.azu = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.azv = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.azw = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.azx = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.azy = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.azz = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.baa = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bab = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bac = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.bad = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.bae = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.baf = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.bag = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bah = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bai = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.baj = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.bak = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bal = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.bam = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.ban = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bao = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  br label %bb.df

bb.cf:                                            ; preds = %.lr.ph1126, %._crit_edge
  %indvars.iv1183 = phi i64 [ %i.axp, %.lr.ph1126 ], [ %indvars.iv.next1184, %._crit_edge ] ; 13 uses
  %i.bap = load i64, ptr %i.axr, align 8, !tbaa !40 ; 2 uses
  %i.baq = mul i64 %i.bap, %indvars.iv1183
  %i.bar = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.baq ; 3 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 %i.bap ; 3 uses
  %i.bat = load ptr, ptr %i.axs, align 8, !tbaa !55
  %i.bau = load i64, ptr %i.axt, align 8, !tbaa !40 ; 2 uses
  %i.bav = mul i64 %i.bau, %indvars.iv1183
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bat, i64 %i.bav ; 4 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 %i.bau ; 6 uses
  %i.bay = load i32, ptr %i.axu, align 4, !tbaa !52
  %i.baz = icmp sgt i32 %i.bay, 0
  br i1 %i.baz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.cf
  %i.bba = or disjoint i64 %indvars.iv1183, 1     ; 16 uses
  %i.bbb = trunc nsw i64 %indvars.iv1183 to i32   ; 4 uses
  %i.bbc = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbd = trunc nsw i64 %i.bba to i32            ; 2 uses
  %invariant.op = shl i64 %i.bba, 1
  %i.bbe = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbf = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbg = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbh = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbi = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbj = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbk = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbl = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbm = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbn = trunc nsw i64 %i.bba to i32            ; 2 uses
  %i.bbo = insertelement <2 x i64> poison, i64 %i.bba, i64 1 ; 4 uses
  br label %bb.cg

._crit_edge:                                      ; preds = %bb.de, %bb.cf
  %indvars.iv.next1184 = add nsw i64 %indvars.iv1183, 2 ; 2 uses
  %i.bbp = icmp slt i64 %indvars.iv.next1184, %i.axq
  br i1 %i.bbp, label %bb.cf, label %.loopexit, !llvm.loop !433

bb.cg:                                            ; preds = %.lr.ph, %bb.de
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.de ] ; 27 uses
  %i.bbq = phi ptr [ %i.axu, %.lr.ph ], [ %i.axk, %bb.de ] ; 2 uses
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.baw, i64 %indvars.iv ; 4 uses
  %i.bbs = load i32, ptr %i.bbr, align 4, !tbaa !33 ; 2 uses
  %i.bbt = icmp sgt i32 %i.bbs, 0
  br i1 %i.bbt, label %bb.ch, label %bb.cz

bb.ch:                                            ; preds = %bb.cg
  %i.bbu = load ptr, ptr %i.axo, align 8, !tbaa !128
  %i.bbv = zext nneg i32 %i.bbs to i64
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %i.bbu, i64 %i.bbv
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !33 ; 10 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bar, i64 %indvars.iv
  %i.bbz = load i8, ptr %i.bby, align 1, !tbaa !32
  %.not779 = icmp eq i8 %i.bbz, 0
  br i1 %.not779, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i32 %i.bbx, ptr %i.bbr, align 4, !tbaa !33
  %i.bca = load i32, ptr %i.axz, align 4, !tbaa !96
  %i.bcb = icmp slt i32 %i.bca, 2
  %i.bcc = load ptr, ptr %i.aya, align 8, !tbaa !55
  %i.bcd = load i64, ptr %i.ayb, align 8
  %i.bce = sext i32 %i.bbx to i64                 ; 2 uses
  %i.bcf = mul i64 %i.bcd, %i.bce
  %.sink.idx.i.i955 = select i1 %i.bcb, i64 0, i64 %i.bcf
  %.sink.i.i956 = getelementptr inbounds nuw i8, ptr %i.bcc, i64 %.sink.idx.i.i955 ; 6 uses
  %i.bcg = load i32, ptr %.sink.i.i956, align 4, !tbaa !33
end_hunk_10
begin_hunk_11_@_ZNK2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.bhp = getelementptr inbounds nuw i8, ptr %.sink1354, i64 8 ; 2 uses
  %i.bhq = load i64, ptr %i.bhp, align 8, !tbaa !117
  %i.bhr = add i64 %i.bhq, %i.bba
  store i64 %i.bhr, ptr %i.bhp, align 8, !tbaa !117
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bas, i64 %i.bdt
  %i.bht = load i8, ptr %i.bhs, align 1, !tbaa !32
  %.not783 = icmp eq i8 %i.bht, 0
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %i.bax, i64 %i.bdt ; 2 uses
  br i1 %.not783, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i32 %i.bbx, ptr %i.bhu, align 4, !tbaa !33
  %i.bhv = load i32, ptr %i.ayz, align 4, !tbaa !96
  %i.bhw = icmp slt i32 %i.bhv, 2
  %i.bhx = load ptr, ptr %i.aza, align 8, !tbaa !55
  %i.bhy = load i64, ptr %i.azb, align 8
  %i.bhz = sext i32 %i.bbx to i64                 ; 2 uses
  %i.bia = mul i64 %i.bhy, %i.bhz
  %.sink.idx.i.i973 = select i1 %i.bhw, i64 0, i64 %i.bia
  %.sink.i.i974 = getelementptr inbounds nuw i8, ptr %i.bhx, i64 %.sink.idx.i.i973 ; 6 uses
  %i.bib = load i32, ptr %.sink.i.i974, align 4, !tbaa !33
  %i.bic = trunc nuw nsw i64 %i.bdt to i32        ; 2 uses
  %..i975 = tail call i32 @llvm.smin.i32(i32 %i.bib, i32 %i.bic)
  store i32 %..i975, ptr %.sink.i.i974, align 4, !tbaa !33
  %i.bid = getelementptr inbounds nuw i8, ptr %.sink.i.i974, i64 8 ; 2 uses
  %i.bie = load i32, ptr %i.bid, align 4, !tbaa !33
  %i.bif = tail call i32 @llvm.smax.i32(i32 %i.bie, i32 %i.bic)
  store i32 %i.bif, ptr %i.bid, align 4, !tbaa !33
  %i.big = getelementptr inbounds nuw i8, ptr %.sink.i.i974, i64 4 ; 2 uses
  %i.bih = load i32, ptr %i.big, align 4, !tbaa !33
  %i.bii = tail call i32 @llvm.smin.i32(i32 %i.bih, i32 %i.bbm)
  store i32 %i.bii, ptr %i.big, align 4, !tbaa !33
  %i.bij = getelementptr inbounds nuw i8, ptr %.sink.i.i974, i64 12 ; 2 uses
  %i.bik = load i32, ptr %i.bij, align 4, !tbaa !33
  %i.bil = tail call i32 @llvm.smax.i32(i32 %i.bik, i32 %i.bbm)
  store i32 %i.bil, ptr %i.bij, align 4, !tbaa !33
  %i.bim = getelementptr inbounds nuw i8, ptr %.sink.i.i974, i64 16 ; 2 uses
  %i.bin = load i32, ptr %i.bim, align 4, !tbaa !33
  %i.bio = add nsw i32 %i.bin, 1
  store i32 %i.bio, ptr %i.bim, align 4, !tbaa !33
  %i.bip = load ptr, ptr %i.azc, align 8, !tbaa !50
  %i.biq = getelementptr inbounds nuw [16 x i8], ptr %i.bip, i64 %i.bhz ; 2 uses
  %i.bir = load <2 x i64>, ptr %i.biq, align 8, !tbaa !40
  %i.bis = insertelement <2 x i64> %i.bbo, i64 %i.bdt, i64 0
  %i.bit = add <2 x i64> %i.bir, %i.bis
  store <2 x i64> %i.bit, ptr %i.biq, align 8, !tbaa !40
  br label %bb.de

bb.cu:                                            ; preds = %bb.cs
  store i32 0, ptr %i.bhu, align 4, !tbaa !33
  %i.biu = load ptr, ptr %i.azd, align 8, !tbaa !55 ; 6 uses
  %i.biv = load i32, ptr %i.biu, align 4, !tbaa !33
  %i.biw = trunc nuw nsw i64 %i.bdt to i32        ; 2 uses
  %..i978 = tail call i32 @llvm.smin.i32(i32 %i.biv, i32 %i.biw)
  store i32 %..i978, ptr %i.biu, align 4, !tbaa !33
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biu, i64 8 ; 2 uses
  %i.biy = load i32, ptr %i.bix, align 4, !tbaa !33
  %i.biz = tail call i32 @llvm.smax.i32(i32 %i.biy, i32 %i.biw)
  store i32 %i.biz, ptr %i.bix, align 4, !tbaa !33
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biu, i64 4 ; 2 uses
  %i.bjb = load i32, ptr %i.bja, align 4, !tbaa !33
  %i.bjc = tail call i32 @llvm.smin.i32(i32 %i.bjb, i32 %i.bbn)
  store i32 %i.bjc, ptr %i.bja, align 4, !tbaa !33
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.biu, i64 12 ; 2 uses
  %i.bje = load i32, ptr %i.bjd, align 4, !tbaa !33
  %i.bjf = tail call i32 @llvm.smax.i32(i32 %i.bje, i32 %i.bbn)
  store i32 %i.bjf, ptr %i.bjd, align 4, !tbaa !33
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.biu, i64 16 ; 2 uses
  %i.bjh = load i32, ptr %i.bjg, align 4, !tbaa !33
  %i.bji = add nsw i32 %i.bjh, 1
  store i32 %i.bji, ptr %i.bjg, align 4, !tbaa !33
  %i.bjj = load ptr, ptr %i.aze, align 8, !tbaa !50 ; 2 uses
  %i.bjk = load <2 x i64>, ptr %i.bjj, align 8, !tbaa !40
  %i.bjl = insertelement <2 x i64> %i.bbo, i64 %i.bdt, i64 0
  %i.bjm = add <2 x i64> %i.bjk, %i.bjl
  store <2 x i64> %i.bjm, ptr %i.bjj, align 8, !tbaa !40
  br label %bb.de

bb.cv:                                            ; preds = %bb.ck
  %i.bjn = load i32, ptr %i.ayf, align 8, !tbaa !39
  %i.bjo = sext i32 %i.bjn to i64
  %i.bjp = icmp slt i64 %i.bba, %i.bjo
  br i1 %i.bjp, label %bb.cw, label %bb.de

bb.cw:                                            ; preds = %bb.cv
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bas, i64 %indvars.iv
  %i.bjr = load i8, ptr %i.bjq, align 1, !tbaa !32
  %.not780 = icmp eq i8 %i.bjr, 0
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.bax, i64 %indvars.iv ; 2 uses
  br i1 %.not780, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i32 %i.bbx, ptr %i.bjs, align 4, !tbaa !33
  %i.bjt = load i32, ptr %i.ayg, align 4, !tbaa !96
  %i.bju = icmp slt i32 %i.bjt, 2
  %i.bjv = load ptr, ptr %i.ayh, align 8, !tbaa !55
  %i.bjw = load i64, ptr %i.ayi, align 8
  %i.bjx = sext i32 %i.bbx to i64                 ; 2 uses
  %i.bjy = mul i64 %i.bjw, %i.bjx
  %.sink.idx.i.i979 = select i1 %i.bju, i64 0, i64 %i.bjy
  %.sink.i.i980 = getelementptr inbounds nuw i8, ptr %i.bjv, i64 %.sink.idx.i.i979 ; 6 uses
  %i.bjz = load i32, ptr %.sink.i.i980, align 4, !tbaa !33
  %i.bka = trunc nuw nsw i64 %indvars.iv to i32   ; 2 uses
  %..i981 = tail call i32 @llvm.smin.i32(i32 %i.bjz, i32 %i.bka)
  store i32 %..i981, ptr %.sink.i.i980, align 4, !tbaa !33
  %i.bkb = getelementptr inbounds nuw i8, ptr %.sink.i.i980, i64 8 ; 2 uses
  %i.bkc = load i32, ptr %i.bkb, align 4, !tbaa !33
  %i.bkd = tail call i32 @llvm.smax.i32(i32 %i.bkc, i32 %i.bka)
  store i32 %i.bkd, ptr %i.bkb, align 4, !tbaa !33
  %i.bke = getelementptr inbounds nuw i8, ptr %.sink.i.i980, i64 4 ; 2 uses
  %i.bkf = load i32, ptr %i.bke, align 4, !tbaa !33
  %i.bkg = tail call i32 @llvm.smin.i32(i32 %i.bkf, i32 %i.bbg)
  store i32 %i.bkg, ptr %i.bke, align 4, !tbaa !33
  %i.bkh = getelementptr inbounds nuw i8, ptr %.sink.i.i980, i64 12 ; 2 uses
  %i.bki = load i32, ptr %i.bkh, align 4, !tbaa !33
  %i.bkj = tail call i32 @llvm.smax.i32(i32 %i.bki, i32 %i.bbg)
  store i32 %i.bkj, ptr %i.bkh, align 4, !tbaa !33
  %i.bkk = getelementptr inbounds nuw i8, ptr %.sink.i.i980, i64 16 ; 2 uses
  %i.bkl = load i32, ptr %i.bkk, align 4, !tbaa !33
  %i.bkm = add nsw i32 %i.bkl, 1
  store i32 %i.bkm, ptr %i.bkk, align 4, !tbaa !33
  %i.bkn = load ptr, ptr %i.ayj, align 8, !tbaa !50
  %i.bko = getelementptr inbounds nuw [16 x i8], ptr %i.bkn, i64 %i.bjx ; 2 uses
  %i.bkp = load <2 x i64>, ptr %i.bko, align 8, !tbaa !40
  %i.bkq = insertelement <2 x i64> %i.bbo, i64 %indvars.iv, i64 0
  %i.bkr = add <2 x i64> %i.bkp, %i.bkq
  store <2 x i64> %i.bkr, ptr %i.bko, align 8, !tbaa !40
  br label %bb.de

bb.cy:                                            ; preds = %bb.cw
  store i32 0, ptr %i.bjs, align 4, !tbaa !33
  %i.bks = load ptr, ptr %i.ayk, align 8, !tbaa !55 ; 6 uses
  %i.bkt = load i32, ptr %i.bks, align 4, !tbaa !33
  %i.bku = trunc nuw nsw i64 %indvars.iv to i32   ; 2 uses
  %..i984 = tail call i32 @llvm.smin.i32(i32 %i.bkt, i32 %i.bku)
  store i32 %..i984, ptr %i.bks, align 4, !tbaa !33
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bks, i64 8 ; 2 uses
  %i.bkw = load i32, ptr %i.bkv, align 4, !tbaa !33
  %i.bkx = tail call i32 @llvm.smax.i32(i32 %i.bkw, i32 %i.bku)
  store i32 %i.bkx, ptr %i.bkv, align 4, !tbaa !33
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bks, i64 4 ; 2 uses
  %i.bkz = load i32, ptr %i.bky, align 4, !tbaa !33
  %i.bla = tail call i32 @llvm.smin.i32(i32 %i.bkz, i32 %i.bbh)
  store i32 %i.bla, ptr %i.bky, align 4, !tbaa !33
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bks, i64 12 ; 2 uses
  %i.blc = load i32, ptr %i.blb, align 4, !tbaa !33
  %i.bld = tail call i32 @llvm.smax.i32(i32 %i.blc, i32 %i.bbh)
  store i32 %i.bld, ptr %i.blb, align 4, !tbaa !33
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bks, i64 16 ; 2 uses
  %i.blf = load i32, ptr %i.ble, align 4, !tbaa !33
  %i.blg = add nsw i32 %i.blf, 1
  store i32 %i.blg, ptr %i.ble, align 4, !tbaa !33
  %i.blh = load ptr, ptr %i.ayl, align 8, !tbaa !50 ; 2 uses
  %i.bli = load <2 x i64>, ptr %i.blh, align 8, !tbaa !40
  %i.blj = insertelement <2 x i64> %i.bbo, i64 %indvars.iv, i64 0
  %i.blk = add <2 x i64> %i.bli, %i.blj
  store <2 x i64> %i.blk, ptr %i.blh, align 8, !tbaa !40
  br label %bb.de

bb.cz:                                            ; preds = %bb.cg
  store i32 0, ptr %i.bbr, align 4, !tbaa !33
  %i.bll = load ptr, ptr %i.axv, align 8, !tbaa !55 ; 12 uses
  %i.blm = load i32, ptr %i.bll, align 4, !tbaa !33
  %i.bln = trunc nuw nsw i64 %indvars.iv to i32   ; 6 uses
  %..i987 = tail call i32 @llvm.smin.i32(i32 %i.blm, i32 %i.bln)
  store i32 %..i987, ptr %i.bll, align 4, !tbaa !33
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bll, i64 8 ; 8 uses
  %i.blp = load i32, ptr %i.blo, align 4, !tbaa !33
  %i.blq = tail call i32 @llvm.smax.i32(i32 %i.blp, i32 %i.bln)
  store i32 %i.blq, ptr %i.blo, align 4, !tbaa !33
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bll, i64 4 ; 8 uses
  %i.bls = load i32, ptr %i.blr, align 4, !tbaa !33
  %i.blt = tail call i32 @llvm.smin.i32(i32 %i.bls, i32 %i.bbb)
  store i32 %i.blt, ptr %i.blr, align 4, !tbaa !33
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bll, i64 12 ; 8 uses
  %i.blv = load i32, ptr %i.blu, align 4, !tbaa !33
  %i.blw = tail call i32 @llvm.smax.i32(i32 %i.blv, i32 %i.bbb)
  store i32 %i.blw, ptr %i.blu, align 4, !tbaa !33
  %i.blx = getelementptr inbounds nuw i8, ptr %i.bll, i64 16 ; 8 uses
  %i.bly = load i32, ptr %i.blx, align 4, !tbaa !33
  %i.blz = add nsw i32 %i.bly, 1
  store i32 %i.blz, ptr %i.blx, align 4, !tbaa !33
  %i.bma = load ptr, ptr %i.axw, align 8, !tbaa !50 ; 6 uses
  %i.bmb = load i64, ptr %i.bma, align 8, !tbaa !116
  %i.bmc = add i64 %i.bmb, %indvars.iv            ; 3 uses
  store i64 %i.bmc, ptr %i.bma, align 8, !tbaa !116
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bma, i64 8 ; 5 uses
  %i.bme = load i64, ptr %i.bmd, align 8, !tbaa !117
  %i.bmf = add i64 %i.bme, %indvars.iv1183        ; 3 uses
  store i64 %i.bmf, ptr %i.bmd, align 8, !tbaa !117
  %i.bmg = or disjoint i64 %indvars.iv, 1         ; 6 uses
  %i.bmh = load i32, ptr %i.bbq, align 4, !tbaa !52
  %i.bmi = sext i32 %i.bmh to i64
  %i.bmj = icmp slt i64 %i.bmg, %i.bmi
  br i1 %i.bmj, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.bmk = getelementptr inbounds nuw [4 x i8], ptr %i.baw, i64 %i.bmg
  store i32 0, ptr %i.bmk, align 4, !tbaa !33
  %i.bml = load i32, ptr %i.bll, align 4, !tbaa !33
  %i.bmm = trunc nuw nsw i64 %i.bmg to i32        ; 4 uses
  %..i990 = tail call i32 @llvm.smin.i32(i32 %i.bml, i32 %i.bmm)
  store i32 %..i990, ptr %i.bll, align 4, !tbaa !33
  %i.bmn = load i32, ptr %i.blo, align 4, !tbaa !33
  %i.bmo = tail call i32 @llvm.smax.i32(i32 %i.bmn, i32 %i.bmm)
  store i32 %i.bmo, ptr %i.blo, align 4, !tbaa !33
  %i.bmp = load i32, ptr %i.blr, align 4, !tbaa !33
  %i.bmq = tail call i32 @llvm.smin.i32(i32 %i.bmp, i32 %i.bbb)
  store i32 %i.bmq, ptr %i.blr, align 4, !tbaa !33
  %i.bmr = load i32, ptr %i.blu, align 4, !tbaa !33
  %i.bms = tail call i32 @llvm.smax.i32(i32 %i.bmr, i32 %i.bbb)
  store i32 %i.bms, ptr %i.blu, align 4, !tbaa !33
  %i.bmt = load i32, ptr %i.blx, align 4, !tbaa !33
  %i.bmu = add nsw i32 %i.bmt, 1
  store i32 %i.bmu, ptr %i.blx, align 4, !tbaa !33
  %i.bmv = add i64 %i.bmc, %i.bmg                 ; 2 uses
  store i64 %i.bmv, ptr %i.bma, align 8, !tbaa !116
  %i.bmw = add i64 %i.bmf, %indvars.iv1183        ; 2 uses
  store i64 %i.bmw, ptr %i.bmd, align 8, !tbaa !117
  %i.bmx = load i32, ptr %i.axy, align 8, !tbaa !39
  %i.bmy = sext i32 %i.bmx to i64
  %i.bmz = icmp slt i64 %i.bba, %i.bmy
  br i1 %i.bmz, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %i.bax, i64 %indvars.iv
  store i32 0, ptr %i.bna, align 4, !tbaa !33
  %i.bnb = getelementptr inbounds nuw [4 x i8], ptr %i.bax, i64 %i.bmg
  store i32 0, ptr %i.bnb, align 4, !tbaa !33
  %i.bnc = load i32, ptr %i.bll, align 4, !tbaa !33
  %..i993 = tail call i32 @llvm.smin.i32(i32 %i.bnc, i32 %i.bln)
  %i.bnd = load i32, ptr %i.blo, align 4, !tbaa !33
  %i.bne = tail call i32 @llvm.smax.i32(i32 %i.bnd, i32 %i.bln)
  %i.bnf = load i32, ptr %i.blr, align 4, !tbaa !33
  %i.bng = tail call i32 @llvm.smin.i32(i32 %i.bnf, i32 %i.bbd)
  %i.bnh = load i32, ptr %i.blu, align 4, !tbaa !33
  %i.bni = tail call i32 @llvm.smax.i32(i32 %i.bnh, i32 %i.bbd)
  %i.bnj = load i32, ptr %i.blx, align 4, !tbaa !33
  %i.bnk = add i64 %i.bmv, %indvars.iv
  %..i996 = tail call i32 @llvm.smin.i32(i32 %..i993, i32 %i.bmm)
  store i32 %..i996, ptr %i.bll, align 4, !tbaa !33
  %i.bnl = tail call i32 @llvm.umax.i32(i32 %i.bne, i32 %i.bmm)
  store i32 %i.bnl, ptr %i.blo, align 4, !tbaa !33
  store i32 %i.bng, ptr %i.blr, align 4, !tbaa !33
  store i32 %i.bni, ptr %i.blu, align 4, !tbaa !33
  %i.bnm = add nsw i32 %i.bnj, 2
  store i32 %i.bnm, ptr %i.blx, align 4, !tbaa !33
  %i.bnn = add i64 %i.bnk, %i.bmg
  store i64 %i.bnn, ptr %i.bma, align 8, !tbaa !116
  %.reass = add i64 %i.bmw, %invariant.op
  store i64 %.reass, ptr %i.bmd, align 8, !tbaa !117
  br label %bb.de

bb.dc:                                            ; preds = %bb.cz
  %i.bno = load i32, ptr %i.axx, align 8, !tbaa !39
  %i.bnp = sext i32 %i.bno to i64
  %i.bnq = icmp slt i64 %i.bba, %i.bnp
  br i1 %i.bnq, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.bax, i64 %indvars.iv
  store i32 0, ptr %i.bnr, align 4, !tbaa !33
  %i.bns = load i32, ptr %i.bll, align 4, !tbaa !33
  %..i999 = tail call i32 @llvm.smin.i32(i32 %i.bns, i32 %i.bln)
  store i32 %..i999, ptr %i.bll, align 4, !tbaa !33
  %i.bnt = load i32, ptr %i.blo, align 4, !tbaa !33
  %i.bnu = tail call i32 @llvm.smax.i32(i32 %i.bnt, i32 %i.bln)
  store i32 %i.bnu, ptr %i.blo, align 4, !tbaa !33
  %i.bnv = load i32, ptr %i.blr, align 4, !tbaa !33
  %i.bnw = tail call i32 @llvm.smin.i32(i32 %i.bnv, i32 %i.bbc)
  store i32 %i.bnw, ptr %i.blr, align 4, !tbaa !33
  %i.bnx = load i32, ptr %i.blu, align 4, !tbaa !33
  %i.bny = tail call i32 @llvm.smax.i32(i32 %i.bnx, i32 %i.bbc)
  store i32 %i.bny, ptr %i.blu, align 4, !tbaa !33
  %i.bnz = load i32, ptr %i.blx, align 4, !tbaa !33
  %i.boa = add nsw i32 %i.bnz, 1
  store i32 %i.boa, ptr %i.blx, align 4, !tbaa !33
  %i.bob = add i64 %i.bmc, %indvars.iv
  store i64 %i.bob, ptr %i.bma, align 8, !tbaa !116
  %i.boc = add i64 %i.bmf, %i.bba
  store i64 %i.boc, ptr %i.bmd, align 8, !tbaa !117
  br label %bb.de

bb.de:                                            ; preds = %bb.db, %bb.da, %bb.dd, %bb.dc, %bb.ct, %bb.cu, %bb.co, %bb.cx, %bb.cy, %bb.cv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bod = load i32, ptr %i.axk, align 4, !tbaa !52
  %i.boe = sext i32 %i.bod to i64
  %i.bof = icmp slt i64 %indvars.iv.next, %i.boe
  br i1 %i.bof, label %bb.cg, label %._crit_edge, !llvm.loop !434

bb.df:                                            ; preds = %.lr.ph1133, %._crit_edge1131
  %indvars.iv1189 = phi i64 [ %i.azg, %.lr.ph1133 ], [ %indvars.iv.next1190, %._crit_edge1131 ] ; 12 uses
  %i.bog = load i64, ptr %i.azi, align 8, !tbaa !40 ; 2 uses
  %i.boh = mul i64 %i.bog, %indvars.iv1189
  %i.boi = getelementptr inbounds nuw i8, ptr %.pre1229, i64 %i.boh ; 3 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 %i.bog ; 2 uses
  %i.bok = load i64, ptr %i.azl, align 8, !tbaa !40 ; 2 uses
  %i.bol = mul i64 %i.bok, %indvars.iv1189
  %i.bom = getelementptr inbounds nuw i8, ptr %i.azk, i64 %i.bol ; 4 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 %i.bok ; 4 uses
  %i.boo = load i32, ptr %i.azm, align 4, !tbaa !52
  %i.bop = icmp sgt i32 %i.boo, 0
  br i1 %i.bop, label %.lr.ph1130, label %._crit_edge1131

.lr.ph1130:                                       ; preds = %bb.df
  %i.boq = or disjoint i64 %indvars.iv1189, 1     ; 10 uses
  %i.bor = trunc nsw i64 %indvars.iv1189 to i32   ; 2 uses
  %invariant.op1280 = shl i64 %indvars.iv1189, 1
  %i.bos = trunc nsw i64 %i.boq to i32            ; 2 uses
  %invariant.op1282 = shl i64 %i.boq, 1
  %i.bot = trunc nsw i64 %indvars.iv1189 to i32   ; 2 uses
  %i.bou = trunc nsw i64 %indvars.iv1189 to i32   ; 2 uses
  %i.bov = trunc nsw i64 %indvars.iv1189 to i32   ; 2 uses
  %i.bow = trunc nsw i64 %indvars.iv1189 to i32   ; 2 uses
  %i.box = trunc nsw i64 %i.boq to i32            ; 2 uses
  %i.boy = trunc nsw i64 %i.boq to i32            ; 2 uses
  %i.boz = trunc nsw i64 %i.boq to i32            ; 2 uses
  %i.bpa = trunc nsw i64 %i.boq to i32            ; 2 uses
  %i.bpb = insertelement <2 x i64> poison, i64 %i.boq, i64 1 ; 2 uses
  br label %bb.dg

._crit_edge1131:                                  ; preds = %bb.dw, %bb.df
  %indvars.iv.next1190 = add nsw i64 %indvars.iv1189, 2 ; 2 uses
  %i.bpc = icmp slt i64 %indvars.iv.next1190, %i.azh
  br i1 %i.bpc, label %bb.df, label %.loopexit, !llvm.loop !435

bb.dg:                                            ; preds = %.lr.ph1130, %bb.dw
  %indvars.iv1186 = phi i64 [ 0, %.lr.ph1130 ], [ %indvars.iv.next1187, %bb.dw ] ; 19 uses
  %i.bpd = getelementptr inbounds nuw [4 x i8], ptr %i.bom, i64 %indvars.iv1186 ; 4 uses
  %i.bpe = load i32, ptr %i.bpd, align 4, !tbaa !33 ; 2 uses
  %i.bpf = icmp sgt i32 %i.bpe, 0
  br i1 %i.bpf, label %bb.dh, label %bb.du

bb.dh:                                            ; preds = %bb.dg
  %i.bpg = load ptr, ptr %i.azf, align 8, !tbaa !128
  %i.bph = zext nneg i32 %i.bpe to i64
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %i.bpg, i64 %i.bph
  %i.bpj = load i32, ptr %i.bpi, align 4, !tbaa !33 ; 8 uses
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.boi, i64 %indvars.iv1186
  %i.bpl = load i8, ptr %i.bpk, align 1, !tbaa !32
  %.not775 = icmp eq i8 %i.bpl, 0
  br i1 %.not775, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store i32 %i.bpj, ptr %i.bpd, align 4, !tbaa !33
  %i.bpm = load i32, ptr %i.azq, align 4, !tbaa !96
  %i.bpn = icmp slt i32 %i.bpm, 2
  %i.bpo = load ptr, ptr %i.azr, align 8, !tbaa !55
  %i.bpp = load i64, ptr %i.azs, align 8
  %i.bpq = sext i32 %i.bpj to i64                 ; 2 uses
  %i.bpr = mul i64 %i.bpp, %i.bpq
  %.sink.idx.i.i1000 = select i1 %i.bpn, i64 0, i64 %i.bpr
  %.sink.i.i1001 = getelementptr inbounds nuw i8, ptr %i.bpo, i64 %.sink.idx.i.i1000 ; 6 uses
  %i.bps = load i32, ptr %.sink.i.i1001, align 4, !tbaa !33
  %i.bpt = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 2 uses
  %..i1002 = tail call i32 @llvm.smin.i32(i32 %i.bps, i32 %i.bpt)
  store i32 %..i1002, ptr %.sink.i.i1001, align 4, !tbaa !33
  %i.bpu = getelementptr inbounds nuw i8, ptr %.sink.i.i1001, i64 8 ; 2 uses
  %i.bpv = load i32, ptr %i.bpu, align 4, !tbaa !33
  %i.bpw = tail call i32 @llvm.smax.i32(i32 %i.bpv, i32 %i.bpt)
  store i32 %i.bpw, ptr %i.bpu, align 4, !tbaa !33
  %i.bpx = getelementptr inbounds nuw i8, ptr %.sink.i.i1001, i64 4 ; 2 uses
  %i.bpy = load i32, ptr %i.bpx, align 4, !tbaa !33
  %i.bpz = tail call i32 @llvm.smin.i32(i32 %i.bpy, i32 %i.bot)
  store i32 %i.bpz, ptr %i.bpx, align 4, !tbaa !33
  %i.bqa = getelementptr inbounds nuw i8, ptr %.sink.i.i1001, i64 12 ; 2 uses
  %i.bqb = load i32, ptr %i.bqa, align 4, !tbaa !33
  %i.bqc = tail call i32 @llvm.smax.i32(i32 %i.bqb, i32 %i.bot)
  store i32 %i.bqc, ptr %i.bqa, align 4, !tbaa !33
  %i.bqd = getelementptr inbounds nuw i8, ptr %.sink.i.i1001, i64 16 ; 2 uses
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !33
  %i.bqf = add nsw i32 %i.bqe, 1
  store i32 %i.bqf, ptr %i.bqd, align 4, !tbaa !33
  %i.bqg = load ptr, ptr %i.azt, align 8, !tbaa !50
  %i.bqh = getelementptr inbounds nuw [16 x i8], ptr %i.bqg, i64 %i.bpq ; 3 uses
  %i.bqi = load i64, ptr %i.bqh, align 8, !tbaa !116
  %i.bqj = add i64 %i.bqi, %indvars.iv1186
  store i64 %i.bqj, ptr %i.bqh, align 8, !tbaa !116
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  store i32 0, ptr %i.bpd, align 4, !tbaa !33
  %i.bqk = load ptr, ptr %i.azu, align 8, !tbaa !55 ; 6 uses
  %i.bql = load i32, ptr %i.bqk, align 4, !tbaa !33
  %i.bqm = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 2 uses
  %..i1005 = tail call i32 @llvm.smin.i32(i32 %i.bql, i32 %i.bqm)
  store i32 %..i1005, ptr %i.bqk, align 4, !tbaa !33
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqk, i64 8 ; 2 uses
  %i.bqo = load i32, ptr %i.bqn, align 4, !tbaa !33
  %i.bqp = tail call i32 @llvm.smax.i32(i32 %i.bqo, i32 %i.bqm)
  store i32 %i.bqp, ptr %i.bqn, align 4, !tbaa !33
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqk, i64 4 ; 2 uses
  %i.bqr = load i32, ptr %i.bqq, align 4, !tbaa !33
  %i.bqs = tail call i32 @llvm.smin.i32(i32 %i.bqr, i32 %i.bou)
  store i32 %i.bqs, ptr %i.bqq, align 4, !tbaa !33
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqk, i64 12 ; 2 uses
  %i.bqu = load i32, ptr %i.bqt, align 4, !tbaa !33
  %i.bqv = tail call i32 @llvm.smax.i32(i32 %i.bqu, i32 %i.bou)
  store i32 %i.bqv, ptr %i.bqt, align 4, !tbaa !33
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqk, i64 16 ; 2 uses
  %i.bqx = load i32, ptr %i.bqw, align 4, !tbaa !33
  %i.bqy = add nsw i32 %i.bqx, 1
  store i32 %i.bqy, ptr %i.bqw, align 4, !tbaa !33
  %i.bqz = load ptr, ptr %i.azv, align 8, !tbaa !50 ; 3 uses
  %i.bra = load i64, ptr %i.bqz, align 8, !tbaa !116
  %i.brb = add i64 %i.bra, %indvars.iv1186
  store i64 %i.brb, ptr %i.bqz, align 8, !tbaa !116
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.sink1357 = phi ptr [ %i.bqz, %bb.dj ], [ %i.bqh, %bb.di ]
  %i.brc = getelementptr inbounds nuw i8, ptr %.sink1357, i64 8 ; 2 uses
  %i.brd = load i64, ptr %i.brc, align 8, !tbaa !117
  %i.bre = add i64 %i.brd, %indvars.iv1189
  store i64 %i.bre, ptr %i.brc, align 8, !tbaa !117
  %i.brf = or disjoint i64 %indvars.iv1186, 1     ; 12 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.boi, i64 %i.brf
  %i.brh = load i8, ptr %i.brg, align 1, !tbaa !32
  %.not776 = icmp eq i8 %i.brh, 0
  %i.bri = getelementptr inbounds nuw [4 x i8], ptr %i.bom, i64 %i.brf ; 2 uses
  br i1 %.not776, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  store i32 %i.bpj, ptr %i.bri, align 4, !tbaa !33
  %i.brj = load i32, ptr %i.azw, align 4, !tbaa !96
  %i.brk = icmp slt i32 %i.brj, 2
  %i.brl = load ptr, ptr %i.azx, align 8, !tbaa !55
  %i.brm = load i64, ptr %i.azy, align 8
  %i.brn = sext i32 %i.bpj to i64                 ; 2 uses
  %i.bro = mul i64 %i.brm, %i.brn
  %.sink.idx.i.i1006 = select i1 %i.brk, i64 0, i64 %i.bro
  %.sink.i.i1007 = getelementptr inbounds nuw i8, ptr %i.brl, i64 %.sink.idx.i.i1006 ; 6 uses
  %i.brp = load i32, ptr %.sink.i.i1007, align 4, !tbaa !33
  %i.brq = trunc nuw nsw i64 %i.brf to i32        ; 2 uses
  %..i1008 = tail call i32 @llvm.smin.i32(i32 %i.brp, i32 %i.brq)
  store i32 %..i1008, ptr %.sink.i.i1007, align 4, !tbaa !33
  %i.brr = getelementptr inbounds nuw i8, ptr %.sink.i.i1007, i64 8 ; 2 uses
  %i.brs = load i32, ptr %i.brr, align 4, !tbaa !33
  %i.brt = tail call i32 @llvm.smax.i32(i32 %i.brs, i32 %i.brq)
  store i32 %i.brt, ptr %i.brr, align 4, !tbaa !33
  %i.bru = getelementptr inbounds nuw i8, ptr %.sink.i.i1007, i64 4 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZNK2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  store i32 %i.bss, ptr %i.bsq, align 4, !tbaa !33
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bsh, i64 16 ; 2 uses
  %i.bsu = load i32, ptr %i.bst, align 4, !tbaa !33
  %i.bsv = add nsw i32 %i.bsu, 1
  store i32 %i.bsv, ptr %i.bst, align 4, !tbaa !33
  %i.bsw = load ptr, ptr %i.bab, align 8, !tbaa !50 ; 3 uses
  %i.bsx = load i64, ptr %i.bsw, align 8, !tbaa !116
  %i.bsy = add i64 %i.bsx, %i.brf
  store i64 %i.bsy, ptr %i.bsw, align 8, !tbaa !116
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.sink1360 = phi ptr [ %i.bsw, %bb.dm ], [ %i.bse, %bb.dl ]
  %i.bsz = getelementptr inbounds nuw i8, ptr %.sink1360, i64 8 ; 2 uses
  %i.bta = load i64, ptr %i.bsz, align 8, !tbaa !117
  %i.btb = add i64 %i.bta, %indvars.iv1189
  store i64 %i.btb, ptr %i.bsz, align 8, !tbaa !117
  %i.btc = load i32, ptr %i.bac, align 8, !tbaa !39
  %i.btd = sext i32 %i.btc to i64
  %i.bte = icmp slt i64 %i.boq, %i.btd
  br i1 %i.bte, label %bb.do, label %bb.dw

bb.do:                                            ; preds = %bb.dn
  %i.btf = getelementptr inbounds nuw i8, ptr %i.boj, i64 %indvars.iv1186
  %i.btg = load i8, ptr %i.btf, align 1, !tbaa !32
  %.not777 = icmp eq i8 %i.btg, 0
  %i.bth = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %indvars.iv1186 ; 2 uses
  br i1 %.not777, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  store i32 %i.bpj, ptr %i.bth, align 4, !tbaa !33
  %i.bti = load i32, ptr %i.bad, align 4, !tbaa !96
  %i.btj = icmp slt i32 %i.bti, 2
  %i.btk = load ptr, ptr %i.bae, align 8, !tbaa !55
  %i.btl = load i64, ptr %i.baf, align 8
  %i.btm = sext i32 %i.bpj to i64                 ; 2 uses
  %i.btn = mul i64 %i.btl, %i.btm
  %.sink.idx.i.i1012 = select i1 %i.btj, i64 0, i64 %i.btn
  %.sink.i.i1013 = getelementptr inbounds nuw i8, ptr %i.btk, i64 %.sink.idx.i.i1012 ; 6 uses
  %i.bto = load i32, ptr %.sink.i.i1013, align 4, !tbaa !33
  %i.btp = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 2 uses
  %..i1014 = tail call i32 @llvm.smin.i32(i32 %i.bto, i32 %i.btp)
  store i32 %..i1014, ptr %.sink.i.i1013, align 4, !tbaa !33
  %i.btq = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 8 ; 2 uses
  %i.btr = load i32, ptr %i.btq, align 4, !tbaa !33
  %i.bts = tail call i32 @llvm.smax.i32(i32 %i.btr, i32 %i.btp)
  store i32 %i.bts, ptr %i.btq, align 4, !tbaa !33
  %i.btt = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 4 ; 2 uses
  %i.btu = load i32, ptr %i.btt, align 4, !tbaa !33
  %i.btv = tail call i32 @llvm.smin.i32(i32 %i.btu, i32 %i.box)
  store i32 %i.btv, ptr %i.btt, align 4, !tbaa !33
  %i.btw = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 12 ; 2 uses
  %i.btx = load i32, ptr %i.btw, align 4, !tbaa !33
  %i.bty = tail call i32 @llvm.smax.i32(i32 %i.btx, i32 %i.box)
  store i32 %i.bty, ptr %i.btw, align 4, !tbaa !33
  %i.btz = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 16 ; 2 uses
  %i.bua = load i32, ptr %i.btz, align 4, !tbaa !33
  %i.bub = add nsw i32 %i.bua, 1
  store i32 %i.bub, ptr %i.btz, align 4, !tbaa !33
  %i.buc = load ptr, ptr %i.bag, align 8, !tbaa !50
  %i.bud = getelementptr inbounds nuw [16 x i8], ptr %i.buc, i64 %i.btm ; 3 uses
  %i.bue = load i64, ptr %i.bud, align 8, !tbaa !116
  %i.buf = add i64 %i.bue, %indvars.iv1186
  store i64 %i.buf, ptr %i.bud, align 8, !tbaa !116
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  store i32 0, ptr %i.bth, align 4, !tbaa !33
  %i.bug = load ptr, ptr %i.bah, align 8, !tbaa !55 ; 6 uses
  %i.buh = load i32, ptr %i.bug, align 4, !tbaa !33
  %i.bui = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 2 uses
  %..i1017 = tail call i32 @llvm.smin.i32(i32 %i.buh, i32 %i.bui)
  store i32 %..i1017, ptr %i.bug, align 4, !tbaa !33
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bug, i64 8 ; 2 uses
  %i.buk = load i32, ptr %i.buj, align 4, !tbaa !33
  %i.bul = tail call i32 @llvm.smax.i32(i32 %i.buk, i32 %i.bui)
  store i32 %i.bul, ptr %i.buj, align 4, !tbaa !33
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bug, i64 4 ; 2 uses
  %i.bun = load i32, ptr %i.bum, align 4, !tbaa !33
  %i.buo = tail call i32 @llvm.smin.i32(i32 %i.bun, i32 %i.boy)
  store i32 %i.buo, ptr %i.bum, align 4, !tbaa !33
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bug, i64 12 ; 2 uses
  %i.buq = load i32, ptr %i.bup, align 4, !tbaa !33
  %i.bur = tail call i32 @llvm.smax.i32(i32 %i.buq, i32 %i.boy)
  store i32 %i.bur, ptr %i.bup, align 4, !tbaa !33
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bug, i64 16 ; 2 uses
  %i.but = load i32, ptr %i.bus, align 4, !tbaa !33
  %i.buu = add nsw i32 %i.but, 1
  store i32 %i.buu, ptr %i.bus, align 4, !tbaa !33
  %i.buv = load ptr, ptr %i.bai, align 8, !tbaa !50 ; 3 uses
  %i.buw = load i64, ptr %i.buv, align 8, !tbaa !116
  %i.bux = add i64 %i.buw, %indvars.iv1186
  store i64 %i.bux, ptr %i.buv, align 8, !tbaa !116
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.sink1363 = phi ptr [ %i.buv, %bb.dq ], [ %i.bud, %bb.dp ]
  %i.buy = getelementptr inbounds nuw i8, ptr %.sink1363, i64 8 ; 2 uses
  %i.buz = load i64, ptr %i.buy, align 8, !tbaa !117
  %i.bva = add i64 %i.buz, %i.boq
  store i64 %i.bva, ptr %i.buy, align 8, !tbaa !117
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.boj, i64 %i.brf
  %i.bvc = load i8, ptr %i.bvb, align 1, !tbaa !32
  %.not778 = icmp eq i8 %i.bvc, 0
  %i.bvd = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %i.brf ; 2 uses
  br i1 %.not778, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store i32 %i.bpj, ptr %i.bvd, align 4, !tbaa !33
  %i.bve = load i32, ptr %i.baj, align 4, !tbaa !96
  %i.bvf = icmp slt i32 %i.bve, 2
  %i.bvg = load ptr, ptr %i.bak, align 8, !tbaa !55
  %i.bvh = load i64, ptr %i.bal, align 8
  %i.bvi = sext i32 %i.bpj to i64                 ; 2 uses
  %i.bvj = mul i64 %i.bvh, %i.bvi
  %.sink.idx.i.i1018 = select i1 %i.bvf, i64 0, i64 %i.bvj
  %.sink.i.i1019 = getelementptr inbounds nuw i8, ptr %i.bvg, i64 %.sink.idx.i.i1018 ; 6 uses
  %i.bvk = load i32, ptr %.sink.i.i1019, align 4, !tbaa !33
  %i.bvl = trunc nuw nsw i64 %i.brf to i32        ; 2 uses
  %..i1020 = tail call i32 @llvm.smin.i32(i32 %i.bvk, i32 %i.bvl)
  store i32 %..i1020, ptr %.sink.i.i1019, align 4, !tbaa !33
  %i.bvm = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 8 ; 2 uses
  %i.bvn = load i32, ptr %i.bvm, align 4, !tbaa !33
  %i.bvo = tail call i32 @llvm.smax.i32(i32 %i.bvn, i32 %i.bvl)
  store i32 %i.bvo, ptr %i.bvm, align 4, !tbaa !33
  %i.bvp = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 4 ; 2 uses
  %i.bvq = load i32, ptr %i.bvp, align 4, !tbaa !33
  %i.bvr = tail call i32 @llvm.smin.i32(i32 %i.bvq, i32 %i.boz)
  store i32 %i.bvr, ptr %i.bvp, align 4, !tbaa !33
  %i.bvs = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 12 ; 2 uses
  %i.bvt = load i32, ptr %i.bvs, align 4, !tbaa !33
  %i.bvu = tail call i32 @llvm.smax.i32(i32 %i.bvt, i32 %i.boz)
  store i32 %i.bvu, ptr %i.bvs, align 4, !tbaa !33
  %i.bvv = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 16 ; 2 uses
  %i.bvw = load i32, ptr %i.bvv, align 4, !tbaa !33
  %i.bvx = add nsw i32 %i.bvw, 1
  store i32 %i.bvx, ptr %i.bvv, align 4, !tbaa !33
  %i.bvy = load ptr, ptr %i.bam, align 8, !tbaa !50
  %i.bvz = getelementptr inbounds nuw [16 x i8], ptr %i.bvy, i64 %i.bvi ; 2 uses
  %i.bwa = load <2 x i64>, ptr %i.bvz, align 8, !tbaa !40
  %i.bwb = insertelement <2 x i64> %i.bpb, i64 %i.brf, i64 0
  %i.bwc = add <2 x i64> %i.bwa, %i.bwb
  store <2 x i64> %i.bwc, ptr %i.bvz, align 8, !tbaa !40
  br label %bb.dw

bb.dt:                                            ; preds = %bb.dr
  store i32 0, ptr %i.bvd, align 4, !tbaa !33
  %i.bwd = load ptr, ptr %i.ban, align 8, !tbaa !55 ; 6 uses
  %i.bwe = load i32, ptr %i.bwd, align 4, !tbaa !33
  %i.bwf = trunc nuw nsw i64 %i.brf to i32        ; 2 uses
  %..i1023 = tail call i32 @llvm.smin.i32(i32 %i.bwe, i32 %i.bwf)
  store i32 %..i1023, ptr %i.bwd, align 4, !tbaa !33
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwd, i64 8 ; 2 uses
  %i.bwh = load i32, ptr %i.bwg, align 4, !tbaa !33
  %i.bwi = tail call i32 @llvm.smax.i32(i32 %i.bwh, i32 %i.bwf)
  store i32 %i.bwi, ptr %i.bwg, align 4, !tbaa !33
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwd, i64 4 ; 2 uses
  %i.bwk = load i32, ptr %i.bwj, align 4, !tbaa !33
  %i.bwl = tail call i32 @llvm.smin.i32(i32 %i.bwk, i32 %i.bpa)
  store i32 %i.bwl, ptr %i.bwj, align 4, !tbaa !33
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwd, i64 12 ; 2 uses
  %i.bwn = load i32, ptr %i.bwm, align 4, !tbaa !33
  %i.bwo = tail call i32 @llvm.smax.i32(i32 %i.bwn, i32 %i.bpa)
  store i32 %i.bwo, ptr %i.bwm, align 4, !tbaa !33
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwd, i64 16 ; 2 uses
  %i.bwq = load i32, ptr %i.bwp, align 4, !tbaa !33
  %i.bwr = add nsw i32 %i.bwq, 1
  store i32 %i.bwr, ptr %i.bwp, align 4, !tbaa !33
  %i.bws = load ptr, ptr %i.bao, align 8, !tbaa !50 ; 2 uses
  %i.bwt = load <2 x i64>, ptr %i.bws, align 8, !tbaa !40
  %i.bwu = insertelement <2 x i64> %i.bpb, i64 %i.brf, i64 0
  %i.bwv = add <2 x i64> %i.bwt, %i.bwu
  store <2 x i64> %i.bwv, ptr %i.bws, align 8, !tbaa !40
  br label %bb.dw

bb.du:                                            ; preds = %bb.dg
  store i32 0, ptr %i.bpd, align 4, !tbaa !33
  %i.bww = or disjoint i64 %indvars.iv1186, 1     ; 5 uses
  %i.bwx = getelementptr inbounds nuw [4 x i8], ptr %i.bom, i64 %i.bww
  store i32 0, ptr %i.bwx, align 4, !tbaa !33
  %i.bwy = load ptr, ptr %i.azn, align 8, !tbaa !55 ; 8 uses
  %i.bwz = load i32, ptr %i.bwy, align 4, !tbaa !33
  %i.bxa = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 4 uses
  %..i1026 = tail call i32 @llvm.smin.i32(i32 %i.bwz, i32 %i.bxa)
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bwy, i64 8 ; 4 uses
  %i.bxc = load i32, ptr %i.bxb, align 4, !tbaa !33
  %i.bxd = tail call i32 @llvm.smax.i32(i32 %i.bxc, i32 %i.bxa)
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bwy, i64 4 ; 4 uses
  %i.bxf = load i32, ptr %i.bxe, align 4, !tbaa !33
  %i.bxg = tail call i32 @llvm.smin.i32(i32 %i.bxf, i32 %i.bor)
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bwy, i64 12 ; 4 uses
  %i.bxi = load i32, ptr %i.bxh, align 4, !tbaa !33
  %i.bxj = tail call i32 @llvm.smax.i32(i32 %i.bxi, i32 %i.bor)
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bwy, i64 16 ; 4 uses
  %i.bxl = load i32, ptr %i.bxk, align 4, !tbaa !33
  %i.bxm = load ptr, ptr %i.azo, align 8, !tbaa !50 ; 4 uses
  %i.bxn = load i64, ptr %i.bxm, align 8, !tbaa !116
  %i.bxo = add i64 %i.bxn, %indvars.iv1186
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxm, i64 8 ; 3 uses
  %i.bxq = load i64, ptr %i.bxp, align 8, !tbaa !117
  %8 = trunc nuw nsw i64 %i.bww to i32            ; 4 uses
  %..i1029 = tail call i32 @llvm.smin.i32(i32 %..i1026, i32 %8)
  store i32 %..i1029, ptr %i.bwy, align 4, !tbaa !33
  %i.bxr = tail call i32 @llvm.umax.i32(i32 %i.bxd, i32 %8)
  store i32 %i.bxr, ptr %i.bxb, align 4, !tbaa !33
  store i32 %i.bxg, ptr %i.bxe, align 4, !tbaa !33
  store i32 %i.bxj, ptr %i.bxh, align 4, !tbaa !33
  %i.bxs = add nsw i32 %i.bxl, 2
  store i32 %i.bxs, ptr %i.bxk, align 4, !tbaa !33
  %i.bxt = add i64 %i.bxo, %i.bww                 ; 2 uses
  store i64 %i.bxt, ptr %i.bxm, align 8, !tbaa !116
  %.reass1281 = add i64 %i.bxq, %invariant.op1280 ; 2 uses
  store i64 %.reass1281, ptr %i.bxp, align 8, !tbaa !117
  %i.bxu = load i32, ptr %i.azp, align 8, !tbaa !39
  %i.bxv = sext i32 %i.bxu to i64
  %i.bxw = icmp slt i64 %i.boq, %i.bxv
  br i1 %i.bxw, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.bxx = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %indvars.iv1186
  store i32 0, ptr %i.bxx, align 4, !tbaa !33
  %i.bxy = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %i.bww
  store i32 0, ptr %i.bxy, align 4, !tbaa !33
  %i.bxz = load i32, ptr %i.bwy, align 4, !tbaa !33
  %..i1032 = tail call i32 @llvm.smin.i32(i32 %i.bxz, i32 %i.bxa)
  %i.bya = load i32, ptr %i.bxb, align 4, !tbaa !33
  %i.byb = tail call i32 @llvm.smax.i32(i32 %i.bya, i32 %i.bxa)
  %i.byc = load i32, ptr %i.bxe, align 4, !tbaa !33
  %i.byd = tail call i32 @llvm.smin.i32(i32 %i.byc, i32 %i.bos)
  %i.bye = load i32, ptr %i.bxh, align 4, !tbaa !33
  %i.byf = tail call i32 @llvm.smax.i32(i32 %i.bye, i32 %i.bos)
  %i.byg = load i32, ptr %i.bxk, align 4, !tbaa !33
  %i.byh = add i64 %i.bxt, %indvars.iv1186
  %..i1035 = tail call i32 @llvm.smin.i32(i32 %..i1032, i32 %8)
  store i32 %..i1035, ptr %i.bwy, align 4, !tbaa !33
  %i.byi = tail call i32 @llvm.umax.i32(i32 %i.byb, i32 %8)
  store i32 %i.byi, ptr %i.bxb, align 4, !tbaa !33
  store i32 %i.byd, ptr %i.bxe, align 4, !tbaa !33
  store i32 %i.byf, ptr %i.bxh, align 4, !tbaa !33
  %i.byj = add nsw i32 %i.byg, 2
  store i32 %i.byj, ptr %i.bxk, align 4, !tbaa !33
  %i.byk = add i64 %i.byh, %i.bww
  store i64 %i.byk, ptr %i.bxm, align 8, !tbaa !116
  %.reass1283 = add i64 %.reass1281, %invariant.op1282
  store i64 %.reass1283, ptr %i.bxp, align 8, !tbaa !117
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv, %bb.dn, %bb.dt, %bb.ds
  %indvars.iv.next1187 = add nuw nsw i64 %indvars.iv1186, 2 ; 2 uses
  %i.byl = load i32, ptr %i.axk, align 4, !tbaa !52
  %i.bym = sext i32 %i.byl to i64
  %i.byn = icmp slt i64 %indvars.iv.next1187, %i.bym
  br i1 %i.byn, label %bb.dg, label %._crit_edge1131, !llvm.loop !436

bb.dx:                                            ; preds = %bb.cd
  br i1 %.not765, label %.preheader1115, label %.preheader1117

.preheader1117:                                   ; preds = %bb.dx
  br i1 %i.axn, label %.lr.ph1139, label %.loopexit

.lr.ph1139:                                       ; preds = %.preheader1117
  %i.byo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.byp = sext i32 %i.b to i64
  %i.byq = sext i32 %.sroa.speculated to i64
  %.phi.trans.insert1230 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre1231 = load ptr, ptr %.phi.trans.insert1230, align 8, !tbaa !55
  %i.byr = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.bys = getelementptr inbounds nuw i8, ptr %i.axg, i64 24
  %i.byt = load ptr, ptr %i.bys, align 8, !tbaa !55
  %i.byu = getelementptr inbounds nuw i8, ptr %i.axg, i64 128
  %i.byv = getelementptr inbounds nuw i8, ptr %i.axg, i64 12 ; 2 uses
  %i.byw = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.byx = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.byy = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.byz = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bza = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bze = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.axd, i64 12
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.axd, i64 136
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.axd, i64 432
  br label %bb.dy

.preheader1115:                                   ; preds = %bb.dx
  br i1 %i.axn, label %.lr.ph1146, label %.loopexit

.lr.ph1146:                                       ; preds = %.preheader1115
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bzx = load ptr, ptr %i.bzw, align 8, !tbaa !55
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.axg, i64 24
  %i.caa = load ptr, ptr %i.bzz, align 8, !tbaa !55
  %i.cab = getelementptr inbounds nuw i8, ptr %i.axg, i64 128
  %i.cac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cad = getelementptr inbounds nuw i8, ptr %i.axd, i64 12 ; 4 uses
  %i.cae = getelementptr inbounds nuw i8, ptr %i.axd, i64 32 ; 3 uses
  %i.caf = getelementptr inbounds nuw i8, ptr %i.axd, i64 136 ; 4 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %i.axd, i64 432 ; 3 uses
  %i.cah = sext i32 %i.b to i64
  %i.cai = sext i32 %.sroa.speculated to i64
  br label %bb.eq

bb.dy:                                            ; preds = %.lr.ph1139, %._crit_edge1137
  %indvars.iv1195 = phi i64 [ %i.byp, %.lr.ph1139 ], [ %indvars.iv.next1196, %._crit_edge1137 ] ; 13 uses
  %i.caj = load i64, ptr %i.byr, align 8, !tbaa !40 ; 2 uses
  %i.cak = mul i64 %i.caj, %indvars.iv1195
  %i.cal = getelementptr inbounds nuw i8, ptr %.pre1231, i64 %i.cak ; 3 uses
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cal, i64 %i.caj ; 2 uses
  %i.can = load i64, ptr %i.byu, align 8, !tbaa !40 ; 2 uses
  %i.cao = mul i64 %i.can, %indvars.iv1195
  %i.cap = getelementptr inbounds nuw i8, ptr %i.byt, i64 %i.cao ; 4 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 %i.can ; 4 uses
  %i.car = load i32, ptr %i.byv, align 4, !tbaa !52
  %i.cas = icmp sgt i32 %i.car, 0
  br i1 %i.cas, label %.lr.ph1136, label %._crit_edge1137

.lr.ph1136:                                       ; preds = %bb.dy
  %i.cat = or disjoint i64 %indvars.iv1195, 1     ; 9 uses
  %i.cau = trunc nsw i64 %indvars.iv1195 to i32   ; 4 uses
  %i.cav = trunc nsw i64 %i.cat to i32            ; 4 uses
  %invariant.op1284 = add i64 %indvars.iv1195, %i.cat
  %invariant.op1286 = add i64 %indvars.iv1195, %i.cat
  %i.caw = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cax = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cay = trunc nsw i64 %i.cat to i32            ; 2 uses
  %i.caz = trunc nsw i64 %i.cat to i32            ; 2 uses
  %i.cba = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cbb = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cbc = trunc nsw i64 %i.cat to i32            ; 2 uses
  %i.cbd = trunc nsw i64 %i.cat to i32            ; 2 uses
  %i.cbe = insertelement <2 x i64> poison, i64 %i.cat, i64 1 ; 2 uses
  br label %bb.dz

._crit_edge1137:                                  ; preds = %bb.ep, %bb.dy
  %indvars.iv.next1196 = add nsw i64 %indvars.iv1195, 2 ; 2 uses
  %i.cbf = icmp slt i64 %indvars.iv.next1196, %i.byq
  br i1 %i.cbf, label %bb.dy, label %.loopexit, !llvm.loop !437

bb.dz:                                            ; preds = %.lr.ph1136, %bb.ep
  %indvars.iv1192 = phi i64 [ 0, %.lr.ph1136 ], [ %indvars.iv.next1193, %bb.ep ] ; 18 uses
  %i.cbg = phi ptr [ %i.byv, %.lr.ph1136 ], [ %i.axk, %bb.ep ] ; 2 uses
  %i.cbh = getelementptr inbounds nuw [4 x i8], ptr %i.cap, i64 %indvars.iv1192 ; 4 uses
  %i.cbi = load i32, ptr %i.cbh, align 4, !tbaa !33 ; 2 uses
  %i.cbj = icmp sgt i32 %i.cbi, 0
  br i1 %i.cbj, label %bb.ea, label %bb.en

bb.ea:                                            ; preds = %bb.dz
  %i.cbk = load ptr, ptr %i.byo, align 8, !tbaa !128
  %i.cbl = zext nneg i32 %i.cbi to i64
  %i.cbm = getelementptr inbounds nuw [4 x i8], ptr %i.cbk, i64 %i.cbl
  %i.cbn = load i32, ptr %i.cbm, align 4, !tbaa !33 ; 8 uses
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cal, i64 %indvars.iv1192
  %i.cbp = load i8, ptr %i.cbo, align 1, !tbaa !32
  %.not770 = icmp eq i8 %i.cbp, 0
  br i1 %.not770, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  store i32 %i.cbn, ptr %i.cbh, align 4, !tbaa !33
  %i.cbq = load i32, ptr %i.byy, align 4, !tbaa !96
  %i.cbr = icmp slt i32 %i.cbq, 2
  %i.cbs = load ptr, ptr %i.byz, align 8, !tbaa !55
  %i.cbt = load i64, ptr %i.bza, align 8
  %i.cbu = sext i32 %i.cbn to i64                 ; 2 uses
  %i.cbv = mul i64 %i.cbt, %i.cbu
  %.sink.idx.i.i1036 = select i1 %i.cbr, i64 0, i64 %i.cbv
  %.sink.i.i1037 = getelementptr inbounds nuw i8, ptr %i.cbs, i64 %.sink.idx.i.i1036 ; 6 uses
  %i.cbw = load i32, ptr %.sink.i.i1037, align 4, !tbaa !33
  %i.cbx = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1038 = tail call i32 @llvm.smin.i32(i32 %i.cbw, i32 %i.cbx)
  store i32 %..i1038, ptr %.sink.i.i1037, align 4, !tbaa !33
  %i.cby = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 8 ; 2 uses
  %i.cbz = load i32, ptr %i.cby, align 4, !tbaa !33
  %i.cca = tail call i32 @llvm.smax.i32(i32 %i.cbz, i32 %i.cbx)
  store i32 %i.cca, ptr %i.cby, align 4, !tbaa !33
  %i.ccb = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 4 ; 2 uses
  %i.ccc = load i32, ptr %i.ccb, align 4, !tbaa !33
  %i.ccd = tail call i32 @llvm.smin.i32(i32 %i.ccc, i32 %i.caw)
  store i32 %i.ccd, ptr %i.ccb, align 4, !tbaa !33
  %i.cce = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 12 ; 2 uses
  %i.ccf = load i32, ptr %i.cce, align 4, !tbaa !33
  %i.ccg = tail call i32 @llvm.smax.i32(i32 %i.ccf, i32 %i.caw)
  store i32 %i.ccg, ptr %i.cce, align 4, !tbaa !33
  %i.cch = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 16 ; 2 uses
  %i.cci = load i32, ptr %i.cch, align 4, !tbaa !33
  %i.ccj = add nsw i32 %i.cci, 1
  store i32 %i.ccj, ptr %i.cch, align 4, !tbaa !33
  %i.cck = load ptr, ptr %i.bzb, align 8, !tbaa !50
  %i.ccl = getelementptr inbounds nuw [16 x i8], ptr %i.cck, i64 %i.cbu ; 3 uses
  %i.ccm = load i64, ptr %i.ccl, align 8, !tbaa !116
  %i.ccn = add i64 %i.ccm, %indvars.iv1192
  store i64 %i.ccn, ptr %i.ccl, align 8, !tbaa !116
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  store i32 0, ptr %i.cbh, align 4, !tbaa !33
  %i.cco = load ptr, ptr %i.bzc, align 8, !tbaa !55 ; 6 uses
  %i.ccp = load i32, ptr %i.cco, align 4, !tbaa !33
  %i.ccq = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1041 = tail call i32 @llvm.smin.i32(i32 %i.ccp, i32 %i.ccq)
  store i32 %..i1041, ptr %i.cco, align 4, !tbaa !33
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.cco, i64 8 ; 2 uses
  %i.ccs = load i32, ptr %i.ccr, align 4, !tbaa !33
  %i.cct = tail call i32 @llvm.smax.i32(i32 %i.ccs, i32 %i.ccq)
  store i32 %i.cct, ptr %i.ccr, align 4, !tbaa !33
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cco, i64 4 ; 2 uses
  %i.ccv = load i32, ptr %i.ccu, align 4, !tbaa !33
  %i.ccw = tail call i32 @llvm.smin.i32(i32 %i.ccv, i32 %i.cax)
  store i32 %i.ccw, ptr %i.ccu, align 4, !tbaa !33
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.cco, i64 12 ; 2 uses
  %i.ccy = load i32, ptr %i.ccx, align 4, !tbaa !33
  %i.ccz = tail call i32 @llvm.smax.i32(i32 %i.ccy, i32 %i.cax)
  store i32 %i.ccz, ptr %i.ccx, align 4, !tbaa !33
  %i.cda = getelementptr inbounds nuw i8, ptr %i.cco, i64 16 ; 2 uses
  %i.cdb = load i32, ptr %i.cda, align 4, !tbaa !33
  %i.cdc = add nsw i32 %i.cdb, 1
  store i32 %i.cdc, ptr %i.cda, align 4, !tbaa !33
  %i.cdd = load ptr, ptr %i.bzd, align 8, !tbaa !50 ; 3 uses
  %i.cde = load i64, ptr %i.cdd, align 8, !tbaa !116
  %i.cdf = add i64 %i.cde, %indvars.iv1192
  store i64 %i.cdf, ptr %i.cdd, align 8, !tbaa !116
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.sink1366 = phi ptr [ %i.cdd, %bb.ec ], [ %i.ccl, %bb.eb ]
  %i.cdg = getelementptr inbounds nuw i8, ptr %.sink1366, i64 8 ; 2 uses
  %i.cdh = load i64, ptr %i.cdg, align 8, !tbaa !117
  %i.cdi = add i64 %i.cdh, %indvars.iv1195
  store i64 %i.cdi, ptr %i.cdg, align 8, !tbaa !117
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.cam, i64 %indvars.iv1192
  %i.cdk = load i8, ptr %i.cdj, align 1, !tbaa !32
  %.not771 = icmp eq i8 %i.cdk, 0
  %i.cdl = getelementptr inbounds nuw [4 x i8], ptr %i.caq, i64 %indvars.iv1192 ; 2 uses
  br i1 %.not771, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  store i32 %i.cbn, ptr %i.cdl, align 4, !tbaa !33
  %i.cdm = load i32, ptr %i.bze, align 4, !tbaa !96
  %i.cdn = icmp slt i32 %i.cdm, 2
  %i.cdo = load ptr, ptr %i.bzf, align 8, !tbaa !55
  %i.cdp = load i64, ptr %i.bzg, align 8
  %i.cdq = sext i32 %i.cbn to i64                 ; 2 uses
  %i.cdr = mul i64 %i.cdp, %i.cdq
  %.sink.idx.i.i1042 = select i1 %i.cdn, i64 0, i64 %i.cdr
  %.sink.i.i1043 = getelementptr inbounds nuw i8, ptr %i.cdo, i64 %.sink.idx.i.i1042 ; 6 uses
  %i.cds = load i32, ptr %.sink.i.i1043, align 4, !tbaa !33
  %i.cdt = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1044 = tail call i32 @llvm.smin.i32(i32 %i.cds, i32 %i.cdt)
  store i32 %..i1044, ptr %.sink.i.i1043, align 4, !tbaa !33
  %i.cdu = getelementptr inbounds nuw i8, ptr %.sink.i.i1043, i64 8 ; 2 uses
  %i.cdv = load i32, ptr %i.cdu, align 4, !tbaa !33
  %i.cdw = tail call i32 @llvm.smax.i32(i32 %i.cdv, i32 %i.cdt)
  store i32 %i.cdw, ptr %i.cdu, align 4, !tbaa !33
  %i.cdx = getelementptr inbounds nuw i8, ptr %.sink.i.i1043, i64 4 ; 2 uses
  %i.cdy = load i32, ptr %i.cdx, align 4, !tbaa !33
  %i.cdz = tail call i32 @llvm.smin.i32(i32 %i.cdy, i32 %i.cay)
  store i32 %i.cdz, ptr %i.cdx, align 4, !tbaa !33
  %i.cea = getelementptr inbounds nuw i8, ptr %.sink.i.i1043, i64 12 ; 2 uses
  %i.ceb = load i32, ptr %i.cea, align 4, !tbaa !33
  %i.cec = tail call i32 @llvm.smax.i32(i32 %i.ceb, i32 %i.cay)
  store i32 %i.cec, ptr %i.cea, align 4, !tbaa !33
  %i.ced = getelementptr inbounds nuw i8, ptr %.sink.i.i1043, i64 16 ; 2 uses
  %i.cee = load i32, ptr %i.ced, align 4, !tbaa !33
  %i.cef = add nsw i32 %i.cee, 1
  store i32 %i.cef, ptr %i.ced, align 4, !tbaa !33
  %i.ceg = load ptr, ptr %i.bzh, align 8, !tbaa !50
  %i.ceh = getelementptr inbounds nuw [16 x i8], ptr %i.ceg, i64 %i.cdq ; 3 uses
  %i.cei = load i64, ptr %i.ceh, align 8, !tbaa !116
  %i.cej = add i64 %i.cei, %indvars.iv1192
  store i64 %i.cej, ptr %i.ceh, align 8, !tbaa !116
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  store i32 0, ptr %i.cdl, align 4, !tbaa !33
  %i.cek = load ptr, ptr %i.bzi, align 8, !tbaa !55 ; 6 uses
  %i.cel = load i32, ptr %i.cek, align 4, !tbaa !33
  %i.cem = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1047 = tail call i32 @llvm.smin.i32(i32 %i.cel, i32 %i.cem)
  store i32 %..i1047, ptr %i.cek, align 4, !tbaa !33
  %i.cen = getelementptr inbounds nuw i8, ptr %i.cek, i64 8 ; 2 uses
  %i.ceo = load i32, ptr %i.cen, align 4, !tbaa !33
  %i.cep = tail call i32 @llvm.smax.i32(i32 %i.ceo, i32 %i.cem)
  store i32 %i.cep, ptr %i.cen, align 4, !tbaa !33
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cek, i64 4 ; 2 uses
  %i.cer = load i32, ptr %i.ceq, align 4, !tbaa !33
  %i.ces = tail call i32 @llvm.smin.i32(i32 %i.cer, i32 %i.caz)
  store i32 %i.ces, ptr %i.ceq, align 4, !tbaa !33
  %i.cet = getelementptr inbounds nuw i8, ptr %i.cek, i64 12 ; 2 uses
  %i.ceu = load i32, ptr %i.cet, align 4, !tbaa !33
  %i.cev = tail call i32 @llvm.smax.i32(i32 %i.ceu, i32 %i.caz)
  store i32 %i.cev, ptr %i.cet, align 4, !tbaa !33
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cek, i64 16 ; 2 uses
  %i.cex = load i32, ptr %i.cew, align 4, !tbaa !33
  %i.cey = add nsw i32 %i.cex, 1
  store i32 %i.cey, ptr %i.cew, align 4, !tbaa !33
  %i.cez = load ptr, ptr %i.bzj, align 8, !tbaa !50 ; 3 uses
  %i.cfa = load i64, ptr %i.cez, align 8, !tbaa !116
  %i.cfb = add i64 %i.cfa, %indvars.iv1192
  store i64 %i.cfb, ptr %i.cez, align 8, !tbaa !116
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.sink1369 = phi ptr [ %i.cez, %bb.ef ], [ %i.ceh, %bb.ee ]
  %i.cfc = getelementptr inbounds nuw i8, ptr %.sink1369, i64 8 ; 2 uses
  %i.cfd = load i64, ptr %i.cfc, align 8, !tbaa !117
  %i.cfe = add i64 %i.cfd, %i.cat
  store i64 %i.cfe, ptr %i.cfc, align 8, !tbaa !117
  %i.cff = or disjoint i64 %indvars.iv1192, 1     ; 13 uses
  %i.cfg = load i32, ptr %i.cbg, align 4, !tbaa !52
  %i.cfh = sext i32 %i.cfg to i64
  %i.cfi = icmp slt i64 %i.cff, %i.cfh
  br i1 %i.cfi, label %bb.eh, label %bb.ep

bb.eh:                                            ; preds = %bb.eg
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.cal, i64 %i.cff
  %i.cfk = load i8, ptr %i.cfj, align 1, !tbaa !32
  %.not772 = icmp eq i8 %i.cfk, 0
  %i.cfl = getelementptr inbounds nuw [4 x i8], ptr %i.cap, i64 %i.cff ; 2 uses
  br i1 %.not772, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i32 %i.cbn, ptr %i.cfl, align 4, !tbaa !33
  %i.cfm = load i32, ptr %i.bzk, align 4, !tbaa !96
  %i.cfn = icmp slt i32 %i.cfm, 2
  %i.cfo = load ptr, ptr %i.bzl, align 8, !tbaa !55
  %i.cfp = load i64, ptr %i.bzm, align 8
  %i.cfq = sext i32 %i.cbn to i64                 ; 2 uses
  %i.cfr = mul i64 %i.cfp, %i.cfq
  %.sink.idx.i.i1048 = select i1 %i.cfn, i64 0, i64 %i.cfr
  %.sink.i.i1049 = getelementptr inbounds nuw i8, ptr %i.cfo, i64 %.sink.idx.i.i1048 ; 6 uses
  %i.cfs = load i32, ptr %.sink.i.i1049, align 4, !tbaa !33
  %i.cft = trunc nuw nsw i64 %i.cff to i32        ; 2 uses
  %..i1050 = tail call i32 @llvm.smin.i32(i32 %i.cfs, i32 %i.cft)
  store i32 %..i1050, ptr %.sink.i.i1049, align 4, !tbaa !33
  %i.cfu = getelementptr inbounds nuw i8, ptr %.sink.i.i1049, i64 8 ; 2 uses
  %i.cfv = load i32, ptr %i.cfu, align 4, !tbaa !33
  %i.cfw = tail call i32 @llvm.smax.i32(i32 %i.cfv, i32 %i.cft)
  store i32 %i.cfw, ptr %i.cfu, align 4, !tbaa !33
  %i.cfx = getelementptr inbounds nuw i8, ptr %.sink.i.i1049, i64 4 ; 2 uses
  %i.cfy = load i32, ptr %i.cfx, align 4, !tbaa !33
  %i.cfz = tail call i32 @llvm.smin.i32(i32 %i.cfy, i32 %i.cba)
  store i32 %i.cfz, ptr %i.cfx, align 4, !tbaa !33
  %i.cga = getelementptr inbounds nuw i8, ptr %.sink.i.i1049, i64 12 ; 2 uses
  %i.cgb = load i32, ptr %i.cga, align 4, !tbaa !33
  %i.cgc = tail call i32 @llvm.smax.i32(i32 %i.cgb, i32 %i.cba)
  store i32 %i.cgc, ptr %i.cga, align 4, !tbaa !33
  %i.cgd = getelementptr inbounds nuw i8, ptr %.sink.i.i1049, i64 16 ; 2 uses
  %i.cge = load i32, ptr %i.cgd, align 4, !tbaa !33
  %i.cgf = add nsw i32 %i.cge, 1
  store i32 %i.cgf, ptr %i.cgd, align 4, !tbaa !33
  %i.cgg = load ptr, ptr %i.bzn, align 8, !tbaa !50
  %i.cgh = getelementptr inbounds nuw [16 x i8], ptr %i.cgg, i64 %i.cfq ; 3 uses
  %i.cgi = load i64, ptr %i.cgh, align 8, !tbaa !116
  %i.cgj = add i64 %i.cgi, %i.cff
  store i64 %i.cgj, ptr %i.cgh, align 8, !tbaa !116
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  store i32 0, ptr %i.cfl, align 4, !tbaa !33
  %i.cgk = load ptr, ptr %i.bzo, align 8, !tbaa !55 ; 6 uses
  %i.cgl = load i32, ptr %i.cgk, align 4, !tbaa !33
  %i.cgm = trunc nuw nsw i64 %i.cff to i32        ; 2 uses
  %..i1053 = tail call i32 @llvm.smin.i32(i32 %i.cgl, i32 %i.cgm)
  store i32 %..i1053, ptr %i.cgk, align 4, !tbaa !33
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.cgk, i64 8 ; 2 uses
  %i.cgo = load i32, ptr %i.cgn, align 4, !tbaa !33
  %i.cgp = tail call i32 @llvm.smax.i32(i32 %i.cgo, i32 %i.cgm)
  store i32 %i.cgp, ptr %i.cgn, align 4, !tbaa !33
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgk, i64 4 ; 2 uses
  %i.cgr = load i32, ptr %i.cgq, align 4, !tbaa !33
  %i.cgs = tail call i32 @llvm.smin.i32(i32 %i.cgr, i32 %i.cbb)
  store i32 %i.cgs, ptr %i.cgq, align 4, !tbaa !33
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgk, i64 12 ; 2 uses
  %i.cgu = load i32, ptr %i.cgt, align 4, !tbaa !33
  %i.cgv = tail call i32 @llvm.smax.i32(i32 %i.cgu, i32 %i.cbb)
  store i32 %i.cgv, ptr %i.cgt, align 4, !tbaa !33
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.cgk, i64 16 ; 2 uses
  %i.cgx = load i32, ptr %i.cgw, align 4, !tbaa !33
  %i.cgy = add nsw i32 %i.cgx, 1
  store i32 %i.cgy, ptr %i.cgw, align 4, !tbaa !33
  %i.cgz = load ptr, ptr %i.bzp, align 8, !tbaa !50 ; 3 uses
  %i.cha = load i64, ptr %i.cgz, align 8, !tbaa !116
  %i.chb = add i64 %i.cha, %i.cff
  store i64 %i.chb, ptr %i.cgz, align 8, !tbaa !116
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.sink1372 = phi ptr [ %i.cgz, %bb.ej ], [ %i.cgh, %bb.ei ]
  %i.chc = getelementptr inbounds nuw i8, ptr %.sink1372, i64 8 ; 2 uses
  %i.chd = load i64, ptr %i.chc, align 8, !tbaa !117
  %i.che = add i64 %i.chd, %indvars.iv1195
  store i64 %i.che, ptr %i.chc, align 8, !tbaa !117
  %i.chf = getelementptr inbounds nuw i8, ptr %i.cam, i64 %i.cff
  %i.chg = load i8, ptr %i.chf, align 1, !tbaa !32
  %.not773 = icmp eq i8 %i.chg, 0
  %i.chh = getelementptr inbounds nuw [4 x i8], ptr %i.caq, i64 %i.cff ; 2 uses
  br i1 %.not773, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store i32 %i.cbn, ptr %i.chh, align 4, !tbaa !33
  %i.chi = load i32, ptr %i.bzq, align 4, !tbaa !96
  %i.chj = icmp slt i32 %i.chi, 2
  %i.chk = load ptr, ptr %i.bzr, align 8, !tbaa !55
  %i.chl = load i64, ptr %i.bzs, align 8
  %i.chm = sext i32 %i.cbn to i64                 ; 2 uses
  %i.chn = mul i64 %i.chl, %i.chm
  %.sink.idx.i.i1054 = select i1 %i.chj, i64 0, i64 %i.chn
  %.sink.i.i1055 = getelementptr inbounds nuw i8, ptr %i.chk, i64 %.sink.idx.i.i1054 ; 6 uses
  %i.cho = load i32, ptr %.sink.i.i1055, align 4, !tbaa !33
  %i.chp = trunc nuw nsw i64 %i.cff to i32        ; 2 uses
  %..i1056 = tail call i32 @llvm.smin.i32(i32 %i.cho, i32 %i.chp)
  store i32 %..i1056, ptr %.sink.i.i1055, align 4, !tbaa !33
  %i.chq = getelementptr inbounds nuw i8, ptr %.sink.i.i1055, i64 8 ; 2 uses
  %i.chr = load i32, ptr %i.chq, align 4, !tbaa !33
  %i.chs = tail call i32 @llvm.smax.i32(i32 %i.chr, i32 %i.chp)
  store i32 %i.chs, ptr %i.chq, align 4, !tbaa !33
  %i.cht = getelementptr inbounds nuw i8, ptr %.sink.i.i1055, i64 4 ; 2 uses
  %i.chu = load i32, ptr %i.cht, align 4, !tbaa !33
  %i.chv = tail call i32 @llvm.smin.i32(i32 %i.chu, i32 %i.cbc)
  store i32 %i.chv, ptr %i.cht, align 4, !tbaa !33
  %i.chw = getelementptr inbounds nuw i8, ptr %.sink.i.i1055, i64 12 ; 2 uses
  %i.chx = load i32, ptr %i.chw, align 4, !tbaa !33
  %i.chy = tail call i32 @llvm.smax.i32(i32 %i.chx, i32 %i.cbc)
  store i32 %i.chy, ptr %i.chw, align 4, !tbaa !33
  %i.chz = getelementptr inbounds nuw i8, ptr %.sink.i.i1055, i64 16 ; 2 uses
  %i.cia = load i32, ptr %i.chz, align 4, !tbaa !33
  %i.cib = add nsw i32 %i.cia, 1
  store i32 %i.cib, ptr %i.chz, align 4, !tbaa !33
  %i.cic = load ptr, ptr %i.bzt, align 8, !tbaa !50
  %i.cid = getelementptr inbounds nuw [16 x i8], ptr %i.cic, i64 %i.chm ; 2 uses
  %i.cie = load <2 x i64>, ptr %i.cid, align 8, !tbaa !40
  %i.cif = insertelement <2 x i64> %i.cbe, i64 %i.cff, i64 0
  %i.cig = add <2 x i64> %i.cie, %i.cif
  store <2 x i64> %i.cig, ptr %i.cid, align 8, !tbaa !40
  br label %bb.ep

bb.em:                                            ; preds = %bb.ek
  store i32 0, ptr %i.chh, align 4, !tbaa !33
  %i.cih = load ptr, ptr %i.bzu, align 8, !tbaa !55 ; 6 uses
  %i.cii = load i32, ptr %i.cih, align 4, !tbaa !33
  %i.cij = trunc nuw nsw i64 %i.cff to i32        ; 2 uses
  %..i1059 = tail call i32 @llvm.smin.i32(i32 %i.cii, i32 %i.cij)
  store i32 %..i1059, ptr %i.cih, align 4, !tbaa !33
  %i.cik = getelementptr inbounds nuw i8, ptr %i.cih, i64 8 ; 2 uses
  %i.cil = load i32, ptr %i.cik, align 4, !tbaa !33
  %i.cim = tail call i32 @llvm.smax.i32(i32 %i.cil, i32 %i.cij)
  store i32 %i.cim, ptr %i.cik, align 4, !tbaa !33
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cih, i64 4 ; 2 uses
  %i.cio = load i32, ptr %i.cin, align 4, !tbaa !33
  %i.cip = tail call i32 @llvm.smin.i32(i32 %i.cio, i32 %i.cbd)
  store i32 %i.cip, ptr %i.cin, align 4, !tbaa !33
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cih, i64 12 ; 2 uses
  %i.cir = load i32, ptr %i.ciq, align 4, !tbaa !33
  %i.cis = tail call i32 @llvm.smax.i32(i32 %i.cir, i32 %i.cbd)
  store i32 %i.cis, ptr %i.ciq, align 4, !tbaa !33
  %i.cit = getelementptr inbounds nuw i8, ptr %i.cih, i64 16 ; 2 uses
  %i.ciu = load i32, ptr %i.cit, align 4, !tbaa !33
  %i.civ = add nsw i32 %i.ciu, 1
  store i32 %i.civ, ptr %i.cit, align 4, !tbaa !33
  %i.ciw = load ptr, ptr %i.bzv, align 8, !tbaa !50 ; 2 uses
  %i.cix = load <2 x i64>, ptr %i.ciw, align 8, !tbaa !40
  %i.ciy = insertelement <2 x i64> %i.cbe, i64 %i.cff, i64 0
  %i.ciz = add <2 x i64> %i.cix, %i.ciy
  store <2 x i64> %i.ciz, ptr %i.ciw, align 8, !tbaa !40
  br label %bb.ep

bb.en:                                            ; preds = %bb.dz
  store i32 0, ptr %i.cbh, align 4, !tbaa !33
  %i.cja = getelementptr inbounds nuw [4 x i8], ptr %i.caq, i64 %indvars.iv1192
  store i32 0, ptr %i.cja, align 4, !tbaa !33
  %i.cjb = load ptr, ptr %i.byw, align 8, !tbaa !55 ; 8 uses
  %i.cjc = load i32, ptr %i.cjb, align 4, !tbaa !33
  %i.cjd = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1062 = tail call i32 @llvm.smin.i32(i32 %i.cjc, i32 %i.cjd)
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cjb, i64 8 ; 4 uses
  %i.cjf = load i32, ptr %i.cje, align 4, !tbaa !33
  %i.cjg = tail call i32 @llvm.smax.i32(i32 %i.cjf, i32 %i.cjd)
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cjb, i64 4 ; 4 uses
  %i.cji = load i32, ptr %i.cjh, align 4, !tbaa !33
  %i.cjj = tail call i32 @llvm.smin.i32(i32 %i.cji, i32 %i.cau)
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cjb, i64 12 ; 4 uses
  %i.cjl = load i32, ptr %i.cjk, align 4, !tbaa !33
  %i.cjm = tail call i32 @llvm.smax.i32(i32 %i.cjl, i32 %i.cau)
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cjb, i64 16 ; 4 uses
  %i.cjo = load i32, ptr %i.cjn, align 4, !tbaa !33
  %i.cjp = load ptr, ptr %i.byx, align 8, !tbaa !50 ; 4 uses
  %i.cjq = load i64, ptr %i.cjp, align 8, !tbaa !116
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cjp, i64 8 ; 3 uses
  %i.cjs = load i64, ptr %i.cjr, align 8, !tbaa !117
  store i32 %..i1062, ptr %i.cjb, align 4, !tbaa !33
  store i32 %i.cjg, ptr %i.cje, align 4, !tbaa !33
  %9 = tail call i32 @llvm.smin.i32(i32 %i.cjj, i32 %i.cav)
  store i32 %9, ptr %i.cjh, align 4, !tbaa !33
  %i.cjt = tail call i32 @llvm.smax.i32(i32 %i.cjm, i32 %i.cav)
  store i32 %i.cjt, ptr %i.cjk, align 4, !tbaa !33
  %i.cju = add nsw i32 %i.cjo, 2
  store i32 %i.cju, ptr %i.cjn, align 4, !tbaa !33
  %reass.add = shl nuw i64 %indvars.iv1192, 1
  %i.cjv = add i64 %i.cjq, %reass.add             ; 2 uses
  store i64 %i.cjv, ptr %i.cjp, align 8, !tbaa !116
  %.reass1285 = add i64 %i.cjs, %invariant.op1284 ; 2 uses
  store i64 %.reass1285, ptr %i.cjr, align 8, !tbaa !117
  %i.cjw = or disjoint i64 %indvars.iv1192, 1     ; 5 uses
  %i.cjx = load i32, ptr %i.cbg, align 4, !tbaa !52
  %i.cjy = sext i32 %i.cjx to i64
  %i.cjz = icmp slt i64 %i.cjw, %i.cjy
  br i1 %i.cjz, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.cka = getelementptr inbounds nuw [4 x i8], ptr %i.cap, i64 %i.cjw
  store i32 0, ptr %i.cka, align 4, !tbaa !33
  %i.ckb = getelementptr inbounds nuw [4 x i8], ptr %i.caq, i64 %i.cjw
  store i32 0, ptr %i.ckb, align 4, !tbaa !33
  %i.ckc = load i32, ptr %i.cjb, align 4, !tbaa !33
  %i.ckd = trunc nuw nsw i64 %i.cjw to i32        ; 2 uses
  %..i1068 = tail call i32 @llvm.smin.i32(i32 %i.ckc, i32 %i.ckd)
  %i.cke = load i32, ptr %i.cje, align 4, !tbaa !33
  %i.ckf = tail call i32 @llvm.smax.i32(i32 %i.cke, i32 %i.ckd)
  %i.ckg = load i32, ptr %i.cjh, align 4, !tbaa !33
  %i.ckh = tail call i32 @llvm.smin.i32(i32 %i.ckg, i32 %i.cau)
  %i.cki = load i32, ptr %i.cjk, align 4, !tbaa !33
  %i.ckj = tail call i32 @llvm.smax.i32(i32 %i.cki, i32 %i.cau)
  %i.ckk = load i32, ptr %i.cjn, align 4, !tbaa !33
  store i32 %..i1068, ptr %i.cjb, align 4, !tbaa !33
  store i32 %i.ckf, ptr %i.cje, align 4, !tbaa !33
  %10 = tail call i32 @llvm.smin.i32(i32 %i.ckh, i32 %i.cav)
  store i32 %10, ptr %i.cjh, align 4, !tbaa !33
  %i.ckl = tail call i32 @llvm.smax.i32(i32 %i.ckj, i32 %i.cav)
  store i32 %i.ckl, ptr %i.cjk, align 4, !tbaa !33
  %i.ckm = add nsw i32 %i.ckk, 2
  store i32 %i.ckm, ptr %i.cjn, align 4, !tbaa !33
  %reass.add1382 = shl nuw i64 %i.cjw, 1
  %i.ckn = add i64 %i.cjv, %reass.add1382
  store i64 %i.ckn, ptr %i.cjp, align 8, !tbaa !116
  %.reass1287 = add i64 %.reass1285, %invariant.op1286
  store i64 %.reass1287, ptr %i.cjr, align 8, !tbaa !117
  br label %bb.ep

bb.ep:                                            ; preds = %bb.en, %bb.eo, %bb.eg, %bb.em, %bb.el
  %indvars.iv.next1193 = add nuw nsw i64 %indvars.iv1192, 2 ; 2 uses
  %i.cko = load i32, ptr %i.axk, align 4, !tbaa !52
  %i.ckp = sext i32 %i.cko to i64
  %i.ckq = icmp slt i64 %indvars.iv.next1193, %i.ckp
  br i1 %i.ckq, label %bb.dz, label %._crit_edge1137, !llvm.loop !438

bb.eq:                                            ; preds = %.lr.ph1146, %._crit_edge1144
  %i.ckr = phi i32 [ %i.axl, %.lr.ph1146 ], [ %i.cln, %._crit_edge1144 ] ; 2 uses
  %indvars.iv1201 = phi i64 [ %i.cah, %.lr.ph1146 ], [ %indvars.iv.next1202, %._crit_edge1144 ] ; 12 uses
  %i.cks = load i64, ptr %i.bzy, align 8, !tbaa !40 ; 2 uses
  %i.ckt = mul i64 %i.cks, %indvars.iv1201
  %i.cku = getelementptr inbounds nuw i8, ptr %i.bzx, i64 %i.ckt ; 3 uses
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cku, i64 %i.cks ; 2 uses
  %i.ckw = load i64, ptr %i.cab, align 8, !tbaa !40 ; 2 uses
  %i.ckx = mul i64 %i.ckw, %indvars.iv1201
  %i.cky = getelementptr inbounds nuw i8, ptr %i.caa, i64 %i.ckx ; 4 uses
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.cky, i64 %i.ckw ; 4 uses
  %i.cla = icmp sgt i32 %i.ckr, 0
  br i1 %i.cla, label %.lr.ph1143, label %._crit_edge1144

.lr.ph1143:                                       ; preds = %bb.eq
  %i.clb = or disjoint i64 %indvars.iv1201, 1     ; 8 uses
  %i.clc = trunc nsw i64 %indvars.iv1201 to i32   ; 2 uses
  %i.cld = trunc nsw i64 %i.clb to i32            ; 2 uses
  %invariant.op12881384 = add i64 %indvars.iv1201, %i.clb
  %invariant.op1292 = shl i64 %invariant.op12881384, 1
  %i.cle = trunc nsw i64 %indvars.iv1201 to i32   ; 2 uses
  %i.clf = trunc nsw i64 %indvars.iv1201 to i32   ; 2 uses
  %i.clg = trunc nsw i64 %indvars.iv1201 to i32   ; 2 uses
  %i.clh = trunc nsw i64 %indvars.iv1201 to i32   ; 2 uses
  %i.cli = trunc nsw i64 %i.clb to i32            ; 2 uses
  %i.clj = trunc nsw i64 %i.clb to i32            ; 2 uses
  %i.clk = trunc nsw i64 %i.clb to i32            ; 2 uses
  %i.cll = trunc nsw i64 %i.clb to i32            ; 2 uses
  %i.clm = insertelement <2 x i64> poison, i64 %i.clb, i64 1 ; 2 uses
  br label %bb.er

._crit_edge1144:                                  ; preds = %bb.ff, %bb.eq
  %i.cln = phi i32 [ %i.ckr, %bb.eq ], [ %i.ctz, %bb.ff ]
  %indvars.iv.next1202 = add nsw i64 %indvars.iv1201, 2 ; 2 uses
  %i.clo = icmp slt i64 %indvars.iv.next1202, %i.cai
  br i1 %i.clo, label %bb.eq, label %.loopexit, !llvm.loop !439

bb.er:                                            ; preds = %.lr.ph1143, %bb.ff
  %indvars.iv1198 = phi i64 [ 0, %.lr.ph1143 ], [ %indvars.iv.next1199, %bb.ff ] ; 19 uses
  %i.clp = getelementptr inbounds nuw [4 x i8], ptr %i.cky, i64 %indvars.iv1198 ; 4 uses
  %i.clq = load i32, ptr %i.clp, align 4, !tbaa !33 ; 2 uses
  %i.clr = icmp sgt i32 %i.clq, 0
  br i1 %i.clr, label %bb.es, label %bb.fe

bb.es:                                            ; preds = %bb.er
  %i.cls = load ptr, ptr %i.cac, align 8, !tbaa !128
  %i.clt = zext nneg i32 %i.clq to i64
  %i.clu = getelementptr inbounds nuw [4 x i8], ptr %i.cls, i64 %i.clt
  %i.clv = load i32, ptr %i.clu, align 4, !tbaa !33 ; 8 uses
  %i.clw = getelementptr inbounds nuw i8, ptr %i.cku, i64 %indvars.iv1198
  %i.clx = load i8, ptr %i.clw, align 1, !tbaa !32
  %.not766 = icmp eq i8 %i.clx, 0
  br i1 %.not766, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  store i32 %i.clv, ptr %i.clp, align 4, !tbaa !33
  %i.cly = load i32, ptr %i.cad, align 4, !tbaa !96
  %i.clz = icmp slt i32 %i.cly, 2
  %i.cma = load ptr, ptr %i.cae, align 8, !tbaa !55 ; 2 uses
  %i.cmb = load i64, ptr %i.caf, align 8
  %i.cmc = sext i32 %i.clv to i64                 ; 2 uses
  %i.cmd = mul i64 %i.cmb, %i.cmc
  %.sink.idx.i.i1072 = select i1 %i.clz, i64 0, i64 %i.cmd
  %.sink.i.i1073 = getelementptr inbounds nuw i8, ptr %i.cma, i64 %.sink.idx.i.i1072 ; 6 uses
  %i.cme = load i32, ptr %.sink.i.i1073, align 4, !tbaa !33
  %i.cmf = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1074 = tail call i32 @llvm.smin.i32(i32 %i.cme, i32 %i.cmf)
  store i32 %..i1074, ptr %.sink.i.i1073, align 4, !tbaa !33
  %i.cmg = getelementptr inbounds nuw i8, ptr %.sink.i.i1073, i64 8 ; 2 uses
  %i.cmh = load i32, ptr %i.cmg, align 4, !tbaa !33
  %i.cmi = tail call i32 @llvm.smax.i32(i32 %i.cmh, i32 %i.cmf)
  store i32 %i.cmi, ptr %i.cmg, align 4, !tbaa !33
  %i.cmj = getelementptr inbounds nuw i8, ptr %.sink.i.i1073, i64 4 ; 2 uses
  %i.cmk = load i32, ptr %i.cmj, align 4, !tbaa !33
  %i.cml = tail call i32 @llvm.smin.i32(i32 %i.cmk, i32 %i.cle)
  store i32 %i.cml, ptr %i.cmj, align 4, !tbaa !33
  %i.cmm = getelementptr inbounds nuw i8, ptr %.sink.i.i1073, i64 12 ; 2 uses
  %i.cmn = load i32, ptr %i.cmm, align 4, !tbaa !33
  %i.cmo = tail call i32 @llvm.smax.i32(i32 %i.cmn, i32 %i.cle)
  store i32 %i.cmo, ptr %i.cmm, align 4, !tbaa !33
  %i.cmp = getelementptr inbounds nuw i8, ptr %.sink.i.i1073, i64 16 ; 2 uses
  %i.cmq = load i32, ptr %i.cmp, align 4, !tbaa !33
  %i.cmr = add nsw i32 %i.cmq, 1
  store i32 %i.cmr, ptr %i.cmp, align 4, !tbaa !33
  %i.cms = load ptr, ptr %i.cag, align 8, !tbaa !50 ; 2 uses
  %i.cmt = getelementptr inbounds nuw [16 x i8], ptr %i.cms, i64 %i.cmc ; 3 uses
  %i.cmu = load i64, ptr %i.cmt, align 8, !tbaa !116
  %i.cmv = add i64 %i.cmu, %indvars.iv1198
  store i64 %i.cmv, ptr %i.cmt, align 8, !tbaa !116
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  store i32 0, ptr %i.clp, align 4, !tbaa !33
  %i.cmw = load ptr, ptr %i.cae, align 8, !tbaa !55 ; 7 uses
  %i.cmx = load i32, ptr %i.cmw, align 4, !tbaa !33
  %i.cmy = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1077 = tail call i32 @llvm.smin.i32(i32 %i.cmx, i32 %i.cmy)
  store i32 %..i1077, ptr %i.cmw, align 4, !tbaa !33
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmw, i64 8 ; 2 uses
  %i.cna = load i32, ptr %i.cmz, align 4, !tbaa !33
  %i.cnb = tail call i32 @llvm.smax.i32(i32 %i.cna, i32 %i.cmy)
  store i32 %i.cnb, ptr %i.cmz, align 4, !tbaa !33
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cmw, i64 4 ; 2 uses
  %i.cnd = load i32, ptr %i.cnc, align 4, !tbaa !33
  %i.cne = tail call i32 @llvm.smin.i32(i32 %i.cnd, i32 %i.clf)
  store i32 %i.cne, ptr %i.cnc, align 4, !tbaa !33
  %i.cnf = getelementptr inbounds nuw i8, ptr %i.cmw, i64 12 ; 2 uses
  %i.cng = load i32, ptr %i.cnf, align 4, !tbaa !33
  %i.cnh = tail call i32 @llvm.smax.i32(i32 %i.cng, i32 %i.clf)
  store i32 %i.cnh, ptr %i.cnf, align 4, !tbaa !33
  %i.cni = getelementptr inbounds nuw i8, ptr %i.cmw, i64 16 ; 2 uses
  %i.cnj = load i32, ptr %i.cni, align 4, !tbaa !33
  %i.cnk = add nsw i32 %i.cnj, 1
  store i32 %i.cnk, ptr %i.cni, align 4, !tbaa !33
  %i.cnl = load ptr, ptr %i.cag, align 8, !tbaa !50 ; 4 uses
  %i.cnm = load i64, ptr %i.cnl, align 8, !tbaa !116
  %i.cnn = add i64 %i.cnm, %indvars.iv1198
  store i64 %i.cnn, ptr %i.cnl, align 8, !tbaa !116
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.sink1375 = phi ptr [ %i.cnl, %bb.eu ], [ %i.cmt, %bb.et ]
  %i.cno = phi ptr [ %i.cnl, %bb.eu ], [ %i.cms, %bb.et ] ; 11 uses
  %i.cnp = phi ptr [ %i.cmw, %bb.eu ], [ %i.cma, %bb.et ] ; 21 uses
  %i.cnq = getelementptr inbounds nuw i8, ptr %.sink1375, i64 8 ; 2 uses
  %i.cnr = load i64, ptr %i.cnq, align 8, !tbaa !117
  %i.cns = add i64 %i.cnr, %indvars.iv1201
  store i64 %i.cns, ptr %i.cnq, align 8, !tbaa !117
  %i.cnt = or disjoint i64 %indvars.iv1198, 1     ; 12 uses
  %i.cnu = getelementptr inbounds nuw i8, ptr %i.cku, i64 %i.cnt
  %i.cnv = load i8, ptr %i.cnu, align 1, !tbaa !32
  %.not767 = icmp eq i8 %i.cnv, 0
  %i.cnw = getelementptr inbounds nuw [4 x i8], ptr %i.cky, i64 %i.cnt ; 2 uses
  br i1 %.not767, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  store i32 %i.clv, ptr %i.cnw, align 4, !tbaa !33
  %i.cnx = load i32, ptr %i.cad, align 4, !tbaa !96
  %i.cny = icmp slt i32 %i.cnx, 2
  %i.cnz = load i64, ptr %i.caf, align 8
  %i.coa = sext i32 %i.clv to i64                 ; 2 uses
  %i.cob = mul i64 %i.cnz, %i.coa
  %.sink.idx.i.i1078 = select i1 %i.cny, i64 0, i64 %i.cob
  %.sink.i.i1079 = getelementptr inbounds nuw i8, ptr %i.cnp, i64 %.sink.idx.i.i1078 ; 6 uses
  %i.coc = load i32, ptr %.sink.i.i1079, align 4, !tbaa !33
  %i.cod = trunc nuw nsw i64 %i.cnt to i32        ; 2 uses
  %..i1080 = tail call i32 @llvm.smin.i32(i32 %i.coc, i32 %i.cod)
  store i32 %..i1080, ptr %.sink.i.i1079, align 4, !tbaa !33
  %i.coe = getelementptr inbounds nuw i8, ptr %.sink.i.i1079, i64 8 ; 2 uses
  %i.cof = load i32, ptr %i.coe, align 4, !tbaa !33
  %i.cog = tail call i32 @llvm.smax.i32(i32 %i.cof, i32 %i.cod)
  store i32 %i.cog, ptr %i.coe, align 4, !tbaa !33
  %i.coh = getelementptr inbounds nuw i8, ptr %.sink.i.i1079, i64 4 ; 2 uses
  %i.coi = load i32, ptr %i.coh, align 4, !tbaa !33
  %i.coj = tail call i32 @llvm.smin.i32(i32 %i.coi, i32 %i.clg)
  store i32 %i.coj, ptr %i.coh, align 4, !tbaa !33
  %i.cok = getelementptr inbounds nuw i8, ptr %.sink.i.i1079, i64 12 ; 2 uses
  %i.col = load i32, ptr %i.cok, align 4, !tbaa !33
  %i.com = tail call i32 @llvm.smax.i32(i32 %i.col, i32 %i.clg)
  store i32 %i.com, ptr %i.cok, align 4, !tbaa !33
  %i.con = getelementptr inbounds nuw i8, ptr %.sink.i.i1079, i64 16 ; 2 uses
  %i.coo = load i32, ptr %i.con, align 4, !tbaa !33
  %i.cop = add nsw i32 %i.coo, 1
  store i32 %i.cop, ptr %i.con, align 4, !tbaa !33
  %i.coq = getelementptr inbounds nuw [16 x i8], ptr %i.cno, i64 %i.coa ; 3 uses
  %i.cor = load i64, ptr %i.coq, align 8, !tbaa !116
  %i.cos = add i64 %i.cor, %i.cnt
  store i64 %i.cos, ptr %i.coq, align 8, !tbaa !116
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  store i32 0, ptr %i.cnw, align 4, !tbaa !33
  %i.cot = load i32, ptr %i.cnp, align 4, !tbaa !33
  %i.cou = trunc nuw nsw i64 %i.cnt to i32        ; 2 uses
  %..i1083 = tail call i32 @llvm.smin.i32(i32 %i.cot, i32 %i.cou)
  store i32 %..i1083, ptr %i.cnp, align 4, !tbaa !33
  %i.cov = getelementptr inbounds nuw i8, ptr %i.cnp, i64 8 ; 2 uses
  %i.cow = load i32, ptr %i.cov, align 4, !tbaa !33
  %i.cox = tail call i32 @llvm.smax.i32(i32 %i.cow, i32 %i.cou)
  store i32 %i.cox, ptr %i.cov, align 4, !tbaa !33
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cnp, i64 4 ; 2 uses
  %i.coz = load i32, ptr %i.coy, align 4, !tbaa !33
  %i.cpa = tail call i32 @llvm.smin.i32(i32 %i.coz, i32 %i.clh)
  store i32 %i.cpa, ptr %i.coy, align 4, !tbaa !33
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.cnp, i64 12 ; 2 uses
  %i.cpc = load i32, ptr %i.cpb, align 4, !tbaa !33
  %i.cpd = tail call i32 @llvm.smax.i32(i32 %i.cpc, i32 %i.clh)
  store i32 %i.cpd, ptr %i.cpb, align 4, !tbaa !33
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.cnp, i64 16 ; 2 uses
  %i.cpf = load i32, ptr %i.cpe, align 4, !tbaa !33
  %i.cpg = add nsw i32 %i.cpf, 1
  store i32 %i.cpg, ptr %i.cpe, align 4, !tbaa !33
  %i.cph = load i64, ptr %i.cno, align 8, !tbaa !116
  %i.cpi = add i64 %i.cph, %i.cnt
  store i64 %i.cpi, ptr %i.cno, align 8, !tbaa !116
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.sink1378 = phi ptr [ %i.cno, %bb.ex ], [ %i.coq, %bb.ew ]
  %i.cpj = getelementptr inbounds nuw i8, ptr %.sink1378, i64 8 ; 2 uses
  %i.cpk = load i64, ptr %i.cpj, align 8, !tbaa !117
  %i.cpl = add i64 %i.cpk, %indvars.iv1201
  store i64 %i.cpl, ptr %i.cpj, align 8, !tbaa !117
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.ckv, i64 %indvars.iv1198
  %i.cpn = load i8, ptr %i.cpm, align 1, !tbaa !32
  %.not768 = icmp eq i8 %i.cpn, 0
  %i.cpo = getelementptr inbounds nuw [4 x i8], ptr %i.ckz, i64 %indvars.iv1198 ; 2 uses
  br i1 %.not768, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  store i32 %i.clv, ptr %i.cpo, align 4, !tbaa !33
  %i.cpp = load i32, ptr %i.cad, align 4, !tbaa !96
  %i.cpq = icmp slt i32 %i.cpp, 2
  %i.cpr = load i64, ptr %i.caf, align 8
  %i.cps = sext i32 %i.clv to i64                 ; 2 uses
  %i.cpt = mul i64 %i.cpr, %i.cps
  %.sink.idx.i.i1084 = select i1 %i.cpq, i64 0, i64 %i.cpt
  %.sink.i.i1085 = getelementptr inbounds nuw i8, ptr %i.cnp, i64 %.sink.idx.i.i1084 ; 6 uses
  %i.cpu = load i32, ptr %.sink.i.i1085, align 4, !tbaa !33
  %i.cpv = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1086 = tail call i32 @llvm.smin.i32(i32 %i.cpu, i32 %i.cpv)
  store i32 %..i1086, ptr %.sink.i.i1085, align 4, !tbaa !33
  %i.cpw = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 8 ; 2 uses
  %i.cpx = load i32, ptr %i.cpw, align 4, !tbaa !33
  %i.cpy = tail call i32 @llvm.smax.i32(i32 %i.cpx, i32 %i.cpv)
  store i32 %i.cpy, ptr %i.cpw, align 4, !tbaa !33
  %i.cpz = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 4 ; 2 uses
  %i.cqa = load i32, ptr %i.cpz, align 4, !tbaa !33
  %i.cqb = tail call i32 @llvm.smin.i32(i32 %i.cqa, i32 %i.cli)
  store i32 %i.cqb, ptr %i.cpz, align 4, !tbaa !33
  %i.cqc = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 12 ; 2 uses
  %i.cqd = load i32, ptr %i.cqc, align 4, !tbaa !33
  %i.cqe = tail call i32 @llvm.smax.i32(i32 %i.cqd, i32 %i.cli)
  store i32 %i.cqe, ptr %i.cqc, align 4, !tbaa !33
  %i.cqf = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 16 ; 2 uses
  %i.cqg = load i32, ptr %i.cqf, align 4, !tbaa !33
  %i.cqh = add nsw i32 %i.cqg, 1
  store i32 %i.cqh, ptr %i.cqf, align 4, !tbaa !33
  %i.cqi = getelementptr inbounds nuw [16 x i8], ptr %i.cno, i64 %i.cps ; 3 uses
  %i.cqj = load i64, ptr %i.cqi, align 8, !tbaa !116
  %i.cqk = add i64 %i.cqj, %indvars.iv1198
  store i64 %i.cqk, ptr %i.cqi, align 8, !tbaa !116
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  store i32 0, ptr %i.cpo, align 4, !tbaa !33
  %i.cql = load i32, ptr %i.cnp, align 4, !tbaa !33
  %i.cqm = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1089 = tail call i32 @llvm.smin.i32(i32 %i.cql, i32 %i.cqm)
  store i32 %..i1089, ptr %i.cnp, align 4, !tbaa !33
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cnp, i64 8 ; 2 uses
  %i.cqo = load i32, ptr %i.cqn, align 4, !tbaa !33
  %i.cqp = tail call i32 @llvm.smax.i32(i32 %i.cqo, i32 %i.cqm)
  store i32 %i.cqp, ptr %i.cqn, align 4, !tbaa !33
  %i.cqq = getelementptr inbounds nuw i8, ptr %i.cnp, i64 4 ; 2 uses
  %i.cqr = load i32, ptr %i.cqq, align 4, !tbaa !33
  %i.cqs = tail call i32 @llvm.smin.i32(i32 %i.cqr, i32 %i.clj)
  store i32 %i.cqs, ptr %i.cqq, align 4, !tbaa !33
  %i.cqt = getelementptr inbounds nuw i8, ptr %i.cnp, i64 12 ; 2 uses
  %i.cqu = load i32, ptr %i.cqt, align 4, !tbaa !33
  %i.cqv = tail call i32 @llvm.smax.i32(i32 %i.cqu, i32 %i.clj)
  store i32 %i.cqv, ptr %i.cqt, align 4, !tbaa !33
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cnp, i64 16 ; 2 uses
  %i.cqx = load i32, ptr %i.cqw, align 4, !tbaa !33
  %i.cqy = add nsw i32 %i.cqx, 1
  store i32 %i.cqy, ptr %i.cqw, align 4, !tbaa !33
  %i.cqz = load i64, ptr %i.cno, align 8, !tbaa !116
  %i.cra = add i64 %i.cqz, %indvars.iv1198
  store i64 %i.cra, ptr %i.cno, align 8, !tbaa !116
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.sink1381 = phi ptr [ %i.cno, %bb.fa ], [ %i.cqi, %bb.ez ]
  %i.crb = getelementptr inbounds nuw i8, ptr %.sink1381, i64 8 ; 2 uses
  %i.crc = load i64, ptr %i.crb, align 8, !tbaa !117
  %i.crd = add i64 %i.crc, %i.clb
  store i64 %i.crd, ptr %i.crb, align 8, !tbaa !117
  %i.cre = getelementptr inbounds nuw i8, ptr %i.ckv, i64 %i.cnt
  %i.crf = load i8, ptr %i.cre, align 1, !tbaa !32
  %.not769 = icmp eq i8 %i.crf, 0
  %i.crg = getelementptr inbounds nuw [4 x i8], ptr %i.ckz, i64 %i.cnt ; 2 uses
  br i1 %.not769, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  store i32 %i.clv, ptr %i.crg, align 4, !tbaa !33
  %i.crh = load i32, ptr %i.cad, align 4, !tbaa !96
  %i.cri = icmp slt i32 %i.crh, 2
  %i.crj = load i64, ptr %i.caf, align 8
  %i.crk = sext i32 %i.clv to i64                 ; 2 uses
  %i.crl = mul i64 %i.crj, %i.crk
  %.sink.idx.i.i1090 = select i1 %i.cri, i64 0, i64 %i.crl
  %.sink.i.i1091 = getelementptr inbounds nuw i8, ptr %i.cnp, i64 %.sink.idx.i.i1090 ; 6 uses
  %i.crm = load i32, ptr %.sink.i.i1091, align 4, !tbaa !33
  %i.crn = trunc nuw nsw i64 %i.cnt to i32        ; 2 uses
  %..i1092 = tail call i32 @llvm.smin.i32(i32 %i.crm, i32 %i.crn)
  store i32 %..i1092, ptr %.sink.i.i1091, align 4, !tbaa !33
  %i.cro = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 8 ; 2 uses
  %i.crp = load i32, ptr %i.cro, align 4, !tbaa !33
  %i.crq = tail call i32 @llvm.smax.i32(i32 %i.crp, i32 %i.crn)
  store i32 %i.crq, ptr %i.cro, align 4, !tbaa !33
  %i.crr = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 4 ; 2 uses
  %i.crs = load i32, ptr %i.crr, align 4, !tbaa !33
  %i.crt = tail call i32 @llvm.smin.i32(i32 %i.crs, i32 %i.clk)
  store i32 %i.crt, ptr %i.crr, align 4, !tbaa !33
  %i.cru = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 12 ; 2 uses
  %i.crv = load i32, ptr %i.cru, align 4, !tbaa !33
  %i.crw = tail call i32 @llvm.smax.i32(i32 %i.crv, i32 %i.clk)
  store i32 %i.crw, ptr %i.cru, align 4, !tbaa !33
  %i.crx = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 16 ; 2 uses
  %i.cry = load i32, ptr %i.crx, align 4, !tbaa !33
  %i.crz = add nsw i32 %i.cry, 1
  store i32 %i.crz, ptr %i.crx, align 4, !tbaa !33
  %i.csa = getelementptr inbounds nuw [16 x i8], ptr %i.cno, i64 %i.crk ; 2 uses
  %i.csb = load <2 x i64>, ptr %i.csa, align 8, !tbaa !40
  %i.csc = insertelement <2 x i64> %i.clm, i64 %i.cnt, i64 0
  %i.csd = add <2 x i64> %i.csb, %i.csc
  store <2 x i64> %i.csd, ptr %i.csa, align 8, !tbaa !40
  br label %bb.ff

bb.fd:                                            ; preds = %bb.fb
  store i32 0, ptr %i.crg, align 4, !tbaa !33
  %i.cse = load i32, ptr %i.cnp, align 4, !tbaa !33
  %i.csf = trunc nuw nsw i64 %i.cnt to i32        ; 2 uses
  %..i1095 = tail call i32 @llvm.smin.i32(i32 %i.cse, i32 %i.csf)
  store i32 %..i1095, ptr %i.cnp, align 4, !tbaa !33
  %i.csg = getelementptr inbounds nuw i8, ptr %i.cnp, i64 8 ; 2 uses
  %i.csh = load i32, ptr %i.csg, align 4, !tbaa !33
  %i.csi = tail call i32 @llvm.smax.i32(i32 %i.csh, i32 %i.csf)
  store i32 %i.csi, ptr %i.csg, align 4, !tbaa !33
  %i.csj = getelementptr inbounds nuw i8, ptr %i.cnp, i64 4 ; 2 uses
  %i.csk = load i32, ptr %i.csj, align 4, !tbaa !33
  %i.csl = tail call i32 @llvm.smin.i32(i32 %i.csk, i32 %i.cll)
  store i32 %i.csl, ptr %i.csj, align 4, !tbaa !33
  %i.csm = getelementptr inbounds nuw i8, ptr %i.cnp, i64 12 ; 2 uses
  %i.csn = load i32, ptr %i.csm, align 4, !tbaa !33
  %i.cso = tail call i32 @llvm.smax.i32(i32 %i.csn, i32 %i.cll)
  store i32 %i.cso, ptr %i.csm, align 4, !tbaa !33
  %i.csp = getelementptr inbounds nuw i8, ptr %i.cnp, i64 16 ; 2 uses
  %i.csq = load i32, ptr %i.csp, align 4, !tbaa !33
  %i.csr = add nsw i32 %i.csq, 1
  store i32 %i.csr, ptr %i.csp, align 4, !tbaa !33
  %i.css = load <2 x i64>, ptr %i.cno, align 8, !tbaa !40
  %i.cst = insertelement <2 x i64> %i.clm, i64 %i.cnt, i64 0
  %i.csu = add <2 x i64> %i.css, %i.cst
  store <2 x i64> %i.csu, ptr %i.cno, align 8, !tbaa !40
  br label %bb.ff

bb.fe:                                            ; preds = %bb.er
  store i32 0, ptr %i.clp, align 4, !tbaa !33
  %i.csv = or disjoint i64 %indvars.iv1198, 1     ; 5 uses
  %i.csw = getelementptr inbounds nuw [4 x i8], ptr %i.cky, i64 %i.csv
  store i32 0, ptr %i.csw, align 4, !tbaa !33
  %i.csx = getelementptr inbounds nuw [4 x i8], ptr %i.ckz, i64 %indvars.iv1198
  store i32 0, ptr %i.csx, align 4, !tbaa !33
  %i.csy = getelementptr inbounds nuw [4 x i8], ptr %i.ckz, i64 %i.csv
  store i32 0, ptr %i.csy, align 4, !tbaa !33
  %i.csz = load ptr, ptr %i.cae, align 8, !tbaa !55 ; 6 uses
  %i.cta = load i32, ptr %i.csz, align 4, !tbaa !33
  %i.ctb = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 4 uses
  %..i1098 = tail call i32 @llvm.smin.i32(i32 %i.cta, i32 %i.ctb)
  %i.ctc = getelementptr inbounds nuw i8, ptr %i.csz, i64 8 ; 2 uses
  %i.ctd = load i32, ptr %i.ctc, align 4, !tbaa !33
  %i.cte = tail call i32 @llvm.smax.i32(i32 %i.ctd, i32 %i.ctb)
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.csz, i64 4 ; 2 uses
  %i.ctg = load i32, ptr %i.ctf, align 4, !tbaa !33
  %i.cth = tail call i32 @llvm.smin.i32(i32 %i.ctg, i32 %i.clc)
  %i.cti = getelementptr inbounds nuw i8, ptr %i.csz, i64 12 ; 2 uses
  %i.ctj = load i32, ptr %i.cti, align 4, !tbaa !33
  %i.ctk = tail call i32 @llvm.smax.i32(i32 %i.ctj, i32 %i.clc)
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.csz, i64 16 ; 2 uses
  %i.ctm = load i32, ptr %i.ctl, align 4, !tbaa !33
  %i.ctn = load ptr, ptr %i.cag, align 8, !tbaa !50 ; 3 uses
  %i.cto = load i64, ptr %i.ctn, align 8, !tbaa !116
  %i.ctp = add i64 %i.cto, %indvars.iv1198
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.ctn, i64 8 ; 2 uses
  %i.ctr = load i64, ptr %i.ctq, align 8, !tbaa !117
  %i.cts = trunc nuw nsw i64 %i.csv to i32        ; 4 uses
  %..i1101 = tail call i32 @llvm.smin.i32(i32 %..i1098, i32 %i.cts)
  %i.ctt = tail call i32 @llvm.umax.i32(i32 %i.cte, i32 %i.cts)
  %i.ctu = add i64 %i.ctp, %i.csv
  %..i1104 = tail call i32 @llvm.smin.i32(i32 %..i1101, i32 %i.ctb)
  %11 = tail call i32 @llvm.umax.i32(i32 %i.ctt, i32 %i.ctb)
  %12 = tail call i32 @llvm.smin.i32(i32 %i.cth, i32 %i.cld)
  %i.ctv = tail call i32 @llvm.smax.i32(i32 %i.ctk, i32 %i.cld)
  %i.ctw = add i64 %i.ctu, %indvars.iv1198
  %..i1107 = tail call i32 @llvm.smin.i32(i32 %..i1104, i32 %i.cts)
  store i32 %..i1107, ptr %i.csz, align 4, !tbaa !33
  %13 = tail call i32 @llvm.umax.i32(i32 %11, i32 %i.cts)
  store i32 %13, ptr %i.ctc, align 4, !tbaa !33
  store i32 %12, ptr %i.ctf, align 4, !tbaa !33
  store i32 %i.ctv, ptr %i.cti, align 4, !tbaa !33
  %i.ctx = add nsw i32 %i.ctm, 4
  store i32 %i.ctx, ptr %i.ctl, align 4, !tbaa !33
  %i.cty = add i64 %i.ctw, %i.csv
  store i64 %i.cty, ptr %i.ctn, align 8, !tbaa !116
  %.reass1293 = add i64 %i.ctr, %invariant.op1292
  store i64 %.reass1293, ptr %i.ctq, align 8, !tbaa !117
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fc, %bb.fd, %bb.fe
  %indvars.iv.next1199 = add nuw nsw i64 %indvars.iv1198, 2 ; 2 uses
  %i.ctz = load i32, ptr %i.axk, align 4, !tbaa !52 ; 2 uses
  %i.cua = sext i32 %i.ctz to i64
  %i.cub = icmp slt i64 %indvars.iv.next1199, %i.cua
  br i1 %i.cub, label %bb.er, label %._crit_edge1144, !llvm.loop !440

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge1131, %._crit_edge1137, %._crit_edge1144, %._crit_edge1151, %._crit_edge1158, %._crit_edge1164, %._crit_edge1171, %.lr.ph1173, %.preheader1121, %.preheader1119, %.preheader1117, %.preheader1115, %.preheader1113, %.preheader1111, %.preheader1109, %.preheader
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv19connectedcomponents25LabelingBolelli4CParallelIihNS0_9CCStatsOpEE9FirstScanD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv19connectedcomponents25LabelingBolelli4CParallelIihNS0_9CCStatsOpEE9FirstScanclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !60
  %i.b = shl nsw i32 %i.a, 1                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !61
  %i.e = shl i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !446, !nonnull !93, !align !94 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !33
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.e) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132  ; 2 uses
  %i.l = sext i32 %i.b to i64                     ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store i32 %.sroa.speculated, ptr %i.m, align 4, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !447, !nonnull !93, !align !94 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !52
  %i.r = mul nsw i32 %i.q, %i.b
  %i.s = ashr exact i32 %i.r, 1                   ; 2 uses
  %i.t = add nsw i32 %i.s, 1                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !52   ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.z = load i64, ptr %i.y, align 8, !tbaa !40   ; 3 uses
  %i.aa = mul i64 %i.z, %i.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !40 ; 3 uses
  %i.ag = mul i64 %i.af, %i.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag ; 5 uses
  %.not117125 = icmp sgt i32 %i.v, 0
  br i1 %.not117125, label %.lr.ph.lr.ph, label %.loopexit99.thread

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = zext nneg i32 %i.v to i64
  %narrow = add nsw i32 %i.s, 1
  %i.ak = sext i32 %narrow to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer101
  %indvars.iv180 = phi i64 [ %i.ak, %.lr.ph.lr.ph ], [ %indvars.iv.next181, %.outer101 ] ; 4 uses
  %i.al = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.be, %.outer101 ] ; 2 uses
  %i.am = sext i32 %i.al to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv174.in = phi i32 [ %i.al, %.lr.ph ], [ %indvars.iv174, %bb.d ]
  %indvars.iv = phi i64 [ %i.am, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %indvars.iv174 = add i32 %indvars.iv174.in, 1   ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.ab, i64 %indvars.iv
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !32
  %.not87 = icmp eq i8 %i.ao, 0
  br i1 %.not87, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = trunc nsw i64 %indvars.iv to i32
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.ar = trunc nsw i64 %indvars.iv180 to i32     ; 2 uses
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !33
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !131
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %indvars.iv180
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !33
  %indvars.iv.next181 = add nsw i64 %indvars.iv180, 1 ; 4 uses
  %i.au = add nsw i32 %i.ap, 1
  %.not88119 = icmp slt i32 %i.au, %i.v
  br i1 %.not88119, label %.lr.ph121.preheader, label %.loopexit99

.lr.ph121.preheader:                              ; preds = %bb.c
  %i.av = sext i32 %indvars.iv174 to i64
  br label %.lr.ph121

bb.d:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv
  store i32 0, ptr %i.aw, align 4, !tbaa !33
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %.not, label %bb.b, label %.loopexit99

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %bb.e
  %indvars.iv177 = phi i64 [ %i.av, %.lr.ph121.preheader ], [ %indvars.iv.next178, %bb.e ] ; 6 uses
  %.177120 = phi i64 [ %indvars.iv, %.lr.ph121.preheader ], [ %indvars.iv177, %bb.e ]
  %i.ax = getelementptr inbounds i8, ptr %i.ab, i64 %indvars.iv177
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !32
  %.not89 = icmp eq i8 %i.ay, 0
  br i1 %.not89, label %.outer101, label %bb.e

bb.e:                                             ; preds = %.lr.ph121
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %.177120
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !33
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv177
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !33
  %indvars.iv.next178 = add nsw i64 %indvars.iv177, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next178 to i32
  %exitcond.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit99, label %.lr.ph121

.outer101:                                        ; preds = %.lr.ph121
  %i.bc = trunc nsw i64 %indvars.iv177 to i32
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv177
  store i32 0, ptr %i.bd, align 4, !tbaa !33
  %i.be = add nsw i32 %i.bc, 1                    ; 2 uses
  %.not117 = icmp slt i32 %i.be, %i.v
  br i1 %.not117, label %.lr.ph, label %.loopexit99

.loopexit99:                                      ; preds = %.outer101, %bb.c, %bb.d, %bb.e
  %indvars.iv.next181.lcssa225.sink = phi i64 [ %indvars.iv.next181, %bb.e ], [ %indvars.iv180, %bb.d ], [ %indvars.iv.next181, %bb.c ], [ %indvars.iv.next181, %.outer101 ]
  %i.bf = trunc nsw i64 %indvars.iv.next181.lcssa225.sink to i32 ; 2 uses
  %i.bg = or disjoint i32 %i.b, 1                 ; 3 uses
  %i.bh = icmp slt i32 %i.bg, %.sroa.speculated
  br i1 %i.bh, label %.lr.ph142, label %._crit_edge

.loopexit99.thread:                               ; preds = %bb.a
  %i.bi = or disjoint i32 %i.b, 1
  br label %._crit_edge

.lr.ph142:                                        ; preds = %.loopexit99
  %i.bj = sub i64 0, %i.z
  %i.bk = sub i64 0, %i.af
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bm = zext nneg i32 %i.v to i64
  %i.bn = or disjoint i64 %i.l, 1
  br label %.lr.ph129.lr.ph.us

.lr.ph129.lr.ph.us:                               ; preds = %.lr.ph142, %.loopexit.us
  %indvars.iv194 = phi i64 [ %i.bn, %.lr.ph142 ], [ %indvars.iv.next195, %.loopexit.us ] ; 3 uses
  %.2141.us = phi i32 [ %i.bf, %.lr.ph142 ], [ %.5.us, %.loopexit.us ]
  %i.bo = mul i64 %i.z, %indvars.iv194
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bj ; 2 uses
  %i.br = mul i64 %i.af, %indvars.iv194
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.br ; 8 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bk ; 2 uses
  br label %.lr.ph129.us

bb.f:                                             ; preds = %.lr.ph129.us, %bb.o
  %indvars.iv186.in = phi i32 [ %i.eb, %.lr.ph129.us ], [ %indvars.iv186, %bb.o ]
  %indvars.iv183 = phi i64 [ %i.ec, %.lr.ph129.us ], [ %indvars.iv.next184, %bb.o ] ; 9 uses
  %indvars.iv186 = add i32 %indvars.iv186.in, 1   ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %indvars.iv183
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !32
  %.not91.us = icmp eq i8 %i.bv, 0
  br i1 %.not91.us, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = trunc nsw i64 %indvars.iv183 to i32
  %i.bx = getelementptr inbounds i8, ptr %i.bq, i64 %indvars.iv183
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !32
  %.not92.us = icmp eq i8 %i.by, 0
  br i1 %.not92.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv183
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !33
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv183
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !33
  br label %.preheader.us

bb.i:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv183
end_hunk_12
