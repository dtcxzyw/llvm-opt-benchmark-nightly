Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/destructors?download=true
begin_hunk_0_@__local_laplacian:entry
  %i.auj = fadd <4 x float> %strided.vec1405, %i.aui
  %i.auk = fadd <4 x float> %strided.vec1403, %i.auj
  %i.aul = fmul <4 x float> %i.auk, splat (float 1.250000e-01)
  %i.aum = sext i32 %.reass1494 to i64
  %i.aun = getelementptr [4 x i8], ptr %i.aiw, i64 %i.aum ; 2 uses
  %i.auo = getelementptr i8, ptr %i.aun, i64 4
  %wide.vec1407 = load <8 x float>, ptr %i.auo, align 4, !tbaa !48 ; 2 uses
  %strided.vec1408 = shufflevector <8 x float> %wide.vec1407, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1409 = shufflevector <8 x float> %wide.vec1407, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aup = getelementptr i8, ptr %i.aun, i64 -4
  %wide.vec1410 = load <8 x float>, ptr %i.aup, align 4, !tbaa !48 ; 2 uses
  %strided.vec1411 = shufflevector <8 x float> %wide.vec1410, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1412 = shufflevector <8 x float> %wide.vec1410, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.auq = fadd <4 x float> %strided.vec1408, %strided.vec1412
  %i.aur = fmul <4 x float> %i.auq, splat (float 3.000000e+00)
  %i.aus = fadd <4 x float> %strided.vec1411, %i.aur
  %i.aut = fadd <4 x float> %strided.vec1409, %i.aus
  %i.auu = sext i32 %.reass1492 to i64
  %i.auv = getelementptr [4 x i8], ptr %i.aiw, i64 %i.auu ; 2 uses
  %i.auw = getelementptr i8, ptr %i.auv, i64 4
  %wide.vec1413 = load <8 x float>, ptr %i.auw, align 4, !tbaa !48 ; 2 uses
  %strided.vec1414 = shufflevector <8 x float> %wide.vec1413, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1415 = shufflevector <8 x float> %wide.vec1413, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aux = getelementptr i8, ptr %i.auv, i64 -4
  %wide.vec1416 = load <8 x float>, ptr %i.aux, align 4, !tbaa !48 ; 2 uses
  %strided.vec1417 = shufflevector <8 x float> %wide.vec1416, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1418 = shufflevector <8 x float> %wide.vec1416, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.auy = fadd <4 x float> %strided.vec1414, %strided.vec1418
  %i.auz = fmul <4 x float> %i.auy, splat (float 3.000000e+00)
  %i.ava = fadd <4 x float> %strided.vec1417, %i.auz
  %i.avb = fadd <4 x float> %strided.vec1415, %i.ava
  %i.avc = fadd <4 x float> %i.aut, %i.avb
  %i.avd = fmul <4 x float> %i.avc, splat (float 3.750000e-01)
  %i.ave = sext i32 %.reass1490 to i64
  %i.avf = getelementptr [4 x i8], ptr %i.aiw, i64 %i.ave ; 2 uses
  %i.avg = getelementptr i8, ptr %i.avf, i64 4
  %wide.vec1419 = load <8 x float>, ptr %i.avg, align 4, !tbaa !48 ; 2 uses
  %strided.vec1420 = shufflevector <8 x float> %wide.vec1419, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1421 = shufflevector <8 x float> %wide.vec1419, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.avh = getelementptr i8, ptr %i.avf, i64 -4
  %wide.vec1422 = load <8 x float>, ptr %i.avh, align 4, !tbaa !48 ; 2 uses
  %strided.vec1423 = shufflevector <8 x float> %wide.vec1422, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1424 = shufflevector <8 x float> %wide.vec1422, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.avi = fadd <4 x float> %strided.vec1420, %strided.vec1424
  %i.avj = fmul <4 x float> %i.avi, splat (float 3.000000e+00)
  %i.avk = fadd <4 x float> %strided.vec1423, %i.avj
  %i.avl = fadd <4 x float> %strided.vec1421, %i.avk
  %i.avm = fmul <4 x float> %i.avl, splat (float 1.250000e-01)
  %i.avn = fadd <4 x float> %i.avd, %i.avm
  %i.avo = fadd <4 x float> %i.aul, %i.avn
  %i.avp = fmul <4 x float> %i.avo, splat (float 1.250000e-01)
  store <4 x float> %i.avp, ptr %next.gep1400, align 4, !tbaa !50
  %index.next1425 = add nuw i64 %index1399, 4     ; 2 uses
  %i.avq = icmp eq i64 %index.next1425, %n.vec1397
  br i1 %i.avq, label %middle.block1426, label %vector.body1398, !llvm.loop !43

middle.block1426:                                 ; preds = %vector.body1398
  br i1 %cmp.n1427, label %"end for f77.s0.v3.loopexit", label %"for f77.s0.v3.preheader"

"for f77.s0.v3.preheader":                        ; preds = %vector.scevcheck1388, %"for f77.s0.v4", %middle.block1426
  %lsr.iv451.ph = phi i32 [ %lsr.iv449, %vector.scevcheck1388 ], [ %lsr.iv449, %"for f77.s0.v4" ], [ %i.atv, %middle.block1426 ]
  %lsr.iv447.ph = phi i32 [ %lsr.iv445, %vector.scevcheck1388 ], [ %lsr.iv445, %"for f77.s0.v4" ], [ %i.atw, %middle.block1426 ]
  %lsr.iv443.ph = phi i32 [ %lsr.iv441, %vector.scevcheck1388 ], [ %lsr.iv441, %"for f77.s0.v4" ], [ %i.atx, %middle.block1426 ]
  %lsr.iv439.ph = phi i32 [ %lsr.iv437, %vector.scevcheck1388 ], [ %lsr.iv437, %"for f77.s0.v4" ], [ %i.aty, %middle.block1426 ]
  %lsr.iv434.ph = phi ptr [ %lsr.iv431, %vector.scevcheck1388 ], [ %lsr.iv431, %"for f77.s0.v4" ], [ %i.atz, %middle.block1426 ]
  %lsr.iv428.ph = phi i32 [ %i.aro, %vector.scevcheck1388 ], [ %i.aro, %"for f77.s0.v4" ], [ %i.ate, %middle.block1426 ]
  br label %"for f77.s0.v3"

