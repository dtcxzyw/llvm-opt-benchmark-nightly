Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/media?download=true
inline.NumInlined: 3149
inline.NumDeleted: 1021
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@"_ZN4pbrt13TaggedPointerIJNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEE8DispatchIRZZNS_23WavefrontPathIntegrator23SampleMediumInteractionEiENK3$_0clENS_20MediumSampleWorkItemEEUlT_E_EEDcOSH_":bb.a
  %.sroa.9.0..sroa_idx.i40.i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 %i.ni, ptr %.sroa.9.0..sroa_idx.i40.i.i, align 8
  %.sroa.10.0..sroa_idx.i41.i.i = getelementptr inbounds nuw i8, ptr %2, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx.i41.i.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.le, i64 12, i1 false)
  %.sroa.12.0..sroa_idx.i42.i.i = getelementptr inbounds nuw i8, ptr %2, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.12.0..sroa_idx.i42.i.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.lg, i64 12, i1 false)
  %.sroa.14.0..sroa_idx.i43.i.i = getelementptr inbounds nuw i8, ptr %2, i64 124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.0..sroa_idx.i43.i.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.li, i64 12, i1 false)
  %.sroa.15.0..sroa_idx.i44.i.i = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 %i.nj, ptr %.sroa.15.0..sroa_idx.i44.i.i, align 8
  %.sroa.16.0..sroa_idx.i45.i.i = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i32 %i.nk, ptr %.sroa.16.0..sroa_idx.i45.i.i, align 8
  %.sroa.17.0..sroa_idx.i46.i.i = getelementptr inbounds nuw i8, ptr %2, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.17.0..sroa_idx.i46.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ll, i64 32, i1 false)
  %.sroa.18.0..sroa_idx.i47.i.i = getelementptr inbounds nuw i8, ptr %2, i64 180
  store i32 %i.nl, ptr %.sroa.18.0..sroa_idx.i47.i.i, align 4
  %.sroa.19.0..sroa_idx.i48.i.i = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i32 %i.nm, ptr %.sroa.19.0..sroa_idx.i48.i.i, align 8
  %.sroa.20.0..sroa_idx.i49.i.i = getelementptr inbounds nuw i8, ptr %2, i64 188
  store <2 x float> %i.no, ptr %.sroa.20.0..sroa_idx.i49.i.i, align 4
  %.sroa.21.0..sroa_idx.i50.i.i = getelementptr inbounds nuw i8, ptr %2, i64 196
  store float %i.nr, ptr %.sroa.21.0..sroa_idx.i50.i.i, align 4
  %.sroa.24.0..sroa_idx.i51.i.i = getelementptr inbounds nuw i8, ptr %2, i64 232
  store float %i.nv, ptr %.sroa.24.0..sroa_idx.i51.i.i, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.ny = load <2 x i64>, ptr %i.nw, align 8, !tbaa !89
  store <2 x i64> %i.ny, ptr %i.nx, align 8, !tbaa !89
  %i.nz = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  %i.oa = atomicrmw add ptr %i.nz, i32 1 monotonic, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %i.f, ptr %1, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.oa, ptr %i.ob, align 8
  call void @_ZN4pbrt3SOAINS_20MaterialEvalWorkItemINS_11MixMaterialEEEE16GetSetIndirectoraSERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(256) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZN4pbrt6detail8DispatchIRZZNS_23WavefrontPathIntegrator23SampleMediumInteractionEiENK3$_0clENS_20MediumSampleWorkItemEEUlT_E_vNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialEJNS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEvEET0_OS5_Pvi.exit"

"_ZN4pbrt6detail8DispatchIRZZNS_23WavefrontPathIntegrator23SampleMediumInteractionEiENK3$_0clENS_20MediumSampleWorkItemEEUlT_E_vNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialEJNS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEvEET0_OS5_Pvi.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZN4pbrt7FastExpERKNS_15SampledSpectrumE(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !122
  %i.b = fmul float %i.a, f0x3FB8AA3B             ; 2 uses
  %i.c = tail call noundef float @llvm.floor.f32(float %i.b) ; 2 uses
  %i.d = fsub float %i.b, %i.c                    ; 3 uses
  %i.e = fptosi float %i.c to i32
  %i.f = tail call noundef float @llvm.fma.f32(float %i.d, float f0x3DA00AC9, float f0x3E679A0B)
  %i.g = tail call noundef float @llvm.fma.f32(float %i.d, float %i.f, float f0x3F321004)
  %i.h = tail call noundef float @llvm.fma.f32(float %i.d, float %i.g, float 1.000000e+00)
  %i.i = bitcast float %i.h to i32                ; 2 uses
  %i.j = lshr i32 %i.i, 23
  %i.k = add i32 %i.e, -127
  %i.l = add i32 %i.k, %i.j                       ; 3 uses
  %i.m = icmp slt i32 %i.l, -126
  br i1 %i.m, label %_ZN4pbrt7FastExpEf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp sgt i32 %i.l, 127
  br i1 %i.n, label %_ZN4pbrt7FastExpEf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = and i32 %i.i, -2139095041
  %i.p = shl nsw i32 %i.l, 23
  %i.q = add nsw i32 %i.p, 1065353216
  %i.r = or i32 %i.q, %i.o
  %i.s = bitcast i32 %i.r to float
  br label %_ZN4pbrt7FastExpEf.exit

