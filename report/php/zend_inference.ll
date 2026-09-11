Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_inference?download=true
inline.NumInlined: 423
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 40
begin_hunk_0_@zend_infer_types_ex:bb.a
  %i.gat = and i32 %.1008485.i, -536870913
  %spec.select10794.i = select i1 %.not9222.i, i32 %.1008485.i, i32 %i.gat
  br label %.thread1427

.thread1427:                                      ; preds = %bb.aje, %bb.ajf, %bb.aip, %.thread1432, %bb.ajh, %bb.ajg
  %.1018486.i = phi i32 [ %.938478.i, %bb.ajg ], [ %spec.select10794.i, %.thread1432 ], [ %.938478.i, %bb.ajh ], [ %spec.select10793.i, %bb.aje ], [ %i.fzo, %bb.ajf ], [ %i.fya, %bb.aip ] ; 3 uses
  %i.gau = and i32 %.1018486.i, 551551104
  %or.cond10795.i = icmp eq i32 %i.gau, 128
  br i1 %or.cond10795.i, label %bb.ajw, label %bb.ajx

bb.ajw:                                           ; preds = %.thread1427
  switch i8 %i.zi, label %_zend_update_type_info.exit.thread [
    i8 93, label %bb.ajx
    i8 81, label %bb.ajx
    i8 90, label %bb.ajx
    i8 96, label %bb.ajx
    i8 98, label %bb.ajx
  ]

bb.ajx:                                           ; preds = %.thread1427, %bb.ajw, %bb.ajw, %bb.ajw, %bb.ajw, %bb.ajw
  %i.gav = and i32 %.1018486.i, -268435457        ; 2 uses
  %i.gaw = and i32 %.1018486.i, 1024
  %.not9247.i = icmp eq i32 %i.gaw, 0
  %i.gax = or i32 %i.gav, -520094722
  %spec.select10796.i = select i1 %.not9247.i, i32 %i.gav, i32 %i.gax ; 3 uses
  %i.gay = zext nneg i32 %i.fxy to i64            ; 3 uses
  %i.gaz = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.gay ; 2 uses
  %i.gba = load i32, ptr %i.gaz, align 8, !tbaa !119 ; 2 uses
  %i.gbb = load i32, ptr %i.r, align 8, !tbaa !96
  %i.gbc = icmp uge i32 %i.gba, %i.gbb
  %i.gbd = and i32 %spec.select10796.i, 1073741824
  %.not9248.i = icmp eq i32 %i.gbd, 0
  %or.cond10797.i = or i1 %.not9248.i, %i.gbc
  %i.gbe = or i32 %spec.select10796.i, -2147483648
  %.17695.i = select i1 %or.cond10797.i, i32 %spec.select10796.i, i32 %i.gbe ; 5 uses
  %i.gbf = load i32, ptr %i.s, align 4, !tbaa !120
  %i.gbg = icmp slt i32 %i.gba, %i.gbf
  br i1 %i.gbg, label %bb.ajy, label %.thread1436

bb.ajy:                                           ; preds = %bb.ajx
  %i.gbh = and i32 %.17695.i, -2147482624
  %.not9249.i = icmp eq i32 %i.gbh, 0
  %i.gbi = or i32 %.17695.i, -1073741824
  %spec.select10798.i = select i1 %.not9249.i, i32 %.17695.i, i32 %i.gbi ; 3 uses
  %i.gbj = and i32 %spec.select10798.i, 1073741888
  %or.cond10799.i.not = icmp eq i32 %i.gbj, 1073741888
  %i.gbk = or i32 %spec.select10798.i, -2147483648 ; 2 uses
  %.37697.i = select i1 %or.cond10799.i.not, i32 %i.gbk, i32 %spec.select10798.i ; 2 uses
  %i.gbl = and i32 %.37697.i, 1073742080
  %or.cond10800.i.not = icmp eq i32 %i.gbl, 1073742080
  %.47698.i = select i1 %or.cond10800.i.not, i32 %i.gbk, i32 %.37697.i
  %i.gbm = getelementptr inbounds nuw i8, ptr %i.gaz, i64 40
  %i.gbn = load i8, ptr %i.gbm, align 8
  %i.gbo = lshr i8 %i.gbn, 2
  %i.gbp = and i8 %i.gbo, 3                       ; 2 uses
  %.not9254.i = icmp eq i8 %i.gbp, 0
  %i.gbq = icmp eq i8 %i.gbp, 2
  %..i828 = select i1 %i.gbq, i32 -1067384704, i32 -520093697
  %i.gbr = select i1 %.not9254.i, i32 0, i32 %..i828
  %.57699.i = or i32 %i.gbr, %.47698.i            ; 2 uses
  %i.gbs = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gay ; 2 uses
  %i.gbt = load i32, ptr %i.gbs, align 8, !tbaa !117 ; 2 uses
  %.not9255.i = icmp eq i32 %i.gbt, %.57699.i
  br i1 %.not9255.i, label %bb.aka, label %.thread1440

