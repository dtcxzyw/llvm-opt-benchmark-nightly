Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/aggregate?download=true
inline.NumInlined: 2847
inline.NumDeleted: 905
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@"_ZN4pbrt6detail8DispatchIRZNS_11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS4_17IntersectShadowTrEiS8_SC_ENKSD_clEiEUlNS_6Point3IfEEE_EEvS6_SC_T_T0_EUlSH_NS_16MediumPropertiesENS_15SampledSpectrumESM_E_EESM_SE_ffRNS_3RNGERKNS_18SampledWavelengthsESJ_EUlSJ_E_SM_NS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEESK_OSJ_Pvi":bb.a
  br i1 %i.bil, label %bb.dt, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281

bb.dt:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i280
  %i.bim = load float, ptr %i.bhp, align 4, !tbaa !222
  %i.bin = load float, ptr %5, align 4, !tbaa !223
  %i.bio = fsub float %i.bim, %i.bin              ; 2 uses
  %i.bip = call float @llvm.fabs.f32(float %i.bio)
  %i.biq = fcmp oeq float %i.bip, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %.neg278.i.i = fneg float %i.bio
  %i.bir = select i1 %i.biq, float f0xFF7FFFFF, float %.neg278.i.i
  %.sroa.0.0.copyload.i.i.i.i346 = load <2 x float>, ptr %i.bhn, align 4
  %.sroa.6.0.copyload.i.i.i.i347 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i277, align 4, !tbaa !99
  %i.bis = insertelement <2 x float> poison, float %i.bir, i64 0
  %i.bit = shufflevector <2 x float> %i.bis, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.biu = fmul <2 x float> %.sroa.0.0.copyload.i.i.i.i346, %i.bit
  %i.biv = fmul <2 x float> %i.bit, %.sroa.6.0.copyload.i.i.i.i347
  store <2 x float> %i.biu, ptr %6, align 8
  store <2 x float> %i.biv, ptr %i.bie, align 8
  %i.biw = call { <2 x float>, <2 x float> } @_ZN4pbrt7FastExpERKNS_15SampledSpectrumE(ptr noundef nonnull align 4 dereferenceable(16) %6) ; 2 uses
  %i.bix = extractvalue { <2 x float>, <2 x float> } %i.biw, 0
  %i.biy = extractvalue { <2 x float>, <2 x float> } %i.biw, 1
  %i.biz = fmul <2 x float> %.sroa.0197.0315.i52.i, %i.bix
  %i.bja = fmul <2 x float> %.sroa.21.0316.i51.i, %i.biy
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.thread.i.i288

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281: ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i280
  %i.bjb = load float, ptr %5, align 4, !tbaa !223
  br label %bb.du

bb.du:                                            ; preds = %bb.ez, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281
  %.sroa.0197.1.i.i = phi <2 x float> [ %.sroa.0197.0315.i52.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281 ], [ splat (float 1.000000e+00), %bb.ez ] ; 2 uses
  %.sroa.21.1.i.i282 = phi <2 x float> [ %.sroa.21.0316.i51.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281 ], [ splat (float 1.000000e+00), %bb.ez ] ; 2 uses
  %.073.i.i283 = phi float [ %i.bjb, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281 ], [ %i.bji, %bb.ez ] ; 3 uses
  %.1.i.i284 = phi float [ %.054317.i50.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281 ], [ %.sroa.speculated.i.i.i286, %bb.ez ]
  %i.bjc = load i8, ptr %i.bhm, align 4, !tbaa !220, !range !115, !noundef !44
  %i.bjd = trunc nuw i8 %i.bjc to i1
  br i1 %i.bjd, label %bb.dv, label %.noexc97.i.i285

.noexc97.i.i285:                                  ; preds = %bb.du
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef 235, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(4) @.str.22) #29
  unreachable

bb.dv:                                            ; preds = %bb.du
  %i.bje = load float, ptr %i.bhn, align 4, !tbaa !53
  %i.bjf = fsub float 1.000000e+00, %.1.i.i284
  %i.bjg = call noundef float @logf(float noundef %i.bjf) #25
  %i.bjh = fdiv float %i.bjg, %i.bje
  %i.bji = fsub float %.073.i.i283, %i.bjh        ; 5 uses
  %i.bjj = load i64, ptr %i.bgr, align 8, !tbaa !211 ; 4 uses
  %i.bjk = mul i64 %i.bjj, 6364136223846793005
  %i.bjl = load i64, ptr %i.bho, align 8, !tbaa !210
  %i.bjm = add i64 %i.bjk, %i.bjl
  store i64 %i.bjm, ptr %i.bgr, align 8, !tbaa !211
  %i.bjn = lshr i64 %i.bjj, 45
  %i.bjo = lshr i64 %i.bjj, 27
  %i.bjp = xor i64 %i.bjn, %i.bjo
  %i.bjq = trunc i64 %i.bjp to i32                ; 2 uses
  %i.bjr = lshr i64 %i.bjj, 59
  %i.bjs = trunc nuw nsw i64 %i.bjr to i32
  %i.bjt = call noundef i32 @llvm.fshr.i32(i32 %i.bjq, i32 %i.bjq, i32 %i.bjs)
  %i.bju = uitofp i32 %i.bjt to float
  %i.bjv = fmul nnan float %i.bju, f0x2F800000    ; 2 uses
  %i.bjw = fcmp olt float %i.bjv, f0x3F7FFFFF
  %.sroa.speculated.i.i.i286 = select i1 %i.bjw, float %i.bjv, float f0x3F7FFFFF ; 2 uses
  %i.bjx = load float, ptr %i.bhp, align 4, !tbaa !222 ; 2 uses
  %i.bjy = fcmp olt float %i.bji, %i.bjx
  br i1 %i.bjy, label %bb.dw, label %bb.fa

