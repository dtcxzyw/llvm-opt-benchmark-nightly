inline.NumInlined: 399
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.15:bb.a
bb.ba:                                            ; preds = %._crit_edge.us1398.i, %.lr.ph1395.split.us.i
  %indvars.iv1452.i = phi i64 [ %indvars.iv.next1453.i, %._crit_edge.us1398.i ], [ %i.bfw, %.lr.ph1395.split.us.i ] ; 3 uses
  %.pre1457.i = add nsw i64 %indvars.iv1452.i, %i.de ; 2 uses
  br i1 %.not.i83, label %.lr.ph.us1397.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.bfx = getelementptr inbounds [4 x i8], ptr %.val81, i64 %.pre1457.i
  %i.bfy = load float, ptr %i.bfx, align 4, !tbaa !39
  br label %.lr.ph.us1397.i

.lr.ph.us1397.i:                                  ; preds = %bb.bb, %bb.ba
  %i.bfz = phi fast float [ %i.bfy, %bb.bb ], [ 0.000000e+00, %bb.ba ] ; 2 uses
  %i.bga = trunc nsw i64 %indvars.iv1452.i to i32
  %factor.op.mul1388.reass.us.i = mul i32 %factor.op.mul1348.i, %i.bga
  %i.bgb = sext i32 %factor.op.mul1388.reass.us.i to i64
  %i.bgc = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.bgb
  %.reass1401.i = mul i64 %factor.op.mul1400.i, %.pre1457.i
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfs, i64 %.reass1401.i
  %i.bge = insertelement <4 x float> poison, float %i.bfz, i64 0 ; 4 uses
  %i.bgf = insertelement <2 x float> poison, float %i.bfz, i64 0 ; 4 uses
  %i.bgg = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgh = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgi = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgj = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.du, %.lr.ph.us1397.i
  %indvars.iv1447.i = phi i64 [ 0, %.lr.ph.us1397.i ], [ %indvars.iv.next1448.i, %bb.du ] ; 3 uses
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.bgc, i64 %indvars.iv1447.i ; 7 uses
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bff ; 2 uses
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfh ; 2 uses
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfj ; 2 uses
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfl ; 2 uses
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfn ; 2 uses
  %i.bgq = load float, ptr %i.bgl, align 4, !tbaa !39
  %i.bgr = load float, ptr %i.bgm, align 4, !tbaa !39
  %i.bgs = load float, ptr %i.bgn, align 4, !tbaa !39
  %i.bgt = load float, ptr %i.bgk, align 4, !tbaa !39
  %i.bgu = load float, ptr %i.bgp, align 4, !tbaa !39
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfp ; 2 uses
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.bgl, i64 %i.bfp ; 2 uses
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bfp ; 2 uses
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.bgn, i64 %i.bfp ; 2 uses
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr %i.bgo, i64 %i.bfp ; 2 uses
  %i.bha = getelementptr inbounds nuw [4 x i8], ptr %i.bgp, i64 %i.bfp ; 2 uses
  %i.bhb = load float, ptr %i.bgw, align 4, !tbaa !39
  %i.bhc = load float, ptr %i.bgx, align 4, !tbaa !39
  %i.bhd = load float, ptr %i.bgy, align 4, !tbaa !39
  %i.bhe = load float, ptr %i.bgv, align 4, !tbaa !39
  %i.bhf = load float, ptr %i.bha, align 4, !tbaa !39
  %i.bhg = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bfp ; 2 uses
  %i.bhh = getelementptr inbounds nuw [4 x i8], ptr %i.bgw, i64 %i.bfp ; 2 uses
  %i.bhi = getelementptr inbounds nuw [4 x i8], ptr %i.bgx, i64 %i.bfp ; 2 uses
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.bgy, i64 %i.bfp ; 2 uses
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bgz, i64 %i.bfp ; 2 uses
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.bha, i64 %i.bfp ; 2 uses
  %i.bhm = load float, ptr %i.bhh, align 4, !tbaa !39
  %i.bhn = load float, ptr %i.bhi, align 4, !tbaa !39
  %i.bho = load float, ptr %i.bhj, align 4, !tbaa !39
  %i.bhp = load float, ptr %i.bhg, align 4, !tbaa !39
  %i.bhq = load float, ptr %i.bhl, align 4, !tbaa !39
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.bhg, i64 %i.bfp ; 2 uses
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %i.bhh, i64 %i.bfp ; 2 uses
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %i.bhi, i64 %i.bfp ; 2 uses
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %i.bfp ; 2 uses
  %i.bhv = getelementptr inbounds nuw [4 x i8], ptr %i.bhk, i64 %i.bfp ; 2 uses
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %i.bfp ; 2 uses
  %i.bhx = load float, ptr %i.bhs, align 4, !tbaa !39
  %i.bhy = load float, ptr %i.bht, align 4, !tbaa !39
  %i.bhz = load float, ptr %i.bhu, align 4, !tbaa !39
  %i.bia = load float, ptr %i.bhv, align 4, !tbaa !39
  %i.bib = load float, ptr %i.bhr, align 4, !tbaa !39
  %i.bic = insertelement <4 x float> poison, float %i.bgr, i64 0
  %i.bid = insertelement <4 x float> %i.bic, float %i.bhc, i64 1
  %i.bie = insertelement <4 x float> %i.bid, float %i.bhn, i64 2
  %i.bif = insertelement <4 x float> %i.bie, float %i.bhy, i64 3 ; 2 uses
  %i.big = insertelement <4 x float> poison, float %i.bgq, i64 0
  %i.bih = insertelement <4 x float> %i.big, float %i.bhb, i64 1
  %i.bii = insertelement <4 x float> %i.bih, float %i.bhm, i64 2
  %i.bij = insertelement <4 x float> %i.bii, float %i.bhx, i64 3 ; 2 uses
  %i.bik = fadd fast <4 x float> %i.bif, %i.bij   ; 3 uses
  %i.bil = insertelement <4 x float> poison, float %i.bgs, i64 0
  %i.bim = insertelement <4 x float> %i.bil, float %i.bhd, i64 1
  %i.bin = insertelement <4 x float> %i.bim, float %i.bho, i64 2
  %i.bio = insertelement <4 x float> %i.bin, float %i.bhz, i64 3 ; 2 uses
  %i.bip = insertelement <4 x float> poison, float %i.bgt, i64 0
  %i.biq = insertelement <4 x float> %i.bip, float %i.bhe, i64 1
  %i.bir = insertelement <4 x float> %i.biq, float %i.bhp, i64 2
  %i.bis = insertelement <4 x float> %i.bir, float %i.bib, i64 3
  %i.bit = fadd fast <4 x float> %i.bis, %i.bik
  %i.biu = load float, ptr %i.bhw, align 4, !tbaa !39
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %i.bhr, i64 %i.bfp ; 2 uses
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %i.bhs, i64 %i.bfp ; 2 uses
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.bht, i64 %i.bfp ; 2 uses
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %i.bhu, i64 %i.bfp ; 2 uses
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %i.bhv, i64 %i.bfp ; 2 uses
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %i.bhw, i64 %i.bfp ; 2 uses
  %i.bjb = load float, ptr %i.biw, align 4, !tbaa !39 ; 2 uses
  %i.bjc = load float, ptr %i.bix, align 4, !tbaa !39 ; 2 uses
  %i.bjd = fadd fast float %i.bjc, %i.bjb         ; 2 uses
  %i.bje = load float, ptr %i.biy, align 4, !tbaa !39 ; 2 uses
  %i.bjf = load float, ptr %i.biz, align 4, !tbaa !39 ; 2 uses
  %i.bjg = fadd fast float %i.bjf, %i.bje         ; 2 uses
  %i.bjh = load float, ptr %i.biv, align 4, !tbaa !39
  %i.bji = fadd fast float %i.bjh, %i.bjd
  %i.bjj = fadd fast float %i.bji, %i.bjg         ; 2 uses
  %i.bjk = load float, ptr %i.bja, align 4, !tbaa !39
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.biv, i64 %i.bfp
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %i.bfp
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.bix, i64 %i.bfp
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.biy, i64 %i.bfp
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %i.bfp
  %i.bjq = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.bfp
  %i.bjr = load float, ptr %i.bjm, align 4, !tbaa !39 ; 2 uses
  %i.bjs = load float, ptr %i.bjn, align 4, !tbaa !39 ; 2 uses
  %i.bjt = load float, ptr %i.bjo, align 4, !tbaa !39 ; 2 uses
  %i.bju = load float, ptr %i.bjp, align 4, !tbaa !39 ; 2 uses
  %i.bjv = load float, ptr %i.bjl, align 4, !tbaa !39
  %i.bjw = load float, ptr %i.bgo, align 4, !tbaa !39
  %i.bjx = fadd fast float %i.bju, %i.bjt         ; 2 uses
  %i.bjy = load float, ptr %i.bgz, align 4, !tbaa !39
  %i.bjz = load float, ptr %i.bhk, align 4, !tbaa !39
  %i.bka = fadd fast float %i.bjs, %i.bjr         ; 2 uses
  %i.bkb = fadd fast float %i.bjv, %i.bka
  %i.bkc = insertelement <4 x float> poison, float %i.bjw, i64 0
  %i.bkd = insertelement <4 x float> %i.bkc, float %i.bjy, i64 1
  %i.bke = insertelement <4 x float> %i.bkd, float %i.bjz, i64 2
  %i.bkf = insertelement <4 x float> %i.bke, float %i.bia, i64 3 ; 2 uses
  %i.bkg = fadd fast <4 x float> %i.bkf, %i.bio   ; 3 uses
  %i.bkh = fadd fast <4 x float> %i.bit, %i.bkg   ; 4 uses
  %i.bki = insertelement <4 x float> %i.bik, float %i.bjd, i64 0
  %i.bkj = fmul fast <4 x float> %i.bki, splat (float 5.000000e-01)
  %i.bkk = insertelement <4 x float> %i.bkg, float %i.bjg, i64 0
  %i.bkl = fmul fast <4 x float> %i.bkk, splat (float 2.000000e+00)
  %i.bkm = fadd fast <4 x float> %i.bkl, %i.bkj   ; 4 uses
  %i.bkn = insertelement <4 x float> poison, float %i.bjx, i64 0
  %i.bko = insertelement <4 x float> poison, float %i.bkb, i64 0
  %i.bkp = fsub fast float %i.bjr, %i.bjs         ; 2 uses
  %i.bkq = fsub fast float %i.bjb, %i.bjc         ; 2 uses
  %i.bkr = fsub fast float %i.bjt, %i.bju         ; 2 uses
  %i.bks = fsub fast float %i.bje, %i.bjf         ; 2 uses
  %i.bkt = fsub fast <4 x float> %i.bij, %i.bif   ; 3 uses
  %i.bku = shufflevector <4 x float> %i.bkn, <4 x float> %i.bkt, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.bkv = fmul fast <4 x float> %i.bku, <float 1.000000e+00, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3>
  %i.bkw = fsub fast <4 x float> %i.bio, %i.bkf   ; 3 uses
  %i.bkx = shufflevector <4 x float> %i.bko, <4 x float> %i.bkw, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.bky = fmul fast <4 x float> %i.bkx, <float 1.000000e+00, float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3>
  %i.bkz = fadd fast <4 x float> %i.bky, %i.bkv   ; 4 uses
  %i.bla = fmul fast <4 x float> %i.bkt, splat (float f0x3EB504F3)
  %i.blb = fmul fast <4 x float> %i.bkw, splat (float f0x403504F3)
  %i.blc = fadd fast <4 x float> %i.blb, %i.bla
  %i.bld = insertelement <4 x float> poison, float %i.bgu, i64 0
  %i.ble = insertelement <4 x float> %i.bld, float %i.bhf, i64 1
  %i.blf = insertelement <4 x float> %i.ble, float %i.bhq, i64 2
  %i.blg = insertelement <4 x float> %i.blf, float %i.biu, i64 3
  %i.blh = fadd fast <4 x float> %i.blc, %i.blg   ; 4 uses
  %i.bli = fmul fast float %i.bkq, f0x3EB504F3
  %i.blj = fmul fast float %i.bks, f0x403504F3
  %i.blk = fadd fast float %i.blj, %i.bli
  %i.bll = fadd fast float %i.blk, %i.bjk         ; 2 uses
  %i.blm = shufflevector <4 x float> %i.bkt, <4 x float> %i.bik, <4 x i32> <i32 3, i32 poison, i32 poison, i32 4>
  %i.bln = insertelement <4 x float> %i.blm, float %i.bkq, i64 1
  %i.blo = insertelement <4 x float> %i.bln, float %i.bkp, i64 2
  %i.blp = fmul fast <4 x float> %i.blo, <float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float 5.000000e-01>
  %i.blq = shufflevector <4 x float> %i.bkw, <4 x float> %i.bkg, <4 x i32> <i32 3, i32 poison, i32 poison, i32 4>
  %i.blr = insertelement <4 x float> %i.blq, float %i.bks, i64 1
  %i.bls = insertelement <4 x float> %i.blr, float %i.bkr, i64 2
  %i.blt = fmul fast <4 x float> %i.bls, <float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3, float 2.000000e+00>
  %i.blu = fadd fast <4 x float> %i.blt, %i.blp   ; 4 uses
  %i.blv = fmul fast float %i.bka, 5.000000e-01
  %i.blw = fmul fast float %i.bjx, 2.000000e+00
  %i.blx = fadd fast float %i.blw, %i.blv
  %i.bly = load float, ptr %i.bjq, align 4, !tbaa !39
  %i.blz = fmul fast float %i.bkp, f0x3EB504F3
  %i.bma = fmul fast float %i.bkr, f0x403504F3
  %i.bmb = fadd fast float %i.bma, %i.blz
  %i.bmc = fadd fast float %i.bmb, %i.bly
  %i.bmd = trunc i64 %indvars.iv1447.i to i32
  %i.bme = add i32 %.048134, %i.bmd               ; 2 uses
  %i.bmf = sdiv i32 %i.bme, %i.dx
  %i.bmg = srem i32 %i.bme, %i.dx
  %i.bmh = shl nsw i32 %i.bmf, 2                  ; 5 uses
  %i.bmi = sext i32 %i.bmh to i64
  %.reass1392.us.i = mul i64 %factor.op.mul1391.us.i, %i.bmi
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bgd, i64 %.reass1392.us.i
  %i.bmk = shl nsw i32 %i.bmg, 2                  ; 4 uses
  %i.bml = sext i32 %i.bmk to i64
  %i.bmm = getelementptr inbounds [2 x i8], ptr %i.bmj, i64 %i.bml ; 6 uses
  %i.bmn = or disjoint i32 %i.bmk, 1
  %i.bmo = icmp slt i32 %i.bmn, %i.dq             ; 4 uses
  %i.bmp = or disjoint i32 %i.bmk, 2
  %i.bmq = icmp slt i32 %i.bmp, %i.dq             ; 4 uses
  %i.bmr = or disjoint i32 %i.bmk, 3
  %i.bms = icmp slt i32 %i.bmr, %i.dq             ; 4 uses
  %.not553.us.i = icmp slt i32 %i.bmh, %i.dr
  br i1 %.not553.us.i, label %bb.bc, label %bb.bt

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.bkh, i64 1 ; 2 uses
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.bkh, i64 2 ; 2 uses
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.bkh, i64 3 ; 2 uses
  %18 = fsub fast float %.sroa.0.12.vec.extract, %i.bjj ; 2 uses
  %19 = fadd fast float %i.bjj, %.sroa.0.12.vec.extract ; 2 uses
  %i.bmt = fadd fast float %.sroa.0.8.vec.extract, %.sroa.0.4.vec.extract ; 2 uses
  %i.bmu = fsub fast float %.sroa.0.4.vec.extract, %.sroa.0.8.vec.extract ; 2 uses
  %i.bmv = fmul fast float %i.bmu, f0x3EB504F3
  %i.bmw = insertelement <4 x float> %i.bkh, float %i.bmv, i64 1
  %i.bmx = insertelement <4 x float> poison, float %i.bmt, i64 0
  %i.bmy = insertelement <4 x float> %i.bmx, float %i.bmu, i64 1
  %i.bmz = fadd fast <4 x float> %i.bmw, %i.bgg
  %i.bna = shufflevector <4 x float> %i.bmy, <4 x float> %i.bmz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bnb = fmul fast <4 x float> %i.bna, <float 5.000000e-01, float f0x3F3504F3, float 1.000000e+00, float 1.000000e+00>
  %i.bnc = insertelement <4 x float> %i.bge, float %i.bmt, i64 2
  %i.bnd = shufflevector <4 x float> %i.bnc, <4 x float> %i.bkz, <4 x i32> <i32 0, i32 poison, i32 2, i32 4>
  %i.bne = shufflevector <4 x float> %i.bnd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bnf = fadd fast <4 x float> %i.bnb, %i.bne
  %20 = insertelement <2 x float> poison, float %19, i64 0
  %21 = insertelement <2 x float> %20, float %18, i64 1
  %22 = fmul fast <2 x float> %21, <float 2.000000e+00, float f0x3FB504F3>
  %23 = fmul fast float %18, f0x403504F3
  %24 = insertelement <4 x float> poison, float %19, i64 2
  %25 = insertelement <4 x float> %24, float %23, i64 3
  %26 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %27 = shufflevector <4 x float> %26, <4 x float> %25, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bng = fadd fast <4 x float> %i.bnf, %27      ; 18 uses
  switch i32 %i.dp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i
    i32 6, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.bnh = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bni = load float, ptr %i.bnh, align 4, !tbaa !39 ; 9 uses
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bnh, i64 4
  %i.bnk = load float, ptr %i.bnj, align 4, !tbaa !39 ; 5 uses
  %i.bnl = fneg fast float %i.bnk
  %i.bnm = fdiv fast float %i.bnl, %i.bni         ; 8 uses
  %i.bnn = extractelement <4 x float> %i.bng, i64 2 ; 5 uses
  %i.bno = fcmp fast olt float %i.bnn, %i.bnm
  br i1 %i.bno, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.bnp = fdiv fast float 1.000000e+00, %i.bni
  %i.bnq = fadd fast float %i.bnm, %i.bnp
  %i.bnr = fcmp fast ogt float %i.bnn, %i.bnq
  br i1 %i.bnr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.bns = fmul fast float %i.bni, %i.bnn
  %i.bnt = fadd fast float %i.bns, %i.bnk
  %i.bnu = fmul fast float %i.bnt, %i.bnn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i: ; preds = %bb.bf, %bb.be, %bb.bd
  %.17021218.us.i = phi float [ %i.bnu, %bb.bf ], [ 0.000000e+00, %bb.bd ], [ %i.bnn, %bb.be ]
  %i.bnv = extractelement <4 x float> %i.bng, i64 1 ; 5 uses
  %i.bnw = fcmp fast olt float %i.bnv, %i.bnm
  br i1 %i.bnw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i, label %bb.bg

