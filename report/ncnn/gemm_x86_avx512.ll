inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
bb.jm:                                            ; preds = %.thread3467
  %i.eej = fmul fast <4 x float> %.42685, %i.bwx
  %i.eek = fmul fast <4 x float> %.42679, %i.bwx
  %i.eel = fmul fast <4 x float> %.42673, %i.bwx
  %i.eem = fmul fast <4 x float> %.42667, %i.bwx
  %i.een = fmul fast <4 x float> %.42661, %i.bwx
  %i.eeo = fmul fast <4 x float> %.42655, %i.bwx
  %i.eep = fmul fast <4 x float> %.42649, %i.bwx
  %i.eeq = fmul fast <4 x float> %.42643, %i.bwx
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %.thread3467
  %.52686 = phi nsz <4 x float> [ %i.eej, %bb.jm ], [ %.42685, %.thread3467 ] ; 8 uses
  %.52680 = phi nsz <4 x float> [ %i.eek, %bb.jm ], [ %.42679, %.thread3467 ] ; 8 uses
  %.52674 = phi nsz <4 x float> [ %i.eel, %bb.jm ], [ %.42673, %.thread3467 ] ; 8 uses
  %.52668 = phi nsz <4 x float> [ %i.eem, %bb.jm ], [ %.42667, %.thread3467 ] ; 8 uses
  %.52662 = phi nsz <4 x float> [ %i.een, %bb.jm ], [ %.42661, %.thread3467 ] ; 8 uses
  %.52656 = phi nsz <4 x float> [ %i.eeo, %bb.jm ], [ %.42655, %.thread3467 ] ; 8 uses
  %.52650 = phi nsz <4 x float> [ %i.eep, %bb.jm ], [ %.42649, %.thread3467 ] ; 8 uses
  %.52644 = phi nsz <4 x float> [ %i.eeq, %bb.jm ], [ %.42643, %.thread3467 ] ; 8 uses
  br i1 %.not4505, label %bb.jt, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  switch i32 %i.b, label %bb.js [
    i32 8, label %bb.jp
    i32 4, label %bb.jq
    i32 1, label %bb.jr
  ]

bb.jp:                                            ; preds = %bb.jo
  %i.eer = shufflevector <4 x float> %.52686, <4 x float> %.52680, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ees = shufflevector <4 x float> %.52674, <4 x float> %.52668, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eet = shufflevector <4 x float> %.52686, <4 x float> %.52680, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eeu = shufflevector <4 x float> %.52674, <4 x float> %.52668, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eev = shufflevector <4 x float> %i.eer, <4 x float> %i.ees, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eew = shufflevector <4 x float> %i.ees, <4 x float> %i.eer, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.eex = shufflevector <4 x float> %i.eet, <4 x float> %i.eeu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eey = shufflevector <4 x float> %i.eeu, <4 x float> %i.eet, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.eez = shufflevector <4 x float> %.52662, <4 x float> %.52656, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.efa = shufflevector <4 x float> %.52650, <4 x float> %.52644, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.efb = shufflevector <4 x float> %.52662, <4 x float> %.52656, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.efc = shufflevector <4 x float> %.52650, <4 x float> %.52644, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.efd = shufflevector <4 x float> %i.eez, <4 x float> %i.efa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.efe = shufflevector <4 x float> %i.efa, <4 x float> %i.eez, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.eff = shufflevector <4 x float> %i.efb, <4 x float> %i.efc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.efg = shufflevector <4 x float> %i.efc, <4 x float> %i.efb, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.eev, ptr %.443833835, align 16, !tbaa !116
  %i.efh = getelementptr inbounds nuw i8, ptr %.443833835, i64 16
  store <4 x float> %i.efd, ptr %i.efh, align 16, !tbaa !116
  %i.efi = getelementptr inbounds nuw i8, ptr %.443833835, i64 32
  store <4 x float> %i.eew, ptr %i.efi, align 16, !tbaa !116
  %i.efj = getelementptr inbounds nuw i8, ptr %.443833835, i64 48
  store <4 x float> %i.efe, ptr %i.efj, align 16, !tbaa !116
  %i.efk = getelementptr inbounds nuw i8, ptr %.443833835, i64 64
  store <4 x float> %i.eex, ptr %i.efk, align 16, !tbaa !116
  %i.efl = getelementptr inbounds nuw i8, ptr %.443833835, i64 80
  store <4 x float> %i.eff, ptr %i.efl, align 16, !tbaa !116
  %i.efm = getelementptr inbounds nuw i8, ptr %.443833835, i64 96
  store <4 x float> %i.eey, ptr %i.efm, align 16, !tbaa !116
  %i.efn = getelementptr inbounds nuw i8, ptr %.443833835, i64 112
  store <4 x float> %i.efg, ptr %i.efn, align 16, !tbaa !116
  br label %bb.js

bb.jq:                                            ; preds = %bb.jo
  %i.efo = shufflevector <4 x float> %.52686, <4 x float> %.52680, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.efp = shufflevector <4 x float> %.52674, <4 x float> %.52668, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.efq = shufflevector <4 x float> %.52686, <4 x float> %.52680, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.efr = shufflevector <4 x float> %.52674, <4 x float> %.52668, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.efs = shufflevector <4 x float> %i.efo, <4 x float> %i.efp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eft = shufflevector <4 x float> %i.efp, <4 x float> %i.efo, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.efu = shufflevector <4 x float> %i.efq, <4 x float> %i.efr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.efv = shufflevector <4 x float> %i.efr, <4 x float> %i.efq, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.efw = shufflevector <4 x float> %.52662, <4 x float> %.52656, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.efx = shufflevector <4 x float> %.52650, <4 x float> %.52644, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.efy = shufflevector <4 x float> %.52662, <4 x float> %.52656, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.efz = shufflevector <4 x float> %.52650, <4 x float> %.52644, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ega = shufflevector <4 x float> %i.efw, <4 x float> %i.efx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.egb = shufflevector <4 x float> %i.efx, <4 x float> %i.efw, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.egc = shufflevector <4 x float> %i.efy, <4 x float> %i.efz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.egd = shufflevector <4 x float> %i.efz, <4 x float> %i.efy, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.efs, ptr %.443833835, align 16, !tbaa !116
  %i.ege = getelementptr inbounds nuw i8, ptr %.443833835, i64 16
  store <4 x float> %i.eft, ptr %i.ege, align 16, !tbaa !116
  %i.egf = getelementptr inbounds nuw i8, ptr %.443833835, i64 32
  store <4 x float> %i.efu, ptr %i.egf, align 16, !tbaa !116
  %i.egg = getelementptr inbounds nuw i8, ptr %.443833835, i64 48
  store <4 x float> %i.efv, ptr %i.egg, align 16, !tbaa !116
  %i.egh = getelementptr inbounds nuw i8, ptr %.443833835, i64 %.idx4542 ; 4 uses
  store <4 x float> %i.ega, ptr %i.egh, align 16, !tbaa !116
  %i.egi = getelementptr inbounds nuw i8, ptr %i.egh, i64 16
  store <4 x float> %i.egb, ptr %i.egi, align 16, !tbaa !116
  %i.egj = getelementptr inbounds nuw i8, ptr %i.egh, i64 32
  store <4 x float> %i.egc, ptr %i.egj, align 16, !tbaa !116
  %i.egk = getelementptr inbounds nuw i8, ptr %i.egh, i64 48
  store <4 x float> %i.egd, ptr %i.egk, align 16, !tbaa !116
  br label %bb.js

bb.jr:                                            ; preds = %bb.jo
  store <4 x float> %.52686, ptr %.443833835, align 1, !tbaa !116
  %i.egl = getelementptr inbounds nuw [4 x i8], ptr %.443833835, i64 %i.k
  store <4 x float> %.52680, ptr %i.egl, align 1, !tbaa !116
  %i.egm = getelementptr inbounds nuw i8, ptr %.443833835, i64 %.idx4545
  store <4 x float> %.52674, ptr %i.egm, align 1, !tbaa !116
  %i.egn = getelementptr inbounds nuw i8, ptr %.443833835, i64 %.idx4546
  store <4 x float> %.52668, ptr %i.egn, align 1, !tbaa !116
  %i.ego = getelementptr inbounds nuw i8, ptr %.443833835, i64 %.idx4542
  store <4 x float> %.52662, ptr %i.ego, align 1, !tbaa !116
  %i.egp = getelementptr inbounds nuw i8, ptr %.443833835, i64 %.idx4548
  store <4 x float> %.52656, ptr %i.egp, align 1, !tbaa !116
  %i.egq = getelementptr inbounds nuw i8, ptr %.443833835, i64 %.idx4549
  store <4 x float> %.52650, ptr %i.egq, align 1, !tbaa !116
  %i.egr = getelementptr inbounds nuw i8, ptr %.443833835, i64 %.idx4550
  store <4 x float> %.52644, ptr %i.egr, align 1, !tbaa !116
  br label %bb.js

bb.js:                                            ; preds = %bb.jq, %bb.jp, %bb.jo, %bb.jr
  %i.egs = getelementptr inbounds nuw i8, ptr %.443833835, i64 %.idx4541
  br label %bb.jv

bb.jt:                                            ; preds = %bb.jn
  switch i32 %i.b, label %bb.jv [
    i32 4, label %.thread3478
    i32 1, label %bb.ju
  ]