.thread1436:                                      ; preds = %bb.ajx
  %i.gbu = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gay ; 2 uses
  %i.gbv = load i32, ptr %i.gbu, align 8, !tbaa !117 ; 2 uses
  %.not9255.i1438 = icmp eq i32 %i.gbv, %.17695.i
  br i1 %.not9255.i1438, label %bb.aka, label %.thread1440

.thread1440:                                      ; preds = %bb.ajy, %.thread1436
  %.57699.i14391442 = phi i32 [ %.17695.i, %.thread1436 ], [ %.57699.i, %bb.ajy ] ; 2 uses
  %i.gbw = phi ptr [ %i.gbu, %.thread1436 ], [ %i.gbs, %bb.ajy ]
  %i.gbx = phi i32 [ %i.gbv, %.thread1436 ], [ %i.gbt, %bb.ajy ]
  %i.gby = xor i32 %.57699.i14391442, -1
  %i.gbz = and i32 %i.gbx, %i.gby
  %.not9258.i = icmp eq i32 %i.gbz, 0
  br i1 %.not9258.i, label %bb.ajz, label %.critedge10802.i

.critedge10802.i:                                 ; preds = %.thread1440
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.lf, i32 noundef %i.fxy)
  br label %_zend_update_type_info.exit

bb.ajz:                                           ; preds = %.thread1440
  store i32 %.57699.i14391442, ptr %i.gbw, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.fxy)
  br label %bb.aka

bb.aka:                                           ; preds = %.thread1436, %bb.ajz, %bb.ajy
  %i.gca = load i32, ptr %.08507.i, align 4, !tbaa !57 ; 2 uses
  %i.gcb = icmp sgt i32 %i.gca, -1
  br i1 %i.gcb, label %bb.akb, label %bb.akh

bb.akb:                                           ; preds = %bb.aka
  %i.gcc = zext nneg i32 %i.gca to i64
  %i.gcd = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gcc ; 3 uses
  %i.gce = load i32, ptr %i.gcd, align 8, !tbaa !117
  %i.gcf = and i32 %i.gce, 256
  %.not9259.i = icmp eq i32 %i.gcf, 0
  br i1 %.not9259.i, label %bb.akh, label %bb.akc

bb.akc:                                           ; preds = %bb.akb
  %i.gcg = getelementptr inbounds nuw i8, ptr %i.gcd, i64 32
  %i.gch = load ptr, ptr %i.gcg, align 8, !tbaa !124 ; 4 uses
  %.not9260.i = icmp eq ptr %i.gch, null
  br i1 %.not9260.i, label %bb.akh, label %bb.akd

bb.akd:                                           ; preds = %bb.akc
  %i.gci = load i32, ptr %i.fxx, align 4, !tbaa !36 ; 2 uses
  %i.gcj = sext i32 %i.gci to i64
  %i.gck = getelementptr inbounds [40 x i8], ptr %i.lg, i64 %i.gcj ; 4 uses
  %i.gcl = load i32, ptr %i.gck, align 8, !tbaa !117
  %i.gcm = and i32 %i.gcl, 1024
  %.not9261.i = icmp eq i32 %i.gcm, 0
  br i1 %.not9261.i, label %bb.ake, label %bb.akh

bb.ake:                                           ; preds = %bb.akd
  %i.gcn = icmp sgt i32 %i.gci, -1
  br i1 %i.gcn, label %bb.akf, label %.thread1444