"for f77.s0.v3":                                  ; preds = %"for f77.s0.v3.preheader", %"for f77.s0.v3"
  %lsr.iv451 = phi i32 [ %lsr.iv.next452, %"for f77.s0.v3" ], [ %lsr.iv451.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv447 = phi i32 [ %lsr.iv.next448, %"for f77.s0.v3" ], [ %lsr.iv447.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv443 = phi i32 [ %lsr.iv.next444, %"for f77.s0.v3" ], [ %lsr.iv443.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv439 = phi i32 [ %lsr.iv.next440, %"for f77.s0.v3" ], [ %lsr.iv439.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv434 = phi ptr [ %scevgep435, %"for f77.s0.v3" ], [ %lsr.iv434.ph, %"for f77.s0.v3.preheader" ] ; 2 uses
  %lsr.iv428 = phi i32 [ %lsr.iv.next429, %"for f77.s0.v3" ], [ %lsr.iv428.ph, %"for f77.s0.v3.preheader" ]
  %i.avr = add i32 %lsr.iv451, %i.ax
  %i.avs = add i32 %lsr.iv447, %i.ax
  %i.avt = add i32 %lsr.iv443, %i.ax
  %i.avu = add i32 %lsr.iv439, %i.ax
  %i.avv = sext i32 %i.avu to i64
  %i.avw = getelementptr [4 x i8], ptr %i.aiw, i64 %i.avv ; 2 uses
  %i.avx = getelementptr i8, ptr %i.avw, i64 4
  %i.avy = getelementptr i8, ptr %i.avw, i64 -4
  %i.avz = sext i32 %i.avt to i64
  %i.awa = getelementptr [4 x i8], ptr %i.aiw, i64 %i.avz ; 3 uses
  %i.awb = getelementptr i8, ptr %i.awa, i64 8
  %i.awc = load float, ptr %i.awb, align 4, !tbaa !48
  %i.awd = load <2 x float>, ptr %i.awa, align 4, !tbaa !48
  %i.awe = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.awd)
  %i.awf = fmul float %i.awe, 3.000000e+00
  %i.awg = getelementptr i8, ptr %i.awa, i64 -4
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !48
  %i.awi = fadd float %i.awh, %i.awf
  %i.awj = fadd float %i.awc, %i.awi
  %i.awk = sext i32 %i.avs to i64
  %i.awl = getelementptr [4 x i8], ptr %i.aiw, i64 %i.awk ; 3 uses
  %i.awm = getelementptr i8, ptr %i.awl, i64 8
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !48
  %i.awo = load <2 x float>, ptr %i.awl, align 4, !tbaa !48
  %i.awp = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.awo)
  %i.awq = fmul float %i.awp, 3.000000e+00
  %i.awr = getelementptr i8, ptr %i.awl, i64 -4
  %i.aws = load float, ptr %i.awr, align 4, !tbaa !48
  %i.awt = fadd float %i.aws, %i.awq
  %i.awu = fadd float %i.awn, %i.awt
  %i.awv = fadd float %i.awj, %i.awu
  %i.aww = fmul float %i.awv, 3.750000e-01
  %i.awx = sext i32 %i.avr to i64
  %i.awy = getelementptr [4 x i8], ptr %i.aiw, i64 %i.awx ; 2 uses
  %i.awz = getelementptr i8, ptr %i.awy, i64 4
  %i.axa = getelementptr i8, ptr %i.awy, i64 -4
  %i.axb = load <2 x float>, ptr %i.avx, align 4, !tbaa !48 ; 2 uses
  %i.axc = load <2 x float>, ptr %i.avy, align 4, !tbaa !48 ; 2 uses
  %i.axd = load <2 x float>, ptr %i.awz, align 4, !tbaa !48 ; 2 uses
  %i.axe = load <2 x float>, ptr %i.axa, align 4, !tbaa !48 ; 2 uses
  %i.axf = shufflevector <2 x float> %i.axb, <2 x float> %i.axd, <2 x i32> <i32 0, i32 2>
  %i.axg = shufflevector <2 x float> %i.axc, <2 x float> %i.axe, <2 x i32> <i32 1, i32 3>
  %i.axh = fadd <2 x float> %i.axf, %i.axg
  %i.axi = fmul <2 x float> %i.axh, splat (float 3.000000e+00)
  %i.axj = shufflevector <2 x float> %i.axc, <2 x float> %i.axe, <2 x i32> <i32 0, i32 2>
  %i.axk = fadd <2 x float> %i.axj, %i.axi
  %i.axl = shufflevector <2 x float> %i.axb, <2 x float> %i.axd, <2 x i32> <i32 1, i32 3>
  %i.axm = fadd <2 x float> %i.axl, %i.axk
  %i.axn = fmul <2 x float> %i.axm, splat (float 1.250000e-01) ; 2 uses
  %i.axo = extractelement <2 x float> %i.axn, i64 1
  %i.axp = fadd float %i.aww, %i.axo
  %i.axq = extractelement <2 x float> %i.axn, i64 0
  %i.axr = fadd float %i.axq, %i.axp
  %i.axs = fmul float %i.axr, 1.250000e-01
  store float %i.axs, ptr %lsr.iv434, align 4, !tbaa !50
  %lsr.iv.next429 = add i32 %lsr.iv428, -1        ; 2 uses
  %scevgep435 = getelementptr i8, ptr %lsr.iv434, i64 4
  %lsr.iv.next440 = add i32 %lsr.iv439, 2
  %lsr.iv.next444 = add i32 %lsr.iv443, 2
  %lsr.iv.next448 = add i32 %lsr.iv447, 2
  %lsr.iv.next452 = add i32 %lsr.iv451, 2
  %.not581 = icmp eq i32 %lsr.iv.next429, 0
  br i1 %.not581, label %"end for f77.s0.v3.loopexit", label %"for f77.s0.v3", !llvm.loop !44

"end for f77.s0.v3.loopexit":                     ; preds = %"for f77.s0.v3", %middle.block1426
  %i.axt = add nsw i32 %f77.s0.v4, 1
  %i.axu = getelementptr i8, ptr %lsr.iv431, i64 %i.arr
  %scevgep433 = getelementptr i8, ptr %i.axu, i64 4
  %lsr.iv.next438 = add i32 %lsr.iv437, %i.aru
  %lsr.iv.next442 = add i32 %lsr.iv441, %i.aru
  %lsr.iv.next446 = add i32 %lsr.iv445, %i.aru
  %lsr.iv.next450 = add i32 %lsr.iv449, %i.aru
  %.not582 = icmp eq i32 %f77.s0.v4, %b750
  %indvar.next1390 = add i32 %indvar1389, 1
  br i1 %.not582, label %"consume f77", label %"for f77.s0.v4"

"consume f77":                                    ; preds = %"end for f77.s0.v3.loopexit", %"for f77.s0.v4.preheader", %"produce f77"
  %i.axv = icmp ult i64 %t3084, 2147483648
  br i1 %i.axv, label %"assert succeeded184", label %"assert failed183", !prof !5

"assert failed183":                               ; preds = %"consume f77"
  %i.axw = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.24, i64 %t3084, i64 2147483647) #3
  br label %call_destructor.exit210.thread823

"assert succeeded184":                            ; preds = %"consume f77"
  %i.axx = add nuw nsw i64 %t3084, 4              ; 3 uses
  %i.axy = call ptr @halide_malloc(ptr null, i64 %i.axx) ; 5 uses
  %.not583 = icmp eq ptr %i.axy, null
  br i1 %.not583, label %"assert failed185", label %"produce f78", !prof !4

"assert failed185":                               ; preds = %"assert succeeded184"
  %i.axz = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit210.thread823

"produce f78":                                    ; preds = %"assert succeeded184"
  %i.aya = add nsw i32 %i.w, 1                    ; 2 uses
  %.not584 = icmp sgt i32 %i.aa, %i.w
  br i1 %.not584, label %"assert succeeded188.thread", label %"for f78.s0.v4.preheader", !prof !4

"for f78.s0.v4.preheader":                        ; preds = %"produce f78"
  %i.ayb = sext i32 %i.aph to i64                 ; 2 uses
  %i.ayc = sext i32 %i.aa to i64                  ; 4 uses
  %i.ayd = add nsw i32 %b753, 1
  %i.aye = sub nsw i32 %i.ayd, %b751              ; 5 uses
  %i.ayf = shl nsw i32 %i.aye, 1                  ; 4 uses
  %.not585 = icmp sgt i32 %i.aj, %i.af            ; 2 uses
  %i.ayg = sext i32 %i.aj to i64                  ; 7 uses
  br i1 %.not585, label %"assert succeeded188.split", label %"for f78.s0.v4.preheader1020", !prof !4

"for f78.s0.v4.preheader1020":                    ; preds = %"for f78.s0.v4.preheader"
  %i.ayh = xor i32 %b748, -1
  %i.ayi = add i32 %i.ab, %i.ayh                  ; 2 uses
  %i.ayj = mul i32 %i.aye, %i.ayi
  %i.ayk = sub i32 %i.ayj, %b751
  %i.ayl = sub i32 %i.ab, %b748                   ; 2 uses
  %i.aym = mul i32 %i.aye, %i.ayl
  %i.ayn = sub i32 %i.aym, %b751
  %i.ayo = or disjoint i32 %i.ab, 1
  %i.ayp = sub nsw i32 %i.ayo, %b748
  %i.ayq = mul i32 %i.aye, %i.ayp
  %i.ayr = sub i32 %i.ayq, %b751
  %i.ays = add nsw i32 %i.ab, 2
  %i.ayt = sub i32 %i.ays, %b748                  ; 2 uses
  %i.ayu = mul i32 %i.aye, %i.ayt
  %i.ayv = sub i32 %i.ayu, %b751
  %i.ayw = mul i32 %i.ayt, %i.aqw
  %i.ayx = add i32 %i.ayw, %i.ak
  %i.ayy = sub i32 %i.ayx, %b751
  %i.ayz = shl i32 %i.aqw, 1
  %i.aza = or disjoint i32 %i.ab, 1
  %i.azb = sub i32 %i.aza, %b748
  %i.azc = mul i32 %i.aqw, %i.azb
  %i.azd = add i32 %i.azc, %i.ak
  %i.aze = sub i32 %i.azd, %b751
  %i.azf = mul i32 %i.aqw, %i.ayl
  %i.azg = add i32 %i.azf, %i.ak
  %i.azh = sub i32 %i.azg, %b751
  %i.azi = mul i32 %i.ayi, %i.aqw
  %i.azj = add i32 %i.azi, %i.ak
  %i.azk = sub i32 %i.azj, %b751
  %i.azl = zext i32 %f10.v3.extent_realized.s to i64
  %i.azm = add nuw nsw i64 %i.azl, 1              ; 2 uses
  %min.iters.check1441 = icmp ult i32 %f10.v3.extent_realized.s, 3
  %mul.result1438 = shl nsw i32 %f10.v3.extent_realized.s, 1 ; 4 uses
  %n.vec1443 = and i64 %i.azm, 4294967292         ; 4 uses
  %i.azn = trunc nuw i64 %n.vec1443 to i32        ; 2 uses
  %i.azo = shl i32 %i.azn, 1                      ; 4 uses
  %i.azp = add nsw i64 %n.vec1443, %i.ayg
  %i.azq = sub i32 %i.aph, %i.azn
  %cmp.n1472 = icmp eq i64 %i.azm, %n.vec1443
  br label %"for f78.s0.v4"

"for f78.s0.v4":                                  ; preds = %"for f78.s0.v4.preheader1020", %"end for f78.s0.v3.loopexit"
  %indvar1435 = phi i32 [ 0, %"for f78.s0.v4.preheader1020" ], [ %indvar.next1436, %"end for f78.s0.v3.loopexit" ] ; 2 uses
  %lsr.iv422 = phi i32 [ %i.ayk, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next423, %"end for f78.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv418 = phi i32 [ %i.ayn, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next419, %"end for f78.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv414 = phi i32 [ %i.ayr, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next415, %"end for f78.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv410 = phi i32 [ %i.ayv, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next411, %"end for f78.s0.v3.loopexit" ] ; 5 uses
  %lsr.iv406 = phi i64 [ %i.ayc, %"for f78.s0.v4.preheader1020" ], [ %lsr.iv.next407, %"end for f78.s0.v3.loopexit" ] ; 2 uses
  %i.azr = sub nsw i64 %lsr.iv406, %i.ayc
  %i.azs = mul i64 %i.azr, %i.ayb
  %i.azt = sub i64 %i.azs, %i.ayg
  %invariant.gep = getelementptr [4 x i8], ptr %i.axy, i64 %i.azt ; 2 uses
  br i1 %min.iters.check1441, label %"for f78.s0.v3.preheader", label %vector.scevcheck1434

vector.scevcheck1434:                             ; preds = %"for f78.s0.v4"
  %i.azu = mul i32 %i.ayz, %indvar1435            ; 4 uses
  %i.azv = add i32 %i.azk, %i.azu                 ; 2 uses
  %i.azw = add i32 %i.azh, %i.azu                 ; 2 uses
  %i.azx = add i32 %i.aze, %i.azu                 ; 2 uses
  %i.azy = add i32 %i.ayy, %i.azu                 ; 2 uses
  %i.azz = add i32 %i.azy, %mul.result1438
  %i.baa = icmp slt i32 %i.azz, %i.azy
  %i.bab = add i32 %i.azx, %mul.result1438
  %i.bac = icmp slt i32 %i.bab, %i.azx
  %i.bad = add i32 %i.azw, %mul.result1438
  %i.bae = icmp slt i32 %i.bad, %i.azw
  %i.baf = add i32 %i.azv, %mul.result1438
  %i.bag = icmp slt i32 %i.baf, %i.azv
  %i.bah = or i1 %i.bac, %i.baa
  %i.bai = or i1 %i.bah, %i.bae
  %i.baj = or i1 %i.bag, %i.bai
  br i1 %i.baj, label %"for f78.s0.v3.preheader", label %vector.ph1442

vector.ph1442:                                    ; preds = %vector.scevcheck1434
  %i.bak = add i32 %lsr.iv422, %i.azo
  %i.bal = add i32 %lsr.iv418, %i.azo
  %i.bam = add i32 %lsr.iv414, %i.azo
  %i.ban = add i32 %lsr.iv410, %i.azo
  %invariant.op1497 = add i32 %lsr.iv422, %i.ak
  %invariant.op1499 = add i32 %lsr.iv418, %i.ak
  %invariant.op1501 = add i32 %lsr.iv414, %i.ak
  %invariant.op1503 = add i32 %lsr.iv410, %i.ak
  %invariant.gep1505 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ayg
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %vector.ph1442
  %index1445 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1470, %vector.body1444 ] ; 3 uses
  %i.bao = trunc i64 %index1445 to i32
  %i.bap = shl i32 %i.bao, 1                      ; 4 uses
  %.reass1498 = add i32 %i.bap, %invariant.op1497
  %.reass1500 = add i32 %i.bap, %invariant.op1499
  %.reass1502 = add i32 %i.bap, %invariant.op1501
  %.reass1504 = add i32 %i.bap, %invariant.op1503
  %i.baq = sext i32 %.reass1504 to i64
  %i.bar = getelementptr [4 x i8], ptr %i.arl, i64 %i.baq ; 2 uses
  %i.bas = getelementptr i8, ptr %i.bar, i64 4
  %wide.vec1446 = load <8 x float>, ptr %i.bas, align 4, !tbaa !50 ; 2 uses
  %strided.vec1447 = shufflevector <8 x float> %wide.vec1446, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1448 = shufflevector <8 x float> %wide.vec1446, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bat = getelementptr i8, ptr %i.bar, i64 -4
  %wide.vec1449 = load <8 x float>, ptr %i.bat, align 4, !tbaa !50 ; 2 uses
  %strided.vec1450 = shufflevector <8 x float> %wide.vec1449, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1451 = shufflevector <8 x float> %wide.vec1449, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bau = fadd <4 x float> %strided.vec1447, %strided.vec1451
  %i.bav = fmul <4 x float> %i.bau, splat (float 3.000000e+00)
  %i.baw = fadd <4 x float> %strided.vec1450, %i.bav
  %i.bax = fadd <4 x float> %strided.vec1448, %i.baw
  %i.bay = fmul <4 x float> %i.bax, splat (float 1.250000e-01)
  %i.baz = sext i32 %.reass1502 to i64
  %i.bba = getelementptr [4 x i8], ptr %i.arl, i64 %i.baz ; 2 uses
  %i.bbb = getelementptr i8, ptr %i.bba, i64 4
  %wide.vec1452 = load <8 x float>, ptr %i.bbb, align 4, !tbaa !50 ; 2 uses
  %strided.vec1453 = shufflevector <8 x float> %wide.vec1452, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1454 = shufflevector <8 x float> %wide.vec1452, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbc = getelementptr i8, ptr %i.bba, i64 -4
  %wide.vec1455 = load <8 x float>, ptr %i.bbc, align 4, !tbaa !50 ; 2 uses
  %strided.vec1456 = shufflevector <8 x float> %wide.vec1455, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1457 = shufflevector <8 x float> %wide.vec1455, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbd = fadd <4 x float> %strided.vec1453, %strided.vec1457
  %i.bbe = fmul <4 x float> %i.bbd, splat (float 3.000000e+00)
  %i.bbf = fadd <4 x float> %strided.vec1456, %i.bbe
  %i.bbg = fadd <4 x float> %strided.vec1454, %i.bbf
  %i.bbh = sext i32 %.reass1500 to i64
  %i.bbi = getelementptr [4 x i8], ptr %i.arl, i64 %i.bbh ; 2 uses
  %i.bbj = getelementptr i8, ptr %i.bbi, i64 4
  %wide.vec1458 = load <8 x float>, ptr %i.bbj, align 4, !tbaa !50 ; 2 uses
  %strided.vec1459 = shufflevector <8 x float> %wide.vec1458, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1460 = shufflevector <8 x float> %wide.vec1458, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbk = getelementptr i8, ptr %i.bbi, i64 -4
  %wide.vec1461 = load <8 x float>, ptr %i.bbk, align 4, !tbaa !50 ; 2 uses
  %strided.vec1462 = shufflevector <8 x float> %wide.vec1461, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1463 = shufflevector <8 x float> %wide.vec1461, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbl = fadd <4 x float> %strided.vec1459, %strided.vec1463
  %i.bbm = fmul <4 x float> %i.bbl, splat (float 3.000000e+00)
  %i.bbn = fadd <4 x float> %strided.vec1462, %i.bbm
  %i.bbo = fadd <4 x float> %strided.vec1460, %i.bbn
  %i.bbp = fadd <4 x float> %i.bbg, %i.bbo
  %i.bbq = fmul <4 x float> %i.bbp, splat (float 3.750000e-01)
  %i.bbr = sext i32 %.reass1498 to i64
  %i.bbs = getelementptr [4 x i8], ptr %i.arl, i64 %i.bbr ; 2 uses
  %i.bbt = getelementptr i8, ptr %i.bbs, i64 4
  %wide.vec1464 = load <8 x float>, ptr %i.bbt, align 4, !tbaa !50 ; 2 uses
  %strided.vec1465 = shufflevector <8 x float> %wide.vec1464, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1466 = shufflevector <8 x float> %wide.vec1464, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbu = getelementptr i8, ptr %i.bbs, i64 -4
  %wide.vec1467 = load <8 x float>, ptr %i.bbu, align 4, !tbaa !50 ; 2 uses
  %strided.vec1468 = shufflevector <8 x float> %wide.vec1467, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1469 = shufflevector <8 x float> %wide.vec1467, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbv = fadd <4 x float> %strided.vec1465, %strided.vec1469
  %i.bbw = fmul <4 x float> %i.bbv, splat (float 3.000000e+00)
  %i.bbx = fadd <4 x float> %strided.vec1468, %i.bbw
  %i.bby = fadd <4 x float> %strided.vec1466, %i.bbx
  %i.bbz = fmul <4 x float> %i.bby, splat (float 1.250000e-01)
  %i.bca = fadd <4 x float> %i.bbq, %i.bbz
  %i.bcb = fadd <4 x float> %i.bay, %i.bca
  %i.bcc = fmul <4 x float> %i.bcb, splat (float 1.250000e-01)
  %gep1506 = getelementptr [4 x i8], ptr %invariant.gep1505, i64 %index1445
  store <4 x float> %i.bcc, ptr %gep1506, align 4, !tbaa !52
  %index.next1470 = add nuw i64 %index1445, 4     ; 2 uses
  %i.bcd = icmp eq i64 %index.next1470, %n.vec1443
  br i1 %i.bcd, label %middle.block1471, label %vector.body1444, !llvm.loop !45

middle.block1471:                                 ; preds = %vector.body1444
  br i1 %cmp.n1472, label %"end for f78.s0.v3.loopexit", label %"for f78.s0.v3.preheader"

"for f78.s0.v3.preheader":                        ; preds = %vector.scevcheck1434, %"for f78.s0.v4", %middle.block1471
  %lsr.iv424.ph = phi i32 [ %lsr.iv422, %vector.scevcheck1434 ], [ %lsr.iv422, %"for f78.s0.v4" ], [ %i.bak, %middle.block1471 ]
  %lsr.iv420.ph = phi i32 [ %lsr.iv418, %vector.scevcheck1434 ], [ %lsr.iv418, %"for f78.s0.v4" ], [ %i.bal, %middle.block1471 ]
  %lsr.iv416.ph = phi i32 [ %lsr.iv414, %vector.scevcheck1434 ], [ %lsr.iv414, %"for f78.s0.v4" ], [ %i.bam, %middle.block1471 ]
  %lsr.iv412.ph = phi i32 [ %lsr.iv410, %vector.scevcheck1434 ], [ %lsr.iv410, %"for f78.s0.v4" ], [ %i.ban, %middle.block1471 ]
  %lsr.iv408.ph = phi i64 [ %i.ayg, %vector.scevcheck1434 ], [ %i.ayg, %"for f78.s0.v4" ], [ %i.azp, %middle.block1471 ]
  %lsr.iv404.ph = phi i32 [ %i.aph, %vector.scevcheck1434 ], [ %i.aph, %"for f78.s0.v4" ], [ %i.azq, %middle.block1471 ]
  br label %"for f78.s0.v3"

"for f78.s0.v3":                                  ; preds = %"for f78.s0.v3.preheader", %"for f78.s0.v3"
  %lsr.iv424 = phi i32 [ %lsr.iv.next425, %"for f78.s0.v3" ], [ %lsr.iv424.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv420 = phi i32 [ %lsr.iv.next421, %"for f78.s0.v3" ], [ %lsr.iv420.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv416 = phi i32 [ %lsr.iv.next417, %"for f78.s0.v3" ], [ %lsr.iv416.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv412 = phi i32 [ %lsr.iv.next413, %"for f78.s0.v3" ], [ %lsr.iv412.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv408 = phi i64 [ %lsr.iv.next409, %"for f78.s0.v3" ], [ %lsr.iv408.ph, %"for f78.s0.v3.preheader" ] ; 2 uses
  %lsr.iv404 = phi i32 [ %lsr.iv.next405, %"for f78.s0.v3" ], [ %lsr.iv404.ph, %"for f78.s0.v3.preheader" ]
  %i.bce = add i32 %lsr.iv424, %i.ak
  %i.bcf = add i32 %lsr.iv420, %i.ak
  %i.bcg = add i32 %lsr.iv416, %i.ak
  %i.bch = add i32 %lsr.iv412, %i.ak
  %i.bci = sext i32 %i.bch to i64
  %i.bcj = getelementptr [4 x i8], ptr %i.arl, i64 %i.bci ; 2 uses
  %i.bck = getelementptr i8, ptr %i.bcj, i64 4
  %i.bcl = getelementptr i8, ptr %i.bcj, i64 -4
  %i.bcm = sext i32 %i.bcg to i64
  %i.bcn = getelementptr [4 x i8], ptr %i.arl, i64 %i.bcm ; 3 uses
  %i.bco = getelementptr i8, ptr %i.bcn, i64 8
  %i.bcp = load float, ptr %i.bco, align 4, !tbaa !50
  %i.bcq = load <2 x float>, ptr %i.bcn, align 4, !tbaa !50
  %i.bcr = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bcq)
  %i.bcs = fmul float %i.bcr, 3.000000e+00
  %i.bct = getelementptr i8, ptr %i.bcn, i64 -4
  %i.bcu = load float, ptr %i.bct, align 4, !tbaa !50
  %i.bcv = fadd float %i.bcu, %i.bcs
  %i.bcw = fadd float %i.bcp, %i.bcv
  %i.bcx = sext i32 %i.bcf to i64
  %i.bcy = getelementptr [4 x i8], ptr %i.arl, i64 %i.bcx ; 3 uses
  %i.bcz = getelementptr i8, ptr %i.bcy, i64 8
  %i.bda = load float, ptr %i.bcz, align 4, !tbaa !50
  %i.bdb = load <2 x float>, ptr %i.bcy, align 4, !tbaa !50
  %i.bdc = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bdb)
  %i.bdd = fmul float %i.bdc, 3.000000e+00
  %i.bde = getelementptr i8, ptr %i.bcy, i64 -4
  %i.bdf = load float, ptr %i.bde, align 4, !tbaa !50
  %i.bdg = fadd float %i.bdf, %i.bdd
  %i.bdh = fadd float %i.bda, %i.bdg
  %i.bdi = fadd float %i.bcw, %i.bdh
  %i.bdj = fmul float %i.bdi, 3.750000e-01
  %i.bdk = sext i32 %i.bce to i64
  %i.bdl = getelementptr [4 x i8], ptr %i.arl, i64 %i.bdk ; 2 uses
  %i.bdm = getelementptr i8, ptr %i.bdl, i64 4
  %i.bdn = getelementptr i8, ptr %i.bdl, i64 -4
  %i.bdo = load <2 x float>, ptr %i.bck, align 4, !tbaa !50 ; 2 uses
  %i.bdp = load <2 x float>, ptr %i.bcl, align 4, !tbaa !50 ; 2 uses
  %i.bdq = load <2 x float>, ptr %i.bdm, align 4, !tbaa !50 ; 2 uses
  %i.bdr = load <2 x float>, ptr %i.bdn, align 4, !tbaa !50 ; 2 uses
  %i.bds = shufflevector <2 x float> %i.bdo, <2 x float> %i.bdq, <2 x i32> <i32 0, i32 2>
  %i.bdt = shufflevector <2 x float> %i.bdp, <2 x float> %i.bdr, <2 x i32> <i32 1, i32 3>
  %i.bdu = fadd <2 x float> %i.bds, %i.bdt
  %i.bdv = fmul <2 x float> %i.bdu, splat (float 3.000000e+00)
  %i.bdw = shufflevector <2 x float> %i.bdp, <2 x float> %i.bdr, <2 x i32> <i32 0, i32 2>
  %i.bdx = fadd <2 x float> %i.bdw, %i.bdv
  %i.bdy = shufflevector <2 x float> %i.bdo, <2 x float> %i.bdq, <2 x i32> <i32 1, i32 3>
  %i.bdz = fadd <2 x float> %i.bdy, %i.bdx
  %i.bea = fmul <2 x float> %i.bdz, splat (float 1.250000e-01) ; 2 uses
  %i.beb = extractelement <2 x float> %i.bea, i64 1
  %i.bec = fadd float %i.bdj, %i.beb
  %i.bed = extractelement <2 x float> %i.bea, i64 0
  %i.bee = fadd float %i.bed, %i.bec
  %i.bef = fmul float %i.bee, 1.250000e-01
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %lsr.iv408
  store float %i.bef, ptr %gep, align 4, !tbaa !52
  %lsr.iv.next405 = add i32 %lsr.iv404, -1        ; 2 uses
  %lsr.iv.next409 = add nsw i64 %lsr.iv408, 1
  %lsr.iv.next413 = add i32 %lsr.iv412, 2
  %lsr.iv.next417 = add i32 %lsr.iv416, 2
  %lsr.iv.next421 = add i32 %lsr.iv420, 2
  %lsr.iv.next425 = add i32 %lsr.iv424, 2
  %.not586 = icmp eq i32 %lsr.iv.next405, 0
  br i1 %.not586, label %"end for f78.s0.v3.loopexit", label %"for f78.s0.v3", !llvm.loop !46

"end for f78.s0.v3.loopexit":                     ; preds = %"for f78.s0.v3", %middle.block1471
  %lsr.iv.next407 = add nsw i64 %lsr.iv406, 1     ; 2 uses
  %lsr426 = trunc i64 %lsr.iv.next407 to i32
  %lsr.iv.next411 = add i32 %lsr.iv410, %i.ayf
  %lsr.iv.next415 = add i32 %lsr.iv414, %i.ayf
  %lsr.iv.next419 = add i32 %lsr.iv418, %i.ayf
  %lsr.iv.next423 = add i32 %lsr.iv422, %i.ayf
  %.not587 = icmp eq i32 %i.aya, %lsr426
  %indvar.next1436 = add i32 %indvar1435, 1
  br i1 %.not587, label %"assert succeeded188.split", label %"for f78.s0.v4"

"assert succeeded188.split":                      ; preds = %"end for f78.s0.v3.loopexit", %"for f78.s0.v4.preheader"
  %i.beg = call ptr @halide_malloc(ptr null, i64 %i.axx) ; 4 uses
  %.not588 = icmp eq ptr %i.beg, null
  br i1 %.not588, label %call_destructor.exit210, label %"for f132.s0.v4.preheader", !prof !4

"assert succeeded188.thread":                     ; preds = %"produce f78"
  %i.beh = call ptr @halide_malloc(ptr null, i64 %i.axx) ; 2 uses
  %.not588845 = icmp eq ptr %i.beh, null
  br i1 %.not588845, label %call_destructor.exit210, label %if.then.i298, !prof !4

"for f132.s0.v4.preheader":                       ; preds = %"assert succeeded188.split"
  %i.bei = add nsw i32 %i.af, 1
  %i.bej = sub nsw i32 %i.bei, %i.aj              ; 2 uses
  %i.bek = sext i32 %f10.stride.2 to i64          ; 2 uses
  br i1 %.not585, label %if.then.i298, label %"for f132.s0.v4", !prof !4

"for f132.s0.v4":                                 ; preds = %"for f132.s0.v4.preheader", %"end for f132.s0.v3.loopexit"
  %lsr.iv395 = phi i64 [ %lsr.iv.next396, %"end for f132.s0.v3.loopexit" ], [ %i.ayc, %"for f132.s0.v4.preheader" ] ; 3 uses
  %lsr403 = trunc i64 %lsr.iv395 to i32
  %i.bel = sub nsw i32 %lsr403, %i.aa
  %i.bem = mul i32 %i.bel, %i.bej
  %i.ben = sub i32 %i.bem, %i.aj
  %i.beo = sub nsw i64 %lsr.iv395, %i.ayc
  %i.bep = mul i64 %i.beo, %i.ayb
  %i.beq = sub i64 %i.bep, %i.ayg
  %invariant.gep977 = getelementptr [4 x i8], ptr %i.beg, i64 %i.beq
  br label %"for f132.s0.v3"

if.then.i298:                                     ; preds = %"end for f132.s0.v3.loopexit", %"for f132.s0.v4.preheader", %"assert succeeded188.thread"
  %i.ber = phi ptr [ %i.beh, %"assert succeeded188.thread" ], [ %i.beg, %"for f132.s0.v4.preheader" ], [ %i.beg, %"end for f132.s0.v3.loopexit" ] ; 6 uses
  call void @halide_free(ptr null, ptr nonnull %i.axy) #6
  %f131.v3.extent_realized.s = sub nsw i32 %a2, %a3
  %reass.sub1010 = sub nsw i32 %a0, %a1
  %i.bes = add nsw i32 %reass.sub1010, 1
  %i.bet = zext i32 %i.bes to i64                 ; 3 uses
  %i.beu = add nsw i32 %f131.v3.extent_realized.s, 1 ; 5 uses
  %i.bev = zext i32 %i.beu to i64                 ; 2 uses
  %i.bew = shl nuw nsw i64 %i.bev, 2              ; 2 uses
  %i.bex = mul i64 %i.bew, %i.bet                 ; 3 uses
  %i.bey = icmp ult i64 %i.bex, 2147483648
  %i.bez = and i64 %i.bew, 4294967292
  %i.bfa = mul nuw i64 %i.bez, %i.bet
  %i.bfb = lshr i64 %i.bfa, 32
  %i.bfc = lshr i64 %i.bev, 30
  %i.bfd = mul nuw nsw i64 %i.bfc, %i.bet
  %i.bfe = add nuw nsw i64 %i.bfb, %i.bfd
  %i.bff = icmp samesign ult i64 %i.bfe, 4294967296
  %i.bfg = and i1 %i.bey, %i.bff
  br i1 %i.bfg, label %"assert succeeded192", label %"assert failed191", !prof !5

"for f132.s0.v3":                                 ; preds = %"for f132.s0.v3", %"for f132.s0.v4"
  %lsr.iv397 = phi i64 [ %i.ayg, %"for f132.s0.v4" ], [ %lsr.iv.next398, %"for f132.s0.v3" ] ; 3 uses
  %lsr.iv393 = phi i32 [ %i.bej, %"for f132.s0.v4" ], [ %lsr.iv.next394, %"for f132.s0.v3" ]
  %i.bfh = trunc i64 %lsr.iv397 to i32
  %tmp401 = add i32 %i.ben, %i.bfh
  %i.bfi = sext i32 %tmp401 to i64                ; 3 uses
  %i.bfj = getelementptr inbounds [4 x i8], ptr %i.axy, i64 %i.bfi
  %i.bfk = load float, ptr %i.bfj, align 4, !tbaa !52
  %t2188 = fmul float %i.bfk, %i.am               ; 2 uses
  %a752 = fptosi float %t2188 to i32
  %a755 = call i32 @llvm.smin.i32(i32 %b6, i32 %a752)
  %i.bfl = call i32 @llvm.smax.i32(i32 %a755, i32 0) ; 2 uses
  %i.bfm = uitofp nneg i32 %i.bfl to float
  %t2190 = fsub float %t2188, %i.bfm              ; 2 uses
  %t2191 = sub nsw i32 %i.bfl, %i.cs
  %i.bfn = sext i32 %t2191 to i64                 ; 2 uses
  %i.bfo = add nsw i64 %i.bfn, 1
  %i.bfp = mul nsw i64 %i.bfo, %i.bek
  %i.bfq = getelementptr [4 x i8], ptr %i.aqd, i64 %i.bfp
  %i.bfr = getelementptr [4 x i8], ptr %i.bfq, i64 %i.bfi
  %i.bfs = load float, ptr %i.bfr, align 4, !tbaa !14
  %i.bft = fmul float %i.bfs, %t2190
  %i.bfu = mul nsw i64 %i.bfn, %i.bek
  %i.bfv = getelementptr [4 x i8], ptr %i.aqd, i64 %i.bfu
  %i.bfw = getelementptr [4 x i8], ptr %i.bfv, i64 %i.bfi
  %i.bfx = load float, ptr %i.bfw, align 4, !tbaa !14
  %i.bfy = fsub float 1.000000e+00, %t2190
  %i.bfz = fmul float %i.bfx, %i.bfy
  %i.bga = fadd float %i.bft, %i.bfz
  %gep978 = getelementptr [4 x i8], ptr %invariant.gep977, i64 %lsr.iv397
  store float %i.bga, ptr %gep978, align 4, !tbaa !54
  %lsr.iv.next394 = add i32 %lsr.iv393, -1        ; 2 uses
  %lsr.iv.next398 = add nsw i64 %lsr.iv397, 1
  %.not593 = icmp eq i32 %lsr.iv.next394, 0
  br i1 %.not593, label %"end for f132.s0.v3.loopexit", label %"for f132.s0.v3"

"end for f132.s0.v3.loopexit":                    ; preds = %"for f132.s0.v3"
  %lsr.iv.next396 = add nsw i64 %lsr.iv395, 1     ; 2 uses
  %lsr402 = trunc i64 %lsr.iv.next396 to i32
  %.not594 = icmp eq i32 %i.aya, %lsr402
  br i1 %.not594, label %if.then.i298, label %"for f132.s0.v4"

"assert failed191":                               ; preds = %if.then.i298
  %i.bgb = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.26, i64 %i.bex, i64 2147483647) #3
  br label %call_destructor.exit205

"assert succeeded192":                            ; preds = %if.then.i298
  %i.bgc = add nuw nsw i64 %i.bex, 4
  %i.bgd = call ptr @halide_malloc(ptr null, i64 %i.bgc) ; 6 uses
  %.not595 = icmp eq ptr %i.bgd, null
  br i1 %.not595, label %"assert failed193", label %"produce f131", !prof !4

"assert failed193":                               ; preds = %"assert succeeded192"
  %i.bge = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit205

"produce f131":                                   ; preds = %"assert succeeded192"
  %i.bgf = add nsw i32 %a0, 1
  %.not596 = icmp sgt i32 %a1, %a0
  br i1 %.not596, label %if.then.i307, label %"for f131.s0.v4.preheader", !prof !4

"for f131.s0.v4.preheader":                       ; preds = %"produce f131"
  %i.bgg = sext i32 %i.beu to i64
  %i.bgh = sext i32 %a1 to i64                    ; 3 uses
  %i.bgi = add nsw i32 %f9.v3.extent_realized.s.s, 1
  %i.bgj = sub nsw i32 %i.bgi, %f9.v3.min_realized ; 2 uses
  %i.bgk = sext i32 %b753 to i64
  %i.bgl = sext i32 %b751 to i64                  ; 2 uses
  %reass.sub1012 = sub nsw i64 %i.bgk, %i.bgl
  %i.bgm = add nsw i64 %reass.sub1012, 1          ; 2 uses
  %.not598 = icmp sgt i32 %a3, %a2
  %i.bgn = sext i32 %a3 to i64                    ; 3 uses
  %i.bgo = xor i32 %i.aa, -1
  %i.bgp = sext i32 %f10.stride.2 to i64          ; 2 uses
  %i.bgq = sext i32 %f9.stride.2 to i64           ; 2 uses
  br i1 %.not598, label %if.then.i307, label %"for f131.s0.v4.preheader1018", !prof !4

"for f131.s0.v4.preheader1018":                   ; preds = %"for f131.s0.v4.preheader"
  %i.bgr = sext i32 %b748 to i64
  %i.bgs = sub nsw i64 %i.bgh, %i.bgr
  %i.bgt = mul nsw i64 %i.bgm, %i.bgs
  %i.bgu = sub nsw i64 %i.bgt, %i.bgl
  %i.bgv = sub nsw i32 %a1, %f9.v4.min_realized
  %i.bgw = mul i32 %i.bgj, %i.bgv
  %i.bgx = sub i32 %i.bgw, %f9.v3.min_realized
  br label %"for f131.s0.v4"

"for f131.s0.v4":                                 ; preds = %"for f131.s0.v4.preheader1018", %"end for f131.s0.v3.loopexit"
  %lsr.iv385 = phi i64 [ %lsr.iv.next386, %"end for f131.s0.v3.loopexit" ], [ %i.bgu, %"for f131.s0.v4.preheader1018" ] ; 2 uses
  %lsr.iv378 = phi i32 [ %lsr.iv.next379, %"end for f131.s0.v3.loopexit" ], [ %i.bgx, %"for f131.s0.v4.preheader1018" ] ; 2 uses
  %lsr.iv374 = phi i64 [ %lsr.iv.next375, %"end for f131.s0.v3.loopexit" ], [ %i.bgh, %"for f131.s0.v4.preheader1018" ] ; 3 uses
  %lsr392 = trunc i64 %lsr.iv374 to i32           ; 2 uses
  %i.bgy = add i32 %lsr.iv378, %a3
  %i.bgz = add i64 %lsr.iv385, %i.bgn
  %i.bha = shl i64 %i.bgz, 2
  %scevgep387 = getelementptr i8, ptr %i.arl, i64 %i.bha
  %i.bhb = shl i32 %lsr392, 1
  %i.bhc = and i32 %i.bhb, 2
  %i.bhd = ashr i32 %lsr392, 1                    ; 2 uses
  %i.bhe = add nsw i32 %i.bhd, %i.bgo
  %i.bhf = add nsw i32 %i.bhe, %i.bhc
  %t2196 = mul nsw i32 %i.bhf, %i.aph
  %i.bhg = sub nsw i32 %i.bhd, %i.aa
  %t2200 = mul nsw i32 %i.bhg, %i.aph
  %i.bhh = sext i32 %t2200 to i64                 ; 2 uses
  %i.bhi = sext i32 %t2196 to i64                 ; 2 uses
  %i.bhj = sub nsw i64 %lsr.iv374, %i.bgh
  %i.bhk = mul i64 %i.bhj, %i.bgg
  %i.bhl = sub i64 %i.bhk, %i.bgn
  %invariant.gep979 = getelementptr [4 x i8], ptr %i.bgd, i64 %i.bhl
  br label %"for f131.s0.v3"

if.then.i307:                                     ; preds = %"end for f131.s0.v3.loopexit", %"for f131.s0.v4.preheader", %"produce f131"
  call void @halide_free(ptr null, ptr nonnull %i.aqd) #6
  call void @halide_free(ptr null, ptr nonnull %i.arl) #6
  call void @halide_free(ptr null, ptr nonnull %i.ber) #6
  %f130.v3.min_realized = call i32 @llvm.smin.i32(i32 %a9, i32 %b670) ; 3 uses
  %i.bhm = call i32 @llvm.smax.i32(i32 %b681, i32 %a8)
  %f130.v3.extent_realized.s = sub nsw i32 %i.bhm, %f130.v3.min_realized ; 3 uses
  %reass.sub1013 = sub nsw i32 %a6, %b655
  %i.bhn = add nsw i32 %reass.sub1013, 1
  %i.bho = zext i32 %i.bhn to i64                 ; 3 uses
  %i.bhp = add nsw i32 %f130.v3.extent_realized.s, 1
  %i.bhq = zext i32 %i.bhp to i64                 ; 2 uses
  %i.bhr = shl nuw nsw i64 %i.bhq, 2              ; 2 uses
  %i.bhs = mul i64 %i.bhr, %i.bho                 ; 3 uses
  %i.bht = icmp ult i64 %i.bhs, 2147483648
  %i.bhu = and i64 %i.bhr, 4294967292
  %i.bhv = mul nuw i64 %i.bhu, %i.bho
  %i.bhw = lshr i64 %i.bhv, 32
  %i.bhx = lshr i64 %i.bhq, 30
  %i.bhy = mul nuw nsw i64 %i.bhx, %i.bho
  %i.bhz = add nuw nsw i64 %i.bhw, %i.bhy
  %i.bia = icmp samesign ult i64 %i.bhz, 4294967296
  %i.bib = and i1 %i.bht, %i.bia
  br i1 %i.bib, label %"assert succeeded196", label %"assert failed195", !prof !5

"for f131.s0.v3":                                 ; preds = %"for f131.s0.v3", %"for f131.s0.v4"
  %lsr.iv388 = phi ptr [ %scevgep387, %"for f131.s0.v4" ], [ %scevgep389, %"for f131.s0.v3" ] ; 2 uses
  %lsr.iv380 = phi i32 [ %i.bgy, %"for f131.s0.v4" ], [ %lsr.iv.next381, %"for f131.s0.v3" ] ; 2 uses
  %lsr.iv376 = phi i64 [ %i.bgn, %"for f131.s0.v4" ], [ %lsr.iv.next377, %"for f131.s0.v3" ] ; 3 uses
  %lsr.iv372 = phi i32 [ %i.beu, %"for f131.s0.v4" ], [ %lsr.iv.next373, %"for f131.s0.v3" ]
  %i.bic = load float, ptr %lsr.iv388, align 4, !tbaa !50
  %t2192 = fmul float %i.bic, %i.am               ; 2 uses
  %a756 = fptosi float %t2192 to i32
  %a759 = call i32 @llvm.smin.i32(i32 %b6, i32 %a756)
  %i.bid = call i32 @llvm.smax.i32(i32 %a759, i32 0) ; 2 uses
  %i.bie = uitofp nneg i32 %i.bid to float
  %t2194 = fsub float %t2192, %i.bie              ; 2 uses
  %tmp384 = trunc i64 %lsr.iv376 to i32           ; 2 uses
  %i.bif = shl i32 %tmp384, 1
  %i.big = and i32 %i.bif, 2
  %i.bih = ashr i32 %tmp384, 1
  %i.bii = sub nsw i32 %i.bih, %i.aj              ; 2 uses
  %t2195 = add nsw i32 %i.bii, %i.big
  %t2204 = sub nsw i32 %i.bid, %i.cs
  %i.bij = sext i32 %t2204 to i64                 ; 3 uses
  %i.bik = add nsw i64 %i.bij, 1                  ; 2 uses
  %i.bil = mul nsw i64 %i.bik, %i.bgp             ; 4 uses
  %i.bim = sext i32 %i.bii to i64                 ; 2 uses
  %i.bin = add nsw i64 %i.bim, %i.bhh             ; 2 uses
  %i.bio = getelementptr [4 x i8], ptr %i.aqd, i64 %i.bin ; 2 uses
  %i.bip = getelementptr [4 x i8], ptr %i.bio, i64 %i.bil
  %i.biq = load float, ptr %i.bip, align 4, !tbaa !14
  %i.bir = sext i32 %t2195 to i64                 ; 2 uses
  %i.bis = add nsw i64 %i.bir, %i.bhh             ; 2 uses
  %i.bit = getelementptr [4 x i8], ptr %i.aqd, i64 %i.bis ; 2 uses
  %i.biu = getelementptr [4 x i8], ptr %i.bit, i64 %i.bil
  %i.biv = getelementptr i8, ptr %i.biu, i64 -4
  %i.biw = load float, ptr %i.biv, align 4, !tbaa !14
  %i.bix = add nsw i64 %i.bim, %i.bhi             ; 2 uses
  %i.biy = getelementptr [4 x i8], ptr %i.aqd, i64 %i.bix ; 2 uses
  %i.biz = getelementptr [4 x i8], ptr %i.biy, i64 %i.bil
  %i.bja = load float, ptr %i.biz, align 4, !tbaa !14
  %i.bjb = add nsw i64 %i.bir, %i.bhi             ; 2 uses
  %i.bjc = getelementptr [4 x i8], ptr %i.aqd, i64 %i.bjb ; 2 uses
  %i.bjd = getelementptr [4 x i8], ptr %i.bjc, i64 %i.bil
  %i.bje = getelementptr i8, ptr %i.bjd, i64 -4
  %i.bjf = load float, ptr %i.bje, align 4, !tbaa !14
  %i.bjg = insertelement <2 x float> poison, float %i.biq, i64 0
  %i.bjh = insertelement <2 x float> %i.bjg, float %i.bja, i64 1
  %i.bji = fmul <2 x float> %i.bjh, splat (float 7.500000e-01)
  %i.bjj = insertelement <2 x float> poison, float %i.biw, i64 0
  %i.bjk = insertelement <2 x float> %i.bjj, float %i.bjf, i64 1
  %i.bjl = fmul <2 x float> %i.bjk, splat (float 2.500000e-01)
  %i.bjm = fadd <2 x float> %i.bji, %i.bjl
  %i.bjn = fmul <2 x float> %i.bjm, <float 7.500000e-01, float 2.500000e-01>
  %i.bjo = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bjn)
  %i.bjp = mul nsw i64 %i.bik, %i.bgq
  %i.bjq = sext i32 %lsr.iv380 to i64             ; 2 uses
  %i.bjr = getelementptr [4 x i8], ptr %i.ahl, i64 %i.bjp
  %i.bjs = getelementptr [4 x i8], ptr %i.bjr, i64 %i.bjq
  %i.bjt = load float, ptr %i.bjs, align 4, !tbaa !16
  %i.bju = fsub float %i.bjt, %i.bjo
  %i.bjv = fmul float %t2194, %i.bju
  %i.bjw = mul nsw i64 %i.bij, %i.bgp             ; 4 uses
  %i.bjx = getelementptr [4 x i8], ptr %i.bio, i64 %i.bjw
  %i.bjy = load float, ptr %i.bjx, align 4, !tbaa !14
  %i.bjz = getelementptr [4 x i8], ptr %i.bit, i64 %i.bjw
  %i.bka = getelementptr i8, ptr %i.bjz, i64 -4
  %i.bkb = load float, ptr %i.bka, align 4, !tbaa !14
  %i.bkc = getelementptr [4 x i8], ptr %i.biy, i64 %i.bjw
  %i.bkd = load float, ptr %i.bkc, align 4, !tbaa !14
  %i.bke = getelementptr [4 x i8], ptr %i.bjc, i64 %i.bjw
  %i.bkf = getelementptr i8, ptr %i.bke, i64 -4
  %i.bkg = load float, ptr %i.bkf, align 4, !tbaa !14
  %i.bkh = insertelement <2 x float> poison, float %i.bjy, i64 0
  %i.bki = insertelement <2 x float> %i.bkh, float %i.bkd, i64 1
  %i.bkj = fmul <2 x float> %i.bki, splat (float 7.500000e-01)
  %i.bkk = insertelement <2 x float> poison, float %i.bkb, i64 0
  %i.bkl = insertelement <2 x float> %i.bkk, float %i.bkg, i64 1
  %i.bkm = fmul <2 x float> %i.bkl, splat (float 2.500000e-01)
  %i.bkn = fadd <2 x float> %i.bkj, %i.bkm
  %i.bko = fmul <2 x float> %i.bkn, <float 7.500000e-01, float 2.500000e-01>
  %i.bkp = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bko)
  %i.bkq = mul nsw i64 %i.bij, %i.bgq
  %i.bkr = getelementptr [4 x i8], ptr %i.ahl, i64 %i.bkq
  %i.bks = getelementptr [4 x i8], ptr %i.bkr, i64 %i.bjq
  %i.bkt = load float, ptr %i.bks, align 4, !tbaa !16
  %i.bku = fsub float %i.bkt, %i.bkp
  %i.bkv = fsub float 1.000000e+00, %t2194
  %i.bkw = fmul float %i.bkv, %i.bku
  %i.bkx = fadd float %i.bjv, %i.bkw
  %i.bky = getelementptr inbounds [4 x i8], ptr %i.ber, i64 %i.bin
  %i.bkz = load float, ptr %i.bky, align 4, !tbaa !54
  %i.bla = fmul float %i.bkz, 7.500000e-01
  %i.blb = getelementptr [4 x i8], ptr %i.ber, i64 %i.bis
  %i.blc = getelementptr i8, ptr %i.blb, i64 -4
  %i.bld = load float, ptr %i.blc, align 4, !tbaa !54
  %i.ble = fmul float %i.bld, 2.500000e-01
  %i.blf = fadd float %i.bla, %i.ble
  %i.blg = fmul float %i.blf, 7.500000e-01
  %i.blh = getelementptr inbounds [4 x i8], ptr %i.ber, i64 %i.bix
  %i.bli = load float, ptr %i.blh, align 4, !tbaa !54
  %i.blj = fmul float %i.bli, 7.500000e-01
  %i.blk = getelementptr [4 x i8], ptr %i.ber, i64 %i.bjb
  %i.bll = getelementptr i8, ptr %i.blk, i64 -4
  %i.blm = load float, ptr %i.bll, align 4, !tbaa !54
  %i.bln = fmul float %i.blm, 2.500000e-01
  %i.blo = fadd float %i.blj, %i.bln
  %i.blp = fmul float %i.blo, 2.500000e-01
  %i.blq = fadd float %i.blg, %i.blp
  %i.blr = fadd float %i.bkx, %i.blq
  %gep980 = getelementptr [4 x i8], ptr %invariant.gep979, i64 %lsr.iv376
  store float %i.blr, ptr %gep980, align 4, !tbaa !56
  %lsr.iv.next373 = add i32 %lsr.iv372, -1        ; 2 uses
  %lsr.iv.next377 = add nsw i64 %lsr.iv376, 1
  %lsr.iv.next381 = add i32 %lsr.iv380, 1
  %scevgep389 = getelementptr i8, ptr %lsr.iv388, i64 4
  %.not601 = icmp eq i32 %lsr.iv.next373, 0
  br i1 %.not601, label %"end for f131.s0.v3.loopexit", label %"for f131.s0.v3"

"end for f131.s0.v3.loopexit":                    ; preds = %"for f131.s0.v3"
  %lsr.iv.next375 = add nsw i64 %lsr.iv374, 1     ; 2 uses
  %lsr391 = trunc i64 %lsr.iv.next375 to i32
  %lsr.iv.next379 = add i32 %lsr.iv378, %i.bgj
  %lsr.iv.next386 = add i64 %lsr.iv385, %i.bgm
  %.not602 = icmp eq i32 %i.bgf, %lsr391
  br i1 %.not602, label %if.then.i307, label %"for f131.s0.v4"

"assert failed195":                               ; preds = %if.then.i307
  %i.bls = call i32 @halide_error_buffer_allocation_too_large(ptr null, ptr nonnull @str.27, i64 %i.bhs, i64 2147483647) #3
  br label %call_destructor.exit

"assert succeeded196":                            ; preds = %if.then.i307
  %i.blt = add nuw nsw i64 %i.bhs, 4
  %i.blu = call ptr @halide_malloc(ptr null, i64 %i.blt) ; 5 uses
  %.not606 = icmp eq ptr %i.blu, null
  br i1 %.not606, label %"assert failed197", label %"produce f130", !prof !4

"assert failed197":                               ; preds = %"assert succeeded196"
  %i.blv = call i32 @halide_error_out_of_memory(ptr null) #3
  br label %call_destructor.exit

"produce f130":                                   ; preds = %"assert succeeded196"
  %i.blw = add nsw i32 %a6, 1
  %.not607 = icmp sgt i32 %a7, %a6
  br i1 %.not607, label %if.then.i316, label %"for f130.s0.v4.preheader", !prof !4

"for f130.s0.v4.preheader":                       ; preds = %"produce f130"
  %reass.sub1014 = sub nsw i32 %a8, %a9
  %i.blx = add nsw i32 %reass.sub1014, 1
  %i.bly = sext i32 %f130.v3.min_realized to i64
  %i.blz = mul nsw i64 %i.bly, -4
  %scevgep = getelementptr i8, ptr %i.blu, i64 %i.blz
  %i.bma = sext i32 %f130.v3.extent_realized.s to i64
  %i.bmb = shl nsw i64 %i.bma, 2
  %i.bmc = add nuw nsw i64 %i.bmb, 4
  %i.bmd = sext i32 %b739 to i64
  %i.bme = sext i32 %b737 to i64                  ; 2 uses
  %reass.sub1016 = sub nsw i64 %i.bmd, %i.bme
  %i.bmf = add nsw i64 %reass.sub1016, 1          ; 2 uses
  %.not608 = icmp sgt i32 %a9, %a8
  %i.bmg = sext i32 %a9 to i64                    ; 2 uses
  %i.bmh = xor i32 %a1, -1
  %i.bmi = xor i32 %f9.v4.min_realized, -1
  %i.bmj = sext i32 %f9.stride.2 to i64           ; 2 uses
  %i.bmk = sext i32 %f9.v3.min_realized to i64    ; 2 uses
  %i.bml = sext i32 %f8.stride.2 to i64           ; 2 uses
  %i.bmm = sext i32 %b655 to i64
  br i1 %.not608, label %if.then.i316, label %"for f130.s0.v4.preheader1017", !prof !4

"for f130.s0.v4.preheader1017":                   ; preds = %"for f130.s0.v4.preheader"
  %i.bmn = sext i32 %a7 to i64                    ; 2 uses
  %i.bmo = sext i32 %b733 to i64
  %i.bmp = sub nsw i64 %i.bmn, %i.bmo
  %i.bmq = mul nsw i64 %i.bmf, %i.bmp
  %i.bmr = sub nsw i64 %i.bmq, %i.bme
  %i.bms = sub nsw i32 %a7, %i.adf
  %i.bmt = mul i32 %i.adm, %i.bms
  %i.bmu = sub i32 %i.bmt, %a667
  br label %"for f130.s0.v4"

"for f130.s0.v4":                                 ; preds = %"for f130.s0.v4.preheader1017", %"end for f130.s0.v3.loopexit"
  %lsr.iv363 = phi i64 [ %lsr.iv.next364, %"end for f130.s0.v3.loopexit" ], [ %i.bmr, %"for f130.s0.v4.preheader1017" ] ; 2 uses
  %lsr.iv358 = phi i32 [ %lsr.iv.next359, %"end for f130.s0.v3.loopexit" ], [ %i.bmu, %"for f130.s0.v4.preheader1017" ] ; 2 uses
  %lsr.iv348 = phi i64 [ %lsr.iv.next349, %"end for f130.s0.v3.loopexit" ], [ %i.bmn, %"for f130.s0.v4.preheader1017" ] ; 3 uses
  %lsr371 = trunc i64 %lsr.iv348 to i32           ; 2 uses
  %i.bmv = add i32 %lsr.iv358, %a9
  %i.bmw = add i64 %lsr.iv363, %i.bmg
  %i.bmx = shl i64 %i.bmw, 2
  %scevgep365 = getelementptr i8, ptr %i.aiw, i64 %i.bmx
  %i.bmy = shl i32 %lsr371, 1
  %i.bmz = and i32 %i.bmy, 2
  %i.bna = ashr i32 %lsr371, 1                    ; 3 uses
  %t2210 = add nsw i32 %i.bmz, %i.bna             ; 2 uses
  %i.bnb = add nsw i32 %t2210, %i.bmh
  %t2216 = mul nsw i32 %i.bnb, %i.beu
  %i.bnc = sub nsw i32 %i.bna, %a1
  %t2218 = mul nsw i32 %i.bnc, %i.beu
  %i.bnd = add nsw i32 %t2210, %i.bmi
  %t2223 = mul nsw i32 %i.bnd, %i.agq
  %i.bne = sub nsw i32 %i.bna, %f9.v4.min_realized
  %t2228 = mul nsw i32 %i.bne, %i.agq
  %i.bnf = sext i32 %t2228 to i64
  %invariant.gep981 = getelementptr [4 x i8], ptr %i.ahl, i64 %i.bnf ; 2 uses
  %i.bng = sext i32 %t2223 to i64
  %invariant.gep985 = getelementptr [4 x i8], ptr %i.ahl, i64 %i.bng ; 2 uses
  %i.bnh = sext i32 %t2218 to i64                 ; 2 uses
  %i.bni = sext i32 %t2216 to i64                 ; 2 uses
  %i.bnj = sub i64 %lsr.iv348, %i.bmm
  %i.bnk = mul i64 %i.bnj, %i.bmc
  %scevgep350 = getelementptr i8, ptr %scevgep, i64 %i.bnk
  br label %"for f130.s0.v3"

if.then.i316:                                     ; preds = %"end for f130.s0.v3.loopexit", %"for f130.s0.v4.preheader", %"produce f130"
  call void @halide_free(ptr null, ptr nonnull %i.ahl) #6
  call void @halide_free(ptr null, ptr nonnull %i.aiw) #6
  call void @halide_free(ptr null, ptr nonnull %i.bgd) #6
  %i.bnl = add i32 %b97, 63
  %i.bnm = sub i32 %i.bnl, %a114
  %a775 = ashr i32 %i.bnm, 6
  %i.bnn = call i32 @llvm.smax.i32(i32 %a775, i32 0)
  %i.bno = add nuw nsw i32 %local_laplacian.extent.1, 63
  %b776 = ashr i32 %i.bno, 6                      ; 2 uses
  %local_laplacian.s0.v4.v264.prologue = call i32 @llvm.smin.i32(i32 %b776, i32 %i.bnn) ; 2 uses
  %i.bnp = sub nsw i32 %i.di, %a114
  %i.bnq = ashr i32 %i.bnp, 6
  %a780 = add nsw i32 %i.bnq, -1
  %i.bnr = call i32 @llvm.smin.i32(i32 %b88, i32 %b91)
  %i.bns = sub nsw i32 %i.bnr, %a114
  %b782 = ashr i32 %i.bns, 6
  %a779 = call i32 @llvm.smin.i32(i32 %b782, i32 %a780)
  %i.bnt = call i32 @llvm.smin.i32(i32 %i.do, i32 %a779)
  %b778 = add nsw i32 %i.bnt, 1
  %local_laplacian.s0.v4.v264.epilogue = call i32 @llvm.smax.i32(i32 %local_laplacian.s0.v4.v264.prologue, i32 %b778)
  store float %beta, ptr %0, align 8
  %i.bnu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %b121, ptr %i.bnu, align 4
  %i.bnv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %a772, ptr %i.bnv, align 8
  %i.bnw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %f130.v3.extent_realized.s, ptr %i.bnw, align 4
  %i.bnx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %f130.v3.min_realized, ptr %i.bnx, align 8
  %i.bny = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %f2.v3.extent_realized.s, ptr %i.bny, align 4
  %i.bnz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %f2.v3.min_realized, ptr %i.bnz, align 8
  %i.boa = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %f2.v4.min_realized, ptr %i.boa, align 4
  %i.bob = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %f4.stride.1, ptr %i.bob, align 8
  %i.boc = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %f4.v3.extent_realized.s, ptr %i.boc, align 4
  %i.bod = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %f4.v3.min_realized, ptr %i.bod, align 8
  %i.boe = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %f4.v4.min_realized, ptr %i.boe, align 4
  %i.bof = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %f5.stride.1, ptr %i.bof, align 8
  %i.bog = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %f5.v3.extent_realized.s, ptr %i.bog, align 4
  %i.boh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %f5.v3.min_realized, ptr %i.boh, align 8
  %i.boi = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %f5.v4.min_realized, ptr %i.boi, align 4
  %i.boj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %f6.stride.1, ptr %i.boj, align 8
  %i.bok = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %f6.v3.extent_realized.s, ptr %i.bok, align 4
  %i.bol = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %f6.v3.min_realized, ptr %i.bol, align 8
  %i.bom = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %f6.v4.min_realized, ptr %i.bom, align 4
  %i.bon = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %f7.stride.1, ptr %i.bon, align 8
  %i.boo = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %f7.v3.extent_realized.s, ptr %i.boo, align 4
  %i.bop = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %f7.v3.min_realized, ptr %i.bop, align 8
  %i.boq = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %f7.v4.min_realized, ptr %i.boq, align 4
  %i.bor = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %f72.v3.extent_realized.s, ptr %i.bor, align 8
  %i.bos = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %f72.v3.min_realized, ptr %i.bos, align 4
  %i.bot = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %f72.v4.min_realized, ptr %i.bot, align 8
  %i.bou = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %f73.v3.extent_realized.s, ptr %i.bou, align 4
  %i.bov = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %f73.v3.min_realized, ptr %i.bov, align 8
  %i.bow = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %f73.v4.min_realized, ptr %i.bow, align 4
  %i.box = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %f74.v3.extent_realized.s, ptr %i.box, align 8
  %i.boy = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %f74.v3.min_realized, ptr %i.boy, align 4
  %i.boz = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %f74.v4.min_realized, ptr %i.boz, align 8
  %i.bpa = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %f75.v3.extent_realized.s, ptr %i.bpa, align 4
  %i.bpb = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %f75.v3.min_realized, ptr %i.bpb, align 8
  %i.bpc = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %f75.v4.min_realized, ptr %i.bpc, align 4
  %i.bpd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %f8.stride.2, ptr %i.bpd, align 8
  %i.bpe = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %f8.v3.extent_realized.s, ptr %i.bpe, align 4
  %i.bpf = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %a667, ptr %i.bpf, align 8
  %i.bpg = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.adf, ptr %i.bpg, align 4
  %i.bph = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %input.extent.0, ptr %i.bph, align 8
  %i.bpi = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %input.extent.1, ptr %i.bpi, align 4
  %i.bpj = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %input.extent.2, ptr %i.bpj, align 8
  %i.bpk = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %b82, ptr %i.bpk, align 4
  %i.bpl = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %b97, ptr %i.bpl, align 8
  %i.bpm = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %b108, ptr %i.bpm, align 4
  %i.bpn = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %input.stride.1, ptr %i.bpn, align 8
  %i.bpo = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %input.stride.2, ptr %i.bpo, align 4
  %i.bpp = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %levels, ptr %i.bpp, align 8
  %i.bpq = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %local_laplacian.extent.0, ptr %i.bpq, align 4
  %i.bpr = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %local_laplacian.extent.1, ptr %i.bpr, align 8
  %i.bps = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 %local_laplacian.extent.2, ptr %i.bps, align 4
  %i.bpt = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %a286, ptr %i.bpt, align 8
  %i.bpu = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %b74, ptr %i.bpu, align 4
  %i.bpv = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %a114, ptr %i.bpv, align 8
  %i.bpw = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %b89, ptr %i.bpw, align 4
  %i.bpx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %a108, ptr %i.bpx, align 8
  %i.bpy = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %local_laplacian.s0.v4.v264.epilogue, ptr %i.bpy, align 4
  %i.bpz = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %local_laplacian.s0.v4.v264.prologue, ptr %i.bpz, align 8
  %i.bqa = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %local_laplacian.stride.1, ptr %i.bqa, align 4
  %i.bqb = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %local_laplacian.stride.2, ptr %i.bqb, align 8
  %i.bqc = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.gj, ptr %i.bqc, align 8
  %i.bqd = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr null, ptr %i.bqd, align 8
  %i.bqe = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.blu, ptr %i.bqe, align 8
  %i.bqf = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr null, ptr %i.bqf, align 8
  %i.bqg = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.lm, ptr %i.bqg, align 8
  %i.bqh = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr null, ptr %i.bqh, align 8
  %i.bqi = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.oq, ptr %i.bqi, align 8
  %i.bqj = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.bqj, align 8
  %i.bqk = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.rp, ptr %i.bqk, align 8
  %i.bql = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.bql, align 8
  %i.bqm = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.wg, ptr %i.bqm, align 8
  %i.bqn = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr null, ptr %i.bqn, align 8
  %i.bqo = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.aaj, ptr %i.bqo, align 8
  %i.bqp = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.bqp, align 8
  %i.bqq = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.tr, ptr %i.bqq, align 8
  %i.bqr = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %i.bqr, align 8
  %i.bqs = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.yi, ptr %i.bqs, align 8
  %i.bqt = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr null, ptr %i.bqt, align 8
  %i.bqu = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.acl, ptr %i.bqu, align 8
  %i.bqv = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr null, ptr %i.bqv, align 8
  %i.bqw = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.afv, ptr %i.bqw, align 8
  %i.bqx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr null, ptr %i.bqx, align 8
  %i.bqy = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.aeh, ptr %i.bqy, align 8
  %i.bqz = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr null, ptr %i.bqz, align 8
  %i.bra = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %input.host, ptr %i.bra, align 8
  %i.brb = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %input.buffer, ptr %i.brb, align 8
  %i.brc = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %local_laplacian.host, ptr %i.brc, align 8
  %i.brd = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %local_laplacian.buffer, ptr %i.brd, align 8
  %i.bre = call i32 @halide_do_par_for(ptr null, ptr nonnull @par_for___local_laplacian_local_laplacian.s0.v4.v264, i32 0, i32 %b776, ptr nonnull %0) ; 2 uses
  %i.brf = icmp eq i32 %i.bre, 0
  br i1 %i.brf, label %if.then.i292, label %call_destructor.exit235.sink.split, !prof !5

"for f130.s0.v3":                                 ; preds = %"for f130.s0.v3", %"for f130.s0.v4"
  %lsr.iv366 = phi ptr [ %scevgep365, %"for f130.s0.v4" ], [ %scevgep367, %"for f130.s0.v3" ] ; 2 uses
  %lsr.iv360 = phi i32 [ %i.bmv, %"for f130.s0.v4" ], [ %lsr.iv.next361, %"for f130.s0.v3" ] ; 2 uses
  %lsr.iv352 = phi i64 [ %i.bmg, %"for f130.s0.v4" ], [ %lsr.iv.next353, %"for f130.s0.v3" ] ; 3 uses
  %lsr.iv = phi i32 [ %i.blx, %"for f130.s0.v4" ], [ %lsr.iv.next, %"for f130.s0.v3" ]
  %tmp370 = trunc i64 %lsr.iv352 to i32           ; 2 uses
  %i.brg = shl i32 %tmp370, 1
  %i.brh = and i32 %i.brg, 2
  %i.bri = ashr i32 %tmp370, 1                    ; 3 uses
  %t2211 = add nsw i32 %i.brh, %i.bri             ; 2 uses
  %i.brj = load float, ptr %lsr.iv366, align 4, !tbaa !48
  %t2212 = fmul float %i.brj, %i.am               ; 2 uses
  %a770 = fptosi float %t2212 to i32
  %a773 = call i32 @llvm.smin.i32(i32 %b6, i32 %a770)
  %i.brk = call i32 @llvm.smax.i32(i32 %a773, i32 0) ; 2 uses
  %i.brl = uitofp nneg i32 %i.brk to float
  %t2214 = fsub float %t2212, %i.brl              ; 2 uses
  %t2215 = sub nsw i32 %t2211, %a3
  %t2217 = sub nsw i32 %i.bri, %a3
  %t2220 = sub nsw i32 %i.brk, %i.cs
  %i.brm = sext i32 %t2220 to i64                 ; 3 uses
  %i.brn = add nsw i64 %i.brm, 1                  ; 2 uses
  %i.bro = mul nsw i64 %i.brn, %i.bmj             ; 4 uses
  %i.brp = sext i32 %i.bri to i64
  %i.brq = sub nsw i64 %i.brp, %i.bmk             ; 2 uses
  %gep982 = getelementptr [4 x i8], ptr %invariant.gep981, i64 %i.brq ; 2 uses
  %i.brr = getelementptr [4 x i8], ptr %gep982, i64 %i.bro
  %i.brs = load float, ptr %i.brr, align 4, !tbaa !16
  %i.brt = sext i32 %t2211 to i64
  %i.bru = sub nsw i64 %i.brt, %i.bmk             ; 2 uses
  %gep984 = getelementptr [4 x i8], ptr %invariant.gep981, i64 %i.bru ; 2 uses
  %i.brv = getelementptr [4 x i8], ptr %gep984, i64 %i.bro
  %i.brw = getelementptr i8, ptr %i.brv, i64 -4
  %i.brx = load float, ptr %i.brw, align 4, !tbaa !16
  %gep986 = getelementptr [4 x i8], ptr %invariant.gep985, i64 %i.brq ; 2 uses
  %i.bry = getelementptr [4 x i8], ptr %gep986, i64 %i.bro
  %i.brz = load float, ptr %i.bry, align 4, !tbaa !16
  %gep988 = getelementptr [4 x i8], ptr %invariant.gep985, i64 %i.bru ; 2 uses
  %i.bsa = getelementptr [4 x i8], ptr %gep988, i64 %i.bro
  %i.bsb = getelementptr i8, ptr %i.bsa, i64 -4
  %i.bsc = load float, ptr %i.bsb, align 4, !tbaa !16
  %i.bsd = insertelement <2 x float> poison, float %i.brs, i64 0
  %i.bse = insertelement <2 x float> %i.bsd, float %i.brz, i64 1
  %i.bsf = fmul <2 x float> %i.bse, splat (float 7.500000e-01)
  %i.bsg = insertelement <2 x float> poison, float %i.brx, i64 0
  %i.bsh = insertelement <2 x float> %i.bsg, float %i.bsc, i64 1
  %i.bsi = fmul <2 x float> %i.bsh, splat (float 2.500000e-01)
  %i.bsj = fadd <2 x float> %i.bsf, %i.bsi
  %i.bsk = fmul <2 x float> %i.bsj, <float 7.500000e-01, float 2.500000e-01>
  %i.bsl = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bsk)
  %i.bsm = mul nsw i64 %i.brn, %i.bml
  %i.bsn = sext i32 %lsr.iv360 to i64             ; 2 uses
  %i.bso = getelementptr [4 x i8], ptr %i.aeh, i64 %i.bsm
  %i.bsp = getelementptr [4 x i8], ptr %i.bso, i64 %i.bsn
  %i.bsq = load float, ptr %i.bsp, align 4, !tbaa !18
  %i.bsr = fsub float %i.bsq, %i.bsl
  %i.bss = fmul float %t2214, %i.bsr
  %i.bst = mul nsw i64 %i.brm, %i.bmj             ; 4 uses
  %i.bsu = getelementptr [4 x i8], ptr %gep982, i64 %i.bst
  %i.bsv = load float, ptr %i.bsu, align 4, !tbaa !16
  %i.bsw = getelementptr [4 x i8], ptr %gep984, i64 %i.bst
  %i.bsx = getelementptr i8, ptr %i.bsw, i64 -4
  %i.bsy = load float, ptr %i.bsx, align 4, !tbaa !16
  %i.bsz = getelementptr [4 x i8], ptr %gep986, i64 %i.bst
  %i.bta = load float, ptr %i.bsz, align 4, !tbaa !16
  %i.btb = getelementptr [4 x i8], ptr %gep988, i64 %i.bst
  %i.btc = getelementptr i8, ptr %i.btb, i64 -4
  %i.btd = load float, ptr %i.btc, align 4, !tbaa !16
  %i.bte = insertelement <2 x float> poison, float %i.bsv, i64 0
  %i.btf = insertelement <2 x float> %i.bte, float %i.bta, i64 1
  %i.btg = fmul <2 x float> %i.btf, splat (float 7.500000e-01)
  %i.bth = insertelement <2 x float> poison, float %i.bsy, i64 0
  %i.bti = insertelement <2 x float> %i.bth, float %i.btd, i64 1
  %i.btj = fmul <2 x float> %i.bti, splat (float 2.500000e-01)
  %i.btk = fadd <2 x float> %i.btg, %i.btj
  %i.btl = fmul <2 x float> %i.btk, <float 7.500000e-01, float 2.500000e-01>
  %i.btm = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.btl)
  %i.btn = mul nsw i64 %i.brm, %i.bml
  %i.bto = getelementptr [4 x i8], ptr %i.aeh, i64 %i.btn
  %i.btp = getelementptr [4 x i8], ptr %i.bto, i64 %i.bsn
  %i.btq = load float, ptr %i.btp, align 4, !tbaa !18
  %i.btr = fsub float %i.btq, %i.btm
  %i.bts = fsub float 1.000000e+00, %t2214
  %i.btt = fmul float %i.bts, %i.btr
  %i.btu = fadd float %i.bss, %i.btt
  %i.btv = sext i32 %t2217 to i64
  %i.btw = getelementptr [4 x i8], ptr %i.bgd, i64 %i.btv ; 2 uses
  %i.btx = getelementptr [4 x i8], ptr %i.btw, i64 %i.bnh
  %i.bty = load float, ptr %i.btx, align 4, !tbaa !56
  %i.btz = fmul float %i.bty, 7.500000e-01
  %i.bua = sext i32 %t2215 to i64
  %i.bub = getelementptr [4 x i8], ptr %i.bgd, i64 %i.bua ; 2 uses
  %i.buc = getelementptr [4 x i8], ptr %i.bub, i64 %i.bnh
  %i.bud = getelementptr i8, ptr %i.buc, i64 -4
  %i.bue = load float, ptr %i.bud, align 4, !tbaa !56
  %i.buf = fmul float %i.bue, 2.500000e-01
  %i.bug = fadd float %i.btz, %i.buf
  %i.buh = fmul float %i.bug, 7.500000e-01
  %i.bui = getelementptr [4 x i8], ptr %i.btw, i64 %i.bni
  %i.buj = load float, ptr %i.bui, align 4, !tbaa !56
  %i.buk = fmul float %i.buj, 7.500000e-01
  %i.bul = getelementptr [4 x i8], ptr %i.bub, i64 %i.bni
  %i.bum = getelementptr i8, ptr %i.bul, i64 -4
  %i.bun = load float, ptr %i.bum, align 4, !tbaa !56
  %i.buo = fmul float %i.bun, 2.500000e-01
  %i.bup = fadd float %i.buk, %i.buo
  %i.buq = fmul float %i.bup, 2.500000e-01
  %i.bur = fadd float %i.buh, %i.buq
  %i.bus = fadd float %i.btu, %i.bur
  %scevgep354 = getelementptr [4 x i8], ptr %scevgep350, i64 %lsr.iv352
  store float %i.bus, ptr %scevgep354, align 4, !tbaa !20
  %lsr.iv.next = add i32 %lsr.iv, -1              ; 2 uses
  %lsr.iv.next353 = add nsw i64 %lsr.iv352, 1
  %lsr.iv.next361 = add i32 %lsr.iv360, 1
  %scevgep367 = getelementptr i8, ptr %lsr.iv366, i64 4
  %.not611 = icmp eq i32 %lsr.iv.next, 0
  br i1 %.not611, label %"end for f130.s0.v3.loopexit", label %"for f130.s0.v3"

