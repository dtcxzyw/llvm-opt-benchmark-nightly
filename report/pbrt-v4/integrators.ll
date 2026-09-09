Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZNK4pbrt10Integrator2TrERKNS_11InteractionES3_RKNS_18SampledWavelengthsE:bb.a
  %.sroa.0306.17 = phi <2 x float> [ %.sroa.0306.19, %.thread.i.i242.i.i.i ], [ %.sroa.0306.0, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i235.i.i.i.preheader ] ; 2 uses
  %.sroa.0198.0319.i47.i.i.i.i = phi <2 x float> [ %.sroa.0198.4.i.i.i.i.i, %.thread.i.i242.i.i.i ], [ splat (float 1.000000e+00), %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i235.i.i.i.preheader ] ; 2 uses
  %.sroa.21.0320.i46.i.i.i.i = phi <2 x float> [ %.sroa.21.4.i.i243.i.i.i, %.thread.i.i242.i.i.i ], [ splat (float 1.000000e+00), %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i235.i.i.i.preheader ] ; 2 uses
  %.054321.i45.i.i.i.i = phi float [ %.2.i.i244.i.i.i, %.thread.i.i242.i.i.i ], [ %.sroa.speculated.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i235.i.i.i.preheader ] ; 2 uses
  %i.bgl = phi <4 x float> [ %i.bzq, %.thread.i.i242.i.i.i ], [ %i.fp, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i235.i.i.i.preheader ] ; 2 uses
  %i.bgm = load float, ptr %i.fg, align 4, !tbaa !189 ; 2 uses
  %i.bgn = fcmp oeq float %i.bgm, 0.000000e+00
  br i1 %i.bgn, label %.noexc158, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit97.i.i236.i.i.i

