Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/destructors?download=true
begin_hunk_0_@__local_laplacian:entry
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
end_hunk_0
begin_hunk_1_@par_for___local_laplacian_f2.s0.v4.v4:entry
  %i.uv = fmul nnan <8 x float> %i.uu, splat (float f0x36991720)
  %i.uw = fadd <8 x float> %i.te, %i.uv
  %i.ux = fadd <8 x float> %i.rn, %i.uw
  %i.uy = sext i32 %f2.s0.v3.v283.base15 to i64
  %i.uz = sub nsw i64 %i.uy, %i.i
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.uz
  store <8 x float> %i.ux, ptr %gep, align 4, !tbaa !24
  %lsr.iv.next56 = add nsw i32 %lsr.iv55, -1      ; 2 uses
  %lsr.iv.next58 = add i32 %lsr.iv57, 8
  %.not = icmp eq i32 %lsr.iv.next56, 0
  br i1 %.not, label %"end for f2.s0.v3.v313.loopexit", label %"for f2.s0.v3.v312"

"end for f2.s0.v3.v313.loopexit":                 ; preds = %"for f2.s0.v3.v312"
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not7 = icmp eq i64 %indvars.iv.next, 32
  br i1 %.not7, label %destructor_block, label %"for f2.s0.v4.v2809"

destructor_block:                                 ; preds = %"end for f2.s0.v3.v313.loopexit", %"end for f2.s0.v3.v35", %"for f2.s0.v4.v2809.preheader"
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @par_for___local_laplacian_f4.s0.v4.v4(ptr nofree readnone captures(none) %__user_context, i32 %f4.s0.v4.v4, ptr noalias nofree readonly captures(none) %closure) #2 {
"for f4.s0.v4.v296.preheader":
  %beta = load float, ptr %closure, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %closure, i64 4
  %f0.v3.min_realized.s = load i32, ptr %i.a, align 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %closure, i64 8
  %a304 = load i32, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %closure, i64 12
  %f2.v3.extent_realized.s = load i32, ptr %i.c, align 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %closure, i64 24
  %f4.s0.v3.max = load i32, ptr %i.d, align 4     ; 3 uses
  %i.e = sext i32 %f4.s0.v3.max to i64
  %i.f = getelementptr inbounds nuw i8, ptr %closure, i64 28
  %f4.s0.v3.min.s = load i32, ptr %i.f, align 4   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %closure, i64 32
  %f4.s0.v4.max = load i32, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %closure, i64 36
  %f4.s0.v4.min.s = load i32, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %closure, i64 40
  %f4.s0.v6.loop_extent.s = load i32, ptr %i.i, align 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %closure, i64 44
  %f4.stride.1 = load i32, ptr %i.j, align 4
  %i.k = sext i32 %f4.stride.1 to i64             ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %closure, i64 48
  %f4.v3.extent_realized.s = load i32, ptr %i.l, align 4
  %i.m = sext i32 %f4.v3.extent_realized.s to i64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %closure, i64 52
  %f4.v3.min_realized = load i32, ptr %i.n, align 4
  %i.o = sext i32 %f4.v3.min_realized to i64      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %closure, i64 56
  %f4.v4.min_realized = load i32, ptr %i.p, align 4
  %i.q = sext i32 %f4.v4.min_realized to i64
  %i.r = getelementptr inbounds nuw i8, ptr %closure, i64 60
  %levels = load i32, ptr %i.r, align 4           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %closure, i64 64
  %f0.host = load ptr, ptr %i.s, align 8          ; 256 uses
  %i.t = getelementptr inbounds nuw i8, ptr %closure, i64 80
  %f2.host = load ptr, ptr %i.t, align 8          ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %closure, i64 96
  %f4.host = load ptr, ptr %i.u, align 8          ; 2 uses
  %i.v = shl nsw i32 %f4.s0.v4.v4, 3
  %i.w = add i32 %i.v, -1
  %a303 = add i32 %i.w, %f4.s0.v4.min.s
  %b305 = add nsw i32 %f4.s0.v4.max, -7
  %f4.s0.v4.v296.base = tail call i32 @llvm.smin.i32(i32 %b305, i32 %a303) ; 2 uses
  %i.x = sext i32 %f4.s0.v4.v296.base to i64      ; 2 uses
  %i.y = sub nsw i64 %i.x, %i.q                   ; 2 uses
  %i.z = shl nsw i64 %i.k, 2
  %i.aa = add nsw i64 %i.m, 1
  %i.ab = tail call i32 @llvm.smax.i32(i32 %a304, i32 0) ; 2 uses
  %smax = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ac = shl nsw i64 %i.m, 2
  %i.ad = shl i32 %f4.s0.v3.min.s, 1              ; 4 uses
  %i.ae = shl i32 %f2.v3.extent_realized.s, 1
  %i.af = add i32 %i.ae, 2                        ; 4 uses
  %i.ag = icmp sgt i32 %f4.s0.v6.loop_extent.s, -2
  %i.ah = sub nsw i32 %f4.s0.v3.max, %f4.s0.v3.min.s ; 2 uses
  %i.ai = add nsw i32 %i.ah, 2
  %a305 = ashr i32 %i.ai, 3                       ; 2 uses
  %i.aj = tail call i32 @llvm.smax.i32(i32 %a305, i32 0) ; 2 uses
  %.not = icmp slt i32 %a305, 1
  %i.ak = add nsw i32 %i.ah, 9
  %i.al = ashr i32 %i.ak, 3
  %i.am = icmp slt i32 %i.aj, %i.al
  %i.an = add nsw i32 %levels, -1
  %i.ao = sitofp i32 %i.an to float               ; 2 uses
  %i.ap = fdiv nnan float 1.000000e+00, %i.ao     ; 2 uses
  %i.aq = insertelement <8 x float> poison, float %i.ao, i64 0
  %i.ar = shufflevector <8 x float> %i.aq, <8 x float> poison, <8 x i32> zeroinitializer ; 32 uses
  %i.as = shl nsw i32 %levels, 8
  %i.at = add nsw i32 %i.as, -256
  %i.au = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %b309 = shufflevector <8 x i32> %i.au, <8 x i32> poison, <8 x i32> zeroinitializer ; 32 uses
  %i.av = insertelement <8 x float> poison, float %beta, i64 0
  %i.aw = shufflevector <8 x float> %i.av, <8 x float> poison, <8 x i32> zeroinitializer ; 32 uses
  %i.ax = sub nsw i64 %i.e, %i.o
  %i.ay = getelementptr [4 x i8], ptr %f4.host, i64 %i.ax
  br i1 %i.ag, label %"for f4.s0.v4.v296.preheader152", label %destructor_block.split, !prof !5