.thread3478:                                      ; preds = %bb.jt
  store <4 x float> %.52686, ptr %.443833835, align 16, !tbaa !116
  %i.egt = getelementptr inbounds nuw i8, ptr %.443833835, i64 16
  store <4 x float> %.52680, ptr %i.egt, align 16, !tbaa !116
  %i.egu = getelementptr inbounds nuw i8, ptr %.443833835, i64 32
  store <4 x float> %.52674, ptr %i.egu, align 16, !tbaa !116
  %i.egv = getelementptr inbounds nuw i8, ptr %.443833835, i64 48
  store <4 x float> %.52668, ptr %i.egv, align 16, !tbaa !116
  %i.egw = getelementptr inbounds nuw i8, ptr %.443833835, i64 64
  store <4 x float> %.52662, ptr %i.egw, align 16, !tbaa !116
  %i.egx = getelementptr inbounds nuw i8, ptr %.443833835, i64 80
  store <4 x float> %.52656, ptr %i.egx, align 16, !tbaa !116
  %i.egy = getelementptr inbounds nuw i8, ptr %.443833835, i64 96
  store <4 x float> %.52650, ptr %i.egy, align 16, !tbaa !116
  %i.egz = getelementptr inbounds nuw i8, ptr %.443833835, i64 112
  store <4 x float> %.52644, ptr %i.egz, align 16, !tbaa !116
  %i.eha = getelementptr inbounds nuw i8, ptr %.443833835, i64 128
  br label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.ehb = shufflevector <4 x float> %.52686, <4 x float> %.52680, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ehc = shufflevector <4 x float> %.52674, <4 x float> %.52668, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ehd = shufflevector <4 x float> %.52686, <4 x float> %.52680, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ehe = shufflevector <4 x float> %.52674, <4 x float> %.52668, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ehf = shufflevector <4 x float> %i.ehb, <4 x float> %i.ehc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ehg = shufflevector <4 x float> %i.ehc, <4 x float> %i.ehb, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ehh = shufflevector <4 x float> %i.ehd, <4 x float> %i.ehe, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ehi = shufflevector <4 x float> %i.ehe, <4 x float> %i.ehd, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ehj = shufflevector <4 x float> %.52662, <4 x float> %.52656, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ehk = shufflevector <4 x float> %.52650, <4 x float> %.52644, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ehl = shufflevector <4 x float> %.52662, <4 x float> %.52656, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ehm = shufflevector <4 x float> %.52650, <4 x float> %.52644, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ehn = shufflevector <4 x float> %i.ehj, <4 x float> %i.ehk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eho = shufflevector <4 x float> %i.ehk, <4 x float> %i.ehj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ehp = shufflevector <4 x float> %i.ehl, <4 x float> %i.ehm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ehq = shufflevector <4 x float> %i.ehm, <4 x float> %i.ehl, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.ehf, ptr %.443833835, align 1, !tbaa !116
  %i.ehr = getelementptr inbounds nuw i8, ptr %.443833835, i64 16
  store <4 x float> %i.ehn, ptr %i.ehr, align 1, !tbaa !116
  %i.ehs = getelementptr inbounds nuw [4 x i8], ptr %.443833835, i64 %i.k ; 2 uses
  store <4 x float> %i.ehg, ptr %i.ehs, align 1, !tbaa !116
  %i.eht = getelementptr inbounds nuw i8, ptr %i.ehs, i64 16
  store <4 x float> %i.eho, ptr %i.eht, align 1, !tbaa !116
  %i.ehu = getelementptr inbounds nuw i8, ptr %.443833835, i64 %.idx4545 ; 2 uses
  store <4 x float> %i.ehh, ptr %i.ehu, align 1, !tbaa !116
  %i.ehv = getelementptr inbounds nuw i8, ptr %i.ehu, i64 16
  store <4 x float> %i.ehp, ptr %i.ehv, align 1, !tbaa !116
  %i.ehw = getelementptr inbounds nuw i8, ptr %.443833835, i64 %.idx4546 ; 2 uses
  store <4 x float> %i.ehi, ptr %i.ehw, align 1, !tbaa !116
  %i.ehx = getelementptr inbounds nuw i8, ptr %i.ehw, i64 16
  store <4 x float> %i.ehq, ptr %i.ehx, align 1, !tbaa !116
  %i.ehy = getelementptr inbounds nuw i8, ptr %.443833835, i64 32
  br label %bb.jv

bb.jv:                                            ; preds = %bb.jt, %.thread3478, %bb.ju, %bb.js
  %.64385 = phi ptr [ %i.egs, %bb.js ], [ %i.ehy, %bb.ju ], [ %.443833835, %bb.jt ], [ %i.eha, %.thread3478 ] ; 2 uses
  %i.ehz = getelementptr inbounds nuw i8, ptr %.1441763836, i64 128 ; 2 uses
  %i.eia = add nuw nsw i32 %.144033834, 8         ; 3 uses
  %i.eib = or disjoint i32 %i.eia, 7
  %i.eic = icmp slt i32 %i.eib, %6
  br i1 %i.eic, label %.lr.ph3838, label %.preheader3694, !llvm.loop !926

.preheader3693:                                   ; preds = %bb.kp, %.preheader3694
  %.82734.lcssa = phi <4 x float> [ %.32729.lcssa, %.preheader3694 ], [ %.112737, %bb.kp ] ; 2 uses
  %.24404.lcssa = phi i32 [ %.14403.lcssa, %.preheader3694 ], [ %i.emk, %bb.kp ] ; 3 uses
  %.74386.lcssa = phi ptr [ %.44383.lcssa, %.preheader3694 ], [ %.94388, %bb.kp ] ; 2 uses
  %.154177.lcssa = phi ptr [ %.144176.lcssa, %.preheader3694 ], [ %i.emj, %bb.kp ] ; 2 uses
  %.60.lcssa = phi ptr [ %.56.lcssa, %.preheader3694 ], [ %.63, %bb.kp ] ; 2 uses
  %i.eid = or disjoint i32 %.24404.lcssa, 1
  %i.eie = icmp slt i32 %i.eid, %6
  br i1 %i.eie, label %.lr.ph3860, label %.preheader3692

.lr.ph3849:                                       ; preds = %.preheader3694, %bb.kp
  %.603848 = phi ptr [ %.63, %bb.kp ], [ %.56.lcssa, %.preheader3694 ] ; 14 uses
  %.1541773847 = phi ptr [ %i.emj, %bb.kp ], [ %.144176.lcssa, %.preheader3694 ] ; 5 uses
  %.743863846 = phi ptr [ %.94388, %bb.kp ], [ %.44383.lcssa, %.preheader3694 ] ; 20 uses
  %.244043845 = phi i32 [ %i.emk, %bb.kp ], [ %.14403.lcssa, %.preheader3694 ]
  %.827343844 = phi <4 x float> [ %.112737, %bb.kp ], [ %.32729.lcssa, %.preheader3694 ] ; 12 uses
  %i.eif = load <4 x i32>, ptr %.1541773847, align 16, !tbaa !116
  %i.eig = sitofp fast <4 x i32> %i.eif to <4 x float> ; 2 uses
  %i.eih = getelementptr inbounds nuw i8, ptr %.1541773847, i64 16
  %i.eii = load <4 x i32>, ptr %i.eih, align 16, !tbaa !116
  %i.eij = getelementptr inbounds nuw i8, ptr %.1541773847, i64 32
  %i.eik = load <4 x i32>, ptr %i.eij, align 16, !tbaa !116
  %i.eil = sitofp fast <4 x i32> %i.eik to <4 x float> ; 2 uses
  %i.eim = getelementptr inbounds nuw i8, ptr %.1541773847, i64 48
  %i.ein = load <4 x i32>, ptr %i.eim, align 16, !tbaa !116
  %i.eio = sitofp <4 x i32> %i.eii to <4 x float>
  %i.eip = shufflevector <4 x float> %i.eio, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.eiq = sitofp <4 x i32> %i.ein to <4 x float>
  %i.eir = shufflevector <4 x float> %i.eiq, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.eis = shufflevector <4 x float> %i.eig, <4 x float> %i.eir, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eit = shufflevector <4 x float> %i.eig, <4 x float> %i.eir, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eiu = shufflevector <4 x float> %i.eil, <4 x float> %i.eip, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eiv = shufflevector <4 x float> %i.eil, <4 x float> %i.eip, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eiw = shufflevector <4 x float> %i.eis, <4 x float> %i.eiu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eix = shufflevector <4 x float> %i.eis, <4 x float> %i.eiu, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.eiy = shufflevector <4 x float> %i.eiv, <4 x float> %i.eit, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eiz = shufflevector <4 x float> %i.eiv, <4 x float> %i.eit, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.eja = shufflevector <4 x float> %i.eix, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ejb = shufflevector <4 x float> %i.eiz, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ejc = fmul fast <4 x float> %i.dnv, %i.eiw   ; 7 uses
  %i.ejd = fmul fast <4 x float> %i.eja, %i.dnv   ; 7 uses
  %i.eje = fmul fast <4 x float> %i.dnv, %i.eiy   ; 7 uses
  %i.ejf = fmul fast <4 x float> %i.ejb, %i.dnv   ; 7 uses
  %.not4512 = icmp eq ptr %.603848, null
  br i1 %.not4512, label %.thread3493, label %bb.jw

bb.jw:                                            ; preds = %.lr.ph3849
  br i1 %i.bwe, label %.thread3480, label %bb.jx

.thread3480:                                      ; preds = %bb.jw
  %i.ejg = fadd fast <4 x float> %i.ejc, %.827343844
  %i.ejh = fadd fast <4 x float> %i.ejd, %.827343844
  %i.eji = fadd fast <4 x float> %i.eje, %.827343844
  %i.ejj = fadd fast <4 x float> %i.ejf, %.827343844
  br label %.thread3493

bb.jx:                                            ; preds = %bb.jw
  br i1 %or.cond25, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.ejk = fadd fast <4 x float> %i.ejc, %.827343844
  %i.ejl = fadd fast <4 x float> %i.ejd, %.827343844
  %i.ejm = fadd fast <4 x float> %i.eje, %.827343844
  %i.ejn = fadd fast <4 x float> %i.ejf, %.827343844
  br label %.thread3493

bb.jz:                                            ; preds = %bb.jx
  switch i32 %2, label %.thread3493 [
    i32 3, label %bb.ka
    i32 4, label %bb.kg
  ]

bb.ka:                                            ; preds = %bb.jz
  %i.ejo = load <4 x float>, ptr %.603848, align 1, !tbaa !116 ; 3 uses
  br i1 %i.bwn, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.ejp = getelementptr inbounds nuw i8, ptr %.603848, i64 16
  %i.ejq = load <4 x float>, ptr %i.ejp, align 1, !tbaa !116
  %i.ejr = getelementptr inbounds nuw i8, ptr %.603848, i64 32
  %i.ejs = load <4 x float>, ptr %i.ejr, align 1, !tbaa !116
  %i.ejt = getelementptr inbounds nuw i8, ptr %.603848, i64 48
  %i.eju = load <4 x float>, ptr %i.ejt, align 1, !tbaa !116
  br label %bb.kd

bb.kc:                                            ; preds = %bb.ka
  %i.ejv = getelementptr inbounds nuw [4 x i8], ptr %.603848, i64 %i.t
  %i.ejw = load <4 x float>, ptr %i.ejv, align 1, !tbaa !116 ; 2 uses
  %i.ejx = getelementptr inbounds nuw i8, ptr %.603848, i64 %.idx4536
  %i.ejy = load <4 x float>, ptr %i.ejx, align 1, !tbaa !116 ; 2 uses
  %i.ejz = getelementptr inbounds nuw i8, ptr %.603848, i64 %.idx4537
  %i.eka = load <4 x float>, ptr %i.ejz, align 1, !tbaa !116 ; 2 uses
  %i.ekb = shufflevector <4 x float> %i.ejo, <4 x float> %i.ejw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ekc = shufflevector <4 x float> %i.ejy, <4 x float> %i.eka, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ekd = shufflevector <4 x float> %i.ejo, <4 x float> %i.ejw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eke = shufflevector <4 x float> %i.ejy, <4 x float> %i.eka, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ekf = shufflevector <4 x float> %i.ekb, <4 x float> %i.ekc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ekg = shufflevector <4 x float> %i.ekc, <4 x float> %i.ekb, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ekh = shufflevector <4 x float> %i.ekd, <4 x float> %i.eke, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eki = shufflevector <4 x float> %i.eke, <4 x float> %i.ekd, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %.sink4179 = phi i64 [ 16, %bb.kc ], [ 64, %bb.kb ]
  %.92735 = phi nsz <4 x float> [ %i.ekf, %bb.kc ], [ %i.ejo, %bb.kb ] ; 4 uses
  %.02607 = phi nsz <4 x float> [ %i.ekg, %bb.kc ], [ %i.ejq, %bb.kb ] ; 2 uses
  %.02606 = phi nsz <4 x float> [ %i.ekh, %bb.kc ], [ %i.ejs, %bb.kb ] ; 2 uses
  %.02605 = phi nsz <4 x float> [ %i.eki, %bb.kc ], [ %i.eju, %bb.kb ] ; 2 uses
  %i.ekj = getelementptr inbounds nuw i8, ptr %.603848, i64 %.sink4179 ; 2 uses
  br i1 %i.bwo, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.ekk = fadd fast <4 x float> %.92735, %i.ejc
  %i.ekl = fadd fast <4 x float> %.02607, %i.ejd
  %i.ekm = fadd fast <4 x float> %.02606, %i.eje
  %i.ekn = fadd fast <4 x float> %.02605, %i.ejf
  br label %.thread3493

