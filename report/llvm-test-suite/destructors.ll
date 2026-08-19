begin_hunk_0_@__local_laplacian:entry
  %i.avl = getelementptr i8, ptr %i.avj, i64 -4
  %wide.vec1422 = load <8 x float>, ptr %i.avl, align 4, !tbaa !15 ; 2 uses
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
  store <4 x float> %i.avt, ptr %next.gep1400, align 4, !tbaa !19
  %index.next1425 = add nuw i64 %index1399, 4     ; 2 uses
  %i.avu = icmp eq i64 %index.next1425, %n.vec1397
  br i1 %i.avu, label %middle.block1426, label %vector.body1398, !llvm.loop !21

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
  %i.awg = load float, ptr %i.awf, align 4, !tbaa !15
  %i.awh = getelementptr i8, ptr %i.awe, i64 4
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !15
  %i.awj = load float, ptr %i.awe, align 4, !tbaa !15
  %i.awk = fadd float %i.awi, %i.awj
  %i.awl = fmul float %i.awk, 3.000000e+00
  %i.awm = getelementptr i8, ptr %i.awe, i64 -4
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !15
  %i.awo = fadd float %i.awn, %i.awl
  %i.awp = fadd float %i.awg, %i.awo
  %i.awq = sext i32 %i.avw to i64
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
  %i.axd = fadd float %i.awp, %i.axc
  %i.axe = fmul float %i.axd, 3.750000e-01
  %i.axf = sext i32 %i.avv to i64
  %i.axg = getelementptr [4 x i8], ptr %i.aiw, i64 %i.axf ; 2 uses
  %i.axh = getelementptr i8, ptr %i.axg, i64 4
  %i.axi = getelementptr i8, ptr %i.axg, i64 -4
  %i.axj = load <2 x float>, ptr %i.awb, align 4, !tbaa !15 ; 2 uses
  %i.axk = load <2 x float>, ptr %i.awc, align 4, !tbaa !15 ; 2 uses
  %i.axl = load <2 x float>, ptr %i.axh, align 4, !tbaa !15 ; 2 uses
  %i.axm = load <2 x float>, ptr %i.axi, align 4, !tbaa !15 ; 2 uses
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
  store float %i.aya, ptr %lsr.iv434, align 4, !tbaa !19
  %lsr.iv.next429 = add i32 %lsr.iv428, -1        ; 2 uses
  %scevgep435 = getelementptr i8, ptr %lsr.iv434, i64 4
  %lsr.iv.next440 = add i32 %lsr.iv439, 2
  %lsr.iv.next444 = add i32 %lsr.iv443, 2
  %lsr.iv.next448 = add i32 %lsr.iv447, 2
  %lsr.iv.next452 = add i32 %lsr.iv451, 2
  %.not581 = icmp eq i32 %lsr.iv.next429, 0
  br i1 %.not581, label %"end for f77.s0.v3.loopexit", label %"for f77.s0.v3", !llvm.loop !22

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
  %i.ayx = sub i32 %i.ayw, %b748
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
  %wide.vec1446 = load <8 x float>, ptr %i.bba, align 4, !tbaa !19 ; 2 uses
  %strided.vec1447 = shufflevector <8 x float> %wide.vec1446, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1448 = shufflevector <8 x float> %wide.vec1446, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbb = getelementptr i8, ptr %i.baz, i64 -4
  %wide.vec1449 = load <8 x float>, ptr %i.bbb, align 4, !tbaa !19 ; 2 uses
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
  %wide.vec1452 = load <8 x float>, ptr %i.bbj, align 4, !tbaa !19 ; 2 uses
  %strided.vec1453 = shufflevector <8 x float> %wide.vec1452, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1454 = shufflevector <8 x float> %wide.vec1452, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbk = getelementptr i8, ptr %i.bbi, i64 -4
  %wide.vec1455 = load <8 x float>, ptr %i.bbk, align 4, !tbaa !19 ; 2 uses
  %strided.vec1456 = shufflevector <8 x float> %wide.vec1455, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1457 = shufflevector <8 x float> %wide.vec1455, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbl = fadd <4 x float> %strided.vec1453, %strided.vec1457
  %i.bbm = fmul <4 x float> %i.bbl, splat (float 3.000000e+00)
  %i.bbn = fadd <4 x float> %strided.vec1456, %i.bbm
  %i.bbo = fadd <4 x float> %strided.vec1454, %i.bbn
  %i.bbp = sext i32 %.reass1500 to i64
  %i.bbq = getelementptr [4 x i8], ptr %i.arp, i64 %i.bbp ; 2 uses
  %i.bbr = getelementptr i8, ptr %i.bbq, i64 4
  %wide.vec1458 = load <8 x float>, ptr %i.bbr, align 4, !tbaa !19 ; 2 uses
  %strided.vec1459 = shufflevector <8 x float> %wide.vec1458, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1460 = shufflevector <8 x float> %wide.vec1458, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbs = getelementptr i8, ptr %i.bbq, i64 -4
  %wide.vec1461 = load <8 x float>, ptr %i.bbs, align 4, !tbaa !19 ; 2 uses
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
  %wide.vec1464 = load <8 x float>, ptr %i.bcb, align 4, !tbaa !19 ; 2 uses
  %strided.vec1465 = shufflevector <8 x float> %wide.vec1464, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1466 = shufflevector <8 x float> %wide.vec1464, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bcc = getelementptr i8, ptr %i.bca, i64 -4
  %wide.vec1467 = load <8 x float>, ptr %i.bcc, align 4, !tbaa !19 ; 2 uses
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
  store <4 x float> %i.bck, ptr %gep1506, align 4, !tbaa !23
  %index.next1470 = add nuw i64 %index1445, 4     ; 2 uses
  %i.bcl = icmp eq i64 %index.next1470, %n.vec1443
  br i1 %i.bcl, label %middle.block1471, label %vector.body1444, !llvm.loop !25

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
  %i.bcx = load float, ptr %i.bcw, align 4, !tbaa !19
  %i.bcy = getelementptr i8, ptr %i.bcv, i64 4
  %i.bcz = load float, ptr %i.bcy, align 4, !tbaa !19
  %i.bda = load float, ptr %i.bcv, align 4, !tbaa !19
  %i.bdb = fadd float %i.bcz, %i.bda
  %i.bdc = fmul float %i.bdb, 3.000000e+00
  %i.bdd = getelementptr i8, ptr %i.bcv, i64 -4
  %i.bde = load float, ptr %i.bdd, align 4, !tbaa !19
  %i.bdf = fadd float %i.bde, %i.bdc
  %i.bdg = fadd float %i.bcx, %i.bdf
  %i.bdh = sext i32 %i.bcn to i64
  %i.bdi = getelementptr [4 x i8], ptr %i.arp, i64 %i.bdh ; 4 uses
  %i.bdj = getelementptr i8, ptr %i.bdi, i64 8
  %i.bdk = load float, ptr %i.bdj, align 4, !tbaa !19
  %i.bdl = getelementptr i8, ptr %i.bdi, i64 4
  %i.bdm = load float, ptr %i.bdl, align 4, !tbaa !19
  %i.bdn = load float, ptr %i.bdi, align 4, !tbaa !19
  %i.bdo = fadd float %i.bdm, %i.bdn
  %i.bdp = fmul float %i.bdo, 3.000000e+00
  %i.bdq = getelementptr i8, ptr %i.bdi, i64 -4
  %i.bdr = load float, ptr %i.bdq, align 4, !tbaa !19
  %i.bds = fadd float %i.bdr, %i.bdp
  %i.bdt = fadd float %i.bdk, %i.bds
  %i.bdu = fadd float %i.bdg, %i.bdt
  %i.bdv = fmul float %i.bdu, 3.750000e-01
  %i.bdw = sext i32 %i.bcm to i64
  %i.bdx = getelementptr [4 x i8], ptr %i.arp, i64 %i.bdw ; 2 uses
  %i.bdy = getelementptr i8, ptr %i.bdx, i64 4
  %i.bdz = getelementptr i8, ptr %i.bdx, i64 -4
  %i.bea = load <2 x float>, ptr %i.bcs, align 4, !tbaa !19 ; 2 uses
  %i.beb = load <2 x float>, ptr %i.bct, align 4, !tbaa !19 ; 2 uses
  %i.bec = load <2 x float>, ptr %i.bdy, align 4, !tbaa !19 ; 2 uses
  %i.bed = load <2 x float>, ptr %i.bdz, align 4, !tbaa !19 ; 2 uses
  %i.bee = shufflevector <2 x float> %i.bea, <2 x float> %i.bec, <2 x i32> <i32 0, i32 2>
  %i.bef = shufflevector <2 x float> %i.beb, <2 x float> %i.bed, <2 x i32> <i32 1, i32 3>
  %i.beg = fadd <2 x float> %i.bee, %i.bef
  %i.beh = fmul <2 x float> %i.beg, splat (float 3.000000e+00)
  %i.bei = shufflevector <2 x float> %i.beb, <2 x float> %i.bed, <2 x i32> <i32 0, i32 2>
  %i.bej = fadd <2 x float> %i.bei, %i.beh
  %i.bek = shufflevector <2 x float> %i.bea, <2 x float> %i.bec, <2 x i32> <i32 1, i32 3>
  %i.bel = fadd <2 x float> %i.bek, %i.bej
  %i.bem = fmul <2 x float> %i.bel, splat (float 1.250000e-01) ; 2 uses
  %i.ben = extractelement <2 x float> %i.bem, i64 1
  %i.beo = fadd float %i.bdv, %i.ben
  %i.bep = extractelement <2 x float> %i.bem, i64 0
  %i.beq = fadd float %i.bep, %i.beo
  %i.ber = fmul float %i.beq, 1.250000e-01
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %lsr.iv408
  store float %i.ber, ptr %gep, align 4, !tbaa !23
  %lsr.iv.next405 = add i32 %lsr.iv404, -1        ; 2 uses
  %lsr.iv.next409 = add nsw i64 %lsr.iv408, 1
  %lsr.iv.next413 = add i32 %lsr.iv412, 2
  %lsr.iv.next417 = add i32 %lsr.iv416, 2
  %lsr.iv.next421 = add i32 %lsr.iv420, 2
  %lsr.iv.next425 = add i32 %lsr.iv424, 2
  %.not586 = icmp eq i32 %lsr.iv.next405, 0
  br i1 %.not586, label %"end for f78.s0.v3.loopexit", label %"for f78.s0.v3", !llvm.loop !26

