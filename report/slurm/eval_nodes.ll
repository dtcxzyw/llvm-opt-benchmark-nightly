inline.NumInlined: 19
inline.NumDeleted: 6
begin_hunk_0_@eval_nodes:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  %i.amy = load i32, ptr %i.a, align 4
  %i.amz = add nsw i32 %i.amy, 1                  ; 3 uses
  store i32 %i.amz, ptr %i.a, align 4
  %i.ana = icmp slt i32 %i.amz, %.3357.i
  br i1 %i.ana, label %.lr.ph645.i, label %.loopexit593.i, !llvm.loop !34

.loopexit593.i:                                   ; preds = %bb.jv, %bb.jk
  %.not473.i = icmp eq i32 %.3357.i, 0
  br i1 %.not473.i, label %.critedge3.i, label %.lr.ph778.i

.lr.ph778.i:                                      ; preds = %.loopexit593.i, %bb.jo
  %i.anb = getelementptr inbounds nuw i8, ptr %i.aat, i64 64 ; 4 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.aap, i64 448 ; 4 uses
  %i.and = sext i32 %.3357.i to i64               ; 2 uses
  %i.ane = call i32 @llvm.usub.sat.i32(i32 %i.aay, i32 %i.aaw)
  %i.anf = load i32, ptr %i.acd, align 8
  %.not474.i169 = icmp eq i32 %i.anf, 0
  br i1 %.not474.i169, label %.critedge3.i, label %.preheader591.i.lr.ph

.preheader591.i.lr.ph:                            ; preds = %.lr.ph778.i
  %i.ang = icmp sgt i32 %.3357.i, 0
  br i1 %i.ang, label %.preheader591.i.us, label %.critedge3.i.sink.split

.preheader591.i.us:                               ; preds = %.preheader591.i.lr.ph, %bb.ma
  %.0423770.i175.us = phi i32 [ %.3426.i.us, %bb.ma ], [ 0, %.preheader591.i.lr.ph ]
  %.0415771.i174.us = phi i64 [ %.3418.i.us, %bb.ma ], [ 0, %.preheader591.i.lr.ph ]
  %.2407772.i173.us = phi i64 [ %.9414.i.us, %bb.ma ], [ %.1406887.i, %.preheader591.i.lr.ph ] ; 4 uses
  %.2381774.i172.us = phi i32 [ %.9388.i.us, %bb.ma ], [ %.1380888.i, %.preheader591.i.lr.ph ] ; 4 uses
  %.3371775.i171.us = phi i32 [ %.10378.i.us, %bb.ma ], [ %.2370889.i, %.preheader591.i.lr.ph ] ; 9 uses
  %.2366776.i170.us = phi i32 [ %.9.i.us, %bb.ma ], [ %.1365890.i, %.preheader591.i.lr.ph ] ; 10 uses
  store i32 0, ptr %i.a, align 4
  %.0.i520.i.us = sub i32 %.3371775.i171.us, %i.ane
  %.pre812.i.us = load ptr, ptr %i.d, align 8     ; 2 uses
  br label %bb.jw