bb.kf:                                            ; preds = %bb.kd
  %i.eko = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.92735, <4 x float> nofpclass(nan inf) %i.bwj, <4 x float> nofpclass(nan inf) %i.ejc)
  %i.ekp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.02607, <4 x float> nofpclass(nan inf) %i.bwj, <4 x float> nofpclass(nan inf) %i.ejd)
  %i.ekq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.02606, <4 x float> nofpclass(nan inf) %i.bwj, <4 x float> nofpclass(nan inf) %i.eje)
  %i.ekr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.02605, <4 x float> nofpclass(nan inf) %i.bwj, <4 x float> nofpclass(nan inf) %i.ejf)
  br label %.thread3493

bb.kg:                                            ; preds = %bb.jz
  %i.eks = load <4 x float>, ptr %.603848, align 4, !tbaa !68
  %i.ekt = fmul fast <4 x float> %i.eks, %i.bxk   ; 4 uses
  %i.eku = shufflevector <4 x float> %i.ekt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ekv = shufflevector <4 x float> %i.ekt, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ekw = shufflevector <4 x float> %i.ekt, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ekx = shufflevector <4 x float> %i.ekt, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.eky = fadd fast <4 x float> %i.eku, %i.ejc
  %i.ekz = fadd fast <4 x float> %i.ekv, %i.ejd
  %i.ela = fadd fast <4 x float> %i.ekw, %i.eje
  %i.elb = fadd fast <4 x float> %i.ekx, %i.ejf
  %i.elc = getelementptr inbounds nuw i8, ptr %.603848, i64 16
  br label %.thread3493

.thread3493:                                      ; preds = %bb.jz, %bb.jy, %.thread3480, %bb.kf, %bb.ke, %bb.kg, %.lr.ph3849
  %.112737 = phi nsz <4 x float> [ %.827343844, %.lr.ph3849 ], [ %i.eku, %bb.kg ], [ %.827343844, %bb.jz ], [ %.92735, %bb.ke ], [ %.92735, %bb.kf ], [ %.827343844, %.thread3480 ], [ %.827343844, %bb.jy ] ; 2 uses
  %.42630 = phi nsz <4 x float> [ %i.ejc, %.lr.ph3849 ], [ %i.eky, %bb.kg ], [ %i.ejc, %bb.jz ], [ %i.ekk, %bb.ke ], [ %i.eko, %bb.kf ], [ %i.ejg, %.thread3480 ], [ %i.ejk, %bb.jy ] ; 2 uses
  %.42624 = phi nsz <4 x float> [ %i.ejd, %.lr.ph3849 ], [ %i.ekz, %bb.kg ], [ %i.ejd, %bb.jz ], [ %i.ekl, %bb.ke ], [ %i.ekp, %bb.kf ], [ %i.ejh, %.thread3480 ], [ %i.ejl, %bb.jy ] ; 2 uses
  %.42618 = phi nsz <4 x float> [ %i.eje, %.lr.ph3849 ], [ %i.ela, %bb.kg ], [ %i.eje, %bb.jz ], [ %i.ekm, %bb.ke ], [ %i.ekq, %bb.kf ], [ %i.eji, %.thread3480 ], [ %i.ejm, %bb.jy ] ; 2 uses
  %.42612 = phi nsz <4 x float> [ %i.ejf, %.lr.ph3849 ], [ %i.elb, %bb.kg ], [ %i.ejf, %bb.jz ], [ %i.ekn, %bb.ke ], [ %i.ekr, %bb.kf ], [ %i.ejj, %.thread3480 ], [ %i.ejn, %bb.jy ] ; 2 uses
  %.63 = phi ptr [ null, %.lr.ph3849 ], [ %i.elc, %bb.kg ], [ %.603848, %bb.jz ], [ %i.ekj, %bb.ke ], [ %i.ekj, %bb.kf ], [ %.603848, %.thread3480 ], [ %.603848, %bb.jy ] ; 2 uses
  br i1 %i.bwp, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %.thread3493
  %i.eld = fmul fast <4 x float> %.42630, %i.bwx
  %i.ele = fmul fast <4 x float> %.42624, %i.bwx
  %i.elf = fmul fast <4 x float> %.42618, %i.bwx
  %i.elg = fmul fast <4 x float> %.42612, %i.bwx
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %.thread3493
  %.52631 = phi nsz <4 x float> [ %i.eld, %bb.kh ], [ %.42630, %.thread3493 ] ; 6 uses
  %.52625 = phi nsz <4 x float> [ %i.ele, %bb.kh ], [ %.42624, %.thread3493 ] ; 6 uses
  %.52619 = phi nsz <4 x float> [ %i.elf, %bb.kh ], [ %.42618, %.thread3493 ] ; 6 uses
  %.52613 = phi nsz <4 x float> [ %i.elg, %bb.kh ], [ %.42612, %.thread3493 ] ; 6 uses
  br i1 %.not4505, label %bb.kn, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  switch i32 %i.b, label %bb.km [
    i32 4, label %bb.kk
    i32 1, label %bb.kl
  ]

bb.kk:                                            ; preds = %bb.kj
  %i.elh = shufflevector <4 x float> %.52631, <4 x float> %.52625, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eli = shufflevector <4 x float> %.52619, <4 x float> %.52613, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.elj = shufflevector <4 x float> %.52631, <4 x float> %.52625, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.elk = shufflevector <4 x float> %.52619, <4 x float> %.52613, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ell = shufflevector <4 x float> %i.elh, <4 x float> %i.eli, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.elm = shufflevector <4 x float> %i.eli, <4 x float> %i.elh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.eln = shufflevector <4 x float> %i.elj, <4 x float> %i.elk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.elo = shufflevector <4 x float> %i.elk, <4 x float> %i.elj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.ell, ptr %.743863846, align 16, !tbaa !116
  %i.elp = getelementptr inbounds nuw i8, ptr %.743863846, i64 16
  store <4 x float> %i.elm, ptr %i.elp, align 16, !tbaa !116
  %11 = getelementptr inbounds nuw i8, ptr %.743863846, i64 32
  store <4 x float> %i.eln, ptr %11, align 16, !tbaa !116
  %12 = getelementptr inbounds nuw i8, ptr %.743863846, i64 48
  store <4 x float> %i.elo, ptr %12, align 16, !tbaa !116
  br label %bb.km

bb.kl:                                            ; preds = %bb.kj
  store <4 x float> %.52631, ptr %.743863846, align 1, !tbaa !116
  %13 = getelementptr inbounds nuw [4 x i8], ptr %.743863846, i64 %i.k
  store <4 x float> %.52625, ptr %13, align 1, !tbaa !116
  %i.elq = getelementptr inbounds nuw i8, ptr %.743863846, i64 %.idx4545
  store <4 x float> %.52619, ptr %i.elq, align 1, !tbaa !116
  %i.elr = getelementptr inbounds nuw i8, ptr %.743863846, i64 %.idx4546
  store <4 x float> %.52613, ptr %i.elr, align 1, !tbaa !116
  br label %bb.km

bb.km:                                            ; preds = %bb.kk, %bb.kj, %bb.kl
  %i.els = getelementptr inbounds nuw i8, ptr %.743863846, i64 %.idx4542
  br label %bb.kp

bb.kn:                                            ; preds = %bb.ki
  switch i32 %i.b, label %bb.kp [
    i32 4, label %.thread3500
    i32 1, label %bb.ko
  ]

.thread3500:                                      ; preds = %bb.kn
  store <4 x float> %.52631, ptr %.743863846, align 16, !tbaa !116
  %i.elt = getelementptr inbounds nuw i8, ptr %.743863846, i64 16
  store <4 x float> %.52625, ptr %i.elt, align 16, !tbaa !116
  %i.elu = getelementptr inbounds nuw i8, ptr %.743863846, i64 32
  store <4 x float> %.52619, ptr %i.elu, align 16, !tbaa !116
  %i.elv = getelementptr inbounds nuw i8, ptr %.743863846, i64 48
  store <4 x float> %.52613, ptr %i.elv, align 16, !tbaa !116
  %i.elw = getelementptr inbounds nuw i8, ptr %.743863846, i64 64
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.elx = shufflevector <4 x float> %.52631, <4 x float> %.52625, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ely = shufflevector <4 x float> %.52619, <4 x float> %.52613, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.elz = shufflevector <4 x float> %.52631, <4 x float> %.52625, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ema = shufflevector <4 x float> %.52619, <4 x float> %.52613, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.emb = shufflevector <4 x float> %i.elx, <4 x float> %i.ely, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.emc = shufflevector <4 x float> %i.ely, <4 x float> %i.elx, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.emd = shufflevector <4 x float> %i.elz, <4 x float> %i.ema, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eme = shufflevector <4 x float> %i.ema, <4 x float> %i.elz, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.emb, ptr %.743863846, align 1, !tbaa !116
  %i.emf = getelementptr inbounds nuw [4 x i8], ptr %.743863846, i64 %i.k
  store <4 x float> %i.emc, ptr %i.emf, align 1, !tbaa !116
  %i.emg = getelementptr inbounds nuw i8, ptr %.743863846, i64 %.idx4545
  store <4 x float> %i.emd, ptr %i.emg, align 1, !tbaa !116
  %i.emh = getelementptr inbounds nuw i8, ptr %.743863846, i64 %.idx4546
  store <4 x float> %i.eme, ptr %i.emh, align 1, !tbaa !116
  %i.emi = getelementptr inbounds nuw i8, ptr %.743863846, i64 16
  br label %bb.kp

bb.kp:                                            ; preds = %bb.kn, %.thread3500, %bb.ko, %bb.km
  %.94388 = phi ptr [ %i.els, %bb.km ], [ %i.emi, %bb.ko ], [ %.743863846, %bb.kn ], [ %i.elw, %.thread3500 ] ; 2 uses
  %i.emj = getelementptr inbounds nuw i8, ptr %.1541773847, i64 64 ; 2 uses
  %i.emk = add nuw nsw i32 %.244043845, 4         ; 3 uses
  %i.eml = or disjoint i32 %i.emk, 3
  %i.emm = icmp slt i32 %i.eml, %6
  br i1 %i.emm, label %.lr.ph3849, label %.preheader3693, !llvm.loop !927