bb.bg:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i
  %i.bnx = fdiv fast float 1.000000e+00, %i.bni
  %i.bny = fadd fast float %i.bnm, %i.bnx
  %i.bnz = fcmp fast ogt float %i.bnv, %i.bny
  br i1 %i.bnz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.boa = fmul fast float %i.bni, %i.bnv
  %i.bob = fadd fast float %i.boa, %i.bnk
  %i.boc = fmul fast float %i.bob, %i.bnv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i: ; preds = %bb.bh, %bb.bg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i
  %.17041241.us.i = phi float [ %i.boc, %bb.bh ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i ], [ %i.bnv, %bb.bg ]
  %i.bod = extractelement <4 x float> %i.bng, i64 0 ; 5 uses
  %i.boe = fcmp fast olt float %i.bod, %i.bnm
  br i1 %i.boe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i, label %bb.bi

bb.bi:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i
  %i.bof = fdiv fast float 1.000000e+00, %i.bni
  %i.bog = fadd fast float %i.bnm, %i.bof
  %i.boh = fcmp fast ogt float %i.bod, %i.bog
  br i1 %i.boh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.boi = fmul fast float %i.bni, %i.bod
  %i.boj = fadd fast float %i.boi, %i.bnk
  %i.bok = fmul fast float %i.boj, %i.bod
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i: ; preds = %bb.bj, %bb.bi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i
  %.17061277.us.i = phi float [ %i.bok, %bb.bj ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i ], [ %i.bod, %bb.bi ]
  %i.bol = extractelement <4 x float> %i.bng, i64 3 ; 4 uses
  %i.bom = fcmp fast olt float %i.bol, %i.bnm
  %i.bon = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.17061277.us.i, i64 0
  %i.boo = insertelement <4 x float> %i.bon, float %.17041241.us.i, i64 1
  %i.bop = insertelement <4 x float> %i.boo, float %.17021218.us.i, i64 2 ; 3 uses
  br i1 %i.bom, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.bk

