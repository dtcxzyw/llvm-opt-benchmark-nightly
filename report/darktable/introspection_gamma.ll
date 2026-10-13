Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_gamma?download=true
inline.NumInlined: 42
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@process:bb.a
bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.avu = phi reassoc nsz arcp contract afn float [ %i.avq, %bb.af ], [ %i.avt, %bb.ag ] ; 2 uses
  %i.avv = fcmp reassoc nsz arcp contract afn ugt float %.reass.1.i.i118.i, 3.130800e-03
  br i1 %i.avv, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.avw = fmul reassoc nnan nsz arcp contract afn float %.reass.1.i.i118.i, 1.292000e+01
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.avx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.1.i.i118.i, float f0x3ED55555)
  %i.avy = fmul reassoc nsz arcp contract afn float %i.avx, 1.055000e+00
  %i.avz = fadd reassoc nsz arcp contract afn float %i.avy, -5.500000e-02
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.awa = phi reassoc nsz arcp contract afn float [ %i.avw, %bb.ai ], [ %i.avz, %bb.aj ] ; 2 uses
  %i.awb = fcmp reassoc nsz arcp contract afn ugt float %.reass.2.i.i119.i, 3.130800e-03
  br i1 %i.awb, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.awc = fmul reassoc nnan nsz arcp contract afn float %.reass.2.i.i119.i, 1.292000e+01
  br label %_write_pixel.exit121.i

bb.am:                                            ; preds = %bb.ak
  %i.awd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.2.i.i119.i, float f0x3ED55555)
  %i.awe = fmul reassoc nsz arcp contract afn float %i.awd, 1.055000e+00
  %i.awf = fadd reassoc nsz arcp contract afn float %i.awe, -5.500000e-02
  br label %_write_pixel.exit121.i

_write_pixel.exit121.i:                           ; preds = %bb.am, %bb.al
  %i.awg = phi reassoc nsz arcp contract afn float [ %i.awc, %bb.al ], [ %i.awf, %bb.am ] ; 2 uses
  %i.awh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.avu
  %i.awi = fmul reassoc nsz arcp contract afn float %i.awh, %i.avo
  %i.awj = fadd reassoc nsz arcp contract afn float %i.awi, %i.avu
  %i.awk = fmul reassoc nsz arcp contract afn float %i.awj, 2.550000e+02
  %i.awl = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.awk)
  %i.awm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.awl, float 0.000000e+00)
  %i.awn = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.awm, float 2.550000e+02)
  %i.awo = fptoui float %i.awn to i8
  %i.awp = getelementptr inbounds nuw i8, ptr %i.avl, i64 2
  store i8 %i.awo, ptr %i.awp, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.awq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.awa
  %i.awr = getelementptr inbounds nuw i8, ptr %i.avl, i64 1
  %i.aws = fmul reassoc nsz arcp contract afn float %i.awq, %i.avo
  %i.awt = fadd reassoc nsz arcp contract afn float %i.aws, %i.awa
  %i.awu = fmul reassoc nsz arcp contract afn float %i.awg, %i.avo
  %i.awv = fsub reassoc nsz arcp contract afn float %i.awg, %i.awu
  %i.aww = insertelement <2 x float> poison, float %i.awv, i64 0
  %i.awx = insertelement <2 x float> %i.aww, float %i.awt, i64 1
  %i.awy = fmul reassoc nsz arcp contract afn <2 x float> %i.awx, splat (float 2.550000e+02)
  %i.awz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.awy)
  %i.axa = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awz, <2 x float> zeroinitializer)
  %i.axb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.axa, <2 x float> splat (float 2.550000e+02))
  %i.axc = fptoui <2 x float> %i.axb to <2 x i8>  ; 2 uses
  %i.axd = extractelement <2 x i8> %i.axc, i64 1
  store i8 %i.axd, ptr %i.awr, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.axe = extractelement <2 x i8> %i.axc, i64 0
  store i8 %i.axe, ptr %i.avl, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.axf = add nuw i64 %.099260.i, 4              ; 2 uses
  %i.axg = icmp ult i64 %i.axf, %i.v
  br i1 %i.axg, label %.lr.ph261.i, label %_channel_display_false_color.exit, !llvm.loop !69