"end for f78.s0.v3.loopexit":                     ; preds = %"for f78.s0.v3", %middle.block1471
  %lsr.iv.next407 = add nsw i64 %lsr.iv406, 1     ; 2 uses
  %lsr426 = trunc i64 %lsr.iv.next407 to i32
  %lsr.iv.next411 = add i32 %lsr.iv410, %i.ayn
  %lsr.iv.next415 = add i32 %lsr.iv414, %i.ayn
  %lsr.iv.next419 = add i32 %lsr.iv418, %i.ayn
  %lsr.iv.next423 = add i32 %lsr.iv422, %i.ayn
  %.not587 = icmp eq i32 %i.ayi, %lsr426
  %indvar.next1436 = add i32 %indvar1435, 1
  br i1 %.not587, label %"assert succeeded188.split", label %"for f78.s0.v4"

"assert succeeded188.split":                      ; preds = %"end for f78.s0.v3.loopexit", %"for f78.s0.v4.preheader"
  %i.bes = call ptr @halide_malloc(ptr null, i64 %i.ayf) ; 4 uses
  %.not588 = icmp eq ptr %i.bes, null
  br i1 %.not588, label %call_destructor.exit210, label %"for f132.s0.v4.preheader", !prof !4

"assert succeeded188.thread":                     ; preds = %"produce f78"
  %i.bet = call ptr @halide_malloc(ptr null, i64 %i.ayf) ; 2 uses
  %.not588845 = icmp eq ptr %i.bet, null
  br i1 %.not588845, label %call_destructor.exit210, label %if.then.i298, !prof !4

