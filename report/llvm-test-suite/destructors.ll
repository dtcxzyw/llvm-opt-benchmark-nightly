begin_hunk_0_@__local_laplacian:entry
  %i.afz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %f74.v4.min_realized, ptr %i.afz, align 8
  %i.aga = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %b709, ptr %i.aga, align 4
  %i.agb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %a705, ptr %i.agb, align 8
  %i.agc = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %b695, ptr %i.agc, align 4
  %i.agd = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %a691, ptr %i.agd, align 8
  %i.age = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %f75.v3.extent_realized.s, ptr %i.age, align 4
  %i.agf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %f75.v3.min_realized, ptr %i.agf, align 8
  %i.agg = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %f75.v4.min_realized, ptr %i.agg, align 4
  %i.agh = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.acl, ptr %i.agh, align 8
  %i.agi = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %i.agi, align 8
  %i.agj = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.afv, ptr %i.agj, align 8
  %i.agk = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr null, ptr %i.agk, align 8
  %i.agl = call i32 @halide_do_par_for(ptr null, ptr nonnull @par_for___local_laplacian_f75.s0.v4.v4, i32 0, i32 %i.afx, ptr nonnull %3) ; 2 uses
  %i.agm = icmp eq i32 %i.agl, 0
  br i1 %i.agm, label %"consume f75", label %call_destructor.exit210.thread823, !prof !5

"consume f75":                                    ; preds = %"produce f75"
  %a718 = call i32 @llvm.smin.i32(i32 %b14, i32 %b748)
  %f9.v4.min_realized = call i32 @llvm.smin.i32(i32 %b720, i32 %a718) ; 6 uses
  %b723 = ashr i32 %i.aq, 6
  %f9.v4.extent_realized.s.s = call i32 @llvm.smax.i32(i32 %b750, i32 %b723)
  %a722 = call i32 @llvm.smin.i32(i32 %b17, i32 %b751)
  %f9.v3.min_realized = call i32 @llvm.smin.i32(i32 %b724, i32 %a722) ; 6 uses
  %b727 = ashr i32 %i.au, 6
  %f9.v3.extent_realized.s.s = call i32 @llvm.smax.i32(i32 %b753, i32 %b727) ; 4 uses
  %i.agn = sub nsw i32 %f9.v4.extent_realized.s.s, %f9.v4.min_realized
  %i.ago = add nsw i32 %i.agn, 1                  ; 2 uses
  %i.agp = sub nsw i32 %f9.v3.extent_realized.s.s, %f9.v3.min_realized
  %i.agq = add nsw i32 %i.agp, 1                  ; 4 uses
  %f9.stride.2 = mul nsw i32 %i.ago, %i.agq       ; 4 uses
  %i.agr = zext i32 %i.ago to i64                 ; 3 uses
  %i.ags = zext i32 %i.agq to i64                 ; 2 uses
  %i.agt = shl nuw nsw i64 %i.ags, 2              ; 2 uses
  %i.agu = and i64 %i.agt, 4294967292
  %i.agv = mul nuw i64 %i.agu, %i.agr
  %i.agw = lshr i64 %i.agv, 32
  %i.agx = lshr i64 %i.ags, 30
  %i.agy = mul nuw nsw i64 %i.agx, %i.agr
  %t3079 = add nuw nsw i64 %i.agw, %i.agy         ; 2 uses
  %t3080 = mul i64 %i.agt, %i.agr                 ; 2 uses
  %i.agz = mul i64 %t3080, %i.od                  ; 3 uses
  %i.aha = icmp ult i64 %i.agz, 2147483648
  %i.ahb = and i64 %t3080, 4294967292
  %i.ahc = mul nuw i64 %i.ahb, %i.od
  %i.ahd = lshr i64 %i.ahc, 32
  %i.ahe = mul i64 %t3079, %i.od
  %i.ahf = add i64 %i.ahe, %i.ahd
  %i.ahg = or i64 %i.ahf, %t3079
  %i.ahh = icmp ult i64 %i.ahg, 4294967296
  %i.ahi = and i1 %i.aha, %i.ahh
  br i1 %i.ahi, label %"assert succeeded164", label %"assert failed163", !prof !5

"assert failed163":                               ; preds = %"consume f75"
  %i.ahj = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.20, i64 %i.agz, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded164":                            ; preds = %"consume f75"
  %i.ahk = add nuw nsw i64 %i.agz, 4
  %i.ahl = call ptr @halide_malloc(ptr null, i64 %i.ahk) ; 21 uses
  %.not569 = icmp eq ptr %i.ahl, null
  br i1 %.not569, label %"assert failed165", label %"produce f9", !prof !4

"assert failed165":                               ; preds = %"assert succeeded164"
  %i.ahm = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f9":                                     ; preds = %"assert succeeded164"
  store i32 %a772, ptr %2, align 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %f8.stride.2, ptr %i.ahn, align 4
  %i.aho = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %f8.v3.extent_realized.s, ptr %i.aho, align 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %a667, ptr %i.ahp, align 4
  %i.ahq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.adf, ptr %i.ahq, align 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %b753, ptr %i.ahr, align 4
  %i.ahs = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %b724, ptr %i.ahs, align 8
  %i.aht = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %b750, ptr %i.aht, align 4
  %i.ahu = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %b720, ptr %i.ahu, align 8
  %i.ahv = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %f9.stride.2, ptr %i.ahv, align 4
  %i.ahw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %f9.v3.extent_realized.s.s, ptr %i.ahw, align 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %f9.v3.min_realized, ptr %i.ahx, align 4
  %i.ahy = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %f9.v4.min_realized, ptr %i.ahy, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.aeh, ptr %i.ahz, align 8
  %i.aia = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr null, ptr %i.aia, align 8
  %i.aib = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.ahl, ptr %i.aib, align 8
  %i.aic = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr null, ptr %i.aic, align 8
  %i.aid = call i32 @halide_do_par_for(ptr null, ptr nonnull @par_for___local_laplacian_f9.s0.v6, i32 %i.cs, i32 %i.aej, ptr nonnull %2) ; 2 uses
  %i.aie = icmp eq i32 %i.aid, 0
  br i1 %i.aie, label %"consume f9", label %call_destructor.exit210.thread823, !prof !5

"consume f9":                                     ; preds = %"produce f9"
  %reass.sub1002 = sub nsw i32 %b735, %b733
  %i.aif = add nsw i32 %reass.sub1002, 1
  %i.aig = zext i32 %i.aif to i64                 ; 3 uses
  %reass.sub1003 = sub nsw i32 %b739, %b737       ; 4 uses
  %i.aih = add nsw i32 %reass.sub1003, 1          ; 6 uses
  %i.aii = zext i32 %i.aih to i64                 ; 2 uses
  %i.aij = shl nuw nsw i64 %i.aii, 2              ; 2 uses
  %i.aik = mul i64 %i.aij, %i.aig                 ; 3 uses
  %i.ail = icmp ult i64 %i.aik, 2147483648
  %i.aim = and i64 %i.aij, 4294967292
  %i.ain = mul nuw i64 %i.aim, %i.aig
  %i.aio = lshr i64 %i.ain, 32
  %i.aip = lshr i64 %i.aii, 30
  %i.aiq = mul nuw nsw i64 %i.aip, %i.aig
  %i.air = add nuw nsw i64 %i.aio, %i.aiq
  %i.ais = icmp samesign ult i64 %i.air, 4294967296
  %i.ait = and i1 %i.ail, %i.ais
  br i1 %i.ait, label %"assert succeeded170", label %"assert failed169", !prof !5

"assert failed169":                               ; preds = %"consume f9"
  %i.aiu = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.21, i64 %i.aik, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded170":                            ; preds = %"consume f9"
  %i.aiv = add nuw nsw i64 %i.aik, 4
  %i.aiw = call ptr @halide_malloc(ptr null, i64 %i.aiv) ; 22 uses
  %.not576 = icmp eq ptr %i.aiw, null
  br i1 %.not576, label %"assert failed171", label %"produce f76", !prof !4

"assert failed171":                               ; preds = %"assert succeeded170"
  %i.aix = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f76":                                    ; preds = %"assert succeeded170"
  %.not967 = icmp sgt i32 %b733, %b735
  br i1 %.not967, label %"consume f76", label %"for f76.s0.v4.preheader", !prof !4

"for f76.s0.v4.preheader":                        ; preds = %"produce f76"
  %i.aiy = add nsw i32 %b739, 1
  %i.aiz = sub nsw i32 %i.aiy, %b737              ; 3 uses
  %i.aja = sext i32 %b739 to i64
  %i.ajb = sext i32 %b737 to i64
  %reass.sub1004 = sub nsw i64 %i.aja, %i.ajb
  %i.ajc = shl nsw i64 %reass.sub1004, 2
  %i.ajd = shl nsw i32 %i.afg, 1                  ; 4 uses
  %.not968 = icmp sgt i32 %b737, %b739
  br i1 %.not968, label %"consume f76", label %"for f76.s0.v4.preheader1022", !prof !4

"for f76.s0.v4.preheader1022":                    ; preds = %"for f76.s0.v4.preheader"
  %i.aje = or disjoint i32 %i.bd, 1
  %i.ajf = sub i32 %i.aje, %f75.v4.min_realized
  %i.ajg = mul i32 %i.afg, %i.ajf
  %i.ajh = sub i32 %i.ajg, %f75.v3.min_realized
  %i.aji = add nsw i32 %i.bd, 2
  %i.ajj = sub nsw i32 %i.aji, %f75.v4.min_realized
  %i.ajk = mul i32 %i.afg, %i.ajj
  %i.ajl = sub i32 %i.ajk, %f75.v3.min_realized
  %i.ajm = shl i32 %i.afg, 1
  %i.ajn = xor i32 %f75.v4.min_realized, -1
  %i.ajo = or disjoint i32 %i.bd, 1
  %i.ajp = add i32 %i.bd, 2
  %i.ajq = sub i32 %i.ajp, %f75.v4.min_realized
  %i.ajr = sub i32 %i.ajo, %f75.v4.min_realized
  %i.ajs = sub i32 %i.bd, %f75.v4.min_realized    ; 2 uses
  %i.ajt = add i32 %i.bd, %i.ajn                  ; 2 uses
  %i.aju = mul i32 %i.afg, %i.ajt
  %i.ajv = sub i32 %i.aju, %f75.v3.min_realized
  %i.ajw = mul i32 %i.afg, %i.ajs
  %i.ajx = sub i32 %i.ajw, %f75.v3.min_realized
  %i.ajy = mul i32 %i.ajq, %i.afg
  %i.ajz = mul i32 %i.afg, %i.ajr
  %i.aka = mul i32 %i.afg, %i.ajs
  %i.akb = mul i32 %i.ajt, %i.afg
  %i.akc = insertelement <4 x i32> poison, i32 %i.akb, i64 0
  %i.akd = insertelement <4 x i32> %i.akc, i32 %i.aka, i64 1
  %i.ake = insertelement <4 x i32> %i.akd, i32 %i.ajz, i64 2
  %i.akf = insertelement <4 x i32> %i.ake, i32 %i.ajy, i64 3
  %i.akg = insertelement <4 x i32> poison, i32 %i.bh, i64 0
  %i.akh = shufflevector <4 x i32> %i.akg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aki = add <4 x i32> %i.akf, %i.akh
  %i.akj = insertelement <4 x i32> poison, i32 %f75.v3.min_realized, i64 0
  %i.akk = shufflevector <4 x i32> %i.akj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.akl = sub <4 x i32> %i.aki, %i.akk           ; 2 uses
  %13 = insertelement <4 x i32> poison, i32 %reass.sub1003, i64 0
  %i.akm = zext i32 %reass.sub1003 to i64
  %14 = add nuw nsw i64 %i.akm, 1                 ; 2 uses
  %min.iters.check1361 = icmp ult i32 %reass.sub1003, 7
  %i.akn = shl <4 x i32> %13, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ako = shufflevector <4 x i32> %i.akn, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op1521.a = add <4 x i32> %i.akl, %i.ako
  %n.vec1364 = and i64 %14, 8589934588            ; 4 uses
  %i.akp = trunc i64 %n.vec1364 to i32            ; 2 uses
  %i.akq = shl i32 %i.akp, 1                      ; 4 uses
  %i.akr = shl nuw nsw i64 %n.vec1364, 2
  %i.aks = sub i32 %i.aiz, %i.akp
  %cmp.n1391 = icmp eq i64 %14, %n.vec1364
  br label %"for f76.s0.v4"

