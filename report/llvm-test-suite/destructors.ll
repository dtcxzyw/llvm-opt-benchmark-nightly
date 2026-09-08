Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/destructors?download=true
begin_hunk_0_@__local_laplacian:entry
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
  %i.aod = load float, ptr %i.any, align 4, !tbaa !12
  %i.aoe = fadd float %i.aoc, %i.aod
  %i.aof = fmul float %i.aoe, 3.000000e+00
  %i.aog = getelementptr i8, ptr %i.any, i64 -4
  %i.aoh = load float, ptr %i.aog, align 4, !tbaa !12
  %i.aoi = fadd float %i.aoh, %i.aof
  %i.aoj = fadd float %i.aoa, %i.aoi
  %i.aok = fadd float %i.anw, %i.aoj
  %i.aol = fmul float %i.aok, 3.750000e-01
  %i.aom = sext i32 %i.anc to i64
  %i.aon = getelementptr [4 x i8], ptr %i.afv, i64 %i.aom ; 2 uses
  %i.aoo = getelementptr i8, ptr %i.aon, i64 4
  %i.aop = getelementptr i8, ptr %i.aon, i64 -4
  %i.aoq = load <2 x float>, ptr %i.ani, align 4, !tbaa !12 ; 2 uses
  %i.aor = load <2 x float>, ptr %i.anj, align 4, !tbaa !12 ; 2 uses
  %i.aos = load <2 x float>, ptr %i.aoo, align 4, !tbaa !12 ; 2 uses
  %i.aot = load <2 x float>, ptr %i.aop, align 4, !tbaa !12 ; 2 uses
  %i.aou = shufflevector <2 x float> %i.aoq, <2 x float> %i.aos, <2 x i32> <i32 0, i32 2>
  %i.aov = shufflevector <2 x float> %i.aor, <2 x float> %i.aot, <2 x i32> <i32 1, i32 3>
  %i.aow = fadd <2 x float> %i.aou, %i.aov
  %i.aox = fmul <2 x float> %i.aow, splat (float 3.000000e+00)
  %i.aoy = shufflevector <2 x float> %i.aor, <2 x float> %i.aot, <2 x i32> <i32 0, i32 2>
  %i.aoz = fadd <2 x float> %i.aoy, %i.aox
  %i.apa = shufflevector <2 x float> %i.aoq, <2 x float> %i.aos, <2 x i32> <i32 1, i32 3>
  %i.apb = fadd <2 x float> %i.apa, %i.aoz
  %i.apc = fmul <2 x float> %i.apb, splat (float 1.250000e-01) ; 2 uses
  %i.apd = extractelement <2 x float> %i.apc, i64 1
  %i.ape = fadd float %i.aol, %i.apd
  %i.apf = extractelement <2 x float> %i.apc, i64 0
  %i.apg = fadd float %i.apf, %i.ape
  %i.aph = fmul float %i.apg, 1.250000e-01
  store float %i.aph, ptr %lsr.iv459, align 4, !tbaa !48
  %lsr.iv.next454 = add i32 %lsr.iv453, -1        ; 2 uses
  %scevgep460 = getelementptr i8, ptr %lsr.iv459, i64 4
  %lsr.iv.next465 = add i32 %lsr.iv464, 2
  %lsr.iv.next469 = add i32 %lsr.iv468, 2
  %lsr.iv.next473 = add i32 %lsr.iv472, 2
  %lsr.iv.next477 = add i32 %lsr.iv476, 2
  %.not577 = icmp eq i32 %lsr.iv.next454, 0
  br i1 %.not577, label %"end for f76.s0.v3.loopexit", label %"for f76.s0.v3", !llvm.loop !42

"end for f76.s0.v3.loopexit":                     ; preds = %"for f76.s0.v3", %middle.block1380
  %i.api = add nsw i32 %f76.s0.v4, 1
  %i.apj = getelementptr i8, ptr %lsr.iv456, i64 %i.ajc
  %scevgep458 = getelementptr i8, ptr %i.apj, i64 4
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
  %i.apk = add nsw i32 %f10.v4.extent_realized.s, 1 ; 2 uses
  %i.apl = add nsw i32 %f10.v3.extent_realized.s, 1 ; 8 uses
  %f10.stride.2 = mul nsw i32 %i.apk, %i.apl      ; 3 uses
  %i.apm = zext i32 %i.apk to i64                 ; 3 uses
  %i.apn = zext i32 %i.apl to i64                 ; 2 uses
  %i.apo = shl nuw nsw i64 %i.apn, 2              ; 2 uses
  %i.app = and i64 %i.apo, 4294967292
  %i.apq = mul nuw i64 %i.app, %i.apm
  %i.apr = lshr i64 %i.apq, 32
  %i.aps = lshr i64 %i.apn, 30
  %i.apt = mul nuw nsw i64 %i.aps, %i.apm
  %t3083 = add nuw nsw i64 %i.apr, %i.apt         ; 2 uses
  %t3084 = mul i64 %i.apo, %i.apm                 ; 5 uses
  %i.apu = zext i32 %i.aej to i64                 ; 3 uses
  %i.apv = mul i64 %t3084, %i.apu                 ; 3 uses
  %i.apw = icmp ult i64 %i.apv, 2147483648
  %i.apx = and i64 %t3084, 4294967292
  %i.apy = mul nuw i64 %i.apx, %i.apu
  %i.apz = lshr i64 %i.apy, 32
  %i.aqa = mul i64 %t3083, %i.apu
  %i.aqb = add i64 %i.aqa, %i.apz
  %i.aqc = or i64 %i.aqb, %t3083
  %i.aqd = icmp ult i64 %i.aqc, 4294967296
  %i.aqe = and i1 %i.apw, %i.aqd
  br i1 %i.aqe, label %"assert succeeded174", label %"assert failed173", !prof !5

"assert failed173":                               ; preds = %"consume f76"
  %i.aqf = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.22, i64 %i.apv, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded174":                            ; preds = %"consume f76"
  %i.aqg = add nuw nsw i64 %i.apv, 4
  %i.aqh = call ptr @halide_malloc(ptr null, i64 %i.aqg) ; 16 uses
  %.not579 = icmp eq ptr %i.aqh, null
  br i1 %.not579, label %"assert failed175", label %"produce f10", !prof !4