bb.jw:                                            ; preds = %.loopexit.i.us, %.preheader591.i.us
  %i.anh = phi ptr [ %.pre812.i.us, %.preheader591.i.us ], [ %i.apq, %.loopexit.i.us ] ; 4 uses
  %i.ani = phi ptr [ %.pre812.i.us, %.preheader591.i.us ], [ %i.apr, %.loopexit.i.us ] ; 5 uses
  %.0389652.i.us = phi i32 [ 0, %.preheader591.i.us ], [ %.3392.i.us, %.loopexit.i.us ] ; 5 uses
  %.1416651.i.us = phi i64 [ %.0415771.i174.us, %.preheader591.i.us ], [ %.3418.i.us, %.loopexit.i.us ] ; 6 uses
  %.1424650.i.us = phi i32 [ %.0423770.i175.us, %.preheader591.i.us ], [ %.3426.i.us, %.loopexit.i.us ] ; 4 uses
  %.0428649.i.us = phi i32 [ 0, %.preheader591.i.us ], [ %.2430.i.us, %.loopexit.i.us ] ; 4 uses
  %.0432648.i.us = phi i32 [ -1, %.preheader591.i.us ], [ %.2434.i.us, %.loopexit.i.us ] ; 5 uses
  %.0436647.i.us = phi i32 [ 0, %.preheader591.i.us ], [ %.2438.i.us, %.loopexit.i.us ] ; 6 uses
  %storemerge475646.i.us = phi i32 [ 0, %.preheader591.i.us ], [ %i.aps, %.loopexit.i.us ] ; 5 uses
  %i.anj = sext i32 %storemerge475646.i.us to i64 ; 4 uses
  %i.ank = getelementptr inbounds [4 x i8], ptr %i.ani, i64 %i.anj
  %i.anl = load i32, ptr %i.ank, align 4          ; 2 uses
  %i.anm = icmp eq i32 %i.anl, 0
  br i1 %i.anm, label %.loopexit.i.us, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.ann = load i16, ptr %i.anb, align 8
  %.not476.i.us = icmp eq i16 %i.ann, 0
  br i1 %.not476.i.us, label %bb.ka, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.ano = load ptr, ptr %i.aau, align 8
  %.not477.i.us = icmp eq ptr %i.ano, null
  br i1 %.not477.i.us, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.anp = load ptr, ptr %i.g, align 8
  %i.anq = getelementptr inbounds [4 x i8], ptr %i.anp, i64 %i.anj
  %i.anr = load i32, ptr %i.anq, align 4
  %i.ans = icmp eq i32 %i.anr, -1
  br i1 %i.ans, label %.loopexit.i.us, label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy, %bb.jx
  %i.ant = load ptr, ptr %i.b, align 8
  %i.anu = getelementptr inbounds [4 x i8], ptr %i.ant, i64 %i.anj
  %i.anv = load i32, ptr %i.anu, align 4
  %.not478.i.us = icmp slt i32 %i.anv, %.2366776.i170.us
  %.not583.i.us = icmp slt i32 %i.anl, %.0.i520.i.us
  %or.cond793.i.us = select i1 %.not478.i.us, i1 true, i1 %.not583.i.us
  br i1 %or.cond793.i.us, label %.thread539.i.us, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.anw = load i8, ptr %i.abo, align 1, !range !14, !noundef !15
  %i.anx = trunc nuw i8 %i.anw to i1
  br i1 %i.anx, label %bb.kc, label %.thread539.i.us

bb.kc:                                            ; preds = %bb.kb
  %i.any = load ptr, ptr %i.abl, align 8
  %i.anz = load ptr, ptr %i.c, align 8
  %i.aoa = getelementptr inbounds [8 x i8], ptr %i.anz, i64 %i.anj
  %i.aob = load ptr, ptr %i.aoa, align 8
  %i.aoc = call zeroext i1 @gres_sched_sufficient(ptr noundef %i.any, ptr noundef %i.aob) #8
  %.pre811.i.us = load ptr, ptr %i.d, align 8     ; 2 uses
  %.pre814.pre.i.us = load i32, ptr %i.a, align 4
  br label %.thread539.i.us

.thread539.i.us:                                  ; preds = %bb.kc, %bb.kb, %bb.ka
  %.pre814.i.us = phi i32 [ %.pre814.pre.i.us, %bb.kc ], [ %storemerge475646.i.us, %bb.kb ], [ %storemerge475646.i.us, %bb.ka ] ; 9 uses
  %i.aod = phi ptr [ %.pre811.i.us, %bb.kc ], [ %i.anh, %bb.kb ], [ %i.anh, %bb.ka ] ; 6 uses
  %i.aoe = phi ptr [ %.pre811.i.us, %bb.kc ], [ %i.ani, %bb.kb ], [ %i.ani, %bb.ka ] ; 2 uses
  %.0363.in.i.us = phi i1 [ %i.aoc, %bb.kc ], [ true, %bb.kb ], [ false, %bb.ka ] ; 4 uses
  %.0363.i.us = zext i1 %.0363.in.i.us to i32
  %i.aof = icmp eq i32 %.0389652.i.us, 0
  br i1 %i.aof, label %.thread539..thread547_crit_edge.i.us, label %bb.kd

bb.kd:                                            ; preds = %.thread539.i.us
  %i.aog = icmp eq i32 %.0432648.i.us, -1
  br i1 %i.aog, label %bb.ke, label %._crit_edge843.i.us

._crit_edge843.i.us:                              ; preds = %bb.kd
  %.pre849.i.us = sext i32 %.pre814.i.us to i64
  br label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.aoh = load ptr, ptr %i.g, align 8
  %i.aoi = sext i32 %.pre814.i.us to i64          ; 3 uses
  %i.aoj = getelementptr inbounds [4 x i8], ptr %i.aoh, i64 %i.aoi
  %i.aok = load i32, ptr %i.aoj, align 4
  %.not479.i.us = icmp eq i32 %i.aok, -1
  br i1 %.not479.i.us, label %bb.kf, label %.thread547.i.us