"end for f130.s0.v3.loopexit":                    ; preds = %"for f130.s0.v3"
  %lsr.iv.next349 = add nsw i64 %lsr.iv348, 1     ; 2 uses
  %lsr = trunc i64 %lsr.iv.next349 to i32
  %lsr.iv.next359 = add i32 %lsr.iv358, %i.adm
  %lsr.iv.next364 = add i64 %lsr.iv363, %i.bmf
  %.not612 = icmp eq i32 %i.blw, %lsr
  br i1 %.not612, label %if.then.i316, label %"for f130.s0.v4"

if.then.i292:                                     ; preds = %if.then.i316
  call void @halide_free(ptr null, ptr nonnull %i.gj) #6
  call void @halide_free(ptr null, ptr nonnull %i.lm) #6
  call void @halide_free(ptr null, ptr nonnull %i.oq) #6
  call void @halide_free(ptr null, ptr nonnull %i.rp) #6
  call void @halide_free(ptr null, ptr nonnull %i.tr) #6
  call void @halide_free(ptr null, ptr nonnull %i.wg) #6
  call void @halide_free(ptr null, ptr nonnull %i.yi) #6
  call void @halide_free(ptr null, ptr nonnull %i.aaj) #6
  call void @halide_free(ptr null, ptr nonnull %i.acl) #6
  call void @halide_free(ptr null, ptr nonnull %i.aeh) #6
  call void @halide_free(ptr null, ptr nonnull %i.afv) #6
  call void @halide_free(ptr null, ptr nonnull %i.blu) #6
  br label %call_destructor.exit210.thread823
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @par_for___local_laplacian_f2.s0.v4.v4(ptr nofree readnone captures(none) %__user_context, i32 %f2.s0.v4.v4, ptr noalias nofree readonly captures(none) %closure) #2 {
entry:
  %i.a = getelementptr inbounds nuw i8, ptr %closure, i64 4
  %f2.s0.v3.max = load i32, ptr %closure, align 4 ; 4 uses
  %f2.s0.v3.min = load i32, ptr %i.a, align 4     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %closure, i64 8
  %f2.s0.v4.max = load i32, ptr %i.b, align 4     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %closure, i64 12
  %f2.s0.v4.min = load i32, ptr %i.c, align 4     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %closure, i64 16
  %f2.s0.v4.v4.epilogue = load i32, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %closure, i64 20
  %f2.s0.v4.v4.prologue = load i32, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %closure, i64 24
  %f2.v3.extent_realized.s = load i32, ptr %i.f, align 4
  %i.g = sext i32 %f2.v3.extent_realized.s to i64 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %closure, i64 28
  %f2.v3.min_realized = load i32, ptr %i.h, align 4
  %i.i = sext i32 %f2.v3.min_realized to i64      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %closure, i64 32
  %f2.v4.min_realized = load i32, ptr %i.j, align 4
  %i.k = sext i32 %f2.v4.min_realized to i64      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %closure, i64 36
  %input.extent.0 = load i32, ptr %i.l, align 4   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %closure, i64 44
  %input.extent.2 = load i32, ptr %i.m, align 4   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %closure, i64 48
  %input.min.0 = load i32, ptr %i.n, align 4      ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %closure, i64 52
  %b240 = load i32, ptr %i.o, align 4             ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %closure, i64 56
  %b248 = load i32, ptr %i.p, align 4             ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %closure, i64 60
  %input.stride.1 = load i32, ptr %i.q, align 4   ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %closure, i64 64
  %input.stride.2 = load i32, ptr %i.r, align 4   ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %closure, i64 72
  %f2.host = load ptr, ptr %i.s, align 8          ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %closure, i64 88
  %input.host = load ptr, ptr %i.t, align 8       ; 75 uses
  %i.u = icmp sgt i32 %f2.s0.v4.v4.epilogue, %f2.s0.v4.v4
  %i.v = icmp sle i32 %f2.s0.v4.v4.prologue, %f2.s0.v4.v4
  %i.w = and i1 %i.u, %i.v
  br i1 %i.w, label %"for f2.s0.v4.v280.preheader", label %"for f2.s0.v4.v2809.preheader"