"for f132.s0.v4.preheader":                       ; preds = %"assert succeeded188.split"
  %i.beu = add nsw i32 %i.af, 1
  %i.bev = sub nsw i32 %i.beu, %i.aj              ; 2 uses
  %i.bew = sext i32 %f10.stride.2 to i64          ; 2 uses
  br i1 %.not585, label %if.then.i298, label %"for f132.s0.v4", !prof !4

"for f132.s0.v4":                                 ; preds = %"for f132.s0.v4.preheader", %"end for f132.s0.v3.loopexit"
  %lsr.iv395 = phi i64 [ %lsr.iv.next396, %"end for f132.s0.v3.loopexit" ], [ %i.ayk, %"for f132.s0.v4.preheader" ] ; 3 uses
  %lsr403 = trunc i64 %lsr.iv395 to i32
  %i.bex = sub nsw i32 %lsr403, %i.aa
  %i.bey = mul i32 %i.bex, %i.bev
  %i.bez = sub i32 %i.bey, %i.aj
  %i.bfa = sub nsw i64 %lsr.iv395, %i.ayk
  %i.bfb = mul i64 %i.bfa, %i.ayj
  %i.bfc = sub i64 %i.bfb, %i.ayo
  %invariant.gep977 = getelementptr [4 x i8], ptr %i.bes, i64 %i.bfc
  br label %"for f132.s0.v3"

if.then.i298:                                     ; preds = %"end for f132.s0.v3.loopexit", %"for f132.s0.v4.preheader", %"assert succeeded188.thread"
  %i.bfd = phi ptr [ %i.bet, %"assert succeeded188.thread" ], [ %i.bes, %"for f132.s0.v4.preheader" ], [ %i.bes, %"end for f132.s0.v3.loopexit" ] ; 6 uses
  call void @halide_free(ptr null, ptr nonnull %i.ayg) #6
  %f131.v3.extent_realized.s = sub nsw i32 %a2, %a3
  %reass.sub1010 = sub nsw i32 %a0, %a1
  %i.bfe = add nsw i32 %reass.sub1010, 1
  %i.bff = zext i32 %i.bfe to i64                 ; 3 uses
  %i.bfg = add nsw i32 %f131.v3.extent_realized.s, 1 ; 5 uses
  %i.bfh = zext i32 %i.bfg to i64                 ; 2 uses
  %i.bfi = shl nuw nsw i64 %i.bfh, 2              ; 2 uses
  %i.bfj = mul i64 %i.bfi, %i.bff                 ; 3 uses
  %i.bfk = icmp ult i64 %i.bfj, 2147483648
  %i.bfl = and i64 %i.bfi, 4294967292
  %i.bfm = mul nuw i64 %i.bfl, %i.bff
  %i.bfn = lshr i64 %i.bfm, 32
  %i.bfo = lshr i64 %i.bfh, 30
  %i.bfp = mul nuw nsw i64 %i.bfo, %i.bff
  %i.bfq = add nuw nsw i64 %i.bfn, %i.bfp
  %i.bfr = icmp samesign ult i64 %i.bfq, 4294967296
  %i.bfs = and i1 %i.bfk, %i.bfr
  br i1 %i.bfs, label %"assert succeeded192", label %"assert failed191", !prof !5

