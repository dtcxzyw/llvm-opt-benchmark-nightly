Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pull_rotation?download=true
inline.NumInlined: 1360
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZL11do_flexiblebP10gmx_enfrotP13gmx_enfrotgrpN3gmx8ArrayRefIKNS3_11BasicVectorIfEEEEPA3_Kfdbb:bb.a
  %i.bie = load i32, ptr %i.bid, align 4, !tbaa !60
  %i.bif = sext i32 %i.bie to i64
  %i.big = getelementptr inbounds [4 x i8], ptr %i.bfv, i64 %i.bif
  %i.bih = load float, ptr %i.big, align 4, !tbaa !61
  %i.bii = getelementptr inbounds nuw [12 x i8], ptr %i.bfz, i64 %indvars.iv.next.i104 ; 2 uses
  %i.bij = load <2 x float>, ptr %i.bhy, align 4, !tbaa !61
  %i.bik = load <2 x float>, ptr %i.c, align 8, !tbaa !61
  %i.bil = fsub <2 x float> %i.bij, %i.bik        ; 4 uses
  %foldExtExtBinop.1 = fmul <2 x float> %i.bil, %i.bil
  %i.bim = extractelement <2 x float> %foldExtExtBinop.1, i64 1
  %i.bin = extractelement <2 x float> %i.bil, i64 0 ; 2 uses
  %i.bio = call float @llvm.fmuladd.f32(float %i.bin, float %i.bin, float %i.bim)
  %i.bip = call noundef float @llvm.fmuladd.f32(float %i.bic, float %i.bic, float %i.bio)
  %sqrt.i.i103.1 = call noundef float @llvm.sqrt.f32(float %i.bip)
  %i.biq = fdiv float %i.bih, %sqrt.i.i103.1      ; 2 uses
  %i.bir = insertelement <2 x float> poison, float %i.biq, i64 0
  %i.bis = shufflevector <2 x float> %i.bir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bit = fmul <2 x float> %i.bil, %i.bis
  store <2 x float> %i.bit, ptr %i.bii, align 4, !tbaa !61
  %i.biu = fmul float %i.bic, %i.biq
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bii, i64 8
  store float %i.biu, ptr %i.biv, align 4, !tbaa !61
  %indvars.iv.next.i104.1 = add nuw nsw i64 %indvars.iv.i102, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i99.loopexit.unr-lcssa, label %bb.bj, !llvm.loop !571

_ZL14flex_fit_angleP13gmx_enfrotgrp.exit:         ; preds = %bb.bi, %._crit_edge.i99
  %.023.in.i = phi ptr [ %i.bgz, %._crit_edge.i99 ], [ %i.en, %bb.bi ]
  %.023.i = load ptr, ptr %.023.in.i, align 8, !tbaa !122
  %i.biw = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.bix = load ptr, ptr %i.biw, align 8, !tbaa !594
  %i.biy = load ptr, ptr %i.io, align 8, !tbaa !595
  %i.biz = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.bja = call fastcc noundef float @_ZL18opt_angle_analyticPA3_fS0_PfiPKfS3_S1_(ptr noundef %i.bix, ptr noundef %.023.i, ptr noundef %i.biy, i32 noundef %i.bfq, ptr noundef %i.biz, ptr noundef %i.c, ptr noundef %i.fa)
  %i.bjb = fneg float %i.bja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.bjc = getelementptr inbounds nuw i8, ptr %2, i64 224
  store float %i.bjb, ptr %i.bjc, align 8, !tbaa !81
  br label %bb.bk

bb.bk:                                            ; preds = %_ZL14flex_fit_angleP13gmx_enfrotgrp.exit, %bb.bh
  br i1 %7, label %bb.bl, label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  %i.bjd = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bje = load float, ptr %i.bjd, align 4, !tbaa !108
  %i.bjf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bjg = load ptr, ptr %i.bjf, align 8, !tbaa !26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bjh = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bji = load float, ptr %i.bjh, align 8, !tbaa !124
  %i.bjj = load ptr, ptr %2, align 8, !tbaa !77   ; 2 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 8
  %i.bjl = load i32, ptr %i.bjk, align 8, !tbaa !121
  %i.bjm = sitofp i32 %i.bjl to float
  %i.bjn = fmul float %i.bji, %i.bjm
  %i.bjo = load i32, ptr %i.fr, align 8, !tbaa !79 ; 2 uses
  %i.bjp = load i32, ptr %i.fz, align 4, !tbaa !78 ; 2 uses
  %.not97.i = icmp sgt i32 %i.bjo, %i.bjp
  br i1 %.not97.i, label %._crit_edge101.i, label %.lr.ph100.i