"assert failed175":                               ; preds = %"assert succeeded174"
  %i.aqi = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f10":                                    ; preds = %"assert succeeded174"
  store i32 %a772, ptr %1, align 8
  %i.aqj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %f10.stride.2, ptr %i.aqj, align 4
  %i.aqk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %f10.v3.extent_realized.s, ptr %i.aqk, align 8
  %i.aql = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %f10.v4.extent_realized.s, ptr %i.aql, align 4
  %i.aqm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %f9.stride.2, ptr %i.aqm, align 8
  %i.aqn = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %f9.v3.extent_realized.s.s, ptr %i.aqn, align 4
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %f9.v3.min_realized, ptr %i.aqo, align 8
  %i.aqp = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %f9.v4.min_realized, ptr %i.aqp, align 4
  %i.aqq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %a286, ptr %i.aqq, align 8
  %i.aqr = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %a114, ptr %i.aqr, align 4
  %i.aqs = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.aqh, ptr %i.aqs, align 8
  %i.aqt = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr null, ptr %i.aqt, align 8
  %i.aqu = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.ahl, ptr %i.aqu, align 8
  %i.aqv = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.aqv, align 8
  %i.aqw = call i32 @halide_do_par_for(ptr null, ptr nonnull @par_for___local_laplacian_f10.s0.v6, i32 %i.cs, i32 %i.aej, ptr nonnull %1) ; 2 uses
  %i.aqx = icmp eq i32 %i.aqw, 0
  br i1 %i.aqx, label %"consume f10", label %call_destructor.exit210.thread823, !prof !5

"consume f10":                                    ; preds = %"produce f10"
  %reass.sub1006 = sub nsw i32 %b750, %b748
  %i.aqy = add nsw i32 %reass.sub1006, 1
  %i.aqz = zext i32 %i.aqy to i64                 ; 3 uses
  %reass.sub1007 = sub nsw i32 %b753, %b751       ; 4 uses
  %i.ara = add nsw i32 %reass.sub1007, 1          ; 6 uses
  %i.arb = zext i32 %i.ara to i64                 ; 2 uses
  %i.arc = shl nuw nsw i64 %i.arb, 2              ; 2 uses
  %i.ard = mul i64 %i.arc, %i.aqz                 ; 3 uses
  %i.are = icmp ult i64 %i.ard, 2147483648
  %i.arf = and i64 %i.arc, 4294967292
  %i.arg = mul nuw i64 %i.arf, %i.aqz
  %i.arh = lshr i64 %i.arg, 32
  %i.ari = lshr i64 %i.arb, 30
  %i.arj = mul nuw nsw i64 %i.ari, %i.aqz
  %i.ark = add nuw nsw i64 %i.arh, %i.arj
  %i.arl = icmp samesign ult i64 %i.ark, 4294967296
  %i.arm = and i1 %i.are, %i.arl
  br i1 %i.arm, label %"assert succeeded180", label %"assert failed179", !prof !5

"assert failed179":                               ; preds = %"consume f10"
  %i.arn = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.23, i64 %i.ard, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded180":                            ; preds = %"consume f10"
  %i.aro = add nuw nsw i64 %i.ard, 4
  %i.arp = call ptr @halide_malloc(ptr null, i64 %i.aro) ; 16 uses
  %.not580 = icmp eq ptr %i.arp, null
  br i1 %.not580, label %"assert failed181", label %"produce f77", !prof !4

"assert failed181":                               ; preds = %"assert succeeded180"
  %i.arq = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f77":                                    ; preds = %"assert succeeded180"
  %.not1083 = icmp sgt i32 %b748, %b750
  br i1 %.not1083, label %"consume f77", label %"for f77.s0.v4.preheader", !prof !4

"for f77.s0.v4.preheader":                        ; preds = %"produce f77"
  %i.arr = add nsw i32 %b753, 1
  %i.ars = sub nsw i32 %i.arr, %b751              ; 3 uses
  %i.art = sext i32 %b753 to i64
  %i.aru = sext i32 %b751 to i64
  %reass.sub1008 = sub nsw i64 %i.art, %i.aru
  %i.arv = shl nsw i64 %reass.sub1008, 2
  %i.arw = add nsw i32 %b739, 1
  %i.arx = sub nsw i32 %i.arw, %b737              ; 5 uses
  %i.ary = shl nsw i32 %i.arx, 1                  ; 4 uses
  %.not1084 = icmp sgt i32 %b751, %b753
  br i1 %.not1084, label %"consume f77", label %"for f77.s0.v4.preheader1021", !prof !4

"for f77.s0.v4.preheader1021":                    ; preds = %"for f77.s0.v4.preheader"
  %i.arz = xor i32 %b733, -1
  %i.asa = add i32 %i.at, %i.arz                  ; 2 uses
  %i.asb = mul i32 %i.arx, %i.asa
  %i.asc = sub i32 %i.asb, %b737
  %i.asd = sub i32 %i.at, %b733                   ; 2 uses
  %i.ase = mul i32 %i.arx, %i.asd
  %i.asf = sub i32 %i.ase, %b737
  %i.asg = or disjoint i32 %i.at, 1
  %i.ash = sub nsw i32 %i.asg, %b733
  %i.asi = mul i32 %i.arx, %i.ash
  %i.asj = sub i32 %i.asi, %b737
  %i.ask = add nsw i32 %i.at, 2
  %i.asl = sub i32 %i.ask, %b733                  ; 2 uses
  %i.asm = mul i32 %i.arx, %i.asl
  %i.asn = sub i32 %i.asm, %b737
  %i.aso = mul i32 %i.asl, %i.aih
  %i.asp = add i32 %i.aso, %i.ax
  %i.asq = sub i32 %i.asp, %b737
  %i.asr = shl i32 %i.aih, 1
  %i.ass = or disjoint i32 %i.at, 1
  %i.ast = sub i32 %i.ass, %b733
  %i.asu = mul i32 %i.aih, %i.ast
  %i.asv = add i32 %i.asu, %i.ax
  %i.asw = sub i32 %i.asv, %b737
  %i.asx = mul i32 %i.aih, %i.asd
  %i.asy = add i32 %i.asx, %i.ax
  %i.asz = sub i32 %i.asy, %b737
  %i.ata = mul i32 %i.asa, %i.aih
  %i.atb = add i32 %i.ata, %i.ax
  %i.atc = sub i32 %i.atb, %b737
  %i.atd = zext i32 %reass.sub1007 to i64
  %i.ate = add nuw nsw i64 %i.atd, 1              ; 2 uses
  %min.iters.check1395 = icmp ult i32 %reass.sub1007, 3
  %mul.result1392 = shl i32 %reass.sub1007, 1     ; 4 uses
  %n.vec1397 = and i64 %i.ate, 4294967292         ; 4 uses
  %i.atf = trunc nuw i64 %n.vec1397 to i32        ; 2 uses
  %i.atg = shl i32 %i.atf, 1                      ; 4 uses
  %i.ath = shl nuw nsw i64 %n.vec1397, 2
  %i.ati = sub i32 %i.ars, %i.atf
  %cmp.n1427 = icmp eq i64 %i.ate, %n.vec1397
  br label %"for f77.s0.v4"