"for f132.s0.v3":                                 ; preds = %"for f132.s0.v3", %"for f132.s0.v4"
  %lsr.iv397 = phi i64 [ %i.ayo, %"for f132.s0.v4" ], [ %lsr.iv.next398, %"for f132.s0.v3" ] ; 3 uses
  %lsr.iv393 = phi i32 [ %i.bev, %"for f132.s0.v4" ], [ %lsr.iv.next394, %"for f132.s0.v3" ]
  %i.bft = trunc i64 %lsr.iv397 to i32
  %tmp401 = add i32 %i.bez, %i.bft
  %i.bfu = sext i32 %tmp401 to i64                ; 3 uses
  %i.bfv = getelementptr inbounds [4 x i8], ptr %i.ayg, i64 %i.bfu
  %i.bfw = load float, ptr %i.bfv, align 4, !tbaa !23
  %t2188 = fmul float %i.bfw, %i.am               ; 2 uses
  %a752 = fptosi float %t2188 to i32
  %a755 = call i32 @llvm.smin.i32(i32 %b6, i32 %a752)
  %i.bfx = call i32 @llvm.smax.i32(i32 %a755, i32 0) ; 2 uses
  %i.bfy = uitofp nneg i32 %i.bfx to float
  %t2190 = fsub float %t2188, %i.bfy              ; 2 uses
  %t2191 = sub nsw i32 %i.bfx, %i.cs
  %i.bfz = sext i32 %t2191 to i64                 ; 2 uses
  %i.bga = add nsw i64 %i.bfz, 1
  %i.bgb = mul nsw i64 %i.bga, %i.bew
  %i.bgc = getelementptr [4 x i8], ptr %i.aqh, i64 %i.bgb
  %i.bgd = getelementptr [4 x i8], ptr %i.bgc, i64 %i.bfu
  %i.bge = load float, ptr %i.bgd, align 4, !tbaa !27
  %i.bgf = fmul float %i.bge, %t2190
  %i.bgg = mul nsw i64 %i.bfz, %i.bew
  %i.bgh = getelementptr [4 x i8], ptr %i.aqh, i64 %i.bgg
  %i.bgi = getelementptr [4 x i8], ptr %i.bgh, i64 %i.bfu
  %i.bgj = load float, ptr %i.bgi, align 4, !tbaa !27
  %i.bgk = fsub float 1.000000e+00, %t2190
  %i.bgl = fmul float %i.bgj, %i.bgk
  %i.bgm = fadd float %i.bgf, %i.bgl
  %gep978 = getelementptr [4 x i8], ptr %invariant.gep977, i64 %lsr.iv397
  store float %i.bgm, ptr %gep978, align 4, !tbaa !29
  %lsr.iv.next394 = add i32 %lsr.iv393, -1        ; 2 uses
  %lsr.iv.next398 = add nsw i64 %lsr.iv397, 1
  %.not593 = icmp eq i32 %lsr.iv.next394, 0
  br i1 %.not593, label %"end for f132.s0.v3.loopexit", label %"for f132.s0.v3"

"end for f132.s0.v3.loopexit":                    ; preds = %"for f132.s0.v3"
  %lsr.iv.next396 = add nsw i64 %lsr.iv395, 1     ; 2 uses
  %lsr402 = trunc i64 %lsr.iv.next396 to i32
  %.not594 = icmp eq i32 %i.ayi, %lsr402
  br i1 %.not594, label %if.then.i298, label %"for f132.s0.v4"

"assert failed191":                               ; preds = %if.then.i298
  %i.bgn = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.26, i64 %i.bfj, i64 2147483647) #3
  br label %call_destructor.exit205

"assert succeeded192":                            ; preds = %if.then.i298
  %i.bgo = add nuw nsw i64 %i.bfj, 4
  %i.bgp = call ptr @halide_malloc(ptr null, i64 %i.bgo) ; 6 uses
  %.not595 = icmp eq ptr %i.bgp, null
  br i1 %.not595, label %"assert failed193", label %"produce f131", !prof !4