.noexc158:                                        ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i235.i.i.i
  %i.bgo = load float, ptr %i.fh, align 4, !tbaa !303
  %i.bgp = load float, ptr %8, align 4, !tbaa !304
  %i.bgq = fsub float %i.bgo, %i.bgp              ; 2 uses
  %i.bgr = call float @llvm.fabs.f32(float %i.bgq)
  %i.bgs = fcmp oeq float %i.bgr, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %.neg282.i.i.i.i.i = fneg float %i.bgq
  %i.bgt = select i1 %i.bgs, float f0xFF7FFFFF, float %.neg282.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i289.i.i.i = load <2 x float>, ptr %i.fg, align 4
  %.sroa.6.0.copyload.i.i.i.i290.i.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i105.i.i232.i.i.i, align 4, !tbaa !47
  %i.bgu = insertelement <2 x float> poison, float %i.bgt, i64 0
  %i.bgv = shufflevector <2 x float> %i.bgu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bgw = fmul <2 x float> %.sroa.0.0.copyload.i.i.i.i289.i.i.i, %i.bgv
  %i.bgx = fmul <2 x float> %i.bgv, %.sroa.6.0.copyload.i.i.i.i290.i.i.i
  store <2 x float> %i.bgw, ptr %9, align 8
  store <2 x float> %i.bgx, ptr %i.fj, align 8
  %i.bgy = call { <2 x float>, <2 x float> } @_ZN4pbrt7FastExpERKNS_15SampledSpectrumE(ptr noundef nonnull align 4 dereferenceable(16) %9) ; 2 uses
  %i.bgz = extractvalue { <2 x float>, <2 x float> } %i.bgy, 0
  %i.bha = extractvalue { <2 x float>, <2 x float> } %i.bgy, 1
  %i.bhb = fmul <2 x float> %.sroa.0198.0319.i47.i.i.i.i, %i.bgz
  %i.bhc = fmul <2 x float> %.sroa.21.0320.i46.i.i.i.i, %i.bha
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %.thread.i.i242.i.i.i

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit97.i.i236.i.i.i: ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i235.i.i.i
  %i.bhd = load float, ptr %8, align 4, !tbaa !304
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit97.i.i236.i.i.i
  %.sroa.0441.18 = phi i64 [ %.sroa.0441.17, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit97.i.i236.i.i.i ], [ %i.bhl, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ] ; 4 uses
  %.sroa.41.18 = phi <2 x float> [ %.sroa.41.17, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit97.i.i236.i.i.i ], [ %i.bwd, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ] ; 2 uses
  %.sroa.0306.18 = phi <2 x float> [ %.sroa.0306.17, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit97.i.i236.i.i.i ], [ %i.bwc, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ] ; 2 uses
  %i.bhe = phi float [ %i.bgm, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit97.i.i236.i.i.i ], [ %.sroa.0.0.vec.extract.i.i136.i.i274.i.i.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ]
  %.sroa.0198.1.i.i.i.i.i = phi <2 x float> [ %.sroa.0198.0319.i47.i.i.i.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit97.i.i236.i.i.i ], [ splat (float 1.000000e+00), %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ] ; 2 uses
  %.sroa.21.1.i.i237.i.i.i = phi <2 x float> [ %.sroa.21.0320.i46.i.i.i.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit97.i.i236.i.i.i ], [ splat (float 1.000000e+00), %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ] ; 2 uses
  %.073.i.i238.i.i.i = phi float [ %i.bhd, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit97.i.i236.i.i.i ], [ %i.bhj, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ] ; 3 uses
  %.1.i.i239.i.i.i = phi float [ %.054321.i45.i.i.i.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit97.i.i236.i.i.i ], [ %.sroa.speculated.i.i.i240.i.i.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ]
  %i.bhf = phi <4 x float> [ %i.bgl, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit97.i.i236.i.i.i ], [ %.fr1324, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ] ; 2 uses
  %i.bhg = fsub float 1.000000e+00, %.1.i.i239.i.i.i
  %i.bhh = call noundef float @logf(float noundef %i.bhg) #38
  %i.bhi = fdiv float %i.bhh, %i.bhe
  %i.bhj = fsub float %.073.i.i238.i.i.i, %i.bhi  ; 5 uses
  %i.bhk = mul i64 %.sroa.0441.18, 6364136223846793005
  %i.bhl = add i64 %i.bhk, %i.bb                  ; 3 uses
  %i.bhm = lshr i64 %.sroa.0441.18, 45
  %i.bhn = lshr i64 %.sroa.0441.18, 27
  %i.bho = xor i64 %i.bhm, %i.bhn
  %i.bhp = trunc i64 %i.bho to i32                ; 2 uses
  %i.bhq = lshr i64 %.sroa.0441.18, 59
  %i.bhr = trunc nuw nsw i64 %i.bhq to i32
  %i.bhs = call noundef i32 @llvm.fshr.i32(i32 %i.bhp, i32 %i.bhp, i32 %i.bhr)
  %i.bht = uitofp i32 %i.bhs to float
  %i.bhu = fmul nnan float %i.bht, f0x2F800000    ; 2 uses
  %i.bhv = fcmp olt float %i.bhu, f0x3F7FFFFF
  %.sroa.speculated.i.i.i240.i.i.i = select i1 %i.bhv, float %i.bhu, float f0x3F7FFFFF ; 2 uses
  %i.bhw = load float, ptr %i.fh, align 4, !tbaa !303 ; 2 uses
  %i.bhx = fcmp olt float %i.bhj, %i.bhw
  br i1 %i.bhx, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit103.i.i245.i.i.i, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit141.i.i.i.i.i

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit103.i.i245.i.i.i: ; preds = %bb.cp
  %i.bhy = fsub float %i.bhj, %.073.i.i238.i.i.i
  %i.bhz = fneg float %i.bhy                      ; 4 uses
  %.sroa.0.0.copyload.i.i104.i.i246.i.i.i = load <2 x float>, ptr %i.fg, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i106.i.i247.i.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i105.i.i232.i.i.i, align 4, !tbaa !47 ; 2 uses
  %.sroa.0.0.vec.extract.i.i107.i.i248.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i104.i.i246.i.i.i, i64 0
  %i.bia = fmul float %.sroa.0.0.vec.extract.i.i107.i.i248.i.i.i, %i.bhz
  %.sroa.0.4.vec.extract.i.i109.i.i249.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i104.i.i246.i.i.i, i64 1
  %i.bib = fmul float %.sroa.0.4.vec.extract.i.i109.i.i249.i.i.i, %i.bhz
  %.sroa.6.8.vec.extract.i.i111.i.i250.i.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i106.i.i247.i.i.i, i64 0
  %i.bic = fmul float %.sroa.6.8.vec.extract.i.i111.i.i250.i.i.i, %i.bhz
  %.sroa.6.12.vec.extract.i.i113.i.i251.i.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i106.i.i247.i.i.i, i64 1
  %i.bid = fmul float %.sroa.6.12.vec.extract.i.i113.i.i251.i.i.i, %i.bhz
  %i.bie = fmul float %i.bia, f0x3FB8AA3B         ; 2 uses
  %i.bif = call noundef float @llvm.floor.f32(float %i.bie) ; 2 uses
  %i.big = fsub float %i.bie, %i.bif              ; 3 uses
  %i.bih = fptosi float %i.bif to i32
  %i.bii = call noundef float @llvm.fma.f32(float %i.big, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bij = call noundef float @llvm.fma.f32(float %i.big, float %i.bii, float f0x3F321004)
  %i.bik = call noundef float @llvm.fma.f32(float %i.big, float %i.bij, float 1.000000e+00)
  %i.bil = bitcast float %i.bik to i32            ; 2 uses
  %i.bim = lshr i32 %i.bil, 23
  %i.bin = add i32 %i.bih, -127
  %i.bio = add i32 %i.bin, %i.bim                 ; 3 uses
  %i.bip = icmp slt i32 %i.bio, -126
  br i1 %i.bip, label %_ZN4pbrt7FastExpEf.exit.i.i.i252.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit103.i.i245.i.i.i
  %i.biq = icmp sgt i32 %i.bio, 127
  br i1 %i.biq, label %_ZN4pbrt7FastExpEf.exit.i.i.i252.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.bir = and i32 %i.bil, -2139095041
  %i.bis = shl nsw i32 %i.bio, 23
  %i.bit = add nsw i32 %i.bis, 1065353216
  %i.biu = or i32 %i.bit, %i.bir
  %i.biv = bitcast i32 %i.biu to float
  br label %_ZN4pbrt7FastExpEf.exit.i.i.i252.i.i.i

_ZN4pbrt7FastExpEf.exit.i.i.i252.i.i.i:           ; preds = %bb.cr, %bb.cq, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit103.i.i245.i.i.i
  %.0.i.i.i.i253.i.i.i = phi float [ %i.biv, %bb.cr ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit103.i.i245.i.i.i ], [ +inf, %bb.cq ]
  %i.biw = fmul float %i.bib, f0x3FB8AA3B         ; 2 uses
  %i.bix = call noundef float @llvm.floor.f32(float %i.biw) ; 2 uses
  %i.biy = fsub float %i.biw, %i.bix              ; 3 uses
  %i.biz = fptosi float %i.bix to i32
  %i.bja = call noundef float @llvm.fma.f32(float %i.biy, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bjb = call noundef float @llvm.fma.f32(float %i.biy, float %i.bja, float f0x3F321004)
  %i.bjc = call noundef float @llvm.fma.f32(float %i.biy, float %i.bjb, float 1.000000e+00)
  %i.bjd = bitcast float %i.bjc to i32            ; 2 uses
  %i.bje = lshr i32 %i.bjd, 23
  %i.bjf = add i32 %i.biz, -127
  %i.bjg = add i32 %i.bjf, %i.bje                 ; 3 uses
  %i.bjh = icmp slt i32 %i.bjg, -126
  br i1 %i.bjh, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i254.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i.i.i252.i.i.i
  %i.bji = icmp sgt i32 %i.bjg, 127
  br i1 %i.bji, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i254.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bjj = and i32 %i.bjd, -2139095041
  %i.bjk = shl nsw i32 %i.bjg, 23
  %i.bjl = add nsw i32 %i.bjk, 1065353216
  %i.bjm = or i32 %i.bjl, %i.bjj
  %i.bjn = bitcast i32 %i.bjm to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i.i.i254.i.i.i

_ZN4pbrt7FastExpEf.exit.1.i.i.i254.i.i.i:         ; preds = %bb.ct, %bb.cs, %_ZN4pbrt7FastExpEf.exit.i.i.i252.i.i.i
  %.0.i.1.i.i.i255.i.i.i = phi float [ %i.bjn, %bb.ct ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i.i.i252.i.i.i ], [ +inf, %bb.cs ]
  %i.bjo = fmul float %i.bic, f0x3FB8AA3B         ; 2 uses
  %i.bjp = call noundef float @llvm.floor.f32(float %i.bjo) ; 2 uses
  %i.bjq = fsub float %i.bjo, %i.bjp              ; 3 uses
  %i.bjr = fptosi float %i.bjp to i32
  %i.bjs = call noundef float @llvm.fma.f32(float %i.bjq, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bjt = call noundef float @llvm.fma.f32(float %i.bjq, float %i.bjs, float f0x3F321004)
  %i.bju = call noundef float @llvm.fma.f32(float %i.bjq, float %i.bjt, float 1.000000e+00)
  %i.bjv = bitcast float %i.bju to i32            ; 2 uses
  %i.bjw = lshr i32 %i.bjv, 23
  %i.bjx = add i32 %i.bjr, -127
  %i.bjy = add i32 %i.bjx, %i.bjw                 ; 3 uses
  %i.bjz = icmp slt i32 %i.bjy, -126
  br i1 %i.bjz, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i256.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i.i.i254.i.i.i
  %i.bka = icmp sgt i32 %i.bjy, 127
  br i1 %i.bka, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i256.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.bkb = and i32 %i.bjv, -2139095041
  %i.bkc = shl nsw i32 %i.bjy, 23
  %i.bkd = add nsw i32 %i.bkc, 1065353216
  %i.bke = or i32 %i.bkd, %i.bkb
  %i.bkf = bitcast i32 %i.bke to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i.i.i256.i.i.i

_ZN4pbrt7FastExpEf.exit.2.i.i.i256.i.i.i:         ; preds = %bb.cv, %bb.cu, %_ZN4pbrt7FastExpEf.exit.1.i.i.i254.i.i.i
  %.0.i.2.i.i.i257.i.i.i = phi float [ %i.bkf, %bb.cv ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i.i.i254.i.i.i ], [ +inf, %bb.cu ]
  %i.bkg = fmul float %i.bid, f0x3FB8AA3B         ; 2 uses
  %i.bkh = call noundef float @llvm.floor.f32(float %i.bkg) ; 2 uses
  %i.bki = fsub float %i.bkg, %i.bkh              ; 3 uses
  %i.bkj = fptosi float %i.bkh to i32
  %i.bkk = call noundef float @llvm.fma.f32(float %i.bki, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bkl = call noundef float @llvm.fma.f32(float %i.bki, float %i.bkk, float f0x3F321004)
  %i.bkm = call noundef float @llvm.fma.f32(float %i.bki, float %i.bkl, float 1.000000e+00)
  %i.bkn = bitcast float %i.bkm to i32            ; 2 uses
  %i.bko = lshr i32 %i.bkn, 23
  %i.bkp = add i32 %i.bkj, -127
  %i.bkq = add i32 %i.bkp, %i.bko                 ; 3 uses
  %i.bkr = icmp slt i32 %i.bkq, -126
  br i1 %i.bkr, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i.i.i256.i.i.i
  %i.bks = icmp sgt i32 %i.bkq, 127
  br i1 %i.bks, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.bkt = and i32 %i.bkn, -2139095041
  %i.bku = shl nsw i32 %i.bkq, 23
  %i.bkv = add nsw i32 %i.bku, 1065353216
  %i.bkw = or i32 %i.bkv, %i.bkt
  %i.bkx = bitcast i32 %i.bkw to float
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %_ZN4pbrt7FastExpEf.exit.2.i.i.i256.i.i.i
  %.0.i.3.i.i.i258.i.i.i = phi float [ %i.bkx, %bb.cx ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2.i.i.i256.i.i.i ], [ +inf, %bb.cw ]
  %i.bky = shufflevector <2 x float> %.sroa.21.1.i.i237.i.i.i, <2 x float> %.sroa.0198.1.i.i.i.i.i, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bkz = insertelement <4 x float> poison, float %.0.i.3.i.i.i258.i.i.i, i64 0
  %i.bla = insertelement <4 x float> %i.bkz, float %.0.i.2.i.i.i257.i.i.i, i64 1
  %i.blb = insertelement <4 x float> %i.bla, float %.0.i.1.i.i.i255.i.i.i, i64 2
  %i.blc = insertelement <4 x float> %i.blb, float %.0.i.i.i.i253.i.i.i, i64 3
  %i.bld = fmul <4 x float> %i.bky, %i.blc        ; 3 uses
  %i.ble = insertelement <3 x float> poison, float %i.bhj, i64 0
  %i.blf = shufflevector <3 x float> %i.ble, <3 x float> poison, <3 x i32> zeroinitializer
  %i.blg = fmul <3 x float> %i.bfu, %i.blf
  %i.blh = fmul float %i.bfv, %i.bhj
  %i.bli = fadd <3 x float> %i.bgk, %i.blg        ; 3 uses
  %i.blj = fadd float %i.gn, %i.blh               ; 2 uses
  %i.blk = load float, ptr %3, align 4, !tbaa !189
  %i.bll = call noundef i64 @lroundf(float noundef %i.blk) #38
  %i.blm = load i32, ptr %i.bfy, align 8, !tbaa !297
  %i.bln = trunc i64 %i.bll to i32
  %i.blo = sub i32 %i.bln, %i.blm                 ; 2 uses
  %i.blp = icmp slt i32 %i.blo, 0
  br i1 %i.blp, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.blq = zext nneg i32 %i.blo to i64            ; 2 uses
  %i.blr = load i64, ptr %i.bfz, align 8, !tbaa !221
  %.not.i.i.i259.i.i.i = icmp ugt i64 %i.blr, %i.blq
  br i1 %.not.i.i.i259.i.i.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.bls = load ptr, ptr %i.bga, align 8, !tbaa !222
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %i.bls, i64 %i.blq
  %i.blu = load float, ptr %i.blt, align 4, !tbaa !189
  %.sroa.0.0.vec.insert.i179.i.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.blu, i64 0
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy
  %.sroa.0.0.i.i.i260.i.i.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i179.i.i.i.i.i, %bb.da ], [ zeroinitializer, %bb.cz ], [ zeroinitializer, %bb.cy ]
  %i.blv = load float, ptr %i.fa, align 4, !tbaa !189
  %i.blw = call noundef i64 @lroundf(float noundef %i.blv) #38
  %i.blx = load i32, ptr %i.bfy, align 8, !tbaa !297
  %i.bly = trunc i64 %i.blw to i32
  %i.blz = sub i32 %i.bly, %i.blx                 ; 2 uses
  %i.bma = icmp slt i32 %i.blz, 0
  br i1 %i.bma, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.bmb = zext nneg i32 %i.blz to i64            ; 2 uses
  %i.bmc = load i64, ptr %i.bfz, align 8, !tbaa !221
  %.not.1.i.i.i261.i.i.i = icmp ugt i64 %i.bmc, %i.bmb
  br i1 %.not.1.i.i.i261.i.i.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.bmd = load ptr, ptr %i.bga, align 8, !tbaa !222
  %i.bme = getelementptr inbounds nuw [4 x i8], ptr %i.bmd, i64 %i.bmb
  %i.bmf = load float, ptr %i.bme, align 4, !tbaa !189
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %.sink.i.i.i.i.i.i = phi float [ %i.bmf, %bb.dd ], [ 0.000000e+00, %bb.dc ], [ 0.000000e+00, %bb.db ]
  %i.bmg = load float, ptr %i.fb, align 4, !tbaa !189
  %i.bmh = call noundef i64 @lroundf(float noundef %i.bmg) #38
  %i.bmi = load i32, ptr %i.bfy, align 8, !tbaa !297
  %i.bmj = trunc i64 %i.bmh to i32
  %i.bmk = sub i32 %i.bmj, %i.bmi                 ; 2 uses
  %i.bml = icmp slt i32 %i.bmk, 0
  br i1 %i.bml, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.bmm = zext nneg i32 %i.bmk to i64            ; 2 uses
  %i.bmn = load i64, ptr %i.bfz, align 8, !tbaa !221
  %.not.2.i.i.i262.i.i.i = icmp ugt i64 %i.bmn, %i.bmm
  br i1 %.not.2.i.i.i262.i.i.i, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.bmo = load ptr, ptr %i.bga, align 8, !tbaa !222
  %i.bmp = getelementptr inbounds nuw [4 x i8], ptr %i.bmo, i64 %i.bmm
  %i.bmq = load float, ptr %i.bmp, align 4, !tbaa !189
  %.sroa.6.8.vec.insert.i.i.i288.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bmq, i64 0
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de
  %.sroa.6.0.i.i.i263.i.i.i = phi <2 x float> [ %.sroa.6.8.vec.insert.i.i.i288.i.i.i, %bb.dg ], [ zeroinitializer, %bb.df ], [ zeroinitializer, %bb.de ]
  %i.bmr = load float, ptr %i.fc, align 4, !tbaa !189
  %i.bms = call noundef i64 @lroundf(float noundef %i.bmr) #38
  %i.bmt = load i32, ptr %i.bfy, align 8, !tbaa !297
  %i.bmu = trunc i64 %i.bms to i32
  %i.bmv = sub i32 %i.bmu, %i.bmt                 ; 2 uses
  %i.bmw = icmp slt i32 %i.bmv, 0
  br i1 %i.bmw, label %.noexc125.i.i265.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.bmx = zext nneg i32 %i.bmv to i64            ; 2 uses
  %i.bmy = load i64, ptr %i.bfz, align 8, !tbaa !221
  %.not.3.i.i.i264.i.i.i = icmp ugt i64 %i.bmy, %i.bmx
  br i1 %.not.3.i.i.i264.i.i.i, label %bb.dj, label %.noexc125.i.i265.i.i.i

bb.dj:                                            ; preds = %bb.di
  %i.bmz = load ptr, ptr %i.bga, align 8, !tbaa !222
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %i.bmz, i64 %i.bmx
  %i.bnb = load float, ptr %i.bna, align 4, !tbaa !189
  br label %.noexc125.i.i265.i.i.i

.noexc125.i.i265.i.i.i:                           ; preds = %bb.dj, %bb.di, %bb.dh
  %.sink30.i.i.i266.i.i.i = phi float [ %i.bnb, %bb.dj ], [ 0.000000e+00, %bb.di ], [ 0.000000e+00, %bb.dh ]
  %i.bnc = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.bgb, ptr noundef nonnull align 4 dereferenceable(32) %3) ; 2 uses
  %i.bnd = load <8 x float>, ptr %i.bgc, align 8, !tbaa !189, !noalias !971 ; 4 uses
  %i.bne = load <4 x float>, ptr %i.bgd, align 8, !tbaa !189, !noalias !971
  %i.bnf = load <2 x float>, ptr %i.bge, align 8, !tbaa !189, !noalias !971
  %i.bng = shufflevector <3 x float> %i.bli, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bnh = fmul <2 x float> %i.bng, %i.bnf        ; 2 uses
  %shift1300 = shufflevector <2 x float> %i.bnh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1301 = fadd <2 x float> %i.bnh, %shift1300
  %i.bni = extractelement <2 x float> %foldExtExtBinop1301, i64 0
  %i.bnj = load float, ptr %i.bgf, align 8, !tbaa !189, !noalias !971
  %i.bnk = fmul float %i.blj, %i.bnj
  %i.bnl = load float, ptr %i.bgg, align 4, !tbaa !189, !noalias !971
  %i.bnm = fadd float %i.bnk, %i.bnl
  %i.bnn = fadd float %i.bni, %i.bnm              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38, !noalias !971
  store float %i.bnn, ptr %i.a, align 4, !tbaa !189, !noalias !971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38, !noalias !971
  store i32 0, ptr %i.b, align 4, !tbaa !49, !noalias !971
  %i.bno = fcmp une float %i.bnn, 0.000000e+00
  br i1 %i.bno, label %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i267.i.i.i, label %.noexc127.i.i.i.i.i

.noexc127.i.i.i.i.i:                              ; preds = %.noexc125.i.i265.i.i.i
  call void @_ZN4pbrt8LogFatalIJRA3_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.198, i32 noundef 393, ptr noundef nonnull @.str.199, ptr noundef nonnull align 1 dereferenceable(3) @.str.200, ptr noundef nonnull align 1 dereferenceable(2) @.str.201, ptr noundef nonnull align 1 dereferenceable(3) @.str.200, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.201, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #41
  unreachable

_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i267.i.i.i: ; preds = %.noexc125.i.i265.i.i.i
  %i.bnp = extractvalue { <2 x float>, <2 x float> } %i.bnc, 1
  %i.bnq = extractvalue { <2 x float>, <2 x float> } %i.bnc, 0
  %i.bnr = shufflevector <4 x float> %i.bne, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.bns = shufflevector <8 x float> %i.bnd, <8 x float> %i.bnr, <3 x i32> <i32 0, i32 5, i32 8>
  %i.bnt = fmul <3 x float> %i.bli, %i.bns
  %i.bnu = shufflevector <3 x float> %i.bli, <3 x float> poison, <3 x i32> <i32 1, i32 0, i32 1>
  %i.bnv = shufflevector <8 x float> %i.bnd, <8 x float> %i.bnr, <3 x i32> <i32 1, i32 4, i32 9>
  %i.bnw = fmul <3 x float> %i.bnu, %i.bnv
  %i.bnx = insertelement <3 x float> poison, float %i.blj, i64 0
  %i.bny = shufflevector <3 x float> %i.bnx, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bnz = shufflevector <8 x float> %i.bnd, <8 x float> %i.bnr, <3 x i32> <i32 2, i32 6, i32 10>
  %i.boa = fmul <3 x float> %i.bny, %i.bnz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38, !noalias !971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !971
  %i.bob = fcmp oeq float %i.bnn, 1.000000e+00
  %i.boc = load ptr, ptr %i.bgh, align 8, !tbaa !333, !noalias !971 ; 8 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 332
  %i.boe = getelementptr inbounds nuw i8, ptr %i.boc, i64 368
  %i.bof = load float, ptr %i.bod, align 4, !tbaa !189, !noalias !971
  %i.bog = getelementptr inbounds nuw i8, ptr %i.boc, i64 336
  %i.boh = load float, ptr %i.bog, align 8, !tbaa !189, !noalias !971
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boc, i64 340
  %i.boj = load float, ptr %i.boi, align 4, !tbaa !189, !noalias !971
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boc, i64 344
  %i.bol = getelementptr inbounds nuw i8, ptr %i.boc, i64 360
  %i.bom = getelementptr inbounds nuw i8, ptr %i.boc, i64 672 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.bon = fadd <3 x float> %i.bnt, %i.bnw
  %i.boo = shufflevector <8 x float> %i.bnd, <8 x float> %i.bnr, <3 x i32> <i32 3, i32 7, i32 11>
  %i.bop = fadd <3 x float> %i.boa, %i.boo
  %i.boq = fadd <3 x float> %i.bon, %i.bop        ; 2 uses
  %i.bor = insertelement <3 x float> poison, float %i.bnn, i64 0
  %i.bos = shufflevector <3 x float> %i.bor, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bot = fdiv <3 x float> %i.boq, %i.bos
  %i.bou = insertelement <3 x i1> poison, i1 %i.bob, i64 0
  %i.bov = shufflevector <3 x i1> %i.bou, <3 x i1> poison, <3 x i32> zeroinitializer
  %i.bow = select <3 x i1> %i.bov, <3 x float> %i.boq, <3 x float> %i.bot ; 3 uses
  %i.box = shufflevector <3 x float> %i.bow, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.boy = load <3 x float>, ptr %i.boe, align 8, !tbaa !189, !noalias !971
  %i.boz = fsub <3 x float> %i.bow, %i.boy        ; 6 uses
  %i.bpa = extractelement <3 x float> %i.boz, i64 2
  %i.bpb = fmul float %i.bpa, %i.boj
  %i.bpc = extractelement <3 x float> %i.boz, i64 1
  %i.bpd = call float @llvm.fma.f32(float %i.bpc, float %i.boh, float %i.bpb)
  %i.bpe = extractelement <3 x float> %i.boz, i64 0
  %i.bpf = call float @llvm.fma.f32(float %i.bpe, float %i.bof, float %i.bpd) ; 2 uses
  %i.bpg = load <4 x float>, ptr %i.bok, align 8, !tbaa !189, !noalias !971 ; 3 uses
  %i.bph = load <2 x float>, ptr %i.bol, align 8, !tbaa !189, !noalias !971
  %i.bpi = shufflevector <3 x float> %i.boz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bpj = shufflevector <2 x float> %i.bph, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bpk = shufflevector <4 x float> %i.bpg, <4 x float> %i.bpj, <2 x i32> <i32 2, i32 5>
  %i.bpl = fmul <2 x float> %i.bpi, %i.bpk
  %i.bpm = shufflevector <3 x float> %i.boz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bpn = shufflevector <4 x float> %i.bpg, <4 x float> %i.bpj, <2 x i32> <i32 1, i32 4>
  %i.bpo = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bpm, <2 x float> %i.bpn, <2 x float> %i.bpl)
  %i.bpp = shufflevector <3 x float> %i.boz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bpq = shufflevector <4 x float> %i.bpg, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bpr = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bpp, <2 x float> %i.bpq, <2 x float> %i.bpo) ; 3 uses
  %i.bps = call float @llvm.floor.f32(float %i.bpf) ; 2 uses
  %i.bpt = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bpr) ; 3 uses
  %i.bpu = fsub float %i.bpf, %i.bps
  %foldExtExtBinop1303 = fsub <2 x float> %i.bpr, %i.bpt
  %i.bpv = extractelement <2 x float> %foldExtExtBinop1303, i64 0 ; 2 uses
  %foldExtExtBinop1305 = fsub <2 x float> %i.bpr, %i.bpt
  %i.bpw = extractelement <2 x float> %foldExtExtBinop1305, i64 1 ; 4 uses
  %i.bpx = fptosi float %i.bps to i32             ; 5 uses
  %i.bpy = fptosi <2 x float> %i.bpt to <2 x i32> ; 5 uses
  %i.bpz = extractelement <2 x i32> %i.bpy, i64 0 ; 3 uses
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i = zext i32 %i.bpz to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i = zext i32 %i.bpx to i64
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i, ptr %5, align 8
  %i.bqa = extractelement <2 x i32> %i.bpy, i64 1 ; 4 uses
  store i32 %i.bqa, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.boc, i64 696 ; 7 uses
  %i.bqc = load i64, ptr %i.bqb, align 8, !tbaa !145
  %i.bqd = getelementptr inbounds i8, ptr %i.bom, i64 %i.bqc ; 5 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 64
  %i.bqf = lshr i32 %i.bqa, 12
  %i.bqg = zext nneg i32 %i.bqf to i64
  %i.bqh = lshr i32 %i.bpz, 12
  %i.bqi = zext nneg i32 %i.bqh to i64
  %i.bqj = shl nuw nsw i64 %i.bqi, 21
  %i.bqk = or disjoint i64 %i.bqj, %i.bqg
  %i.bql = lshr i32 %i.bpx, 12
  %i.bqm = zext nneg i32 %i.bql to i64
  %i.bqn = shl nuw nsw i64 %i.bqm, 42
  %i.bqo = or disjoint i64 %i.bqk, %i.bqn
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqd, i64 24
  %i.bqq = load i32, ptr %i.bqp, align 8, !tbaa !337 ; 2 uses
  %.not12.not.i.i.i.i.i.i.i = icmp eq i32 %i.bqq, 0
  br i1 %.not12.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i271.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i267.i.i.i
  %wide.trip.count.i.i.i.i.i.i.i = zext i32 %i.bqq to i64
  br label %.lr.ph.i.i.i.i.i.i.i

