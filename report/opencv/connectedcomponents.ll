Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/connectedcomponents?download=true
inline.NumInlined: 3211
inline.NumDeleted: 270
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.diw = zext i16 %.0.i15.i3077 to i64
  %i.dix = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.diw
  %i.diy = load i16, ptr %i.dix, align 2, !tbaa !54 ; 2 uses
  %i.diz = icmp ult i16 %i.diy, %.0.i15.i3077
  br i1 %i.diz, label %.preheader.i3076, label %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078, !llvm.loop !0

_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078: ; preds = %.preheader.i3076
  %spec.select.i3079 = tail call i16 @llvm.umin.i16(i16 %.0.i.i3073, i16 %.0.i15.i3077) ; 3 uses
  %i.dja = zext i16 %i.dir to i64
  %i.djb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.dja ; 3 uses
  %i.djc = load i16, ptr %i.djb, align 2, !tbaa !54 ; 2 uses
  %i.djd = icmp ult i16 %i.djc, %i.dir
  br i1 %i.djd, label %.lr.ph.i.i3085, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3080

.lr.ph.i.i3085:                                   ; preds = %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078, %.lr.ph.i.i3085
  %i.dje = phi i16 [ %i.dji, %.lr.ph.i.i3085 ], [ %i.djc, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078 ] ; 2 uses
  %i.djf = phi ptr [ %i.djh, %.lr.ph.i.i3085 ], [ %i.djb, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078 ]
  store i16 %spec.select.i3079, ptr %i.djf, align 2, !tbaa !54
  %i.djg = zext i16 %i.dje to i64
  %i.djh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.djg ; 3 uses
  %i.dji = load i16, ptr %i.djh, align 2, !tbaa !54 ; 2 uses
  %i.djj = icmp ult i16 %i.dji, %i.dje
  br i1 %i.djj, label %.lr.ph.i.i3085, label %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3080, !llvm.loop !1

_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3080: ; preds = %.lr.ph.i.i3085, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078
  %.lcssa.i.i3081 = phi ptr [ %i.djb, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit16.i3078 ], [ %i.djh, %.lr.ph.i.i3085 ]
  store i16 %spec.select.i3079, ptr %.lcssa.i.i3081, align 2, !tbaa !54
  br label %bb.qt

bb.qt:                                            ; preds = %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3080, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i3074
  %.1.i3082 = phi i16 [ %spec.select.i3079, %_ZN2cv19connectedcomponentsL7setRootItEEvPT_S2_S2_.exit.i3080 ], [ %.0.i.i3073, %_ZN2cv19connectedcomponentsL8findRootItEET_PKS2_S2_.exit.i3074 ] ; 3 uses
  %i.djk = zext i16 %i.dip to i64
  %i.djl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.djk ; 3 uses
  %i.djm = load i16, ptr %i.djl, align 2, !tbaa !54 ; 2 uses
  %i.djn = icmp ult i16 %i.djm, %i.dip
  br i1 %i.djn, label %.lr.ph.i18.i3084, label %.loopexit3290

.lr.ph.i18.i3084:                                 ; preds = %bb.qt, %.lr.ph.i18.i3084
  %i.djo = phi i16 [ %i.djs, %.lr.ph.i18.i3084 ], [ %i.djm, %bb.qt ] ; 2 uses
  %i.djp = phi ptr [ %i.djr, %.lr.ph.i18.i3084 ], [ %i.djl, %bb.qt ]
  store i16 %.1.i3082, ptr %i.djp, align 2, !tbaa !54
  %i.djq = zext i16 %i.djo to i64
  %i.djr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.djq ; 3 uses
  %i.djs = load i16, ptr %i.djr, align 2, !tbaa !54 ; 2 uses
  %i.djt = icmp ult i16 %i.djs, %i.djo
  br i1 %i.djt, label %.lr.ph.i18.i3084, label %.loopexit3290, !llvm.loop !1

.loopexit3290:                                    ; preds = %.lr.ph.i18.i3084, %bb.qt
  %.lcssa.i17.i3083 = phi ptr [ %i.djl, %bb.qt ], [ %i.djr, %.lr.ph.i18.i3084 ]
  store i16 %.1.i3082, ptr %.lcssa.i17.i3083, align 2, !tbaa !54
  %i.dju = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv
  store i16 %.1.i3082, ptr %i.dju, align 2, !tbaa !54
  br label %bb.rb

bb.qu:                                            ; preds = %bb.qo
  %i.djv = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.die
  %i.djw = load i16, ptr %i.djv, align 2, !tbaa !54
  %i.djx = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv
  store i16 %i.djw, ptr %i.djx, align 2, !tbaa !54
  br label %bb.rb

bb.qv:                                            ; preds = %bb.qn, %bb.qm
  %i.djy = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv
  %i.djz = load i8, ptr %i.djy, align 1, !tbaa !32
  %.not1892 = icmp eq i8 %i.djz, 0
  br i1 %.not1892, label %bb.qx, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.dka = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv
  %i.dkb = load i16, ptr %i.dka, align 2, !tbaa !54
  %i.dkc = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv
  store i16 %i.dkb, ptr %i.dkc, align 2, !tbaa !54
  br label %bb.rb

bb.qx:                                            ; preds = %bb.qj, %bb.qv
  %i.dkd = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv
  store i16 %.13517, ptr %i.dkd, align 2, !tbaa !54
  %i.dke = zext i16 %.13517 to i64
  %i.dkf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.dke
  store i16 %.13517, ptr %i.dkf, align 2, !tbaa !54
  %.not.i3087 = icmp eq i16 %.13517, -1
  br i1 %.not.i3087, label %.invoke, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3089

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3089: ; preds = %bb.qx
  %i.dkg = add nuw i16 %.13517, 1
  br label %bb.rb

bb.qy:                                            ; preds = %bb.qi
  br i1 %i.cr, label %bb.qz, label %.critedge2069

bb.qz:                                            ; preds = %bb.qy
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dhv
  %i.dki = load i8, ptr %i.dkh, align 1, !tbaa !32
  %.not1886 = icmp eq i8 %i.dki, 0
  br i1 %.not1886, label %.critedge2069, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.dkj = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv
  store i16 %.13517, ptr %i.dkj, align 2, !tbaa !54
  %i.dkk = zext i16 %.13517 to i64
  %i.dkl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.dkk
  store i16 %.13517, ptr %i.dkl, align 2, !tbaa !54
  %.not.i3090 = icmp eq i16 %.13517, -1
  br i1 %.not.i3090, label %.invoke, label %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3092

.invoke:                                          ; preds = %bb.ra, %bb.qx, %.critedge2066, %bb.qb, %.thread3257, %.thread3255
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 65535, i32 noundef 65535, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_E15__cv_check__269) #16
          to label %.cont unwind label %.thread3273

.cont:                                            ; preds = %.invoke
  unreachable

_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3092: ; preds = %bb.ra
  %i.dkm = add nuw i16 %.13517, 1
  br label %bb.rb

.critedge2069:                                    ; preds = %bb.qh, %bb.qy, %bb.qz
  %i.dkn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv
  store i16 0, ptr %i.dkn, align 2, !tbaa !54
  br label %bb.rb

bb.rb:                                            ; preds = %.critedge2069, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3092, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3089, %bb.qw, %bb.qu, %.loopexit3290, %bb.qq, %bb.ql, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3072, %bb.qg, %bb.qe, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3069, %bb.qa, %bb.py, %.loopexit3291, %bb.pu, %bb.pp, %bb.pn, %.loopexit3292, %.loopexit3293, %.loopexit3294, %bb.pd, %bb.pa, %.loopexit3295, %.loopexit3296, %bb.oo, %bb.on, %bb.om, %.loopexit3298, %.loopexit3299, %.loopexit3300, %.loopexit3301, %bb.nu, %bb.nt, %bb.nr, %.loopexit3302, %bb.nk, %bb.ni, %.loopexit3303, %.loopexit3304, %.loopexit3305, %bb.ms, %bb.mr, %bb.mp, %.loopexit3306, %bb.mi, %bb.mg, %.thread3259, %.loopexit3307, %.loopexit3308, %.loopexit3309, %.loopexit3310, %bb.ln, %bb.lk, %bb.lh, %.loopexit3311, %.loopexit3312, %.loopexit3313, %bb.kt, %bb.kq, %bb.kn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit2744, %bb.kd, %bb.ka, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit, %bb.jx, %bb.ju, %bb.js, %.loopexit3314, %.loopexit3315, %bb.jl, %.loopexit3316, %bb.jd, %bb.iw, %.loopexit3317, %bb.is, %bb.io, %bb.il, %.loopexit3318, %.loopexit3319, %.loopexit3320, %bb.ib, %.loopexit3321, %bb.ht, %bb.hp, %.loopexit3322, %.loopexit3323, %.loopexit3324, %bb.hf, %.loopexit3325, %bb.gx, %.loopexit3326, %.loopexit3327, %.loopexit3329, %.loopexit3331, %.loopexit3332, %.loopexit3334, %.loopexit3335, %.loopexit3336, %.loopexit3338, %.loopexit3340, %.loopexit3341, %.loopexit3342, %.loopexit3343, %bb.eo, %bb.em, %.loopexit3344, %.loopexit3345, %bb.eb, %bb.dz, %.loopexit3346, %.loopexit3347, %.loopexit3349, %.loopexit3350, %.loopexit3351, %.loopexit3352, %.loopexit3353, %bb.cq, %bb.co, %.loopexit3354, %bb.ch, %bb.cf, %bb.bx, %bb.bw, %.loopexit3355, %.loopexit3356, %.loopexit3357, %.loopexit3358, %bb.bj, %bb.bg, %bb.bd, %.loopexit3359, %.loopexit3360, %.loopexit3361, %bb.an, %bb.ak, %bb.ah
  %.2 = phi i16 [ %.13517, %bb.ah ], [ %.13517, %bb.ak ], [ %.13517, %bb.an ], [ %.13517, %.loopexit3361 ], [ %.13517, %.loopexit3360 ], [ %.13517, %.loopexit3359 ], [ %.13517, %bb.bd ], [ %.13517, %bb.bg ], [ %.13517, %bb.bj ], [ %.13517, %.loopexit3358 ], [ %.13517, %.loopexit3357 ], [ %.13517, %.loopexit3356 ], [ %.13517, %.loopexit3355 ], [ %.13517, %bb.bw ], [ %.13517, %bb.bx ], [ %.13517, %bb.cf ], [ %.13517, %bb.ch ], [ %.13517, %.loopexit3354 ], [ %.13517, %bb.co ], [ %.13517, %bb.cq ], [ %.13517, %.loopexit3353 ], [ %.13517, %.loopexit3352 ], [ %.13517, %.loopexit3351 ], [ %.13517, %.loopexit3350 ], [ %.13517, %.loopexit3349 ], [ %.13517, %.loopexit3347 ], [ %.13517, %.loopexit3346 ], [ %.13517, %bb.dz ], [ %.13517, %bb.eb ], [ %.13517, %.loopexit3345 ], [ %.13517, %.loopexit3344 ], [ %.13517, %bb.em ], [ %.13517, %bb.eo ], [ %.13517, %.loopexit3343 ], [ %.13517, %.loopexit3342 ], [ %.13517, %.loopexit3341 ], [ %.13517, %.loopexit3340 ], [ %.13517, %.loopexit3338 ], [ %.13517, %.loopexit3336 ], [ %.13517, %.loopexit3335 ], [ %.13517, %.loopexit3334 ], [ %.13517, %.loopexit3332 ], [ %.13517, %.loopexit3331 ], [ %.13517, %.loopexit3329 ], [ %.13517, %.loopexit3327 ], [ %.13517, %.loopexit3326 ], [ %.13517, %bb.gx ], [ %.13517, %.loopexit3325 ], [ %.13517, %bb.hf ], [ %.13517, %.loopexit3324 ], [ %.13517, %.loopexit3323 ], [ %.13517, %.loopexit3322 ], [ %.13517, %bb.hp ], [ %.13517, %bb.ht ], [ %.13517, %.loopexit3321 ], [ %.13517, %bb.ib ], [ %.13517, %.loopexit3320 ], [ %.13517, %.loopexit3319 ], [ %.13517, %.loopexit3318 ], [ %.13517, %bb.il ], [ %.13517, %bb.io ], [ %.13517, %bb.is ], [ %.13517, %.loopexit3317 ], [ %.13517, %bb.iw ], [ %.13517, %bb.jd ], [ %.13517, %.loopexit3316 ], [ %.13517, %bb.jl ], [ %.13517, %.loopexit3315 ], [ %.13517, %.loopexit3314 ], [ %.13517, %bb.js ], [ %.13517, %bb.ju ], [ %.13517, %bb.jx ], [ %i.bvc, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit ], [ %.13517, %bb.ka ], [ %.13517, %bb.kd ], [ %i.bvr, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit2744 ], [ %.13517, %bb.kn ], [ %.13517, %bb.kq ], [ %.13517, %bb.kt ], [ %.13517, %.loopexit3313 ], [ %.13517, %.loopexit3312 ], [ %.13517, %.loopexit3311 ], [ %.13517, %bb.lh ], [ %.13517, %bb.lk ], [ %.13517, %bb.ln ], [ %.13517, %.loopexit3310 ], [ %.13517, %.loopexit3309 ], [ %.13517, %.loopexit3308 ], [ %.13517, %.loopexit3307 ], [ %.13517, %.thread3259 ], [ %.13517, %bb.mg ], [ %.13517, %bb.mi ], [ %.13517, %.loopexit3306 ], [ %.13517, %bb.mp ], [ %.13517, %bb.mr ], [ %.13517, %bb.ms ], [ %.13517, %.loopexit3305 ], [ %.13517, %.loopexit3304 ], [ %.13517, %.loopexit3303 ], [ %.13517, %bb.ni ], [ %.13517, %bb.nk ], [ %.13517, %.loopexit3302 ], [ %.13517, %bb.nr ], [ %.13517, %bb.nt ], [ %.13517, %bb.nu ], [ %.13517, %.loopexit3301 ], [ %.13517, %.loopexit3300 ], [ %.13517, %.loopexit3299 ], [ %.13517, %.loopexit3298 ], [ %.13517, %bb.om ], [ %.13517, %bb.on ], [ %.13517, %bb.oo ], [ %.13517, %.loopexit3296 ], [ %.13517, %.loopexit3295 ], [ %.13517, %bb.pa ], [ %.13517, %bb.pd ], [ %.13517, %.loopexit3294 ], [ %.13517, %.loopexit3293 ], [ %.13517, %.loopexit3292 ], [ %.13517, %bb.pn ], [ %.13517, %bb.pp ], [ %.13517, %bb.pu ], [ %.13517, %.loopexit3291 ], [ %.13517, %bb.py ], [ %.13517, %bb.qa ], [ %i.dhf, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3069 ], [ %.13517, %bb.qe ], [ %.13517, %bb.qg ], [ %i.dhu, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3072 ], [ %.13517, %bb.ql ], [ %.13517, %bb.qq ], [ %.13517, %.loopexit3290 ], [ %.13517, %bb.qu ], [ %.13517, %bb.qw ], [ %i.dkg, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3089 ], [ %i.dkm, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3092 ], [ %.13517, %.critedge2069 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dko = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.dko, label %bb.ab, label %._crit_edge, !llvm.loop !318

bb.rc:                                            ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit
  %i.dkp = load i32, ptr %i.c, align 8, !tbaa !39 ; 6 uses
  %i.dkq = and i32 %i.dkp, 1
  %.not = icmp eq i32 %i.dkq, 0
  %i.dkr = load i32, ptr %i.p, align 4, !tbaa !52 ; 5 uses
  %i.dks = and i32 %i.dkr, 1
  %.not1858 = icmp eq i32 %i.dks, 0               ; 2 uses
  %i.dkt = icmp sgt i32 %i.dkp, 0                 ; 4 uses
  br i1 %.not, label %bb.sw, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  br i1 %.not1858, label %.preheader3286, label %.preheader3288

.preheader3288:                                   ; preds = %bb.rd
  br i1 %i.dkt, label %.lr.ph3531, label %.loopexit

.lr.ph3531:                                       ; preds = %.preheader3288
  %i.dku = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dkv = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dkw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dkx = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dky = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  %i.dkz = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.dla = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 5 uses
  %i.dlb = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %.pre = load ptr, ptr %i.dku, align 8, !tbaa !55
  %.pre3724 = load ptr, ptr %i.dkw, align 8, !tbaa !55
  br label %bb.re

.preheader3286:                                   ; preds = %bb.rd
  br i1 %i.dkt, label %.lr.ph3538, label %.loopexit

.lr.ph3538:                                       ; preds = %.preheader3286
  %i.dlc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dld = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dle = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dlf = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dlg = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.dlh = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.dli = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  %i.dlj = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %.pre3726 = load ptr, ptr %i.dlc, align 8, !tbaa !55
  %.pre3727 = load ptr, ptr %i.dle, align 8, !tbaa !55
  br label %bb.se

bb.re:                                            ; preds = %.lr.ph3531, %._crit_edge3529
  %i.dlk = phi i32 [ %i.dkp, %.lr.ph3531 ], [ %i.dmk, %._crit_edge3529 ]
  %i.dll = phi i32 [ %i.dkr, %.lr.ph3531 ], [ %i.dml, %._crit_edge3529 ] ; 2 uses
  %indvars.iv3703 = phi i64 [ 0, %.lr.ph3531 ], [ %indvars.iv.next3704, %._crit_edge3529 ] ; 13 uses
  %i.dlm = load i64, ptr %i.dkv, align 8, !tbaa !40 ; 2 uses
  %i.dln = mul i64 %i.dlm, %indvars.iv3703
  %i.dlo = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.dln ; 3 uses
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dlo, i64 %i.dlm ; 3 uses
  %i.dlq = load i64, ptr %i.dkx, align 8, !tbaa !40 ; 2 uses
  %i.dlr = mul i64 %i.dlq, %indvars.iv3703
  %i.dls = getelementptr inbounds nuw i8, ptr %.pre3724, i64 %i.dlr ; 4 uses
  %i.dlt = getelementptr inbounds nuw i8, ptr %i.dls, i64 %i.dlq ; 6 uses
  %i.dlu = icmp sgt i32 %i.dll, 0
  br i1 %i.dlu, label %.lr.ph3528, label %._crit_edge3529

.lr.ph3528:                                       ; preds = %bb.re
  %i.dlv = or disjoint i64 %indvars.iv3703, 1     ; 16 uses
  %i.dlw = trunc nuw nsw i64 %indvars.iv3703 to i32 ; 2 uses
  %i.dlx = trunc nuw nsw i64 %indvars.iv3703 to i32 ; 2 uses
  %i.dly = trunc nuw nsw i64 %i.dlv to i32        ; 2 uses
  %i.dlz = trunc nuw nsw i64 %i.dlv to i32        ; 2 uses
  %i.dma = trunc nuw nsw i64 %indvars.iv3703 to i32 ; 2 uses
  %i.dmb = trunc nuw nsw i64 %indvars.iv3703 to i32 ; 2 uses
  %i.dmc = trunc nuw nsw i64 %i.dlv to i32        ; 2 uses
  %i.dmd = trunc nuw nsw i64 %i.dlv to i32        ; 2 uses
  %i.dme = trunc nuw nsw i64 %i.dlv to i32        ; 2 uses
  %i.dmf = trunc nuw nsw i64 %i.dlv to i32        ; 2 uses
  %i.dmg = trunc nuw nsw i64 %indvars.iv3703 to i32 ; 2 uses
  %i.dmh = trunc nuw nsw i64 %i.dlv to i32        ; 2 uses
  %i.dmi = trunc nuw nsw i64 %i.dlv to i32        ; 2 uses
  %invariant.op = shl nuw i64 %i.dlv, 1
  %i.dmj = insertelement <2 x i64> poison, i64 %i.dlv, i64 1 ; 4 uses
  br label %bb.rf

._crit_edge3529.loopexit:                         ; preds = %bb.sd
  %.pre3725 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3529

._crit_edge3529:                                  ; preds = %._crit_edge3529.loopexit, %bb.re
  %i.dmk = phi i32 [ %.pre3725, %._crit_edge3529.loopexit ], [ %i.dlk, %bb.re ] ; 2 uses
  %i.dml = phi i32 [ %i.dxn, %._crit_edge3529.loopexit ], [ %i.dll, %bb.re ]
  %indvars.iv.next3704 = add nuw nsw i64 %indvars.iv3703, 2 ; 2 uses
  %i.dmm = sext i32 %i.dmk to i64
  %i.dmn = icmp slt i64 %indvars.iv.next3704, %i.dmm
  br i1 %i.dmn, label %bb.re, label %.loopexit, !llvm.loop !319

bb.rf:                                            ; preds = %.lr.ph3528, %bb.sd
  %indvars.iv3700 = phi i64 [ 0, %.lr.ph3528 ], [ %indvars.iv.next3701, %bb.sd ] ; 27 uses
  %i.dmo = getelementptr inbounds nuw [2 x i8], ptr %i.dls, i64 %indvars.iv3700 ; 3 uses
  %i.dmp = load i16, ptr %i.dmo, align 2, !tbaa !54 ; 2 uses
  %.not1875 = icmp eq i16 %i.dmp, 0
  br i1 %.not1875, label %bb.ry, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.dmq = zext i16 %i.dmp to i64
  %i.dmr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.dmq
  %i.dms = load i16, ptr %i.dmr, align 2, !tbaa !54 ; 10 uses
  %i.dmt = getelementptr inbounds nuw i8, ptr %i.dlo, i64 %indvars.iv3700
  %i.dmu = load i8, ptr %i.dmt, align 1, !tbaa !32
  %.not1876 = icmp eq i8 %i.dmu, 0
  br i1 %.not1876, label %bb.ri, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  store i16 %i.dms, ptr %i.dmo, align 2, !tbaa !54
  %i.dmv = load i32, ptr %i.dky, align 4, !tbaa !96
  %i.dmw = icmp slt i32 %i.dmv, 2
  %i.dmx = load ptr, ptr %i.dkz, align 8, !tbaa !55 ; 2 uses
  %i.dmy = load i64, ptr %i.dla, align 8
  %i.dmz = zext i16 %i.dms to i64                 ; 2 uses
  %i.dna = mul i64 %i.dmy, %i.dmz
  %.sink.idx.i.i = select i1 %i.dmw, i64 0, i64 %i.dna
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.dmx, i64 %.sink.idx.i.i ; 6 uses
  %i.dnb = load i32, ptr %.sink.i.i, align 4, !tbaa !33
  %i.dnc = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.dnb, i32 %i.dnc)
  store i32 %..i, ptr %.sink.i.i, align 4, !tbaa !33
  %i.dnd = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  %i.dne = load i32, ptr %i.dnd, align 4, !tbaa !33
  %i.dnf = tail call i32 @llvm.smax.i32(i32 %i.dne, i32 %i.dnc)
  store i32 %i.dnf, ptr %i.dnd, align 4, !tbaa !33
  %i.dng = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 4 ; 2 uses
  %i.dnh = load i32, ptr %i.dng, align 4, !tbaa !33
  %i.dni = tail call i32 @llvm.smin.i32(i32 %i.dnh, i32 %i.dlw)
  store i32 %i.dni, ptr %i.dng, align 4, !tbaa !33
  %i.dnj = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 12 ; 2 uses
  %i.dnk = load i32, ptr %i.dnj, align 4, !tbaa !33
  %i.dnl = tail call i32 @llvm.smax.i32(i32 %i.dnk, i32 %i.dlw)
  store i32 %i.dnl, ptr %i.dnj, align 4, !tbaa !33
  %i.dnm = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16 ; 2 uses
  %i.dnn = load i32, ptr %i.dnm, align 4, !tbaa !33
  %i.dno = add nsw i32 %i.dnn, 1
  store i32 %i.dno, ptr %i.dnm, align 4, !tbaa !33
  %i.dnp = load ptr, ptr %i.dlb, align 8, !tbaa !50 ; 2 uses
  %i.dnq = getelementptr inbounds nuw [16 x i8], ptr %i.dnp, i64 %i.dmz ; 3 uses
  %i.dnr = load i64, ptr %i.dnq, align 8, !tbaa !116
  %i.dns = add i64 %i.dnr, %indvars.iv3700
  store i64 %i.dns, ptr %i.dnq, align 8, !tbaa !116
  br label %bb.rj

bb.ri:                                            ; preds = %bb.rg
  store i16 0, ptr %i.dmo, align 2, !tbaa !54
  %i.dnt = load ptr, ptr %i.dkz, align 8, !tbaa !55 ; 7 uses
  %i.dnu = load i32, ptr %i.dnt, align 4, !tbaa !33
  %i.dnv = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 2 uses
  %..i3095 = tail call i32 @llvm.smin.i32(i32 %i.dnu, i32 %i.dnv)
  store i32 %..i3095, ptr %i.dnt, align 4, !tbaa !33
  %i.dnw = getelementptr inbounds nuw i8, ptr %i.dnt, i64 8 ; 2 uses
  %i.dnx = load i32, ptr %i.dnw, align 4, !tbaa !33
  %i.dny = tail call i32 @llvm.smax.i32(i32 %i.dnx, i32 %i.dnv)
  store i32 %i.dny, ptr %i.dnw, align 4, !tbaa !33
  %i.dnz = getelementptr inbounds nuw i8, ptr %i.dnt, i64 4 ; 2 uses
  %i.doa = load i32, ptr %i.dnz, align 4, !tbaa !33
  %i.dob = tail call i32 @llvm.smin.i32(i32 %i.doa, i32 %i.dlx)
  store i32 %i.dob, ptr %i.dnz, align 4, !tbaa !33
  %i.doc = getelementptr inbounds nuw i8, ptr %i.dnt, i64 12 ; 2 uses
  %i.dod = load i32, ptr %i.doc, align 4, !tbaa !33
  %i.doe = tail call i32 @llvm.smax.i32(i32 %i.dod, i32 %i.dlx)
  store i32 %i.doe, ptr %i.doc, align 4, !tbaa !33
  %i.dof = getelementptr inbounds nuw i8, ptr %i.dnt, i64 16 ; 2 uses
  %i.dog = load i32, ptr %i.dof, align 4, !tbaa !33
  %i.doh = add nsw i32 %i.dog, 1
  store i32 %i.doh, ptr %i.dof, align 4, !tbaa !33
  %i.doi = load ptr, ptr %i.dlb, align 8, !tbaa !50 ; 4 uses
  %i.doj = load i64, ptr %i.doi, align 8, !tbaa !116
  %i.dok = add i64 %i.doj, %indvars.iv3700
  store i64 %i.dok, ptr %i.doi, align 8, !tbaa !116
  br label %bb.rj

bb.rj:                                            ; preds = %bb.ri, %bb.rh
  %.sink4165 = phi ptr [ %i.doi, %bb.ri ], [ %i.dnq, %bb.rh ]
  %i.dol = phi ptr [ %i.doi, %bb.ri ], [ %i.dnp, %bb.rh ] ; 14 uses
  %i.dom = phi ptr [ %i.dnt, %bb.ri ], [ %i.dmx, %bb.rh ] ; 28 uses
  %i.don = getelementptr inbounds nuw i8, ptr %.sink4165, i64 8 ; 2 uses
  %i.doo = load i64, ptr %i.don, align 8, !tbaa !117
  %i.dop = add i64 %i.doo, %indvars.iv3703
  store i64 %i.dop, ptr %i.don, align 8, !tbaa !117
  %i.doq = or disjoint i64 %indvars.iv3700, 1     ; 13 uses
  %i.dor = load i32, ptr %i.p, align 4, !tbaa !52
  %i.dos = sext i32 %i.dor to i64
  %i.dot = icmp slt i64 %i.doq, %i.dos
  br i1 %i.dot, label %bb.rk, label %bb.ru

bb.rk:                                            ; preds = %bb.rj
  %i.dou = getelementptr inbounds nuw i8, ptr %i.dlo, i64 %i.doq
  %i.dov = load i8, ptr %i.dou, align 1, !tbaa !32
  %.not1878 = icmp eq i8 %i.dov, 0
  %i.dow = getelementptr inbounds nuw [2 x i8], ptr %i.dls, i64 %i.doq ; 2 uses
  br i1 %.not1878, label %bb.rm, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  store i16 %i.dms, ptr %i.dow, align 2, !tbaa !54
  %i.dox = load i32, ptr %i.dky, align 4, !tbaa !96
  %i.doy = icmp slt i32 %i.dox, 2
  %i.doz = load i64, ptr %i.dla, align 8
  %i.dpa = zext i16 %i.dms to i64                 ; 2 uses
  %i.dpb = mul i64 %i.doz, %i.dpa
  %.sink.idx.i.i3096 = select i1 %i.doy, i64 0, i64 %i.dpb
  %.sink.i.i3097 = getelementptr inbounds nuw i8, ptr %i.dom, i64 %.sink.idx.i.i3096 ; 6 uses
  %i.dpc = load i32, ptr %.sink.i.i3097, align 4, !tbaa !33
  %i.dpd = trunc nuw nsw i64 %i.doq to i32        ; 2 uses
  %..i3098 = tail call i32 @llvm.smin.i32(i32 %i.dpc, i32 %i.dpd)
  store i32 %..i3098, ptr %.sink.i.i3097, align 4, !tbaa !33
  %i.dpe = getelementptr inbounds nuw i8, ptr %.sink.i.i3097, i64 8 ; 2 uses
  %i.dpf = load i32, ptr %i.dpe, align 4, !tbaa !33
  %i.dpg = tail call i32 @llvm.smax.i32(i32 %i.dpf, i32 %i.dpd)
  store i32 %i.dpg, ptr %i.dpe, align 4, !tbaa !33
  %i.dph = getelementptr inbounds nuw i8, ptr %.sink.i.i3097, i64 4 ; 2 uses
  %i.dpi = load i32, ptr %i.dph, align 4, !tbaa !33
  %i.dpj = tail call i32 @llvm.smin.i32(i32 %i.dpi, i32 %i.dma)
  store i32 %i.dpj, ptr %i.dph, align 4, !tbaa !33
  %i.dpk = getelementptr inbounds nuw i8, ptr %.sink.i.i3097, i64 12 ; 2 uses
  %i.dpl = load i32, ptr %i.dpk, align 4, !tbaa !33
  %i.dpm = tail call i32 @llvm.smax.i32(i32 %i.dpl, i32 %i.dma)
  store i32 %i.dpm, ptr %i.dpk, align 4, !tbaa !33
  %i.dpn = getelementptr inbounds nuw i8, ptr %.sink.i.i3097, i64 16 ; 2 uses
  %i.dpo = load i32, ptr %i.dpn, align 4, !tbaa !33
  %i.dpp = add nsw i32 %i.dpo, 1
  store i32 %i.dpp, ptr %i.dpn, align 4, !tbaa !33
  %i.dpq = getelementptr inbounds nuw [16 x i8], ptr %i.dol, i64 %i.dpa ; 3 uses
  %i.dpr = load i64, ptr %i.dpq, align 8, !tbaa !116
  %i.dps = add i64 %i.dpr, %i.doq
  store i64 %i.dps, ptr %i.dpq, align 8, !tbaa !116
  br label %bb.rn

bb.rm:                                            ; preds = %bb.rk
  store i16 0, ptr %i.dow, align 2, !tbaa !54
  %i.dpt = load i32, ptr %i.dom, align 4, !tbaa !33
  %i.dpu = trunc nuw nsw i64 %i.doq to i32        ; 2 uses
  %..i3101 = tail call i32 @llvm.smin.i32(i32 %i.dpt, i32 %i.dpu)
  store i32 %..i3101, ptr %i.dom, align 4, !tbaa !33
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.dom, i64 8 ; 2 uses
  %i.dpw = load i32, ptr %i.dpv, align 4, !tbaa !33
  %i.dpx = tail call i32 @llvm.smax.i32(i32 %i.dpw, i32 %i.dpu)
  store i32 %i.dpx, ptr %i.dpv, align 4, !tbaa !33
  %i.dpy = getelementptr inbounds nuw i8, ptr %i.dom, i64 4 ; 2 uses
  %i.dpz = load i32, ptr %i.dpy, align 4, !tbaa !33
  %i.dqa = tail call i32 @llvm.smin.i32(i32 %i.dpz, i32 %i.dmb)
  store i32 %i.dqa, ptr %i.dpy, align 4, !tbaa !33
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dom, i64 12 ; 2 uses
  %i.dqc = load i32, ptr %i.dqb, align 4, !tbaa !33
  %i.dqd = tail call i32 @llvm.smax.i32(i32 %i.dqc, i32 %i.dmb)
  store i32 %i.dqd, ptr %i.dqb, align 4, !tbaa !33
  %i.dqe = getelementptr inbounds nuw i8, ptr %i.dom, i64 16 ; 2 uses
  %i.dqf = load i32, ptr %i.dqe, align 4, !tbaa !33
  %i.dqg = add nsw i32 %i.dqf, 1
  store i32 %i.dqg, ptr %i.dqe, align 4, !tbaa !33
  %i.dqh = load i64, ptr %i.dol, align 8, !tbaa !116
  %i.dqi = add i64 %i.dqh, %i.doq
  store i64 %i.dqi, ptr %i.dol, align 8, !tbaa !116
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %bb.rl
  %.sink4168 = phi ptr [ %i.dol, %bb.rm ], [ %i.dpq, %bb.rl ]
  %i.dqj = getelementptr inbounds nuw i8, ptr %.sink4168, i64 8 ; 2 uses
  %i.dqk = load i64, ptr %i.dqj, align 8, !tbaa !117
  %i.dql = add i64 %i.dqk, %indvars.iv3703
  store i64 %i.dql, ptr %i.dqj, align 8, !tbaa !117
  %i.dqm = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dqn = sext i32 %i.dqm to i64
  %i.dqo = icmp slt i64 %i.dlv, %i.dqn
  br i1 %i.dqo, label %bb.ro, label %bb.sd

bb.ro:                                            ; preds = %bb.rn
  %i.dqp = getelementptr inbounds nuw i8, ptr %i.dlp, i64 %indvars.iv3700
  %i.dqq = load i8, ptr %i.dqp, align 1, !tbaa !32
  %.not1879 = icmp eq i8 %i.dqq, 0
  %i.dqr = getelementptr inbounds nuw [2 x i8], ptr %i.dlt, i64 %indvars.iv3700 ; 2 uses
  br i1 %.not1879, label %bb.rq, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
end_hunk_0
begin_hunk_1_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.drd = load i32, ptr %i.drc, align 4, !tbaa !33
  %i.dre = tail call i32 @llvm.smin.i32(i32 %i.drd, i32 %i.dmc)
  store i32 %i.dre, ptr %i.drc, align 4, !tbaa !33
  %i.drf = getelementptr inbounds nuw i8, ptr %.sink.i.i3103, i64 12 ; 2 uses
  %i.drg = load i32, ptr %i.drf, align 4, !tbaa !33
  %i.drh = tail call i32 @llvm.smax.i32(i32 %i.drg, i32 %i.dmc)
  store i32 %i.drh, ptr %i.drf, align 4, !tbaa !33
  %i.dri = getelementptr inbounds nuw i8, ptr %.sink.i.i3103, i64 16 ; 2 uses
  %i.drj = load i32, ptr %i.dri, align 4, !tbaa !33
  %i.drk = add nsw i32 %i.drj, 1
  store i32 %i.drk, ptr %i.dri, align 4, !tbaa !33
  %i.drl = getelementptr inbounds nuw [16 x i8], ptr %i.dol, i64 %i.dqv ; 3 uses
  %i.drm = load i64, ptr %i.drl, align 8, !tbaa !116
  %i.drn = add i64 %i.drm, %indvars.iv3700
  store i64 %i.drn, ptr %i.drl, align 8, !tbaa !116
  br label %bb.rr

bb.rq:                                            ; preds = %bb.ro
  store i16 0, ptr %i.dqr, align 2, !tbaa !54
  %i.dro = load i32, ptr %i.dom, align 4, !tbaa !33
  %i.drp = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 2 uses
  %..i3107 = tail call i32 @llvm.smin.i32(i32 %i.dro, i32 %i.drp)
  store i32 %..i3107, ptr %i.dom, align 4, !tbaa !33
  %i.drq = getelementptr inbounds nuw i8, ptr %i.dom, i64 8 ; 2 uses
  %i.drr = load i32, ptr %i.drq, align 4, !tbaa !33
  %i.drs = tail call i32 @llvm.smax.i32(i32 %i.drr, i32 %i.drp)
  store i32 %i.drs, ptr %i.drq, align 4, !tbaa !33
  %i.drt = getelementptr inbounds nuw i8, ptr %i.dom, i64 4 ; 2 uses
  %i.dru = load i32, ptr %i.drt, align 4, !tbaa !33
  %i.drv = tail call i32 @llvm.smin.i32(i32 %i.dru, i32 %i.dmd)
  store i32 %i.drv, ptr %i.drt, align 4, !tbaa !33
  %i.drw = getelementptr inbounds nuw i8, ptr %i.dom, i64 12 ; 2 uses
  %i.drx = load i32, ptr %i.drw, align 4, !tbaa !33
  %i.dry = tail call i32 @llvm.smax.i32(i32 %i.drx, i32 %i.dmd)
  store i32 %i.dry, ptr %i.drw, align 4, !tbaa !33
  %i.drz = getelementptr inbounds nuw i8, ptr %i.dom, i64 16 ; 2 uses
  %i.dsa = load i32, ptr %i.drz, align 4, !tbaa !33
  %i.dsb = add nsw i32 %i.dsa, 1
  store i32 %i.dsb, ptr %i.drz, align 4, !tbaa !33
  %i.dsc = load i64, ptr %i.dol, align 8, !tbaa !116
  %i.dsd = add i64 %i.dsc, %indvars.iv3700
  store i64 %i.dsd, ptr %i.dol, align 8, !tbaa !116
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.rp
  %.sink4171 = phi ptr [ %i.dol, %bb.rq ], [ %i.drl, %bb.rp ]
  %i.dse = getelementptr inbounds nuw i8, ptr %.sink4171, i64 8 ; 2 uses
  %i.dsf = load i64, ptr %i.dse, align 8, !tbaa !117
  %i.dsg = add i64 %i.dsf, %i.dlv
  store i64 %i.dsg, ptr %i.dse, align 8, !tbaa !117
  %i.dsh = getelementptr inbounds nuw i8, ptr %i.dlp, i64 %i.doq
  %i.dsi = load i8, ptr %i.dsh, align 1, !tbaa !32
  %.not1880 = icmp eq i8 %i.dsi, 0
  %i.dsj = getelementptr inbounds nuw [2 x i8], ptr %i.dlt, i64 %i.doq ; 2 uses
  br i1 %.not1880, label %bb.rt, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  store i16 %i.dms, ptr %i.dsj, align 2, !tbaa !54
  %i.dsk = load i32, ptr %i.dky, align 4, !tbaa !96
  %i.dsl = icmp slt i32 %i.dsk, 2
  %i.dsm = load i64, ptr %i.dla, align 8
  %i.dsn = zext i16 %i.dms to i64                 ; 2 uses
  %i.dso = mul i64 %i.dsm, %i.dsn
  %.sink.idx.i.i3108 = select i1 %i.dsl, i64 0, i64 %i.dso
  %.sink.i.i3109 = getelementptr inbounds nuw i8, ptr %i.dom, i64 %.sink.idx.i.i3108 ; 6 uses
  %i.dsp = load i32, ptr %.sink.i.i3109, align 4, !tbaa !33
  %i.dsq = trunc nuw nsw i64 %i.doq to i32        ; 2 uses
  %..i3110 = tail call i32 @llvm.smin.i32(i32 %i.dsp, i32 %i.dsq)
  store i32 %..i3110, ptr %.sink.i.i3109, align 4, !tbaa !33
  %i.dsr = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 8 ; 2 uses
  %i.dss = load i32, ptr %i.dsr, align 4, !tbaa !33
  %i.dst = tail call i32 @llvm.smax.i32(i32 %i.dss, i32 %i.dsq)
  store i32 %i.dst, ptr %i.dsr, align 4, !tbaa !33
  %i.dsu = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 4 ; 2 uses
  %i.dsv = load i32, ptr %i.dsu, align 4, !tbaa !33
  %i.dsw = tail call i32 @llvm.smin.i32(i32 %i.dsv, i32 %i.dme)
  store i32 %i.dsw, ptr %i.dsu, align 4, !tbaa !33
  %i.dsx = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 12 ; 2 uses
  %i.dsy = load i32, ptr %i.dsx, align 4, !tbaa !33
  %i.dsz = tail call i32 @llvm.smax.i32(i32 %i.dsy, i32 %i.dme)
  store i32 %i.dsz, ptr %i.dsx, align 4, !tbaa !33
  %i.dta = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 16 ; 2 uses
  %i.dtb = load i32, ptr %i.dta, align 4, !tbaa !33
  %i.dtc = add nsw i32 %i.dtb, 1
  store i32 %i.dtc, ptr %i.dta, align 4, !tbaa !33
  %i.dtd = getelementptr inbounds nuw [16 x i8], ptr %i.dol, i64 %i.dsn ; 2 uses
  %i.dte = load <2 x i64>, ptr %i.dtd, align 8, !tbaa !40
  %i.dtf = insertelement <2 x i64> %i.dmj, i64 %i.doq, i64 0
  %i.dtg = add <2 x i64> %i.dte, %i.dtf
  store <2 x i64> %i.dtg, ptr %i.dtd, align 8, !tbaa !40
  br label %bb.sd

bb.rt:                                            ; preds = %bb.rr
  store i16 0, ptr %i.dsj, align 2, !tbaa !54
  %i.dth = load i32, ptr %i.dom, align 4, !tbaa !33
  %i.dti = trunc nuw nsw i64 %i.doq to i32        ; 2 uses
  %..i3113 = tail call i32 @llvm.smin.i32(i32 %i.dth, i32 %i.dti)
  store i32 %..i3113, ptr %i.dom, align 4, !tbaa !33
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.dom, i64 8 ; 2 uses
  %i.dtk = load i32, ptr %i.dtj, align 4, !tbaa !33
  %i.dtl = tail call i32 @llvm.smax.i32(i32 %i.dtk, i32 %i.dti)
  store i32 %i.dtl, ptr %i.dtj, align 4, !tbaa !33
  %i.dtm = getelementptr inbounds nuw i8, ptr %i.dom, i64 4 ; 2 uses
  %i.dtn = load i32, ptr %i.dtm, align 4, !tbaa !33
  %i.dto = tail call i32 @llvm.smin.i32(i32 %i.dtn, i32 %i.dmf)
  store i32 %i.dto, ptr %i.dtm, align 4, !tbaa !33
  %i.dtp = getelementptr inbounds nuw i8, ptr %i.dom, i64 12 ; 2 uses
  %i.dtq = load i32, ptr %i.dtp, align 4, !tbaa !33
  %i.dtr = tail call i32 @llvm.smax.i32(i32 %i.dtq, i32 %i.dmf)
  store i32 %i.dtr, ptr %i.dtp, align 4, !tbaa !33
  %i.dts = getelementptr inbounds nuw i8, ptr %i.dom, i64 16 ; 2 uses
  %i.dtt = load i32, ptr %i.dts, align 4, !tbaa !33
  %i.dtu = add nsw i32 %i.dtt, 1
  store i32 %i.dtu, ptr %i.dts, align 4, !tbaa !33
  %i.dtv = load <2 x i64>, ptr %i.dol, align 8, !tbaa !40
  %i.dtw = insertelement <2 x i64> %i.dmj, i64 %i.doq, i64 0
  %i.dtx = add <2 x i64> %i.dtv, %i.dtw
  store <2 x i64> %i.dtx, ptr %i.dol, align 8, !tbaa !40
  br label %bb.sd

bb.ru:                                            ; preds = %bb.rj
  %i.dty = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dtz = sext i32 %i.dty to i64
  %i.dua = icmp slt i64 %i.dlv, %i.dtz
  br i1 %i.dua, label %bb.rv, label %bb.sd

bb.rv:                                            ; preds = %bb.ru
  %i.dub = getelementptr inbounds nuw i8, ptr %i.dlp, i64 %indvars.iv3700
  %i.duc = load i8, ptr %i.dub, align 1, !tbaa !32
  %.not1877 = icmp eq i8 %i.duc, 0
  %i.dud = getelementptr inbounds nuw [2 x i8], ptr %i.dlt, i64 %indvars.iv3700 ; 2 uses
  br i1 %.not1877, label %bb.rx, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  store i16 %i.dms, ptr %i.dud, align 2, !tbaa !54
  %i.due = load i32, ptr %i.dky, align 4, !tbaa !96
  %i.duf = icmp slt i32 %i.due, 2
  %i.dug = load i64, ptr %i.dla, align 8
  %i.duh = zext i16 %i.dms to i64                 ; 2 uses
  %i.dui = mul i64 %i.dug, %i.duh
  %.sink.idx.i.i3114 = select i1 %i.duf, i64 0, i64 %i.dui
  %.sink.i.i3115 = getelementptr inbounds nuw i8, ptr %i.dom, i64 %.sink.idx.i.i3114 ; 6 uses
  %i.duj = load i32, ptr %.sink.i.i3115, align 4, !tbaa !33
  %i.duk = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 2 uses
  %..i3116 = tail call i32 @llvm.smin.i32(i32 %i.duj, i32 %i.duk)
  store i32 %..i3116, ptr %.sink.i.i3115, align 4, !tbaa !33
  %i.dul = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 8 ; 2 uses
  %i.dum = load i32, ptr %i.dul, align 4, !tbaa !33
  %i.dun = tail call i32 @llvm.smax.i32(i32 %i.dum, i32 %i.duk)
  store i32 %i.dun, ptr %i.dul, align 4, !tbaa !33
  %i.duo = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 4 ; 2 uses
  %i.dup = load i32, ptr %i.duo, align 4, !tbaa !33
  %i.duq = tail call i32 @llvm.smin.i32(i32 %i.dup, i32 %i.dly)
  store i32 %i.duq, ptr %i.duo, align 4, !tbaa !33
  %i.dur = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 12 ; 2 uses
  %i.dus = load i32, ptr %i.dur, align 4, !tbaa !33
  %i.dut = tail call i32 @llvm.smax.i32(i32 %i.dus, i32 %i.dly)
  store i32 %i.dut, ptr %i.dur, align 4, !tbaa !33
  %i.duu = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 16 ; 2 uses
  %i.duv = load i32, ptr %i.duu, align 4, !tbaa !33
  %i.duw = add nsw i32 %i.duv, 1
  store i32 %i.duw, ptr %i.duu, align 4, !tbaa !33
  %i.dux = getelementptr inbounds nuw [16 x i8], ptr %i.dol, i64 %i.duh ; 2 uses
  %i.duy = load <2 x i64>, ptr %i.dux, align 8, !tbaa !40
  %i.duz = insertelement <2 x i64> %i.dmj, i64 %indvars.iv3700, i64 0
  %i.dva = add <2 x i64> %i.duy, %i.duz
  store <2 x i64> %i.dva, ptr %i.dux, align 8, !tbaa !40
  br label %bb.sd

bb.rx:                                            ; preds = %bb.rv
  store i16 0, ptr %i.dud, align 2, !tbaa !54
  %i.dvb = load i32, ptr %i.dom, align 4, !tbaa !33
  %i.dvc = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 2 uses
  %..i3119 = tail call i32 @llvm.smin.i32(i32 %i.dvb, i32 %i.dvc)
  store i32 %..i3119, ptr %i.dom, align 4, !tbaa !33
  %i.dvd = getelementptr inbounds nuw i8, ptr %i.dom, i64 8 ; 2 uses
  %i.dve = load i32, ptr %i.dvd, align 4, !tbaa !33
  %i.dvf = tail call i32 @llvm.smax.i32(i32 %i.dve, i32 %i.dvc)
  store i32 %i.dvf, ptr %i.dvd, align 4, !tbaa !33
  %i.dvg = getelementptr inbounds nuw i8, ptr %i.dom, i64 4 ; 2 uses
  %i.dvh = load i32, ptr %i.dvg, align 4, !tbaa !33
  %i.dvi = tail call i32 @llvm.smin.i32(i32 %i.dvh, i32 %i.dlz)
  store i32 %i.dvi, ptr %i.dvg, align 4, !tbaa !33
  %i.dvj = getelementptr inbounds nuw i8, ptr %i.dom, i64 12 ; 2 uses
  %i.dvk = load i32, ptr %i.dvj, align 4, !tbaa !33
  %i.dvl = tail call i32 @llvm.smax.i32(i32 %i.dvk, i32 %i.dlz)
  store i32 %i.dvl, ptr %i.dvj, align 4, !tbaa !33
  %i.dvm = getelementptr inbounds nuw i8, ptr %i.dom, i64 16 ; 2 uses
  %i.dvn = load i32, ptr %i.dvm, align 4, !tbaa !33
  %i.dvo = add nsw i32 %i.dvn, 1
  store i32 %i.dvo, ptr %i.dvm, align 4, !tbaa !33
  %i.dvp = load <2 x i64>, ptr %i.dol, align 8, !tbaa !40
  %i.dvq = insertelement <2 x i64> %i.dmj, i64 %indvars.iv3700, i64 0
  %i.dvr = add <2 x i64> %i.dvp, %i.dvq
  store <2 x i64> %i.dvr, ptr %i.dol, align 8, !tbaa !40
  br label %bb.sd

bb.ry:                                            ; preds = %bb.rf
  %i.dvs = load ptr, ptr %i.dkz, align 8, !tbaa !55 ; 9 uses
  %i.dvt = load i32, ptr %i.dvs, align 4, !tbaa !33
  %i.dvu = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 4 uses
  %..i3122 = tail call i32 @llvm.smin.i32(i32 %i.dvt, i32 %i.dvu) ; 3 uses
  store i32 %..i3122, ptr %i.dvs, align 4, !tbaa !33
  %i.dvv = getelementptr inbounds nuw i8, ptr %i.dvs, i64 8 ; 5 uses
  %i.dvw = load i32, ptr %i.dvv, align 4, !tbaa !33
  %i.dvx = tail call i32 @llvm.smax.i32(i32 %i.dvw, i32 %i.dvu) ; 3 uses
  store i32 %i.dvx, ptr %i.dvv, align 4, !tbaa !33
  %i.dvy = getelementptr inbounds nuw i8, ptr %i.dvs, i64 4 ; 5 uses
  %i.dvz = load i32, ptr %i.dvy, align 4, !tbaa !33
  %i.dwa = tail call i32 @llvm.smin.i32(i32 %i.dvz, i32 %i.dmg) ; 4 uses
  store i32 %i.dwa, ptr %i.dvy, align 4, !tbaa !33
  %i.dwb = getelementptr inbounds nuw i8, ptr %i.dvs, i64 12 ; 5 uses
  %i.dwc = load i32, ptr %i.dwb, align 4, !tbaa !33
  %i.dwd = tail call i32 @llvm.smax.i32(i32 %i.dwc, i32 %i.dmg) ; 4 uses
  store i32 %i.dwd, ptr %i.dwb, align 4, !tbaa !33
  %i.dwe = getelementptr inbounds nuw i8, ptr %i.dvs, i64 16 ; 5 uses
  %i.dwf = load i32, ptr %i.dwe, align 4, !tbaa !33 ; 4 uses
  %i.dwg = add nsw i32 %i.dwf, 1
  store i32 %i.dwg, ptr %i.dwe, align 4, !tbaa !33
  %i.dwh = load ptr, ptr %i.dlb, align 8, !tbaa !50 ; 6 uses
  %i.dwi = load i64, ptr %i.dwh, align 8, !tbaa !116
  %i.dwj = add i64 %i.dwi, %indvars.iv3700        ; 3 uses
  store i64 %i.dwj, ptr %i.dwh, align 8, !tbaa !116
  %i.dwk = getelementptr inbounds nuw i8, ptr %i.dwh, i64 8 ; 5 uses
  %i.dwl = load i64, ptr %i.dwk, align 8, !tbaa !117
  %i.dwm = add i64 %i.dwl, %indvars.iv3703        ; 3 uses
  store i64 %i.dwm, ptr %i.dwk, align 8, !tbaa !117
  %i.dwn = or disjoint i64 %indvars.iv3700, 1     ; 6 uses
  %i.dwo = load i32, ptr %i.p, align 4, !tbaa !52
  %i.dwp = sext i32 %i.dwo to i64
  %i.dwq = icmp slt i64 %i.dwn, %i.dwp
  br i1 %i.dwq, label %bb.rz, label %bb.sb

bb.rz:                                            ; preds = %bb.ry
  %i.dwr = getelementptr inbounds nuw [2 x i8], ptr %i.dls, i64 %i.dwn
  store i16 0, ptr %i.dwr, align 2, !tbaa !54
  %11 = trunc nuw nsw i64 %i.dwn to i32           ; 4 uses
  %..i3125 = tail call i32 @llvm.smin.i32(i32 %..i3122, i32 %11) ; 2 uses
  store i32 %..i3125, ptr %i.dvs, align 4, !tbaa !33
  %i.dws = tail call i32 @llvm.umax.i32(i32 %i.dvx, i32 %11) ; 2 uses
  store i32 %i.dws, ptr %i.dvv, align 4, !tbaa !33
  store i32 %i.dwa, ptr %i.dvy, align 4, !tbaa !33
  store i32 %i.dwd, ptr %i.dwb, align 4, !tbaa !33
  %i.dwt = add nsw i32 %i.dwf, 2
  store i32 %i.dwt, ptr %i.dwe, align 4, !tbaa !33
  %i.dwu = add i64 %i.dwj, %i.dwn                 ; 2 uses
  store i64 %i.dwu, ptr %i.dwh, align 8, !tbaa !116
  %i.dwv = add i64 %i.dwm, %indvars.iv3703        ; 2 uses
  store i64 %i.dwv, ptr %i.dwk, align 8, !tbaa !117
  %i.dww = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dwx = sext i32 %i.dww to i64
  %i.dwy = icmp slt i64 %i.dlv, %i.dwx
  br i1 %i.dwy, label %bb.sa, label %bb.sd

bb.sa:                                            ; preds = %bb.rz
  %i.dwz = getelementptr inbounds nuw [2 x i8], ptr %i.dlt, i64 %indvars.iv3700
  store i16 0, ptr %i.dwz, align 2, !tbaa !54
  %i.dxa = getelementptr inbounds nuw [2 x i8], ptr %i.dlt, i64 %i.dwn
  store i16 0, ptr %i.dxa, align 2, !tbaa !54
  %..i3128 = tail call i32 @llvm.smin.i32(i32 %..i3125, i32 %i.dvu)
  %12 = tail call i32 @llvm.umax.i32(i32 %i.dws, i32 %i.dvu)
  %13 = tail call i32 @llvm.smin.i32(i32 %i.dwa, i32 %i.dmi)
  %i.dxb = tail call i32 @llvm.smax.i32(i32 %i.dwd, i32 %i.dmi)
  %i.dxc = add i64 %i.dwu, %indvars.iv3700
  %..i3131 = tail call i32 @llvm.smin.i32(i32 %..i3128, i32 %11)
  store i32 %..i3131, ptr %i.dvs, align 4, !tbaa !33
  %14 = tail call i32 @llvm.umax.i32(i32 %12, i32 %11)
  store i32 %14, ptr %i.dvv, align 4, !tbaa !33
  store i32 %13, ptr %i.dvy, align 4, !tbaa !33
  store i32 %i.dxb, ptr %i.dwb, align 4, !tbaa !33
  %i.dxd = add nsw i32 %i.dwf, 4
  store i32 %i.dxd, ptr %i.dwe, align 4, !tbaa !33
  %i.dxe = add i64 %i.dxc, %i.dwn
  store i64 %i.dxe, ptr %i.dwh, align 8, !tbaa !116
  %.reass = add i64 %i.dwv, %invariant.op
  store i64 %.reass, ptr %i.dwk, align 8, !tbaa !117
  br label %bb.sd

bb.sb:                                            ; preds = %bb.ry
  %i.dxf = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dxg = sext i32 %i.dxf to i64
  %i.dxh = icmp slt i64 %i.dlv, %i.dxg
  br i1 %i.dxh, label %bb.sc, label %bb.sd

bb.sc:                                            ; preds = %bb.sb
  %i.dxi = getelementptr inbounds nuw [2 x i8], ptr %i.dlt, i64 %indvars.iv3700
  store i16 0, ptr %i.dxi, align 2, !tbaa !54
  store i32 %..i3122, ptr %i.dvs, align 4, !tbaa !33
  store i32 %i.dvx, ptr %i.dvv, align 4, !tbaa !33
  %15 = tail call i32 @llvm.smin.i32(i32 %i.dwa, i32 %i.dmh)
  store i32 %15, ptr %i.dvy, align 4, !tbaa !33
  %i.dxj = tail call i32 @llvm.smax.i32(i32 %i.dwd, i32 %i.dmh)
  store i32 %i.dxj, ptr %i.dwb, align 4, !tbaa !33
  %i.dxk = add nsw i32 %i.dwf, 2
  store i32 %i.dxk, ptr %i.dwe, align 4, !tbaa !33
  %i.dxl = add i64 %i.dwj, %indvars.iv3700
  store i64 %i.dxl, ptr %i.dwh, align 8, !tbaa !116
  %i.dxm = add i64 %i.dwm, %i.dlv
  store i64 %i.dxm, ptr %i.dwk, align 8, !tbaa !117
  br label %bb.sd

bb.sd:                                            ; preds = %bb.sc, %bb.sa, %bb.rx, %bb.rw, %bb.rt, %bb.rs, %bb.rz, %bb.sb, %bb.rn, %bb.ru
  %indvars.iv.next3701 = add nuw nsw i64 %indvars.iv3700, 2 ; 2 uses
  %i.dxn = load i32, ptr %i.p, align 4, !tbaa !52 ; 2 uses
  %i.dxo = sext i32 %i.dxn to i64
  %i.dxp = icmp slt i64 %indvars.iv.next3701, %i.dxo
  br i1 %i.dxp, label %bb.rf, label %._crit_edge3529.loopexit, !llvm.loop !320

bb.se:                                            ; preds = %.lr.ph3538, %._crit_edge3536
  %i.dxq = phi i32 [ %i.dkp, %.lr.ph3538 ], [ %i.dyn, %._crit_edge3536 ]
  %i.dxr = phi i32 [ %i.dkr, %.lr.ph3538 ], [ %i.dyo, %._crit_edge3536 ] ; 2 uses
  %indvars.iv3709 = phi i64 [ 0, %.lr.ph3538 ], [ %indvars.iv.next3710, %._crit_edge3536 ] ; 12 uses
  %i.dxs = load i64, ptr %i.dld, align 8, !tbaa !40 ; 2 uses
  %i.dxt = mul i64 %i.dxs, %indvars.iv3709
  %i.dxu = getelementptr inbounds nuw i8, ptr %.pre3726, i64 %i.dxt ; 3 uses
  %i.dxv = getelementptr inbounds nuw i8, ptr %i.dxu, i64 %i.dxs ; 2 uses
  %i.dxw = load i64, ptr %i.dlf, align 8, !tbaa !40 ; 2 uses
  %i.dxx = mul i64 %i.dxw, %indvars.iv3709
  %i.dxy = getelementptr inbounds nuw i8, ptr %.pre3727, i64 %i.dxx ; 4 uses
  %i.dxz = getelementptr inbounds nuw i8, ptr %i.dxy, i64 %i.dxw ; 4 uses
  %i.dya = icmp sgt i32 %i.dxr, 0
  br i1 %i.dya, label %.lr.ph3535, label %._crit_edge3536

.lr.ph3535:                                       ; preds = %bb.se
  %i.dyb = or disjoint i64 %indvars.iv3709, 1     ; 10 uses
  %i.dyc = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %i.dyd = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %i.dye = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %i.dyf = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %i.dyg = trunc nuw nsw i64 %i.dyb to i32        ; 2 uses
  %i.dyh = trunc nuw nsw i64 %i.dyb to i32        ; 2 uses
  %i.dyi = trunc nuw nsw i64 %i.dyb to i32        ; 2 uses
  %i.dyj = trunc nuw nsw i64 %i.dyb to i32        ; 2 uses
  %i.dyk = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %invariant.op4149 = shl nuw i64 %indvars.iv3709, 1
  %i.dyl = trunc nuw nsw i64 %i.dyb to i32        ; 2 uses
  %invariant.op4151 = shl nuw i64 %i.dyb, 1
  %i.dym = insertelement <2 x i64> poison, i64 %i.dyb, i64 1 ; 2 uses
  br label %bb.sf

._crit_edge3536.loopexit:                         ; preds = %bb.sv
  %.pre3728 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3536

._crit_edge3536:                                  ; preds = %._crit_edge3536.loopexit, %bb.se
  %i.dyn = phi i32 [ %.pre3728, %._crit_edge3536.loopexit ], [ %i.dxq, %bb.se ] ; 2 uses
  %i.dyo = phi i32 [ %i.ehf, %._crit_edge3536.loopexit ], [ %i.dxr, %bb.se ]
  %indvars.iv.next3710 = add nuw nsw i64 %indvars.iv3709, 2 ; 2 uses
  %i.dyp = sext i32 %i.dyn to i64
  %i.dyq = icmp slt i64 %indvars.iv.next3710, %i.dyp
  br i1 %i.dyq, label %bb.se, label %.loopexit, !llvm.loop !321

bb.sf:                                            ; preds = %.lr.ph3535, %bb.sv
  %indvars.iv3706 = phi i64 [ 0, %.lr.ph3535 ], [ %indvars.iv.next3707, %bb.sv ] ; 19 uses
  %i.dyr = getelementptr inbounds nuw [2 x i8], ptr %i.dxy, i64 %indvars.iv3706 ; 3 uses
  %i.dys = load i16, ptr %i.dyr, align 2, !tbaa !54 ; 2 uses
  %.not1870 = icmp eq i16 %i.dys, 0
  br i1 %.not1870, label %bb.st, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.dyt = zext i16 %i.dys to i64
  %i.dyu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.dyt
  %i.dyv = load i16, ptr %i.dyu, align 2, !tbaa !54 ; 8 uses
  %i.dyw = getelementptr inbounds nuw i8, ptr %i.dxu, i64 %indvars.iv3706
  %i.dyx = load i8, ptr %i.dyw, align 1, !tbaa !32
  %.not1871 = icmp eq i8 %i.dyx, 0
  br i1 %.not1871, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  store i16 %i.dyv, ptr %i.dyr, align 2, !tbaa !54
  %i.dyy = load i32, ptr %i.dlg, align 4, !tbaa !96
  %i.dyz = icmp slt i32 %i.dyy, 2
  %i.dza = load ptr, ptr %i.dlh, align 8, !tbaa !55 ; 2 uses
  %i.dzb = load i64, ptr %i.dli, align 8
  %i.dzc = zext i16 %i.dyv to i64                 ; 2 uses
  %i.dzd = mul i64 %i.dzb, %i.dzc
  %.sink.idx.i.i3135 = select i1 %i.dyz, i64 0, i64 %i.dzd
  %.sink.i.i3136 = getelementptr inbounds nuw i8, ptr %i.dza, i64 %.sink.idx.i.i3135 ; 6 uses
  %i.dze = load i32, ptr %.sink.i.i3136, align 4, !tbaa !33
  %i.dzf = trunc nuw nsw i64 %indvars.iv3706 to i32 ; 2 uses
  %..i3137 = tail call i32 @llvm.smin.i32(i32 %i.dze, i32 %i.dzf)
  store i32 %..i3137, ptr %.sink.i.i3136, align 4, !tbaa !33
  %i.dzg = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 8 ; 2 uses
  %i.dzh = load i32, ptr %i.dzg, align 4, !tbaa !33
  %i.dzi = tail call i32 @llvm.smax.i32(i32 %i.dzh, i32 %i.dzf)
  store i32 %i.dzi, ptr %i.dzg, align 4, !tbaa !33
  %i.dzj = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 4 ; 2 uses
  %i.dzk = load i32, ptr %i.dzj, align 4, !tbaa !33
  %i.dzl = tail call i32 @llvm.smin.i32(i32 %i.dzk, i32 %i.dyc)
  store i32 %i.dzl, ptr %i.dzj, align 4, !tbaa !33
  %i.dzm = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 12 ; 2 uses
  %i.dzn = load i32, ptr %i.dzm, align 4, !tbaa !33
  %i.dzo = tail call i32 @llvm.smax.i32(i32 %i.dzn, i32 %i.dyc)
  store i32 %i.dzo, ptr %i.dzm, align 4, !tbaa !33
  %i.dzp = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 16 ; 2 uses
  %i.dzq = load i32, ptr %i.dzp, align 4, !tbaa !33
  %i.dzr = add nsw i32 %i.dzq, 1
  store i32 %i.dzr, ptr %i.dzp, align 4, !tbaa !33
  %i.dzs = load ptr, ptr %i.dlj, align 8, !tbaa !50 ; 2 uses
  %i.dzt = getelementptr inbounds nuw [16 x i8], ptr %i.dzs, i64 %i.dzc ; 3 uses
  %i.dzu = load i64, ptr %i.dzt, align 8, !tbaa !116
  %i.dzv = add i64 %i.dzu, %indvars.iv3706
  store i64 %i.dzv, ptr %i.dzt, align 8, !tbaa !116
  br label %bb.sj

bb.si:                                            ; preds = %bb.sg
  store i16 0, ptr %i.dyr, align 2, !tbaa !54
  %i.dzw = load ptr, ptr %i.dlh, align 8, !tbaa !55 ; 7 uses
  %i.dzx = load i32, ptr %i.dzw, align 4, !tbaa !33
  %i.dzy = trunc nuw nsw i64 %indvars.iv3706 to i32 ; 2 uses
  %..i3140 = tail call i32 @llvm.smin.i32(i32 %i.dzx, i32 %i.dzy)
  store i32 %..i3140, ptr %i.dzw, align 4, !tbaa !33
  %i.dzz = getelementptr inbounds nuw i8, ptr %i.dzw, i64 8 ; 2 uses
  %i.eaa = load i32, ptr %i.dzz, align 4, !tbaa !33
  %i.eab = tail call i32 @llvm.smax.i32(i32 %i.eaa, i32 %i.dzy)
  store i32 %i.eab, ptr %i.dzz, align 4, !tbaa !33
  %i.eac = getelementptr inbounds nuw i8, ptr %i.dzw, i64 4 ; 2 uses
  %i.ead = load i32, ptr %i.eac, align 4, !tbaa !33
  %i.eae = tail call i32 @llvm.smin.i32(i32 %i.ead, i32 %i.dyd)
  store i32 %i.eae, ptr %i.eac, align 4, !tbaa !33
  %i.eaf = getelementptr inbounds nuw i8, ptr %i.dzw, i64 12 ; 2 uses
  %i.eag = load i32, ptr %i.eaf, align 4, !tbaa !33
  %i.eah = tail call i32 @llvm.smax.i32(i32 %i.eag, i32 %i.dyd)
  store i32 %i.eah, ptr %i.eaf, align 4, !tbaa !33
  %i.eai = getelementptr inbounds nuw i8, ptr %i.dzw, i64 16 ; 2 uses
  %i.eaj = load i32, ptr %i.eai, align 4, !tbaa !33
  %i.eak = add nsw i32 %i.eaj, 1
  store i32 %i.eak, ptr %i.eai, align 4, !tbaa !33
  %i.eal = load ptr, ptr %i.dlj, align 8, !tbaa !50 ; 4 uses
  %i.eam = load i64, ptr %i.eal, align 8, !tbaa !116
  %i.ean = add i64 %i.eam, %indvars.iv3706
  store i64 %i.ean, ptr %i.eal, align 8, !tbaa !116
  br label %bb.sj

bb.sj:                                            ; preds = %bb.si, %bb.sh
  %.sink4174 = phi ptr [ %i.eal, %bb.si ], [ %i.dzt, %bb.sh ]
  %i.eao = phi ptr [ %i.eal, %bb.si ], [ %i.dzs, %bb.sh ] ; 11 uses
  %i.eap = phi ptr [ %i.dzw, %bb.si ], [ %i.dza, %bb.sh ] ; 21 uses
  %i.eaq = getelementptr inbounds nuw i8, ptr %.sink4174, i64 8 ; 2 uses
  %i.ear = load i64, ptr %i.eaq, align 8, !tbaa !117
  %i.eas = add i64 %i.ear, %indvars.iv3709
  store i64 %i.eas, ptr %i.eaq, align 8, !tbaa !117
  %i.eat = or disjoint i64 %indvars.iv3706, 1     ; 12 uses
  %i.eau = getelementptr inbounds nuw i8, ptr %i.dxu, i64 %i.eat
  %i.eav = load i8, ptr %i.eau, align 1, !tbaa !32
  %.not1872 = icmp eq i8 %i.eav, 0
  %i.eaw = getelementptr inbounds nuw [2 x i8], ptr %i.dxy, i64 %i.eat ; 2 uses
  br i1 %.not1872, label %bb.sl, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  store i16 %i.dyv, ptr %i.eaw, align 2, !tbaa !54
  %i.eax = load i32, ptr %i.dlg, align 4, !tbaa !96
  %i.eay = icmp slt i32 %i.eax, 2
  %i.eaz = load i64, ptr %i.dli, align 8
  %i.eba = zext i16 %i.dyv to i64                 ; 2 uses
  %i.ebb = mul i64 %i.eaz, %i.eba
  %.sink.idx.i.i3141 = select i1 %i.eay, i64 0, i64 %i.ebb
  %.sink.i.i3142 = getelementptr inbounds nuw i8, ptr %i.eap, i64 %.sink.idx.i.i3141 ; 6 uses
  %i.ebc = load i32, ptr %.sink.i.i3142, align 4, !tbaa !33
  %i.ebd = trunc nuw nsw i64 %i.eat to i32        ; 2 uses
  %..i3143 = tail call i32 @llvm.smin.i32(i32 %i.ebc, i32 %i.ebd)
  store i32 %..i3143, ptr %.sink.i.i3142, align 4, !tbaa !33
  %i.ebe = getelementptr inbounds nuw i8, ptr %.sink.i.i3142, i64 8 ; 2 uses
  %i.ebf = load i32, ptr %i.ebe, align 4, !tbaa !33
  %i.ebg = tail call i32 @llvm.smax.i32(i32 %i.ebf, i32 %i.ebd)
  store i32 %i.ebg, ptr %i.ebe, align 4, !tbaa !33
  %i.ebh = getelementptr inbounds nuw i8, ptr %.sink.i.i3142, i64 4 ; 2 uses
  %i.ebi = load i32, ptr %i.ebh, align 4, !tbaa !33
  %i.ebj = tail call i32 @llvm.smin.i32(i32 %i.ebi, i32 %i.dye)
  store i32 %i.ebj, ptr %i.ebh, align 4, !tbaa !33
  %i.ebk = getelementptr inbounds nuw i8, ptr %.sink.i.i3142, i64 12 ; 2 uses
  %i.ebl = load i32, ptr %i.ebk, align 4, !tbaa !33
  %i.ebm = tail call i32 @llvm.smax.i32(i32 %i.ebl, i32 %i.dye)
  store i32 %i.ebm, ptr %i.ebk, align 4, !tbaa !33
  %i.ebn = getelementptr inbounds nuw i8, ptr %.sink.i.i3142, i64 16 ; 2 uses
  %i.ebo = load i32, ptr %i.ebn, align 4, !tbaa !33
  %i.ebp = add nsw i32 %i.ebo, 1
  store i32 %i.ebp, ptr %i.ebn, align 4, !tbaa !33
  %i.ebq = getelementptr inbounds nuw [16 x i8], ptr %i.eao, i64 %i.eba ; 3 uses
  %i.ebr = load i64, ptr %i.ebq, align 8, !tbaa !116
  %i.ebs = add i64 %i.ebr, %i.eat
  store i64 %i.ebs, ptr %i.ebq, align 8, !tbaa !116
  br label %bb.sm

bb.sl:                                            ; preds = %bb.sj
  store i16 0, ptr %i.eaw, align 2, !tbaa !54
  %i.ebt = load i32, ptr %i.eap, align 4, !tbaa !33
  %i.ebu = trunc nuw nsw i64 %i.eat to i32        ; 2 uses
  %..i3146 = tail call i32 @llvm.smin.i32(i32 %i.ebt, i32 %i.ebu)
  store i32 %..i3146, ptr %i.eap, align 4, !tbaa !33
  %i.ebv = getelementptr inbounds nuw i8, ptr %i.eap, i64 8 ; 2 uses
  %i.ebw = load i32, ptr %i.ebv, align 4, !tbaa !33
  %i.ebx = tail call i32 @llvm.smax.i32(i32 %i.ebw, i32 %i.ebu)
  store i32 %i.ebx, ptr %i.ebv, align 4, !tbaa !33
  %i.eby = getelementptr inbounds nuw i8, ptr %i.eap, i64 4 ; 2 uses
  %i.ebz = load i32, ptr %i.eby, align 4, !tbaa !33
  %i.eca = tail call i32 @llvm.smin.i32(i32 %i.ebz, i32 %i.dyf)
  store i32 %i.eca, ptr %i.eby, align 4, !tbaa !33
  %i.ecb = getelementptr inbounds nuw i8, ptr %i.eap, i64 12 ; 2 uses
  %i.ecc = load i32, ptr %i.ecb, align 4, !tbaa !33
  %i.ecd = tail call i32 @llvm.smax.i32(i32 %i.ecc, i32 %i.dyf)
  store i32 %i.ecd, ptr %i.ecb, align 4, !tbaa !33
  %i.ece = getelementptr inbounds nuw i8, ptr %i.eap, i64 16 ; 2 uses
  %i.ecf = load i32, ptr %i.ece, align 4, !tbaa !33
  %i.ecg = add nsw i32 %i.ecf, 1
  store i32 %i.ecg, ptr %i.ece, align 4, !tbaa !33
  %i.ech = load i64, ptr %i.eao, align 8, !tbaa !116
  %i.eci = add i64 %i.ech, %i.eat
  store i64 %i.eci, ptr %i.eao, align 8, !tbaa !116
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %bb.sk
  %.sink4177 = phi ptr [ %i.eao, %bb.sl ], [ %i.ebq, %bb.sk ]
  %i.ecj = getelementptr inbounds nuw i8, ptr %.sink4177, i64 8 ; 2 uses
  %i.eck = load i64, ptr %i.ecj, align 8, !tbaa !117
  %i.ecl = add i64 %i.eck, %indvars.iv3709
  store i64 %i.ecl, ptr %i.ecj, align 8, !tbaa !117
  %i.ecm = load i32, ptr %i.c, align 8, !tbaa !39
  %i.ecn = sext i32 %i.ecm to i64
  %i.eco = icmp slt i64 %i.dyb, %i.ecn
  br i1 %i.eco, label %bb.sn, label %bb.sv

bb.sn:                                            ; preds = %bb.sm
  %i.ecp = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %indvars.iv3706
  %i.ecq = load i8, ptr %i.ecp, align 1, !tbaa !32
  %.not1873 = icmp eq i8 %i.ecq, 0
  %i.ecr = getelementptr inbounds nuw [2 x i8], ptr %i.dxz, i64 %indvars.iv3706 ; 2 uses
  br i1 %.not1873, label %bb.sp, label %bb.so

bb.so:                                            ; preds = %bb.sn
  store i16 %i.dyv, ptr %i.ecr, align 2, !tbaa !54
  %i.ecs = load i32, ptr %i.dlg, align 4, !tbaa !96
  %i.ect = icmp slt i32 %i.ecs, 2
  %i.ecu = load i64, ptr %i.dli, align 8
  %i.ecv = zext i16 %i.dyv to i64                 ; 2 uses
  %i.ecw = mul i64 %i.ecu, %i.ecv
  %.sink.idx.i.i3147 = select i1 %i.ect, i64 0, i64 %i.ecw
  %.sink.i.i3148 = getelementptr inbounds nuw i8, ptr %i.eap, i64 %.sink.idx.i.i3147 ; 6 uses
  %i.ecx = load i32, ptr %.sink.i.i3148, align 4, !tbaa !33
  %i.ecy = trunc nuw nsw i64 %indvars.iv3706 to i32 ; 2 uses
  %..i3149 = tail call i32 @llvm.smin.i32(i32 %i.ecx, i32 %i.ecy)
  store i32 %..i3149, ptr %.sink.i.i3148, align 4, !tbaa !33
  %i.ecz = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 8 ; 2 uses
  %i.eda = load i32, ptr %i.ecz, align 4, !tbaa !33
  %i.edb = tail call i32 @llvm.smax.i32(i32 %i.eda, i32 %i.ecy)
  store i32 %i.edb, ptr %i.ecz, align 4, !tbaa !33
  %i.edc = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 4 ; 2 uses
  %i.edd = load i32, ptr %i.edc, align 4, !tbaa !33
  %i.ede = tail call i32 @llvm.smin.i32(i32 %i.edd, i32 %i.dyg)
  store i32 %i.ede, ptr %i.edc, align 4, !tbaa !33
  %i.edf = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 12 ; 2 uses
  %i.edg = load i32, ptr %i.edf, align 4, !tbaa !33
  %i.edh = tail call i32 @llvm.smax.i32(i32 %i.edg, i32 %i.dyg)
  store i32 %i.edh, ptr %i.edf, align 4, !tbaa !33
  %i.edi = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 16 ; 2 uses
  %i.edj = load i32, ptr %i.edi, align 4, !tbaa !33
  %i.edk = add nsw i32 %i.edj, 1
  store i32 %i.edk, ptr %i.edi, align 4, !tbaa !33
  %i.edl = getelementptr inbounds nuw [16 x i8], ptr %i.eao, i64 %i.ecv ; 3 uses
  %i.edm = load i64, ptr %i.edl, align 8, !tbaa !116
  %i.edn = add i64 %i.edm, %indvars.iv3706
  store i64 %i.edn, ptr %i.edl, align 8, !tbaa !116
  br label %bb.sq

bb.sp:                                            ; preds = %bb.sn
  store i16 0, ptr %i.ecr, align 2, !tbaa !54
  %i.edo = load i32, ptr %i.eap, align 4, !tbaa !33
  %i.edp = trunc nuw nsw i64 %indvars.iv3706 to i32 ; 2 uses
  %..i3152 = tail call i32 @llvm.smin.i32(i32 %i.edo, i32 %i.edp)
  store i32 %..i3152, ptr %i.eap, align 4, !tbaa !33
  %i.edq = getelementptr inbounds nuw i8, ptr %i.eap, i64 8 ; 2 uses
  %i.edr = load i32, ptr %i.edq, align 4, !tbaa !33
  %i.eds = tail call i32 @llvm.smax.i32(i32 %i.edr, i32 %i.edp)
  store i32 %i.eds, ptr %i.edq, align 4, !tbaa !33
  %i.edt = getelementptr inbounds nuw i8, ptr %i.eap, i64 4 ; 2 uses
  %i.edu = load i32, ptr %i.edt, align 4, !tbaa !33
  %i.edv = tail call i32 @llvm.smin.i32(i32 %i.edu, i32 %i.dyh)
  store i32 %i.edv, ptr %i.edt, align 4, !tbaa !33
  %i.edw = getelementptr inbounds nuw i8, ptr %i.eap, i64 12 ; 2 uses
  %i.edx = load i32, ptr %i.edw, align 4, !tbaa !33
  %i.edy = tail call i32 @llvm.smax.i32(i32 %i.edx, i32 %i.dyh)
  store i32 %i.edy, ptr %i.edw, align 4, !tbaa !33
  %i.edz = getelementptr inbounds nuw i8, ptr %i.eap, i64 16 ; 2 uses
  %i.eea = load i32, ptr %i.edz, align 4, !tbaa !33
  %i.eeb = add nsw i32 %i.eea, 1
  store i32 %i.eeb, ptr %i.edz, align 4, !tbaa !33
  %i.eec = load i64, ptr %i.eao, align 8, !tbaa !116
  %i.eed = add i64 %i.eec, %indvars.iv3706
  store i64 %i.eed, ptr %i.eao, align 8, !tbaa !116
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %bb.so
  %.sink4180 = phi ptr [ %i.eao, %bb.sp ], [ %i.edl, %bb.so ]
  %i.eee = getelementptr inbounds nuw i8, ptr %.sink4180, i64 8 ; 2 uses
  %i.eef = load i64, ptr %i.eee, align 8, !tbaa !117
  %i.eeg = add i64 %i.eef, %i.dyb
  store i64 %i.eeg, ptr %i.eee, align 8, !tbaa !117
  %i.eeh = getelementptr inbounds nuw i8, ptr %i.dxv, i64 %i.eat
  %i.eei = load i8, ptr %i.eeh, align 1, !tbaa !32
  %.not1874 = icmp eq i8 %i.eei, 0
  %i.eej = getelementptr inbounds nuw [2 x i8], ptr %i.dxz, i64 %i.eat ; 2 uses
  br i1 %.not1874, label %bb.ss, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  store i16 %i.dyv, ptr %i.eej, align 2, !tbaa !54
  %i.eek = load i32, ptr %i.dlg, align 4, !tbaa !96
  %i.eel = icmp slt i32 %i.eek, 2
  %i.eem = load i64, ptr %i.dli, align 8
  %i.een = zext i16 %i.dyv to i64                 ; 2 uses
  %i.eeo = mul i64 %i.eem, %i.een
  %.sink.idx.i.i3153 = select i1 %i.eel, i64 0, i64 %i.eeo
  %.sink.i.i3154 = getelementptr inbounds nuw i8, ptr %i.eap, i64 %.sink.idx.i.i3153 ; 6 uses
  %i.eep = load i32, ptr %.sink.i.i3154, align 4, !tbaa !33
  %i.eeq = trunc nuw nsw i64 %i.eat to i32        ; 2 uses
  %..i3155 = tail call i32 @llvm.smin.i32(i32 %i.eep, i32 %i.eeq)
  store i32 %..i3155, ptr %.sink.i.i3154, align 4, !tbaa !33
  %i.eer = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 8 ; 2 uses
  %i.ees = load i32, ptr %i.eer, align 4, !tbaa !33
  %i.eet = tail call i32 @llvm.smax.i32(i32 %i.ees, i32 %i.eeq)
  store i32 %i.eet, ptr %i.eer, align 4, !tbaa !33
  %i.eeu = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 4 ; 2 uses
  %i.eev = load i32, ptr %i.eeu, align 4, !tbaa !33
  %i.eew = tail call i32 @llvm.smin.i32(i32 %i.eev, i32 %i.dyi)
  store i32 %i.eew, ptr %i.eeu, align 4, !tbaa !33
  %i.eex = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 12 ; 2 uses
  %i.eey = load i32, ptr %i.eex, align 4, !tbaa !33
  %i.eez = tail call i32 @llvm.smax.i32(i32 %i.eey, i32 %i.dyi)
  store i32 %i.eez, ptr %i.eex, align 4, !tbaa !33
  %i.efa = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 16 ; 2 uses
  %i.efb = load i32, ptr %i.efa, align 4, !tbaa !33
  %i.efc = add nsw i32 %i.efb, 1
  store i32 %i.efc, ptr %i.efa, align 4, !tbaa !33
  %i.efd = getelementptr inbounds nuw [16 x i8], ptr %i.eao, i64 %i.een ; 2 uses
  %i.efe = load <2 x i64>, ptr %i.efd, align 8, !tbaa !40
  %i.eff = insertelement <2 x i64> %i.dym, i64 %i.eat, i64 0
  %i.efg = add <2 x i64> %i.efe, %i.eff
  store <2 x i64> %i.efg, ptr %i.efd, align 8, !tbaa !40
  br label %bb.sv

bb.ss:                                            ; preds = %bb.sq
  store i16 0, ptr %i.eej, align 2, !tbaa !54
  %i.efh = load i32, ptr %i.eap, align 4, !tbaa !33
  %i.efi = trunc nuw nsw i64 %i.eat to i32        ; 2 uses
  %..i3158 = tail call i32 @llvm.smin.i32(i32 %i.efh, i32 %i.efi)
  store i32 %..i3158, ptr %i.eap, align 4, !tbaa !33
  %i.efj = getelementptr inbounds nuw i8, ptr %i.eap, i64 8 ; 2 uses
  %i.efk = load i32, ptr %i.efj, align 4, !tbaa !33
  %i.efl = tail call i32 @llvm.smax.i32(i32 %i.efk, i32 %i.efi)
  store i32 %i.efl, ptr %i.efj, align 4, !tbaa !33
  %i.efm = getelementptr inbounds nuw i8, ptr %i.eap, i64 4 ; 2 uses
  %i.efn = load i32, ptr %i.efm, align 4, !tbaa !33
  %i.efo = tail call i32 @llvm.smin.i32(i32 %i.efn, i32 %i.dyj)
  store i32 %i.efo, ptr %i.efm, align 4, !tbaa !33
  %i.efp = getelementptr inbounds nuw i8, ptr %i.eap, i64 12 ; 2 uses
  %i.efq = load i32, ptr %i.efp, align 4, !tbaa !33
  %i.efr = tail call i32 @llvm.smax.i32(i32 %i.efq, i32 %i.dyj)
  store i32 %i.efr, ptr %i.efp, align 4, !tbaa !33
  %i.efs = getelementptr inbounds nuw i8, ptr %i.eap, i64 16 ; 2 uses
  %i.eft = load i32, ptr %i.efs, align 4, !tbaa !33
  %i.efu = add nsw i32 %i.eft, 1
  store i32 %i.efu, ptr %i.efs, align 4, !tbaa !33
  %i.efv = load <2 x i64>, ptr %i.eao, align 8, !tbaa !40
  %i.efw = insertelement <2 x i64> %i.dym, i64 %i.eat, i64 0
  %i.efx = add <2 x i64> %i.efv, %i.efw
  store <2 x i64> %i.efx, ptr %i.eao, align 8, !tbaa !40
  br label %bb.sv

bb.st:                                            ; preds = %bb.sf
  %i.efy = or disjoint i64 %indvars.iv3706, 1     ; 5 uses
  %i.efz = getelementptr inbounds nuw [2 x i8], ptr %i.dxy, i64 %i.efy
  store i16 0, ptr %i.efz, align 2, !tbaa !54
  %i.ega = load ptr, ptr %i.dlh, align 8, !tbaa !55 ; 7 uses
  %i.egb = load i32, ptr %i.ega, align 4, !tbaa !33
  %i.egc = trunc nuw nsw i64 %indvars.iv3706 to i32 ; 4 uses
  %..i3161 = tail call i32 @llvm.smin.i32(i32 %i.egb, i32 %i.egc)
  %i.egd = getelementptr inbounds nuw i8, ptr %i.ega, i64 8 ; 3 uses
  %i.ege = load i32, ptr %i.egd, align 4, !tbaa !33
  %i.egf = tail call i32 @llvm.smax.i32(i32 %i.ege, i32 %i.egc)
  %i.egg = getelementptr inbounds nuw i8, ptr %i.ega, i64 4 ; 3 uses
  %i.egh = load i32, ptr %i.egg, align 4, !tbaa !33
  %i.egi = tail call i32 @llvm.smin.i32(i32 %i.egh, i32 %i.dyk) ; 2 uses
  %i.egj = getelementptr inbounds nuw i8, ptr %i.ega, i64 12 ; 3 uses
  %i.egk = load i32, ptr %i.egj, align 4, !tbaa !33
  %i.egl = tail call i32 @llvm.smax.i32(i32 %i.egk, i32 %i.dyk) ; 2 uses
  %i.egm = getelementptr inbounds nuw i8, ptr %i.ega, i64 16 ; 3 uses
  %i.egn = load i32, ptr %i.egm, align 4, !tbaa !33 ; 2 uses
  %i.ego = load ptr, ptr %i.dlj, align 8, !tbaa !50 ; 4 uses
  %i.egp = load i64, ptr %i.ego, align 8, !tbaa !116
  %i.egq = add i64 %i.egp, %indvars.iv3706
  %i.egr = getelementptr inbounds nuw i8, ptr %i.ego, i64 8 ; 3 uses
  %i.egs = load i64, ptr %i.egr, align 8, !tbaa !117
  %16 = trunc nuw nsw i64 %i.efy to i32           ; 4 uses
  %..i3164 = tail call i32 @llvm.smin.i32(i32 %..i3161, i32 %16) ; 2 uses
  store i32 %..i3164, ptr %i.ega, align 4, !tbaa !33
  %i.egt = tail call i32 @llvm.umax.i32(i32 %i.egf, i32 %16) ; 2 uses
  store i32 %i.egt, ptr %i.egd, align 4, !tbaa !33
  store i32 %i.egi, ptr %i.egg, align 4, !tbaa !33
  store i32 %i.egl, ptr %i.egj, align 4, !tbaa !33
  %i.egu = add nsw i32 %i.egn, 2
  store i32 %i.egu, ptr %i.egm, align 4, !tbaa !33
  %i.egv = add i64 %i.egq, %i.efy                 ; 2 uses
  store i64 %i.egv, ptr %i.ego, align 8, !tbaa !116
  %.reass4150 = add i64 %i.egs, %invariant.op4149 ; 2 uses
  store i64 %.reass4150, ptr %i.egr, align 8, !tbaa !117
  %i.egw = load i32, ptr %i.c, align 8, !tbaa !39
  %i.egx = sext i32 %i.egw to i64
  %i.egy = icmp slt i64 %i.dyb, %i.egx
  br i1 %i.egy, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %bb.st
  %i.egz = getelementptr inbounds nuw [2 x i8], ptr %i.dxz, i64 %indvars.iv3706
  store i16 0, ptr %i.egz, align 2, !tbaa !54
  %i.eha = getelementptr inbounds nuw [2 x i8], ptr %i.dxz, i64 %i.efy
  store i16 0, ptr %i.eha, align 2, !tbaa !54
  %..i3167 = tail call i32 @llvm.smin.i32(i32 %..i3164, i32 %i.egc)
  %17 = tail call i32 @llvm.umax.i32(i32 %i.egt, i32 %i.egc)
  %18 = tail call i32 @llvm.smin.i32(i32 %i.egi, i32 %i.dyl)
  %i.ehb = tail call i32 @llvm.smax.i32(i32 %i.egl, i32 %i.dyl)
  %i.ehc = add i64 %i.egv, %indvars.iv3706
  %..i3170 = tail call i32 @llvm.smin.i32(i32 %..i3167, i32 %16)
  store i32 %..i3170, ptr %i.ega, align 4, !tbaa !33
  %19 = tail call i32 @llvm.umax.i32(i32 %17, i32 %16)
  store i32 %19, ptr %i.egd, align 4, !tbaa !33
  store i32 %18, ptr %i.egg, align 4, !tbaa !33
  store i32 %i.ehb, ptr %i.egj, align 4, !tbaa !33
  %i.ehd = add nsw i32 %i.egn, 4
  store i32 %i.ehd, ptr %i.egm, align 4, !tbaa !33
  %i.ehe = add i64 %i.ehc, %i.efy
  store i64 %i.ehe, ptr %i.ego, align 8, !tbaa !116
  %.reass4152 = add i64 %.reass4150, %invariant.op4151
  store i64 %.reass4152, ptr %i.egr, align 8, !tbaa !117
  br label %bb.sv

bb.sv:                                            ; preds = %bb.su, %bb.ss, %bb.sr, %bb.st, %bb.sm
  %indvars.iv.next3707 = add nuw nsw i64 %indvars.iv3706, 2 ; 2 uses
  %i.ehf = load i32, ptr %i.p, align 4, !tbaa !52 ; 2 uses
  %i.ehg = sext i32 %i.ehf to i64
  %i.ehh = icmp slt i64 %indvars.iv.next3707, %i.ehg
  br i1 %i.ehh, label %bb.sf, label %._crit_edge3536.loopexit, !llvm.loop !322

bb.sw:                                            ; preds = %bb.rc
  br i1 %.not1858, label %.preheader, label %.preheader3284

.preheader3284:                                   ; preds = %bb.sw
  br i1 %i.dkt, label %.lr.ph3544, label %.loopexit

.lr.ph3544:                                       ; preds = %.preheader3284
  %i.ehi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ehj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ehk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ehl = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ehm = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.ehn = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.eho = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  %i.ehp = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %.pre3729 = load ptr, ptr %i.ehi, align 8, !tbaa !55
  %.pre3730 = load ptr, ptr %i.ehk, align 8, !tbaa !55
  br label %bb.sx

.preheader:                                       ; preds = %bb.sw
  br i1 %i.dkt, label %.lr.ph3551, label %.loopexit

.lr.ph3551:                                       ; preds = %.preheader
  %i.ehq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ehr = load ptr, ptr %i.ehq, align 8, !tbaa !55
  %i.ehs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eht = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ehu = load ptr, ptr %i.eht, align 8, !tbaa !55
  %i.ehv = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ehw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.ehx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ehy = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  %i.ehz = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  br label %bb.tp

bb.sx:                                            ; preds = %.lr.ph3544, %._crit_edge3542
  %i.eia = phi i32 [ %i.dkp, %.lr.ph3544 ], [ %i.eix, %._crit_edge3542 ]
  %i.eib = phi i32 [ %i.dkr, %.lr.ph3544 ], [ %i.eiy, %._crit_edge3542 ] ; 2 uses
  %indvars.iv3715 = phi i64 [ 0, %.lr.ph3544 ], [ %indvars.iv.next3716, %._crit_edge3542 ] ; 13 uses
  %i.eic = load i64, ptr %i.ehj, align 8, !tbaa !40 ; 2 uses
  %i.eid = mul i64 %i.eic, %indvars.iv3715
  %i.eie = getelementptr inbounds nuw i8, ptr %.pre3729, i64 %i.eid ; 3 uses
  %i.eif = getelementptr inbounds nuw i8, ptr %i.eie, i64 %i.eic ; 2 uses
  %i.eig = load i64, ptr %i.ehl, align 8, !tbaa !40 ; 2 uses
  %i.eih = mul i64 %i.eig, %indvars.iv3715
  %i.eii = getelementptr inbounds nuw i8, ptr %.pre3730, i64 %i.eih ; 4 uses
  %i.eij = getelementptr inbounds nuw i8, ptr %i.eii, i64 %i.eig ; 4 uses
  %i.eik = icmp sgt i32 %i.eib, 0
  br i1 %i.eik, label %.lr.ph3541, label %._crit_edge3542

.lr.ph3541:                                       ; preds = %bb.sx
  %i.eil = or disjoint i64 %indvars.iv3715, 1     ; 9 uses
  %i.eim = trunc nuw nsw i64 %indvars.iv3715 to i32 ; 2 uses
  %i.ein = trunc nuw nsw i64 %indvars.iv3715 to i32 ; 2 uses
  %i.eio = trunc nuw nsw i64 %i.eil to i32        ; 2 uses
  %i.eip = trunc nuw nsw i64 %i.eil to i32        ; 2 uses
  %i.eiq = trunc nuw nsw i64 %indvars.iv3715 to i32 ; 2 uses
  %i.eir = trunc nuw nsw i64 %indvars.iv3715 to i32 ; 2 uses
  %i.eis = trunc nuw nsw i64 %i.eil to i32        ; 2 uses
  %i.eit = trunc nuw nsw i64 %i.eil to i32        ; 2 uses
  %i.eiu = trunc nuw nsw i64 %indvars.iv3715 to i32 ; 4 uses
  %i.eiv = trunc nuw nsw i64 %i.eil to i32        ; 4 uses
  %invariant.op4153 = add nuw i64 %indvars.iv3715, %i.eil
  %invariant.op4155 = add nuw i64 %indvars.iv3715, %i.eil
  %i.eiw = insertelement <2 x i64> poison, i64 %i.eil, i64 1 ; 2 uses
  br label %bb.sy

._crit_edge3542.loopexit:                         ; preds = %bb.to
  %.pre3731 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3542

._crit_edge3542:                                  ; preds = %._crit_edge3542.loopexit, %bb.sx
  %i.eix = phi i32 [ %.pre3731, %._crit_edge3542.loopexit ], [ %i.eia, %bb.sx ] ; 2 uses
  %i.eiy = phi i32 [ %i.ero, %._crit_edge3542.loopexit ], [ %i.eib, %bb.sx ]
  %indvars.iv.next3716 = add nuw nsw i64 %indvars.iv3715, 2 ; 2 uses
  %i.eiz = sext i32 %i.eix to i64
  %i.eja = icmp slt i64 %indvars.iv.next3716, %i.eiz
  br i1 %i.eja, label %bb.sx, label %.loopexit, !llvm.loop !323

bb.sy:                                            ; preds = %.lr.ph3541, %bb.to
  %indvars.iv3712 = phi i64 [ 0, %.lr.ph3541 ], [ %indvars.iv.next3713, %bb.to ] ; 18 uses
  %i.ejb = getelementptr inbounds nuw [2 x i8], ptr %i.eii, i64 %indvars.iv3712 ; 3 uses
  %i.ejc = load i16, ptr %i.ejb, align 2, !tbaa !54 ; 2 uses
  %.not1864 = icmp eq i16 %i.ejc, 0
  br i1 %.not1864, label %bb.tm, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  %i.ejd = zext i16 %i.ejc to i64
  %i.eje = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.ejd
  %i.ejf = load i16, ptr %i.eje, align 2, !tbaa !54 ; 8 uses
  %i.ejg = getelementptr inbounds nuw i8, ptr %i.eie, i64 %indvars.iv3712
  %i.ejh = load i8, ptr %i.ejg, align 1, !tbaa !32
  %.not1865 = icmp eq i8 %i.ejh, 0
  br i1 %.not1865, label %bb.tb, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  store i16 %i.ejf, ptr %i.ejb, align 2, !tbaa !54
  %i.eji = load i32, ptr %i.ehm, align 4, !tbaa !96
  %i.ejj = icmp slt i32 %i.eji, 2
  %i.ejk = load ptr, ptr %i.ehn, align 8, !tbaa !55 ; 2 uses
  %i.ejl = load i64, ptr %i.eho, align 8
  %i.ejm = zext i16 %i.ejf to i64                 ; 2 uses
  %i.ejn = mul i64 %i.ejl, %i.ejm
  %.sink.idx.i.i3171 = select i1 %i.ejj, i64 0, i64 %i.ejn
  %.sink.i.i3172 = getelementptr inbounds nuw i8, ptr %i.ejk, i64 %.sink.idx.i.i3171 ; 6 uses
  %i.ejo = load i32, ptr %.sink.i.i3172, align 4, !tbaa !33
  %i.ejp = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 2 uses
  %..i3173 = tail call i32 @llvm.smin.i32(i32 %i.ejo, i32 %i.ejp)
  store i32 %..i3173, ptr %.sink.i.i3172, align 4, !tbaa !33
  %i.ejq = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 8 ; 2 uses
  %i.ejr = load i32, ptr %i.ejq, align 4, !tbaa !33
  %i.ejs = tail call i32 @llvm.smax.i32(i32 %i.ejr, i32 %i.ejp)
  store i32 %i.ejs, ptr %i.ejq, align 4, !tbaa !33
  %i.ejt = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 4 ; 2 uses
  %i.eju = load i32, ptr %i.ejt, align 4, !tbaa !33
  %i.ejv = tail call i32 @llvm.smin.i32(i32 %i.eju, i32 %i.eim)
  store i32 %i.ejv, ptr %i.ejt, align 4, !tbaa !33
  %i.ejw = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 12 ; 2 uses
  %i.ejx = load i32, ptr %i.ejw, align 4, !tbaa !33
  %i.ejy = tail call i32 @llvm.smax.i32(i32 %i.ejx, i32 %i.eim)
  store i32 %i.ejy, ptr %i.ejw, align 4, !tbaa !33
  %i.ejz = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 16 ; 2 uses
  %i.eka = load i32, ptr %i.ejz, align 4, !tbaa !33
  %i.ekb = add nsw i32 %i.eka, 1
  store i32 %i.ekb, ptr %i.ejz, align 4, !tbaa !33
  %i.ekc = load ptr, ptr %i.ehp, align 8, !tbaa !50 ; 2 uses
  %i.ekd = getelementptr inbounds nuw [16 x i8], ptr %i.ekc, i64 %i.ejm ; 3 uses
  %i.eke = load i64, ptr %i.ekd, align 8, !tbaa !116
  %i.ekf = add i64 %i.eke, %indvars.iv3712
  store i64 %i.ekf, ptr %i.ekd, align 8, !tbaa !116
  br label %bb.tc

bb.tb:                                            ; preds = %bb.sz
  store i16 0, ptr %i.ejb, align 2, !tbaa !54
  %i.ekg = load ptr, ptr %i.ehn, align 8, !tbaa !55 ; 7 uses
  %i.ekh = load i32, ptr %i.ekg, align 4, !tbaa !33
  %i.eki = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 2 uses
  %..i3176 = tail call i32 @llvm.smin.i32(i32 %i.ekh, i32 %i.eki)
  store i32 %..i3176, ptr %i.ekg, align 4, !tbaa !33
  %i.ekj = getelementptr inbounds nuw i8, ptr %i.ekg, i64 8 ; 2 uses
  %i.ekk = load i32, ptr %i.ekj, align 4, !tbaa !33
  %i.ekl = tail call i32 @llvm.smax.i32(i32 %i.ekk, i32 %i.eki)
  store i32 %i.ekl, ptr %i.ekj, align 4, !tbaa !33
  %i.ekm = getelementptr inbounds nuw i8, ptr %i.ekg, i64 4 ; 2 uses
  %i.ekn = load i32, ptr %i.ekm, align 4, !tbaa !33
  %i.eko = tail call i32 @llvm.smin.i32(i32 %i.ekn, i32 %i.ein)
  store i32 %i.eko, ptr %i.ekm, align 4, !tbaa !33
  %i.ekp = getelementptr inbounds nuw i8, ptr %i.ekg, i64 12 ; 2 uses
  %i.ekq = load i32, ptr %i.ekp, align 4, !tbaa !33
  %i.ekr = tail call i32 @llvm.smax.i32(i32 %i.ekq, i32 %i.ein)
  store i32 %i.ekr, ptr %i.ekp, align 4, !tbaa !33
  %i.eks = getelementptr inbounds nuw i8, ptr %i.ekg, i64 16 ; 2 uses
  %i.ekt = load i32, ptr %i.eks, align 4, !tbaa !33
  %i.eku = add nsw i32 %i.ekt, 1
  store i32 %i.eku, ptr %i.eks, align 4, !tbaa !33
  %i.ekv = load ptr, ptr %i.ehp, align 8, !tbaa !50 ; 4 uses
  %i.ekw = load i64, ptr %i.ekv, align 8, !tbaa !116
  %i.ekx = add i64 %i.ekw, %indvars.iv3712
  store i64 %i.ekx, ptr %i.ekv, align 8, !tbaa !116
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.ta
  %.sink4183 = phi ptr [ %i.ekv, %bb.tb ], [ %i.ekd, %bb.ta ]
  %i.eky = phi ptr [ %i.ekv, %bb.tb ], [ %i.ekc, %bb.ta ] ; 11 uses
  %i.ekz = phi ptr [ %i.ekg, %bb.tb ], [ %i.ejk, %bb.ta ] ; 21 uses
  %i.ela = getelementptr inbounds nuw i8, ptr %.sink4183, i64 8 ; 2 uses
  %i.elb = load i64, ptr %i.ela, align 8, !tbaa !117
  %i.elc = add i64 %i.elb, %indvars.iv3715
  store i64 %i.elc, ptr %i.ela, align 8, !tbaa !117
  %i.eld = getelementptr inbounds nuw i8, ptr %i.eif, i64 %indvars.iv3712
  %i.ele = load i8, ptr %i.eld, align 1, !tbaa !32
  %.not1866 = icmp eq i8 %i.ele, 0
  %i.elf = getelementptr inbounds nuw [2 x i8], ptr %i.eij, i64 %indvars.iv3712 ; 2 uses
  br i1 %.not1866, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  store i16 %i.ejf, ptr %i.elf, align 2, !tbaa !54
  %i.elg = load i32, ptr %i.ehm, align 4, !tbaa !96
  %i.elh = icmp slt i32 %i.elg, 2
  %i.eli = load i64, ptr %i.eho, align 8
  %i.elj = zext i16 %i.ejf to i64                 ; 2 uses
  %i.elk = mul i64 %i.eli, %i.elj
  %.sink.idx.i.i3177 = select i1 %i.elh, i64 0, i64 %i.elk
  %.sink.i.i3178 = getelementptr inbounds nuw i8, ptr %i.ekz, i64 %.sink.idx.i.i3177 ; 6 uses
  %i.ell = load i32, ptr %.sink.i.i3178, align 4, !tbaa !33
  %i.elm = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 2 uses
  %..i3179 = tail call i32 @llvm.smin.i32(i32 %i.ell, i32 %i.elm)
  store i32 %..i3179, ptr %.sink.i.i3178, align 4, !tbaa !33
  %i.eln = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 8 ; 2 uses
  %i.elo = load i32, ptr %i.eln, align 4, !tbaa !33
  %i.elp = tail call i32 @llvm.smax.i32(i32 %i.elo, i32 %i.elm)
  store i32 %i.elp, ptr %i.eln, align 4, !tbaa !33
  %i.elq = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 4 ; 2 uses
  %i.elr = load i32, ptr %i.elq, align 4, !tbaa !33
  %i.els = tail call i32 @llvm.smin.i32(i32 %i.elr, i32 %i.eio)
  store i32 %i.els, ptr %i.elq, align 4, !tbaa !33
  %i.elt = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 12 ; 2 uses
  %i.elu = load i32, ptr %i.elt, align 4, !tbaa !33
  %i.elv = tail call i32 @llvm.smax.i32(i32 %i.elu, i32 %i.eio)
  store i32 %i.elv, ptr %i.elt, align 4, !tbaa !33
  %i.elw = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 16 ; 2 uses
  %i.elx = load i32, ptr %i.elw, align 4, !tbaa !33
  %i.ely = add nsw i32 %i.elx, 1
  store i32 %i.ely, ptr %i.elw, align 4, !tbaa !33
  %i.elz = getelementptr inbounds nuw [16 x i8], ptr %i.eky, i64 %i.elj ; 3 uses
  %i.ema = load i64, ptr %i.elz, align 8, !tbaa !116
  %i.emb = add i64 %i.ema, %indvars.iv3712
  store i64 %i.emb, ptr %i.elz, align 8, !tbaa !116
  br label %bb.tf

bb.te:                                            ; preds = %bb.tc
  store i16 0, ptr %i.elf, align 2, !tbaa !54
  %i.emc = load i32, ptr %i.ekz, align 4, !tbaa !33
  %i.emd = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 2 uses
  %..i3182 = tail call i32 @llvm.smin.i32(i32 %i.emc, i32 %i.emd)
  store i32 %..i3182, ptr %i.ekz, align 4, !tbaa !33
  %i.eme = getelementptr inbounds nuw i8, ptr %i.ekz, i64 8 ; 2 uses
  %i.emf = load i32, ptr %i.eme, align 4, !tbaa !33
  %i.emg = tail call i32 @llvm.smax.i32(i32 %i.emf, i32 %i.emd)
  store i32 %i.emg, ptr %i.eme, align 4, !tbaa !33
  %i.emh = getelementptr inbounds nuw i8, ptr %i.ekz, i64 4 ; 2 uses
  %i.emi = load i32, ptr %i.emh, align 4, !tbaa !33
  %i.emj = tail call i32 @llvm.smin.i32(i32 %i.emi, i32 %i.eip)
  store i32 %i.emj, ptr %i.emh, align 4, !tbaa !33
  %i.emk = getelementptr inbounds nuw i8, ptr %i.ekz, i64 12 ; 2 uses
  %i.eml = load i32, ptr %i.emk, align 4, !tbaa !33
  %i.emm = tail call i32 @llvm.smax.i32(i32 %i.eml, i32 %i.eip)
  store i32 %i.emm, ptr %i.emk, align 4, !tbaa !33
  %i.emn = getelementptr inbounds nuw i8, ptr %i.ekz, i64 16 ; 2 uses
  %i.emo = load i32, ptr %i.emn, align 4, !tbaa !33
  %i.emp = add nsw i32 %i.emo, 1
  store i32 %i.emp, ptr %i.emn, align 4, !tbaa !33
  %i.emq = load i64, ptr %i.eky, align 8, !tbaa !116
  %i.emr = add i64 %i.emq, %indvars.iv3712
  store i64 %i.emr, ptr %i.eky, align 8, !tbaa !116
  br label %bb.tf

bb.tf:                                            ; preds = %bb.te, %bb.td
  %.sink4186 = phi ptr [ %i.eky, %bb.te ], [ %i.elz, %bb.td ]
  %i.ems = getelementptr inbounds nuw i8, ptr %.sink4186, i64 8 ; 2 uses
  %i.emt = load i64, ptr %i.ems, align 8, !tbaa !117
  %i.emu = add i64 %i.emt, %i.eil
  store i64 %i.emu, ptr %i.ems, align 8, !tbaa !117
  %i.emv = or disjoint i64 %indvars.iv3712, 1     ; 13 uses
  %i.emw = load i32, ptr %i.p, align 4, !tbaa !52
  %i.emx = sext i32 %i.emw to i64
  %i.emy = icmp slt i64 %i.emv, %i.emx
  br i1 %i.emy, label %bb.tg, label %bb.to

bb.tg:                                            ; preds = %bb.tf
  %i.emz = getelementptr inbounds nuw i8, ptr %i.eie, i64 %i.emv
  %i.ena = load i8, ptr %i.emz, align 1, !tbaa !32
  %.not1867 = icmp eq i8 %i.ena, 0
  %i.enb = getelementptr inbounds nuw [2 x i8], ptr %i.eii, i64 %i.emv ; 2 uses
  br i1 %.not1867, label %bb.ti, label %bb.th

bb.th:                                            ; preds = %bb.tg
  store i16 %i.ejf, ptr %i.enb, align 2, !tbaa !54
  %i.enc = load i32, ptr %i.ehm, align 4, !tbaa !96
  %i.end = icmp slt i32 %i.enc, 2
  %i.ene = load i64, ptr %i.eho, align 8
  %i.enf = zext i16 %i.ejf to i64                 ; 2 uses
  %i.eng = mul i64 %i.ene, %i.enf
  %.sink.idx.i.i3183 = select i1 %i.end, i64 0, i64 %i.eng
  %.sink.i.i3184 = getelementptr inbounds nuw i8, ptr %i.ekz, i64 %.sink.idx.i.i3183 ; 6 uses
  %i.enh = load i32, ptr %.sink.i.i3184, align 4, !tbaa !33
  %i.eni = trunc nuw nsw i64 %i.emv to i32        ; 2 uses
  %..i3185 = tail call i32 @llvm.smin.i32(i32 %i.enh, i32 %i.eni)
  store i32 %..i3185, ptr %.sink.i.i3184, align 4, !tbaa !33
  %i.enj = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 8 ; 2 uses
  %i.enk = load i32, ptr %i.enj, align 4, !tbaa !33
  %i.enl = tail call i32 @llvm.smax.i32(i32 %i.enk, i32 %i.eni)
  store i32 %i.enl, ptr %i.enj, align 4, !tbaa !33
  %i.enm = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 4 ; 2 uses
  %i.enn = load i32, ptr %i.enm, align 4, !tbaa !33
  %i.eno = tail call i32 @llvm.smin.i32(i32 %i.enn, i32 %i.eiq)
  store i32 %i.eno, ptr %i.enm, align 4, !tbaa !33
  %i.enp = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 12 ; 2 uses
  %i.enq = load i32, ptr %i.enp, align 4, !tbaa !33
  %i.enr = tail call i32 @llvm.smax.i32(i32 %i.enq, i32 %i.eiq)
  store i32 %i.enr, ptr %i.enp, align 4, !tbaa !33
  %i.ens = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 16 ; 2 uses
  %i.ent = load i32, ptr %i.ens, align 4, !tbaa !33
  %i.enu = add nsw i32 %i.ent, 1
  store i32 %i.enu, ptr %i.ens, align 4, !tbaa !33
  %i.env = getelementptr inbounds nuw [16 x i8], ptr %i.eky, i64 %i.enf ; 3 uses
  %i.enw = load i64, ptr %i.env, align 8, !tbaa !116
  %i.enx = add i64 %i.enw, %i.emv
  store i64 %i.enx, ptr %i.env, align 8, !tbaa !116
  br label %bb.tj

bb.ti:                                            ; preds = %bb.tg
  store i16 0, ptr %i.enb, align 2, !tbaa !54
  %i.eny = load i32, ptr %i.ekz, align 4, !tbaa !33
  %i.enz = trunc nuw nsw i64 %i.emv to i32        ; 2 uses
  %..i3188 = tail call i32 @llvm.smin.i32(i32 %i.eny, i32 %i.enz)
  store i32 %..i3188, ptr %i.ekz, align 4, !tbaa !33
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.ekz, i64 8 ; 2 uses
  %i.eob = load i32, ptr %i.eoa, align 4, !tbaa !33
  %i.eoc = tail call i32 @llvm.smax.i32(i32 %i.eob, i32 %i.enz)
  store i32 %i.eoc, ptr %i.eoa, align 4, !tbaa !33
  %i.eod = getelementptr inbounds nuw i8, ptr %i.ekz, i64 4 ; 2 uses
  %i.eoe = load i32, ptr %i.eod, align 4, !tbaa !33
  %i.eof = tail call i32 @llvm.smin.i32(i32 %i.eoe, i32 %i.eir)
  store i32 %i.eof, ptr %i.eod, align 4, !tbaa !33
  %i.eog = getelementptr inbounds nuw i8, ptr %i.ekz, i64 12 ; 2 uses
  %i.eoh = load i32, ptr %i.eog, align 4, !tbaa !33
  %i.eoi = tail call i32 @llvm.smax.i32(i32 %i.eoh, i32 %i.eir)
  store i32 %i.eoi, ptr %i.eog, align 4, !tbaa !33
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.ekz, i64 16 ; 2 uses
  %i.eok = load i32, ptr %i.eoj, align 4, !tbaa !33
  %i.eol = add nsw i32 %i.eok, 1
  store i32 %i.eol, ptr %i.eoj, align 4, !tbaa !33
  %i.eom = load i64, ptr %i.eky, align 8, !tbaa !116
  %i.eon = add i64 %i.eom, %i.emv
  store i64 %i.eon, ptr %i.eky, align 8, !tbaa !116
  br label %bb.tj

bb.tj:                                            ; preds = %bb.ti, %bb.th
  %.sink4189 = phi ptr [ %i.eky, %bb.ti ], [ %i.env, %bb.th ]
  %i.eoo = getelementptr inbounds nuw i8, ptr %.sink4189, i64 8 ; 2 uses
  %i.eop = load i64, ptr %i.eoo, align 8, !tbaa !117
  %i.eoq = add i64 %i.eop, %indvars.iv3715
  store i64 %i.eoq, ptr %i.eoo, align 8, !tbaa !117
  %i.eor = getelementptr inbounds nuw i8, ptr %i.eif, i64 %i.emv
  %i.eos = load i8, ptr %i.eor, align 1, !tbaa !32
  %.not1868 = icmp eq i8 %i.eos, 0
  %i.eot = getelementptr inbounds nuw [2 x i8], ptr %i.eij, i64 %i.emv ; 2 uses
  br i1 %.not1868, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  store i16 %i.ejf, ptr %i.eot, align 2, !tbaa !54
  %i.eou = load i32, ptr %i.ehm, align 4, !tbaa !96
  %i.eov = icmp slt i32 %i.eou, 2
  %i.eow = load i64, ptr %i.eho, align 8
  %i.eox = zext i16 %i.ejf to i64                 ; 2 uses
  %i.eoy = mul i64 %i.eow, %i.eox
  %.sink.idx.i.i3189 = select i1 %i.eov, i64 0, i64 %i.eoy
  %.sink.i.i3190 = getelementptr inbounds nuw i8, ptr %i.ekz, i64 %.sink.idx.i.i3189 ; 6 uses
  %i.eoz = load i32, ptr %.sink.i.i3190, align 4, !tbaa !33
  %i.epa = trunc nuw nsw i64 %i.emv to i32        ; 2 uses
  %..i3191 = tail call i32 @llvm.smin.i32(i32 %i.eoz, i32 %i.epa)
  store i32 %..i3191, ptr %.sink.i.i3190, align 4, !tbaa !33
  %i.epb = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 8 ; 2 uses
  %i.epc = load i32, ptr %i.epb, align 4, !tbaa !33
  %i.epd = tail call i32 @llvm.smax.i32(i32 %i.epc, i32 %i.epa)
  store i32 %i.epd, ptr %i.epb, align 4, !tbaa !33
  %i.epe = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 4 ; 2 uses
  %i.epf = load i32, ptr %i.epe, align 4, !tbaa !33
  %i.epg = tail call i32 @llvm.smin.i32(i32 %i.epf, i32 %i.eis)
  store i32 %i.epg, ptr %i.epe, align 4, !tbaa !33
  %i.eph = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 12 ; 2 uses
  %i.epi = load i32, ptr %i.eph, align 4, !tbaa !33
  %i.epj = tail call i32 @llvm.smax.i32(i32 %i.epi, i32 %i.eis)
  store i32 %i.epj, ptr %i.eph, align 4, !tbaa !33
  %i.epk = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 16 ; 2 uses
  %i.epl = load i32, ptr %i.epk, align 4, !tbaa !33
  %i.epm = add nsw i32 %i.epl, 1
  store i32 %i.epm, ptr %i.epk, align 4, !tbaa !33
  %i.epn = getelementptr inbounds nuw [16 x i8], ptr %i.eky, i64 %i.eox ; 2 uses
  %i.epo = load <2 x i64>, ptr %i.epn, align 8, !tbaa !40
  %i.epp = insertelement <2 x i64> %i.eiw, i64 %i.emv, i64 0
  %i.epq = add <2 x i64> %i.epo, %i.epp
  store <2 x i64> %i.epq, ptr %i.epn, align 8, !tbaa !40
  br label %bb.to

bb.tl:                                            ; preds = %bb.tj
  store i16 0, ptr %i.eot, align 2, !tbaa !54
  %i.epr = load i32, ptr %i.ekz, align 4, !tbaa !33
  %i.eps = trunc nuw nsw i64 %i.emv to i32        ; 2 uses
  %..i3194 = tail call i32 @llvm.smin.i32(i32 %i.epr, i32 %i.eps)
  store i32 %..i3194, ptr %i.ekz, align 4, !tbaa !33
  %i.ept = getelementptr inbounds nuw i8, ptr %i.ekz, i64 8 ; 2 uses
  %i.epu = load i32, ptr %i.ept, align 4, !tbaa !33
  %i.epv = tail call i32 @llvm.smax.i32(i32 %i.epu, i32 %i.eps)
  store i32 %i.epv, ptr %i.ept, align 4, !tbaa !33
  %i.epw = getelementptr inbounds nuw i8, ptr %i.ekz, i64 4 ; 2 uses
  %i.epx = load i32, ptr %i.epw, align 4, !tbaa !33
  %i.epy = tail call i32 @llvm.smin.i32(i32 %i.epx, i32 %i.eit)
  store i32 %i.epy, ptr %i.epw, align 4, !tbaa !33
  %i.epz = getelementptr inbounds nuw i8, ptr %i.ekz, i64 12 ; 2 uses
  %i.eqa = load i32, ptr %i.epz, align 4, !tbaa !33
  %i.eqb = tail call i32 @llvm.smax.i32(i32 %i.eqa, i32 %i.eit)
  store i32 %i.eqb, ptr %i.epz, align 4, !tbaa !33
  %i.eqc = getelementptr inbounds nuw i8, ptr %i.ekz, i64 16 ; 2 uses
  %i.eqd = load i32, ptr %i.eqc, align 4, !tbaa !33
  %i.eqe = add nsw i32 %i.eqd, 1
  store i32 %i.eqe, ptr %i.eqc, align 4, !tbaa !33
  %i.eqf = load <2 x i64>, ptr %i.eky, align 8, !tbaa !40
  %i.eqg = insertelement <2 x i64> %i.eiw, i64 %i.emv, i64 0
  %i.eqh = add <2 x i64> %i.eqf, %i.eqg
  store <2 x i64> %i.eqh, ptr %i.eky, align 8, !tbaa !40
  br label %bb.to

bb.tm:                                            ; preds = %bb.sy
  %i.eqi = getelementptr inbounds nuw [2 x i8], ptr %i.eij, i64 %indvars.iv3712
  store i16 0, ptr %i.eqi, align 2, !tbaa !54
  %i.eqj = load ptr, ptr %i.ehn, align 8, !tbaa !55 ; 7 uses
  %i.eqk = load i32, ptr %i.eqj, align 4, !tbaa !33
  %i.eql = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 2 uses
  %..i3197 = tail call i32 @llvm.smin.i32(i32 %i.eqk, i32 %i.eql) ; 2 uses
  %i.eqm = getelementptr inbounds nuw i8, ptr %i.eqj, i64 8 ; 3 uses
  %i.eqn = load i32, ptr %i.eqm, align 4, !tbaa !33
  %i.eqo = tail call i32 @llvm.smax.i32(i32 %i.eqn, i32 %i.eql) ; 2 uses
  %i.eqp = getelementptr inbounds nuw i8, ptr %i.eqj, i64 4 ; 3 uses
  %i.eqq = load i32, ptr %i.eqp, align 4, !tbaa !33
  %i.eqr = tail call i32 @llvm.smin.i32(i32 %i.eqq, i32 %i.eiu)
  %i.eqs = getelementptr inbounds nuw i8, ptr %i.eqj, i64 12 ; 3 uses
  %i.eqt = load i32, ptr %i.eqs, align 4, !tbaa !33
  %i.equ = tail call i32 @llvm.smax.i32(i32 %i.eqt, i32 %i.eiu)
  %i.eqv = getelementptr inbounds nuw i8, ptr %i.eqj, i64 16 ; 3 uses
  %i.eqw = load i32, ptr %i.eqv, align 4, !tbaa !33 ; 2 uses
  %i.eqx = load ptr, ptr %i.ehp, align 8, !tbaa !50 ; 4 uses
  %i.eqy = load i64, ptr %i.eqx, align 8, !tbaa !116
  %i.eqz = getelementptr inbounds nuw i8, ptr %i.eqx, i64 8 ; 3 uses
  %i.era = load i64, ptr %i.eqz, align 8, !tbaa !117
  store i32 %..i3197, ptr %i.eqj, align 4, !tbaa !33
  store i32 %i.eqo, ptr %i.eqm, align 4, !tbaa !33
  %20 = tail call i32 @llvm.smin.i32(i32 %i.eqr, i32 %i.eiv) ; 2 uses
  store i32 %20, ptr %i.eqp, align 4, !tbaa !33
  %i.erb = tail call i32 @llvm.smax.i32(i32 %i.equ, i32 %i.eiv) ; 2 uses
  store i32 %i.erb, ptr %i.eqs, align 4, !tbaa !33
  %i.erc = add nsw i32 %i.eqw, 2
  store i32 %i.erc, ptr %i.eqv, align 4, !tbaa !33
  %reass.add = shl nuw i64 %indvars.iv3712, 1
  %i.erd = add i64 %i.eqy, %reass.add             ; 2 uses
  store i64 %i.erd, ptr %i.eqx, align 8, !tbaa !116
  %.reass4154 = add i64 %i.era, %invariant.op4153 ; 2 uses
  store i64 %.reass4154, ptr %i.eqz, align 8, !tbaa !117
  %i.ere = or disjoint i64 %indvars.iv3712, 1     ; 5 uses
  %i.erf = load i32, ptr %i.p, align 4, !tbaa !52
  %i.erg = sext i32 %i.erf to i64
  %i.erh = icmp slt i64 %i.ere, %i.erg
  br i1 %i.erh, label %bb.tn, label %bb.to

bb.tn:                                            ; preds = %bb.tm
  %i.eri = getelementptr inbounds nuw [2 x i8], ptr %i.eii, i64 %i.ere
  store i16 0, ptr %i.eri, align 2, !tbaa !54
  %i.erj = getelementptr inbounds nuw [2 x i8], ptr %i.eij, i64 %i.ere
  store i16 0, ptr %i.erj, align 2, !tbaa !54
  %i.erk = trunc nuw nsw i64 %i.ere to i32        ; 2 uses
  %..i3203 = tail call i32 @llvm.smin.i32(i32 %..i3197, i32 %i.erk)
  %21 = tail call i32 @llvm.umax.i32(i32 %i.eqo, i32 %i.erk)
  %22 = tail call i32 @llvm.smin.i32(i32 %20, i32 %i.eiu)
  %i.erl = tail call i32 @llvm.smax.i32(i32 %i.erb, i32 %i.eiu)
  store i32 %..i3203, ptr %i.eqj, align 4, !tbaa !33
  store i32 %21, ptr %i.eqm, align 4, !tbaa !33
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 %i.eiv)
  store i32 %23, ptr %i.eqp, align 4, !tbaa !33
  %24 = tail call i32 @llvm.smax.i32(i32 %i.erl, i32 %i.eiv)
  store i32 %24, ptr %i.eqs, align 4, !tbaa !33
  %i.erm = add nsw i32 %i.eqw, 4
  store i32 %i.erm, ptr %i.eqv, align 4, !tbaa !33
  %reass.add4199 = shl nuw i64 %i.ere, 1
  %i.ern = add i64 %i.erd, %reass.add4199
  store i64 %i.ern, ptr %i.eqx, align 8, !tbaa !116
  %.reass4156 = add i64 %.reass4154, %invariant.op4155
  store i64 %.reass4156, ptr %i.eqz, align 8, !tbaa !117
  br label %bb.to

bb.to:                                            ; preds = %bb.tn, %bb.tl, %bb.tk, %bb.tm, %bb.tf
  %indvars.iv.next3713 = add nuw nsw i64 %indvars.iv3712, 2 ; 2 uses
  %i.ero = load i32, ptr %i.p, align 4, !tbaa !52 ; 2 uses
  %i.erp = sext i32 %i.ero to i64
  %i.erq = icmp slt i64 %indvars.iv.next3713, %i.erp
  br i1 %i.erq, label %bb.sy, label %._crit_edge3542.loopexit, !llvm.loop !324

bb.tp:                                            ; preds = %.lr.ph3551, %._crit_edge3549
  %i.err = phi i32 [ %i.dkp, %.lr.ph3551 ], [ %i.eso, %._crit_edge3549 ]
  %i.ers = phi i32 [ %i.dkr, %.lr.ph3551 ], [ %i.esp, %._crit_edge3549 ] ; 2 uses
  %indvars.iv3721 = phi i64 [ 0, %.lr.ph3551 ], [ %indvars.iv.next3722, %._crit_edge3549 ] ; 12 uses
  %i.ert = load i64, ptr %i.ehs, align 8, !tbaa !40 ; 2 uses
  %i.eru = mul i64 %i.ert, %indvars.iv3721
  %i.erv = getelementptr inbounds nuw i8, ptr %i.ehr, i64 %i.eru ; 3 uses
  %i.erw = getelementptr inbounds nuw i8, ptr %i.erv, i64 %i.ert ; 2 uses
  %i.erx = load i64, ptr %i.ehv, align 8, !tbaa !40 ; 2 uses
  %i.ery = mul i64 %i.erx, %indvars.iv3721
  %i.erz = getelementptr inbounds nuw i8, ptr %i.ehu, i64 %i.ery ; 4 uses
  %i.esa = getelementptr inbounds nuw i8, ptr %i.erz, i64 %i.erx ; 4 uses
  %i.esb = icmp sgt i32 %i.ers, 0
  br i1 %i.esb, label %.lr.ph3548, label %._crit_edge3549

.lr.ph3548:                                       ; preds = %bb.tp
  %i.esc = or disjoint i64 %indvars.iv3721, 1     ; 8 uses
  %i.esd = trunc nuw nsw i64 %indvars.iv3721 to i32 ; 2 uses
  %i.ese = trunc nuw nsw i64 %indvars.iv3721 to i32 ; 2 uses
  %i.esf = trunc nuw nsw i64 %indvars.iv3721 to i32 ; 2 uses
  %i.esg = trunc nuw nsw i64 %indvars.iv3721 to i32 ; 2 uses
  %i.esh = trunc nuw nsw i64 %i.esc to i32        ; 2 uses
  %i.esi = trunc nuw nsw i64 %i.esc to i32        ; 2 uses
  %i.esj = trunc nuw nsw i64 %i.esc to i32        ; 2 uses
  %i.esk = trunc nuw nsw i64 %i.esc to i32        ; 2 uses
  %i.esl = trunc nuw nsw i64 %indvars.iv3721 to i32 ; 2 uses
  %i.esm = trunc nuw nsw i64 %i.esc to i32        ; 2 uses
  %invariant.op41574201 = add nuw i64 %indvars.iv3721, %i.esc
  %invariant.op4161 = shl i64 %invariant.op41574201, 1
  %i.esn = insertelement <2 x i64> poison, i64 %i.esc, i64 1 ; 2 uses
  br label %bb.tq

._crit_edge3549.loopexit:                         ; preds = %bb.ug
  %.pre3732 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3549

._crit_edge3549:                                  ; preds = %._crit_edge3549.loopexit, %bb.tp
  %i.eso = phi i32 [ %.pre3732, %._crit_edge3549.loopexit ], [ %i.err, %bb.tp ] ; 2 uses
  %i.esp = phi i32 [ %i.fbc, %._crit_edge3549.loopexit ], [ %i.ers, %bb.tp ]
  %indvars.iv.next3722 = add nuw nsw i64 %indvars.iv3721, 2 ; 2 uses
  %i.esq = sext i32 %i.eso to i64
  %i.esr = icmp slt i64 %indvars.iv.next3722, %i.esq
  br i1 %i.esr, label %bb.tp, label %.loopexit, !llvm.loop !325

bb.tq:                                            ; preds = %.lr.ph3548, %bb.ug
  %indvars.iv3718 = phi i64 [ 0, %.lr.ph3548 ], [ %indvars.iv.next3719, %bb.ug ] ; 19 uses
  %i.ess = getelementptr inbounds nuw [2 x i8], ptr %i.erz, i64 %indvars.iv3718 ; 3 uses
  %i.est = load i16, ptr %i.ess, align 2, !tbaa !54 ; 2 uses
  %.not1859 = icmp eq i16 %i.est, 0
  br i1 %.not1859, label %bb.uf, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  %i.esu = zext i16 %i.est to i64
  %i.esv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.esu
  %i.esw = load i16, ptr %i.esv, align 2, !tbaa !54 ; 8 uses
  %i.esx = getelementptr inbounds nuw i8, ptr %i.erv, i64 %indvars.iv3718
  %i.esy = load i8, ptr %i.esx, align 1, !tbaa !32
  %.not1860 = icmp eq i8 %i.esy, 0
  br i1 %.not1860, label %bb.tv, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  store i16 %i.esw, ptr %i.ess, align 2, !tbaa !54
  %i.esz = load i32, ptr %i.ehw, align 4, !tbaa !96
  %i.eta = icmp slt i32 %i.esz, 2
  %i.etb = load ptr, ptr %i.ehx, align 8, !tbaa !55 ; 2 uses
  %i.etc = load i64, ptr %i.ehy, align 8
  %i.etd = zext i16 %i.esw to i64                 ; 2 uses
  %i.ete = mul i64 %i.etc, %i.etd
  %.sink.idx.i.i3207 = select i1 %i.eta, i64 0, i64 %i.ete
  %.sink.i.i3208 = getelementptr inbounds nuw i8, ptr %i.etb, i64 %.sink.idx.i.i3207 ; 6 uses
  %i.etf = load i32, ptr %.sink.i.i3208, align 4, !tbaa !33
  %i.etg = trunc nuw nsw i64 %indvars.iv3718 to i32 ; 2 uses
  %..i3209 = tail call i32 @llvm.smin.i32(i32 %i.etf, i32 %i.etg)
  store i32 %..i3209, ptr %.sink.i.i3208, align 4, !tbaa !33
  %i.eth = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 8 ; 2 uses
  %i.eti = load i32, ptr %i.eth, align 4, !tbaa !33
  %i.etj = tail call i32 @llvm.smax.i32(i32 %i.eti, i32 %i.etg)
  store i32 %i.etj, ptr %i.eth, align 4, !tbaa !33
  %i.etk = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 4 ; 2 uses
  %i.etl = load i32, ptr %i.etk, align 4, !tbaa !33
  %i.etm = tail call i32 @llvm.smin.i32(i32 %i.etl, i32 %i.esd)
  store i32 %i.etm, ptr %i.etk, align 4, !tbaa !33
  %i.etn = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 12 ; 2 uses
  %i.eto = load i32, ptr %i.etn, align 4, !tbaa !33
  %i.etp = tail call i32 @llvm.smax.i32(i32 %i.eto, i32 %i.esd)
  store i32 %i.etp, ptr %i.etn, align 4, !tbaa !33
  %i.etq = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 16 ; 2 uses
  %i.etr = load i32, ptr %i.etq, align 4, !tbaa !33
  %i.ets = add nsw i32 %i.etr, 1
  store i32 %i.ets, ptr %i.etq, align 4, !tbaa !33
  %i.ett = load ptr, ptr %i.ehz, align 8, !tbaa !50 ; 2 uses
  %i.etu = getelementptr inbounds nuw [16 x i8], ptr %i.ett, i64 %i.etd ; 3 uses
  %i.etv = load i64, ptr %i.etu, align 8, !tbaa !116
  %i.etw = add i64 %i.etv, %indvars.iv3718
  store i64 %i.etw, ptr %i.etu, align 8, !tbaa !116
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
  %i.etx = ptrtoint ptr %.sroa.03251.0 to i64
  %i.ety = sub i64 %.sroa.10.0, %i.etx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.ety) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.tv:                                            ; preds = %bb.tr
  store i16 0, ptr %i.ess, align 2, !tbaa !54
  %i.etz = load ptr, ptr %i.ehx, align 8, !tbaa !55 ; 7 uses
  %i.eua = load i32, ptr %i.etz, align 4, !tbaa !33
  %i.eub = trunc nuw nsw i64 %indvars.iv3718 to i32 ; 2 uses
  %..i3212 = tail call i32 @llvm.smin.i32(i32 %i.eua, i32 %i.eub)
  store i32 %..i3212, ptr %i.etz, align 4, !tbaa !33
  %i.euc = getelementptr inbounds nuw i8, ptr %i.etz, i64 8 ; 2 uses
  %i.eud = load i32, ptr %i.euc, align 4, !tbaa !33
  %i.eue = tail call i32 @llvm.smax.i32(i32 %i.eud, i32 %i.eub)
  store i32 %i.eue, ptr %i.euc, align 4, !tbaa !33
  %i.euf = getelementptr inbounds nuw i8, ptr %i.etz, i64 4 ; 2 uses
  %i.eug = load i32, ptr %i.euf, align 4, !tbaa !33
  %i.euh = tail call i32 @llvm.smin.i32(i32 %i.eug, i32 %i.ese)
  store i32 %i.euh, ptr %i.euf, align 4, !tbaa !33
  %i.eui = getelementptr inbounds nuw i8, ptr %i.etz, i64 12 ; 2 uses
  %i.euj = load i32, ptr %i.eui, align 4, !tbaa !33
  %i.euk = tail call i32 @llvm.smax.i32(i32 %i.euj, i32 %i.ese)
  store i32 %i.euk, ptr %i.eui, align 4, !tbaa !33
  %i.eul = getelementptr inbounds nuw i8, ptr %i.etz, i64 16 ; 2 uses
  %i.eum = load i32, ptr %i.eul, align 4, !tbaa !33
  %i.eun = add nsw i32 %i.eum, 1
  store i32 %i.eun, ptr %i.eul, align 4, !tbaa !33
  %i.euo = load ptr, ptr %i.ehz, align 8, !tbaa !50 ; 4 uses
  %i.eup = load i64, ptr %i.euo, align 8, !tbaa !116
  %i.euq = add i64 %i.eup, %indvars.iv3718
  store i64 %i.euq, ptr %i.euo, align 8, !tbaa !116
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.ts
  %.sink4192 = phi ptr [ %i.euo, %bb.tv ], [ %i.etu, %bb.ts ]
  %i.eur = phi ptr [ %i.euo, %bb.tv ], [ %i.ett, %bb.ts ] ; 11 uses
  %i.eus = phi ptr [ %i.etz, %bb.tv ], [ %i.etb, %bb.ts ] ; 21 uses
  %i.eut = getelementptr inbounds nuw i8, ptr %.sink4192, i64 8 ; 2 uses
  %i.euu = load i64, ptr %i.eut, align 8, !tbaa !117
  %i.euv = add i64 %i.euu, %indvars.iv3721
  store i64 %i.euv, ptr %i.eut, align 8, !tbaa !117
  %i.euw = or disjoint i64 %indvars.iv3718, 1     ; 12 uses
  %i.eux = getelementptr inbounds nuw i8, ptr %i.erv, i64 %i.euw
  %i.euy = load i8, ptr %i.eux, align 1, !tbaa !32
  %.not1861 = icmp eq i8 %i.euy, 0
  %i.euz = getelementptr inbounds nuw [2 x i8], ptr %i.erz, i64 %i.euw ; 2 uses
  br i1 %.not1861, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  store i16 %i.esw, ptr %i.euz, align 2, !tbaa !54
  %i.eva = load i32, ptr %i.ehw, align 4, !tbaa !96
  %i.evb = icmp slt i32 %i.eva, 2
  %i.evc = load i64, ptr %i.ehy, align 8
  %i.evd = zext i16 %i.esw to i64                 ; 2 uses
  %i.eve = mul i64 %i.evc, %i.evd
  %.sink.idx.i.i3213 = select i1 %i.evb, i64 0, i64 %i.eve
  %.sink.i.i3214 = getelementptr inbounds nuw i8, ptr %i.eus, i64 %.sink.idx.i.i3213 ; 6 uses
  %i.evf = load i32, ptr %.sink.i.i3214, align 4, !tbaa !33
  %i.evg = trunc nuw nsw i64 %i.euw to i32        ; 2 uses
  %..i3215 = tail call i32 @llvm.smin.i32(i32 %i.evf, i32 %i.evg)
  store i32 %..i3215, ptr %.sink.i.i3214, align 4, !tbaa !33
  %i.evh = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 8 ; 2 uses
  %i.evi = load i32, ptr %i.evh, align 4, !tbaa !33
  %i.evj = tail call i32 @llvm.smax.i32(i32 %i.evi, i32 %i.evg)
  store i32 %i.evj, ptr %i.evh, align 4, !tbaa !33
  %i.evk = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 4 ; 2 uses
  %i.evl = load i32, ptr %i.evk, align 4, !tbaa !33
  %i.evm = tail call i32 @llvm.smin.i32(i32 %i.evl, i32 %i.esf)
  store i32 %i.evm, ptr %i.evk, align 4, !tbaa !33
  %i.evn = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 12 ; 2 uses
  %i.evo = load i32, ptr %i.evn, align 4, !tbaa !33
  %i.evp = tail call i32 @llvm.smax.i32(i32 %i.evo, i32 %i.esf)
  store i32 %i.evp, ptr %i.evn, align 4, !tbaa !33
  %i.evq = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 16 ; 2 uses
  %i.evr = load i32, ptr %i.evq, align 4, !tbaa !33
  %i.evs = add nsw i32 %i.evr, 1
  store i32 %i.evs, ptr %i.evq, align 4, !tbaa !33
  %i.evt = getelementptr inbounds nuw [16 x i8], ptr %i.eur, i64 %i.evd ; 3 uses
  %i.evu = load i64, ptr %i.evt, align 8, !tbaa !116
  %i.evv = add i64 %i.evu, %i.euw
  store i64 %i.evv, ptr %i.evt, align 8, !tbaa !116
  br label %bb.tz

bb.ty:                                            ; preds = %bb.tw
  store i16 0, ptr %i.euz, align 2, !tbaa !54
  %i.evw = load i32, ptr %i.eus, align 4, !tbaa !33
  %i.evx = trunc nuw nsw i64 %i.euw to i32        ; 2 uses
  %..i3218 = tail call i32 @llvm.smin.i32(i32 %i.evw, i32 %i.evx)
  store i32 %..i3218, ptr %i.eus, align 4, !tbaa !33
  %i.evy = getelementptr inbounds nuw i8, ptr %i.eus, i64 8 ; 2 uses
  %i.evz = load i32, ptr %i.evy, align 4, !tbaa !33
  %i.ewa = tail call i32 @llvm.smax.i32(i32 %i.evz, i32 %i.evx)
  store i32 %i.ewa, ptr %i.evy, align 4, !tbaa !33
  %i.ewb = getelementptr inbounds nuw i8, ptr %i.eus, i64 4 ; 2 uses
  %i.ewc = load i32, ptr %i.ewb, align 4, !tbaa !33
  %i.ewd = tail call i32 @llvm.smin.i32(i32 %i.ewc, i32 %i.esg)
  store i32 %i.ewd, ptr %i.ewb, align 4, !tbaa !33
  %i.ewe = getelementptr inbounds nuw i8, ptr %i.eus, i64 12 ; 2 uses
  %i.ewf = load i32, ptr %i.ewe, align 4, !tbaa !33
  %i.ewg = tail call i32 @llvm.smax.i32(i32 %i.ewf, i32 %i.esg)
  store i32 %i.ewg, ptr %i.ewe, align 4, !tbaa !33
  %i.ewh = getelementptr inbounds nuw i8, ptr %i.eus, i64 16 ; 2 uses
  %i.ewi = load i32, ptr %i.ewh, align 4, !tbaa !33
  %i.ewj = add nsw i32 %i.ewi, 1
  store i32 %i.ewj, ptr %i.ewh, align 4, !tbaa !33
  %i.ewk = load i64, ptr %i.eur, align 8, !tbaa !116
  %i.ewl = add i64 %i.ewk, %i.euw
  store i64 %i.ewl, ptr %i.eur, align 8, !tbaa !116
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.tx
  %.sink4195 = phi ptr [ %i.eur, %bb.ty ], [ %i.evt, %bb.tx ]
  %i.ewm = getelementptr inbounds nuw i8, ptr %.sink4195, i64 8 ; 2 uses
  %i.ewn = load i64, ptr %i.ewm, align 8, !tbaa !117
  %i.ewo = add i64 %i.ewn, %indvars.iv3721
  store i64 %i.ewo, ptr %i.ewm, align 8, !tbaa !117
  %i.ewp = getelementptr inbounds nuw i8, ptr %i.erw, i64 %indvars.iv3718
  %i.ewq = load i8, ptr %i.ewp, align 1, !tbaa !32
  %.not1862 = icmp eq i8 %i.ewq, 0
  %i.ewr = getelementptr inbounds nuw [2 x i8], ptr %i.esa, i64 %indvars.iv3718 ; 2 uses
  br i1 %.not1862, label %bb.ub, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  store i16 %i.esw, ptr %i.ewr, align 2, !tbaa !54
  %i.ews = load i32, ptr %i.ehw, align 4, !tbaa !96
  %i.ewt = icmp slt i32 %i.ews, 2
  %i.ewu = load i64, ptr %i.ehy, align 8
  %i.ewv = zext i16 %i.esw to i64                 ; 2 uses
  %i.eww = mul i64 %i.ewu, %i.ewv
  %.sink.idx.i.i3219 = select i1 %i.ewt, i64 0, i64 %i.eww
  %.sink.i.i3220 = getelementptr inbounds nuw i8, ptr %i.eus, i64 %.sink.idx.i.i3219 ; 6 uses
  %i.ewx = load i32, ptr %.sink.i.i3220, align 4, !tbaa !33
  %i.ewy = trunc nuw nsw i64 %indvars.iv3718 to i32 ; 2 uses
  %..i3221 = tail call i32 @llvm.smin.i32(i32 %i.ewx, i32 %i.ewy)
  store i32 %..i3221, ptr %.sink.i.i3220, align 4, !tbaa !33
  %i.ewz = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 8 ; 2 uses
  %i.exa = load i32, ptr %i.ewz, align 4, !tbaa !33
  %i.exb = tail call i32 @llvm.smax.i32(i32 %i.exa, i32 %i.ewy)
  store i32 %i.exb, ptr %i.ewz, align 4, !tbaa !33
  %i.exc = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 4 ; 2 uses
  %i.exd = load i32, ptr %i.exc, align 4, !tbaa !33
  %i.exe = tail call i32 @llvm.smin.i32(i32 %i.exd, i32 %i.esh)
  store i32 %i.exe, ptr %i.exc, align 4, !tbaa !33
  %i.exf = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 12 ; 2 uses
  %i.exg = load i32, ptr %i.exf, align 4, !tbaa !33
  %i.exh = tail call i32 @llvm.smax.i32(i32 %i.exg, i32 %i.esh)
  store i32 %i.exh, ptr %i.exf, align 4, !tbaa !33
  %i.exi = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 16 ; 2 uses
  %i.exj = load i32, ptr %i.exi, align 4, !tbaa !33
  %i.exk = add nsw i32 %i.exj, 1
  store i32 %i.exk, ptr %i.exi, align 4, !tbaa !33
  %i.exl = getelementptr inbounds nuw [16 x i8], ptr %i.eur, i64 %i.ewv ; 3 uses
  %i.exm = load i64, ptr %i.exl, align 8, !tbaa !116
  %i.exn = add i64 %i.exm, %indvars.iv3718
  store i64 %i.exn, ptr %i.exl, align 8, !tbaa !116
  br label %bb.uc

bb.ub:                                            ; preds = %bb.tz
  store i16 0, ptr %i.ewr, align 2, !tbaa !54
  %i.exo = load i32, ptr %i.eus, align 4, !tbaa !33
  %i.exp = trunc nuw nsw i64 %indvars.iv3718 to i32 ; 2 uses
  %..i3224 = tail call i32 @llvm.smin.i32(i32 %i.exo, i32 %i.exp)
  store i32 %..i3224, ptr %i.eus, align 4, !tbaa !33
  %i.exq = getelementptr inbounds nuw i8, ptr %i.eus, i64 8 ; 2 uses
  %i.exr = load i32, ptr %i.exq, align 4, !tbaa !33
  %i.exs = tail call i32 @llvm.smax.i32(i32 %i.exr, i32 %i.exp)
  store i32 %i.exs, ptr %i.exq, align 4, !tbaa !33
  %i.ext = getelementptr inbounds nuw i8, ptr %i.eus, i64 4 ; 2 uses
  %i.exu = load i32, ptr %i.ext, align 4, !tbaa !33
  %i.exv = tail call i32 @llvm.smin.i32(i32 %i.exu, i32 %i.esi)
  store i32 %i.exv, ptr %i.ext, align 4, !tbaa !33
  %i.exw = getelementptr inbounds nuw i8, ptr %i.eus, i64 12 ; 2 uses
  %i.exx = load i32, ptr %i.exw, align 4, !tbaa !33
  %i.exy = tail call i32 @llvm.smax.i32(i32 %i.exx, i32 %i.esi)
  store i32 %i.exy, ptr %i.exw, align 4, !tbaa !33
  %i.exz = getelementptr inbounds nuw i8, ptr %i.eus, i64 16 ; 2 uses
  %i.eya = load i32, ptr %i.exz, align 4, !tbaa !33
  %i.eyb = add nsw i32 %i.eya, 1
  store i32 %i.eyb, ptr %i.exz, align 4, !tbaa !33
  %i.eyc = load i64, ptr %i.eur, align 8, !tbaa !116
  %i.eyd = add i64 %i.eyc, %indvars.iv3718
  store i64 %i.eyd, ptr %i.eur, align 8, !tbaa !116
  br label %bb.uc

bb.uc:                                            ; preds = %bb.ub, %bb.ua
  %.sink4198 = phi ptr [ %i.eur, %bb.ub ], [ %i.exl, %bb.ua ]
  %i.eye = getelementptr inbounds nuw i8, ptr %.sink4198, i64 8 ; 2 uses
  %i.eyf = load i64, ptr %i.eye, align 8, !tbaa !117
  %i.eyg = add i64 %i.eyf, %i.esc
  store i64 %i.eyg, ptr %i.eye, align 8, !tbaa !117
  %i.eyh = getelementptr inbounds nuw i8, ptr %i.erw, i64 %i.euw
  %i.eyi = load i8, ptr %i.eyh, align 1, !tbaa !32
  %.not1863 = icmp eq i8 %i.eyi, 0
  %i.eyj = getelementptr inbounds nuw [2 x i8], ptr %i.esa, i64 %i.euw ; 2 uses
  br i1 %.not1863, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  store i16 %i.esw, ptr %i.eyj, align 2, !tbaa !54
  %i.eyk = load i32, ptr %i.ehw, align 4, !tbaa !96
  %i.eyl = icmp slt i32 %i.eyk, 2
  %i.eym = load i64, ptr %i.ehy, align 8
  %i.eyn = zext i16 %i.esw to i64                 ; 2 uses
  %i.eyo = mul i64 %i.eym, %i.eyn
  %.sink.idx.i.i3225 = select i1 %i.eyl, i64 0, i64 %i.eyo
  %.sink.i.i3226 = getelementptr inbounds nuw i8, ptr %i.eus, i64 %.sink.idx.i.i3225 ; 6 uses
  %i.eyp = load i32, ptr %.sink.i.i3226, align 4, !tbaa !33
  %i.eyq = trunc nuw nsw i64 %i.euw to i32        ; 2 uses
  %..i3227 = tail call i32 @llvm.smin.i32(i32 %i.eyp, i32 %i.eyq)
  store i32 %..i3227, ptr %.sink.i.i3226, align 4, !tbaa !33
  %i.eyr = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 8 ; 2 uses
  %i.eys = load i32, ptr %i.eyr, align 4, !tbaa !33
  %i.eyt = tail call i32 @llvm.smax.i32(i32 %i.eys, i32 %i.eyq)
  store i32 %i.eyt, ptr %i.eyr, align 4, !tbaa !33
  %i.eyu = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 4 ; 2 uses
  %i.eyv = load i32, ptr %i.eyu, align 4, !tbaa !33
  %i.eyw = tail call i32 @llvm.smin.i32(i32 %i.eyv, i32 %i.esj)
  store i32 %i.eyw, ptr %i.eyu, align 4, !tbaa !33
  %i.eyx = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 12 ; 2 uses
  %i.eyy = load i32, ptr %i.eyx, align 4, !tbaa !33
  %i.eyz = tail call i32 @llvm.smax.i32(i32 %i.eyy, i32 %i.esj)
  store i32 %i.eyz, ptr %i.eyx, align 4, !tbaa !33
  %i.eza = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 16 ; 2 uses
  %i.ezb = load i32, ptr %i.eza, align 4, !tbaa !33
  %i.ezc = add nsw i32 %i.ezb, 1
  store i32 %i.ezc, ptr %i.eza, align 4, !tbaa !33
  %i.ezd = getelementptr inbounds nuw [16 x i8], ptr %i.eur, i64 %i.eyn ; 2 uses
  %i.eze = load <2 x i64>, ptr %i.ezd, align 8, !tbaa !40
  %i.ezf = insertelement <2 x i64> %i.esn, i64 %i.euw, i64 0
  %i.ezg = add <2 x i64> %i.eze, %i.ezf
  store <2 x i64> %i.ezg, ptr %i.ezd, align 8, !tbaa !40
  br label %bb.ug

bb.ue:                                            ; preds = %bb.uc
  store i16 0, ptr %i.eyj, align 2, !tbaa !54
  %i.ezh = load i32, ptr %i.eus, align 4, !tbaa !33
  %i.ezi = trunc nuw nsw i64 %i.euw to i32        ; 2 uses
  %..i3230 = tail call i32 @llvm.smin.i32(i32 %i.ezh, i32 %i.ezi)
  store i32 %..i3230, ptr %i.eus, align 4, !tbaa !33
  %i.ezj = getelementptr inbounds nuw i8, ptr %i.eus, i64 8 ; 2 uses
  %i.ezk = load i32, ptr %i.ezj, align 4, !tbaa !33
  %i.ezl = tail call i32 @llvm.smax.i32(i32 %i.ezk, i32 %i.ezi)
  store i32 %i.ezl, ptr %i.ezj, align 4, !tbaa !33
  %i.ezm = getelementptr inbounds nuw i8, ptr %i.eus, i64 4 ; 2 uses
  %i.ezn = load i32, ptr %i.ezm, align 4, !tbaa !33
  %i.ezo = tail call i32 @llvm.smin.i32(i32 %i.ezn, i32 %i.esk)
  store i32 %i.ezo, ptr %i.ezm, align 4, !tbaa !33
  %i.ezp = getelementptr inbounds nuw i8, ptr %i.eus, i64 12 ; 2 uses
  %i.ezq = load i32, ptr %i.ezp, align 4, !tbaa !33
  %i.ezr = tail call i32 @llvm.smax.i32(i32 %i.ezq, i32 %i.esk)
  store i32 %i.ezr, ptr %i.ezp, align 4, !tbaa !33
  %i.ezs = getelementptr inbounds nuw i8, ptr %i.eus, i64 16 ; 2 uses
  %i.ezt = load i32, ptr %i.ezs, align 4, !tbaa !33
  %i.ezu = add nsw i32 %i.ezt, 1
  store i32 %i.ezu, ptr %i.ezs, align 4, !tbaa !33
  %i.ezv = load <2 x i64>, ptr %i.eur, align 8, !tbaa !40
  %i.ezw = insertelement <2 x i64> %i.esn, i64 %i.euw, i64 0
  %i.ezx = add <2 x i64> %i.ezv, %i.ezw
  store <2 x i64> %i.ezx, ptr %i.eur, align 8, !tbaa !40
  br label %bb.ug

bb.uf:                                            ; preds = %bb.tq
  %i.ezy = or disjoint i64 %indvars.iv3718, 1     ; 5 uses
  %i.ezz = getelementptr inbounds nuw [2 x i8], ptr %i.erz, i64 %i.ezy
  store i16 0, ptr %i.ezz, align 2, !tbaa !54
  %i.faa = getelementptr inbounds nuw [2 x i8], ptr %i.esa, i64 %indvars.iv3718
  store i16 0, ptr %i.faa, align 2, !tbaa !54
  %i.fab = getelementptr inbounds nuw [2 x i8], ptr %i.esa, i64 %i.ezy
  store i16 0, ptr %i.fab, align 2, !tbaa !54
  %i.fac = load ptr, ptr %i.ehx, align 8, !tbaa !55 ; 6 uses
  %i.fad = load i32, ptr %i.fac, align 4, !tbaa !33
  %i.fae = trunc nuw nsw i64 %indvars.iv3718 to i32 ; 4 uses
  %..i3233 = tail call i32 @llvm.smin.i32(i32 %i.fad, i32 %i.fae)
  %i.faf = getelementptr inbounds nuw i8, ptr %i.fac, i64 8 ; 2 uses
  %i.fag = load i32, ptr %i.faf, align 4, !tbaa !33
  %i.fah = tail call i32 @llvm.smax.i32(i32 %i.fag, i32 %i.fae)
  %i.fai = getelementptr inbounds nuw i8, ptr %i.fac, i64 4 ; 2 uses
  %i.faj = load i32, ptr %i.fai, align 4, !tbaa !33
  %i.fak = tail call i32 @llvm.smin.i32(i32 %i.faj, i32 %i.esl)
  %i.fal = getelementptr inbounds nuw i8, ptr %i.fac, i64 12 ; 2 uses
  %i.fam = load i32, ptr %i.fal, align 4, !tbaa !33
  %i.fan = tail call i32 @llvm.smax.i32(i32 %i.fam, i32 %i.esl)
  %i.fao = getelementptr inbounds nuw i8, ptr %i.fac, i64 16 ; 2 uses
  %i.fap = load i32, ptr %i.fao, align 4, !tbaa !33
  %i.faq = load ptr, ptr %i.ehz, align 8, !tbaa !50 ; 3 uses
  %i.far = load i64, ptr %i.faq, align 8, !tbaa !116
  %i.fas = add i64 %i.far, %indvars.iv3718
  %i.fat = getelementptr inbounds nuw i8, ptr %i.faq, i64 8 ; 2 uses
  %i.fau = load i64, ptr %i.fat, align 8, !tbaa !117
  %i.fav = trunc nuw nsw i64 %i.ezy to i32        ; 4 uses
  %..i3236 = tail call i32 @llvm.smin.i32(i32 %..i3233, i32 %i.fav)
  %i.faw = tail call i32 @llvm.umax.i32(i32 %i.fah, i32 %i.fav)
  %i.fax = add i64 %i.fas, %i.ezy
  %..i3239 = tail call i32 @llvm.smin.i32(i32 %..i3236, i32 %i.fae)
  %25 = tail call i32 @llvm.umax.i32(i32 %i.faw, i32 %i.fae)
  %26 = tail call i32 @llvm.smin.i32(i32 %i.fak, i32 %i.esm)
  %i.fay = tail call i32 @llvm.smax.i32(i32 %i.fan, i32 %i.esm)
  %i.faz = add i64 %i.fax, %indvars.iv3718
  %..i3242 = tail call i32 @llvm.smin.i32(i32 %..i3239, i32 %i.fav)
  store i32 %..i3242, ptr %i.fac, align 4, !tbaa !33
  %27 = tail call i32 @llvm.umax.i32(i32 %25, i32 %i.fav)
  store i32 %27, ptr %i.faf, align 4, !tbaa !33
  store i32 %26, ptr %i.fai, align 4, !tbaa !33
  store i32 %i.fay, ptr %i.fal, align 4, !tbaa !33
  %i.fba = add nsw i32 %i.fap, 4
  store i32 %i.fba, ptr %i.fao, align 4, !tbaa !33
  %i.fbb = add i64 %i.faz, %i.ezy
  store i64 %i.fbb, ptr %i.faq, align 8, !tbaa !116
  %.reass4162 = add i64 %i.fau, %invariant.op4161
  store i64 %.reass4162, ptr %i.fat, align 8, !tbaa !117
  br label %bb.ug

bb.ug:                                            ; preds = %bb.uf, %bb.ue, %bb.ud
  %indvars.iv.next3719 = add nuw nsw i64 %indvars.iv3718, 2 ; 2 uses
  %i.fbc = load i32, ptr %i.p, align 4, !tbaa !52 ; 2 uses
  %i.fbd = sext i32 %i.fbc to i64
  %i.fbe = icmp slt i64 %indvars.iv.next3719, %i.fbd
  br i1 %i.fbe, label %bb.tq, label %._crit_edge3549.loopexit, !llvm.loop !326

.loopexit:                                        ; preds = %._crit_edge3529, %._crit_edge3536, %._crit_edge3542, %._crit_edge3549, %.preheader3288, %.preheader3286, %.preheader3284, %.preheader
  %i.fbf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fbg = load i32, ptr %i.fbf, align 8, !tbaa !95
  %i.fbh = icmp sgt i32 %i.fbg, 0
  br i1 %i.fbh, label %.lr.ph.i3243, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit

.lr.ph.i3243:                                     ; preds = %.loopexit
  %i.fbi = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fbj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fbk = load ptr, ptr %i.fbj, align 8, !tbaa !55
  %i.fbl = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.fbm = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.fbn = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.fbo = load ptr, ptr %i.fbn, align 8, !tbaa !55
  %i.fbp = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.fbq = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.fbr = load ptr, ptr %i.fbq, align 8
  br label %bb.uh

bb.uh:                                            ; preds = %bb.uk, %.lr.ph.i3243
  %indvars.iv.i3244 = phi i64 [ 0, %.lr.ph.i3243 ], [ %indvars.iv.next.i3248, %bb.uk ] ; 4 uses
  %i.fbs = load i32, ptr %i.fbi, align 4, !tbaa !96
  %i.fbt = icmp slt i32 %i.fbs, 2
  %i.fbu = load i64, ptr %i.fbl, align 8
  %i.fbv = mul i64 %i.fbu, %indvars.iv.i3244
  %.sink.idx.i.i3245 = select i1 %i.fbt, i64 0, i64 %i.fbv
  %.sink.i.i3246 = getelementptr inbounds nuw i8, ptr %i.fbk, i64 %.sink.idx.i.i3245 ; 6 uses
  %i.fbw = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 16
  %i.fbx = load i32, ptr %i.fbw, align 4, !tbaa !33 ; 2 uses
  %i.fby = load i32, ptr %i.fbm, align 4, !tbaa !96
  %i.fbz = icmp slt i32 %i.fby, 2
  %i.fca = load i64, ptr %i.fbp, align 8
  %i.fcb = mul i64 %i.fca, %indvars.iv.i3244
  %.sink.idx.i25.i = select i1 %i.fbz, i64 0, i64 %i.fcb
  %.sink.i26.i = getelementptr inbounds nuw i8, ptr %i.fbo, i64 %.sink.idx.i25.i
  %.not.i3247 = icmp eq i32 %i.fbx, 0
  br i1 %.not.i3247, label %bb.uj, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.fcc = uitofp i32 %i.fbx to double
  %i.fcd = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8 ; 2 uses
  %i.fce = load <2 x i32>, ptr %i.fcd, align 4, !tbaa !33
  %i.fcf = load <2 x i32>, ptr %.sink.i.i3246, align 4, !tbaa !33
  %i.fcg = add <2 x i32> %i.fce, splat (i32 1)
  %i.fch = sub <2 x i32> %i.fcg, %i.fcf
  store <2 x i32> %i.fch, ptr %i.fcd, align 4, !tbaa !33
  %i.fci = getelementptr inbounds nuw [16 x i8], ptr %i.fbr, i64 %indvars.iv.i3244
  %i.fcj = load <2 x i64>, ptr %i.fci, align 8, !tbaa !40
  %i.fck = uitofp <2 x i64> %i.fcj to <2 x double>
  %i.fcl = insertelement <2 x double> poison, double %i.fcc, i64 0
  %i.fcm = shufflevector <2 x double> %i.fcl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fcn = fdiv <2 x double> %i.fck, %i.fcm
  br label %bb.uk

bb.uj:                                            ; preds = %bb.uh
  %i.fco = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8
  store i32 0, ptr %i.fco, align 4, !tbaa !33
  %i.fcp = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 12
  store i32 0, ptr %i.fcp, align 4, !tbaa !33
  store i32 -1, ptr %.sink.i.i3246, align 4, !tbaa !33
  br label %bb.uk

bb.uk:                                            ; preds = %bb.uj, %bb.ui
  %i.fcq = phi <2 x double> [ splat (double +qnan), %bb.uj ], [ %i.fcn, %bb.ui ]
  store <2 x double> %i.fcq, ptr %.sink.i26.i, align 8, !tbaa !98
  %indvars.iv.next.i3248 = add nuw nsw i64 %indvars.iv.i3244, 1 ; 2 uses
  %i.fcr = load i32, ptr %i.fbf, align 8, !tbaa !95
  %i.fcs = sext i32 %i.fcr to i64
  %i.fct = icmp slt i64 %indvars.iv.next.i3248, %i.fcs
  br i1 %i.fct, label %bb.uh, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, !llvm.loop !7

_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit: ; preds = %bb.uk, %.loopexit
  %.not.i.i.i3249 = icmp eq ptr %.sroa.03251.0, null
  br i1 %.not.i.i.i3249, label %_ZNSt6vectorItSaItEED2Ev.exit3250, label %bb.ul

bb.ul:                                            ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit
  %i.fcu = ptrtoint ptr %.sroa.03251.0 to i64
  %i.fcv = sub i64 %.sroa.10.0, %i.fcu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.fcv) #17
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
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39   ; 4 uses
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
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52   ; 3 uses
  %i.o = load <2 x i32>, ptr %i.a, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !52
  %i.r = icmp eq i32 %i.n, %i.q
  br i1 %i.r, label %bb.m, label %bb.h

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
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %7, align 8, !tbaa !31     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2074: ; preds = %bb.l
  %i.x = load i64, ptr %i.v, align 8, !tbaa !32
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076

end_hunk_1
begin_hunk_2_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  store i32 %i.dsb, ptr %i.drz, align 4, !tbaa !33
  %i.dsc = load i64, ptr %i.dol, align 8, !tbaa !116
  %i.dsd = add i64 %i.dsc, %indvars.iv3702
  store i64 %i.dsd, ptr %i.dol, align 8, !tbaa !116
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.rp
  %.sink4173 = phi ptr [ %i.dol, %bb.rq ], [ %i.drl, %bb.rp ]
  %i.dse = getelementptr inbounds nuw i8, ptr %.sink4173, i64 8 ; 2 uses
  %i.dsf = load i64, ptr %i.dse, align 8, !tbaa !117
  %i.dsg = add i64 %i.dsf, %i.dlu
  store i64 %i.dsg, ptr %i.dse, align 8, !tbaa !117
  %i.dsh = getelementptr inbounds nuw i8, ptr %i.dlo, i64 %i.doq
  %i.dsi = load i8, ptr %i.dsh, align 1, !tbaa !32
  %.not1880 = icmp eq i8 %i.dsi, 0
  %i.dsj = getelementptr inbounds nuw [4 x i8], ptr %i.dls, i64 %i.doq ; 2 uses
  br i1 %.not1880, label %bb.rt, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  store i32 %i.dms, ptr %i.dsj, align 4, !tbaa !33
  %i.dsk = load i32, ptr %i.dkz, align 4, !tbaa !96
  %i.dsl = icmp slt i32 %i.dsk, 2
  %i.dsm = load i64, ptr %i.dla, align 8
  %i.dsn = sext i32 %i.dms to i64                 ; 2 uses
  %i.dso = mul i64 %i.dsm, %i.dsn
  %.sink.idx.i.i3108 = select i1 %i.dsl, i64 0, i64 %i.dso
  %.sink.i.i3109 = getelementptr inbounds nuw i8, ptr %i.dom, i64 %.sink.idx.i.i3108 ; 6 uses
  %i.dsp = load i32, ptr %.sink.i.i3109, align 4, !tbaa !33
  %i.dsq = trunc nuw nsw i64 %i.doq to i32        ; 2 uses
  %..i3110 = tail call i32 @llvm.smin.i32(i32 %i.dsp, i32 %i.dsq)
  store i32 %..i3110, ptr %.sink.i.i3109, align 4, !tbaa !33
  %i.dsr = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 8 ; 2 uses
  %i.dss = load i32, ptr %i.dsr, align 4, !tbaa !33
  %i.dst = tail call i32 @llvm.smax.i32(i32 %i.dss, i32 %i.dsq)
  store i32 %i.dst, ptr %i.dsr, align 4, !tbaa !33
  %i.dsu = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 4 ; 2 uses
  %i.dsv = load i32, ptr %i.dsu, align 4, !tbaa !33
  %i.dsw = tail call i32 @llvm.smin.i32(i32 %i.dsv, i32 %i.dmg)
  store i32 %i.dsw, ptr %i.dsu, align 4, !tbaa !33
  %i.dsx = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 12 ; 2 uses
  %i.dsy = load i32, ptr %i.dsx, align 4, !tbaa !33
  %i.dsz = tail call i32 @llvm.smax.i32(i32 %i.dsy, i32 %i.dmg)
  store i32 %i.dsz, ptr %i.dsx, align 4, !tbaa !33
  %i.dta = getelementptr inbounds nuw i8, ptr %.sink.i.i3109, i64 16 ; 2 uses
  %i.dtb = load i32, ptr %i.dta, align 4, !tbaa !33
  %i.dtc = add nsw i32 %i.dtb, 1
  store i32 %i.dtc, ptr %i.dta, align 4, !tbaa !33
  %i.dtd = getelementptr inbounds nuw [16 x i8], ptr %i.dol, i64 %i.dsn ; 2 uses
  %i.dte = load <2 x i64>, ptr %i.dtd, align 8, !tbaa !40
  %i.dtf = insertelement <2 x i64> %i.dmi, i64 %i.doq, i64 0
  %i.dtg = add <2 x i64> %i.dte, %i.dtf
  store <2 x i64> %i.dtg, ptr %i.dtd, align 8, !tbaa !40
  br label %bb.sd

bb.rt:                                            ; preds = %bb.rr
  store i32 0, ptr %i.dsj, align 4, !tbaa !33
  %i.dth = load i32, ptr %i.dom, align 4, !tbaa !33
  %i.dti = trunc nuw nsw i64 %i.doq to i32        ; 2 uses
  %..i3113 = tail call i32 @llvm.smin.i32(i32 %i.dth, i32 %i.dti)
  store i32 %..i3113, ptr %i.dom, align 4, !tbaa !33
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.dom, i64 8 ; 2 uses
  %i.dtk = load i32, ptr %i.dtj, align 4, !tbaa !33
  %i.dtl = tail call i32 @llvm.smax.i32(i32 %i.dtk, i32 %i.dti)
  store i32 %i.dtl, ptr %i.dtj, align 4, !tbaa !33
  %i.dtm = getelementptr inbounds nuw i8, ptr %i.dom, i64 4 ; 2 uses
  %i.dtn = load i32, ptr %i.dtm, align 4, !tbaa !33
  %i.dto = tail call i32 @llvm.smin.i32(i32 %i.dtn, i32 %i.dmh)
  store i32 %i.dto, ptr %i.dtm, align 4, !tbaa !33
  %i.dtp = getelementptr inbounds nuw i8, ptr %i.dom, i64 12 ; 2 uses
  %i.dtq = load i32, ptr %i.dtp, align 4, !tbaa !33
  %i.dtr = tail call i32 @llvm.smax.i32(i32 %i.dtq, i32 %i.dmh)
  store i32 %i.dtr, ptr %i.dtp, align 4, !tbaa !33
  %i.dts = getelementptr inbounds nuw i8, ptr %i.dom, i64 16 ; 2 uses
  %i.dtt = load i32, ptr %i.dts, align 4, !tbaa !33
  %i.dtu = add nsw i32 %i.dtt, 1
  store i32 %i.dtu, ptr %i.dts, align 4, !tbaa !33
  %i.dtv = load <2 x i64>, ptr %i.dol, align 8, !tbaa !40
  %i.dtw = insertelement <2 x i64> %i.dmi, i64 %i.doq, i64 0
  %i.dtx = add <2 x i64> %i.dtv, %i.dtw
  store <2 x i64> %i.dtx, ptr %i.dol, align 8, !tbaa !40
  br label %bb.sd

bb.ru:                                            ; preds = %bb.rj
  %i.dty = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dtz = sext i32 %i.dty to i64
  %i.dua = icmp slt i64 %i.dlu, %i.dtz
  br i1 %i.dua, label %bb.rv, label %bb.sd

bb.rv:                                            ; preds = %bb.ru
  %i.dub = getelementptr inbounds nuw i8, ptr %i.dlo, i64 %indvars.iv3702
  %i.duc = load i8, ptr %i.dub, align 1, !tbaa !32
  %.not1877 = icmp eq i8 %i.duc, 0
  %i.dud = getelementptr inbounds nuw [4 x i8], ptr %i.dls, i64 %indvars.iv3702 ; 2 uses
  br i1 %.not1877, label %bb.rx, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  store i32 %i.dms, ptr %i.dud, align 4, !tbaa !33
  %i.due = load i32, ptr %i.dkz, align 4, !tbaa !96
  %i.duf = icmp slt i32 %i.due, 2
  %i.dug = load i64, ptr %i.dla, align 8
  %i.duh = sext i32 %i.dms to i64                 ; 2 uses
  %i.dui = mul i64 %i.dug, %i.duh
  %.sink.idx.i.i3114 = select i1 %i.duf, i64 0, i64 %i.dui
  %.sink.i.i3115 = getelementptr inbounds nuw i8, ptr %i.dom, i64 %.sink.idx.i.i3114 ; 6 uses
  %i.duj = load i32, ptr %.sink.i.i3115, align 4, !tbaa !33
  %i.duk = trunc nuw nsw i64 %indvars.iv3702 to i32 ; 2 uses
  %..i3116 = tail call i32 @llvm.smin.i32(i32 %i.duj, i32 %i.duk)
  store i32 %..i3116, ptr %.sink.i.i3115, align 4, !tbaa !33
  %i.dul = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 8 ; 2 uses
  %i.dum = load i32, ptr %i.dul, align 4, !tbaa !33
  %i.dun = tail call i32 @llvm.smax.i32(i32 %i.dum, i32 %i.duk)
  store i32 %i.dun, ptr %i.dul, align 4, !tbaa !33
  %i.duo = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 4 ; 2 uses
  %i.dup = load i32, ptr %i.duo, align 4, !tbaa !33
  %i.duq = tail call i32 @llvm.smin.i32(i32 %i.dup, i32 %i.dma)
  store i32 %i.duq, ptr %i.duo, align 4, !tbaa !33
  %i.dur = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 12 ; 2 uses
  %i.dus = load i32, ptr %i.dur, align 4, !tbaa !33
  %i.dut = tail call i32 @llvm.smax.i32(i32 %i.dus, i32 %i.dma)
  store i32 %i.dut, ptr %i.dur, align 4, !tbaa !33
  %i.duu = getelementptr inbounds nuw i8, ptr %.sink.i.i3115, i64 16 ; 2 uses
  %i.duv = load i32, ptr %i.duu, align 4, !tbaa !33
  %i.duw = add nsw i32 %i.duv, 1
  store i32 %i.duw, ptr %i.duu, align 4, !tbaa !33
  %i.dux = getelementptr inbounds nuw [16 x i8], ptr %i.dol, i64 %i.duh ; 2 uses
  %i.duy = load <2 x i64>, ptr %i.dux, align 8, !tbaa !40
  %i.duz = insertelement <2 x i64> %i.dmi, i64 %indvars.iv3702, i64 0
  %i.dva = add <2 x i64> %i.duy, %i.duz
  store <2 x i64> %i.dva, ptr %i.dux, align 8, !tbaa !40
  br label %bb.sd

bb.rx:                                            ; preds = %bb.rv
  store i32 0, ptr %i.dud, align 4, !tbaa !33
  %i.dvb = load i32, ptr %i.dom, align 4, !tbaa !33
  %i.dvc = trunc nuw nsw i64 %indvars.iv3702 to i32 ; 2 uses
  %..i3119 = tail call i32 @llvm.smin.i32(i32 %i.dvb, i32 %i.dvc)
  store i32 %..i3119, ptr %i.dom, align 4, !tbaa !33
  %i.dvd = getelementptr inbounds nuw i8, ptr %i.dom, i64 8 ; 2 uses
  %i.dve = load i32, ptr %i.dvd, align 4, !tbaa !33
  %i.dvf = tail call i32 @llvm.smax.i32(i32 %i.dve, i32 %i.dvc)
  store i32 %i.dvf, ptr %i.dvd, align 4, !tbaa !33
  %i.dvg = getelementptr inbounds nuw i8, ptr %i.dom, i64 4 ; 2 uses
  %i.dvh = load i32, ptr %i.dvg, align 4, !tbaa !33
  %i.dvi = tail call i32 @llvm.smin.i32(i32 %i.dvh, i32 %i.dmb)
  store i32 %i.dvi, ptr %i.dvg, align 4, !tbaa !33
  %i.dvj = getelementptr inbounds nuw i8, ptr %i.dom, i64 12 ; 2 uses
  %i.dvk = load i32, ptr %i.dvj, align 4, !tbaa !33
  %i.dvl = tail call i32 @llvm.smax.i32(i32 %i.dvk, i32 %i.dmb)
  store i32 %i.dvl, ptr %i.dvj, align 4, !tbaa !33
  %i.dvm = getelementptr inbounds nuw i8, ptr %i.dom, i64 16 ; 2 uses
  %i.dvn = load i32, ptr %i.dvm, align 4, !tbaa !33
  %i.dvo = add nsw i32 %i.dvn, 1
  store i32 %i.dvo, ptr %i.dvm, align 4, !tbaa !33
  %i.dvp = load <2 x i64>, ptr %i.dol, align 8, !tbaa !40
  %i.dvq = insertelement <2 x i64> %i.dmi, i64 %indvars.iv3702, i64 0
  %i.dvr = add <2 x i64> %i.dvp, %i.dvq
  store <2 x i64> %i.dvr, ptr %i.dol, align 8, !tbaa !40
  br label %bb.sd

bb.ry:                                            ; preds = %bb.rf
  store i32 0, ptr %i.dmn, align 4, !tbaa !33
  %i.dvs = load ptr, ptr %i.dkx, align 8, !tbaa !55 ; 12 uses
  %i.dvt = load i32, ptr %i.dvs, align 4, !tbaa !33
  %i.dvu = trunc nuw nsw i64 %indvars.iv3702 to i32 ; 6 uses
  %..i3122 = tail call i32 @llvm.smin.i32(i32 %i.dvt, i32 %i.dvu)
  store i32 %..i3122, ptr %i.dvs, align 4, !tbaa !33
  %i.dvv = getelementptr inbounds nuw i8, ptr %i.dvs, i64 8 ; 8 uses
  %i.dvw = load i32, ptr %i.dvv, align 4, !tbaa !33
  %i.dvx = tail call i32 @llvm.smax.i32(i32 %i.dvw, i32 %i.dvu)
  store i32 %i.dvx, ptr %i.dvv, align 4, !tbaa !33
  %i.dvy = getelementptr inbounds nuw i8, ptr %i.dvs, i64 4 ; 8 uses
  %i.dvz = load i32, ptr %i.dvy, align 4, !tbaa !33
  %i.dwa = tail call i32 @llvm.smin.i32(i32 %i.dvz, i32 %i.dlv)
  store i32 %i.dwa, ptr %i.dvy, align 4, !tbaa !33
  %i.dwb = getelementptr inbounds nuw i8, ptr %i.dvs, i64 12 ; 8 uses
  %i.dwc = load i32, ptr %i.dwb, align 4, !tbaa !33
  %i.dwd = tail call i32 @llvm.smax.i32(i32 %i.dwc, i32 %i.dlv)
  store i32 %i.dwd, ptr %i.dwb, align 4, !tbaa !33
  %i.dwe = getelementptr inbounds nuw i8, ptr %i.dvs, i64 16 ; 8 uses
  %i.dwf = load i32, ptr %i.dwe, align 4, !tbaa !33
  %i.dwg = add nsw i32 %i.dwf, 1
  store i32 %i.dwg, ptr %i.dwe, align 4, !tbaa !33
  %i.dwh = load ptr, ptr %i.dky, align 8, !tbaa !50 ; 6 uses
  %i.dwi = load i64, ptr %i.dwh, align 8, !tbaa !116
  %i.dwj = add i64 %i.dwi, %indvars.iv3702        ; 3 uses
  store i64 %i.dwj, ptr %i.dwh, align 8, !tbaa !116
  %i.dwk = getelementptr inbounds nuw i8, ptr %i.dwh, i64 8 ; 5 uses
  %i.dwl = load i64, ptr %i.dwk, align 8, !tbaa !117
  %i.dwm = add i64 %i.dwl, %indvars.iv3705        ; 3 uses
  store i64 %i.dwm, ptr %i.dwk, align 8, !tbaa !117
  %i.dwn = or disjoint i64 %indvars.iv3702, 1     ; 6 uses
  %i.dwo = load i32, ptr %i.p, align 4, !tbaa !52
  %i.dwp = sext i32 %i.dwo to i64
  %i.dwq = icmp slt i64 %i.dwn, %i.dwp
  br i1 %i.dwq, label %bb.rz, label %bb.sb

bb.rz:                                            ; preds = %bb.ry
  %i.dwr = getelementptr inbounds nuw [4 x i8], ptr %i.dlr, i64 %i.dwn
  store i32 0, ptr %i.dwr, align 4, !tbaa !33
  %i.dws = load i32, ptr %i.dvs, align 4, !tbaa !33
  %i.dwt = trunc nuw nsw i64 %i.dwn to i32        ; 4 uses
  %..i3125 = tail call i32 @llvm.smin.i32(i32 %i.dws, i32 %i.dwt)
  store i32 %..i3125, ptr %i.dvs, align 4, !tbaa !33
  %i.dwu = load i32, ptr %i.dvv, align 4, !tbaa !33
  %i.dwv = tail call i32 @llvm.smax.i32(i32 %i.dwu, i32 %i.dwt)
  store i32 %i.dwv, ptr %i.dvv, align 4, !tbaa !33
  %i.dww = load i32, ptr %i.dvy, align 4, !tbaa !33
  %i.dwx = tail call i32 @llvm.smin.i32(i32 %i.dww, i32 %i.dlv)
  store i32 %i.dwx, ptr %i.dvy, align 4, !tbaa !33
  %i.dwy = load i32, ptr %i.dwb, align 4, !tbaa !33
  %i.dwz = tail call i32 @llvm.smax.i32(i32 %i.dwy, i32 %i.dlv)
  store i32 %i.dwz, ptr %i.dwb, align 4, !tbaa !33
  %i.dxa = load i32, ptr %i.dwe, align 4, !tbaa !33
  %i.dxb = add nsw i32 %i.dxa, 1
  store i32 %i.dxb, ptr %i.dwe, align 4, !tbaa !33
  %i.dxc = add i64 %i.dwj, %i.dwn                 ; 2 uses
  store i64 %i.dxc, ptr %i.dwh, align 8, !tbaa !116
  %i.dxd = add i64 %i.dwm, %indvars.iv3705        ; 2 uses
  store i64 %i.dxd, ptr %i.dwk, align 8, !tbaa !117
  %i.dxe = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dxf = sext i32 %i.dxe to i64
  %i.dxg = icmp slt i64 %i.dlu, %i.dxf
  br i1 %i.dxg, label %bb.sa, label %bb.sd

bb.sa:                                            ; preds = %bb.rz
  %i.dxh = getelementptr inbounds nuw [4 x i8], ptr %i.dls, i64 %indvars.iv3702
  store i32 0, ptr %i.dxh, align 4, !tbaa !33
  %i.dxi = getelementptr inbounds nuw [4 x i8], ptr %i.dls, i64 %i.dwn
  store i32 0, ptr %i.dxi, align 4, !tbaa !33
  %i.dxj = load i32, ptr %i.dvs, align 4, !tbaa !33
  %..i3128 = tail call i32 @llvm.smin.i32(i32 %i.dxj, i32 %i.dvu)
  %i.dxk = load i32, ptr %i.dvv, align 4, !tbaa !33
  %i.dxl = tail call i32 @llvm.smax.i32(i32 %i.dxk, i32 %i.dvu)
  %i.dxm = load i32, ptr %i.dvy, align 4, !tbaa !33
  %i.dxn = tail call i32 @llvm.smin.i32(i32 %i.dxm, i32 %i.dlx)
  %i.dxo = load i32, ptr %i.dwb, align 4, !tbaa !33
  %i.dxp = tail call i32 @llvm.smax.i32(i32 %i.dxo, i32 %i.dlx)
  %i.dxq = load i32, ptr %i.dwe, align 4, !tbaa !33
  %i.dxr = add i64 %i.dxc, %indvars.iv3702
  %..i3131 = tail call i32 @llvm.smin.i32(i32 %..i3128, i32 %i.dwt)
  store i32 %..i3131, ptr %i.dvs, align 4, !tbaa !33
  %i.dxs = tail call i32 @llvm.umax.i32(i32 %i.dxl, i32 %i.dwt)
  store i32 %i.dxs, ptr %i.dvv, align 4, !tbaa !33
  store i32 %i.dxn, ptr %i.dvy, align 4, !tbaa !33
  store i32 %i.dxp, ptr %i.dwb, align 4, !tbaa !33
  %i.dxt = add nsw i32 %i.dxq, 2
  store i32 %i.dxt, ptr %i.dwe, align 4, !tbaa !33
  %i.dxu = add i64 %i.dxr, %i.dwn
  store i64 %i.dxu, ptr %i.dwh, align 8, !tbaa !116
  %.reass = add i64 %i.dxd, %invariant.op
  store i64 %.reass, ptr %i.dwk, align 8, !tbaa !117
  br label %bb.sd

bb.sb:                                            ; preds = %bb.ry
  %i.dxv = load i32, ptr %i.c, align 8, !tbaa !39
  %i.dxw = sext i32 %i.dxv to i64
  %i.dxx = icmp slt i64 %i.dlu, %i.dxw
  br i1 %i.dxx, label %bb.sc, label %bb.sd

bb.sc:                                            ; preds = %bb.sb
  %i.dxy = getelementptr inbounds nuw [4 x i8], ptr %i.dls, i64 %indvars.iv3702
  store i32 0, ptr %i.dxy, align 4, !tbaa !33
  %i.dxz = load i32, ptr %i.dvs, align 4, !tbaa !33
  %..i3134 = tail call i32 @llvm.smin.i32(i32 %i.dxz, i32 %i.dvu)
  store i32 %..i3134, ptr %i.dvs, align 4, !tbaa !33
  %i.dya = load i32, ptr %i.dvv, align 4, !tbaa !33
  %i.dyb = tail call i32 @llvm.smax.i32(i32 %i.dya, i32 %i.dvu)
  store i32 %i.dyb, ptr %i.dvv, align 4, !tbaa !33
  %i.dyc = load i32, ptr %i.dvy, align 4, !tbaa !33
  %i.dyd = tail call i32 @llvm.smin.i32(i32 %i.dyc, i32 %i.dlw)
  store i32 %i.dyd, ptr %i.dvy, align 4, !tbaa !33
  %i.dye = load i32, ptr %i.dwb, align 4, !tbaa !33
  %i.dyf = tail call i32 @llvm.smax.i32(i32 %i.dye, i32 %i.dlw)
  store i32 %i.dyf, ptr %i.dwb, align 4, !tbaa !33
  %i.dyg = load i32, ptr %i.dwe, align 4, !tbaa !33
  %i.dyh = add nsw i32 %i.dyg, 1
  store i32 %i.dyh, ptr %i.dwe, align 4, !tbaa !33
  %i.dyi = add i64 %i.dwj, %indvars.iv3702
  store i64 %i.dyi, ptr %i.dwh, align 8, !tbaa !116
  %i.dyj = add i64 %i.dwm, %i.dlu
  store i64 %i.dyj, ptr %i.dwk, align 8, !tbaa !117
  br label %bb.sd

bb.sd:                                            ; preds = %bb.sc, %bb.sa, %bb.rx, %bb.rw, %bb.rt, %bb.rs, %bb.rz, %bb.sb, %bb.rn, %bb.ru
  %indvars.iv.next3703 = add nuw nsw i64 %indvars.iv3702, 2 ; 2 uses
  %i.dyk = load i32, ptr %i.p, align 4, !tbaa !52 ; 2 uses
  %i.dyl = sext i32 %i.dyk to i64
  %i.dym = icmp slt i64 %indvars.iv.next3703, %i.dyl
  br i1 %i.dym, label %bb.rf, label %._crit_edge3529.loopexit, !llvm.loop !330

bb.se:                                            ; preds = %.lr.ph3538, %._crit_edge3536
  %i.dyn = phi i32 [ %i.dko, %.lr.ph3538 ], [ %i.dzk, %._crit_edge3536 ]
  %i.dyo = phi i32 [ %i.dkq, %.lr.ph3538 ], [ %i.dzl, %._crit_edge3536 ] ; 2 uses
  %indvars.iv3711 = phi i64 [ 0, %.lr.ph3538 ], [ %indvars.iv.next3712, %._crit_edge3536 ] ; 12 uses
  %i.dyp = load i64, ptr %i.dlc, align 8, !tbaa !40 ; 2 uses
  %i.dyq = mul i64 %i.dyp, %indvars.iv3711
  %i.dyr = getelementptr inbounds nuw i8, ptr %.pre3728, i64 %i.dyq ; 3 uses
  %i.dys = getelementptr inbounds nuw i8, ptr %i.dyr, i64 %i.dyp ; 2 uses
  %i.dyt = load i64, ptr %i.dle, align 8, !tbaa !40 ; 2 uses
  %i.dyu = mul i64 %i.dyt, %indvars.iv3711
  %i.dyv = getelementptr inbounds nuw i8, ptr %.pre3729, i64 %i.dyu ; 4 uses
  %i.dyw = getelementptr inbounds nuw i8, ptr %i.dyv, i64 %i.dyt ; 4 uses
  %i.dyx = icmp sgt i32 %i.dyo, 0
  br i1 %i.dyx, label %.lr.ph3535, label %._crit_edge3536

.lr.ph3535:                                       ; preds = %bb.se
  %i.dyy = or disjoint i64 %indvars.iv3711, 1     ; 10 uses
  %i.dyz = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %invariant.op4151 = shl nuw i64 %indvars.iv3711, 1
  %i.dza = trunc nuw nsw i64 %i.dyy to i32        ; 2 uses
  %invariant.op4153 = shl nuw i64 %i.dyy, 1
  %i.dzb = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %i.dzc = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %i.dzd = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %i.dze = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %i.dzf = trunc nuw nsw i64 %i.dyy to i32        ; 2 uses
  %i.dzg = trunc nuw nsw i64 %i.dyy to i32        ; 2 uses
  %i.dzh = trunc nuw nsw i64 %i.dyy to i32        ; 2 uses
  %i.dzi = trunc nuw nsw i64 %i.dyy to i32        ; 2 uses
  %i.dzj = insertelement <2 x i64> poison, i64 %i.dyy, i64 1 ; 2 uses
  br label %bb.sf

._crit_edge3536.loopexit:                         ; preds = %bb.sv
  %.pre3730 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3536

._crit_edge3536:                                  ; preds = %._crit_edge3536.loopexit, %bb.se
  %i.dzk = phi i32 [ %.pre3730, %._crit_edge3536.loopexit ], [ %i.dyn, %bb.se ] ; 2 uses
  %i.dzl = phi i32 [ %i.eil, %._crit_edge3536.loopexit ], [ %i.dyo, %bb.se ]
  %indvars.iv.next3712 = add nuw nsw i64 %indvars.iv3711, 2 ; 2 uses
  %i.dzm = sext i32 %i.dzk to i64
  %i.dzn = icmp slt i64 %indvars.iv.next3712, %i.dzm
  br i1 %i.dzn, label %bb.se, label %.loopexit, !llvm.loop !331

bb.sf:                                            ; preds = %.lr.ph3535, %bb.sv
  %indvars.iv3708 = phi i64 [ 0, %.lr.ph3535 ], [ %indvars.iv.next3709, %bb.sv ] ; 19 uses
  %i.dzo = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %indvars.iv3708 ; 4 uses
  %i.dzp = load i32, ptr %i.dzo, align 4, !tbaa !33 ; 2 uses
  %i.dzq = icmp sgt i32 %i.dzp, 0
  br i1 %i.dzq, label %bb.sg, label %bb.st

bb.sg:                                            ; preds = %bb.sf
  %i.dzr = zext nneg i32 %i.dzp to i64
  %i.dzs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %i.dzr
  %i.dzt = load i32, ptr %i.dzs, align 4, !tbaa !33 ; 8 uses
  %i.dzu = getelementptr inbounds nuw i8, ptr %i.dyr, i64 %indvars.iv3708
  %i.dzv = load i8, ptr %i.dzu, align 1, !tbaa !32
  %.not1872 = icmp eq i8 %i.dzv, 0
  br i1 %.not1872, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  store i32 %i.dzt, ptr %i.dzo, align 4, !tbaa !33
  %i.dzw = load i32, ptr %i.dlh, align 4, !tbaa !96
  %i.dzx = icmp slt i32 %i.dzw, 2
  %i.dzy = load ptr, ptr %i.dlf, align 8, !tbaa !55 ; 2 uses
  %i.dzz = load i64, ptr %i.dli, align 8
  %i.eaa = sext i32 %i.dzt to i64                 ; 2 uses
  %i.eab = mul i64 %i.dzz, %i.eaa
  %.sink.idx.i.i3135 = select i1 %i.dzx, i64 0, i64 %i.eab
  %.sink.i.i3136 = getelementptr inbounds nuw i8, ptr %i.dzy, i64 %.sink.idx.i.i3135 ; 6 uses
  %i.eac = load i32, ptr %.sink.i.i3136, align 4, !tbaa !33
  %i.ead = trunc nuw nsw i64 %indvars.iv3708 to i32 ; 2 uses
  %..i3137 = tail call i32 @llvm.smin.i32(i32 %i.eac, i32 %i.ead)
  store i32 %..i3137, ptr %.sink.i.i3136, align 4, !tbaa !33
  %i.eae = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 8 ; 2 uses
  %i.eaf = load i32, ptr %i.eae, align 4, !tbaa !33
  %i.eag = tail call i32 @llvm.smax.i32(i32 %i.eaf, i32 %i.ead)
  store i32 %i.eag, ptr %i.eae, align 4, !tbaa !33
  %i.eah = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 4 ; 2 uses
  %i.eai = load i32, ptr %i.eah, align 4, !tbaa !33
  %i.eaj = tail call i32 @llvm.smin.i32(i32 %i.eai, i32 %i.dzb)
  store i32 %i.eaj, ptr %i.eah, align 4, !tbaa !33
  %i.eak = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 12 ; 2 uses
  %i.eal = load i32, ptr %i.eak, align 4, !tbaa !33
  %i.eam = tail call i32 @llvm.smax.i32(i32 %i.eal, i32 %i.dzb)
  store i32 %i.eam, ptr %i.eak, align 4, !tbaa !33
  %i.ean = getelementptr inbounds nuw i8, ptr %.sink.i.i3136, i64 16 ; 2 uses
  %i.eao = load i32, ptr %i.ean, align 4, !tbaa !33
  %i.eap = add nsw i32 %i.eao, 1
  store i32 %i.eap, ptr %i.ean, align 4, !tbaa !33
  %i.eaq = load ptr, ptr %i.dlg, align 8, !tbaa !50 ; 2 uses
  %i.ear = getelementptr inbounds nuw [16 x i8], ptr %i.eaq, i64 %i.eaa ; 3 uses
  %i.eas = load i64, ptr %i.ear, align 8, !tbaa !116
  %i.eat = add i64 %i.eas, %indvars.iv3708
  store i64 %i.eat, ptr %i.ear, align 8, !tbaa !116
  br label %bb.sj

bb.si:                                            ; preds = %bb.sg
  store i32 0, ptr %i.dzo, align 4, !tbaa !33
  %i.eau = load ptr, ptr %i.dlf, align 8, !tbaa !55 ; 7 uses
  %i.eav = load i32, ptr %i.eau, align 4, !tbaa !33
  %i.eaw = trunc nuw nsw i64 %indvars.iv3708 to i32 ; 2 uses
  %..i3140 = tail call i32 @llvm.smin.i32(i32 %i.eav, i32 %i.eaw)
  store i32 %..i3140, ptr %i.eau, align 4, !tbaa !33
  %i.eax = getelementptr inbounds nuw i8, ptr %i.eau, i64 8 ; 2 uses
  %i.eay = load i32, ptr %i.eax, align 4, !tbaa !33
  %i.eaz = tail call i32 @llvm.smax.i32(i32 %i.eay, i32 %i.eaw)
  store i32 %i.eaz, ptr %i.eax, align 4, !tbaa !33
  %i.eba = getelementptr inbounds nuw i8, ptr %i.eau, i64 4 ; 2 uses
  %i.ebb = load i32, ptr %i.eba, align 4, !tbaa !33
  %i.ebc = tail call i32 @llvm.smin.i32(i32 %i.ebb, i32 %i.dzc)
  store i32 %i.ebc, ptr %i.eba, align 4, !tbaa !33
  %i.ebd = getelementptr inbounds nuw i8, ptr %i.eau, i64 12 ; 2 uses
  %i.ebe = load i32, ptr %i.ebd, align 4, !tbaa !33
  %i.ebf = tail call i32 @llvm.smax.i32(i32 %i.ebe, i32 %i.dzc)
  store i32 %i.ebf, ptr %i.ebd, align 4, !tbaa !33
  %i.ebg = getelementptr inbounds nuw i8, ptr %i.eau, i64 16 ; 2 uses
  %i.ebh = load i32, ptr %i.ebg, align 4, !tbaa !33
  %i.ebi = add nsw i32 %i.ebh, 1
  store i32 %i.ebi, ptr %i.ebg, align 4, !tbaa !33
  %i.ebj = load ptr, ptr %i.dlg, align 8, !tbaa !50 ; 4 uses
  %i.ebk = load i64, ptr %i.ebj, align 8, !tbaa !116
  %i.ebl = add i64 %i.ebk, %indvars.iv3708
  store i64 %i.ebl, ptr %i.ebj, align 8, !tbaa !116
  br label %bb.sj

bb.sj:                                            ; preds = %bb.si, %bb.sh
  %.sink4176 = phi ptr [ %i.ebj, %bb.si ], [ %i.ear, %bb.sh ]
  %i.ebm = phi ptr [ %i.ebj, %bb.si ], [ %i.eaq, %bb.sh ] ; 11 uses
  %i.ebn = phi ptr [ %i.eau, %bb.si ], [ %i.dzy, %bb.sh ] ; 21 uses
  %i.ebo = getelementptr inbounds nuw i8, ptr %.sink4176, i64 8 ; 2 uses
  %i.ebp = load i64, ptr %i.ebo, align 8, !tbaa !117
  %i.ebq = add i64 %i.ebp, %indvars.iv3711
  store i64 %i.ebq, ptr %i.ebo, align 8, !tbaa !117
  %i.ebr = or disjoint i64 %indvars.iv3708, 1     ; 12 uses
  %i.ebs = getelementptr inbounds nuw i8, ptr %i.dyr, i64 %i.ebr
  %i.ebt = load i8, ptr %i.ebs, align 1, !tbaa !32
  %.not1873 = icmp eq i8 %i.ebt, 0
  %i.ebu = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %i.ebr ; 2 uses
  br i1 %.not1873, label %bb.sl, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  store i32 %i.dzt, ptr %i.ebu, align 4, !tbaa !33
  %i.ebv = load i32, ptr %i.dlh, align 4, !tbaa !96
  %i.ebw = icmp slt i32 %i.ebv, 2
  %i.ebx = load i64, ptr %i.dli, align 8
  %i.eby = sext i32 %i.dzt to i64                 ; 2 uses
  %i.ebz = mul i64 %i.ebx, %i.eby
  %.sink.idx.i.i3141 = select i1 %i.ebw, i64 0, i64 %i.ebz
  %.sink.i.i3142 = getelementptr inbounds nuw i8, ptr %i.ebn, i64 %.sink.idx.i.i3141 ; 6 uses
  %i.eca = load i32, ptr %.sink.i.i3142, align 4, !tbaa !33
end_hunk_2
begin_hunk_3_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.ecv = tail call i32 @llvm.smax.i32(i32 %i.ecu, i32 %i.ecs)
  store i32 %i.ecv, ptr %i.ect, align 4, !tbaa !33
  %i.ecw = getelementptr inbounds nuw i8, ptr %i.ebn, i64 4 ; 2 uses
  %i.ecx = load i32, ptr %i.ecw, align 4, !tbaa !33
  %i.ecy = tail call i32 @llvm.smin.i32(i32 %i.ecx, i32 %i.dze)
  store i32 %i.ecy, ptr %i.ecw, align 4, !tbaa !33
  %i.ecz = getelementptr inbounds nuw i8, ptr %i.ebn, i64 12 ; 2 uses
  %i.eda = load i32, ptr %i.ecz, align 4, !tbaa !33
  %i.edb = tail call i32 @llvm.smax.i32(i32 %i.eda, i32 %i.dze)
  store i32 %i.edb, ptr %i.ecz, align 4, !tbaa !33
  %i.edc = getelementptr inbounds nuw i8, ptr %i.ebn, i64 16 ; 2 uses
  %i.edd = load i32, ptr %i.edc, align 4, !tbaa !33
  %i.ede = add nsw i32 %i.edd, 1
  store i32 %i.ede, ptr %i.edc, align 4, !tbaa !33
  %i.edf = load i64, ptr %i.ebm, align 8, !tbaa !116
  %i.edg = add i64 %i.edf, %i.ebr
  store i64 %i.edg, ptr %i.ebm, align 8, !tbaa !116
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %bb.sk
  %.sink4179 = phi ptr [ %i.ebm, %bb.sl ], [ %i.eco, %bb.sk ]
  %i.edh = getelementptr inbounds nuw i8, ptr %.sink4179, i64 8 ; 2 uses
  %i.edi = load i64, ptr %i.edh, align 8, !tbaa !117
  %i.edj = add i64 %i.edi, %indvars.iv3711
  store i64 %i.edj, ptr %i.edh, align 8, !tbaa !117
  %i.edk = load i32, ptr %i.c, align 8, !tbaa !39
  %i.edl = sext i32 %i.edk to i64
  %i.edm = icmp slt i64 %i.dyy, %i.edl
  br i1 %i.edm, label %bb.sn, label %bb.sv

bb.sn:                                            ; preds = %bb.sm
  %i.edn = getelementptr inbounds nuw i8, ptr %i.dys, i64 %indvars.iv3708
  %i.edo = load i8, ptr %i.edn, align 1, !tbaa !32
  %.not1874 = icmp eq i8 %i.edo, 0
  %i.edp = getelementptr inbounds nuw [4 x i8], ptr %i.dyw, i64 %indvars.iv3708 ; 2 uses
  br i1 %.not1874, label %bb.sp, label %bb.so

bb.so:                                            ; preds = %bb.sn
  store i32 %i.dzt, ptr %i.edp, align 4, !tbaa !33
  %i.edq = load i32, ptr %i.dlh, align 4, !tbaa !96
  %i.edr = icmp slt i32 %i.edq, 2
  %i.eds = load i64, ptr %i.dli, align 8
  %i.edt = sext i32 %i.dzt to i64                 ; 2 uses
  %i.edu = mul i64 %i.eds, %i.edt
  %.sink.idx.i.i3147 = select i1 %i.edr, i64 0, i64 %i.edu
  %.sink.i.i3148 = getelementptr inbounds nuw i8, ptr %i.ebn, i64 %.sink.idx.i.i3147 ; 6 uses
  %i.edv = load i32, ptr %.sink.i.i3148, align 4, !tbaa !33
  %i.edw = trunc nuw nsw i64 %indvars.iv3708 to i32 ; 2 uses
  %..i3149 = tail call i32 @llvm.smin.i32(i32 %i.edv, i32 %i.edw)
  store i32 %..i3149, ptr %.sink.i.i3148, align 4, !tbaa !33
  %i.edx = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 8 ; 2 uses
  %i.edy = load i32, ptr %i.edx, align 4, !tbaa !33
  %i.edz = tail call i32 @llvm.smax.i32(i32 %i.edy, i32 %i.edw)
  store i32 %i.edz, ptr %i.edx, align 4, !tbaa !33
  %i.eea = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 4 ; 2 uses
  %i.eeb = load i32, ptr %i.eea, align 4, !tbaa !33
  %i.eec = tail call i32 @llvm.smin.i32(i32 %i.eeb, i32 %i.dzf)
  store i32 %i.eec, ptr %i.eea, align 4, !tbaa !33
  %i.eed = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 12 ; 2 uses
  %i.eee = load i32, ptr %i.eed, align 4, !tbaa !33
  %i.eef = tail call i32 @llvm.smax.i32(i32 %i.eee, i32 %i.dzf)
  store i32 %i.eef, ptr %i.eed, align 4, !tbaa !33
  %i.eeg = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 16 ; 2 uses
  %i.eeh = load i32, ptr %i.eeg, align 4, !tbaa !33
  %i.eei = add nsw i32 %i.eeh, 1
  store i32 %i.eei, ptr %i.eeg, align 4, !tbaa !33
  %i.eej = getelementptr inbounds nuw [16 x i8], ptr %i.ebm, i64 %i.edt ; 3 uses
  %i.eek = load i64, ptr %i.eej, align 8, !tbaa !116
  %i.eel = add i64 %i.eek, %indvars.iv3708
  store i64 %i.eel, ptr %i.eej, align 8, !tbaa !116
  br label %bb.sq

bb.sp:                                            ; preds = %bb.sn
  store i32 0, ptr %i.edp, align 4, !tbaa !33
  %i.eem = load i32, ptr %i.ebn, align 4, !tbaa !33
  %i.een = trunc nuw nsw i64 %indvars.iv3708 to i32 ; 2 uses
  %..i3152 = tail call i32 @llvm.smin.i32(i32 %i.eem, i32 %i.een)
  store i32 %..i3152, ptr %i.ebn, align 4, !tbaa !33
  %i.eeo = getelementptr inbounds nuw i8, ptr %i.ebn, i64 8 ; 2 uses
  %i.eep = load i32, ptr %i.eeo, align 4, !tbaa !33
  %i.eeq = tail call i32 @llvm.smax.i32(i32 %i.eep, i32 %i.een)
  store i32 %i.eeq, ptr %i.eeo, align 4, !tbaa !33
  %i.eer = getelementptr inbounds nuw i8, ptr %i.ebn, i64 4 ; 2 uses
  %i.ees = load i32, ptr %i.eer, align 4, !tbaa !33
  %i.eet = tail call i32 @llvm.smin.i32(i32 %i.ees, i32 %i.dzg)
  store i32 %i.eet, ptr %i.eer, align 4, !tbaa !33
  %i.eeu = getelementptr inbounds nuw i8, ptr %i.ebn, i64 12 ; 2 uses
  %i.eev = load i32, ptr %i.eeu, align 4, !tbaa !33
  %i.eew = tail call i32 @llvm.smax.i32(i32 %i.eev, i32 %i.dzg)
  store i32 %i.eew, ptr %i.eeu, align 4, !tbaa !33
  %i.eex = getelementptr inbounds nuw i8, ptr %i.ebn, i64 16 ; 2 uses
  %i.eey = load i32, ptr %i.eex, align 4, !tbaa !33
  %i.eez = add nsw i32 %i.eey, 1
  store i32 %i.eez, ptr %i.eex, align 4, !tbaa !33
  %i.efa = load i64, ptr %i.ebm, align 8, !tbaa !116
  %i.efb = add i64 %i.efa, %indvars.iv3708
  store i64 %i.efb, ptr %i.ebm, align 8, !tbaa !116
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %bb.so
  %.sink4182 = phi ptr [ %i.ebm, %bb.sp ], [ %i.eej, %bb.so ]
  %i.efc = getelementptr inbounds nuw i8, ptr %.sink4182, i64 8 ; 2 uses
  %i.efd = load i64, ptr %i.efc, align 8, !tbaa !117
  %i.efe = add i64 %i.efd, %i.dyy
  store i64 %i.efe, ptr %i.efc, align 8, !tbaa !117
  %i.eff = getelementptr inbounds nuw i8, ptr %i.dys, i64 %i.ebr
  %i.efg = load i8, ptr %i.eff, align 1, !tbaa !32
  %.not1875 = icmp eq i8 %i.efg, 0
  %i.efh = getelementptr inbounds nuw [4 x i8], ptr %i.dyw, i64 %i.ebr ; 2 uses
  br i1 %.not1875, label %bb.ss, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  store i32 %i.dzt, ptr %i.efh, align 4, !tbaa !33
  %i.efi = load i32, ptr %i.dlh, align 4, !tbaa !96
  %i.efj = icmp slt i32 %i.efi, 2
  %i.efk = load i64, ptr %i.dli, align 8
  %i.efl = sext i32 %i.dzt to i64                 ; 2 uses
  %i.efm = mul i64 %i.efk, %i.efl
  %.sink.idx.i.i3153 = select i1 %i.efj, i64 0, i64 %i.efm
  %.sink.i.i3154 = getelementptr inbounds nuw i8, ptr %i.ebn, i64 %.sink.idx.i.i3153 ; 6 uses
  %i.efn = load i32, ptr %.sink.i.i3154, align 4, !tbaa !33
  %i.efo = trunc nuw nsw i64 %i.ebr to i32        ; 2 uses
  %..i3155 = tail call i32 @llvm.smin.i32(i32 %i.efn, i32 %i.efo)
  store i32 %..i3155, ptr %.sink.i.i3154, align 4, !tbaa !33
  %i.efp = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 8 ; 2 uses
  %i.efq = load i32, ptr %i.efp, align 4, !tbaa !33
  %i.efr = tail call i32 @llvm.smax.i32(i32 %i.efq, i32 %i.efo)
  store i32 %i.efr, ptr %i.efp, align 4, !tbaa !33
  %i.efs = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 4 ; 2 uses
  %i.eft = load i32, ptr %i.efs, align 4, !tbaa !33
  %i.efu = tail call i32 @llvm.smin.i32(i32 %i.eft, i32 %i.dzh)
  store i32 %i.efu, ptr %i.efs, align 4, !tbaa !33
  %i.efv = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 12 ; 2 uses
  %i.efw = load i32, ptr %i.efv, align 4, !tbaa !33
  %i.efx = tail call i32 @llvm.smax.i32(i32 %i.efw, i32 %i.dzh)
  store i32 %i.efx, ptr %i.efv, align 4, !tbaa !33
  %i.efy = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 16 ; 2 uses
  %i.efz = load i32, ptr %i.efy, align 4, !tbaa !33
  %i.ega = add nsw i32 %i.efz, 1
  store i32 %i.ega, ptr %i.efy, align 4, !tbaa !33
  %i.egb = getelementptr inbounds nuw [16 x i8], ptr %i.ebm, i64 %i.efl ; 2 uses
  %i.egc = load <2 x i64>, ptr %i.egb, align 8, !tbaa !40
  %i.egd = insertelement <2 x i64> %i.dzj, i64 %i.ebr, i64 0
  %i.ege = add <2 x i64> %i.egc, %i.egd
  store <2 x i64> %i.ege, ptr %i.egb, align 8, !tbaa !40
  br label %bb.sv

bb.ss:                                            ; preds = %bb.sq
  store i32 0, ptr %i.efh, align 4, !tbaa !33
  %i.egf = load i32, ptr %i.ebn, align 4, !tbaa !33
  %i.egg = trunc nuw nsw i64 %i.ebr to i32        ; 2 uses
  %..i3158 = tail call i32 @llvm.smin.i32(i32 %i.egf, i32 %i.egg)
  store i32 %..i3158, ptr %i.ebn, align 4, !tbaa !33
  %i.egh = getelementptr inbounds nuw i8, ptr %i.ebn, i64 8 ; 2 uses
  %i.egi = load i32, ptr %i.egh, align 4, !tbaa !33
  %i.egj = tail call i32 @llvm.smax.i32(i32 %i.egi, i32 %i.egg)
  store i32 %i.egj, ptr %i.egh, align 4, !tbaa !33
  %i.egk = getelementptr inbounds nuw i8, ptr %i.ebn, i64 4 ; 2 uses
  %i.egl = load i32, ptr %i.egk, align 4, !tbaa !33
  %i.egm = tail call i32 @llvm.smin.i32(i32 %i.egl, i32 %i.dzi)
  store i32 %i.egm, ptr %i.egk, align 4, !tbaa !33
  %i.egn = getelementptr inbounds nuw i8, ptr %i.ebn, i64 12 ; 2 uses
  %i.ego = load i32, ptr %i.egn, align 4, !tbaa !33
  %i.egp = tail call i32 @llvm.smax.i32(i32 %i.ego, i32 %i.dzi)
  store i32 %i.egp, ptr %i.egn, align 4, !tbaa !33
  %i.egq = getelementptr inbounds nuw i8, ptr %i.ebn, i64 16 ; 2 uses
  %i.egr = load i32, ptr %i.egq, align 4, !tbaa !33
  %i.egs = add nsw i32 %i.egr, 1
  store i32 %i.egs, ptr %i.egq, align 4, !tbaa !33
  %i.egt = load <2 x i64>, ptr %i.ebm, align 8, !tbaa !40
  %i.egu = insertelement <2 x i64> %i.dzj, i64 %i.ebr, i64 0
  %i.egv = add <2 x i64> %i.egt, %i.egu
  store <2 x i64> %i.egv, ptr %i.ebm, align 8, !tbaa !40
  br label %bb.sv

bb.st:                                            ; preds = %bb.sf
  store i32 0, ptr %i.dzo, align 4, !tbaa !33
  %i.egw = or disjoint i64 %indvars.iv3708, 1     ; 5 uses
  %i.egx = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %i.egw
  store i32 0, ptr %i.egx, align 4, !tbaa !33
  %i.egy = load ptr, ptr %i.dlf, align 8, !tbaa !55 ; 8 uses
  %i.egz = load i32, ptr %i.egy, align 4, !tbaa !33
  %i.eha = trunc nuw nsw i64 %indvars.iv3708 to i32 ; 4 uses
  %..i3161 = tail call i32 @llvm.smin.i32(i32 %i.egz, i32 %i.eha)
  %i.ehb = getelementptr inbounds nuw i8, ptr %i.egy, i64 8 ; 4 uses
  %i.ehc = load i32, ptr %i.ehb, align 4, !tbaa !33
  %i.ehd = tail call i32 @llvm.smax.i32(i32 %i.ehc, i32 %i.eha)
  %i.ehe = getelementptr inbounds nuw i8, ptr %i.egy, i64 4 ; 4 uses
  %i.ehf = load i32, ptr %i.ehe, align 4, !tbaa !33
  %i.ehg = tail call i32 @llvm.smin.i32(i32 %i.ehf, i32 %i.dyz)
  %i.ehh = getelementptr inbounds nuw i8, ptr %i.egy, i64 12 ; 4 uses
  %i.ehi = load i32, ptr %i.ehh, align 4, !tbaa !33
  %i.ehj = tail call i32 @llvm.smax.i32(i32 %i.ehi, i32 %i.dyz)
  %i.ehk = getelementptr inbounds nuw i8, ptr %i.egy, i64 16 ; 4 uses
  %i.ehl = load i32, ptr %i.ehk, align 4, !tbaa !33
  %i.ehm = load ptr, ptr %i.dlg, align 8, !tbaa !50 ; 4 uses
  %i.ehn = load i64, ptr %i.ehm, align 8, !tbaa !116
  %i.eho = add i64 %i.ehn, %indvars.iv3708
  %i.ehp = getelementptr inbounds nuw i8, ptr %i.ehm, i64 8 ; 3 uses
  %i.ehq = load i64, ptr %i.ehp, align 8, !tbaa !117
  %11 = trunc nuw nsw i64 %i.egw to i32           ; 4 uses
  %..i3164 = tail call i32 @llvm.smin.i32(i32 %..i3161, i32 %11)
  store i32 %..i3164, ptr %i.egy, align 4, !tbaa !33
  %i.ehr = tail call i32 @llvm.umax.i32(i32 %i.ehd, i32 %11)
  store i32 %i.ehr, ptr %i.ehb, align 4, !tbaa !33
  store i32 %i.ehg, ptr %i.ehe, align 4, !tbaa !33
  store i32 %i.ehj, ptr %i.ehh, align 4, !tbaa !33
  %i.ehs = add nsw i32 %i.ehl, 2
  store i32 %i.ehs, ptr %i.ehk, align 4, !tbaa !33
  %i.eht = add i64 %i.eho, %i.egw                 ; 2 uses
  store i64 %i.eht, ptr %i.ehm, align 8, !tbaa !116
  %.reass4152 = add i64 %i.ehq, %invariant.op4151 ; 2 uses
  store i64 %.reass4152, ptr %i.ehp, align 8, !tbaa !117
  %i.ehu = load i32, ptr %i.c, align 8, !tbaa !39
  %i.ehv = sext i32 %i.ehu to i64
  %i.ehw = icmp slt i64 %i.dyy, %i.ehv
  br i1 %i.ehw, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %bb.st
  %i.ehx = getelementptr inbounds nuw [4 x i8], ptr %i.dyw, i64 %indvars.iv3708
  store i32 0, ptr %i.ehx, align 4, !tbaa !33
  %i.ehy = getelementptr inbounds nuw [4 x i8], ptr %i.dyw, i64 %i.egw
  store i32 0, ptr %i.ehy, align 4, !tbaa !33
  %i.ehz = load i32, ptr %i.egy, align 4, !tbaa !33
  %..i3167 = tail call i32 @llvm.smin.i32(i32 %i.ehz, i32 %i.eha)
  %i.eia = load i32, ptr %i.ehb, align 4, !tbaa !33
  %i.eib = tail call i32 @llvm.smax.i32(i32 %i.eia, i32 %i.eha)
  %i.eic = load i32, ptr %i.ehe, align 4, !tbaa !33
  %i.eid = tail call i32 @llvm.smin.i32(i32 %i.eic, i32 %i.dza)
  %i.eie = load i32, ptr %i.ehh, align 4, !tbaa !33
  %i.eif = tail call i32 @llvm.smax.i32(i32 %i.eie, i32 %i.dza)
  %i.eig = load i32, ptr %i.ehk, align 4, !tbaa !33
  %i.eih = add i64 %i.eht, %indvars.iv3708
  %..i3170 = tail call i32 @llvm.smin.i32(i32 %..i3167, i32 %11)
  store i32 %..i3170, ptr %i.egy, align 4, !tbaa !33
  %i.eii = tail call i32 @llvm.umax.i32(i32 %i.eib, i32 %11)
  store i32 %i.eii, ptr %i.ehb, align 4, !tbaa !33
  store i32 %i.eid, ptr %i.ehe, align 4, !tbaa !33
  store i32 %i.eif, ptr %i.ehh, align 4, !tbaa !33
  %i.eij = add nsw i32 %i.eig, 2
  store i32 %i.eij, ptr %i.ehk, align 4, !tbaa !33
  %i.eik = add i64 %i.eih, %i.egw
  store i64 %i.eik, ptr %i.ehm, align 8, !tbaa !116
  %.reass4154 = add i64 %.reass4152, %invariant.op4153
  store i64 %.reass4154, ptr %i.ehp, align 8, !tbaa !117
  br label %bb.sv

bb.sv:                                            ; preds = %bb.su, %bb.ss, %bb.sr, %bb.st, %bb.sm
  %indvars.iv.next3709 = add nuw nsw i64 %indvars.iv3708, 2 ; 2 uses
  %i.eil = load i32, ptr %i.p, align 4, !tbaa !52 ; 2 uses
  %i.eim = sext i32 %i.eil to i64
  %i.ein = icmp slt i64 %indvars.iv.next3709, %i.eim
  br i1 %i.ein, label %bb.sf, label %._crit_edge3536.loopexit, !llvm.loop !332

bb.sw:                                            ; preds = %bb.rc
  br i1 %.not1862, label %.preheader, label %.preheader3284

.preheader3284:                                   ; preds = %bb.sw
  br i1 %i.dks, label %.lr.ph3544, label %.loopexit

.lr.ph3544:                                       ; preds = %.preheader3284
  %i.eio = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eip = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eiq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eir = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.eis = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.eit = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %i.eiu = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.eiv = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  %.pre3731 = load ptr, ptr %i.eio, align 8, !tbaa !55
  %.pre3732 = load ptr, ptr %i.eiq, align 8, !tbaa !55
  br label %bb.sx

.preheader:                                       ; preds = %bb.sw
  br i1 %i.dks, label %.lr.ph3551, label %.loopexit

.lr.ph3551:                                       ; preds = %.preheader
  %i.eiw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eix = load ptr, ptr %i.eiw, align 8, !tbaa !55
  %i.eiy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eiz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eja = load ptr, ptr %i.eiz, align 8, !tbaa !55
  %i.ejb = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ejc = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ejd = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %i.eje = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.ejf = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  br label %bb.tp

bb.sx:                                            ; preds = %.lr.ph3544, %._crit_edge3542
  %i.ejg = phi i32 [ %i.dko, %.lr.ph3544 ], [ %i.ekd, %._crit_edge3542 ]
  %i.ejh = phi i32 [ %i.dkq, %.lr.ph3544 ], [ %i.eke, %._crit_edge3542 ] ; 2 uses
  %indvars.iv3717 = phi i64 [ 0, %.lr.ph3544 ], [ %indvars.iv.next3718, %._crit_edge3542 ] ; 13 uses
  %i.eji = load i64, ptr %i.eip, align 8, !tbaa !40 ; 2 uses
  %i.ejj = mul i64 %i.eji, %indvars.iv3717
  %i.ejk = getelementptr inbounds nuw i8, ptr %.pre3731, i64 %i.ejj ; 3 uses
  %i.ejl = getelementptr inbounds nuw i8, ptr %i.ejk, i64 %i.eji ; 2 uses
  %i.ejm = load i64, ptr %i.eir, align 8, !tbaa !40 ; 2 uses
  %i.ejn = mul i64 %i.ejm, %indvars.iv3717
  %i.ejo = getelementptr inbounds nuw i8, ptr %.pre3732, i64 %i.ejn ; 4 uses
  %i.ejp = getelementptr inbounds nuw i8, ptr %i.ejo, i64 %i.ejm ; 4 uses
  %i.ejq = icmp sgt i32 %i.ejh, 0
  br i1 %i.ejq, label %.lr.ph3541, label %._crit_edge3542

.lr.ph3541:                                       ; preds = %bb.sx
  %i.ejr = or disjoint i64 %indvars.iv3717, 1     ; 9 uses
  %i.ejs = trunc nuw nsw i64 %indvars.iv3717 to i32 ; 4 uses
  %i.ejt = trunc nuw nsw i64 %i.ejr to i32        ; 4 uses
  %invariant.op4155 = add nuw i64 %indvars.iv3717, %i.ejr
  %invariant.op4157 = add nuw i64 %indvars.iv3717, %i.ejr
  %i.eju = trunc nuw nsw i64 %indvars.iv3717 to i32 ; 2 uses
  %i.ejv = trunc nuw nsw i64 %indvars.iv3717 to i32 ; 2 uses
  %i.ejw = trunc nuw nsw i64 %i.ejr to i32        ; 2 uses
  %i.ejx = trunc nuw nsw i64 %i.ejr to i32        ; 2 uses
  %i.ejy = trunc nuw nsw i64 %indvars.iv3717 to i32 ; 2 uses
  %i.ejz = trunc nuw nsw i64 %indvars.iv3717 to i32 ; 2 uses
  %i.eka = trunc nuw nsw i64 %i.ejr to i32        ; 2 uses
  %i.ekb = trunc nuw nsw i64 %i.ejr to i32        ; 2 uses
  %i.ekc = insertelement <2 x i64> poison, i64 %i.ejr, i64 1 ; 2 uses
  br label %bb.sy

._crit_edge3542.loopexit:                         ; preds = %bb.to
  %.pre3733 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3542

._crit_edge3542:                                  ; preds = %._crit_edge3542.loopexit, %bb.sx
  %i.ekd = phi i32 [ %.pre3733, %._crit_edge3542.loopexit ], [ %i.ejg, %bb.sx ] ; 2 uses
  %i.eke = phi i32 [ %i.etd, %._crit_edge3542.loopexit ], [ %i.ejh, %bb.sx ]
  %indvars.iv.next3718 = add nuw nsw i64 %indvars.iv3717, 2 ; 2 uses
  %i.ekf = sext i32 %i.ekd to i64
  %i.ekg = icmp slt i64 %indvars.iv.next3718, %i.ekf
  br i1 %i.ekg, label %bb.sx, label %.loopexit, !llvm.loop !333

bb.sy:                                            ; preds = %.lr.ph3541, %bb.to
  %indvars.iv3714 = phi i64 [ 0, %.lr.ph3541 ], [ %indvars.iv.next3715, %bb.to ] ; 18 uses
  %i.ekh = getelementptr inbounds nuw [4 x i8], ptr %i.ejo, i64 %indvars.iv3714 ; 4 uses
  %i.eki = load i32, ptr %i.ekh, align 4, !tbaa !33 ; 2 uses
  %i.ekj = icmp sgt i32 %i.eki, 0
  br i1 %i.ekj, label %bb.sz, label %bb.tm

bb.sz:                                            ; preds = %bb.sy
  %i.ekk = zext nneg i32 %i.eki to i64
  %i.ekl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %i.ekk
  %i.ekm = load i32, ptr %i.ekl, align 4, !tbaa !33 ; 8 uses
  %i.ekn = getelementptr inbounds nuw i8, ptr %i.ejk, i64 %indvars.iv3714
  %i.eko = load i8, ptr %i.ekn, align 1, !tbaa !32
  %.not1867 = icmp eq i8 %i.eko, 0
  br i1 %.not1867, label %bb.tb, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  store i32 %i.ekm, ptr %i.ekh, align 4, !tbaa !33
  %i.ekp = load i32, ptr %i.eiu, align 4, !tbaa !96
  %i.ekq = icmp slt i32 %i.ekp, 2
  %i.ekr = load ptr, ptr %i.eis, align 8, !tbaa !55 ; 2 uses
  %i.eks = load i64, ptr %i.eiv, align 8
  %i.ekt = sext i32 %i.ekm to i64                 ; 2 uses
  %i.eku = mul i64 %i.eks, %i.ekt
  %.sink.idx.i.i3171 = select i1 %i.ekq, i64 0, i64 %i.eku
  %.sink.i.i3172 = getelementptr inbounds nuw i8, ptr %i.ekr, i64 %.sink.idx.i.i3171 ; 6 uses
  %i.ekv = load i32, ptr %.sink.i.i3172, align 4, !tbaa !33
  %i.ekw = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 2 uses
  %..i3173 = tail call i32 @llvm.smin.i32(i32 %i.ekv, i32 %i.ekw)
  store i32 %..i3173, ptr %.sink.i.i3172, align 4, !tbaa !33
  %i.ekx = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 8 ; 2 uses
  %i.eky = load i32, ptr %i.ekx, align 4, !tbaa !33
  %i.ekz = tail call i32 @llvm.smax.i32(i32 %i.eky, i32 %i.ekw)
  store i32 %i.ekz, ptr %i.ekx, align 4, !tbaa !33
  %i.ela = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 4 ; 2 uses
  %i.elb = load i32, ptr %i.ela, align 4, !tbaa !33
  %i.elc = tail call i32 @llvm.smin.i32(i32 %i.elb, i32 %i.eju)
  store i32 %i.elc, ptr %i.ela, align 4, !tbaa !33
  %i.eld = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 12 ; 2 uses
  %i.ele = load i32, ptr %i.eld, align 4, !tbaa !33
  %i.elf = tail call i32 @llvm.smax.i32(i32 %i.ele, i32 %i.eju)
  store i32 %i.elf, ptr %i.eld, align 4, !tbaa !33
  %i.elg = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 16 ; 2 uses
  %i.elh = load i32, ptr %i.elg, align 4, !tbaa !33
  %i.eli = add nsw i32 %i.elh, 1
  store i32 %i.eli, ptr %i.elg, align 4, !tbaa !33
  %i.elj = load ptr, ptr %i.eit, align 8, !tbaa !50 ; 2 uses
  %i.elk = getelementptr inbounds nuw [16 x i8], ptr %i.elj, i64 %i.ekt ; 3 uses
  %i.ell = load i64, ptr %i.elk, align 8, !tbaa !116
  %i.elm = add i64 %i.ell, %indvars.iv3714
  store i64 %i.elm, ptr %i.elk, align 8, !tbaa !116
  br label %bb.tc

bb.tb:                                            ; preds = %bb.sz
  store i32 0, ptr %i.ekh, align 4, !tbaa !33
  %i.eln = load ptr, ptr %i.eis, align 8, !tbaa !55 ; 7 uses
  %i.elo = load i32, ptr %i.eln, align 4, !tbaa !33
  %i.elp = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 2 uses
  %..i3176 = tail call i32 @llvm.smin.i32(i32 %i.elo, i32 %i.elp)
  store i32 %..i3176, ptr %i.eln, align 4, !tbaa !33
  %i.elq = getelementptr inbounds nuw i8, ptr %i.eln, i64 8 ; 2 uses
  %i.elr = load i32, ptr %i.elq, align 4, !tbaa !33
  %i.els = tail call i32 @llvm.smax.i32(i32 %i.elr, i32 %i.elp)
  store i32 %i.els, ptr %i.elq, align 4, !tbaa !33
  %i.elt = getelementptr inbounds nuw i8, ptr %i.eln, i64 4 ; 2 uses
  %i.elu = load i32, ptr %i.elt, align 4, !tbaa !33
  %i.elv = tail call i32 @llvm.smin.i32(i32 %i.elu, i32 %i.ejv)
  store i32 %i.elv, ptr %i.elt, align 4, !tbaa !33
  %i.elw = getelementptr inbounds nuw i8, ptr %i.eln, i64 12 ; 2 uses
  %i.elx = load i32, ptr %i.elw, align 4, !tbaa !33
  %i.ely = tail call i32 @llvm.smax.i32(i32 %i.elx, i32 %i.ejv)
  store i32 %i.ely, ptr %i.elw, align 4, !tbaa !33
  %i.elz = getelementptr inbounds nuw i8, ptr %i.eln, i64 16 ; 2 uses
  %i.ema = load i32, ptr %i.elz, align 4, !tbaa !33
  %i.emb = add nsw i32 %i.ema, 1
  store i32 %i.emb, ptr %i.elz, align 4, !tbaa !33
  %i.emc = load ptr, ptr %i.eit, align 8, !tbaa !50 ; 4 uses
  %i.emd = load i64, ptr %i.emc, align 8, !tbaa !116
  %i.eme = add i64 %i.emd, %indvars.iv3714
  store i64 %i.eme, ptr %i.emc, align 8, !tbaa !116
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.ta
  %.sink4185 = phi ptr [ %i.emc, %bb.tb ], [ %i.elk, %bb.ta ]
  %i.emf = phi ptr [ %i.emc, %bb.tb ], [ %i.elj, %bb.ta ] ; 11 uses
  %i.emg = phi ptr [ %i.eln, %bb.tb ], [ %i.ekr, %bb.ta ] ; 21 uses
  %i.emh = getelementptr inbounds nuw i8, ptr %.sink4185, i64 8 ; 2 uses
  %i.emi = load i64, ptr %i.emh, align 8, !tbaa !117
  %i.emj = add i64 %i.emi, %indvars.iv3717
  store i64 %i.emj, ptr %i.emh, align 8, !tbaa !117
  %i.emk = getelementptr inbounds nuw i8, ptr %i.ejl, i64 %indvars.iv3714
  %i.eml = load i8, ptr %i.emk, align 1, !tbaa !32
  %.not1868 = icmp eq i8 %i.eml, 0
  %i.emm = getelementptr inbounds nuw [4 x i8], ptr %i.ejp, i64 %indvars.iv3714 ; 2 uses
  br i1 %.not1868, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  store i32 %i.ekm, ptr %i.emm, align 4, !tbaa !33
  %i.emn = load i32, ptr %i.eiu, align 4, !tbaa !96
  %i.emo = icmp slt i32 %i.emn, 2
  %i.emp = load i64, ptr %i.eiv, align 8
  %i.emq = sext i32 %i.ekm to i64                 ; 2 uses
  %i.emr = mul i64 %i.emp, %i.emq
  %.sink.idx.i.i3177 = select i1 %i.emo, i64 0, i64 %i.emr
  %.sink.i.i3178 = getelementptr inbounds nuw i8, ptr %i.emg, i64 %.sink.idx.i.i3177 ; 6 uses
  %i.ems = load i32, ptr %.sink.i.i3178, align 4, !tbaa !33
  %i.emt = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 2 uses
  %..i3179 = tail call i32 @llvm.smin.i32(i32 %i.ems, i32 %i.emt)
  store i32 %..i3179, ptr %.sink.i.i3178, align 4, !tbaa !33
  %i.emu = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 8 ; 2 uses
  %i.emv = load i32, ptr %i.emu, align 4, !tbaa !33
  %i.emw = tail call i32 @llvm.smax.i32(i32 %i.emv, i32 %i.emt)
  store i32 %i.emw, ptr %i.emu, align 4, !tbaa !33
  %i.emx = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 4 ; 2 uses
  %i.emy = load i32, ptr %i.emx, align 4, !tbaa !33
  %i.emz = tail call i32 @llvm.smin.i32(i32 %i.emy, i32 %i.ejw)
  store i32 %i.emz, ptr %i.emx, align 4, !tbaa !33
  %i.ena = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 12 ; 2 uses
  %i.enb = load i32, ptr %i.ena, align 4, !tbaa !33
  %i.enc = tail call i32 @llvm.smax.i32(i32 %i.enb, i32 %i.ejw)
  store i32 %i.enc, ptr %i.ena, align 4, !tbaa !33
  %i.end = getelementptr inbounds nuw i8, ptr %.sink.i.i3178, i64 16 ; 2 uses
  %i.ene = load i32, ptr %i.end, align 4, !tbaa !33
  %i.enf = add nsw i32 %i.ene, 1
  store i32 %i.enf, ptr %i.end, align 4, !tbaa !33
  %i.eng = getelementptr inbounds nuw [16 x i8], ptr %i.emf, i64 %i.emq ; 3 uses
  %i.enh = load i64, ptr %i.eng, align 8, !tbaa !116
  %i.eni = add i64 %i.enh, %indvars.iv3714
  store i64 %i.eni, ptr %i.eng, align 8, !tbaa !116
  br label %bb.tf

bb.te:                                            ; preds = %bb.tc
  store i32 0, ptr %i.emm, align 4, !tbaa !33
  %i.enj = load i32, ptr %i.emg, align 4, !tbaa !33
  %i.enk = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 2 uses
  %..i3182 = tail call i32 @llvm.smin.i32(i32 %i.enj, i32 %i.enk)
  store i32 %..i3182, ptr %i.emg, align 4, !tbaa !33
  %i.enl = getelementptr inbounds nuw i8, ptr %i.emg, i64 8 ; 2 uses
  %i.enm = load i32, ptr %i.enl, align 4, !tbaa !33
  %i.enn = tail call i32 @llvm.smax.i32(i32 %i.enm, i32 %i.enk)
  store i32 %i.enn, ptr %i.enl, align 4, !tbaa !33
  %i.eno = getelementptr inbounds nuw i8, ptr %i.emg, i64 4 ; 2 uses
  %i.enp = load i32, ptr %i.eno, align 4, !tbaa !33
  %i.enq = tail call i32 @llvm.smin.i32(i32 %i.enp, i32 %i.ejx)
  store i32 %i.enq, ptr %i.eno, align 4, !tbaa !33
  %i.enr = getelementptr inbounds nuw i8, ptr %i.emg, i64 12 ; 2 uses
  %i.ens = load i32, ptr %i.enr, align 4, !tbaa !33
  %i.ent = tail call i32 @llvm.smax.i32(i32 %i.ens, i32 %i.ejx)
  store i32 %i.ent, ptr %i.enr, align 4, !tbaa !33
  %i.enu = getelementptr inbounds nuw i8, ptr %i.emg, i64 16 ; 2 uses
  %i.env = load i32, ptr %i.enu, align 4, !tbaa !33
  %i.enw = add nsw i32 %i.env, 1
  store i32 %i.enw, ptr %i.enu, align 4, !tbaa !33
  %i.enx = load i64, ptr %i.emf, align 8, !tbaa !116
  %i.eny = add i64 %i.enx, %indvars.iv3714
  store i64 %i.eny, ptr %i.emf, align 8, !tbaa !116
  br label %bb.tf

bb.tf:                                            ; preds = %bb.te, %bb.td
  %.sink4188 = phi ptr [ %i.emf, %bb.te ], [ %i.eng, %bb.td ]
  %i.enz = getelementptr inbounds nuw i8, ptr %.sink4188, i64 8 ; 2 uses
  %i.eoa = load i64, ptr %i.enz, align 8, !tbaa !117
  %i.eob = add i64 %i.eoa, %i.ejr
  store i64 %i.eob, ptr %i.enz, align 8, !tbaa !117
  %i.eoc = or disjoint i64 %indvars.iv3714, 1     ; 13 uses
  %i.eod = load i32, ptr %i.p, align 4, !tbaa !52
  %i.eoe = sext i32 %i.eod to i64
  %i.eof = icmp slt i64 %i.eoc, %i.eoe
  br i1 %i.eof, label %bb.tg, label %bb.to

bb.tg:                                            ; preds = %bb.tf
  %i.eog = getelementptr inbounds nuw i8, ptr %i.ejk, i64 %i.eoc
  %i.eoh = load i8, ptr %i.eog, align 1, !tbaa !32
  %.not1869 = icmp eq i8 %i.eoh, 0
  %i.eoi = getelementptr inbounds nuw [4 x i8], ptr %i.ejo, i64 %i.eoc ; 2 uses
  br i1 %.not1869, label %bb.ti, label %bb.th

bb.th:                                            ; preds = %bb.tg
  store i32 %i.ekm, ptr %i.eoi, align 4, !tbaa !33
  %i.eoj = load i32, ptr %i.eiu, align 4, !tbaa !96
  %i.eok = icmp slt i32 %i.eoj, 2
  %i.eol = load i64, ptr %i.eiv, align 8
  %i.eom = sext i32 %i.ekm to i64                 ; 2 uses
  %i.eon = mul i64 %i.eol, %i.eom
  %.sink.idx.i.i3183 = select i1 %i.eok, i64 0, i64 %i.eon
  %.sink.i.i3184 = getelementptr inbounds nuw i8, ptr %i.emg, i64 %.sink.idx.i.i3183 ; 6 uses
  %i.eoo = load i32, ptr %.sink.i.i3184, align 4, !tbaa !33
  %i.eop = trunc nuw nsw i64 %i.eoc to i32        ; 2 uses
  %..i3185 = tail call i32 @llvm.smin.i32(i32 %i.eoo, i32 %i.eop)
  store i32 %..i3185, ptr %.sink.i.i3184, align 4, !tbaa !33
  %i.eoq = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 8 ; 2 uses
  %i.eor = load i32, ptr %i.eoq, align 4, !tbaa !33
  %i.eos = tail call i32 @llvm.smax.i32(i32 %i.eor, i32 %i.eop)
  store i32 %i.eos, ptr %i.eoq, align 4, !tbaa !33
  %i.eot = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 4 ; 2 uses
  %i.eou = load i32, ptr %i.eot, align 4, !tbaa !33
  %i.eov = tail call i32 @llvm.smin.i32(i32 %i.eou, i32 %i.ejy)
  store i32 %i.eov, ptr %i.eot, align 4, !tbaa !33
  %i.eow = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 12 ; 2 uses
  %i.eox = load i32, ptr %i.eow, align 4, !tbaa !33
  %i.eoy = tail call i32 @llvm.smax.i32(i32 %i.eox, i32 %i.ejy)
  store i32 %i.eoy, ptr %i.eow, align 4, !tbaa !33
  %i.eoz = getelementptr inbounds nuw i8, ptr %.sink.i.i3184, i64 16 ; 2 uses
  %i.epa = load i32, ptr %i.eoz, align 4, !tbaa !33
  %i.epb = add nsw i32 %i.epa, 1
  store i32 %i.epb, ptr %i.eoz, align 4, !tbaa !33
  %i.epc = getelementptr inbounds nuw [16 x i8], ptr %i.emf, i64 %i.eom ; 3 uses
  %i.epd = load i64, ptr %i.epc, align 8, !tbaa !116
  %i.epe = add i64 %i.epd, %i.eoc
  store i64 %i.epe, ptr %i.epc, align 8, !tbaa !116
  br label %bb.tj

bb.ti:                                            ; preds = %bb.tg
  store i32 0, ptr %i.eoi, align 4, !tbaa !33
  %i.epf = load i32, ptr %i.emg, align 4, !tbaa !33
  %i.epg = trunc nuw nsw i64 %i.eoc to i32        ; 2 uses
  %..i3188 = tail call i32 @llvm.smin.i32(i32 %i.epf, i32 %i.epg)
  store i32 %..i3188, ptr %i.emg, align 4, !tbaa !33
  %i.eph = getelementptr inbounds nuw i8, ptr %i.emg, i64 8 ; 2 uses
  %i.epi = load i32, ptr %i.eph, align 4, !tbaa !33
  %i.epj = tail call i32 @llvm.smax.i32(i32 %i.epi, i32 %i.epg)
  store i32 %i.epj, ptr %i.eph, align 4, !tbaa !33
  %i.epk = getelementptr inbounds nuw i8, ptr %i.emg, i64 4 ; 2 uses
  %i.epl = load i32, ptr %i.epk, align 4, !tbaa !33
  %i.epm = tail call i32 @llvm.smin.i32(i32 %i.epl, i32 %i.ejz)
  store i32 %i.epm, ptr %i.epk, align 4, !tbaa !33
  %i.epn = getelementptr inbounds nuw i8, ptr %i.emg, i64 12 ; 2 uses
  %i.epo = load i32, ptr %i.epn, align 4, !tbaa !33
  %i.epp = tail call i32 @llvm.smax.i32(i32 %i.epo, i32 %i.ejz)
  store i32 %i.epp, ptr %i.epn, align 4, !tbaa !33
  %i.epq = getelementptr inbounds nuw i8, ptr %i.emg, i64 16 ; 2 uses
  %i.epr = load i32, ptr %i.epq, align 4, !tbaa !33
  %i.eps = add nsw i32 %i.epr, 1
  store i32 %i.eps, ptr %i.epq, align 4, !tbaa !33
  %i.ept = load i64, ptr %i.emf, align 8, !tbaa !116
  %i.epu = add i64 %i.ept, %i.eoc
  store i64 %i.epu, ptr %i.emf, align 8, !tbaa !116
  br label %bb.tj

bb.tj:                                            ; preds = %bb.ti, %bb.th
  %.sink4191 = phi ptr [ %i.emf, %bb.ti ], [ %i.epc, %bb.th ]
  %i.epv = getelementptr inbounds nuw i8, ptr %.sink4191, i64 8 ; 2 uses
  %i.epw = load i64, ptr %i.epv, align 8, !tbaa !117
  %i.epx = add i64 %i.epw, %indvars.iv3717
  store i64 %i.epx, ptr %i.epv, align 8, !tbaa !117
  %i.epy = getelementptr inbounds nuw i8, ptr %i.ejl, i64 %i.eoc
  %i.epz = load i8, ptr %i.epy, align 1, !tbaa !32
  %.not1870 = icmp eq i8 %i.epz, 0
  %i.eqa = getelementptr inbounds nuw [4 x i8], ptr %i.ejp, i64 %i.eoc ; 2 uses
  br i1 %.not1870, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  store i32 %i.ekm, ptr %i.eqa, align 4, !tbaa !33
  %i.eqb = load i32, ptr %i.eiu, align 4, !tbaa !96
  %i.eqc = icmp slt i32 %i.eqb, 2
  %i.eqd = load i64, ptr %i.eiv, align 8
  %i.eqe = sext i32 %i.ekm to i64                 ; 2 uses
  %i.eqf = mul i64 %i.eqd, %i.eqe
  %.sink.idx.i.i3189 = select i1 %i.eqc, i64 0, i64 %i.eqf
  %.sink.i.i3190 = getelementptr inbounds nuw i8, ptr %i.emg, i64 %.sink.idx.i.i3189 ; 6 uses
  %i.eqg = load i32, ptr %.sink.i.i3190, align 4, !tbaa !33
  %i.eqh = trunc nuw nsw i64 %i.eoc to i32        ; 2 uses
  %..i3191 = tail call i32 @llvm.smin.i32(i32 %i.eqg, i32 %i.eqh)
  store i32 %..i3191, ptr %.sink.i.i3190, align 4, !tbaa !33
  %i.eqi = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 8 ; 2 uses
  %i.eqj = load i32, ptr %i.eqi, align 4, !tbaa !33
  %i.eqk = tail call i32 @llvm.smax.i32(i32 %i.eqj, i32 %i.eqh)
  store i32 %i.eqk, ptr %i.eqi, align 4, !tbaa !33
  %i.eql = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 4 ; 2 uses
  %i.eqm = load i32, ptr %i.eql, align 4, !tbaa !33
  %i.eqn = tail call i32 @llvm.smin.i32(i32 %i.eqm, i32 %i.eka)
  store i32 %i.eqn, ptr %i.eql, align 4, !tbaa !33
  %i.eqo = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 12 ; 2 uses
  %i.eqp = load i32, ptr %i.eqo, align 4, !tbaa !33
  %i.eqq = tail call i32 @llvm.smax.i32(i32 %i.eqp, i32 %i.eka)
  store i32 %i.eqq, ptr %i.eqo, align 4, !tbaa !33
  %i.eqr = getelementptr inbounds nuw i8, ptr %.sink.i.i3190, i64 16 ; 2 uses
  %i.eqs = load i32, ptr %i.eqr, align 4, !tbaa !33
  %i.eqt = add nsw i32 %i.eqs, 1
  store i32 %i.eqt, ptr %i.eqr, align 4, !tbaa !33
  %i.equ = getelementptr inbounds nuw [16 x i8], ptr %i.emf, i64 %i.eqe ; 2 uses
  %i.eqv = load <2 x i64>, ptr %i.equ, align 8, !tbaa !40
  %i.eqw = insertelement <2 x i64> %i.ekc, i64 %i.eoc, i64 0
  %i.eqx = add <2 x i64> %i.eqv, %i.eqw
  store <2 x i64> %i.eqx, ptr %i.equ, align 8, !tbaa !40
  br label %bb.to

bb.tl:                                            ; preds = %bb.tj
  store i32 0, ptr %i.eqa, align 4, !tbaa !33
  %i.eqy = load i32, ptr %i.emg, align 4, !tbaa !33
  %i.eqz = trunc nuw nsw i64 %i.eoc to i32        ; 2 uses
  %..i3194 = tail call i32 @llvm.smin.i32(i32 %i.eqy, i32 %i.eqz)
  store i32 %..i3194, ptr %i.emg, align 4, !tbaa !33
  %i.era = getelementptr inbounds nuw i8, ptr %i.emg, i64 8 ; 2 uses
  %i.erb = load i32, ptr %i.era, align 4, !tbaa !33
  %i.erc = tail call i32 @llvm.smax.i32(i32 %i.erb, i32 %i.eqz)
  store i32 %i.erc, ptr %i.era, align 4, !tbaa !33
  %i.erd = getelementptr inbounds nuw i8, ptr %i.emg, i64 4 ; 2 uses
  %i.ere = load i32, ptr %i.erd, align 4, !tbaa !33
  %i.erf = tail call i32 @llvm.smin.i32(i32 %i.ere, i32 %i.ekb)
  store i32 %i.erf, ptr %i.erd, align 4, !tbaa !33
  %i.erg = getelementptr inbounds nuw i8, ptr %i.emg, i64 12 ; 2 uses
  %i.erh = load i32, ptr %i.erg, align 4, !tbaa !33
  %i.eri = tail call i32 @llvm.smax.i32(i32 %i.erh, i32 %i.ekb)
  store i32 %i.eri, ptr %i.erg, align 4, !tbaa !33
  %i.erj = getelementptr inbounds nuw i8, ptr %i.emg, i64 16 ; 2 uses
  %i.erk = load i32, ptr %i.erj, align 4, !tbaa !33
  %i.erl = add nsw i32 %i.erk, 1
  store i32 %i.erl, ptr %i.erj, align 4, !tbaa !33
  %i.erm = load <2 x i64>, ptr %i.emf, align 8, !tbaa !40
  %i.ern = insertelement <2 x i64> %i.ekc, i64 %i.eoc, i64 0
  %i.ero = add <2 x i64> %i.erm, %i.ern
  store <2 x i64> %i.ero, ptr %i.emf, align 8, !tbaa !40
  br label %bb.to

bb.tm:                                            ; preds = %bb.sy
  store i32 0, ptr %i.ekh, align 4, !tbaa !33
  %i.erp = getelementptr inbounds nuw [4 x i8], ptr %i.ejp, i64 %indvars.iv3714
  store i32 0, ptr %i.erp, align 4, !tbaa !33
  %i.erq = load ptr, ptr %i.eis, align 8, !tbaa !55 ; 8 uses
  %i.err = load i32, ptr %i.erq, align 4, !tbaa !33
  %i.ers = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 2 uses
  %..i3197 = tail call i32 @llvm.smin.i32(i32 %i.err, i32 %i.ers)
  %i.ert = getelementptr inbounds nuw i8, ptr %i.erq, i64 8 ; 4 uses
  %i.eru = load i32, ptr %i.ert, align 4, !tbaa !33
  %i.erv = tail call i32 @llvm.smax.i32(i32 %i.eru, i32 %i.ers)
  %i.erw = getelementptr inbounds nuw i8, ptr %i.erq, i64 4 ; 4 uses
  %i.erx = load i32, ptr %i.erw, align 4, !tbaa !33
  %i.ery = tail call i32 @llvm.smin.i32(i32 %i.erx, i32 %i.ejs)
  %i.erz = getelementptr inbounds nuw i8, ptr %i.erq, i64 12 ; 4 uses
  %i.esa = load i32, ptr %i.erz, align 4, !tbaa !33
  %i.esb = tail call i32 @llvm.smax.i32(i32 %i.esa, i32 %i.ejs)
  %i.esc = getelementptr inbounds nuw i8, ptr %i.erq, i64 16 ; 4 uses
  %i.esd = load i32, ptr %i.esc, align 4, !tbaa !33
  %i.ese = load ptr, ptr %i.eit, align 8, !tbaa !50 ; 4 uses
  %i.esf = load i64, ptr %i.ese, align 8, !tbaa !116
  %i.esg = getelementptr inbounds nuw i8, ptr %i.ese, i64 8 ; 3 uses
  %i.esh = load i64, ptr %i.esg, align 8, !tbaa !117
  store i32 %..i3197, ptr %i.erq, align 4, !tbaa !33
  store i32 %i.erv, ptr %i.ert, align 4, !tbaa !33
  %12 = tail call i32 @llvm.smin.i32(i32 %i.ery, i32 %i.ejt)
  store i32 %12, ptr %i.erw, align 4, !tbaa !33
  %i.esi = tail call i32 @llvm.smax.i32(i32 %i.esb, i32 %i.ejt)
  store i32 %i.esi, ptr %i.erz, align 4, !tbaa !33
  %i.esj = add nsw i32 %i.esd, 2
  store i32 %i.esj, ptr %i.esc, align 4, !tbaa !33
  %reass.add = shl nuw i64 %indvars.iv3714, 1
  %i.esk = add i64 %i.esf, %reass.add             ; 2 uses
  store i64 %i.esk, ptr %i.ese, align 8, !tbaa !116
  %.reass4156 = add i64 %i.esh, %invariant.op4155 ; 2 uses
  store i64 %.reass4156, ptr %i.esg, align 8, !tbaa !117
  %i.esl = or disjoint i64 %indvars.iv3714, 1     ; 5 uses
  %i.esm = load i32, ptr %i.p, align 4, !tbaa !52
  %i.esn = sext i32 %i.esm to i64
  %i.eso = icmp slt i64 %i.esl, %i.esn
  br i1 %i.eso, label %bb.tn, label %bb.to

bb.tn:                                            ; preds = %bb.tm
  %i.esp = getelementptr inbounds nuw [4 x i8], ptr %i.ejo, i64 %i.esl
  store i32 0, ptr %i.esp, align 4, !tbaa !33
  %i.esq = getelementptr inbounds nuw [4 x i8], ptr %i.ejp, i64 %i.esl
  store i32 0, ptr %i.esq, align 4, !tbaa !33
  %i.esr = load i32, ptr %i.erq, align 4, !tbaa !33
  %i.ess = trunc nuw nsw i64 %i.esl to i32        ; 2 uses
  %..i3203 = tail call i32 @llvm.smin.i32(i32 %i.esr, i32 %i.ess)
  %i.est = load i32, ptr %i.ert, align 4, !tbaa !33
  %i.esu = tail call i32 @llvm.smax.i32(i32 %i.est, i32 %i.ess)
  %i.esv = load i32, ptr %i.erw, align 4, !tbaa !33
  %i.esw = tail call i32 @llvm.smin.i32(i32 %i.esv, i32 %i.ejs)
  %i.esx = load i32, ptr %i.erz, align 4, !tbaa !33
  %i.esy = tail call i32 @llvm.smax.i32(i32 %i.esx, i32 %i.ejs)
  %i.esz = load i32, ptr %i.esc, align 4, !tbaa !33
  store i32 %..i3203, ptr %i.erq, align 4, !tbaa !33
  store i32 %i.esu, ptr %i.ert, align 4, !tbaa !33
  %13 = tail call i32 @llvm.smin.i32(i32 %i.esw, i32 %i.ejt)
  store i32 %13, ptr %i.erw, align 4, !tbaa !33
  %i.eta = tail call i32 @llvm.smax.i32(i32 %i.esy, i32 %i.ejt)
  store i32 %i.eta, ptr %i.erz, align 4, !tbaa !33
  %i.etb = add nsw i32 %i.esz, 2
  store i32 %i.etb, ptr %i.esc, align 4, !tbaa !33
  %reass.add4201 = shl nuw i64 %i.esl, 1
  %i.etc = add i64 %i.esk, %reass.add4201
  store i64 %i.etc, ptr %i.ese, align 8, !tbaa !116
  %.reass4158 = add i64 %.reass4156, %invariant.op4157
  store i64 %.reass4158, ptr %i.esg, align 8, !tbaa !117
  br label %bb.to

bb.to:                                            ; preds = %bb.tn, %bb.tl, %bb.tk, %bb.tm, %bb.tf
  %indvars.iv.next3715 = add nuw nsw i64 %indvars.iv3714, 2 ; 2 uses
  %i.etd = load i32, ptr %i.p, align 4, !tbaa !52 ; 2 uses
  %i.ete = sext i32 %i.etd to i64
  %i.etf = icmp slt i64 %indvars.iv.next3715, %i.ete
  br i1 %i.etf, label %bb.sy, label %._crit_edge3542.loopexit, !llvm.loop !334

bb.tp:                                            ; preds = %.lr.ph3551, %._crit_edge3549
  %i.etg = phi i32 [ %i.dko, %.lr.ph3551 ], [ %i.eud, %._crit_edge3549 ]
  %i.eth = phi i32 [ %i.dkq, %.lr.ph3551 ], [ %i.eue, %._crit_edge3549 ] ; 2 uses
  %indvars.iv3723 = phi i64 [ 0, %.lr.ph3551 ], [ %indvars.iv.next3724, %._crit_edge3549 ] ; 12 uses
  %i.eti = load i64, ptr %i.eiy, align 8, !tbaa !40 ; 2 uses
  %i.etj = mul i64 %i.eti, %indvars.iv3723
  %i.etk = getelementptr inbounds nuw i8, ptr %i.eix, i64 %i.etj ; 3 uses
  %i.etl = getelementptr inbounds nuw i8, ptr %i.etk, i64 %i.eti ; 2 uses
  %i.etm = load i64, ptr %i.ejb, align 8, !tbaa !40 ; 2 uses
  %i.etn = mul i64 %i.etm, %indvars.iv3723
  %i.eto = getelementptr inbounds nuw i8, ptr %i.eja, i64 %i.etn ; 4 uses
  %i.etp = getelementptr inbounds nuw i8, ptr %i.eto, i64 %i.etm ; 4 uses
  %i.etq = icmp sgt i32 %i.eth, 0
  br i1 %i.etq, label %.lr.ph3548, label %._crit_edge3549

.lr.ph3548:                                       ; preds = %bb.tp
  %i.etr = or disjoint i64 %indvars.iv3723, 1     ; 8 uses
  %i.ets = trunc nuw nsw i64 %indvars.iv3723 to i32 ; 2 uses
  %i.ett = trunc nuw nsw i64 %i.etr to i32        ; 2 uses
  %invariant.op41594203 = add nuw i64 %indvars.iv3723, %i.etr
  %invariant.op4163 = shl i64 %invariant.op41594203, 1
  %i.etu = trunc nuw nsw i64 %indvars.iv3723 to i32 ; 2 uses
  %i.etv = trunc nuw nsw i64 %indvars.iv3723 to i32 ; 2 uses
  %i.etw = trunc nuw nsw i64 %indvars.iv3723 to i32 ; 2 uses
  %i.etx = trunc nuw nsw i64 %indvars.iv3723 to i32 ; 2 uses
  %i.ety = trunc nuw nsw i64 %i.etr to i32        ; 2 uses
  %i.etz = trunc nuw nsw i64 %i.etr to i32        ; 2 uses
  %i.eua = trunc nuw nsw i64 %i.etr to i32        ; 2 uses
  %i.eub = trunc nuw nsw i64 %i.etr to i32        ; 2 uses
  %i.euc = insertelement <2 x i64> poison, i64 %i.etr, i64 1 ; 2 uses
  br label %bb.tq

._crit_edge3549.loopexit:                         ; preds = %bb.ug
  %.pre3734 = load i32, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge3549

._crit_edge3549:                                  ; preds = %._crit_edge3549.loopexit, %bb.tp
  %i.eud = phi i32 [ %.pre3734, %._crit_edge3549.loopexit ], [ %i.etg, %bb.tp ] ; 2 uses
  %i.eue = phi i32 [ %i.fcs, %._crit_edge3549.loopexit ], [ %i.eth, %bb.tp ]
  %indvars.iv.next3724 = add nuw nsw i64 %indvars.iv3723, 2 ; 2 uses
  %i.euf = sext i32 %i.eud to i64
  %i.eug = icmp slt i64 %indvars.iv.next3724, %i.euf
  br i1 %i.eug, label %bb.tp, label %.loopexit, !llvm.loop !335

bb.tq:                                            ; preds = %.lr.ph3548, %bb.ug
  %indvars.iv3720 = phi i64 [ 0, %.lr.ph3548 ], [ %indvars.iv.next3721, %bb.ug ] ; 19 uses
  %i.euh = getelementptr inbounds nuw [4 x i8], ptr %i.eto, i64 %indvars.iv3720 ; 4 uses
  %i.eui = load i32, ptr %i.euh, align 4, !tbaa !33 ; 2 uses
  %i.euj = icmp sgt i32 %i.eui, 0
  br i1 %i.euj, label %bb.tr, label %bb.uf

bb.tr:                                            ; preds = %bb.tq
  %i.euk = zext nneg i32 %i.eui to i64
  %i.eul = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %i.euk
  %i.eum = load i32, ptr %i.eul, align 4, !tbaa !33 ; 8 uses
  %i.eun = getelementptr inbounds nuw i8, ptr %i.etk, i64 %indvars.iv3720
  %i.euo = load i8, ptr %i.eun, align 1, !tbaa !32
  %.not1863 = icmp eq i8 %i.euo, 0
  br i1 %.not1863, label %bb.tv, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  store i32 %i.eum, ptr %i.euh, align 4, !tbaa !33
  %i.eup = load i32, ptr %i.eje, align 4, !tbaa !96
  %i.euq = icmp slt i32 %i.eup, 2
  %i.eur = load ptr, ptr %i.ejc, align 8, !tbaa !55 ; 2 uses
  %i.eus = load i64, ptr %i.ejf, align 8
  %i.eut = sext i32 %i.eum to i64                 ; 2 uses
  %i.euu = mul i64 %i.eus, %i.eut
  %.sink.idx.i.i3207 = select i1 %i.euq, i64 0, i64 %i.euu
  %.sink.i.i3208 = getelementptr inbounds nuw i8, ptr %i.eur, i64 %.sink.idx.i.i3207 ; 6 uses
  %i.euv = load i32, ptr %.sink.i.i3208, align 4, !tbaa !33
  %i.euw = trunc nuw nsw i64 %indvars.iv3720 to i32 ; 2 uses
  %..i3209 = tail call i32 @llvm.smin.i32(i32 %i.euv, i32 %i.euw)
  store i32 %..i3209, ptr %.sink.i.i3208, align 4, !tbaa !33
  %i.eux = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 8 ; 2 uses
  %i.euy = load i32, ptr %i.eux, align 4, !tbaa !33
  %i.euz = tail call i32 @llvm.smax.i32(i32 %i.euy, i32 %i.euw)
  store i32 %i.euz, ptr %i.eux, align 4, !tbaa !33
  %i.eva = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 4 ; 2 uses
  %i.evb = load i32, ptr %i.eva, align 4, !tbaa !33
  %i.evc = tail call i32 @llvm.smin.i32(i32 %i.evb, i32 %i.etu)
  store i32 %i.evc, ptr %i.eva, align 4, !tbaa !33
  %i.evd = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 12 ; 2 uses
  %i.eve = load i32, ptr %i.evd, align 4, !tbaa !33
  %i.evf = tail call i32 @llvm.smax.i32(i32 %i.eve, i32 %i.etu)
  store i32 %i.evf, ptr %i.evd, align 4, !tbaa !33
  %i.evg = getelementptr inbounds nuw i8, ptr %.sink.i.i3208, i64 16 ; 2 uses
  %i.evh = load i32, ptr %i.evg, align 4, !tbaa !33
  %i.evi = add nsw i32 %i.evh, 1
  store i32 %i.evi, ptr %i.evg, align 4, !tbaa !33
  %i.evj = load ptr, ptr %i.ejd, align 8, !tbaa !50 ; 2 uses
  %i.evk = getelementptr inbounds nuw [16 x i8], ptr %i.evj, i64 %i.eut ; 3 uses
  %i.evl = load i64, ptr %i.evk, align 8, !tbaa !116
  %i.evm = add i64 %i.evl, %indvars.iv3720
  store i64 %i.evm, ptr %i.evk, align 8, !tbaa !116
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
  %i.evn = ptrtoint ptr %.sroa.03251.0 to i64
  %i.evo = sub i64 %.sroa.10.0, %i.evn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.evo) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.tv:                                            ; preds = %bb.tr
  store i32 0, ptr %i.euh, align 4, !tbaa !33
  %i.evp = load ptr, ptr %i.ejc, align 8, !tbaa !55 ; 7 uses
  %i.evq = load i32, ptr %i.evp, align 4, !tbaa !33
  %i.evr = trunc nuw nsw i64 %indvars.iv3720 to i32 ; 2 uses
  %..i3212 = tail call i32 @llvm.smin.i32(i32 %i.evq, i32 %i.evr)
  store i32 %..i3212, ptr %i.evp, align 4, !tbaa !33
  %i.evs = getelementptr inbounds nuw i8, ptr %i.evp, i64 8 ; 2 uses
  %i.evt = load i32, ptr %i.evs, align 4, !tbaa !33
  %i.evu = tail call i32 @llvm.smax.i32(i32 %i.evt, i32 %i.evr)
  store i32 %i.evu, ptr %i.evs, align 4, !tbaa !33
  %i.evv = getelementptr inbounds nuw i8, ptr %i.evp, i64 4 ; 2 uses
  %i.evw = load i32, ptr %i.evv, align 4, !tbaa !33
  %i.evx = tail call i32 @llvm.smin.i32(i32 %i.evw, i32 %i.etv)
  store i32 %i.evx, ptr %i.evv, align 4, !tbaa !33
  %i.evy = getelementptr inbounds nuw i8, ptr %i.evp, i64 12 ; 2 uses
  %i.evz = load i32, ptr %i.evy, align 4, !tbaa !33
  %i.ewa = tail call i32 @llvm.smax.i32(i32 %i.evz, i32 %i.etv)
  store i32 %i.ewa, ptr %i.evy, align 4, !tbaa !33
  %i.ewb = getelementptr inbounds nuw i8, ptr %i.evp, i64 16 ; 2 uses
  %i.ewc = load i32, ptr %i.ewb, align 4, !tbaa !33
  %i.ewd = add nsw i32 %i.ewc, 1
  store i32 %i.ewd, ptr %i.ewb, align 4, !tbaa !33
  %i.ewe = load ptr, ptr %i.ejd, align 8, !tbaa !50 ; 4 uses
  %i.ewf = load i64, ptr %i.ewe, align 8, !tbaa !116
  %i.ewg = add i64 %i.ewf, %indvars.iv3720
  store i64 %i.ewg, ptr %i.ewe, align 8, !tbaa !116
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.ts
  %.sink4194 = phi ptr [ %i.ewe, %bb.tv ], [ %i.evk, %bb.ts ]
  %i.ewh = phi ptr [ %i.ewe, %bb.tv ], [ %i.evj, %bb.ts ] ; 11 uses
  %i.ewi = phi ptr [ %i.evp, %bb.tv ], [ %i.eur, %bb.ts ] ; 21 uses
  %i.ewj = getelementptr inbounds nuw i8, ptr %.sink4194, i64 8 ; 2 uses
  %i.ewk = load i64, ptr %i.ewj, align 8, !tbaa !117
  %i.ewl = add i64 %i.ewk, %indvars.iv3723
  store i64 %i.ewl, ptr %i.ewj, align 8, !tbaa !117
  %i.ewm = or disjoint i64 %indvars.iv3720, 1     ; 12 uses
  %i.ewn = getelementptr inbounds nuw i8, ptr %i.etk, i64 %i.ewm
  %i.ewo = load i8, ptr %i.ewn, align 1, !tbaa !32
  %.not1864 = icmp eq i8 %i.ewo, 0
  %i.ewp = getelementptr inbounds nuw [4 x i8], ptr %i.eto, i64 %i.ewm ; 2 uses
  br i1 %.not1864, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  store i32 %i.eum, ptr %i.ewp, align 4, !tbaa !33
  %i.ewq = load i32, ptr %i.eje, align 4, !tbaa !96
  %i.ewr = icmp slt i32 %i.ewq, 2
  %i.ews = load i64, ptr %i.ejf, align 8
  %i.ewt = sext i32 %i.eum to i64                 ; 2 uses
  %i.ewu = mul i64 %i.ews, %i.ewt
  %.sink.idx.i.i3213 = select i1 %i.ewr, i64 0, i64 %i.ewu
  %.sink.i.i3214 = getelementptr inbounds nuw i8, ptr %i.ewi, i64 %.sink.idx.i.i3213 ; 6 uses
  %i.ewv = load i32, ptr %.sink.i.i3214, align 4, !tbaa !33
  %i.eww = trunc nuw nsw i64 %i.ewm to i32        ; 2 uses
  %..i3215 = tail call i32 @llvm.smin.i32(i32 %i.ewv, i32 %i.eww)
  store i32 %..i3215, ptr %.sink.i.i3214, align 4, !tbaa !33
  %i.ewx = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 8 ; 2 uses
  %i.ewy = load i32, ptr %i.ewx, align 4, !tbaa !33
  %i.ewz = tail call i32 @llvm.smax.i32(i32 %i.ewy, i32 %i.eww)
  store i32 %i.ewz, ptr %i.ewx, align 4, !tbaa !33
  %i.exa = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 4 ; 2 uses
  %i.exb = load i32, ptr %i.exa, align 4, !tbaa !33
  %i.exc = tail call i32 @llvm.smin.i32(i32 %i.exb, i32 %i.etw)
  store i32 %i.exc, ptr %i.exa, align 4, !tbaa !33
  %i.exd = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 12 ; 2 uses
  %i.exe = load i32, ptr %i.exd, align 4, !tbaa !33
  %i.exf = tail call i32 @llvm.smax.i32(i32 %i.exe, i32 %i.etw)
  store i32 %i.exf, ptr %i.exd, align 4, !tbaa !33
  %i.exg = getelementptr inbounds nuw i8, ptr %.sink.i.i3214, i64 16 ; 2 uses
  %i.exh = load i32, ptr %i.exg, align 4, !tbaa !33
  %i.exi = add nsw i32 %i.exh, 1
  store i32 %i.exi, ptr %i.exg, align 4, !tbaa !33
  %i.exj = getelementptr inbounds nuw [16 x i8], ptr %i.ewh, i64 %i.ewt ; 3 uses
  %i.exk = load i64, ptr %i.exj, align 8, !tbaa !116
  %i.exl = add i64 %i.exk, %i.ewm
  store i64 %i.exl, ptr %i.exj, align 8, !tbaa !116
  br label %bb.tz

bb.ty:                                            ; preds = %bb.tw
  store i32 0, ptr %i.ewp, align 4, !tbaa !33
  %i.exm = load i32, ptr %i.ewi, align 4, !tbaa !33
  %i.exn = trunc nuw nsw i64 %i.ewm to i32        ; 2 uses
  %..i3218 = tail call i32 @llvm.smin.i32(i32 %i.exm, i32 %i.exn)
  store i32 %..i3218, ptr %i.ewi, align 4, !tbaa !33
  %i.exo = getelementptr inbounds nuw i8, ptr %i.ewi, i64 8 ; 2 uses
  %i.exp = load i32, ptr %i.exo, align 4, !tbaa !33
  %i.exq = tail call i32 @llvm.smax.i32(i32 %i.exp, i32 %i.exn)
  store i32 %i.exq, ptr %i.exo, align 4, !tbaa !33
  %i.exr = getelementptr inbounds nuw i8, ptr %i.ewi, i64 4 ; 2 uses
  %i.exs = load i32, ptr %i.exr, align 4, !tbaa !33
  %i.ext = tail call i32 @llvm.smin.i32(i32 %i.exs, i32 %i.etx)
  store i32 %i.ext, ptr %i.exr, align 4, !tbaa !33
  %i.exu = getelementptr inbounds nuw i8, ptr %i.ewi, i64 12 ; 2 uses
  %i.exv = load i32, ptr %i.exu, align 4, !tbaa !33
  %i.exw = tail call i32 @llvm.smax.i32(i32 %i.exv, i32 %i.etx)
  store i32 %i.exw, ptr %i.exu, align 4, !tbaa !33
  %i.exx = getelementptr inbounds nuw i8, ptr %i.ewi, i64 16 ; 2 uses
  %i.exy = load i32, ptr %i.exx, align 4, !tbaa !33
  %i.exz = add nsw i32 %i.exy, 1
  store i32 %i.exz, ptr %i.exx, align 4, !tbaa !33
  %i.eya = load i64, ptr %i.ewh, align 8, !tbaa !116
  %i.eyb = add i64 %i.eya, %i.ewm
  store i64 %i.eyb, ptr %i.ewh, align 8, !tbaa !116
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.tx
  %.sink4197 = phi ptr [ %i.ewh, %bb.ty ], [ %i.exj, %bb.tx ]
  %i.eyc = getelementptr inbounds nuw i8, ptr %.sink4197, i64 8 ; 2 uses
  %i.eyd = load i64, ptr %i.eyc, align 8, !tbaa !117
  %i.eye = add i64 %i.eyd, %indvars.iv3723
  store i64 %i.eye, ptr %i.eyc, align 8, !tbaa !117
  %i.eyf = getelementptr inbounds nuw i8, ptr %i.etl, i64 %indvars.iv3720
  %i.eyg = load i8, ptr %i.eyf, align 1, !tbaa !32
  %.not1865 = icmp eq i8 %i.eyg, 0
  %i.eyh = getelementptr inbounds nuw [4 x i8], ptr %i.etp, i64 %indvars.iv3720 ; 2 uses
  br i1 %.not1865, label %bb.ub, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  store i32 %i.eum, ptr %i.eyh, align 4, !tbaa !33
  %i.eyi = load i32, ptr %i.eje, align 4, !tbaa !96
  %i.eyj = icmp slt i32 %i.eyi, 2
  %i.eyk = load i64, ptr %i.ejf, align 8
  %i.eyl = sext i32 %i.eum to i64                 ; 2 uses
  %i.eym = mul i64 %i.eyk, %i.eyl
  %.sink.idx.i.i3219 = select i1 %i.eyj, i64 0, i64 %i.eym
  %.sink.i.i3220 = getelementptr inbounds nuw i8, ptr %i.ewi, i64 %.sink.idx.i.i3219 ; 6 uses
  %i.eyn = load i32, ptr %.sink.i.i3220, align 4, !tbaa !33
  %i.eyo = trunc nuw nsw i64 %indvars.iv3720 to i32 ; 2 uses
  %..i3221 = tail call i32 @llvm.smin.i32(i32 %i.eyn, i32 %i.eyo)
  store i32 %..i3221, ptr %.sink.i.i3220, align 4, !tbaa !33
  %i.eyp = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 8 ; 2 uses
  %i.eyq = load i32, ptr %i.eyp, align 4, !tbaa !33
  %i.eyr = tail call i32 @llvm.smax.i32(i32 %i.eyq, i32 %i.eyo)
  store i32 %i.eyr, ptr %i.eyp, align 4, !tbaa !33
  %i.eys = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 4 ; 2 uses
  %i.eyt = load i32, ptr %i.eys, align 4, !tbaa !33
  %i.eyu = tail call i32 @llvm.smin.i32(i32 %i.eyt, i32 %i.ety)
  store i32 %i.eyu, ptr %i.eys, align 4, !tbaa !33
  %i.eyv = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 12 ; 2 uses
  %i.eyw = load i32, ptr %i.eyv, align 4, !tbaa !33
  %i.eyx = tail call i32 @llvm.smax.i32(i32 %i.eyw, i32 %i.ety)
  store i32 %i.eyx, ptr %i.eyv, align 4, !tbaa !33
  %i.eyy = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 16 ; 2 uses
  %i.eyz = load i32, ptr %i.eyy, align 4, !tbaa !33
  %i.eza = add nsw i32 %i.eyz, 1
  store i32 %i.eza, ptr %i.eyy, align 4, !tbaa !33
  %i.ezb = getelementptr inbounds nuw [16 x i8], ptr %i.ewh, i64 %i.eyl ; 3 uses
  %i.ezc = load i64, ptr %i.ezb, align 8, !tbaa !116
  %i.ezd = add i64 %i.ezc, %indvars.iv3720
  store i64 %i.ezd, ptr %i.ezb, align 8, !tbaa !116
  br label %bb.uc

bb.ub:                                            ; preds = %bb.tz
  store i32 0, ptr %i.eyh, align 4, !tbaa !33
  %i.eze = load i32, ptr %i.ewi, align 4, !tbaa !33
  %i.ezf = trunc nuw nsw i64 %indvars.iv3720 to i32 ; 2 uses
  %..i3224 = tail call i32 @llvm.smin.i32(i32 %i.eze, i32 %i.ezf)
  store i32 %..i3224, ptr %i.ewi, align 4, !tbaa !33
  %i.ezg = getelementptr inbounds nuw i8, ptr %i.ewi, i64 8 ; 2 uses
  %i.ezh = load i32, ptr %i.ezg, align 4, !tbaa !33
  %i.ezi = tail call i32 @llvm.smax.i32(i32 %i.ezh, i32 %i.ezf)
  store i32 %i.ezi, ptr %i.ezg, align 4, !tbaa !33
  %i.ezj = getelementptr inbounds nuw i8, ptr %i.ewi, i64 4 ; 2 uses
  %i.ezk = load i32, ptr %i.ezj, align 4, !tbaa !33
  %i.ezl = tail call i32 @llvm.smin.i32(i32 %i.ezk, i32 %i.etz)
  store i32 %i.ezl, ptr %i.ezj, align 4, !tbaa !33
  %i.ezm = getelementptr inbounds nuw i8, ptr %i.ewi, i64 12 ; 2 uses
  %i.ezn = load i32, ptr %i.ezm, align 4, !tbaa !33
  %i.ezo = tail call i32 @llvm.smax.i32(i32 %i.ezn, i32 %i.etz)
  store i32 %i.ezo, ptr %i.ezm, align 4, !tbaa !33
  %i.ezp = getelementptr inbounds nuw i8, ptr %i.ewi, i64 16 ; 2 uses
  %i.ezq = load i32, ptr %i.ezp, align 4, !tbaa !33
  %i.ezr = add nsw i32 %i.ezq, 1
  store i32 %i.ezr, ptr %i.ezp, align 4, !tbaa !33
  %i.ezs = load i64, ptr %i.ewh, align 8, !tbaa !116
  %i.ezt = add i64 %i.ezs, %indvars.iv3720
  store i64 %i.ezt, ptr %i.ewh, align 8, !tbaa !116
  br label %bb.uc

bb.uc:                                            ; preds = %bb.ub, %bb.ua
  %.sink4200 = phi ptr [ %i.ewh, %bb.ub ], [ %i.ezb, %bb.ua ]
  %i.ezu = getelementptr inbounds nuw i8, ptr %.sink4200, i64 8 ; 2 uses
  %i.ezv = load i64, ptr %i.ezu, align 8, !tbaa !117
  %i.ezw = add i64 %i.ezv, %i.etr
  store i64 %i.ezw, ptr %i.ezu, align 8, !tbaa !117
  %i.ezx = getelementptr inbounds nuw i8, ptr %i.etl, i64 %i.ewm
  %i.ezy = load i8, ptr %i.ezx, align 1, !tbaa !32
  %.not1866 = icmp eq i8 %i.ezy, 0
  %i.ezz = getelementptr inbounds nuw [4 x i8], ptr %i.etp, i64 %i.ewm ; 2 uses
  br i1 %.not1866, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  store i32 %i.eum, ptr %i.ezz, align 4, !tbaa !33
  %i.faa = load i32, ptr %i.eje, align 4, !tbaa !96
  %i.fab = icmp slt i32 %i.faa, 2
  %i.fac = load i64, ptr %i.ejf, align 8
  %i.fad = sext i32 %i.eum to i64                 ; 2 uses
  %i.fae = mul i64 %i.fac, %i.fad
  %.sink.idx.i.i3225 = select i1 %i.fab, i64 0, i64 %i.fae
  %.sink.i.i3226 = getelementptr inbounds nuw i8, ptr %i.ewi, i64 %.sink.idx.i.i3225 ; 6 uses
  %i.faf = load i32, ptr %.sink.i.i3226, align 4, !tbaa !33
  %i.fag = trunc nuw nsw i64 %i.ewm to i32        ; 2 uses
  %..i3227 = tail call i32 @llvm.smin.i32(i32 %i.faf, i32 %i.fag)
  store i32 %..i3227, ptr %.sink.i.i3226, align 4, !tbaa !33
  %i.fah = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 8 ; 2 uses
  %i.fai = load i32, ptr %i.fah, align 4, !tbaa !33
  %i.faj = tail call i32 @llvm.smax.i32(i32 %i.fai, i32 %i.fag)
  store i32 %i.faj, ptr %i.fah, align 4, !tbaa !33
  %i.fak = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 4 ; 2 uses
  %i.fal = load i32, ptr %i.fak, align 4, !tbaa !33
  %i.fam = tail call i32 @llvm.smin.i32(i32 %i.fal, i32 %i.eua)
  store i32 %i.fam, ptr %i.fak, align 4, !tbaa !33
  %i.fan = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 12 ; 2 uses
  %i.fao = load i32, ptr %i.fan, align 4, !tbaa !33
  %i.fap = tail call i32 @llvm.smax.i32(i32 %i.fao, i32 %i.eua)
  store i32 %i.fap, ptr %i.fan, align 4, !tbaa !33
  %i.faq = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 16 ; 2 uses
  %i.far = load i32, ptr %i.faq, align 4, !tbaa !33
  %i.fas = add nsw i32 %i.far, 1
  store i32 %i.fas, ptr %i.faq, align 4, !tbaa !33
  %i.fat = getelementptr inbounds nuw [16 x i8], ptr %i.ewh, i64 %i.fad ; 2 uses
  %i.fau = load <2 x i64>, ptr %i.fat, align 8, !tbaa !40
  %i.fav = insertelement <2 x i64> %i.euc, i64 %i.ewm, i64 0
  %i.faw = add <2 x i64> %i.fau, %i.fav
  store <2 x i64> %i.faw, ptr %i.fat, align 8, !tbaa !40
  br label %bb.ug

bb.ue:                                            ; preds = %bb.uc
  store i32 0, ptr %i.ezz, align 4, !tbaa !33
  %i.fax = load i32, ptr %i.ewi, align 4, !tbaa !33
  %i.fay = trunc nuw nsw i64 %i.ewm to i32        ; 2 uses
  %..i3230 = tail call i32 @llvm.smin.i32(i32 %i.fax, i32 %i.fay)
  store i32 %..i3230, ptr %i.ewi, align 4, !tbaa !33
  %i.faz = getelementptr inbounds nuw i8, ptr %i.ewi, i64 8 ; 2 uses
  %i.fba = load i32, ptr %i.faz, align 4, !tbaa !33
  %i.fbb = tail call i32 @llvm.smax.i32(i32 %i.fba, i32 %i.fay)
  store i32 %i.fbb, ptr %i.faz, align 4, !tbaa !33
  %i.fbc = getelementptr inbounds nuw i8, ptr %i.ewi, i64 4 ; 2 uses
  %i.fbd = load i32, ptr %i.fbc, align 4, !tbaa !33
  %i.fbe = tail call i32 @llvm.smin.i32(i32 %i.fbd, i32 %i.eub)
  store i32 %i.fbe, ptr %i.fbc, align 4, !tbaa !33
  %i.fbf = getelementptr inbounds nuw i8, ptr %i.ewi, i64 12 ; 2 uses
  %i.fbg = load i32, ptr %i.fbf, align 4, !tbaa !33
  %i.fbh = tail call i32 @llvm.smax.i32(i32 %i.fbg, i32 %i.eub)
  store i32 %i.fbh, ptr %i.fbf, align 4, !tbaa !33
  %i.fbi = getelementptr inbounds nuw i8, ptr %i.ewi, i64 16 ; 2 uses
  %i.fbj = load i32, ptr %i.fbi, align 4, !tbaa !33
  %i.fbk = add nsw i32 %i.fbj, 1
  store i32 %i.fbk, ptr %i.fbi, align 4, !tbaa !33
  %i.fbl = load <2 x i64>, ptr %i.ewh, align 8, !tbaa !40
  %i.fbm = insertelement <2 x i64> %i.euc, i64 %i.ewm, i64 0
  %i.fbn = add <2 x i64> %i.fbl, %i.fbm
  store <2 x i64> %i.fbn, ptr %i.ewh, align 8, !tbaa !40
  br label %bb.ug

bb.uf:                                            ; preds = %bb.tq
  store i32 0, ptr %i.euh, align 4, !tbaa !33
  %i.fbo = or disjoint i64 %indvars.iv3720, 1     ; 5 uses
  %i.fbp = getelementptr inbounds nuw [4 x i8], ptr %i.eto, i64 %i.fbo
  store i32 0, ptr %i.fbp, align 4, !tbaa !33
  %i.fbq = getelementptr inbounds nuw [4 x i8], ptr %i.etp, i64 %indvars.iv3720
  store i32 0, ptr %i.fbq, align 4, !tbaa !33
  %i.fbr = getelementptr inbounds nuw [4 x i8], ptr %i.etp, i64 %i.fbo
  store i32 0, ptr %i.fbr, align 4, !tbaa !33
  %i.fbs = load ptr, ptr %i.ejc, align 8, !tbaa !55 ; 6 uses
  %i.fbt = load i32, ptr %i.fbs, align 4, !tbaa !33
  %i.fbu = trunc nuw nsw i64 %indvars.iv3720 to i32 ; 4 uses
  %..i3233 = tail call i32 @llvm.smin.i32(i32 %i.fbt, i32 %i.fbu)
  %i.fbv = getelementptr inbounds nuw i8, ptr %i.fbs, i64 8 ; 2 uses
  %i.fbw = load i32, ptr %i.fbv, align 4, !tbaa !33
  %i.fbx = tail call i32 @llvm.smax.i32(i32 %i.fbw, i32 %i.fbu)
  %i.fby = getelementptr inbounds nuw i8, ptr %i.fbs, i64 4 ; 2 uses
  %i.fbz = load i32, ptr %i.fby, align 4, !tbaa !33
  %i.fca = tail call i32 @llvm.smin.i32(i32 %i.fbz, i32 %i.ets)
  %i.fcb = getelementptr inbounds nuw i8, ptr %i.fbs, i64 12 ; 2 uses
  %i.fcc = load i32, ptr %i.fcb, align 4, !tbaa !33
  %i.fcd = tail call i32 @llvm.smax.i32(i32 %i.fcc, i32 %i.ets)
  %i.fce = getelementptr inbounds nuw i8, ptr %i.fbs, i64 16 ; 2 uses
  %i.fcf = load i32, ptr %i.fce, align 4, !tbaa !33
  %i.fcg = load ptr, ptr %i.ejd, align 8, !tbaa !50 ; 3 uses
  %i.fch = load i64, ptr %i.fcg, align 8, !tbaa !116
  %i.fci = add i64 %i.fch, %indvars.iv3720
  %i.fcj = getelementptr inbounds nuw i8, ptr %i.fcg, i64 8 ; 2 uses
  %i.fck = load i64, ptr %i.fcj, align 8, !tbaa !117
  %i.fcl = trunc nuw nsw i64 %i.fbo to i32        ; 4 uses
  %..i3236 = tail call i32 @llvm.smin.i32(i32 %..i3233, i32 %i.fcl)
  %i.fcm = tail call i32 @llvm.umax.i32(i32 %i.fbx, i32 %i.fcl)
  %i.fcn = add i64 %i.fci, %i.fbo
  %..i3239 = tail call i32 @llvm.smin.i32(i32 %..i3236, i32 %i.fbu)
  %14 = tail call i32 @llvm.umax.i32(i32 %i.fcm, i32 %i.fbu)
  %15 = tail call i32 @llvm.smin.i32(i32 %i.fca, i32 %i.ett)
  %i.fco = tail call i32 @llvm.smax.i32(i32 %i.fcd, i32 %i.ett)
  %i.fcp = add i64 %i.fcn, %indvars.iv3720
  %..i3242 = tail call i32 @llvm.smin.i32(i32 %..i3239, i32 %i.fcl)
  store i32 %..i3242, ptr %i.fbs, align 4, !tbaa !33
  %16 = tail call i32 @llvm.umax.i32(i32 %14, i32 %i.fcl)
  store i32 %16, ptr %i.fbv, align 4, !tbaa !33
  store i32 %15, ptr %i.fby, align 4, !tbaa !33
  store i32 %i.fco, ptr %i.fcb, align 4, !tbaa !33
  %i.fcq = add nsw i32 %i.fcf, 4
  store i32 %i.fcq, ptr %i.fce, align 4, !tbaa !33
  %i.fcr = add i64 %i.fcp, %i.fbo
  store i64 %i.fcr, ptr %i.fcg, align 8, !tbaa !116
  %.reass4164 = add i64 %i.fck, %invariant.op4163
  store i64 %.reass4164, ptr %i.fcj, align 8, !tbaa !117
  br label %bb.ug

bb.ug:                                            ; preds = %bb.uf, %bb.ue, %bb.ud
  %indvars.iv.next3721 = add nuw nsw i64 %indvars.iv3720, 2 ; 2 uses
  %i.fcs = load i32, ptr %i.p, align 4, !tbaa !52 ; 2 uses
  %i.fct = sext i32 %i.fcs to i64
  %i.fcu = icmp slt i64 %indvars.iv.next3721, %i.fct
  br i1 %i.fcu, label %bb.tq, label %._crit_edge3549.loopexit, !llvm.loop !336

.loopexit:                                        ; preds = %._crit_edge3529, %._crit_edge3536, %._crit_edge3542, %._crit_edge3549, %.preheader3288, %.preheader3286, %.preheader3284, %.preheader
  %i.fcv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fcw = load i32, ptr %i.fcv, align 8, !tbaa !95
  %i.fcx = icmp sgt i32 %i.fcw, 0
  br i1 %i.fcx, label %.lr.ph.i3243, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit

.lr.ph.i3243:                                     ; preds = %.loopexit
  %i.fcy = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fcz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fda = load ptr, ptr %i.fcz, align 8, !tbaa !55
  %i.fdb = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.fdc = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.fdd = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.fde = load ptr, ptr %i.fdd, align 8, !tbaa !55
  %i.fdf = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.fdg = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.fdh = load ptr, ptr %i.fdg, align 8
  br label %bb.uh

bb.uh:                                            ; preds = %bb.uk, %.lr.ph.i3243
  %indvars.iv.i3244 = phi i64 [ 0, %.lr.ph.i3243 ], [ %indvars.iv.next.i3248, %bb.uk ] ; 4 uses
  %i.fdi = load i32, ptr %i.fcy, align 4, !tbaa !96
  %i.fdj = icmp slt i32 %i.fdi, 2
  %i.fdk = load i64, ptr %i.fdb, align 8
  %i.fdl = mul i64 %i.fdk, %indvars.iv.i3244
  %.sink.idx.i.i3245 = select i1 %i.fdj, i64 0, i64 %i.fdl
  %.sink.i.i3246 = getelementptr inbounds nuw i8, ptr %i.fda, i64 %.sink.idx.i.i3245 ; 6 uses
  %i.fdm = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 16
  %i.fdn = load i32, ptr %i.fdm, align 4, !tbaa !33 ; 2 uses
  %i.fdo = load i32, ptr %i.fdc, align 4, !tbaa !96
  %i.fdp = icmp slt i32 %i.fdo, 2
  %i.fdq = load i64, ptr %i.fdf, align 8
  %i.fdr = mul i64 %i.fdq, %indvars.iv.i3244
  %.sink.idx.i25.i = select i1 %i.fdp, i64 0, i64 %i.fdr
  %.sink.i26.i = getelementptr inbounds nuw i8, ptr %i.fde, i64 %.sink.idx.i25.i
  %.not.i3247 = icmp eq i32 %i.fdn, 0
  br i1 %.not.i3247, label %bb.uj, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.fds = uitofp i32 %i.fdn to double
  %i.fdt = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8 ; 2 uses
  %i.fdu = load <2 x i32>, ptr %i.fdt, align 4, !tbaa !33
  %i.fdv = load <2 x i32>, ptr %.sink.i.i3246, align 4, !tbaa !33
  %i.fdw = add <2 x i32> %i.fdu, splat (i32 1)
  %i.fdx = sub <2 x i32> %i.fdw, %i.fdv
  store <2 x i32> %i.fdx, ptr %i.fdt, align 4, !tbaa !33
  %i.fdy = getelementptr inbounds nuw [16 x i8], ptr %i.fdh, i64 %indvars.iv.i3244
  %i.fdz = load <2 x i64>, ptr %i.fdy, align 8, !tbaa !40
  %i.fea = uitofp <2 x i64> %i.fdz to <2 x double>
  %i.feb = insertelement <2 x double> poison, double %i.fds, i64 0
  %i.fec = shufflevector <2 x double> %i.feb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fed = fdiv <2 x double> %i.fea, %i.fec
  br label %bb.uk

bb.uj:                                            ; preds = %bb.uh
  %i.fee = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8
  store i32 0, ptr %i.fee, align 4, !tbaa !33
  %i.fef = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 12
  store i32 0, ptr %i.fef, align 4, !tbaa !33
  store i32 -1, ptr %.sink.i.i3246, align 4, !tbaa !33
  br label %bb.uk

bb.uk:                                            ; preds = %bb.uj, %bb.ui
  %i.feg = phi <2 x double> [ splat (double +qnan), %bb.uj ], [ %i.fed, %bb.ui ]
  store <2 x double> %i.feg, ptr %.sink.i26.i, align 8, !tbaa !98
  %indvars.iv.next.i3248 = add nuw nsw i64 %indvars.iv.i3244, 1 ; 2 uses
  %i.feh = load i32, ptr %i.fcv, align 8, !tbaa !95
  %i.fei = sext i32 %i.feh to i64
  %i.fej = icmp slt i64 %indvars.iv.next.i3248, %i.fei
  br i1 %i.fej, label %bb.uh, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, !llvm.loop !7

_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit: ; preds = %bb.uk, %.loopexit
  %.not.i.i.i3249 = icmp eq ptr %.sroa.03251.0, null
  br i1 %.not.i.i.i3249, label %_ZNSt6vectorIiSaIiEED2Ev.exit3250, label %bb.ul

bb.ul:                                            ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit
  %i.fek = ptrtoint ptr %.sroa.03251.0 to i64
  %i.fel = sub i64 %.sroa.10.0, %i.fek
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.fel) #17
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
  %i.ftj = load i16, ptr %i.fti, align 2, !tbaa !54
  %i.ftk = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.fii
  store i16 %i.ftj, ptr %i.ftk, align 2, !tbaa !54
  br label %bb.ajj

bb.ajc:                                           ; preds = %.preheader5046._crit_edge
  %i.ftl = sext i32 %.lcssa5168 to i64            ; 8 uses
  %i.ftm = getelementptr inbounds i8, ptr %i.eps, i64 %i.ftl
  %i.ftn = load i8, ptr %i.ftm, align 1, !tbaa !32
  %.not3483 = icmp eq i8 %i.ftn, 0
  br i1 %.not3483, label %bb.ahv, label %bb.ajd

bb.ajd:                                           ; preds = %bb.ajc
  %i.fto = getelementptr i8, ptr %i.epu, i64 %.16.lcssa ; 2 uses
  %i.ftp = getelementptr i8, ptr %i.fto, i64 3
  %i.ftq = load i8, ptr %i.ftp, align 1, !tbaa !32
  %.not3486 = icmp eq i8 %i.ftq, 0
  br i1 %.not3486, label %bb.aji, label %bb.aje

bb.aje:                                           ; preds = %bb.ajd
  %i.ftr = getelementptr inbounds i8, ptr %i.epv, i64 %i.ftl
  %i.fts = load i8, ptr %i.ftr, align 1, !tbaa !32
  %.not3487 = icmp eq i8 %i.fts, 0
  br i1 %.not3487, label %bb.ajh, label %bb.ajf

bb.ajf:                                           ; preds = %bb.aje
  %i.ftt = load i8, ptr %i.fto, align 1, !tbaa !32
  %.not3488 = icmp eq i8 %i.ftt, 0
  br i1 %.not3488, label %bb.ajg, label %bb.aid

bb.ajg:                                           ; preds = %bb.ajf
  %i.ftu = getelementptr inbounds [2 x i8], ptr %i.eqc, i64 %i.ftl
  %i.ftv = load i16, ptr %i.ftu, align 2, !tbaa !54
  %i.ftw = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %.16.lcssa
  %i.ftx = load i16, ptr %i.ftw, align 2, !tbaa !54
  %i.fty = tail call fastcc noundef zeroext i16 @_ZN2cv19connectedcomponentsL9set_unionItEET_PS2_S2_S2_(ptr noundef %.sroa.05029.0, i16 noundef zeroext %i.ftv, i16 noundef zeroext %i.ftx)
  %i.ftz = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.ftl
  store i16 %i.fty, ptr %i.ftz, align 2, !tbaa !54
  br label %bb.ajj

bb.ajh:                                           ; preds = %bb.aje
  %i.fua = getelementptr inbounds [2 x i8], ptr %i.eqc, i64 %i.ftl
  %i.fub = load i16, ptr %i.fua, align 2, !tbaa !54
  %i.fuc = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %.16.lcssa
  %i.fud = load i16, ptr %i.fuc, align 2, !tbaa !54
  %i.fue = tail call fastcc noundef zeroext i16 @_ZN2cv19connectedcomponentsL9set_unionItEET_PS2_S2_S2_(ptr noundef %.sroa.05029.0, i16 noundef zeroext %i.fub, i16 noundef zeroext %i.fud)
  %i.fuf = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.ftl
  store i16 %i.fue, ptr %i.fuf, align 2, !tbaa !54
  br label %bb.ajj

bb.aji:                                           ; preds = %bb.ajd
  %i.fug = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %.16.lcssa
  %i.fuh = load i16, ptr %i.fug, align 2, !tbaa !54
  %i.fui = getelementptr inbounds [2 x i8], ptr %i.epz, i64 %i.ftl
  store i16 %i.fuh, ptr %i.fui, align 2, !tbaa !54
  br label %bb.ajj

bb.ajj:                                           ; preds = %bb.aq, %bb.ajb, %bb.agj, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4935, %bb.agl, %bb.ago, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4938, %bb.agq, %bb.ags, %bb.agv, %bb.agu, %bb.agy, %bb.ahb, %bb.aha, %bb.ahc, %bb.ahh, %bb.ahf, %bb.ahq, %bb.ahp, %bb.aho, %bb.ahl, %bb.ahz, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4941, %bb.ahx, %bb.aht, %bb.ahu, %bb.aih, %bb.aie, %bb.aif, %bb.aig, %bb.ain, %bb.aio, %bb.aik, %bb.ail, %bb.aiw, %bb.aiu, %bb.aiv, %bb.ais, %bb.aji, %bb.ajh, %bb.ajg, %bb.ae, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3865, %bb.ah, %bb.ag, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3874, %bb.ao, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3868, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3871, %._crit_edge5541
  %.124 = phi i16 [ %.153215.lcssa, %._crit_edge5541 ], [ %.102, %bb.ahq ], [ %i.de, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3865 ], [ %.03200.lcssa, %bb.ae ], [ %i.dp, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3868 ], [ %i.dq, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3871 ], [ %i.dx, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit3874 ], [ %.33203, %bb.ao ], [ %.23202.ph, %bb.ag ], [ %.23202.ph, %bb.ah ], [ %.23202.ph, %bb.aq ], [ %.115, %bb.agj ], [ %i.fmn, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4935 ], [ %.98.lcssa, %bb.agl ], [ %.117, %bb.ahf ], [ %.118, %bb.ahh ], [ %.113.ph, %bb.agy ], [ %.113.ph, %bb.aha ], [ %.113.ph, %bb.ahb ], [ %.113.ph, %bb.ahc ], [ %.122, %bb.ais ], [ %.122, %bb.aiu ], [ %.122, %bb.aiv ], [ %.122, %bb.aiw ], [ %.113.ph, %bb.ajb ], [ %.119, %bb.aho ], [ %.119, %bb.ahp ], [ %.116, %bb.agu ], [ %.116, %bb.agv ], [ %.110.ph, %bb.aik ], [ %.110.ph, %bb.ail ], [ %.110.ph, %bb.ain ], [ %.110.ph, %bb.aio ], [ %.121, %bb.aie ], [ %.121, %bb.aif ], [ %.114.ph, %bb.ajg ], [ %.114.ph, %bb.ajh ], [ %.114.ph, %bb.aji ], [ %.120, %bb.ahx ], [ %i.fql, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4941 ], [ %.120, %bb.ahz ], [ %.107, %bb.aig ], [ %.107, %bb.aih ], [ %.105, %bb.aht ], [ %.105, %bb.ahu ], [ %.102, %bb.ago ], [ %.102, %bb.agq ], [ %i.fne, %_ZN2cv19connectedcomponentsL37checkLabelTypeOverflowBeforeIncrementItEEvT_.exit4938 ], [ %.102, %bb.ags ], [ %.102, %bb.ahl ] ; 3 uses
  %i.fuj = icmp ugt i16 %.124, 1
  br i1 %i.fuj, label %.lr.ph.preheader.i, label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.ajj
  %wide.trip.count.i = zext i16 %.124 to i64
  %i.fuk = add nsw i64 %wide.trip.count.i, -1     ; 3 uses
  %xtraiter = and i64 %i.fuk, 1
  %i.ful = icmp eq i16 %.124, 2
  br i1 %i.ful, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.fuk, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ajo, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.ajo ] ; 5 uses
  %.01517.i = phi i16 [ 1, %.lr.ph.preheader.i.new ], [ %.1.i4942.1, %bb.ajo ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.ajo ]
  %i.fum = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %indvars.iv.i ; 2 uses
  %i.fun = load i16, ptr %i.fum, align 2, !tbaa !54
  %i.fuo = zext i16 %i.fun to i64                 ; 2 uses
  %i.fup = icmp samesign ugt i64 %indvars.iv.i, %i.fuo
  br i1 %i.fup, label %bb.ajk, label %bb.ajl

bb.ajk:                                           ; preds = %.lr.ph.i
  %i.fuq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.fuo
  %i.fur = load i16, ptr %i.fuq, align 2, !tbaa !54
  br label %.lr.ph.i.1

bb.ajl:                                           ; preds = %.lr.ph.i
  %i.fus = add i16 %.01517.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ajl, %bb.ajk
  %.01517.sink.i = phi i16 [ %i.fur, %bb.ajk ], [ %.01517.i, %bb.ajl ]
  %.1.i4942 = phi i16 [ %.01517.i, %bb.ajk ], [ %i.fus, %bb.ajl ] ; 3 uses
  store i16 %.01517.sink.i, ptr %i.fum, align 2, !tbaa !54
  %i.fut = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %indvars.iv.i
  %i.fuu = getelementptr inbounds nuw i8, ptr %i.fut, i64 2 ; 2 uses
  %i.fuv = load i16, ptr %i.fuu, align 2, !tbaa !54
  %i.fuw = zext i16 %i.fuv to i64                 ; 2 uses
  %.not7297 = icmp samesign ult i64 %indvars.iv.i, %i.fuw
  br i1 %.not7297, label %bb.ajm, label %bb.ajn

bb.ajm:                                           ; preds = %.lr.ph.i.1
  %i.fux = add i16 %.1.i4942, 1
  br label %bb.ajo

bb.ajn:                                           ; preds = %.lr.ph.i.1
  %i.fuy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.fuw
  %i.fuz = load i16, ptr %i.fuy, align 2, !tbaa !54
  br label %bb.ajo

bb.ajo:                                           ; preds = %bb.ajn, %bb.ajm
  %.01517.sink.i.1 = phi i16 [ %i.fuz, %bb.ajn ], [ %.1.i4942, %bb.ajm ]
  %.1.i4942.1 = phi i16 [ %.1.i4942, %bb.ajn ], [ %i.fux, %bb.ajm ] ; 3 uses
  store i16 %.01517.sink.i.1, ptr %i.fuu, align 2, !tbaa !54
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
  %lcmp.mod7296 = trunc i64 %i.fuk to i1
  tail call void @llvm.assume(i1 %lcmp.mod7296)
  %i.fva = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fvb = load i16, ptr %i.fva, align 2, !tbaa !54
  %i.fvc = zext i16 %i.fvb to i64                 ; 2 uses
  %i.fvd = icmp samesign ugt i64 %indvars.iv.i.epil.init, %i.fvc
  br i1 %i.fvd, label %bb.ajq, label %bb.ajp

bb.ajp:                                           ; preds = %.lr.ph.i.epil.preheader
  %i.fve = add i16 %.01517.i.epil.init, 1
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa

bb.ajq:                                           ; preds = %.lr.ph.i.epil.preheader
  %i.fvf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.fvc
  %i.fvg = load i16, ptr %i.fvf, align 2, !tbaa !54
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa: ; preds = %bb.ajq, %bb.ajp
  %.01517.sink.i.epil = phi i16 [ %i.fvg, %bb.ajq ], [ %.01517.i.epil.init, %bb.ajp ]
  %.1.i4942.epil = phi i16 [ %.01517.i.epil.init, %bb.ajq ], [ %i.fve, %bb.ajp ]
  store i16 %.01517.sink.i.epil, ptr %i.fva, align 2, !tbaa !54
  br label %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit

_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit: ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa, %bb.ajj
  %.015.lcssa.i = phi i16 [ 1, %bb.ajj ], [ %.1.i4942.1, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.unr-lcssa ], [ %.1.i4942.epil, %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit.loopexit.epilog-lcssa ] ; 2 uses
  %i.fvh = zext i16 %.015.lcssa.i to i32
  invoke void @_ZN2cv19connectedcomponents9CCStatsOp4initEi(ptr noundef nonnull align 8 dereferenceable(460) %4, i32 noundef %i.fvh)
          to label %.preheader unwind label %bb.ald

.preheader:                                       ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit
  %i.fvi = icmp sgt i32 %i.b, 1
  br i1 %i.fvi, label %.lr.ph5610, label %._crit_edge5611

.lr.ph5610:                                       ; preds = %.preheader
  %i.fvj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fvk = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fvl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fvm = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.fvn = icmp sgt i32 %i.n, 1
  %i.fvo = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 6 uses
  %i.fvp = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.fvq = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 6 uses
  %i.fvr = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 6 uses
  %i.fvs = sext i32 %i.ak to i64
  %i.fvt = zext nneg i32 %i.ah to i64
  %.pre6052 = load ptr, ptr %i.fvj, align 8, !tbaa !55
  %.pre6053 = load ptr, ptr %i.fvl, align 8, !tbaa !55
  br label %bb.ajr

bb.ajr:                                           ; preds = %.lr.ph5610, %bb.akp
  %indvars.iv6023 = phi i64 [ 0, %.lr.ph5610 ], [ %indvars.iv.next6024, %bb.akp ] ; 19 uses
  %i.fvu = load i64, ptr %i.fvk, align 8, !tbaa !40 ; 2 uses
  %i.fvv = mul i64 %i.fvu, %indvars.iv6023
  %i.fvw = getelementptr inbounds nuw i8, ptr %.pre6052, i64 %i.fvv ; 4 uses
  %i.fvx = getelementptr inbounds nuw i8, ptr %i.fvw, i64 %i.fvu ; 3 uses
  %i.fvy = load i64, ptr %i.fvm, align 8, !tbaa !40 ; 2 uses
  %i.fvz = mul i64 %i.fvy, %indvars.iv6023
  %i.fwa = getelementptr inbounds nuw i8, ptr %.pre6053, i64 %i.fvz ; 5 uses
  %i.fwb = getelementptr inbounds nuw i8, ptr %i.fwa, i64 %i.fvy ; 6 uses
  br i1 %i.fvn, label %.lr.ph5606, label %._crit_edge5607

.lr.ph5606:                                       ; preds = %bb.ajr
  %i.fwc = or disjoint i64 %indvars.iv6023, 1     ; 8 uses
  %i.fwd = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.fwe = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.fwf = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.fwg = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.fwh = trunc nuw nsw i64 %i.fwc to i32        ; 2 uses
  %i.fwi = trunc nuw nsw i64 %i.fwc to i32        ; 2 uses
  %i.fwj = trunc nuw nsw i64 %i.fwc to i32        ; 2 uses
  %i.fwk = trunc nuw nsw i64 %i.fwc to i32        ; 2 uses
  %i.fwl = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.fwm = trunc nuw nsw i64 %i.fwc to i32        ; 2 uses
  %invariant.op6746 = add nuw i64 %indvars.iv6023, %i.fwc
  %invariant.op6700 = shl i64 %invariant.op6746, 1
  %i.fwn = insertelement <2 x i64> poison, i64 %i.fwc, i64 1 ; 2 uses
  br label %bb.ajs

bb.ajs:                                           ; preds = %.lr.ph5606, %bb.akg
  %indvars.iv6020 = phi i64 [ 0, %.lr.ph5606 ], [ %indvars.iv.next6021, %bb.akg ] ; 19 uses
  %i.fwo = getelementptr inbounds nuw [2 x i8], ptr %i.fwa, i64 %indvars.iv6020 ; 3 uses
  %i.fwp = load i16, ptr %i.fwo, align 2, !tbaa !54 ; 2 uses
  %.not3837 = icmp eq i16 %i.fwp, 0
  br i1 %.not3837, label %bb.akf, label %bb.ajt

bb.ajt:                                           ; preds = %bb.ajs
  %i.fwq = zext i16 %i.fwp to i64
  %i.fwr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.fwq
  %i.fws = load i16, ptr %i.fwr, align 2, !tbaa !54 ; 8 uses
  %i.fwt = getelementptr inbounds nuw i8, ptr %i.fvw, i64 %indvars.iv6020
  %i.fwu = load i8, ptr %i.fwt, align 1, !tbaa !32
  %.not3838 = icmp eq i8 %i.fwu, 0
  br i1 %.not3838, label %bb.ajv, label %bb.aju

bb.aju:                                           ; preds = %bb.ajt
  store i16 %i.fws, ptr %i.fwo, align 2, !tbaa !54
  %i.fwv = load i32, ptr %i.fvo, align 4, !tbaa !96
  %i.fww = icmp slt i32 %i.fwv, 2
  %i.fwx = load ptr, ptr %i.fvp, align 8, !tbaa !55 ; 2 uses
  %i.fwy = load i64, ptr %i.fvq, align 8
  %i.fwz = zext i16 %i.fws to i64                 ; 2 uses
  %i.fxa = mul i64 %i.fwy, %i.fwz
  %.sink.idx.i.i = select i1 %i.fww, i64 0, i64 %i.fxa
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.fwx, i64 %.sink.idx.i.i ; 6 uses
  %i.fxb = load i32, ptr %.sink.i.i, align 4, !tbaa !33
  %i.fxc = trunc nuw nsw i64 %indvars.iv6020 to i32 ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.fxb, i32 %i.fxc)
  store i32 %..i, ptr %.sink.i.i, align 4, !tbaa !33
  %i.fxd = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  %i.fxe = load i32, ptr %i.fxd, align 4, !tbaa !33
  %i.fxf = tail call i32 @llvm.smax.i32(i32 %i.fxe, i32 %i.fxc)
  store i32 %i.fxf, ptr %i.fxd, align 4, !tbaa !33
  %i.fxg = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 4 ; 2 uses
  %i.fxh = load i32, ptr %i.fxg, align 4, !tbaa !33
  %i.fxi = tail call i32 @llvm.smin.i32(i32 %i.fxh, i32 %i.fwd)
  store i32 %i.fxi, ptr %i.fxg, align 4, !tbaa !33
  %i.fxj = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 12 ; 2 uses
  %i.fxk = load i32, ptr %i.fxj, align 4, !tbaa !33
  %i.fxl = tail call i32 @llvm.smax.i32(i32 %i.fxk, i32 %i.fwd)
  store i32 %i.fxl, ptr %i.fxj, align 4, !tbaa !33
  %i.fxm = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16 ; 2 uses
  %i.fxn = load i32, ptr %i.fxm, align 4, !tbaa !33
  %i.fxo = add nsw i32 %i.fxn, 1
  store i32 %i.fxo, ptr %i.fxm, align 4, !tbaa !33
  %i.fxp = load ptr, ptr %i.fvr, align 8, !tbaa !50 ; 2 uses
  %i.fxq = getelementptr inbounds nuw [16 x i8], ptr %i.fxp, i64 %i.fwz ; 3 uses
  %i.fxr = load i64, ptr %i.fxq, align 8, !tbaa !116
  %i.fxs = add i64 %i.fxr, %indvars.iv6020
  store i64 %i.fxs, ptr %i.fxq, align 8, !tbaa !116
  br label %bb.ajw

bb.ajv:                                           ; preds = %bb.ajt
  store i16 0, ptr %i.fwo, align 2, !tbaa !54
  %i.fxt = load ptr, ptr %i.fvp, align 8, !tbaa !55 ; 7 uses
  %i.fxu = load i32, ptr %i.fxt, align 4, !tbaa !33
  %i.fxv = trunc nuw nsw i64 %indvars.iv6020 to i32 ; 2 uses
  %..i4945 = tail call i32 @llvm.smin.i32(i32 %i.fxu, i32 %i.fxv)
  store i32 %..i4945, ptr %i.fxt, align 4, !tbaa !33
  %i.fxw = getelementptr inbounds nuw i8, ptr %i.fxt, i64 8 ; 2 uses
  %i.fxx = load i32, ptr %i.fxw, align 4, !tbaa !33
  %i.fxy = tail call i32 @llvm.smax.i32(i32 %i.fxx, i32 %i.fxv)
  store i32 %i.fxy, ptr %i.fxw, align 4, !tbaa !33
  %i.fxz = getelementptr inbounds nuw i8, ptr %i.fxt, i64 4 ; 2 uses
  %i.fya = load i32, ptr %i.fxz, align 4, !tbaa !33
  %i.fyb = tail call i32 @llvm.smin.i32(i32 %i.fya, i32 %i.fwe)
  store i32 %i.fyb, ptr %i.fxz, align 4, !tbaa !33
  %i.fyc = getelementptr inbounds nuw i8, ptr %i.fxt, i64 12 ; 2 uses
  %i.fyd = load i32, ptr %i.fyc, align 4, !tbaa !33
  %i.fye = tail call i32 @llvm.smax.i32(i32 %i.fyd, i32 %i.fwe)
  store i32 %i.fye, ptr %i.fyc, align 4, !tbaa !33
  %i.fyf = getelementptr inbounds nuw i8, ptr %i.fxt, i64 16 ; 2 uses
  %i.fyg = load i32, ptr %i.fyf, align 4, !tbaa !33
  %i.fyh = add nsw i32 %i.fyg, 1
  store i32 %i.fyh, ptr %i.fyf, align 4, !tbaa !33
  %i.fyi = load ptr, ptr %i.fvr, align 8, !tbaa !50 ; 4 uses
  %i.fyj = load i64, ptr %i.fyi, align 8, !tbaa !116
  %i.fyk = add i64 %i.fyj, %indvars.iv6020
  store i64 %i.fyk, ptr %i.fyi, align 8, !tbaa !116
  br label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv, %bb.aju
  %.sink6720 = phi ptr [ %i.fyi, %bb.ajv ], [ %i.fxq, %bb.aju ]
  %i.fyl = phi ptr [ %i.fyi, %bb.ajv ], [ %i.fxp, %bb.aju ] ; 11 uses
  %i.fym = phi ptr [ %i.fxt, %bb.ajv ], [ %i.fwx, %bb.aju ] ; 21 uses
  %i.fyn = getelementptr inbounds nuw i8, ptr %.sink6720, i64 8 ; 2 uses
  %i.fyo = load i64, ptr %i.fyn, align 8, !tbaa !117
  %i.fyp = add i64 %i.fyo, %indvars.iv6023
  store i64 %i.fyp, ptr %i.fyn, align 8, !tbaa !117
  %i.fyq = or disjoint i64 %indvars.iv6020, 1     ; 12 uses
  %i.fyr = getelementptr inbounds nuw i8, ptr %i.fvw, i64 %i.fyq
  %i.fys = load i8, ptr %i.fyr, align 1, !tbaa !32
  %.not3839 = icmp eq i8 %i.fys, 0
  %i.fyt = getelementptr inbounds nuw [2 x i8], ptr %i.fwa, i64 %i.fyq ; 2 uses
  br i1 %.not3839, label %bb.ajy, label %bb.ajx

bb.ajx:                                           ; preds = %bb.ajw
  store i16 %i.fws, ptr %i.fyt, align 2, !tbaa !54
  %i.fyu = load i32, ptr %i.fvo, align 4, !tbaa !96
  %i.fyv = icmp slt i32 %i.fyu, 2
  %i.fyw = load i64, ptr %i.fvq, align 8
  %i.fyx = zext i16 %i.fws to i64                 ; 2 uses
  %i.fyy = mul i64 %i.fyw, %i.fyx
  %.sink.idx.i.i4946 = select i1 %i.fyv, i64 0, i64 %i.fyy
  %.sink.i.i4947 = getelementptr inbounds nuw i8, ptr %i.fym, i64 %.sink.idx.i.i4946 ; 6 uses
  %i.fyz = load i32, ptr %.sink.i.i4947, align 4, !tbaa !33
  %i.fza = trunc nuw nsw i64 %i.fyq to i32        ; 2 uses
  %..i4948 = tail call i32 @llvm.smin.i32(i32 %i.fyz, i32 %i.fza)
  store i32 %..i4948, ptr %.sink.i.i4947, align 4, !tbaa !33
  %i.fzb = getelementptr inbounds nuw i8, ptr %.sink.i.i4947, i64 8 ; 2 uses
  %i.fzc = load i32, ptr %i.fzb, align 4, !tbaa !33
  %i.fzd = tail call i32 @llvm.smax.i32(i32 %i.fzc, i32 %i.fza)
  store i32 %i.fzd, ptr %i.fzb, align 4, !tbaa !33
  %i.fze = getelementptr inbounds nuw i8, ptr %.sink.i.i4947, i64 4 ; 2 uses
  %i.fzf = load i32, ptr %i.fze, align 4, !tbaa !33
  %i.fzg = tail call i32 @llvm.smin.i32(i32 %i.fzf, i32 %i.fwf)
  store i32 %i.fzg, ptr %i.fze, align 4, !tbaa !33
  %i.fzh = getelementptr inbounds nuw i8, ptr %.sink.i.i4947, i64 12 ; 2 uses
  %i.fzi = load i32, ptr %i.fzh, align 4, !tbaa !33
  %i.fzj = tail call i32 @llvm.smax.i32(i32 %i.fzi, i32 %i.fwf)
  store i32 %i.fzj, ptr %i.fzh, align 4, !tbaa !33
  %i.fzk = getelementptr inbounds nuw i8, ptr %.sink.i.i4947, i64 16 ; 2 uses
  %i.fzl = load i32, ptr %i.fzk, align 4, !tbaa !33
  %i.fzm = add nsw i32 %i.fzl, 1
  store i32 %i.fzm, ptr %i.fzk, align 4, !tbaa !33
  %i.fzn = getelementptr inbounds nuw [16 x i8], ptr %i.fyl, i64 %i.fyx ; 3 uses
  %i.fzo = load i64, ptr %i.fzn, align 8, !tbaa !116
  %i.fzp = add i64 %i.fzo, %i.fyq
  store i64 %i.fzp, ptr %i.fzn, align 8, !tbaa !116
  br label %bb.ajz

bb.ajy:                                           ; preds = %bb.ajw
  store i16 0, ptr %i.fyt, align 2, !tbaa !54
  %i.fzq = load i32, ptr %i.fym, align 4, !tbaa !33
  %i.fzr = trunc nuw nsw i64 %i.fyq to i32        ; 2 uses
  %..i4951 = tail call i32 @llvm.smin.i32(i32 %i.fzq, i32 %i.fzr)
  store i32 %..i4951, ptr %i.fym, align 4, !tbaa !33
  %i.fzs = getelementptr inbounds nuw i8, ptr %i.fym, i64 8 ; 2 uses
  %i.fzt = load i32, ptr %i.fzs, align 4, !tbaa !33
  %i.fzu = tail call i32 @llvm.smax.i32(i32 %i.fzt, i32 %i.fzr)
  store i32 %i.fzu, ptr %i.fzs, align 4, !tbaa !33
  %i.fzv = getelementptr inbounds nuw i8, ptr %i.fym, i64 4 ; 2 uses
  %i.fzw = load i32, ptr %i.fzv, align 4, !tbaa !33
  %i.fzx = tail call i32 @llvm.smin.i32(i32 %i.fzw, i32 %i.fwg)
  store i32 %i.fzx, ptr %i.fzv, align 4, !tbaa !33
  %i.fzy = getelementptr inbounds nuw i8, ptr %i.fym, i64 12 ; 2 uses
  %i.fzz = load i32, ptr %i.fzy, align 4, !tbaa !33
  %i.gaa = tail call i32 @llvm.smax.i32(i32 %i.fzz, i32 %i.fwg)
  store i32 %i.gaa, ptr %i.fzy, align 4, !tbaa !33
  %i.gab = getelementptr inbounds nuw i8, ptr %i.fym, i64 16 ; 2 uses
  %i.gac = load i32, ptr %i.gab, align 4, !tbaa !33
  %i.gad = add nsw i32 %i.gac, 1
  store i32 %i.gad, ptr %i.gab, align 4, !tbaa !33
  %i.gae = load i64, ptr %i.fyl, align 8, !tbaa !116
  %i.gaf = add i64 %i.gae, %i.fyq
  store i64 %i.gaf, ptr %i.fyl, align 8, !tbaa !116
  br label %bb.ajz

bb.ajz:                                           ; preds = %bb.ajy, %bb.ajx
  %.sink6725 = phi ptr [ %i.fyl, %bb.ajy ], [ %i.fzn, %bb.ajx ]
  %i.gag = getelementptr inbounds nuw i8, ptr %.sink6725, i64 8 ; 2 uses
  %i.gah = load i64, ptr %i.gag, align 8, !tbaa !117
  %i.gai = add i64 %i.gah, %indvars.iv6023
  store i64 %i.gai, ptr %i.gag, align 8, !tbaa !117
  %i.gaj = getelementptr inbounds nuw i8, ptr %i.fvx, i64 %indvars.iv6020
  %i.gak = load i8, ptr %i.gaj, align 1, !tbaa !32
  %.not3840 = icmp eq i8 %i.gak, 0
  %i.gal = getelementptr inbounds nuw [2 x i8], ptr %i.fwb, i64 %indvars.iv6020 ; 2 uses
  br i1 %.not3840, label %bb.akb, label %bb.aka

bb.aka:                                           ; preds = %bb.ajz
  store i16 %i.fws, ptr %i.gal, align 2, !tbaa !54
  %i.gam = load i32, ptr %i.fvo, align 4, !tbaa !96
  %i.gan = icmp slt i32 %i.gam, 2
  %i.gao = load i64, ptr %i.fvq, align 8
  %i.gap = zext i16 %i.fws to i64                 ; 2 uses
  %i.gaq = mul i64 %i.gao, %i.gap
  %.sink.idx.i.i4952 = select i1 %i.gan, i64 0, i64 %i.gaq
  %.sink.i.i4953 = getelementptr inbounds nuw i8, ptr %i.fym, i64 %.sink.idx.i.i4952 ; 6 uses
  %i.gar = load i32, ptr %.sink.i.i4953, align 4, !tbaa !33
  %i.gas = trunc nuw nsw i64 %indvars.iv6020 to i32 ; 2 uses
  %..i4954 = tail call i32 @llvm.smin.i32(i32 %i.gar, i32 %i.gas)
  store i32 %..i4954, ptr %.sink.i.i4953, align 4, !tbaa !33
  %i.gat = getelementptr inbounds nuw i8, ptr %.sink.i.i4953, i64 8 ; 2 uses
  %i.gau = load i32, ptr %i.gat, align 4, !tbaa !33
  %i.gav = tail call i32 @llvm.smax.i32(i32 %i.gau, i32 %i.gas)
  store i32 %i.gav, ptr %i.gat, align 4, !tbaa !33
  %i.gaw = getelementptr inbounds nuw i8, ptr %.sink.i.i4953, i64 4 ; 2 uses
  %i.gax = load i32, ptr %i.gaw, align 4, !tbaa !33
  %i.gay = tail call i32 @llvm.smin.i32(i32 %i.gax, i32 %i.fwh)
  store i32 %i.gay, ptr %i.gaw, align 4, !tbaa !33
  %i.gaz = getelementptr inbounds nuw i8, ptr %.sink.i.i4953, i64 12 ; 2 uses
  %i.gba = load i32, ptr %i.gaz, align 4, !tbaa !33
  %i.gbb = tail call i32 @llvm.smax.i32(i32 %i.gba, i32 %i.fwh)
  store i32 %i.gbb, ptr %i.gaz, align 4, !tbaa !33
  %i.gbc = getelementptr inbounds nuw i8, ptr %.sink.i.i4953, i64 16 ; 2 uses
  %i.gbd = load i32, ptr %i.gbc, align 4, !tbaa !33
  %i.gbe = add nsw i32 %i.gbd, 1
  store i32 %i.gbe, ptr %i.gbc, align 4, !tbaa !33
  %i.gbf = getelementptr inbounds nuw [16 x i8], ptr %i.fyl, i64 %i.gap ; 3 uses
  %i.gbg = load i64, ptr %i.gbf, align 8, !tbaa !116
  %i.gbh = add i64 %i.gbg, %indvars.iv6020
  store i64 %i.gbh, ptr %i.gbf, align 8, !tbaa !116
  br label %bb.akc

bb.akb:                                           ; preds = %bb.ajz
  store i16 0, ptr %i.gal, align 2, !tbaa !54
  %i.gbi = load i32, ptr %i.fym, align 4, !tbaa !33
  %i.gbj = trunc nuw nsw i64 %indvars.iv6020 to i32 ; 2 uses
  %..i4957 = tail call i32 @llvm.smin.i32(i32 %i.gbi, i32 %i.gbj)
  store i32 %..i4957, ptr %i.fym, align 4, !tbaa !33
  %i.gbk = getelementptr inbounds nuw i8, ptr %i.fym, i64 8 ; 2 uses
  %i.gbl = load i32, ptr %i.gbk, align 4, !tbaa !33
  %i.gbm = tail call i32 @llvm.smax.i32(i32 %i.gbl, i32 %i.gbj)
  store i32 %i.gbm, ptr %i.gbk, align 4, !tbaa !33
  %i.gbn = getelementptr inbounds nuw i8, ptr %i.fym, i64 4 ; 2 uses
  %i.gbo = load i32, ptr %i.gbn, align 4, !tbaa !33
  %i.gbp = tail call i32 @llvm.smin.i32(i32 %i.gbo, i32 %i.fwi)
  store i32 %i.gbp, ptr %i.gbn, align 4, !tbaa !33
  %i.gbq = getelementptr inbounds nuw i8, ptr %i.fym, i64 12 ; 2 uses
  %i.gbr = load i32, ptr %i.gbq, align 4, !tbaa !33
  %i.gbs = tail call i32 @llvm.smax.i32(i32 %i.gbr, i32 %i.fwi)
  store i32 %i.gbs, ptr %i.gbq, align 4, !tbaa !33
  %i.gbt = getelementptr inbounds nuw i8, ptr %i.fym, i64 16 ; 2 uses
  %i.gbu = load i32, ptr %i.gbt, align 4, !tbaa !33
  %i.gbv = add nsw i32 %i.gbu, 1
  store i32 %i.gbv, ptr %i.gbt, align 4, !tbaa !33
  %i.gbw = load i64, ptr %i.fyl, align 8, !tbaa !116
  %i.gbx = add i64 %i.gbw, %indvars.iv6020
  store i64 %i.gbx, ptr %i.fyl, align 8, !tbaa !116
  br label %bb.akc

bb.akc:                                           ; preds = %bb.akb, %bb.aka
  %.sink6730 = phi ptr [ %i.fyl, %bb.akb ], [ %i.gbf, %bb.aka ]
  %i.gby = getelementptr inbounds nuw i8, ptr %.sink6730, i64 8 ; 2 uses
  %i.gbz = load i64, ptr %i.gby, align 8, !tbaa !117
  %i.gca = add i64 %i.gbz, %i.fwc
  store i64 %i.gca, ptr %i.gby, align 8, !tbaa !117
  %i.gcb = getelementptr inbounds nuw i8, ptr %i.fvx, i64 %i.fyq
  %i.gcc = load i8, ptr %i.gcb, align 1, !tbaa !32
  %.not3841 = icmp eq i8 %i.gcc, 0
  %i.gcd = getelementptr inbounds nuw [2 x i8], ptr %i.fwb, i64 %i.fyq ; 2 uses
  br i1 %.not3841, label %bb.ake, label %bb.akd

bb.akd:                                           ; preds = %bb.akc
  store i16 %i.fws, ptr %i.gcd, align 2, !tbaa !54
  %i.gce = load i32, ptr %i.fvo, align 4, !tbaa !96
  %i.gcf = icmp slt i32 %i.gce, 2
  %i.gcg = load i64, ptr %i.fvq, align 8
  %i.gch = zext i16 %i.fws to i64                 ; 2 uses
  %i.gci = mul i64 %i.gcg, %i.gch
  %.sink.idx.i.i4958 = select i1 %i.gcf, i64 0, i64 %i.gci
  %.sink.i.i4959 = getelementptr inbounds nuw i8, ptr %i.fym, i64 %.sink.idx.i.i4958 ; 6 uses
  %i.gcj = load i32, ptr %.sink.i.i4959, align 4, !tbaa !33
  %i.gck = trunc nuw nsw i64 %i.fyq to i32        ; 2 uses
  %..i4960 = tail call i32 @llvm.smin.i32(i32 %i.gcj, i32 %i.gck)
  store i32 %..i4960, ptr %.sink.i.i4959, align 4, !tbaa !33
  %i.gcl = getelementptr inbounds nuw i8, ptr %.sink.i.i4959, i64 8 ; 2 uses
  %i.gcm = load i32, ptr %i.gcl, align 4, !tbaa !33
  %i.gcn = tail call i32 @llvm.smax.i32(i32 %i.gcm, i32 %i.gck)
  store i32 %i.gcn, ptr %i.gcl, align 4, !tbaa !33
  %i.gco = getelementptr inbounds nuw i8, ptr %.sink.i.i4959, i64 4 ; 2 uses
  %i.gcp = load i32, ptr %i.gco, align 4, !tbaa !33
  %i.gcq = tail call i32 @llvm.smin.i32(i32 %i.gcp, i32 %i.fwj)
  store i32 %i.gcq, ptr %i.gco, align 4, !tbaa !33
  %i.gcr = getelementptr inbounds nuw i8, ptr %.sink.i.i4959, i64 12 ; 2 uses
  %i.gcs = load i32, ptr %i.gcr, align 4, !tbaa !33
  %i.gct = tail call i32 @llvm.smax.i32(i32 %i.gcs, i32 %i.fwj)
  store i32 %i.gct, ptr %i.gcr, align 4, !tbaa !33
  %i.gcu = getelementptr inbounds nuw i8, ptr %.sink.i.i4959, i64 16 ; 2 uses
  %i.gcv = load i32, ptr %i.gcu, align 4, !tbaa !33
  %i.gcw = add nsw i32 %i.gcv, 1
  store i32 %i.gcw, ptr %i.gcu, align 4, !tbaa !33
  %i.gcx = getelementptr inbounds nuw [16 x i8], ptr %i.fyl, i64 %i.gch ; 2 uses
  %i.gcy = load <2 x i64>, ptr %i.gcx, align 8, !tbaa !40
  %i.gcz = insertelement <2 x i64> %i.fwn, i64 %i.fyq, i64 0
  %i.gda = add <2 x i64> %i.gcy, %i.gcz
  store <2 x i64> %i.gda, ptr %i.gcx, align 8, !tbaa !40
  br label %bb.akg

bb.ake:                                           ; preds = %bb.akc
  store i16 0, ptr %i.gcd, align 2, !tbaa !54
  %i.gdb = load i32, ptr %i.fym, align 4, !tbaa !33
  %i.gdc = trunc nuw nsw i64 %i.fyq to i32        ; 2 uses
  %..i4963 = tail call i32 @llvm.smin.i32(i32 %i.gdb, i32 %i.gdc)
  store i32 %..i4963, ptr %i.fym, align 4, !tbaa !33
  %i.gdd = getelementptr inbounds nuw i8, ptr %i.fym, i64 8 ; 2 uses
  %i.gde = load i32, ptr %i.gdd, align 4, !tbaa !33
  %i.gdf = tail call i32 @llvm.smax.i32(i32 %i.gde, i32 %i.gdc)
  store i32 %i.gdf, ptr %i.gdd, align 4, !tbaa !33
  %i.gdg = getelementptr inbounds nuw i8, ptr %i.fym, i64 4 ; 2 uses
  %i.gdh = load i32, ptr %i.gdg, align 4, !tbaa !33
  %i.gdi = tail call i32 @llvm.smin.i32(i32 %i.gdh, i32 %i.fwk)
  store i32 %i.gdi, ptr %i.gdg, align 4, !tbaa !33
  %i.gdj = getelementptr inbounds nuw i8, ptr %i.fym, i64 12 ; 2 uses
  %i.gdk = load i32, ptr %i.gdj, align 4, !tbaa !33
  %i.gdl = tail call i32 @llvm.smax.i32(i32 %i.gdk, i32 %i.fwk)
  store i32 %i.gdl, ptr %i.gdj, align 4, !tbaa !33
  %i.gdm = getelementptr inbounds nuw i8, ptr %i.fym, i64 16 ; 2 uses
  %i.gdn = load i32, ptr %i.gdm, align 4, !tbaa !33
  %i.gdo = add nsw i32 %i.gdn, 1
  store i32 %i.gdo, ptr %i.gdm, align 4, !tbaa !33
  %i.gdp = load <2 x i64>, ptr %i.fyl, align 8, !tbaa !40
  %i.gdq = insertelement <2 x i64> %i.fwn, i64 %i.fyq, i64 0
  %i.gdr = add <2 x i64> %i.gdp, %i.gdq
  store <2 x i64> %i.gdr, ptr %i.fyl, align 8, !tbaa !40
  br label %bb.akg

bb.akf:                                           ; preds = %bb.ajs
  %i.gds = load ptr, ptr %i.fvp, align 8, !tbaa !55 ; 6 uses
  %i.gdt = load i32, ptr %i.gds, align 4, !tbaa !33
  %i.gdu = trunc nuw nsw i64 %indvars.iv6020 to i32 ; 4 uses
  %..i4966 = tail call i32 @llvm.smin.i32(i32 %i.gdt, i32 %i.gdu)
  %i.gdv = getelementptr inbounds nuw i8, ptr %i.gds, i64 8 ; 2 uses
  %i.gdw = load i32, ptr %i.gdv, align 4, !tbaa !33
  %i.gdx = tail call i32 @llvm.smax.i32(i32 %i.gdw, i32 %i.gdu)
  %i.gdy = getelementptr inbounds nuw i8, ptr %i.gds, i64 4 ; 2 uses
  %i.gdz = load i32, ptr %i.gdy, align 4, !tbaa !33
  %i.gea = tail call i32 @llvm.smin.i32(i32 %i.gdz, i32 %i.fwl)
  %i.geb = getelementptr inbounds nuw i8, ptr %i.gds, i64 12 ; 2 uses
  %i.gec = load i32, ptr %i.geb, align 4, !tbaa !33
  %i.ged = tail call i32 @llvm.smax.i32(i32 %i.gec, i32 %i.fwl)
  %i.gee = getelementptr inbounds nuw i8, ptr %i.gds, i64 16 ; 2 uses
  %i.gef = load i32, ptr %i.gee, align 4, !tbaa !33
  %i.geg = load ptr, ptr %i.fvr, align 8, !tbaa !50 ; 3 uses
  %i.geh = load i64, ptr %i.geg, align 8, !tbaa !116
  %i.gei = add i64 %i.geh, %indvars.iv6020
  %i.gej = getelementptr inbounds nuw i8, ptr %i.geg, i64 8 ; 2 uses
  %i.gek = load i64, ptr %i.gej, align 8, !tbaa !117
  %i.gel = or disjoint i64 %indvars.iv6020, 1     ; 5 uses
  %i.gem = getelementptr inbounds nuw [2 x i8], ptr %i.fwa, i64 %i.gel
  store i16 0, ptr %i.gem, align 2, !tbaa !54
  %i.gen = trunc nuw nsw i64 %i.gel to i32        ; 4 uses
  %..i4969 = tail call i32 @llvm.smin.i32(i32 %..i4966, i32 %i.gen)
  %i.geo = tail call i32 @llvm.smax.i32(i32 %i.gdx, i32 %i.gen)
  %i.gep = add i64 %i.gei, %i.gel
  %i.geq = getelementptr inbounds nuw [2 x i8], ptr %i.fwb, i64 %indvars.iv6020
  store i16 0, ptr %i.geq, align 2, !tbaa !54
  %..i4972 = tail call i32 @llvm.smin.i32(i32 %..i4969, i32 %i.gdu)
  %11 = tail call i32 @llvm.smax.i32(i32 %i.geo, i32 %i.gdu)
  %12 = tail call i32 @llvm.smin.i32(i32 %i.gea, i32 %i.fwm)
  %i.ger = tail call i32 @llvm.smax.i32(i32 %i.ged, i32 %i.fwm)
  %i.ges = add i64 %i.gep, %indvars.iv6020
  %i.get = getelementptr inbounds nuw [2 x i8], ptr %i.fwb, i64 %i.gel
  store i16 0, ptr %i.get, align 2, !tbaa !54
  %..i4975 = tail call i32 @llvm.smin.i32(i32 %..i4972, i32 %i.gen)
  store i32 %..i4975, ptr %i.gds, align 4, !tbaa !33
  %13 = tail call i32 @llvm.smax.i32(i32 %11, i32 %i.gen)
  store i32 %13, ptr %i.gdv, align 4, !tbaa !33
  store i32 %12, ptr %i.gdy, align 4, !tbaa !33
  store i32 %i.ger, ptr %i.geb, align 4, !tbaa !33
  %i.geu = add nsw i32 %i.gef, 4
  store i32 %i.geu, ptr %i.gee, align 4, !tbaa !33
  %i.gev = add i64 %i.ges, %i.gel
  store i64 %i.gev, ptr %i.geg, align 8, !tbaa !116
  %.reass = add i64 %i.gek, %invariant.op6700
  store i64 %.reass, ptr %i.gej, align 8, !tbaa !117
  br label %bb.akg

bb.akg:                                           ; preds = %bb.akf, %bb.ake, %bb.akd
  %indvars.iv.next6021 = add nuw nsw i64 %indvars.iv6020, 2 ; 3 uses
  %i.gew = icmp slt i64 %indvars.iv.next6021, %i.fvs
  br i1 %i.gew, label %bb.ajs, label %._crit_edge5607.loopexit, !llvm.loop !339

._crit_edge5607.loopexit:                         ; preds = %bb.akg
  %i.gex = trunc nuw nsw i64 %indvars.iv.next6021 to i32
  br label %._crit_edge5607

._crit_edge5607:                                  ; preds = %._crit_edge5607.loopexit, %bb.ajr
  %.03158.lcssa = phi i32 [ 0, %bb.ajr ], [ %i.gex, %._crit_edge5607.loopexit ] ; 11 uses
  br i1 %i.am, label %bb.akh, label %bb.akp

bb.akh:                                           ; preds = %._crit_edge5607
  %i.gey = zext nneg i32 %.03158.lcssa to i64     ; 10 uses
  %i.gez = getelementptr inbounds nuw [2 x i8], ptr %i.fwa, i64 %i.gey ; 3 uses
  %i.gfa = load i16, ptr %i.gez, align 2, !tbaa !54 ; 2 uses
  %.not3834 = icmp eq i16 %i.gfa, 0
  br i1 %.not3834, label %bb.ako, label %bb.aki

bb.aki:                                           ; preds = %bb.akh
  %i.gfb = zext i16 %i.gfa to i64
  %i.gfc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.gfb
  %i.gfd = load i16, ptr %i.gfc, align 2, !tbaa !54 ; 4 uses
  %i.gfe = getelementptr inbounds nuw i8, ptr %i.fvw, i64 %i.gey
  %i.gff = load i8, ptr %i.gfe, align 1, !tbaa !32
  %.not3835 = icmp eq i8 %i.gff, 0
  br i1 %.not3835, label %bb.akk, label %bb.akj

bb.akj:                                           ; preds = %bb.aki
  store i16 %i.gfd, ptr %i.gez, align 2, !tbaa !54
  %i.gfg = load i32, ptr %i.fvo, align 4, !tbaa !96
  %i.gfh = icmp slt i32 %i.gfg, 2
  %i.gfi = load ptr, ptr %i.fvp, align 8, !tbaa !55 ; 2 uses
  %i.gfj = load i64, ptr %i.fvq, align 8
  %i.gfk = zext i16 %i.gfd to i64                 ; 2 uses
  %i.gfl = mul i64 %i.gfj, %i.gfk
  %.sink.idx.i.i4976 = select i1 %i.gfh, i64 0, i64 %i.gfl
  %.sink.i.i4977 = getelementptr inbounds nuw i8, ptr %i.gfi, i64 %.sink.idx.i.i4976 ; 6 uses
  %i.gfm = load i32, ptr %.sink.i.i4977, align 4, !tbaa !33
  %..i4978 = tail call i32 @llvm.smin.i32(i32 %i.gfm, i32 %.03158.lcssa)
  store i32 %..i4978, ptr %.sink.i.i4977, align 4, !tbaa !33
  %i.gfn = getelementptr inbounds nuw i8, ptr %.sink.i.i4977, i64 8 ; 2 uses
  %i.gfo = load i32, ptr %i.gfn, align 4, !tbaa !33
  %i.gfp = tail call i32 @llvm.smax.i32(i32 %i.gfo, i32 %.03158.lcssa)
  store i32 %i.gfp, ptr %i.gfn, align 4, !tbaa !33
  %i.gfq = getelementptr inbounds nuw i8, ptr %.sink.i.i4977, i64 4 ; 2 uses
  %i.gfr = load i32, ptr %i.gfq, align 4, !tbaa !33
  %i.gfs = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.gft = tail call i32 @llvm.smin.i32(i32 %i.gfr, i32 %i.gfs)
  store i32 %i.gft, ptr %i.gfq, align 4, !tbaa !33
  %i.gfu = getelementptr inbounds nuw i8, ptr %.sink.i.i4977, i64 12 ; 2 uses
  %i.gfv = load i32, ptr %i.gfu, align 4, !tbaa !33
  %i.gfw = tail call i32 @llvm.smax.i32(i32 %i.gfv, i32 %i.gfs)
  store i32 %i.gfw, ptr %i.gfu, align 4, !tbaa !33
  %i.gfx = getelementptr inbounds nuw i8, ptr %.sink.i.i4977, i64 16 ; 2 uses
  %i.gfy = load i32, ptr %i.gfx, align 4, !tbaa !33
  %i.gfz = add nsw i32 %i.gfy, 1
  store i32 %i.gfz, ptr %i.gfx, align 4, !tbaa !33
  %i.gga = load ptr, ptr %i.fvr, align 8, !tbaa !50 ; 2 uses
  %i.ggb = getelementptr inbounds nuw [16 x i8], ptr %i.gga, i64 %i.gfk ; 3 uses
  %i.ggc = load i64, ptr %i.ggb, align 8, !tbaa !116
  %i.ggd = add i64 %i.ggc, %i.gey
  store i64 %i.ggd, ptr %i.ggb, align 8, !tbaa !116
  br label %bb.akl

bb.akk:                                           ; preds = %bb.aki
  store i16 0, ptr %i.gez, align 2, !tbaa !54
  %i.gge = load ptr, ptr %i.fvp, align 8, !tbaa !55 ; 7 uses
  %i.ggf = load i32, ptr %i.gge, align 4, !tbaa !33
  %..i4981 = tail call i32 @llvm.smin.i32(i32 %i.ggf, i32 %.03158.lcssa)
  store i32 %..i4981, ptr %i.gge, align 4, !tbaa !33
  %i.ggg = getelementptr inbounds nuw i8, ptr %i.gge, i64 8 ; 2 uses
  %i.ggh = load i32, ptr %i.ggg, align 4, !tbaa !33
  %i.ggi = tail call i32 @llvm.smax.i32(i32 %i.ggh, i32 %.03158.lcssa)
  store i32 %i.ggi, ptr %i.ggg, align 4, !tbaa !33
  %i.ggj = getelementptr inbounds nuw i8, ptr %i.gge, i64 4 ; 2 uses
  %i.ggk = load i32, ptr %i.ggj, align 4, !tbaa !33
  %i.ggl = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.ggm = tail call i32 @llvm.smin.i32(i32 %i.ggk, i32 %i.ggl)
  store i32 %i.ggm, ptr %i.ggj, align 4, !tbaa !33
  %i.ggn = getelementptr inbounds nuw i8, ptr %i.gge, i64 12 ; 2 uses
  %i.ggo = load i32, ptr %i.ggn, align 4, !tbaa !33
  %i.ggp = tail call i32 @llvm.smax.i32(i32 %i.ggo, i32 %i.ggl)
  store i32 %i.ggp, ptr %i.ggn, align 4, !tbaa !33
  %i.ggq = getelementptr inbounds nuw i8, ptr %i.gge, i64 16 ; 2 uses
  %i.ggr = load i32, ptr %i.ggq, align 4, !tbaa !33
  %i.ggs = add nsw i32 %i.ggr, 1
  store i32 %i.ggs, ptr %i.ggq, align 4, !tbaa !33
  %i.ggt = load ptr, ptr %i.fvr, align 8, !tbaa !50 ; 4 uses
  %i.ggu = load i64, ptr %i.ggt, align 8, !tbaa !116
  %i.ggv = add i64 %i.ggu, %i.gey
  store i64 %i.ggv, ptr %i.ggt, align 8, !tbaa !116
  br label %bb.akl

bb.akl:                                           ; preds = %bb.akk, %bb.akj
  %.sink6735 = phi ptr [ %i.ggt, %bb.akk ], [ %i.ggb, %bb.akj ]
  %i.ggw = phi ptr [ %i.ggt, %bb.akk ], [ %i.gga, %bb.akj ] ; 4 uses
  %i.ggx = phi ptr [ %i.gge, %bb.akk ], [ %i.gfi, %bb.akj ] ; 7 uses
  %i.ggy = getelementptr inbounds nuw i8, ptr %.sink6735, i64 8 ; 2 uses
  %i.ggz = load i64, ptr %i.ggy, align 8, !tbaa !117
  %i.gha = add i64 %i.ggz, %indvars.iv6023
  store i64 %i.gha, ptr %i.ggy, align 8, !tbaa !117
  %i.ghb = getelementptr inbounds nuw i8, ptr %i.fvx, i64 %i.gey
  %i.ghc = load i8, ptr %i.ghb, align 1, !tbaa !32
  %.not3836 = icmp eq i8 %i.ghc, 0
  %i.ghd = getelementptr inbounds nuw [2 x i8], ptr %i.fwb, i64 %i.gey ; 2 uses
  %i.ghe = or disjoint i64 %indvars.iv6023, 1     ; 4 uses
  br i1 %.not3836, label %bb.akn, label %bb.akm

bb.akm:                                           ; preds = %bb.akl
  store i16 %i.gfd, ptr %i.ghd, align 2, !tbaa !54
  %i.ghf = load i32, ptr %i.fvo, align 4, !tbaa !96
  %i.ghg = icmp slt i32 %i.ghf, 2
  %i.ghh = load i64, ptr %i.fvq, align 8
  %i.ghi = zext i16 %i.gfd to i64                 ; 2 uses
  %i.ghj = mul i64 %i.ghh, %i.ghi
  %.sink.idx.i.i4982 = select i1 %i.ghg, i64 0, i64 %i.ghj
  %.sink.i.i4983 = getelementptr inbounds nuw i8, ptr %i.ggx, i64 %.sink.idx.i.i4982 ; 6 uses
  %i.ghk = load i32, ptr %.sink.i.i4983, align 4, !tbaa !33
  %..i4984 = tail call i32 @llvm.smin.i32(i32 %i.ghk, i32 %.03158.lcssa)
  store i32 %..i4984, ptr %.sink.i.i4983, align 4, !tbaa !33
  %i.ghl = getelementptr inbounds nuw i8, ptr %.sink.i.i4983, i64 8 ; 2 uses
  %i.ghm = load i32, ptr %i.ghl, align 4, !tbaa !33
  %i.ghn = tail call i32 @llvm.smax.i32(i32 %i.ghm, i32 %.03158.lcssa)
  store i32 %i.ghn, ptr %i.ghl, align 4, !tbaa !33
  %i.gho = getelementptr inbounds nuw i8, ptr %.sink.i.i4983, i64 4 ; 2 uses
  %i.ghp = load i32, ptr %i.gho, align 4, !tbaa !33
  %i.ghq = trunc nuw nsw i64 %i.ghe to i32        ; 2 uses
  %i.ghr = tail call i32 @llvm.smin.i32(i32 %i.ghp, i32 %i.ghq)
  store i32 %i.ghr, ptr %i.gho, align 4, !tbaa !33
  %i.ghs = getelementptr inbounds nuw i8, ptr %.sink.i.i4983, i64 12 ; 2 uses
  %i.ght = load i32, ptr %i.ghs, align 4, !tbaa !33
  %i.ghu = tail call i32 @llvm.smax.i32(i32 %i.ght, i32 %i.ghq)
  store i32 %i.ghu, ptr %i.ghs, align 4, !tbaa !33
  %i.ghv = getelementptr inbounds nuw i8, ptr %.sink.i.i4983, i64 16 ; 2 uses
  %i.ghw = load i32, ptr %i.ghv, align 4, !tbaa !33
  %i.ghx = add nsw i32 %i.ghw, 1
  store i32 %i.ghx, ptr %i.ghv, align 4, !tbaa !33
  %i.ghy = getelementptr inbounds nuw [16 x i8], ptr %i.ggw, i64 %i.ghi ; 3 uses
  %i.ghz = load i64, ptr %i.ghy, align 8, !tbaa !116
  %i.gia = add i64 %i.ghz, %i.gey
  store i64 %i.gia, ptr %i.ghy, align 8, !tbaa !116
  %i.gib = getelementptr inbounds nuw i8, ptr %i.ghy, i64 8 ; 2 uses
  %i.gic = load i64, ptr %i.gib, align 8, !tbaa !117
  %i.gid = add i64 %i.gic, %i.ghe
  store i64 %i.gid, ptr %i.gib, align 8, !tbaa !117
  br label %bb.akp

bb.akn:                                           ; preds = %bb.akl
  store i16 0, ptr %i.ghd, align 2, !tbaa !54
  %i.gie = load i32, ptr %i.ggx, align 4, !tbaa !33
  %..i4987 = tail call i32 @llvm.smin.i32(i32 %i.gie, i32 %.03158.lcssa)
  store i32 %..i4987, ptr %i.ggx, align 4, !tbaa !33
  %i.gif = getelementptr inbounds nuw i8, ptr %i.ggx, i64 8 ; 2 uses
  %i.gig = load i32, ptr %i.gif, align 4, !tbaa !33
  %i.gih = tail call i32 @llvm.smax.i32(i32 %i.gig, i32 %.03158.lcssa)
  store i32 %i.gih, ptr %i.gif, align 4, !tbaa !33
  %i.gii = getelementptr inbounds nuw i8, ptr %i.ggx, i64 4 ; 2 uses
  %i.gij = load i32, ptr %i.gii, align 4, !tbaa !33
  %i.gik = trunc nuw nsw i64 %i.ghe to i32        ; 2 uses
  %i.gil = tail call i32 @llvm.smin.i32(i32 %i.gij, i32 %i.gik)
  store i32 %i.gil, ptr %i.gii, align 4, !tbaa !33
  %i.gim = getelementptr inbounds nuw i8, ptr %i.ggx, i64 12 ; 2 uses
  %i.gin = load i32, ptr %i.gim, align 4, !tbaa !33
  %i.gio = tail call i32 @llvm.smax.i32(i32 %i.gin, i32 %i.gik)
  store i32 %i.gio, ptr %i.gim, align 4, !tbaa !33
  %i.gip = getelementptr inbounds nuw i8, ptr %i.ggx, i64 16 ; 2 uses
  %i.giq = load i32, ptr %i.gip, align 4, !tbaa !33
  %i.gir = add nsw i32 %i.giq, 1
  store i32 %i.gir, ptr %i.gip, align 4, !tbaa !33
  %i.gis = load i64, ptr %i.ggw, align 8, !tbaa !116
  %i.git = add i64 %i.gis, %i.gey
  store i64 %i.git, ptr %i.ggw, align 8, !tbaa !116
  %i.giu = getelementptr inbounds nuw i8, ptr %i.ggw, i64 8 ; 2 uses
  %i.giv = load i64, ptr %i.giu, align 8, !tbaa !117
  %i.giw = add i64 %i.giv, %i.ghe
  store i64 %i.giw, ptr %i.giu, align 8, !tbaa !117
  br label %bb.akp

bb.ako:                                           ; preds = %bb.akh
  %i.gix = load ptr, ptr %i.fvp, align 8, !tbaa !55 ; 6 uses
  %i.giy = load i32, ptr %i.gix, align 4, !tbaa !33
  %..i4990 = tail call i32 @llvm.smin.i32(i32 %i.giy, i32 %.03158.lcssa)
  %i.giz = getelementptr inbounds nuw i8, ptr %i.gix, i64 8 ; 2 uses
  %i.gja = load i32, ptr %i.giz, align 4, !tbaa !33
  %i.gjb = tail call i32 @llvm.smax.i32(i32 %i.gja, i32 %.03158.lcssa)
  %i.gjc = getelementptr inbounds nuw i8, ptr %i.gix, i64 4 ; 2 uses
  %i.gjd = load i32, ptr %i.gjc, align 4, !tbaa !33
  %i.gje = trunc nuw nsw i64 %indvars.iv6023 to i32 ; 2 uses
  %i.gjf = tail call i32 @llvm.smin.i32(i32 %i.gjd, i32 %i.gje)
  %i.gjg = getelementptr inbounds nuw i8, ptr %i.gix, i64 12 ; 2 uses
  %i.gjh = load i32, ptr %i.gjg, align 4, !tbaa !33
  %i.gji = tail call i32 @llvm.smax.i32(i32 %i.gjh, i32 %i.gje)
  %i.gjj = getelementptr inbounds nuw i8, ptr %i.gix, i64 16 ; 2 uses
  %i.gjk = load i32, ptr %i.gjj, align 4, !tbaa !33
  %i.gjl = load ptr, ptr %i.fvr, align 8, !tbaa !50 ; 3 uses
  %i.gjm = load i64, ptr %i.gjl, align 8, !tbaa !116
  %i.gjn = getelementptr inbounds nuw i8, ptr %i.gjl, i64 8 ; 2 uses
  %i.gjo = load i64, ptr %i.gjn, align 8, !tbaa !117
  %i.gjp = add i64 %i.gjo, %indvars.iv6023
  %i.gjq = getelementptr inbounds nuw [2 x i8], ptr %i.fwb, i64 %i.gey
  store i16 0, ptr %i.gjq, align 2, !tbaa !54
  %i.gjr = or disjoint i64 %indvars.iv6023, 1     ; 2 uses
  store i32 %..i4990, ptr %i.gix, align 4, !tbaa !33
  store i32 %i.gjb, ptr %i.giz, align 4, !tbaa !33
  %14 = trunc nuw nsw i64 %i.gjr to i32           ; 2 uses
  %15 = tail call i32 @llvm.smin.i32(i32 %i.gjf, i32 %14)
  store i32 %15, ptr %i.gjc, align 4, !tbaa !33
  %i.gjs = tail call i32 @llvm.smax.i32(i32 %i.gji, i32 %14)
  store i32 %i.gjs, ptr %i.gjg, align 4, !tbaa !33
  %i.gjt = add nsw i32 %i.gjk, 2
  store i32 %i.gjt, ptr %i.gjj, align 4, !tbaa !33
  %reass.add = shl nuw nsw i64 %i.gey, 1
  %i.gju = add i64 %i.gjm, %reass.add
  store i64 %i.gju, ptr %i.gjl, align 8, !tbaa !116
  %i.gjv = add i64 %i.gjp, %i.gjr
  store i64 %i.gjv, ptr %i.gjn, align 8, !tbaa !117
  br label %bb.akp

bb.akp:                                           ; preds = %bb.ako, %bb.akn, %bb.akm, %._crit_edge5607
  %indvars.iv.next6024 = add nuw nsw i64 %indvars.iv6023, 2 ; 3 uses
  %i.gjw = icmp samesign ult i64 %indvars.iv.next6024, %i.fvt
  br i1 %i.gjw, label %bb.ajr, label %._crit_edge5611.loopexit, !llvm.loop !340

._crit_edge5611.loopexit:                         ; preds = %bb.akp
  %i.gjx = trunc nuw nsw i64 %indvars.iv.next6024 to i32
  br label %._crit_edge5611

._crit_edge5611:                                  ; preds = %._crit_edge5611.loopexit, %.preheader
  %.03159.lcssa = phi i32 [ 0, %.preheader ], [ %i.gjx, %._crit_edge5611.loopexit ] ; 17 uses
  br i1 %i.aj, label %bb.akq, label %bb.alh

bb.akq:                                           ; preds = %._crit_edge5611
  %i.gjy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gjz = load ptr, ptr %i.gjy, align 8, !tbaa !55
  %i.gka = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.gkb = load i64, ptr %i.gka, align 8, !tbaa !40
  %i.gkc = zext nneg i32 %.03159.lcssa to i64     ; 7 uses
  %i.gkd = mul i64 %i.gkb, %i.gkc
  %i.gke = getelementptr inbounds nuw i8, ptr %i.gjz, i64 %i.gkd ; 3 uses
  %i.gkf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gkg = load ptr, ptr %i.gkf, align 8, !tbaa !55
  %i.gkh = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.gki = load i64, ptr %i.gkh, align 8, !tbaa !40
  %i.gkj = mul i64 %i.gki, %i.gkc
  %i.gkk = getelementptr inbounds nuw i8, ptr %i.gkg, i64 %i.gkj ; 4 uses
  %i.gkl = icmp sgt i32 %i.n, 1
  br i1 %i.gkl, label %.lr.ph5615, label %._crit_edge5616

.lr.ph5615:                                       ; preds = %bb.akq
  %i.gkm = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.gkn = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.gko = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.gkp = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %i.gkq = zext nneg i32 %i.ak to i64
  %invariant.op6701 = shl nuw nsw i64 %i.gkc, 1
  br label %bb.akr

bb.akr:                                           ; preds = %.lr.ph5615, %bb.akz
  %indvars.iv6026 = phi i64 [ 0, %.lr.ph5615 ], [ %indvars.iv.next6027, %bb.akz ] ; 11 uses
  %i.gkr = getelementptr inbounds nuw [2 x i8], ptr %i.gkk, i64 %indvars.iv6026 ; 3 uses
  %i.gks = load i16, ptr %i.gkr, align 2, !tbaa !54 ; 2 uses
  %.not3829 = icmp eq i16 %i.gks, 0
  br i1 %.not3829, label %bb.aky, label %bb.aks

bb.aks:                                           ; preds = %bb.akr
  %i.gkt = zext i16 %i.gks to i64
  %i.gku = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.gkt
  %i.gkv = load i16, ptr %i.gku, align 2, !tbaa !54 ; 4 uses
  %i.gkw = getelementptr inbounds nuw i8, ptr %i.gke, i64 %indvars.iv6026
  %i.gkx = load i8, ptr %i.gkw, align 1, !tbaa !32
  %.not3830 = icmp eq i8 %i.gkx, 0
  br i1 %.not3830, label %bb.aku, label %bb.akt

bb.akt:                                           ; preds = %bb.aks
  store i16 %i.gkv, ptr %i.gkr, align 2, !tbaa !54
  %i.gky = load i32, ptr %i.gkm, align 4, !tbaa !96
  %i.gkz = icmp slt i32 %i.gky, 2
  %i.gla = load ptr, ptr %i.gkn, align 8, !tbaa !55 ; 2 uses
  %i.glb = load i64, ptr %i.gko, align 8
  %i.glc = zext i16 %i.gkv to i64                 ; 2 uses
  %i.gld = mul i64 %i.glb, %i.glc
  %.sink.idx.i.i4994 = select i1 %i.gkz, i64 0, i64 %i.gld
  %.sink.i.i4995 = getelementptr inbounds nuw i8, ptr %i.gla, i64 %.sink.idx.i.i4994 ; 6 uses
  %i.gle = load i32, ptr %.sink.i.i4995, align 4, !tbaa !33
  %i.glf = trunc nuw nsw i64 %indvars.iv6026 to i32 ; 2 uses
  %..i4996 = tail call i32 @llvm.smin.i32(i32 %i.gle, i32 %i.glf)
  store i32 %..i4996, ptr %.sink.i.i4995, align 4, !tbaa !33
  %i.glg = getelementptr inbounds nuw i8, ptr %.sink.i.i4995, i64 8 ; 2 uses
  %i.glh = load i32, ptr %i.glg, align 4, !tbaa !33
  %i.gli = tail call i32 @llvm.smax.i32(i32 %i.glh, i32 %i.glf)
  store i32 %i.gli, ptr %i.glg, align 4, !tbaa !33
  %i.glj = getelementptr inbounds nuw i8, ptr %.sink.i.i4995, i64 4 ; 2 uses
  %i.glk = load i32, ptr %i.glj, align 4, !tbaa !33
  %i.gll = tail call i32 @llvm.smin.i32(i32 %i.glk, i32 %.03159.lcssa)
  store i32 %i.gll, ptr %i.glj, align 4, !tbaa !33
  %i.glm = getelementptr inbounds nuw i8, ptr %.sink.i.i4995, i64 12 ; 2 uses
  %i.gln = load i32, ptr %i.glm, align 4, !tbaa !33
  %i.glo = tail call i32 @llvm.smax.i32(i32 %i.gln, i32 %.03159.lcssa)
  store i32 %i.glo, ptr %i.glm, align 4, !tbaa !33
  %i.glp = getelementptr inbounds nuw i8, ptr %.sink.i.i4995, i64 16 ; 2 uses
  %i.glq = load i32, ptr %i.glp, align 4, !tbaa !33
  %i.glr = add nsw i32 %i.glq, 1
  store i32 %i.glr, ptr %i.glp, align 4, !tbaa !33
  %i.gls = load ptr, ptr %i.gkp, align 8, !tbaa !50 ; 2 uses
  %i.glt = getelementptr inbounds nuw [16 x i8], ptr %i.gls, i64 %i.glc ; 3 uses
  %i.glu = load i64, ptr %i.glt, align 8, !tbaa !116
  %i.glv = add i64 %i.glu, %indvars.iv6026
  store i64 %i.glv, ptr %i.glt, align 8, !tbaa !116
  br label %bb.akv

bb.aku:                                           ; preds = %bb.aks
  store i16 0, ptr %i.gkr, align 2, !tbaa !54
  %i.glw = load ptr, ptr %i.gkn, align 8, !tbaa !55 ; 7 uses
  %i.glx = load i32, ptr %i.glw, align 4, !tbaa !33
  %i.gly = trunc nuw nsw i64 %indvars.iv6026 to i32 ; 2 uses
  %..i4999 = tail call i32 @llvm.smin.i32(i32 %i.glx, i32 %i.gly)
  store i32 %..i4999, ptr %i.glw, align 4, !tbaa !33
  %i.glz = getelementptr inbounds nuw i8, ptr %i.glw, i64 8 ; 2 uses
  %i.gma = load i32, ptr %i.glz, align 4, !tbaa !33
  %i.gmb = tail call i32 @llvm.smax.i32(i32 %i.gma, i32 %i.gly)
  store i32 %i.gmb, ptr %i.glz, align 4, !tbaa !33
  %i.gmc = getelementptr inbounds nuw i8, ptr %i.glw, i64 4 ; 2 uses
  %i.gmd = load i32, ptr %i.gmc, align 4, !tbaa !33
  %i.gme = tail call i32 @llvm.smin.i32(i32 %i.gmd, i32 %.03159.lcssa)
  store i32 %i.gme, ptr %i.gmc, align 4, !tbaa !33
  %i.gmf = getelementptr inbounds nuw i8, ptr %i.glw, i64 12 ; 2 uses
  %i.gmg = load i32, ptr %i.gmf, align 4, !tbaa !33
  %i.gmh = tail call i32 @llvm.smax.i32(i32 %i.gmg, i32 %.03159.lcssa)
  store i32 %i.gmh, ptr %i.gmf, align 4, !tbaa !33
  %i.gmi = getelementptr inbounds nuw i8, ptr %i.glw, i64 16 ; 2 uses
  %i.gmj = load i32, ptr %i.gmi, align 4, !tbaa !33
  %i.gmk = add nsw i32 %i.gmj, 1
  store i32 %i.gmk, ptr %i.gmi, align 4, !tbaa !33
  %i.gml = load ptr, ptr %i.gkp, align 8, !tbaa !50 ; 4 uses
  %i.gmm = load i64, ptr %i.gml, align 8, !tbaa !116
  %i.gmn = add i64 %i.gmm, %indvars.iv6026
  store i64 %i.gmn, ptr %i.gml, align 8, !tbaa !116
  br label %bb.akv

bb.akv:                                           ; preds = %bb.aku, %bb.akt
  %.sink6740 = phi ptr [ %i.gml, %bb.aku ], [ %i.glt, %bb.akt ]
  %i.gmo = phi ptr [ %i.gml, %bb.aku ], [ %i.gls, %bb.akt ] ; 4 uses
  %i.gmp = phi ptr [ %i.glw, %bb.aku ], [ %i.gla, %bb.akt ] ; 7 uses
  %i.gmq = getelementptr inbounds nuw i8, ptr %.sink6740, i64 8 ; 2 uses
  %i.gmr = load i64, ptr %i.gmq, align 8, !tbaa !117
  %i.gms = add i64 %i.gmr, %i.gkc
  store i64 %i.gms, ptr %i.gmq, align 8, !tbaa !117
  %i.gmt = or disjoint i64 %indvars.iv6026, 1     ; 6 uses
  %i.gmu = getelementptr inbounds nuw i8, ptr %i.gke, i64 %i.gmt
  %i.gmv = load i8, ptr %i.gmu, align 1, !tbaa !32
  %.not3831 = icmp eq i8 %i.gmv, 0
  %i.gmw = getelementptr inbounds nuw [2 x i8], ptr %i.gkk, i64 %i.gmt ; 2 uses
  br i1 %.not3831, label %bb.akx, label %bb.akw

bb.akw:                                           ; preds = %bb.akv
  store i16 %i.gkv, ptr %i.gmw, align 2, !tbaa !54
  %i.gmx = load i32, ptr %i.gkm, align 4, !tbaa !96
  %i.gmy = icmp slt i32 %i.gmx, 2
  %i.gmz = load i64, ptr %i.gko, align 8
  %i.gna = zext i16 %i.gkv to i64                 ; 2 uses
  %i.gnb = mul i64 %i.gmz, %i.gna
  %.sink.idx.i.i5000 = select i1 %i.gmy, i64 0, i64 %i.gnb
  %.sink.i.i5001 = getelementptr inbounds nuw i8, ptr %i.gmp, i64 %.sink.idx.i.i5000 ; 6 uses
  %i.gnc = load i32, ptr %.sink.i.i5001, align 4, !tbaa !33
  %i.gnd = trunc nuw nsw i64 %i.gmt to i32        ; 2 uses
  %..i5002 = tail call i32 @llvm.smin.i32(i32 %i.gnc, i32 %i.gnd)
  store i32 %..i5002, ptr %.sink.i.i5001, align 4, !tbaa !33
  %i.gne = getelementptr inbounds nuw i8, ptr %.sink.i.i5001, i64 8 ; 2 uses
  %i.gnf = load i32, ptr %i.gne, align 4, !tbaa !33
  %i.gng = tail call i32 @llvm.smax.i32(i32 %i.gnf, i32 %i.gnd)
  store i32 %i.gng, ptr %i.gne, align 4, !tbaa !33
  %i.gnh = getelementptr inbounds nuw i8, ptr %.sink.i.i5001, i64 4 ; 2 uses
  %i.gni = load i32, ptr %i.gnh, align 4, !tbaa !33
  %i.gnj = tail call i32 @llvm.smin.i32(i32 %i.gni, i32 %.03159.lcssa)
  store i32 %i.gnj, ptr %i.gnh, align 4, !tbaa !33
  %i.gnk = getelementptr inbounds nuw i8, ptr %.sink.i.i5001, i64 12 ; 2 uses
  %i.gnl = load i32, ptr %i.gnk, align 4, !tbaa !33
  %i.gnm = tail call i32 @llvm.smax.i32(i32 %i.gnl, i32 %.03159.lcssa)
  store i32 %i.gnm, ptr %i.gnk, align 4, !tbaa !33
  %i.gnn = getelementptr inbounds nuw i8, ptr %.sink.i.i5001, i64 16 ; 2 uses
  %i.gno = load i32, ptr %i.gnn, align 4, !tbaa !33
  %i.gnp = add nsw i32 %i.gno, 1
  store i32 %i.gnp, ptr %i.gnn, align 4, !tbaa !33
  %i.gnq = getelementptr inbounds nuw [16 x i8], ptr %i.gmo, i64 %i.gna ; 3 uses
  %i.gnr = load i64, ptr %i.gnq, align 8, !tbaa !116
  %i.gns = add i64 %i.gnr, %i.gmt
  store i64 %i.gns, ptr %i.gnq, align 8, !tbaa !116
  %i.gnt = getelementptr inbounds nuw i8, ptr %i.gnq, i64 8 ; 2 uses
  %i.gnu = load i64, ptr %i.gnt, align 8, !tbaa !117
  %i.gnv = add i64 %i.gnu, %i.gkc
  store i64 %i.gnv, ptr %i.gnt, align 8, !tbaa !117
  br label %bb.akz

bb.akx:                                           ; preds = %bb.akv
  store i16 0, ptr %i.gmw, align 2, !tbaa !54
  %i.gnw = load i32, ptr %i.gmp, align 4, !tbaa !33
  %i.gnx = trunc nuw nsw i64 %i.gmt to i32        ; 2 uses
  %..i5005 = tail call i32 @llvm.smin.i32(i32 %i.gnw, i32 %i.gnx)
  store i32 %..i5005, ptr %i.gmp, align 4, !tbaa !33
  %i.gny = getelementptr inbounds nuw i8, ptr %i.gmp, i64 8 ; 2 uses
  %i.gnz = load i32, ptr %i.gny, align 4, !tbaa !33
  %i.goa = tail call i32 @llvm.smax.i32(i32 %i.gnz, i32 %i.gnx)
  store i32 %i.goa, ptr %i.gny, align 4, !tbaa !33
  %i.gob = getelementptr inbounds nuw i8, ptr %i.gmp, i64 4 ; 2 uses
  %i.goc = load i32, ptr %i.gob, align 4, !tbaa !33
  %i.god = tail call i32 @llvm.smin.i32(i32 %i.goc, i32 %.03159.lcssa)
  store i32 %i.god, ptr %i.gob, align 4, !tbaa !33
  %i.goe = getelementptr inbounds nuw i8, ptr %i.gmp, i64 12 ; 2 uses
  %i.gof = load i32, ptr %i.goe, align 4, !tbaa !33
  %i.gog = tail call i32 @llvm.smax.i32(i32 %i.gof, i32 %.03159.lcssa)
  store i32 %i.gog, ptr %i.goe, align 4, !tbaa !33
  %i.goh = getelementptr inbounds nuw i8, ptr %i.gmp, i64 16 ; 2 uses
  %i.goi = load i32, ptr %i.goh, align 4, !tbaa !33
  %i.goj = add nsw i32 %i.goi, 1
  store i32 %i.goj, ptr %i.goh, align 4, !tbaa !33
  %i.gok = load i64, ptr %i.gmo, align 8, !tbaa !116
  %i.gol = add i64 %i.gok, %i.gmt
  store i64 %i.gol, ptr %i.gmo, align 8, !tbaa !116
  %i.gom = getelementptr inbounds nuw i8, ptr %i.gmo, i64 8 ; 2 uses
  %i.gon = load i64, ptr %i.gom, align 8, !tbaa !117
  %i.goo = add i64 %i.gon, %i.gkc
  store i64 %i.goo, ptr %i.gom, align 8, !tbaa !117
  br label %bb.akz

bb.aky:                                           ; preds = %bb.akr
  %i.gop = load ptr, ptr %i.gkn, align 8, !tbaa !55 ; 6 uses
  %i.goq = load i32, ptr %i.gop, align 4, !tbaa !33
  %i.gor = trunc nuw nsw i64 %indvars.iv6026 to i32 ; 2 uses
  %..i5008 = tail call i32 @llvm.smin.i32(i32 %i.goq, i32 %i.gor)
  %i.gos = getelementptr inbounds nuw i8, ptr %i.gop, i64 8 ; 2 uses
  %i.got = load i32, ptr %i.gos, align 4, !tbaa !33
  %i.gou = tail call i32 @llvm.smax.i32(i32 %i.got, i32 %i.gor)
  %i.gov = getelementptr inbounds nuw i8, ptr %i.gop, i64 4 ; 2 uses
  %i.gow = load i32, ptr %i.gov, align 4, !tbaa !33
  %i.gox = tail call i32 @llvm.smin.i32(i32 %i.gow, i32 %.03159.lcssa)
  %i.goy = getelementptr inbounds nuw i8, ptr %i.gop, i64 12 ; 2 uses
  %i.goz = load i32, ptr %i.goy, align 4, !tbaa !33
  %i.gpa = tail call i32 @llvm.smax.i32(i32 %i.goz, i32 %.03159.lcssa)
  %i.gpb = getelementptr inbounds nuw i8, ptr %i.gop, i64 16 ; 2 uses
  %i.gpc = load i32, ptr %i.gpb, align 4, !tbaa !33
  %i.gpd = load ptr, ptr %i.gkp, align 8, !tbaa !50 ; 3 uses
  %i.gpe = load i64, ptr %i.gpd, align 8, !tbaa !116
  %i.gpf = add i64 %i.gpe, %indvars.iv6026
  %i.gpg = getelementptr inbounds nuw i8, ptr %i.gpd, i64 8 ; 2 uses
  %i.gph = load i64, ptr %i.gpg, align 8, !tbaa !117
  %i.gpi = or disjoint i64 %indvars.iv6026, 1     ; 3 uses
  %i.gpj = getelementptr inbounds nuw [2 x i8], ptr %i.gkk, i64 %i.gpi
  store i16 0, ptr %i.gpj, align 2, !tbaa !54
  %16 = trunc nuw nsw i64 %i.gpi to i32           ; 2 uses
  %..i5011 = tail call i32 @llvm.smin.i32(i32 %..i5008, i32 %16)
  store i32 %..i5011, ptr %i.gop, align 4, !tbaa !33
  %i.gpk = tail call i32 @llvm.smax.i32(i32 %i.gou, i32 %16)
  store i32 %i.gpk, ptr %i.gos, align 4, !tbaa !33
  store i32 %i.gox, ptr %i.gov, align 4, !tbaa !33
  store i32 %i.gpa, ptr %i.goy, align 4, !tbaa !33
  %i.gpl = add nsw i32 %i.gpc, 2
  store i32 %i.gpl, ptr %i.gpb, align 4, !tbaa !33
  %i.gpm = add i64 %i.gpf, %i.gpi
  store i64 %i.gpm, ptr %i.gpd, align 8, !tbaa !116
  %.reass6702 = add i64 %i.gph, %invariant.op6701
  store i64 %.reass6702, ptr %i.gpg, align 8, !tbaa !117
  br label %bb.akz

bb.akz:                                           ; preds = %bb.aky, %bb.akx, %bb.akw
  %indvars.iv.next6027 = add nuw nsw i64 %indvars.iv6026, 2 ; 3 uses
  %i.gpn = icmp samesign ult i64 %indvars.iv.next6027, %i.gkq
  br i1 %i.gpn, label %bb.akr, label %._crit_edge5616.loopexit, !llvm.loop !341

._crit_edge5616.loopexit:                         ; preds = %bb.akz
  %i.gpo = trunc nuw nsw i64 %indvars.iv.next6027 to i32
  br label %._crit_edge5616

._crit_edge5616:                                  ; preds = %._crit_edge5616.loopexit, %bb.akq
  %.0.lcssa = phi i32 [ 0, %bb.akq ], [ %i.gpo, %._crit_edge5616.loopexit ] ; 7 uses
  br i1 %i.am, label %bb.ala, label %bb.alh

bb.ala:                                           ; preds = %._crit_edge5616
  %i.gpp = zext nneg i32 %.0.lcssa to i64         ; 5 uses
  %i.gpq = getelementptr inbounds nuw [2 x i8], ptr %i.gkk, i64 %i.gpp ; 3 uses
  %i.gpr = load i16, ptr %i.gpq, align 2, !tbaa !54 ; 2 uses
  %.not3827 = icmp eq i16 %i.gpr, 0
  br i1 %.not3827, label %bb.alg, label %bb.alb

bb.alb:                                           ; preds = %bb.ala
  %i.gps = getelementptr inbounds nuw i8, ptr %i.gke, i64 %i.gpp
  %i.gpt = load i8, ptr %i.gps, align 1, !tbaa !32
  %.not3828 = icmp eq i8 %i.gpt, 0
  br i1 %.not3828, label %bb.alf, label %bb.alc

bb.alc:                                           ; preds = %bb.alb
  %i.gpu = zext i16 %i.gpr to i64
  %i.gpv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.05029.0, i64 %i.gpu
  %i.gpw = load i16, ptr %i.gpv, align 2, !tbaa !54 ; 2 uses
  store i16 %i.gpw, ptr %i.gpq, align 2, !tbaa !54
  %i.gpx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.gpy = load i32, ptr %i.gpx, align 4, !tbaa !96
  %i.gpz = icmp slt i32 %i.gpy, 2
  %i.gqa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gqb = load ptr, ptr %i.gqa, align 8, !tbaa !55
  %i.gqc = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.gqd = load i64, ptr %i.gqc, align 8
  %i.gqe = zext i16 %i.gpw to i64                 ; 2 uses
  %i.gqf = mul i64 %i.gqd, %i.gqe
  %.sink.idx.i.i5012 = select i1 %i.gpz, i64 0, i64 %i.gqf
  %.sink.i.i5013 = getelementptr inbounds nuw i8, ptr %i.gqb, i64 %.sink.idx.i.i5012 ; 6 uses
  %i.gqg = load i32, ptr %.sink.i.i5013, align 4, !tbaa !33
  %..i5014 = tail call i32 @llvm.smin.i32(i32 %i.gqg, i32 %.0.lcssa)
  store i32 %..i5014, ptr %.sink.i.i5013, align 4, !tbaa !33
  %i.gqh = getelementptr inbounds nuw i8, ptr %.sink.i.i5013, i64 8 ; 2 uses
  %i.gqi = load i32, ptr %i.gqh, align 4, !tbaa !33
  %i.gqj = tail call i32 @llvm.smax.i32(i32 %i.gqi, i32 %.0.lcssa)
  store i32 %i.gqj, ptr %i.gqh, align 4, !tbaa !33
  %i.gqk = getelementptr inbounds nuw i8, ptr %.sink.i.i5013, i64 4 ; 2 uses
  %i.gql = load i32, ptr %i.gqk, align 4, !tbaa !33
  %i.gqm = tail call i32 @llvm.smin.i32(i32 %i.gql, i32 %.03159.lcssa)
  store i32 %i.gqm, ptr %i.gqk, align 4, !tbaa !33
  %i.gqn = getelementptr inbounds nuw i8, ptr %.sink.i.i5013, i64 12 ; 2 uses
  %i.gqo = load i32, ptr %i.gqn, align 4, !tbaa !33
  %i.gqp = tail call i32 @llvm.smax.i32(i32 %i.gqo, i32 %.03159.lcssa)
  store i32 %i.gqp, ptr %i.gqn, align 4, !tbaa !33
  %i.gqq = getelementptr inbounds nuw i8, ptr %.sink.i.i5013, i64 16 ; 2 uses
  %i.gqr = load i32, ptr %i.gqq, align 4, !tbaa !33
  %i.gqs = add nsw i32 %i.gqr, 1
  store i32 %i.gqs, ptr %i.gqq, align 4, !tbaa !33
  %i.gqt = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.gqu = load ptr, ptr %i.gqt, align 8, !tbaa !50
  %i.gqv = getelementptr inbounds nuw [16 x i8], ptr %i.gqu, i64 %i.gqe ; 3 uses
  %i.gqw = load i64, ptr %i.gqv, align 8, !tbaa !116
  %i.gqx = add i64 %i.gqw, %i.gpp
  store i64 %i.gqx, ptr %i.gqv, align 8, !tbaa !116
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
  %i.gqy = ptrtoint ptr %.sroa.05029.0 to i64
  %i.gqz = sub i64 %.sroa.10.0, %i.gqy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.05029.0, i64 noundef %i.gqz) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.alf:                                           ; preds = %bb.alb
  store i16 0, ptr %i.gpq, align 2, !tbaa !54
  %i.gra = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.grb = load ptr, ptr %i.gra, align 8, !tbaa !55 ; 6 uses
  %i.grc = load i32, ptr %i.grb, align 4, !tbaa !33
  %..i5017 = tail call i32 @llvm.smin.i32(i32 %i.grc, i32 %.0.lcssa)
  store i32 %..i5017, ptr %i.grb, align 4, !tbaa !33
  %i.grd = getelementptr inbounds nuw i8, ptr %i.grb, i64 8 ; 2 uses
  %i.gre = load i32, ptr %i.grd, align 4, !tbaa !33
  %i.grf = tail call i32 @llvm.smax.i32(i32 %i.gre, i32 %.0.lcssa)
  store i32 %i.grf, ptr %i.grd, align 4, !tbaa !33
  %i.grg = getelementptr inbounds nuw i8, ptr %i.grb, i64 4 ; 2 uses
  %i.grh = load i32, ptr %i.grg, align 4, !tbaa !33
  %i.gri = tail call i32 @llvm.smin.i32(i32 %i.grh, i32 %.03159.lcssa)
  store i32 %i.gri, ptr %i.grg, align 4, !tbaa !33
  %i.grj = getelementptr inbounds nuw i8, ptr %i.grb, i64 12 ; 2 uses
  %i.grk = load i32, ptr %i.grj, align 4, !tbaa !33
  %i.grl = tail call i32 @llvm.smax.i32(i32 %i.grk, i32 %.03159.lcssa)
  store i32 %i.grl, ptr %i.grj, align 4, !tbaa !33
  %i.grm = getelementptr inbounds nuw i8, ptr %i.grb, i64 16 ; 2 uses
  %i.grn = load i32, ptr %i.grm, align 4, !tbaa !33
  %i.gro = add nsw i32 %i.grn, 1
  store i32 %i.gro, ptr %i.grm, align 4, !tbaa !33
  %i.grp = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.grq = load ptr, ptr %i.grp, align 8, !tbaa !50 ; 3 uses
  %i.grr = load i64, ptr %i.grq, align 8, !tbaa !116
  %i.grs = add i64 %i.grr, %i.gpp
  store i64 %i.grs, ptr %i.grq, align 8, !tbaa !116
  br label %.sink.split

bb.alg:                                           ; preds = %bb.ala
  %i.grt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gru = load ptr, ptr %i.grt, align 8, !tbaa !55 ; 6 uses
  %i.grv = load i32, ptr %i.gru, align 4, !tbaa !33
  %..i5020 = tail call i32 @llvm.smin.i32(i32 %i.grv, i32 %.0.lcssa)
  store i32 %..i5020, ptr %i.gru, align 4, !tbaa !33
  %i.grw = getelementptr inbounds nuw i8, ptr %i.gru, i64 8 ; 2 uses
  %i.grx = load i32, ptr %i.grw, align 4, !tbaa !33
  %i.gry = tail call i32 @llvm.smax.i32(i32 %i.grx, i32 %.0.lcssa)
  store i32 %i.gry, ptr %i.grw, align 4, !tbaa !33
  %i.grz = getelementptr inbounds nuw i8, ptr %i.gru, i64 4 ; 2 uses
  %i.gsa = load i32, ptr %i.grz, align 4, !tbaa !33
  %i.gsb = tail call i32 @llvm.smin.i32(i32 %i.gsa, i32 %.03159.lcssa)
  store i32 %i.gsb, ptr %i.grz, align 4, !tbaa !33
  %i.gsc = getelementptr inbounds nuw i8, ptr %i.gru, i64 12 ; 2 uses
  %i.gsd = load i32, ptr %i.gsc, align 4, !tbaa !33
  %i.gse = tail call i32 @llvm.smax.i32(i32 %i.gsd, i32 %.03159.lcssa)
  store i32 %i.gse, ptr %i.gsc, align 4, !tbaa !33
  %i.gsf = getelementptr inbounds nuw i8, ptr %i.gru, i64 16 ; 2 uses
  %i.gsg = load i32, ptr %i.gsf, align 4, !tbaa !33
  %i.gsh = add nsw i32 %i.gsg, 1
  store i32 %i.gsh, ptr %i.gsf, align 4, !tbaa !33
  %i.gsi = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.gsj = load ptr, ptr %i.gsi, align 8, !tbaa !50 ; 3 uses
  %i.gsk = load i64, ptr %i.gsj, align 8, !tbaa !116
  %i.gsl = add i64 %i.gsk, %i.gpp
  store i64 %i.gsl, ptr %i.gsj, align 8, !tbaa !116
  br label %.sink.split

.sink.split:                                      ; preds = %bb.alc, %bb.alf, %bb.alg
  %.sink6745 = phi ptr [ %i.gsj, %bb.alg ], [ %i.grq, %bb.alf ], [ %i.gqv, %bb.alc ]
  %i.gsm = getelementptr inbounds nuw i8, ptr %.sink6745, i64 8 ; 2 uses
  %i.gsn = load i64, ptr %i.gsm, align 8, !tbaa !117
  %i.gso = add i64 %i.gsn, %i.gkc
  store i64 %i.gso, ptr %i.gsm, align 8, !tbaa !117
  br label %bb.alh

bb.alh:                                           ; preds = %.sink.split, %._crit_edge5616, %._crit_edge5611
  %i.gsp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gsq = load i32, ptr %i.gsp, align 8, !tbaa !95
  %i.gsr = icmp sgt i32 %i.gsq, 0
  br i1 %i.gsr, label %.lr.ph.i5021, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit

.lr.ph.i5021:                                     ; preds = %bb.alh
  %i.gss = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.gst = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gsu = load ptr, ptr %i.gst, align 8, !tbaa !55
  %i.gsv = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.gsw = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.gsx = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.gsy = load ptr, ptr %i.gsx, align 8, !tbaa !55
  %i.gsz = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.gta = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.gtb = load ptr, ptr %i.gta, align 8
  br label %bb.ali

bb.ali:                                           ; preds = %bb.all, %.lr.ph.i5021
  %indvars.iv.i5022 = phi i64 [ 0, %.lr.ph.i5021 ], [ %indvars.iv.next.i5026, %bb.all ] ; 4 uses
  %i.gtc = load i32, ptr %i.gss, align 4, !tbaa !96
  %i.gtd = icmp slt i32 %i.gtc, 2
  %i.gte = load i64, ptr %i.gsv, align 8
  %i.gtf = mul i64 %i.gte, %indvars.iv.i5022
  %.sink.idx.i.i5023 = select i1 %i.gtd, i64 0, i64 %i.gtf
  %.sink.i.i5024 = getelementptr inbounds nuw i8, ptr %i.gsu, i64 %.sink.idx.i.i5023 ; 6 uses
  %i.gtg = getelementptr inbounds nuw i8, ptr %.sink.i.i5024, i64 16
  %i.gth = load i32, ptr %i.gtg, align 4, !tbaa !33 ; 2 uses
  %i.gti = load i32, ptr %i.gsw, align 4, !tbaa !96
  %i.gtj = icmp slt i32 %i.gti, 2
  %i.gtk = load i64, ptr %i.gsz, align 8
  %i.gtl = mul i64 %i.gtk, %indvars.iv.i5022
  %.sink.idx.i25.i = select i1 %i.gtj, i64 0, i64 %i.gtl
  %.sink.i26.i = getelementptr inbounds nuw i8, ptr %i.gsy, i64 %.sink.idx.i25.i
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