bb.kf:                                            ; preds = %bb.ke, %._crit_edge843.i.us
  %.pre-phi850.i.us = phi i64 [ %.pre849.i.us, %._crit_edge843.i.us ], [ %i.aoi, %bb.ke ] ; 7 uses
  %i.aol = load ptr, ptr %i.h, align 8
  %i.aom = getelementptr inbounds [8 x i8], ptr %i.aol, i64 %.pre-phi850.i.us
  %i.aon = load i64, ptr %i.aom, align 8          ; 2 uses
  %i.aoo = icmp ult i64 %i.aon, %.1416651.i.us
  br i1 %i.aoo, label %.thread547.i.us, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.aop = icmp eq i64 %i.aon, %.1416651.i.us
  br i1 %i.aop, label %bb.kh, label %bb.kk

bb.kh:                                            ; preds = %bb.kg
  %i.aoq = icmp eq i32 %.0428649.i.us, 0
  %or.cond5.i124.us = select i1 %.0363.in.i.us, i1 %i.aoq, i1 false
  br i1 %or.cond5.i124.us, label %.thread547.i.us, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.aor = load ptr, ptr %i.b, align 8
  %i.aos = getelementptr inbounds [4 x i8], ptr %i.aor, i64 %.pre-phi850.i.us
  %i.aot = load i32, ptr %i.aos, align 4          ; 2 uses
  br i1 %.0363.in.i.us, label %bb.kj, label %.critedge515.i.us

.critedge515.i.us:                                ; preds = %bb.ki
  %i.aou = icmp sgt i32 %i.aot, %.0436647.i.us
  br i1 %i.aou, label %.thread547.i.us, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.aov = icmp slt i32 %i.aot, %.0436647.i.us
  br i1 %i.aov, label %.thread547.i.us, label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %.critedge515.i.us, %bb.kg
  %.not584.i.us = icmp eq i32 %.0428649.i.us, 0
  %.pr.pre815.i.us = load i16, ptr %i.anb, align 8 ; 3 uses
  br i1 %.not584.i.us, label %bb.kl, label %thread-pre-split.i.us

bb.kl:                                            ; preds = %bb.kk
  %i.aow = icmp ne i16 %.pr.pre815.i.us, 0
  %or.cond9.i.us = select i1 %i.aow, i1 %.0363.in.i.us, i1 false
  br i1 %or.cond9.i.us, label %.thread547.i.us, label %thread-pre-split.i.us

.thread539..thread547_crit_edge.i.us:             ; preds = %.thread539.i.us
  %.pre847.i.us = sext i32 %.pre814.i.us to i64
  br label %.thread547.i.us

.thread547.i.us:                                  ; preds = %.thread539..thread547_crit_edge.i.us, %bb.kl, %bb.kj, %.critedge515.i.us, %bb.kh, %bb.kf, %bb.ke
  %.pre-phi848.i.us = phi i64 [ %.pre847.i.us, %.thread539..thread547_crit_edge.i.us ], [ %.pre-phi850.i.us, %bb.kf ], [ %i.aoi, %bb.ke ], [ %.pre-phi850.i.us, %bb.kh ], [ %.pre-phi850.i.us, %.critedge515.i.us ], [ %.pre-phi850.i.us, %bb.kj ], [ %.pre-phi850.i.us, %bb.kl ] ; 4 uses
  %i.aox = load ptr, ptr %i.b, align 8
  %i.aoy = getelementptr inbounds [4 x i8], ptr %i.aox, i64 %.pre-phi848.i.us
  %i.aoz = load i32, ptr %i.aoy, align 4
  %i.apa = getelementptr inbounds [4 x i8], ptr %i.aod, i64 %.pre-phi848.i.us
  %i.apb = load i32, ptr %i.apa, align 4
  %i.apc = load ptr, ptr %i.g, align 8
  %i.apd = getelementptr inbounds [4 x i8], ptr %i.apc, i64 %.pre-phi848.i.us
  %i.ape = load i32, ptr %i.apd, align 4
  %i.apf = load ptr, ptr %i.h, align 8
  %i.apg = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %.pre-phi848.i.us
  %i.aph = load i64, ptr %i.apg, align 8
  %.pr.pre.i.us = load i16, ptr %i.anb, align 8
  br label %thread-pre-split.i.us