bb.dw:                                            ; preds = %bb.dv
  %i.bjz = fsub float %i.bji, %.073.i.i283
  %i.bka = fneg float %i.bjz                      ; 4 uses
  %.sroa.0.0.copyload.i.i103.i.i291 = load <2 x float>, ptr %i.bhn, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i105.i.i292 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i277, align 4, !tbaa !99 ; 2 uses
  %.sroa.0.0.vec.extract.i.i106.i.i293 = extractelement <2 x float> %.sroa.0.0.copyload.i.i103.i.i291, i64 0
  %i.bkb = fmul float %.sroa.0.0.vec.extract.i.i106.i.i293, %i.bka
  %.sroa.0.4.vec.extract.i.i108.i.i294 = extractelement <2 x float> %.sroa.0.0.copyload.i.i103.i.i291, i64 1
  %i.bkc = fmul float %.sroa.0.4.vec.extract.i.i108.i.i294, %i.bka
  %.sroa.6.8.vec.extract.i.i110.i.i295 = extractelement <2 x float> %.sroa.6.0.copyload.i.i105.i.i292, i64 0
  %i.bkd = fmul float %.sroa.6.8.vec.extract.i.i110.i.i295, %i.bka
  %.sroa.6.12.vec.extract.i.i112.i.i296 = extractelement <2 x float> %.sroa.6.0.copyload.i.i105.i.i292, i64 1
  %i.bke = fmul float %.sroa.6.12.vec.extract.i.i112.i.i296, %i.bka
  %i.bkf = fmul float %i.bkb, f0x3FB8AA3B         ; 2 uses
  %i.bkg = call noundef float @llvm.floor.f32(float %i.bkf) ; 2 uses
  %i.bkh = fsub float %i.bkf, %i.bkg              ; 3 uses
  %i.bki = fptosi float %i.bkg to i32
  %i.bkj = call noundef float @llvm.fma.f32(float %i.bkh, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bkk = call noundef float @llvm.fma.f32(float %i.bkh, float %i.bkj, float f0x3F321004)
  %i.bkl = call noundef float @llvm.fma.f32(float %i.bkh, float %i.bkk, float 1.000000e+00)
  %i.bkm = bitcast float %i.bkl to i32            ; 2 uses
  %i.bkn = lshr i32 %i.bkm, 23
  %i.bko = add i32 %i.bki, -127
  %i.bkp = add i32 %i.bko, %i.bkn                 ; 3 uses
  %i.bkq = icmp slt i32 %i.bkp, -126
  br i1 %i.bkq, label %_ZN4pbrt7FastExpEf.exit.i.i.i297, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bkr = icmp sgt i32 %i.bkp, 127
  br i1 %i.bkr, label %_ZN4pbrt7FastExpEf.exit.i.i.i297, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bks = and i32 %i.bkm, -2139095041
  %i.bkt = shl nsw i32 %i.bkp, 23
  %i.bku = add nsw i32 %i.bkt, 1065353216
  %i.bkv = or i32 %i.bku, %i.bks
  %i.bkw = bitcast i32 %i.bkv to float
  br label %_ZN4pbrt7FastExpEf.exit.i.i.i297

_ZN4pbrt7FastExpEf.exit.i.i.i297:                 ; preds = %bb.dy, %bb.dx, %bb.dw
  %.0.i.i.i.i298 = phi float [ %i.bkw, %bb.dy ], [ 0.000000e+00, %bb.dw ], [ +inf, %bb.dx ]
  %i.bkx = fmul float %i.bkc, f0x3FB8AA3B         ; 2 uses
  %i.bky = call noundef float @llvm.floor.f32(float %i.bkx) ; 2 uses
  %i.bkz = fsub float %i.bkx, %i.bky              ; 3 uses
  %i.bla = fptosi float %i.bky to i32
  %i.blb = call noundef float @llvm.fma.f32(float %i.bkz, float f0x3DA00AC9, float f0x3E679A0B)
  %i.blc = call noundef float @llvm.fma.f32(float %i.bkz, float %i.blb, float f0x3F321004)
  %i.bld = call noundef float @llvm.fma.f32(float %i.bkz, float %i.blc, float 1.000000e+00)
  %i.ble = bitcast float %i.bld to i32            ; 2 uses
  %i.blf = lshr i32 %i.ble, 23
  %i.blg = add i32 %i.bla, -127
  %i.blh = add i32 %i.blg, %i.blf                 ; 3 uses
  %i.bli = icmp slt i32 %i.blh, -126
  br i1 %i.bli, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i299, label %bb.dz

bb.dz:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i.i.i297
  %i.blj = icmp sgt i32 %i.blh, 127
  br i1 %i.blj, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i299, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.blk = and i32 %i.ble, -2139095041
  %i.bll = shl nsw i32 %i.blh, 23
  %i.blm = add nsw i32 %i.bll, 1065353216
  %i.bln = or i32 %i.blm, %i.blk
  %i.blo = bitcast i32 %i.bln to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i.i.i299

_ZN4pbrt7FastExpEf.exit.1.i.i.i299:               ; preds = %bb.ea, %bb.dz, %_ZN4pbrt7FastExpEf.exit.i.i.i297
  %.0.i.1.i.i.i300 = phi float [ %i.blo, %bb.ea ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i.i.i297 ], [ +inf, %bb.dz ]
  %i.blp = fmul float %i.bkd, f0x3FB8AA3B         ; 2 uses
  %i.blq = call noundef float @llvm.floor.f32(float %i.blp) ; 2 uses
  %i.blr = fsub float %i.blp, %i.blq              ; 3 uses
  %i.bls = fptosi float %i.blq to i32
  %i.blt = call noundef float @llvm.fma.f32(float %i.blr, float f0x3DA00AC9, float f0x3E679A0B)
  %i.blu = call noundef float @llvm.fma.f32(float %i.blr, float %i.blt, float f0x3F321004)
  %i.blv = call noundef float @llvm.fma.f32(float %i.blr, float %i.blu, float 1.000000e+00)
  %i.blw = bitcast float %i.blv to i32            ; 2 uses
  %i.blx = lshr i32 %i.blw, 23
  %i.bly = add i32 %i.bls, -127
  %i.blz = add i32 %i.bly, %i.blx                 ; 3 uses
  %i.bma = icmp slt i32 %i.blz, -126
  br i1 %i.bma, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i301, label %bb.eb

bb.eb:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i.i.i299
  %i.bmb = icmp sgt i32 %i.blz, 127
  br i1 %i.bmb, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i301, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.bmc = and i32 %i.blw, -2139095041
  %i.bmd = shl nsw i32 %i.blz, 23
  %i.bme = add nsw i32 %i.bmd, 1065353216
  %i.bmf = or i32 %i.bme, %i.bmc
  %i.bmg = bitcast i32 %i.bmf to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i.i.i301

_ZN4pbrt7FastExpEf.exit.2.i.i.i301:               ; preds = %bb.ec, %bb.eb, %_ZN4pbrt7FastExpEf.exit.1.i.i.i299
  %.0.i.2.i.i.i302 = phi float [ %i.bmg, %bb.ec ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i.i.i299 ], [ +inf, %bb.eb ]
  %i.bmh = fmul float %i.bke, f0x3FB8AA3B         ; 2 uses
  %i.bmi = call noundef float @llvm.floor.f32(float %i.bmh) ; 2 uses
  %i.bmj = fsub float %i.bmh, %i.bmi              ; 3 uses
  %i.bmk = fptosi float %i.bmi to i32
  %i.bml = call noundef float @llvm.fma.f32(float %i.bmj, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bmm = call noundef float @llvm.fma.f32(float %i.bmj, float %i.bml, float f0x3F321004)
  %i.bmn = call noundef float @llvm.fma.f32(float %i.bmj, float %i.bmm, float 1.000000e+00)
  %i.bmo = bitcast float %i.bmn to i32            ; 2 uses
  %i.bmp = lshr i32 %i.bmo, 23
  %i.bmq = add i32 %i.bmk, -127
  %i.bmr = add i32 %i.bmq, %i.bmp                 ; 3 uses
  %i.bms = icmp slt i32 %i.bmr, -126
  br i1 %i.bms, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i.i.i301
  %i.bmt = icmp sgt i32 %i.bmr, 127
  br i1 %i.bmt, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.bmu = and i32 %i.bmo, -2139095041
  %i.bmv = shl nsw i32 %i.bmr, 23
  %i.bmw = add nsw i32 %i.bmv, 1065353216
  %i.bmx = or i32 %i.bmw, %i.bmu
  %i.bmy = bitcast i32 %i.bmx to float
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %_ZN4pbrt7FastExpEf.exit.2.i.i.i301
  %.0.i.3.i.i.i303 = phi float [ %i.bmy, %bb.ee ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2.i.i.i301 ], [ +inf, %bb.ed ]
  %i.bmz = shufflevector <2 x float> %.sroa.0197.1.i.i, <2 x float> %.sroa.21.1.i.i282, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bna = insertelement <4 x float> poison, float %.0.i.i.i.i298, i64 0
  %i.bnb = insertelement <4 x float> %i.bna, float %.0.i.1.i.i.i300, i64 1
  %i.bnc = insertelement <4 x float> %i.bnb, float %.0.i.2.i.i.i302, i64 2
  %i.bnd = insertelement <4 x float> %i.bnc, float %.0.i.3.i.i.i303, i64 3
  %i.bne = fmul <4 x float> %i.bmz, %i.bnd        ; 2 uses
  %i.bnf = insertelement <3 x float> poison, float %i.bji, i64 0
  %i.bng = shufflevector <3 x float> %i.bnf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bnh = fmul <3 x float> %i.bhg, %i.bng
  %i.bni = fmul float %i.bhh, %i.bji
  %i.bnj = fadd <3 x float> %i.bhc, %i.bnh        ; 3 uses
  %i.bnk = fadd float %.sroa.4.0.copyload.i253, %i.bni ; 2 uses
  %i.bnl = load float, ptr %i.bgt, align 4, !tbaa !53
  %i.bnm = call noundef i64 @lroundf(float noundef %i.bnl) #25
  %i.bnn = load i32, ptr %i.bhq, align 8, !tbaa !217
  %i.bno = trunc i64 %i.bnm to i32
  %i.bnp = sub i32 %i.bno, %i.bnn                 ; 2 uses
  %i.bnq = icmp slt i32 %i.bnp, 0
  br i1 %i.bnq, label %bb.ei, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bnr = zext nneg i32 %i.bnp to i64            ; 2 uses
  %i.bns = load i64, ptr %i.bhr, align 8, !tbaa !218
  %.not.i.i.i304 = icmp ugt i64 %i.bns, %i.bnr
  br i1 %.not.i.i.i304, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.bnt = load ptr, ptr %i.bhs, align 8, !tbaa !178
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %i.bnt, i64 %i.bnr
  %i.bnv = load float, ptr %i.bnu, align 4, !tbaa !53
  %.sroa.0.0.vec.insert.i178.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bnv, i64 0
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %bb.ef
  %.sroa.0.0.i.i.i305 = phi <2 x float> [ %.sroa.0.0.vec.insert.i178.i.i, %bb.eh ], [ zeroinitializer, %bb.eg ], [ zeroinitializer, %bb.ef ]
  %i.bnw = load float, ptr %i.bht, align 4, !tbaa !53
  %i.bnx = call noundef i64 @lroundf(float noundef %i.bnw) #25
  %i.bny = load i32, ptr %i.bhq, align 8, !tbaa !217
  %i.bnz = trunc i64 %i.bnx to i32
  %i.boa = sub i32 %i.bnz, %i.bny                 ; 2 uses
  %i.bob = icmp slt i32 %i.boa, 0
  br i1 %i.bob, label %bb.el, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.boc = zext nneg i32 %i.boa to i64            ; 2 uses
  %i.bod = load i64, ptr %i.bhr, align 8, !tbaa !218
  %.not.1.i.i.i306 = icmp ugt i64 %i.bod, %i.boc
  br i1 %.not.1.i.i.i306, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.boe = load ptr, ptr %i.bhs, align 8, !tbaa !178
  %i.bof = getelementptr inbounds nuw [4 x i8], ptr %i.boe, i64 %i.boc
  %i.bog = load float, ptr %i.bof, align 4, !tbaa !53
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei
  %.sink.i.i.i = phi float [ %i.bog, %bb.ek ], [ 0.000000e+00, %bb.ej ], [ 0.000000e+00, %bb.ei ]
  %i.boh = load float, ptr %i.bhu, align 4, !tbaa !53
  %i.boi = call noundef i64 @lroundf(float noundef %i.boh) #25
  %i.boj = load i32, ptr %i.bhq, align 8, !tbaa !217
  %i.bok = trunc i64 %i.boi to i32
  %i.bol = sub i32 %i.bok, %i.boj                 ; 2 uses
  %i.bom = icmp slt i32 %i.bol, 0
  br i1 %i.bom, label %bb.eo, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.bon = zext nneg i32 %i.bol to i64            ; 2 uses
  %i.boo = load i64, ptr %i.bhr, align 8, !tbaa !218
  %.not.2.i.i.i307 = icmp ugt i64 %i.boo, %i.bon
  br i1 %.not.2.i.i.i307, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.bop = load ptr, ptr %i.bhs, align 8, !tbaa !178
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %i.bop, i64 %i.bon
  %i.bor = load float, ptr %i.boq, align 4, !tbaa !53
  %.sroa.6.8.vec.insert.i.i.i345 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bor, i64 0
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em, %bb.el
  %.sroa.6.0.i.i.i308 = phi <2 x float> [ %.sroa.6.8.vec.insert.i.i.i345, %bb.en ], [ zeroinitializer, %bb.em ], [ zeroinitializer, %bb.el ]
  %i.bos = load float, ptr %i.bhv, align 4, !tbaa !53
  %i.bot = call noundef i64 @lroundf(float noundef %i.bos) #25
  %i.bou = load i32, ptr %i.bhq, align 8, !tbaa !217
  %i.bov = trunc i64 %i.bot to i32
  %i.bow = sub i32 %i.bov, %i.bou                 ; 2 uses
  %i.box = icmp slt i32 %i.bow, 0
  br i1 %i.box, label %.noexc124.i.i310, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.boy = zext nneg i32 %i.bow to i64            ; 2 uses
  %i.boz = load i64, ptr %i.bhr, align 8, !tbaa !218
  %.not.3.i.i.i309 = icmp ugt i64 %i.boz, %i.boy
  br i1 %.not.3.i.i.i309, label %bb.eq, label %.noexc124.i.i310

bb.eq:                                            ; preds = %bb.ep
  %i.bpa = load ptr, ptr %i.bhs, align 8, !tbaa !178
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr %i.bpa, i64 %i.boy
  %i.bpc = load float, ptr %i.bpb, align 4, !tbaa !53
  br label %.noexc124.i.i310

.noexc124.i.i310:                                 ; preds = %bb.eq, %bb.ep, %bb.eo
  %.sink30.i.i.i311 = phi float [ %i.bpc, %bb.eq ], [ 0.000000e+00, %bb.ep ], [ 0.000000e+00, %bb.eo ]
  %i.bpd = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.bhw, ptr noundef nonnull align 4 dereferenceable(32) %i.bgt) ; 2 uses
  %i.bpe = load <8 x float>, ptr %i.bhx, align 8, !tbaa !53, !noalias !809 ; 4 uses
  %i.bpf = load <4 x float>, ptr %i.bhy, align 8, !tbaa !53, !noalias !809
  %i.bpg = load <2 x float>, ptr %i.bhz, align 8, !tbaa !53, !noalias !809
  %i.bph = shufflevector <3 x float> %i.bnj, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bpi = fmul <2 x float> %i.bph, %i.bpg        ; 2 uses
  %shift403 = shufflevector <2 x float> %i.bpi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop404 = fadd <2 x float> %i.bpi, %shift403
  %i.bpj = extractelement <2 x float> %foldExtExtBinop404, i64 0
  %i.bpk = load float, ptr %i.bia, align 8, !tbaa !53, !noalias !809
  %i.bpl = fmul float %i.bnk, %i.bpk
  %i.bpm = load float, ptr %i.bib, align 4, !tbaa !53, !noalias !809
  %i.bpn = fadd float %i.bpl, %i.bpm
  %i.bpo = fadd float %i.bpj, %i.bpn              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !809
  store float %i.bpo, ptr %i.a, align 4, !tbaa !53, !noalias !809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !809
  store i32 0, ptr %i.b, align 4, !tbaa !76, !noalias !809
  %i.bpp = fcmp une float %i.bpo, 0.000000e+00
  br i1 %i.bpp, label %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i312, label %.noexc126.i.i

.noexc126.i.i:                                    ; preds = %.noexc124.i.i310
  call void @_ZN4pbrt8LogFatalIJRA3_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 393, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, ptr noundef nonnull align 1 dereferenceable(2) @.str.26, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.26, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #29
  unreachable

_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i312: ; preds = %.noexc124.i.i310
  %i.bpq = extractvalue { <2 x float>, <2 x float> } %i.bpd, 1
  %i.bpr = extractvalue { <2 x float>, <2 x float> } %i.bpd, 0
  %i.bps = shufflevector <4 x float> %i.bpf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.bpt = shufflevector <8 x float> %i.bpe, <8 x float> %i.bps, <3 x i32> <i32 0, i32 5, i32 8>
  %i.bpu = fmul <3 x float> %i.bnj, %i.bpt
  %i.bpv = shufflevector <3 x float> %i.bnj, <3 x float> poison, <3 x i32> <i32 1, i32 0, i32 1>
  %i.bpw = shufflevector <8 x float> %i.bpe, <8 x float> %i.bps, <3 x i32> <i32 1, i32 4, i32 9>
  %i.bpx = fmul <3 x float> %i.bpv, %i.bpw
  %i.bpy = insertelement <3 x float> poison, float %i.bnk, i64 0
  %i.bpz = shufflevector <3 x float> %i.bpy, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bqa = shufflevector <8 x float> %i.bpe, <8 x float> %i.bps, <3 x i32> <i32 2, i32 6, i32 10>
  %i.bqb = fmul <3 x float> %i.bpz, %i.bqa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !809
  %i.bqc = fcmp oeq float %i.bpo, 1.000000e+00
  %i.bqd = load ptr, ptr %i.bic, align 8, !tbaa !810, !noalias !809 ; 8 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 332
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqd, i64 368
  %i.bqg = load float, ptr %i.bqe, align 4, !tbaa !53, !noalias !809
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqd, i64 336
  %i.bqi = load float, ptr %i.bqh, align 8, !tbaa !53, !noalias !809
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqd, i64 340
  %i.bqk = load float, ptr %i.bqj, align 4, !tbaa !53, !noalias !809
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqd, i64 344
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqd, i64 360
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqd, i64 672 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bqo = fadd <3 x float> %i.bpu, %i.bpx
  %i.bqp = shufflevector <8 x float> %i.bpe, <8 x float> %i.bps, <3 x i32> <i32 3, i32 7, i32 11>
  %i.bqq = fadd <3 x float> %i.bqb, %i.bqp
  %i.bqr = fadd <3 x float> %i.bqo, %i.bqq        ; 2 uses
  %i.bqs = insertelement <3 x float> poison, float %i.bpo, i64 0
  %i.bqt = shufflevector <3 x float> %i.bqs, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bqu = fdiv <3 x float> %i.bqr, %i.bqt
  %i.bqv = insertelement <3 x i1> poison, i1 %i.bqc, i64 0
  %i.bqw = shufflevector <3 x i1> %i.bqv, <3 x i1> poison, <3 x i32> zeroinitializer
  %i.bqx = select <3 x i1> %i.bqw, <3 x float> %i.bqr, <3 x float> %i.bqu ; 3 uses
  %i.bqy = shufflevector <3 x float> %i.bqx, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bqz = load <3 x float>, ptr %i.bqf, align 8, !tbaa !53, !noalias !809
  %i.bra = fsub <3 x float> %i.bqx, %i.bqz        ; 6 uses
  %i.brb = extractelement <3 x float> %i.bra, i64 2
  %i.brc = fmul float %i.brb, %i.bqk
  %i.brd = extractelement <3 x float> %i.bra, i64 1
  %i.bre = call float @llvm.fma.f32(float %i.brd, float %i.bqi, float %i.brc)
  %i.brf = extractelement <3 x float> %i.bra, i64 0
  %i.brg = call float @llvm.fma.f32(float %i.brf, float %i.bqg, float %i.bre) ; 2 uses
  %i.brh = load <4 x float>, ptr %i.bql, align 8, !tbaa !53, !noalias !809 ; 3 uses
  %i.bri = load <2 x float>, ptr %i.bqm, align 8, !tbaa !53, !noalias !809
  %i.brj = shufflevector <3 x float> %i.bra, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.brk = shufflevector <2 x float> %i.bri, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.brl = shufflevector <4 x float> %i.brh, <4 x float> %i.brk, <2 x i32> <i32 2, i32 5>
  %i.brm = fmul <2 x float> %i.brj, %i.brl
  %i.brn = shufflevector <3 x float> %i.bra, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bro = shufflevector <4 x float> %i.brh, <4 x float> %i.brk, <2 x i32> <i32 1, i32 4>
  %i.brp = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.brn, <2 x float> %i.bro, <2 x float> %i.brm)
  %i.brq = shufflevector <3 x float> %i.bra, <3 x float> poison, <2 x i32> zeroinitializer
  %i.brr = shufflevector <4 x float> %i.brh, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.brs = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.brq, <2 x float> %i.brr, <2 x float> %i.brp) ; 3 uses
  %i.brt = call float @llvm.floor.f32(float %i.brg) ; 2 uses
  %i.bru = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.brs) ; 3 uses
  %i.brv = fsub float %i.brg, %i.brt
  %foldExtExtBinop406 = fsub <2 x float> %i.brs, %i.bru
  %i.brw = extractelement <2 x float> %foldExtExtBinop406, i64 0 ; 2 uses
  %foldExtExtBinop408 = fsub <2 x float> %i.brs, %i.bru
  %i.brx = extractelement <2 x float> %foldExtExtBinop408, i64 1 ; 4 uses
  %i.bry = fptosi float %i.brt to i32             ; 5 uses
  %i.brz = fptosi <2 x float> %i.bru to <2 x i32> ; 5 uses
  %i.bsa = extractelement <2 x i32> %i.brz, i64 0 ; 3 uses
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.bsa to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.bry to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %2, align 8
  %i.bsb = extractelement <2 x i32> %i.brz, i64 1 ; 4 uses
  store i32 %i.bsb, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bqd, i64 696 ; 7 uses
  %i.bsd = load i64, ptr %i.bsc, align 8, !tbaa !43
  %i.bse = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bsd ; 5 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bse, i64 64
  %i.bsg = lshr i32 %i.bsb, 12
  %i.bsh = zext nneg i32 %i.bsg to i64
  %i.bsi = lshr i32 %i.bsa, 12
  %i.bsj = zext nneg i32 %i.bsi to i64
  %i.bsk = shl nuw nsw i64 %i.bsj, 21
  %i.bsl = or disjoint i64 %i.bsk, %i.bsh
  %i.bsm = lshr i32 %i.bry, 12
  %i.bsn = zext nneg i32 %i.bsm to i64
  %i.bso = shl nuw nsw i64 %i.bsn, 42
  %i.bsp = or disjoint i64 %i.bsl, %i.bso
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bse, i64 24
  %i.bsr = load i32, ptr %i.bsq, align 8, !tbaa !242 ; 2 uses
  %.not12.not.i.i.i.i = icmp eq i32 %i.bsr, 0
  br i1 %.not12.not.i.i.i.i, label %.loopexit.i.i.i316, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i312
  %wide.trip.count.i.i.i.i = zext i32 %i.bsr to i64
  br label %.lr.ph.i.i.i.i