.lr.ph100.i:                                      ; preds = %bb.bl
  %i.bjq = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.bjr = load ptr, ptr %i.bjq, align 8, !tbaa !130
  %i.bjs = load ptr, ptr %i.hq, align 8, !tbaa !599
  %i.bjt = load ptr, ptr %i.gq, align 8, !tbaa !598
  %i.bju = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjj, i64 92
  %i.bjw = sext i32 %i.bjo to i64                 ; 2 uses
  %i.bjx = add i32 %i.bjp, 1
  br label %bb.bm

._crit_edge101.i:                                 ; preds = %._crit_edge.i109, %bb.bl
  %i.bjy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bjz = load i32, ptr %i.bjy, align 8, !tbaa !105
  %i.bka = fpext float %i.bje to double
  %i.bkb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bjg, ptr noundef nonnull @.str.151, double noundef %5, i32 noundef %i.bjz, double noundef %i.bka) #28 ; 0 uses
  %i.bkc = load i32, ptr %i.fr, align 8, !tbaa !79 ; 2 uses
  %i.bkd = load i32, ptr %i.fz, align 4, !tbaa !78 ; 2 uses
  %.not87105.i = icmp sgt i32 %i.bkc, %i.bkd
  br i1 %.not87105.i, label %_ZL22flex_fit_angle_perslabP13gmx_enfrotgrpdfP8_IO_FILE.exit, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %._crit_edge101.i
  %i.bke = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bki = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.bkj = insertelement <2 x ptr> poison, ptr %i.b, i64 0
  %i.bkk = insertelement <2 x ptr> %i.bkj, ptr %i.a, i64 1 ; 2 uses
  %i.bkl = getelementptr inbounds nuw i8, <2 x ptr> %i.bkk, i64 12
  %i.bkm = shufflevector <2 x ptr> %i.bkl, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bkn = shufflevector <2 x ptr> %i.bkk, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %bb.bo

bb.bm:                                            ; preds = %._crit_edge.i109, %.lr.ph100.i
  %indvars.iv115.i = phi i64 [ %i.bjw, %.lr.ph100.i ], [ %indvars.iv.next116.i, %._crit_edge.i109 ] ; 3 uses
  %i.bko = sub nsw i64 %indvars.iv115.i, %i.bjw   ; 3 uses
  %i.bkp = getelementptr inbounds [32 x i8], ptr %i.bjr, i64 %i.bko ; 4 uses
  %i.bkq = getelementptr inbounds [4 x i8], ptr %i.bjs, i64 %i.bko ; 3 uses
  %i.bkr = load i32, ptr %i.bkq, align 4, !tbaa !60
  %i.bks = getelementptr inbounds [4 x i8], ptr %i.bjt, i64 %i.bko ; 2 uses
  %i.bkt = load i32, ptr %i.bks, align 4, !tbaa !60
  %i.bku = add i32 %i.bkr, 1
  %i.bkv = sub i32 %i.bku, %i.bkt
  store i32 %i.bkv, ptr %i.bkp, align 8, !tbaa !612
  %i.bkw = load i32, ptr %i.bks, align 4, !tbaa !60 ; 2 uses
  %i.bkx = load i32, ptr %i.bkq, align 4, !tbaa !60
  %.not8894.i = icmp sgt i32 %i.bkw, %i.bkx
  br i1 %.not8894.i, label %._crit_edge.i109, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.bm
  %i.bky = load ptr, ptr %i.en, align 8, !tbaa !141
  %i.bkz = load ptr, ptr %i.bju, align 8, !tbaa !594
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkp, i64 8
  %i.blb = load ptr, ptr %i.bla, align 8, !tbaa !613
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bkp, i64 16
  %i.bld = load ptr, ptr %i.blc, align 8, !tbaa !614
  %i.ble = load ptr, ptr %i.io, align 8, !tbaa !595
  %i.blf = trunc nsw i64 %indvars.iv115.i to i32
  %i.blg = sitofp i32 %i.blf to float
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bkp, i64 24
  %i.bli = load ptr, ptr %i.blh, align 8, !tbaa !615
  %i.blj = sext i32 %i.bkw to i64
  br label %bb.bn

._crit_edge.i109:                                 ; preds = %bb.bn, %bb.bm
  %indvars.iv.next116.i = add nsw i64 %indvars.iv115.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next116.i to i32
  %exitcond.not.i110 = icmp eq i32 %i.bjx, %lftr.wideiv.i
  br i1 %exitcond.not.i110, label %._crit_edge101.i, label %bb.bm, !llvm.loop !572