thread-pre-split.i.us:                            ; preds = %.thread547.i.us, %bb.kl, %bb.kk
  %i.api = phi ptr [ %i.aoe, %bb.kl ], [ %i.aod, %.thread547.i.us ], [ %i.aoe, %bb.kk ] ; 4 uses
  %i.apj = phi i16 [ %.pr.pre815.i.us, %bb.kl ], [ %.pr.pre.i.us, %.thread547.i.us ], [ %.pr.pre815.i.us, %bb.kk ]
  %.1437.i.us = phi i32 [ %.0436647.i.us, %bb.kl ], [ %i.aoz, %.thread547.i.us ], [ %.0436647.i.us, %bb.kk ] ; 4 uses
  %.1433.i.us = phi i32 [ %.0432648.i.us, %bb.kl ], [ %i.ape, %.thread547.i.us ], [ %.0432648.i.us, %bb.kk ] ; 4 uses
  %.1429.i.us = phi i32 [ 0, %bb.kl ], [ %.0363.i.us, %.thread547.i.us ], [ 1, %bb.kk ] ; 4 uses
  %.2425.i.us = phi i32 [ %.1424650.i.us, %bb.kl ], [ %.pre814.i.us, %.thread547.i.us ], [ %.1424650.i.us, %bb.kk ] ; 4 uses
  %.2417.i.us = phi i64 [ %.1416651.i.us, %bb.kl ], [ %i.aph, %.thread547.i.us ], [ %.1416651.i.us, %bb.kk ] ; 4 uses
  %.1390.i.us = phi i32 [ %.0389652.i.us, %bb.kl ], [ %i.apb, %.thread547.i.us ], [ %.0389652.i.us, %bb.kk ] ; 4 uses
  %.not480.i.us = icmp eq i16 %i.apj, 0
  br i1 %.not480.i.us, label %.loopexit.i.us, label %bb.km

bb.km:                                            ; preds = %thread-pre-split.i.us
  %i.apk = load ptr, ptr %i.aau, align 8
  %.not481.i.us = icmp eq ptr %i.apk, null
  br i1 %.not481.i.us, label %.loopexit.i.us, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.apl = load ptr, ptr %i.g, align 8
  %i.apm = sext i32 %.pre814.i.us to i64
  %indvars.iv.next.i121.us360 = add nsw i64 %i.apm, 1 ; 2 uses
  %.not484.i.us361 = icmp slt i64 %indvars.iv.next.i121.us360, %i.and
  br i1 %.not484.i.us361, label %.lr.ph, label %.loopexit.i.us

bb.ko:                                            ; preds = %.lr.ph
  %indvars.iv.next.i121.us = add nsw i64 %indvars.iv.next.i121.us362, 1 ; 2 uses
  %.not484.i.us = icmp slt i64 %indvars.iv.next.i121.us, %i.and
  br i1 %.not484.i.us, label %.lr.ph, label %.loopexit.i.us, !llvm.loop !35

.lr.ph:                                           ; preds = %bb.kn, %bb.ko
  %indvars.iv.next.i121.us362 = phi i64 [ %indvars.iv.next.i121.us, %bb.ko ], [ %indvars.iv.next.i121.us360, %bb.kn ] ; 2 uses
  %i.apn = getelementptr inbounds [4 x i8], ptr %i.apl, i64 %indvars.iv.next.i121.us362
  %i.apo = load i32, ptr %i.apn, align 4
  %.not482.i.us = icmp eq i32 %i.apo, -1
  br i1 %.not482.i.us, label %bb.ko, label %.critedge3.i, !llvm.loop !35