bb.bk:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i
  %i.boq = fdiv fast float 1.000000e+00, %i.bni
  %i.bor = fadd fast float %i.bnm, %i.boq
  %i.bos = fcmp fast ogt float %i.bol, %i.bor
  %i.bot = shufflevector <4 x float> %i.bop, <4 x float> %i.bng, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.bos, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.bou = fmul fast float %i.bni, %i.bol
  %i.bov = fadd fast float %i.bou, %i.bnk
  %i.bow = fmul fast float %i.bov, %i.bol
  %i.box = insertelement <4 x float> %i.bop, float %i.bow, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i: ; preds = %bb.bc
  %i.boy = extractelement <4 x float> %i.bng, i64 2
  %i.boz = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.boy)
  %i.bpa = extractelement <4 x float> %i.bng, i64 1
  %i.bpb = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bpa)
  %i.bpc = extractelement <4 x float> %i.bng, i64 0
  %i.bpd = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bpc)
  %i.bpe = extractelement <4 x float> %i.bng, i64 3
  %i.bpf = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bpe)
  %i.bpg = fadd fast float %i.bpf, 1.000000e+00
  %i.bph = fadd fast float %i.boz, 1.000000e+00
  %i.bpi = fadd fast float %i.bpb, 1.000000e+00
  %i.bpj = fadd fast float %i.bpd, 1.000000e+00
  %i.bpk = call fast float @llvm.log.f32(float %i.bpg)
  %i.bpl = call fast float @llvm.log.f32(float %i.bph)
  %i.bpm = call fast float @llvm.log.f32(float %i.bpi)
  %i.bpn = call fast float @llvm.log.f32(float %i.bpj)
  %i.bpo = call fast float @llvm.tanh.f32(float %i.bpk)
  %i.bpp = call fast float @llvm.tanh.f32(float %i.bpl)
  %i.bpq = call fast float @llvm.tanh.f32(float %i.bpm)
  %i.bpr = call fast float @llvm.tanh.f32(float %i.bpn)
  %i.bps = insertelement <4 x float> poison, float %i.bpr, i64 0
  %i.bpt = insertelement <4 x float> %i.bps, float %i.bpq, i64 1
  %i.bpu = insertelement <4 x float> %i.bpt, float %i.bpp, i64 2
  %i.bpv = insertelement <4 x float> %i.bpu, float %i.bpo, i64 3
  %i.bpw = fmul fast <4 x float> %i.bpv, %i.bng
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i: ; preds = %bb.bc
  %i.bpx = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.bng, <4 x float> splat (float f0x42B0C0A5))
  %i.bpy = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bpx, <4 x float> splat (float f0xC2B0C0A5))
  %i.bpz = fneg fast <4 x float> %i.bpy
  %i.bqa = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bpz)
  %i.bqb = fadd fast <4 x float> %i.bqa, splat (float 1.000000e+00)
  %i.bqc = fdiv fast <4 x float> splat (float 1.000000e+00), %i.bqb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i: ; preds = %bb.bc
  %i.bqd = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bqe = load float, ptr %i.bqd, align 4, !tbaa !39 ; 3 uses
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqd, i64 4
  %i.bqg = load float, ptr %i.bqf, align 4, !tbaa !39 ; 5 uses
  %i.bqh = shufflevector <4 x float> %i.bng, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bqi = insertelement <2 x float> poison, float %i.bqe, i64 0
  %i.bqj = shufflevector <2 x float> %i.bqi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bqk = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bqh, <2 x float> %i.bqj) ; 2 uses
  %i.bql = insertelement <2 x float> poison, float %i.bqg, i64 0
  %i.bqm = shufflevector <2 x float> %i.bql, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bqn = fcmp fast ogt <2 x float> %i.bqk, %i.bqm
  %i.bqo = select <2 x i1> %i.bqn, <2 x float> %i.bqm, <2 x float> %i.bqk
  %i.bqp = extractelement <4 x float> %i.bng, i64 0
  %.0705.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bqp, float %i.bqe) ; 2 uses
  %i.bqq = fcmp fast ogt float %.0705.us.i, %i.bqg
  %.17061287.us.i = select i1 %i.bqq, float %i.bqg, float %.0705.us.i
  %i.bqr = extractelement <4 x float> %i.bng, i64 3
  %.0707.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bqr, float %i.bqe) ; 2 uses
  %i.bqs = fcmp fast ogt float %.0707.us.i, %i.bqg
  %i.bqt = insertelement <4 x float> poison, float %.17061287.us.i, i64 0
  %i.bqu = shufflevector <2 x float> %i.bqo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bqv = shufflevector <4 x float> %i.bqt, <4 x float> %i.bqu, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bqw = insertelement <4 x float> %i.bqv, float %.0707.us.i, i64 3 ; 2 uses
  br i1 %i.bqs, label %bb.bm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