bb.er:                                            ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i316, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.i:                                   ; preds = %bb.er, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.er ] ; 2 uses
  %i.bss = getelementptr inbounds nuw [32 x i8], ptr %i.bsf, i64 %indvars.iv.i.i.i.i ; 3 uses
  %i.bst = load i64, ptr %i.bss, align 32, !tbaa !244
  %i.bsu = icmp eq i64 %i.bst, %i.bsp
  br i1 %i.bsu, label %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i, label %bb.er

_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bss, i64 8
  %i.bsw = load i64, ptr %i.bsv, align 8, !tbaa !245 ; 2 uses
  %.not.i179.i.i = icmp eq i64 %i.bsw, 0
  br i1 %.not.i179.i.i, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i
  %i.bsx = getelementptr inbounds i8, ptr %i.bse, i64 %i.bsw ; 3 uses
  %i.bsy = shl i32 %i.bry, 3
  %i.bsz = and i32 %i.bsy, 31744
  %i.bta = lshr i32 %i.bsa, 2
  %i.btb = and i32 %i.bta, 992
  %i.btc = or disjoint i32 %i.btb, %i.bsz         ; 2 uses
  %i.btd = lshr i32 %i.bsb, 7
  %i.bte = and i32 %i.btd, 31
  %i.btf = or disjoint i32 %i.bte, %i.btc         ; 2 uses
  %i.btg = getelementptr inbounds nuw i8, ptr %i.bsx, i64 4128
  %i.bth = lshr i32 %i.btc, 6
  %i.bti = zext nneg i32 %i.bth to i64
  %i.btj = getelementptr inbounds nuw [8 x i8], ptr %i.btg, i64 %i.bti
  %i.btk = load i64, ptr %i.btj, align 8, !tbaa !43
  %i.btl = and i32 %i.btf, 63
  %i.btm = zext nneg i32 %i.btl to i64
  %i.btn = shl nuw i64 1, %i.btm
  %i.bto = and i64 %i.btk, %i.btn
  %.not.i.i.i.i = icmp eq i64 %i.bto, 0
  %i.btp = getelementptr inbounds nuw i8, ptr %i.bsx, i64 8256
  %i.btq = zext nneg i32 %i.btf to i64
  %i.btr = getelementptr inbounds nuw [8 x i8], ptr %i.btp, i64 %i.btq ; 2 uses
  br i1 %.not.i.i.i.i, label %.noexc168.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bts = load i64, ptr %i.btr, align 8, !tbaa !99
  %i.btt = getelementptr inbounds i8, ptr %i.bsx, i64 %i.bts ; 3 uses
  %i.btu = shl i32 %i.bry, 5
  %i.btv = and i32 %i.btu, 3840
  %i.btw = lshr <2 x i32> %i.brz, <i32 1, i32 3>
  %i.btx = shl <2 x i32> %i.brz, <i32 1, i32 3>
  %i.bty = shufflevector <2 x i32> %i.btx, <2 x i32> %i.btw, <2 x i32> <i32 0, i32 3>
  %i.btz = and <2 x i32> %i.bty, <i32 240, i32 -1> ; 2 uses
  %i.bua = extractelement <2 x i32> %i.btz, i64 0
  %i.bub = or disjoint i32 %i.bua, %i.btv         ; 2 uses
  %i.buc = extractelement <2 x i32> %i.btz, i64 1
  %i.bud = and i32 %i.buc, 15
  %i.bue = or disjoint i32 %i.bud, %i.bub         ; 2 uses
  %i.buf = getelementptr inbounds nuw i8, ptr %i.btt, i64 544
  %i.bug = lshr i32 %i.bub, 6
  %i.buh = zext nneg i32 %i.bug to i64
  %i.bui = getelementptr inbounds nuw [8 x i8], ptr %i.buf, i64 %i.buh
  %i.buj = load i64, ptr %i.bui, align 8, !tbaa !43
  %i.buk = and i32 %i.bue, 63
  %i.bul = zext nneg i32 %i.buk to i64
  %i.bum = shl nuw i64 1, %i.bul
  %i.bun = and i64 %i.buj, %i.bum
  %.not.i.i.i.i.i = icmp eq i64 %i.bun, 0
  %i.buo = getelementptr inbounds nuw i8, ptr %i.btt, i64 1088
  %i.bup = zext nneg i32 %i.bue to i64
  %i.buq = getelementptr inbounds nuw [8 x i8], ptr %i.buo, i64 %i.bup ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.noexc168.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.bur = load i64, ptr %i.buq, align 8, !tbaa !99
  %i.bus = getelementptr inbounds i8, ptr %i.btt, i64 %i.bur
  %i.but = shl i32 %i.bry, 6
  %i.buu = and i32 %i.but, 448
  %i.buv = shl <2 x i32> %i.brz, <i32 3, i32 0>
  %i.buw = and <2 x i32> %i.buv, <i32 56, i32 7>  ; 2 uses
  %i.bux = extractelement <2 x i32> %i.buw, i64 0
  %i.buy = or disjoint i32 %i.bux, %i.buu
  %i.buz = extractelement <2 x i32> %i.buw, i64 1
  %i.bva = or disjoint i32 %i.buy, %i.buz
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bus, i64 96
  %i.bvc = zext nneg i32 %i.bva to i64
  %i.bvd = getelementptr inbounds nuw [4 x i8], ptr %i.bvb, i64 %i.bvc
  br label %.noexc168.i.i