bb.bn:                                            ; preds = %bb.bn, %.lr.ph.i106
  %indvars.iv110.i = phi i64 [ 0, %.lr.ph.i106 ], [ %indvars.iv.next111.i, %bb.bn ] ; 4 uses
  %indvars.iv.i107 = phi i64 [ %i.blj, %.lr.ph.i106 ], [ %indvars.iv.next.i108, %bb.bn ] ; 5 uses
  %i.blk = getelementptr inbounds [12 x i8], ptr %i.bky, i64 %indvars.iv.i107 ; 2 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blk, i64 8
  %i.blm = load float, ptr %i.bll, align 4, !tbaa !61 ; 2 uses
  %i.bln = getelementptr inbounds [12 x i8], ptr %i.bkz, i64 %indvars.iv.i107 ; 2 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bln, i64 8
  %i.blp = load float, ptr %i.blo, align 4, !tbaa !61
  %i.blq = getelementptr inbounds nuw [12 x i8], ptr %i.blb, i64 %indvars.iv110.i ; 2 uses
  %i.blr = load <2 x float>, ptr %i.blk, align 4, !tbaa !61 ; 3 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blq, i64 8
  %i.blt = getelementptr inbounds nuw [12 x i8], ptr %i.bld, i64 %indvars.iv110.i ; 2 uses
  %i.blu = load <2 x float>, ptr %i.bln, align 4, !tbaa !61
  store <2 x float> %i.blr, ptr %i.blq, align 4, !tbaa !61
  store float %i.blm, ptr %i.bls, align 4, !tbaa !61
  store <2 x float> %i.blu, ptr %i.blt, align 4, !tbaa !61
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blt, i64 8
  store float %i.blp, ptr %i.blv, align 4, !tbaa !61
  %i.blw = getelementptr inbounds [4 x i8], ptr %i.ble, i64 %indvars.iv.i107
  %i.blx = load float, ptr %i.blw, align 4, !tbaa !61
  %i.bly = fmul float %i.bjn, %i.blx
  %i.blz = load float, ptr %i.bjv, align 4, !tbaa !116 ; 2 uses
  %i.bma = fpext float %i.blz to double
  %i.bmb = fmul double %i.bma, f0x3FE6666666666666
  %i.bmc = fptrunc double %i.bmb to float
  %i.bmd = load float, ptr %i.fa, align 8, !tbaa !61
  %i.bme = load float, ptr %i.fc, align 4, !tbaa !61
  %i.bmf = extractelement <2 x float> %i.blr, i64 1
  %i.bmg = fmul float %i.bmf, %i.bme
  %i.bmh = extractelement <2 x float> %i.blr, i64 0
  %i.bmi = call float @llvm.fmuladd.f32(float %i.bmh, float %i.bmd, float %i.bmg)
  %i.bmj = load float, ptr %i.fg, align 8, !tbaa !61
  %i.bmk = call noundef float @llvm.fmuladd.f32(float %i.blm, float %i.bmj, float %i.bmi)
  %i.bml = fneg float %i.blz
  %i.bmm = call noundef float @llvm.fmuladd.f32(float %i.bml, float %i.blg, float %i.bmk)
  %i.bmn = fdiv float %i.bmm, %i.bmc              ; 2 uses
  %i.bmo = fmul float %i.bmn, %i.bmn
  %i.bmp = fpext float %i.bmo to double
  %i.bmq = fmul double %i.bmp, -5.000000e-01
  %i.bmr = call double @exp(double noundef %i.bmq) #28
  %i.bms = fmul double %i.bmr, f0x3FE23CC3C0000000
  %i.bmt = fptrunc double %i.bms to float
  %i.bmu = fmul float %i.bly, %i.bmt
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %i.bli, i64 %indvars.iv110.i
  store float %i.bmu, ptr %i.bmv, align 4, !tbaa !61
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1
  %indvars.iv.next.i108 = add nsw i64 %indvars.iv.i107, 1
  %i.bmw = load i32, ptr %i.bkq, align 4, !tbaa !60
  %i.bmx = sext i32 %i.bmw to i64
  %.not88.not.i = icmp slt i64 %indvars.iv.i107, %i.bmx
  br i1 %.not88.not.i, label %bb.bn, label %._crit_edge.i109, !llvm.loop !573