bb.dk:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i271.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.dk, %.lr.ph.preheader.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i, %bb.dk ] ; 2 uses
  %i.bqr = getelementptr inbounds nuw [32 x i8], ptr %i.bqe, i64 %indvars.iv.i.i.i.i.i.i.i ; 3 uses
  %i.bqs = load i64, ptr %i.bqr, align 32, !tbaa !339
  %i.bqt = icmp eq i64 %i.bqs, %i.bqo
  br i1 %i.bqt, label %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i.i.i.i, label %bb.dk

_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqr, i64 8
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !340 ; 2 uses
  %.not.i180.i.i.i.i.i = icmp eq i64 %i.bqv, 0
  br i1 %.not.i180.i.i.i.i.i, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i.i.i.i
  %i.bqw = getelementptr inbounds i8, ptr %i.bqd, i64 %i.bqv ; 3 uses
  %i.bqx = shl i32 %i.bpx, 3
  %i.bqy = and i32 %i.bqx, 31744
  %i.bqz = lshr i32 %i.bpz, 2
  %i.bra = and i32 %i.bqz, 992
  %i.brb = or disjoint i32 %i.bra, %i.bqy         ; 2 uses
  %i.brc = lshr i32 %i.bqa, 7
  %i.brd = and i32 %i.brc, 31
  %i.bre = or disjoint i32 %i.brd, %i.brb         ; 2 uses
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bqw, i64 4128
  %i.brg = lshr i32 %i.brb, 6
  %i.brh = zext nneg i32 %i.brg to i64
  %i.bri = getelementptr inbounds nuw [8 x i8], ptr %i.brf, i64 %i.brh
  %i.brj = load i64, ptr %i.bri, align 8, !tbaa !145
  %i.brk = and i32 %i.bre, 63
  %i.brl = zext nneg i32 %i.brk to i64
  %i.brm = shl nuw i64 1, %i.brl
  %i.brn = and i64 %i.brj, %i.brm
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.brn, 0
  %i.bro = getelementptr inbounds nuw i8, ptr %i.bqw, i64 8256
  %i.brp = zext nneg i32 %i.bre to i64
  %i.brq = getelementptr inbounds nuw [8 x i8], ptr %i.bro, i64 %i.brp ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc169.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.brr = load i64, ptr %i.brq, align 8, !tbaa !47
  %i.brs = getelementptr inbounds i8, ptr %i.bqw, i64 %i.brr ; 3 uses
  %i.brt = shl i32 %i.bpx, 5
  %i.bru = and i32 %i.brt, 3840
  %i.brv = lshr <2 x i32> %i.bpy, <i32 1, i32 3>
  %i.brw = shl <2 x i32> %i.bpy, <i32 1, i32 3>
  %i.brx = shufflevector <2 x i32> %i.brw, <2 x i32> %i.brv, <2 x i32> <i32 0, i32 3>
  %i.bry = and <2 x i32> %i.brx, <i32 240, i32 -1> ; 2 uses
  %i.brz = extractelement <2 x i32> %i.bry, i64 0
  %i.bsa = or disjoint i32 %i.brz, %i.bru         ; 2 uses
  %i.bsb = extractelement <2 x i32> %i.bry, i64 1
  %i.bsc = and i32 %i.bsb, 15
  %i.bsd = or disjoint i32 %i.bsc, %i.bsa         ; 2 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %i.brs, i64 544
  %i.bsf = lshr i32 %i.bsa, 6
  %i.bsg = zext nneg i32 %i.bsf to i64
  %i.bsh = getelementptr inbounds nuw [8 x i8], ptr %i.bse, i64 %i.bsg
  %i.bsi = load i64, ptr %i.bsh, align 8, !tbaa !145
  %i.bsj = and i32 %i.bsd, 63
  %i.bsk = zext nneg i32 %i.bsj to i64
  %i.bsl = shl nuw i64 1, %i.bsk
  %i.bsm = and i64 %i.bsi, %i.bsl
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bsm, 0
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.brs, i64 1088
  %i.bso = zext nneg i32 %i.bsd to i64
  %i.bsp = getelementptr inbounds nuw [8 x i8], ptr %i.bsn, i64 %i.bso ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc169.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bsq = load i64, ptr %i.bsp, align 8, !tbaa !47
  %i.bsr = getelementptr inbounds i8, ptr %i.brs, i64 %i.bsq
  %i.bss = shl i32 %i.bpx, 6
  %i.bst = and i32 %i.bss, 448
  %i.bsu = shl <2 x i32> %i.bpy, <i32 3, i32 0>
  %i.bsv = and <2 x i32> %i.bsu, <i32 56, i32 7>  ; 2 uses
  %i.bsw = extractelement <2 x i32> %i.bsv, i64 0
  %i.bsx = or disjoint i32 %i.bsw, %i.bst
  %i.bsy = extractelement <2 x i32> %i.bsv, i64 1
  %i.bsz = or disjoint i32 %i.bsx, %i.bsy
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsr, i64 96
  %i.btb = zext nneg i32 %i.bsz to i64
  %i.btc = getelementptr inbounds nuw [4 x i8], ptr %i.bta, i64 %i.btb
  br label %.noexc169.i.i.i.i.i

bb.do:                                            ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i.i.i.i
  %i.btd = getelementptr inbounds nuw i8, ptr %i.bqr, i64 20
  br label %.noexc169.i.i.i.i.i

.loopexit.i.i.i271.i.i.i:                         ; preds = %bb.dk, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i267.i.i.i
  %i.bte = getelementptr inbounds nuw i8, ptr %i.bqd, i64 28
  br label %.noexc169.i.i.i.i.i

.noexc169.i.i.i.i.i:                              ; preds = %.loopexit.i.i.i271.i.i.i, %bb.do, %bb.dn, %bb.dm, %bb.dl
  %.1.in.i.i.i.i.i.i = phi ptr [ %i.bte, %.loopexit.i.i.i271.i.i.i ], [ %i.btd, %bb.do ], [ %i.bsp, %bb.dm ], [ %i.btc, %bb.dn ], [ %i.brq, %bb.dl ]
  %.1.i.i.i.i.i.i = load float, ptr %.1.in.i.i.i.i.i.i, align 4, !tbaa !47 ; 2 uses
  %i.btf = add nsw i32 %i.bqa, 1
  store i32 %i.btf, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !49
  %i.btg = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bqd, ptr noundef nonnull align 4 dereferenceable(12) %5)
  %i.bth = load i32, ptr %i.fi, align 4, !tbaa !49
  %i.bti = add nsw i32 %i.bth, 1
  store i32 %i.bti, ptr %i.fi, align 4, !tbaa !49
  %i.btj = load i64, ptr %i.bqb, align 8, !tbaa !145
  %i.btk = getelementptr inbounds i8, ptr %i.bom, i64 %i.btj
  %i.btl = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.btk, ptr noundef nonnull align 4 dereferenceable(12) %5)
  %i.btm = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !49
  %i.btn = add nsw i32 %i.btm, -1
  store i32 %i.btn, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !49
  %i.bto = load i64, ptr %i.bqb, align 8, !tbaa !145
  %i.btp = getelementptr inbounds i8, ptr %i.bom, i64 %i.bto
  %i.btq = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.btp, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 2 uses
  %i.btr = load i32, ptr %5, align 8, !tbaa !49
  %i.bts = add nsw i32 %i.btr, 1
  store i32 %i.bts, ptr %5, align 8, !tbaa !49
  %i.btt = load i64, ptr %i.bqb, align 8, !tbaa !145
  %i.btu = getelementptr inbounds i8, ptr %i.bom, i64 %i.btt
  %i.btv = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.btu, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 2 uses
  %i.btw = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !49
  %i.btx = add nsw i32 %i.btw, 1
  store i32 %i.btx, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !49
  %i.bty = load i64, ptr %i.bqb, align 8, !tbaa !145
  %i.btz = getelementptr inbounds i8, ptr %i.bom, i64 %i.bty
  %i.bua = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.btz, ptr noundef nonnull align 4 dereferenceable(12) %5)
  %i.bub = load i32, ptr %i.fi, align 4, !tbaa !49
  %i.buc = add nsw i32 %i.bub, -1
  store i32 %i.buc, ptr %i.fi, align 4, !tbaa !49
  %i.bud = load i64, ptr %i.bqb, align 8, !tbaa !145
  %i.bue = getelementptr inbounds i8, ptr %i.bom, i64 %i.bud
  %i.buf = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bue, ptr noundef nonnull align 4 dereferenceable(12) %5)
  %i.bug = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !49
  %i.buh = add nsw i32 %i.bug, -1
  store i32 %i.buh, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !49
  %i.bui = load i64, ptr %i.bqb, align 8, !tbaa !145
  %i.buj = getelementptr inbounds i8, ptr %i.bom, i64 %i.bui
  %i.buk = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.buj, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.bul = extractelement <3 x float> %i.bow, i64 2
  %i.bum = call { <2 x float>, <2 x float> } @_ZNK4pbrt13NanoVDBMedium2LeENS_6Point3IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(404) %i.bfx, <2 x float> %i.box, float %i.bul, ptr noundef nonnull align 4 dereferenceable(32) %3) ; 0 uses
  %i.bun = load i8, ptr %i.ff, align 4, !tbaa !299, !range !136, !noundef !137
  %i.buo = trunc nuw i8 %i.bun to i1
  br i1 %i.buo, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i, label %.noexc134.i.i.i.i.i