bb.ev:                                            ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bss, i64 20
  br label %.noexc168.i.i

.loopexit.i.i.i316:                               ; preds = %bb.er, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i312
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bse, i64 28
  br label %.noexc168.i.i

.noexc168.i.i:                                    ; preds = %.loopexit.i.i.i316, %bb.ev, %bb.eu, %bb.et, %bb.es
  %.1.in.i.i.i = phi ptr [ %i.bvf, %.loopexit.i.i.i316 ], [ %i.bve, %bb.ev ], [ %i.buq, %bb.et ], [ %i.bvd, %bb.eu ], [ %i.btr, %bb.es ]
  %.1.i.i.i = load float, ptr %.1.in.i.i.i, align 4, !tbaa !99 ; 2 uses
  %i.bvg = add nsw i32 %i.bsb, 1
  store i32 %i.bvg, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.bvh = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bse, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.bvi = load i32, ptr %i.bid, align 4, !tbaa !76
  %i.bvj = add nsw i32 %i.bvi, 1
  store i32 %i.bvj, ptr %i.bid, align 4, !tbaa !76
  %i.bvk = load i64, ptr %i.bsc, align 8, !tbaa !43
  %i.bvl = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bvk
  %i.bvm = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bvl, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.bvn = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.bvo = add nsw i32 %i.bvn, -1
  store i32 %i.bvo, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.bvp = load i64, ptr %i.bsc, align 8, !tbaa !43
  %i.bvq = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bvp
  %i.bvr = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bvq, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %i.bvs = load i32, ptr %2, align 8, !tbaa !76
  %i.bvt = add nsw i32 %i.bvs, 1
  store i32 %i.bvt, ptr %2, align 8, !tbaa !76
  %i.bvu = load i64, ptr %i.bsc, align 8, !tbaa !43
  %i.bvv = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bvu
  %i.bvw = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bvv, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %i.bvx = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.bvy = add nsw i32 %i.bvx, 1
  store i32 %i.bvy, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.bvz = load i64, ptr %i.bsc, align 8, !tbaa !43
  %i.bwa = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bvz
  %i.bwb = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bwa, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.bwc = load i32, ptr %i.bid, align 4, !tbaa !76
  %i.bwd = add nsw i32 %i.bwc, -1
  store i32 %i.bwd, ptr %i.bid, align 4, !tbaa !76
  %i.bwe = load i64, ptr %i.bsc, align 8, !tbaa !43
  %i.bwf = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bwe
  %i.bwg = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bwf, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.bwh = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.bwi = add nsw i32 %i.bwh, -1
  store i32 %i.bwi, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.bwj = load i64, ptr %i.bsc, align 8, !tbaa !43
  %i.bwk = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bwj
  %i.bwl = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bwk, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bwm = extractelement <3 x float> %i.bqx, i64 2
  %i.bwn = call { <2 x float>, <2 x float> } @_ZNK4pbrt13NanoVDBMedium2LeENS_6Point3IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(404) %i.bhk, <2 x float> %i.bqy, float %i.bwm, ptr noundef nonnull align 4 dereferenceable(32) %i.bgt) ; 0 uses
  %i.bwo = load i8, ptr %i.bhm, align 4, !tbaa !220, !range !115, !noundef !44
  %i.bwp = trunc nuw i8 %i.bwo to i1
  br i1 %i.bwp, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i, label %.noexc133.i.i

