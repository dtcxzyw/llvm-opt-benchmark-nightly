Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/samplers_test?download=true
inline.NumInlined: 1273
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN29Sampler_ConsistentValues_Test8TestBodyEv:bb.a
  %i.bif = getelementptr inbounds nuw i8, ptr %i.anh, i64 100 ; 2 uses
  %i.big = load i32, ptr %i.bif, align 4, !tbaa !82 ; 2 uses
  %i.bih = add nsw i32 %i.big, 1
  store i32 %i.bih, ptr %i.bif, align 4, !tbaa !82
  %i.bii = mul nsw i32 %i.big, %i.bie
  %i.bij = add nsw i32 %i.bii, %i.bic
  %i.bik = getelementptr inbounds nuw i8, ptr %i.anh, i64 104
  %i.bil = sext i32 %i.bij to i64
  %i.bim = load ptr, ptr %i.bik, align 8, !tbaa !85
  %i.bin = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %i.bil
  %i.bio = load float, ptr %i.bin, align 4, !tbaa !86
  br label %_ZN4pbrt7Sampler5Get1DEv.exit

_ZN4pbrt7Sampler5Get1DEv.exit:                    ; preds = %bb.dp, %bb.do, %bb.dn, %_ZN4pbrt14RadicalInverseEim.exit.i571, %_ZN4pbrt23ScrambledRadicalInverseEimRKNS_16DigitPermutationE.exit.i560, %_ZN4pbrt27OwenScrambledRadicalInverseEimj.exit751, %.noexc477, %bb.cm, %.noexc478, %.noexc480, %bb.dq
  %.0.i = phi float [ %i.bio, %bb.dq ], [ %.sroa.speculated.i590, %.noexc477 ], [ %.sroa.speculated.i.i.i.i476, %bb.cm ], [ %i.avk, %.noexc478 ], [ %i.bhz, %bb.do ], [ %.sroa.speculated.i50.i702, %.noexc480 ], [ %.sroa.speculated.i750, %_ZN4pbrt27OwenScrambledRadicalInverseEimj.exit751 ], [ %i.bhy, %bb.dn ], [ %.sroa.speculated.i.i572, %_ZN4pbrt14RadicalInverseEim.exit.i571 ], [ %.sroa.speculated.i10.i561, %_ZN4pbrt23ScrambledRadicalInverseEimRKNS_16DigitPermutationE.exit.i560 ], [ %i.bia, %bb.dp ] ; 2 uses
  %i.bip = load ptr, ptr %i.wv, align 8, !tbaa !185 ; 4 uses
  %i.biq = load ptr, ptr %i.ww, align 8, !tbaa !186
  %.not.i.i403 = icmp eq ptr %i.bip, %i.biq
  br i1 %.not.i.i403, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZN4pbrt7Sampler5Get1DEv.exit
  store float %.0.i, ptr %i.bip, align 4, !tbaa !86
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bip, i64 4
  store ptr %i.bir, ptr %i.wv, align 8, !tbaa !185
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.ds:                                            ; preds = %_ZN4pbrt7Sampler5Get1DEv.exit
  %i.bis = load ptr, ptr %i.wu, align 8, !tbaa !85 ; 4 uses
  %i.bit = ptrtoint ptr %i.bip to i64
  %i.biu = ptrtoint ptr %i.bis to i64
  %i.biv = sub i64 %i.bit, %i.biu                 ; 6 uses
  %i.biw = icmp eq i64 %i.biv, 9223372036854775804
  br i1 %i.biw, label %bb.dt, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #26
          to label %.noexc406 unwind label %.loopexit.split-lp1078

.noexc406:                                        ; preds = %bb.dt
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ds
  %i.bix = ashr exact i64 %i.biv, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i404 = call i64 @llvm.umax.i64(i64 %i.bix, i64 1)
  %i.biy = add nsw i64 %.sroa.speculated.i.i.i.i404, %i.bix ; 2 uses
  %i.biz = icmp ult i64 %i.biy, %i.bix
  %i.bja = call i64 @llvm.umin.i64(i64 %i.biy, i64 2305843009213693951)
  %i.bjb = select i1 %i.biz, i64 2305843009213693951, i64 %i.bja ; 3 uses
  %.not.i.i.i.i405 = icmp ne i64 %i.bjb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i405)
  %i.bjc = shl nuw nsw i64 %i.bjb, 2
  %i.bjd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bjc) #23
          to label %.noexc407 unwind label %.loopexit1077 ; 4 uses

.noexc407:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bje = getelementptr inbounds i8, ptr %i.bjd, i64 %i.biv ; 2 uses
  store float %.0.i, ptr %i.bje, align 4, !tbaa !86
  %i.bjf = icmp sgt i64 %i.biv, 0
  br i1 %i.bjf, label %bb.du, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.du:                                            ; preds = %.noexc407
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bjd, ptr align 4 %i.bis, i64 %i.biv, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.du, %.noexc407
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bje, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.bis, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bis, i64 noundef %i.biv) #25
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.dv, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bjd, ptr %i.wu, align 8, !tbaa !85
  store ptr %i.bjg, ptr %i.wv, align 8, !tbaa !185
  %i.bjh = getelementptr inbounds nuw [4 x i8], ptr %i.bjd, i64 %i.bjb
  store ptr %i.bjh, ptr %i.ww, align 8, !tbaa !186
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.dr
  %i.bji = add nuw nsw i32 %.0411184, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bji, 10
  br i1 %exitcond.not, label %bb.ax, label %bb.az, !llvm.loop !172

.loopexit1072:                                    ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ba, %bb.bc, %.noexc468, %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit.i, %.noexc471, %bb.cc, %bb.cd, %.noexc540
  %lpad.loopexit1074 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

.loopexit.split-lp1073:                           ; preds = %bb.ch
  %lpad.loopexit.split-lp1075 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