"for f4.s0.v4.v296.preheader152":                 ; preds = %"for f4.s0.v4.v296.preheader"
  %i.az = shl nsw i32 %f4.s0.v3.max, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %closure, i64 16
  %f2.v3.min_realized = load i32, ptr %i.ba, align 8 ; 5 uses
  %i.bb = sub nsw i32 %i.az, %f2.v3.min_realized
  %i.bc = add nuw i32 %i.ab, 2
  %i.bd = add i32 %i.bc, %f4.s0.v6.loop_extent.s
  %i.be = shl i32 %f4.s0.v4.v296.base, 1          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %closure, i64 20
  %f2.v4.min_realized = load i32, ptr %i.bf, align 4 ; 3 uses
  %i.bg = xor i32 %f2.v4.min_realized, -1
  %i.bh = add i32 %i.be, %i.bg
  %i.bi = add i32 %f2.v3.extent_realized.s, 1     ; 5 uses
  %i.bj = mul i32 %i.bh, %i.bi
  %i.bk = sub i32 %i.bj, %f2.v3.min_realized
  %reass.sub = sub i32 %i.be, %f2.v4.min_realized ; 3 uses
  %i.bl = mul i32 %reass.sub, %i.bi
  %i.bm = sub i32 %i.bl, %f2.v3.min_realized
  %i.bn = add i32 %reass.sub, 1
  %i.bo = mul i32 %i.bn, %i.bi
  %i.bp = sub i32 %i.bo, %f2.v3.min_realized
  %i.bq = add i32 %reass.sub, 2
  %i.br = mul i32 %i.bq, %i.bi
  %i.bs = sub i32 %i.br, %f2.v3.min_realized
  %i.bt = mul nsw i64 %i.y, %i.k
  %i.bu = getelementptr [4 x i8], ptr %f4.host, i64 %i.bt
  %i.bv = sext i32 %f4.s0.v3.min.s to i64
  %i.bw = getelementptr [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = xor i64 %i.o, -1
  %scevgep = getelementptr [4 x i8], ptr %i.bw, i64 %i.bx
  %i.by = zext i32 %i.bd to i64
  %i.bz = sext i32 %f2.v4.min_realized to i64
  %i.ca = sext i32 %i.bi to i64                   ; 4 uses
  %i.cb = sext i32 %i.bb to i64                   ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %f2.host, i64 %i.cb
  %invariant.gep182 = getelementptr [4 x i8], ptr %f2.host, i64 %i.cb
  %invariant.gep184 = getelementptr [4 x i8], ptr %f2.host, i64 %i.cb
  %invariant.gep186 = getelementptr [4 x i8], ptr %f2.host, i64 %i.cb
  br label %"for f4.s0.v4.v296"

"for f4.s0.v4.v296":                              ; preds = %"for f4.s0.v4.v296.preheader152", %"end for f4.s0.v6.loopexit"
  %indvars.iv154 = phi i64 [ 0, %"for f4.s0.v4.v296.preheader152" ], [ %indvars.iv.next155, %"end for f4.s0.v6.loopexit" ] ; 3 uses
  %lsr.iv26 = phi i32 [ %i.bk, %"for f4.s0.v4.v296.preheader152" ], [ %lsr.iv.next27, %"end for f4.s0.v6.loopexit" ] ; 2 uses
  %lsr.iv22 = phi i32 [ %i.bm, %"for f4.s0.v4.v296.preheader152" ], [ %lsr.iv.next23, %"end for f4.s0.v6.loopexit" ] ; 2 uses
  %lsr.iv18 = phi i32 [ %i.bp, %"for f4.s0.v4.v296.preheader152" ], [ %lsr.iv.next19, %"end for f4.s0.v6.loopexit" ] ; 2 uses
  %lsr.iv14 = phi i32 [ %i.bs, %"for f4.s0.v4.v296.preheader152" ], [ %lsr.iv.next15, %"end for f4.s0.v6.loopexit" ] ; 2 uses
  %lsr.iv4 = phi ptr [ %scevgep, %"for f4.s0.v4.v296.preheader152" ], [ %scevgep6, %"end for f4.s0.v6.loopexit" ] ; 2 uses
  %i.cc = add nsw i64 %indvars.iv154, %i.x
  %i.cd = shl nsw i64 %i.cc, 1
  %i.ce = sub nsw i64 %i.cd, %i.bz                ; 4 uses
  %i.cf = add nsw i64 %i.ce, -1
  %i.cg = mul nsw i64 %i.cf, %i.ca
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cg ; 6 uses
  %i.ch = getelementptr i8, ptr %gep, i64 -64
  %i.ci = getelementptr i8, ptr %gep, i64 -32
  %i.cj = getelementptr i8, ptr %gep, i64 -56
  %i.ck = getelementptr i8, ptr %gep, i64 -24
  %i.cl = getelementptr i8, ptr %gep, i64 -48
  %i.cm = getelementptr i8, ptr %gep, i64 -16
  %i.cn = mul nsw i64 %i.ce, %i.ca
  %gep183 = getelementptr [4 x i8], ptr %invariant.gep182, i64 %i.cn ; 6 uses
  %i.co = getelementptr i8, ptr %gep183, i64 -64
  %i.cp = getelementptr i8, ptr %gep183, i64 -32
  %i.cq = getelementptr i8, ptr %gep183, i64 -56
  %i.cr = getelementptr i8, ptr %gep183, i64 -24
  %i.cs = getelementptr i8, ptr %gep183, i64 -48
  %i.ct = getelementptr i8, ptr %gep183, i64 -16
  %i.cu = add nsw i64 %i.ce, 1
  %i.cv = mul nsw i64 %i.cu, %i.ca
  %gep185 = getelementptr [4 x i8], ptr %invariant.gep184, i64 %i.cv ; 6 uses
  %i.cw = getelementptr i8, ptr %gep185, i64 -64
  %i.cx = getelementptr i8, ptr %gep185, i64 -32
  %i.cy = getelementptr i8, ptr %gep185, i64 -56
  %i.cz = getelementptr i8, ptr %gep185, i64 -24
  %i.da = getelementptr i8, ptr %gep185, i64 -48
  %i.db = getelementptr i8, ptr %gep185, i64 -16
  %i.dc = add nsw i64 %i.ce, 2
  %i.dd = mul nsw i64 %i.dc, %i.ca
  %gep187 = getelementptr [4 x i8], ptr %invariant.gep186, i64 %i.dd ; 6 uses
  %i.de = getelementptr i8, ptr %gep187, i64 -64
  %i.df = getelementptr i8, ptr %gep187, i64 -32
  %i.dg = getelementptr i8, ptr %gep187, i64 -56
  %i.dh = getelementptr i8, ptr %gep187, i64 -24
  %i.di = getelementptr i8, ptr %gep187, i64 -48
  %i.dj = getelementptr i8, ptr %gep187, i64 -16
  %i.dk = add nsw i64 %i.y, %indvars.iv154
  %i.dl = mul nsw i64 %i.dk, %i.k
  %i.dm = getelementptr [4 x i8], ptr %i.ay, i64 %i.dl
  br label %"for f4.s0.v6"

"for f4.s0.v6":                                   ; preds = %"for f4.s0.v4.v296", %"end for f4.s0.v3.v32"
  %indvars.iv = phi i64 [ %smax, %"for f4.s0.v4.v296" ], [ %indvars.iv.next, %"end for f4.s0.v3.v32" ] ; 6 uses
  %lsr.iv8 = phi ptr [ %lsr.iv4, %"for f4.s0.v4.v296" ], [ %scevgep10, %"end for f4.s0.v3.v32" ] ; 2 uses
  br i1 %.not, label %"end for f4.s0.v3.v3", label %"for f4.s0.v3.v3.preheader", !prof !4

"for f4.s0.v3.v3.preheader":                      ; preds = %"for f4.s0.v6"
  %i.dn = trunc nuw nsw i64 %indvars.iv to i32
  %i.do = uitofp nneg i32 %i.dn to float
  %t1992.s = fmul float %i.ap, %i.do
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.dp = shl nuw i32 %indvars.iv.tr, 8
  %.scalar = add i32 %i.dp, %f0.v3.min_realized.s
  %i.dq = insertelement <8 x i32> poison, i32 %.scalar, i64 0
  %i.dr = shufflevector <8 x i32> %i.dq, <8 x i32> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.ds = insertelement <8 x float> poison, float %t1992.s, i64 0
  %i.dt = shufflevector <8 x float> %i.ds, <8 x float> poison, <8 x i32> zeroinitializer ; 32 uses
  %invariant.op = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op204 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op205 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op206 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op207 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op208 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op209 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op210 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op211 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op212 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op213 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op214 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op215 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op216 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op217 = sub <8 x i32> splat (i32 256), %i.dr
  %invariant.op218 = sub <8 x i32> splat (i32 256), %i.dr
  br label %"for f4.s0.v3.v3"

"end for f4.s0.v6.loopexit":                      ; preds = %"end for f4.s0.v3.v32"
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %scevgep6 = getelementptr i8, ptr %lsr.iv4, i64 %i.z
  %lsr.iv.next15 = add i32 %lsr.iv14, %i.af
  %lsr.iv.next19 = add i32 %lsr.iv18, %i.af
  %lsr.iv.next23 = add i32 %lsr.iv22, %i.af
  %lsr.iv.next27 = add i32 %lsr.iv26, %i.af
  %.not9 = icmp eq i64 %indvars.iv.next155, 8
  br i1 %.not9, label %destructor_block.split, label %"for f4.s0.v4.v296"

"for f4.s0.v3.v3":                                ; preds = %"for f4.s0.v3.v3.preheader", %"for f4.s0.v3.v3"
  %lsr.iv28 = phi i32 [ %lsr.iv.next29, %"for f4.s0.v3.v3" ], [ %lsr.iv26, %"for f4.s0.v3.v3.preheader" ] ; 2 uses
  %lsr.iv24 = phi i32 [ %lsr.iv.next25, %"for f4.s0.v3.v3" ], [ %lsr.iv22, %"for f4.s0.v3.v3.preheader" ] ; 2 uses
  %lsr.iv20 = phi i32 [ %lsr.iv.next21, %"for f4.s0.v3.v3" ], [ %lsr.iv18, %"for f4.s0.v3.v3.preheader" ] ; 2 uses
  %lsr.iv16 = phi i32 [ %lsr.iv.next17, %"for f4.s0.v3.v3" ], [ %lsr.iv14, %"for f4.s0.v3.v3.preheader" ] ; 2 uses
  %lsr.iv11 = phi ptr [ %scevgep12, %"for f4.s0.v3.v3" ], [ %lsr.iv8, %"for f4.s0.v3.v3.preheader" ] ; 2 uses
  %lsr.iv = phi i32 [ %lsr.iv.next, %"for f4.s0.v3.v3" ], [ %i.aj, %"for f4.s0.v3.v3.preheader" ]
  %i.du = add i32 %lsr.iv28, %i.ad
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr [4 x i8], ptr %f2.host, i64 %i.dv ; 6 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 -16
  %i.dy = load <8 x float>, ptr %i.dx, align 4, !tbaa !24
  %i.dz = getelementptr i8, ptr %i.dw, i64 16
  %i.ea = load <8 x float>, ptr %i.dz, align 4, !tbaa !24
  %t1973 = shufflevector <8 x float> %i.dy, <8 x float> %i.ea, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dw, i64 -8
  %i.ec = load <8 x float>, ptr %i.eb, align 4, !tbaa !24 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dw, i64 24
  %i.ee = load <8 x float>, ptr %i.ed, align 4, !tbaa !24 ; 2 uses
  %t1974 = shufflevector <8 x float> %i.ec, <8 x float> %i.ee, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %t1975 = shufflevector <8 x float> %i.ec, <8 x float> %i.ee, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.ef = load <8 x float>, ptr %i.dw, align 4, !tbaa !24
  %i.eg = getelementptr i8, ptr %i.dw, i64 32
  %i.eh = load <8 x float>, ptr %i.eg, align 4, !tbaa !24
  %t1976 = shufflevector <8 x float> %i.ef, <8 x float> %i.eh, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.ei = add i32 %lsr.iv24, %i.ad
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr [4 x i8], ptr %f2.host, i64 %i.ej ; 6 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 -16
  %i.em = load <8 x float>, ptr %i.el, align 4, !tbaa !24
  %i.en = getelementptr i8, ptr %i.ek, i64 16
  %i.eo = load <8 x float>, ptr %i.en, align 4, !tbaa !24
  %t1978 = shufflevector <8 x float> %i.em, <8 x float> %i.eo, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ek, i64 -8
  %i.eq = load <8 x float>, ptr %i.ep, align 4, !tbaa !24 ; 2 uses
  %i.er = getelementptr i8, ptr %i.ek, i64 24
  %i.es = load <8 x float>, ptr %i.er, align 4, !tbaa !24 ; 2 uses
  %t1979 = shufflevector <8 x float> %i.eq, <8 x float> %i.es, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %t1980 = shufflevector <8 x float> %i.eq, <8 x float> %i.es, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.et = load <8 x float>, ptr %i.ek, align 4, !tbaa !24
  %i.eu = getelementptr i8, ptr %i.ek, i64 32
  %i.ev = load <8 x float>, ptr %i.eu, align 4, !tbaa !24
  %t1981 = shufflevector <8 x float> %i.et, <8 x float> %i.ev, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.ew = add i32 %lsr.iv20, %i.ad
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr [4 x i8], ptr %f2.host, i64 %i.ex ; 6 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 -16
  %i.fa = load <8 x float>, ptr %i.ez, align 4, !tbaa !24
  %i.fb = getelementptr i8, ptr %i.ey, i64 16
  %i.fc = load <8 x float>, ptr %i.fb, align 4, !tbaa !24
  %t1983 = shufflevector <8 x float> %i.fa, <8 x float> %i.fc, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ey, i64 -8
  %i.fe = load <8 x float>, ptr %i.fd, align 4, !tbaa !24 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.ey, i64 24
  %i.fg = load <8 x float>, ptr %i.ff, align 4, !tbaa !24 ; 2 uses
  %t1984 = shufflevector <8 x float> %i.fe, <8 x float> %i.fg, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %t1985 = shufflevector <8 x float> %i.fe, <8 x float> %i.fg, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.fh = load <8 x float>, ptr %i.ey, align 4, !tbaa !24
  %i.fi = getelementptr i8, ptr %i.ey, i64 32
  %i.fj = load <8 x float>, ptr %i.fi, align 4, !tbaa !24
  %t1986 = shufflevector <8 x float> %i.fh, <8 x float> %i.fj, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.fk = add i32 %lsr.iv16, %i.ad
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr [4 x i8], ptr %f2.host, i64 %i.fl ; 6 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 -16
  %i.fo = load <8 x float>, ptr %i.fn, align 4, !tbaa !24
  %i.fp = getelementptr i8, ptr %i.fm, i64 16
  %i.fq = load <8 x float>, ptr %i.fp, align 4, !tbaa !24
  %t1988 = shufflevector <8 x float> %i.fo, <8 x float> %i.fq, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fm, i64 -8
  %i.fs = load <8 x float>, ptr %i.fr, align 4, !tbaa !24 ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fm, i64 24
  %i.fu = load <8 x float>, ptr %i.ft, align 4, !tbaa !24 ; 2 uses
  %t1989 = shufflevector <8 x float> %i.fs, <8 x float> %i.fu, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %t1990 = shufflevector <8 x float> %i.fs, <8 x float> %i.fu, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.fv = load <8 x float>, ptr %i.fm, align 4, !tbaa !24
  %i.fw = getelementptr i8, ptr %i.fm, i64 32
  %i.fx = load <8 x float>, ptr %i.fw, align 4, !tbaa !24
  %t1991 = shufflevector <8 x float> %i.fv, <8 x float> %i.fx, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.fy = fmul <8 x float> %i.ar, %t1991
  %i.fz = fmul <8 x float> %i.fy, splat (float 2.560000e+02)
  %a307 = fptosi <8 x float> %i.fz to <8 x i32>
  %a306 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a307)
  %i.ga = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a306, <8 x i32> zeroinitializer)
  %.reass.reass.reass = add <8 x i32> %i.ga, %invariant.op ; 8 uses
  %i.gb = extractelement <8 x i32> %.reass.reass.reass, i64 0
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !8
  %i.gf = insertelement <8 x float> poison, float %i.ge, i64 0
  %i.gg = extractelement <8 x i32> %.reass.reass.reass, i64 1
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.gh
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !8
  %i.gk = insertelement <8 x float> %i.gf, float %i.gj, i64 1
  %i.gl = extractelement <8 x i32> %.reass.reass.reass, i64 2
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.gm
  %i.go = load float, ptr %i.gn, align 4, !tbaa !8
  %i.gp = insertelement <8 x float> %i.gk, float %i.go, i64 2
  %i.gq = extractelement <8 x i32> %.reass.reass.reass, i64 3
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.gr
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !8
  %i.gu = insertelement <8 x float> %i.gp, float %i.gt, i64 3
  %i.gv = extractelement <8 x i32> %.reass.reass.reass, i64 4
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !8
  %i.gz = insertelement <8 x float> %i.gu, float %i.gy, i64 4
  %i.ha = extractelement <8 x i32> %.reass.reass.reass, i64 5
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !8
  %i.he = insertelement <8 x float> %i.gz, float %i.hd, i64 5
  %i.hf = extractelement <8 x i32> %.reass.reass.reass, i64 6
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.hg
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !8
  %i.hj = insertelement <8 x float> %i.he, float %i.hi, i64 6
  %i.hk = extractelement <8 x i32> %.reass.reass.reass, i64 7
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !8
  %i.ho = insertelement <8 x float> %i.hj, float %i.hn, i64 7
  %i.hp = fsub <8 x float> %t1991, %i.dt
  %i.hq = fmul <8 x float> %i.aw, %i.hp
  %i.hr = fadd <8 x float> %i.dt, %i.hq
  %i.hs = fadd <8 x float> %i.hr, %i.ho
  %i.ht = fmul <8 x float> %i.ar, %t1990
  %i.hu = fmul <8 x float> %i.ht, splat (float 2.560000e+02)
  %a309 = fptosi <8 x float> %i.hu to <8 x i32>
  %a308 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a309)
  %i.hv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a308, <8 x i32> zeroinitializer)
  %.reass11.reass.reass = add <8 x i32> %i.hv, %invariant.op204 ; 8 uses
  %i.hw = extractelement <8 x i32> %.reass11.reass.reass, i64 0
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !8
  %i.ia = insertelement <8 x float> poison, float %i.hz, i64 0
  %i.ib = extractelement <8 x i32> %.reass11.reass.reass, i64 1
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ic
  %i.ie = load float, ptr %i.id, align 4, !tbaa !8
  %i.if = insertelement <8 x float> %i.ia, float %i.ie, i64 1
  %i.ig = extractelement <8 x i32> %.reass11.reass.reass, i64 2
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ih
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !8
  %i.ik = insertelement <8 x float> %i.if, float %i.ij, i64 2
  %i.il = extractelement <8 x i32> %.reass11.reass.reass, i64 3
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.im
  %i.io = load float, ptr %i.in, align 4, !tbaa !8
  %i.ip = insertelement <8 x float> %i.ik, float %i.io, i64 3
  %i.iq = extractelement <8 x i32> %.reass11.reass.reass, i64 4
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ir
  %i.it = load float, ptr %i.is, align 4, !tbaa !8
  %i.iu = insertelement <8 x float> %i.ip, float %i.it, i64 4
  %i.iv = extractelement <8 x i32> %.reass11.reass.reass, i64 5
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.iw
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !8
  %i.iz = insertelement <8 x float> %i.iu, float %i.iy, i64 5
  %i.ja = extractelement <8 x i32> %.reass11.reass.reass, i64 6
  %i.jb = sext i32 %i.ja to i64