.noexc133.i.i:                                    ; preds = %.noexc168.i.i
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef 235, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(4) @.str.22) #29
  unreachable

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i: ; preds = %.noexc168.i.i
  %i.bwq = fsub float %i.bvh, %.1.i.i.i
  %i.bwr = fmul float %i.brx, %i.bwq
  %i.bws = fadd float %.1.i.i.i, %i.bwr           ; 2 uses
  %i.bwt = fsub float %i.bvm, %i.bvr
  %i.bwu = fmul float %i.brx, %i.bwt
  %i.bwv = fadd float %i.bvr, %i.bwu
  %i.bww = fsub float %i.bwv, %i.bws
  %i.bwx = fmul float %i.brw, %i.bww
  %i.bwy = fadd float %i.bws, %i.bwx              ; 2 uses
  %i.bwz = fsub float %i.bwg, %i.bwl
  %i.bxa = fmul float %i.brx, %i.bwz
  %i.bxb = fadd float %i.bwl, %i.bxa              ; 2 uses
  %i.bxc = fsub float %i.bwb, %i.bvw
  %i.bxd = fmul float %i.brx, %i.bxc
  %i.bxe = fadd float %i.bvw, %i.bxd
  %i.bxf = fsub float %i.bxe, %i.bxb
  %i.bxg = fmul float %i.brw, %i.bxf
  %i.bxh = fadd float %i.bxb, %i.bxg
  %i.bxi = fsub float %i.bxh, %i.bwy
  %i.bxj = fmul float %i.brv, %i.bxi
  %.sroa.04.0.copyload.i.i317 = load <2 x float>, ptr %i.bhn, align 4
  %.sroa.25.0.copyload.i.i318 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i277, align 4, !tbaa !99
  %22 = fadd float %i.bwy, %i.bxj
  %23 = shufflevector <2 x float> %i.bpr, <2 x float> %i.bpq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %24 = insertelement <4 x float> poison, float %22, i64 0
  %i.bxk = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bxl = fmul <4 x float> %23, %i.bxk
  %i.bxm = shufflevector <2 x float> %.sroa.0.0.i.i.i305, <2 x float> %.sroa.6.0.i.i.i308, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.bxn = insertelement <4 x float> %i.bxm, float %.sink.i.i.i, i64 1
  %i.bxo = insertelement <4 x float> %i.bxn, float %.sink30.i.i.i311, i64 3
  %i.bxp = fmul <4 x float> %i.bxo, %i.bxk
  %i.bxq = shufflevector <2 x float> %.sroa.04.0.copyload.i.i317, <2 x float> %.sroa.25.0.copyload.i.i318, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bxr = fsub <4 x float> %i.bxq, %i.bxp
  %i.bxs = fsub <4 x float> %i.bxr, %i.bxl        ; 2 uses
  %i.bxt = fcmp ogt <4 x float> %i.bxs, zeroinitializer
  %i.bxu = select <4 x i1> %i.bxt, <4 x float> %i.bxs, <4 x float> zeroinitializer
  %i.bxv = fmul <4 x float> %i.bne, %i.bxu
  %i.bxw = load <4 x float>, ptr %.sroa.018.0.copyload.i260, align 4, !tbaa !53
  %i.bxx = fmul <4 x float> %i.bne, %i.bxq        ; 2 uses
  %25 = shufflevector <4 x float> %i.bxx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %26 = fdiv <4 x float> %i.bxv, %25              ; 2 uses
  %27 = fmul <4 x float> %26, %i.bxw
  store <4 x float> %27, ptr %.sroa.018.0.copyload.i260, align 4, !tbaa !53
  %i.bxy = fdiv <4 x float> %i.bxx, %25
  %i.bxz = load <4 x float>, ptr %.sroa.2.0.copyload.i262, align 4, !tbaa !53
  %i.bya = fmul <4 x float> %i.bxy, %i.bxz
  store <4 x float> %i.bya, ptr %.sroa.2.0.copyload.i262, align 4, !tbaa !53
  %i.byb = load <4 x float>, ptr %.sroa.319.0.copyload.i264, align 4, !tbaa !53
  %i.byc = fmul <4 x float> %26, %i.byb           ; 3 uses
  store <4 x float> %i.byc, ptr %.sroa.319.0.copyload.i264, align 4, !tbaa !53
  %.sroa.0.0.copyload4.i103.i.i.i326 = load <2 x float>, ptr %.sroa.2.0.copyload.i262, align 4
  %.sroa.8.0.copyload.i105.i.i.i327 = load <2 x float>, ptr %i.bii, align 4, !tbaa !99
  %i.byd = shufflevector <4 x float> %i.byc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bye = fadd <2 x float> %i.byd, %.sroa.0.0.copyload4.i103.i.i.i326 ; 2 uses
  %i.byf = shufflevector <4 x float> %i.byc, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.byg = fadd <2 x float> %i.byf, %.sroa.8.0.copyload.i105.i.i.i327 ; 2 uses
  %shift410 = shufflevector <2 x float> %i.bye, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop411 = fadd <2 x float> %i.bye, %shift410
  %foldExtExtBinop413 = fadd <2 x float> %foldExtExtBinop411, %i.byg
  %shift415 = shufflevector <2 x float> %i.byg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop416 = fadd <2 x float> %shift415, %foldExtExtBinop413
  %i.byh = extractelement <2 x float> %foldExtExtBinop416, i64 0
  %i.byi = fmul float %i.byh, 2.500000e-01        ; 3 uses
  %.sroa.0.0.copyload4.i116.i.i.i332 = load <2 x float>, ptr %.sroa.018.0.copyload.i260, align 4 ; 4 uses
  %.sroa.8.0.copyload.i118.i.i.i333 = load <2 x float>, ptr %i.bih, align 4 ; 3 uses
  %.sroa.0.0.vec.extract.i119.i.i.i334 = extractelement <2 x float> %.sroa.0.0.copyload4.i116.i.i.i332, i64 0
  %.sroa.0.4.vec.extract.i121.i.i.i335 = extractelement <2 x float> %.sroa.0.0.copyload4.i116.i.i.i332, i64 1 ; 2 uses
  %i.byj = insertelement <2 x float> poison, float %i.byi, i64 0
  %i.byk = shufflevector <2 x float> %i.byj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.byl = fdiv <2 x float> %.sroa.0.0.copyload4.i116.i.i.i332, %i.byk ; 2 uses
  %.sroa.8.8.vec.extract.i123.i.i.i336 = extractelement <2 x float> %.sroa.8.0.copyload.i118.i.i.i333, i64 0 ; 3 uses
  %i.bym = fdiv float %.sroa.8.8.vec.extract.i123.i.i.i336, %i.byi ; 2 uses
  %.sroa.8.12.vec.extract.i125.i.i.i337 = extractelement <2 x float> %.sroa.8.0.copyload.i118.i.i.i333, i64 1 ; 3 uses
  %i.byn = fdiv float %.sroa.8.12.vec.extract.i125.i.i.i337, %i.byi ; 2 uses
  %i.byo = extractelement <2 x float> %i.byl, i64 0 ; 2 uses
  %i.byp = extractelement <2 x float> %i.byl, i64 1 ; 2 uses
  %i.byq = fcmp olt float %i.byo, %i.byp
  %.sroa.speculated.i129.i.i.i338 = select i1 %i.byq, float %i.byp, float %i.byo ; 2 uses
  %i.byr = fcmp olt float %.sroa.speculated.i129.i.i.i338, %i.bym
  %.sroa.speculated.1.i130.i.i.i339 = select i1 %i.byr, float %i.bym, float %.sroa.speculated.i129.i.i.i338 ; 2 uses
  %i.bys = fcmp olt float %.sroa.speculated.1.i130.i.i.i339, %i.byn
  %.sroa.speculated.2.i131.i.i.i340 = select i1 %i.bys, float %i.byn, float %.sroa.speculated.1.i130.i.i.i339
  %i.byt = fcmp olt float %.sroa.speculated.2.i131.i.i.i340, 5.000000e-02
  br i1 %i.byt, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i
  %i.byu = load i64, ptr %.sroa.420.0.copyload.i266, align 8, !tbaa !211 ; 4 uses
  %i.byv = mul i64 %i.byu, 6364136223846793005
  %i.byw = load i64, ptr %i.bij, align 8, !tbaa !210
  %i.byx = add i64 %i.byv, %i.byw
  store i64 %i.byx, ptr %.sroa.420.0.copyload.i266, align 8, !tbaa !211
  %i.byy = lshr i64 %i.byu, 45
  %i.byz = lshr i64 %i.byu, 27
  %i.bza = xor i64 %i.byy, %i.byz
  %i.bzb = trunc i64 %i.bza to i32                ; 2 uses
  %i.bzc = lshr i64 %i.byu, 59
  %i.bzd = trunc nuw nsw i64 %i.bzc to i32
  %i.bze = call noundef i32 @llvm.fshr.i32(i32 %i.bzb, i32 %i.bzb, i32 %i.bzd)
  %i.bzf = uitofp i32 %i.bze to float
  %i.bzg = fmul nnan float %i.bzf, f0x2F800000    ; 2 uses
  %i.bzh = fcmp olt float %i.bzg, f0x3F7FFFFF
  %.sroa.speculated.i132.i.i.i344 = select i1 %i.bzh, float %i.bzg, float f0x3F7FFFFF
  %i.bzi = fcmp olt float %.sroa.speculated.i132.i.i.i344, 7.500000e-01
  br i1 %i.bzi, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.018.0.copyload.i260, i8 0, i64 16, i1 false)
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  %i.bzj = shufflevector <2 x float> %.sroa.0.0.copyload4.i116.i.i.i332, <2 x float> %.sroa.8.0.copyload.i118.i.i.i333, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bzk = fmul <4 x float> %i.bzj, splat (float 4.000000e+00) ; 2 uses
  %i.bzl = fmul float %.sroa.0.4.vec.extract.i121.i.i.i335, 4.000000e+00
  %i.bzm = fmul float %.sroa.8.8.vec.extract.i123.i.i.i336, 4.000000e+00
  %i.bzn = fmul float %.sroa.8.12.vec.extract.i125.i.i.i337, 4.000000e+00
  store <4 x float> %i.bzk, ptr %.sroa.018.0.copyload.i260, align 4, !tbaa !53
  %i.bzo = extractelement <4 x float> %i.bzk, i64 0
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i
  %i.bzp = phi float [ %i.bzn, %bb.ey ], [ 0.000000e+00, %bb.ex ], [ %.sroa.8.12.vec.extract.i125.i.i.i337, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i ]
  %i.bzq = phi float [ %i.bzm, %bb.ey ], [ 0.000000e+00, %bb.ex ], [ %.sroa.8.8.vec.extract.i123.i.i.i336, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i ]
  %i.bzr = phi float [ %i.bzl, %bb.ey ], [ 0.000000e+00, %bb.ex ], [ %.sroa.0.4.vec.extract.i121.i.i.i335, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i ]
  %i.bzs = phi float [ %i.bzo, %bb.ey ], [ 0.000000e+00, %bb.ex ], [ %.sroa.0.0.vec.extract.i119.i.i.i334, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i ]
  %i.bzt = fcmp une float %i.bzs, 0.000000e+00
  %i.bzu = fcmp une float %i.bzr, 0.000000e+00
  %or.cond.i.i.i.i341 = or i1 %i.bzu, %i.bzt
  %i.bzv = fcmp une float %i.bzq, 0.000000e+00
  %or.cond14.i.i.i.i342 = or i1 %i.bzv, %or.cond.i.i.i.i341
  %i.bzw = fcmp une float %i.bzp, 0.000000e+00
  %or.cond17.i.i.i.i343 = or i1 %i.bzw, %or.cond14.i.i.i.i342
  br i1 %or.cond17.i.i.i.i343, label %bb.du, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_13NanoVDBMediumEEEDaSH_.exit"