"assert failed193":                               ; preds = %"assert succeeded192"
  %i.bgq = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit205

"produce f131":                                   ; preds = %"assert succeeded192"
  %i.bgr = add nsw i32 %a0, 1
  %.not596 = icmp sgt i32 %a1, %a0
  br i1 %.not596, label %if.then.i307, label %"for f131.s0.v4.preheader", !prof !4

"for f131.s0.v4.preheader":                       ; preds = %"produce f131"
  %i.bgs = sext i32 %i.bfg to i64
  %i.bgt = sext i32 %a1 to i64                    ; 3 uses
  %i.bgu = add nsw i32 %f9.v3.extent_realized.s.s, 1
  %i.bgv = sub nsw i32 %i.bgu, %f9.v3.min_realized ; 2 uses
  %i.bgw = sext i32 %b753 to i64
  %i.bgx = sext i32 %b751 to i64                  ; 2 uses
  %reass.sub1012 = sub nsw i64 %i.bgw, %i.bgx
  %i.bgy = add nsw i64 %reass.sub1012, 1          ; 2 uses
  %.not598 = icmp sgt i32 %a3, %a2
  %i.bgz = sext i32 %a3 to i64                    ; 3 uses
  %i.bha = xor i32 %i.aa, -1
  %i.bhb = sext i32 %f10.stride.2 to i64          ; 2 uses
  %i.bhc = sext i32 %f9.stride.2 to i64           ; 2 uses
  br i1 %.not598, label %if.then.i307, label %"for f131.s0.v4.preheader1018", !prof !4

"for f131.s0.v4.preheader1018":                   ; preds = %"for f131.s0.v4.preheader"
  %i.bhd = sext i32 %b748 to i64
  %i.bhe = sub nsw i64 %i.bgt, %i.bhd
  %i.bhf = mul nsw i64 %i.bgy, %i.bhe
  %i.bhg = sub nsw i64 %i.bhf, %i.bgx
  %i.bhh = sub nsw i32 %a1, %f9.v4.min_realized
  %i.bhi = mul i32 %i.bgv, %i.bhh
  %i.bhj = sub i32 %i.bhi, %f9.v3.min_realized
  br label %"for f131.s0.v4"

"for f131.s0.v4":                                 ; preds = %"for f131.s0.v4.preheader1018", %"end for f131.s0.v3.loopexit"
  %lsr.iv385 = phi i64 [ %lsr.iv.next386, %"end for f131.s0.v3.loopexit" ], [ %i.bhg, %"for f131.s0.v4.preheader1018" ] ; 2 uses
  %lsr.iv378 = phi i32 [ %lsr.iv.next379, %"end for f131.s0.v3.loopexit" ], [ %i.bhj, %"for f131.s0.v4.preheader1018" ] ; 2 uses
  %lsr.iv374 = phi i64 [ %lsr.iv.next375, %"end for f131.s0.v3.loopexit" ], [ %i.bgt, %"for f131.s0.v4.preheader1018" ] ; 3 uses
  %lsr392 = trunc i64 %lsr.iv374 to i32           ; 2 uses
  %i.bhk = add i32 %lsr.iv378, %a3
  %i.bhl = add i64 %lsr.iv385, %i.bgz
  %i.bhm = shl i64 %i.bhl, 2
  %scevgep387 = getelementptr i8, ptr %i.arp, i64 %i.bhm
  %i.bhn = shl i32 %lsr392, 1
  %i.bho = and i32 %i.bhn, 2
  %i.bhp = ashr i32 %lsr392, 1                    ; 2 uses
  %i.bhq = add nsw i32 %i.bhp, %i.bha
  %i.bhr = add nsw i32 %i.bhq, %i.bho
  %t2196 = mul nsw i32 %i.bhr, %i.apl
  %i.bhs = sub nsw i32 %i.bhp, %i.aa
  %t2200 = mul nsw i32 %i.bhs, %i.apl
  %i.bht = sext i32 %t2200 to i64                 ; 2 uses
  %i.bhu = sext i32 %t2196 to i64                 ; 2 uses
  %i.bhv = sub nsw i64 %lsr.iv374, %i.bgt
  %i.bhw = mul i64 %i.bhv, %i.bgs
  %i.bhx = sub i64 %i.bhw, %i.bgz
  %invariant.gep979 = getelementptr [4 x i8], ptr %i.bgp, i64 %i.bhx
  br label %"for f131.s0.v3"