.preheader3692:                                   ; preds = %bb.le, %.preheader3693
  %.122738.lcssa = phi <4 x float> [ %.82734.lcssa, %.preheader3693 ], [ %.152741, %bb.le ]
  %.34405.lcssa = phi i32 [ %.24404.lcssa, %.preheader3693 ], [ %i.eow, %bb.le ] ; 2 uses
  %.104389.lcssa = phi ptr [ %.74386.lcssa, %.preheader3693 ], [ %.124391, %bb.le ]
  %.164178.lcssa = phi ptr [ %.154177.lcssa, %.preheader3693 ], [ %i.eov, %bb.le ] ; 2 uses
  %.64.lcssa = phi ptr [ %.60.lcssa, %.preheader3693 ], [ %.67, %bb.le ] ; 2 uses
  %i.emn = icmp slt i32 %.34405.lcssa, %6
  br i1 %i.emn, label %.lr.ph3871, label %._crit_edge3872

.lr.ph3860:                                       ; preds = %.preheader3693, %bb.le
  %.643859 = phi ptr [ %.67, %bb.le ], [ %.60.lcssa, %.preheader3693 ] ; 14 uses
  %.1641783858 = phi ptr [ %i.eov, %bb.le ], [ %.154177.lcssa, %.preheader3693 ] ; 3 uses
  %.1043893857 = phi ptr [ %.124391, %bb.le ], [ %.74386.lcssa, %.preheader3693 ] ; 10 uses
  %.344053856 = phi i32 [ %i.eow, %bb.le ], [ %.24404.lcssa, %.preheader3693 ]
  %.1227383855 = phi <4 x float> [ %.152741, %bb.le ], [ %.82734.lcssa, %.preheader3693 ] ; 8 uses
  %i.emo = load <4 x i32>, ptr %.1641783858, align 16, !tbaa !116
  %i.emp = getelementptr inbounds nuw i8, ptr %.1641783858, i64 16
  %i.emq = load <4 x i32>, ptr %i.emp, align 16, !tbaa !116
  %i.emr = sitofp <4 x i32> %i.emo to <4 x float>
  %i.ems = shufflevector <4 x float> %i.emr, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.emt = sitofp <4 x i32> %i.emq to <4 x float>
  %i.emu = shufflevector <4 x float> %i.emt, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 2, i32 0> ; 2 uses
  %i.emv = shufflevector <4 x float> %i.ems, <4 x float> %i.emu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.emw = shufflevector <4 x float> %i.emu, <4 x float> %i.ems, <4 x i32> <i32 3, i32 6, i32 2, i32 7>
  %i.emx = fmul fast <4 x float> %i.emv, %i.dnv   ; 7 uses
  %i.emy = fmul fast <4 x float> %i.emw, %i.dnv   ; 7 uses
  %.not4510 = icmp eq ptr %.643859, null
  br i1 %.not4510, label %.thread3511, label %bb.kq

bb.kq:                                            ; preds = %.lr.ph3860
  br i1 %i.bwe, label %.thread3502, label %bb.kr

.thread3502:                                      ; preds = %bb.kq
  %i.emz = fadd fast <4 x float> %i.emx, %.1227383855
  %i.ena = fadd fast <4 x float> %i.emy, %.1227383855
  br label %.thread3511

bb.kr:                                            ; preds = %bb.kq
  br i1 %or.cond25, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.enb = fadd fast <4 x float> %i.emx, %.1227383855
  %i.enc = fadd fast <4 x float> %i.emy, %.1227383855
  br label %.thread3511

bb.kt:                                            ; preds = %bb.kr
  switch i32 %2, label %.thread3511 [
    i32 3, label %bb.ku
    i32 4, label %bb.la
  ]

bb.ku:                                            ; preds = %bb.kt
  br i1 %i.bwn, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.end = load <4 x float>, ptr %.643859, align 1, !tbaa !116
  %i.ene = getelementptr inbounds nuw i8, ptr %.643859, i64 16
  %i.enf = load <4 x float>, ptr %i.ene, align 1, !tbaa !116
  br label %bb.kx

bb.kw:                                            ; preds = %bb.ku
  %i.eng = load float, ptr %.643859, align 4, !tbaa !68
  %i.enh = getelementptr inbounds nuw [4 x i8], ptr %.643859, i64 %i.t ; 2 uses
  %i.eni = load float, ptr %i.enh, align 4, !tbaa !68
  %i.enj = getelementptr inbounds nuw i8, ptr %.643859, i64 %.idx4536 ; 2 uses
  %i.enk = load float, ptr %i.enj, align 4, !tbaa !68
  %i.enl = getelementptr inbounds nuw i8, ptr %.643859, i64 %.idx4537 ; 2 uses
  %i.enm = load float, ptr %i.enl, align 4, !tbaa !68
  %i.enn = insertelement <4 x float> poison, float %i.eng, i64 0
  %i.eno = insertelement <4 x float> %i.enn, float %i.eni, i64 1
  %i.enp = insertelement <4 x float> %i.eno, float %i.enk, i64 2
  %i.enq = insertelement <4 x float> %i.enp, float %i.enm, i64 3
  %i.enr = getelementptr inbounds nuw i8, ptr %.643859, i64 4
  %i.ens = load float, ptr %i.enr, align 4, !tbaa !68
  %i.ent = getelementptr i8, ptr %i.enh, i64 4
  %i.enu = load float, ptr %i.ent, align 4, !tbaa !68
  %i.env = getelementptr inbounds nuw i8, ptr %i.enj, i64 4
  %i.enw = load float, ptr %i.env, align 4, !tbaa !68
  %i.enx = getelementptr i8, ptr %i.enl, i64 4
  %i.eny = load float, ptr %i.enx, align 4, !tbaa !68
  %i.enz = insertelement <4 x float> poison, float %i.ens, i64 0
  %i.eoa = insertelement <4 x float> %i.enz, float %i.enu, i64 1
  %i.eob = insertelement <4 x float> %i.eoa, float %i.enw, i64 2
  %i.eoc = insertelement <4 x float> %i.eob, float %i.eny, i64 3
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %.sink4180 = phi i64 [ 8, %bb.kw ], [ 32, %bb.kv ]
  %.132739 = phi nsz <4 x float> [ %i.enq, %bb.kw ], [ %i.end, %bb.kv ] ; 4 uses
  %.02591 = phi nsz <4 x float> [ %i.eoc, %bb.kw ], [ %i.enf, %bb.kv ] ; 2 uses
  %i.eod = getelementptr inbounds nuw i8, ptr %.643859, i64 %.sink4180 ; 2 uses
  br i1 %i.bwo, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.eoe = fadd fast <4 x float> %.132739, %i.emx
  %i.eof = fadd fast <4 x float> %.02591, %i.emy
  br label %.thread3511

bb.kz:                                            ; preds = %bb.kx
  %i.eog = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.132739, <4 x float> nofpclass(nan inf) %i.bwj, <4 x float> nofpclass(nan inf) %i.emx)
  %i.eoh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.02591, <4 x float> nofpclass(nan inf) %i.bwj, <4 x float> nofpclass(nan inf) %i.emy)
  br label %.thread3511

bb.la:                                            ; preds = %bb.kt
  %i.eoi = load <2 x float>, ptr %.643859, align 4, !tbaa !68
  %i.eoj = fmul fast <2 x float> %i.eoi, %i.bxm   ; 2 uses
  %i.eok = shufflevector <2 x float> %i.eoj, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eol = shufflevector <2 x float> %i.eoj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eom = fadd fast <4 x float> %i.eok, %i.emx
  %i.eon = fadd fast <4 x float> %i.eol, %i.emy
  %i.eoo = getelementptr inbounds nuw i8, ptr %.643859, i64 8
  br label %.thread3511

.thread3511:                                      ; preds = %bb.kt, %bb.ks, %.thread3502, %bb.kz, %bb.ky, %bb.la, %.lr.ph3860
  %.152741 = phi nsz <4 x float> [ %.1227383855, %.lr.ph3860 ], [ %i.eok, %bb.la ], [ %.1227383855, %bb.kt ], [ %.132739, %bb.ky ], [ %.132739, %bb.kz ], [ %.1227383855, %.thread3502 ], [ %.1227383855, %bb.ks ] ; 2 uses
  %.42602 = phi nsz <4 x float> [ %i.emx, %.lr.ph3860 ], [ %i.eom, %bb.la ], [ %i.emx, %bb.kt ], [ %i.eoe, %bb.ky ], [ %i.eog, %bb.kz ], [ %i.emz, %.thread3502 ], [ %i.enb, %bb.ks ]
  %.42596 = phi nsz <4 x float> [ %i.emy, %.lr.ph3860 ], [ %i.eon, %bb.la ], [ %i.emy, %bb.kt ], [ %i.eof, %bb.ky ], [ %i.eoh, %bb.kz ], [ %i.ena, %.thread3502 ], [ %i.enc, %bb.ks ]
  %.67 = phi ptr [ null, %.lr.ph3860 ], [ %i.eoo, %bb.la ], [ %.643859, %bb.kt ], [ %i.eod, %bb.ky ], [ %i.eod, %bb.kz ], [ %.643859, %.thread3502 ], [ %.643859, %bb.ks ] ; 2 uses
  %.52603 = fmul reassoc nsz arcp contract afn <4 x float> %.42602, %i.bwy ; 3 uses
  %.52597 = fmul reassoc nsz arcp contract afn <4 x float> %.42596, %i.bwy ; 3 uses
  br i1 %.not4505, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %.thread3511
  store <4 x float> %.52603, ptr %.1043893857, align 1, !tbaa !116
  %i.eop = getelementptr inbounds nuw [4 x i8], ptr %.1043893857, i64 %i.k
  store <4 x float> %.52597, ptr %i.eop, align 1, !tbaa !116
  %i.eoq = getelementptr inbounds nuw i8, ptr %.1043893857, i64 %.idx4545
  br label %bb.le

bb.lc:                                            ; preds = %.thread3511
  switch i32 %i.b, label %bb.le [
    i32 4, label %.thread3516
    i32 1, label %bb.ld
  ]

.thread3516:                                      ; preds = %bb.lc
  store <4 x float> %.52603, ptr %.1043893857, align 16, !tbaa !116
  %i.eor = getelementptr inbounds nuw i8, ptr %.1043893857, i64 16
  store <4 x float> %.52597, ptr %i.eor, align 16, !tbaa !116
  %i.eos = getelementptr inbounds nuw i8, ptr %.1043893857, i64 32
  br label %bb.le

bb.ld:                                            ; preds = %bb.lc
  tail call void @llvm.x86.avx512.mask.scattersiv4.sf(ptr %.1043893857, <4 x i1> splat (i1 true), <4 x i32> %i.bxc, <4 x float> %.52603, i32 4)
  %i.eot = getelementptr inbounds nuw i8, ptr %.1043893857, i64 4
  tail call void @llvm.x86.avx512.mask.scattersiv4.sf(ptr nonnull %i.eot, <4 x i1> splat (i1 true), <4 x i32> %i.bxc, <4 x float> %.52597, i32 4)
  %i.eou = getelementptr inbounds nuw i8, ptr %.1043893857, i64 8
  br label %bb.le