.lr.ph259.i:                                      ; preds = %.lr.ph259.i.preheader335, %_write_pixel.exit122.i
  %.098258.i = phi i64 [ %i.azq, %_write_pixel.exit122.i ], [ %.098258.i.ph, %.lr.ph259.i.preheader335 ] ; 3 uses
  %i.axh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.098258.i ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 4
  %i.axj = load float, ptr %i.axi, align 4, !tbaa !140, !alias.scope !138, !noalias !139
  %i.axk = fmul reassoc nsz arcp contract afn float %i.axj, 6.000000e+00 ; 2 uses
  %i.axl = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.axk) ; 2 uses
  %i.axm = fsub reassoc nsz arcp contract afn float %i.axk, %i.axl
  %i.axn = fmul reassoc nsz arcp contract afn float %i.axm, 5.000000e-01 ; 2 uses
  %i.axo = fadd reassoc nsz arcp contract afn float %i.axn, 2.500000e-01 ; 3 uses
  %i.axp = fsub reassoc nsz arcp contract afn float 7.500000e-01, %i.axn ; 3 uses
  %i.axq = fptoui float %i.axl to i64
  switch i64 %i.axq, label %bb.ar [
    i64 0, label %dt_HSL_2_RGB.exit.i
    i64 1, label %bb.an
    i64 2, label %bb.ao
    i64 3, label %bb.ap
    i64 4, label %bb.aq
  ]

bb.an:                                            ; preds = %.lr.ph259.i
  br label %dt_HSL_2_RGB.exit.i

bb.ao:                                            ; preds = %.lr.ph259.i
  br label %dt_HSL_2_RGB.exit.i

bb.ap:                                            ; preds = %.lr.ph259.i
  br label %dt_HSL_2_RGB.exit.i

bb.aq:                                            ; preds = %.lr.ph259.i
  br label %dt_HSL_2_RGB.exit.i

bb.ar:                                            ; preds = %.lr.ph259.i
  br label %dt_HSL_2_RGB.exit.i

dt_HSL_2_RGB.exit.i:                              ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.lr.ph259.i
  %.sink54.i.i.i = phi float [ %i.axp, %bb.an ], [ 2.500000e-01, %bb.ap ], [ 7.500000e-01, %bb.ar ], [ %i.axo, %bb.aq ], [ 2.500000e-01, %bb.ao ], [ 7.500000e-01, %.lr.ph259.i ] ; 2 uses
  %.sink53.i.i.i = phi float [ 7.500000e-01, %bb.an ], [ %i.axp, %bb.ap ], [ 2.500000e-01, %bb.ar ], [ 2.500000e-01, %bb.aq ], [ 7.500000e-01, %bb.ao ], [ %i.axo, %.lr.ph259.i ] ; 2 uses
  %.sink.i.i.i = phi float [ 2.500000e-01, %bb.an ], [ 7.500000e-01, %bb.ap ], [ %i.axp, %bb.ar ], [ 7.500000e-01, %bb.aq ], [ %i.axo, %bb.ao ], [ 2.500000e-01, %.lr.ph259.i ] ; 2 uses
  %i.axr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink54.i.i.i, float %.sink53.i.i.i)
  %i.axs = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.axr, float %.sink.i.i.i) ; 3 uses
  %i.axt = fmul reassoc nsz arcp contract afn float %.sink54.i.i.i, 7.500000e-01
  %.reass.i.i = fdiv reassoc nsz arcp contract afn float %i.axt, %i.axs ; 3 uses
  %i.axu = fmul reassoc nsz arcp contract afn float %.sink53.i.i.i, 7.500000e-01
  %.reass.1.i.i = fdiv reassoc nsz arcp contract afn float %i.axu, %i.axs ; 3 uses
  %i.axv = fmul reassoc nsz arcp contract afn float %.sink.i.i.i, 7.500000e-01
  %.reass.2.i.i = fdiv reassoc nsz arcp contract afn float %i.axv, %i.axs ; 3 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %3, i64 %.098258.i ; 3 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axh, i64 12
  %i.axy = load float, ptr %i.axx, align 4, !tbaa !140, !alias.scope !138, !noalias !139
  %i.axz = fmul reassoc nsz arcp contract afn float %i.axy, %i.x ; 3 uses
  %i.aya = fcmp reassoc nsz arcp contract afn ugt float %.reass.i.i, 3.130800e-03
  br i1 %i.aya, label %bb.at, label %bb.as

