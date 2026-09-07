Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/destructors?download=true
begin_hunk_0_@__local_laplacian:entry
  %i.afo = lshr i64 %i.afh, 30
  %i.afp = mul nuw nsw i64 %i.afo, %i.aff
  %i.afq = add nuw nsw i64 %i.afn, %i.afp
  %i.afr = icmp samesign ult i64 %i.afq, 4294967296
  %i.afs = and i1 %i.afk, %i.afr
  br i1 %i.afs, label %"assert succeeded158", label %"assert failed157", !prof !5

"assert failed157":                               ; preds = %"consume f8"
  %i.aft = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.19, i64 %i.afj, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded158":                            ; preds = %"consume f8"
  %i.afu = add nuw nsw i64 %i.afj, 4
  %i.afv = call ptr @halide_malloc(ptr null, i64 %i.afu) ; 29 uses
  %.not554 = icmp eq ptr %i.afv, null
  br i1 %.not554, label %"assert failed159", label %"produce f75", !prof !4

"assert failed159":                               ; preds = %"assert succeeded158"
  %i.afw = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f75":                                    ; preds = %"assert succeeded158"
  %i.afx = add nsw i32 %i.abi, 1
  store i32 %f74.v3.extent_realized.s, ptr %3, align 8
  %i.afy = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %f74.v3.min_realized, ptr %i.afy, align 4
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
  %i.aje = xor i32 %f75.v4.min_realized, -1
  %i.ajf = add i32 %i.bd, %i.aje                  ; 2 uses
  %i.ajg = mul i32 %i.afg, %i.ajf
  %i.ajh = sub i32 %i.ajg, %f75.v3.min_realized
  %i.aji = sub i32 %i.bd, %f75.v4.min_realized    ; 2 uses
  %i.ajj = mul i32 %i.afg, %i.aji
  %i.ajk = sub i32 %i.ajj, %f75.v3.min_realized
  %i.ajl = or disjoint i32 %i.bd, 1
  %i.ajm = sub nsw i32 %i.ajl, %f75.v4.min_realized
  %i.ajn = mul i32 %i.afg, %i.ajm
  %i.ajo = sub i32 %i.ajn, %f75.v3.min_realized
  %i.ajp = add nsw i32 %i.bd, 2
  %i.ajq = sub nsw i32 %i.ajp, %f75.v4.min_realized
  %i.ajr = mul i32 %i.afg, %i.ajq
  %i.ajs = sub i32 %i.ajr, %f75.v3.min_realized
  %i.ajt = add i32 %i.bd, 2
  %i.aju = sub i32 %i.ajt, %f75.v4.min_realized
  %i.ajv = mul i32 %i.aju, %i.afg
  %i.ajw = add i32 %i.ajv, %i.bh
  %i.ajx = sub i32 %i.ajw, %f75.v3.min_realized
  %i.ajy = shl i32 %i.afg, 1
  %i.ajz = or disjoint i32 %i.bd, 1
  %i.aka = sub i32 %i.ajz, %f75.v4.min_realized
  %i.akb = mul i32 %i.afg, %i.aka
  %i.akc = add i32 %i.akb, %i.bh
  %i.akd = sub i32 %i.akc, %f75.v3.min_realized
  %i.ake = mul i32 %i.afg, %i.aji
  %i.akf = add i32 %i.ake, %i.bh
  %i.akg = sub i32 %i.akf, %f75.v3.min_realized
  %i.akh = mul i32 %i.ajf, %i.afg
  %i.aki = add i32 %i.akh, %i.bh
  %i.akj = sub i32 %i.aki, %f75.v3.min_realized
  %i.akk = zext i32 %reass.sub1003 to i64
  %i.akl = add nuw nsw i64 %i.akk, 1              ; 2 uses
  %min.iters.check1352 = icmp ult i32 %reass.sub1003, 3
  %mul.result = shl i32 %reass.sub1003, 1         ; 4 uses
  %n.vec1354 = and i64 %i.akl, 4294967292         ; 4 uses
  %i.akm = trunc nuw i64 %n.vec1354 to i32        ; 2 uses
  %i.akn = shl i32 %i.akm, 1                      ; 4 uses
  %i.ako = shl nuw nsw i64 %n.vec1354, 2
  %i.akp = sub i32 %i.aiz, %i.akm
  %cmp.n1381 = icmp eq i64 %i.akl, %n.vec1354
  br label %"for f76.s0.v4"