"for f76.s0.v4":                                  ; preds = %"for f76.s0.v4.preheader1022", %"end for f76.s0.v3.loopexit"
  %indvar = phi i32 [ 0, %"for f76.s0.v4.preheader1022" ], [ %indvar.next, %"end for f76.s0.v3.loopexit" ] ; 2 uses
  %lsr.iv474 = phi i32 [ %i.ajv, %"for f76.s0.v4.preheader1022" ], [ %lsr.iv.next475, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv470 = phi i32 [ %i.ajx, %"for f76.s0.v4.preheader1022" ], [ %lsr.iv.next471, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv466 = phi i32 [ %i.ajh, %"for f76.s0.v4.preheader1022" ], [ %lsr.iv.next467, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv462 = phi i32 [ %i.ajl, %"for f76.s0.v4.preheader1022" ], [ %lsr.iv.next463, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv456 = phi ptr [ %i.aiw, %"for f76.s0.v4.preheader1022" ], [ %scevgep458, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %f76.s0.v4 = phi i32 [ %b733, %"for f76.s0.v4.preheader1022" ], [ %i.apm, %"end for f76.s0.v3.loopexit" ] ; 2 uses
  br i1 %min.iters.check1361, label %"for f76.s0.v3.preheader", label %vector.scevcheck

vector.scevcheck:                                 ; preds = %"for f76.s0.v4"
  %i.akt = mul i32 %i.ajm, %indvar
  %i.aku = insertelement <4 x i32> poison, i32 %i.akt, i64 0
  %i.akv = shufflevector <4 x i32> %i.aku, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.akw = add <4 x i32> %i.akl, %i.akv
  %.reass1522.a = add <4 x i32> %i.akv, %invariant.op1521.a
  %i.akx = icmp slt <4 x i32> %.reass1522.a, %i.akw ; 4 uses
  %i.aky = extractelement <4 x i1> %i.akx, i64 2
  %i.akz = extractelement <4 x i1> %i.akx, i64 3
  %i.ala = or i1 %i.akz, %i.aky
  %i.alb = extractelement <4 x i1> %i.akx, i64 1
  %i.alc = or i1 %i.alb, %i.ala
  %i.ald = extractelement <4 x i1> %i.akx, i64 0
  %i.ale = or i1 %i.ald, %i.alc
  br i1 %i.ale, label %"for f76.s0.v3.preheader", label %vector.ph1362

vector.ph1362:                                    ; preds = %vector.scevcheck
  %i.alf = add i32 %lsr.iv474, %i.akq
  %i.alg = add i32 %lsr.iv470, %i.akq
  %i.alh = add i32 %lsr.iv466, %i.akq
  %i.ali = add i32 %lsr.iv462, %i.akq
  %i.alj = getelementptr i8, ptr %lsr.iv456, i64 %i.akr
  %invariant.op = add i32 %lsr.iv474, %i.bh
  %invariant.op1515.a = add i32 %lsr.iv470, %i.bh
  %invariant.op1517.a = add i32 %lsr.iv466, %i.bh
  %invariant.op1519 = add i32 %lsr.iv462, %i.bh
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.body1365, %vector.ph1362
  %index1366 = phi i64 [ 0, %vector.ph1362 ], [ %index.next1389, %vector.body1365 ] ; 3 uses
  %i.alk = trunc i64 %index1366 to i32
  %i.all = shl i32 %i.alk, 1                      ; 4 uses
  %i.alm = shl i64 %index1366, 2
  %next.gep = getelementptr i8, ptr %lsr.iv456, i64 %i.alm
  %.reass = add i32 %i.all, %invariant.op
  %.reass1516.a = add i32 %i.all, %invariant.op1515.a
  %.reass1518.a = add i32 %i.all, %invariant.op1517.a
  %.reass1520 = add i32 %i.all, %invariant.op1519
  %i.aln = sext i32 %.reass1520 to i64
  %i.alo = getelementptr [4 x i8], ptr %i.afv, i64 %i.aln ; 2 uses
  %i.alp = getelementptr i8, ptr %i.alo, i64 4
  %wide.vec = load <8 x float>, ptr %i.alp, align 4, !tbaa !13 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1367 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.alq = getelementptr i8, ptr %i.alo, i64 -4
  %wide.vec1368 = load <8 x float>, ptr %i.alq, align 4, !tbaa !13 ; 2 uses
  %strided.vec1369 = shufflevector <8 x float> %wide.vec1368, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1370 = shufflevector <8 x float> %wide.vec1368, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.alr = fadd <4 x float> %strided.vec, %strided.vec1370
  %i.als = fmul <4 x float> %i.alr, splat (float 3.000000e+00)
  %i.alt = fadd <4 x float> %strided.vec1369, %i.als
  %i.alu = fadd <4 x float> %strided.vec1367, %i.alt
  %i.alv = fmul <4 x float> %i.alu, splat (float 1.250000e-01)
  %i.alw = sext i32 %.reass1518.a to i64
  %i.alx = getelementptr [4 x i8], ptr %i.afv, i64 %i.alw ; 2 uses
  %i.aly = getelementptr i8, ptr %i.alx, i64 4
  %wide.vec1371 = load <8 x float>, ptr %i.aly, align 4, !tbaa !13 ; 2 uses
  %strided.vec1372 = shufflevector <8 x float> %wide.vec1371, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1373 = shufflevector <8 x float> %wide.vec1371, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.alz = getelementptr i8, ptr %i.alx, i64 -4
  %wide.vec1374 = load <8 x float>, ptr %i.alz, align 4, !tbaa !13 ; 2 uses
  %strided.vec1375 = shufflevector <8 x float> %wide.vec1374, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1376 = shufflevector <8 x float> %wide.vec1374, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ama = fadd <4 x float> %strided.vec1372, %strided.vec1376
  %i.amb = fmul <4 x float> %i.ama, splat (float 3.000000e+00)
  %i.amc = fadd <4 x float> %strided.vec1375, %i.amb
  %i.amd = fadd <4 x float> %strided.vec1373, %i.amc
  %i.ame = sext i32 %.reass1516.a to i64
  %i.amf = getelementptr [4 x i8], ptr %i.afv, i64 %i.ame ; 2 uses
  %i.amg = getelementptr i8, ptr %i.amf, i64 4
  %wide.vec1377 = load <8 x float>, ptr %i.amg, align 4, !tbaa !13 ; 2 uses
  %strided.vec1378 = shufflevector <8 x float> %wide.vec1377, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1379 = shufflevector <8 x float> %wide.vec1377, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.amh = getelementptr i8, ptr %i.amf, i64 -4
  %wide.vec1380 = load <8 x float>, ptr %i.amh, align 4, !tbaa !13 ; 2 uses
  %strided.vec1381 = shufflevector <8 x float> %wide.vec1380, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1382 = shufflevector <8 x float> %wide.vec1380, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ami = fadd <4 x float> %strided.vec1378, %strided.vec1382
  %i.amj = fmul <4 x float> %i.ami, splat (float 3.000000e+00)
  %i.amk = fadd <4 x float> %strided.vec1381, %i.amj
  %i.aml = fadd <4 x float> %strided.vec1379, %i.amk
  %i.amm = fadd <4 x float> %i.amd, %i.aml
  %i.amn = fmul <4 x float> %i.amm, splat (float 3.750000e-01)
  %i.amo = sext i32 %.reass to i64
  %i.amp = getelementptr [4 x i8], ptr %i.afv, i64 %i.amo ; 2 uses
  %i.amq = getelementptr i8, ptr %i.amp, i64 4
  %wide.vec1383 = load <8 x float>, ptr %i.amq, align 4, !tbaa !13 ; 2 uses
  %strided.vec1384 = shufflevector <8 x float> %wide.vec1383, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1385 = shufflevector <8 x float> %wide.vec1383, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.amr = getelementptr i8, ptr %i.amp, i64 -4
  %wide.vec1386 = load <8 x float>, ptr %i.amr, align 4, !tbaa !13 ; 2 uses
  %strided.vec1387 = shufflevector <8 x float> %wide.vec1386, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1388 = shufflevector <8 x float> %wide.vec1386, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ams = fadd <4 x float> %strided.vec1384, %strided.vec1388
  %i.amt = fmul <4 x float> %i.ams, splat (float 3.000000e+00)
  %i.amu = fadd <4 x float> %strided.vec1387, %i.amt
  %i.amv = fadd <4 x float> %strided.vec1385, %i.amu
  %i.amw = fmul <4 x float> %i.amv, splat (float 1.250000e-01)
  %i.amx = fadd <4 x float> %i.amn, %i.amw
  %i.amy = fadd <4 x float> %i.alv, %i.amx
  %i.amz = fmul <4 x float> %i.amy, splat (float 1.250000e-01)
  store <4 x float> %i.amz, ptr %next.gep, align 4, !tbaa !15
  %index.next1389 = add nuw i64 %index1366, 4     ; 2 uses
  %i.ana = icmp eq i64 %index.next1389, %n.vec1364
  br i1 %i.ana, label %middle.block1390, label %vector.body1365, !llvm.loop !17

middle.block1390:                                 ; preds = %vector.body1365
  br i1 %cmp.n1391, label %"end for f76.s0.v3.loopexit", label %"for f76.s0.v3.preheader"

"for f76.s0.v3.preheader":                        ; preds = %vector.scevcheck, %"for f76.s0.v4", %middle.block1390
  %lsr.iv476.ph = phi i32 [ %lsr.iv474, %vector.scevcheck ], [ %lsr.iv474, %"for f76.s0.v4" ], [ %i.alf, %middle.block1390 ]
  %lsr.iv472.ph = phi i32 [ %lsr.iv470, %vector.scevcheck ], [ %lsr.iv470, %"for f76.s0.v4" ], [ %i.alg, %middle.block1390 ]
  %lsr.iv468.ph = phi i32 [ %lsr.iv466, %vector.scevcheck ], [ %lsr.iv466, %"for f76.s0.v4" ], [ %i.alh, %middle.block1390 ]
  %lsr.iv464.ph = phi i32 [ %lsr.iv462, %vector.scevcheck ], [ %lsr.iv462, %"for f76.s0.v4" ], [ %i.ali, %middle.block1390 ]
  %lsr.iv459.ph = phi ptr [ %lsr.iv456, %vector.scevcheck ], [ %lsr.iv456, %"for f76.s0.v4" ], [ %i.alj, %middle.block1390 ]
  %lsr.iv453.ph = phi i32 [ %i.aiz, %vector.scevcheck ], [ %i.aiz, %"for f76.s0.v4" ], [ %i.aks, %middle.block1390 ]
  br label %"for f76.s0.v3"

"for f76.s0.v3":                                  ; preds = %"for f76.s0.v3.preheader", %"for f76.s0.v3"
  %lsr.iv476 = phi i32 [ %lsr.iv.next477, %"for f76.s0.v3" ], [ %lsr.iv476.ph, %"for f76.s0.v3.preheader" ] ; 2 uses
  %lsr.iv472 = phi i32 [ %lsr.iv.next473, %"for f76.s0.v3" ], [ %lsr.iv472.ph, %"for f76.s0.v3.preheader" ] ; 2 uses
  %lsr.iv468 = phi i32 [ %lsr.iv.next469, %"for f76.s0.v3" ], [ %lsr.iv468.ph, %"for f76.s0.v3.preheader" ] ; 2 uses
  %lsr.iv464 = phi i32 [ %lsr.iv.next465, %"for f76.s0.v3" ], [ %lsr.iv464.ph, %"for f76.s0.v3.preheader" ] ; 2 uses
  %lsr.iv459 = phi ptr [ %scevgep460, %"for f76.s0.v3" ], [ %lsr.iv459.ph, %"for f76.s0.v3.preheader" ] ; 2 uses
  %lsr.iv453 = phi i32 [ %lsr.iv.next454, %"for f76.s0.v3" ], [ %lsr.iv453.ph, %"for f76.s0.v3.preheader" ]
  %i.anb = add i32 %lsr.iv476, %i.bh
  %i.anc = add i32 %lsr.iv472, %i.bh
  %i.and = add i32 %lsr.iv468, %i.bh
  %i.ane = add i32 %lsr.iv464, %i.bh
  %i.anf = sext i32 %i.ane to i64
  %i.ang = getelementptr [4 x i8], ptr %i.afv, i64 %i.anf ; 4 uses
  %i.anh = getelementptr i8, ptr %i.ang, i64 8
  %i.ani = load float, ptr %i.anh, align 4, !tbaa !13
  %i.anj = getelementptr i8, ptr %i.ang, i64 4
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !13
  %i.anl = load float, ptr %i.ang, align 4, !tbaa !13
  %i.anm = fadd float %i.ank, %i.anl
  %i.ann = fmul float %i.anm, 3.000000e+00
  %i.ano = getelementptr i8, ptr %i.ang, i64 -4
  %i.anp = load float, ptr %i.ano, align 4, !tbaa !13
  %i.anq = fadd float %i.anp, %i.ann
  %i.anr = fadd float %i.ani, %i.anq
  %i.ans = fmul float %i.anr, 1.250000e-01
  %i.ant = sext i32 %i.and to i64
  %i.anu = getelementptr [4 x i8], ptr %i.afv, i64 %i.ant ; 4 uses
  %i.anv = getelementptr i8, ptr %i.anu, i64 8
  %i.anw = load float, ptr %i.anv, align 4, !tbaa !13
  %i.anx = getelementptr i8, ptr %i.anu, i64 4
  %i.any = load float, ptr %i.anx, align 4, !tbaa !13
  %i.anz = load float, ptr %i.anu, align 4, !tbaa !13
  %i.aoa = fadd float %i.any, %i.anz
  %i.aob = fmul float %i.aoa, 3.000000e+00
  %i.aoc = getelementptr i8, ptr %i.anu, i64 -4
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !13
  %i.aoe = fadd float %i.aod, %i.aob
  %i.aof = fadd float %i.anw, %i.aoe
  %i.aog = sext i32 %i.anc to i64
  %i.aoh = getelementptr [4 x i8], ptr %i.afv, i64 %i.aog ; 4 uses
  %i.aoi = getelementptr i8, ptr %i.aoh, i64 8
  %i.aoj = load float, ptr %i.aoi, align 4, !tbaa !13
  %i.aok = getelementptr i8, ptr %i.aoh, i64 4
  %i.aol = load float, ptr %i.aok, align 4, !tbaa !13
  %i.aom = load float, ptr %i.aoh, align 4, !tbaa !13
  %i.aon = fadd float %i.aol, %i.aom
  %i.aoo = fmul float %i.aon, 3.000000e+00
  %i.aop = getelementptr i8, ptr %i.aoh, i64 -4
  %i.aoq = load float, ptr %i.aop, align 4, !tbaa !13
  %i.aor = fadd float %i.aoq, %i.aoo
  %i.aos = fadd float %i.aoj, %i.aor
  %i.aot = fadd float %i.aof, %i.aos
  %i.aou = fmul float %i.aot, 3.750000e-01
  %i.aov = sext i32 %i.anb to i64
  %i.aow = getelementptr [4 x i8], ptr %i.afv, i64 %i.aov ; 4 uses
  %i.aox = getelementptr i8, ptr %i.aow, i64 8
  %i.aoy = load float, ptr %i.aox, align 4, !tbaa !13
  %i.aoz = getelementptr i8, ptr %i.aow, i64 4
  %i.apa = load float, ptr %i.aoz, align 4, !tbaa !13
  %i.apb = load float, ptr %i.aow, align 4, !tbaa !13
  %i.apc = fadd float %i.apa, %i.apb
  %i.apd = fmul float %i.apc, 3.000000e+00
  %i.ape = getelementptr i8, ptr %i.aow, i64 -4
  %i.apf = load float, ptr %i.ape, align 4, !tbaa !13
  %i.apg = fadd float %i.apf, %i.apd
  %i.aph = fadd float %i.aoy, %i.apg
  %i.api = fmul float %i.aph, 1.250000e-01
  %i.apj = fadd float %i.aou, %i.api
  %i.apk = fadd float %i.ans, %i.apj
  %i.apl = fmul float %i.apk, 1.250000e-01
  store float %i.apl, ptr %lsr.iv459, align 4, !tbaa !15
  %lsr.iv.next454 = add i32 %lsr.iv453, -1        ; 2 uses
  %scevgep460 = getelementptr i8, ptr %lsr.iv459, i64 4
  %lsr.iv.next465 = add i32 %lsr.iv464, 2
  %lsr.iv.next469 = add i32 %lsr.iv468, 2
  %lsr.iv.next473 = add i32 %lsr.iv472, 2
  %lsr.iv.next477 = add i32 %lsr.iv476, 2
  %.not577 = icmp eq i32 %lsr.iv.next454, 0
  br i1 %.not577, label %"end for f76.s0.v3.loopexit", label %"for f76.s0.v3", !llvm.loop !18

"end for f76.s0.v3.loopexit":                     ; preds = %"for f76.s0.v3", %middle.block1390
  %i.apm = add nsw i32 %f76.s0.v4, 1
  %i.apn = getelementptr i8, ptr %lsr.iv456, i64 %i.ajc
  %scevgep458 = getelementptr i8, ptr %i.apn, i64 4
  %lsr.iv.next463 = add i32 %lsr.iv462, %i.ajd
  %lsr.iv.next467 = add i32 %lsr.iv466, %i.ajd
  %lsr.iv.next471 = add i32 %lsr.iv470, %i.ajd
  %lsr.iv.next475 = add i32 %lsr.iv474, %i.ajd
  %.not578 = icmp eq i32 %f76.s0.v4, %b735
  %indvar.next = add i32 %indvar, 1
  br i1 %.not578, label %"consume f76", label %"for f76.s0.v4"

"consume f76":                                    ; preds = %"end for f76.s0.v3.loopexit", %"for f76.s0.v4.preheader", %"produce f76"
  %f10.v4.extent_realized.s = sub nsw i32 %i.w, %i.aa ; 2 uses
  %f10.v3.extent_realized.s = sub nsw i32 %i.af, %i.aj ; 5 uses
  %i.apo = add nsw i32 %f10.v4.extent_realized.s, 1 ; 2 uses
  %i.app = add nsw i32 %f10.v3.extent_realized.s, 1 ; 8 uses
  %f10.stride.2 = mul nsw i32 %i.apo, %i.app      ; 3 uses
  %i.apq = zext i32 %i.apo to i64                 ; 3 uses
  %i.apr = zext i32 %i.app to i64                 ; 2 uses
  %i.aps = shl nuw nsw i64 %i.apr, 2              ; 2 uses
  %i.apt = and i64 %i.aps, 4294967292
  %i.apu = mul nuw i64 %i.apt, %i.apq
  %i.apv = lshr i64 %i.apu, 32
  %i.apw = lshr i64 %i.apr, 30
  %i.apx = mul nuw nsw i64 %i.apw, %i.apq
  %t3083 = add nuw nsw i64 %i.apv, %i.apx         ; 2 uses
  %t3084 = mul i64 %i.aps, %i.apq                 ; 5 uses
  %i.apy = zext i32 %i.aej to i64                 ; 3 uses
  %i.apz = mul i64 %t3084, %i.apy                 ; 3 uses
  %i.aqa = icmp ult i64 %i.apz, 2147483648
  %i.aqb = and i64 %t3084, 4294967292
  %i.aqc = mul nuw i64 %i.aqb, %i.apy
  %i.aqd = lshr i64 %i.aqc, 32
  %i.aqe = mul i64 %t3083, %i.apy
  %i.aqf = add i64 %i.aqe, %i.aqd
  %i.aqg = or i64 %i.aqf, %t3083
  %i.aqh = icmp ult i64 %i.aqg, 4294967296
  %i.aqi = and i1 %i.aqa, %i.aqh
  br i1 %i.aqi, label %"assert succeeded174", label %"assert failed173", !prof !5

"assert failed173":                               ; preds = %"consume f76"
  %i.aqj = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.22, i64 %i.apz, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded174":                            ; preds = %"consume f76"
  %i.aqk = add nuw nsw i64 %i.apz, 4
  %i.aql = call ptr @halide_malloc(ptr null, i64 %i.aqk) ; 16 uses
  %.not579 = icmp eq ptr %i.aql, null
  br i1 %.not579, label %"assert failed175", label %"produce f10", !prof !4

"assert failed175":                               ; preds = %"assert succeeded174"
  %i.aqm = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f10":                                    ; preds = %"assert succeeded174"
  store i32 %a772, ptr %1, align 8
  %i.aqn = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %f10.stride.2, ptr %i.aqn, align 4
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %f10.v3.extent_realized.s, ptr %i.aqo, align 8
  %i.aqp = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %f10.v4.extent_realized.s, ptr %i.aqp, align 4
  %i.aqq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %f9.stride.2, ptr %i.aqq, align 8
  %i.aqr = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %f9.v3.extent_realized.s.s, ptr %i.aqr, align 4
  %i.aqs = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %f9.v3.min_realized, ptr %i.aqs, align 8
  %i.aqt = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %f9.v4.min_realized, ptr %i.aqt, align 4
  %i.aqu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %a286, ptr %i.aqu, align 8
  %i.aqv = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %a114, ptr %i.aqv, align 4
  %i.aqw = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.aql, ptr %i.aqw, align 8
  %i.aqx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr null, ptr %i.aqx, align 8
  %i.aqy = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.ahl, ptr %i.aqy, align 8
  %i.aqz = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.aqz, align 8
  %i.ara = call i32 @halide_do_par_for(ptr null, ptr nonnull @par_for___local_laplacian_f10.s0.v6, i32 %i.cs, i32 %i.aej, ptr nonnull %1) ; 2 uses
  %i.arb = icmp eq i32 %i.ara, 0
  br i1 %i.arb, label %"consume f10", label %call_destructor.exit210.thread823, !prof !5

"consume f10":                                    ; preds = %"produce f10"
  %reass.sub1006 = sub nsw i32 %b750, %b748
  %i.arc = add nsw i32 %reass.sub1006, 1
  %i.ard = zext i32 %i.arc to i64                 ; 3 uses
  %reass.sub1007 = sub nsw i32 %b753, %b751       ; 4 uses
  %i.are = add nsw i32 %reass.sub1007, 1          ; 6 uses
  %i.arf = zext i32 %i.are to i64                 ; 2 uses
  %i.arg = shl nuw nsw i64 %i.arf, 2              ; 2 uses
  %i.arh = mul i64 %i.arg, %i.ard                 ; 3 uses
  %i.ari = icmp ult i64 %i.arh, 2147483648
  %i.arj = and i64 %i.arg, 4294967292
  %i.ark = mul nuw i64 %i.arj, %i.ard
  %i.arl = lshr i64 %i.ark, 32
  %i.arm = lshr i64 %i.arf, 30
  %i.arn = mul nuw nsw i64 %i.arm, %i.ard
  %i.aro = add nuw nsw i64 %i.arl, %i.arn
  %i.arp = icmp samesign ult i64 %i.aro, 4294967296
  %i.arq = and i1 %i.ari, %i.arp
  br i1 %i.arq, label %"assert succeeded180", label %"assert failed179", !prof !5

"assert failed179":                               ; preds = %"consume f10"
  %i.arr = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.23, i64 %i.arh, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded180":                            ; preds = %"consume f10"
  %i.ars = add nuw nsw i64 %i.arh, 4
  %i.art = call ptr @halide_malloc(ptr null, i64 %i.ars) ; 16 uses
  %.not580 = icmp eq ptr %i.art, null
  br i1 %.not580, label %"assert failed181", label %"produce f77", !prof !4

"assert failed181":                               ; preds = %"assert succeeded180"
  %i.aru = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f77":                                    ; preds = %"assert succeeded180"
  %.not1083 = icmp sgt i32 %b748, %b750
  br i1 %.not1083, label %"consume f77", label %"for f77.s0.v4.preheader", !prof !4

"for f77.s0.v4.preheader":                        ; preds = %"produce f77"
  %i.arv = add nsw i32 %b753, 1
  %i.arw = sub nsw i32 %i.arv, %b751              ; 3 uses
  %i.arx = sext i32 %b753 to i64
  %i.ary = sext i32 %b751 to i64
  %reass.sub1008 = sub nsw i64 %i.arx, %i.ary
  %i.arz = shl nsw i64 %reass.sub1008, 2
  %i.asa = add nsw i32 %b739, 1
  %i.asb = sub nsw i32 %i.asa, %b737              ; 5 uses
  %i.asc = shl nsw i32 %i.asb, 1                  ; 4 uses
  %.not1084 = icmp sgt i32 %b751, %b753
  br i1 %.not1084, label %"consume f77", label %"for f77.s0.v4.preheader1021", !prof !4

"for f77.s0.v4.preheader1021":                    ; preds = %"for f77.s0.v4.preheader"
  %i.asd = or disjoint i32 %i.at, 1
  %i.ase = sub i32 %i.asd, %b733
  %i.asf = mul i32 %i.asb, %i.ase
  %i.asg = sub i32 %i.asf, %b737
  %i.ash = shl i32 %i.aih, 1
  %i.asi = xor i32 %b733, -1
  %i.asj = or disjoint i32 %i.at, 1
  %i.ask = add nsw i32 %i.at, 2
  %i.asl = sub i32 %i.ask, %b733                  ; 2 uses
  %i.asm = sub i32 %i.asj, %b733
  %i.asn = sub i32 %i.at, %b733                   ; 2 uses
  %i.aso = add i32 %i.at, %i.asi                  ; 2 uses
  %i.asp = mul i32 %i.asb, %i.aso
  %i.asq = sub i32 %i.asp, %b737
  %i.asr = mul i32 %i.asb, %i.asn
  %i.ass = sub i32 %i.asr, %b737
  %i.ast = mul i32 %i.asb, %i.asl
  %i.asu = sub i32 %i.ast, %b737
  %i.asv = mul i32 %i.asl, %i.aih
  %i.asw = mul i32 %i.aih, %i.asm
  %i.asx = mul i32 %i.aih, %i.asn
  %i.asy = mul i32 %i.aso, %i.aih
  %i.asz = insertelement <4 x i32> poison, i32 %i.asy, i64 0
  %i.ata = insertelement <4 x i32> %i.asz, i32 %i.asx, i64 1
  %i.atb = insertelement <4 x i32> %i.ata, i32 %i.asw, i64 2
  %i.atc = insertelement <4 x i32> %i.atb, i32 %i.asv, i64 3
  %i.atd = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %i.ate = shufflevector <4 x i32> %i.atd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.atf = add <4 x i32> %i.atc, %i.ate
  %i.atg = insertelement <4 x i32> poison, i32 %b737, i64 0
  %i.ath = shufflevector <4 x i32> %i.atg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ati = sub <4 x i32> %i.atf, %i.ath           ; 2 uses
  %15 = insertelement <4 x i32> poison, i32 %reass.sub1007, i64 0
  %i.atj = zext i32 %reass.sub1007 to i64
  %16 = add nuw nsw i64 %i.atj, 1                 ; 2 uses
  %min.iters.check1414 = icmp ult i32 %reass.sub1007, 7
  %i.atk = shl <4 x i32> %15, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.atl = shufflevector <4 x i32> %i.atk, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op1531.a = add <4 x i32> %i.ati, %i.atl
  %n.vec1417 = and i64 %16, 8589934588            ; 4 uses
  %i.atm = trunc i64 %n.vec1417 to i32            ; 2 uses
  %i.atn = shl i32 %i.atm, 1                      ; 4 uses
  %i.ato = shl nuw nsw i64 %n.vec1417, 2
  %i.atp = sub i32 %i.arw, %i.atm
  %cmp.n1447 = icmp eq i64 %16, %n.vec1417
  br label %"for f77.s0.v4"

"for f77.s0.v4":                                  ; preds = %"for f77.s0.v4.preheader1021", %"end for f77.s0.v3.loopexit"
  %indvar1399 = phi i32 [ 0, %"for f77.s0.v4.preheader1021" ], [ %indvar.next1400, %"end for f77.s0.v3.loopexit" ] ; 2 uses
  %lsr.iv449 = phi i32 [ %i.asq, %"for f77.s0.v4.preheader1021" ], [ %lsr.iv.next450, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv445 = phi i32 [ %i.ass, %"for f77.s0.v4.preheader1021" ], [ %lsr.iv.next446, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv441 = phi i32 [ %i.asg, %"for f77.s0.v4.preheader1021" ], [ %lsr.iv.next442, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv437 = phi i32 [ %i.asu, %"for f77.s0.v4.preheader1021" ], [ %lsr.iv.next438, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv431 = phi ptr [ %i.art, %"for f77.s0.v4.preheader1021" ], [ %scevgep433, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %f77.s0.v4 = phi i32 [ %b748, %"for f77.s0.v4.preheader1021" ], [ %i.ayj, %"end for f77.s0.v3.loopexit" ] ; 2 uses
  br i1 %min.iters.check1414, label %"for f77.s0.v3.preheader", label %vector.scevcheck1398

vector.scevcheck1398:                             ; preds = %"for f77.s0.v4"
  %i.atq = mul i32 %i.ash, %indvar1399
  %i.atr = insertelement <4 x i32> poison, i32 %i.atq, i64 0
  %i.ats = shufflevector <4 x i32> %i.atr, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.att = add <4 x i32> %i.ati, %i.ats
  %.reass1532.a = add <4 x i32> %i.ats, %invariant.op1531.a
  %i.atu = icmp slt <4 x i32> %.reass1532.a, %i.att ; 4 uses
  %i.atv = extractelement <4 x i1> %i.atu, i64 2
  %i.atw = extractelement <4 x i1> %i.atu, i64 3
  %i.atx = or i1 %i.atw, %i.atv
  %i.aty = extractelement <4 x i1> %i.atu, i64 1
  %i.atz = or i1 %i.aty, %i.atx
  %i.aua = extractelement <4 x i1> %i.atu, i64 0
  %i.aub = or i1 %i.aua, %i.atz
  br i1 %i.aub, label %"for f77.s0.v3.preheader", label %vector.ph1415

vector.ph1415:                                    ; preds = %vector.scevcheck1398
  %i.auc = add i32 %lsr.iv449, %i.atn
  %i.aud = add i32 %lsr.iv445, %i.atn
  %i.aue = add i32 %lsr.iv441, %i.atn
  %i.auf = add i32 %lsr.iv437, %i.atn
  %i.aug = getelementptr i8, ptr %lsr.iv431, i64 %i.ato
  %invariant.op1523.a = add i32 %lsr.iv449, %i.ax
  %invariant.op1525.a = add i32 %lsr.iv445, %i.ax
  %invariant.op1527.a = add i32 %lsr.iv441, %i.ax
  %invariant.op1529 = add i32 %lsr.iv437, %i.ax
  br label %vector.body1418

vector.body1418:                                  ; preds = %vector.body1418, %vector.ph1415
  %index1419 = phi i64 [ 0, %vector.ph1415 ], [ %index.next1445, %vector.body1418 ] ; 3 uses
  %i.auh = trunc i64 %index1419 to i32
  %i.aui = shl i32 %i.auh, 1                      ; 4 uses
  %i.auj = shl i64 %index1419, 2
  %next.gep1420 = getelementptr i8, ptr %lsr.iv431, i64 %i.auj
  %.reass1524.a = add i32 %i.aui, %invariant.op1523.a
  %.reass1526.a = add i32 %i.aui, %invariant.op1525.a
  %.reass1528.a = add i32 %i.aui, %invariant.op1527.a
  %.reass1530 = add i32 %i.aui, %invariant.op1529
  %i.auk = sext i32 %.reass1530 to i64
  %i.aul = getelementptr [4 x i8], ptr %i.aiw, i64 %i.auk ; 2 uses
  %i.aum = getelementptr i8, ptr %i.aul, i64 4
  %wide.vec1421 = load <8 x float>, ptr %i.aum, align 4, !tbaa !15 ; 2 uses
  %strided.vec1422 = shufflevector <8 x float> %wide.vec1421, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1423 = shufflevector <8 x float> %wide.vec1421, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aun = getelementptr i8, ptr %i.aul, i64 -4
  %wide.vec1424 = load <8 x float>, ptr %i.aun, align 4, !tbaa !15 ; 2 uses
  %strided.vec1425 = shufflevector <8 x float> %wide.vec1424, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1426 = shufflevector <8 x float> %wide.vec1424, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.auo = fadd <4 x float> %strided.vec1422, %strided.vec1426
  %i.aup = fmul <4 x float> %i.auo, splat (float 3.000000e+00)
  %i.auq = fadd <4 x float> %strided.vec1425, %i.aup
  %i.aur = fadd <4 x float> %strided.vec1423, %i.auq
  %i.aus = fmul <4 x float> %i.aur, splat (float 1.250000e-01)
  %i.aut = sext i32 %.reass1528.a to i64
  %i.auu = getelementptr [4 x i8], ptr %i.aiw, i64 %i.aut ; 2 uses
  %i.auv = getelementptr i8, ptr %i.auu, i64 4
  %wide.vec1427 = load <8 x float>, ptr %i.auv, align 4, !tbaa !15 ; 2 uses
  %strided.vec1428 = shufflevector <8 x float> %wide.vec1427, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1429 = shufflevector <8 x float> %wide.vec1427, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.auw = getelementptr i8, ptr %i.auu, i64 -4
  %wide.vec1430 = load <8 x float>, ptr %i.auw, align 4, !tbaa !15 ; 2 uses
  %strided.vec1431 = shufflevector <8 x float> %wide.vec1430, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1432 = shufflevector <8 x float> %wide.vec1430, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aux = fadd <4 x float> %strided.vec1428, %strided.vec1432
  %i.auy = fmul <4 x float> %i.aux, splat (float 3.000000e+00)
  %i.auz = fadd <4 x float> %strided.vec1431, %i.auy
  %i.ava = fadd <4 x float> %strided.vec1429, %i.auz
  %i.avb = sext i32 %.reass1526.a to i64
  %i.avc = getelementptr [4 x i8], ptr %i.aiw, i64 %i.avb ; 2 uses
  %i.avd = getelementptr i8, ptr %i.avc, i64 4
  %wide.vec1433 = load <8 x float>, ptr %i.avd, align 4, !tbaa !15 ; 2 uses
  %strided.vec1434 = shufflevector <8 x float> %wide.vec1433, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1435 = shufflevector <8 x float> %wide.vec1433, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ave = getelementptr i8, ptr %i.avc, i64 -4
  %wide.vec1436 = load <8 x float>, ptr %i.ave, align 4, !tbaa !15 ; 2 uses
  %strided.vec1437 = shufflevector <8 x float> %wide.vec1436, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1438 = shufflevector <8 x float> %wide.vec1436, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.avf = fadd <4 x float> %strided.vec1434, %strided.vec1438
  %i.avg = fmul <4 x float> %i.avf, splat (float 3.000000e+00)
  %i.avh = fadd <4 x float> %strided.vec1437, %i.avg
  %i.avi = fadd <4 x float> %strided.vec1435, %i.avh
  %i.avj = fadd <4 x float> %i.ava, %i.avi
  %i.avk = fmul <4 x float> %i.avj, splat (float 3.750000e-01)
  %i.avl = sext i32 %.reass1524.a to i64
  %i.avm = getelementptr [4 x i8], ptr %i.aiw, i64 %i.avl ; 2 uses
  %i.avn = getelementptr i8, ptr %i.avm, i64 4
  %wide.vec1439 = load <8 x float>, ptr %i.avn, align 4, !tbaa !15 ; 2 uses
  %strided.vec1440 = shufflevector <8 x float> %wide.vec1439, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1441 = shufflevector <8 x float> %wide.vec1439, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.avo = getelementptr i8, ptr %i.avm, i64 -4
  %wide.vec1442 = load <8 x float>, ptr %i.avo, align 4, !tbaa !15 ; 2 uses
  %strided.vec1443 = shufflevector <8 x float> %wide.vec1442, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1444 = shufflevector <8 x float> %wide.vec1442, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.avp = fadd <4 x float> %strided.vec1440, %strided.vec1444
  %i.avq = fmul <4 x float> %i.avp, splat (float 3.000000e+00)
  %i.avr = fadd <4 x float> %strided.vec1443, %i.avq
  %i.avs = fadd <4 x float> %strided.vec1441, %i.avr
  %i.avt = fmul <4 x float> %i.avs, splat (float 1.250000e-01)
  %i.avu = fadd <4 x float> %i.avk, %i.avt
  %i.avv = fadd <4 x float> %i.aus, %i.avu
  %i.avw = fmul <4 x float> %i.avv, splat (float 1.250000e-01)
  store <4 x float> %i.avw, ptr %next.gep1420, align 4, !tbaa !19
  %index.next1445 = add nuw i64 %index1419, 4     ; 2 uses
  %i.avx = icmp eq i64 %index.next1445, %n.vec1417
  br i1 %i.avx, label %middle.block1446, label %vector.body1418, !llvm.loop !21

middle.block1446:                                 ; preds = %vector.body1418
  br i1 %cmp.n1447, label %"end for f77.s0.v3.loopexit", label %"for f77.s0.v3.preheader"

"for f77.s0.v3.preheader":                        ; preds = %vector.scevcheck1398, %"for f77.s0.v4", %middle.block1446
  %lsr.iv451.ph = phi i32 [ %lsr.iv449, %vector.scevcheck1398 ], [ %lsr.iv449, %"for f77.s0.v4" ], [ %i.auc, %middle.block1446 ]
  %lsr.iv447.ph = phi i32 [ %lsr.iv445, %vector.scevcheck1398 ], [ %lsr.iv445, %"for f77.s0.v4" ], [ %i.aud, %middle.block1446 ]
  %lsr.iv443.ph = phi i32 [ %lsr.iv441, %vector.scevcheck1398 ], [ %lsr.iv441, %"for f77.s0.v4" ], [ %i.aue, %middle.block1446 ]
  %lsr.iv439.ph = phi i32 [ %lsr.iv437, %vector.scevcheck1398 ], [ %lsr.iv437, %"for f77.s0.v4" ], [ %i.auf, %middle.block1446 ]
  %lsr.iv434.ph = phi ptr [ %lsr.iv431, %vector.scevcheck1398 ], [ %lsr.iv431, %"for f77.s0.v4" ], [ %i.aug, %middle.block1446 ]
  %lsr.iv428.ph = phi i32 [ %i.arw, %vector.scevcheck1398 ], [ %i.arw, %"for f77.s0.v4" ], [ %i.atp, %middle.block1446 ]
  br label %"for f77.s0.v3"

"for f77.s0.v3":                                  ; preds = %"for f77.s0.v3.preheader", %"for f77.s0.v3"
  %lsr.iv451 = phi i32 [ %lsr.iv.next452, %"for f77.s0.v3" ], [ %lsr.iv451.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv447 = phi i32 [ %lsr.iv.next448, %"for f77.s0.v3" ], [ %lsr.iv447.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv443 = phi i32 [ %lsr.iv.next444, %"for f77.s0.v3" ], [ %lsr.iv443.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv439 = phi i32 [ %lsr.iv.next440, %"for f77.s0.v3" ], [ %lsr.iv439.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv434 = phi ptr [ %scevgep435, %"for f77.s0.v3" ], [ %lsr.iv434.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv428 = phi i32 [ %lsr.iv.next429, %"for f77.s0.v3" ], [ %lsr.iv428.ph, %"for f77.s0.v3.preheader" ]
  %i.avy = add i32 %lsr.iv451, %i.ax
  %i.avz = add i32 %lsr.iv447, %i.ax
  %i.awa = add i32 %lsr.iv443, %i.ax
  %i.awb = add i32 %lsr.iv439, %i.ax
  %i.awc = sext i32 %i.awb to i64
  %i.awd = getelementptr [4 x i8], ptr %i.aiw, i64 %i.awc ; 4 uses
  %i.awe = getelementptr i8, ptr %i.awd, i64 8
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !15
  %i.awg = getelementptr i8, ptr %i.awd, i64 4
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !15
  %i.awi = load float, ptr %i.awd, align 4, !tbaa !15
  %i.awj = fadd float %i.awh, %i.awi
  %i.awk = fmul float %i.awj, 3.000000e+00
  %i.awl = getelementptr i8, ptr %i.awd, i64 -4
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !15
  %i.awn = fadd float %i.awm, %i.awk
  %i.awo = fadd float %i.awf, %i.awn
  %i.awp = fmul float %i.awo, 1.250000e-01
  %i.awq = sext i32 %i.awa to i64
  %i.awr = getelementptr [4 x i8], ptr %i.aiw, i64 %i.awq ; 4 uses
  %i.aws = getelementptr i8, ptr %i.awr, i64 8
  %i.awt = load float, ptr %i.aws, align 4, !tbaa !15
  %i.awu = getelementptr i8, ptr %i.awr, i64 4
  %i.awv = load float, ptr %i.awu, align 4, !tbaa !15
  %i.aww = load float, ptr %i.awr, align 4, !tbaa !15
  %i.awx = fadd float %i.awv, %i.aww
  %i.awy = fmul float %i.awx, 3.000000e+00
  %i.awz = getelementptr i8, ptr %i.awr, i64 -4
  %i.axa = load float, ptr %i.awz, align 4, !tbaa !15
  %i.axb = fadd float %i.axa, %i.awy
  %i.axc = fadd float %i.awt, %i.axb
  %i.axd = sext i32 %i.avz to i64
  %i.axe = getelementptr [4 x i8], ptr %i.aiw, i64 %i.axd ; 4 uses
  %i.axf = getelementptr i8, ptr %i.axe, i64 8
  %i.axg = load float, ptr %i.axf, align 4, !tbaa !15
  %i.axh = getelementptr i8, ptr %i.axe, i64 4
  %i.axi = load float, ptr %i.axh, align 4, !tbaa !15
  %i.axj = load float, ptr %i.axe, align 4, !tbaa !15
  %i.axk = fadd float %i.axi, %i.axj
  %i.axl = fmul float %i.axk, 3.000000e+00
  %i.axm = getelementptr i8, ptr %i.axe, i64 -4
  %i.axn = load float, ptr %i.axm, align 4, !tbaa !15
  %i.axo = fadd float %i.axn, %i.axl
  %i.axp = fadd float %i.axg, %i.axo
  %i.axq = fadd float %i.axc, %i.axp
  %i.axr = fmul float %i.axq, 3.750000e-01
  %i.axs = sext i32 %i.avy to i64
  %i.axt = getelementptr [4 x i8], ptr %i.aiw, i64 %i.axs ; 4 uses
  %i.axu = getelementptr i8, ptr %i.axt, i64 8
  %i.axv = load float, ptr %i.axu, align 4, !tbaa !15
  %i.axw = getelementptr i8, ptr %i.axt, i64 4
  %i.axx = load float, ptr %i.axw, align 4, !tbaa !15
  %i.axy = load float, ptr %i.axt, align 4, !tbaa !15
  %i.axz = fadd float %i.axx, %i.axy
  %i.aya = fmul float %i.axz, 3.000000e+00
  %i.ayb = getelementptr i8, ptr %i.axt, i64 -4
  %i.ayc = load float, ptr %i.ayb, align 4, !tbaa !15
  %i.ayd = fadd float %i.ayc, %i.aya
  %i.aye = fadd float %i.axv, %i.ayd
  %i.ayf = fmul float %i.aye, 1.250000e-01
  %i.ayg = fadd float %i.axr, %i.ayf
  %i.ayh = fadd float %i.awp, %i.ayg
  %i.ayi = fmul float %i.ayh, 1.250000e-01
  store float %i.ayi, ptr %lsr.iv434, align 4, !tbaa !19
  %lsr.iv.next429 = add i32 %lsr.iv428, -1        ; 2 uses
  %scevgep435 = getelementptr i8, ptr %lsr.iv434, i64 4
  %lsr.iv.next440 = add i32 %lsr.iv439, 2
  %lsr.iv.next444 = add i32 %lsr.iv443, 2
  %lsr.iv.next448 = add i32 %lsr.iv447, 2
  %lsr.iv.next452 = add i32 %lsr.iv451, 2
  %.not581 = icmp eq i32 %lsr.iv.next429, 0
  br i1 %.not581, label %"end for f77.s0.v3.loopexit", label %"for f77.s0.v3", !llvm.loop !22

"end for f77.s0.v3.loopexit":                     ; preds = %"for f77.s0.v3", %middle.block1446
  %i.ayj = add nsw i32 %f77.s0.v4, 1
  %i.ayk = getelementptr i8, ptr %lsr.iv431, i64 %i.arz
  %scevgep433 = getelementptr i8, ptr %i.ayk, i64 4
  %lsr.iv.next438 = add i32 %lsr.iv437, %i.asc
  %lsr.iv.next442 = add i32 %lsr.iv441, %i.asc
  %lsr.iv.next446 = add i32 %lsr.iv445, %i.asc
  %lsr.iv.next450 = add i32 %lsr.iv449, %i.asc
  %.not582 = icmp eq i32 %f77.s0.v4, %b750
  %indvar.next1400 = add i32 %indvar1399, 1
  br i1 %.not582, label %"consume f77", label %"for f77.s0.v4"

"consume f77":                                    ; preds = %"end for f77.s0.v3.loopexit", %"for f77.s0.v4.preheader", %"produce f77"
  %i.ayl = icmp ult i64 %t3084, 2147483648
  br i1 %i.ayl, label %"assert succeeded184", label %"assert failed183", !prof !5

"assert failed183":                               ; preds = %"consume f77"
  %i.aym = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.24, i64 %t3084, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded184":                            ; preds = %"consume f77"
  %i.ayn = add nuw nsw i64 %t3084, 4              ; 3 uses
  %i.ayo = call ptr @halide_malloc(ptr null, i64 %i.ayn) ; 5 uses
  %.not583 = icmp eq ptr %i.ayo, null
  br i1 %.not583, label %"assert failed185", label %"produce f78", !prof !4

"assert failed185":                               ; preds = %"assert succeeded184"
  %i.ayp = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f78":                                    ; preds = %"assert succeeded184"
  %i.ayq = add nsw i32 %i.w, 1                    ; 2 uses
  %.not584 = icmp sgt i32 %i.aa, %i.w
  br i1 %.not584, label %"assert succeeded188.thread", label %"for f78.s0.v4.preheader", !prof !4

"for f78.s0.v4.preheader":                        ; preds = %"produce f78"
  %i.ayr = sext i32 %i.app to i64                 ; 2 uses
  %i.ays = sext i32 %i.aa to i64                  ; 4 uses
  %i.ayt = add nsw i32 %b753, 1
  %i.ayu = sub nsw i32 %i.ayt, %b751              ; 5 uses
  %i.ayv = shl nsw i32 %i.ayu, 1                  ; 4 uses
  %.not585 = icmp sgt i32 %i.aj, %i.af            ; 2 uses
  %i.ayw = sext i32 %i.aj to i64                  ; 7 uses
  br i1 %.not585, label %"assert succeeded188.split", label %"for f78.s0.v4.preheader1020", !prof !4

"for f78.s0.v4.preheader1020":                    ; preds = %"for f78.s0.v4.preheader"
  %i.ayx = or disjoint i32 %i.ab, 1
  %i.ayy = sub i32 %i.ayx, %b748
  %i.ayz = mul i32 %i.ayu, %i.ayy
  %i.aza = sub i32 %i.ayz, %b751
  %i.azb = shl i32 %i.are, 1
  %i.azc = xor i32 %b748, -1
  %i.azd = or disjoint i32 %i.ab, 1
  %i.aze = add nsw i32 %i.ab, 2
  %i.azf = sub i32 %i.aze, %b748                  ; 2 uses
  %i.azg = sub i32 %i.azd, %b748
  %i.azh = sub i32 %i.ab, %b748                   ; 2 uses
  %i.azi = add i32 %i.ab, %i.azc                  ; 2 uses
  %i.azj = mul i32 %i.ayu, %i.azi
  %i.azk = sub i32 %i.azj, %b751
  %i.azl = mul i32 %i.ayu, %i.azh
  %i.azm = sub i32 %i.azl, %b751
  %i.azn = mul i32 %i.ayu, %i.azf
  %i.azo = sub i32 %i.azn, %b751
  %i.azp = mul i32 %i.azf, %i.are
  %i.azq = mul i32 %i.are, %i.azg
  %i.azr = mul i32 %i.are, %i.azh
  %i.azs = mul i32 %i.azi, %i.are
  %i.azt = insertelement <4 x i32> poison, i32 %i.azs, i64 0
  %i.azu = insertelement <4 x i32> %i.azt, i32 %i.azr, i64 1
  %i.azv = insertelement <4 x i32> %i.azu, i32 %i.azq, i64 2
  %i.azw = insertelement <4 x i32> %i.azv, i32 %i.azp, i64 3
  %i.azx = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.azy = shufflevector <4 x i32> %i.azx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.azz = add <4 x i32> %i.azw, %i.azy
  %i.baa = insertelement <4 x i32> poison, i32 %b751, i64 0
  %i.bab = shufflevector <4 x i32> %i.baa, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bac = sub <4 x i32> %i.azz, %i.bab           ; 2 uses
  %17 = insertelement <4 x i32> poison, i32 %f10.v3.extent_realized.s, i64 0
  %i.bad = zext i32 %f10.v3.extent_realized.s to i64
  %18 = add nuw nsw i64 %i.bad, 1                 ; 2 uses
  %min.iters.check1470 = icmp ult i32 %f10.v3.extent_realized.s, 7
  %i.bae = shl nsw <4 x i32> %17, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.baf = shufflevector <4 x i32> %i.bae, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op1543 = add <4 x i32> %i.bac, %i.baf
  %n.vec1473 = and i64 %18, 8589934588            ; 4 uses
  %i.bag = trunc i64 %n.vec1473 to i32            ; 2 uses
  %i.bah = shl i32 %i.bag, 1                      ; 4 uses
  %i.bai = add nsw i64 %n.vec1473, %i.ayw
  %i.baj = sub i32 %i.app, %i.bag
  %cmp.n1502 = icmp eq i64 %18, %n.vec1473
  br label %"for f78.s0.v4"

"for f78.s0.v4":                                  ; preds = %"for f78.s0.v4.preheader1020", %"end for f78.s0.v3.loopexit"
  %indvar1455 = phi i32 [ 0, %"for f78.s0.v4.preheader1020" ], [ %indvar.next1456, %"end for f78.s0.v3.loopexit" ] ; 2 uses
  %lsr.iv422 = phi i32 [ %i.azk, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next423, %"end for f78.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv418 = phi i32 [ %i.azm, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next419, %"end for f78.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv414 = phi i32 [ %i.aza, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next415, %"end for f78.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv410 = phi i32 [ %i.azo, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next411, %"end for f78.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv406 = phi i64 [ %i.ays, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next407, %"end for f78.s0.v3.loopexit" ] ; 2 uses
  %i.bak = sub nsw i64 %lsr.iv406, %i.ays
  %i.bal = mul i64 %i.bak, %i.ayr
  %i.bam = sub i64 %i.bal, %i.ayw
  %invariant.gep = getelementptr [4 x i8], ptr %i.ayo, i64 %i.bam ; 2 uses
  br i1 %min.iters.check1470, label %"for f78.s0.v3.preheader", label %vector.scevcheck1454

vector.scevcheck1454:                             ; preds = %"for f78.s0.v4"
  %i.ban = mul i32 %i.azb, %indvar1455
  %i.bao = insertelement <4 x i32> poison, i32 %i.ban, i64 0
  %i.bap = shufflevector <4 x i32> %i.bao, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.baq = add <4 x i32> %i.bac, %i.bap
  %.reass1544 = add <4 x i32> %i.bap, %invariant.op1543
  %i.bar = icmp slt <4 x i32> %.reass1544, %i.baq ; 4 uses
  %i.bas = extractelement <4 x i1> %i.bar, i64 2
  %i.bat = extractelement <4 x i1> %i.bar, i64 3
  %i.bau = or i1 %i.bat, %i.bas
  %i.bav = extractelement <4 x i1> %i.bar, i64 1
  %i.baw = or i1 %i.bav, %i.bau
  %i.bax = extractelement <4 x i1> %i.bar, i64 0
  %i.bay = or i1 %i.bax, %i.baw
  br i1 %i.bay, label %"for f78.s0.v3.preheader", label %vector.ph1471

vector.ph1471:                                    ; preds = %vector.scevcheck1454
  %i.baz = add i32 %lsr.iv422, %i.bah
  %i.bba = add i32 %lsr.iv418, %i.bah
  %i.bbb = add i32 %lsr.iv414, %i.bah
  %i.bbc = add i32 %lsr.iv410, %i.bah
  %invariant.op1533.a = add i32 %lsr.iv422, %i.ak
  %invariant.op1535.a = add i32 %lsr.iv418, %i.ak
  %invariant.op1537.a = add i32 %lsr.iv414, %i.ak
  %invariant.op1539 = add i32 %lsr.iv410, %i.ak
  %invariant.gep1541 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ayw
  br label %vector.body1474

vector.body1474:                                  ; preds = %vector.body1474, %vector.ph1471
  %index1475 = phi i64 [ 0, %vector.ph1471 ], [ %index.next1500, %vector.body1474 ] ; 3 uses
  %i.bbd = trunc i64 %index1475 to i32
  %i.bbe = shl i32 %i.bbd, 1                      ; 4 uses
  %.reass1534.a = add i32 %i.bbe, %invariant.op1533.a
  %.reass1536.a = add i32 %i.bbe, %invariant.op1535.a
  %.reass1538.a = add i32 %i.bbe, %invariant.op1537.a
  %.reass1540 = add i32 %i.bbe, %invariant.op1539
  %i.bbf = sext i32 %.reass1540 to i64
  %i.bbg = getelementptr [4 x i8], ptr %i.art, i64 %i.bbf ; 2 uses
  %i.bbh = getelementptr i8, ptr %i.bbg, i64 4
  %wide.vec1476 = load <8 x float>, ptr %i.bbh, align 4, !tbaa !19 ; 2 uses
  %strided.vec1477 = shufflevector <8 x float> %wide.vec1476, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1478 = shufflevector <8 x float> %wide.vec1476, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbi = getelementptr i8, ptr %i.bbg, i64 -4
  %wide.vec1479 = load <8 x float>, ptr %i.bbi, align 4, !tbaa !19 ; 2 uses
  %strided.vec1480 = shufflevector <8 x float> %wide.vec1479, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1481 = shufflevector <8 x float> %wide.vec1479, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbj = fadd <4 x float> %strided.vec1477, %strided.vec1481
  %i.bbk = fmul <4 x float> %i.bbj, splat (float 3.000000e+00)
  %i.bbl = fadd <4 x float> %strided.vec1480, %i.bbk
  %i.bbm = fadd <4 x float> %strided.vec1478, %i.bbl
  %i.bbn = fmul <4 x float> %i.bbm, splat (float 1.250000e-01)
  %i.bbo = sext i32 %.reass1538.a to i64
  %i.bbp = getelementptr [4 x i8], ptr %i.art, i64 %i.bbo ; 2 uses
  %i.bbq = getelementptr i8, ptr %i.bbp, i64 4
  %wide.vec1482 = load <8 x float>, ptr %i.bbq, align 4, !tbaa !19 ; 2 uses
  %strided.vec1483 = shufflevector <8 x float> %wide.vec1482, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1484 = shufflevector <8 x float> %wide.vec1482, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbr = getelementptr i8, ptr %i.bbp, i64 -4
  %wide.vec1485 = load <8 x float>, ptr %i.bbr, align 4, !tbaa !19 ; 2 uses
  %strided.vec1486 = shufflevector <8 x float> %wide.vec1485, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1487 = shufflevector <8 x float> %wide.vec1485, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbs = fadd <4 x float> %strided.vec1483, %strided.vec1487
  %i.bbt = fmul <4 x float> %i.bbs, splat (float 3.000000e+00)
  %i.bbu = fadd <4 x float> %strided.vec1486, %i.bbt
  %i.bbv = fadd <4 x float> %strided.vec1484, %i.bbu
  %i.bbw = sext i32 %.reass1536.a to i64
  %i.bbx = getelementptr [4 x i8], ptr %i.art, i64 %i.bbw ; 2 uses
  %i.bby = getelementptr i8, ptr %i.bbx, i64 4
  %wide.vec1488 = load <8 x float>, ptr %i.bby, align 4, !tbaa !19 ; 2 uses
  %strided.vec1489 = shufflevector <8 x float> %wide.vec1488, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1490 = shufflevector <8 x float> %wide.vec1488, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbz = getelementptr i8, ptr %i.bbx, i64 -4
  %wide.vec1491 = load <8 x float>, ptr %i.bbz, align 4, !tbaa !19 ; 2 uses
  %strided.vec1492 = shufflevector <8 x float> %wide.vec1491, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1493 = shufflevector <8 x float> %wide.vec1491, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bca = fadd <4 x float> %strided.vec1489, %strided.vec1493
  %i.bcb = fmul <4 x float> %i.bca, splat (float 3.000000e+00)
  %i.bcc = fadd <4 x float> %strided.vec1492, %i.bcb
  %i.bcd = fadd <4 x float> %strided.vec1490, %i.bcc
  %i.bce = fadd <4 x float> %i.bbv, %i.bcd
  %i.bcf = fmul <4 x float> %i.bce, splat (float 3.750000e-01)
  %i.bcg = sext i32 %.reass1534.a to i64
  %i.bch = getelementptr [4 x i8], ptr %i.art, i64 %i.bcg ; 2 uses
  %i.bci = getelementptr i8, ptr %i.bch, i64 4
  %wide.vec1494 = load <8 x float>, ptr %i.bci, align 4, !tbaa !19 ; 2 uses
  %strided.vec1495 = shufflevector <8 x float> %wide.vec1494, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1496 = shufflevector <8 x float> %wide.vec1494, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bcj = getelementptr i8, ptr %i.bch, i64 -4
  %wide.vec1497 = load <8 x float>, ptr %i.bcj, align 4, !tbaa !19 ; 2 uses
  %strided.vec1498 = shufflevector <8 x float> %wide.vec1497, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1499 = shufflevector <8 x float> %wide.vec1497, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bck = fadd <4 x float> %strided.vec1495, %strided.vec1499
  %i.bcl = fmul <4 x float> %i.bck, splat (float 3.000000e+00)
  %i.bcm = fadd <4 x float> %strided.vec1498, %i.bcl
  %i.bcn = fadd <4 x float> %strided.vec1496, %i.bcm
  %i.bco = fmul <4 x float> %i.bcn, splat (float 1.250000e-01)
  %i.bcp = fadd <4 x float> %i.bcf, %i.bco
  %i.bcq = fadd <4 x float> %i.bbn, %i.bcp
  %i.bcr = fmul <4 x float> %i.bcq, splat (float 1.250000e-01)
  %gep1542 = getelementptr [4 x i8], ptr %invariant.gep1541, i64 %index1475
  store <4 x float> %i.bcr, ptr %gep1542, align 4, !tbaa !23
  %index.next1500 = add nuw i64 %index1475, 4     ; 2 uses
  %i.bcs = icmp eq i64 %index.next1500, %n.vec1473
  br i1 %i.bcs, label %middle.block1501, label %vector.body1474, !llvm.loop !25

middle.block1501:                                 ; preds = %vector.body1474
  br i1 %cmp.n1502, label %"end for f78.s0.v3.loopexit", label %"for f78.s0.v3.preheader"

"for f78.s0.v3.preheader":                        ; preds = %vector.scevcheck1454, %"for f78.s0.v4", %middle.block1501
  %lsr.iv424.ph = phi i32 [ %lsr.iv422, %vector.scevcheck1454 ], [ %lsr.iv422, %"for f78.s0.v4" ], [ %i.baz, %middle.block1501 ]
  %lsr.iv420.ph = phi i32 [ %lsr.iv418, %vector.scevcheck1454 ], [ %lsr.iv418, %"for f78.s0.v4" ], [ %i.bba, %middle.block1501 ]
  %lsr.iv416.ph = phi i32 [ %lsr.iv414, %vector.scevcheck1454 ], [ %lsr.iv414, %"for f78.s0.v4" ], [ %i.bbb, %middle.block1501 ]
  %lsr.iv412.ph = phi i32 [ %lsr.iv410, %vector.scevcheck1454 ], [ %lsr.iv410, %"for f78.s0.v4" ], [ %i.bbc, %middle.block1501 ]
  %lsr.iv408.ph = phi i64 [ %i.ayw, %vector.scevcheck1454 ], [ %i.ayw, %"for f78.s0.v4" ], [ %i.bai, %middle.block1501 ]
  %lsr.iv404.ph = phi i32 [ %i.app, %vector.scevcheck1454 ], [ %i.app, %"for f78.s0.v4" ], [ %i.baj, %middle.block1501 ]
  br label %"for f78.s0.v3"

"for f78.s0.v3":                                  ; preds = %"for f78.s0.v3.preheader", %"for f78.s0.v3"
  %lsr.iv424 = phi i32 [ %lsr.iv.next425, %"for f78.s0.v3" ], [ %lsr.iv424.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv420 = phi i32 [ %lsr.iv.next421, %"for f78.s0.v3" ], [ %lsr.iv420.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv416 = phi i32 [ %lsr.iv.next417, %"for f78.s0.v3" ], [ %lsr.iv416.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv412 = phi i32 [ %lsr.iv.next413, %"for f78.s0.v3" ], [ %lsr.iv412.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv408 = phi i64 [ %lsr.iv.next409, %"for f78.s0.v3" ], [ %lsr.iv408.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv404 = phi i32 [ %lsr.iv.next405, %"for f78.s0.v3" ], [ %lsr.iv404.ph, %"for f78.s0.v3.preheader" ]
  %i.bct = add i32 %lsr.iv424, %i.ak
  %i.bcu = add i32 %lsr.iv420, %i.ak
  %i.bcv = add i32 %lsr.iv416, %i.ak
  %i.bcw = add i32 %lsr.iv412, %i.ak
  %i.bcx = sext i32 %i.bcw to i64
  %i.bcy = getelementptr [4 x i8], ptr %i.art, i64 %i.bcx ; 4 uses
  %i.bcz = getelementptr i8, ptr %i.bcy, i64 8
  %i.bda = load float, ptr %i.bcz, align 4, !tbaa !19
  %i.bdb = getelementptr i8, ptr %i.bcy, i64 4
  %i.bdc = load float, ptr %i.bdb, align 4, !tbaa !19
  %i.bdd = load float, ptr %i.bcy, align 4, !tbaa !19
  %i.bde = fadd float %i.bdc, %i.bdd
  %i.bdf = fmul float %i.bde, 3.000000e+00
  %i.bdg = getelementptr i8, ptr %i.bcy, i64 -4
  %i.bdh = load float, ptr %i.bdg, align 4, !tbaa !19
  %i.bdi = fadd float %i.bdh, %i.bdf
  %i.bdj = fadd float %i.bda, %i.bdi
  %i.bdk = fmul float %i.bdj, 1.250000e-01
  %i.bdl = sext i32 %i.bcv to i64
  %i.bdm = getelementptr [4 x i8], ptr %i.art, i64 %i.bdl ; 4 uses
  %i.bdn = getelementptr i8, ptr %i.bdm, i64 8
  %i.bdo = load float, ptr %i.bdn, align 4, !tbaa !19
  %i.bdp = getelementptr i8, ptr %i.bdm, i64 4
  %i.bdq = load float, ptr %i.bdp, align 4, !tbaa !19
  %i.bdr = load float, ptr %i.bdm, align 4, !tbaa !19
  %i.bds = fadd float %i.bdq, %i.bdr
  %i.bdt = fmul float %i.bds, 3.000000e+00
  %i.bdu = getelementptr i8, ptr %i.bdm, i64 -4
  %i.bdv = load float, ptr %i.bdu, align 4, !tbaa !19
  %i.bdw = fadd float %i.bdv, %i.bdt
  %i.bdx = fadd float %i.bdo, %i.bdw
  %i.bdy = sext i32 %i.bcu to i64
  %i.bdz = getelementptr [4 x i8], ptr %i.art, i64 %i.bdy ; 4 uses
  %i.bea = getelementptr i8, ptr %i.bdz, i64 8
  %i.beb = load float, ptr %i.bea, align 4, !tbaa !19
  %i.bec = getelementptr i8, ptr %i.bdz, i64 4
  %i.bed = load float, ptr %i.bec, align 4, !tbaa !19
  %i.bee = load float, ptr %i.bdz, align 4, !tbaa !19
  %i.bef = fadd float %i.bed, %i.bee
  %i.beg = fmul float %i.bef, 3.000000e+00
  %i.beh = getelementptr i8, ptr %i.bdz, i64 -4
  %i.bei = load float, ptr %i.beh, align 4, !tbaa !19
  %i.bej = fadd float %i.bei, %i.beg
  %i.bek = fadd float %i.beb, %i.bej
  %i.bel = fadd float %i.bdx, %i.bek
  %i.bem = fmul float %i.bel, 3.750000e-01
  %i.ben = sext i32 %i.bct to i64
  %i.beo = getelementptr [4 x i8], ptr %i.art, i64 %i.ben ; 4 uses
  %i.bep = getelementptr i8, ptr %i.beo, i64 8
  %i.beq = load float, ptr %i.bep, align 4, !tbaa !19
  %i.ber = getelementptr i8, ptr %i.beo, i64 4
  %i.bes = load float, ptr %i.ber, align 4, !tbaa !19
  %i.bet = load float, ptr %i.beo, align 4, !tbaa !19
  %i.beu = fadd float %i.bes, %i.bet
  %i.bev = fmul float %i.beu, 3.000000e+00
  %i.bew = getelementptr i8, ptr %i.beo, i64 -4
  %i.bex = load float, ptr %i.bew, align 4, !tbaa !19
  %i.bey = fadd float %i.bex, %i.bev
  %i.bez = fadd float %i.beq, %i.bey
  %i.bfa = fmul float %i.bez, 1.250000e-01
  %i.bfb = fadd float %i.bem, %i.bfa
end_hunk_0
begin_hunk_1_@par_for___local_laplacian_f74.s0.v4.v4:"for f74.s0.v4.v326.preheader"
  %i.fz = getelementptr i8, ptr %gep, i64 -64
  %i.ga = load <8 x float>, ptr %i.fz, align 4, !tbaa !51
  %i.gb = getelementptr i8, ptr %gep, i64 -32
  %i.gc = load <8 x float>, ptr %i.gb, align 4, !tbaa !51
  %i.gd = shufflevector <8 x float> %i.ga, <8 x float> %i.gc, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ge = fadd <8 x float> %i.gd, %i.fy
  %i.gf = fadd <8 x float> %i.fq, %i.ge
  %i.gg = fmul <8 x float> %i.gf, splat (float 1.250000e-01)
  %gep20 = getelementptr [4 x i8], ptr %invariant.gep19, i64 %i.fj ; 6 uses
  %i.gh = getelementptr i8, ptr %gep20, i64 -48
  %i.gi = load <8 x float>, ptr %i.gh, align 4, !tbaa !51
  %i.gj = getelementptr i8, ptr %gep20, i64 -16
  %i.gk = load <8 x float>, ptr %i.gj, align 4, !tbaa !51
  %i.gl = shufflevector <8 x float> %i.gi, <8 x float> %i.gk, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.gm = getelementptr i8, ptr %gep20, i64 -56
  %i.gn = load <8 x float>, ptr %i.gm, align 4, !tbaa !51 ; 2 uses
  %i.go = getelementptr i8, ptr %gep20, i64 -24
  %i.gp = load <8 x float>, ptr %i.go, align 4, !tbaa !51 ; 2 uses
  %i.gq = shufflevector <8 x float> %i.gn, <8 x float> %i.gp, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gr = shufflevector <8 x float> %i.gn, <8 x float> %i.gp, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.gs = fadd <8 x float> %i.gr, %i.gq
  %i.gt = fmul <8 x float> %i.gs, splat (float 3.000000e+00)
  %i.gu = getelementptr i8, ptr %gep20, i64 -64
  %i.gv = load <8 x float>, ptr %i.gu, align 4, !tbaa !51
  %i.gw = getelementptr i8, ptr %gep20, i64 -32
  %i.gx = load <8 x float>, ptr %i.gw, align 4, !tbaa !51
  %i.gy = shufflevector <8 x float> %i.gv, <8 x float> %i.gx, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gz = fadd <8 x float> %i.gy, %i.gt
  %i.ha = fadd <8 x float> %i.gl, %i.gz
  %gep22 = getelementptr [4 x i8], ptr %invariant.gep21, i64 %i.fh ; 6 uses
  %i.hb = getelementptr i8, ptr %gep22, i64 -48
  %i.hc = load <8 x float>, ptr %i.hb, align 4, !tbaa !51
  %i.hd = getelementptr i8, ptr %gep22, i64 -16
  %i.he = load <8 x float>, ptr %i.hd, align 4, !tbaa !51
  %i.hf = shufflevector <8 x float> %i.hc, <8 x float> %i.he, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.hg = getelementptr i8, ptr %gep22, i64 -56
  %i.hh = load <8 x float>, ptr %i.hg, align 4, !tbaa !51 ; 2 uses
  %i.hi = getelementptr i8, ptr %gep22, i64 -24
  %i.hj = load <8 x float>, ptr %i.hi, align 4, !tbaa !51 ; 2 uses
  %i.hk = shufflevector <8 x float> %i.hh, <8 x float> %i.hj, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.hl = shufflevector <8 x float> %i.hh, <8 x float> %i.hj, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.hm = fadd <8 x float> %i.hl, %i.hk
  %i.hn = fmul <8 x float> %i.hm, splat (float 3.000000e+00)
  %i.ho = getelementptr i8, ptr %gep22, i64 -64
  %i.hp = load <8 x float>, ptr %i.ho, align 4, !tbaa !51
  %i.hq = getelementptr i8, ptr %gep22, i64 -32
  %i.hr = load <8 x float>, ptr %i.hq, align 4, !tbaa !51
  %i.hs = shufflevector <8 x float> %i.hp, <8 x float> %i.hr, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ht = fadd <8 x float> %i.hs, %i.hn
  %i.hu = fadd <8 x float> %i.hf, %i.ht
  %i.hv = fadd <8 x float> %i.ha, %i.hu
  %i.hw = fmul <8 x float> %i.hv, splat (float 3.750000e-01)
  %gep24 = getelementptr [4 x i8], ptr %invariant.gep23, i64 %i.fg ; 6 uses
  %i.hx = getelementptr i8, ptr %gep24, i64 -48
  %i.hy = load <8 x float>, ptr %i.hx, align 4, !tbaa !51
  %i.hz = getelementptr i8, ptr %gep24, i64 -16
  %i.ia = load <8 x float>, ptr %i.hz, align 4, !tbaa !51
  %i.ib = shufflevector <8 x float> %i.hy, <8 x float> %i.ia, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ic = getelementptr i8, ptr %gep24, i64 -56
  %i.id = load <8 x float>, ptr %i.ic, align 4, !tbaa !51 ; 2 uses
  %i.ie = getelementptr i8, ptr %gep24, i64 -24
  %i.if = load <8 x float>, ptr %i.ie, align 4, !tbaa !51 ; 2 uses
  %i.ig = shufflevector <8 x float> %i.id, <8 x float> %i.if, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ih = shufflevector <8 x float> %i.id, <8 x float> %i.if, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ii = fadd <8 x float> %i.ih, %i.ig
  %i.ij = fmul <8 x float> %i.ii, splat (float 3.000000e+00)
  %i.ik = getelementptr i8, ptr %gep24, i64 -64
  %i.il = load <8 x float>, ptr %i.ik, align 4, !tbaa !51
  %i.im = getelementptr i8, ptr %gep24, i64 -32
  %i.in = load <8 x float>, ptr %i.im, align 4, !tbaa !51
  %i.io = shufflevector <8 x float> %i.il, <8 x float> %i.in, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ip = fadd <8 x float> %i.io, %i.ij
  %i.iq = fadd <8 x float> %i.ib, %i.ip
  %i.ir = fmul <8 x float> %i.iq, splat (float 1.250000e-01)
  %i.is = fadd <8 x float> %i.hw, %i.ir
  %i.it = fadd <8 x float> %i.gg, %i.is
  %i.iu = fmul <8 x float> %i.it, splat (float 1.250000e-01)
  %i.iv = add nsw i64 %i.s, %indvars.iv
  %i.iw = mul nsw i64 %i.iv, %i.t
  %i.ix = getelementptr [4 x i8], ptr %i.az, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 -28
  store <8 x float> %i.iu, ptr %i.iy, align 4, !tbaa !55
  br label %"end for f74.s0.v3.v32"

"end for f74.s0.v3.v32":                          ; preds = %"for f74.s0.v3.v31.preheader", %"end for f74.s0.v3.v3"
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.iz = getelementptr i8, ptr %lsr.iv4, i64 %i.x
  %scevgep6 = getelementptr i8, ptr %i.iz, i64 4
  %i.ja = add <4 x i32> %i.bh, %i.be
  %.not6 = icmp eq i64 %indvars.iv.next, 32
  br i1 %.not6, label %destructor_block, label %"for f74.s0.v4.v326"

destructor_block:                                 ; preds = %"end for f74.s0.v3.v32"
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @par_for___local_laplacian_f8.s0.v6(ptr nofree readnone captures(none) %__user_context, i32 %f8.s0.v6, ptr noalias nofree readonly captures(none) %closure) #2 {
entry:
  %i.a = getelementptr inbounds nuw i8, ptr %closure, i64 28
  %f8.s0.v4.max = load i32, ptr %i.a, align 4     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %closure, i64 32
  %f8.s0.v4.min = load i32, ptr %i.b, align 4     ; 4 uses
  %i.c = add i32 %f8.s0.v4.max, 1
  %i.d = icmp slt i32 %f8.s0.v4.min, %i.c
  br i1 %i.d, label %"for f8.s0.v4.preheader", label %destructor_block, !prof !5

"for f8.s0.v4.preheader":                         ; preds = %entry
  %i.e = getelementptr inbounds nuw i8, ptr %closure, i64 56
  %f7.host = load ptr, ptr %i.e, align 8          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %closure, i64 24
  %f8.s0.v3.min = load i32, ptr %i.f, align 8     ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %closure, i64 8
  %f7.v3.extent_realized.s = load i32, ptr %i.g, align 8
  %promoted23 = sext i32 %f7.v3.extent_realized.s to i64
  %i.h = getelementptr inbounds nuw i8, ptr %closure, i64 20
  %f8.s0.v3.max = load i32, ptr %i.h, align 4     ; 3 uses
  %a684 = load i32, ptr %closure, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %closure, i64 40
  %f8.v3.extent_realized.s = load i32, ptr %i.i, align 8
  %i.j = sext i32 %f8.v3.extent_realized.s to i64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %closure, i64 4
  %f7.stride.1 = load i32, ptr %i.k, align 4      ; 7 uses
  %i.l = add i32 %f8.s0.v3.max, 1                 ; 2 uses
  %i.m = sub i32 %i.l, %f8.s0.v3.min              ; 3 uses
  %i.n = tail call i32 @llvm.smax.i32(i32 %a684, i32 0) ; 2 uses
  %i.o = shl nsw i64 %i.j, 2
  %i.p = shl i32 %f8.s0.v3.min, 1                 ; 9 uses
  %i.q = shl i32 %f7.stride.1, 1                  ; 4 uses
  %i.r = icmp slt i32 %f8.s0.v3.min, %i.l
  %i.s = add nsw i64 %promoted23, 1
  %i.t = sub nsw i32 %f8.s0.v6, %i.n
  %i.u = sext i32 %i.t to i64
  %t2133 = mul nsw i64 %i.s, %i.u                 ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %f7.host, i64 %t2133 ; 2 uses
  %sext = shl i64 %t2133, 32
  %i.w = ashr exact i64 %sext, 30
  %i.x = getelementptr i8, ptr %f7.host, i64 %i.w ; 8 uses
  br i1 %i.r, label %"for f8.s0.v4.preheader3", label %destructor_block, !prof !5

"for f8.s0.v4.preheader3":                        ; preds = %"for f8.s0.v4.preheader"
  %i.y = getelementptr inbounds nuw i8, ptr %closure, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %closure, i64 12
  %f7.v3.min_realized = load i32, ptr %i.z, align 4 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %closure, i64 72
  %f8.host = load ptr, ptr %i.aa, align 8
  %i.ab = sext i32 %f8.s0.v3.min to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %closure, i64 44
  %f8.v3.min_realized = load i32, ptr %i.ac, align 4
  %i.ad = sext i32 %f8.v3.min_realized to i64
  %i.ae = sub nsw i64 %i.ab, %i.ad
  %i.af = getelementptr [4 x i8], ptr %f8.host, i64 %i.ae
  %i.ag = sext i32 %f8.s0.v6 to i64
  %smax = zext nneg i32 %i.n to i64
  %i.ah = sub nsw i64 %i.ag, %smax
  %i.ai = getelementptr inbounds nuw i8, ptr %closure, i64 36
  %f8.stride.2 = load i32, ptr %i.ai, align 4
  %i.aj = sext i32 %f8.stride.2 to i64
  %i.ak = mul nsw i64 %i.ah, %i.aj
  %i.al = getelementptr [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = add nsw i64 %i.j, 1
  %i.an = sext i32 %f8.s0.v4.min to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %closure, i64 48
  %f8.v4.min_realized = load i32, ptr %i.ao, align 8
  %i.ap = sext i32 %f8.v4.min_realized to i64
  %i.aq = sub nsw i64 %i.an, %i.ap
  %i.ar = mul nsw i64 %i.am, %i.aq
  %scevgep = getelementptr [4 x i8], ptr %i.al, i64 %i.ar
  %i.as = sub i32 %f8.s0.v3.max, %f8.s0.v3.min    ; 2 uses
  %i.at = shl i32 %f7.stride.1, 1
  %i.au = shl i32 %f8.s0.v4.min, 1                ; 5 uses
  %f7.v4.min_realized = load i32, ptr %i.y, align 8 ; 5 uses
  %i.av = xor i32 %f7.v4.min_realized, -1
  %i.aw = add i32 %i.au, 2
  %i.ax = or disjoint i32 %i.au, 1
  %i.ay = sub i32 %i.aw, %f7.v4.min_realized
  %i.az = sub i32 %i.ax, %f7.v4.min_realized
  %i.ba = sub i32 %i.au, %f7.v4.min_realized
  %i.bb = add i32 %i.au, %i.av
  %i.bc = mul i32 %f7.stride.1, %i.ay             ; 2 uses
  %i.bd = mul i32 %f7.stride.1, %i.az
  %i.be = mul i32 %f7.stride.1, %i.ba             ; 2 uses
  %i.bf = mul i32 %f7.stride.1, %i.bb             ; 2 uses
  %i.bg = sub i32 %i.bf, %f7.v3.min_realized
  %i.bh = sub i32 %i.be, %f7.v3.min_realized
  %i.bi = or disjoint i32 %i.au, 1
  %i.bj = sub i32 %i.bi, %f7.v4.min_realized
  %i.bk = mul i32 %f7.stride.1, %i.bj
  %i.bl = sub i32 %i.bk, %f7.v3.min_realized
  %i.bm = sub i32 %i.bc, %f7.v3.min_realized
  %i.bn = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %i.bo = insertelement <4 x i32> %i.bn, i32 %i.be, i64 1
  %i.bp = insertelement <4 x i32> %i.bo, i32 %i.bd, i64 2
  %i.bq = insertelement <4 x i32> %i.bp, i32 %i.bc, i64 3
  %i.br = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %i.bs = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bt = add <4 x i32> %i.bq, %i.bs
  %i.bu = insertelement <4 x i32> poison, i32 %f7.v3.min_realized, i64 0
  %i.bv = shufflevector <4 x i32> %i.bu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bw = sub <4 x i32> %i.bt, %i.bv              ; 2 uses
  %0 = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %i.bx = sub i32 %f8.s0.v3.max, %f8.s0.v3.min    ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bx, 8
  %i.ca = shl <4 x i32> %0, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> poison, <4 x i32> zeroinitializer
  %mul.overflow6 = icmp slt i32 %i.as, 0
  %invariant.op47 = add <4 x i32> %i.bw, %i.cb
  %n.mod.vf = and i64 %i.bz, 3                    ; 2 uses
  %i.cc = icmp eq i64 %n.mod.vf, 0
  %i.cd = select i1 %i.cc, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.bz, %i.cd               ; 3 uses
  %i.ce = trunc i64 %n.vec to i32                 ; 2 uses
  %i.cf = shl i32 %i.ce, 1                        ; 4 uses
  %i.cg = shl nsw i64 %n.vec, 2
  %i.ch = sub i32 %i.m, %i.ce
  br label %"for f8.s0.v4"

"for f8.s0.v4":                                   ; preds = %"for f8.s0.v4.preheader3", %"end for f8.s0.v3.loopexit"
  %indvar = phi i32 [ 0, %"for f8.s0.v4.preheader3" ], [ %indvar.next, %"end for f8.s0.v3.loopexit" ] ; 2 uses
  %lsr.iv19 = phi i32 [ %i.bg, %"for f8.s0.v4.preheader3" ], [ %lsr.iv.next20, %"end for f8.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv15 = phi i32 [ %i.bh, %"for f8.s0.v4.preheader3" ], [ %lsr.iv.next16, %"end for f8.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv10 = phi i32 [ %i.bl, %"for f8.s0.v4.preheader3" ], [ %lsr.iv.next11, %"end for f8.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv6 = phi i32 [ %i.bm, %"for f8.s0.v4.preheader3" ], [ %lsr.iv.next7, %"end for f8.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv1 = phi ptr [ %scevgep, %"for f8.s0.v4.preheader3" ], [ %scevgep3, %"end for f8.s0.v3.loopexit" ] ; 5 uses
  %f8.s0.v4 = phi i32 [ %f8.s0.v4.min, %"for f8.s0.v4.preheader3" ], [ %i.hf, %"end for f8.s0.v3.loopexit" ] ; 2 uses
  br i1 %min.iters.check, label %"for f8.s0.v3.preheader", label %vector.scevcheck

vector.scevcheck:                                 ; preds = %"for f8.s0.v4"
  %i.ci = mul i32 %i.at, %indvar
  %i.cj = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %i.ck = shufflevector <4 x i32> %i.cj, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cl = add <4 x i32> %i.bw, %i.ck
  %.reass48 = add <4 x i32> %i.ck, %invariant.op47
  %i.cm = icmp slt <4 x i32> %.reass48, %i.cl     ; 4 uses
  %i.cn = extractelement <4 x i1> %i.cm, i64 2
  %i.co = or i1 %i.cn, %mul.overflow6
  %i.cp = extractelement <4 x i1> %i.cm, i64 3
  %i.cq = or i1 %i.cp, %i.co
  %i.cr = extractelement <4 x i1> %i.cm, i64 1
  %i.cs = or i1 %i.cr, %i.cq
  %i.ct = extractelement <4 x i1> %i.cm, i64 0
  %i.cu = or i1 %i.ct, %i.cs
  br i1 %i.cu, label %"for f8.s0.v3.preheader", label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.cv = add i32 %lsr.iv19, %i.cf
  %i.cw = add i32 %lsr.iv15, %i.cf
  %i.cx = add i32 %lsr.iv10, %i.cf
  %i.cy = add i32 %lsr.iv6, %i.cf
  %i.cz = getelementptr i8, ptr %lsr.iv1, i64 %i.cg
  %invariant.op = add i32 %lsr.iv19, %i.p
  %invariant.op41 = add i32 %lsr.iv15, %i.p
  %invariant.op43 = add i32 %lsr.iv10, %i.p
  %invariant.op45 = add i32 %lsr.iv6, %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = trunc i64 %index to i32
  %i.db = shl i32 %i.da, 1                        ; 4 uses
  %i.dc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %lsr.iv1, i64 %i.dc
  %.reass = add i32 %i.db, %invariant.op
  %.reass42 = add i32 %i.db, %invariant.op41
  %.reass44 = add i32 %i.db, %invariant.op43
  %.reass46 = add i32 %i.db, %invariant.op45
  %i.dd = sext i32 %.reass46 to i64               ; 2 uses
  %i.de = getelementptr [4 x i8], ptr %i.v, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %wide.vec = load <8 x float>, ptr %i.df, align 4, !tbaa !53
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dg = getelementptr [4 x i8], ptr %i.x, i64 %i.dd ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  %wide.vec13 = load <8 x float>, ptr %i.dh, align 4, !tbaa !53
  %strided.vec14 = shufflevector <8 x float> %wide.vec13, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.di = getelementptr i8, ptr %i.dg, i64 -4
  %wide.vec15 = load <8 x float>, ptr %i.di, align 4, !tbaa !53 ; 2 uses
  %strided.vec16 = shufflevector <8 x float> %wide.vec15, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec17 = shufflevector <8 x float> %wide.vec15, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dj = fadd <4 x float> %strided.vec14, %strided.vec17
  %i.dk = fmul <4 x float> %i.dj, splat (float 3.000000e+00)
  %i.dl = fadd <4 x float> %strided.vec16, %i.dk
  %i.dm = fadd <4 x float> %strided.vec, %i.dl
  %i.dn = fmul <4 x float> %i.dm, splat (float 1.250000e-01)
  %i.do = sext i32 %.reass44 to i64
  %i.dp = getelementptr [4 x i8], ptr %i.x, i64 %i.do ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  %wide.vec18 = load <8 x float>, ptr %i.dq, align 4, !tbaa !53 ; 2 uses
  %strided.vec19 = shufflevector <8 x float> %wide.vec18, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec20 = shufflevector <8 x float> %wide.vec18, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dr = getelementptr i8, ptr %i.dp, i64 -4
  %wide.vec21 = load <8 x float>, ptr %i.dr, align 4, !tbaa !53 ; 2 uses
  %strided.vec22 = shufflevector <8 x float> %wide.vec21, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec23 = shufflevector <8 x float> %wide.vec21, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ds = fadd <4 x float> %strided.vec19, %strided.vec23
  %i.dt = fmul <4 x float> %i.ds, splat (float 3.000000e+00)
  %i.du = fadd <4 x float> %strided.vec22, %i.dt
  %i.dv = fadd <4 x float> %strided.vec20, %i.du
  %i.dw = sext i32 %.reass42 to i64
  %i.dx = getelementptr [4 x i8], ptr %i.x, i64 %i.dw ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %wide.vec24 = load <8 x float>, ptr %i.dy, align 4, !tbaa !53 ; 2 uses
  %strided.vec25 = shufflevector <8 x float> %wide.vec24, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec26 = shufflevector <8 x float> %wide.vec24, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dz = getelementptr i8, ptr %i.dx, i64 -4
  %wide.vec27 = load <8 x float>, ptr %i.dz, align 4, !tbaa !53 ; 2 uses
  %strided.vec28 = shufflevector <8 x float> %wide.vec27, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec29 = shufflevector <8 x float> %wide.vec27, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ea = fadd <4 x float> %strided.vec25, %strided.vec29
  %i.eb = fmul <4 x float> %i.ea, splat (float 3.000000e+00)
  %i.ec = fadd <4 x float> %strided.vec28, %i.eb
  %i.ed = fadd <4 x float> %strided.vec26, %i.ec
  %i.ee = fadd <4 x float> %i.dv, %i.ed
  %i.ef = fmul <4 x float> %i.ee, splat (float 3.750000e-01)
  %i.eg = sext i32 %.reass to i64
  %i.eh = getelementptr [4 x i8], ptr %i.x, i64 %i.eg ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %wide.vec30 = load <8 x float>, ptr %i.ei, align 4, !tbaa !53 ; 2 uses
  %strided.vec31 = shufflevector <8 x float> %wide.vec30, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec32 = shufflevector <8 x float> %wide.vec30, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ej = getelementptr i8, ptr %i.eh, i64 -4
  %wide.vec33 = load <8 x float>, ptr %i.ej, align 4, !tbaa !53 ; 2 uses
  %strided.vec34 = shufflevector <8 x float> %wide.vec33, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec35 = shufflevector <8 x float> %wide.vec33, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ek = fadd <4 x float> %strided.vec31, %strided.vec35
  %i.el = fmul <4 x float> %i.ek, splat (float 3.000000e+00)
  %i.em = fadd <4 x float> %strided.vec34, %i.el
  %i.en = fadd <4 x float> %strided.vec32, %i.em
  %i.eo = fmul <4 x float> %i.en, splat (float 1.250000e-01)
  %i.ep = fadd <4 x float> %i.ef, %i.eo
  %i.eq = fadd <4 x float> %i.dn, %i.ep
  %i.er = fmul <4 x float> %i.eq, splat (float 1.250000e-01)
  store <4 x float> %i.er, ptr %next.gep, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %"for f8.s0.v3.preheader", label %vector.body, !llvm.loop !57

"for f8.s0.v3.preheader":                         ; preds = %vector.body, %vector.scevcheck, %"for f8.s0.v4"
  %lsr.iv21.ph = phi i32 [ %lsr.iv19, %vector.scevcheck ], [ %lsr.iv19, %"for f8.s0.v4" ], [ %i.cv, %vector.body ]
  %lsr.iv17.ph = phi i32 [ %lsr.iv15, %vector.scevcheck ], [ %lsr.iv15, %"for f8.s0.v4" ], [ %i.cw, %vector.body ]
  %lsr.iv13.ph = phi i32 [ %lsr.iv10, %vector.scevcheck ], [ %lsr.iv10, %"for f8.s0.v4" ], [ %i.cx, %vector.body ]
  %lsr.iv8.ph = phi i32 [ %lsr.iv6, %vector.scevcheck ], [ %lsr.iv6, %"for f8.s0.v4" ], [ %i.cy, %vector.body ]
  %lsr.iv4.ph = phi ptr [ %lsr.iv1, %vector.scevcheck ], [ %lsr.iv1, %"for f8.s0.v4" ], [ %i.cz, %vector.body ]
  %lsr.iv.ph = phi i32 [ %i.m, %vector.scevcheck ], [ %i.m, %"for f8.s0.v4" ], [ %i.ch, %vector.body ]
  br label %"for f8.s0.v3"

"for f8.s0.v3":                                   ; preds = %"for f8.s0.v3.preheader", %"for f8.s0.v3"
  %lsr.iv21 = phi i32 [ %lsr.iv.next22, %"for f8.s0.v3" ], [ %lsr.iv21.ph, %"for f8.s0.v3.preheader" ] ; 2 uses
  %lsr.iv17 = phi i32 [ %lsr.iv.next18, %"for f8.s0.v3" ], [ %lsr.iv17.ph, %"for f8.s0.v3.preheader" ] ; 2 uses
  %lsr.iv13 = phi i32 [ %lsr.iv.next14, %"for f8.s0.v3" ], [ %lsr.iv13.ph, %"for f8.s0.v3.preheader" ] ; 2 uses
  %lsr.iv8 = phi i32 [ %lsr.iv.next9, %"for f8.s0.v3" ], [ %lsr.iv8.ph, %"for f8.s0.v3.preheader" ] ; 2 uses
  %lsr.iv4 = phi ptr [ %scevgep5, %"for f8.s0.v3" ], [ %lsr.iv4.ph, %"for f8.s0.v3.preheader" ] ; 2 uses
  %lsr.iv = phi i32 [ %lsr.iv.next, %"for f8.s0.v3" ], [ %lsr.iv.ph, %"for f8.s0.v3.preheader" ]
  %i.et = add i32 %lsr.iv21, %i.p
  %i.eu = add i32 %lsr.iv17, %i.p
  %i.ev = add i32 %lsr.iv13, %i.p
  %i.ew = add i32 %lsr.iv8, %i.p
  %i.ex = sext i32 %i.ew to i64                   ; 2 uses
  %i.ey = getelementptr [4 x i8], ptr %i.v, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !53
  %i.fb = getelementptr [4 x i8], ptr %i.x, i64 %i.ex ; 3 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !53
  %i.fe = load float, ptr %i.fb, align 4, !tbaa !53
  %i.ff = fadd float %i.fd, %i.fe
  %i.fg = fmul float %i.ff, 3.000000e+00
  %i.fh = getelementptr i8, ptr %i.fb, i64 -4
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !53
  %i.fj = fadd float %i.fi, %i.fg
  %i.fk = fadd float %i.fa, %i.fj
  %i.fl = fmul float %i.fk, 1.250000e-01
  %i.fm = sext i32 %i.ev to i64
  %i.fn = getelementptr [4 x i8], ptr %i.x, i64 %i.fm ; 4 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !53
  %i.fq = getelementptr i8, ptr %i.fn, i64 4
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !53
  %i.fs = load float, ptr %i.fn, align 4, !tbaa !53
  %i.ft = fadd float %i.fr, %i.fs
  %i.fu = fmul float %i.ft, 3.000000e+00
  %i.fv = getelementptr i8, ptr %i.fn, i64 -4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !53
  %i.fx = fadd float %i.fw, %i.fu
  %i.fy = fadd float %i.fp, %i.fx
  %i.fz = sext i32 %i.eu to i64
  %i.ga = getelementptr [4 x i8], ptr %i.x, i64 %i.fz ; 4 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 8
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !53
  %i.gd = getelementptr i8, ptr %i.ga, i64 4
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !53
  %i.gf = load float, ptr %i.ga, align 4, !tbaa !53
  %i.gg = fadd float %i.ge, %i.gf
  %i.gh = fmul float %i.gg, 3.000000e+00
  %i.gi = getelementptr i8, ptr %i.ga, i64 -4
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !53
  %i.gk = fadd float %i.gj, %i.gh
  %i.gl = fadd float %i.gc, %i.gk
  %i.gm = fadd float %i.fy, %i.gl
  %i.gn = fmul float %i.gm, 3.750000e-01
  %i.go = sext i32 %i.et to i64
  %i.gp = getelementptr [4 x i8], ptr %i.x, i64 %i.go ; 4 uses
end_hunk_1
begin_hunk_2_@par_for___local_laplacian_f75.s0.v4.v4:"for f75.s0.v4.v346.preheader"
  %i.fx = fadd <8 x float> %i.fw, %i.fv
  %i.fy = fmul <8 x float> %i.fx, splat (float 3.000000e+00)
  %i.fz = getelementptr i8, ptr %gep, i64 -64
  %i.ga = load <8 x float>, ptr %i.fz, align 4, !tbaa !55
  %i.gb = getelementptr i8, ptr %gep, i64 -32
  %i.gc = load <8 x float>, ptr %i.gb, align 4, !tbaa !55
  %i.gd = shufflevector <8 x float> %i.ga, <8 x float> %i.gc, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ge = fadd <8 x float> %i.gd, %i.fy
  %i.gf = fadd <8 x float> %i.fq, %i.ge
  %i.gg = fmul <8 x float> %i.gf, splat (float 1.250000e-01)
  %gep20 = getelementptr [4 x i8], ptr %invariant.gep19, i64 %i.fj ; 6 uses
  %i.gh = getelementptr i8, ptr %gep20, i64 -48
  %i.gi = load <8 x float>, ptr %i.gh, align 4, !tbaa !55
  %i.gj = getelementptr i8, ptr %gep20, i64 -16
  %i.gk = load <8 x float>, ptr %i.gj, align 4, !tbaa !55
  %i.gl = shufflevector <8 x float> %i.gi, <8 x float> %i.gk, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.gm = getelementptr i8, ptr %gep20, i64 -56
  %i.gn = load <8 x float>, ptr %i.gm, align 4, !tbaa !55 ; 2 uses
  %i.go = getelementptr i8, ptr %gep20, i64 -24
  %i.gp = load <8 x float>, ptr %i.go, align 4, !tbaa !55 ; 2 uses
  %i.gq = shufflevector <8 x float> %i.gn, <8 x float> %i.gp, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gr = shufflevector <8 x float> %i.gn, <8 x float> %i.gp, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.gs = fadd <8 x float> %i.gr, %i.gq
  %i.gt = fmul <8 x float> %i.gs, splat (float 3.000000e+00)
  %i.gu = getelementptr i8, ptr %gep20, i64 -64
  %i.gv = load <8 x float>, ptr %i.gu, align 4, !tbaa !55
  %i.gw = getelementptr i8, ptr %gep20, i64 -32
  %i.gx = load <8 x float>, ptr %i.gw, align 4, !tbaa !55
  %i.gy = shufflevector <8 x float> %i.gv, <8 x float> %i.gx, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gz = fadd <8 x float> %i.gy, %i.gt
  %i.ha = fadd <8 x float> %i.gl, %i.gz
  %gep22 = getelementptr [4 x i8], ptr %invariant.gep21, i64 %i.fh ; 6 uses
  %i.hb = getelementptr i8, ptr %gep22, i64 -48
  %i.hc = load <8 x float>, ptr %i.hb, align 4, !tbaa !55
  %i.hd = getelementptr i8, ptr %gep22, i64 -16
  %i.he = load <8 x float>, ptr %i.hd, align 4, !tbaa !55
  %i.hf = shufflevector <8 x float> %i.hc, <8 x float> %i.he, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.hg = getelementptr i8, ptr %gep22, i64 -56
  %i.hh = load <8 x float>, ptr %i.hg, align 4, !tbaa !55 ; 2 uses
  %i.hi = getelementptr i8, ptr %gep22, i64 -24
  %i.hj = load <8 x float>, ptr %i.hi, align 4, !tbaa !55 ; 2 uses
  %i.hk = shufflevector <8 x float> %i.hh, <8 x float> %i.hj, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.hl = shufflevector <8 x float> %i.hh, <8 x float> %i.hj, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.hm = fadd <8 x float> %i.hl, %i.hk
  %i.hn = fmul <8 x float> %i.hm, splat (float 3.000000e+00)
  %i.ho = getelementptr i8, ptr %gep22, i64 -64
  %i.hp = load <8 x float>, ptr %i.ho, align 4, !tbaa !55
  %i.hq = getelementptr i8, ptr %gep22, i64 -32
  %i.hr = load <8 x float>, ptr %i.hq, align 4, !tbaa !55
  %i.hs = shufflevector <8 x float> %i.hp, <8 x float> %i.hr, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ht = fadd <8 x float> %i.hs, %i.hn
  %i.hu = fadd <8 x float> %i.hf, %i.ht
  %i.hv = fadd <8 x float> %i.ha, %i.hu
  %i.hw = fmul <8 x float> %i.hv, splat (float 3.750000e-01)
  %gep24 = getelementptr [4 x i8], ptr %invariant.gep23, i64 %i.fg ; 6 uses
  %i.hx = getelementptr i8, ptr %gep24, i64 -48
  %i.hy = load <8 x float>, ptr %i.hx, align 4, !tbaa !55
  %i.hz = getelementptr i8, ptr %gep24, i64 -16
  %i.ia = load <8 x float>, ptr %i.hz, align 4, !tbaa !55
  %i.ib = shufflevector <8 x float> %i.hy, <8 x float> %i.ia, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ic = getelementptr i8, ptr %gep24, i64 -56
  %i.id = load <8 x float>, ptr %i.ic, align 4, !tbaa !55 ; 2 uses
  %i.ie = getelementptr i8, ptr %gep24, i64 -24
  %i.if = load <8 x float>, ptr %i.ie, align 4, !tbaa !55 ; 2 uses
  %i.ig = shufflevector <8 x float> %i.id, <8 x float> %i.if, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ih = shufflevector <8 x float> %i.id, <8 x float> %i.if, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ii = fadd <8 x float> %i.ih, %i.ig
  %i.ij = fmul <8 x float> %i.ii, splat (float 3.000000e+00)
  %i.ik = getelementptr i8, ptr %gep24, i64 -64
  %i.il = load <8 x float>, ptr %i.ik, align 4, !tbaa !55
  %i.im = getelementptr i8, ptr %gep24, i64 -32
  %i.in = load <8 x float>, ptr %i.im, align 4, !tbaa !55
  %i.io = shufflevector <8 x float> %i.il, <8 x float> %i.in, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ip = fadd <8 x float> %i.io, %i.ij
  %i.iq = fadd <8 x float> %i.ib, %i.ip
  %i.ir = fmul <8 x float> %i.iq, splat (float 1.250000e-01)
  %i.is = fadd <8 x float> %i.hw, %i.ir
  %i.it = fadd <8 x float> %i.gg, %i.is
  %i.iu = fmul <8 x float> %i.it, splat (float 1.250000e-01)
  %i.iv = add nsw i64 %i.s, %indvars.iv
  %i.iw = mul nsw i64 %i.iv, %i.t
  %i.ix = getelementptr [4 x i8], ptr %i.az, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 -28
  store <8 x float> %i.iu, ptr %i.iy, align 4, !tbaa !13
  br label %"end for f75.s0.v3.v32"

"end for f75.s0.v3.v32":                          ; preds = %"for f75.s0.v3.v31.preheader", %"end for f75.s0.v3.v3"
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.iz = getelementptr i8, ptr %lsr.iv4, i64 %i.x
  %scevgep6 = getelementptr i8, ptr %i.iz, i64 4
  %i.ja = add <4 x i32> %i.bh, %i.be
  %.not6 = icmp eq i64 %indvars.iv.next, 32
  br i1 %.not6, label %destructor_block, label %"for f75.s0.v4.v346"

destructor_block:                                 ; preds = %"end for f75.s0.v3.v32"
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @par_for___local_laplacian_f9.s0.v6(ptr nofree readnone captures(none) %__user_context, i32 %f9.s0.v6, ptr noalias nofree readonly captures(none) %closure) #2 {
entry:
  %i.a = getelementptr inbounds nuw i8, ptr %closure, i64 28
  %f9.s0.v4.max = load i32, ptr %i.a, align 4     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %closure, i64 32
  %f9.s0.v4.min = load i32, ptr %i.b, align 4     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %closure, i64 56
  %f8.host = load ptr, ptr %i.c, align 8          ; 8 uses
  %i.d = add i32 %f9.s0.v4.max, 1
  %i.e = icmp slt i32 %f9.s0.v4.min, %i.d
  br i1 %i.e, label %"for f9.s0.v4.preheader", label %destructor_block, !prof !5

"for f9.s0.v4.preheader":                         ; preds = %entry
  %i.f = getelementptr inbounds nuw i8, ptr %closure, i64 24
  %f9.s0.v3.min = load i32, ptr %i.f, align 8     ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %closure, i64 4
  %f8.stride.2 = load i32, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %closure, i64 20
  %f9.s0.v3.max = load i32, ptr %i.h, align 4     ; 3 uses
  %a729 = load i32, ptr %closure, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %closure, i64 44
  %f9.v3.min_realized = load i32, ptr %i.i, align 4
  %i.j = sext i32 %f9.v3.min_realized to i64      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %closure, i64 40
  %f9.v3.extent_realized.s.s = load i32, ptr %i.k, align 8
  %i.l = sext i32 %f9.v3.extent_realized.s.s to i64
  %i.m = getelementptr inbounds nuw i8, ptr %closure, i64 8
  %f8.v3.extent_realized.s = load i32, ptr %i.m, align 8 ; 2 uses
  %i.n = add i32 %f9.s0.v3.max, 1                 ; 2 uses
  %i.o = sub i32 %i.n, %f9.s0.v3.min              ; 3 uses
  %reass.sub = sub nsw i64 %i.l, %i.j
  %i.p = add nsw i64 %reass.sub, 1                ; 2 uses
  %i.q = tail call i32 @llvm.smax.i32(i32 %a729, i32 0) ; 2 uses
  %i.r = shl nsw i64 %i.p, 2
  %i.s = shl i32 %f8.v3.extent_realized.s, 1
  %i.t = add i32 %i.s, 2                          ; 5 uses
  %i.u = icmp slt i32 %f9.s0.v3.min, %i.n
  %t2154.s = sub i32 %f9.s0.v6, %i.q
  %i.v = mul i32 %t2154.s, %f8.stride.2           ; 9 uses
  br i1 %i.u, label %"for f9.s0.v4.preheader3", label %destructor_block, !prof !5

"for f9.s0.v4.preheader3":                        ; preds = %"for f9.s0.v4.preheader"
  %i.w = shl i32 %f9.s0.v3.min, 1                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %closure, i64 12
  %f8.v3.min_realized = load i32, ptr %i.x, align 4 ; 2 uses
  %i.y = sub i32 %i.w, %f8.v3.min_realized        ; 4 uses
  %i.z = add i32 %f8.v3.extent_realized.s, 1      ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %closure, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %closure, i64 72
  %f9.host = load ptr, ptr %i.ab, align 8
  %i.ac = sext i32 %f9.s0.v3.min to i64
  %i.ad = sub nsw i64 %i.ac, %i.j
  %i.ae = getelementptr [4 x i8], ptr %f9.host, i64 %i.ad
  %i.af = sext i32 %f9.s0.v6 to i64
  %smax = zext nneg i32 %i.q to i64
  %i.ag = sub nsw i64 %i.af, %smax
  %i.ah = getelementptr inbounds nuw i8, ptr %closure, i64 36
  %f9.stride.2 = load i32, ptr %i.ah, align 4
  %i.ai = sext i32 %f9.stride.2 to i64
  %i.aj = mul nsw i64 %i.ag, %i.ai
  %i.ak = getelementptr [4 x i8], ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %f9.s0.v4.min to i64
  %i.am = getelementptr inbounds nuw i8, ptr %closure, i64 48
  %f9.v4.min_realized = load i32, ptr %i.am, align 8
  %i.an = sext i32 %f9.v4.min_realized to i64
  %i.ao = sub nsw i64 %i.al, %i.an
  %i.ap = mul i64 %i.p, %i.ao
  %scevgep = getelementptr [4 x i8], ptr %i.ak, i64 %i.ap
  %i.aq = sub i32 %f9.s0.v3.max, %f9.s0.v3.min    ; 2 uses
  %i.ar = shl i32 %f9.s0.v4.min, 1                ; 5 uses
  %f8.v4.min_realized = load i32, ptr %i.aa, align 8 ; 5 uses
  %i.as = xor i32 %f8.v4.min_realized, -1
  %i.at = add i32 %i.ar, 2
  %i.au = or disjoint i32 %i.ar, 1
  %i.av = sub i32 %i.at, %f8.v4.min_realized
  %i.aw = sub i32 %i.au, %f8.v4.min_realized
  %i.ax = sub i32 %i.ar, %f8.v4.min_realized
  %i.ay = add i32 %i.ar, %i.as
  %i.az = mul i32 %i.z, %i.av                     ; 2 uses
  %i.ba = mul i32 %i.aw, %i.z
  %i.bb = mul i32 %i.z, %i.ax                     ; 2 uses
  %i.bc = mul i32 %i.z, %i.ay                     ; 2 uses
  %i.bd = add i32 %i.y, %i.bc
  %i.be = add i32 %i.y, %i.bb
  %i.bf = or disjoint i32 %i.ar, 1
  %i.bg = sub i32 %i.bf, %f8.v4.min_realized
  %i.bh = mul i32 %i.z, %i.bg
  %i.bi = add i32 %i.y, %i.bh
  %i.bj = add i32 %i.y, %i.az
  %i.bk = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %i.bl = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bb, i64 1
  %i.bn = insertelement <4 x i32> %i.bm, i32 %i.ba, i64 2
  %i.bo = insertelement <4 x i32> %i.bn, i32 %i.az, i64 3
  %i.bp = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.bq = add <4 x i32> %i.bp, %i.bk
  %i.br = shufflevector <4 x i32> %i.bq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bs = add <4 x i32> %i.br, %i.bo
  %i.bt = insertelement <4 x i32> poison, i32 %f8.v3.min_realized, i64 0
  %i.bu = shufflevector <4 x i32> %i.bt, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bv = sub <4 x i32> %i.bs, %i.bu              ; 2 uses
  %0 = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %i.bw = sub i32 %f9.s0.v3.max, %f9.s0.v3.min    ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bw, 7
  %i.bz = shl <4 x i32> %0, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ca = shufflevector <4 x i32> %i.bz, <4 x i32> poison, <4 x i32> zeroinitializer
  %mul.overflow6 = icmp slt i32 %i.aq, 0
  %invariant.op46 = add <4 x i32> %i.bv, %i.ca
  %n.vec = and i64 %i.by, 8589934588              ; 4 uses
  %i.cb = trunc i64 %n.vec to i32                 ; 2 uses
  %i.cc = shl i32 %i.cb, 1                        ; 4 uses
  %i.cd = shl nuw nsw i64 %n.vec, 2
  %i.ce = sub i32 %i.o, %i.cb
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br label %"for f9.s0.v4"

"for f9.s0.v4":                                   ; preds = %"for f9.s0.v4.preheader3", %"end for f9.s0.v3.loopexit"
  %indvar = phi i32 [ 0, %"for f9.s0.v4.preheader3" ], [ %indvar.next, %"end for f9.s0.v3.loopexit" ] ; 2 uses
  %lsr.iv19 = phi i32 [ %i.bd, %"for f9.s0.v4.preheader3" ], [ %lsr.iv.next20, %"end for f9.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv15 = phi i32 [ %i.be, %"for f9.s0.v4.preheader3" ], [ %lsr.iv.next16, %"end for f9.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv10 = phi i32 [ %i.bi, %"for f9.s0.v4.preheader3" ], [ %lsr.iv.next11, %"end for f9.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv6 = phi i32 [ %i.bj, %"for f9.s0.v4.preheader3" ], [ %lsr.iv.next7, %"end for f9.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv1 = phi ptr [ %scevgep, %"for f9.s0.v4.preheader3" ], [ %scevgep3, %"end for f9.s0.v3.loopexit" ] ; 5 uses
  %f9.s0.v4 = phi i32 [ %f9.s0.v4.min, %"for f9.s0.v4.preheader3" ], [ %i.gz, %"end for f9.s0.v3.loopexit" ] ; 2 uses
  br i1 %min.iters.check, label %"for f9.s0.v3.preheader", label %vector.scevcheck

vector.scevcheck:                                 ; preds = %"for f9.s0.v4"
  %i.cf = mul i32 %i.t, %indvar
  %i.cg = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %i.ch = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ci = add <4 x i32> %i.bv, %i.ch
  %.reass47 = add <4 x i32> %i.ch, %invariant.op46
  %i.cj = icmp slt <4 x i32> %.reass47, %i.ci     ; 4 uses
  %i.ck = extractelement <4 x i1> %i.cj, i64 2
  %i.cl = or i1 %i.ck, %mul.overflow6
  %i.cm = extractelement <4 x i1> %i.cj, i64 3
  %i.cn = or i1 %i.cm, %i.cl
  %i.co = extractelement <4 x i1> %i.cj, i64 1
  %i.cp = or i1 %i.co, %i.cn
  %i.cq = extractelement <4 x i1> %i.cj, i64 0
  %i.cr = or i1 %i.cq, %i.cp
  br i1 %i.cr, label %"for f9.s0.v3.preheader", label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.cs = add i32 %lsr.iv19, %i.cc
  %i.ct = add i32 %lsr.iv15, %i.cc
  %i.cu = add i32 %lsr.iv10, %i.cc
  %i.cv = add i32 %lsr.iv6, %i.cc
  %i.cw = getelementptr i8, ptr %lsr.iv1, i64 %i.cd
  %invariant.op = add i32 %lsr.iv19, %i.v
  %invariant.op40 = add i32 %lsr.iv15, %i.v
  %invariant.op42 = add i32 %lsr.iv10, %i.v
  %invariant.op44 = add i32 %lsr.iv6, %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cx = trunc i64 %index to i32
  %i.cy = shl i32 %i.cx, 1                        ; 4 uses
  %i.cz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %lsr.iv1, i64 %i.cz
  %.reass = add i32 %i.cy, %invariant.op
  %.reass41 = add i32 %i.cy, %invariant.op40
  %.reass43 = add i32 %i.cy, %invariant.op42
  %.reass45 = add i32 %i.cy, %invariant.op44
  %i.da = sext i32 %.reass45 to i64
  %i.db = getelementptr [4 x i8], ptr %f8.host, i64 %i.da ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  %wide.vec = load <8 x float>, ptr %i.dc, align 4, !tbaa !35 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec13 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dd = getelementptr i8, ptr %i.db, i64 -4
  %wide.vec14 = load <8 x float>, ptr %i.dd, align 4, !tbaa !35 ; 2 uses
  %strided.vec15 = shufflevector <8 x float> %wide.vec14, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec16 = shufflevector <8 x float> %wide.vec14, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.de = fadd <4 x float> %strided.vec, %strided.vec16
  %i.df = fmul <4 x float> %i.de, splat (float 3.000000e+00)
  %i.dg = fadd <4 x float> %strided.vec15, %i.df
  %i.dh = fadd <4 x float> %strided.vec13, %i.dg
  %i.di = fmul <4 x float> %i.dh, splat (float 1.250000e-01)
  %i.dj = sext i32 %.reass43 to i64
  %i.dk = getelementptr [4 x i8], ptr %f8.host, i64 %i.dj ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %wide.vec17 = load <8 x float>, ptr %i.dl, align 4, !tbaa !35 ; 2 uses
  %strided.vec18 = shufflevector <8 x float> %wide.vec17, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec19 = shufflevector <8 x float> %wide.vec17, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dm = getelementptr i8, ptr %i.dk, i64 -4
  %wide.vec20 = load <8 x float>, ptr %i.dm, align 4, !tbaa !35 ; 2 uses
  %strided.vec21 = shufflevector <8 x float> %wide.vec20, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec22 = shufflevector <8 x float> %wide.vec20, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dn = fadd <4 x float> %strided.vec18, %strided.vec22
  %i.do = fmul <4 x float> %i.dn, splat (float 3.000000e+00)
  %i.dp = fadd <4 x float> %strided.vec21, %i.do
  %i.dq = fadd <4 x float> %strided.vec19, %i.dp
  %i.dr = sext i32 %.reass41 to i64
  %i.ds = getelementptr [4 x i8], ptr %f8.host, i64 %i.dr ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  %wide.vec23 = load <8 x float>, ptr %i.dt, align 4, !tbaa !35 ; 2 uses
  %strided.vec24 = shufflevector <8 x float> %wide.vec23, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec25 = shufflevector <8 x float> %wide.vec23, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.du = getelementptr i8, ptr %i.ds, i64 -4
  %wide.vec26 = load <8 x float>, ptr %i.du, align 4, !tbaa !35 ; 2 uses
  %strided.vec27 = shufflevector <8 x float> %wide.vec26, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec28 = shufflevector <8 x float> %wide.vec26, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dv = fadd <4 x float> %strided.vec24, %strided.vec28
  %i.dw = fmul <4 x float> %i.dv, splat (float 3.000000e+00)
  %i.dx = fadd <4 x float> %strided.vec27, %i.dw
  %i.dy = fadd <4 x float> %strided.vec25, %i.dx
  %i.dz = fadd <4 x float> %i.dq, %i.dy
  %i.ea = fmul <4 x float> %i.dz, splat (float 3.750000e-01)
  %i.eb = sext i32 %.reass to i64
  %i.ec = getelementptr [4 x i8], ptr %f8.host, i64 %i.eb ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 4
  %wide.vec29 = load <8 x float>, ptr %i.ed, align 4, !tbaa !35 ; 2 uses
  %strided.vec30 = shufflevector <8 x float> %wide.vec29, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec31 = shufflevector <8 x float> %wide.vec29, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ee = getelementptr i8, ptr %i.ec, i64 -4
  %wide.vec32 = load <8 x float>, ptr %i.ee, align 4, !tbaa !35 ; 2 uses
  %strided.vec33 = shufflevector <8 x float> %wide.vec32, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec34 = shufflevector <8 x float> %wide.vec32, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ef = fadd <4 x float> %strided.vec30, %strided.vec34
  %i.eg = fmul <4 x float> %i.ef, splat (float 3.000000e+00)
  %i.eh = fadd <4 x float> %strided.vec33, %i.eg
  %i.ei = fadd <4 x float> %strided.vec31, %i.eh
  %i.ej = fmul <4 x float> %i.ei, splat (float 1.250000e-01)
  %i.ek = fadd <4 x float> %i.ea, %i.ej
  %i.el = fadd <4 x float> %i.di, %i.ek
  %i.em = fmul <4 x float> %i.el, splat (float 1.250000e-01)
  store <4 x float> %i.em, ptr %next.gep, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"end for f9.s0.v3.loopexit", label %"for f9.s0.v3.preheader"

"for f9.s0.v3.preheader":                         ; preds = %vector.scevcheck, %"for f9.s0.v4", %middle.block
  %lsr.iv21.ph = phi i32 [ %lsr.iv19, %vector.scevcheck ], [ %lsr.iv19, %"for f9.s0.v4" ], [ %i.cs, %middle.block ]
  %lsr.iv17.ph = phi i32 [ %lsr.iv15, %vector.scevcheck ], [ %lsr.iv15, %"for f9.s0.v4" ], [ %i.ct, %middle.block ]
  %lsr.iv13.ph = phi i32 [ %lsr.iv10, %vector.scevcheck ], [ %lsr.iv10, %"for f9.s0.v4" ], [ %i.cu, %middle.block ]
  %lsr.iv8.ph = phi i32 [ %lsr.iv6, %vector.scevcheck ], [ %lsr.iv6, %"for f9.s0.v4" ], [ %i.cv, %middle.block ]
  %lsr.iv4.ph = phi ptr [ %lsr.iv1, %vector.scevcheck ], [ %lsr.iv1, %"for f9.s0.v4" ], [ %i.cw, %middle.block ]
  %lsr.iv.ph = phi i32 [ %i.o, %vector.scevcheck ], [ %i.o, %"for f9.s0.v4" ], [ %i.ce, %middle.block ]
  br label %"for f9.s0.v3"

"for f9.s0.v3":                                   ; preds = %"for f9.s0.v3.preheader", %"for f9.s0.v3"
  %lsr.iv21 = phi i32 [ %lsr.iv.next22, %"for f9.s0.v3" ], [ %lsr.iv21.ph, %"for f9.s0.v3.preheader" ] ; 2 uses
  %lsr.iv17 = phi i32 [ %lsr.iv.next18, %"for f9.s0.v3" ], [ %lsr.iv17.ph, %"for f9.s0.v3.preheader" ] ; 2 uses
  %lsr.iv13 = phi i32 [ %lsr.iv.next14, %"for f9.s0.v3" ], [ %lsr.iv13.ph, %"for f9.s0.v3.preheader" ] ; 2 uses
  %lsr.iv8 = phi i32 [ %lsr.iv.next9, %"for f9.s0.v3" ], [ %lsr.iv8.ph, %"for f9.s0.v3.preheader" ] ; 2 uses
  %lsr.iv4 = phi ptr [ %scevgep5, %"for f9.s0.v3" ], [ %lsr.iv4.ph, %"for f9.s0.v3.preheader" ] ; 2 uses
  %lsr.iv = phi i32 [ %lsr.iv.next, %"for f9.s0.v3" ], [ %lsr.iv.ph, %"for f9.s0.v3.preheader" ]
  %i.eo = add i32 %lsr.iv21, %i.v
  %i.ep = add i32 %lsr.iv17, %i.v
  %i.eq = add i32 %lsr.iv13, %i.v
  %i.er = add i32 %lsr.iv8, %i.v
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr [4 x i8], ptr %f8.host, i64 %i.es ; 4 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !35
  %i.ew = getelementptr i8, ptr %i.et, i64 4
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !35
  %i.ey = load float, ptr %i.et, align 4, !tbaa !35
  %i.ez = fadd float %i.ex, %i.ey
  %i.fa = fmul float %i.ez, 3.000000e+00
  %i.fb = getelementptr i8, ptr %i.et, i64 -4
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !35
  %i.fd = fadd float %i.fc, %i.fa
  %i.fe = fadd float %i.ev, %i.fd
  %i.ff = fmul float %i.fe, 1.250000e-01
  %i.fg = sext i32 %i.eq to i64
  %i.fh = getelementptr [4 x i8], ptr %f8.host, i64 %i.fg ; 4 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !35
  %i.fk = getelementptr i8, ptr %i.fh, i64 4
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !35
  %i.fm = load float, ptr %i.fh, align 4, !tbaa !35
  %i.fn = fadd float %i.fl, %i.fm
  %i.fo = fmul float %i.fn, 3.000000e+00
  %i.fp = getelementptr i8, ptr %i.fh, i64 -4
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !35
  %i.fr = fadd float %i.fq, %i.fo
  %i.fs = fadd float %i.fj, %i.fr
  %i.ft = sext i32 %i.ep to i64
  %i.fu = getelementptr [4 x i8], ptr %f8.host, i64 %i.ft ; 4 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 8
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !35
  %i.fx = getelementptr i8, ptr %i.fu, i64 4
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !35
  %i.fz = load float, ptr %i.fu, align 4, !tbaa !35
  %i.ga = fadd float %i.fy, %i.fz
  %i.gb = fmul float %i.ga, 3.000000e+00
  %i.gc = getelementptr i8, ptr %i.fu, i64 -4
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !35
  %i.ge = fadd float %i.gd, %i.gb
  %i.gf = fadd float %i.fw, %i.ge
  %i.gg = fadd float %i.fs, %i.gf
  %i.gh = fmul float %i.gg, 3.750000e-01
  %i.gi = sext i32 %i.eo to i64
  %i.gj = getelementptr [4 x i8], ptr %f8.host, i64 %i.gi ; 4 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !35
  %i.gm = getelementptr i8, ptr %i.gj, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !35
  %i.go = load float, ptr %i.gj, align 4, !tbaa !35
  %i.gp = fadd float %i.gn, %i.go
  %i.gq = fmul float %i.gp, 3.000000e+00
  %i.gr = getelementptr i8, ptr %i.gj, i64 -4
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !35
  %i.gt = fadd float %i.gs, %i.gq
  %i.gu = fadd float %i.gl, %i.gt
  %i.gv = fmul float %i.gu, 1.250000e-01
  %i.gw = fadd float %i.gh, %i.gv
  %i.gx = fadd float %i.ff, %i.gw
  %i.gy = fmul float %i.gx, 1.250000e-01
  store float %i.gy, ptr %lsr.iv4, align 4, !tbaa !31
  %lsr.iv.next = add i32 %lsr.iv, -1              ; 2 uses
  %scevgep5 = getelementptr i8, ptr %lsr.iv4, i64 4
  %lsr.iv.next9 = add i32 %lsr.iv8, 2
  %lsr.iv.next14 = add i32 %lsr.iv13, 2
  %lsr.iv.next18 = add i32 %lsr.iv17, 2
  %lsr.iv.next22 = add i32 %lsr.iv21, 2
  %.not = icmp eq i32 %lsr.iv.next, 0
  br i1 %.not, label %"end for f9.s0.v3.loopexit", label %"for f9.s0.v3", !llvm.loop !60

"end for f9.s0.v3.loopexit":                      ; preds = %"for f9.s0.v3", %middle.block
  %i.gz = add nsw i32 %f9.s0.v4, 1
  %scevgep3 = getelementptr i8, ptr %lsr.iv1, i64 %i.r
  %lsr.iv.next7 = add i32 %lsr.iv6, %i.t
  %lsr.iv.next11 = add i32 %lsr.iv10, %i.t
  %lsr.iv.next16 = add i32 %lsr.iv15, %i.t
  %lsr.iv.next20 = add i32 %lsr.iv19, %i.t
  %.not2 = icmp eq i32 %f9.s0.v4, %f9.s0.v4.max
  %indvar.next = add i32 %indvar, 1
  br i1 %.not2, label %destructor_block, label %"for f9.s0.v4"

destructor_block:                                 ; preds = %"end for f9.s0.v3.loopexit", %"for f9.s0.v4.preheader", %entry
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @par_for___local_laplacian_f10.s0.v6(ptr nofree readnone captures(none) %__user_context, i32 %f10.s0.v6, ptr noalias nofree readonly captures(none) %closure) #2 {
entry:
  %i.a = getelementptr inbounds nuw i8, ptr %closure, i64 12
  %f10.v4.extent_realized.s = load i32, ptr %i.a, align 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %closure, i64 36
  %local_laplacian.min.1 = load i32, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %closure, i64 40
  %f10.host = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %closure, i64 56
  %f9.host = load ptr, ptr %i.d, align 8          ; 8 uses
  %i.e = add nsw i32 %local_laplacian.min.1, -254
  %i.f = ashr i32 %i.e, 7                         ; 3 uses
  %i.g = add nsw i32 %f10.v4.extent_realized.s, 1
  %i.h = add nsw i32 %i.g, %i.f
  %i.i = icmp sgt i32 %f10.v4.extent_realized.s, -1
  br i1 %i.i, label %"for f10.s0.v4.preheader", label %destructor_block, !prof !5

"for f10.s0.v4.preheader":                        ; preds = %entry
  %i.j = getelementptr inbounds nuw i8, ptr %closure, i64 32
  %local_laplacian.min.0 = load i32, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %closure, i64 16
  %f9.stride.2 = load i32, ptr %i.k, align 8
  %a744 = load i32, ptr %closure, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %closure, i64 24
  %f9.v3.min_realized = load i32, ptr %i.l, align 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %closure, i64 20
  %f9.v3.extent_realized.s.s = load i32, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %closure, i64 8
  %f10.v3.extent_realized.s = load i32, ptr %i.n, align 8 ; 4 uses
  %i.o = sext i32 %f10.v3.extent_realized.s to i64
  %i.p = getelementptr inbounds nuw i8, ptr %closure, i64 4
  %f10.stride.2 = load i32, ptr %i.p, align 4
  %i.q = sext i32 %f10.stride.2 to i64
  %i.r = add i32 %f10.v3.extent_realized.s, 1     ; 5 uses
  %i.s = add nsw i64 %i.o, 1
  %i.t = sext i32 %i.f to i64                     ; 2 uses
  %i.u = sext i32 %f10.s0.v6 to i64
  %i.v = tail call i32 @llvm.smax.i32(i32 %a744, i32 0) ; 2 uses
  %smax = zext nneg i32 %i.v to i64
  %i.w = sub nsw i64 %i.u, %smax
  %i.x = mul nsw i64 %i.w, %i.q
  %reass.sub = sub i32 %f9.v3.extent_realized.s.s, %f9.v3.min_realized
  %i.y = add i32 %reass.sub, 1                    ; 7 uses
  %i.z = shl i32 %i.y, 1                          ; 4 uses
  %i.aa = icmp ult i32 %f10.v3.extent_realized.s, 2147483647
  %i.ab = add nsw i32 %local_laplacian.min.0, -254
  %i.ac = ashr i32 %i.ab, 7                       ; 2 uses
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = add nsw i64 %i.x, %i.ad                 ; 4 uses
  %i.af = shl nsw i32 %i.ac, 1                    ; 2 uses
  %t2168.s = sub i32 %f10.s0.v6, %i.v
  %i.ag = mul i32 %t2168.s, %f9.stride.2          ; 2 uses
  %i.ah = add i32 %i.ag, %i.af                    ; 8 uses
  br i1 %i.aa, label %"for f10.s0.v4.preheader4", label %destructor_block, !prof !5

"for f10.s0.v4.preheader4":                       ; preds = %"for f10.s0.v4.preheader"
  %i.ai = getelementptr inbounds nuw i8, ptr %closure, i64 28
  %i.aj = shl i32 %i.y, 1
  %i.ak = shl nsw i32 %i.f, 1                     ; 5 uses
  %f9.v4.min_realized = load i32, ptr %i.ai, align 4 ; 5 uses
  %i.al = xor i32 %f9.v4.min_realized, -1
  %i.am = add nsw i32 %i.ak, 2
  %i.an = or disjoint i32 %i.ak, 1
  %i.ao = add i32 %i.ak, %i.al
  %i.ap = sub i32 %i.ak, %f9.v4.min_realized
  %i.aq = sub i32 %i.an, %f9.v4.min_realized
  %i.ar = sub i32 %i.am, %f9.v4.min_realized
  %i.as = mul i32 %i.y, %i.ao                     ; 2 uses
  %i.at = mul i32 %i.y, %i.ap                     ; 2 uses
  %i.au = mul i32 %i.y, %i.aq
  %i.av = mul i32 %i.y, %i.ar                     ; 2 uses
  %i.aw = sub i32 %i.as, %f9.v3.min_realized
  %i.ax = sub i32 %i.at, %f9.v3.min_realized
  %i.ay = or disjoint i32 %i.ak, 1
  %i.az = sub i32 %i.ay, %f9.v4.min_realized
  %i.ba = mul i32 %i.y, %i.az
  %i.bb = sub i32 %i.ba, %f9.v3.min_realized
  %i.bc = sub i32 %i.av, %f9.v3.min_realized
  %i.bd = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.au, i64 1
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.at, i64 2
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.as, i64 3
  %i.bh = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.bi = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.bj = add <4 x i32> %i.bi, %i.bh
  %i.bk = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bl = add <4 x i32> %i.bk, %i.bg
  %i.bm = insertelement <4 x i32> poison, i32 %f9.v3.min_realized, i64 0
  %i.bn = shufflevector <4 x i32> %i.bm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bo = sub <4 x i32> %i.bl, %i.bn              ; 2 uses
  %0 = insertelement <4 x i32> poison, i32 %f10.v3.extent_realized.s, i64 0
  %1 = zext i32 %i.r to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.r, 8
  %i.bp = shl nuw <4 x i32> %0, <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op48 = add <4 x i32> %i.bo, %i.bq
  %n.vec = and i64 %1, 4294967292                 ; 4 uses
  %i.br = trunc nuw i64 %n.vec to i32             ; 2 uses
  %i.bs = shl i32 %i.br, 1                        ; 4 uses
  %i.bt = add i64 %i.ae, %n.vec
  %i.bu = sub i32 %i.r, %i.br
  %cmp.n = icmp eq i64 %n.vec, %1
  br label %"for f10.s0.v4"

"for f10.s0.v4":                                  ; preds = %"for f10.s0.v4.preheader4", %"end for f10.s0.v3.loopexit"
  %indvar = phi i32 [ 0, %"for f10.s0.v4.preheader4" ], [ %indvar.next, %"end for f10.s0.v3.loopexit" ] ; 2 uses
  %lsr.iv17 = phi i32 [ %i.aw, %"for f10.s0.v4.preheader4" ], [ %lsr.iv.next18, %"end for f10.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv13 = phi i32 [ %i.ax, %"for f10.s0.v4.preheader4" ], [ %lsr.iv.next14, %"end for f10.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv9 = phi i32 [ %i.bb, %"for f10.s0.v4.preheader4" ], [ %lsr.iv.next10, %"end for f10.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv5 = phi i32 [ %i.bc, %"for f10.s0.v4.preheader4" ], [ %lsr.iv.next6, %"end for f10.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv1 = phi i64 [ %i.t, %"for f10.s0.v4.preheader4" ], [ %lsr.iv.next2, %"end for f10.s0.v3.loopexit" ] ; 2 uses
  %i.bv = sub nsw i64 %lsr.iv1, %i.t
  %i.bw = mul i64 %i.bv, %i.s
  %i.bx = sub i64 %i.bw, %i.ad
  %invariant.gep = getelementptr [4 x i8], ptr %f10.host, i64 %i.bx ; 2 uses
  br i1 %min.iters.check, label %"for f10.s0.v3.preheader", label %vector.scevcheck

vector.scevcheck:                                 ; preds = %"for f10.s0.v4"
  %i.by = mul i32 %i.aj, %indvar
  %i.bz = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %i.ca = shufflevector <4 x i32> %i.bz, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cb = add <4 x i32> %i.bo, %i.ca
  %.reass49 = add <4 x i32> %i.ca, %invariant.op48
  %i.cc = icmp slt <4 x i32> %.reass49, %i.cb
  %i.cd = bitcast <4 x i1> %i.cc to i4
  %.not41 = icmp eq i4 %i.cd, 0
  br i1 %.not41, label %vector.ph, label %"for f10.s0.v3.preheader"

vector.ph:                                        ; preds = %vector.scevcheck
  %i.ce = add i32 %lsr.iv17, %i.bs
  %i.cf = add i32 %lsr.iv13, %i.bs
  %i.cg = add i32 %lsr.iv9, %i.bs
  %i.ch = add i32 %lsr.iv5, %i.bs
  %invariant.op = add i32 %lsr.iv17, %i.ah
  %invariant.op42 = add i32 %lsr.iv13, %i.ah
  %invariant.op44 = add i32 %lsr.iv9, %i.ah
  %invariant.op46 = add i32 %lsr.iv5, %i.ah
  %i.ci = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cj = trunc i64 %index to i32
  %i.ck = shl i32 %i.cj, 1                        ; 4 uses
  %.reass = add i32 %i.ck, %invariant.op
  %.reass43 = add i32 %i.ck, %invariant.op42
  %.reass45 = add i32 %i.ck, %invariant.op44
  %.reass47 = add i32 %i.ck, %invariant.op46
  %i.cl = sext i32 %.reass47 to i64
  %i.cm = getelementptr [4 x i8], ptr %f9.host, i64 %i.cl ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 4
  %wide.vec = load <8 x float>, ptr %i.cn, align 4, !tbaa !31 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec14 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.co = getelementptr i8, ptr %i.cm, i64 -4
  %wide.vec15 = load <8 x float>, ptr %i.co, align 4, !tbaa !31 ; 2 uses
  %strided.vec16 = shufflevector <8 x float> %wide.vec15, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec17 = shufflevector <8 x float> %wide.vec15, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cp = fadd <4 x float> %strided.vec, %strided.vec17
  %i.cq = fmul <4 x float> %i.cp, splat (float 3.000000e+00)
  %i.cr = fadd <4 x float> %strided.vec16, %i.cq
  %i.cs = fadd <4 x float> %strided.vec14, %i.cr
  %i.ct = fmul <4 x float> %i.cs, splat (float 1.250000e-01)
  %i.cu = sext i32 %.reass45 to i64
  %i.cv = getelementptr [4 x i8], ptr %f9.host, i64 %i.cu ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %wide.vec18 = load <8 x float>, ptr %i.cw, align 4, !tbaa !31 ; 2 uses
  %strided.vec19 = shufflevector <8 x float> %wide.vec18, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec20 = shufflevector <8 x float> %wide.vec18, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cx = getelementptr i8, ptr %i.cv, i64 -4
  %wide.vec21 = load <8 x float>, ptr %i.cx, align 4, !tbaa !31 ; 2 uses
  %strided.vec22 = shufflevector <8 x float> %wide.vec21, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec23 = shufflevector <8 x float> %wide.vec21, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cy = fadd <4 x float> %strided.vec19, %strided.vec23
  %i.cz = fmul <4 x float> %i.cy, splat (float 3.000000e+00)
  %i.da = fadd <4 x float> %strided.vec22, %i.cz
  %i.db = fadd <4 x float> %strided.vec20, %i.da
  %i.dc = sext i32 %.reass43 to i64
  %i.dd = getelementptr [4 x i8], ptr %f9.host, i64 %i.dc ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 4
  %wide.vec24 = load <8 x float>, ptr %i.de, align 4, !tbaa !31 ; 2 uses
  %strided.vec25 = shufflevector <8 x float> %wide.vec24, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec26 = shufflevector <8 x float> %wide.vec24, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.df = getelementptr i8, ptr %i.dd, i64 -4
  %wide.vec27 = load <8 x float>, ptr %i.df, align 4, !tbaa !31 ; 2 uses
  %strided.vec28 = shufflevector <8 x float> %wide.vec27, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec29 = shufflevector <8 x float> %wide.vec27, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dg = fadd <4 x float> %strided.vec25, %strided.vec29
  %i.dh = fmul <4 x float> %i.dg, splat (float 3.000000e+00)
  %i.di = fadd <4 x float> %strided.vec28, %i.dh
  %i.dj = fadd <4 x float> %strided.vec26, %i.di
  %i.dk = fadd <4 x float> %i.db, %i.dj
  %i.dl = fmul <4 x float> %i.dk, splat (float 3.750000e-01)
  %i.dm = sext i32 %.reass to i64
  %i.dn = getelementptr [4 x i8], ptr %f9.host, i64 %i.dm ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %wide.vec30 = load <8 x float>, ptr %i.do, align 4, !tbaa !31 ; 2 uses
  %strided.vec31 = shufflevector <8 x float> %wide.vec30, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec32 = shufflevector <8 x float> %wide.vec30, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dp = getelementptr i8, ptr %i.dn, i64 -4
  %wide.vec33 = load <8 x float>, ptr %i.dp, align 4, !tbaa !31 ; 2 uses
  %strided.vec34 = shufflevector <8 x float> %wide.vec33, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec35 = shufflevector <8 x float> %wide.vec33, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dq = fadd <4 x float> %strided.vec31, %strided.vec35
  %i.dr = fmul <4 x float> %i.dq, splat (float 3.000000e+00)
  %i.ds = fadd <4 x float> %strided.vec34, %i.dr
  %i.dt = fadd <4 x float> %strided.vec32, %i.ds
  %i.du = fmul <4 x float> %i.dt, splat (float 1.250000e-01)
  %i.dv = fadd <4 x float> %i.dl, %i.du
  %i.dw = fadd <4 x float> %i.ct, %i.dv
  %i.dx = fmul <4 x float> %i.dw, splat (float 1.250000e-01)
  %i.dy = getelementptr [4 x i8], ptr %i.ci, i64 %index
  store <4 x float> %i.dx, ptr %i.dy, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"end for f10.s0.v3.loopexit", label %"for f10.s0.v3.preheader"

"for f10.s0.v3.preheader":                        ; preds = %vector.scevcheck, %"for f10.s0.v4", %middle.block
  %lsr.iv19.ph = phi i32 [ %lsr.iv17, %vector.scevcheck ], [ %lsr.iv17, %"for f10.s0.v4" ], [ %i.ce, %middle.block ]
  %lsr.iv15.ph = phi i32 [ %lsr.iv13, %vector.scevcheck ], [ %lsr.iv13, %"for f10.s0.v4" ], [ %i.cf, %middle.block ]
  %lsr.iv11.ph = phi i32 [ %lsr.iv9, %vector.scevcheck ], [ %lsr.iv9, %"for f10.s0.v4" ], [ %i.cg, %middle.block ]
  %lsr.iv7.ph = phi i32 [ %lsr.iv5, %vector.scevcheck ], [ %lsr.iv5, %"for f10.s0.v4" ], [ %i.ch, %middle.block ]
  %lsr.iv3.ph = phi i64 [ %i.ae, %vector.scevcheck ], [ %i.ae, %"for f10.s0.v4" ], [ %i.bt, %middle.block ]
  %lsr.iv.ph = phi i32 [ %i.r, %vector.scevcheck ], [ %i.r, %"for f10.s0.v4" ], [ %i.bu, %middle.block ]
  br label %"for f10.s0.v3"

"for f10.s0.v3":                                  ; preds = %"for f10.s0.v3.preheader", %"for f10.s0.v3"
  %lsr.iv19 = phi i32 [ %lsr.iv.next20, %"for f10.s0.v3" ], [ %lsr.iv19.ph, %"for f10.s0.v3.preheader" ] ; 2 uses
  %lsr.iv15 = phi i32 [ %lsr.iv.next16, %"for f10.s0.v3" ], [ %lsr.iv15.ph, %"for f10.s0.v3.preheader" ] ; 2 uses
  %lsr.iv11 = phi i32 [ %lsr.iv.next12, %"for f10.s0.v3" ], [ %lsr.iv11.ph, %"for f10.s0.v3.preheader" ] ; 2 uses
  %lsr.iv7 = phi i32 [ %lsr.iv.next8, %"for f10.s0.v3" ], [ %lsr.iv7.ph, %"for f10.s0.v3.preheader" ] ; 2 uses
  %lsr.iv3 = phi i64 [ %lsr.iv.next4, %"for f10.s0.v3" ], [ %lsr.iv3.ph, %"for f10.s0.v3.preheader" ] ; 2 uses
  %lsr.iv = phi i32 [ %lsr.iv.next, %"for f10.s0.v3" ], [ %lsr.iv.ph, %"for f10.s0.v3.preheader" ]
  %i.ea = add i32 %i.ah, %lsr.iv19
  %i.eb = add i32 %i.ah, %lsr.iv15
  %i.ec = add i32 %i.ah, %lsr.iv11
  %i.ed = add i32 %i.ah, %lsr.iv7
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr [4 x i8], ptr %f9.host, i64 %i.ee ; 4 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !31
  %i.ei = getelementptr i8, ptr %i.ef, i64 4
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !31
  %i.ek = load float, ptr %i.ef, align 4, !tbaa !31
  %i.el = fadd float %i.ej, %i.ek
  %i.em = fmul float %i.el, 3.000000e+00
  %i.en = getelementptr i8, ptr %i.ef, i64 -4
  %i.eo = load float, ptr %i.en, align 4, !tbaa !31
  %i.ep = fadd float %i.eo, %i.em
  %i.eq = fadd float %i.eh, %i.ep
  %i.er = fmul float %i.eq, 1.250000e-01
  %i.es = sext i32 %i.ec to i64
  %i.et = getelementptr [4 x i8], ptr %f9.host, i64 %i.es ; 4 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !31
  %i.ew = getelementptr i8, ptr %i.et, i64 4
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !31
  %i.ey = load float, ptr %i.et, align 4, !tbaa !31
  %i.ez = fadd float %i.ex, %i.ey
  %i.fa = fmul float %i.ez, 3.000000e+00
  %i.fb = getelementptr i8, ptr %i.et, i64 -4
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !31
  %i.fd = fadd float %i.fc, %i.fa
  %i.fe = fadd float %i.ev, %i.fd
  %i.ff = sext i32 %i.eb to i64
  %i.fg = getelementptr [4 x i8], ptr %f9.host, i64 %i.ff ; 4 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !31
  %i.fj = getelementptr i8, ptr %i.fg, i64 4
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !31
  %i.fl = load float, ptr %i.fg, align 4, !tbaa !31
  %i.fm = fadd float %i.fk, %i.fl
  %i.fn = fmul float %i.fm, 3.000000e+00
  %i.fo = getelementptr i8, ptr %i.fg, i64 -4
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !31
  %i.fq = fadd float %i.fp, %i.fn
  %i.fr = fadd float %i.fi, %i.fq
  %i.fs = fadd float %i.fe, %i.fr
  %i.ft = fmul float %i.fs, 3.750000e-01
  %i.fu = sext i32 %i.ea to i64
  %i.fv = getelementptr [4 x i8], ptr %f9.host, i64 %i.fu ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !31
  %i.fy = getelementptr i8, ptr %i.fv, i64 4
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !31
  %i.ga = load float, ptr %i.fv, align 4, !tbaa !31
  %i.gb = fadd float %i.fz, %i.ga
  %i.gc = fmul float %i.gb, 3.000000e+00
  %i.gd = getelementptr i8, ptr %i.fv, i64 -4
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !31
  %i.gf = fadd float %i.ge, %i.gc
  %i.gg = fadd float %i.fx, %i.gf
  %i.gh = fmul float %i.gg, 1.250000e-01
  %i.gi = fadd float %i.ft, %i.gh
  %i.gj = fadd float %i.er, %i.gi
  %i.gk = fmul float %i.gj, 1.250000e-01
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %lsr.iv3
  store float %i.gk, ptr %gep, align 4, !tbaa !27
  %lsr.iv.next = add i32 %lsr.iv, -1              ; 2 uses
end_hunk_2