.loopexit.i.us:                                   ; preds = %bb.ko, %bb.kn, %bb.km, %thread-pre-split.i.us, %bb.jz, %bb.jw
  %i.app = phi i32 [ %storemerge475646.i.us, %bb.jw ], [ %storemerge475646.i.us, %bb.jz ], [ %.pre814.i.us, %thread-pre-split.i.us ], [ %.pre814.i.us, %bb.km ], [ %.pre814.i.us, %bb.kn ], [ %.pre814.i.us, %bb.ko ]
  %i.apq = phi ptr [ %i.anh, %bb.jw ], [ %i.anh, %bb.jz ], [ %i.aod, %thread-pre-split.i.us ], [ %i.aod, %bb.km ], [ %i.aod, %bb.kn ], [ %i.aod, %bb.ko ]
  %i.apr = phi ptr [ %i.ani, %bb.jw ], [ %i.ani, %bb.jz ], [ %i.api, %thread-pre-split.i.us ], [ %i.api, %bb.km ], [ %i.api, %bb.kn ], [ %i.api, %bb.ko ]
  %.2438.i.us = phi i32 [ %.0436647.i.us, %bb.jw ], [ %.0436647.i.us, %bb.jz ], [ %.1437.i.us, %thread-pre-split.i.us ], [ %.1437.i.us, %bb.km ], [ %.1437.i.us, %bb.kn ], [ %.1437.i.us, %bb.ko ]
  %.2434.i.us = phi i32 [ %.0432648.i.us, %bb.jw ], [ %.0432648.i.us, %bb.jz ], [ %.1433.i.us, %thread-pre-split.i.us ], [ %.1433.i.us, %bb.km ], [ %.1433.i.us, %bb.kn ], [ %.1433.i.us, %bb.ko ] ; 7 uses
  %.2430.i.us = phi i32 [ %.0428649.i.us, %bb.jw ], [ %.0428649.i.us, %bb.jz ], [ %.1429.i.us, %thread-pre-split.i.us ], [ %.1429.i.us, %bb.km ], [ %.1429.i.us, %bb.kn ], [ %.1429.i.us, %bb.ko ] ; 2 uses
  %.3426.i.us = phi i32 [ %.1424650.i.us, %bb.jw ], [ %.1424650.i.us, %bb.jz ], [ %.2425.i.us, %thread-pre-split.i.us ], [ %.2425.i.us, %bb.km ], [ %.2425.i.us, %bb.kn ], [ %.2425.i.us, %bb.ko ] ; 5 uses
  %.3418.i.us = phi i64 [ %.1416651.i.us, %bb.jw ], [ %.1416651.i.us, %bb.jz ], [ %.2417.i.us, %thread-pre-split.i.us ], [ %.2417.i.us, %bb.km ], [ %.2417.i.us, %bb.kn ], [ %.2417.i.us, %bb.ko ] ; 2 uses
  %.3392.i.us = phi i32 [ %.0389652.i.us, %bb.jw ], [ %.0389652.i.us, %bb.jz ], [ %.1390.i.us, %thread-pre-split.i.us ], [ %.1390.i.us, %bb.km ], [ %.1390.i.us, %bb.kn ], [ %.1390.i.us, %bb.ko ] ; 2 uses
  %i.aps = add nsw i32 %i.app, 1                  ; 3 uses
  store i32 %i.aps, ptr %i.a, align 4
  %i.apt = icmp slt i32 %i.aps, %.3357.i
  br i1 %i.apt, label %bb.jw, label %._crit_edge654.i.us, !llvm.loop !36

._crit_edge654.i.us:                              ; preds = %.loopexit.i.us
  %i.apu = icmp eq i32 %.3392.i.us, 0
  br i1 %i.apu, label %.critedge3.i, label %bb.kp

bb.kp:                                            ; preds = %._crit_edge654.i.us
  %i.apv = icmp ne i32 %.2430.i.us, 0
  %i.apw = load i16, ptr %i.anb, align 8
  %i.apx = icmp eq i16 %i.apw, 0
  %or.cond11.i.us = select i1 %i.apx, i1 true, i1 %i.apv
  br i1 %or.cond11.i.us, label %bb.kq, label %.critedge3.i

bb.kq:                                            ; preds = %bb.kp
  %.not485.i.us = icmp eq i32 %.2434.i.us, -1
  br i1 %.not485.i.us, label %bb.lh, label %.preheader590.i.us

.preheader590.i.us:                               ; preds = %bb.kq
  %i.apy = sext i32 %.3426.i.us to i64            ; 4 uses
  store i32 %.2434.i.us, ptr %i.a, align 4
  %i.apz = load ptr, ptr %i.f, align 8
  %i.aqa = getelementptr inbounds [4 x i8], ptr %i.apz, i64 %i.apy
  %i.aqb = load i32, ptr %i.aqa, align 4
  %.not498660.i.us = icmp sgt i32 %.2434.i.us, %i.aqb
  br i1 %.not498660.i.us, label %._crit_edge667.i.us, label %.lr.ph666.i.us