bb.fa:                                            ; preds = %bb.dv
  %i.bzx = fsub float %i.bjx, %.073.i.i283        ; 2 uses
  %i.bzy = call float @llvm.fabs.f32(float %i.bzx)
  %i.bzz = fcmp oeq float %i.bzy, +inf
  %.neg.i.i287 = fneg float %i.bzx
  %i.caa = select i1 %i.bzz, float f0xFF7FFFFF, float %.neg.i.i287 ; 4 uses
  %.sroa.0.0.copyload.i.i141.i.i = load <2 x float>, ptr %i.bhn, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i143.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i277, align 4, !tbaa !99 ; 2 uses
  %.sroa.0.0.vec.extract.i.i144.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i141.i.i, i64 0
  %i.cab = fmul float %i.caa, %.sroa.0.0.vec.extract.i.i144.i.i
  %.sroa.0.4.vec.extract.i.i146.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i141.i.i, i64 1
  %i.cac = fmul float %i.caa, %.sroa.0.4.vec.extract.i.i146.i.i
  %.sroa.6.8.vec.extract.i.i148.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i143.i.i, i64 0
  %i.cad = fmul float %i.caa, %.sroa.6.8.vec.extract.i.i148.i.i
  %.sroa.6.12.vec.extract.i.i150.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i143.i.i, i64 1
  %i.cae = fmul float %i.caa, %.sroa.6.12.vec.extract.i.i150.i.i
  %i.caf = fmul float %i.cab, f0x3FB8AA3B         ; 2 uses
  %i.cag = call noundef float @llvm.floor.f32(float %i.caf) ; 2 uses
  %i.cah = fsub float %i.caf, %i.cag              ; 3 uses
  %i.cai = fptosi float %i.cag to i32
  %i.caj = call noundef float @llvm.fma.f32(float %i.cah, float f0x3DA00AC9, float f0x3E679A0B)
  %i.cak = call noundef float @llvm.fma.f32(float %i.cah, float %i.caj, float f0x3F321004)
  %i.cal = call noundef float @llvm.fma.f32(float %i.cah, float %i.cak, float 1.000000e+00)
  %i.cam = bitcast float %i.cal to i32            ; 2 uses
  %i.can = lshr i32 %i.cam, 23
  %i.cao = add i32 %i.cai, -127
  %i.cap = add i32 %i.cao, %i.can                 ; 3 uses
  %i.caq = icmp slt i32 %i.cap, -126
  br i1 %i.caq, label %_ZN4pbrt7FastExpEf.exit.i154.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.car = icmp sgt i32 %i.cap, 127
  br i1 %i.car, label %_ZN4pbrt7FastExpEf.exit.i154.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.cas = and i32 %i.cam, -2139095041
  %i.cat = shl nsw i32 %i.cap, 23
  %i.cau = add nsw i32 %i.cat, 1065353216
  %i.cav = or i32 %i.cau, %i.cas
  %i.caw = bitcast i32 %i.cav to float
  br label %_ZN4pbrt7FastExpEf.exit.i154.i.i