_ZN4pbrt7FastExpEf.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi float [ %i.s, %bb.c ], [ 0.000000e+00, %bb.a ], [ +inf, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !122
  %i.v = fmul float %i.u, f0x3FB8AA3B             ; 2 uses
  %i.w = tail call noundef float @llvm.floor.f32(float %i.v) ; 2 uses
  %i.x = fsub float %i.v, %i.w                    ; 3 uses
  %i.y = fptosi float %i.w to i32
  %i.z = tail call noundef float @llvm.fma.f32(float %i.x, float f0x3DA00AC9, float f0x3E679A0B)
  %i.aa = tail call noundef float @llvm.fma.f32(float %i.x, float %i.z, float f0x3F321004)
  %i.ab = tail call noundef float @llvm.fma.f32(float %i.x, float %i.aa, float 1.000000e+00)
  %i.ac = bitcast float %i.ab to i32              ; 2 uses
  %i.ad = lshr i32 %i.ac, 23
  %i.ae = add i32 %i.y, -127
  %i.af = add i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = icmp slt i32 %i.af, -126
  br i1 %i.ag, label %_ZN4pbrt7FastExpEf.exit.1, label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt7FastExpEf.exit
  %i.ah = icmp sgt i32 %i.af, 127
  br i1 %i.ah, label %_ZN4pbrt7FastExpEf.exit.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = and i32 %i.ac, -2139095041
  %i.aj = shl nsw i32 %i.af, 23
  %i.ak = add nsw i32 %i.aj, 1065353216
  %i.al = or i32 %i.ak, %i.ai
  %i.am = bitcast i32 %i.al to float
  br label %_ZN4pbrt7FastExpEf.exit.1

_ZN4pbrt7FastExpEf.exit.1:                        ; preds = %bb.e, %bb.d, %_ZN4pbrt7FastExpEf.exit
  %.0.i.1 = phi float [ %i.am, %bb.e ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit ], [ +inf, %bb.d ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !122
  %i.ap = fmul float %i.ao, f0x3FB8AA3B           ; 2 uses
  %i.aq = tail call noundef float @llvm.floor.f32(float %i.ap) ; 2 uses
  %i.ar = fsub float %i.ap, %i.aq                 ; 3 uses
  %i.as = fptosi float %i.aq to i32
  %i.at = tail call noundef float @llvm.fma.f32(float %i.ar, float f0x3DA00AC9, float f0x3E679A0B)
  %i.au = tail call noundef float @llvm.fma.f32(float %i.ar, float %i.at, float f0x3F321004)
  %i.av = tail call noundef float @llvm.fma.f32(float %i.ar, float %i.au, float 1.000000e+00)
  %i.aw = bitcast float %i.av to i32              ; 2 uses
  %i.ax = lshr i32 %i.aw, 23
  %i.ay = add i32 %i.as, -127
  %i.az = add i32 %i.ay, %i.ax                    ; 3 uses
  %i.ba = icmp slt i32 %i.az, -126
  br i1 %i.ba, label %_ZN4pbrt7FastExpEf.exit.2, label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt7FastExpEf.exit.1
  %i.bb = icmp sgt i32 %i.az, 127
  br i1 %i.bb, label %_ZN4pbrt7FastExpEf.exit.2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = and i32 %i.aw, -2139095041
  %i.bd = shl nsw i32 %i.az, 23
  %i.be = add nsw i32 %i.bd, 1065353216
  %i.bf = or i32 %i.be, %i.bc
  %i.bg = bitcast i32 %i.bf to float
  br label %_ZN4pbrt7FastExpEf.exit.2

_ZN4pbrt7FastExpEf.exit.2:                        ; preds = %bb.g, %bb.f, %_ZN4pbrt7FastExpEf.exit.1
  %.0.i.2 = phi float [ %i.bg, %bb.g ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1 ], [ +inf, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !122
  %i.bj = fmul float %i.bi, f0x3FB8AA3B           ; 2 uses
  %i.bk = tail call noundef float @llvm.floor.f32(float %i.bj) ; 2 uses
  %i.bl = fsub float %i.bj, %i.bk                 ; 3 uses
  %i.bm = fptosi float %i.bk to i32
  %i.bn = tail call noundef float @llvm.fma.f32(float %i.bl, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bo = tail call noundef float @llvm.fma.f32(float %i.bl, float %i.bn, float f0x3F321004)
  %i.bp = tail call noundef float @llvm.fma.f32(float %i.bl, float %i.bo, float 1.000000e+00)
  %i.bq = bitcast float %i.bp to i32              ; 2 uses
  %i.br = lshr i32 %i.bq, 23
  %i.bs = add i32 %i.bm, -127
  %i.bt = add i32 %i.bs, %i.br                    ; 3 uses
  %i.bu = icmp slt i32 %i.bt, -126
  br i1 %i.bu, label %_ZN4pbrt7FastExpEf.exit.3, label %bb.h

bb.h:                                             ; preds = %_ZN4pbrt7FastExpEf.exit.2
  %i.bv = icmp sgt i32 %i.bt, 127
  br i1 %i.bv, label %_ZN4pbrt7FastExpEf.exit.3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = and i32 %i.bq, -2139095041
  %i.bx = shl nsw i32 %i.bt, 23
  %i.by = add nsw i32 %i.bx, 1065353216
  %i.bz = or i32 %i.by, %i.bw
  %i.ca = bitcast i32 %i.bz to float
  br label %_ZN4pbrt7FastExpEf.exit.3

_ZN4pbrt7FastExpEf.exit.3:                        ; preds = %bb.i, %bb.h, %_ZN4pbrt7FastExpEf.exit.2
  %.0.i.3 = phi float [ %i.ca, %bb.i ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2 ], [ +inf, %bb.h ]
  %.sroa.4.8.vec.insert = insertelement <2 x float> poison, float %.0.i.2, i64 0
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %.0.i, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %.0.i.1, i64 1
  %.sroa.4.12.vec.insert = insertelement <2 x float> %.sroa.4.8.vec.insert, float %.0.i.3, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZZZN4pbrt23WavefrontPathIntegrator23SampleMediumInteractionEiENK3$_0clENS_20MediumSampleWorkItemEENKUlNS_6Point3IfEENS_16MediumPropertiesENS_15SampledSpectrumES6_E_clES4_S5_S6_S6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, <2 x float> %1, float %2, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %3, <2 x float> %4, <2 x float> %5, <2 x float> %6, <2 x float> %7) unnamed_addr #12 align 2 {
bb.a:
  %.sroa.5.i.i.i.i = alloca %"class.pbrt::SampledWavelengths", align 16 ; 6 uses
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !479  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !480, !nonnull !56, !align !84 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !165
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !82
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = load <4 x float>, ptr %i.j, align 8
  %.fr = freeze <4 x float> %i.k                  ; 2 uses
  %i.l = fcmp une <4 x float> %.fr, zeroinitializer
  %i.m = bitcast <4 x i1> %i.l to i4
  %.not = icmp eq i4 %i.m, 0
  br i1 %.not, label %.lr.ph.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop = fmul <2 x float> %4, %6      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !481, !nonnull !56, !align !225
  %8 = load <4 x float>, ptr %i.o, align 4
  %i.p = shufflevector <2 x float> %4, <2 x float> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.q = fmul <4 x float> %i.p, %8
  %i.r = shufflevector <2 x float> %6, <2 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.s = fmul <4 x float> %i.r, %i.q
  %i.t = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer
  %i.u = fdiv <4 x float> %i.s, %i.t
  %.fr401 = freeze <4 x float> %i.u               ; 5 uses
  %i.v = fcmp une <4 x float> %.fr401, zeroinitializer
  %i.w = bitcast <4 x i1> %i.v to i4
  %.not402 = icmp eq i4 %i.w, 0
  br i1 %.not402, label %.lr.ph.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !482, !nonnull !56, !align !225
  %9 = load <4 x float>, ptr %i.z, align 4
  %shift = shufflevector <4 x float> %.fr401, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop393 = fadd <4 x float> %.fr401, %shift
  %shift395 = shufflevector <4 x float> %.fr401, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop396 = fadd <4 x float> %foldExtExtBinop393, %shift395
  %shift398 = shufflevector <4 x float> %.fr401, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop399 = fadd <4 x float> %shift398, %foldExtExtBinop396
  %i.aa = extractelement <4 x float> %foldExtExtBinop399, i64 0
  %i.ab = fmul float %i.aa, 2.500000e-01
  %i.ac = fmul float %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !483, !nonnull !56, !align !225 ; 2 uses
  %i.af = load <4 x float>, ptr %3, align 8, !tbaa !122
  %i.ag = fmul <4 x float> %9, %i.af
  %i.ah = fmul <4 x float> %i.r, %i.ag
  %i.ai = fmul <4 x float> %.fr, %i.ah
  %i.aj = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.al = fdiv <4 x float> %i.ai, %i.ak
  %i.am = load <4 x float>, ptr %i.ae, align 4, !tbaa !122
  %i.an = fadd <4 x float> %i.al, %i.am
  store <4 x float> %i.an, ptr %i.ae, align 4, !tbaa !122
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %i.ao = load float, ptr %3, align 8, !tbaa !122 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !122 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ar = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.aq, i64 1
  %i.at = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv <2 x float> %i.as, %i.at           ; 3 uses
  %i.av = extractelement <2 x float> %i.au, i64 0 ; 2 uses
  %i.aw = fsub float 1.000000e+00, %i.av
  %i.ax = extractelement <2 x float> %i.au, i64 1 ; 2 uses
  %i.ay = fsub float %i.aw, %i.ax                 ; 2 uses
  %i.az = fcmp ogt float %i.ay, 0.000000e+00
  %.sroa.speculated = select i1 %i.az, float %i.ay, float 0.000000e+00 ; 2 uses
  store <2 x float> %i.au, ptr %i.a, align 8, !tbaa !122
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %.sroa.speculated, ptr %i.ba, align 8, !tbaa !122
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !484, !nonnull !56, !align !225 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !122
  %i.be = fadd float %i.av, 0.000000e+00
  %i.bf = fadd float %i.be, %i.ax
  %i.bg = fadd float %i.bf, %.sroa.speculated     ; 2 uses
  %i.bh = fmul float %i.bd, %i.bg                 ; 5 uses
  %i.bi = fcmp oeq float %i.bh, %i.bg
  br i1 %i.bi, label %bb.e, label %_ZN4pbrt13NextFloatDownEf.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %or.cond.i.i = fcmp oeq float %i.bh, -inf
  br i1 %or.cond.i.i, label %_ZN4pbrt13NextFloatDownEf.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = fcmp oeq float %i.bh, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.bj, float -0.000000e+00, float %i.bh ; 2 uses
  %i.bk = bitcast float %spec.store.select.i.i to i32
  %i.bl = fcmp ogt float %spec.store.select.i.i, 0.000000e+00
  %.0.v.i.i = select i1 %i.bl, i32 -1, i32 1
  %.0.i.i = add i32 %.0.v.i.i, %i.bk
  %i.bm = bitcast i32 %.0.i.i to float
  br label %_ZN4pbrt13NextFloatDownEf.exit.i

_ZN4pbrt13NextFloatDownEf.exit.i:                 ; preds = %bb.f, %bb.e, %.lr.ph.i
  %.031.i = phi float [ %i.bh, %.lr.ph.i ], [ %i.bm, %bb.f ], [ -inf, %bb.e ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN4pbrt13NextFloatDownEf.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %_ZN4pbrt13NextFloatDownEf.exit.i ] ; 3 uses
  %.0.i = phi float [ %i.bp, %bb.g ], [ 0.000000e+00, %_ZN4pbrt13NextFloatDownEf.exit.i ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !122
  %i.bp = fadd float %.0.i, %i.bo                 ; 2 uses
  %i.bq = fcmp ugt float %i.bp, %.031.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.bq, label %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit, label %bb.g, !llvm.loop !1

_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit: ; preds = %bb.g
  %i.br = trunc nuw nsw i64 %indvars.iv.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  switch i32 %i.br, label %bb.m [
    i32 0, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !482, !nonnull !56, !align !225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  br label %bb.q

bb.i:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !122
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !482, !nonnull !56, !align !225 ; 3 uses
  %i.bz = load <4 x float>, ptr %i.bw, align 8
  %i.ca = shufflevector <2 x float> %6, <2 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cb = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.bv, i64 1
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ce = fmul <4 x float> %i.ca, %i.cd           ; 4 uses
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cg = fdiv <4 x float> %i.ce, %i.cf
  %i.ch = load <4 x float>, ptr %i.by, align 4, !tbaa !122
  %i.ci = fmul <4 x float> %i.cg, %i.ch
  store <4 x float> %i.ci, ptr %i.by, align 4, !tbaa !122
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !481, !nonnull !56, !align !225 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.bw, align 8, !tbaa !122
  %i.cn = fmul <2 x float> %7, %i.cm
  %i.co = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fdiv <2 x float> %i.cn, %i.cp
  %i.cr = load <2 x float>, ptr %i.ap, align 8, !tbaa !122
  %i.cs = fmul <2 x float> %6, %i.cr
  %i.ct = fdiv <2 x float> %i.cs, %i.co
  %i.cu = load <2 x float>, ptr %i.ck, align 4, !tbaa !122
  %i.cv = fmul <2 x float> %i.ct, %i.cu           ; 2 uses
  store <2 x float> %i.cv, ptr %i.ck, align 4, !tbaa !122
  %i.cw = load <2 x float>, ptr %i.cl, align 4, !tbaa !122
  %i.cx = fmul <2 x float> %i.cq, %i.cw           ; 2 uses
  store <2 x float> %i.cx, ptr %i.cl, align 4, !tbaa !122
  %.sroa.12.64.copyload = load i32, ptr %i.e, align 8
  %.sroa.14305.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.sroa.14305.64.copyload = load i32, ptr %.sroa.14305.64..sroa_idx, align 8
  %.sroa.15306.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 188
  %.sroa.15306.64.copyload = load float, ptr %.sroa.15306.64..sroa_idx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !485, !nonnull !56, !align !225
  %.sroa.28.424.copyload = load <4 x float>, ptr %i.by, align 4 ; 6 uses
  %.sroa.30.440.copyload = load <4 x float>, ptr %i.ck, align 4 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !486, !nonnull !56, !align !84 ; 4 uses
  %.sroa.33.456..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %.sroa.33.456.copyload = load float, ptr %.sroa.33.456..sroa_idx, align 4
  %.sroa.34.456..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dc = load <2 x float>, ptr %.sroa.34.456..sroa_idx, align 8
  %.sroa.36.456..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %.sroa.36.456.copyload = load float, ptr %.sroa.36.456..sroa_idx, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !89
  %i.df = bitcast <4 x float> %.sroa.28.424.copyload to i128
  %i.dg = and i128 %i.df, 2147483647
  %i.dh = icmp ne i128 %i.dg, 0
  %i.di = extractelement <4 x float> %.sroa.28.424.copyload, i64 1
  %i.dj = fcmp une float %i.di, 0.000000e+00
  %or.cond.i154 = or i1 %i.dh, %i.dj
  %i.dk = extractelement <4 x float> %.sroa.28.424.copyload, i64 2
  %i.dl = fcmp une float %i.dk, 0.000000e+00
  %or.cond14.i155 = or i1 %or.cond.i154, %i.dl
  %i.dm = extractelement <4 x float> %.sroa.28.424.copyload, i64 3
  %i.dn = fcmp une float %i.dm, 0.000000e+00
  %or.cond17.i156 = or i1 %or.cond14.i155, %i.dn
  br i1 %or.cond17.i156, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.do = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %.sroa.30.440.copyload, <4 x float> %i.do, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.dq = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dr = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.fr403 = freeze <4 x float> %i.dr
  %i.ds = fcmp une <4 x float> %.fr403, zeroinitializer
  %i.dt = bitcast <4 x i1> %i.ds to i4
  %.not404 = icmp eq i4 %i.dt, 0
  br i1 %.not404, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val = load i64, ptr %i.du, align 8, !tbaa !130
  %i.dv = and i64 %.val, 144115188075855871
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 552
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !226 ; 17 uses
  %.sroa.4303.8.vec.extract = extractelement <2 x float> %1, i64 0
  %.sroa.4303.12.vec.extract = extractelement <2 x float> %1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.cz, i64 32, i1 false)
  %i.dz = fneg float %.sroa.33.456.copyload
  %i.ea = fneg <2 x float> %i.dc                  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 208
  %i.ec = atomicrmw add ptr %i.eb, i32 1 monotonic, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !167
  %i.ef = sext i32 %i.ec to i64                   ; 16 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ef
  store float %.sroa.4303.8.vec.extract, ptr %i.eg, align 4, !tbaa !122
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !168
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ef
  store float %.sroa.4303.12.vec.extract, ptr %i.ej, align 4, !tbaa !122
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !169
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ef
  store float %2, ptr %i.em, align 4, !tbaa !122
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !229
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.ef
  store i32 %.sroa.12.64.copyload, ptr %i.ep, align 4, !tbaa !136
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !176
  %i.es = getelementptr inbounds [16 x i8], ptr %i.er, i64 %i.ef ; 2 uses
  %.sroa.5.i.i.i.i.0..sroa.5.i.i.i.i.0..sroa.5.i.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.16..i.i.i.i = load <4 x float>, ptr %.sroa.5.i.i.i.i, align 16
  %.sroa.03.4.vec.insert.i.i.i.i.i.i.i = shufflevector <4 x float> %.sroa.5.i.i.i.i.0..sroa.5.i.i.i.i.0..sroa.5.i.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.16..i.i.i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.5.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i.i.i, i64 8
  %.sroa.5.i.i.i.i.8..sroa.5.i.i.i.i.8..sroa.5.i.i.i.i.8..sroa.5.i.i.i.8..sroa.5.i.i.i.8..sroa.5.i.i.8..sroa.5.i.i.8..sroa.5.i.8..sroa.5.i.8..sroa.5.8..sroa.5.8..sroa.5.24..i.i.i.i = load <4 x float>, ptr %.sroa.5.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8
  %.sroa.35.12.vec.insert.i.i.i.i.i.i.i = shufflevector <4 x float> %.sroa.5.i.i.i.i.8..sroa.5.i.i.i.i.8..sroa.5.i.i.i.i.8..sroa.5.i.i.i.8..sroa.5.i.i.i.8..sroa.5.i.i.8..sroa.5.i.i.8..sroa.5.i.8..sroa.5.i.8..sroa.5.8..sroa.5.8..sroa.5.24..i.i.i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i.i.i.i.i.i, ptr %i.es, align 16
end_hunk_0
begin_hunk_1_@_ZZN4pbrt23WavefrontPathIntegrator22SampleMediumScatteringINS_15HGPhaseFunctionEEEviENKUlNS_21MediumScatterWorkItemIS2_EEE_clES4_:_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.c, label %.noexc122

.noexc122:                                        ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 235, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(4) @.str.10) #26
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !295
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !1031 ; 2 uses
  %i.bj = fpext float %i.bi to double             ; 2 uses
  %i.bk = fcmp olt double %i.bj, f0xBFEFAE147AE147AE
  %i.bl = fcmp ogt double %i.bj, f0x3FEFAE147AE147AE
  %spec.select.i.i.i = select i1 %i.bl, float 9.900000e-01, float %i.bi
  %.0.i.i.i = select i1 %i.bk, float -9.900000e-01, float %spec.select.i.i.i ; 3 uses
  %i.bm = fmul float %.0.i.i.i, %.0.i.i.i         ; 2 uses
  %i.bn = fsub float 1.000000e+00, %i.bm
  %i.bo = fmul float %i.bn, f0x3DA2F983
  %i.bp = fadd float %i.bm, 1.000000e+00
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bq = fmul float %.sroa.7.0.copyload, %.sroa.6.0.copyload
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.br, align 8
  %i.bs = fmul <2 x float> %.sroa.065.0.copyload, %.sroa.056.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bs, %shift
  %i.bt = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bu = fadd float %i.bq, %i.bt
  %i.bv = fmul float %.0.i.i.i, 2.000000e+00
  %i.bw = fmul float %i.bv, %i.bu
  %i.bx = fadd float %i.bp, %i.bw                 ; 3 uses
  %i.by = fcmp ogt float %i.bx, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.by, float %i.bx, float 0.000000e+00
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i)
  %i.bz = fmul float %i.bx, %sqrt.i.i.i
  %i.ca = fdiv float %i.bo, %i.bz                 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !116
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !306
  %i.ce = fmul float %i.bc, %i.cd
  %i.cf = load i32, ptr %i.ao, align 8, !tbaa !1032
  %i.cg = icmp ult i32 %i.cf, 2
  %spec.select = select i1 %i.cg, float 0.000000e+00, float %i.ca
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i124 = load <2 x float>, ptr %i.ch, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.0.copyload.i126 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i125, align 8, !tbaa !116 ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %spec.select, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fmul <2 x float> %.sroa.0.0.copyload.i124, %i.cj
  %i.cl = fmul <2 x float> %.sroa.6.0.copyload.i126, %i.cj
  %i.cm = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fmul <2 x float> %i.cn, %.sroa.0.0.copyload.i124
  %i.cp = fmul <2 x float> %i.cn, %.sroa.6.0.copyload.i126
  %i.cq = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = fmul <2 x float> %.sroa.0.0.copyload.i, %i.cr
  %i.ct = fmul <2 x float> %i.av, %i.cs
  %i.cu = fmul <2 x float> %.sroa.6.0.copyload.i, %i.cr
  %i.cv = fmul <2 x float> %i.ax, %i.cu
  %.sroa.031.0.copyload = load <2 x float>, ptr %1, align 8 ; 3 uses
  %.sroa.232.0.copyload = load float, ptr %i.t, align 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.0.sroa.0.0.copyload.i = load float, ptr %i.cw, align 8
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 36
  %.sroa.0.sroa.2.0.copyload.i = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 40
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.cx = fadd float %.sroa.0.sroa.0.0.copyload.i, %.sroa.0.sroa.2.0.copyload.i
  %i.cy = fmul float %i.cx, 5.000000e-01
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.031.0.copyload, i64 0 ; 2 uses
  %i.cz = fsub float %i.cy, %.sroa.03.0.vec.extract.i
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.031.0.copyload, i64 1
  %i.da = load <2 x float>, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %i.db = load <4 x float>, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.dd = fadd <2 x float> %i.da, %i.dc
  %i.de = fmul <2 x float> %i.dd, splat (float 5.000000e-01)
  %i.df = shufflevector <2 x float> %.sroa.031.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x float> %i.df, float %.sroa.232.0.copyload, i64 1
  %i.dh = fsub <2 x float> %i.de, %i.dg           ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.dj = load float, ptr %i.di, align 4, !tbaa !296
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !89
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1033 ; 16 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.13295, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !tbaa.struct !117
  %i.do = load i32, ptr %i.f, align 8, !tbaa !298
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 224
  %i.dq = atomicrmw add ptr %i.dp, i32 1 monotonic, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !167
  %i.dt = sext i32 %i.dq to i64                   ; 15 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dt
  store float %.sroa.03.0.vec.extract.i, ptr %i.du, align 4, !tbaa !122
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !168
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dt
  store float %.sroa.03.4.vec.extract.i, ptr %i.dx, align 4, !tbaa !122
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !169
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.dt
  store float %.sroa.232.0.copyload, ptr %i.ea, align 4, !tbaa !122
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !170
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.dt
  store float %i.cz, ptr %i.ed, align 4, !tbaa !122
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !171
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.dt
  %i.eh = extractelement <2 x float> %i.dh, i64 0
  store float %i.eh, ptr %i.eg, align 4, !tbaa !122
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !172
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.dt
  %i.el = extractelement <2 x float> %i.dh, i64 1
  store float %i.el, ptr %i.ek, align 4, !tbaa !122
  %i.em = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !202
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.dt
  store float %i.dj, ptr %i.eo, align 4, !tbaa !122
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !203
  %i.er = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.dt
  store i64 %i.dl, ptr %i.er, align 8, !tbaa !89
  %i.es = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1035
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.dt
  store float f0x3F7FF972, ptr %i.eu, align 4, !tbaa !122
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dn, i64 112
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !176
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ew, i64 %i.dt ; 2 uses
  %.sroa.13295.0..sroa.13295.0..sroa.13295.0..sroa.13295.44. = load <4 x float>, ptr %.sroa.13295, align 16
  %.sroa.03.4.vec.insert.i.i.i = shufflevector <4 x float> %.sroa.13295.0..sroa.13295.0..sroa.13295.0..sroa.13295.44., <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.13295.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13295, i64 8
  %.sroa.13295.8..sroa.13295.8..sroa.13295.8..sroa.13295.52. = load <4 x float>, ptr %.sroa.13295.8..sroa_idx, align 8
  %.sroa.35.12.vec.insert.i.i.i = shufflevector <4 x float> %.sroa.13295.8..sroa.13295.8..sroa.13295.8..sroa.13295.52., <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i.i, ptr %i.ex, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i, align 8, !tbaa !116
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !177
  %i.fa = getelementptr inbounds [16 x i8], ptr %i.ez, i64 %i.dt ; 2 uses
  %.sroa.13295.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13295, i64 16
  %.sroa.13295.16..sroa.13295.16..sroa.13295.16..sroa.13295.60. = load <4 x float>, ptr %.sroa.13295.16..sroa_idx, align 16 ; 2 uses
  %.sroa.0.4.vec.insert.i.i.i = shufflevector <4 x float> %.sroa.13295.16..sroa.13295.16..sroa.13295.16..sroa.13295.60., <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i.i = shufflevector <4 x float> %.sroa.13295.16..sroa.13295.16..sroa.13295.16..sroa.13295.60., <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %i.fa, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.2.0..0..sroa_idx.i28.i.i.i, align 8, !tbaa !116
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dn, i64 152
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !164
  %i.fd = getelementptr inbounds [16 x i8], ptr %i.fc, i64 %i.dt ; 2 uses
  store <2 x float> %i.ct, ptr %i.fd, align 16
  %.sroa.2.0..0..sroa_idx.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store <2 x float> %i.cv, ptr %.sroa.2.0..0..sroa_idx.i.i14.i.i, align 8, !tbaa !116
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dn, i64 176
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !164
  %i.fg = getelementptr inbounds [16 x i8], ptr %i.ff, i64 %i.dt ; 2 uses
  store <2 x float> %i.ck, ptr %i.fg, align 16
  %.sroa.2.0..0..sroa_idx.i.i19.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store <2 x float> %i.cl, ptr %.sroa.2.0..0..sroa_idx.i.i19.i.i, align 8, !tbaa !116
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dn, i64 200
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !164
  %i.fj = getelementptr inbounds [16 x i8], ptr %i.fi, i64 %i.dt ; 2 uses
  store <2 x float> %i.co, ptr %i.fj, align 16
  %.sroa.2.0..0..sroa_idx.i.i24.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store <2 x float> %i.cp, ptr %.sroa.2.0..0..sroa_idx.i.i24.i.i, align 8, !tbaa !116
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dn, i64 216
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1036
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.dt
  store i32 %i.do, ptr %i.fm, align 4, !tbaa !136
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit111, %_ZN4pstd8optionalIN4pbrt13LightLiSampleEEptEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !1037
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !1031, !noalias !1037
  %i.fq = call { <2 x float>, float } @_ZN4pbrt22SampleHenyeyGreensteinENS_7Vector3IfEEfNS_6Point2IfEEPf(<2 x float> %.sroa.065.0.copyload, float %.sroa.7.0.copyload, float noundef %i.fp, <2 x float> %.sroa.2.0.copyload.i931.i.i339, ptr noundef nonnull %i.a) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.fq, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.fq, 1
  %i.fr = load float, ptr %i.a, align 4, !tbaa !122, !noalias !1037 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !1037
  %i.fs = fcmp oeq float %i.fr, 0.000000e+00
  br i1 %i.fs, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 48
  %10 = load <4 x float>, ptr %i.ft, align 8
  %i.fu = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fw = fmul <4 x float> %i.fv, %10
  %i.fx = fdiv <4 x float> %i.fw, %i.fv           ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0263.0.copyload = load <4 x float>, ptr %i.fy, align 8 ; 8 uses
  %bc = bitcast <4 x float> %.sroa.0263.0.copyload to <2 x i64>
  %i.fz = extractelement <2 x i64> %bc, i64 1
  %i.ga = bitcast i64 %i.fz to <2 x float>
  %i.gb = shufflevector <4 x float> %.sroa.0263.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gc = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ge = fdiv <2 x float> %i.gb, %i.gd
  %i.gf = fdiv <2 x float> %i.ga, %i.gd
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !297 ; 5 uses
  %i.gi = extractelement <4 x float> %i.fx, i64 0
  %i.gj = fmul float %i.gi, %i.gh
  %i.gk = extractelement <4 x float> %i.fx, i64 1
  %i.gl = fmul float %i.gk, %i.gh
  %i.gm = extractelement <4 x float> %i.fx, i64 2
  %i.gn = fmul float %i.gm, %i.gh
  %i.go = extractelement <4 x float> %i.fx, i64 3
  %i.gp = fmul float %i.go, %i.gh
  %shift345 = shufflevector <4 x float> %.sroa.0263.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop346 = fadd <4 x float> %.sroa.0263.0.copyload, %shift345
  %shift348 = shufflevector <4 x float> %.sroa.0263.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop349 = fadd <4 x float> %shift348, %foldExtExtBinop346
  %shift351 = shufflevector <4 x float> %.sroa.0263.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop352 = fadd <4 x float> %shift351, %foldExtExtBinop349
  %i.gq = extractelement <4 x float> %foldExtExtBinop352, i64 0
  %i.gr = fmul float %i.gq, 2.500000e-01          ; 4 uses
  %i.gs = fdiv float %i.gj, %i.gr                 ; 2 uses
  %i.gt = fdiv float %i.gl, %i.gr                 ; 2 uses
  %i.gu = fdiv float %i.gn, %i.gr                 ; 2 uses
  %i.gv = fdiv float %i.gp, %i.gr                 ; 2 uses
  %i.gw = fcmp olt float %i.gs, %i.gt
  %.sroa.speculated.i = select i1 %i.gw, float %i.gt, float %i.gs ; 2 uses
  %i.gx = fcmp olt float %.sroa.speculated.i, %i.gu
  %.sroa.speculated.1.i = select i1 %i.gx, float %i.gu, float %.sroa.speculated.i ; 2 uses
  %i.gy = fcmp olt float %.sroa.speculated.1.i, %i.gv
  %.sroa.speculated.2.i = select i1 %i.gy, float %i.gv, float %.sroa.speculated.1.i ; 2 uses
  %i.gz = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !294 ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  %or.cond = select i1 %i.gz, i1 %i.hc, i1 false
  br i1 %or.cond, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.hd = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.he = fcmp ogt float %i.hd, 0.000000e+00
  %.sroa.speculated = select i1 %i.he, float %i.hd, float 0.000000e+00 ; 2 uses
  %i.hf = fcmp uge float %.sroa.01.4.vec.extract.i.i, %.sroa.speculated
  br i1 %i.hf, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.hg = fsub float 1.000000e+00, %.sroa.speculated
  %i.hh = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hj = fdiv <4 x float> %i.fx, %i.hi
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.h
  %.sroa.0267.0 = phi <4 x float> [ %i.hj, %bb.h ], [ %i.fx, %bb.f ] ; 2 uses
  %.sroa.06.0.copyload = load <2 x float>, ptr %1, align 8 ; 2 uses
  %.sroa.27.0.copyload = load float, ptr %i.t, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !296
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !89
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !288 ; 31 uses
  %i.hq = add nsw i32 %i.hb, 1
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hs = load i32, ptr %i.f, align 8, !tbaa !298
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 400
  %i.hu = atomicrmw add ptr %i.ht, i32 1 monotonic, align 4
  %.sroa.0248.0.vec.extract = extractelement <2 x float> %.sroa.06.0.copyload, i64 0
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !167
  %i.hx = sext i32 %i.hu to i64                   ; 30 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.hx
  store float %.sroa.0248.0.vec.extract, ptr %i.hy, align 4, !tbaa !122
  %.sroa.0248.4.vec.extract = extractelement <2 x float> %.sroa.06.0.copyload, i64 1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !168
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.hx
  store float %.sroa.0248.4.vec.extract, ptr %i.ib, align 4, !tbaa !122
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !169
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.hx
  store float %.sroa.27.0.copyload, ptr %i.ie, align 4, !tbaa !122
  %.sroa.8.12.vec.extract = extractelement <2 x float> %.fca.0.extract.i, i64 0
  %i.if = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !170
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.hx
  store float %.sroa.8.12.vec.extract, ptr %i.ih, align 4, !tbaa !122
  %.sroa.8.16.vec.extract = extractelement <2 x float> %.fca.0.extract.i, i64 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hp, i64 64
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !171
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.hx
  store float %.sroa.8.16.vec.extract, ptr %i.ik, align 4, !tbaa !122
  %i.il = getelementptr inbounds nuw i8, ptr %i.hp, i64 72
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !172
  %i.in = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.hx
  store float %.fca.1.extract.i, ptr %i.in, align 4, !tbaa !122
  %i.io = getelementptr inbounds nuw i8, ptr %i.hp, i64 80
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !202
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.hx
  store float %i.hl, ptr %i.iq, align 4, !tbaa !122
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hp, i64 88
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !203
  %i.it = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.hx
  store i64 %i.hn, ptr %i.it, align 8, !tbaa !89
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hp, i64 96
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !214
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.hx
  store i32 %i.hq, ptr %i.iw, align 4, !tbaa !136
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hp, i64 104
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !215
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.hx
  store i32 %i.hs, ptr %i.iz, align 4, !tbaa !136
  %i.ja = load float, ptr %7, align 8, !tbaa !216
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hp, i64 248
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !178
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.hx
  store float %i.ja, ptr %i.jd, align 4, !tbaa !122
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.jf = load float, ptr %i.je, align 4, !tbaa !217
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hp, i64 256
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !179
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.hx
  store float %i.jf, ptr %i.ji, align 4, !tbaa !122
  %i.jj = load float, ptr %.sroa.4335.0..sroa_idx, align 8, !tbaa !216
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hp, i64 272
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !178
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.hx
  store float %i.jj, ptr %i.jm, align 4, !tbaa !122
  %i.jn = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !217
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hp, i64 280
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !179
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jq, i64 %i.hx
  store float %i.jo, ptr %i.jr, align 4, !tbaa !122
  %i.js = load float, ptr %.sroa.5336.0..sroa_idx, align 8, !tbaa !216
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hp, i64 296
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !178
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.ju, i64 %i.hx
  store float %i.js, ptr %i.jv, align 4, !tbaa !122
  %i.jw = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !217
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hp, i64 304
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !179
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.hx
  store float %i.jx, ptr %i.ka, align 4, !tbaa !122
  %i.kb = load float, ptr %i.v, align 8, !tbaa !218
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hp, i64 320
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !180
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.hx
  store float %i.kb, ptr %i.ke, align 4, !tbaa !122
  %i.kf = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !219
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hp, i64 328
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !181
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.hx
  store float %i.kg, ptr %i.kj, align 4, !tbaa !122
  %i.kk = load float, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !220
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hp, i64 336
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !182
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.hx
  store float %i.kk, ptr %i.kn, align 4, !tbaa !122
  %i.ko = load float, ptr %i.w, align 4, !tbaa !218
  %i.kp = getelementptr inbounds nuw i8, ptr %i.hp, i64 352
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !180
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.hx
  store float %i.ko, ptr %i.kr, align 4, !tbaa !122
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.kt = load float, ptr %i.ks, align 8, !tbaa !219
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hp, i64 360
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !181
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.hx
  store float %i.kt, ptr %i.kw, align 4, !tbaa !122
  %i.kx = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !220
  %i.ky = getelementptr inbounds nuw i8, ptr %i.hp, i64 368
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !182
  %i.la = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.hx
  store float %i.kx, ptr %i.la, align 4, !tbaa !122
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hp, i64 160
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !164
  %i.ld = getelementptr inbounds [16 x i8], ptr %i.lc, i64 %i.hx ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %.sroa.0267.0, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %.sroa.0267.0, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.ld, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i247 = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i247, align 8, !tbaa !116
  %i.le = getelementptr inbounds nuw i8, ptr %i.hp, i64 184
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !164
  %i.lg = getelementptr inbounds [16 x i8], ptr %i.lf, i64 %i.hx ; 2 uses
  %.sroa.0.4.vec.insert.i29.i = shufflevector <4 x float> %.sroa.0263.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i30.i = shufflevector <4 x float> %.sroa.0263.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i29.i, ptr %i.lg, align 16
end_hunk_1