bb.bm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i
  %i.bqx = insertelement <4 x float> %i.bqw, float %i.bqg, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i: ; preds = %bb.bc
  %i.bqy = load ptr, ptr %15, align 8, !tbaa !18
  %i.bqz = load float, ptr %i.bqy, align 4, !tbaa !39
  %i.bra = fcmp fast ogt <4 x float> %i.bng, zeroinitializer
  %i.brb = insertelement <4 x float> poison, float %i.bqz, i64 0
  %i.brc = shufflevector <4 x float> %i.brb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.brd = select <4 x i1> %i.bra, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brc
  %i.bre = fmul fast <4 x float> %i.brd, %i.bng
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i: ; preds = %bb.bc
  %i.brf = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bng, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i:      ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i, %bb.bm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i, %bb.bl, %bb.bk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i, %bb.bc
  %i.brg = phi <4 x float> [ %i.bop, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i ], [ %i.brf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i ], [ %i.bre, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i ], [ %i.bqx, %bb.bm ], [ %i.bqw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i ], [ %i.bqc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i ], [ %i.bpw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i ], [ %i.box, %bb.bl ], [ %i.bot, %bb.bk ], [ %i.bng, %bb.bc ] ; 4 uses
  %i.brh = bitcast <4 x float> %i.brg to <8 x i16>
  %i.bri = extractelement <8 x i16> %i.brh, i64 5
  store i16 %i.bri, ptr %i.bmm, align 2, !tbaa !394
  br i1 %i.bmo, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  %i.brj = bitcast <4 x float> %i.brg to <8 x i16>
  %i.brk = extractelement <8 x i16> %i.brj, i64 3
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bmm, i64 2
  store i16 %i.brk, ptr %i.brl, align 2, !tbaa !394
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  br i1 %i.bmq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.brm = bitcast <4 x float> %i.brg to <8 x i16>
  %i.brn = extractelement <8 x i16> %i.brm, i64 1
  %i.bro = getelementptr inbounds nuw i8, ptr %i.bmm, i64 4
  store i16 %i.brn, ptr %i.bro, align 2, !tbaa !394
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  br i1 %i.bms, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.brp = bitcast <4 x float> %i.brg to <8 x i16>
  %i.brq = extractelement <8 x i16> %i.brp, i64 7
  %i.brr = getelementptr inbounds nuw i8, ptr %i.bmm, i64 6
  store i16 %i.brq, ptr %i.brr, align 2, !tbaa !394
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.brs = getelementptr inbounds [2 x i8], ptr %i.bmm, i64 %i.bfq
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZN4ncnn3MatD2Ev.exit.us.i
  %.1527.us.i = phi ptr [ %i.bmm, %_ZN4ncnn3MatD2Ev.exit.us.i ], [ %i.brs, %bb.bs ] ; 6 uses
  %i.brt = or disjoint i32 %i.bmh, 1
  %.not553.us.i.1 = icmp slt i32 %i.brt, %i.dr
  br i1 %.not553.us.i.1, label %bb.bu, label %bb.cl

bb.bu:                                            ; preds = %bb.bt
  %.sroa.9.24.vec.extract = extractelement <4 x float> %i.bkz, i64 1
  %.sroa.9.28.vec.extract = extractelement <4 x float> %i.bkz, i64 2 ; 2 uses
  %.sroa.9.32.vec.extract = extractelement <4 x float> %i.bkz, i64 3 ; 2 uses
  %.sroa.14.36.vec.extract = extractelement <4 x float> %i.blu, i64 0 ; 2 uses
  %.sroa.14.40.vec.extract = extractelement <4 x float> %i.blu, i64 1 ; 2 uses
  %28 = fsub fast float %.sroa.14.36.vec.extract, %.sroa.14.40.vec.extract ; 2 uses
  %29 = fadd fast float %.sroa.14.40.vec.extract, %.sroa.14.36.vec.extract ; 2 uses
  %i.bru = fadd fast float %.sroa.9.32.vec.extract, %.sroa.9.28.vec.extract ; 2 uses
  %i.brv = fsub fast float %.sroa.9.28.vec.extract, %.sroa.9.32.vec.extract ; 2 uses
  %i.brw = fmul fast float %i.brv, f0x3EB504F3
  %i.brx = insertelement <4 x float> poison, float %.sroa.9.24.vec.extract, i64 0
  %i.bry = insertelement <4 x float> %i.brx, float %i.brw, i64 1
  %i.brz = insertelement <4 x float> poison, float %i.bru, i64 0
  %i.bsa = insertelement <4 x float> %i.brz, float %i.brv, i64 1
  %i.bsb = fadd fast <4 x float> %i.bry, %i.bgh
  %i.bsc = shufflevector <4 x float> %i.bsa, <4 x float> %i.bsb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bsd = fmul fast <4 x float> %i.bsc, <float 5.000000e-01, float f0x3F3504F3, float 1.000000e+00, float 1.000000e+00>
  %i.bse = insertelement <4 x float> %i.bge, float %i.bru, i64 2
  %i.bsf = shufflevector <4 x float> %i.bse, <4 x float> %i.blu, <4 x i32> <i32 0, i32 poison, i32 2, i32 6>
  %i.bsg = shufflevector <4 x float> %i.bsf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bsh = fadd fast <4 x float> %i.bsd, %i.bsg
  %30 = insertelement <2 x float> poison, float %29, i64 0
  %31 = insertelement <2 x float> %30, float %28, i64 1
  %32 = fmul fast <2 x float> %31, <float 2.000000e+00, float f0x3FB504F3>
  %33 = fmul fast float %28, f0x403504F3
  %34 = insertelement <4 x float> poison, float %29, i64 2
  %35 = insertelement <4 x float> %34, float %33, i64 3
  %36 = shufflevector <2 x float> %32, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %37 = shufflevector <4 x float> %36, <4 x float> %35, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bsi = fadd fast <4 x float> %i.bsh, %37      ; 18 uses
  switch i32 %i.dp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.1
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.1
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.1
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.1
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.1
    i32 6, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.bsj = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bsk = load float, ptr %i.bsj, align 4, !tbaa !39 ; 9 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsj, i64 4
  %i.bsm = load float, ptr %i.bsl, align 4, !tbaa !39 ; 5 uses
  %i.bsn = fneg fast float %i.bsm
  %i.bso = fdiv fast float %i.bsn, %i.bsk         ; 8 uses
  %i.bsp = extractelement <4 x float> %i.bsi, i64 2 ; 5 uses
  %i.bsq = fcmp fast olt float %i.bsp, %i.bso
  br i1 %i.bsq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.bsr = fdiv fast float 1.000000e+00, %i.bsk
  %i.bss = fadd fast float %i.bso, %i.bsr
  %i.bst = fcmp fast ogt float %i.bsp, %i.bss
  br i1 %i.bst, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.bsu = fmul fast float %i.bsk, %i.bsp
  %i.bsv = fadd fast float %i.bsu, %i.bsm
  %i.bsw = fmul fast float %i.bsv, %i.bsp
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1: ; preds = %bb.bx, %bb.bw, %bb.bv
  %.17021218.us.i.1 = phi float [ %i.bsw, %bb.bx ], [ 0.000000e+00, %bb.bv ], [ %i.bsp, %bb.bw ]
  %i.bsx = extractelement <4 x float> %i.bsi, i64 1 ; 5 uses
  %i.bsy = fcmp fast olt float %i.bsx, %i.bso
  br i1 %i.bsy, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1, label %bb.by

bb.by:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1
  %i.bsz = fdiv fast float 1.000000e+00, %i.bsk
  %i.bta = fadd fast float %i.bso, %i.bsz
  %i.btb = fcmp fast ogt float %i.bsx, %i.bta
  br i1 %i.btb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.btc = fmul fast float %i.bsk, %i.bsx
  %i.btd = fadd fast float %i.btc, %i.bsm
  %i.bte = fmul fast float %i.btd, %i.bsx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1: ; preds = %bb.bz, %bb.by, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1
  %.17041241.us.i.1 = phi float [ %i.bte, %bb.bz ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.1 ], [ %i.bsx, %bb.by ]
  %i.btf = extractelement <4 x float> %i.bsi, i64 0 ; 5 uses
  %i.btg = fcmp fast olt float %i.btf, %i.bso
  br i1 %i.btg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1, label %bb.ca

bb.ca:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1
  %i.bth = fdiv fast float 1.000000e+00, %i.bsk
  %i.bti = fadd fast float %i.bso, %i.bth
  %i.btj = fcmp fast ogt float %i.btf, %i.bti
  br i1 %i.btj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.btk = fmul fast float %i.bsk, %i.btf
  %i.btl = fadd fast float %i.btk, %i.bsm
  %i.btm = fmul fast float %i.btl, %i.btf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1: ; preds = %bb.cb, %bb.ca, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1
  %.17061277.us.i.1 = phi float [ %i.btm, %bb.cb ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.1 ], [ %i.btf, %bb.ca ]
  %i.btn = extractelement <4 x float> %i.bsi, i64 3 ; 4 uses
  %i.bto = fcmp fast olt float %i.btn, %i.bso
  %i.btp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.17061277.us.i.1, i64 0
  %i.btq = insertelement <4 x float> %i.btp, float %.17041241.us.i.1, i64 1
  %i.btr = insertelement <4 x float> %i.btq, float %.17021218.us.i.1, i64 2 ; 3 uses
  br i1 %i.bto, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1, label %bb.cc