bb.bo:                                            ; preds = %bb.br, %.lr.ph108.i
  %i.bmy = phi i32 [ %i.bkd, %.lr.ph108.i ], [ %i.bqy, %bb.br ]
  %.082106.i = phi i32 [ %i.bkc, %.lr.ph108.i ], [ %i.bqz, %bb.br ] ; 4 uses
  %i.bmz = load i32, ptr %i.fr, align 8, !tbaa !79
  %i.bna = sub nsw i32 %.082106.i, %i.bmz
  %i.bnb = load ptr, ptr %i.bke, align 8, !tbaa !130
  %i.bnc = sext i32 %i.bna to i64
  %i.bnd = getelementptr inbounds [32 x i8], ptr %i.bnb, i64 %i.bnc ; 7 uses
  %i.bne = load i32, ptr %i.bnd, align 8, !tbaa !612 ; 2 uses
  %i.bnf = icmp sgt i32 %i.bne, 3
  br i1 %i.bnf, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnd, i64 16 ; 3 uses
  %i.bnh = load ptr, ptr %i.bng, align 8, !tbaa !614
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnd, i64 24 ; 3 uses
  %i.bnj = load ptr, ptr %i.bni, align 8, !tbaa !615
  call void @_Z10get_centerPA3_KfPfiS2_(ptr noundef %i.bnh, ptr noundef %i.bnj, i32 noundef %i.bne, ptr noundef nonnull %i.b)
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnd, i64 8 ; 4 uses
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !613
  %i.bnm = load ptr, ptr %i.bni, align 8, !tbaa !615
  %i.bnn = load i32, ptr %i.bnd, align 8, !tbaa !612
  call void @_Z10get_centerPA3_KfPfiS2_(ptr noundef %i.bnl, ptr noundef %i.bnm, i32 noundef %i.bnn, ptr noundef nonnull %i.a)
  %i.bno = load ptr, ptr %2, align 8, !tbaa !77
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bno, i64 80
  %i.bnq = load i32, ptr %i.bnp, align 8, !tbaa !86
  %i.bnr = icmp eq i32 %i.bnq, 1
  %.pre.i111 = load i32, ptr %i.bnd, align 8, !tbaa !612 ; 4 uses
  br i1 %i.bnr, label %.preheader.i112, label %bb.bq

.preheader.i112:                                  ; preds = %bb.bp
  %i.bns = icmp sgt i32 %.pre.i111, 0
  br i1 %i.bns, label %.lr.ph103.i, label %._crit_edge104.i