bb.akf:                                           ; preds = %bb.ake
  %i.gco = getelementptr inbounds nuw i8, ptr %i.gcd, i64 4
  %i.gcp = load i8, ptr %i.gco, align 4
  %i.gcq = lshr i8 %i.gcp, 1
  %.lobit9262.i = and i8 %i.gcq, 1
  %i.gcr = getelementptr inbounds nuw i8, ptr %i.gch, i64 28
  %i.gcs = load i32, ptr %i.gcr, align 4, !tbaa !135
  %i.gct = and i32 %i.gcs, 32
  %.not9263.i = icmp eq i32 %i.gct, 0
  %spec.select10805.i = select i1 %.not9263.i, i8 %.lobit9262.i, i8 0 ; 2 uses
  %i.gcu = getelementptr inbounds nuw i8, ptr %i.gck, i64 32 ; 2 uses
  %i.gcv = load ptr, ptr %i.gcu, align 8, !tbaa !124
  %.not9264.i = icmp eq ptr %i.gcv, %i.gch
  %i.gcw = getelementptr inbounds nuw i8, ptr %i.gck, i64 4
  %i.gcx = load i8, ptr %i.gcw, align 4           ; 2 uses
  br i1 %.not9264.i, label %bb.akg, label %._crit_edge2744

bb.akg:                                           ; preds = %bb.akf
  %i.gcy = lshr i8 %i.gcx, 1
  %.lobit9265.i = and i8 %i.gcy, 1
  %.not9266.i = icmp eq i8 %.lobit9265.i, %spec.select10805.i
  br i1 %.not9266.i, label %.thread1444, label %._crit_edge2744

._crit_edge2744:                                  ; preds = %bb.akf, %bb.akg
  store ptr %i.gch, ptr %i.gcu, align 8, !tbaa !124
  %i.gcz = getelementptr inbounds nuw i8, ptr %i.gck, i64 4
  %i.gda = shl nuw nsw i8 %spec.select10805.i, 1
  %i.gdb = and i8 %i.gcx, -3
  %i.gdc = or disjoint i8 %i.gdb, %i.gda
  store i8 %i.gdc, ptr %i.gcz, align 4
  br label %.thread1444.sink.split

bb.akh:                                           ; preds = %bb.akd, %bb.akc, %bb.akb, %bb.aka
  %i.gdd = load i32, ptr %i.fxx, align 4, !tbaa !36 ; 2 uses
  %i.gde = icmp sgt i32 %i.gdd, -1
  br i1 %i.gde, label %bb.aki, label %.thread1444

bb.aki:                                           ; preds = %bb.akh
  %i.gdf = zext nneg i32 %i.gdd to i64
  %i.gdg = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gdf ; 3 uses
  %i.gdh = getelementptr inbounds nuw i8, ptr %i.gdg, i64 32 ; 2 uses
  %i.gdi = load ptr, ptr %i.gdh, align 8, !tbaa !124
  %.not9267.i = icmp eq ptr %i.gdi, null
  %i.gdj = getelementptr inbounds nuw i8, ptr %i.gdg, i64 4
  %i.gdk = load i8, ptr %i.gdj, align 4           ; 2 uses
  %i.gdl = and i8 %i.gdk, 2
  %.not9268.i = icmp eq i8 %i.gdl, 0
  %or.cond3970 = select i1 %.not9267.i, i1 %.not9268.i, i1 false
  br i1 %or.cond3970, label %.thread1444, label %._crit_edge2747

._crit_edge2747:                                  ; preds = %bb.aki
  store ptr null, ptr %i.gdh, align 8, !tbaa !124
  %i.gdm = getelementptr inbounds nuw i8, ptr %i.gdg, i64 4
  %i.gdn = and i8 %i.gdk, -3
  store i8 %i.gdn, ptr %i.gdm, align 4
  br label %.thread1444.sink.split

.thread1444.sink.split:                           ; preds = %._crit_edge2747, %._crit_edge2744
  %i.gdo = load i32, ptr %i.fxx, align 4, !tbaa !36
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.gdo)
  br label %.thread1444

.thread1444:                                      ; preds = %.thread1444.sink.split, %bb.aki, %bb.ake, %bb.akg, %bb.akh, %bb.aio
  %i.gdp = load i8, ptr %i.zh, align 4, !tbaa !55 ; 4 uses
  %i.gdq = icmp ne i8 %i.gdp, 98                  ; 2 uses
  %i.gdr = and i32 %.0.i4043437, -67
  %i.gds = or disjoint i32 %i.gdr, 2
  %i.gdt = select i1 %i.gdq, i32 %.0.i4043437, i32 %i.gds ; 8 uses
  %i.gdu = load i8, ptr %i.lk, align 1, !tbaa !80
  switch i8 %i.gdp, label %bb.akj [
    i8 81, label %bb.akk
    i8 90, label %bb.akk
  ]