.noexc134.i.i.i.i.i:                              ; preds = %.noexc169.i.i.i.i.i
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #41
  unreachable

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i: ; preds = %.noexc169.i.i.i.i.i
  %i.bup = fsub float %i.btg, %.1.i.i.i.i.i.i
  %i.buq = fmul float %i.bpw, %i.bup
  %i.bur = fadd float %.1.i.i.i.i.i.i, %i.buq     ; 2 uses
  %i.bus = fsub float %i.btl, %i.btq
  %i.but = fmul float %i.bpw, %i.bus
  %i.buu = fadd float %i.btq, %i.but
  %i.buv = fsub float %i.buu, %i.bur
  %i.buw = fmul float %i.bpv, %i.buv
  %i.bux = fadd float %i.bur, %i.buw              ; 2 uses
  %i.buy = fsub float %i.buf, %i.buk
  %i.buz = fmul float %i.bpw, %i.buy
  %i.bva = fadd float %i.buk, %i.buz              ; 2 uses
  %i.bvb = fsub float %i.bua, %i.btv
  %i.bvc = fmul float %i.bpw, %i.bvb
  %i.bvd = fadd float %i.btv, %i.bvc
  %i.bve = fsub float %i.bvd, %i.bva
  %i.bvf = fmul float %i.bpv, %i.bve
  %i.bvg = fadd float %i.bva, %i.bvf
  %i.bvh = fsub float %i.bvg, %i.bux
  %i.bvi = fmul float %i.bpu, %i.bvh
  %.sroa.04.0.copyload.i.i272.i.i.i = load <2 x float>, ptr %i.fg, align 4 ; 3 uses
  %.sroa.25.0.copyload.i.i273.i.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i105.i.i232.i.i.i, align 4, !tbaa !47
  %i.bvj = shufflevector <2 x float> %.sroa.25.0.copyload.i.i273.i.i.i, <2 x float> %.sroa.04.0.copyload.i.i272.i.i.i, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bvk = fmul <4 x float> %i.bld, %i.bvj        ; 2 uses
  %i.bvl = shufflevector <4 x float> %i.bvk, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bvm = fdiv <4 x float> %i.bvk, %i.bvl
  %i.bvn = fmul <4 x float> %i.bhf, %i.bvm
  %.fr1324 = freeze <4 x float> %i.bvn            ; 3 uses
  %29 = shufflevector <4 x float> %i.bld, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %30 = insertelement <2 x float> %29, float %i.bux, i64 0 ; 2 uses
  %31 = shufflevector <2 x float> %.sroa.04.0.copyload.i.i272.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %32 = insertelement <2 x float> %31, float %i.bvi, i64 0 ; 2 uses
  %33 = fadd <2 x float> %30, %32
  %34 = fmul <2 x float> %30, %32
  %35 = shufflevector <2 x float> %i.bnp, <2 x float> %i.bnq, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bvo = shufflevector <2 x float> %33, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bvp = fmul <4 x float> %35, %i.bvo
  %i.bvq = shufflevector <2 x float> %.sroa.6.0.i.i.i263.i.i.i, <2 x float> %.sroa.0.0.i.i.i260.i.i.i, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.bvr = insertelement <4 x float> %i.bvq, float %.sink30.i.i.i266.i.i.i, i64 0
  %i.bvs = insertelement <4 x float> %i.bvr, float %.sink.i.i.i.i.i.i, i64 2
  %i.bvt = fmul <4 x float> %i.bvs, %i.bvo
  %i.bvu = fsub <4 x float> %i.bvj, %i.bvt
  %i.bvv = fsub <4 x float> %i.bvu, %i.bvp        ; 2 uses
  %i.bvw = fcmp ogt <4 x float> %i.bvv, zeroinitializer
  %i.bvx = select <4 x i1> %i.bvw, <4 x float> %i.bvv, <4 x float> zeroinitializer
  %i.bvy = fmul <4 x float> %i.bld, %i.bvx
  %36 = shufflevector <2 x float> %34, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bvz = fdiv <4 x float> %i.bvy, %36
  %i.bwa = shufflevector <2 x float> %.sroa.41.18, <2 x float> %.sroa.0306.18, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bwb = fmul <4 x float> %i.bwa, %i.bvz
  %.fr1322 = freeze <4 x float> %i.bwb            ; 3 uses
  %i.bwc = shufflevector <4 x float> %.fr1322, <4 x float> poison, <2 x i32> <i32 3, i32 2> ; 2 uses
  %i.bwd = shufflevector <4 x float> %.fr1322, <4 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bwe = fcmp une <4 x float> %.fr1322, zeroinitializer
  %i.bwf = bitcast <4 x i1> %i.bwe to i4
  %.not1323 = icmp eq i4 %i.bwf, 0
  %.sroa.0.0.vec.extract.i.i136.i.i274.i.i.i = extractelement <2 x float> %.sroa.04.0.copyload.i.i272.i.i.i, i64 0
  %i.bwg = fcmp une <4 x float> %.fr1324, zeroinitializer
  %i.bwh = bitcast <4 x i1> %i.bwg to i4
  %.not1325 = icmp eq i4 %i.bwh, 0
  %or.cond1595 = or i1 %.not1323, %.not1325
  br i1 %or.cond1595, label %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13NanoVDBMediumEEEDaSD_.exit.i.i.i", label %bb.cp

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit141.i.i.i.i.i: ; preds = %bb.cp
  %i.bwi = fsub float %i.bhw, %.073.i.i238.i.i.i  ; 2 uses
  %i.bwj = call float @llvm.fabs.f32(float %i.bwi)
  %i.bwk = fcmp oeq float %i.bwj, +inf
  %.neg.i.i241.i.i.i = fneg float %i.bwi
  %i.bwl = select i1 %i.bwk, float f0xFF7FFFFF, float %.neg.i.i241.i.i.i ; 4 uses
  %.sroa.0.0.copyload.i.i142.i.i.i.i.i = load <2 x float>, ptr %i.fg, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i144.i.i.i.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i105.i.i232.i.i.i, align 4, !tbaa !47 ; 2 uses
  %.sroa.0.0.vec.extract.i.i145.i.i.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i142.i.i.i.i.i, i64 0
  %i.bwm = fmul float %i.bwl, %.sroa.0.0.vec.extract.i.i145.i.i.i.i.i
  %.sroa.0.4.vec.extract.i.i147.i.i.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i142.i.i.i.i.i, i64 1
  %i.bwn = fmul float %i.bwl, %.sroa.0.4.vec.extract.i.i147.i.i.i.i.i
  %.sroa.6.8.vec.extract.i.i149.i.i.i.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i144.i.i.i.i.i, i64 0
  %i.bwo = fmul float %i.bwl, %.sroa.6.8.vec.extract.i.i149.i.i.i.i.i
  %.sroa.6.12.vec.extract.i.i151.i.i.i.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i144.i.i.i.i.i, i64 1
  %i.bwp = fmul float %i.bwl, %.sroa.6.12.vec.extract.i.i151.i.i.i.i.i
  %i.bwq = fmul float %i.bwm, f0x3FB8AA3B         ; 2 uses
  %i.bwr = call noundef float @llvm.floor.f32(float %i.bwq) ; 2 uses
  %i.bws = fsub float %i.bwq, %i.bwr              ; 3 uses
  %i.bwt = fptosi float %i.bwr to i32
  %i.bwu = call noundef float @llvm.fma.f32(float %i.bws, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bwv = call noundef float @llvm.fma.f32(float %i.bws, float %i.bwu, float f0x3F321004)
  %i.bww = call noundef float @llvm.fma.f32(float %i.bws, float %i.bwv, float 1.000000e+00)
  %i.bwx = bitcast float %i.bww to i32            ; 2 uses
  %i.bwy = lshr i32 %i.bwx, 23
  %i.bwz = add i32 %i.bwt, -127
  %i.bxa = add i32 %i.bwz, %i.bwy                 ; 3 uses
  %i.bxb = icmp slt i32 %i.bxa, -126
  br i1 %i.bxb, label %_ZN4pbrt7FastExpEf.exit.i155.i.i.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit141.i.i.i.i.i
  %i.bxc = icmp sgt i32 %i.bxa, 127
  br i1 %i.bxc, label %_ZN4pbrt7FastExpEf.exit.i155.i.i.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.bxd = and i32 %i.bwx, -2139095041
  %i.bxe = shl nsw i32 %i.bxa, 23
  %i.bxf = add nsw i32 %i.bxe, 1065353216
  %i.bxg = or i32 %i.bxf, %i.bxd
  %i.bxh = bitcast i32 %i.bxg to float
  br label %_ZN4pbrt7FastExpEf.exit.i155.i.i.i.i.i

_ZN4pbrt7FastExpEf.exit.i155.i.i.i.i.i:           ; preds = %bb.dq, %bb.dp, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit141.i.i.i.i.i
  %.0.i.i156.i.i.i.i.i = phi float [ %i.bxh, %bb.dq ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit141.i.i.i.i.i ], [ +inf, %bb.dp ]
  %i.bxi = fmul float %i.bwn, f0x3FB8AA3B         ; 2 uses
  %i.bxj = call noundef float @llvm.floor.f32(float %i.bxi) ; 2 uses
  %i.bxk = fsub float %i.bxi, %i.bxj              ; 3 uses
  %i.bxl = fptosi float %i.bxj to i32
  %i.bxm = call noundef float @llvm.fma.f32(float %i.bxk, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bxn = call noundef float @llvm.fma.f32(float %i.bxk, float %i.bxm, float f0x3F321004)
  %i.bxo = call noundef float @llvm.fma.f32(float %i.bxk, float %i.bxn, float 1.000000e+00)
  %i.bxp = bitcast float %i.bxo to i32            ; 2 uses
  %i.bxq = lshr i32 %i.bxp, 23
  %i.bxr = add i32 %i.bxl, -127
  %i.bxs = add i32 %i.bxr, %i.bxq                 ; 3 uses
  %i.bxt = icmp slt i32 %i.bxs, -126
  br i1 %i.bxt, label %_ZN4pbrt7FastExpEf.exit.1.i157.i.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i155.i.i.i.i.i
  %i.bxu = icmp sgt i32 %i.bxs, 127
  br i1 %i.bxu, label %_ZN4pbrt7FastExpEf.exit.1.i157.i.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.bxv = and i32 %i.bxp, -2139095041
  %i.bxw = shl nsw i32 %i.bxs, 23
  %i.bxx = add nsw i32 %i.bxw, 1065353216
  %i.bxy = or i32 %i.bxx, %i.bxv
  %i.bxz = bitcast i32 %i.bxy to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i157.i.i.i.i.i

_ZN4pbrt7FastExpEf.exit.1.i157.i.i.i.i.i:         ; preds = %bb.ds, %bb.dr, %_ZN4pbrt7FastExpEf.exit.i155.i.i.i.i.i
  %.0.i.1.i158.i.i.i.i.i = phi float [ %i.bxz, %bb.ds ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i155.i.i.i.i.i ], [ +inf, %bb.dr ]
  %i.bya = fmul float %i.bwo, f0x3FB8AA3B         ; 2 uses
  %i.byb = call noundef float @llvm.floor.f32(float %i.bya) ; 2 uses
  %i.byc = fsub float %i.bya, %i.byb              ; 3 uses
  %i.byd = fptosi float %i.byb to i32
  %i.bye = call noundef float @llvm.fma.f32(float %i.byc, float f0x3DA00AC9, float f0x3E679A0B)
  %i.byf = call noundef float @llvm.fma.f32(float %i.byc, float %i.bye, float f0x3F321004)
  %i.byg = call noundef float @llvm.fma.f32(float %i.byc, float %i.byf, float 1.000000e+00)
  %i.byh = bitcast float %i.byg to i32            ; 2 uses
  %i.byi = lshr i32 %i.byh, 23
  %i.byj = add i32 %i.byd, -127
  %i.byk = add i32 %i.byj, %i.byi                 ; 3 uses
  %i.byl = icmp slt i32 %i.byk, -126
  br i1 %i.byl, label %_ZN4pbrt7FastExpEf.exit.2.i159.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i157.i.i.i.i.i
  %i.bym = icmp sgt i32 %i.byk, 127
  br i1 %i.bym, label %_ZN4pbrt7FastExpEf.exit.2.i159.i.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.byn = and i32 %i.byh, -2139095041
  %i.byo = shl nsw i32 %i.byk, 23
  %i.byp = add nsw i32 %i.byo, 1065353216
  %i.byq = or i32 %i.byp, %i.byn
  %i.byr = bitcast i32 %i.byq to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i159.i.i.i.i.i

_ZN4pbrt7FastExpEf.exit.2.i159.i.i.i.i.i:         ; preds = %bb.du, %bb.dt, %_ZN4pbrt7FastExpEf.exit.1.i157.i.i.i.i.i
  %.0.i.2.i160.i.i.i.i.i = phi float [ %i.byr, %bb.du ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i157.i.i.i.i.i ], [ +inf, %bb.dt ]
  %i.bys = fmul float %i.bwp, f0x3FB8AA3B         ; 2 uses
  %i.byt = call noundef float @llvm.floor.f32(float %i.bys) ; 2 uses
  %i.byu = fsub float %i.bys, %i.byt              ; 3 uses
  %i.byv = fptosi float %i.byt to i32
  %i.byw = call noundef float @llvm.fma.f32(float %i.byu, float f0x3DA00AC9, float f0x3E679A0B)
  %i.byx = call noundef float @llvm.fma.f32(float %i.byu, float %i.byw, float f0x3F321004)
  %i.byy = call noundef float @llvm.fma.f32(float %i.byu, float %i.byx, float 1.000000e+00)
  %i.byz = bitcast float %i.byy to i32            ; 2 uses
  %i.bza = lshr i32 %i.byz, 23
  %i.bzb = add i32 %i.byv, -127
  %i.bzc = add i32 %i.bzb, %i.bza                 ; 3 uses
  %i.bzd = icmp slt i32 %i.bzc, -126
  br i1 %i.bzd, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i159.i.i.i.i.i
  %i.bze = icmp sgt i32 %i.bzc, 127
  br i1 %i.bze, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.bzf = and i32 %i.byz, -2139095041
  %i.bzg = shl nsw i32 %i.bzc, 23
  %i.bzh = add nsw i32 %i.bzg, 1065353216
  %i.bzi = or i32 %i.bzh, %i.bzf
  %i.bzj = bitcast i32 %i.bzi to float
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %_ZN4pbrt7FastExpEf.exit.2.i159.i.i.i.i.i
  %.0.i.3.i161.i.i.i.i.i = phi float [ %i.bzj, %bb.dw ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2.i159.i.i.i.i.i ], [ +inf, %bb.dv ]
  %i.bzk = insertelement <2 x float> poison, float %.0.i.i156.i.i.i.i.i, i64 0
  %i.bzl = insertelement <2 x float> %i.bzk, float %.0.i.1.i158.i.i.i.i.i, i64 1
  %i.bzm = fmul <2 x float> %.sroa.0198.1.i.i.i.i.i, %i.bzl
  %i.bzn = insertelement <2 x float> poison, float %.0.i.2.i160.i.i.i.i.i, i64 0
  %i.bzo = insertelement <2 x float> %i.bzn, float %.0.i.3.i161.i.i.i.i.i, i64 1
  %i.bzp = fmul <2 x float> %.sroa.21.1.i.i237.i.i.i, %i.bzo
  br label %.thread.i.i242.i.i.i

.thread.i.i242.i.i.i:                             ; preds = %bb.dx, %.noexc158
  %.sroa.0441.19 = phi i64 [ %.sroa.0441.17, %.noexc158 ], [ %i.bhl, %bb.dx ] ; 2 uses
  %.sroa.41.19 = phi <2 x float> [ %.sroa.41.17, %.noexc158 ], [ %.sroa.41.18, %bb.dx ] ; 2 uses
  %.sroa.0306.19 = phi <2 x float> [ %.sroa.0306.17, %.noexc158 ], [ %.sroa.0306.18, %bb.dx ] ; 2 uses
  %.sroa.0198.4.i.i.i.i.i = phi <2 x float> [ %i.bhb, %.noexc158 ], [ %i.bzm, %bb.dx ] ; 2 uses
  %.sroa.21.4.i.i243.i.i.i = phi <2 x float> [ %i.bhc, %.noexc158 ], [ %i.bzp, %bb.dx ] ; 2 uses
  %.2.i.i244.i.i.i = phi float [ %.054321.i45.i.i.i.i, %.noexc158 ], [ %.sroa.speculated.i.i.i240.i.i.i, %bb.dx ]
  %i.bzq = phi <4 x float> [ %i.bgl, %.noexc158 ], [ %i.bhf, %bb.dx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @_ZN4pbrt19DDAMajorantIterator4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.511") align 4 %8, ptr noundef nonnull align 8 dereferenceable(92) %6)
  %i.bzr = load i8, ptr %i.ff, align 4, !tbaa !299, !range !136, !noundef !137
  %i.bzs = trunc nuw i8 %i.bzr to i1
  br i1 %i.bzs, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i235.i.i.i, label %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13NanoVDBMediumEEEDaSD_.exit.i.i.i"

"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13NanoVDBMediumEEEDaSD_.exit.i.i.i": ; preds = %.thread.i.i242.i.i.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i, %.noexc156
  %.sroa.0441.16 = phi i64 [ %i.bhl, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ], [ %i.gy, %.noexc156 ], [ %.sroa.0441.19, %.thread.i.i242.i.i.i ]
  %.sroa.41.16 = phi <2 x float> [ %i.bwd, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ], [ %.sroa.41.0, %.noexc156 ], [ %.sroa.41.19, %.thread.i.i242.i.i.i ]
  %.sroa.0306.16 = phi <2 x float> [ %i.bwc, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ], [ %.sroa.0306.0, %.noexc156 ], [ %.sroa.0306.19, %.thread.i.i242.i.i.i ]
  %.sroa.0255.2.i.i.i.i.i = phi <2 x float> [ splat (float 1.000000e+00), %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ], [ splat (float 1.000000e+00), %.noexc156 ], [ %.sroa.0198.4.i.i.i.i.i, %.thread.i.i242.i.i.i ]
  %.sroa.4257.2.i.i.i.i.i = phi <2 x float> [ splat (float 1.000000e+00), %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ], [ splat (float 1.000000e+00), %.noexc156 ], [ %.sroa.21.4.i.i243.i.i.i, %.thread.i.i242.i.i.i ]
  %i.bzt = phi <4 x float> [ %.fr1324, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit135.i.i.i.i.i ], [ %i.fp, %.noexc156 ], [ %i.bzq, %.thread.i.i242.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc121.i.i.i.i.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.us.i.i.i.i.i, %bb.ak, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_10GridMediumEEEDaSD_.exit.i.i.i", %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13RGBGridMediumEEEDaSD_.exit.i.i.i", %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_11CloudMediumEEEDaSD_.exit.i.i.i", %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13NanoVDBMediumEEEDaSD_.exit.i.i.i"
  %.sroa.0441.20 = phi i64 [ %.sroa.0441.16, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13NanoVDBMediumEEEDaSD_.exit.i.i.i" ], [ %i.gy, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.us.i.i.i.i.i ], [ %.sroa.0441.7, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13RGBGridMediumEEEDaSD_.exit.i.i.i" ], [ %.sroa.0441.6, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_11CloudMediumEEEDaSD_.exit.i.i.i" ], [ %i.iy, %bb.ak ], [ %.sroa.0441.11, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_10GridMediumEEEDaSD_.exit.i.i.i" ], [ %i.iy, %.noexc121.i.i.i.i.i ]
  %.sroa.41.20 = phi <2 x float> [ %.sroa.41.16, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13NanoVDBMediumEEEDaSD_.exit.i.i.i" ], [ %.sroa.41.0, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.us.i.i.i.i.i ], [ %.sroa.41.7, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13RGBGridMediumEEEDaSD_.exit.i.i.i" ], [ %.sroa.41.6, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_11CloudMediumEEEDaSD_.exit.i.i.i" ], [ %.sroa.41.15, %bb.ak ], [ %.sroa.41.11, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_10GridMediumEEEDaSD_.exit.i.i.i" ], [ %i.ph, %.noexc121.i.i.i.i.i ]
  %.sroa.0306.20 = phi <2 x float> [ %.sroa.0306.16, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13NanoVDBMediumEEEDaSD_.exit.i.i.i" ], [ %.sroa.0306.0, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.us.i.i.i.i.i ], [ %.sroa.0306.7, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13RGBGridMediumEEEDaSD_.exit.i.i.i" ], [ %.sroa.0306.6, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_11CloudMediumEEEDaSD_.exit.i.i.i" ], [ %.sroa.0306.15, %bb.ak ], [ %.sroa.0306.11, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_10GridMediumEEEDaSD_.exit.i.i.i" ], [ %i.pg, %.noexc121.i.i.i.i.i ]
  %.sroa.0255.2.i.i.pn.i.i.i = phi <2 x float> [ %.sroa.0255.2.i.i.i.i.i, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13NanoVDBMediumEEEDaSD_.exit.i.i.i" ], [ %i.iq, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.us.i.i.i.i.i ], [ %.sroa.0234.2.i.i.i.i.i, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13RGBGridMediumEEEDaSD_.exit.i.i.i" ], [ %.sroa.0283.2.i.i.i.i.i, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_11CloudMediumEEEDaSD_.exit.i.i.i" ], [ %.sroa.0222.4.vec.insert247.i.i.i.i.i, %bb.ak ], [ %.sroa.0227.2.i.i.i.i.i, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_10GridMediumEEEDaSD_.exit.i.i.i" ], [ splat (float 1.000000e+00), %.noexc121.i.i.i.i.i ] ; 2 uses
  %.sroa.4257.2.i.i.pn.i.i.i = phi <2 x float> [ %.sroa.4257.2.i.i.i.i.i, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13NanoVDBMediumEEEDaSD_.exit.i.i.i" ], [ %i.ir, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.us.i.i.i.i.i ], [ %.sroa.4236.2.i.i.i.i.i, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13RGBGridMediumEEEDaSD_.exit.i.i.i" ], [ %.sroa.4285.2.i.i.i.i.i, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_11CloudMediumEEEDaSD_.exit.i.i.i" ], [ %.sroa.21.12.vec.insert274.i.i.i.i.i, %bb.ak ], [ %.sroa.4229.2.i.i.i.i.i, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_10GridMediumEEEDaSD_.exit.i.i.i" ], [ splat (float 1.000000e+00), %.noexc121.i.i.i.i.i ]
  %i.bzu = phi <4 x float> [ %i.bzt, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13NanoVDBMediumEEEDaSD_.exit.i.i.i" ], [ %i.fp, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.us.i.i.i.i.i ], [ %i.aqn, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_13RGBGridMediumEEEDaSD_.exit.i.i.i" ], [ %i.bfn, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_11CloudMediumEEEDaSD_.exit.i.i.i" ], [ %i.is, %bb.ak ], [ %i.acq, %"_ZZN4pbrt11SampleT_majIZNKS_10Integrator2TrERKNS_11InteractionES4_RKNS_18SampledWavelengthsEE3$_0EENS_15SampledSpectrumENS_3RayEffRNS_3RNGES7_T_ENKUlSD_E_clIPNS_10GridMediumEEEDaSD_.exit.i.i.i" ], [ %.fr1320, %.noexc121.i.i.i.i.i ]
  %i.bzv = shufflevector <2 x float> %.sroa.4257.2.i.i.pn.i.i.i, <2 x float> %.sroa.0255.2.i.i.pn.i.i.i, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bzw = shufflevector <2 x float> %.sroa.0255.2.i.i.pn.i.i.i, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bzx = fdiv <4 x float> %i.bzv, %i.bzw        ; 3 uses
  %i.bzy = shufflevector <4 x float> %i.bzx, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.bzz = fmul <2 x float> %.sroa.0306.20, %i.bzy ; 2 uses
  %i.caa = shufflevector <4 x float> %i.bzx, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cab = fmul <2 x float> %.sroa.41.20, %i.caa  ; 2 uses
  %i.cac = fmul <4 x float> %i.bzu, %i.bzx        ; 5 uses
  %.pre842 = load i8, ptr %i.eh, align 16, !tbaa !286, !range !136
  %i.cad = trunc nuw i8 %.pre842 to i1
  br i1 %i.cad, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit190, label %.thread939.split.loop.exit1571

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit190: ; preds = %bb.h, %.loopexit
  %.sroa.0306.1934 = phi <2 x float> [ %i.bzz, %.loopexit ], [ %.sroa.0306.0, %bb.h ]
  %.sroa.41.1933 = phi <2 x float> [ %i.cab, %.loopexit ], [ %.sroa.41.0, %bb.h ]
  %.sroa.0441.1932 = phi i64 [ %.sroa.0441.20, %.loopexit ], [ %.sroa.0441.0, %bb.h ]
  %i.cae = phi <4 x float> [ %i.cac, %.loopexit ], [ %i.fp, %bb.h ]
  %.sroa.7471.0.copyload = load float, ptr %.sroa.7471.0..sroa_idx, align 16, !noalias !972
  %.sroa.8472.0.copyload = load float, ptr %.sroa.8472.0..sroa_idx, align 4, !noalias !972
  %.sroa.09.0.copyload.i191 = load <2 x float>, ptr %i.fk, align 8, !noalias !972
  %.sroa.210.0.copyload.i193 = load float, ptr %.sroa.210.0..sroa_idx.i192, align 16, !noalias !972
  %i.caf = load float, ptr %i.fl, align 8, !tbaa !279, !noalias !972
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 24, i1 false), !noalias !972
end_hunk_0
begin_hunk_1_@"_ZN4pbrt6detail8DispatchIRZNS_11SampleT_majIZNKS_17VolPathIntegrator8SampleLdERKNS_11InteractionEPKNS_4BSDFERNS_18SampledWavelengthsENS_7SamplerENS_15SampledSpectrumESD_E3$_0EESD_NS_3RayEffRNS_3RNGERKSA_T_EUlSK_E_SD_NS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEET0_OSK_Pvi":bb.a
  br i1 %i.bil, label %bb.dl, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i284

bb.dl:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i283
  %i.bim = load float, ptr %i.bhp, align 4, !tbaa !303
  %i.bin = load float, ptr %5, align 4, !tbaa !304
  %i.bio = fsub float %i.bim, %i.bin              ; 2 uses
  %i.bip = call float @llvm.fabs.f32(float %i.bio)
  %i.biq = fcmp oeq float %i.bip, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %.neg278.i.i = fneg float %i.bio
  %i.bir = select i1 %i.biq, float f0xFF7FFFFF, float %.neg278.i.i
  %.sroa.0.0.copyload.i.i.i.i350 = load <2 x float>, ptr %i.bhn, align 4
  %.sroa.6.0.copyload.i.i.i.i351 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i280, align 4, !tbaa !47
  %i.bis = insertelement <2 x float> poison, float %i.bir, i64 0
  %i.bit = shufflevector <2 x float> %i.bis, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.biu = fmul <2 x float> %.sroa.0.0.copyload.i.i.i.i350, %i.bit
  %i.biv = fmul <2 x float> %i.bit, %.sroa.6.0.copyload.i.i.i.i351
  store <2 x float> %i.biu, ptr %6, align 8
  store <2 x float> %i.biv, ptr %i.bie, align 8
  %i.biw = call { <2 x float>, <2 x float> } @_ZN4pbrt7FastExpERKNS_15SampledSpectrumE(ptr noundef nonnull align 4 dereferenceable(16) %6) ; 2 uses
  %i.bix = extractvalue { <2 x float>, <2 x float> } %i.biw, 0
  %i.biy = extractvalue { <2 x float>, <2 x float> } %i.biw, 1
  %i.biz = fmul <2 x float> %.sroa.0197.0315.i52.i, %i.bix
  %i.bja = fmul <2 x float> %.sroa.21.0316.i51.i, %i.biy
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %.thread.i.i291

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i284: ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i283
  %i.bjb = load float, ptr %5, align 4, !tbaa !304
  br label %bb.dm

bb.dm:                                            ; preds = %bb.eq, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i284
  %.sroa.0197.1.i.i = phi <2 x float> [ %.sroa.0197.0315.i52.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i284 ], [ splat (float 1.000000e+00), %bb.eq ] ; 2 uses
  %.sroa.21.1.i.i285 = phi <2 x float> [ %.sroa.21.0316.i51.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i284 ], [ splat (float 1.000000e+00), %bb.eq ] ; 2 uses
  %.073.i.i286 = phi float [ %i.bjb, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i284 ], [ %i.bji, %bb.eq ] ; 3 uses
  %.1.i.i287 = phi float [ %.054317.i50.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i284 ], [ %.sroa.speculated.i.i.i289, %bb.eq ]
  %i.bjc = load i8, ptr %i.bhm, align 4, !tbaa !299, !range !136, !noundef !137
  %i.bjd = trunc nuw i8 %i.bjc to i1
  br i1 %i.bjd, label %bb.dn, label %.noexc97.i.i288

.noexc97.i.i288:                                  ; preds = %bb.dm
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #41
  unreachable

bb.dn:                                            ; preds = %bb.dm
  %i.bje = load float, ptr %i.bhn, align 4, !tbaa !189
  %i.bjf = fsub float 1.000000e+00, %.1.i.i287
  %i.bjg = call noundef float @logf(float noundef %i.bjf) #38
  %i.bjh = fdiv float %i.bjg, %i.bje
  %i.bji = fsub float %.073.i.i286, %i.bjh        ; 5 uses
  %i.bjj = load i64, ptr %i.bgr, align 8, !tbaa !454 ; 4 uses
  %i.bjk = mul i64 %i.bjj, 6364136223846793005
  %i.bjl = load i64, ptr %i.bho, align 8, !tbaa !453
  %i.bjm = add i64 %i.bjk, %i.bjl
  store i64 %i.bjm, ptr %i.bgr, align 8, !tbaa !454
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
  %.sroa.speculated.i.i.i289 = select i1 %i.bjw, float %i.bjv, float f0x3F7FFFFF ; 2 uses
  %i.bjx = load float, ptr %i.bhp, align 4, !tbaa !303 ; 2 uses
  %i.bjy = fcmp olt float %i.bji, %i.bjx
  br i1 %i.bjy, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit102.i.i294, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit140.i.i

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit102.i.i294: ; preds = %bb.dn
  %i.bjz = fsub float %i.bji, %.073.i.i286
  %i.bka = fneg float %i.bjz                      ; 4 uses
  %.sroa.0.0.copyload.i.i103.i.i295 = load <2 x float>, ptr %i.bhn, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i105.i.i296 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i280, align 4, !tbaa !47 ; 2 uses
  %.sroa.0.0.vec.extract.i.i106.i.i297 = extractelement <2 x float> %.sroa.0.0.copyload.i.i103.i.i295, i64 0
  %i.bkb = fmul float %.sroa.0.0.vec.extract.i.i106.i.i297, %i.bka
  %.sroa.0.4.vec.extract.i.i108.i.i298 = extractelement <2 x float> %.sroa.0.0.copyload.i.i103.i.i295, i64 1
  %i.bkc = fmul float %.sroa.0.4.vec.extract.i.i108.i.i298, %i.bka
  %.sroa.6.8.vec.extract.i.i110.i.i299 = extractelement <2 x float> %.sroa.6.0.copyload.i.i105.i.i296, i64 0
  %i.bkd = fmul float %.sroa.6.8.vec.extract.i.i110.i.i299, %i.bka
  %.sroa.6.12.vec.extract.i.i112.i.i300 = extractelement <2 x float> %.sroa.6.0.copyload.i.i105.i.i296, i64 1
  %i.bke = fmul float %.sroa.6.12.vec.extract.i.i112.i.i300, %i.bka
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
  br i1 %i.bkq, label %_ZN4pbrt7FastExpEf.exit.i.i.i301, label %bb.do

bb.do:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit102.i.i294
  %i.bkr = icmp sgt i32 %i.bkp, 127
  br i1 %i.bkr, label %_ZN4pbrt7FastExpEf.exit.i.i.i301, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bks = and i32 %i.bkm, -2139095041
  %i.bkt = shl nsw i32 %i.bkp, 23
  %i.bku = add nsw i32 %i.bkt, 1065353216
  %i.bkv = or i32 %i.bku, %i.bks
  %i.bkw = bitcast i32 %i.bkv to float
  br label %_ZN4pbrt7FastExpEf.exit.i.i.i301

_ZN4pbrt7FastExpEf.exit.i.i.i301:                 ; preds = %bb.dp, %bb.do, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit102.i.i294
  %.0.i.i.i.i302 = phi float [ %i.bkw, %bb.dp ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit102.i.i294 ], [ +inf, %bb.do ]
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
  br i1 %i.bli, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i303, label %bb.dq

bb.dq:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i.i.i301
  %i.blj = icmp sgt i32 %i.blh, 127
  br i1 %i.blj, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i303, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.blk = and i32 %i.ble, -2139095041
  %i.bll = shl nsw i32 %i.blh, 23
  %i.blm = add nsw i32 %i.bll, 1065353216
  %i.bln = or i32 %i.blm, %i.blk
  %i.blo = bitcast i32 %i.bln to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i.i.i303

_ZN4pbrt7FastExpEf.exit.1.i.i.i303:               ; preds = %bb.dr, %bb.dq, %_ZN4pbrt7FastExpEf.exit.i.i.i301
  %.0.i.1.i.i.i304 = phi float [ %i.blo, %bb.dr ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i.i.i301 ], [ +inf, %bb.dq ]
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
  br i1 %i.bma, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i305, label %bb.ds

bb.ds:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i.i.i303
  %i.bmb = icmp sgt i32 %i.blz, 127
  br i1 %i.bmb, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i305, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.bmc = and i32 %i.blw, -2139095041
  %i.bmd = shl nsw i32 %i.blz, 23
  %i.bme = add nsw i32 %i.bmd, 1065353216
  %i.bmf = or i32 %i.bme, %i.bmc
  %i.bmg = bitcast i32 %i.bmf to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i.i.i305

_ZN4pbrt7FastExpEf.exit.2.i.i.i305:               ; preds = %bb.dt, %bb.ds, %_ZN4pbrt7FastExpEf.exit.1.i.i.i303
  %.0.i.2.i.i.i306 = phi float [ %i.bmg, %bb.dt ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i.i.i303 ], [ +inf, %bb.ds ]
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
  br i1 %i.bms, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i.i.i305
  %i.bmt = icmp sgt i32 %i.bmr, 127
  br i1 %i.bmt, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.bmu = and i32 %i.bmo, -2139095041
  %i.bmv = shl nsw i32 %i.bmr, 23
  %i.bmw = add nsw i32 %i.bmv, 1065353216
  %i.bmx = or i32 %i.bmw, %i.bmu
  %i.bmy = bitcast i32 %i.bmx to float
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %_ZN4pbrt7FastExpEf.exit.2.i.i.i305
  %.0.i.3.i.i.i307 = phi float [ %i.bmy, %bb.dv ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2.i.i.i305 ], [ +inf, %bb.du ]
  %i.bmz = shufflevector <2 x float> %.sroa.0197.1.i.i, <2 x float> %.sroa.21.1.i.i285, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bna = insertelement <4 x float> poison, float %.0.i.i.i.i302, i64 0
  %i.bnb = insertelement <4 x float> %i.bna, float %.0.i.1.i.i.i304, i64 1
  %i.bnc = insertelement <4 x float> %i.bnb, float %.0.i.2.i.i.i306, i64 2
  %i.bnd = insertelement <4 x float> %i.bnc, float %.0.i.3.i.i.i307, i64 3
  %i.bne = fmul <4 x float> %i.bmz, %i.bnd        ; 3 uses
  %i.bnf = insertelement <3 x float> poison, float %i.bji, i64 0
  %i.bng = shufflevector <3 x float> %i.bnf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bnh = fmul <3 x float> %i.bhg, %i.bng
  %i.bni = fmul float %i.bhh, %i.bji
  %i.bnj = fadd <3 x float> %i.bhc, %i.bnh        ; 3 uses
  %i.bnk = fadd float %.sroa.4.0.copyload.i256, %i.bni ; 2 uses
  %i.bnl = load float, ptr %i.bgt, align 4, !tbaa !189
  %i.bnm = call noundef i64 @lroundf(float noundef %i.bnl) #38
  %i.bnn = load i32, ptr %i.bhq, align 8, !tbaa !297
  %i.bno = trunc i64 %i.bnm to i32
  %i.bnp = sub i32 %i.bno, %i.bnn                 ; 2 uses
  %i.bnq = icmp slt i32 %i.bnp, 0
  br i1 %i.bnq, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bnr = zext nneg i32 %i.bnp to i64            ; 2 uses
  %i.bns = load i64, ptr %i.bhr, align 8, !tbaa !221
  %.not.i.i.i308 = icmp ugt i64 %i.bns, %i.bnr
  br i1 %.not.i.i.i308, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.bnt = load ptr, ptr %i.bhs, align 8, !tbaa !222
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %i.bnt, i64 %i.bnr
  %i.bnv = load float, ptr %i.bnu, align 4, !tbaa !189
  %.sroa.0.0.vec.insert.i178.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bnv, i64 0
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %.sroa.0.0.i.i.i309 = phi <2 x float> [ %.sroa.0.0.vec.insert.i178.i.i, %bb.dy ], [ zeroinitializer, %bb.dx ], [ zeroinitializer, %bb.dw ]
  %i.bnw = load float, ptr %i.bht, align 4, !tbaa !189
  %i.bnx = call noundef i64 @lroundf(float noundef %i.bnw) #38
  %i.bny = load i32, ptr %i.bhq, align 8, !tbaa !297
  %i.bnz = trunc i64 %i.bnx to i32
  %i.boa = sub i32 %i.bnz, %i.bny                 ; 2 uses
  %i.bob = icmp slt i32 %i.boa, 0
  br i1 %i.bob, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.boc = zext nneg i32 %i.boa to i64            ; 2 uses
  %i.bod = load i64, ptr %i.bhr, align 8, !tbaa !221
  %.not.1.i.i.i310 = icmp ugt i64 %i.bod, %i.boc
  br i1 %.not.1.i.i.i310, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.boe = load ptr, ptr %i.bhs, align 8, !tbaa !222
  %i.bof = getelementptr inbounds nuw [4 x i8], ptr %i.boe, i64 %i.boc
  %i.bog = load float, ptr %i.bof, align 4, !tbaa !189
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz
  %.sink.i.i.i = phi float [ %i.bog, %bb.eb ], [ 0.000000e+00, %bb.ea ], [ 0.000000e+00, %bb.dz ]
  %i.boh = load float, ptr %i.bhu, align 4, !tbaa !189
  %i.boi = call noundef i64 @lroundf(float noundef %i.boh) #38
  %i.boj = load i32, ptr %i.bhq, align 8, !tbaa !297
  %i.bok = trunc i64 %i.boi to i32
  %i.bol = sub i32 %i.bok, %i.boj                 ; 2 uses
  %i.bom = icmp slt i32 %i.bol, 0
  br i1 %i.bom, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.bon = zext nneg i32 %i.bol to i64            ; 2 uses
  %i.boo = load i64, ptr %i.bhr, align 8, !tbaa !221
  %.not.2.i.i.i311 = icmp ugt i64 %i.boo, %i.bon
  br i1 %.not.2.i.i.i311, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.bop = load ptr, ptr %i.bhs, align 8, !tbaa !222
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %i.bop, i64 %i.bon
  %i.bor = load float, ptr %i.boq, align 4, !tbaa !189
  %.sroa.6.8.vec.insert.i.i.i349 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bor, i64 0
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %bb.ec
  %.sroa.6.0.i.i.i312 = phi <2 x float> [ %.sroa.6.8.vec.insert.i.i.i349, %bb.ee ], [ zeroinitializer, %bb.ed ], [ zeroinitializer, %bb.ec ]
  %i.bos = load float, ptr %i.bhv, align 4, !tbaa !189
  %i.bot = call noundef i64 @lroundf(float noundef %i.bos) #38
  %i.bou = load i32, ptr %i.bhq, align 8, !tbaa !297
  %i.bov = trunc i64 %i.bot to i32
  %i.bow = sub i32 %i.bov, %i.bou                 ; 2 uses
  %i.box = icmp slt i32 %i.bow, 0
  br i1 %i.box, label %.noexc124.i.i314, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.boy = zext nneg i32 %i.bow to i64            ; 2 uses
  %i.boz = load i64, ptr %i.bhr, align 8, !tbaa !221
  %.not.3.i.i.i313 = icmp ugt i64 %i.boz, %i.boy
  br i1 %.not.3.i.i.i313, label %bb.eh, label %.noexc124.i.i314

bb.eh:                                            ; preds = %bb.eg
  %i.bpa = load ptr, ptr %i.bhs, align 8, !tbaa !222
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr %i.bpa, i64 %i.boy
  %i.bpc = load float, ptr %i.bpb, align 4, !tbaa !189
  br label %.noexc124.i.i314

.noexc124.i.i314:                                 ; preds = %bb.eh, %bb.eg, %bb.ef
  %.sink30.i.i.i315 = phi float [ %i.bpc, %bb.eh ], [ 0.000000e+00, %bb.eg ], [ 0.000000e+00, %bb.ef ]
  %i.bpd = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.bhw, ptr noundef nonnull align 4 dereferenceable(32) %i.bgt) ; 2 uses
  %i.bpe = load <8 x float>, ptr %i.bhx, align 8, !tbaa !189, !noalias !3316 ; 4 uses
  %i.bpf = load <4 x float>, ptr %i.bhy, align 8, !tbaa !189, !noalias !3316
  %i.bpg = load <2 x float>, ptr %i.bhz, align 8, !tbaa !189, !noalias !3316
  %i.bph = shufflevector <3 x float> %i.bnj, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bpi = fmul <2 x float> %i.bph, %i.bpg        ; 2 uses
  %shift403 = shufflevector <2 x float> %i.bpi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop404 = fadd <2 x float> %i.bpi, %shift403
  %i.bpj = extractelement <2 x float> %foldExtExtBinop404, i64 0
  %i.bpk = load float, ptr %i.bia, align 8, !tbaa !189, !noalias !3316
  %i.bpl = fmul float %i.bnk, %i.bpk
  %i.bpm = load float, ptr %i.bib, align 4, !tbaa !189, !noalias !3316
  %i.bpn = fadd float %i.bpl, %i.bpm
  %i.bpo = fadd float %i.bpj, %i.bpn              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38, !noalias !3316
  store float %i.bpo, ptr %i.a, align 4, !tbaa !189, !noalias !3316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38, !noalias !3316
  store i32 0, ptr %i.b, align 4, !tbaa !49, !noalias !3316
  %i.bpp = fcmp une float %i.bpo, 0.000000e+00
  br i1 %i.bpp, label %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i316, label %.noexc126.i.i

.noexc126.i.i:                                    ; preds = %.noexc124.i.i314
  call void @_ZN4pbrt8LogFatalIJRA3_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.198, i32 noundef 393, ptr noundef nonnull @.str.199, ptr noundef nonnull align 1 dereferenceable(3) @.str.200, ptr noundef nonnull align 1 dereferenceable(2) @.str.201, ptr noundef nonnull align 1 dereferenceable(3) @.str.200, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.201, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #41
  unreachable

_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i316: ; preds = %.noexc124.i.i314
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38, !noalias !3316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !3316
  %i.bqc = fcmp oeq float %i.bpo, 1.000000e+00
  %i.bqd = load ptr, ptr %i.bic, align 8, !tbaa !333, !noalias !3316 ; 8 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 332
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqd, i64 368
  %i.bqg = load float, ptr %i.bqe, align 4, !tbaa !189, !noalias !3316
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqd, i64 336
  %i.bqi = load float, ptr %i.bqh, align 8, !tbaa !189, !noalias !3316
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqd, i64 340
  %i.bqk = load float, ptr %i.bqj, align 4, !tbaa !189, !noalias !3316
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqd, i64 344
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqd, i64 360
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqd, i64 672 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
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
  %i.bqz = load <3 x float>, ptr %i.bqf, align 8, !tbaa !189, !noalias !3316
  %i.bra = fsub <3 x float> %i.bqx, %i.bqz        ; 6 uses
  %i.brb = extractelement <3 x float> %i.bra, i64 2
  %i.brc = fmul float %i.brb, %i.bqk
  %i.brd = extractelement <3 x float> %i.bra, i64 1
  %i.bre = call float @llvm.fma.f32(float %i.brd, float %i.bqi, float %i.brc)
  %i.brf = extractelement <3 x float> %i.bra, i64 0
  %i.brg = call float @llvm.fma.f32(float %i.brf, float %i.bqg, float %i.bre) ; 2 uses
  %i.brh = load <4 x float>, ptr %i.bql, align 8, !tbaa !189, !noalias !3316 ; 3 uses
  %i.bri = load <2 x float>, ptr %i.bqm, align 8, !tbaa !189, !noalias !3316
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
  %i.bsd = load i64, ptr %i.bsc, align 8, !tbaa !145
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
  %i.bsr = load i32, ptr %i.bsq, align 8, !tbaa !337 ; 2 uses
  %.not12.not.i.i.i.i = icmp eq i32 %i.bsr, 0
  br i1 %.not12.not.i.i.i.i, label %.loopexit.i.i.i320, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i316
  %wide.trip.count.i.i.i.i = zext i32 %i.bsr to i64
  br label %.lr.ph.i.i.i.i

bb.ei:                                            ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i320, label %.lr.ph.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i:                                   ; preds = %bb.ei, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.ei ] ; 2 uses
  %i.bss = getelementptr inbounds nuw [32 x i8], ptr %i.bsf, i64 %indvars.iv.i.i.i.i ; 3 uses
  %i.bst = load i64, ptr %i.bss, align 32, !tbaa !339
  %i.bsu = icmp eq i64 %i.bst, %i.bsp
  br i1 %i.bsu, label %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i, label %bb.ei

_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bss, i64 8
  %i.bsw = load i64, ptr %i.bsv, align 8, !tbaa !340 ; 2 uses
  %.not.i179.i.i = icmp eq i64 %i.bsw, 0
  br i1 %.not.i179.i.i, label %bb.em, label %bb.ej

bb.ej:                                            ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i
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
  %i.btk = load i64, ptr %i.btj, align 8, !tbaa !145
  %i.btl = and i32 %i.btf, 63
  %i.btm = zext nneg i32 %i.btl to i64
  %i.btn = shl nuw i64 1, %i.btm
  %i.bto = and i64 %i.btk, %i.btn
  %.not.i.i.i.i = icmp eq i64 %i.bto, 0
  %i.btp = getelementptr inbounds nuw i8, ptr %i.bsx, i64 8256
  %i.btq = zext nneg i32 %i.btf to i64
  %i.btr = getelementptr inbounds nuw [8 x i8], ptr %i.btp, i64 %i.btq ; 2 uses
  br i1 %.not.i.i.i.i, label %.noexc168.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.bts = load i64, ptr %i.btr, align 8, !tbaa !47
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
  %i.buj = load i64, ptr %i.bui, align 8, !tbaa !145
  %i.buk = and i32 %i.bue, 63
  %i.bul = zext nneg i32 %i.buk to i64
  %i.bum = shl nuw i64 1, %i.bul
  %i.bun = and i64 %i.buj, %i.bum
  %.not.i.i.i.i.i = icmp eq i64 %i.bun, 0
  %i.buo = getelementptr inbounds nuw i8, ptr %i.btt, i64 1088
  %i.bup = zext nneg i32 %i.bue to i64
  %i.buq = getelementptr inbounds nuw [8 x i8], ptr %i.buo, i64 %i.bup ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.noexc168.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.bur = load i64, ptr %i.buq, align 8, !tbaa !47
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

bb.em:                                            ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bss, i64 20
  br label %.noexc168.i.i

.loopexit.i.i.i320:                               ; preds = %bb.ei, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i316
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bse, i64 28
  br label %.noexc168.i.i

.noexc168.i.i:                                    ; preds = %.loopexit.i.i.i320, %bb.em, %bb.el, %bb.ek, %bb.ej
  %.1.in.i.i.i = phi ptr [ %i.bvf, %.loopexit.i.i.i320 ], [ %i.bve, %bb.em ], [ %i.buq, %bb.ek ], [ %i.bvd, %bb.el ], [ %i.btr, %bb.ej ]
  %.1.i.i.i = load float, ptr %.1.in.i.i.i, align 4, !tbaa !47 ; 2 uses
  %i.bvg = add nsw i32 %i.bsb, 1
  store i32 %i.bvg, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !49
  %i.bvh = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bse, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.bvi = load i32, ptr %i.bid, align 4, !tbaa !49
  %i.bvj = add nsw i32 %i.bvi, 1
  store i32 %i.bvj, ptr %i.bid, align 4, !tbaa !49
  %i.bvk = load i64, ptr %i.bsc, align 8, !tbaa !145
  %i.bvl = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bvk
  %i.bvm = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bvl, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.bvn = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !49
  %i.bvo = add nsw i32 %i.bvn, -1
  store i32 %i.bvo, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !49
  %i.bvp = load i64, ptr %i.bsc, align 8, !tbaa !145
  %i.bvq = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bvp
  %i.bvr = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bvq, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %i.bvs = load i32, ptr %2, align 8, !tbaa !49
  %i.bvt = add nsw i32 %i.bvs, 1
  store i32 %i.bvt, ptr %2, align 8, !tbaa !49
  %i.bvu = load i64, ptr %i.bsc, align 8, !tbaa !145
  %i.bvv = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bvu
  %i.bvw = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bvv, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %i.bvx = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !49
  %i.bvy = add nsw i32 %i.bvx, 1
  store i32 %i.bvy, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !49
  %i.bvz = load i64, ptr %i.bsc, align 8, !tbaa !145
  %i.bwa = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bvz
  %i.bwb = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bwa, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.bwc = load i32, ptr %i.bid, align 4, !tbaa !49
  %i.bwd = add nsw i32 %i.bwc, -1
  store i32 %i.bwd, ptr %i.bid, align 4, !tbaa !49
  %i.bwe = load i64, ptr %i.bsc, align 8, !tbaa !145
  %i.bwf = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bwe
  %i.bwg = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bwf, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.bwh = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !49
  %i.bwi = add nsw i32 %i.bwh, -1
  store i32 %i.bwi, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !49
  %i.bwj = load i64, ptr %i.bsc, align 8, !tbaa !145
  %i.bwk = getelementptr inbounds i8, ptr %i.bqn, i64 %i.bwj
  %i.bwl = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bwk, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.bwm = extractelement <3 x float> %i.bqx, i64 2
  %i.bwn = call { <2 x float>, <2 x float> } @_ZNK4pbrt13NanoVDBMedium2LeENS_6Point3IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(404) %i.bhk, <2 x float> %i.bqy, float %i.bwm, ptr noundef nonnull align 4 dereferenceable(32) %i.bgt) ; 0 uses
  %i.bwo = load i8, ptr %i.bhm, align 4, !tbaa !299, !range !136, !noundef !137
  %i.bwp = trunc nuw i8 %i.bwo to i1
  br i1 %i.bwp, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i, label %.noexc133.i.i

.noexc133.i.i:                                    ; preds = %.noexc168.i.i
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #41
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
  %.sroa.04.0.copyload.i.i321 = load <2 x float>, ptr %i.bhn, align 4 ; 2 uses
  %.sroa.25.0.copyload.i.i322 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i280, align 4, !tbaa !47
  %22 = shufflevector <4 x float> %i.bne, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %23 = insertelement <2 x float> %22, float %i.bwy, i64 0 ; 2 uses
  %24 = shufflevector <2 x float> %.sroa.04.0.copyload.i.i321, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %25 = insertelement <2 x float> %24, float %i.bxj, i64 0 ; 2 uses
  %26 = fadd <2 x float> %23, %25
  %27 = fmul <2 x float> %23, %25                 ; 2 uses
  %28 = shufflevector <2 x float> %i.bpr, <2 x float> %i.bpq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bxk = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bxl = fmul <4 x float> %28, %i.bxk
  %i.bxm = shufflevector <2 x float> %.sroa.0.0.i.i.i309, <2 x float> %.sroa.6.0.i.i.i312, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.bxn = insertelement <4 x float> %i.bxm, float %.sink.i.i.i, i64 1
  %i.bxo = insertelement <4 x float> %i.bxn, float %.sink30.i.i.i315, i64 3
  %i.bxp = fmul <4 x float> %i.bxo, %i.bxk
  %i.bxq = shufflevector <2 x float> %.sroa.04.0.copyload.i.i321, <2 x float> %.sroa.25.0.copyload.i.i322, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bxr = fsub <4 x float> %i.bxq, %i.bxp
  %i.bxs = fsub <4 x float> %i.bxr, %i.bxl        ; 2 uses
  %i.bxt = fcmp ogt <4 x float> %i.bxs, zeroinitializer
  %i.bxu = select <4 x i1> %i.bxt, <4 x float> %i.bxs, <4 x float> zeroinitializer
  %i.bxv = fmul <4 x float> %i.bne, %i.bxu
  %29 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %30 = fdiv <4 x float> %i.bxv, %29              ; 2 uses
  %i.bxw = load <4 x float>, ptr %.sroa.018.0.copyload.i263, align 4, !tbaa !189
  %i.bxx = fmul <4 x float> %30, %i.bxw
  store <4 x float> %i.bxx, ptr %.sroa.018.0.copyload.i263, align 4, !tbaa !189
  %31 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %32 = shufflevector <4 x float> %31, <4 x float> %i.bne, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %33 = insertelement <4 x float> %i.bxq, float 1.000000e+00, i64 0
  %34 = fmul <4 x float> %32, %33
  %i.bxy = fdiv <4 x float> %34, %29
  %i.bxz = load <4 x float>, ptr %.sroa.2.0.copyload.i265, align 4, !tbaa !189
  %i.bya = fmul <4 x float> %i.bxy, %i.bxz
  store <4 x float> %i.bya, ptr %.sroa.2.0.copyload.i265, align 4, !tbaa !189
  %i.byb = load <4 x float>, ptr %.sroa.319.0.copyload.i267, align 4, !tbaa !189
  %i.byc = fmul <4 x float> %30, %i.byb           ; 3 uses
  store <4 x float> %i.byc, ptr %.sroa.319.0.copyload.i267, align 4, !tbaa !189
  %.sroa.0.0.copyload4.i103.i.i.i330 = load <2 x float>, ptr %.sroa.2.0.copyload.i265, align 4
  %.sroa.8.0.copyload.i105.i.i.i331 = load <2 x float>, ptr %i.bii, align 4, !tbaa !47
  %i.byd = shufflevector <4 x float> %i.byc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bye = fadd <2 x float> %i.byd, %.sroa.0.0.copyload4.i103.i.i.i330 ; 2 uses
  %i.byf = shufflevector <4 x float> %i.byc, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.byg = fadd <2 x float> %i.byf, %.sroa.8.0.copyload.i105.i.i.i331 ; 2 uses
  %shift410 = shufflevector <2 x float> %i.bye, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop411 = fadd <2 x float> %i.bye, %shift410
  %foldExtExtBinop413 = fadd <2 x float> %foldExtExtBinop411, %i.byg
  %shift415 = shufflevector <2 x float> %i.byg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop416 = fadd <2 x float> %shift415, %foldExtExtBinop413
  %i.byh = extractelement <2 x float> %foldExtExtBinop416, i64 0
  %i.byi = fmul float %i.byh, 2.500000e-01        ; 3 uses
  %.sroa.0.0.copyload4.i116.i.i.i336 = load <2 x float>, ptr %.sroa.018.0.copyload.i263, align 4 ; 4 uses
  %.sroa.8.0.copyload.i118.i.i.i337 = load <2 x float>, ptr %i.bih, align 4 ; 3 uses
  %.sroa.0.0.vec.extract.i119.i.i.i338 = extractelement <2 x float> %.sroa.0.0.copyload4.i116.i.i.i336, i64 0
  %.sroa.0.4.vec.extract.i121.i.i.i339 = extractelement <2 x float> %.sroa.0.0.copyload4.i116.i.i.i336, i64 1 ; 2 uses
  %i.byj = insertelement <2 x float> poison, float %i.byi, i64 0
  %i.byk = shufflevector <2 x float> %i.byj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.byl = fdiv <2 x float> %.sroa.0.0.copyload4.i116.i.i.i336, %i.byk ; 2 uses
  %.sroa.8.8.vec.extract.i123.i.i.i340 = extractelement <2 x float> %.sroa.8.0.copyload.i118.i.i.i337, i64 0 ; 3 uses
  %i.bym = fdiv float %.sroa.8.8.vec.extract.i123.i.i.i340, %i.byi ; 2 uses
  %.sroa.8.12.vec.extract.i125.i.i.i341 = extractelement <2 x float> %.sroa.8.0.copyload.i118.i.i.i337, i64 1 ; 3 uses
  %i.byn = fdiv float %.sroa.8.12.vec.extract.i125.i.i.i341, %i.byi ; 2 uses
  %i.byo = extractelement <2 x float> %i.byl, i64 0 ; 2 uses
  %i.byp = extractelement <2 x float> %i.byl, i64 1 ; 2 uses
  %i.byq = fcmp olt float %i.byo, %i.byp
  %.sroa.speculated.i129.i.i.i342 = select i1 %i.byq, float %i.byp, float %i.byo ; 2 uses
  %i.byr = fcmp olt float %.sroa.speculated.i129.i.i.i342, %i.bym
  %.sroa.speculated.1.i130.i.i.i343 = select i1 %i.byr, float %i.bym, float %.sroa.speculated.i129.i.i.i342 ; 2 uses
  %i.bys = fcmp olt float %.sroa.speculated.1.i130.i.i.i343, %i.byn
  %.sroa.speculated.2.i131.i.i.i344 = select i1 %i.bys, float %i.byn, float %.sroa.speculated.1.i130.i.i.i343
  %i.byt = fcmp olt float %.sroa.speculated.2.i131.i.i.i344, 5.000000e-02
  br i1 %i.byt, label %bb.en, label %bb.eq

bb.en:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i
  %i.byu = load i64, ptr %.sroa.420.0.copyload.i269, align 8, !tbaa !454 ; 4 uses
  %i.byv = mul i64 %i.byu, 6364136223846793005
  %i.byw = load i64, ptr %i.bij, align 8, !tbaa !453
  %i.byx = add i64 %i.byv, %i.byw
  store i64 %i.byx, ptr %.sroa.420.0.copyload.i269, align 8, !tbaa !454
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
  %.sroa.speculated.i132.i.i.i348 = select i1 %i.bzh, float %i.bzg, float f0x3F7FFFFF
  %i.bzi = fcmp olt float %.sroa.speculated.i132.i.i.i348, 7.500000e-01
  br i1 %i.bzi, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.018.0.copyload.i263, i8 0, i64 16, i1 false)
  br label %bb.eq