bb.le:                                            ; preds = %bb.lc, %.thread3516, %bb.ld, %bb.lb
  %.124391 = phi ptr [ %i.eoq, %bb.lb ], [ %i.eou, %bb.ld ], [ %.1043893857, %bb.lc ], [ %i.eos, %.thread3516 ] ; 2 uses
  %i.eov = getelementptr inbounds nuw i8, ptr %.1641783858, i64 32 ; 2 uses
  %i.eow = add nuw nsw i32 %.344053856, 2         ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
    i32 1, label %bb.oj
  ]

.thread5135:                                      ; preds = %bb.oh
  %i.idi = shufflevector <8 x i16> %i.ico, <8 x i16> %i.icu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.idj = shufflevector <8 x i16> %i.ida, <8 x i16> %i.idg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.idk = shufflevector <8 x i16> %i.ico, <8 x i16> %i.icu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.idl = shufflevector <8 x i16> %i.ida, <8 x i16> %i.idg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.idm = bitcast <8 x i16> %i.idi to <4 x i32>  ; 2 uses
  %i.idn = bitcast <8 x i16> %i.idj to <4 x i32>  ; 2 uses
  %i.ido = shufflevector <4 x i32> %i.idm, <4 x i32> %i.idn, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.idp = bitcast <4 x i32> %i.ido to <2 x i64>  ; 2 uses
  %i.idq = bitcast <8 x i16> %i.idk to <4 x i32>  ; 2 uses
  %i.idr = bitcast <8 x i16> %i.idl to <4 x i32>  ; 2 uses
  %i.ids = shufflevector <4 x i32> %i.idq, <4 x i32> %i.idr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.idt = shufflevector <4 x i32> %i.idm, <4 x i32> %i.idn, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.idu = bitcast <4 x i32> %i.idt to <2 x i64>  ; 2 uses
  %i.idv = shufflevector <4 x i32> %i.idq, <4 x i32> %i.idr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.idw = extractelement <2 x i64> %i.idp, i64 0
  store i64 %i.idw, ptr %.565835571, align 1, !tbaa !116
  %i.idx = getelementptr inbounds nuw i8, ptr %.565835571, i64 8
  %i.idy = bitcast <4 x i32> %i.ids to <2 x double> ; 2 uses
  %i.idz = extractelement <2 x double> %i.idy, i64 0
  store double %i.idz, ptr %i.idx, align 1, !tbaa !116
  %i.iea = getelementptr inbounds nuw i8, ptr %.565835571, i64 16
  %i.ieb = extractelement <2 x i64> %i.idp, i64 1
  store i64 %i.ieb, ptr %i.iea, align 1, !tbaa !116
  %i.iec = getelementptr inbounds nuw i8, ptr %.565835571, i64 24
  %i.ied = extractelement <2 x double> %i.idy, i64 1
  store double %i.ied, ptr %i.iec, align 1, !tbaa !116
  %i.iee = getelementptr inbounds nuw i8, ptr %.565835571, i64 32
  %i.ief = extractelement <2 x i64> %i.idu, i64 0
  store i64 %i.ief, ptr %i.iee, align 1, !tbaa !116
  %i.ieg = getelementptr inbounds nuw i8, ptr %.565835571, i64 40
  %i.ieh = bitcast <4 x i32> %i.idv to <2 x double> ; 2 uses
  %i.iei = extractelement <2 x double> %i.ieh, i64 0
  store double %i.iei, ptr %i.ieg, align 1, !tbaa !116
  %i.iej = getelementptr inbounds nuw i8, ptr %.565835571, i64 48
  %i.iek = extractelement <2 x i64> %i.idu, i64 1
  store i64 %i.iek, ptr %i.iej, align 1, !tbaa !116
  %i.iel = getelementptr inbounds nuw i8, ptr %.565835571, i64 56
  %i.iem = extractelement <2 x double> %i.ieh, i64 1
  store double %i.iem, ptr %i.iel, align 1, !tbaa !116
  br label %bb.ok

bb.oi:                                            ; preds = %bb.oh
  %i.ien = shufflevector <8 x i16> %i.ico, <8 x i16> %i.icu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ieo = shufflevector <8 x i16> %i.ida, <8 x i16> %i.idg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iep = bitcast <8 x i16> %i.ien to <4 x i32>  ; 2 uses
  %i.ieq = bitcast <8 x i16> %i.ieo to <4 x i32>  ; 2 uses
  %i.ier = shufflevector <4 x i32> %i.iep, <4 x i32> %i.ieq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ies = bitcast <4 x i32> %i.ier to <2 x i64>
  %i.iet = shufflevector <4 x i32> %i.iep, <4 x i32> %i.ieq, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ieu = bitcast <4 x i32> %i.iet to <2 x i64>
  %i.iev = extractelement <2 x i64> %i.ies, i64 0
  store i64 %i.iev, ptr %.565835571, align 1, !tbaa !116
  %i.iew = getelementptr inbounds nuw i8, ptr %.565835571, i64 8
  %i.iex = bitcast <4 x i32> %i.ier to <2 x double>
  %i.iey = extractelement <2 x double> %i.iex, i64 1
  store double %i.iey, ptr %i.iew, align 1, !tbaa !116
  %i.iez = getelementptr inbounds nuw i8, ptr %.565835571, i64 16
  %i.ifa = extractelement <2 x i64> %i.ieu, i64 0
  store i64 %i.ifa, ptr %i.iez, align 1, !tbaa !116
  %i.ifb = getelementptr inbounds nuw i8, ptr %.565835571, i64 24
  %i.ifc = bitcast <4 x i32> %i.iet to <2 x double>
  %i.ifd = extractelement <2 x double> %i.ifc, i64 1
  store double %i.ifd, ptr %i.ifb, align 1, !tbaa !116
  %i.ife = shufflevector <8 x i16> %i.ico, <8 x i16> %i.icu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.iff = shufflevector <8 x i16> %i.ida, <8 x i16> %i.idg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ifg = bitcast <8 x i16> %i.ife to <4 x i32>  ; 2 uses
  %i.ifh = bitcast <8 x i16> %i.iff to <4 x i32>  ; 2 uses
  %i.ifi = shufflevector <4 x i32> %i.ifg, <4 x i32> %i.ifh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ifj = bitcast <4 x i32> %i.ifi to <2 x i64>
  %i.ifk = shufflevector <4 x i32> %i.ifg, <4 x i32> %i.ifh, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ifl = bitcast <4 x i32> %i.ifk to <2 x i64>
  %i.ifm = getelementptr inbounds nuw i8, ptr %.565835571, i64 %.idx6885 ; 4 uses
  %i.ifn = extractelement <2 x i64> %i.ifj, i64 0
  store i64 %i.ifn, ptr %i.ifm, align 1, !tbaa !116
  %i.ifo = getelementptr inbounds nuw i8, ptr %i.ifm, i64 8
  %i.ifp = bitcast <4 x i32> %i.ifi to <2 x double>
  %i.ifq = extractelement <2 x double> %i.ifp, i64 1
  store double %i.ifq, ptr %i.ifo, align 1, !tbaa !116
  %i.ifr = getelementptr inbounds nuw i8, ptr %i.ifm, i64 16
  %i.ifs = extractelement <2 x i64> %i.ifl, i64 0
  store i64 %i.ifs, ptr %i.ifr, align 1, !tbaa !116
  %i.ift = getelementptr inbounds nuw i8, ptr %i.ifm, i64 24
  %i.ifu = bitcast <4 x i32> %i.ifk to <2 x double>
  %i.ifv = extractelement <2 x double> %i.ifu, i64 1
  store double %i.ifv, ptr %i.ift, align 1, !tbaa !116
  br label %bb.ok

bb.oj:                                            ; preds = %bb.oh
  %i.ifw = extractelement <2 x i64> %i.icp, i64 0
  store i64 %i.ifw, ptr %.565835571, align 1, !tbaa !116
  %i.ifx = getelementptr inbounds nuw [2 x i8], ptr %.565835571, i64 %i.k
  %i.ify = extractelement <2 x i64> %i.icv, i64 0
  store i64 %i.ify, ptr %i.ifx, align 1, !tbaa !116
  %i.ifz = getelementptr inbounds nuw i8, ptr %.565835571, i64 %.idx6888
  %i.iga = extractelement <2 x i64> %i.idb, i64 0
  store i64 %i.iga, ptr %i.ifz, align 1, !tbaa !116
  %i.igb = getelementptr inbounds nuw i8, ptr %.565835571, i64 %.idx6889
  %i.igc = extractelement <2 x i64> %i.idh, i64 0
  store i64 %i.igc, ptr %i.igb, align 1, !tbaa !116
  %i.igd = getelementptr inbounds nuw i8, ptr %.565835571, i64 %.idx6885
  %i.ige = bitcast <8 x i16> %i.ico to <2 x double>
  %i.igf = extractelement <2 x double> %i.ige, i64 1
  store double %i.igf, ptr %i.igd, align 1, !tbaa !116
  %i.igg = getelementptr inbounds nuw i8, ptr %.565835571, i64 %.idx6891
  %i.igh = bitcast <8 x i16> %i.icu to <2 x double>
  %i.igi = extractelement <2 x double> %i.igh, i64 1
  store double %i.igi, ptr %i.igg, align 1, !tbaa !116
  %i.igj = getelementptr inbounds nuw i8, ptr %.565835571, i64 %.idx6892
  %i.igk = bitcast <8 x i16> %i.ida to <2 x double>
  %i.igl = extractelement <2 x double> %i.igk, i64 1
  store double %i.igl, ptr %i.igj, align 1, !tbaa !116
  %i.igm = getelementptr inbounds nuw i8, ptr %.565835571, i64 %.idx6893
  %i.ign = bitcast <8 x i16> %i.idg to <2 x double>
  %i.igo = extractelement <2 x double> %i.ign, i64 1
  store double %i.igo, ptr %i.igm, align 1, !tbaa !116
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oh, %.thread5135, %bb.oi, %bb.oj
  %i.igp = getelementptr inbounds nuw i8, ptr %.565835571, i64 %.idx6884
  br label %bb.on

bb.ol:                                            ; preds = %bb.og
  switch i32 %i.b, label %bb.on [
    i32 4, label %.thread5140
    i32 1, label %bb.om
  ]

.thread5140:                                      ; preds = %bb.ol
  %i.igq = shufflevector <2 x i64> %i.icp, <2 x i64> %i.icv, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.igq, ptr %.565835571, align 1, !tbaa !116
  %i.igr = getelementptr inbounds nuw i8, ptr %.565835571, i64 16
  %i.igs = shufflevector <2 x i64> %i.idb, <2 x i64> %i.idh, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.igs, ptr %i.igr, align 1, !tbaa !116
  %i.igt = getelementptr inbounds nuw i8, ptr %.565835571, i64 32
  %i.igu = bitcast <8 x i16> %i.ico to <2 x double>
  %i.igv = bitcast <8 x i16> %i.icu to <2 x double>
  %i.igw = shufflevector <2 x double> %i.igu, <2 x double> %i.igv, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.igw, ptr %i.igt, align 1, !tbaa !116
  %i.igx = getelementptr inbounds nuw i8, ptr %.565835571, i64 48
  %i.igy = bitcast <8 x i16> %i.ida to <2 x double>
  %i.igz = bitcast <8 x i16> %i.idg to <2 x double>
  %i.iha = shufflevector <2 x double> %i.igy, <2 x double> %i.igz, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.iha, ptr %i.igx, align 1, !tbaa !116
  %i.ihb = getelementptr inbounds nuw i8, ptr %.565835571, i64 64
  br label %bb.on

