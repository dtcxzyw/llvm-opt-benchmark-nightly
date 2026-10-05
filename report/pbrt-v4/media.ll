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

; Function Attrs: inlinehint mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !481, !nonnull !56, !align !225 ; 2 uses
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.o, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !116
  %i.p = shufflevector <2 x float> %4, <2 x float> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !482, !nonnull !56, !align !225 ; 2 uses
  %.sroa.0.0.copyload4.i50 = load <2 x float>, ptr %i.z, align 4
  %.sroa.8.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.8.0.copyload.i52 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i51, align 4, !tbaa !116
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
  %9 = shufflevector <2 x float> %.sroa.0.0.copyload4.i50, <2 x float> %.sroa.8.0.copyload.i52, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
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
  %i.bz = load <2 x float>, ptr %i.bw, align 8, !tbaa !122
  %i.ca = shufflevector <2 x float> %6, <2 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cb = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.bv, i64 1
  %i.cd = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cf = fmul <4 x float> %i.ca, %i.ce           ; 4 uses
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = fdiv <4 x float> %i.cf, %i.cg
  %i.ci = load <4 x float>, ptr %i.by, align 4, !tbaa !122
  %i.cj = fmul <4 x float> %i.ch, %i.ci
  store <4 x float> %i.cj, ptr %i.by, align 4, !tbaa !122
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !481, !nonnull !56, !align !225 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cn = load <2 x float>, ptr %i.bw, align 8, !tbaa !122
  %i.co = fmul <2 x float> %7, %i.cn
  %i.cp = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cq = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fdiv <2 x float> %i.co, %i.cq
  %i.cs = load <2 x float>, ptr %i.ap, align 8, !tbaa !122
  %i.ct = fmul <2 x float> %6, %i.cs
  %i.cu = fdiv <2 x float> %i.ct, %i.cp
  %i.cv = load <2 x float>, ptr %i.cl, align 4, !tbaa !122
  %i.cw = fmul <2 x float> %i.cu, %i.cv           ; 2 uses
  store <2 x float> %i.cw, ptr %i.cl, align 4, !tbaa !122
  %i.cx = load <2 x float>, ptr %i.cm, align 4, !tbaa !122
  %i.cy = fmul <2 x float> %i.cr, %i.cx           ; 2 uses
  store <2 x float> %i.cy, ptr %i.cm, align 4, !tbaa !122
  %.sroa.12.64.copyload = load i32, ptr %i.e, align 8
  %.sroa.14305.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.sroa.14305.64.copyload = load i32, ptr %.sroa.14305.64..sroa_idx, align 8
  %.sroa.15306.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 188
  %.sroa.15306.64.copyload = load float, ptr %.sroa.15306.64..sroa_idx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !485, !nonnull !56, !align !225
  %.sroa.28.424.copyload = load <4 x float>, ptr %i.by, align 4 ; 6 uses
  %.sroa.30.440.copyload = load <4 x float>, ptr %i.cl, align 4 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !486, !nonnull !56, !align !84 ; 4 uses
  %.sroa.33.456..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %.sroa.33.456.copyload = load float, ptr %.sroa.33.456..sroa_idx, align 4
  %.sroa.34.456..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dd = load <2 x float>, ptr %.sroa.34.456..sroa_idx, align 8
  %.sroa.36.456..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.sroa.36.456.copyload = load float, ptr %.sroa.36.456..sroa_idx, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.df = load i64, ptr %i.de, align 8, !tbaa !89
  %i.dg = bitcast <4 x float> %.sroa.28.424.copyload to i128
  %i.dh = and i128 %i.dg, 2147483647
  %i.di = icmp ne i128 %i.dh, 0
  %i.dj = extractelement <4 x float> %.sroa.28.424.copyload, i64 1
  %i.dk = fcmp une float %i.dj, 0.000000e+00
  %or.cond.i154 = or i1 %i.di, %i.dk
  %i.dl = extractelement <4 x float> %.sroa.28.424.copyload, i64 2
  %i.dm = fcmp une float %i.dl, 0.000000e+00
  %or.cond14.i155 = or i1 %or.cond.i154, %i.dm
  %i.dn = extractelement <4 x float> %.sroa.28.424.copyload, i64 3
  %i.do = fcmp une float %i.dn, 0.000000e+00
  %or.cond17.i156 = or i1 %or.cond14.i155, %i.do
  br i1 %or.cond17.i156, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dp = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dq = shufflevector <4 x float> %.sroa.30.440.copyload, <4 x float> %i.dp, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.dr = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.fr403 = freeze <4 x float> %i.ds
  %i.dt = fcmp une <4 x float> %.fr403, zeroinitializer
  %i.du = bitcast <4 x i1> %i.dt to i4
  %.not404 = icmp eq i4 %i.du, 0
  br i1 %.not404, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val = load i64, ptr %i.dv, align 8, !tbaa !130
  %i.dw = and i64 %.val, 144115188075855871
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 552
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !226 ; 17 uses
  %.sroa.4303.8.vec.extract = extractelement <2 x float> %1, i64 0
  %.sroa.4303.12.vec.extract = extractelement <2 x float> %1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.da, i64 32, i1 false)
  %i.ea = fneg float %.sroa.33.456.copyload
  %i.eb = fneg <2 x float> %i.dd                  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 208
  %i.ed = atomicrmw add ptr %i.ec, i32 1 monotonic, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !167
  %i.eg = sext i32 %i.ed to i64                   ; 16 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eg
  store float %.sroa.4303.8.vec.extract, ptr %i.eh, align 4, !tbaa !122
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !168
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.eg
  store float %.sroa.4303.12.vec.extract, ptr %i.ek, align 4, !tbaa !122
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !169
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.eg
  store float %2, ptr %i.en, align 4, !tbaa !122
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !229
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.eg
  store i32 %.sroa.12.64.copyload, ptr %i.eq, align 4, !tbaa !136
  %i.er = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !176
  %i.et = getelementptr inbounds [16 x i8], ptr %i.es, i64 %i.eg ; 2 uses
  %.sroa.5.i.i.i.i.0..sroa.5.i.i.i.i.0..sroa.5.i.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.16..i.i.i.i = load <4 x float>, ptr %.sroa.5.i.i.i.i, align 16
  %.sroa.03.4.vec.insert.i.i.i.i.i.i.i = shufflevector <4 x float> %.sroa.5.i.i.i.i.0..sroa.5.i.i.i.i.0..sroa.5.i.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.i.0..sroa.5.i.i.0..sroa.5.i.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.16..i.i.i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.5.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i.i.i, i64 8
  %.sroa.5.i.i.i.i.8..sroa.5.i.i.i.i.8..sroa.5.i.i.i.i.8..sroa.5.i.i.i.8..sroa.5.i.i.i.8..sroa.5.i.i.8..sroa.5.i.i.8..sroa.5.i.8..sroa.5.i.8..sroa.5.8..sroa.5.8..sroa.5.24..i.i.i.i = load <4 x float>, ptr %.sroa.5.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8
  %.sroa.35.12.vec.insert.i.i.i.i.i.i.i = shufflevector <4 x float> %.sroa.5.i.i.i.i.8..sroa.5.i.i.i.i.8..sroa.5.i.i.i.i.8..sroa.5.i.i.i.8..sroa.5.i.i.i.8..sroa.5.i.i.8..sroa.5.i.i.8..sroa.5.i.8..sroa.5.i.8..sroa.5.8..sroa.5.8..sroa.5.24..i.i.i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