.lr.ph103.i:                                      ; preds = %.preheader.i112
  %13 = load ptr, ptr %i.bnk, align 8, !tbaa !613 ; 4 uses
  %14 = load ptr, ptr %i.bng, align 8, !tbaa !614 ; 4 uses
  %wide.trip.count.i113 = zext nneg i32 %.pre.i111 to i64 ; 4 uses
  %min.iters.check211 = icmp ult i32 %.pre.i111, 8
  br i1 %min.iters.check211, label %scalar.ph210.preheader, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph103.i
  %15 = load <2 x ptr>, ptr %i.bnk, align 8, !tbaa !122
  %i.bnt = mul nuw nsw i64 %wide.trip.count.i113, 12 ; 2 uses
  %scevgep187 = getelementptr i8, ptr %14, i64 %i.bnt ; 2 uses
  %scevgep188 = getelementptr i8, ptr %13, i64 %i.bnt ; 2 uses
  %bound0191 = icmp ult ptr %14, %scevgep188
  %bound1192 = icmp ult ptr %13, %scevgep187
  %found.conflict193 = and i1 %bound0191, %bound1192
  %16 = shufflevector <2 x ptr> %15, <2 x ptr> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.bnu = icmp ult <4 x ptr> %16, %i.bkm
  %i.bnv = insertelement <4 x ptr> poison, ptr %scevgep187, i64 0
  %i.bnw = insertelement <4 x ptr> %i.bnv, ptr %scevgep188, i64 1
  %i.bnx = shufflevector <4 x ptr> %i.bnw, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bny = icmp ult <4 x ptr> %i.bkn, %i.bnx
  %i.bnz = and <4 x i1> %i.bnu, %i.bny
  %i.boa = bitcast <4 x i1> %i.bnz to i4
  %i.bob = icmp ne i4 %i.boa, 0
  %op.rdx = or i1 %i.bob, %found.conflict193
  br i1 %op.rdx, label %scalar.ph210.preheader, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck186
  %n.vec213 = and i64 %wide.trip.count.i113, 2147483640 ; 3 uses
  %i.boc = load float, ptr %i.b, align 8, !tbaa !61, !alias.scope !616
  %broadcast.splatinsert220 = insertelement <8 x float> poison, float %i.boc, i64 0
  %i.bod = load float, ptr %i.bkf, align 4, !tbaa !61, !alias.scope !616
  %broadcast.splatinsert222 = insertelement <8 x float> poison, float %i.bod, i64 0
  %i.boe = load float, ptr %i.bkg, align 8, !tbaa !61, !alias.scope !616
  %broadcast.splatinsert224 = insertelement <8 x float> poison, float %i.boe, i64 0
  %i.bof = load float, ptr %i.a, align 8, !tbaa !61, !alias.scope !617
  %broadcast.splatinsert230 = insertelement <8 x float> poison, float %i.bof, i64 0
  %broadcast.splat231 = shufflevector <8 x float> %broadcast.splatinsert230, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bog = load float, ptr %i.bkh, align 4, !tbaa !61, !alias.scope !617
  %broadcast.splatinsert232 = insertelement <8 x float> poison, float %i.bog, i64 0
  %broadcast.splat233 = shufflevector <8 x float> %broadcast.splatinsert232, <8 x float> poison, <8 x i32> zeroinitializer
  %i.boh = load float, ptr %i.bki, align 8, !tbaa !61, !alias.scope !617
  %broadcast.splatinsert234 = insertelement <8 x float> poison, float %i.boh, i64 0
  %broadcast.splat235 = shufflevector <8 x float> %broadcast.splatinsert234, <8 x float> poison, <8 x i32> zeroinitializer
  %i.boi = shufflevector <8 x float> %broadcast.splatinsert220, <8 x float> %broadcast.splatinsert222, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.boj = shufflevector <8 x float> %broadcast.splatinsert224, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next242, %vector.body214 ] ; 3 uses
  %i.bok = getelementptr inbounds nuw [12 x i8], ptr %14, i64 %index215 ; 3 uses
  %wide.vec216 = load <24 x float>, ptr %i.bok, align 4, !tbaa !61, !alias.scope !618, !noalias !619 ; 2 uses
  %i.bol = shufflevector <24 x float> %wide.vec216, <24 x float> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.bom = fsub <16 x float> %i.bol, %i.boi
  %i.bon = shufflevector <24 x float> %wide.vec216, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.boo = fsub <16 x float> %i.bon, %i.boj
  %interleaved.vec = shufflevector <16 x float> %i.bom, <16 x float> %i.boo, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.bok, align 4, !tbaa !61, !alias.scope !618, !noalias !619
  %i.bop = getelementptr inbounds nuw [12 x i8], ptr %13, i64 %index215 ; 3 uses
  %wide.vec226 = load <24 x float>, ptr %i.bop, align 4, !tbaa !61, !alias.scope !620, !noalias !621 ; 3 uses
  %strided.vec227 = shufflevector <24 x float> %wide.vec226, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec228 = shufflevector <24 x float> %wide.vec226, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec229 = shufflevector <24 x float> %wide.vec226, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.boq = fsub <8 x float> %strided.vec227, %broadcast.splat231 ; 4 uses
  %i.bor = fsub <8 x float> %strided.vec228, %broadcast.splat233 ; 4 uses
  %i.bos = fsub <8 x float> %strided.vec229, %broadcast.splat235 ; 4 uses
  %i.bot = shufflevector <8 x float> %i.boq, <8 x float> %i.bor, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bou = shufflevector <8 x float> %i.bos, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec236 = shufflevector <16 x float> %i.bot, <16 x float> %i.bou, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec236, ptr %i.bop, align 4, !tbaa !61, !alias.scope !620, !noalias !621
  %wide.vec237 = load <24 x float>, ptr %i.bok, align 4, !tbaa !61, !alias.scope !618, !noalias !619 ; 3 uses
  %strided.vec238 = shufflevector <24 x float> %wide.vec237, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec239 = shufflevector <24 x float> %wide.vec237, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec240 = shufflevector <24 x float> %wide.vec237, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %i.bov = fmul <8 x float> %strided.vec239, %strided.vec239
  %i.bow = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec238, <8 x float> %strided.vec238, <8 x float> %i.bov)
  %i.box = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec240, <8 x float> %strided.vec240, <8 x float> %i.bow)
  %i.boy = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.box)
  %i.boz = fmul <8 x float> %i.bor, %i.bor
  %i.bpa = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.boq, <8 x float> %i.boq, <8 x float> %i.boz)
  %i.bpb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bos, <8 x float> %i.bos, <8 x float> %i.bpa)
  %i.bpc = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bpb)
  %i.bpd = fdiv <8 x float> %i.boy, %i.bpc        ; 2 uses
  %i.bpe = fmul <8 x float> %i.bos, %i.bpd
  %i.bpf = shufflevector <8 x float> %i.boq, <8 x float> %i.bor, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpg = shufflevector <8 x float> %i.bpd, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bph = fmul <16 x float> %i.bpf, %i.bpg
  %i.bpi = shufflevector <8 x float> %i.bpe, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec241 = shufflevector <16 x float> %i.bph, <16 x float> %i.bpi, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec241, ptr %i.bop, align 4, !tbaa !61, !alias.scope !620, !noalias !621
  %index.next242 = add nuw i64 %index215, 8       ; 2 uses
  %i.bpj = icmp eq i64 %index.next242, %n.vec213
  br i1 %i.bpj, label %middle.block243, label %vector.body214, !llvm.loop !579

middle.block243:                                  ; preds = %vector.body214
  %cmp.n244 = icmp eq i64 %n.vec213, %wide.trip.count.i113
  br i1 %cmp.n244, label %._crit_edge104.i, label %scalar.ph210.preheader

scalar.ph210.preheader:                           ; preds = %vector.memcheck186, %.lr.ph103.i, %middle.block243
  %indvars.iv118.i.ph = phi i64 [ 0, %vector.memcheck186 ], [ 0, %.lr.ph103.i ], [ %n.vec213, %middle.block243 ]
  br label %scalar.ph210