bb.ep:                                            ; preds = %bb.en
  %i.bzj = shufflevector <2 x float> %.sroa.0.0.copyload4.i116.i.i.i336, <2 x float> %.sroa.8.0.copyload.i118.i.i.i337, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bzk = fmul <4 x float> %i.bzj, splat (float 4.000000e+00) ; 2 uses
  %i.bzl = fmul float %.sroa.0.4.vec.extract.i121.i.i.i339, 4.000000e+00
  %i.bzm = fmul float %.sroa.8.8.vec.extract.i123.i.i.i340, 4.000000e+00
  %i.bzn = fmul float %.sroa.8.12.vec.extract.i125.i.i.i341, 4.000000e+00
  store <4 x float> %i.bzk, ptr %.sroa.018.0.copyload.i263, align 4, !tbaa !189
  %i.bzo = extractelement <4 x float> %i.bzk, i64 0
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i
  %i.bzp = phi float [ %i.bzn, %bb.ep ], [ 0.000000e+00, %bb.eo ], [ %.sroa.8.12.vec.extract.i125.i.i.i341, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i ]
  %i.bzq = phi float [ %i.bzm, %bb.ep ], [ 0.000000e+00, %bb.eo ], [ %.sroa.8.8.vec.extract.i123.i.i.i340, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i ]
  %i.bzr = phi float [ %i.bzl, %bb.ep ], [ 0.000000e+00, %bb.eo ], [ %.sroa.0.4.vec.extract.i121.i.i.i339, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i ]
  %i.bzs = phi float [ %i.bzo, %bb.ep ], [ 0.000000e+00, %bb.eo ], [ %.sroa.0.0.vec.extract.i119.i.i.i338, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i ]
  %i.bzt = fcmp une float %i.bzs, 0.000000e+00
  %i.bzu = fcmp une float %i.bzr, 0.000000e+00
  %or.cond.i.i.i.i345 = or i1 %i.bzu, %i.bzt
  %i.bzv = fcmp une float %i.bzq, 0.000000e+00
  %or.cond14.i.i.i.i346 = or i1 %i.bzv, %or.cond.i.i.i.i345
  %i.bzw = fcmp une float %i.bzp, 0.000000e+00
  %or.cond17.i.i.i.i347 = or i1 %i.bzw, %or.cond14.i.i.i.i346
  br i1 %or.cond17.i.i.i.i347, label %bb.dm, label %"_ZZN4pbrt11SampleT_majIZNKS_17VolPathIntegrator8SampleLdERKNS_11InteractionEPKNS_4BSDFERNS_18SampledWavelengthsENS_7SamplerENS_15SampledSpectrumESB_E3$_0EESB_NS_3RayEffRNS_3RNGERKS8_T_ENKUlSI_E_clIPNS_13NanoVDBMediumEEEDaSI_.exit"

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit140.i.i: ; preds = %bb.dn
  %i.bzx = fsub float %i.bjx, %.073.i.i286        ; 2 uses
  %i.bzy = call float @llvm.fabs.f32(float %i.bzx)
  %i.bzz = fcmp oeq float %i.bzy, +inf
  %.neg.i.i290 = fneg float %i.bzx
  %i.caa = select i1 %i.bzz, float f0xFF7FFFFF, float %.neg.i.i290 ; 4 uses
  %.sroa.0.0.copyload.i.i141.i.i = load <2 x float>, ptr %i.bhn, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i143.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i280, align 4, !tbaa !47 ; 2 uses
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
  br i1 %i.caq, label %_ZN4pbrt7FastExpEf.exit.i154.i.i, label %bb.er