if.then.i307:                                     ; preds = %"end for f131.s0.v3.loopexit", %"for f131.s0.v4.preheader", %"produce f131"
  call void @halide_free(ptr null, ptr nonnull %i.aqh) #6
  call void @halide_free(ptr null, ptr nonnull %i.arp) #6
  call void @halide_free(ptr null, ptr nonnull %i.bfd) #6
  %f130.v3.min_realized = call i32 @llvm.smin.i32(i32 %a9, i32 %b670) ; 3 uses
  %i.bhy = call i32 @llvm.smax.i32(i32 %b681, i32 %a8)
  %f130.v3.extent_realized.s = sub nsw i32 %i.bhy, %f130.v3.min_realized ; 3 uses
  %reass.sub1013 = sub nsw i32 %a6, %b655
  %i.bhz = add nsw i32 %reass.sub1013, 1
  %i.bia = zext i32 %i.bhz to i64                 ; 3 uses
  %i.bib = add nsw i32 %f130.v3.extent_realized.s, 1
  %i.bic = zext i32 %i.bib to i64                 ; 2 uses
  %i.bid = shl nuw nsw i64 %i.bic, 2              ; 2 uses
  %i.bie = mul i64 %i.bid, %i.bia                 ; 3 uses
  %i.bif = icmp ult i64 %i.bie, 2147483648
  %i.big = and i64 %i.bid, 4294967292
  %i.bih = mul nuw i64 %i.big, %i.bia
  %i.bii = lshr i64 %i.bih, 32
  %i.bij = lshr i64 %i.bic, 30
  %i.bik = mul nuw nsw i64 %i.bij, %i.bia
  %i.bil = add nuw nsw i64 %i.bii, %i.bik
  %i.bim = icmp samesign ult i64 %i.bil, 4294967296
  %i.bin = and i1 %i.bif, %i.bim
  br i1 %i.bin, label %"assert succeeded196", label %"assert failed195", !prof !5