bb.akj:                                           ; preds = %.thread1444
  %i.gdv = zext i1 %i.gdq to i32
  br label %bb.akk

bb.akk:                                           ; preds = %bb.akj, %.thread1444, %.thread1444
  %i.gdw = phi i32 [ 0, %.thread1444 ], [ 0, %.thread1444 ], [ %i.gdv, %bb.akj ] ; 3 uses
  %i.gdx = and i32 %i.gdt, 256
  %.not.i829 = icmp eq i32 %i.gdx, 0
  %.not37.i = icmp eq i32 %i.gdw, 0               ; 4 uses
  %spec.select56.i = select i1 %.not37.i, i32 -520094722, i32 -486539266
  %.1.i830 = select i1 %.not.i829, i32 0, i32 %spec.select56.i ; 3 uses
  %i.gdy = and i32 %i.gdt, 128
  %.not38.i831 = icmp eq i32 %i.gdy, 0
  br i1 %.not38.i831, label %zend_array_element_type.exit, label %bb.akl

bb.akl:                                           ; preds = %bb.akk
  %i.gdz = load i8, ptr %i.uv, align 2, !tbaa !94
  %.not1700 = icmp eq i8 %i.gdz, 0
  br i1 %.not1700, label %bb.akm, label %bb.akn

bb.akm:                                           ; preds = %bb.akl
  %i.gea = or i32 %.1.i830, 2
  br label %bb.akt

bb.akn:                                           ; preds = %bb.akl
  %i.geb = lshr i32 %i.gdt, 10
  %i.gec = and i32 %i.geb, 1020
  %i.ged = or i32 %.1.i830, %i.gec                ; 3 uses
  %i.gee = and i32 %i.ged, 128
  %.not40.i836 = icmp eq i32 %i.gee, 0
  %spec.select.v.i = select i1 %.not40.i836, i32 2, i32 553646082
  %spec.select.i837 = or i32 %spec.select.v.i, %i.ged ; 4 uses
  %i.gef = and i32 %i.ged, 960
  %.not41.i838 = icmp eq i32 %i.gef, 0
  br i1 %.not41.i838, label %bb.akt, label %bb.ako

bb.ako:                                           ; preds = %bb.akn
  br i1 %.not37.i, label %bb.akp, label %bb.akq

bb.akp:                                           ; preds = %bb.ako
  %i.geg = and i8 %i.gdu, 6
  %.not43.i839 = icmp eq i8 %i.geg, 0
  %i.geh = and i32 %i.gdt, 1073741824
  %.not44.i840 = icmp eq i32 %i.geh, 0
  %or.cond51.i = or i1 %.not43.i839, %.not44.i840
  %spec.select57.v.i = select i1 %or.cond51.i, i32 -2147483648, i32 -1073741824
  %spec.select57.i = or i32 %spec.select.i837, %spec.select57.v.i
  br label %bb.akt

bb.akq:                                           ; preds = %bb.ako
  %i.gei = and i32 %i.gdt, 1048576
  %.not45.i = icmp eq i32 %i.gei, 0
  br i1 %.not45.i, label %bb.aks, label %bb.akr

bb.akr:                                           ; preds = %bb.akq
  %i.gej = or i32 %spec.select.i837, -1073740800
  br label %bb.akt

bb.aks:                                           ; preds = %bb.akq
  %i.gek = or i32 %spec.select.i837, -1073741824
  br label %bb.akt

bb.akt:                                           ; preds = %bb.aks, %bb.akr, %bb.akp, %bb.akn, %bb.akm
  %.3.i = phi i32 [ %i.gea, %bb.akm ], [ %i.gej, %bb.akr ], [ %i.gek, %bb.aks ], [ %spec.select57.i, %bb.akp ], [ %spec.select.i837, %bb.akn ]
  %5 = shl nuw nsw i32 %i.gdw, 25
  %spec.select52.i = or i32 %.3.i, %5
  br label %zend_array_element_type.exit