.lr.ph666.i.us:                                   ; preds = %.preheader590.i.us, %bb.ky
  %i.aqc = phi i32 [ %i.arh, %bb.ky ], [ %.2434.i.us, %.preheader590.i.us ]
  %.3367665.i.us = phi i32 [ %.4.i.us, %bb.ky ], [ %.2366776.i170.us, %.preheader590.i.us ] ; 8 uses
  %.4372664.i.us = phi i32 [ %.5373.i.us, %bb.ky ], [ %.3371775.i171.us, %.preheader590.i.us ] ; 8 uses
  %.3382663.i.us = phi i32 [ %.4383.i.us, %bb.ky ], [ %.2381774.i172.us, %.preheader590.i.us ] ; 8 uses
  %.3408661.i.us = phi i64 [ %.4409.i.us, %bb.ky ], [ %.2407772.i173.us, %.preheader590.i.us ] ; 8 uses
  %i.aqd = load i32, ptr %i.acd, align 8
  %i.aqe = icmp eq i32 %i.aqd, 0
  br i1 %i.aqe, label %._crit_edge667.i.us, label %bb.kr

bb.kr:                                            ; preds = %.lr.ph666.i.us
  %i.aqf = icmp slt i32 %.4372664.i.us, 1
  %i.aqg = icmp slt i32 %.3367665.i.us, 1
  %or.cond13.i.us = select i1 %i.aqf, i1 %i.aqg, i1 false
  br i1 %or.cond13.i.us, label %bb.ks, label %bb.ku

bb.ks:                                            ; preds = %bb.kr
  %i.aqh = load i8, ptr %i.abo, align 1, !range !14, !noundef !15
  %i.aqi = trunc nuw i8 %i.aqh to i1
  br i1 %i.aqi, label %bb.kt, label %._crit_edge667.i.us

bb.kt:                                            ; preds = %bb.ks
  %i.aqj = load ptr, ptr %i.abl, align 8
  %i.aqk = load i32, ptr %i.anc, align 8
  %i.aql = call zeroext i1 @gres_sched_test(ptr noundef %i.aqj, i32 noundef %i.aqk) #8
  br i1 %i.aql, label %._crit_edge667.i.us, label %._crit_edge817.i.us

._crit_edge817.i.us:                              ; preds = %bb.kt
  %.pre818.i.us = load i32, ptr %i.a, align 4
  br label %bb.ku

bb.ku:                                            ; preds = %._crit_edge817.i.us, %bb.kr
  %i.aqm = phi i32 [ %.pre818.i.us, %._crit_edge817.i.us ], [ %i.aqc, %bb.kr ]
  %i.aqn = load ptr, ptr %i.ap, align 8
  %i.aqo = sext i32 %i.aqm to i64
  %i.aqp = call i32 @slurm_bit_test(ptr noundef %i.aqn, i64 noundef %i.aqo) #8
  %.not499.i.us = icmp eq i32 %i.aqp, 0
  %.pre821.i.us = load i32, ptr %i.a, align 4     ; 4 uses
  br i1 %.not499.i.us, label %bb.kv, label %bb.ky