bb.om:                                            ; preds = %bb.ol
  %i.ihc = shufflevector <8 x i16> %i.ico, <8 x i16> %i.icu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ihd = shufflevector <8 x i16> %i.ida, <8 x i16> %i.idg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ihe = shufflevector <8 x i16> %i.ico, <8 x i16> %i.icu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ihf = shufflevector <8 x i16> %i.ida, <8 x i16> %i.idg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ihg = bitcast <8 x i16> %i.ihc to <4 x i32>  ; 2 uses
  %i.ihh = bitcast <8 x i16> %i.ihd to <4 x i32>  ; 2 uses
  %i.ihi = shufflevector <4 x i32> %i.ihg, <4 x i32> %i.ihh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ihj = bitcast <8 x i16> %i.ihe to <4 x i32>  ; 2 uses
  %i.ihk = bitcast <8 x i16> %i.ihf to <4 x i32>  ; 2 uses
  %i.ihl = shufflevector <4 x i32> %i.ihj, <4 x i32> %i.ihk, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ihm = shufflevector <4 x i32> %i.ihg, <4 x i32> %i.ihh, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ihn = shufflevector <4 x i32> %i.ihj, <4 x i32> %i.ihk, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.iho = shufflevector <4 x i32> %i.ihi, <4 x i32> %i.ihl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ihp = shufflevector <4 x i32> %i.ihi, <4 x i32> %i.ihl, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ihq = shufflevector <4 x i32> %i.ihm, <4 x i32> %i.ihn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ihr = shufflevector <4 x i32> %i.ihm, <4 x i32> %i.ihn, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i32> %i.iho, ptr %.565835571, align 1, !tbaa !116
  %i.ihs = getelementptr inbounds nuw [2 x i8], ptr %.565835571, i64 %i.k
  store <4 x i32> %i.ihp, ptr %i.ihs, align 1, !tbaa !116
  %i.iht = getelementptr inbounds nuw i8, ptr %.565835571, i64 %.idx6888
  store <4 x i32> %i.ihq, ptr %i.iht, align 1, !tbaa !116
  %i.ihu = getelementptr inbounds nuw i8, ptr %.565835571, i64 %.idx6889
  store <4 x i32> %i.ihr, ptr %i.ihu, align 1, !tbaa !116
  %i.ihv = getelementptr inbounds nuw i8, ptr %.565835571, i64 16
  br label %bb.on

bb.on:                                            ; preds = %bb.ol, %bb.oe, %.thread5140, %.thread5133, %bb.ok, %bb.om, %bb.od, %bb.of
  %.66605 = phi ptr [ %i.iav, %bb.od ], [ %i.icj, %bb.of ], [ %.466035570, %bb.oe ], [ %.466035570, %bb.ol ], [ %.466035570, %bb.om ], [ %.466035570, %bb.ok ], [ %i.ibd, %.thread5133 ], [ %.466035570, %.thread5140 ] ; 2 uses
  %.86586 = phi ptr [ %.565835571, %bb.od ], [ %.565835571, %bb.of ], [ %.565835571, %bb.oe ], [ %.565835571, %bb.ol ], [ %i.ihv, %bb.om ], [ %i.igp, %bb.ok ], [ %.565835571, %.thread5133 ], [ %i.ihb, %.thread5140 ] ; 2 uses
  %i.ihw = add nuw nsw i32 %.166235569, 8         ; 3 uses
  %i.ihx = or disjoint i32 %i.ihw, 7
  %i.ihy = icmp slt i32 %i.ihx, %6
  br i1 %i.ihy, label %.lr.ph5574, label %.preheader5405, !llvm.loop !1597

.preheader5404:                                   ; preds = %bb.pp, %.preheader5405
  %.84078.lcssa = phi <4 x float> [ %.34073.lcssa, %.preheader5405 ], [ %.114081, %bb.pp ] ; 2 uses
  %.26624.lcssa = phi i32 [ %.16623.lcssa, %.preheader5405 ], [ %i.inx, %bb.pp ] ; 3 uses
  %.76606.lcssa = phi ptr [ %.46603.lcssa, %.preheader5405 ], [ %.96608, %bb.pp ] ; 2 uses
  %.96587.lcssa = phi ptr [ %.56583.lcssa, %.preheader5405 ], [ %.126590, %bb.pp ] ; 2 uses
  %.156352.lcssa = phi ptr [ %.146351.lcssa, %.preheader5405 ], [ %i.iii, %bb.pp ] ; 2 uses
  %.60.lcssa = phi ptr [ %.56.lcssa, %.preheader5405 ], [ %.63, %bb.pp ] ; 2 uses
  %i.ihz = or disjoint i32 %.26624.lcssa, 1
  %i.iia = icmp slt i32 %i.ihz, %6
  br i1 %i.iia, label %.lr.ph5600, label %.preheader5403

.lr.ph5587:                                       ; preds = %.preheader5405, %bb.pp
  %.605586 = phi ptr [ %.63, %bb.pp ], [ %.56.lcssa, %.preheader5405 ] ; 14 uses
  %.1563525585 = phi ptr [ %i.iii, %bb.pp ], [ %.146351.lcssa, %.preheader5405 ] ; 5 uses
  %.965875584 = phi ptr [ %.126590, %bb.pp ], [ %.56583.lcssa, %.preheader5405 ] ; 20 uses
  %.766065583 = phi ptr [ %.96608, %bb.pp ], [ %.46603.lcssa, %.preheader5405 ] ; 24 uses
  %.266245582 = phi i32 [ %i.inx, %bb.pp ], [ %.16623.lcssa, %.preheader5405 ]
  %.840785581 = phi <4 x float> [ %.114081, %bb.pp ], [ %.34073.lcssa, %.preheader5405 ] ; 12 uses
  %i.iib = load <4 x float>, ptr %.1563525585, align 16, !tbaa !116 ; 2 uses
  %i.iic = getelementptr inbounds nuw i8, ptr %.1563525585, i64 16
  %i.iid = load <4 x float>, ptr %i.iic, align 16, !tbaa !116 ; 2 uses
  %i.iie = getelementptr inbounds nuw i8, ptr %.1563525585, i64 32
  %i.iif = load <4 x float>, ptr %i.iie, align 16, !tbaa !116 ; 2 uses
  %i.iig = getelementptr inbounds nuw i8, ptr %.1563525585, i64 48
  %i.iih = load <4 x float>, ptr %i.iig, align 16, !tbaa !116 ; 2 uses
  %i.iii = getelementptr inbounds nuw i8, ptr %.1563525585, i64 64 ; 2 uses
  %i.iij = shufflevector <4 x float> %i.iib, <4 x float> %i.iih, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.iik = shufflevector <4 x float> %i.iib, <4 x float> %i.iih, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.iil = shufflevector <4 x float> %i.iif, <4 x float> %i.iid, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.iim = shufflevector <4 x float> %i.iif, <4 x float> %i.iid, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.iin = shufflevector <4 x float> %i.iij, <4 x float> %i.iil, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 7 uses
  %i.iio = shufflevector <4 x float> %i.iij, <4 x float> %i.iil, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.iip = shufflevector <4 x float> %i.iim, <4 x float> %i.iik, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 7 uses
  %i.iiq = shufflevector <4 x float> %i.iim, <4 x float> %i.iik, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.iir = shufflevector <4 x float> %i.iio, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 7 uses
  %i.iis = shufflevector <4 x float> %i.iiq, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 7 uses
  %.not6842 = icmp eq ptr %.605586, null
  br i1 %.not6842, label %.thread5155, label %bb.oo

bb.oo:                                            ; preds = %.lr.ph5587
  br i1 %i.dvf, label %.thread5142, label %bb.op

.thread5142:                                      ; preds = %bb.oo
  %i.iit = fadd fast <4 x float> %.840785581, %i.iin
  %i.iiu = fadd fast <4 x float> %i.iir, %.840785581
  %i.iiv = fadd fast <4 x float> %.840785581, %i.iip
  %i.iiw = fadd fast <4 x float> %i.iis, %.840785581
  br label %.thread5155

bb.op:                                            ; preds = %bb.oo
  br i1 %or.cond25, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op
  %i.iix = fadd fast <4 x float> %.840785581, %i.iin
  %i.iiy = fadd fast <4 x float> %i.iir, %.840785581
  %i.iiz = fadd fast <4 x float> %.840785581, %i.iip
  %i.ija = fadd fast <4 x float> %i.iis, %.840785581
  br label %.thread5155

bb.or:                                            ; preds = %bb.op
  switch i32 %2, label %.thread5155 [
    i32 3, label %bb.os
    i32 4, label %bb.oy
  ]

bb.os:                                            ; preds = %bb.or
  %i.ijb = load <4 x float>, ptr %.605586, align 1, !tbaa !116 ; 3 uses
  br i1 %i.dvp, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  %i.ijc = getelementptr inbounds nuw i8, ptr %.605586, i64 16
  %i.ijd = load <4 x float>, ptr %i.ijc, align 1, !tbaa !116
  %i.ije = getelementptr inbounds nuw i8, ptr %.605586, i64 32
  %i.ijf = load <4 x float>, ptr %i.ije, align 1, !tbaa !116
  %i.ijg = getelementptr inbounds nuw i8, ptr %.605586, i64 48
  %i.ijh = load <4 x float>, ptr %i.ijg, align 1, !tbaa !116
  br label %bb.ov

bb.ou:                                            ; preds = %bb.os
  %i.iji = getelementptr inbounds nuw [4 x i8], ptr %.605586, i64 %i.t
  %i.ijj = load <4 x float>, ptr %i.iji, align 1, !tbaa !116 ; 2 uses
  %i.ijk = getelementptr inbounds nuw i8, ptr %.605586, i64 %.idx6879
  %i.ijl = load <4 x float>, ptr %i.ijk, align 1, !tbaa !116 ; 2 uses
  %i.ijm = getelementptr inbounds nuw i8, ptr %.605586, i64 %.idx6880
  %i.ijn = load <4 x float>, ptr %i.ijm, align 1, !tbaa !116 ; 2 uses
  %i.ijo = shufflevector <4 x float> %i.ijb, <4 x float> %i.ijj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ijp = shufflevector <4 x float> %i.ijl, <4 x float> %i.ijn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ijq = shufflevector <4 x float> %i.ijb, <4 x float> %i.ijj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ijr = shufflevector <4 x float> %i.ijl, <4 x float> %i.ijn, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ijs = shufflevector <4 x float> %i.ijo, <4 x float> %i.ijp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ijt = shufflevector <4 x float> %i.ijp, <4 x float> %i.ijo, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.iju = shufflevector <4 x float> %i.ijq, <4 x float> %i.ijr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ijv = shufflevector <4 x float> %i.ijr, <4 x float> %i.ijq, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ou, %bb.ot
  %.sink6171 = phi i64 [ 16, %bb.ou ], [ 64, %bb.ot ]
  %.94079 = phi nsz <4 x float> [ %i.ijs, %bb.ou ], [ %i.ijb, %bb.ot ] ; 4 uses
  %.03935 = phi nsz <4 x float> [ %i.ijt, %bb.ou ], [ %i.ijd, %bb.ot ] ; 2 uses
  %.03934 = phi nsz <4 x float> [ %i.iju, %bb.ou ], [ %i.ijf, %bb.ot ] ; 2 uses
  %.03933 = phi nsz <4 x float> [ %i.ijv, %bb.ou ], [ %i.ijh, %bb.ot ] ; 2 uses
  %i.ijw = getelementptr inbounds nuw i8, ptr %.605586, i64 %.sink6171 ; 2 uses
  br i1 %i.dvq, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  %i.ijx = fadd fast <4 x float> %.94079, %i.iin
  %i.ijy = fadd fast <4 x float> %.03935, %i.iir
  %i.ijz = fadd fast <4 x float> %.03934, %i.iip
  %i.ika = fadd fast <4 x float> %.03933, %i.iis
  br label %.thread5155