._crit_edge104.i:                                 ; preds = %scalar.ph210, %middle.block243, %.preheader.i112
  store <2 x float> zeroinitializer, ptr %i.b, align 8, !tbaa !61
  store float 0.000000e+00, ptr %i.bkg, align 8, !tbaa !61
  store <2 x float> zeroinitializer, ptr %i.a, align 8, !tbaa !61
  store float 0.000000e+00, ptr %i.bki, align 8, !tbaa !61
  br label %bb.bq

scalar.ph210:                                     ; preds = %scalar.ph210.preheader, %scalar.ph210
  %indvars.iv118.i = phi i64 [ %indvars.iv.next119.i, %scalar.ph210 ], [ %indvars.iv118.i.ph, %scalar.ph210.preheader ] ; 3 uses
  %i.bpk = getelementptr inbounds nuw [12 x i8], ptr %14, i64 %indvars.iv118.i ; 5 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpk, i64 4
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpk, i64 8 ; 3 uses
  %i.bpn = load float, ptr %i.bpm, align 4, !tbaa !61
  %i.bpo = load float, ptr %i.bkg, align 8, !tbaa !61
  %i.bpp = fsub float %i.bpn, %i.bpo
  %i.bpq = load <2 x float>, ptr %i.bpk, align 4, !tbaa !61
  %i.bpr = load <2 x float>, ptr %i.b, align 8, !tbaa !61
  %i.bps = fsub <2 x float> %i.bpq, %i.bpr
  store <2 x float> %i.bps, ptr %i.bpk, align 4, !tbaa !61
  store float %i.bpp, ptr %i.bpm, align 4, !tbaa !61
  %i.bpt = getelementptr inbounds nuw [12 x i8], ptr %13, i64 %indvars.iv118.i ; 4 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 8 ; 3 uses
  %i.bpv = load float, ptr %i.bpu, align 4, !tbaa !61
  %i.bpw = load float, ptr %i.bki, align 8, !tbaa !61
  %i.bpx = fsub float %i.bpv, %i.bpw              ; 4 uses
  %i.bpy = load <2 x float>, ptr %i.bpt, align 4, !tbaa !61
  %i.bpz = load <2 x float>, ptr %i.a, align 8, !tbaa !61
  %i.bqa = fsub <2 x float> %i.bpy, %i.bpz        ; 5 uses
  store <2 x float> %i.bqa, ptr %i.bpt, align 4, !tbaa !61
  store float %i.bpx, ptr %i.bpu, align 4, !tbaa !61
  %i.bqb = load float, ptr %i.bpk, align 4, !tbaa !61 ; 2 uses
  %i.bqc = load float, ptr %i.bpl, align 4, !tbaa !61 ; 2 uses
  %i.bqd = fmul float %i.bqc, %i.bqc
  %i.bqe = call float @llvm.fmuladd.f32(float %i.bqb, float %i.bqb, float %i.bqd)
  %i.bqf = load float, ptr %i.bpm, align 4, !tbaa !61 ; 2 uses
  %i.bqg = call noundef float @llvm.fmuladd.f32(float %i.bqf, float %i.bqf, float %i.bqe)
  %sqrt.i.i114 = call noundef float @llvm.sqrt.f32(float %i.bqg)
  %foldExtExtBinop247 = fmul <2 x float> %i.bqa, %i.bqa
  %i.bqh = extractelement <2 x float> %foldExtExtBinop247, i64 1
  %i.bqi = extractelement <2 x float> %i.bqa, i64 0 ; 2 uses
  %i.bqj = call float @llvm.fmuladd.f32(float %i.bqi, float %i.bqi, float %i.bqh)
  %i.bqk = call noundef float @llvm.fmuladd.f32(float %i.bpx, float %i.bpx, float %i.bqj)
  %sqrt.i89.i = call noundef float @llvm.sqrt.f32(float %i.bqk)
  %i.bql = fdiv float %sqrt.i.i114, %sqrt.i89.i   ; 2 uses
  %i.bqm = insertelement <2 x float> poison, float %i.bql, i64 0
  %i.bqn = shufflevector <2 x float> %i.bqm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bqo = fmul <2 x float> %i.bqa, %i.bqn
  store <2 x float> %i.bqo, ptr %i.bpt, align 4, !tbaa !61
  %i.bqp = fmul float %i.bpx, %i.bql
  store float %i.bqp, ptr %i.bpu, align 4, !tbaa !61
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 2 uses
  %exitcond121.not.i = icmp eq i64 %indvars.iv.next119.i, %wide.trip.count.i113
  br i1 %exitcond121.not.i, label %._crit_edge104.i, label %scalar.ph210, !llvm.loop !580