"for f2.s0.v4.v280.preheader":                    ; preds = %entry
  %i.x = sext i32 %input.stride.2 to i64          ; 3 uses
  %i.y = sext i32 %b248 to i64                    ; 4 uses
  %i.z = sext i32 %input.extent.2 to i64
  %i.aa = sext i32 %f2.s0.v3.min to i64
  %i.ab = shl nsw i32 %f2.s0.v4.v4, 5
  %a202 = add nsw i32 %f2.s0.v4.min, %i.ab
  %b204 = add nsw i32 %f2.s0.v4.max, -31
  %f2.s0.v4.v280.base = tail call i32 @llvm.smin.i32(i32 %b204, i32 %a202) ; 4 uses
  %i.ac = sext i32 %f2.s0.v4.v280.base to i64
  %i.ad = sub nsw i64 %i.ac, %i.k                 ; 3 uses
  %i.ae = add nsw i64 %i.g, 1                     ; 3 uses
  %i.af = mul nsw i64 %i.ad, %i.ae
  %i.ag = sub nsw i64 %i.aa, %i.i
  %i.ah = getelementptr [4 x i8], ptr %f2.host, i64 %i.ag
  %scevgep = getelementptr [4 x i8], ptr %i.ah, i64 %i.af
  %i.ai = shl nsw i64 %i.g, 2
  %i.aj = add nsw i64 %i.z, %i.y
  %i.ak = sub nsw i64 0, %i.aj                    ; 3 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -1)
  %i.al = xor i64 %smax, -1
  %smax29 = tail call i64 @llvm.smax.i64(i64 %i.al, i64 %i.y)
  %i.am = mul nsw i64 %smax29, %i.x
  %i.an = mul i32 %input.stride.1, %b240
  %i.ao = add i32 %i.an, %input.min.0
  %i.ap = mul i32 %input.stride.2, %b248
  %i.aq = add i32 %i.ao, %i.ap                    ; 4 uses
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = sub nsw i64 %i.am, %i.ar
  %i.at = mul i32 %input.stride.1, %f2.s0.v4.v280.base
  %i.au = add i32 %i.at, %f2.s0.v3.min
  %smax37 = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -2)
  %i.av = xor i64 %smax37, -1
  %smax38 = tail call i64 @llvm.smax.i64(i64 %i.av, i64 %i.y)
  %i.aw = mul nsw i64 %smax38, %i.x
  %i.ax = sub nsw i64 %i.aw, %i.ar
  %smax44 = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -3)
  %i.ay = xor i64 %smax44, -1
  %smax45 = tail call i64 @llvm.smax.i64(i64 %i.ay, i64 %i.y)
  %i.az = mul nsw i64 %smax45, %i.x
  %i.ba = sub nsw i64 %i.az, %i.ar
  %reass.sub = sub i32 %input.min.0, %f2.s0.v3.min
  %i.bb = add i32 %reass.sub, 7
  %a204 = ashr i32 %i.bb, 3
  %i.bc = tail call i32 @llvm.smax.i32(i32 %a204, i32 0) ; 2 uses
  %i.bd = sub nsw i32 %f2.s0.v3.max, %f2.s0.v3.min ; 2 uses
  %i.be = ashr i32 %i.bd, 3                       ; 4 uses
  %b205 = add nsw i32 %i.be, 1                    ; 2 uses
  %i.bf = icmp slt i32 %i.be, %i.bc
  %f2.s0.v3.v3.prologue = select i1 %i.bf, i32 %b205, i32 %i.bc ; 7 uses
  %i.bg = add nsw i32 %input.min.0, %input.extent.0 ; 2 uses
  %i.bh = sub nsw i32 %i.bg, %f2.s0.v3.min
  %i.bi = ashr i32 %i.bh, 3
  %a210 = add nsw i32 %i.bi, -1
  %i.bj = add nsw i32 %i.bd, -7
  %b212 = ashr i32 %i.bj, 3
  %a209 = tail call i32 @llvm.smin.i32(i32 %b212, i32 %a210)
  %a211 = add nsw i32 %f2.s0.v3.max, -7           ; 3 uses
  %b213 = add nsw i32 %i.bg, -1                   ; 2 uses
  %i.bk = tail call i32 @llvm.smin.i32(i32 %b213, i32 %a211)
  %i.bl = sub nsw i32 %i.bk, %f2.s0.v3.min
  %b211 = ashr i32 %i.bl, 3
  %a208 = tail call i32 @llvm.smin.i32(i32 %b211, i32 %a209)
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %a208) ; 2 uses
  %b207 = add nsw i32 %i.bm, 1
  %f2.s0.v3.v3.epilogue = tail call i32 @llvm.smax.i32(i32 %f2.s0.v3.v3.prologue, i32 %b207) ; 4 uses
  %i.bn = icmp sgt i32 %f2.s0.v3.v3.prologue, 0
  %.not25 = icmp slt i32 %i.bm, %f2.s0.v3.v3.prologue
  %.not27 = icmp sgt i32 %f2.s0.v3.v3.epilogue, %i.be
  %i.bo = insertelement <8 x i32> poison, i32 %b213, i64 0
  %b216 = shufflevector <8 x i32> %i.bo, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bp = insertelement <8 x i32> poison, i32 %input.min.0, i64 0
  %b215 = shufflevector <8 x i32> %i.bp, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bq = add i32 %input.extent.2, -1
  %a216 = add i32 %i.bq, %b248                    ; 3 uses
  %a215 = tail call i32 @llvm.smin.i32(i32 %a216, i32 2)
  %i.br = tail call i32 @llvm.smax.i32(i32 %a215, i32 %b248)
  %i.bs = mul nsw i32 %i.br, %input.stride.2
  %.scalar = sub i32 %i.bs, %i.aq
  %i.bt = insertelement <8 x i32> poison, i32 %.scalar, i64 0
  %i.bu = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %a217 = tail call i32 @llvm.smin.i32(i32 %a216, i32 1)
  %i.bv = tail call i32 @llvm.smax.i32(i32 %a217, i32 %b248)
  %i.bw = mul nsw i32 %i.bv, %input.stride.2
  %.scalar52 = sub i32 %i.bw, %i.aq
  %i.bx = insertelement <8 x i32> poison, i32 %.scalar52, i64 0
  %i.by = shufflevector <8 x i32> %i.bx, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bz = tail call i32 @llvm.smin.i32(i32 %a216, i32 0)
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 %b248)
  %i.cb = mul nsw i32 %i.ca, %input.stride.2
  %.scalar53 = sub i32 %i.cb, %i.aq
  %i.cc = insertelement <8 x i32> poison, i32 %.scalar53, i64 0
  %i.cd = shufflevector <8 x i32> %i.cc, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ce = sub nsw i32 %f2.s0.v3.v3.epilogue, %f2.s0.v3.v3.prologue
  %i.cf = sext i32 %f2.s0.v3.v3.prologue to i64
  %scevgep23.idx = shl nsw i64 %i.cf, 5
  %i.cg = shl nsw i32 %f2.s0.v3.v3.prologue, 3
  %i.ch = getelementptr [2 x i8], ptr %input.host, i64 %i.as
  %i.ci = getelementptr [2 x i8], ptr %input.host, i64 %i.ax
  %i.cj = getelementptr [2 x i8], ptr %input.host, i64 %i.ba
  %i.ck = sub nsw i32 %b205, %f2.s0.v3.v3.epilogue
  %i.cl = shl nsw i32 %f2.s0.v3.v3.epilogue, 3
  %i.cm = add i32 %i.cl, %f2.s0.v3.min
  br label %"for f2.s0.v4.v280"