bb.kv:                                            ; preds = %bb.ku
  %i.aqq = sext i32 %.pre821.i.us to i64
  %i.aqr = getelementptr inbounds [2 x i8], ptr %i.abi, i64 %i.aqq
  %i.aqs = load i16, ptr %i.aqr, align 2          ; 2 uses
  %i.aqt = icmp eq i16 %i.aqs, 0
  br i1 %i.aqt, label %bb.ky, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  store i16 %i.aqs, ptr %i.aaz, align 8
  %i.aqu = call zeroext i1 @eval_nodes_cpus_to_use(ptr noundef nonnull %0, i32 noundef %.pre821.i.us, i64 noundef %.3408661.i.us, i32 noundef %.3382663.i.us, ptr noundef nonnull %i.j, i1 noundef zeroext true)
  %.pre820.i.us = load i32, ptr %i.a, align 4     ; 2 uses
  br i1 %i.aqu, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.aqv = load ptr, ptr %i.ap, align 8
  %i.aqw = sext i32 %.pre820.i.us to i64
  call void @bit_set(ptr noundef %i.aqv, i64 noundef %i.aqw) #8
  %i.aqx = add nsw i32 %.4372664.i.us, -1
  %i.aqy = add nsw i32 %.3382663.i.us, -1
  %i.aqz = load i32, ptr %i.acd, align 8
  %i.ara = add i32 %i.aqz, -1
  store i32 %i.ara, ptr %i.acd, align 8
  %i.arb = load i16, ptr %i.aaz, align 8          ; 2 uses
  %i.arc = zext i16 %i.arb to i32
  %i.ard = sub nsw i32 %.3367665.i.us, %i.arc
  %i.are = zext i16 %i.arb to i64
  %i.arf = sub nsw i64 %.3408661.i.us, %i.are
  %.pre819.i.us = load i32, ptr %i.a, align 4
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw, %bb.kv, %bb.ku
  %i.arg = phi i32 [ %.pre821.i.us, %bb.ku ], [ %.pre821.i.us, %bb.kv ], [ %.pre819.i.us, %bb.kx ], [ %.pre820.i.us, %bb.kw ] ; 2 uses
  %.4409.i.us = phi i64 [ %.3408661.i.us, %bb.ku ], [ %.3408661.i.us, %bb.kv ], [ %i.arf, %bb.kx ], [ %.3408661.i.us, %bb.kw ] ; 2 uses
  %.4383.i.us = phi i32 [ %.3382663.i.us, %bb.ku ], [ %.3382663.i.us, %bb.kv ], [ %i.aqy, %bb.kx ], [ %.3382663.i.us, %bb.kw ] ; 2 uses
  %.5373.i.us = phi i32 [ %.4372664.i.us, %bb.ku ], [ %.4372664.i.us, %bb.kv ], [ %i.aqx, %bb.kx ], [ %.4372664.i.us, %bb.kw ] ; 2 uses
  %.4.i.us = phi i32 [ %.3367665.i.us, %bb.ku ], [ %.3367665.i.us, %bb.kv ], [ %i.ard, %bb.kx ], [ %.3367665.i.us, %bb.kw ] ; 2 uses
  %i.arh = add nsw i32 %i.arg, 1                  ; 2 uses
  store i32 %i.arh, ptr %i.a, align 4
  %i.ari = load ptr, ptr %i.f, align 8
  %i.arj = getelementptr inbounds [4 x i8], ptr %i.ari, i64 %i.apy
  %i.ark = load i32, ptr %i.arj, align 4
  %.not498.not.i.us = icmp slt i32 %i.arg, %i.ark
  br i1 %.not498.not.i.us, label %.lr.ph666.i.us, label %._crit_edge667.i.us, !llvm.loop !37

._crit_edge667.i.us:                              ; preds = %.lr.ph666.i.us, %bb.ks, %bb.kt, %bb.ky, %.preheader590.i.us
  %.3408.lcssa.i.us = phi i64 [ %.2407772.i173.us, %.preheader590.i.us ], [ %.4409.i.us, %bb.ky ], [ %.3408661.i.us, %bb.kt ], [ %.3408661.i.us, %bb.ks ], [ %.3408661.i.us, %.lr.ph666.i.us ] ; 2 uses
  %.3382.lcssa.i.us = phi i32 [ %.2381774.i172.us, %.preheader590.i.us ], [ %.4383.i.us, %bb.ky ], [ %.3382663.i.us, %bb.kt ], [ %.3382663.i.us, %bb.ks ], [ %.3382663.i.us, %.lr.ph666.i.us ] ; 2 uses
  %.4372.lcssa.i.us = phi i32 [ %.3371775.i171.us, %.preheader590.i.us ], [ %.5373.i.us, %bb.ky ], [ %.4372664.i.us, %bb.kt ], [ %.4372664.i.us, %bb.ks ], [ %.4372664.i.us, %.lr.ph666.i.us ] ; 2 uses
  %.3367.lcssa.i.us = phi i32 [ %.2366776.i170.us, %.preheader590.i.us ], [ %.4.i.us, %bb.ky ], [ %.3367665.i.us, %bb.kt ], [ %.3367665.i.us, %bb.ks ], [ %.3367665.i.us, %.lr.ph666.i.us ] ; 2 uses
  %storemerge500695.i.us = add nsw i32 %.2434.i.us, -1 ; 2 uses
  store i32 %storemerge500695.i.us, ptr %i.a, align 4
  %i.arl = load ptr, ptr %i.e, align 8
  %i.arm = getelementptr inbounds [4 x i8], ptr %i.arl, i64 %i.apy
  %i.arn = load i32, ptr %i.arm, align 4
  %.not501.not696.i.us = icmp sgt i32 %.2434.i.us, %i.arn
  br i1 %.not501.not696.i.us, label %.lr.ph703.i.us, label %.loopexit585.i.us