bb.cc:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1
  %i.bts = fdiv fast float 1.000000e+00, %i.bsk
  %i.btt = fadd fast float %i.bso, %i.bts
  %i.btu = fcmp fast ogt float %i.btn, %i.btt
  %i.btv = shufflevector <4 x float> %i.btr, <4 x float> %i.bsi, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.btu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.btw = fmul fast float %i.bsk, %i.btn
  %i.btx = fadd fast float %i.btw, %i.bsm
  %i.bty = fmul fast float %i.btx, %i.btn
  %i.btz = insertelement <4 x float> %i.btr, float %i.bty, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.1: ; preds = %bb.bu
  %i.bua = extractelement <4 x float> %i.bsi, i64 2
  %i.bub = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bua)
  %i.buc = extractelement <4 x float> %i.bsi, i64 1
  %i.bud = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.buc)
  %i.bue = extractelement <4 x float> %i.bsi, i64 0
  %i.buf = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bue)
  %i.bug = extractelement <4 x float> %i.bsi, i64 3
  %i.buh = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bug)
  %i.bui = fadd fast float %i.buh, 1.000000e+00
  %i.buj = fadd fast float %i.bub, 1.000000e+00
  %i.buk = fadd fast float %i.bud, 1.000000e+00
  %i.bul = fadd fast float %i.buf, 1.000000e+00
  %i.bum = call fast float @llvm.log.f32(float %i.bui)
  %i.bun = call fast float @llvm.log.f32(float %i.buj)
  %i.buo = call fast float @llvm.log.f32(float %i.buk)
  %i.bup = call fast float @llvm.log.f32(float %i.bul)
  %i.buq = call fast float @llvm.tanh.f32(float %i.bum)
  %i.bur = call fast float @llvm.tanh.f32(float %i.bun)
  %i.bus = call fast float @llvm.tanh.f32(float %i.buo)
  %i.but = call fast float @llvm.tanh.f32(float %i.bup)
  %i.buu = insertelement <4 x float> poison, float %i.but, i64 0
  %i.buv = insertelement <4 x float> %i.buu, float %i.bus, i64 1
  %i.buw = insertelement <4 x float> %i.buv, float %i.bur, i64 2
  %i.bux = insertelement <4 x float> %i.buw, float %i.buq, i64 3
  %i.buy = fmul fast <4 x float> %i.bux, %i.bsi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.1: ; preds = %bb.bu
  %i.buz = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.bsi, <4 x float> splat (float f0x42B0C0A5))
  %i.bva = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.buz, <4 x float> splat (float f0xC2B0C0A5))
  %i.bvb = fneg fast <4 x float> %i.bva
  %i.bvc = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bvb)
  %i.bvd = fadd fast <4 x float> %i.bvc, splat (float 1.000000e+00)
  %i.bve = fdiv fast <4 x float> splat (float 1.000000e+00), %i.bvd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.1: ; preds = %bb.bu
  %i.bvf = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bvg = load float, ptr %i.bvf, align 4, !tbaa !39 ; 3 uses
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvf, i64 4
  %i.bvi = load float, ptr %i.bvh, align 4, !tbaa !39 ; 5 uses
  %i.bvj = shufflevector <4 x float> %i.bsi, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bvk = insertelement <2 x float> poison, float %i.bvg, i64 0
  %i.bvl = shufflevector <2 x float> %i.bvk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bvm = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bvj, <2 x float> %i.bvl) ; 2 uses
  %i.bvn = insertelement <2 x float> poison, float %i.bvi, i64 0
  %i.bvo = shufflevector <2 x float> %i.bvn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bvp = fcmp fast ogt <2 x float> %i.bvm, %i.bvo
  %i.bvq = select <2 x i1> %i.bvp, <2 x float> %i.bvo, <2 x float> %i.bvm
  %i.bvr = extractelement <4 x float> %i.bsi, i64 0
  %.0705.us.i.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bvr, float %i.bvg) ; 2 uses
  %i.bvs = fcmp fast ogt float %.0705.us.i.1, %i.bvi
  %.17061287.us.i.1 = select i1 %i.bvs, float %i.bvi, float %.0705.us.i.1
  %i.bvt = extractelement <4 x float> %i.bsi, i64 3
  %.0707.us.i.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bvt, float %i.bvg) ; 2 uses
  %i.bvu = fcmp fast ogt float %.0707.us.i.1, %i.bvi
  %i.bvv = insertelement <4 x float> poison, float %.17061287.us.i.1, i64 0
  %i.bvw = shufflevector <2 x float> %i.bvq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bvx = shufflevector <4 x float> %i.bvv, <4 x float> %i.bvw, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bvy = insertelement <4 x float> %i.bvx, float %.0707.us.i.1, i64 3 ; 2 uses
  br i1 %i.bvu, label %bb.ce, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

bb.ce:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.1
  %i.bvz = insertelement <4 x float> %i.bvy, float %i.bvi, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.1: ; preds = %bb.bu
  %i.bwa = load ptr, ptr %15, align 8, !tbaa !18
  %i.bwb = load float, ptr %i.bwa, align 4, !tbaa !39
  %i.bwc = fcmp fast ogt <4 x float> %i.bsi, zeroinitializer
  %i.bwd = insertelement <4 x float> poison, float %i.bwb, i64 0
  %i.bwe = shufflevector <4 x float> %i.bwd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwf = select <4 x i1> %i.bwc, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bwe
  %i.bwg = fmul fast <4 x float> %i.bwf, %i.bsi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.1: ; preds = %bb.bu
  %i.bwh = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bsi, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.1, %bb.ce, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.1, %bb.cd, %bb.cc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1, %bb.bu
  %i.bwi = phi <4 x float> [ %i.btr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.1 ], [ %i.bwh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.1 ], [ %i.bwg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.1 ], [ %i.bvz, %bb.ce ], [ %i.bvy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.1 ], [ %i.bve, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.1 ], [ %i.buy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.1 ], [ %i.btz, %bb.cd ], [ %i.btv, %bb.cc ], [ %i.bsi, %bb.bu ] ; 4 uses
  %i.bwj = bitcast <4 x float> %i.bwi to <8 x i16>
  %i.bwk = extractelement <8 x i16> %i.bwj, i64 5
  store i16 %i.bwk, ptr %.1527.us.i, align 2, !tbaa !394
  br i1 %i.bmo, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1
  %i.bwl = bitcast <4 x float> %i.bwi to <8 x i16>
  %i.bwm = extractelement <8 x i16> %i.bwl, i64 3
  %i.bwn = getelementptr inbounds nuw i8, ptr %.1527.us.i, i64 2
  store i16 %i.bwm, ptr %i.bwn, align 2, !tbaa !394
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.1
  br i1 %i.bmq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.bwo = bitcast <4 x float> %i.bwi to <8 x i16>
  %i.bwp = extractelement <8 x i16> %i.bwo, i64 1
  %i.bwq = getelementptr inbounds nuw i8, ptr %.1527.us.i, i64 4
  store i16 %i.bwp, ptr %i.bwq, align 2, !tbaa !394
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.bms, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.bwr = bitcast <4 x float> %i.bwi to <8 x i16>
  %i.bws = extractelement <8 x i16> %i.bwr, i64 7
  %i.bwt = getelementptr inbounds nuw i8, ptr %.1527.us.i, i64 6
  store i16 %i.bws, ptr %i.bwt, align 2, !tbaa !394
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.bwu = getelementptr inbounds [2 x i8], ptr %.1527.us.i, i64 %i.bfq
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.bt
  %.1527.us.i.1 = phi ptr [ %.1527.us.i, %bb.bt ], [ %i.bwu, %bb.ck ] ; 6 uses
  %i.bwv = or disjoint i32 %i.bmh, 2
  %.not553.us.i.2 = icmp slt i32 %i.bwv, %i.dr
  br i1 %.not553.us.i.2, label %bb.cm, label %bb.dd