"for f2.s0.v4.v2809.preheader":                   ; preds = %entry
  %i.cn = getelementptr inbounds nuw i8, ptr %closure, i64 40
  %input.extent.1 = load i32, ptr %i.cn, align 8
  %i.co = shl nsw i32 %f2.s0.v4.v4, 5
  %a236 = add nsw i32 %f2.s0.v4.min, %i.co
  %b238 = add nsw i32 %f2.s0.v4.max, -31
  %f2.s0.v4.v280.base8 = tail call i32 @llvm.smin.i32(i32 %b238, i32 %a236) ; 2 uses
  %b239 = add nsw i32 %f2.s0.v3.max, -7
  %i.cp = add i32 %input.extent.1, -1
  %b241 = add i32 %i.cp, %b240
  %i.cq = add nsw i32 %input.min.0, %input.extent.0
  %i.cr = add nsw i32 %i.cq, -1
  %i.cs = insertelement <8 x i32> poison, i32 %i.cr, i64 0
  %b243 = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ct = insertelement <8 x i32> poison, i32 %input.min.0, i64 0
  %b242 = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cu = mul nsw i32 %input.stride.2, %b248
  %i.cv = mul nsw i32 %input.stride.1, %b240
  %i.cw = add nsw i32 %i.cv, %input.min.0
  %i.cx = add i32 %input.extent.2, -1
  %t1960.s = add nsw i32 %i.cw, %i.cu
  %a243 = add i32 %i.cx, %b248                    ; 3 uses
  %a242 = tail call i32 @llvm.smin.i32(i32 %a243, i32 2)
  %i.cy = tail call i32 @llvm.smax.i32(i32 %a242, i32 %b248)
  %i.cz = mul nsw i32 %i.cy, %input.stride.2
  %a244 = tail call i32 @llvm.smin.i32(i32 %a243, i32 1)
  %i.da = tail call i32 @llvm.smax.i32(i32 %a244, i32 %b248)
  %i.db = mul nsw i32 %i.da, %input.stride.2
  %i.dc = tail call i32 @llvm.smin.i32(i32 %a243, i32 0)
  %i.dd = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 %b248)
  %i.de = mul nsw i32 %i.dd, %input.stride.2
end_hunk_0