end_hunk_0
begin_hunk_1_@_ZNK4pbrt10GridMedium9SampleRayENS_3RayEfRKNS_18SampledWavelengthsE:bb.a
  %i.be = fmul <2 x float> %i.aw, %i.bd           ; 2 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %i.bg = fadd float %i.bf, %i.ay
  %i.bh = extractelement <2 x float> %i.be, i64 1
  %i.bi = fadd float %i.bg, %i.bh
  %i.bj = fdiv float %i.bi, %i.ao                 ; 4 uses
  %i.bk = extractelement <2 x float> %i.ai, i64 0
  %i.bl = fmul float %i.bk, %i.bj
  %i.bm = fmul float %i.s, %i.bj
  %i.bn = extractelement <2 x float> %i.ai, i64 1
  %i.bo = fmul float %i.bn, %i.bj
  %.sroa.0.0.vec.insert.i56.i = insertelement <2 x float> poison, float %i.bl, i64 0
  %.sroa.0.4.vec.insert.i57.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i56.i, float %i.bm, i64 1
  %i.bp = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %5, <2 x float> %.sroa.0.4.vec.insert.i57.i, float %i.bo), !noalias !508 ; 0 uses
  %i.bq = fsub float %3, %i.bj
  br label %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit

_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit: ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.bq, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.sroa.045.4.vec.insert.i.i = insertelement <2 x float> %i.ai, float %i.s, i64 1
  %.sroa.060.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.060.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.060.sroa.5.0.copyload.i = load float, ptr %.sroa.060.sroa.5.0..sroa_idx.i, align 16, !noalias !508
  %.sroa.060.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.060.sroa.6.0.copyload.i = load float, ptr %.sroa.060.sroa.6.0..sroa_idx.i, align 4, !noalias !508
  %i.br = load <2 x float>, ptr %.sroa.060.sroa.2.0..sroa_idx.i, align 4, !noalias !508
  %i.bs = load <4 x float>, ptr %5, align 16, !noalias !508
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bu = fadd <2 x float> %i.br, %i.bt
  %i.bv = fmul <2 x float> %i.bu, splat (float 5.000000e-01) ; 3 uses
  %i.bw = fadd float %.sroa.060.sroa.5.0.copyload.i, %.sroa.060.sroa.6.0.copyload.i
  %i.bx = fmul float %i.bw, 5.000000e-01          ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !508
  store <2 x float> %i.bv, ptr %2, align 8
  store float %i.bx, ptr %i.e, align 8
  store <2 x float> %.sroa.045.4.vec.insert.i.i, ptr %i.i, align 4
  %i.bz = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  store float %i.bz, ptr %.sroa.241.0..sroa_idx.i, align 4
  %i.ca = fdiv float 1.000000e+00, %i.bz          ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.i3864.i = load float, ptr %i.cb, align 8
  %i.cc = fsub float %.0.i3864.i, %i.bx
  %i.cd = fmul float %i.ca, %i.cc                 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cg = extractelement <2 x float> %i.ai, i64 0
  %i.ch = fdiv float 1.000000e+00, %i.cg          ; 2 uses
  %.0.i3872.i = load float, ptr %1, align 8
  %i.ci = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.cj = fsub float %.0.i3872.i, %i.ci
  %i.ck = fmul float %i.ch, %i.cj                 ; 3 uses
  %.0.i4186.i = load float, ptr %i.cf, align 4, !tbaa !122
  %i.cl = fsub float %.0.i4186.i, %i.ci
  %i.cm = fmul float %i.ch, %i.cl                 ; 3 uses
  %i.cn = fcmp ogt float %i.ck, %i.cm             ; 2 uses
  %spec.select.i = select i1 %i.cn, float %i.cm, float %i.ck ; 2 uses
  %spec.select96.i = select i1 %i.cn, float %i.ck, float %i.cm
  %i.co = fmul float %spec.select96.i, f0x3F800003 ; 2 uses
  %i.cp = fcmp ogt float %spec.select.i, 0.000000e+00
  %i.cq = select i1 %i.cp, float %spec.select.i, float 0.000000e+00 ; 3 uses
  %i.cr = fcmp olt float %i.co, %.0
  %i.cs = select i1 %i.cr, float %i.co, float %.0 ; 3 uses
  %i.ct = fcmp ule float %i.cq, %i.cs
  br i1 %i.ct, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit44.1.i, label %bb.c

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit44.1.i:     ; preds = %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = fdiv float 1.000000e+00, %i.s           ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.i38.i = load float, ptr %i.cw, align 4
  %i.cx = extractelement <2 x float> %i.bv, i64 1 ; 2 uses
  %i.cy = fsub float %.0.i38.i, %i.cx
  %i.cz = fmul float %i.cv, %i.cy                 ; 3 uses
  %.0.i4186.1.i = load float, ptr %i.cu, align 8, !tbaa !122
  %i.da = fsub float %.0.i4186.1.i, %i.cx
  %i.db = fmul float %i.cv, %i.da                 ; 3 uses
  %i.dc = fcmp ogt float %i.cz, %i.db             ; 2 uses
  %spec.select.1.i = select i1 %i.dc, float %i.db, float %i.cz ; 2 uses
  %spec.select96.1.i = select i1 %i.dc, float %i.cz, float %i.db
  %i.dd = fmul float %spec.select96.1.i, f0x3F800003 ; 2 uses
  %i.de = fcmp ogt float %spec.select.1.i, %i.cq
  %i.df = select i1 %i.de, float %spec.select.1.i, float %i.cq ; 3 uses
  %i.dg = fcmp olt float %i.dd, %i.cs
  %i.dh = select i1 %i.dg, float %i.dd, float %i.cs ; 3 uses
  %i.di = fcmp ule float %i.df, %i.dh
  br i1 %i.di, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit44.2.i, label %bb.c

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit44.2.i:     ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit44.1.i
  %.0.i4186.2.i = load float, ptr %i.ce, align 4, !tbaa !122
  %i.dj = fsub float %.0.i4186.2.i, %i.bx
  %i.dk = fmul float %i.ca, %i.dj                 ; 3 uses
  %i.dl = fcmp ogt float %i.cd, %i.dk             ; 2 uses
  %spec.select.2.i = select i1 %i.dl, float %i.dk, float %i.cd ; 2 uses
  %spec.select96.2.i = select i1 %i.dl, float %i.cd, float %i.dk
  %i.dm = fmul float %spec.select96.2.i, f0x3F800003 ; 2 uses
  %i.dn = fcmp ogt float %spec.select.2.i, %i.df
  %i.do = select i1 %i.dn, float %spec.select.2.i, float %i.df ; 2 uses
  %i.dp = fcmp olt float %i.dm, %i.dh
  %i.dq = select i1 %i.dp, float %i.dm, float %i.dh ; 2 uses
  %i.dr = fcmp ule float %i.do, %i.dq
  br i1 %i.dr, label %_ZNK4pbrt7Bounds3IfE10IntersectPENS_6Point3IfEENS_7Vector3IfEEfPfS6_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit44.2.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit44.1.i
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  store <2 x float> <float +inf, float -inf>, ptr %i.ds, align 8, !tbaa !122
  br label %bb.d