bb.cm:                                            ; preds = %bb.cl
  %.sroa.14.48.vec.extract = extractelement <4 x float> %i.blu, i64 3
  %.sroa.19.52.vec.extract = extractelement <4 x float> %i.bkm, i64 1 ; 2 uses
  %.sroa.19.56.vec.extract = extractelement <4 x float> %i.bkm, i64 2 ; 2 uses
  %.sroa.19.60.vec.extract = extractelement <4 x float> %i.bkm, i64 3 ; 2 uses
  %.sroa.19.64.vec.extract = extractelement <4 x float> %i.bkm, i64 0 ; 2 uses
  %38 = fsub fast float %.sroa.19.60.vec.extract, %.sroa.19.64.vec.extract ; 2 uses
  %39 = fadd fast float %.sroa.19.64.vec.extract, %.sroa.19.60.vec.extract ; 2 uses
  %i.bww = fadd fast float %.sroa.19.56.vec.extract, %.sroa.19.52.vec.extract ; 2 uses
  %i.bwx = fsub fast float %.sroa.19.52.vec.extract, %.sroa.19.56.vec.extract ; 2 uses
  %i.bwy = fmul fast float %i.bwx, f0x3EB504F3
  %i.bwz = insertelement <4 x float> poison, float %.sroa.14.48.vec.extract, i64 0
  %i.bxa = insertelement <4 x float> %i.bwz, float %i.bwy, i64 1
  %i.bxb = insertelement <4 x float> poison, float %i.bww, i64 0
  %i.bxc = insertelement <4 x float> %i.bxb, float %i.bwx, i64 1
  %i.bxd = fadd fast <4 x float> %i.bxa, %i.bgi
  %i.bxe = shufflevector <4 x float> %i.bxc, <4 x float> %i.bxd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bxf = fmul fast <4 x float> %i.bxe, <float 5.000000e-01, float f0x3F3504F3, float 1.000000e+00, float 1.000000e+00>
  %i.bxg = insertelement <4 x float> %i.bge, float %i.bww, i64 2
  %i.bxh = insertelement <4 x float> %i.bxg, float %i.blx, i64 3
  %i.bxi = shufflevector <4 x float> %i.bxh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bxj = fadd fast <4 x float> %i.bxf, %i.bxi
  %40 = insertelement <2 x float> poison, float %39, i64 0
  %41 = insertelement <2 x float> %40, float %38, i64 1
  %42 = fmul fast <2 x float> %41, <float 2.000000e+00, float f0x3FB504F3>
  %43 = fmul fast float %38, f0x403504F3
  %44 = insertelement <4 x float> poison, float %39, i64 2
  %45 = insertelement <4 x float> %44, float %43, i64 3
  %46 = shufflevector <2 x float> %42, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %47 = shufflevector <4 x float> %46, <4 x float> %45, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bxk = fadd fast <4 x float> %i.bxj, %47      ; 18 uses
  switch i32 %i.dp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.2
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.2
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.2
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.2
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.2
    i32 6, label %bb.cn
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.bxl = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bxm = load float, ptr %i.bxl, align 4, !tbaa !39 ; 9 uses
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxl, i64 4
  %i.bxo = load float, ptr %i.bxn, align 4, !tbaa !39 ; 5 uses
  %i.bxp = fneg fast float %i.bxo
  %i.bxq = fdiv fast float %i.bxp, %i.bxm         ; 8 uses
  %i.bxr = extractelement <4 x float> %i.bxk, i64 2 ; 5 uses
  %i.bxs = fcmp fast olt float %i.bxr, %i.bxq
  br i1 %i.bxs, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.bxt = fdiv fast float 1.000000e+00, %i.bxm
  %i.bxu = fadd fast float %i.bxq, %i.bxt
  %i.bxv = fcmp fast ogt float %i.bxr, %i.bxu
  br i1 %i.bxv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.bxw = fmul fast float %i.bxm, %i.bxr
  %i.bxx = fadd fast float %i.bxw, %i.bxo
  %i.bxy = fmul fast float %i.bxx, %i.bxr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2: ; preds = %bb.cp, %bb.co, %bb.cn
  %.17021218.us.i.2 = phi float [ %i.bxy, %bb.cp ], [ 0.000000e+00, %bb.cn ], [ %i.bxr, %bb.co ]
  %i.bxz = extractelement <4 x float> %i.bxk, i64 1 ; 5 uses
  %i.bya = fcmp fast olt float %i.bxz, %i.bxq
  br i1 %i.bya, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2, label %bb.cq

bb.cq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2
  %i.byb = fdiv fast float 1.000000e+00, %i.bxm
  %i.byc = fadd fast float %i.bxq, %i.byb
  %i.byd = fcmp fast ogt float %i.bxz, %i.byc
  br i1 %i.byd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.bye = fmul fast float %i.bxm, %i.bxz
  %i.byf = fadd fast float %i.bye, %i.bxo
  %i.byg = fmul fast float %i.byf, %i.bxz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2: ; preds = %bb.cr, %bb.cq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2
  %.17041241.us.i.2 = phi float [ %i.byg, %bb.cr ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.2 ], [ %i.bxz, %bb.cq ]
  %i.byh = extractelement <4 x float> %i.bxk, i64 0 ; 5 uses
  %i.byi = fcmp fast olt float %i.byh, %i.bxq
  br i1 %i.byi, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2, label %bb.cs

bb.cs:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2
  %i.byj = fdiv fast float 1.000000e+00, %i.bxm
  %i.byk = fadd fast float %i.bxq, %i.byj
  %i.byl = fcmp fast ogt float %i.byh, %i.byk
  br i1 %i.byl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bym = fmul fast float %i.bxm, %i.byh
  %i.byn = fadd fast float %i.bym, %i.bxo
  %i.byo = fmul fast float %i.byn, %i.byh
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2: ; preds = %bb.ct, %bb.cs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2
  %.17061277.us.i.2 = phi float [ %i.byo, %bb.ct ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.2 ], [ %i.byh, %bb.cs ]
  %i.byp = extractelement <4 x float> %i.bxk, i64 3 ; 4 uses
  %i.byq = fcmp fast olt float %i.byp, %i.bxq
  %i.byr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.17061277.us.i.2, i64 0
  %i.bys = insertelement <4 x float> %i.byr, float %.17041241.us.i.2, i64 1
  %i.byt = insertelement <4 x float> %i.bys, float %.17021218.us.i.2, i64 2 ; 3 uses
  br i1 %i.byq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2, label %bb.cu

bb.cu:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2
  %i.byu = fdiv fast float 1.000000e+00, %i.bxm
  %i.byv = fadd fast float %i.bxq, %i.byu
  %i.byw = fcmp fast ogt float %i.byp, %i.byv
  %i.byx = shufflevector <4 x float> %i.byt, <4 x float> %i.bxk, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.byw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.byy = fmul fast float %i.bxm, %i.byp
  %i.byz = fadd fast float %i.byy, %i.bxo
  %i.bza = fmul fast float %i.byz, %i.byp
  %i.bzb = insertelement <4 x float> %i.byt, float %i.bza, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.2: ; preds = %bb.cm
  %i.bzc = extractelement <4 x float> %i.bxk, i64 2
  %i.bzd = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bzc)
  %i.bze = extractelement <4 x float> %i.bxk, i64 1
  %i.bzf = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bze)
  %i.bzg = extractelement <4 x float> %i.bxk, i64 0
  %i.bzh = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bzg)
  %i.bzi = extractelement <4 x float> %i.bxk, i64 3
  %i.bzj = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bzi)
  %i.bzk = fadd fast float %i.bzj, 1.000000e+00
  %i.bzl = fadd fast float %i.bzd, 1.000000e+00
  %i.bzm = fadd fast float %i.bzf, 1.000000e+00
  %i.bzn = fadd fast float %i.bzh, 1.000000e+00
  %i.bzo = call fast float @llvm.log.f32(float %i.bzk)
  %i.bzp = call fast float @llvm.log.f32(float %i.bzl)
  %i.bzq = call fast float @llvm.log.f32(float %i.bzm)
  %i.bzr = call fast float @llvm.log.f32(float %i.bzn)
  %i.bzs = call fast float @llvm.tanh.f32(float %i.bzo)
  %i.bzt = call fast float @llvm.tanh.f32(float %i.bzp)
  %i.bzu = call fast float @llvm.tanh.f32(float %i.bzq)
  %i.bzv = call fast float @llvm.tanh.f32(float %i.bzr)
  %i.bzw = insertelement <4 x float> poison, float %i.bzv, i64 0
  %i.bzx = insertelement <4 x float> %i.bzw, float %i.bzu, i64 1
  %i.bzy = insertelement <4 x float> %i.bzx, float %i.bzt, i64 2
  %i.bzz = insertelement <4 x float> %i.bzy, float %i.bzs, i64 3
  %i.caa = fmul fast <4 x float> %i.bzz, %i.bxk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.2: ; preds = %bb.cm
  %i.cab = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.bxk, <4 x float> splat (float f0x42B0C0A5))
  %i.cac = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cab, <4 x float> splat (float f0xC2B0C0A5))
  %i.cad = fneg fast <4 x float> %i.cac
  %i.cae = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cad)
  %i.caf = fadd fast <4 x float> %i.cae, splat (float 1.000000e+00)
  %i.cag = fdiv fast <4 x float> splat (float 1.000000e+00), %i.caf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.2: ; preds = %bb.cm
  %i.cah = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.cai = load float, ptr %i.cah, align 4, !tbaa !39 ; 3 uses
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cah, i64 4
  %i.cak = load float, ptr %i.caj, align 4, !tbaa !39 ; 5 uses
  %i.cal = shufflevector <4 x float> %i.bxk, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cam = insertelement <2 x float> poison, float %i.cai, i64 0
  %i.can = shufflevector <2 x float> %i.cam, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cao = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cal, <2 x float> %i.can) ; 2 uses
  %i.cap = insertelement <2 x float> poison, float %i.cak, i64 0
  %i.caq = shufflevector <2 x float> %i.cap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.car = fcmp fast ogt <2 x float> %i.cao, %i.caq
  %i.cas = select <2 x i1> %i.car, <2 x float> %i.caq, <2 x float> %i.cao
  %i.cat = extractelement <4 x float> %i.bxk, i64 0
  %.0705.us.i.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cat, float %i.cai) ; 2 uses
  %i.cau = fcmp fast ogt float %.0705.us.i.2, %i.cak
  %.17061287.us.i.2 = select i1 %i.cau, float %i.cak, float %.0705.us.i.2
  %i.cav = extractelement <4 x float> %i.bxk, i64 3
  %.0707.us.i.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cav, float %i.cai) ; 2 uses
  %i.caw = fcmp fast ogt float %.0707.us.i.2, %i.cak
  %i.cax = insertelement <4 x float> poison, float %.17061287.us.i.2, i64 0
  %i.cay = shufflevector <2 x float> %i.cas, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.caz = shufflevector <4 x float> %i.cax, <4 x float> %i.cay, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cba = insertelement <4 x float> %i.caz, float %.0707.us.i.2, i64 3 ; 2 uses
  br i1 %i.caw, label %bb.cw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