bb.er:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit140.i.i
  %i.car = icmp sgt i32 %i.cap, 127
  br i1 %i.car, label %_ZN4pbrt7FastExpEf.exit.i154.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.cas = and i32 %i.cam, -2139095041
  %i.cat = shl nsw i32 %i.cap, 23
  %i.cau = add nsw i32 %i.cat, 1065353216
  %i.cav = or i32 %i.cau, %i.cas
  %i.caw = bitcast i32 %i.cav to float
  br label %_ZN4pbrt7FastExpEf.exit.i154.i.i

_ZN4pbrt7FastExpEf.exit.i154.i.i:                 ; preds = %bb.es, %bb.er, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit140.i.i
  %.0.i.i155.i.i = phi float [ %i.caw, %bb.es ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit140.i.i ], [ +inf, %bb.er ]
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
  br i1 %i.cbi, label %_ZN4pbrt7FastExpEf.exit.1.i156.i.i, label %bb.et

bb.et:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i154.i.i
  %i.cbj = icmp sgt i32 %i.cbh, 127
  br i1 %i.cbj, label %_ZN4pbrt7FastExpEf.exit.1.i156.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.cbk = and i32 %i.cbe, -2139095041
  %i.cbl = shl nsw i32 %i.cbh, 23
  %i.cbm = add nsw i32 %i.cbl, 1065353216
  %i.cbn = or i32 %i.cbm, %i.cbk
  %i.cbo = bitcast i32 %i.cbn to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i156.i.i