"for f76.s0.v4":                                  ; preds = %"for f76.s0.v4.preheader1022", %"end for f76.s0.v3.loopexit"
  %indvar = phi i32 [ 0, %"for f76.s0.v4.preheader1022" ], [ %indvar.next, %"end for f76.s0.v3.loopexit" ] ; 2 uses
  %lsr.iv474 = phi i32 [ %i.ajh, %"for f76.s0.v4.preheader1022" ], [ %lsr.iv.next475, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv470 = phi i32 [ %i.ajk, %"for f76.s0.v4.preheader1022" ], [ %lsr.iv.next471, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv466 = phi i32 [ %i.ajo, %"for f76.s0.v4.preheader1022" ], [ %lsr.iv.next467, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv462 = phi i32 [ %i.ajs, %"for f76.s0.v4.preheader1022" ], [ %lsr.iv.next463, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv456 = phi ptr [ %i.aiw, %"for f76.s0.v4.preheader1022" ], [ %scevgep458, %"end for f76.s0.v3.loopexit" ] ; 5 uses
  %f76.s0.v4 = phi i32 [ %b733, %"for f76.s0.v4.preheader1022" ], [ %i.api, %"end for f76.s0.v3.loopexit" ] ; 2 uses
  br i1 %min.iters.check1352, label %"for f76.s0.v3.preheader", label %vector.scevcheck

vector.scevcheck:                                 ; preds = %"for f76.s0.v4"
  %i.akq = mul i32 %i.ajy, %indvar                ; 4 uses
  %i.akr = add i32 %i.akj, %i.akq                 ; 2 uses
  %i.aks = add i32 %i.akg, %i.akq                 ; 2 uses
  %i.akt = add i32 %i.akd, %i.akq                 ; 2 uses
  %i.aku = add i32 %i.ajx, %i.akq                 ; 2 uses
  %i.akv = add i32 %i.aku, %mul.result
  %i.akw = icmp slt i32 %i.akv, %i.aku
  %i.akx = add i32 %i.akt, %mul.result
  %i.aky = icmp slt i32 %i.akx, %i.akt
  %i.akz = add i32 %i.aks, %mul.result
  %i.ala = icmp slt i32 %i.akz, %i.aks
  %i.alb = add i32 %i.akr, %mul.result
  %i.alc = icmp slt i32 %i.alb, %i.akr
  %i.ald = or i1 %i.aky, %i.akw
  %i.ale = or i1 %i.ald, %i.ala
  %i.alf = or i1 %i.alc, %i.ale
  br i1 %i.alf, label %"for f76.s0.v3.preheader", label %vector.ph1353

vector.ph1353:                                    ; preds = %vector.scevcheck
  %i.alg = add i32 %lsr.iv474, %i.akn
  %i.alh = add i32 %lsr.iv470, %i.akn
  %i.ali = add i32 %lsr.iv466, %i.akn
  %i.alj = add i32 %lsr.iv462, %i.akn
  %i.alk = getelementptr i8, ptr %lsr.iv456, i64 %i.ako
  %invariant.op = add i32 %lsr.iv474, %i.bh
  %invariant.op1483 = add i32 %lsr.iv470, %i.bh
  %invariant.op1485 = add i32 %lsr.iv466, %i.bh
  %invariant.op1487 = add i32 %lsr.iv462, %i.bh
  br label %vector.body1355

vector.body1355:                                  ; preds = %vector.body1355, %vector.ph1353
  %index1356 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1379, %vector.body1355 ] ; 3 uses
  %i.all = trunc i64 %index1356 to i32
  %i.alm = shl i32 %i.all, 1                      ; 4 uses
  %i.aln = shl i64 %index1356, 2
  %next.gep = getelementptr i8, ptr %lsr.iv456, i64 %i.aln
  %.reass = add i32 %i.alm, %invariant.op
  %.reass1484 = add i32 %i.alm, %invariant.op1483
  %.reass1486 = add i32 %i.alm, %invariant.op1485
  %.reass1488 = add i32 %i.alm, %invariant.op1487
  %i.alo = sext i32 %.reass1488 to i64
  %i.alp = getelementptr [4 x i8], ptr %i.afv, i64 %i.alo ; 2 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 4
  %wide.vec = load <8 x float>, ptr %i.alq, align 4, !tbaa !12 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1357 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.alr = getelementptr i8, ptr %i.alp, i64 -4
  %wide.vec1358 = load <8 x float>, ptr %i.alr, align 4, !tbaa !12 ; 2 uses
  %strided.vec1359 = shufflevector <8 x float> %wide.vec1358, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1360 = shufflevector <8 x float> %wide.vec1358, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.als = fadd <4 x float> %strided.vec, %strided.vec1360
  %i.alt = fmul <4 x float> %i.als, splat (float 3.000000e+00)
  %i.alu = fadd <4 x float> %strided.vec1359, %i.alt
  %i.alv = fadd <4 x float> %strided.vec1357, %i.alu
  %i.alw = fmul <4 x float> %i.alv, splat (float 1.250000e-01)
  %i.alx = sext i32 %.reass1486 to i64
  %i.aly = getelementptr [4 x i8], ptr %i.afv, i64 %i.alx ; 2 uses
  %i.alz = getelementptr i8, ptr %i.aly, i64 4
  %wide.vec1361 = load <8 x float>, ptr %i.alz, align 4, !tbaa !12 ; 2 uses
  %strided.vec1362 = shufflevector <8 x float> %wide.vec1361, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1363 = shufflevector <8 x float> %wide.vec1361, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ama = getelementptr i8, ptr %i.aly, i64 -4
  %wide.vec1364 = load <8 x float>, ptr %i.ama, align 4, !tbaa !12 ; 2 uses
  %strided.vec1365 = shufflevector <8 x float> %wide.vec1364, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1366 = shufflevector <8 x float> %wide.vec1364, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.amb = fadd <4 x float> %strided.vec1362, %strided.vec1366
  %i.amc = fmul <4 x float> %i.amb, splat (float 3.000000e+00)
  %i.amd = fadd <4 x float> %strided.vec1365, %i.amc
  %i.ame = fadd <4 x float> %strided.vec1363, %i.amd
  %i.amf = sext i32 %.reass1484 to i64
  %i.amg = getelementptr [4 x i8], ptr %i.afv, i64 %i.amf ; 2 uses
  %i.amh = getelementptr i8, ptr %i.amg, i64 4
  %wide.vec1367 = load <8 x float>, ptr %i.amh, align 4, !tbaa !12 ; 2 uses
  %strided.vec1368 = shufflevector <8 x float> %wide.vec1367, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1369 = shufflevector <8 x float> %wide.vec1367, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ami = getelementptr i8, ptr %i.amg, i64 -4
  %wide.vec1370 = load <8 x float>, ptr %i.ami, align 4, !tbaa !12 ; 2 uses
  %strided.vec1371 = shufflevector <8 x float> %wide.vec1370, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1372 = shufflevector <8 x float> %wide.vec1370, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.amj = fadd <4 x float> %strided.vec1368, %strided.vec1372
  %i.amk = fmul <4 x float> %i.amj, splat (float 3.000000e+00)
  %i.aml = fadd <4 x float> %strided.vec1371, %i.amk
  %i.amm = fadd <4 x float> %strided.vec1369, %i.aml
  %i.amn = fadd <4 x float> %i.ame, %i.amm
  %i.amo = fmul <4 x float> %i.amn, splat (float 3.750000e-01)
  %i.amp = sext i32 %.reass to i64
  %i.amq = getelementptr [4 x i8], ptr %i.afv, i64 %i.amp ; 2 uses
  %i.amr = getelementptr i8, ptr %i.amq, i64 4
  %wide.vec1373 = load <8 x float>, ptr %i.amr, align 4, !tbaa !12 ; 2 uses
  %strided.vec1374 = shufflevector <8 x float> %wide.vec1373, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1375 = shufflevector <8 x float> %wide.vec1373, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ams = getelementptr i8, ptr %i.amq, i64 -4
  %wide.vec1376 = load <8 x float>, ptr %i.ams, align 4, !tbaa !12 ; 2 uses
  %strided.vec1377 = shufflevector <8 x float> %wide.vec1376, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1378 = shufflevector <8 x float> %wide.vec1376, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.amt = fadd <4 x float> %strided.vec1374, %strided.vec1378
  %i.amu = fmul <4 x float> %i.amt, splat (float 3.000000e+00)
  %i.amv = fadd <4 x float> %strided.vec1377, %i.amu
  %i.amw = fadd <4 x float> %strided.vec1375, %i.amv
  %i.amx = fmul <4 x float> %i.amw, splat (float 1.250000e-01)
  %i.amy = fadd <4 x float> %i.amo, %i.amx
  %i.amz = fadd <4 x float> %i.alw, %i.amy
  %i.ana = fmul <4 x float> %i.amz, splat (float 1.250000e-01)
  store <4 x float> %i.ana, ptr %next.gep, align 4, !tbaa !48
  %index.next1379 = add nuw i64 %index1356, 4     ; 2 uses
  %i.anb = icmp eq i64 %index.next1379, %n.vec1354
  br i1 %i.anb, label %middle.block1380, label %vector.body1355, !llvm.loop !41

middle.block1380:                                 ; preds = %vector.body1355
  br i1 %cmp.n1381, label %"end for f76.s0.v3.loopexit", label %"for f76.s0.v3.preheader"

"for f76.s0.v3.preheader":                        ; preds = %vector.scevcheck, %"for f76.s0.v4", %middle.block1380
  %lsr.iv476.ph = phi i32 [ %lsr.iv474, %vector.scevcheck ], [ %lsr.iv474, %"for f76.s0.v4" ], [ %i.alg, %middle.block1380 ]
  %lsr.iv472.ph = phi i32 [ %lsr.iv470, %vector.scevcheck ], [ %lsr.iv470, %"for f76.s0.v4" ], [ %i.alh, %middle.block1380 ]
  %lsr.iv468.ph = phi i32 [ %lsr.iv466, %vector.scevcheck ], [ %lsr.iv466, %"for f76.s0.v4" ], [ %i.ali, %middle.block1380 ]
  %lsr.iv464.ph = phi i32 [ %lsr.iv462, %vector.scevcheck ], [ %lsr.iv462, %"for f76.s0.v4" ], [ %i.alj, %middle.block1380 ]
  %lsr.iv459.ph = phi ptr [ %lsr.iv456, %vector.scevcheck ], [ %lsr.iv456, %"for f76.s0.v4" ], [ %i.alk, %middle.block1380 ]
  %lsr.iv453.ph = phi i32 [ %i.aiz, %vector.scevcheck ], [ %i.aiz, %"for f76.s0.v4" ], [ %i.akp, %middle.block1380 ]
  br label %"for f76.s0.v3"

"for f76.s0.v3":                                  ; preds = %"for f76.s0.v3.preheader", %"for f76.s0.v3"
  %lsr.iv476 = phi i32 [ %lsr.iv.next477, %"for f76.s0.v3" ], [ %lsr.iv476.ph, %"for f76.s0.v3.preheader" ] ; 2 uses
  %lsr.iv472 = phi i32 [ %lsr.iv.next473, %"for f76.s0.v3" ], [ %lsr.iv472.ph, %"for f76.s0.v3.preheader" ] ; 2 uses
  %lsr.iv468 = phi i32 [ %lsr.iv.next469, %"for f76.s0.v3" ], [ %lsr.iv468.ph, %"for f76.s0.v3.preheader" ] ; 2 uses
  %lsr.iv464 = phi i32 [ %lsr.iv.next465, %"for f76.s0.v3" ], [ %lsr.iv464.ph, %"for f76.s0.v3.preheader" ] ; 2 uses
  %lsr.iv459 = phi ptr [ %scevgep460, %"for f76.s0.v3" ], [ %lsr.iv459.ph, %"for f76.s0.v3.preheader" ] ; 2 uses
  %lsr.iv453 = phi i32 [ %lsr.iv.next454, %"for f76.s0.v3" ], [ %lsr.iv453.ph, %"for f76.s0.v3.preheader" ]
  %i.anc = add i32 %lsr.iv476, %i.bh
  %i.and = add i32 %lsr.iv472, %i.bh
  %i.ane = add i32 %lsr.iv468, %i.bh
  %i.anf = add i32 %lsr.iv464, %i.bh
  %i.ang = sext i32 %i.anf to i64
  %i.anh = getelementptr [4 x i8], ptr %i.afv, i64 %i.ang ; 2 uses
  %i.ani = getelementptr i8, ptr %i.anh, i64 4
  %i.anj = getelementptr i8, ptr %i.anh, i64 -4
  %i.ank = sext i32 %i.ane to i64
  %i.anl = getelementptr [4 x i8], ptr %i.afv, i64 %i.ank ; 4 uses
  %i.anm = getelementptr i8, ptr %i.anl, i64 8
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !12
  %i.ano = getelementptr i8, ptr %i.anl, i64 4
  %i.anp = load float, ptr %i.ano, align 4, !tbaa !12
  %i.anq = load float, ptr %i.anl, align 4, !tbaa !12
  %i.anr = fadd float %i.anp, %i.anq
  %i.ans = fmul float %i.anr, 3.000000e+00
  %i.ant = getelementptr i8, ptr %i.anl, i64 -4
  %i.anu = load float, ptr %i.ant, align 4, !tbaa !12
  %i.anv = fadd float %i.anu, %i.ans
  %i.anw = fadd float %i.ann, %i.anv
  %i.anx = sext i32 %i.and to i64
  %i.any = getelementptr [4 x i8], ptr %i.afv, i64 %i.anx ; 4 uses
  %i.anz = getelementptr i8, ptr %i.any, i64 8
  %i.aoa = load float, ptr %i.anz, align 4, !tbaa !12
  %i.aob = getelementptr i8, ptr %i.any, i64 4
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !12
end_hunk_0