.loopexit1077:                                    ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, %bb.dn, %bb.do, %bb.dp
  %lpad.loopexit1079 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

.loopexit.split-lp1078:                           ; preds = %bb.dt, %bb.cl
  %lpad.loopexit.split-lp1080 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

bb.dw:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 25769803776, ptr %10, align 8
  store i32 10, ptr %i.c, align 4, !tbaa !49
  store i32 0, ptr %i.d, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %10, ptr %11, align 8, !tbaa !52
  store ptr %i.c, ptr %i.sw, align 8, !tbaa !54
  store ptr %i.d, ptr %i.sx, align 8, !tbaa !54
  %i.bjj = load i64, ptr %.sroa.0888.01189, align 8, !tbaa !20 ; 2 uses
  %i.bjk = and i64 %i.bjj, 144115188075855871
  %i.bjl = inttoptr i64 %i.bjk to ptr
  %i.bjm = lshr i64 %i.bjj, 57
  %i.bjn = trunc nuw nsw i64 %i.bjm to i32
  %i.bjo = add nsw i32 %i.bjn, -1
  invoke void @_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS5_Pvi(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %i.bjl, i32 noundef %i.bjo)
          to label %bb.dx unwind label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bjp = load i64, ptr %.sroa.0888.01189, align 8, !tbaa !20 ; 2 uses
  %i.bjq = and i64 %i.bjp, 144115188075855871
  %i.bjr = inttoptr i64 %i.bjq to ptr
  %i.bjs = lshr i64 %i.bjp, 57
  %i.bjt = trunc nuw nsw i64 %i.bjs to i32
  %i.bju = add nsw i32 %i.bjt, -1
  %i.bjv = invoke <2 x float> @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get2DEvEUlT_E_NS_6Point2IfEENS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %i.bjr, i32 noundef %i.bju)
          to label %bb.dy unwind label %bb.ea     ; 0 uses

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.bjw = load i64, ptr %.sroa.0888.01189, align 8, !tbaa !20 ; 2 uses
  %i.bjx = and i64 %i.bjw, 144115188075855871
  %i.bjy = inttoptr i64 %i.bjx to ptr
  %i.bjz = lshr i64 %i.bjw, 57
  %i.bka = trunc nuw nsw i64 %i.bjz to i32
  %i.bkb = add nsw i32 %i.bka, -1
  %i.bkc = invoke <2 x float> @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get2DEvEUlT_E_NS_6Point2IfEENS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.bjy, i32 noundef %i.bkb)
          to label %bb.dz unwind label %bb.ea     ; 0 uses

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bkd = load i64, ptr %.sroa.0888.01189, align 8, !tbaa !20 ; 2 uses
  %i.bke = and i64 %i.bkd, 144115188075855871
  %i.bkf = inttoptr i64 %i.bke to ptr
  %i.bkg = lshr i64 %i.bkd, 57
  %i.bkh = trunc nuw nsw i64 %i.bkg to i32
  %i.bki = add nsw i32 %i.bkh, -1
  %i.bkj = invoke noundef float @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get1DEvEUlT_E_fNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %i.bkf, i32 noundef %i.bki)
          to label %_ZN4pbrt7Sampler5Get1DEv.exit415 unwind label %bb.ea ; 0 uses

_ZN4pbrt7Sampler5Get1DEv.exit415:                 ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dx, %bb.dw
  %i.bkk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

bb.eb:                                            ; preds = %_ZN4pbrt7Sampler5Get1DEv.exit415, %._crit_edge
  %indvars.iv1250 = phi i64 [ 15, %_ZN4pbrt7Sampler5Get1DEv.exit415 ], [ %indvars.iv.next1251, %._crit_edge ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 21474836481, ptr %5, align 8
  %i.bkl = trunc nuw nsw i64 %indvars.iv1250 to i32
  store i32 %i.bkl, ptr %i.a, align 4, !tbaa !49
  store i32 0, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !52
  store ptr %i.a, ptr %i.sy, align 8, !tbaa !54
  store ptr %i.b, ptr %i.sz, align 8, !tbaa !54
  %i.bkm = load i64, ptr %.sroa.0888.01189, align 8, !tbaa !20 ; 2 uses
  %i.bkn = and i64 %i.bkm, 144115188075855871
  %i.bko = inttoptr i64 %i.bkn to ptr
  %i.bkp = lshr i64 %i.bkm, 57
  %i.bkq = trunc nuw nsw i64 %i.bkp to i32
  %i.bkr = add nsw i32 %i.bkq, -1
  invoke void @_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS5_Pvi(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %i.bko, i32 noundef %i.bkr)
          to label %_ZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEii.exit417 unwind label %bb.ec

_ZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEii.exit417: ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bks = getelementptr inbounds nuw [24 x i8], ptr %15, i64 %indvars.iv1250 ; 3 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bks, i64 8 ; 2 uses
  %i.bku = load ptr, ptr %i.bkt, align 8, !tbaa !180
  %i.bkv = load ptr, ptr %i.bks, align 8, !tbaa !182 ; 2 uses
  %.not1192 = icmp eq ptr %i.bku, %i.bkv
  br i1 %.not1192, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEii.exit417
  %i.bkw = getelementptr inbounds nuw [24 x i8], ptr %14, i64 %indvars.iv1250
  br label %bb.ed

._crit_edge:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit456, %_ZN4pbrt7Sampler16StartPixelSampleENS_6Point2IiEEii.exit417
  %indvars.iv.next1251 = add nsw i64 %indvars.iv1250, -1
  %.not1440 = icmp eq i64 %indvars.iv1250, 0
  br i1 %.not1440, label %.preheader.preheader, label %bb.eb, !llvm.loop !173

.preheader.preheader:                             ; preds = %._crit_edge
  %i.bkx = load ptr, ptr %i.tg, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i457 = icmp eq ptr %i.bkx, null
  br i1 %.not.i.i.i457, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit, label %bb.jc

bb.ec:                                            ; preds = %bb.eb
  %i.bky = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

bb.ed:                                            ; preds = %.lr.ph, %_ZN7testing15AssertionResultD2Ev.exit456
  %indvars.iv1247 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1248, %_ZN7testing15AssertionResultD2Ev.exit456 ] ; 3 uses
  %23 = phi ptr [ %i.bkv, %.lr.ph ], [ %25, %_ZN7testing15AssertionResultD2Ev.exit456 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.bkz = getelementptr inbounds nuw [8 x i8], ptr %23, i64 %indvars.iv1247 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.bla = load i64, ptr %.sroa.0888.01189, align 8, !tbaa !20 ; 2 uses
  %i.blb = and i64 %i.bla, 144115188075855871
  %i.blc = inttoptr i64 %i.blb to ptr             ; 27 uses
  %i.bld = lshr i64 %i.bla, 57
  %i.ble = trunc nuw nsw i64 %i.bld to i32
  switch i32 %i.ble, label %bb.fi [
    i32 1, label %bb.ee
    i32 2, label %bb.ef
    i32 3, label %bb.eg
    i32 4, label %bb.eh
    i32 5, label %bb.eo
    i32 6, label %bb.fe
    i32 7, label %bb.fg
    i32 8, label %bb.fh
  ]

bb.ee:                                            ; preds = %bb.ed
  %i.blf = invoke <2 x float> @_ZN4pbrt14PMJ02BNSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(40) %i.blc)
          to label %_ZN4pbrt7Sampler5Get2DEv.exit419 unwind label %bb.fo