"for f131.s0.v3":                                 ; preds = %"for f131.s0.v3", %"for f131.s0.v4"
  %lsr.iv388 = phi ptr [ %scevgep387, %"for f131.s0.v4" ], [ %scevgep389, %"for f131.s0.v3" ] ; 2 uses
  %lsr.iv380 = phi i32 [ %i.bhk, %"for f131.s0.v4" ], [ %lsr.iv.next381, %"for f131.s0.v3" ] ; 2 uses
  %lsr.iv376 = phi i64 [ %i.bgz, %"for f131.s0.v4" ], [ %lsr.iv.next377, %"for f131.s0.v3" ] ; 3 uses
  %lsr.iv372 = phi i32 [ %i.bfg, %"for f131.s0.v4" ], [ %lsr.iv.next373, %"for f131.s0.v3" ]
  %i.bio = load float, ptr %lsr.iv388, align 4, !tbaa !19
  %t2192 = fmul float %i.bio, %i.am               ; 2 uses
  %a756 = fptosi float %t2192 to i32
  %a759 = call i32 @llvm.smin.i32(i32 %b6, i32 %a756)
  %i.bip = call i32 @llvm.smax.i32(i32 %a759, i32 0) ; 2 uses
  %i.biq = uitofp nneg i32 %i.bip to float
  %t2194 = fsub float %t2192, %i.biq              ; 2 uses
  %tmp384 = trunc i64 %lsr.iv376 to i32           ; 2 uses
  %i.bir = shl i32 %tmp384, 1
  %i.bis = and i32 %i.bir, 2
  %i.bit = ashr i32 %tmp384, 1
  %i.biu = sub nsw i32 %i.bit, %i.aj              ; 2 uses
  %t2195 = add nsw i32 %i.biu, %i.bis
  %t2204 = sub nsw i32 %i.bip, %i.cs
  %i.biv = sext i32 %t2204 to i64                 ; 3 uses
  %i.biw = add nsw i64 %i.biv, 1                  ; 2 uses
  %i.bix = mul nsw i64 %i.biw, %i.bhb             ; 4 uses
  %i.biy = sext i32 %i.biu to i64                 ; 2 uses
  %i.biz = add nsw i64 %i.biy, %i.bht             ; 2 uses
  %i.bja = getelementptr [4 x i8], ptr %i.aqh, i64 %i.biz ; 2 uses
  %i.bjb = getelementptr [4 x i8], ptr %i.bja, i64 %i.bix
  %i.bjc = load float, ptr %i.bjb, align 4, !tbaa !27
  %i.bjd = fmul float %i.bjc, 7.500000e-01
  %i.bje = sext i32 %t2195 to i64                 ; 2 uses
  %i.bjf = add nsw i64 %i.bje, %i.bht             ; 2 uses
  %i.bjg = getelementptr [4 x i8], ptr %i.aqh, i64 %i.bjf ; 2 uses
  %i.bjh = getelementptr [4 x i8], ptr %i.bjg, i64 %i.bix
  %i.bji = getelementptr i8, ptr %i.bjh, i64 -4
  %i.bjj = load float, ptr %i.bji, align 4, !tbaa !27
  %i.bjk = fmul float %i.bjj, 2.500000e-01
  %i.bjl = fadd float %i.bjd, %i.bjk
  %i.bjm = fmul float %i.bjl, 7.500000e-01
  %i.bjn = add nsw i64 %i.biy, %i.bhu             ; 2 uses
  %i.bjo = getelementptr [4 x i8], ptr %i.aqh, i64 %i.bjn ; 2 uses
  %i.bjp = getelementptr [4 x i8], ptr %i.bjo, i64 %i.bix
  %i.bjq = load float, ptr %i.bjp, align 4, !tbaa !27
  %i.bjr = fmul float %i.bjq, 7.500000e-01
  %i.bjs = add nsw i64 %i.bje, %i.bhu             ; 2 uses
  %i.bjt = getelementptr [4 x i8], ptr %i.aqh, i64 %i.bjs ; 2 uses
  %i.bju = getelementptr [4 x i8], ptr %i.bjt, i64 %i.bix
  %i.bjv = getelementptr i8, ptr %i.bju, i64 -4
  %i.bjw = load float, ptr %i.bjv, align 4, !tbaa !27
  %i.bjx = fmul float %i.bjw, 2.500000e-01
  %i.bjy = fadd float %i.bjr, %i.bjx
  %i.bjz = fmul float %i.bjy, 2.500000e-01
  %i.bka = fadd float %i.bjm, %i.bjz
  %i.bkb = mul nsw i64 %i.biw, %i.bhc
  %i.bkc = sext i32 %lsr.iv380 to i64             ; 2 uses
  %i.bkd = getelementptr [4 x i8], ptr %i.ahl, i64 %i.bkb
  %i.bke = getelementptr [4 x i8], ptr %i.bkd, i64 %i.bkc
  %i.bkf = load float, ptr %i.bke, align 4, !tbaa !31
  %i.bkg = fsub float %i.bkf, %i.bka
  %i.bkh = fmul float %t2194, %i.bkg
  %i.bki = mul nsw i64 %i.biv, %i.bhb             ; 4 uses
  %i.bkj = getelementptr [4 x i8], ptr %i.bja, i64 %i.bki
  %i.bkk = load float, ptr %i.bkj, align 4, !tbaa !27
  %i.bkl = fmul float %i.bkk, 7.500000e-01
  %i.bkm = getelementptr [4 x i8], ptr %i.bjg, i64 %i.bki
  %i.bkn = getelementptr i8, ptr %i.bkm, i64 -4
  %i.bko = load float, ptr %i.bkn, align 4, !tbaa !27
  %i.bkp = fmul float %i.bko, 2.500000e-01
  %i.bkq = fadd float %i.bkl, %i.bkp
  %i.bkr = fmul float %i.bkq, 7.500000e-01
  %i.bks = getelementptr [4 x i8], ptr %i.bjo, i64 %i.bki
  %i.bkt = load float, ptr %i.bks, align 4, !tbaa !27
  %i.bku = fmul float %i.bkt, 7.500000e-01
  %i.bkv = getelementptr [4 x i8], ptr %i.bjt, i64 %i.bki
  %i.bkw = getelementptr i8, ptr %i.bkv, i64 -4
  %i.bkx = load float, ptr %i.bkw, align 4, !tbaa !27
  %i.bky = fmul float %i.bkx, 2.500000e-01
  %i.bkz = fadd float %i.bku, %i.bky
  %i.bla = fmul float %i.bkz, 2.500000e-01
  %i.blb = fadd float %i.bkr, %i.bla
  %i.blc = mul nsw i64 %i.biv, %i.bhc
  %i.bld = getelementptr [4 x i8], ptr %i.ahl, i64 %i.blc
  %i.ble = getelementptr [4 x i8], ptr %i.bld, i64 %i.bkc
  %i.blf = load float, ptr %i.ble, align 4, !tbaa !31
  %i.blg = fsub float %i.blf, %i.blb
  %i.blh = fsub float 1.000000e+00, %t2194
  %i.bli = fmul float %i.blh, %i.blg
  %i.blj = fadd float %i.bkh, %i.bli
  %i.blk = getelementptr inbounds [4 x i8], ptr %i.bfd, i64 %i.biz
  %i.bll = load float, ptr %i.blk, align 4, !tbaa !29
  %i.blm = fmul float %i.bll, 7.500000e-01
  %i.bln = getelementptr [4 x i8], ptr %i.bfd, i64 %i.bjf
  %i.blo = getelementptr i8, ptr %i.bln, i64 -4
  %i.blp = load float, ptr %i.blo, align 4, !tbaa !29
  %i.blq = fmul float %i.blp, 2.500000e-01
  %i.blr = fadd float %i.blm, %i.blq
  %i.bls = fmul float %i.blr, 7.500000e-01
  %i.blt = getelementptr inbounds [4 x i8], ptr %i.bfd, i64 %i.bjn
  %i.blu = load float, ptr %i.blt, align 4, !tbaa !29
  %i.blv = fmul float %i.blu, 7.500000e-01
  %i.blw = getelementptr [4 x i8], ptr %i.bfd, i64 %i.bjs
  %i.blx = getelementptr i8, ptr %i.blw, i64 -4
  %i.bly = load float, ptr %i.blx, align 4, !tbaa !29
  %i.blz = fmul float %i.bly, 2.500000e-01
  %i.bma = fadd float %i.blv, %i.blz
  %i.bmb = fmul float %i.bma, 2.500000e-01
  %i.bmc = fadd float %i.bls, %i.bmb
  %i.bmd = fadd float %i.blj, %i.bmc
  %gep980 = getelementptr [4 x i8], ptr %invariant.gep979, i64 %lsr.iv376
  store float %i.bmd, ptr %gep980, align 4, !tbaa !33
  %lsr.iv.next373 = add i32 %lsr.iv372, -1        ; 2 uses
  %lsr.iv.next377 = add nsw i64 %lsr.iv376, 1
  %lsr.iv.next381 = add i32 %lsr.iv380, 1
  %scevgep389 = getelementptr i8, ptr %lsr.iv388, i64 4
  %.not601 = icmp eq i32 %lsr.iv.next373, 0
  br i1 %.not601, label %"end for f131.s0.v3.loopexit", label %"for f131.s0.v3"