bb.bq:                                            ; preds = %._crit_edge104.i, %bb.bp
  %i.bqq = load ptr, ptr %i.bng, align 8, !tbaa !614
  %i.bqr = load ptr, ptr %i.bnk, align 8, !tbaa !613
  %i.bqs = load ptr, ptr %i.bni, align 8, !tbaa !615
  %i.bqt = call fastcc noundef float @_ZL18opt_angle_analyticPA3_fS0_PfiPKfS3_S1_(ptr noundef %i.bqq, ptr noundef %i.bqr, ptr noundef %i.bqs, i32 noundef %.pre.i111, ptr noundef %i.b, ptr noundef %i.a, ptr noundef %i.fa)
  %i.bqu = fneg float %i.bqt
  %i.bqv = load i32, ptr %i.bnd, align 8, !tbaa !612
  %i.bqw = fpext float %i.bqu to double
  %i.bqx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bjg, ptr noundef nonnull @.str.152, i32 noundef %.082106.i, i32 noundef %i.bqv, double noundef %i.bqw) #28 ; 0 uses
  %.pre122.i = load i32, ptr %i.fz, align 4, !tbaa !78
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %i.bqy = phi i32 [ %.pre122.i, %bb.bq ], [ %i.bmy, %bb.bo ] ; 2 uses
  %i.bqz = add nsw i32 %.082106.i, 1
  %.not87.not.i = icmp slt i32 %.082106.i, %i.bqy
  br i1 %.not87.not.i, label %bb.bo, label %_ZL22flex_fit_angle_perslabP13gmx_enfrotgrpdfP8_IO_FILE.exit, !llvm.loop !581

_ZL22flex_fit_angle_perslabP13gmx_enfrotgrpdfP8_IO_FILE.exit: ; preds = %bb.br, %._crit_edge101.i
  %fputc.i = call i32 @fputc(i32 10, ptr %i.bjg)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bk, %_ZL22flex_fit_angle_perslabP13gmx_enfrotgrpdfP8_IO_FILE.exit, %bb.bg, %bb.bf
  %i.bra = getelementptr inbounds nuw i8, ptr %2, i64 220 ; 10 uses
  store float 0.000000e+00, ptr %i.bra, align 4, !tbaa !80
  br i1 %.not131, label %._crit_edge137, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.bs
  %i.brb = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.brc = load ptr, ptr %i.brb, align 8, !tbaa !96 ; 9 uses
  %i.brd = add i32 %i.it, 1
  %i.bre = sub i32 %i.brd, %i.iu                  ; 2 uses
  %wide.trip.count = zext i32 %i.bre to i64       ; 2 uses
  %xtraiter256 = and i64 %wide.trip.count, 7      ; 3 uses
  %i.brf = add i32 %i.bre, -1
  %i.brg = icmp ult i32 %i.brf, 7
  br i1 %i.brg, label %.epil.preheader255, label %.lr.ph136.new

.lr.ph136.new:                                    ; preds = %.lr.ph136
  %unroll_iter259 = and i64 %wide.trip.count, 4294967288
  br label %bb.bu

._crit_edge137.loopexit.unr-lcssa:                ; preds = %bb.bu
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %._crit_edge137, label %.epil.preheader255

.epil.preheader255:                               ; preds = %._crit_edge137.loopexit.unr-lcssa, %.lr.ph136
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next.7, %._crit_edge137.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph136 ], [ %i.bsq, %._crit_edge137.loopexit.unr-lcssa ]
  %lcmp.mod258 = icmp ne i64 %xtraiter256, 0
  call void @llvm.assume(i1 %lcmp.mod258)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.epil.preheader255
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader255 ], [ %indvars.iv.next.epil, %bb.bt ] ; 2 uses
  %i.brh = phi float [ %.epil.init, %.epil.preheader255 ], [ %i.brk, %bb.bt ]
  %epil.iter = phi i64 [ 0, %.epil.preheader255 ], [ %epil.iter.next, %bb.bt ]
  %i.bri = getelementptr inbounds nuw [4 x i8], ptr %i.brc, i64 %indvars.iv.epil
  %i.brj = load float, ptr %i.bri, align 4, !tbaa !61
  %i.brk = fadd float %i.brj, %i.brh              ; 2 uses
  store float %i.brk, ptr %i.bra, align 4, !tbaa !80
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter256
  br i1 %epil.iter.cmp.not, label %._crit_edge137, label %bb.bt, !llvm.loop !582

._crit_edge137:                                   ; preds = %._crit_edge137.loopexit.unr-lcssa, %bb.bt, %bb.bs
  ret void