bb.ef:                                            ; preds = %bb.ed
  %i.blg = getelementptr inbounds nuw i8, ptr %i.blc, i64 8 ; 2 uses
  %i.blh = load i64, ptr %i.blg, align 8, !tbaa !25 ; 2 uses
  %i.bli = mul i64 %i.blh, 6364136223846793005
  %i.blj = getelementptr inbounds nuw i8, ptr %i.blc, i64 16
  %i.blk = load i64, ptr %i.blj, align 8, !tbaa !26 ; 2 uses
  %i.bll = add i64 %i.bli, %i.blk                 ; 2 uses
  %i.blm = mul i64 %i.bll, 6364136223846793005
  %i.bln = add i64 %i.blm, %i.blk
  store i64 %i.bln, ptr %i.blg, align 8, !tbaa !25
  %i.blo = insertelement <2 x i64> poison, i64 %i.blh, i64 0
  %i.blp = insertelement <2 x i64> %i.blo, i64 %i.bll, i64 1 ; 3 uses
  %i.blq = lshr <2 x i64> %i.blp, splat (i64 45)
  %i.blr = lshr <2 x i64> %i.blp, splat (i64 27)
  %i.bls = xor <2 x i64> %i.blq, %i.blr
  %i.blt = trunc <2 x i64> %i.bls to <2 x i32>    ; 2 uses
  %i.blu = lshr <2 x i64> %i.blp, splat (i64 59)
  %i.blv = trunc nuw nsw <2 x i64> %i.blu to <2 x i32>
  %i.blw = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.blt, <2 x i32> %i.blt, <2 x i32> %i.blv)
  %i.blx = uitofp <2 x i32> %i.blw to <2 x float>
  %i.bly = fmul nnan <2 x float> %i.blx, splat (float f0x2F800000) ; 2 uses
  %i.blz = fcmp olt <2 x float> %i.bly, splat (float f0x3F7FFFFF)
  %i.bma = select <2 x i1> %i.blz, <2 x float> %i.bly, <2 x float> splat (float f0x3F7FFFFF)
  br label %_ZN4pbrt7Sampler5Get2DEv.exit419

bb.eg:                                            ; preds = %bb.ed
  %i.bmb = invoke <2 x float> @_ZN4pbrt17StratifiedSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(48) %i.blc)
          to label %_ZN4pbrt7Sampler5Get2DEv.exit419 unwind label %bb.fo