_ZNK4pbrt7Bounds3IfE10IntersectPENS_6Point3IfEENS_7Vector3IfEEfPfS6_.exit: ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit44.2.i
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.du = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.dt, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.dv = extractvalue { <2 x float>, <2 x float> } %i.du, 0
  %i.dw = extractvalue { <2 x float>, <2 x float> } %i.du, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.dy = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.dx, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.dz = extractvalue { <2 x float>, <2 x float> } %i.dy, 0
  %i.ea = extractvalue { <2 x float>, <2 x float> } %i.dy, 1
  %i.eb = fadd <2 x float> %i.dv, %i.dz
  %i.ec = fadd <2 x float> %i.dw, %i.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 28, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ee = load i64, ptr %i.by, align 8, !tbaa !89
  store i64 %i.ee, ptr %i.ed, align 8, !tbaa !89
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 448
  call void @_ZN4pbrt19DDAMajorantIteratorC2ENS_3RayEffPKNS_12MajorantGridENS_15SampledSpectrumE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(40) %7, float noundef %i.do, float noundef %i.dq, ptr noundef nonnull %i.ef, <2 x float> %i.eb, <2 x float> %i.ec)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt7Bounds3IfE10IntersectPENS_6Point3IfEENS_7Vector3IfEEfPfS6_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt19DDAMajorantIterator4NextEv(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.60") align 4 %0, ptr noundef nonnull align 8 dereferenceable(92) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !254 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !255 ; 6 uses
  %i.e = fcmp ult float %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !122 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = load float, ptr %i.h, align 4, !tbaa !122 ; 2 uses
  %i.j = fcmp olt float %i.g, %i.i
  %i.k = select i1 %i.j, i64 4, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load float, ptr %i.l, align 8, !tbaa !122 ; 2 uses
  %i.n = fcmp olt float %i.g, %i.m
  %i.o = select i1 %i.n, i64 2, i64 0
  %i.p = fcmp olt float %i.i, %i.m
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4pbrt19DDAMajorantIterator4NextEv.cmpToAxis, i64 %i.k
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.o
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q
  %i.u = load i32, ptr %i.t, align 4, !tbaa !136
  %i.v = sext i32 %i.u to i64                     ; 5 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.v ; 4 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !122 ; 2 uses
  %i.y = fcmp olt float %i.x, %i.d
  %i.z = select i1 %i.y, float %i.x, float %i.d   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !256 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !136
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !136
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !136
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !257
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !258
  %i.am = mul nsw i32 %i.al, %i.ah
  %i.an = add nsw i32 %i.am, %i.af
  %i.ao = mul nsw i32 %i.an, %i.aj
  %i.ap = add nsw i32 %i.ao, %i.ad
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !128
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aq
  %i.au = load float, ptr %i.at, align 4, !tbaa !122
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %1, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !116
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = fmul <2 x float> %i.aw, %.sroa.0.0.copyload.i
  %i.ay = fmul <2 x float> %i.aw, %.sroa.6.0.copyload.i
  store float %i.z, ptr %i.a, align 8, !tbaa !254
  %i.az = load float, ptr %i.w, align 4, !tbaa !122
  %i.ba = fcmp ogt float %i.az, %i.d
  %spec.store.select = select i1 %i.ba, float %i.d, float %i.z
  store float %spec.store.select, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.v
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !136
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !136
  %i.bg = add nsw i32 %i.bf, %i.bd                ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !136
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.v
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !136
  %i.bk = icmp eq i32 %i.bg, %i.bj
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.d, ptr %i.a, align 8, !tbaa !254
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.v
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !122
  %i.bo = load float, ptr %i.w, align 4, !tbaa !122
  %i.bp = fadd float %i.bn, %i.bo
  store float %i.bp, ptr %i.w, align 4, !tbaa !122
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bq, align 4, !tbaa !132
  store float %i.b, ptr %0, align 4, !tbaa !122
  %.sroa.4.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.z, ptr %.sroa.4.0..sroa_idx11, align 4, !tbaa !122
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.ax, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.ay, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !116
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt10GridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::MediumProperties") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, <2 x float> %2, float %3, ptr noundef nonnull align 4 dereferenceable(32) %4) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.pbrt::BlackbodySpectrum", align 4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.f = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load <8 x float>, ptr %i.g, align 8, !tbaa !122 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.j = load float, ptr %i.i, align 8, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.l = load float, ptr %i.k, align 4, !tbaa !122
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = load float, ptr %i.m, align 8, !tbaa !122
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.p = load float, ptr %i.o, align 4, !tbaa !122
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = load <2 x float>, ptr %i.q, align 8, !tbaa !122
  %i.s = fmul <2 x float> %2, %i.r                ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.s, %shift
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = load float, ptr %i.u, align 8, !tbaa !122
  %i.w = fmul float %3, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.y = load float, ptr %i.x, align 4, !tbaa !122
  %i.z = fadd float %i.w, %i.y
  %i.aa = fadd float %i.t, %i.z                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store float %i.aa, ptr %i.a, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !136
  %i.ab = fcmp une float %i.aa, 0.000000e+00
  br i1 %i.ab, label %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA3_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 393, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(3) @.str.20, ptr noundef nonnull align 1 dereferenceable(2) @.str.21, ptr noundef nonnull align 1 dereferenceable(3) @.str.20, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.21, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #26
  unreachable

_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit: ; preds = %bb.a
  %.sroa.026.0.vec.extract.i = extractelement <2 x float> %2, i64 0
  %i.ac = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ad = fmul float %.sroa.026.0.vec.extract.i, %i.j
  %i.ae = extractelement <2 x float> %2, i64 1
  %i.af = fmul float %i.ae, %i.l
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = fmul float %3, %i.n
  %i.ai = fadd float %i.ah, %i.p
  %i.aj = fadd float %i.ag, %i.ai                 ; 2 uses
  %i.ak = shufflevector <8 x float> %i.h, <8 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.al = fmul <2 x float> %i.ac, %i.ak
  %i.am = shufflevector <8 x float> %i.h, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.an = fmul <2 x float> %2, %i.am
  %i.ao = insertelement <2 x float> poison, float %3, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = shufflevector <8 x float> %i.h, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ar = fmul <2 x float> %i.ap, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.as = fcmp oeq float %i.aa, 1.000000e+00      ; 2 uses
  %i.at = fdiv float %i.aj, %i.aa
  %.sroa.493.0.i = select i1 %i.as, float %i.aj, float %i.at
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %1, align 8 ; 3 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 1 ; 2 uses
  %i.au = fadd <2 x float> %i.al, %i.an
  %i.av = shufflevector <8 x float> %i.h, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.aw = fadd <2 x float> %i.ar, %i.av
  %i.ax = fadd <2 x float> %i.au, %i.aw           ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fdiv <2 x float> %i.ax, %i.az
  %i.bb = insertelement <2 x i1> poison, i1 %i.as, i64 0
  %i.bc = shufflevector <2 x i1> %i.bb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bd = select <2 x i1> %i.bc, <2 x float> %i.ax, <2 x float> %i.ba
  %i.be = fsub <2 x float> %i.bd, %.sroa.05.0.copyload.i ; 3 uses
  %i.bf = fsub float %.sroa.493.0.i, %.sroa.26.0.copyload.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !137 ; 2 uses
  %i.bi = fcmp ogt float %i.bh, %.sroa.03.0.vec.extract.i.i
  %i.bj = fsub float %i.bh, %.sroa.03.0.vec.extract.i.i
  %i.bk = extractelement <2 x float> %i.be, i64 0
  %i.bl = fdiv float %i.bk, %i.bj
  %.sroa.09.0.vec.insert.i = insertelement <2 x float> %i.be, float %i.bl, i64 0
  %.sroa.09.0.i = select i1 %i.bi, <2 x float> %.sroa.09.0.vec.insert.i, <2 x float> %i.be ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !138 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, %.sroa.03.4.vec.extract.i.i
  %i.bp = fsub float %i.bn, %.sroa.03.4.vec.extract.i.i
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %.sroa.09.0.i, i64 1
  %i.bq = fdiv float %.sroa.09.4.vec.extract.i, %i.bp
  %.sroa.09.4.vec.insert.i = insertelement <2 x float> %.sroa.09.0.i, float %i.bq, i64 1
  %.sroa.09.1.i = select i1 %i.bo, <2 x float> %.sroa.09.4.vec.insert.i, <2 x float> %.sroa.09.0.i ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bs = load float, ptr %i.br, align 4, !tbaa !139 ; 2 uses
  %i.bt = fcmp ogt float %i.bs, %.sroa.26.0.copyload.i
  %i.bu = fsub float %i.bs, %.sroa.26.0.copyload.i
  %i.bv = fdiv float %i.bf, %i.bu
  %.sroa.6.0.i = select i1 %i.bt, float %i.bv, float %i.bf ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bx = tail call noundef float @_ZNK4pbrt11SampledGridIfE6LookupENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(44) %i.bw, <2 x float> %.sroa.09.1.i, float %.sroa.6.0.i)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !511, !range !55, !noundef !56
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.cc = tail call noundef float @_ZNK4pbrt11SampledGridIfE6LookupENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(44) %i.cb, <2 x float> %.sroa.09.1.i, float %.sroa.6.0.i) ; 3 uses
  %i.cd = fcmp ogt float %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !512, !range !55, !noundef !56
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZNK4pstd8optionalIN4pbrt11SampledGridIfEEEptEv.exit, label %bb.i