_ZN4pbrt7FastExpEf.exit.1.i156.i.i:               ; preds = %bb.eu, %bb.et, %_ZN4pbrt7FastExpEf.exit.i154.i.i
  %.0.i.1.i157.i.i = phi float [ %i.cbo, %bb.eu ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i154.i.i ], [ +inf, %bb.et ]
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
  br i1 %i.cca, label %_ZN4pbrt7FastExpEf.exit.2.i158.i.i, label %bb.ev

bb.ev:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i156.i.i
  %i.ccb = icmp sgt i32 %i.cbz, 127
  br i1 %i.ccb, label %_ZN4pbrt7FastExpEf.exit.2.i158.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ccc = and i32 %i.cbw, -2139095041
  %i.ccd = shl nsw i32 %i.cbz, 23
  %i.cce = add nsw i32 %i.ccd, 1065353216
  %i.ccf = or i32 %i.cce, %i.ccc
  %i.ccg = bitcast i32 %i.ccf to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i158.i.i

_ZN4pbrt7FastExpEf.exit.2.i158.i.i:               ; preds = %bb.ew, %bb.ev, %_ZN4pbrt7FastExpEf.exit.1.i156.i.i
  %.0.i.2.i159.i.i = phi float [ %i.ccg, %bb.ew ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i156.i.i ], [ +inf, %bb.ev ]
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
  br i1 %i.ccs, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i158.i.i
  %i.cct = icmp sgt i32 %i.ccr, 127
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFvllEZN4pbrt14SPPMIntegrator6RenderEvE3$_6E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation":bb.a
bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt14SPPMIntegrator6RenderEvE3$_6", ptr %0, align 8, !tbaa !719
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_6E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !165
  store ptr %.val, ptr %0, align 8, !tbaa !165
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_6E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(104) %.val6, i64 104, i1 false), !tbaa.struct !3764
  store ptr %i.a, ptr %0, align 8, !tbaa !165
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_6E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !165 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_6E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 104) #39
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_6E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_6E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc <2 x float> @"_ZZZN4pbrt14SPPMIntegrator6RenderEvENK3$_6clEllENKUlvE0_clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #32 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3766, !nonnull !137, !align !637 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3767, !nonnull !137, !align !686
  %i.e = load i64, ptr %i.d, align 8, !tbaa !145  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3768, !nonnull !137, !align !686
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !558
  %i.i = sext i32 %i.b to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !671  ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr @_ZN4pbrt6PrimesE, i64 %i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !49   ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 6 uses
  %i.o = udiv i64 -1, %i.n
  %i.p = sub nuw i64 %i.o, %i.n
  %i.q = uitofp i32 %i.m to float
  %i.r = fdiv nnan float 1.000000e+00, %i.q
  %i.s = add i32 %i.m, -1                         ; 2 uses
  %i.t = uitofp i32 %i.s to float
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN4pbrt23ScrambledRadicalInverseEimRKNS_16DigitPermutationE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !634
  %i.x = load i32, ptr %i.u, align 8, !tbaa !633
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.029.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %.02328.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ak, %bb.b ] ; 2 uses
  %.02427.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %bb.b ]
  %.02526.i = phi float [ 1.000000e+00, %.lr.ph.i ], [ %i.aj, %bb.b ]
  %i.y = udiv i64 %.029.i, %i.n                   ; 2 uses
  %i.z = mul i64 %i.y, %i.n                       ; 0 uses
  %.recomposed = urem i64 %.029.i, %i.n
  %i.aa = trunc i64 %.recomposed to i32
  %i.ab = mul i64 %.02427.i, %i.n
  %i.ac = mul nsw i32 %.02328.i, %i.x
  %i.ad = add nsw i32 %i.ac, %i.aa
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.w, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !590
  %i.ah = zext i16 %i.ag to i64
  %i.ai = add i64 %i.ab, %i.ah                    ; 3 uses
  %i.aj = fmul float %i.r, %.02526.i              ; 3 uses
  %i.ak = add nuw nsw i32 %.02328.i, 1
  %i.al = fmul float %i.aj, %i.t
  %i.am = fsub float 1.000000e+00, %i.al
  %i.an = fcmp olt float %i.am, 1.000000e+00
  %i.ao = icmp ult i64 %i.ai, %i.p
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %bb.b, label %._crit_edge.loopexit.i, !llvm.loop !23

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.aq = uitofp i64 %i.ai to float
  %i.ar = fmul float %i.aj, %i.aq
  br label %_ZN4pbrt23ScrambledRadicalInverseEimRKNS_16DigitPermutationE.exit