bb.bu:                                            ; preds = %bb.bu, %.lr.ph136.new
  %indvars.iv = phi i64 [ 0, %.lr.ph136.new ], [ %indvars.iv.next.7, %bb.bu ] ; 9 uses
  %i.brl = phi float [ 0.000000e+00, %.lr.ph136.new ], [ %i.bsq, %bb.bu ]
  %niter260 = phi i64 [ 0, %.lr.ph136.new ], [ %niter260.next.7, %bb.bu ]
  %i.brm = getelementptr inbounds nuw [4 x i8], ptr %i.brc, i64 %indvars.iv
  %i.brn = load float, ptr %i.brm, align 4, !tbaa !61
  %i.bro = fadd float %i.brn, %i.brl              ; 2 uses
  store float %i.bro, ptr %i.bra, align 4, !tbaa !80
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr %i.brc, i64 %indvars.iv
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brp, i64 4
  %i.brr = load float, ptr %i.brq, align 4, !tbaa !61
  %i.brs = fadd float %i.brr, %i.bro              ; 2 uses
  store float %i.brs, ptr %i.bra, align 4, !tbaa !80
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr %i.brc, i64 %indvars.iv
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brt, i64 8
  %i.brv = load float, ptr %i.bru, align 4, !tbaa !61
  %i.brw = fadd float %i.brv, %i.brs              ; 2 uses
  store float %i.brw, ptr %i.bra, align 4, !tbaa !80
  %i.brx = getelementptr inbounds nuw [4 x i8], ptr %i.brc, i64 %indvars.iv
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brx, i64 12
  %i.brz = load float, ptr %i.bry, align 4, !tbaa !61
  %i.bsa = fadd float %i.brz, %i.brw              ; 2 uses
  store float %i.bsa, ptr %i.bra, align 4, !tbaa !80
  %i.bsb = getelementptr inbounds nuw [4 x i8], ptr %i.brc, i64 %indvars.iv
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bsb, i64 16
  %i.bsd = load float, ptr %i.bsc, align 4, !tbaa !61
  %i.bse = fadd float %i.bsd, %i.bsa              ; 2 uses
  store float %i.bse, ptr %i.bra, align 4, !tbaa !80
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %i.brc, i64 %indvars.iv
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 20
  %i.bsh = load float, ptr %i.bsg, align 4, !tbaa !61
  %i.bsi = fadd float %i.bsh, %i.bse              ; 2 uses
  store float %i.bsi, ptr %i.bra, align 4, !tbaa !80
  %i.bsj = getelementptr inbounds nuw [4 x i8], ptr %i.brc, i64 %indvars.iv
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 24
  %i.bsl = load float, ptr %i.bsk, align 4, !tbaa !61
  %i.bsm = fadd float %i.bsl, %i.bsi              ; 2 uses
  store float %i.bsm, ptr %i.bra, align 4, !tbaa !80
  %i.bsn = getelementptr inbounds nuw [4 x i8], ptr %i.brc, i64 %indvars.iv
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsn, i64 28
  %i.bsp = load float, ptr %i.bso, align 4, !tbaa !61
  %i.bsq = fadd float %i.bsp, %i.bsm              ; 3 uses
  store float %i.bsq, ptr %i.bra, align 4, !tbaa !80
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter260.next.7 = add i64 %niter260, 8         ; 2 uses
  %niter260.ncmp.7 = icmp eq i64 %niter260.next.7, %unroll_iter259
  br i1 %niter260.ncmp.7, label %._crit_edge137.loopexit.unr-lcssa, label %bb.bu, !llvm.loop !583
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIP16sort_along_vec_tlN9__gnu_cxx5__ops15_Iter_comp_iterIZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EEEvT_S9_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.sort_along_vec_t, align 4   ; 4 uses
  %4 = alloca %struct.sort_along_vec_t, align 4   ; 4 uses
  %5 = alloca %struct.sort_along_vec_t, align 4   ; 4 uses
  %6 = alloca %struct.sort_along_vec_t, align 4   ; 4 uses
  %7 = alloca %struct.sort_along_vec_t, align 4   ; 4 uses
  %8 = alloca %struct.sort_along_vec_t, align 4   ; 4 uses
  %9 = alloca %struct.sort_along_vec_t, align 4   ; 4 uses
  %.sroa.4.i.i5.i = alloca { i32, float, [3 x float], [3 x float] }, align 8 ; 4 uses
  %.sroa.4.i.i.i = alloca { i32, float, [3 x float], [3 x float] }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 576
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIP16sort_along_vec_tN9__gnu_cxx5__ops15_Iter_comp_iterIZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EEEvT_S9_S9_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIP16sort_along_vec_tN9__gnu_cxx5__ops15_Iter_comp_iterIZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EEET_S9_S9_T0_.exit"
  %i.g = icmp eq i64 %i.br, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph42, !llvm.loop !622

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa38 = phi i64 [ %i.c, %.lr.ph ], [ %i.cf, %bb.b ]
  %.025.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa38, 36             ; 3 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [36 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [36 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIP16sort_along_vec_tlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EEEvT_T0_SA_T1_T2_.exit.i.i.i", %._crit_edge
  %.013.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.ak, %"_ZSt13__adjust_heapIP16sort_along_vec_tlS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EEEvT_T0_SA_T1_T2_.exit.i.i.i" ] ; 8 uses
end_hunk_0