_ZNK4pstd8optionalIN4pbrt11SampledGridIfEEEptEv.exit: ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ci = tail call noundef float @_ZNK4pbrt11SampledGridIfE6LookupENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(44) %i.ch, <2 x float> %.sroa.09.1.i, float %.sroa.6.0.i)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !513
  %i.cl = fsub float %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 436
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !514
  %i.co = fmul float %i.cl, %i.cn                 ; 4 uses
  %i.cp = fcmp ogt float %i.co, 1.000000e+02
  br i1 %i.cp, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZNK4pstd8optionalIN4pbrt11SampledGridIfEEEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store float %i.co, ptr %5, align 4, !tbaa !261
  %i.cq = fdiv nnan float f0x3B3DE88C, %i.co
  %i.cr = fmul nnan float %i.cq, 1.000000e+09
  %i.cs = fmul nnan float %i.cr, f0x3089705F      ; 4 uses
  %i.ct = fmul float %i.cs, %i.cs                 ; 2 uses
  %i.cu = fmul float %i.ct, %i.ct
  %i.cv = fmul float %i.cs, %i.cu
  %i.cw = fmul nnan float %i.cs, f0x19858735
  %i.cx = fmul float %i.co, %i.cw
  %i.cy = fdiv float f0x1675E8FA, %i.cx
  %i.cz = fmul float %i.cy, f0x3FB8AA3B           ; 2 uses
  %i.da = tail call noundef float @llvm.floor.f32(float %i.cz) ; 2 uses
  %i.db = fsub float %i.cz, %i.da                 ; 3 uses
  %i.dc = fptosi float %i.da to i32
  %i.dd = tail call noundef float @llvm.fma.f32(float %i.db, float f0x3DA00AC9, float f0x3E679A0B)
  %i.de = tail call noundef float @llvm.fma.f32(float %i.db, float %i.dd, float f0x3F321004)
  %i.df = tail call noundef float @llvm.fma.f32(float %i.db, float %i.de, float 1.000000e+00)
  %i.dg = bitcast float %i.df to i32              ; 2 uses
  %i.dh = lshr i32 %i.dg, 23
  %i.di = add i32 %i.dc, -127
  %i.dj = add i32 %i.di, %i.dh                    ; 3 uses
  %i.dk = icmp slt i32 %i.dj, -126
end_hunk_1
begin_hunk_2_@_ZZN4pbrt23WavefrontPathIntegrator22SampleMediumScatteringINS_15HGPhaseFunctionEEEviENKUlNS_21MediumScatterWorkItemIS2_EEE_clES4_:_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
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
  %.sroa.0.0.copyload.i171 = load <2 x float>, ptr %i.ft, align 8
  %.sroa.6.0..sroa_idx.i172 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.0.copyload.i173 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i172, align 8, !tbaa !116
  %i.fu = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %10 = shufflevector <2 x float> %.sroa.0.0.copyload.i171, <2 x float> %.sroa.6.0.copyload.i173, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
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
end_hunk_2