bb.as:                                            ; preds = %dt_HSL_2_RGB.exit.i
  %i.ayb = fmul reassoc nnan nsz arcp contract afn float %.reass.i.i, 1.292000e+01
  br label %bb.au

bb.at:                                            ; preds = %dt_HSL_2_RGB.exit.i
  %i.ayc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.i.i, float f0x3ED55555)
  %i.ayd = fmul reassoc nsz arcp contract afn float %i.ayc, 1.055000e+00
  %i.aye = fadd reassoc nsz arcp contract afn float %i.ayd, -5.500000e-02
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ayf = phi reassoc nsz arcp contract afn float [ %i.ayb, %bb.as ], [ %i.aye, %bb.at ] ; 2 uses
  %i.ayg = fcmp reassoc nsz arcp contract afn ugt float %.reass.1.i.i, 3.130800e-03
  br i1 %i.ayg, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ayh = fmul reassoc nnan nsz arcp contract afn float %.reass.1.i.i, 1.292000e+01
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.ayi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.1.i.i, float f0x3ED55555)
  %i.ayj = fmul reassoc nsz arcp contract afn float %i.ayi, 1.055000e+00
  %i.ayk = fadd reassoc nsz arcp contract afn float %i.ayj, -5.500000e-02
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ayl = phi reassoc nsz arcp contract afn float [ %i.ayh, %bb.av ], [ %i.ayk, %bb.aw ] ; 2 uses
  %i.aym = fcmp reassoc nsz arcp contract afn ugt float %.reass.2.i.i, 3.130800e-03
  br i1 %i.aym, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ayn = fmul reassoc nnan nsz arcp contract afn float %.reass.2.i.i, 1.292000e+01
  br label %_write_pixel.exit122.i

bb.az:                                            ; preds = %bb.ax
  %i.ayo = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.2.i.i, float f0x3ED55555)
  %i.ayp = fmul reassoc nsz arcp contract afn float %i.ayo, 1.055000e+00
  %i.ayq = fadd reassoc nsz arcp contract afn float %i.ayp, -5.500000e-02
  br label %_write_pixel.exit122.i

_write_pixel.exit122.i:                           ; preds = %bb.az, %bb.ay
  %i.ayr = phi reassoc nsz arcp contract afn float [ %i.ayn, %bb.ay ], [ %i.ayq, %bb.az ] ; 2 uses
  %i.ays = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ayf
  %i.ayt = fmul reassoc nsz arcp contract afn float %i.ays, %i.axz
  %i.ayu = fadd reassoc nsz arcp contract afn float %i.ayt, %i.ayf
  %i.ayv = fmul reassoc nsz arcp contract afn float %i.ayu, 2.550000e+02
  %i.ayw = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.ayv)
  %i.ayx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ayw, float 0.000000e+00)
  %i.ayy = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ayx, float 2.550000e+02)
  %i.ayz = fptoui float %i.ayy to i8
  %i.aza = getelementptr inbounds nuw i8, ptr %i.axw, i64 2
  store i8 %i.ayz, ptr %i.aza, align 1, !tbaa !19, !alias.scope !141, !noalias !142
  %i.azb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ayl
  %i.azc = getelementptr inbounds nuw i8, ptr %i.axw, i64 1
  %i.azd = fmul reassoc nsz arcp contract afn float %i.azb, %i.axz
  %i.aze = fadd reassoc nsz arcp contract afn float %i.azd, %i.ayl
  %i.azf = fmul reassoc nsz arcp contract afn float %i.ayr, %i.axz
  %i.azg = fsub reassoc nsz arcp contract afn float %i.ayr, %i.azf
  %i.azh = insertelement <2 x float> poison, float %i.azg, i64 0
  %i.azi = insertelement <2 x float> %i.azh, float %i.aze, i64 1
  %i.azj = fmul reassoc nsz arcp contract afn <2 x float> %i.azi, splat (float 2.550000e+02)
  %i.azk = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.azj)
  %i.azl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.azk, <2 x float> zeroinitializer)
  %i.azm = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.azl, <2 x float> splat (float 2.550000e+02))
  %i.azn = fptoui <2 x float> %i.azm to <2 x i8>  ; 2 uses
  %i.azo = extractelement <2 x i8> %i.azn, i64 1
  store i8 %i.azo, ptr %i.azc, align 1, !tbaa !19, !alias.scope !141, !noalias !142
  %i.azp = extractelement <2 x i8> %i.azn, i64 0
  store i8 %i.azp, ptr %i.axw, align 1, !tbaa !19, !alias.scope !141, !noalias !142
  %i.azq = add nuw i64 %.098258.i, 4              ; 2 uses
  %i.azr = icmp ult i64 %i.azq, %i.v
  br i1 %i.azr, label %.lr.ph259.i, label %_channel_display_false_color.exit, !llvm.loop !70