.lr.ph703.i.us:                                   ; preds = %._crit_edge667.i.us, %bb.lg
  %i.aro = phi i32 [ %storemerge500.i.us, %bb.lg ], [ %storemerge500695.i.us, %._crit_edge667.i.us ]
  %.5701.i.us = phi i32 [ %.6.i122.us, %bb.lg ], [ %.3367.lcssa.i.us, %._crit_edge667.i.us ] ; 8 uses
  %.6374700.i.us = phi i32 [ %.7375.i.us, %bb.lg ], [ %.4372.lcssa.i.us, %._crit_edge667.i.us ] ; 8 uses
  %.5384699.i.us = phi i32 [ %.6385.i.us, %bb.lg ], [ %.3382.lcssa.i.us, %._crit_edge667.i.us ] ; 8 uses
  %.5410697.i.us = phi i64 [ %.6411.i.us, %bb.lg ], [ %.3408.lcssa.i.us, %._crit_edge667.i.us ] ; 8 uses
  %i.arp = load i32, ptr %i.acd, align 8
  %i.arq = icmp eq i32 %i.arp, 0
  br i1 %i.arq, label %.loopexit585.i.us, label %bb.kz

bb.kz:                                            ; preds = %.lr.ph703.i.us
  %i.arr = icmp slt i32 %.6374700.i.us, 1
  %i.ars = icmp slt i32 %.5701.i.us, 1
  %or.cond15.i.us = select i1 %i.arr, i1 %i.ars, i1 false
  br i1 %or.cond15.i.us, label %bb.la, label %bb.lc

bb.la:                                            ; preds = %bb.kz
  %i.art = load i8, ptr %i.abo, align 1, !range !14, !noundef !15
  %i.aru = trunc nuw i8 %i.art to i1
  br i1 %i.aru, label %bb.lb, label %.loopexit585.i.us

bb.lb:                                            ; preds = %bb.la
  %i.arv = load ptr, ptr %i.abl, align 8
  %i.arw = load i32, ptr %i.anc, align 8
  %i.arx = call zeroext i1 @gres_sched_test(ptr noundef %i.arv, i32 noundef %i.arw) #8
  br i1 %i.arx, label %.loopexit585.i.us, label %._crit_edge822.i.us

._crit_edge822.i.us:                              ; preds = %bb.lb
  %.pre823.i.us = load i32, ptr %i.a, align 4
  br label %bb.lc

bb.lc:                                            ; preds = %._crit_edge822.i.us, %bb.kz
  %i.ary = phi i32 [ %.pre823.i.us, %._crit_edge822.i.us ], [ %i.aro, %bb.kz ]
  %i.arz = load ptr, ptr %i.ap, align 8
  %i.asa = sext i32 %i.ary to i64
  %i.asb = call i32 @slurm_bit_test(ptr noundef %i.arz, i64 noundef %i.asa) #8
  %.not502.i.us = icmp eq i32 %i.asb, 0
  %.pre826.i.us = load i32, ptr %i.a, align 4     ; 4 uses
  br i1 %.not502.i.us, label %bb.ld, label %bb.lg

bb.ld:                                            ; preds = %bb.lc
  %i.asc = sext i32 %.pre826.i.us to i64
  %i.asd = getelementptr inbounds [2 x i8], ptr %i.abi, i64 %i.asc
  %i.ase = load i16, ptr %i.asd, align 2          ; 2 uses
  %i.asf = icmp eq i16 %i.ase, 0
  br i1 %i.asf, label %bb.lg, label %bb.le

bb.le:                                            ; preds = %bb.ld
  store i16 %i.ase, ptr %i.aaz, align 8
  %i.asg = call zeroext i1 @eval_nodes_cpus_to_use(ptr noundef nonnull %0, i32 noundef %.pre826.i.us, i64 noundef %.5410697.i.us, i32 noundef %.5384699.i.us, ptr noundef nonnull %i.j, i1 noundef zeroext true)
  %.pre825.i.us = load i32, ptr %i.a, align 4     ; 2 uses
  br i1 %i.asg, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.ash = load i16, ptr %i.aaz, align 8          ; 2 uses
  %i.asi = zext i16 %i.ash to i32
  %i.asj = sub nsw i32 %.5701.i.us, %i.asi
  %i.ask = zext i16 %i.ash to i64
  %i.asl = sub nsw i64 %.5410697.i.us, %i.ask
  %i.asm = load ptr, ptr %i.ap, align 8
  %i.asn = sext i32 %.pre825.i.us to i64
end_hunk_0