bb.ox:                                            ; preds = %bb.ov
  %i.ikb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.94079, <4 x float> nofpclass(nan inf) %i.dvl, <4 x float> nofpclass(nan inf) %i.iin)
  %i.ikc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.03935, <4 x float> nofpclass(nan inf) %i.dvl, <4 x float> nofpclass(nan inf) %i.iir)
  %i.ikd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.03934, <4 x float> nofpclass(nan inf) %i.dvl, <4 x float> nofpclass(nan inf) %i.iip)
  %i.ike = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.03933, <4 x float> nofpclass(nan inf) %i.dvl, <4 x float> nofpclass(nan inf) %i.iis)
  br label %.thread5155

bb.oy:                                            ; preds = %bb.or
  %i.ikf = load <4 x float>, ptr %.605586, align 4, !tbaa !68
  %i.ikg = fmul fast <4 x float> %i.ikf, %i.dwi   ; 4 uses
  %i.ikh = shufflevector <4 x float> %i.ikg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.iki = shufflevector <4 x float> %i.ikg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ikj = shufflevector <4 x float> %i.ikg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ikk = shufflevector <4 x float> %i.ikg, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ikl = fadd fast <4 x float> %i.ikh, %i.iin
  %i.ikm = fadd fast <4 x float> %i.iki, %i.iir
  %i.ikn = fadd fast <4 x float> %i.ikj, %i.iip
  %i.iko = fadd fast <4 x float> %i.ikk, %i.iis
  %i.ikp = getelementptr inbounds nuw i8, ptr %.605586, i64 16
  br label %.thread5155

.thread5155:                                      ; preds = %bb.or, %bb.oq, %.thread5142, %bb.ox, %bb.ow, %bb.oy, %.lr.ph5587
  %.114081 = phi nsz <4 x float> [ %.840785581, %.lr.ph5587 ], [ %i.ikh, %bb.oy ], [ %.840785581, %bb.or ], [ %.94079, %bb.ow ], [ %.94079, %bb.ox ], [ %.840785581, %.thread5142 ], [ %.840785581, %bb.oq ] ; 2 uses
  %.43958 = phi nsz <4 x float> [ %i.iin, %.lr.ph5587 ], [ %i.ikl, %bb.oy ], [ %i.iin, %bb.or ], [ %i.ijx, %bb.ow ], [ %i.ikb, %bb.ox ], [ %i.iit, %.thread5142 ], [ %i.iix, %bb.oq ] ; 2 uses
  %.43952 = phi nsz <4 x float> [ %i.iir, %.lr.ph5587 ], [ %i.ikm, %bb.oy ], [ %i.iir, %bb.or ], [ %i.ijy, %bb.ow ], [ %i.ikc, %bb.ox ], [ %i.iiu, %.thread5142 ], [ %i.iiy, %bb.oq ] ; 2 uses
  %.43946 = phi nsz <4 x float> [ %i.iip, %.lr.ph5587 ], [ %i.ikn, %bb.oy ], [ %i.iip, %bb.or ], [ %i.ijz, %bb.ow ], [ %i.ikd, %bb.ox ], [ %i.iiv, %.thread5142 ], [ %i.iiz, %bb.oq ] ; 2 uses
  %.43940 = phi nsz <4 x float> [ %i.iis, %.lr.ph5587 ], [ %i.iko, %bb.oy ], [ %i.iis, %bb.or ], [ %i.ika, %bb.ow ], [ %i.ike, %bb.ox ], [ %i.iiw, %.thread5142 ], [ %i.ija, %bb.oq ] ; 2 uses
  %.63 = phi ptr [ null, %.lr.ph5587 ], [ %i.ikp, %bb.oy ], [ %.605586, %bb.or ], [ %i.ijw, %bb.ow ], [ %i.ijw, %bb.ox ], [ %.605586, %.thread5142 ], [ %.605586, %bb.oq ] ; 2 uses
  br i1 %i.dvr, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %.thread5155
  %i.ikq = fmul fast <4 x float> %.43958, %i.dwa
  %i.ikr = fmul fast <4 x float> %.43952, %i.dwa
  %i.iks = fmul fast <4 x float> %.43946, %i.dwa
  %i.ikt = fmul fast <4 x float> %.43940, %i.dwa
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %.thread5155
  %.53959 = phi nsz <4 x float> [ %i.ikq, %bb.oz ], [ %.43958, %.thread5155 ] ; 7 uses
  %.53953 = phi nsz <4 x float> [ %i.ikr, %bb.oz ], [ %.43952, %.thread5155 ] ; 7 uses
  %.53947 = phi nsz <4 x float> [ %i.iks, %bb.oz ], [ %.43946, %.thread5155 ] ; 7 uses
  %.53941 = phi nsz <4 x float> [ %i.ikt, %bb.oz ], [ %.43940, %.thread5155 ] ; 7 uses
  br i1 %i.dvu, label %bb.pb, label %bb.pi

bb.pb:                                            ; preds = %bb.pa
  br i1 %.not6830, label %bb.pg, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  switch i32 %i.b, label %bb.pf [
    i32 4, label %bb.pd
    i32 1, label %bb.pe
  ]

bb.pd:                                            ; preds = %bb.pc
  %i.iku = shufflevector <4 x float> %.53959, <4 x float> %.53953, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ikv = shufflevector <4 x float> %.53947, <4 x float> %.53941, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ikw = shufflevector <4 x float> %.53959, <4 x float> %.53953, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ikx = shufflevector <4 x float> %.53947, <4 x float> %.53941, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.iky = shufflevector <4 x float> %i.iku, <4 x float> %i.ikv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ikz = shufflevector <4 x float> %i.ikv, <4 x float> %i.iku, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ila = shufflevector <4 x float> %i.ikw, <4 x float> %i.ikx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ilb = shufflevector <4 x float> %i.ikx, <4 x float> %i.ikw, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.iky, ptr %.766065583, align 16, !tbaa !116
  %i.ilc = getelementptr inbounds nuw i8, ptr %.766065583, i64 16
  store <4 x float> %i.ikz, ptr %i.ilc, align 16, !tbaa !116
  %11 = getelementptr inbounds nuw i8, ptr %.766065583, i64 32
  store <4 x float> %i.ila, ptr %11, align 16, !tbaa !116
  %12 = getelementptr inbounds nuw i8, ptr %.766065583, i64 48
  store <4 x float> %i.ilb, ptr %12, align 16, !tbaa !116
  br label %bb.pf

bb.pe:                                            ; preds = %bb.pc
  store <4 x float> %.53959, ptr %.766065583, align 1, !tbaa !116
  %13 = getelementptr inbounds nuw [4 x i8], ptr %.766065583, i64 %i.k
  store <4 x float> %.53953, ptr %13, align 1, !tbaa !116
  %i.ild = getelementptr inbounds nuw i8, ptr %.766065583, i64 %.idx6885
  store <4 x float> %.53947, ptr %i.ild, align 1, !tbaa !116
  %i.ile = getelementptr inbounds nuw i8, ptr %.766065583, i64 %.idx6892
  store <4 x float> %.53941, ptr %i.ile, align 1, !tbaa !116
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pd, %bb.pc, %bb.pe
  %i.ilf = getelementptr inbounds nuw i8, ptr %.766065583, i64 %.idx6884
  br label %bb.pp

bb.pg:                                            ; preds = %bb.pb
  switch i32 %i.b, label %bb.pp [
    i32 4, label %.thread5162
    i32 1, label %bb.ph
  ]

.thread5162:                                      ; preds = %bb.pg
  store <4 x float> %.53959, ptr %.766065583, align 1, !tbaa !116
  %i.ilg = getelementptr inbounds nuw i8, ptr %.766065583, i64 16
  store <4 x float> %.53953, ptr %i.ilg, align 1, !tbaa !116
  %i.ilh = getelementptr inbounds nuw i8, ptr %.766065583, i64 32
  store <4 x float> %.53947, ptr %i.ilh, align 1, !tbaa !116
  %i.ili = getelementptr inbounds nuw i8, ptr %.766065583, i64 48
  store <4 x float> %.53941, ptr %i.ili, align 1, !tbaa !116
  %i.ilj = getelementptr inbounds nuw i8, ptr %.766065583, i64 64
  br label %bb.pp

bb.ph:                                            ; preds = %bb.pg
  %i.ilk = shufflevector <4 x float> %.53959, <4 x float> %.53953, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ill = shufflevector <4 x float> %.53947, <4 x float> %.53941, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ilm = shufflevector <4 x float> %.53959, <4 x float> %.53953, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.iln = shufflevector <4 x float> %.53947, <4 x float> %.53941, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ilo = shufflevector <4 x float> %i.ilk, <4 x float> %i.ill, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ilp = shufflevector <4 x float> %i.ill, <4 x float> %i.ilk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ilq = shufflevector <4 x float> %i.ilm, <4 x float> %i.iln, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ilr = shufflevector <4 x float> %i.iln, <4 x float> %i.ilm, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.ilo, ptr %.766065583, align 1, !tbaa !116
  %i.ils = getelementptr inbounds nuw [4 x i8], ptr %.766065583, i64 %i.k
  store <4 x float> %i.ilp, ptr %i.ils, align 1, !tbaa !116
  %i.ilt = getelementptr inbounds nuw i8, ptr %.766065583, i64 %.idx6885
  store <4 x float> %i.ilq, ptr %i.ilt, align 1, !tbaa !116
  %i.ilu = getelementptr inbounds nuw i8, ptr %.766065583, i64 %.idx6892
  store <4 x float> %i.ilr, ptr %i.ilu, align 1, !tbaa !116
  %i.ilv = getelementptr inbounds nuw i8, ptr %.766065583, i64 16
  br label %bb.pp