_ZN4pbrt7FastExpEf.exit.i154.i.i:                 ; preds = %bb.fc, %bb.fb, %bb.fa
  %.0.i.i155.i.i = phi float [ %i.caw, %bb.fc ], [ 0.000000e+00, %bb.fa ], [ +inf, %bb.fb ]
  %i.cax = fmul float %i.cac, f0x3FB8AA3B         ; 2 uses
  %i.cay = call noundef float @llvm.floor.f32(float %i.cax) ; 2 uses
  %i.caz = fsub float %i.cax, %i.cay              ; 3 uses
  %i.cba = fptosi float %i.cay to i32
  %i.cbb = call noundef float @llvm.fma.f32(float %i.caz, float f0x3DA00AC9, float f0x3E679A0B)
  %i.cbc = call noundef float @llvm.fma.f32(float %i.caz, float %i.cbb, float f0x3F321004)
  %i.cbd = call noundef float @llvm.fma.f32(float %i.caz, float %i.cbc, float 1.000000e+00)
  %i.cbe = bitcast float %i.cbd to i32            ; 2 uses
  %i.cbf = lshr i32 %i.cbe, 23
  %i.cbg = add i32 %i.cba, -127
  %i.cbh = add i32 %i.cbg, %i.cbf                 ; 3 uses
  %i.cbi = icmp slt i32 %i.cbh, -126
  br i1 %i.cbi, label %_ZN4pbrt7FastExpEf.exit.1.i156.i.i, label %bb.fd