zend_array_element_type.exit:                     ; preds = %bb.akk, %bb.akt
  %.4.i = phi i32 [ %.1.i830, %bb.akk ], [ %spec.select52.i, %bb.akt ]
  %i.gel = and i32 %i.gdt, 64
  %.not47.i = icmp eq i32 %i.gel, 0
  %spec.select53.v.i = select i1 %.not37.i, i32 1073741888, i32 1073741890
  %spec.select53.i = select i1 %.not47.i, i32 0, i32 %spec.select53.v.i
  %i.gem = and i32 %i.gdt, 7
  %.not49.i = icmp eq i32 %i.gem, 0
  %spec.select54.v.i = select i1 %.not37.i, i32 2, i32 33554434
  %spec.select54.i = select i1 %.not49.i, i32 0, i32 %spec.select54.v.i
  %.5.i833 = or i32 %spec.select54.i, %spec.select53.i
  %.6.i834 = or i32 %.5.i833, %.4.i               ; 2 uses
  %i.gen = and i32 %i.gdt, 568
  %i.geo = icmp eq i32 %i.gen, 0
  %i.gep = icmp ne i32 %i.gdw, 0
  %or.cond.i835 = or i1 %i.geo, %i.gep
  %i.geq = or i32 %.6.i834, 2
  %i.ger = icmp ne i8 %i.gdp, 93
  %i.ges = and i32 %.0.i4043437, 568
  %.not9271.i = icmp eq i32 %i.ges, 0
  %or.cond10806.i = or i1 %i.ger, %.not9271.i
  %i.get = icmp ne i8 %i.gdp, 90
  %i.geu = and i32 %.0.i4043437, 64
  %.not9272.i = icmp eq i32 %i.geu, 0
  %or.cond10807.i = or i1 %i.get, %.not9272.i
  %i.gev = and i1 %or.cond10807.i, %or.cond10806.i
  %i.gew = select i1 %i.gev, i1 %or.cond.i835, i1 false
  %.1038488.i = select i1 %i.gew, i32 %.6.i834, i32 %i.geq ; 5 uses
  %i.gex = icmp slt i32 %.1038488.i, -1073741824
  br i1 %i.gex, label %bb.aku, label %bb.aky

bb.aku:                                           ; preds = %zend_array_element_type.exit
  %i.gey = getelementptr inbounds nuw i8, ptr %.08506.i, i64 31
  %i.gez = load i8, ptr %i.gey, align 1, !tbaa !118
  %i.gfa = icmp eq i8 %i.gez, 2
  br i1 %i.gfa, label %bb.akv, label %bb.aky

bb.akv:                                           ; preds = %bb.aku
  %i.gfb = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.gfc = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.gfd = load i32, ptr %i.gfc, align 4, !tbaa !38
  %i.gfe = sext i32 %i.gfd to i64
  %i.gff = getelementptr inbounds [48 x i8], ptr %i.gfb, i64 %i.gfe
  %i.gfg = getelementptr inbounds nuw i8, ptr %i.gff, i64 12
  %i.gfh = load i32, ptr %i.gfg, align 4, !tbaa !140 ; 2 uses
  %i.gfi = icmp slt i32 %i.gfh, 0
  br i1 %i.gfi, label %bb.akx, label %bb.akw

bb.akw:                                           ; preds = %bb.akv
  %i.gfj = getelementptr inbounds nuw i8, ptr %.08506.i, i64 32
  %i.gfk = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.gfl = zext nneg i32 %i.gfh to i64
  %i.gfm = getelementptr inbounds nuw [32 x i8], ptr %i.gfk, i64 %i.gfl
  %.not9274.i = icmp eq ptr %i.gfj, %i.gfm
  br i1 %.not9274.i, label %bb.aky, label %bb.akx

bb.akx:                                           ; preds = %bb.akw, %bb.akv
  %i.gfn = or disjoint i32 %.1038488.i, 1073741824
  br label %bb.aky

bb.aky:                                           ; preds = %bb.akx, %bb.akw, %bb.aku, %zend_array_element_type.exit
  %.1048489.i = phi i32 [ %.1038488.i, %bb.aku ], [ %.1038488.i, %zend_array_element_type.exit ], [ %i.gfn, %bb.akx ], [ %.1038488.i, %bb.akw ] ; 2 uses
  %i.gfo = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.gfp = load i32, ptr %i.gfo, align 4, !tbaa !38 ; 4 uses
  %i.gfq = icmp sgt i32 %i.gfp, -1
  br i1 %i.gfq, label %bb.akz, label %_zend_update_type_info.exit.thread