bb.pi:                                            ; preds = %bb.pa
  %i.ilw = bitcast <4 x float> %.53959 to <4 x i32>
  %i.ilx = lshr <4 x i32> %i.ilw, splat (i32 16)
  %i.ily = bitcast <4 x float> %.53947 to <4 x i32>
  %i.ilz = lshr <4 x i32> %i.ily, splat (i32 16)
  %i.ima = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ilx, <4 x i32> %i.ilz) ; 7 uses
  %i.imb = bitcast <8 x i16> %i.ima to <2 x i64>  ; 2 uses
  %i.imc = bitcast <4 x float> %.53953 to <4 x i32>
  %i.imd = lshr <4 x i32> %i.imc, splat (i32 16)
  %i.ime = bitcast <4 x float> %.53941 to <4 x i32>
  %i.imf = lshr <4 x i32> %i.ime, splat (i32 16)
  %i.img = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.imd, <4 x i32> %i.imf) ; 7 uses
  %i.imh = bitcast <8 x i16> %i.img to <2 x i64>  ; 2 uses
  br i1 %.not6830, label %bb.pn, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  switch i32 %i.b, label %bb.pm [
    i32 4, label %bb.pk
    i32 1, label %bb.pl
  ]

bb.pk:                                            ; preds = %bb.pj
  %i.imi = shufflevector <8 x i16> %i.ima, <8 x i16> %i.img, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.imj = shufflevector <8 x i16> %i.ima, <8 x i16> %i.img, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.imk = bitcast <8 x i16> %i.imi to <4 x i32>  ; 2 uses
  %i.iml = bitcast <8 x i16> %i.imj to <4 x i32>  ; 2 uses
  %i.imm = shufflevector <4 x i32> %i.imk, <4 x i32> %i.iml, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.imn = shufflevector <4 x i32> %i.imk, <4 x i32> %i.iml, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.imm, ptr %.965875584, align 1, !tbaa !116
  %i.imo = getelementptr inbounds nuw i8, ptr %.965875584, i64 16
  store <4 x i32> %i.imn, ptr %i.imo, align 1, !tbaa !116
  br label %bb.pm

bb.pl:                                            ; preds = %bb.pj
  %i.imp = extractelement <2 x i64> %i.imb, i64 0
  store i64 %i.imp, ptr %.965875584, align 1, !tbaa !116
  %i.imq = getelementptr inbounds nuw [2 x i8], ptr %.965875584, i64 %i.k
  %i.imr = extractelement <2 x i64> %i.imh, i64 0
  store i64 %i.imr, ptr %i.imq, align 1, !tbaa !116
  %i.ims = getelementptr inbounds nuw i8, ptr %.965875584, i64 %.idx6888
  %i.imt = bitcast <8 x i16> %i.ima to <2 x double>
  %i.imu = extractelement <2 x double> %i.imt, i64 1
  store double %i.imu, ptr %i.ims, align 1, !tbaa !116
  %i.imv = getelementptr inbounds nuw i8, ptr %.965875584, i64 %.idx6889
  %i.imw = bitcast <8 x i16> %i.img to <2 x double>
  %i.imx = extractelement <2 x double> %i.imw, i64 1
  store double %i.imx, ptr %i.imv, align 1, !tbaa !116
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pk, %bb.pj, %bb.pl
  %i.imy = getelementptr inbounds nuw i8, ptr %.965875584, i64 %.idx6885
  br label %bb.pp

bb.pn:                                            ; preds = %bb.pi
  switch i32 %i.b, label %bb.pp [
    i32 4, label %.thread5164
    i32 1, label %bb.po
  ]

.thread5164:                                      ; preds = %bb.pn
  %i.imz = shufflevector <2 x i64> %i.imb, <2 x i64> %i.imh, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.imz, ptr %.965875584, align 1, !tbaa !116
  %i.ina = getelementptr inbounds nuw i8, ptr %.965875584, i64 16
  %i.inb = bitcast <8 x i16> %i.ima to <2 x double>
  %i.inc = bitcast <8 x i16> %i.img to <2 x double>
  %i.ind = shufflevector <2 x double> %i.inb, <2 x double> %i.inc, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.ind, ptr %i.ina, align 1, !tbaa !116
  %i.ine = getelementptr inbounds nuw i8, ptr %.965875584, i64 32
  br label %bb.pp

bb.po:                                            ; preds = %bb.pn
  %i.inf = shufflevector <8 x i16> %i.ima, <8 x i16> %i.img, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ing = shufflevector <8 x i16> %i.ima, <8 x i16> %i.img, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.inh = bitcast <8 x i16> %i.inf to <4 x i32>  ; 2 uses
  %i.ini = bitcast <8 x i16> %i.ing to <4 x i32>  ; 2 uses
  %i.inj = shufflevector <4 x i32> %i.inh, <4 x i32> %i.ini, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ink = bitcast <4 x i32> %i.inj to <2 x i64>
  %i.inl = shufflevector <4 x i32> %i.inh, <4 x i32> %i.ini, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.inm = bitcast <4 x i32> %i.inl to <2 x i64>
  %i.inn = extractelement <2 x i64> %i.ink, i64 0
  store i64 %i.inn, ptr %.965875584, align 1, !tbaa !116
  %i.ino = getelementptr inbounds nuw [2 x i8], ptr %.965875584, i64 %i.k
  %i.inp = bitcast <4 x i32> %i.inj to <2 x double>
  %i.inq = extractelement <2 x double> %i.inp, i64 1
  store double %i.inq, ptr %i.ino, align 1, !tbaa !116
  %i.inr = getelementptr inbounds nuw i8, ptr %.965875584, i64 %.idx6888
  %i.ins = extractelement <2 x i64> %i.inm, i64 0
  store i64 %i.ins, ptr %i.inr, align 1, !tbaa !116
  %i.int = getelementptr inbounds nuw i8, ptr %.965875584, i64 %.idx6889
  %i.inu = bitcast <4 x i32> %i.inl to <2 x double>
  %i.inv = extractelement <2 x double> %i.inu, i64 1
  store double %i.inv, ptr %i.int, align 1, !tbaa !116
  %i.inw = getelementptr inbounds nuw i8, ptr %.965875584, i64 8
  br label %bb.pp

bb.pp:                                            ; preds = %bb.pn, %bb.pg, %.thread5164, %.thread5162, %bb.pm, %bb.po, %bb.pf, %bb.ph
  %.96608 = phi ptr [ %i.ilf, %bb.pf ], [ %i.ilv, %bb.ph ], [ %.766065583, %bb.pg ], [ %.766065583, %bb.pn ], [ %.766065583, %bb.po ], [ %.766065583, %bb.pm ], [ %i.ilj, %.thread5162 ], [ %.766065583, %.thread5164 ] ; 2 uses
  %.126590 = phi ptr [ %.965875584, %bb.pf ], [ %.965875584, %bb.ph ], [ %.965875584, %bb.pg ], [ %.965875584, %bb.pn ], [ %i.inw, %bb.po ], [ %i.imy, %bb.pm ], [ %.965875584, %.thread5162 ], [ %i.ine, %.thread5164 ] ; 2 uses
  %i.inx = add nuw nsw i32 %.266245582, 4         ; 3 uses
  %i.iny = or disjoint i32 %i.inx, 3
  %i.inz = icmp slt i32 %i.iny, %6
  br i1 %i.inz, label %.lr.ph5587, label %.preheader5404, !llvm.loop !1598

.preheader5403:                                   ; preds = %bb.qp, %.preheader5404
  %.124082.lcssa = phi <4 x float> [ %.84078.lcssa, %.preheader5404 ], [ %.154085, %bb.qp ]
  %.36625.lcssa = phi i32 [ %.26624.lcssa, %.preheader5404 ], [ %i.irx, %bb.qp ] ; 2 uses
  %.106609.lcssa = phi ptr [ %.76606.lcssa, %.preheader5404 ], [ %.126611, %bb.qp ]
  %.136591.lcssa = phi ptr [ %.96587.lcssa, %.preheader5404 ], [ %.166594, %bb.qp ]
  %.166353.lcssa = phi ptr [ %.156352.lcssa, %.preheader5404 ], [ %i.ioe, %bb.qp ] ; 2 uses
  %.64.lcssa = phi ptr [ %.60.lcssa, %.preheader5404 ], [ %.67, %bb.qp ] ; 2 uses
  %i.ioa = icmp slt i32 %.36625.lcssa, %6
  br i1 %i.ioa, label %.lr.ph5613, label %._crit_edge5614

.lr.ph5600:                                       ; preds = %.preheader5404, %bb.qp
  %.645599 = phi ptr [ %.67, %bb.qp ], [ %.60.lcssa, %.preheader5404 ] ; 14 uses
  %.1663535598 = phi ptr [ %i.ioe, %bb.qp ], [ %.156352.lcssa, %.preheader5404 ] ; 3 uses
  %.1365915597 = phi ptr [ %.166594, %bb.qp ], [ %.96587.lcssa, %.preheader5404 ] ; 20 uses
  %.1066095596 = phi ptr [ %.126611, %bb.qp ], [ %.76606.lcssa, %.preheader5404 ] ; 22 uses
  %.366255595 = phi i32 [ %i.irx, %bb.qp ], [ %.26624.lcssa, %.preheader5404 ]
  %.1240825594 = phi <4 x float> [ %.154085, %bb.qp ], [ %.84078.lcssa, %.preheader5404 ] ; 8 uses
  %i.iob = load <4 x float>, ptr %.1663535598, align 16, !tbaa !116 ; 2 uses
  %i.ioc = getelementptr inbounds nuw i8, ptr %.1663535598, i64 16
  %i.iod = load <4 x float>, ptr %i.ioc, align 16, !tbaa !116 ; 2 uses
  %i.ioe = getelementptr inbounds nuw i8, ptr %.1663535598, i64 32 ; 2 uses
  %i.iof = shufflevector <4 x float> %i.iob, <4 x float> %i.iod, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 7 uses
  %i.iog = shufflevector <4 x float> %i.iod, <4 x float> %i.iob, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 7 uses
  %.not6839 = icmp eq ptr %.645599, null
  br i1 %.not6839, label %.thread5175, label %bb.pq

bb.pq:                                            ; preds = %.lr.ph5600
  br i1 %i.dvf, label %.thread5166, label %bb.pr

.thread5166:                                      ; preds = %bb.pq
  %i.ioh = fadd fast <4 x float> %i.iof, %.1240825594
  %i.ioi = fadd fast <4 x float> %i.iog, %.1240825594
  br label %.thread5175

bb.pr:                                            ; preds = %bb.pq
  br i1 %or.cond25, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %bb.pr
  %i.ioj = fadd fast <4 x float> %i.iof, %.1240825594
  %i.iok = fadd fast <4 x float> %i.iog, %.1240825594
  br label %.thread5175

bb.pt:                                            ; preds = %bb.pr
  switch i32 %2, label %.thread5175 [
    i32 3, label %bb.pu
    i32 4, label %bb.qa
  ]

bb.pu:                                            ; preds = %bb.pt
  br i1 %i.dvp, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %bb.pu
  %i.iol = load <4 x float>, ptr %.645599, align 1, !tbaa !116
  %i.iom = getelementptr inbounds nuw i8, ptr %.645599, i64 16
  %i.ion = load <4 x float>, ptr %i.iom, align 1, !tbaa !116
  br label %bb.px

bb.pw:                                            ; preds = %bb.pu
end_hunk_1