bb.fd:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i154.i.i
  %i.cbj = icmp sgt i32 %i.cbh, 127
  br i1 %i.cbj, label %_ZN4pbrt7FastExpEf.exit.1.i156.i.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.cbk = and i32 %i.cbe, -2139095041
  %i.cbl = shl nsw i32 %i.cbh, 23
  %i.cbm = add nsw i32 %i.cbl, 1065353216
  %i.cbn = or i32 %i.cbm, %i.cbk
  %i.cbo = bitcast i32 %i.cbn to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i156.i.i

_ZN4pbrt7FastExpEf.exit.1.i156.i.i:               ; preds = %bb.fe, %bb.fd, %_ZN4pbrt7FastExpEf.exit.i154.i.i
  %.0.i.1.i157.i.i = phi float [ %i.cbo, %bb.fe ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i154.i.i ], [ +inf, %bb.fd ]
  %i.cbp = fmul float %i.cad, f0x3FB8AA3B         ; 2 uses
  %i.cbq = call noundef float @llvm.floor.f32(float %i.cbp) ; 2 uses
  %i.cbr = fsub float %i.cbp, %i.cbq              ; 3 uses
  %i.cbs = fptosi float %i.cbq to i32
  %i.cbt = call noundef float @llvm.fma.f32(float %i.cbr, float f0x3DA00AC9, float f0x3E679A0B)
  %i.cbu = call noundef float @llvm.fma.f32(float %i.cbr, float %i.cbt, float f0x3F321004)
  %i.cbv = call noundef float @llvm.fma.f32(float %i.cbr, float %i.cbu, float 1.000000e+00)
  %i.cbw = bitcast float %i.cbv to i32            ; 2 uses
  %i.cbx = lshr i32 %i.cbw, 23
  %i.cby = add i32 %i.cbs, -127
  %i.cbz = add i32 %i.cby, %i.cbx                 ; 3 uses
  %i.cca = icmp slt i32 %i.cbz, -126
  br i1 %i.cca, label %_ZN4pbrt7FastExpEf.exit.2.i158.i.i, label %bb.ff

bb.ff:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i156.i.i
  %i.ccb = icmp sgt i32 %i.cbz, 127
  br i1 %i.ccb, label %_ZN4pbrt7FastExpEf.exit.2.i158.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ccc = and i32 %i.cbw, -2139095041
  %i.ccd = shl nsw i32 %i.cbz, 23
  %i.cce = add nsw i32 %i.ccd, 1065353216
  %i.ccf = or i32 %i.cce, %i.ccc
  %i.ccg = bitcast i32 %i.ccf to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i158.i.i

_ZN4pbrt7FastExpEf.exit.2.i158.i.i:               ; preds = %bb.fg, %bb.ff, %_ZN4pbrt7FastExpEf.exit.1.i156.i.i
  %.0.i.2.i159.i.i = phi float [ %i.ccg, %bb.fg ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i156.i.i ], [ +inf, %bb.ff ]
  %i.cch = fmul float %i.cae, f0x3FB8AA3B         ; 2 uses
  %i.cci = call noundef float @llvm.floor.f32(float %i.cch) ; 2 uses
  %i.ccj = fsub float %i.cch, %i.cci              ; 3 uses
  %i.cck = fptosi float %i.cci to i32
  %i.ccl = call noundef float @llvm.fma.f32(float %i.ccj, float f0x3DA00AC9, float f0x3E679A0B)
  %i.ccm = call noundef float @llvm.fma.f32(float %i.ccj, float %i.ccl, float f0x3F321004)
  %i.ccn = call noundef float @llvm.fma.f32(float %i.ccj, float %i.ccm, float 1.000000e+00)
  %i.cco = bitcast float %i.ccn to i32            ; 2 uses
  %i.ccp = lshr i32 %i.cco, 23
  %i.ccq = add i32 %i.cck, -127
  %i.ccr = add i32 %i.ccq, %i.ccp                 ; 3 uses
  %i.ccs = icmp slt i32 %i.ccr, -126
  br i1 %i.ccs, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i158.i.i
  %i.cct = icmp sgt i32 %i.ccr, 127
end_hunk_0