"for f77.s0.v4":                                  ; preds = %"for f77.s0.v4.preheader1021", %"end for f77.s0.v3.loopexit"
  %indvar1389 = phi i32 [ 0, %"for f77.s0.v4.preheader1021" ], [ %indvar.next1390, %"end for f77.s0.v3.loopexit" ] ; 2 uses
  %lsr.iv449 = phi i32 [ %i.asc, %"for f77.s0.v4.preheader1021" ], [ %lsr.iv.next450, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv445 = phi i32 [ %i.asf, %"for f77.s0.v4.preheader1021" ], [ %lsr.iv.next446, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv441 = phi i32 [ %i.asj, %"for f77.s0.v4.preheader1021" ], [ %lsr.iv.next442, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv437 = phi i32 [ %i.asn, %"for f77.s0.v4.preheader1021" ], [ %lsr.iv.next438, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv431 = phi ptr [ %i.arp, %"for f77.s0.v4.preheader1021" ], [ %scevgep433, %"end for f77.s0.v3.loopexit" ] ; 5 uses
  %f77.s0.v4 = phi i32 [ %b748, %"for f77.s0.v4.preheader1021" ], [ %i.ayb, %"end for f77.s0.v3.loopexit" ] ; 2 uses
  br i1 %min.iters.check1395, label %"for f77.s0.v3.preheader", label %vector.scevcheck1388

vector.scevcheck1388:                             ; preds = %"for f77.s0.v4"
  %i.atj = mul i32 %i.asr, %indvar1389            ; 4 uses
  %i.atk = add i32 %i.atc, %i.atj                 ; 2 uses
  %i.atl = add i32 %i.asz, %i.atj                 ; 2 uses
  %i.atm = add i32 %i.asw, %i.atj                 ; 2 uses
  %i.atn = add i32 %i.asq, %i.atj                 ; 2 uses
  %i.ato = add i32 %i.atn, %mul.result1392
  %i.atp = icmp slt i32 %i.ato, %i.atn
  %i.atq = add i32 %i.atm, %mul.result1392
  %i.atr = icmp slt i32 %i.atq, %i.atm
  %i.ats = add i32 %i.atl, %mul.result1392
  %i.att = icmp slt i32 %i.ats, %i.atl
  %i.atu = add i32 %i.atk, %mul.result1392
  %i.atv = icmp slt i32 %i.atu, %i.atk
  %i.atw = or i1 %i.atr, %i.atp
  %i.atx = or i1 %i.atw, %i.att
  %i.aty = or i1 %i.atv, %i.atx
  br i1 %i.aty, label %"for f77.s0.v3.preheader", label %vector.ph1396

vector.ph1396:                                    ; preds = %vector.scevcheck1388
  %i.atz = add i32 %lsr.iv449, %i.atg
  %i.aua = add i32 %lsr.iv445, %i.atg
  %i.aub = add i32 %lsr.iv441, %i.atg
  %i.auc = add i32 %lsr.iv437, %i.atg
  %i.aud = getelementptr i8, ptr %lsr.iv431, i64 %i.ath
  %invariant.op1489 = add i32 %lsr.iv449, %i.ax
  %invariant.op1491 = add i32 %lsr.iv445, %i.ax
  %invariant.op1493 = add i32 %lsr.iv441, %i.ax
  %invariant.op1495 = add i32 %lsr.iv437, %i.ax
  br label %vector.body1398

vector.body1398:                                  ; preds = %vector.body1398, %vector.ph1396
  %index1399 = phi i64 [ 0, %vector.ph1396 ], [ %index.next1425, %vector.body1398 ] ; 3 uses
  %i.aue = trunc i64 %index1399 to i32
  %i.auf = shl i32 %i.aue, 1                      ; 4 uses
  %i.aug = shl i64 %index1399, 2
  %next.gep1400 = getelementptr i8, ptr %lsr.iv431, i64 %i.aug
  %.reass1490 = add i32 %i.auf, %invariant.op1489
  %.reass1492 = add i32 %i.auf, %invariant.op1491
  %.reass1494 = add i32 %i.auf, %invariant.op1493
  %.reass1496 = add i32 %i.auf, %invariant.op1495
  %i.auh = sext i32 %.reass1496 to i64
  %i.aui = getelementptr [4 x i8], ptr %i.aiw, i64 %i.auh ; 2 uses
  %i.auj = getelementptr i8, ptr %i.aui, i64 4
  %wide.vec1401 = load <8 x float>, ptr %i.auj, align 4, !tbaa !48 ; 2 uses
  %strided.vec1402 = shufflevector <8 x float> %wide.vec1401, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1403 = shufflevector <8 x float> %wide.vec1401, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.auk = getelementptr i8, ptr %i.aui, i64 -4
  %wide.vec1404 = load <8 x float>, ptr %i.auk, align 4, !tbaa !48 ; 2 uses
  %strided.vec1405 = shufflevector <8 x float> %wide.vec1404, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1406 = shufflevector <8 x float> %wide.vec1404, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aul = fadd <4 x float> %strided.vec1402, %strided.vec1406
  %i.aum = fmul <4 x float> %i.aul, splat (float 3.000000e+00)
  %i.aun = fadd <4 x float> %strided.vec1405, %i.aum
  %i.auo = fadd <4 x float> %strided.vec1403, %i.aun
  %i.aup = fmul <4 x float> %i.auo, splat (float 1.250000e-01)
  %i.auq = sext i32 %.reass1494 to i64
  %i.aur = getelementptr [4 x i8], ptr %i.aiw, i64 %i.auq ; 2 uses
  %i.aus = getelementptr i8, ptr %i.aur, i64 4
  %wide.vec1407 = load <8 x float>, ptr %i.aus, align 4, !tbaa !48 ; 2 uses
  %strided.vec1408 = shufflevector <8 x float> %wide.vec1407, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1409 = shufflevector <8 x float> %wide.vec1407, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aut = getelementptr i8, ptr %i.aur, i64 -4
  %wide.vec1410 = load <8 x float>, ptr %i.aut, align 4, !tbaa !48 ; 2 uses
  %strided.vec1411 = shufflevector <8 x float> %wide.vec1410, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1412 = shufflevector <8 x float> %wide.vec1410, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.auu = fadd <4 x float> %strided.vec1408, %strided.vec1412
  %i.auv = fmul <4 x float> %i.auu, splat (float 3.000000e+00)
  %i.auw = fadd <4 x float> %strided.vec1411, %i.auv
  %i.aux = fadd <4 x float> %strided.vec1409, %i.auw
  %i.auy = sext i32 %.reass1492 to i64
  %i.auz = getelementptr [4 x i8], ptr %i.aiw, i64 %i.auy ; 2 uses
  %i.ava = getelementptr i8, ptr %i.auz, i64 4
  %wide.vec1413 = load <8 x float>, ptr %i.ava, align 4, !tbaa !48 ; 2 uses
  %strided.vec1414 = shufflevector <8 x float> %wide.vec1413, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1415 = shufflevector <8 x float> %wide.vec1413, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.avb = getelementptr i8, ptr %i.auz, i64 -4
  %wide.vec1416 = load <8 x float>, ptr %i.avb, align 4, !tbaa !48 ; 2 uses
  %strided.vec1417 = shufflevector <8 x float> %wide.vec1416, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1418 = shufflevector <8 x float> %wide.vec1416, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.avc = fadd <4 x float> %strided.vec1414, %strided.vec1418
  %i.avd = fmul <4 x float> %i.avc, splat (float 3.000000e+00)
  %i.ave = fadd <4 x float> %strided.vec1417, %i.avd
  %i.avf = fadd <4 x float> %strided.vec1415, %i.ave
  %i.avg = fadd <4 x float> %i.aux, %i.avf
  %i.avh = fmul <4 x float> %i.avg, splat (float 3.750000e-01)
  %i.avi = sext i32 %.reass1490 to i64
  %i.avj = getelementptr [4 x i8], ptr %i.aiw, i64 %i.avi ; 2 uses
  %i.avk = getelementptr i8, ptr %i.avj, i64 4
  %wide.vec1419 = load <8 x float>, ptr %i.avk, align 4, !tbaa !48 ; 2 uses
  %strided.vec1420 = shufflevector <8 x float> %wide.vec1419, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1421 = shufflevector <8 x float> %wide.vec1419, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.avl = getelementptr i8, ptr %i.avj, i64 -4
  %wide.vec1422 = load <8 x float>, ptr %i.avl, align 4, !tbaa !48 ; 2 uses
  %strided.vec1423 = shufflevector <8 x float> %wide.vec1422, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1424 = shufflevector <8 x float> %wide.vec1422, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.avm = fadd <4 x float> %strided.vec1420, %strided.vec1424
  %i.avn = fmul <4 x float> %i.avm, splat (float 3.000000e+00)
  %i.avo = fadd <4 x float> %strided.vec1423, %i.avn
  %i.avp = fadd <4 x float> %strided.vec1421, %i.avo
  %i.avq = fmul <4 x float> %i.avp, splat (float 1.250000e-01)
  %i.avr = fadd <4 x float> %i.avh, %i.avq
  %i.avs = fadd <4 x float> %i.aup, %i.avr
  %i.avt = fmul <4 x float> %i.avs, splat (float 1.250000e-01)
  store <4 x float> %i.avt, ptr %next.gep1400, align 4, !tbaa !50
  %index.next1425 = add nuw i64 %index1399, 4     ; 2 uses
  %i.avu = icmp eq i64 %index.next1425, %n.vec1397
  br i1 %i.avu, label %middle.block1426, label %vector.body1398, !llvm.loop !43

middle.block1426:                                 ; preds = %vector.body1398
  br i1 %cmp.n1427, label %"end for f77.s0.v3.loopexit", label %"for f77.s0.v3.preheader"

"for f77.s0.v3.preheader":                        ; preds = %vector.scevcheck1388, %"for f77.s0.v4", %middle.block1426
  %lsr.iv451.ph = phi i32 [ %lsr.iv449, %vector.scevcheck1388 ], [ %lsr.iv449, %"for f77.s0.v4" ], [ %i.atz, %middle.block1426 ]
  %lsr.iv447.ph = phi i32 [ %lsr.iv445, %vector.scevcheck1388 ], [ %lsr.iv445, %"for f77.s0.v4" ], [ %i.aua, %middle.block1426 ]
  %lsr.iv443.ph = phi i32 [ %lsr.iv441, %vector.scevcheck1388 ], [ %lsr.iv441, %"for f77.s0.v4" ], [ %i.aub, %middle.block1426 ]
  %lsr.iv439.ph = phi i32 [ %lsr.iv437, %vector.scevcheck1388 ], [ %lsr.iv437, %"for f77.s0.v4" ], [ %i.auc, %middle.block1426 ]
  %lsr.iv434.ph = phi ptr [ %lsr.iv431, %vector.scevcheck1388 ], [ %lsr.iv431, %"for f77.s0.v4" ], [ %i.aud, %middle.block1426 ]
  %lsr.iv428.ph = phi i32 [ %i.ars, %vector.scevcheck1388 ], [ %i.ars, %"for f77.s0.v4" ], [ %i.ati, %middle.block1426 ]
  br label %"for f77.s0.v3"

"for f77.s0.v3":                                  ; preds = %"for f77.s0.v3.preheader", %"for f77.s0.v3"
  %lsr.iv451 = phi i32 [ %lsr.iv.next452, %"for f77.s0.v3" ], [ %lsr.iv451.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv447 = phi i32 [ %lsr.iv.next448, %"for f77.s0.v3" ], [ %lsr.iv447.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv443 = phi i32 [ %lsr.iv.next444, %"for f77.s0.v3" ], [ %lsr.iv443.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv439 = phi i32 [ %lsr.iv.next440, %"for f77.s0.v3" ], [ %lsr.iv439.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv434 = phi ptr [ %scevgep435, %"for f77.s0.v3" ], [ %lsr.iv434.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv428 = phi i32 [ %lsr.iv.next429, %"for f77.s0.v3" ], [ %lsr.iv428.ph, %"for f77.s0.v3.preheader" ]
  %i.avv = add i32 %lsr.iv451, %i.ax
  %i.avw = add i32 %lsr.iv447, %i.ax
  %i.avx = add i32 %lsr.iv443, %i.ax
  %i.avy = add i32 %lsr.iv439, %i.ax
  %i.avz = sext i32 %i.avy to i64
  %i.awa = getelementptr [4 x i8], ptr %i.aiw, i64 %i.avz ; 2 uses
  %i.awb = getelementptr i8, ptr %i.awa, i64 4
  %i.awc = getelementptr i8, ptr %i.awa, i64 -4
  %i.awd = sext i32 %i.avx to i64
  %i.awe = getelementptr [4 x i8], ptr %i.aiw, i64 %i.awd ; 4 uses
  %i.awf = getelementptr i8, ptr %i.awe, i64 8
  %i.awg = load float, ptr %i.awf, align 4, !tbaa !48
  %i.awh = getelementptr i8, ptr %i.awe, i64 4
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !48
  %i.awj = load float, ptr %i.awe, align 4, !tbaa !48
  %i.awk = fadd float %i.awi, %i.awj
  %i.awl = fmul float %i.awk, 3.000000e+00
  %i.awm = getelementptr i8, ptr %i.awe, i64 -4
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !48
  %i.awo = fadd float %i.awn, %i.awl
  %i.awp = fadd float %i.awg, %i.awo
  %i.awq = sext i32 %i.avw to i64
  %i.awr = getelementptr [4 x i8], ptr %i.aiw, i64 %i.awq ; 4 uses
  %i.aws = getelementptr i8, ptr %i.awr, i64 8
  %i.awt = load float, ptr %i.aws, align 4, !tbaa !48
  %i.awu = getelementptr i8, ptr %i.awr, i64 4
  %i.awv = load float, ptr %i.awu, align 4, !tbaa !48
  %i.aww = load float, ptr %i.awr, align 4, !tbaa !48
  %i.awx = fadd float %i.awv, %i.aww
  %i.awy = fmul float %i.awx, 3.000000e+00
  %i.awz = getelementptr i8, ptr %i.awr, i64 -4
  %i.axa = load float, ptr %i.awz, align 4, !tbaa !48
  %i.axb = fadd float %i.axa, %i.awy
  %i.axc = fadd float %i.awt, %i.axb
  %i.axd = fadd float %i.awp, %i.axc
  %i.axe = fmul float %i.axd, 3.750000e-01
  %i.axf = sext i32 %i.avv to i64
  %i.axg = getelementptr [4 x i8], ptr %i.aiw, i64 %i.axf ; 2 uses
  %i.axh = getelementptr i8, ptr %i.axg, i64 4
  %i.axi = getelementptr i8, ptr %i.axg, i64 -4
  %i.axj = load <2 x float>, ptr %i.awb, align 4, !tbaa !48 ; 2 uses
  %i.axk = load <2 x float>, ptr %i.awc, align 4, !tbaa !48 ; 2 uses
  %i.axl = load <2 x float>, ptr %i.axh, align 4, !tbaa !48 ; 2 uses
  %i.axm = load <2 x float>, ptr %i.axi, align 4, !tbaa !48 ; 2 uses
  %i.axn = shufflevector <2 x float> %i.axj, <2 x float> %i.axl, <2 x i32> <i32 0, i32 2>
  %i.axo = shufflevector <2 x float> %i.axk, <2 x float> %i.axm, <2 x i32> <i32 1, i32 3>
  %i.axp = fadd <2 x float> %i.axn, %i.axo
  %i.axq = fmul <2 x float> %i.axp, splat (float 3.000000e+00)
  %i.axr = shufflevector <2 x float> %i.axk, <2 x float> %i.axm, <2 x i32> <i32 0, i32 2>
  %i.axs = fadd <2 x float> %i.axr, %i.axq
  %i.axt = shufflevector <2 x float> %i.axj, <2 x float> %i.axl, <2 x i32> <i32 1, i32 3>
  %i.axu = fadd <2 x float> %i.axt, %i.axs
  %i.axv = fmul <2 x float> %i.axu, splat (float 1.250000e-01) ; 2 uses
  %i.axw = extractelement <2 x float> %i.axv, i64 1
  %i.axx = fadd float %i.axe, %i.axw
  %i.axy = extractelement <2 x float> %i.axv, i64 0
  %i.axz = fadd float %i.axy, %i.axx
  %i.aya = fmul float %i.axz, 1.250000e-01
  store float %i.aya, ptr %lsr.iv434, align 4, !tbaa !50
  %lsr.iv.next429 = add i32 %lsr.iv428, -1        ; 2 uses
  %scevgep435 = getelementptr i8, ptr %lsr.iv434, i64 4
  %lsr.iv.next440 = add i32 %lsr.iv439, 2
  %lsr.iv.next444 = add i32 %lsr.iv443, 2
  %lsr.iv.next448 = add i32 %lsr.iv447, 2
  %lsr.iv.next452 = add i32 %lsr.iv451, 2
  %.not581 = icmp eq i32 %lsr.iv.next429, 0
  br i1 %.not581, label %"end for f77.s0.v3.loopexit", label %"for f77.s0.v3", !llvm.loop !44

"end for f77.s0.v3.loopexit":                     ; preds = %"for f77.s0.v3", %middle.block1426
  %i.ayb = add nsw i32 %f77.s0.v4, 1
  %i.ayc = getelementptr i8, ptr %lsr.iv431, i64 %i.arv
  %scevgep433 = getelementptr i8, ptr %i.ayc, i64 4
  %lsr.iv.next438 = add i32 %lsr.iv437, %i.ary
  %lsr.iv.next442 = add i32 %lsr.iv441, %i.ary
  %lsr.iv.next446 = add i32 %lsr.iv445, %i.ary
  %lsr.iv.next450 = add i32 %lsr.iv449, %i.ary
  %.not582 = icmp eq i32 %f77.s0.v4, %b750
  %indvar.next1390 = add i32 %indvar1389, 1
  br i1 %.not582, label %"consume f77", label %"for f77.s0.v4"

"consume f77":                                    ; preds = %"end for f77.s0.v3.loopexit", %"for f77.s0.v4.preheader", %"produce f77"
  %i.ayd = icmp ult i64 %t3084, 2147483648
  br i1 %i.ayd, label %"assert succeeded184", label %"assert failed183", !prof !5

"assert failed183":                               ; preds = %"consume f77"
  %i.aye = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.24, i64 %t3084, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded184":                            ; preds = %"consume f77"
  %i.ayf = add nuw nsw i64 %t3084, 4              ; 3 uses
  %i.ayg = call ptr @halide_malloc(ptr null, i64 %i.ayf) ; 5 uses
  %.not583 = icmp eq ptr %i.ayg, null
  br i1 %.not583, label %"assert failed185", label %"produce f78", !prof !4

"assert failed185":                               ; preds = %"assert succeeded184"
  %i.ayh = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f78":                                    ; preds = %"assert succeeded184"
  %i.ayi = add nsw i32 %i.w, 1                    ; 2 uses
  %.not584 = icmp sgt i32 %i.aa, %i.w
  br i1 %.not584, label %"assert succeeded188.thread", label %"for f78.s0.v4.preheader", !prof !4

"for f78.s0.v4.preheader":                        ; preds = %"produce f78"
  %i.ayj = sext i32 %i.apl to i64                 ; 2 uses
  %i.ayk = sext i32 %i.aa to i64                  ; 4 uses
  %i.ayl = add nsw i32 %b753, 1
  %i.aym = sub nsw i32 %i.ayl, %b751              ; 5 uses
  %i.ayn = shl nsw i32 %i.aym, 1                  ; 4 uses
  %.not585 = icmp sgt i32 %i.aj, %i.af            ; 2 uses
  %i.ayo = sext i32 %i.aj to i64                  ; 7 uses
  br i1 %.not585, label %"assert succeeded188.split", label %"for f78.s0.v4.preheader1020", !prof !4

"for f78.s0.v4.preheader1020":                    ; preds = %"for f78.s0.v4.preheader"
  %i.ayp = xor i32 %b748, -1
  %i.ayq = add i32 %i.ab, %i.ayp                  ; 2 uses
  %i.ayr = mul i32 %i.aym, %i.ayq
  %i.ays = sub i32 %i.ayr, %b751
  %i.ayt = sub i32 %i.ab, %b748                   ; 2 uses
  %i.ayu = mul i32 %i.aym, %i.ayt
  %i.ayv = sub i32 %i.ayu, %b751
  %i.ayw = or disjoint i32 %i.ab, 1
  %i.ayx = sub nsw i32 %i.ayw, %b748
  %i.ayy = mul i32 %i.aym, %i.ayx
  %i.ayz = sub i32 %i.ayy, %b751
  %i.aza = add nsw i32 %i.ab, 2
  %i.azb = sub i32 %i.aza, %b748                  ; 2 uses
  %i.azc = mul i32 %i.aym, %i.azb
  %i.azd = sub i32 %i.azc, %b751
  %i.aze = mul i32 %i.azb, %i.ara
  %i.azf = add i32 %i.aze, %i.ak
  %i.azg = sub i32 %i.azf, %b751
  %i.azh = shl i32 %i.ara, 1
  %i.azi = or disjoint i32 %i.ab, 1
  %i.azj = sub i32 %i.azi, %b748
  %i.azk = mul i32 %i.ara, %i.azj
  %i.azl = add i32 %i.azk, %i.ak
  %i.azm = sub i32 %i.azl, %b751
  %i.azn = mul i32 %i.ara, %i.ayt
  %i.azo = add i32 %i.azn, %i.ak
  %i.azp = sub i32 %i.azo, %b751
  %i.azq = mul i32 %i.ayq, %i.ara
  %i.azr = add i32 %i.azq, %i.ak
  %i.azs = sub i32 %i.azr, %b751
  %i.azt = zext i32 %f10.v3.extent_realized.s to i64
  %i.azu = add nuw nsw i64 %i.azt, 1              ; 2 uses
  %min.iters.check1441 = icmp ult i32 %f10.v3.extent_realized.s, 3
  %mul.result1438 = shl nsw i32 %f10.v3.extent_realized.s, 1 ; 4 uses
  %n.vec1443 = and i64 %i.azu, 4294967292         ; 4 uses
  %i.azv = trunc nuw i64 %n.vec1443 to i32        ; 2 uses
  %i.azw = shl i32 %i.azv, 1                      ; 4 uses
  %i.azx = add nsw i64 %n.vec1443, %i.ayo
  %i.azy = sub i32 %i.apl, %i.azv
  %cmp.n1472 = icmp eq i64 %i.azu, %n.vec1443
  br label %"for f78.s0.v4"

"for f78.s0.v4":                                  ; preds = %"for f78.s0.v4.preheader1020", %"end for f78.s0.v3.loopexit"
  %indvar1435 = phi i32 [ 0, %"for f78.s0.v4.preheader1020" ], [ %indvar.next1436, %"end for f78.s0.v3.loopexit" ] ; 2 uses
  %lsr.iv422 = phi i32 [ %i.ays, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next423, %"end for f78.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv418 = phi i32 [ %i.ayv, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next419, %"end for f78.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv414 = phi i32 [ %i.ayz, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next415, %"end for f78.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv410 = phi i32 [ %i.azd, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next411, %"end for f78.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv406 = phi i64 [ %i.ayk, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next407, %"end for f78.s0.v3.loopexit" ] ; 2 uses
  %i.azz = sub nsw i64 %lsr.iv406, %i.ayk
  %i.baa = mul i64 %i.azz, %i.ayj
  %i.bab = sub i64 %i.baa, %i.ayo
  %invariant.gep = getelementptr [4 x i8], ptr %i.ayg, i64 %i.bab ; 2 uses
  br i1 %min.iters.check1441, label %"for f78.s0.v3.preheader", label %vector.scevcheck1434

vector.scevcheck1434:                             ; preds = %"for f78.s0.v4"
  %i.bac = mul i32 %i.azh, %indvar1435            ; 4 uses
  %i.bad = add i32 %i.azs, %i.bac                 ; 2 uses
  %i.bae = add i32 %i.azp, %i.bac                 ; 2 uses
  %i.baf = add i32 %i.azm, %i.bac                 ; 2 uses
  %i.bag = add i32 %i.azg, %i.bac                 ; 2 uses
  %i.bah = add i32 %i.bag, %mul.result1438
  %i.bai = icmp slt i32 %i.bah, %i.bag
  %i.baj = add i32 %i.baf, %mul.result1438
  %i.bak = icmp slt i32 %i.baj, %i.baf
  %i.bal = add i32 %i.bae, %mul.result1438
  %i.bam = icmp slt i32 %i.bal, %i.bae
  %i.ban = add i32 %i.bad, %mul.result1438
  %i.bao = icmp slt i32 %i.ban, %i.bad
  %i.bap = or i1 %i.bak, %i.bai
  %i.baq = or i1 %i.bap, %i.bam
  %i.bar = or i1 %i.bao, %i.baq
  br i1 %i.bar, label %"for f78.s0.v3.preheader", label %vector.ph1442

vector.ph1442:                                    ; preds = %vector.scevcheck1434
  %i.bas = add i32 %lsr.iv422, %i.azw
  %i.bat = add i32 %lsr.iv418, %i.azw
  %i.bau = add i32 %lsr.iv414, %i.azw
  %i.bav = add i32 %lsr.iv410, %i.azw
  %invariant.op1497 = add i32 %lsr.iv422, %i.ak
  %invariant.op1499 = add i32 %lsr.iv418, %i.ak
  %invariant.op1501 = add i32 %lsr.iv414, %i.ak
  %invariant.op1503 = add i32 %lsr.iv410, %i.ak
  %invariant.gep1505 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ayo
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %vector.ph1442
  %index1445 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1470, %vector.body1444 ] ; 3 uses
  %i.baw = trunc i64 %index1445 to i32
  %i.bax = shl i32 %i.baw, 1                      ; 4 uses
  %.reass1498 = add i32 %i.bax, %invariant.op1497
  %.reass1500 = add i32 %i.bax, %invariant.op1499
  %.reass1502 = add i32 %i.bax, %invariant.op1501
  %.reass1504 = add i32 %i.bax, %invariant.op1503
  %i.bay = sext i32 %.reass1504 to i64
  %i.baz = getelementptr [4 x i8], ptr %i.arp, i64 %i.bay ; 2 uses
  %i.bba = getelementptr i8, ptr %i.baz, i64 4
  %wide.vec1446 = load <8 x float>, ptr %i.bba, align 4, !tbaa !50 ; 2 uses
  %strided.vec1447 = shufflevector <8 x float> %wide.vec1446, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1448 = shufflevector <8 x float> %wide.vec1446, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbb = getelementptr i8, ptr %i.baz, i64 -4
  %wide.vec1449 = load <8 x float>, ptr %i.bbb, align 4, !tbaa !50 ; 2 uses
  %strided.vec1450 = shufflevector <8 x float> %wide.vec1449, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1451 = shufflevector <8 x float> %wide.vec1449, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbc = fadd <4 x float> %strided.vec1447, %strided.vec1451
  %i.bbd = fmul <4 x float> %i.bbc, splat (float 3.000000e+00)
  %i.bbe = fadd <4 x float> %strided.vec1450, %i.bbd
  %i.bbf = fadd <4 x float> %strided.vec1448, %i.bbe
  %i.bbg = fmul <4 x float> %i.bbf, splat (float 1.250000e-01)
  %i.bbh = sext i32 %.reass1502 to i64
  %i.bbi = getelementptr [4 x i8], ptr %i.arp, i64 %i.bbh ; 2 uses
  %i.bbj = getelementptr i8, ptr %i.bbi, i64 4
  %wide.vec1452 = load <8 x float>, ptr %i.bbj, align 4, !tbaa !50 ; 2 uses
  %strided.vec1453 = shufflevector <8 x float> %wide.vec1452, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1454 = shufflevector <8 x float> %wide.vec1452, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbk = getelementptr i8, ptr %i.bbi, i64 -4
  %wide.vec1455 = load <8 x float>, ptr %i.bbk, align 4, !tbaa !50 ; 2 uses
  %strided.vec1456 = shufflevector <8 x float> %wide.vec1455, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1457 = shufflevector <8 x float> %wide.vec1455, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbl = fadd <4 x float> %strided.vec1453, %strided.vec1457
  %i.bbm = fmul <4 x float> %i.bbl, splat (float 3.000000e+00)
  %i.bbn = fadd <4 x float> %strided.vec1456, %i.bbm
  %i.bbo = fadd <4 x float> %strided.vec1454, %i.bbn
  %i.bbp = sext i32 %.reass1500 to i64
  %i.bbq = getelementptr [4 x i8], ptr %i.arp, i64 %i.bbp ; 2 uses
  %i.bbr = getelementptr i8, ptr %i.bbq, i64 4
  %wide.vec1458 = load <8 x float>, ptr %i.bbr, align 4, !tbaa !50 ; 2 uses
  %strided.vec1459 = shufflevector <8 x float> %wide.vec1458, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1460 = shufflevector <8 x float> %wide.vec1458, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbs = getelementptr i8, ptr %i.bbq, i64 -4
  %wide.vec1461 = load <8 x float>, ptr %i.bbs, align 4, !tbaa !50 ; 2 uses
  %strided.vec1462 = shufflevector <8 x float> %wide.vec1461, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1463 = shufflevector <8 x float> %wide.vec1461, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbt = fadd <4 x float> %strided.vec1459, %strided.vec1463
  %i.bbu = fmul <4 x float> %i.bbt, splat (float 3.000000e+00)
  %i.bbv = fadd <4 x float> %strided.vec1462, %i.bbu
  %i.bbw = fadd <4 x float> %strided.vec1460, %i.bbv
  %i.bbx = fadd <4 x float> %i.bbo, %i.bbw
  %i.bby = fmul <4 x float> %i.bbx, splat (float 3.750000e-01)
  %i.bbz = sext i32 %.reass1498 to i64
  %i.bca = getelementptr [4 x i8], ptr %i.arp, i64 %i.bbz ; 2 uses
  %i.bcb = getelementptr i8, ptr %i.bca, i64 4
  %wide.vec1464 = load <8 x float>, ptr %i.bcb, align 4, !tbaa !50 ; 2 uses
  %strided.vec1465 = shufflevector <8 x float> %wide.vec1464, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1466 = shufflevector <8 x float> %wide.vec1464, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bcc = getelementptr i8, ptr %i.bca, i64 -4
  %wide.vec1467 = load <8 x float>, ptr %i.bcc, align 4, !tbaa !50 ; 2 uses
  %strided.vec1468 = shufflevector <8 x float> %wide.vec1467, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1469 = shufflevector <8 x float> %wide.vec1467, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bcd = fadd <4 x float> %strided.vec1465, %strided.vec1469
  %i.bce = fmul <4 x float> %i.bcd, splat (float 3.000000e+00)
  %i.bcf = fadd <4 x float> %strided.vec1468, %i.bce
  %i.bcg = fadd <4 x float> %strided.vec1466, %i.bcf
  %i.bch = fmul <4 x float> %i.bcg, splat (float 1.250000e-01)
  %i.bci = fadd <4 x float> %i.bby, %i.bch
  %i.bcj = fadd <4 x float> %i.bbg, %i.bci
  %i.bck = fmul <4 x float> %i.bcj, splat (float 1.250000e-01)
  %gep1506 = getelementptr [4 x i8], ptr %invariant.gep1505, i64 %index1445
  store <4 x float> %i.bck, ptr %gep1506, align 4, !tbaa !52
  %index.next1470 = add nuw i64 %index1445, 4     ; 2 uses
  %i.bcl = icmp eq i64 %index.next1470, %n.vec1443
  br i1 %i.bcl, label %middle.block1471, label %vector.body1444, !llvm.loop !45

middle.block1471:                                 ; preds = %vector.body1444
  br i1 %cmp.n1472, label %"end for f78.s0.v3.loopexit", label %"for f78.s0.v3.preheader"

"for f78.s0.v3.preheader":                        ; preds = %vector.scevcheck1434, %"for f78.s0.v4", %middle.block1471
  %lsr.iv424.ph = phi i32 [ %lsr.iv422, %vector.scevcheck1434 ], [ %lsr.iv422, %"for f78.s0.v4" ], [ %i.bas, %middle.block1471 ]
  %lsr.iv420.ph = phi i32 [ %lsr.iv418, %vector.scevcheck1434 ], [ %lsr.iv418, %"for f78.s0.v4" ], [ %i.bat, %middle.block1471 ]
  %lsr.iv416.ph = phi i32 [ %lsr.iv414, %vector.scevcheck1434 ], [ %lsr.iv414, %"for f78.s0.v4" ], [ %i.bau, %middle.block1471 ]
  %lsr.iv412.ph = phi i32 [ %lsr.iv410, %vector.scevcheck1434 ], [ %lsr.iv410, %"for f78.s0.v4" ], [ %i.bav, %middle.block1471 ]
  %lsr.iv408.ph = phi i64 [ %i.ayo, %vector.scevcheck1434 ], [ %i.ayo, %"for f78.s0.v4" ], [ %i.azx, %middle.block1471 ]
  %lsr.iv404.ph = phi i32 [ %i.apl, %vector.scevcheck1434 ], [ %i.apl, %"for f78.s0.v4" ], [ %i.azy, %middle.block1471 ]
  br label %"for f78.s0.v3"

"for f78.s0.v3":                                  ; preds = %"for f78.s0.v3.preheader", %"for f78.s0.v3"
  %lsr.iv424 = phi i32 [ %lsr.iv.next425, %"for f78.s0.v3" ], [ %lsr.iv424.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv420 = phi i32 [ %lsr.iv.next421, %"for f78.s0.v3" ], [ %lsr.iv420.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv416 = phi i32 [ %lsr.iv.next417, %"for f78.s0.v3" ], [ %lsr.iv416.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv412 = phi i32 [ %lsr.iv.next413, %"for f78.s0.v3" ], [ %lsr.iv412.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv408 = phi i64 [ %lsr.iv.next409, %"for f78.s0.v3" ], [ %lsr.iv408.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv404 = phi i32 [ %lsr.iv.next405, %"for f78.s0.v3" ], [ %lsr.iv404.ph, %"for f78.s0.v3.preheader" ]
  %i.bcm = add i32 %lsr.iv424, %i.ak
  %i.bcn = add i32 %lsr.iv420, %i.ak
  %i.bco = add i32 %lsr.iv416, %i.ak
  %i.bcp = add i32 %lsr.iv412, %i.ak
  %i.bcq = sext i32 %i.bcp to i64
  %i.bcr = getelementptr [4 x i8], ptr %i.arp, i64 %i.bcq ; 2 uses
  %i.bcs = getelementptr i8, ptr %i.bcr, i64 4
  %i.bct = getelementptr i8, ptr %i.bcr, i64 -4
  %i.bcu = sext i32 %i.bco to i64
  %i.bcv = getelementptr [4 x i8], ptr %i.arp, i64 %i.bcu ; 4 uses
  %i.bcw = getelementptr i8, ptr %i.bcv, i64 8
  %i.bcx = load float, ptr %i.bcw, align 4, !tbaa !50
  %i.bcy = getelementptr i8, ptr %i.bcv, i64 4
  %i.bcz = load float, ptr %i.bcy, align 4, !tbaa !50
  %i.bda = load float, ptr %i.bcv, align 4, !tbaa !50
  %i.bdb = fadd float %i.bcz, %i.bda
  %i.bdc = fmul float %i.bdb, 3.000000e+00
  %i.bdd = getelementptr i8, ptr %i.bcv, i64 -4
  %i.bde = load float, ptr %i.bdd, align 4, !tbaa !50
  %i.bdf = fadd float %i.bde, %i.bdc
  %i.bdg = fadd float %i.bcx, %i.bdf
  %i.bdh = sext i32 %i.bcn to i64
  %i.bdi = getelementptr [4 x i8], ptr %i.arp, i64 %i.bdh ; 4 uses
  %i.bdj = getelementptr i8, ptr %i.bdi, i64 8
  %i.bdk = load float, ptr %i.bdj, align 4, !tbaa !50
  %i.bdl = getelementptr i8, ptr %i.bdi, i64 4
  %i.bdm = load float, ptr %i.bdl, align 4, !tbaa !50
end_hunk_0