_ZN4pbrt23ScrambledRadicalInverseEimRKNS_16DigitPermutationE.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.as = phi float [ 0.000000e+00, %bb.a ], [ %i.ar, %._crit_edge.loopexit.i ] ; 2 uses
  %i.at = add nsw i32 %i.b, 1
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr @_ZN4pbrt6PrimesE, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !49 ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 6 uses
  %i.ay = udiv i64 -1, %i.ax
  %i.az = sub nuw i64 %i.ay, %i.ax
  %i.ba = uitofp i32 %i.aw to float
  %i.bb = fdiv nnan float 1.000000e+00, %i.ba
  %i.bc = add i32 %i.aw, -1                       ; 2 uses
  %i.bd = uitofp i32 %i.bc to float
  %.not.i1 = icmp eq i32 %i.bc, 0
  br i1 %.not.i1, label %_ZN4pbrt23ScrambledRadicalInverseEimRKNS_16DigitPermutationE.exit9, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %_ZN4pbrt23ScrambledRadicalInverseEimRKNS_16DigitPermutationE.exit
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.au ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !634
  %i.bh = load i32, ptr %i.be, align 8, !tbaa !633
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i2
  %.029.i3 = phi i64 [ %i.e, %.lr.ph.i2 ], [ %i.bi, %bb.c ] ; 2 uses
  %.02328.i4 = phi i32 [ 0, %.lr.ph.i2 ], [ %i.bu, %bb.c ] ; 2 uses
  %.02427.i5 = phi i64 [ 0, %.lr.ph.i2 ], [ %i.bs, %bb.c ]
  %.02526.i6 = phi float [ 1.000000e+00, %.lr.ph.i2 ], [ %i.bt, %bb.c ]
  %i.bi = udiv i64 %.029.i3, %i.ax                ; 2 uses
  %i.bj = mul i64 %i.bi, %i.ax                    ; 0 uses
  %.recomposed29 = urem i64 %.029.i3, %i.ax
  %i.bk = trunc i64 %.recomposed29 to i32
  %i.bl = mul i64 %.02427.i5, %i.ax
  %i.bm = mul nsw i32 %.02328.i4, %i.bh
  %i.bn = add nsw i32 %i.bm, %i.bk
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !590
  %i.br = zext i16 %i.bq to i64
  %i.bs = add i64 %i.bl, %i.br                    ; 3 uses
  %i.bt = fmul float %i.bb, %.02526.i6            ; 3 uses
  %i.bu = add nuw nsw i32 %.02328.i4, 1
  %i.bv = fmul float %i.bt, %i.bd
  %i.bw = fsub float 1.000000e+00, %i.bv
  %i.bx = fcmp olt float %i.bw, 1.000000e+00
  %i.by = icmp ult i64 %i.bs, %i.az
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %bb.c, label %._crit_edge.loopexit.i7, !llvm.loop !23

._crit_edge.loopexit.i7:                          ; preds = %bb.c
  %i.ca = uitofp i64 %i.bs to float
  %i.cb = fmul float %i.bt, %i.ca
  br label %_ZN4pbrt23ScrambledRadicalInverseEimRKNS_16DigitPermutationE.exit9

_ZN4pbrt23ScrambledRadicalInverseEimRKNS_16DigitPermutationE.exit9: ; preds = %_ZN4pbrt23ScrambledRadicalInverseEimRKNS_16DigitPermutationE.exit, %._crit_edge.loopexit.i7
  %i.cc = phi float [ 0.000000e+00, %_ZN4pbrt23ScrambledRadicalInverseEimRKNS_16DigitPermutationE.exit ], [ %i.cb, %._crit_edge.loopexit.i7 ] ; 2 uses
  %i.cd = fcmp ogt float %i.as, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.cd, float f0x3F7FFFFF, float %i.as
  %i.ce = fcmp ogt float %i.cc, f0x3F7FFFFF
  %.sroa.speculated.i8 = select i1 %i.ce, float f0x3F7FFFFF, float %i.cc
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %.sroa.speculated.i, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %.sroa.speculated.i8, i64 1
  %i.cf = add nsw i32 %i.b, 2
  store i32 %i.cf, ptr %i.a, align 4, !tbaa !49
  ret <2 x float> %.sroa.0.4.vec.insert
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal void @"_ZNSt17_Function_handlerIFvN4pbrt6Point2IiEEEZNS0_14SPPMIntegrator6RenderEvE3$_7E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #33 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 4 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3770, !nonnull !137, !align !686 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.4.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i.i to i32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.c = sub i32 %.sroa.0.0.extract.trunc.i.i.i.i, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !150
  %i.f = sub nsw i32 %.sroa.4.0.extract.trunc.i.i.i.i, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !546
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !149
  %i.k = sub nsw i32 %i.j, %i.b
  %i.l = mul nsw i32 %i.k, %i.f
  %i.m = add nsw i32 %i.c, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [144 x i8], ptr %i.h, i64 %i.n ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 124 ; 2 uses
  %i.q = load atomic i32, ptr %i.p monotonic, align 4 ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.loopexit.loopexit.i.i.i, label %"_ZSt10__invoke_rIvRZN4pbrt14SPPMIntegrator6RenderEvE3$_7JNS0_6Point2IiEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit"

.loopexit.loopexit.i.i.i:                         ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 140 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !3771 ; 2 uses
  %i.u = uitofp nneg i32 %i.q to float            ; 2 uses
  %i.v = fmul nnan float %i.u, f0x3F2AAAAB
  %i.w = fadd float %i.v, %i.t                    ; 2 uses
  %i.x = load float, ptr %i.o, align 8, !tbaa !554
  %i.y = fadd float %i.t, %i.u
  %i.z = fdiv float %i.w, %i.y
  %i.aa = tail call noundef float @sqrtf(float noundef %i.z) #38
  %i.ab = fmul float %i.x, %i.aa                  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.ad = load atomic i32, ptr %i.ac seq_cst, align 8
  %2 = bitcast i32 %i.ad to float
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 116 ; 2 uses
  %i.af = load atomic i32, ptr %i.ae seq_cst, align 4
  %3 = bitcast i32 %i.af to float
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 120 ; 2 uses
  %i.ah = load atomic i32, ptr %i.ag seq_cst, align 8
  %i.ai = bitcast i32 %i.ah to float
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load <2 x float>, ptr %i.aj, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 136 ; 2 uses
  %.sroa.8.0.copyload.i.i.i.i = load float, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !tbaa !189
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i.i.i, i64 0
  %4 = fadd float %.sroa.0.0.vec.extract.i.i.i.i, %2
  %.sroa.0.4.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i.i.i, i64 1
  %5 = fadd float %.sroa.0.4.vec.extract.i.i.i.i, %3
  %6 = fadd float %.sroa.8.0.copyload.i.i.i.i, %i.ai
  %7 = fmul float %i.ab, %i.ab                    ; 3 uses
  %i.ak = fmul float %7, %4
  %i.al = fmul float %7, %5
  %8 = fmul float %7, %6
  %9 = load float, ptr %i.o, align 8, !tbaa !554  ; 2 uses
  %10 = fmul float %9, %9                         ; 3 uses
  %11 = fdiv float %i.ak, %10
  %.sroa.0.0.vec.insert.i51.i.i.i = insertelement <2 x float> poison, float %11, i64 0
  %12 = fdiv float %i.al, %10
  %.sroa.0.4.vec.insert.i53.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i51.i.i.i, float %12, i64 1
  %i.am = fdiv float %8, %10
  store <2 x float> %.sroa.0.4.vec.insert.i53.i.i.i, ptr %i.aj, align 8
  store float %i.am, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !tbaa !189
  store float %i.w, ptr %i.s, align 4, !tbaa !3771
  store float %i.ab, ptr %i.o, align 8, !tbaa !554
  store atomic i32 0, ptr %i.p seq_cst, align 4
  store atomic i32 0, ptr %i.ac seq_cst, align 8
  store atomic i32 0, ptr %i.ae seq_cst, align 4
  store atomic i32 0, ptr %i.ag seq_cst, align 8
  br label %"_ZSt10__invoke_rIvRZN4pbrt14SPPMIntegrator6RenderEvE3$_7JNS0_6Point2IiEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit"

"_ZSt10__invoke_rIvRZN4pbrt14SPPMIntegrator6RenderEvE3$_7JNS0_6Point2IiEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %bb.a, %.loopexit.loopexit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 0, ptr %i.ao, align 8, !tbaa !362
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ap, align 8
  %.sroa.14.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store float 1.000000e+00, ptr %.sroa.14.8..sroa_idx.i.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN4pbrt6Point2IiEEEZNS0_14SPPMIntegrator6RenderEvE3$_7E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #29 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_7E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt14SPPMIntegrator6RenderEvE3$_7", ptr %0, align 8, !tbaa !719
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_7E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !165
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_7E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !560
  store i64 %.val.i, ptr %0, align 8, !tbaa !560
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_7E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_7E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN4pbrt6Point2IiEEEZNS0_14SPPMIntegrator6RenderEvE3$_8E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #11 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !165   ; 5 uses
  %.val2 = load i64, ptr %1, align 4              ; 3 uses
  %.sroa.044.0.extract.trunc.i.i.i = trunc i64 %.val2 to i32
  %.sroa.245.0.extract.shift.i.i.i = lshr i64 %.val2, 32 ; 2 uses
  %.sroa.245.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.245.0.extract.shift.i.i.i to i32
  %i.b = load ptr, ptr %.val, align 8, !tbaa !3773, !nonnull !137, !align !686 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %i.d = sub i32 %.sroa.044.0.extract.trunc.i.i.i, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !150
  %i.g = sub nsw i32 %.sroa.245.0.extract.trunc.i.i.i, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !546
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !149
  %i.l = sub nsw i32 %i.k, %i.c
  %i.m = mul nsw i32 %i.l, %i.g
  %i.n = add nsw i32 %i.d, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [144 x i8], ptr %i.i, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3774, !nonnull !137, !align !637
  %i.t = load i32, ptr %i.s, align 4, !tbaa !49
  %i.u = add nsw i32 %i.t, 1
  %i.v = sitofp i32 %i.u to float                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load <2 x float>, ptr %i.q, align 4
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.sroa.8.0.copyload.i.i.i.i = load float, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 4, !tbaa !189
  %i.w = fdiv float %.sroa.8.0.copyload.i.i.i.i, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3775, !nonnull !137, !align !686
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !145
  %i.ab = uitofp i64 %i.aa to float
  %i.ac = fmul nnan float %i.ab, f0x40490FDB
  %i.ad = load float, ptr %i.p, align 8, !tbaa !554 ; 2 uses
  %i.ae = fmul float %i.ad, %i.ad
  %i.af = fmul float %i.ac, %i.ae                 ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i = load <2 x float>, ptr %i.x, align 8
  %.sroa.8.0..sroa_idx.i24.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %.sroa.8.0.copyload.i25.i.i.i = load float, ptr %.sroa.8.0..sroa_idx.i24.i.i.i, align 8, !tbaa !189
  %i.ag = fdiv float %.sroa.8.0.copyload.i25.i.i.i, %i.af
  %i.ah = fadd float %i.w, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3776, !nonnull !137, !align !637
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.aj, align 4 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i, 32
  %i.ak = sub i64 %.val2, %.sroa.02.0.copyload.i.i.i
  %i.al = sub nsw i64 %.sroa.245.0.extract.shift.i.i.i, %.sroa.2.0.extract.shift.i.i.i.i
  %.sroa.2.0.insert.ext.i.i.i.i = shl i64 %i.al, 32
  %.sroa.0.0.insert.ext.i.i.i.i = and i64 %i.ak, 4294967295
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.ext.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !3777, !nonnull !137, !align !686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.ao = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x float> %.sroa.0.0.copyload.i.i.i.i, %i.ap
  %i.ar = insertelement <2 x float> poison, float %i.af, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fdiv <2 x float> %.sroa.0.0.copyload.i23.i.i.i, %i.as
  %i.au = fadd <2 x float> %i.aq, %i.at
  store <2 x float> %i.au, ptr %i.a, align 8, !tbaa !189
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.ah, ptr %i.av, align 8, !tbaa !189
  call void @_ZN4pbrt5Image11SetChannelsENS_6Point2IiEEN4pstd4spanIKfEE(ptr noundef nonnull align 8 dereferenceable(152) %i.an, i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr nonnull %i.a, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN4pbrt6Point2IiEEEZNS0_14SPPMIntegrator6RenderEvE3$_8E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_8E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt14SPPMIntegrator6RenderEvE3$_8", ptr %0, align 8, !tbaa !719
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_8E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !165
  store ptr %.val, ptr %0, align 8, !tbaa !165
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_8E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !3778
  store ptr %i.a, ptr %0, align 8, !tbaa !165
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_8E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !165 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_8E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #39
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_8E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt14SPPMIntegrator6RenderEvE3$_8E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN4pbrt5Image11SetChannelsENS_6Point2IiEEN4pstd4spanIKfEE(ptr noundef nonnull align 8 dereferenceable(152), i64, ptr, i64) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_6CameraEJRKfRKiS8_RKNS_13RGBColorSpaceEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(152) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !507
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %i.c, ptr noundef %0)
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 42, i64 noundef 0) #38
  %.not = icmp eq i64 %i.d, -1
  %i.e = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 115, i64 noundef 0) #38
  %.not20 = icmp eq i64 %i.e, -1
  %i.f = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 100, i64 noundef 0) #38
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not21 = icmp eq i64 %i.f, -1
  br i1 %.not21, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not20, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.f unwind label %bb.n
end_hunk_2