.lr.ph.i:                                         ; preds = %.preheader255.i, %_write_pixel.exit127.i
  %.0257.i = phi i64 [ %i.bei, %_write_pixel.exit127.i ], [ 0, %.preheader255.i ] ; 3 uses
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0257.i ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 4
  %i.azu = load float, ptr %i.azt, align 4, !tbaa !140, !alias.scope !138, !noalias !139
  %i.azv = fmul reassoc nsz arcp contract afn float %i.azu, f0x40C90FDB
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.azv) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0 ; 3 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1 ; 3 uses
  %i.azw = fmul reassoc nsz arcp contract afn float %cos.i, f0x3AB5AC22
  %6 = fadd reassoc nsz arcp contract afn float %i.azw, f0x3CC9F8EF
  %7 = fmul reassoc nsz arcp contract afn float %sin.i, f0x3A182AE5
  %i.azx = fadd reassoc nsz arcp contract afn float %6, %7
  %.sroa.0.0.vec.insert.i.i = insertelement <4 x float> poison, float %i.azx, i64 0
  %i.azy = insertelement <2 x float> poison, float %cos.i, i64 0
  %i.azz = shufflevector <2 x float> %i.azy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.baa = fmul reassoc nsz arcp contract afn <2 x float> %i.azz, <float f0xBAB5AC22, float f0xBA7BB56C>
  %8 = fadd reassoc nsz arcp contract afn <2 x float> %i.baa, splat (float f0x3CC9F8EF)
  %i.bab = insertelement <2 x float> poison, float %sin.i, i64 0
  %i.bac = shufflevector <2 x float> %i.bab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bad = fmul reassoc nsz arcp contract afn <2 x float> %i.bac, <float f0xBA182AE5, float f0xBC050537>
  %i.bae = fadd reassoc nsz arcp contract afn <2 x float> %8, %i.bad
  %i.baf = shufflevector <2 x float> %i.bae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.8.vec.insert.i.i314 = shufflevector <4 x float> %.sroa.0.0.vec.insert.i.i, <4 x float> %i.baf, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bag = fadd reassoc nsz arcp contract afn float %sin.i, %cos.i
  %i.bah = fmul reassoc nsz arcp contract afn float %i.bag, f0x3C23D70A
  %i.bai = fadd reassoc nsz arcp contract afn float %i.bah, f0x3CC9F8EF
  %i.baj = fmul reassoc nsz arcp contract afn float %i.bai, 0.000000e+00
  %.sroa.0.12.vec.insert.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i314, float %i.baj, i64 3
  %i.bak = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0.12.vec.insert.i.i, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.8.vec.extract69.i.i = extractelement <4 x float> %i.bak, i64 2
  %i.bal = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.8.vec.extract69.i.i, float f0x3BF4797F) ; 2 uses
  %.sroa.0.12.vec.extract.i.i = extractelement <4 x float> %i.bak, i64 3
  %i.bam = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.12.vec.extract.i.i, float f0x3BF4797F)
  %i.ban = insertelement <4 x float> <float f0x3F560000, float f0x3F560000, float f0x3F560000, float poison>, float %i.bam, i64 3
  %i.bao = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bal, i64 2
  %i.bap = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.bak, <4 x float> splat (float f0x3BF4797F)) ; 2 uses
  %i.baq = shufflevector <4 x float> %i.bap, <4 x float> %i.bao, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bar = fsub reassoc nsz arcp contract afn <4 x float> %i.ban, %i.baq
  %i.bas = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bal, i64 2
  %i.bat = shufflevector <4 x float> %i.bap, <4 x float> %i.bas, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bau = fmul reassoc nsz arcp contract afn <4 x float> %i.bat, <float 1.868750e+01, float 1.868750e+01, float 1.868750e+01, float -0.000000e+00>
  %i.bav = fadd reassoc nsz arcp contract afn <4 x float> %i.bau, <float f0xC196D000, float f0xC196D000, float f0xC196D000, float 1.000000e+00>
  %i.baw = fdiv reassoc nsz arcp contract afn <4 x float> %i.bar, %i.bav
  %i.bax = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.baw, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract51.i.i = extractelement <4 x float> %i.bax, i64 0
  %i.bay = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.0.vec.extract51.i.i, float f0x40C8E06B) ; 3 uses
  %.sroa.0.4.vec.extract64.i.i = extractelement <4 x float> %i.bax, i64 1
  %i.baz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.4.vec.extract64.i.i, float f0x40C8E06B) ; 3 uses
  %.sroa.0.8.vec.extract77.i.i = extractelement <4 x float> %i.bax, i64 2
  %i.bba = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.8.vec.extract77.i.i, float f0x40C8E06B) ; 3 uses
  %i.bbb = fmul reassoc nsz arcp contract afn float %i.bay, f0x46965487
  %i.bbc = fmul reassoc nsz arcp contract afn float %i.baz, f0xC61CFFB1
  %i.bbd = fadd reassoc nsz arcp contract afn float %i.bbc, %i.bbb
  %i.bbe = fmul reassoc nsz arcp contract afn float %i.bba, f0x43BC41CC
  %i.bbf = fadd reassoc nsz arcp contract afn float %i.bbd, %i.bbe
  %i.bbg = fmul reassoc nsz arcp contract afn float %i.bay, f0x455AF2AF
  %i.bbh = fmul reassoc nsz arcp contract afn float %i.baz, f0x45E3067F
  %i.bbi = fadd reassoc nsz arcp contract afn float %i.bbh, %i.bbg
  %i.bbj = fmul reassoc nsz arcp contract afn float %i.bba, f0xC4237608
  %i.bbk = fadd reassoc nsz arcp contract afn float %i.bbi, %i.bbj
  %i.bbl = fmul reassoc nsz arcp contract afn float %i.bay, f0xC4637500
  %i.bbm = fmul reassoc nsz arcp contract afn float %i.baz, f0x45437487
  %i.bbn = fsub reassoc nsz arcp contract afn float %i.bbl, %i.bbm
  %i.bbo = fmul reassoc nsz arcp contract afn float %i.bba, f0x466DEEAA
  %i.bbp = fadd reassoc nsz arcp contract afn float %i.bbn, %i.bbo ; 4 uses
  %i.bbq = fmul reassoc nsz arcp contract afn float %i.bbp, f0x3E199998
  %i.bbr = fadd reassoc nsz arcp contract afn float %i.bbf, %i.bbq ; 4 uses
  %i.bbs = fmul reassoc nsz arcp contract afn float %i.bbr, f0xBE975FB8
  %i.bbt = fadd reassoc nsz arcp contract afn float %i.bbk, %i.bbs ; 3 uses
  %i.bbu = fmul reassoc nsz arcp contract afn float %i.bbr, f0x4034569D
  %i.bbv = fmul reassoc nsz arcp contract afn float %i.bbt, f0x40150E4C
  %i.bbw = fsub reassoc nsz arcp contract afn float %i.bbu, %i.bbv
  %i.bbx = fmul reassoc nsz arcp contract afn float %i.bbp, f0xBEFF3F82
  %i.bby = fadd reassoc nsz arcp contract afn float %i.bbw, %i.bbx ; 2 uses
  %i.bbz = fmul reassoc nsz arcp contract afn float %i.bbr, 8.428400e-01
  %i.bca = fmul reassoc nsz arcp contract afn float %i.bbt, f0x4035EA8C
  %i.bcb = fsub reassoc nsz arcp contract afn float %i.bca, %i.bbz
  %i.bcc = fmul reassoc nsz arcp contract afn float %i.bbp, 4.155600e-02
  %i.bcd = fadd reassoc nsz arcp contract afn float %i.bcb, %i.bcc ; 2 uses
  %i.bce = fmul reassoc nsz arcp contract afn float %i.bbr, f0x3D462FF1
  %i.bcf = fmul reassoc nsz arcp contract afn float %i.bbt, f0x3E9E464E
  %i.bcg = fsub reassoc nsz arcp contract afn float %i.bce, %i.bcf
  %i.bch = fmul reassoc nsz arcp contract afn float %i.bbp, f0x3F875328
  %i.bci = fadd reassoc nsz arcp contract afn float %i.bcg, %i.bch ; 2 uses
  %i.bcj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bby, float %i.bcd)
  %i.bck = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bcj, float %i.bci) ; 3 uses
  %i.bcl = fmul reassoc nsz arcp contract afn float %i.bby, 7.500000e-01
  %.reass.i123.i = fdiv reassoc nsz arcp contract afn float %i.bcl, %i.bck ; 3 uses
  %i.bcm = fmul reassoc nsz arcp contract afn float %i.bcd, 7.500000e-01
  %.reass.1.i124.i = fdiv reassoc nsz arcp contract afn float %i.bcm, %i.bck ; 3 uses
  %i.bcn = fmul reassoc nsz arcp contract afn float %i.bci, 7.500000e-01
  %.reass.2.i125.i = fdiv reassoc nsz arcp contract afn float %i.bcn, %i.bck ; 3 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %3, i64 %.0257.i ; 3 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.azs, i64 12
  %i.bcq = load float, ptr %i.bcp, align 4, !tbaa !140, !alias.scope !138, !noalias !139
  %i.bcr = fmul reassoc nsz arcp contract afn float %i.bcq, %i.x ; 3 uses
  %i.bcs = fcmp reassoc nsz arcp contract afn ugt float %.reass.i123.i, 3.130800e-03
  br i1 %i.bcs, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i
  %i.bct = fmul reassoc nnan nsz arcp contract afn float %.reass.i123.i, 1.292000e+01
  br label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i
  %i.bcu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.i123.i, float f0x3ED55555)
  %i.bcv = fmul reassoc nsz arcp contract afn float %i.bcu, 1.055000e+00
  %i.bcw = fadd reassoc nsz arcp contract afn float %i.bcv, -5.500000e-02
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.bcx = phi reassoc nsz arcp contract afn float [ %i.bct, %bb.ba ], [ %i.bcw, %bb.bb ] ; 2 uses
  %i.bcy = fcmp reassoc nsz arcp contract afn ugt float %.reass.1.i124.i, 3.130800e-03
  br i1 %i.bcy, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.bcz = fmul reassoc nnan nsz arcp contract afn float %.reass.1.i124.i, 1.292000e+01
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.bda = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.1.i124.i, float f0x3ED55555)
  %i.bdb = fmul reassoc nsz arcp contract afn float %i.bda, 1.055000e+00
  %i.bdc = fadd reassoc nsz arcp contract afn float %i.bdb, -5.500000e-02
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.bdd = phi reassoc nsz arcp contract afn float [ %i.bcz, %bb.bd ], [ %i.bdc, %bb.be ] ; 2 uses
  %i.bde = fcmp reassoc nsz arcp contract afn ugt float %.reass.2.i125.i, 3.130800e-03
  br i1 %i.bde, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.bdf = fmul reassoc nnan nsz arcp contract afn float %.reass.2.i125.i, 1.292000e+01
  br label %_write_pixel.exit127.i