bb.cw:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.2
  %i.cbb = insertelement <4 x float> %i.cba, float %i.cak, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.2: ; preds = %bb.cm
  %i.cbc = load ptr, ptr %15, align 8, !tbaa !18
  %i.cbd = load float, ptr %i.cbc, align 4, !tbaa !39
  %i.cbe = fcmp fast ogt <4 x float> %i.bxk, zeroinitializer
  %i.cbf = insertelement <4 x float> poison, float %i.cbd, i64 0
  %i.cbg = shufflevector <4 x float> %i.cbf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cbh = select <4 x i1> %i.cbe, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cbg
  %i.cbi = fmul fast <4 x float> %i.cbh, %i.bxk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.2: ; preds = %bb.cm
  %i.cbj = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bxk, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.2, %bb.cw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.2, %bb.cv, %bb.cu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2, %bb.cm
  %i.cbk = phi <4 x float> [ %i.byt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.2 ], [ %i.cbj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.2 ], [ %i.cbi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.2 ], [ %i.cbb, %bb.cw ], [ %i.cba, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.2 ], [ %i.cag, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.2 ], [ %i.caa, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.2 ], [ %i.bzb, %bb.cv ], [ %i.byx, %bb.cu ], [ %i.bxk, %bb.cm ] ; 4 uses
  %i.cbl = bitcast <4 x float> %i.cbk to <8 x i16>
  %i.cbm = extractelement <8 x i16> %i.cbl, i64 5
  store i16 %i.cbm, ptr %.1527.us.i.1, align 2, !tbaa !394
  br i1 %i.bmo, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2
  %i.cbn = bitcast <4 x float> %i.cbk to <8 x i16>
  %i.cbo = extractelement <8 x i16> %i.cbn, i64 3
  %i.cbp = getelementptr inbounds nuw i8, ptr %.1527.us.i.1, i64 2
  store i16 %i.cbo, ptr %i.cbp, align 2, !tbaa !394
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.2
  br i1 %i.bmq, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.cbq = bitcast <4 x float> %i.cbk to <8 x i16>
  %i.cbr = extractelement <8 x i16> %i.cbq, i64 1
  %i.cbs = getelementptr inbounds nuw i8, ptr %.1527.us.i.1, i64 4
  store i16 %i.cbr, ptr %i.cbs, align 2, !tbaa !394
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  br i1 %i.bms, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.cbt = bitcast <4 x float> %i.cbk to <8 x i16>
  %i.cbu = extractelement <8 x i16> %i.cbt, i64 7
  %i.cbv = getelementptr inbounds nuw i8, ptr %.1527.us.i.1, i64 6
  store i16 %i.cbu, ptr %i.cbv, align 2, !tbaa !394
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.cbw = getelementptr inbounds [2 x i8], ptr %.1527.us.i.1, i64 %i.bfq
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cl
  %.1527.us.i.2 = phi ptr [ %.1527.us.i.1, %bb.cl ], [ %i.cbw, %bb.dc ] ; 4 uses
  %i.cbx = or disjoint i32 %i.bmh, 3
  %.not553.us.i.3 = icmp slt i32 %i.cbx, %i.dr
  br i1 %.not553.us.i.3, label %bb.de, label %bb.du

bb.de:                                            ; preds = %bb.dd
  %.sroa.26.76.vec.extract = extractelement <4 x float> %i.blh, i64 1 ; 2 uses
  %.sroa.26.80.vec.extract = extractelement <4 x float> %i.blh, i64 2 ; 2 uses
  %.sroa.26.84.vec.extract = extractelement <4 x float> %i.blh, i64 3 ; 2 uses
  %48 = fsub fast float %.sroa.26.84.vec.extract, %i.bll ; 2 uses
  %49 = fadd fast float %i.bll, %.sroa.26.84.vec.extract ; 2 uses
  %i.cby = fadd fast float %.sroa.26.80.vec.extract, %.sroa.26.76.vec.extract ; 2 uses
  %i.cbz = fsub fast float %.sroa.26.76.vec.extract, %.sroa.26.80.vec.extract ; 2 uses
  %i.cca = fmul fast float %i.cbz, f0x3EB504F3
  %i.ccb = insertelement <4 x float> %i.blh, float %i.cca, i64 1
  %i.ccc = insertelement <4 x float> poison, float %i.cby, i64 0
  %i.ccd = insertelement <4 x float> %i.ccc, float %i.cbz, i64 1
  %i.cce = fadd fast <4 x float> %i.ccb, %i.bgj
  %i.ccf = shufflevector <4 x float> %i.ccd, <4 x float> %i.cce, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ccg = fmul fast <4 x float> %i.ccf, <float 5.000000e-01, float f0x3F3504F3, float 1.000000e+00, float 1.000000e+00>
  %i.cch = insertelement <4 x float> %i.bge, float %i.cby, i64 2
  %i.cci = insertelement <4 x float> %i.cch, float %i.bmc, i64 3
  %i.ccj = shufflevector <4 x float> %i.cci, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cck = fadd fast <4 x float> %i.ccg, %i.ccj
  %50 = insertelement <2 x float> poison, float %49, i64 0
  %51 = insertelement <2 x float> %50, float %48, i64 1
  %52 = fmul fast <2 x float> %51, <float 2.000000e+00, float f0x3FB504F3>
  %53 = fmul fast float %48, f0x403504F3
  %54 = insertelement <4 x float> poison, float %49, i64 2
  %55 = insertelement <4 x float> %54, float %53, i64 3
  %56 = shufflevector <2 x float> %52, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %57 = shufflevector <4 x float> %56, <4 x float> %55, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ccl = fadd fast <4 x float> %i.cck, %57      ; 18 uses
  switch i32 %i.dp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.3
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.3
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.3
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.3
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.3
    i32 6, label %bb.df
  ]

bb.df:                                            ; preds = %bb.de
  %i.ccm = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.ccn = load float, ptr %i.ccm, align 4, !tbaa !39 ; 9 uses
  %i.cco = getelementptr inbounds nuw i8, ptr %i.ccm, i64 4
  %i.ccp = load float, ptr %i.cco, align 4, !tbaa !39 ; 5 uses
  %i.ccq = fneg fast float %i.ccp
  %i.ccr = fdiv fast float %i.ccq, %i.ccn         ; 8 uses
  %i.ccs = extractelement <4 x float> %i.ccl, i64 2 ; 5 uses
  %i.cct = fcmp fast olt float %i.ccs, %i.ccr
  br i1 %i.cct, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ccu = fdiv fast float 1.000000e+00, %i.ccn
  %i.ccv = fadd fast float %i.ccr, %i.ccu
  %i.ccw = fcmp fast ogt float %i.ccs, %i.ccv
  br i1 %i.ccw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ccx = fmul fast float %i.ccn, %i.ccs
  %i.ccy = fadd fast float %i.ccx, %i.ccp
  %i.ccz = fmul fast float %i.ccy, %i.ccs
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3: ; preds = %bb.dh, %bb.dg, %bb.df
  %.17021218.us.i.3 = phi float [ %i.ccz, %bb.dh ], [ 0.000000e+00, %bb.df ], [ %i.ccs, %bb.dg ]
  %i.cda = extractelement <4 x float> %i.ccl, i64 1 ; 5 uses
  %i.cdb = fcmp fast olt float %i.cda, %i.ccr
  br i1 %i.cdb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3, label %bb.di

bb.di:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3
  %i.cdc = fdiv fast float 1.000000e+00, %i.ccn
  %i.cdd = fadd fast float %i.ccr, %i.cdc
  %i.cde = fcmp fast ogt float %i.cda, %i.cdd
  br i1 %i.cde, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.cdf = fmul fast float %i.ccn, %i.cda
  %i.cdg = fadd fast float %i.cdf, %i.ccp
  %i.cdh = fmul fast float %i.cdg, %i.cda
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3: ; preds = %bb.dj, %bb.di, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3
  %.17041241.us.i.3 = phi float [ %i.cdh, %bb.dj ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread.us.i.3 ], [ %i.cda, %bb.di ]
  %i.cdi = extractelement <4 x float> %i.ccl, i64 0 ; 5 uses
  %i.cdj = fcmp fast olt float %i.cdi, %i.ccr
  br i1 %i.cdj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3, label %bb.dk