"end for f131.s0.v3.loopexit":                    ; preds = %"for f131.s0.v3"
  %lsr.iv.next375 = add nsw i64 %lsr.iv374, 1     ; 2 uses
  %lsr391 = trunc i64 %lsr.iv.next375 to i32
  %lsr.iv.next379 = add i32 %lsr.iv378, %i.bgv
  %lsr.iv.next386 = add i64 %lsr.iv385, %i.bgy
  %.not602 = icmp eq i32 %i.bgr, %lsr391
  br i1 %.not602, label %if.then.i307, label %"for f131.s0.v4"

"assert failed195":                               ; preds = %if.then.i307
  %i.bme = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.27, i64 %i.bie, i64 2147483647) #3
  br label %call_destructor.exit

"assert succeeded196":                            ; preds = %if.then.i307
  %i.bmf = add nuw nsw i64 %i.bie, 4
  %i.bmg = call ptr @halide_malloc(ptr null, i64 %i.bmf) ; 5 uses
  %.not606 = icmp eq ptr %i.bmg, null
  br i1 %.not606, label %"assert failed197", label %"produce f130", !prof !4

"assert failed197":                               ; preds = %"assert succeeded196"
  %i.bmh = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit

"produce f130":                                   ; preds = %"assert succeeded196"
  %i.bmi = add nsw i32 %a6, 1
  %.not607 = icmp sgt i32 %a7, %a6
  br i1 %.not607, label %if.then.i316, label %"for f130.s0.v4.preheader", !prof !4

"for f130.s0.v4.preheader":                       ; preds = %"produce f130"
  %reass.sub1014 = sub nsw i32 %a8, %a9
  %i.bmj = add nsw i32 %reass.sub1014, 1
  %i.bmk = sext i32 %f130.v3.min_realized to i64
  %i.bml = mul nsw i64 %i.bmk, -4
  %scevgep = getelementptr i8, ptr %i.bmg, i64 %i.bml
  %i.bmm = sext i32 %f130.v3.extent_realized.s to i64
  %i.bmn = shl nsw i64 %i.bmm, 2
  %i.bmo = add nsw i64 %i.bmn, 4
  %i.bmp = sext i32 %b739 to i64
  %i.bmq = sext i32 %b737 to i64                  ; 2 uses
  %reass.sub1016 = sub nsw i64 %i.bmp, %i.bmq
  %i.bmr = add nsw i64 %reass.sub1016, 1          ; 2 uses
  %.not608 = icmp sgt i32 %a9, %a8
  %i.bms = sext i32 %a9 to i64                    ; 2 uses
  %i.bmt = xor i32 %a1, -1
  %i.bmu = xor i32 %f9.v4.min_realized, -1
  %i.bmv = sext i32 %f9.stride.2 to i64           ; 2 uses
  %i.bmw = sext i32 %f9.v3.min_realized to i64    ; 2 uses
  %i.bmx = sext i32 %f8.stride.2 to i64           ; 2 uses
  %i.bmy = sext i32 %b655 to i64
  br i1 %.not608, label %if.then.i316, label %"for f130.s0.v4.preheader1017", !prof !4

"for f130.s0.v4.preheader1017":                   ; preds = %"for f130.s0.v4.preheader"
  %i.bmz = sext i32 %a7 to i64                    ; 2 uses
  %i.bna = sext i32 %b733 to i64
  %i.bnb = sub nsw i64 %i.bmz, %i.bna
  %i.bnc = mul nsw i64 %i.bmr, %i.bnb
  %i.bnd = sub nsw i64 %i.bnc, %i.bmq
end_hunk_0