bb.bh:                                            ; preds = %bb.bf
  %i.bdg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.2.i125.i, float f0x3ED55555)
  %i.bdh = fmul reassoc nsz arcp contract afn float %i.bdg, 1.055000e+00
  %i.bdi = fadd reassoc nsz arcp contract afn float %i.bdh, -5.500000e-02
  br label %_write_pixel.exit127.i

_write_pixel.exit127.i:                           ; preds = %bb.bh, %bb.bg
  %i.bdj = phi reassoc nsz arcp contract afn float [ %i.bdf, %bb.bg ], [ %i.bdi, %bb.bh ] ; 2 uses
  %i.bdk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bcx
  %i.bdl = fmul reassoc nsz arcp contract afn float %i.bdk, %i.bcr
  %i.bdm = fadd reassoc nsz arcp contract afn float %i.bdl, %i.bcx
  %i.bdn = fmul reassoc nsz arcp contract afn float %i.bdm, 2.550000e+02
  %i.bdo = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.bdn)
  %i.bdp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bdo, float 0.000000e+00)
  %i.bdq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bdp, float 2.550000e+02)
  %i.bdr = fptoui float %i.bdq to i8
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bco, i64 2
  store i8 %i.bdr, ptr %i.bds, align 1, !tbaa !19, !alias.scope !159, !noalias !160
  %i.bdt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bdd
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bco, i64 1
  %i.bdv = fmul reassoc nsz arcp contract afn float %i.bdt, %i.bcr
  %i.bdw = fadd reassoc nsz arcp contract afn float %i.bdv, %i.bdd
  %i.bdx = fmul reassoc nsz arcp contract afn float %i.bdj, %i.bcr
  %i.bdy = fsub reassoc nsz arcp contract afn float %i.bdj, %i.bdx
  %i.bdz = insertelement <2 x float> poison, float %i.bdy, i64 0
  %i.bea = insertelement <2 x float> %i.bdz, float %i.bdw, i64 1
  %i.beb = fmul reassoc nsz arcp contract afn <2 x float> %i.bea, splat (float 2.550000e+02)
  %i.bec = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.beb)
  %i.bed = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bec, <2 x float> zeroinitializer)
  %i.bee = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bed, <2 x float> splat (float 2.550000e+02))
  %i.bef = fptoui <2 x float> %i.bee to <2 x i8>  ; 2 uses
  %i.beg = extractelement <2 x i8> %i.bef, i64 1
  store i8 %i.beg, ptr %i.bdu, align 1, !tbaa !19, !alias.scope !159, !noalias !160
  %i.beh = extractelement <2 x i8> %i.bef, i64 0
  store i8 %i.beh, ptr %i.bco, align 1, !tbaa !19, !alias.scope !159, !noalias !160
  %i.bei = add nuw i64 %.0257.i, 4                ; 2 uses
  %i.bej = icmp ult i64 %i.bei, %i.v
  br i1 %i.bej, label %.lr.ph.i, label %_channel_display_false_color.exit