bb.dk:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3
  %i.cdk = fdiv fast float 1.000000e+00, %i.ccn
  %i.cdl = fadd fast float %i.ccr, %i.cdk
  %i.cdm = fcmp fast ogt float %i.cdi, %i.cdl
  br i1 %i.cdm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.cdn = fmul fast float %i.ccn, %i.cdi
  %i.cdo = fadd fast float %i.cdn, %i.ccp
  %i.cdp = fmul fast float %i.cdo, %i.cdi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3: ; preds = %bb.dl, %bb.dk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3
  %.17061277.us.i.3 = phi float [ %i.cdp, %bb.dl ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit583.thread.us.i.3 ], [ %i.cdi, %bb.dk ]
  %i.cdq = extractelement <4 x float> %i.ccl, i64 3 ; 4 uses
  %i.cdr = fcmp fast olt float %i.cdq, %i.ccr
  %i.cds = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.17061277.us.i.3, i64 0
  %i.cdt = insertelement <4 x float> %i.cds, float %.17041241.us.i.3, i64 1
  %i.cdu = insertelement <4 x float> %i.cdt, float %.17021218.us.i.3, i64 2 ; 3 uses
  br i1 %i.cdr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3, label %bb.dm

bb.dm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3
  %i.cdv = fdiv fast float 1.000000e+00, %i.ccn
  %i.cdw = fadd fast float %i.ccr, %i.cdv
  %i.cdx = fcmp fast ogt float %i.cdq, %i.cdw
  %i.cdy = shufflevector <4 x float> %i.cdu, <4 x float> %i.ccl, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.cdx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.cdz = fmul fast float %i.ccn, %i.cdq
  %i.cea = fadd fast float %i.cdz, %i.ccp
  %i.ceb = fmul fast float %i.cea, %i.cdq
  %i.cec = insertelement <4 x float> %i.cdu, float %i.ceb, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.3: ; preds = %bb.de
  %i.ced = extractelement <4 x float> %i.ccl, i64 2
  %i.cee = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ced)
  %i.cef = extractelement <4 x float> %i.ccl, i64 1
  %i.ceg = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cef)
  %i.ceh = extractelement <4 x float> %i.ccl, i64 0
  %i.cei = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ceh)
  %i.cej = extractelement <4 x float> %i.ccl, i64 3
  %i.cek = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cej)
  %i.cel = fadd fast float %i.cek, 1.000000e+00
  %i.cem = fadd fast float %i.cee, 1.000000e+00
  %i.cen = fadd fast float %i.ceg, 1.000000e+00
  %i.ceo = fadd fast float %i.cei, 1.000000e+00
  %i.cep = call fast float @llvm.log.f32(float %i.cel)
  %i.ceq = call fast float @llvm.log.f32(float %i.cem)
  %i.cer = call fast float @llvm.log.f32(float %i.cen)
  %i.ces = call fast float @llvm.log.f32(float %i.ceo)
  %i.cet = call fast float @llvm.tanh.f32(float %i.cep)
  %i.ceu = call fast float @llvm.tanh.f32(float %i.ceq)
  %i.cev = call fast float @llvm.tanh.f32(float %i.cer)
  %i.cew = call fast float @llvm.tanh.f32(float %i.ces)
  %i.cex = insertelement <4 x float> poison, float %i.cew, i64 0
  %i.cey = insertelement <4 x float> %i.cex, float %i.cev, i64 1
  %i.cez = insertelement <4 x float> %i.cey, float %i.ceu, i64 2
  %i.cfa = insertelement <4 x float> %i.cez, float %i.cet, i64 3
  %i.cfb = fmul fast <4 x float> %i.cfa, %i.ccl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.3: ; preds = %bb.de
  %i.cfc = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ccl, <4 x float> splat (float f0x42B0C0A5))
  %i.cfd = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cfc, <4 x float> splat (float f0xC2B0C0A5))
  %i.cfe = fneg fast <4 x float> %i.cfd
  %i.cff = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cfe)
  %i.cfg = fadd fast <4 x float> %i.cff, splat (float 1.000000e+00)
  %i.cfh = fdiv fast <4 x float> splat (float 1.000000e+00), %i.cfg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.3: ; preds = %bb.de
  %i.cfi = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.cfj = load float, ptr %i.cfi, align 4, !tbaa !39 ; 3 uses
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.cfi, i64 4
  %i.cfl = load float, ptr %i.cfk, align 4, !tbaa !39 ; 5 uses
  %i.cfm = shufflevector <4 x float> %i.ccl, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cfn = insertelement <2 x float> poison, float %i.cfj, i64 0
  %i.cfo = shufflevector <2 x float> %i.cfn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cfp = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cfm, <2 x float> %i.cfo) ; 2 uses
  %i.cfq = insertelement <2 x float> poison, float %i.cfl, i64 0
  %i.cfr = shufflevector <2 x float> %i.cfq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cfs = fcmp fast ogt <2 x float> %i.cfp, %i.cfr
  %i.cft = select <2 x i1> %i.cfs, <2 x float> %i.cfr, <2 x float> %i.cfp
  %i.cfu = extractelement <4 x float> %i.ccl, i64 0
  %.0705.us.i.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cfu, float %i.cfj) ; 2 uses
  %i.cfv = fcmp fast ogt float %.0705.us.i.3, %i.cfl
  %.17061287.us.i.3 = select i1 %i.cfv, float %i.cfl, float %.0705.us.i.3
  %i.cfw = extractelement <4 x float> %i.ccl, i64 3
  %.0707.us.i.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.cfw, float %i.cfj) ; 2 uses
  %i.cfx = fcmp fast ogt float %.0707.us.i.3, %i.cfl
  %i.cfy = insertelement <4 x float> poison, float %.17061287.us.i.3, i64 0
  %i.cfz = shufflevector <2 x float> %i.cft, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cga = shufflevector <4 x float> %i.cfy, <4 x float> %i.cfz, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cgb = insertelement <4 x float> %i.cga, float %.0707.us.i.3, i64 3 ; 2 uses
  br i1 %i.cfx, label %bb.do, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

bb.do:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.3
  %i.cgc = insertelement <4 x float> %i.cgb, float %i.cfl, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.3: ; preds = %bb.de
  %i.cgd = load ptr, ptr %15, align 8, !tbaa !18
  %i.cge = load float, ptr %i.cgd, align 4, !tbaa !39
  %i.cgf = fcmp fast ogt <4 x float> %i.ccl, zeroinitializer
  %i.cgg = insertelement <4 x float> poison, float %i.cge, i64 0
  %i.cgh = shufflevector <4 x float> %i.cgg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cgi = select <4 x i1> %i.cgf, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cgh
  %i.cgj = fmul fast <4 x float> %i.cgi, %i.ccl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.3: ; preds = %bb.de
  %i.cgk = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ccl, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.3, %bb.do, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.3, %bb.dn, %bb.dm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3, %bb.de
  %i.cgl = phi <4 x float> [ %i.cdu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit582.thread.us.i.3 ], [ %i.cgk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1225.us.i.3 ], [ %i.cgj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1228.us.i.3 ], [ %i.cgc, %bb.do ], [ %i.cgb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1222.us.i.3 ], [ %i.cfh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1231.us.i.3 ], [ %i.cfb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit584.thread1234.us.i.3 ], [ %i.cec, %bb.dn ], [ %i.cdy, %bb.dm ], [ %i.ccl, %bb.de ] ; 4 uses
  %i.cgm = bitcast <4 x float> %i.cgl to <8 x i16>
  %i.cgn = extractelement <8 x i16> %i.cgm, i64 5
  store i16 %i.cgn, ptr %.1527.us.i.2, align 2, !tbaa !394
  br i1 %i.bmo, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3
  %i.cgo = bitcast <4 x float> %i.cgl to <8 x i16>
  %i.cgp = extractelement <8 x i16> %i.cgo, i64 3
  %i.cgq = getelementptr inbounds nuw i8, ptr %.1527.us.i.2, i64 2
  store i16 %i.cgp, ptr %i.cgq, align 2, !tbaa !394
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3
  br i1 %i.bmq, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.cgr = bitcast <4 x float> %i.cgl to <8 x i16>
  %i.cgs = extractelement <8 x i16> %i.cgr, i64 1
  %i.cgt = getelementptr inbounds nuw i8, ptr %.1527.us.i.2, i64 4
  store i16 %i.cgs, ptr %i.cgt, align 2, !tbaa !394
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  br i1 %i.bms, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
end_hunk_0