bb.eh:                                            ; preds = %bb.ed
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.blc, i64 48 ; 2 uses
  %i.bmd = load i32, ptr %i.bmc, align 8, !tbaa !57 ; 2 uses
  %i.bme = icmp sgt i32 %i.bmd, 998
  %spec.select.i.i.i488 = select i1 %i.bme, i32 2, i32 %i.bmd ; 6 uses
  %i.bmf = add nsw i32 %spec.select.i.i.i488, 2
  store i32 %i.bmf, ptr %i.bmc, align 8, !tbaa !57
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.blc, i64 4
  %i.bmh = load i32, ptr %i.bmg, align 4, !tbaa !58
  switch i32 %i.bmh, label %bb.el [
    i32 0, label %bb.ei
    i32 1, label %bb.ej
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.blc, i64 40
  %i.bmj = load i64, ptr %i.bmi, align 8, !tbaa !59 ; 2 uses
  %i.bmk = sext i32 %spec.select.i.i.i488 to i64
  %i.bml = getelementptr inbounds [4 x i8], ptr @_ZN4pbrt6PrimesE, i64 %i.bmk
  %i.bmm = load i32, ptr %i.bml, align 4, !tbaa !49 ; 2 uses
  %i.bmn = zext i32 %i.bmm to i64                 ; 5 uses
  %i.bmo = udiv i64 -1, %i.bmn
  %i.bmp = sub nuw i64 %i.bmo, %i.bmn
  %i.bmq = uitofp i32 %i.bmm to float
  %i.bmr = fdiv nnan float 1.000000e+00, %i.bmq
  %.not.i.i615 = icmp eq i64 %i.bmj, 0
  br i1 %.not.i.i615, label %.noexc499, label %.lr.ph.i.i616

.lr.ph.i.i616:                                    ; preds = %bb.ei, %.lr.ph.i.i616
  %.023.i.i617 = phi i64 [ %i.bms, %.lr.ph.i.i616 ], [ %i.bmj, %bb.ei ] ; 3 uses
  %.01922.i.i618 = phi i64 [ %i.bmt, %.lr.ph.i.i616 ], [ 0, %bb.ei ]
  %.02021.i.i619 = phi float [ %i.bmu, %.lr.ph.i.i616 ], [ 1.000000e+00, %bb.ei ]
  %i.bms = udiv i64 %.023.i.i617, %i.bmn          ; 2 uses
  %reass.add.i.i620 = sub i64 %.01922.i.i618, %i.bms
  %reass.mul.i.i621 = mul i64 %reass.add.i.i620, %i.bmn
  %i.bmt = add i64 %reass.mul.i.i621, %.023.i.i617 ; 3 uses
  %i.bmu = fmul float %i.bmr, %.02021.i.i619      ; 2 uses
  %i.bmv = icmp uge i64 %.023.i.i617, %i.bmn
  %i.bmw = icmp ult i64 %i.bmt, %i.bmp
  %i.bmx = select i1 %i.bmv, i1 %i.bmw, i1 false
  br i1 %i.bmx, label %.lr.ph.i.i616, label %._crit_edge.loopexit.i.i622, !llvm.loop !0

._crit_edge.loopexit.i.i622:                      ; preds = %.lr.ph.i.i616
  %i.bmy = uitofp i64 %i.bmt to float
  %i.bmz = fmul float %i.bmu, %i.bmy
  br label %.noexc499

bb.ej:                                            ; preds = %bb.eh
  %i.bna = sext i32 %spec.select.i.i.i488 to i64  ; 2 uses
  %i.bnb = getelementptr inbounds [4 x i8], ptr @_ZN4pbrt6PrimesE, i64 %i.bna
  %i.bnc = load i32, ptr %i.bnb, align 4, !tbaa !49 ; 3 uses
  %i.bnd = zext i32 %i.bnc to i64                 ; 6 uses
  %i.bne = udiv i64 -1, %i.bnd
  %i.bnf = sub nuw i64 %i.bne, %i.bnd
  %i.bng = uitofp i32 %i.bnc to float
  %i.bnh = fdiv nnan float 1.000000e+00, %i.bng
  %i.bni = add i32 %i.bnc, -1                     ; 2 uses
  %i.bnj = uitofp i32 %i.bni to float
  %.not.i7.i605 = icmp eq i32 %i.bni, 0
  br i1 %.not.i7.i605, label %.noexc499, label %.lr.ph.i8.i606

.lr.ph.i8.i606:                                   ; preds = %bb.ej
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.blc, i64 8
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !60
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnl, i64 8
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !65
  %i.bno = getelementptr inbounds nuw [16 x i8], ptr %i.bnn, i64 %i.bna ; 2 uses
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.blc, i64 40
  %i.bnq = load i64, ptr %i.bnp, align 8, !tbaa !59
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bno, i64 8
  %i.bns = load ptr, ptr %i.bnr, align 8, !tbaa !68
  %i.bnt = load i32, ptr %i.bno, align 8, !tbaa !69
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %.lr.ph.i8.i606
  %.029.i.i607 = phi i64 [ %i.bnq, %.lr.ph.i8.i606 ], [ %i.bnu, %bb.ek ] ; 2 uses
  %.02328.i.i608 = phi i32 [ 0, %.lr.ph.i8.i606 ], [ %i.bog, %bb.ek ] ; 2 uses
  %.02427.i.i609 = phi i64 [ 0, %.lr.ph.i8.i606 ], [ %i.boe, %bb.ek ]
  %.02526.i.i610 = phi float [ 1.000000e+00, %.lr.ph.i8.i606 ], [ %i.bof, %bb.ek ]
  %i.bnu = udiv i64 %.029.i.i607, %i.bnd          ; 2 uses
  %i.bnv = mul i64 %i.bnu, %i.bnd                 ; 0 uses
  %.recomposed2050 = urem i64 %.029.i.i607, %i.bnd
  %i.bnw = trunc i64 %.recomposed2050 to i32
  %i.bnx = mul i64 %.02427.i.i609, %i.bnd
  %i.bny = mul nsw i32 %.02328.i.i608, %i.bnt
  %i.bnz = add nsw i32 %i.bny, %i.bnw
  %i.boa = sext i32 %i.bnz to i64
  %i.bob = getelementptr inbounds [2 x i8], ptr %i.bns, i64 %i.boa
  %i.boc = load i16, ptr %i.bob, align 2, !tbaa !71
  %i.bod = zext i16 %i.boc to i64
  %i.boe = add i64 %i.bnx, %i.bod                 ; 3 uses
  %i.bof = fmul float %i.bnh, %.02526.i.i610      ; 3 uses
  %i.bog = add nuw nsw i32 %.02328.i.i608, 1
  %i.boh = fmul float %i.bof, %i.bnj
  %i.boi = fsub float 1.000000e+00, %i.boh
  %i.boj = fcmp olt float %i.boi, 1.000000e+00
  %i.bok = icmp ult i64 %i.boe, %i.bnf
  %i.bol = select i1 %i.boj, i1 %i.bok, i1 false
  br i1 %i.bol, label %bb.ek, label %._crit_edge.loopexit.i9.i611, !llvm.loop !1

._crit_edge.loopexit.i9.i611:                     ; preds = %bb.ek
  %i.bom = uitofp i64 %i.boe to float
  %i.bon = fmul float %i.bof, %i.bom
  br label %.noexc499

bb.el:                                            ; preds = %bb.eh
  %i.boo = getelementptr inbounds nuw i8, ptr %i.blc, i64 40
  %i.bop = load i64, ptr %i.boo, align 8, !tbaa !59
  %i.boq = shl i32 %spec.select.i.i.i488, 4
  %i.bor = or disjoint i32 %i.boq, 1
  %i.bos = sext i32 %i.bor to i64                 ; 2 uses
  %i.bot = lshr i64 %i.bos, 31
  %i.bou = xor i64 %i.bot, %i.bos
  %i.bov = mul i64 %i.bou, 9202493588570546565    ; 2 uses
  %i.bow = lshr i64 %i.bov, 27
  %i.box = xor i64 %i.bow, %i.bov
  %i.boy = mul i64 %i.box, -9089707755183418291   ; 2 uses
  %i.boz = lshr i64 %i.boy, 33
  %i.bpa = sext i32 %spec.select.i.i.i488 to i64
  %i.bpb = getelementptr inbounds [4 x i8], ptr @_ZN4pbrt6PrimesE, i64 %i.bpa
  %i.bpc = load i32, ptr %i.bpb, align 4, !tbaa !49 ; 5 uses
  %i.bpd = zext i32 %i.bpc to i64                 ; 6 uses
  %i.bpe = udiv i64 -1, %i.bpd
  %i.bpf = sub nuw i64 %i.bpe, %i.bpd
  %i.bpg = uitofp i32 %i.bpc to float
  %i.bph = fdiv nnan float 1.000000e+00, %i.bpg
  %.masked = and i64 %i.boy, 4294967295
  %i.bpi = xor i64 %i.boz, %.masked
  %i.bpj = add i32 %i.bpc, -1                     ; 2 uses
  %i.bpk = lshr i32 %i.bpj, 1
  %i.bpl = or i32 %i.bpk, %i.bpj                  ; 2 uses
  %i.bpm = lshr i32 %i.bpl, 2
  %i.bpn = or i32 %i.bpm, %i.bpl                  ; 2 uses
  %i.bpo = lshr i32 %i.bpn, 4
  %i.bpp = or i32 %i.bpo, %i.bpn                  ; 2 uses
  %i.bpq = lshr i32 %i.bpp, 8
  %i.bpr = or i32 %i.bpq, %i.bpp                  ; 2 uses
  %i.bps = lshr i32 %i.bpr, 16
  %i.bpt = or i32 %i.bps, %i.bpr                  ; 6 uses
  br label %bb.em

bb.em:                                            ; preds = %_ZN4pbrt18PermutationElementEjjj.exit.i813, %bb.el
  %.030.i808 = phi i64 [ %i.bop, %bb.el ], [ %i.bpu, %_ZN4pbrt18PermutationElementEjjj.exit.i813 ] ; 2 uses
  %.02629.i809 = phi i64 [ 0, %bb.el ], [ %i.brt, %_ZN4pbrt18PermutationElementEjjj.exit.i813 ] ; 2 uses
  %.02728.i810 = phi float [ 1.000000e+00, %bb.el ], [ %i.bru, %_ZN4pbrt18PermutationElementEjjj.exit.i813 ]
  %i.bpu = udiv i64 %.030.i808, %i.bpd            ; 2 uses
  %i.bpv = mul i64 %i.bpu, %i.bpd                 ; 0 uses
  %.recomposed2051 = urem i64 %.030.i808, %i.bpd
  %i.bpw = trunc i64 %.recomposed2051 to i32
  %i.bpx = xor i64 %i.bpi, %.02629.i809           ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN29Sampler_ConsistentValues_Test8TestBodyEv:bb.a
.body536:                                         ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i524
  %eh.lpad-body537 = phi { ptr, i32 } [ %.pn.i522, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i524 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit450

bb.ic:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.id unwind label %bb.il

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.cyr = load ptr, ptr %i.tf, align 8, !tbaa !106 ; 2 uses
  %.not.i.i437 = icmp eq ptr %i.cyr, null
  br i1 %.not.i.i437, label %_ZNK7testing15AssertionResult15failure_messageEv.exit438, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.cys = load ptr, ptr %i.cyr, align 8, !tbaa !101
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit438

_ZNK7testing15AssertionResult15failure_messageEv.exit438: ; preds = %bb.ie, %bb.id
  %i.cyt = phi ptr [ %i.cys, %bb.ie ], [ @.str.45, %bb.id ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 68, ptr noundef %i.cyt)
          to label %bb.if unwind label %bb.im

bb.if:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit438
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.ig unwind label %bb.in

bb.ig:                                            ; preds = %bb.if
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %i.cyu = load ptr, ptr %21, align 8, !tbaa !109
  %.not.i.i.i439 = icmp eq ptr %i.cyu, null
  br i1 %.not.i.i.i439, label %_ZN7testing7MessageD2Ev.exit441, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.cyv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i440 unwind label %bb.ik

.noexc.i.i440:                                    ; preds = %bb.ih
  br i1 %i.cyv, label %bb.ii, label %_ZN7testing7MessageD2Ev.exit441

bb.ii:                                            ; preds = %.noexc.i.i440
  %i.cyw = load ptr, ptr %21, align 8, !tbaa !109 ; 3 uses
  %i.cyx = icmp eq ptr %i.cyw, null
  br i1 %i.cyx, label %_ZN7testing7MessageD2Ev.exit441, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.cyy = load ptr, ptr %i.cyw, align 8, !tbaa !111
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cyy, i64 8
  %i.cza = load ptr, ptr %i.cyz, align 8
  call void %i.cza(ptr noundef nonnull align 8 dereferenceable(128) %i.cyw) #24, !inline_history !8
  br label %_ZN7testing7MessageD2Ev.exit441

bb.ik:                                            ; preds = %bb.ih
  %i.czb = landingpad { ptr, i32 }
          catch ptr null
  %i.czc = extractvalue { ptr, i32 } %i.czb, 0
  call void @__clang_call_terminate(ptr %i.czc) #27
  unreachable

_ZN7testing7MessageD2Ev.exit441:                  ; preds = %bb.ig, %.noexc.i.i440, %bb.ii, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.ix

bb.il:                                            ; preds = %bb.ic
  %i.czd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit444

bb.im:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit438
  %i.cze = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.in:                                            ; preds = %bb.if
  %i.czf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #24
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.pn115 = phi { ptr, i32 } [ %i.czf, %bb.in ], [ %i.cze, %bb.im ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %i.czg = load ptr, ptr %21, align 8, !tbaa !109
  %.not.i.i.i442 = icmp eq ptr %i.czg, null
  br i1 %.not.i.i.i442, label %_ZN7testing7MessageD2Ev.exit444, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.czh = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i443 unwind label %bb.is

.noexc.i.i443:                                    ; preds = %bb.ip
  br i1 %i.czh, label %bb.iq, label %_ZN7testing7MessageD2Ev.exit444

bb.iq:                                            ; preds = %.noexc.i.i443
  %i.czi = load ptr, ptr %21, align 8, !tbaa !109 ; 3 uses
  %i.czj = icmp eq ptr %i.czi, null
  br i1 %i.czj, label %_ZN7testing7MessageD2Ev.exit444, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.czk = load ptr, ptr %i.czi, align 8, !tbaa !111
  %i.czl = getelementptr inbounds nuw i8, ptr %i.czk, i64 8
  %i.czm = load ptr, ptr %i.czl, align 8
  call void %i.czm(ptr noundef nonnull align 8 dereferenceable(128) %i.czi) #24, !inline_history !8
  br label %_ZN7testing7MessageD2Ev.exit444

bb.is:                                            ; preds = %bb.ip
  %i.czn = landingpad { ptr, i32 }
          catch ptr null
  %i.czo = extractvalue { ptr, i32 } %i.czn, 0
  call void @__clang_call_terminate(ptr %i.czo) #27
  unreachable

_ZN7testing7MessageD2Ev.exit444:                  ; preds = %bb.ir, %bb.iq, %.noexc.i.i443, %bb.io, %bb.il
  %.pn115.pn = phi { ptr, i32 } [ %i.czd, %bb.il ], [ %.pn115, %bb.io ], [ %.pn115, %.noexc.i.i443 ], [ %.pn115, %bb.iq ], [ %.pn115, %bb.ir ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.czp = load ptr, ptr %i.tf, align 8, !tbaa !106
  %.not.i.i.i445 = icmp eq ptr %i.czp, null
  br i1 %.not.i.i.i445, label %_ZN7testing15AssertionResultD2Ev.exit450, label %bb.it

bb.it:                                            ; preds = %_ZN7testing7MessageD2Ev.exit444
  %i.czq = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i446 unwind label %bb.iw

.noexc.i.i446:                                    ; preds = %bb.it
  br i1 %i.czq, label %bb.iu, label %_ZN7testing15AssertionResultD2Ev.exit450

bb.iu:                                            ; preds = %.noexc.i.i446
  %i.czr = load ptr, ptr %i.tf, align 8, !tbaa !106 ; 4 uses
  %i.czs = icmp eq ptr %i.czr, null
  br i1 %i.czs, label %_ZN7testing15AssertionResultD2Ev.exit450, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.czt = load ptr, ptr %i.czr, align 8, !tbaa !101 ; 2 uses
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czr, i64 16 ; 2 uses
  %i.czv = icmp eq ptr %i.czt, %i.czu
  br i1 %i.czv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i447: ; preds = %bb.iv
  %i.czw = load i64, ptr %i.czu, align 8, !tbaa !34
  %i.czx = add i64 %i.czw, 1
  call void @_ZdlPvm(ptr noundef %i.czt, i64 noundef %i.czx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i448: ; preds = %bb.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i447
  call void @_ZdlPvm(ptr noundef nonnull %i.czr, i64 noundef 32) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit450

bb.iw:                                            ; preds = %bb.it
  %i.czy = landingpad { ptr, i32 }
          catch ptr null
  %i.czz = extractvalue { ptr, i32 } %i.czy, 0
  call void @__clang_call_terminate(ptr %i.czz) #27
  unreachable

bb.ix:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit441
  %i.daa = load ptr, ptr %i.tf, align 8, !tbaa !106
  %.not.i.i.i451 = icmp eq ptr %i.daa, null
  br i1 %.not.i.i.i451, label %_ZN7testing15AssertionResultD2Ev.exit456, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.dab = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i452 unwind label %bb.jb

.noexc.i.i452:                                    ; preds = %bb.iy
  br i1 %i.dab, label %bb.iz, label %_ZN7testing15AssertionResultD2Ev.exit456

bb.iz:                                            ; preds = %.noexc.i.i452
  %i.dac = load ptr, ptr %i.tf, align 8, !tbaa !106 ; 4 uses
  %i.dad = icmp eq ptr %i.dac, null
  br i1 %i.dad, label %_ZN7testing15AssertionResultD2Ev.exit456, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.dae = load ptr, ptr %i.dac, align 8, !tbaa !101 ; 2 uses
  %i.daf = getelementptr inbounds nuw i8, ptr %i.dac, i64 16 ; 2 uses
  %i.dag = icmp eq ptr %i.dae, %i.daf
  br i1 %i.dag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i454, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i453: ; preds = %bb.ja
  %i.dah = load i64, ptr %i.daf, align 8, !tbaa !34
  %i.dai = add i64 %i.dah, 1
  call void @_ZdlPvm(ptr noundef %i.dae, i64 noundef %i.dai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i454

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i454: ; preds = %bb.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i453
  call void @_ZdlPvm(ptr noundef nonnull %i.dac, i64 noundef 32) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit456

bb.jb:                                            ; preds = %bb.iy
  %i.daj = landingpad { ptr, i32 }
          catch ptr null
  %i.dak = extractvalue { ptr, i32 } %i.daj, 0
  call void @__clang_call_terminate(ptr %i.dak) #27
  unreachable

_ZN7testing15AssertionResultD2Ev.exit456:         ; preds = %bb.ix, %.noexc.i.i452, %bb.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i454
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %indvars.iv.next1248 = add nuw nsw i64 %indvars.iv1247, 1 ; 2 uses
  %24 = load ptr, ptr %i.bkt, align 8, !tbaa !180
  %25 = load ptr, ptr %i.bks, align 8, !tbaa !182 ; 2 uses
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = ashr exact i64 %28, 3
  %i.dal = icmp ugt i64 %29, %indvars.iv.next1248
  br i1 %i.dal, label %bb.ed, label %._crit_edge, !llvm.loop !178

_ZN7testing15AssertionResultD2Ev.exit450:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i448, %bb.iu, %.noexc.i.i446, %_ZN7testing7MessageD2Ev.exit444, %.body536
  %.pn115.pn.pn = phi { ptr, i32 } [ %eh.lpad-body537, %.body536 ], [ %.pn115.pn, %_ZN7testing7MessageD2Ev.exit444 ], [ %.pn115.pn, %.noexc.i.i446 ], [ %.pn115.pn, %bb.iu ], [ %.pn115.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i448 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.ki

bb.jc:                                            ; preds = %.preheader.preheader
  %i.dam = load ptr, ptr %i.th, align 8, !tbaa !181
  %i.dan = ptrtoint ptr %i.dam to i64
  %i.dao = ptrtoint ptr %i.bkx to i64
  %i.dap = sub i64 %i.dan, %i.dao
  call void @_ZdlPvm(ptr noundef nonnull %i.bkx, i64 noundef %i.dap) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit:  ; preds = %.preheader.preheader, %bb.jc
  %i.daq = load ptr, ptr %i.ti, align 16, !tbaa !182 ; 3 uses
  %.not.i.i.i457.1 = icmp eq ptr %i.daq, null
  br i1 %.not.i.i.i457.1, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.1, label %bb.jd

bb.jd:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit
  %i.dar = load ptr, ptr %i.tj, align 16, !tbaa !181
  %i.das = ptrtoint ptr %i.dar to i64
  %i.dat = ptrtoint ptr %i.daq to i64
  %i.dau = sub i64 %i.das, %i.dat
  call void @_ZdlPvm(ptr noundef nonnull %i.daq, i64 noundef %i.dau) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.1

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.1: ; preds = %bb.jd, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit
  %i.dav = load ptr, ptr %i.tk, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i457.2 = icmp eq ptr %i.dav, null
  br i1 %.not.i.i.i457.2, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.2, label %bb.je

bb.je:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.1
  %i.daw = load ptr, ptr %i.tl, align 8, !tbaa !181
  %i.dax = ptrtoint ptr %i.daw to i64
  %i.day = ptrtoint ptr %i.dav to i64
  %i.daz = sub i64 %i.dax, %i.day
  call void @_ZdlPvm(ptr noundef nonnull %i.dav, i64 noundef %i.daz) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.2

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.2: ; preds = %bb.je, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.1
  %i.dba = load ptr, ptr %i.tm, align 16, !tbaa !182 ; 3 uses
  %.not.i.i.i457.3 = icmp eq ptr %i.dba, null
  br i1 %.not.i.i.i457.3, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.3, label %bb.jf

bb.jf:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.2
  %i.dbb = load ptr, ptr %i.tn, align 16, !tbaa !181
  %i.dbc = ptrtoint ptr %i.dbb to i64
  %i.dbd = ptrtoint ptr %i.dba to i64
  %i.dbe = sub i64 %i.dbc, %i.dbd
  call void @_ZdlPvm(ptr noundef nonnull %i.dba, i64 noundef %i.dbe) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.3

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.3: ; preds = %bb.jf, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.2
  %i.dbf = load ptr, ptr %i.to, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i457.4 = icmp eq ptr %i.dbf, null
  br i1 %.not.i.i.i457.4, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.4, label %bb.jg

bb.jg:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.3
  %i.dbg = load ptr, ptr %i.tp, align 8, !tbaa !181
  %i.dbh = ptrtoint ptr %i.dbg to i64
  %i.dbi = ptrtoint ptr %i.dbf to i64
  %i.dbj = sub i64 %i.dbh, %i.dbi
  call void @_ZdlPvm(ptr noundef nonnull %i.dbf, i64 noundef %i.dbj) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.4

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.4: ; preds = %bb.jg, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.3
  %i.dbk = load ptr, ptr %i.tq, align 16, !tbaa !182 ; 3 uses
  %.not.i.i.i457.5 = icmp eq ptr %i.dbk, null
  br i1 %.not.i.i.i457.5, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.5, label %bb.jh

bb.jh:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.4
  %i.dbl = load ptr, ptr %i.tr, align 16, !tbaa !181
  %i.dbm = ptrtoint ptr %i.dbl to i64
  %i.dbn = ptrtoint ptr %i.dbk to i64
  %i.dbo = sub i64 %i.dbm, %i.dbn
  call void @_ZdlPvm(ptr noundef nonnull %i.dbk, i64 noundef %i.dbo) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.5

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.5: ; preds = %bb.jh, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.4
  %i.dbp = load ptr, ptr %i.ts, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i457.6 = icmp eq ptr %i.dbp, null
  br i1 %.not.i.i.i457.6, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.6, label %bb.ji

bb.ji:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.5
  %i.dbq = load ptr, ptr %i.tt, align 8, !tbaa !181
  %i.dbr = ptrtoint ptr %i.dbq to i64
  %i.dbs = ptrtoint ptr %i.dbp to i64
  %i.dbt = sub i64 %i.dbr, %i.dbs
  call void @_ZdlPvm(ptr noundef nonnull %i.dbp, i64 noundef %i.dbt) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.6

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.6: ; preds = %bb.ji, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.5
  %i.dbu = load ptr, ptr %i.tu, align 16, !tbaa !182 ; 3 uses
  %.not.i.i.i457.7 = icmp eq ptr %i.dbu, null
  br i1 %.not.i.i.i457.7, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.7, label %bb.jj

bb.jj:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.6
  %i.dbv = load ptr, ptr %i.tv, align 16, !tbaa !181
  %i.dbw = ptrtoint ptr %i.dbv to i64
  %i.dbx = ptrtoint ptr %i.dbu to i64
  %i.dby = sub i64 %i.dbw, %i.dbx
  call void @_ZdlPvm(ptr noundef nonnull %i.dbu, i64 noundef %i.dby) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.7

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.7: ; preds = %bb.jj, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.6
  %i.dbz = load ptr, ptr %i.tw, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i457.8 = icmp eq ptr %i.dbz, null
  br i1 %.not.i.i.i457.8, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.8, label %bb.jk

bb.jk:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.7
  %i.dca = load ptr, ptr %i.tx, align 8, !tbaa !181
  %i.dcb = ptrtoint ptr %i.dca to i64
  %i.dcc = ptrtoint ptr %i.dbz to i64
  %i.dcd = sub i64 %i.dcb, %i.dcc
  call void @_ZdlPvm(ptr noundef nonnull %i.dbz, i64 noundef %i.dcd) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.8

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.8: ; preds = %bb.jk, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.7
  %i.dce = load ptr, ptr %i.ty, align 16, !tbaa !182 ; 3 uses
  %.not.i.i.i457.9 = icmp eq ptr %i.dce, null
  br i1 %.not.i.i.i457.9, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.9, label %bb.jl

bb.jl:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.8
  %i.dcf = load ptr, ptr %i.tz, align 16, !tbaa !181
  %i.dcg = ptrtoint ptr %i.dcf to i64
  %i.dch = ptrtoint ptr %i.dce to i64
  %i.dci = sub i64 %i.dcg, %i.dch
  call void @_ZdlPvm(ptr noundef nonnull %i.dce, i64 noundef %i.dci) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.9

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.9: ; preds = %bb.jl, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.8
  %i.dcj = load ptr, ptr %i.ua, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i457.10 = icmp eq ptr %i.dcj, null
  br i1 %.not.i.i.i457.10, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.10, label %bb.jm

bb.jm:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.9
  %i.dck = load ptr, ptr %i.ub, align 8, !tbaa !181
  %i.dcl = ptrtoint ptr %i.dck to i64
  %i.dcm = ptrtoint ptr %i.dcj to i64
  %i.dcn = sub i64 %i.dcl, %i.dcm
  call void @_ZdlPvm(ptr noundef nonnull %i.dcj, i64 noundef %i.dcn) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.10

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.10: ; preds = %bb.jm, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.9
  %i.dco = load ptr, ptr %i.uc, align 16, !tbaa !182 ; 3 uses
  %.not.i.i.i457.11 = icmp eq ptr %i.dco, null
  br i1 %.not.i.i.i457.11, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.11, label %bb.jn

bb.jn:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.10
  %i.dcp = load ptr, ptr %i.ud, align 16, !tbaa !181
  %i.dcq = ptrtoint ptr %i.dcp to i64
  %i.dcr = ptrtoint ptr %i.dco to i64
  %i.dcs = sub i64 %i.dcq, %i.dcr
  call void @_ZdlPvm(ptr noundef nonnull %i.dco, i64 noundef %i.dcs) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.11

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.11: ; preds = %bb.jn, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.10
  %i.dct = load ptr, ptr %i.ue, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i457.12 = icmp eq ptr %i.dct, null
  br i1 %.not.i.i.i457.12, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.12, label %bb.jo

bb.jo:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.11
  %i.dcu = load ptr, ptr %i.uf, align 8, !tbaa !181
  %i.dcv = ptrtoint ptr %i.dcu to i64
  %i.dcw = ptrtoint ptr %i.dct to i64
  %i.dcx = sub i64 %i.dcv, %i.dcw
  call void @_ZdlPvm(ptr noundef nonnull %i.dct, i64 noundef %i.dcx) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.12

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.12: ; preds = %bb.jo, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.11
  %i.dcy = load ptr, ptr %i.ug, align 16, !tbaa !182 ; 3 uses
  %.not.i.i.i457.13 = icmp eq ptr %i.dcy, null
  br i1 %.not.i.i.i457.13, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.13, label %bb.jp

bb.jp:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.12
  %i.dcz = load ptr, ptr %i.uh, align 16, !tbaa !181
  %i.dda = ptrtoint ptr %i.dcz to i64
  %i.ddb = ptrtoint ptr %i.dcy to i64
  %i.ddc = sub i64 %i.dda, %i.ddb
  call void @_ZdlPvm(ptr noundef nonnull %i.dcy, i64 noundef %i.ddc) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.13

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.13: ; preds = %bb.jp, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.12
  %i.ddd = load ptr, ptr %i.ui, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i457.14 = icmp eq ptr %i.ddd, null
  br i1 %.not.i.i.i457.14, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.14, label %bb.jq

bb.jq:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.13
  %i.dde = load ptr, ptr %i.uj, align 8, !tbaa !181
  %i.ddf = ptrtoint ptr %i.dde to i64
  %i.ddg = ptrtoint ptr %i.ddd to i64
  %i.ddh = sub i64 %i.ddf, %i.ddg
  call void @_ZdlPvm(ptr noundef nonnull %i.ddd, i64 noundef %i.ddh) #25
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.14

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.14: ; preds = %bb.jq, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit.13
  %i.ddi = load ptr, ptr %15, align 16, !tbaa !182 ; 3 uses
  %.not.i.i.i457.15 = icmp eq ptr %i.ddi, null
end_hunk_1