end_hunk_1
begin_hunk_2_@par_for___local_laplacian_f4.s0.v4.v4:"for f4.s0.v4.v296.preheader"
  %i.aed = extractelement <8 x i32> %.reass35.reass.reass, i64 0
  %i.aee = sext i32 %i.aed to i64
  %i.aef = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aee
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !8
  %i.aeh = insertelement <8 x float> poison, float %i.aeg, i64 0
  %i.aei = extractelement <8 x i32> %.reass35.reass.reass, i64 1
  %i.aej = sext i32 %i.aei to i64
  %i.aek = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aej
  %i.ael = load float, ptr %i.aek, align 4, !tbaa !8
  %i.aem = insertelement <8 x float> %i.aeh, float %i.ael, i64 1
  %i.aen = extractelement <8 x i32> %.reass35.reass.reass, i64 2
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aeo
  %i.aeq = load float, ptr %i.aep, align 4, !tbaa !8
  %i.aer = insertelement <8 x float> %i.aem, float %i.aeq, i64 2
  %i.aes = extractelement <8 x i32> %.reass35.reass.reass, i64 3
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aet
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !8
  %i.aew = insertelement <8 x float> %i.aer, float %i.aev, i64 3
  %i.aex = extractelement <8 x i32> %.reass35.reass.reass, i64 4
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aey
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !8
  %i.afb = insertelement <8 x float> %i.aew, float %i.afa, i64 4
  %i.afc = extractelement <8 x i32> %.reass35.reass.reass, i64 5
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.afd
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !8
  %i.afg = insertelement <8 x float> %i.afb, float %i.aff, i64 5
  %i.afh = extractelement <8 x i32> %.reass35.reass.reass, i64 6
  %i.afi = sext i32 %i.afh to i64
  %i.afj = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.afi
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !8
  %i.afl = insertelement <8 x float> %i.afg, float %i.afk, i64 6
  %i.afm = extractelement <8 x i32> %.reass35.reass.reass, i64 7
  %i.afn = sext i32 %i.afm to i64
  %i.afo = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.afn
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !8
  %i.afq = insertelement <8 x float> %i.afl, float %i.afp, i64 7
  %i.afr = fsub <8 x float> %t1975, %i.dt
  %i.afs = fmul <8 x float> %i.aw, %i.afr
  %i.aft = fadd <8 x float> %i.dt, %i.afs
  %i.afu = fadd <8 x float> %i.aft, %i.afq
  %i.afv = fmul <8 x float> %i.ar, %t1974
  %i.afw = fmul <8 x float> %i.afv, splat (float 2.560000e+02)
  %a335 = fptosi <8 x float> %i.afw to <8 x i32>
  %a334 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a335)
  %i.afx = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a334, <8 x i32> zeroinitializer)
  %.reass37.reass.reass = add <8 x i32> %i.afx, %invariant.op217 ; 8 uses
  %i.afy = extractelement <8 x i32> %.reass37.reass.reass, i64 0
  %i.afz = sext i32 %i.afy to i64
  %i.aga = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.afz
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !8
  %i.agc = insertelement <8 x float> poison, float %i.agb, i64 0
  %i.agd = extractelement <8 x i32> %.reass37.reass.reass, i64 1
  %i.age = sext i32 %i.agd to i64
  %i.agf = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.age
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !8
  %i.agh = insertelement <8 x float> %i.agc, float %i.agg, i64 1
  %i.agi = extractelement <8 x i32> %.reass37.reass.reass, i64 2
  %i.agj = sext i32 %i.agi to i64
  %i.agk = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.agj
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !8
  %i.agm = insertelement <8 x float> %i.agh, float %i.agl, i64 2
  %i.agn = extractelement <8 x i32> %.reass37.reass.reass, i64 3
  %i.ago = sext i32 %i.agn to i64
  %i.agp = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ago
  %i.agq = load float, ptr %i.agp, align 4, !tbaa !8
  %i.agr = insertelement <8 x float> %i.agm, float %i.agq, i64 3
  %i.ags = extractelement <8 x i32> %.reass37.reass.reass, i64 4
  %i.agt = sext i32 %i.ags to i64
  %i.agu = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.agt
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !8
  %i.agw = insertelement <8 x float> %i.agr, float %i.agv, i64 4
  %i.agx = extractelement <8 x i32> %.reass37.reass.reass, i64 5
  %i.agy = sext i32 %i.agx to i64
  %i.agz = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.agy
  %i.aha = load float, ptr %i.agz, align 4, !tbaa !8
  %i.ahb = insertelement <8 x float> %i.agw, float %i.aha, i64 5
  %i.ahc = extractelement <8 x i32> %.reass37.reass.reass, i64 6
  %i.ahd = sext i32 %i.ahc to i64
  %i.ahe = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ahd
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !8
  %i.ahg = insertelement <8 x float> %i.ahb, float %i.ahf, i64 6
  %i.ahh = extractelement <8 x i32> %.reass37.reass.reass, i64 7
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ahi
  %i.ahk = load float, ptr %i.ahj, align 4, !tbaa !8
  %i.ahl = insertelement <8 x float> %i.ahg, float %i.ahk, i64 7
  %i.ahm = fsub <8 x float> %t1974, %i.dt
  %i.ahn = fmul <8 x float> %i.aw, %i.ahm
  %i.aho = fadd <8 x float> %i.dt, %i.ahn
  %i.ahp = fadd <8 x float> %i.aho, %i.ahl
  %i.ahq = fadd <8 x float> %i.afu, %i.ahp
  %i.ahr = fmul <8 x float> %i.ahq, splat (float 3.000000e+00)
  %i.ahs = fmul <8 x float> %i.ar, %t1973
  %i.aht = fmul <8 x float> %i.ahs, splat (float 2.560000e+02)
  %a337 = fptosi <8 x float> %i.aht to <8 x i32>
  %a336 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a337)
  %i.ahu = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a336, <8 x i32> zeroinitializer)
  %.reass39.reass.reass = add <8 x i32> %i.ahu, %invariant.op218 ; 8 uses
  %i.ahv = extractelement <8 x i32> %.reass39.reass.reass, i64 0
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ahw
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !8
  %i.ahz = insertelement <8 x float> poison, float %i.ahy, i64 0
  %i.aia = extractelement <8 x i32> %.reass39.reass.reass, i64 1
  %i.aib = sext i32 %i.aia to i64
  %i.aic = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aib
  %i.aid = load float, ptr %i.aic, align 4, !tbaa !8
  %i.aie = insertelement <8 x float> %i.ahz, float %i.aid, i64 1
  %i.aif = extractelement <8 x i32> %.reass39.reass.reass, i64 2
  %i.aig = sext i32 %i.aif to i64
  %i.aih = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aig
  %i.aii = load float, ptr %i.aih, align 4, !tbaa !8
  %i.aij = insertelement <8 x float> %i.aie, float %i.aii, i64 2
  %i.aik = extractelement <8 x i32> %.reass39.reass.reass, i64 3
  %i.ail = sext i32 %i.aik to i64
  %i.aim = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ail
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !8
  %i.aio = insertelement <8 x float> %i.aij, float %i.ain, i64 3
  %i.aip = extractelement <8 x i32> %.reass39.reass.reass, i64 4
  %i.aiq = sext i32 %i.aip to i64
  %i.air = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aiq
  %i.ais = load float, ptr %i.air, align 4, !tbaa !8
  %i.ait = insertelement <8 x float> %i.aio, float %i.ais, i64 4
  %i.aiu = extractelement <8 x i32> %.reass39.reass.reass, i64 5
  %i.aiv = sext i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aiv
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !8
  %i.aiy = insertelement <8 x float> %i.ait, float %i.aix, i64 5
  %i.aiz = extractelement <8 x i32> %.reass39.reass.reass, i64 6
  %i.aja = sext i32 %i.aiz to i64
  %i.ajb = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aja
  %i.ajc = load float, ptr %i.ajb, align 4, !tbaa !8
  %i.ajd = insertelement <8 x float> %i.aiy, float %i.ajc, i64 6
  %i.aje = extractelement <8 x i32> %.reass39.reass.reass, i64 7
  %i.ajf = sext i32 %i.aje to i64
  %i.ajg = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ajf
  %i.ajh = load float, ptr %i.ajg, align 4, !tbaa !8
  %i.aji = insertelement <8 x float> %i.ajd, float %i.ajh, i64 7
  %i.ajj = fsub <8 x float> %t1973, %i.dt
  %i.ajk = fmul <8 x float> %i.aw, %i.ajj
  %i.ajl = fadd <8 x float> %i.dt, %i.ajk
  %i.ajm = fadd <8 x float> %i.ajl, %i.aji
  %i.ajn = fadd <8 x float> %i.ahr, %i.ajm
  %i.ajo = fadd <8 x float> %i.adz, %i.ajn
  %i.ajp = fmul <8 x float> %i.ajo, splat (float 1.250000e-01)
  %i.ajq = fadd <8 x float> %i.ace, %i.ajp
  %i.ajr = fadd <8 x float> %i.ni, %i.ajq
  %i.ajs = fmul <8 x float> %i.ajr, splat (float 1.250000e-01)
  store <8 x float> %i.ajs, ptr %lsr.iv11, align 4, !tbaa !26
  %lsr.iv.next = add nsw i32 %lsr.iv, -1          ; 2 uses
  %scevgep12 = getelementptr i8, ptr %lsr.iv11, i64 32
  %lsr.iv.next17 = add i32 %lsr.iv16, 16
  %lsr.iv.next21 = add i32 %lsr.iv20, 16
  %lsr.iv.next25 = add i32 %lsr.iv24, 16
  %lsr.iv.next29 = add i32 %lsr.iv28, 16
  %.not6 = icmp eq i32 %lsr.iv.next, 0
  br i1 %.not6, label %"end for f4.s0.v3.v3", label %"for f4.s0.v3.v3"