bb.akz:                                           ; preds = %bb.aky
  %i.gfr = and i32 %.1048489.i, 1024
  %.not9276.i = icmp eq i32 %i.gfr, 0
  %i.gfs = and i32 %.1048489.i, -268435457        ; 2 uses
  %i.gft = or i32 %i.gfs, -520094722
  %spec.select10808.i = select i1 %.not9276.i, i32 %i.gfs, i32 %i.gft ; 3 uses
  %i.gfu = zext nneg i32 %i.gfp to i64            ; 3 uses
  %i.gfv = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.gfu ; 2 uses
  %i.gfw = load i32, ptr %i.gfv, align 8, !tbaa !119 ; 2 uses
  %i.gfx = load i32, ptr %i.r, align 8, !tbaa !96
  %i.gfy = icmp uge i32 %i.gfw, %i.gfx
  %i.gfz = and i32 %spec.select10808.i, 1073741824
  %.not9277.i = icmp eq i32 %i.gfz, 0
  %or.cond10809.i = select i1 %i.gfy, i1 true, i1 %.not9277.i
  %i.gga = or i32 %spec.select10808.i, -2147483648
  %.17687.i = select i1 %or.cond10809.i, i32 %spec.select10808.i, i32 %i.gga ; 5 uses
  %i.ggb = load i32, ptr %i.s, align 4, !tbaa !120
  %i.ggc = icmp slt i32 %i.gfw, %i.ggb
  br i1 %i.ggc, label %bb.ala, label %.thread1447

bb.ala:                                           ; preds = %bb.akz
  %i.ggd = and i32 %.17687.i, -2147482624
  %.not9278.i = icmp eq i32 %i.ggd, 0
  %i.gge = or i32 %.17687.i, -1073741824
  %spec.select10810.i = select i1 %.not9278.i, i32 %.17687.i, i32 %i.gge ; 3 uses
  %i.ggf = and i32 %spec.select10810.i, 1073741888
  %or.cond10811.i.not = icmp eq i32 %i.ggf, 1073741888
  %i.ggg = or i32 %spec.select10810.i, -2147483648 ; 2 uses
  %.37689.i = select i1 %or.cond10811.i.not, i32 %i.ggg, i32 %spec.select10810.i ; 2 uses
  %i.ggh = and i32 %.37689.i, 1073742080
  %or.cond10812.i.not = icmp eq i32 %i.ggh, 1073742080
  %.47690.i = select i1 %or.cond10812.i.not, i32 %i.ggg, i32 %.37689.i
  %i.ggi = getelementptr inbounds nuw i8, ptr %i.gfv, i64 40
  %i.ggj = load i8, ptr %i.ggi, align 8
  %i.ggk = lshr i8 %i.ggj, 2
  %i.ggl = and i8 %i.ggk, 3                       ; 2 uses
  %.not9283.i = icmp eq i8 %i.ggl, 0
  %i.ggm = icmp eq i8 %i.ggl, 2
  %..i841 = select i1 %i.ggm, i32 -1067384704, i32 -520093697
  %i.ggn = select i1 %.not9283.i, i32 0, i32 %..i841
  %.57691.i = or i32 %i.ggn, %.47690.i            ; 2 uses
  %i.ggo = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gfu ; 2 uses
  %i.ggp = load i32, ptr %i.ggo, align 8, !tbaa !117 ; 2 uses
  %.not9284.i = icmp eq i32 %i.ggp, %.57691.i
  br i1 %.not9284.i, label %_zend_update_type_info.exit.thread, label %.thread1451

.thread1447:                                      ; preds = %bb.akz
  %i.ggq = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gfu ; 2 uses
  %i.ggr = load i32, ptr %i.ggq, align 8, !tbaa !117 ; 2 uses
  %.not9284.i1449 = icmp eq i32 %i.ggr, %.17687.i
  br i1 %.not9284.i1449, label %_zend_update_type_info.exit.thread, label %.thread1451

.thread1451:                                      ; preds = %bb.ala, %.thread1447
  %.57691.i14501453 = phi i32 [ %.17687.i, %.thread1447 ], [ %.57691.i, %bb.ala ] ; 2 uses
  %i.ggs = phi ptr [ %i.ggq, %.thread1447 ], [ %i.ggo, %bb.ala ]
  %i.ggt = phi i32 [ %i.ggr, %.thread1447 ], [ %i.ggp, %bb.ala ]
  %i.ggu = xor i32 %.57691.i14501453, -1
  %i.ggv = and i32 %i.ggt, %i.ggu
  %.not9287.i = icmp eq i32 %i.ggv, 0
  br i1 %.not9287.i, label %bb.alb, label %bb.alc