bb.bi:                                            ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %_channel_display_false_color.exit.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.bi
  %i.bek = add i64 %i.v, -4                       ; 2 uses
  %min.iters.check255 = icmp ult i64 %i.bek, 32
  br i1 %min.iters.check255, label %.lr.ph.i.i.preheader320, label %vector.ph256

vector.ph256:                                     ; preds = %.lr.ph.i.i.preheader
  %i.bel = lshr exact i64 %i.bek, 2
  %i.bem = add nuw nsw i64 %i.bel, 1              ; 2 uses
  %i.ben = and i64 %i.bem, 7                      ; 2 uses
  %i.beo = icmp eq i64 %i.ben, 0
  %i.bep = select i1 %i.beo, i64 8, i64 %i.ben
  %n.vec257 = sub nsw i64 %i.bem, %i.bep          ; 2 uses
  %i.beq = shl i64 %n.vec257, 2
  %broadcast.splatinsert258 = insertelement <8 x float> poison, float %i.x, i64 0
  %broadcast.splat259 = shufflevector <8 x float> %broadcast.splatinsert258, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph256
  %index261 = phi i64 [ 0, %vector.ph256 ], [ %index.next266, %vector.body260 ] ; 2 uses
  %i.ber = shl nuw i64 %index261, 2               ; 9 uses
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ber
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 4
  %wide.vec262 = load <32 x float>, ptr %i.bet, align 4, !tbaa !140, !alias.scope !163, !noalias !164 ; 2 uses
  %strided.vec263 = shufflevector <32 x float> %wide.vec262, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec264 = shufflevector <32 x float> %wide.vec262, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.beu = getelementptr inbounds nuw i8, ptr %3, i64 %i.ber ; 3 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %3, i64 %i.ber ; 3 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 4
  %i.bex = getelementptr inbounds nuw i8, ptr %3, i64 %i.ber ; 3 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 8
  %i.bez = getelementptr inbounds nuw i8, ptr %3, i64 %i.ber ; 3 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 12
  %i.bfb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ber ; 3 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 16
  %i.bfd = getelementptr inbounds nuw i8, ptr %3, i64 %i.ber ; 3 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfd, i64 20
  %i.bff = getelementptr inbounds nuw i8, ptr %3, i64 %i.ber ; 3 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 24
  %i.bfh = getelementptr inbounds nuw i8, ptr %3, i64 %i.ber ; 3 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 28
  %i.bfj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec264, %broadcast.splat259 ; 2 uses
  %i.bfk = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec263, splat (float 3.130800e-03)
end_hunk_0