"end for f4.s0.v3.v3":                            ; preds = %"for f4.s0.v3.v3", %"for f4.s0.v6"
  br i1 %i.am, label %"for f4.s0.v3.v31.preheader", label %"end for f4.s0.v3.v32", !prof !5

"for f4.s0.v3.v31.preheader":                     ; preds = %"end for f4.s0.v3.v3"
  %i.ajt = load <8 x float>, ptr %i.ch, align 4, !tbaa !24
  %i.aju = load <8 x float>, ptr %i.ci, align 4, !tbaa !24
  %i.ajv = load <8 x float>, ptr %i.cj, align 4, !tbaa !24 ; 2 uses
  %i.ajw = load <8 x float>, ptr %i.ck, align 4, !tbaa !24 ; 2 uses
  %i.ajx = load <8 x float>, ptr %i.cl, align 4, !tbaa !24
  %i.ajy = load <8 x float>, ptr %i.cm, align 4, !tbaa !24
  %i.ajz = load <8 x float>, ptr %i.co, align 4, !tbaa !24
  %i.aka = load <8 x float>, ptr %i.cp, align 4, !tbaa !24
  %i.akb = load <8 x float>, ptr %i.cq, align 4, !tbaa !24 ; 2 uses
  %i.akc = load <8 x float>, ptr %i.cr, align 4, !tbaa !24 ; 2 uses
  %t2004 = shufflevector <8 x float> %i.akb, <8 x float> %i.akc, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.akd = load <8 x float>, ptr %i.cs, align 4, !tbaa !24
  %i.ake = load <8 x float>, ptr %i.ct, align 4, !tbaa !24
  %t2005 = shufflevector <8 x float> %i.akd, <8 x float> %i.ake, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.akf = load <8 x float>, ptr %i.cw, align 4, !tbaa !24
  %i.akg = load <8 x float>, ptr %i.cx, align 4, !tbaa !24
  %t2007 = shufflevector <8 x float> %i.akf, <8 x float> %i.akg, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.akh = load <8 x float>, ptr %i.cy, align 4, !tbaa !24 ; 2 uses
  %i.aki = load <8 x float>, ptr %i.cz, align 4, !tbaa !24 ; 2 uses
  %t2008 = shufflevector <8 x float> %i.akh, <8 x float> %i.aki, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %t2009 = shufflevector <8 x float> %i.akh, <8 x float> %i.aki, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.akj = load <8 x float>, ptr %i.da, align 4, !tbaa !24
  %i.akk = load <8 x float>, ptr %i.db, align 4, !tbaa !24
  %t2010 = shufflevector <8 x float> %i.akj, <8 x float> %i.akk, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.akl = load <8 x float>, ptr %i.de, align 4, !tbaa !24
  %i.akm = load <8 x float>, ptr %i.df, align 4, !tbaa !24
  %t2012 = shufflevector <8 x float> %i.akl, <8 x float> %i.akm, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.akn = load <8 x float>, ptr %i.dg, align 4, !tbaa !24 ; 2 uses
  %i.ako = load <8 x float>, ptr %i.dh, align 4, !tbaa !24 ; 2 uses
  %t2013 = shufflevector <8 x float> %i.akn, <8 x float> %i.ako, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %t2014 = shufflevector <8 x float> %i.akn, <8 x float> %i.ako, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.akp = load <8 x float>, ptr %i.di, align 4, !tbaa !24
  %i.akq = load <8 x float>, ptr %i.dj, align 4, !tbaa !24
  %t2015 = shufflevector <8 x float> %i.akp, <8 x float> %i.akq, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %indvars.iv.tr166 = trunc nuw i64 %indvars.iv to i32
  %i.akr = shl nuw i32 %indvars.iv.tr166, 8
  %i.aks = fmul <8 x float> %i.ar, %t2015
  %i.akt = fmul <8 x float> %i.aks, splat (float 2.560000e+02)
  %a342 = fptosi <8 x float> %i.akt to <8 x i32>
  %a341 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a342)
  %i.aku = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a341, <8 x i32> zeroinitializer)
  %.scalar165 = add i32 %i.akr, %f0.v3.min_realized.s
  %i.akv = insertelement <8 x i32> poison, i32 %.scalar165, i64 0
  %i.akw = shufflevector <8 x i32> %i.akv, <8 x i32> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.akx = sub <8 x i32> %i.aku, %i.akw
  %i.aky = add nsw <8 x i32> %i.akx, splat (i32 256) ; 8 uses
  %i.akz = extractelement <8 x i32> %i.aky, i64 0
  %i.ala = sext i32 %i.akz to i64
  %i.alb = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ala
  %i.alc = load float, ptr %i.alb, align 4, !tbaa !8
  %i.ald = extractelement <8 x i32> %i.aky, i64 1
  %i.ale = sext i32 %i.ald to i64
  %i.alf = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ale
  %i.alg = load float, ptr %i.alf, align 4, !tbaa !8
  %i.alh = extractelement <8 x i32> %i.aky, i64 2
  %i.ali = sext i32 %i.alh to i64
  %i.alj = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ali
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !8
  %i.all = extractelement <8 x i32> %i.aky, i64 3
  %i.alm = sext i32 %i.all to i64
  %i.aln = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.alm
  %i.alo = load float, ptr %i.aln, align 4, !tbaa !8
  %i.alp = extractelement <8 x i32> %i.aky, i64 4
  %i.alq = sext i32 %i.alp to i64
  %i.alr = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.alq
  %i.als = load float, ptr %i.alr, align 4, !tbaa !8
  %i.alt = extractelement <8 x i32> %i.aky, i64 5
  %i.alu = sext i32 %i.alt to i64
  %i.alv = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.alu
  %i.alw = load float, ptr %i.alv, align 4, !tbaa !8
  %i.alx = extractelement <8 x i32> %i.aky, i64 6
  %i.aly = sext i32 %i.alx to i64
  %i.alz = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aly
  %i.ama = load float, ptr %i.alz, align 4, !tbaa !8
  %i.amb = extractelement <8 x i32> %i.aky, i64 7
  %i.amc = sext i32 %i.amb to i64
  %i.amd = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.amc
  %i.ame = load float, ptr %i.amd, align 4, !tbaa !8
  %i.amf = fmul <8 x float> %i.ar, %t2014
  %i.amg = fmul <8 x float> %i.amf, splat (float 2.560000e+02)
  %a344 = fptosi <8 x float> %i.amg to <8 x i32>
  %a343 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a344)
  %i.amh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a343, <8 x i32> zeroinitializer)
  %i.ami = sub <8 x i32> %i.amh, %i.akw
  %i.amj = add nsw <8 x i32> %i.ami, splat (i32 256) ; 8 uses
  %i.amk = extractelement <8 x i32> %i.amj, i64 0
  %i.aml = sext i32 %i.amk to i64
  %i.amm = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aml
  %i.amn = load float, ptr %i.amm, align 4, !tbaa !8
  %i.amo = extractelement <8 x i32> %i.amj, i64 1
  %i.amp = sext i32 %i.amo to i64
  %i.amq = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.amp
  %i.amr = load float, ptr %i.amq, align 4, !tbaa !8
  %i.ams = extractelement <8 x i32> %i.amj, i64 2
  %i.amt = sext i32 %i.ams to i64
  %i.amu = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.amt
  %i.amv = load float, ptr %i.amu, align 4, !tbaa !8
  %i.amw = extractelement <8 x i32> %i.amj, i64 3
  %i.amx = sext i32 %i.amw to i64
  %i.amy = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.amx
  %i.amz = load float, ptr %i.amy, align 4, !tbaa !8
  %i.ana = extractelement <8 x i32> %i.amj, i64 4
  %i.anb = sext i32 %i.ana to i64
  %i.anc = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.anb
  %i.and = load float, ptr %i.anc, align 4, !tbaa !8
  %i.ane = extractelement <8 x i32> %i.amj, i64 5
  %i.anf = sext i32 %i.ane to i64
  %i.ang = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.anf
  %i.anh = load float, ptr %i.ang, align 4, !tbaa !8
  %i.ani = extractelement <8 x i32> %i.amj, i64 6
  %i.anj = sext i32 %i.ani to i64
  %i.ank = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.anj
  %i.anl = load float, ptr %i.ank, align 4, !tbaa !8
  %i.anm = extractelement <8 x i32> %i.amj, i64 7
  %i.ann = sext i32 %i.anm to i64
  %i.ano = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ann
  %i.anp = load float, ptr %i.ano, align 4, !tbaa !8
  %i.anq = fmul <8 x float> %i.ar, %t2013
  %i.anr = fmul <8 x float> %i.anq, splat (float 2.560000e+02)
  %a346 = fptosi <8 x float> %i.anr to <8 x i32>
  %a345 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a346)
  %i.ans = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a345, <8 x i32> zeroinitializer)
  %i.ant = sub <8 x i32> %i.ans, %i.akw
  %i.anu = add nsw <8 x i32> %i.ant, splat (i32 256) ; 8 uses
  %i.anv = extractelement <8 x i32> %i.anu, i64 0
  %i.anw = sext i32 %i.anv to i64
  %i.anx = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.anw
  %i.any = load float, ptr %i.anx, align 4, !tbaa !8
  %i.anz = extractelement <8 x i32> %i.anu, i64 1
  %i.aoa = sext i32 %i.anz to i64
  %i.aob = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aoa
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !8
  %i.aod = extractelement <8 x i32> %i.anu, i64 2
  %i.aoe = sext i32 %i.aod to i64
  %i.aof = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aoe
  %i.aog = load float, ptr %i.aof, align 4, !tbaa !8
  %i.aoh = extractelement <8 x i32> %i.anu, i64 3
  %i.aoi = sext i32 %i.aoh to i64
  %i.aoj = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aoi
  %i.aok = load float, ptr %i.aoj, align 4, !tbaa !8
  %i.aol = extractelement <8 x i32> %i.anu, i64 4
  %i.aom = sext i32 %i.aol to i64
  %i.aon = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aom
  %i.aoo = load float, ptr %i.aon, align 4, !tbaa !8
  %i.aop = extractelement <8 x i32> %i.anu, i64 5
  %i.aoq = sext i32 %i.aop to i64
  %i.aor = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aoq
  %i.aos = load float, ptr %i.aor, align 4, !tbaa !8
  %i.aot = extractelement <8 x i32> %i.anu, i64 6
  %i.aou = sext i32 %i.aot to i64
  %i.aov = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aou
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !8
  %i.aox = extractelement <8 x i32> %i.anu, i64 7
  %i.aoy = sext i32 %i.aox to i64
  %i.aoz = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aoy
  %i.apa = load float, ptr %i.aoz, align 4, !tbaa !8
  %i.apb = fmul <8 x float> %i.ar, %t2012
  %i.apc = fmul <8 x float> %i.apb, splat (float 2.560000e+02)
  %a348 = fptosi <8 x float> %i.apc to <8 x i32>
  %a347 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a348)
  %i.apd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a347, <8 x i32> zeroinitializer)
  %i.ape = sub <8 x i32> %i.apd, %i.akw
  %i.apf = add nsw <8 x i32> %i.ape, splat (i32 256) ; 8 uses
  %i.apg = extractelement <8 x i32> %i.apf, i64 0
  %i.aph = sext i32 %i.apg to i64
  %i.api = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aph
  %i.apj = load float, ptr %i.api, align 4, !tbaa !8
  %i.apk = extractelement <8 x i32> %i.apf, i64 1
  %i.apl = sext i32 %i.apk to i64
  %i.apm = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.apl
  %i.apn = load float, ptr %i.apm, align 4, !tbaa !8
  %i.apo = extractelement <8 x i32> %i.apf, i64 2
  %i.app = sext i32 %i.apo to i64
  %i.apq = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.app
  %i.apr = load float, ptr %i.apq, align 4, !tbaa !8
  %i.aps = extractelement <8 x i32> %i.apf, i64 3
  %i.apt = sext i32 %i.aps to i64
  %i.apu = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.apt
  %i.apv = load float, ptr %i.apu, align 4, !tbaa !8
  %i.apw = extractelement <8 x i32> %i.apf, i64 4
  %i.apx = sext i32 %i.apw to i64
  %i.apy = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.apx
  %i.apz = load float, ptr %i.apy, align 4, !tbaa !8
  %i.aqa = extractelement <8 x i32> %i.apf, i64 5
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aqb
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !8
  %i.aqe = extractelement <8 x i32> %i.apf, i64 6
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aqf
  %i.aqh = load float, ptr %i.aqg, align 4, !tbaa !8
  %i.aqi = extractelement <8 x i32> %i.apf, i64 7
  %i.aqj = sext i32 %i.aqi to i64
  %i.aqk = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aqj
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !8
  %i.aqm = fmul <8 x float> %i.ar, %t2010
  %i.aqn = fmul <8 x float> %i.aqm, splat (float 2.560000e+02)
  %a350 = fptosi <8 x float> %i.aqn to <8 x i32>
  %a349 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a350)
  %i.aqo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a349, <8 x i32> zeroinitializer)
  %i.aqp = sub <8 x i32> %i.aqo, %i.akw
  %i.aqq = add nsw <8 x i32> %i.aqp, splat (i32 256) ; 8 uses
  %i.aqr = extractelement <8 x i32> %i.aqq, i64 0
  %i.aqs = sext i32 %i.aqr to i64
  %i.aqt = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aqs
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !8
  %i.aqv = extractelement <8 x i32> %i.aqq, i64 1
  %i.aqw = sext i32 %i.aqv to i64
  %i.aqx = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aqw
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !8
  %i.aqz = extractelement <8 x i32> %i.aqq, i64 2
  %i.ara = sext i32 %i.aqz to i64
  %i.arb = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ara
  %i.arc = load float, ptr %i.arb, align 4, !tbaa !8
  %i.ard = extractelement <8 x i32> %i.aqq, i64 3
  %i.are = sext i32 %i.ard to i64
  %i.arf = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.are
  %i.arg = load float, ptr %i.arf, align 4, !tbaa !8
  %i.arh = extractelement <8 x i32> %i.aqq, i64 4
  %i.ari = sext i32 %i.arh to i64
  %i.arj = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ari
  %i.ark = load float, ptr %i.arj, align 4, !tbaa !8
  %i.arl = extractelement <8 x i32> %i.aqq, i64 5
  %i.arm = sext i32 %i.arl to i64
  %i.arn = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.arm
  %i.aro = load float, ptr %i.arn, align 4, !tbaa !8
  %i.arp = extractelement <8 x i32> %i.aqq, i64 6
  %i.arq = sext i32 %i.arp to i64
  %i.arr = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.arq
  %i.ars = load float, ptr %i.arr, align 4, !tbaa !8
  %i.art = extractelement <8 x i32> %i.aqq, i64 7
  %i.aru = sext i32 %i.art to i64
  %i.arv = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aru
  %i.arw = load float, ptr %i.arv, align 4, !tbaa !8
  %i.arx = fmul <8 x float> %i.ar, %t2009
  %i.ary = fmul <8 x float> %i.arx, splat (float 2.560000e+02)
end_hunk_2