bb.alb:                                           ; preds = %.thread1451
  store i32 %.57691.i14501453, ptr %i.ggs, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.gfp)
  br label %_zend_update_type_info.exit.thread

bb.alc:                                           ; preds = %.thread1451
  %.val617 = load ptr, ptr %i.h, align 8, !tbaa !27
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr %.val617, i32 noundef %i.gfp)
  br label %_zend_update_type_info.exit

bb.ald:                                           ; preds = %_ssa_op1_info.exit402.thread
  %i.ggw = load i32, ptr %i.v, align 4, !tbaa !81
  %i.ggx = and i32 %i.ggw, 1048576
  %.not9208.i = icmp eq i32 %i.ggx, 0
  br i1 %.not9208.i, label %bb.ale, label %bb.alj

bb.ale:                                           ; preds = %bb.ald
  %i.ggy = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20 ; 2 uses
  %i.ggz = load i32, ptr %i.ggy, align 4, !tbaa !38 ; 2 uses
  %i.gha = icmp sgt i32 %i.ggz, -1
  br i1 %i.gha, label %bb.alf, label %bb.alj

bb.alf:                                           ; preds = %bb.ale
  %i.ghb = load ptr, ptr %i.z, align 8, !tbaa !144 ; 4 uses
  %.not9209.i = icmp eq ptr %i.ghb, null
  br i1 %.not9209.i, label %bb.alh, label %bb.alg

bb.alg:                                           ; preds = %bb.alf
  %i.ghc = getelementptr inbounds nuw i8, ptr %i.ghb, i64 28
  %i.ghd = load i32, ptr %i.ghc, align 4, !tbaa !135
  %i.ghe = and i32 %i.ghd, 32
  %.not9210.i = icmp eq i32 %i.ghe, 0
  %spec.select10813.i = zext i1 %.not9210.i to i8
  br label %bb.alh

bb.alh:                                           ; preds = %bb.alg, %bb.alf
  %.07685.i = phi i8 [ 1, %bb.alf ], [ %spec.select10813.i, %bb.alg ] ; 2 uses
  %i.ghf = zext nneg i32 %i.ggz to i64
  %i.ghg = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.ghf ; 3 uses
  %i.ghh = getelementptr inbounds nuw i8, ptr %i.ghg, i64 32 ; 2 uses
  %i.ghi = load ptr, ptr %i.ghh, align 8, !tbaa !124
  %.not9211.i = icmp eq ptr %i.ghi, %i.ghb
  %i.ghj = getelementptr inbounds nuw i8, ptr %i.ghg, i64 4
  %i.ghk = load i8, ptr %i.ghj, align 4           ; 2 uses
  br i1 %.not9211.i, label %bb.ali, label %._crit_edge2741

bb.ali:                                           ; preds = %bb.alh
  %i.ghl = lshr i8 %i.ghk, 1
  %.lobit9212.i = and i8 %i.ghl, 1
  %.not9213.i = icmp eq i8 %.lobit9212.i, %.07685.i
  br i1 %.not9213.i, label %bb.alj, label %._crit_edge2741

._crit_edge2741:                                  ; preds = %bb.alh, %bb.ali
  store ptr %i.ghb, ptr %i.ghh, align 8, !tbaa !124
  %i.ghm = getelementptr inbounds nuw i8, ptr %i.ghg, i64 4
  %i.ghn = shl nuw nsw i8 %.07685.i, 1
  %i.gho = and i8 %i.ghk, -3
  %i.ghp = or disjoint i8 %i.gho, %i.ghn
  store i8 %i.ghp, ptr %i.ghm, align 4
  %i.ghq = load i32, ptr %i.ggy, align 4, !tbaa !38
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.ghq)
  br label %bb.alj

bb.alj:                                           ; preds = %._crit_edge2741, %bb.ali, %bb.ale, %bb.ald
  %i.ghr = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.ghs = load i32, ptr %i.ghr, align 4, !tbaa !38 ; 4 uses
  %i.ght = icmp sgt i32 %i.ghs, -1
  br i1 %i.ght, label %bb.alk, label %_zend_update_type_info.exit.thread

bb.alk:                                           ; preds = %bb.alj
end_hunk_0
