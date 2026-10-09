Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/media?download=true
inline.NumInlined: 3149
inline.NumDeleted: 1021
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@"_ZN4pbrt13TaggedPointerIJNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEE8DispatchIRZZNS_23WavefrontPathIntegrator23SampleMediumInteractionEiENK3$_0clENS_20MediumSampleWorkItemEEUlT_E_EEDcOSH_":bb.a
  %.sroa.11.0..sroa_idx.i32.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.11.0..sroa_idx.i32.i.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.lf, i64 12, i1 false)
  %.sroa.13.0..sroa_idx.i33.i.i = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.13.0..sroa_idx.i33.i.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.lh, i64 12, i1 false)
  %i.nj = load i64, ptr %i.lj, align 8
  %i.nk = load i32, ptr %i.lk, align 4, !tbaa !470
  %i.nl = load i32, ptr %i.lm, align 8, !tbaa !471
  %i.nm = load i32, ptr %i.ln, align 8, !tbaa !472
  %i.nn = load <2 x float>, ptr %i.lo, align 4, !tbaa !122
  %i.no = fneg <2 x float> %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.nq = load float, ptr %i.np, align 4, !tbaa !193
  %i.nr = fneg float %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.sroa.22.0..sroa_idx.i36.i.i = getelementptr inbounds nuw i8, ptr %2, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx.i36.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ns, i64 16, i1 false)
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.23.0..sroa_idx.i37.i.i = getelementptr inbounds nuw i8, ptr %2, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.0..sroa_idx.i37.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.nt, i64 16, i1 false)
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !473
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.b, ptr %2, align 8
  %.sroa.6.0..sroa_idx.i38.i.i = getelementptr inbounds nuw i8, ptr %2, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx.i38.i.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.la, i64 12, i1 false)
  %.sroa.8.0..sroa_idx.i39.i.i = getelementptr inbounds nuw i8, ptr %2, i64 68
  store float %i.nh, ptr %.sroa.8.0..sroa_idx.i39.i.i, align 4
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
  %i.q = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> %.sroa.8.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.r = fmul <4 x float> %i.p, %i.q
  %i.s = shufflevector <2 x float> %6, <2 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.t = fmul <4 x float> %i.s, %i.r
  %i.u = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer
  %i.v = fdiv <4 x float> %i.t, %i.u
  %.fr401 = freeze <4 x float> %i.v               ; 5 uses
  %i.w = fcmp une <4 x float> %.fr401, zeroinitializer
  %i.x = bitcast <4 x i1> %i.w to i4
  %.not402 = icmp eq i4 %i.x, 0
  br i1 %.not402, label %.lr.ph.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !482, !nonnull !56, !align !225 ; 2 uses
  %.sroa.0.0.copyload4.i50 = load <2 x float>, ptr %i.aa, align 4
  %.sroa.8.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.8.0.copyload.i52 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i51, align 4, !tbaa !116
  %shift = shufflevector <4 x float> %.fr401, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop393 = fadd <4 x float> %.fr401, %shift
  %shift395 = shufflevector <4 x float> %.fr401, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop396 = fadd <4 x float> %foldExtExtBinop393, %shift395
  %shift398 = shufflevector <4 x float> %.fr401, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop399 = fadd <4 x float> %shift398, %foldExtExtBinop396
  %i.ab = extractelement <4 x float> %foldExtExtBinop399, i64 0
  %i.ac = fmul float %i.ab, 2.500000e-01
  %i.ad = fmul float %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !483, !nonnull !56, !align !225 ; 2 uses
  %i.ag = load <4 x float>, ptr %3, align 8, !tbaa !122
  %i.ah = shufflevector <2 x float> %.sroa.0.0.copyload4.i50, <2 x float> %.sroa.8.0.copyload.i52, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = fmul <4 x float> %i.ah, %i.ag
  %i.aj = fmul <4 x float> %i.s, %i.ai
  %i.ak = fmul <4 x float> %.fr, %i.aj
  %i.al = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer
  %i.an = fdiv <4 x float> %i.ak, %i.am
  %i.ao = load <4 x float>, ptr %i.af, align 4, !tbaa !122
  %i.ap = fadd <4 x float> %i.an, %i.ao
  store <4 x float> %i.ap, ptr %i.af, align 4, !tbaa !122
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %i.aq = load float, ptr %3, align 8, !tbaa !122 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = load float, ptr %i.ar, align 8, !tbaa !122 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.at = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.as, i64 1
  %i.av = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x float> %i.au, %i.av           ; 3 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0 ; 2 uses
  %i.ay = fsub float 1.000000e+00, %i.ax
  %i.az = extractelement <2 x float> %i.aw, i64 1 ; 2 uses
  %i.ba = fsub float %i.ay, %i.az                 ; 2 uses
  %i.bb = fcmp ogt float %i.ba, 0.000000e+00
  %.sroa.speculated = select i1 %i.bb, float %i.ba, float 0.000000e+00 ; 2 uses
  store <2 x float> %i.aw, ptr %i.a, align 8, !tbaa !122
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %.sroa.speculated, ptr %i.bc, align 8, !tbaa !122
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !484, !nonnull !56, !align !225 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !122
  %i.bg = fadd float %i.ax, 0.000000e+00
  %i.bh = fadd float %i.bg, %i.az
  %i.bi = fadd float %i.bh, %.sroa.speculated     ; 2 uses
  %i.bj = fmul float %i.bf, %i.bi                 ; 5 uses
  %i.bk = fcmp oeq float %i.bj, %i.bi
  br i1 %i.bk, label %bb.e, label %_ZN4pbrt13NextFloatDownEf.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %or.cond.i.i = fcmp oeq float %i.bj, -inf
  br i1 %or.cond.i.i, label %_ZN4pbrt13NextFloatDownEf.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bl = fcmp oeq float %i.bj, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.bl, float -0.000000e+00, float %i.bj ; 2 uses
  %i.bm = bitcast float %spec.store.select.i.i to i32
  %i.bn = fcmp ogt float %spec.store.select.i.i, 0.000000e+00
  %.0.v.i.i = select i1 %i.bn, i32 -1, i32 1
  %.0.i.i = add i32 %.0.v.i.i, %i.bm
  %i.bo = bitcast i32 %.0.i.i to float
  br label %_ZN4pbrt13NextFloatDownEf.exit.i

_ZN4pbrt13NextFloatDownEf.exit.i:                 ; preds = %bb.f, %bb.e, %.lr.ph.i
  %.031.i = phi float [ %i.bj, %.lr.ph.i ], [ %i.bo, %bb.f ], [ -inf, %bb.e ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN4pbrt13NextFloatDownEf.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %_ZN4pbrt13NextFloatDownEf.exit.i ] ; 3 uses
  %.0.i = phi float [ %i.br, %bb.g ], [ 0.000000e+00, %_ZN4pbrt13NextFloatDownEf.exit.i ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !122
  %i.br = fadd float %.0.i, %i.bq                 ; 2 uses
  %i.bs = fcmp ugt float %i.br, %.031.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.bs, label %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit, label %bb.g, !llvm.loop !1

_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit: ; preds = %bb.g
  %i.bt = trunc nuw nsw i64 %indvars.iv.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  switch i32 %i.bt, label %bb.m [
    i32 0, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !482, !nonnull !56, !align !225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  br label %bb.q

bb.i:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !122
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !482, !nonnull !56, !align !225 ; 3 uses
  %8 = load <2 x float>, ptr %i.by, align 8, !tbaa !122
  %i.cb = shufflevector <2 x float> %6, <2 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cc = insertelement <4 x float> poison, float %i.as, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %i.bx, i64 1
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cf = fmul <4 x float> %i.cb, %i.ce           ; 4 uses
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = fdiv <4 x float> %i.cf, %i.cg
  %i.ci = load <4 x float>, ptr %i.ca, align 4, !tbaa !122
  %i.cj = fmul <4 x float> %i.ch, %i.ci
  store <4 x float> %i.cj, ptr %i.ca, align 4, !tbaa !122
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !481, !nonnull !56, !align !225 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cn = load <2 x float>, ptr %i.by, align 8, !tbaa !122
  %i.co = fmul <2 x float> %7, %i.cn
  %i.cp = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cq = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fdiv <2 x float> %i.co, %i.cq
  %i.cs = load <2 x float>, ptr %i.ar, align 8, !tbaa !122
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
  %.sroa.28.424.copyload = load <4 x float>, ptr %i.ca, align 4 ; 6 uses
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
  store <2 x float> %.sroa.03.4.vec.insert.i.i.i.i.i.i.i, ptr %i.et, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i.i.i.i.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !116
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !177
  %i.ew = getelementptr inbounds [16 x i8], ptr %i.ev, i64 %i.eg ; 2 uses
  %.sroa.5.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i.i.i, i64 16
  %.sroa.5.i.i.i.i.16..sroa.5.i.i.i.i.16..sroa.5.i.i.i.i.16..sroa.5.i.i.i.16..sroa.5.i.i.i.16..sroa.5.i.i.16..sroa.5.i.i.16..sroa.5.i.16..sroa.5.i.16..sroa.5.16..sroa.5.16..sroa.5.32..i.i.i.i = load <4 x float>, ptr %.sroa.5.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16 ; 2 uses
  %.sroa.0.4.vec.insert.i.i.i.i.i.i.i = shufflevector <4 x float> %.sroa.5.i.i.i.i.16..sroa.5.i.i.i.i.16..sroa.5.i.i.i.i.16..sroa.5.i.i.i.16..sroa.5.i.i.i.16..sroa.5.i.i.16..sroa.5.i.i.16..sroa.5.i.16..sroa.5.i.16..sroa.5.16..sroa.5.16..sroa.5.32..i.i.i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i.i.i.i.i.i = shufflevector <4 x float> %.sroa.5.i.i.i.i.16..sroa.5.i.i.i.i.16..sroa.5.i.i.i.i.16..sroa.5.i.i.i.16..sroa.5.i.i.i.16..sroa.5.i.i.16..sroa.5.i.i.16..sroa.5.i.16..sroa.5.i.16..sroa.5.16..sroa.5.16..sroa.5.32..i.i.i.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i.i.i, ptr %i.ew, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i.i.i.i, ptr %.sroa.2.0..0..sroa_idx.i28.i.i.i.i.i.i.i, align 8, !tbaa !116
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dz, i64 96
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !164
  %i.ez = getelementptr inbounds [16 x i8], ptr %i.ey, i64 %i.eg ; 2 uses
  %.sroa.0.4.vec.insert.i16.i.i.i.i.i.i = shufflevector <4 x float> %.sroa.28.424.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i17.i.i.i.i.i.i = shufflevector <4 x float> %.sroa.28.424.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i16.i.i.i.i.i.i, ptr %i.ez, align 16
  %.sroa.2.0..0..sroa_idx.i.i18.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i17.i.i.i.i.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i18.i.i.i.i.i.i, align 8, !tbaa !116
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dz, i64 120
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !164
  %i.fc = getelementptr inbounds [16 x i8], ptr %i.fb, i64 %i.eg ; 2 uses
  %.sroa.0.4.vec.insert.i21.i.i.i.i.i.i = shufflevector <4 x float> %.sroa.30.440.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i22.i.i.i.i.i.i = shufflevector <4 x float> %.sroa.30.440.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i21.i.i.i.i.i.i, ptr %i.fc, align 16
  %.sroa.2.0..0..sroa_idx.i.i23.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i22.i.i.i.i.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i23.i.i.i.i.i.i, align 8, !tbaa !116
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dz, i64 136
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !230
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.eg
  store ptr %i.dx, ptr %i.ff, align 8, !tbaa !232
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dz, i64 152
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !170
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.eg
  store float %i.ea, ptr %i.fi, align 4, !tbaa !122
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dz, i64 160
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !171
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.eg
  %i.fm = extractelement <2 x float> %i.eb, i64 0
  store float %i.fm, ptr %i.fl, align 4, !tbaa !122
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dz, i64 168
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !172
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.eg
  %i.fq = extractelement <2 x float> %i.eb, i64 1
  store float %i.fq, ptr %i.fp, align 4, !tbaa !122
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dz, i64 176
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !233
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.eg
  store float %.sroa.36.456.copyload, ptr %i.ft, align 4, !tbaa !122
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dz, i64 184
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !234
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.eg
  store float %.sroa.15306.64.copyload, ptr %i.fw, align 4, !tbaa !122
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dz, i64 192
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !235
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.eg
  store i64 %i.df, ptr %i.fz, align 8, !tbaa !89
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dz, i64 200
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !236
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.eg
  store i32 %.sroa.14305.64.copyload, ptr %i.gc, align 4, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !487, !nonnull !56
  store i8 1, ptr %i.ge, align 1, !tbaa !118
  br label %bb.q

bb.m:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !122
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !122
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %10 = load <2 x float>, ptr %i.gh, align 8, !tbaa !122
  %i.gl = shufflevector <2 x float> %4, <2 x float> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.gm = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.gn = insertelement <4 x float> %i.gm, float %i.gg, i64 1
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> %11, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gp = fsub <4 x float> %i.gl, %i.go
  %12 = load <2 x float>, ptr %i.gk, align 8, !tbaa !122
  %i.gq = insertelement <4 x float> poison, float %i.as, i64 0
  %i.gr = insertelement <4 x float> %i.gq, float %i.gj, i64 1
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gs = shufflevector <4 x float> %i.gr, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gt = fsub <4 x float> %i.gp, %i.gs           ; 2 uses
  %i.gu = fcmp ogt <4 x float> %i.gt, zeroinitializer
  %i.gv = select <4 x i1> %i.gu, <4 x float> %i.gt, <4 x float> zeroinitializer
  %i.gw = shufflevector <2 x float> %6, <2 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.gx = fmul <4 x float> %i.gw, %i.gv           ; 3 uses
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gz = fdiv <4 x float> %i.gx, %i.gy           ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !482, !nonnull !56, !align !225 ; 4 uses
  %i.hc = load <4 x float>, ptr %i.hb, align 4, !tbaa !122
  %i.hd = fmul <4 x float> %i.gz, %i.hc
  store <4 x float> %i.hd, ptr %i.hb, align 4, !tbaa !122
  %i.he = extractelement <4 x float> %i.gx, i64 0
  %i.hf = fcmp oeq float %i.he, 0.000000e+00
  br i1 %i.hf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hb, i8 0, i64 16, i1 false)
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !484
  %.pre386 = load ptr, ptr %i.ha, align 8, !tbaa !482
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.hg = phi ptr [ %.pre386, %bb.n ], [ %i.hb, %bb.m ]
  %i.hh = phi ptr [ %.pre, %bb.n ], [ %i.be, %bb.m ]
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !481, !nonnull !56, !align !225 ; 3 uses
  %i.hk = load <4 x float>, ptr %i.hj, align 4, !tbaa !122
  %i.hl = fmul <4 x float> %i.gz, %i.hk
  store <4 x float> %i.hl, ptr %i.hj, align 4, !tbaa !122
  %i.hm = fmul <4 x float> %i.gl, %i.gw
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !488, !nonnull !56, !align !225 ; 2 uses
  %i.hp = fdiv <4 x float> %i.hm, %i.gy
  %i.hq = load <4 x float>, ptr %i.ho, align 4, !tbaa !122
  %i.hr = fmul <4 x float> %i.hp, %i.hq
  store <4 x float> %i.hr, ptr %i.ho, align 4, !tbaa !122
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !489, !nonnull !56, !align !84 ; 3 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !121 ; 4 uses
  %i.hv = mul i64 %i.hu, 6364136223846793005
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !120
  %i.hy = add i64 %i.hv, %i.hx
  store i64 %i.hy, ptr %i.ht, align 8, !tbaa !121
  %i.hz = lshr i64 %i.hu, 45
  %i.ia = lshr i64 %i.hu, 27
  %i.ib = xor i64 %i.hz, %i.ia
  %i.ic = trunc i64 %i.ib to i32                  ; 2 uses
  %i.id = lshr i64 %i.hu, 59
  %i.ie = trunc nuw nsw i64 %i.id to i32
  %i.if = tail call noundef i32 @llvm.fshr.i32(i32 %i.ic, i32 %i.ic, i32 %i.ie)
  %i.ig = uitofp i32 %i.if to float
  %i.ih = fmul nnan float %i.ig, f0x2F800000      ; 2 uses
  %i.ii = fcmp olt float %i.ih, f0x3F7FFFFF
  %.sroa.speculated.i268 = select i1 %i.ii, float %i.ih, float f0x3F7FFFFF
  store float %.sroa.speculated.i268, ptr %i.hh, align 4, !tbaa !122
  %i.ij = load <4 x float>, ptr %i.hg, align 4
  %.fr405 = freeze <4 x float> %i.ij
  %i.ik = fcmp une <4 x float> %.fr405, zeroinitializer
  %i.il = bitcast <4 x i1> %i.ik to i4
  %.not406 = icmp eq i4 %i.il, 0
  br i1 %.not406, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.im = load <4 x float>, ptr %i.hj, align 4
  %.fr407 = freeze <4 x float> %i.im
  %i.in = fcmp une <4 x float> %.fr407, zeroinitializer
  %i.io = bitcast <4 x i1> %i.in to i4
  %i.ip = icmp ne i4 %i.io, 0
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.l, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ false, %bb.l ], [ false, %bb.o ], [ %i.ip, %bb.p ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load float, ptr %1, align 4, !tbaa !122
  %i.d = tail call noundef i64 @lroundf(float noundef %i.c) #25
  %i.e = load i32, ptr %0, align 8, !tbaa !126
  %i.f = trunc i64 %i.d to i32
  %i.g = sub i32 %i.f, %i.e                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !127
  %.not = icmp ugt i64 %i.j, %i.i
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  %i.m = load float, ptr %i.l, align 4, !tbaa !122
  %.sroa.0.0.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.vec.insert, %bb.c ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !122
  %i.p = tail call noundef i64 @lroundf(float noundef %i.o) #25
  %i.q = load i32, ptr %0, align 8, !tbaa !126
  %i.r = trunc i64 %i.p to i32
  %i.s = sub i32 %i.r, %i.q                       ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = zext nneg i32 %i.s to i64                ; 2 uses
  %i.v = load i64, ptr %i.a, align 8, !tbaa !127
  %.not.1 = icmp ugt i64 %i.v, %i.u
  br i1 %.not.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  %i.y = load float, ptr %i.x, align 4, !tbaa !122
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sink = phi float [ %i.y, %bb.f ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !122
  %i.ab = tail call noundef i64 @lroundf(float noundef %i.aa) #25
  %i.ac = load i32, ptr %0, align 8, !tbaa !126
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = sub i32 %i.ad, %i.ac                    ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !127
  %.not.2 = icmp ugt i64 %i.ah, %i.ag
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !122
  %.sroa.6.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.6.0 = phi <2 x float> [ %.sroa.6.8.vec.insert, %bb.i ], [ zeroinitializer, %bb.h ], [ zeroinitializer, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !122
  %i.an = tail call noundef i64 @lroundf(float noundef %i.am) #25
  %i.ao = load i32, ptr %0, align 8, !tbaa !126
  %i.ap = trunc i64 %i.an to i32
  %i.aq = sub i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.at = load i64, ptr %i.a, align 8, !tbaa !127
  %.not.3 = icmp ugt i64 %i.at, %i.as
  br i1 %.not.3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  %i.aw = load float, ptr %i.av, align 4, !tbaa !122
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink30 = phi float [ %i.aw, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.0.4.vec.insert17 = insertelement <2 x float> %.sroa.0.0, float %.sink, i64 1
  %.sroa.6.12.vec.insert22 = insertelement <2 x float> %.sroa.6.0, float %.sink30, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert17, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.12.vec.insert22, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind
declare i64 @lroundf(float noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(4) %4) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !238, !alias.scope !492
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !240, !alias.scope !492
  store i8 0, ptr %i.a, align 8, !tbaa !116, !alias.scope !492
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(4) %4)
          to label %_ZN4pbrt12StringPrintfIJRA4_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRA47_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !240
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44

bb.v:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA47_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.noexc45 unwind label %bb.w

.noexc45:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44: ; preds = %_ZN4pbrt6detail9formatOneIRA47_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !241
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47 unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44
  %i.dj = load ptr, ptr %7, align 8, !tbaa !241   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !116
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44, %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !241   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body42, label %.body42.sink.split

.body42.sink.split:                               ; preds = %bb.w, %bb.u
  %.sink89 = phi ptr [ %i.da, %bb.u ], [ %i.do, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !116
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink89, i64 noundef %i.dr) #28
  br label %.body42

.body42:                                          ; preds = %.body42.sink.split, %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ], [ %.pn.ph, %.body42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.z

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.13, %bb.c ], [ @.str.14, %bb.r ], [ @.str.12, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #26
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !242
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.y unwind label %bb.b

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %3, align 8, !tbaa !241   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.y
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !116
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !241   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !116
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn24
}

declare void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, ptr, i64) local_unnamed_addr #1

declare void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124), ptr, i64, ptr, i64) local_unnamed_addr #1

declare void @_ZNK4pbrt24PortalImageInfiniteLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional.175") align 8, ptr noundef nonnull align 8 dereferenceable(516), ptr noundef byval(%"class.pbrt::LightSampleContext") align 8, <2 x float>, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8, i1 noundef zeroext) local_unnamed_addr #1

declare { <2 x float>, float } @_ZN4pbrt22SampleHenyeyGreensteinENS_7Vector3IfEEfNS_6Point2IfEEPf(<2 x float>, float, float noundef, <2 x float>, ptr noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_media.cpp() #21 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !122
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !122
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !122
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !122
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <10 x float> @llvm.masked.load.v10f32.p0(ptr captures(none), <10 x i1>, <10 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x float> @llvm.masked.load.v6f32.p0(ptr captures(none), <6 x i1>, <6 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v2i32(<2 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !85}
!1 = distinct !{!1, !85}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"bool", !7, i64 0}
!12 = !{!"_ZTSN4pstd5arrayIbLi12EEE", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTSN4pbrt23WavefrontPathIntegrator5StatsE", !13, i64 0}
!15 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !13, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEEE", !16, i64 0}
!18 = !{!"_ZTSN4pbrt6FilterE", !17, i64 0}
!19 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEEE", !16, i64 0}
!20 = !{!"_ZTSN4pbrt4FilmE", !19, i64 0}
!21 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerENS_15DebugMLTSamplerEEEE", !16, i64 0}
!22 = !{!"_ZTSN4pbrt7SamplerE", !21, i64 0}
!23 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17PerspectiveCameraENS_18OrthographicCameraENS_15SphericalCameraENS_15RealisticCameraEEEE", !16, i64 0}
!24 = !{!"_ZTSN4pbrt6CameraE", !23, i64 0}
!25 = !{!"p1 _ZTSN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEEE", !13, i64 0}
!26 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_19UniformLightSamplerENS_17PowerLightSamplerENS_22ExhaustiveLightSamplerENS_15BVHLightSamplerEEEE", !16, i64 0}
!27 = !{!"_ZTSN4pbrt12LightSamplerE", !26, i64 0}
!28 = !{!"p1 float", !13, i64 0}
!29 = !{!"p1 int", !13, i64 0}
!30 = !{!"_ZTSN4pbrt3SOAINS_6Point2IiEEEE", !8, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"p1 _ZTSN4pbrt6Float4E", !13, i64 0}
!32 = !{!"_ZTSN4pbrt3SOAINS_18SampledWavelengthsEEE", !8, i64 0, !31, i64 8, !31, i64 16, !28, i64 24, !28, i64 32}
!33 = !{!"_ZTSN4pbrt3SOAINS_15SampledSpectrumEEE", !8, i64 0, !31, i64 8, !28, i64 16}
!34 = !{!"p1 bool", !13, i64 0}
!35 = !{!"_ZTSN4pbrt3SOAINS_6Point3IfEEEE", !8, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!36 = !{!"_ZTSN4pbrt3SOAINS_7Normal3IfEEEE", !8, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!37 = !{!"_ZTSN4pbrt3SOAINS_6Point2IfEEEE", !8, i64 0, !28, i64 8, !28, i64 16}
!38 = !{!"_ZTSN4pbrt3SOAINS_7Vector3IfEEEE", !8, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!39 = !{!"_ZTSN4pbrt3SOAINS_14VisibleSurfaceEEE", !8, i64 0, !34, i64 8, !35, i64 16, !36, i64 48, !36, i64 80, !37, i64 112, !28, i64 136, !38, i64 144, !38, i64 176, !33, i64 208}
!40 = !{!"_ZTSN4pbrt3SOAINS_10RaySamplesEEE", !31, i64 0, !31, i64 8, !31, i64 16, !28, i64 24, !28, i64 32}
!41 = !{!"_ZTSN4pbrt3SOAINS_16PixelSampleStateEEE", !8, i64 0, !28, i64 8, !30, i64 16, !32, i64 40, !33, i64 80, !33, i64 104, !39, i64 128, !40, i64 360}
!42 = !{!"p1 _ZTSN4pbrt18WavefrontAggregateE", !13, i64 0}
!43 = !{!"p1 _ZTSN4pbrt17MediumSampleQueueE", !13, i64 0}
!44 = !{!"p1 _ZTSN4pbrt14MultiWorkQueueINS_8TypePackIJNS_21MediumScatterWorkItemINS_15HGPhaseFunctionEEEEEEEE", !13, i64 0}
!45 = !{!"p1 _ZTSN4pbrt15EscapedRayQueueE", !13, i64 0}
!46 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_20HitAreaLightWorkItemEEE", !13, i64 0}
!47 = !{!"p1 _ZTSN4pbrt14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS2_INS_23CoatedConductorMaterialEEENS2_INS_17ConductorMaterialEEENS2_INS_18DielectricMaterialEEENS2_INS_15DiffuseMaterialEEENS2_INS_27DiffuseTransmissionMaterialEEENS2_INS_12HairMaterialEEENS2_INS_16MeasuredMaterialEEENS2_INS_18SubsurfaceMaterialEEENS2_INS_22ThinDielectricMaterialEEENS2_INS_11MixMaterialEEEEEEEE", !13, i64 0}
!48 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_17ShadowRayWorkItemEEE", !13, i64 0}
!49 = !{!"p1 _ZTSN4pbrt25GetBSSRDFAndProbeRayQueueE", !13, i64 0}
!50 = !{!"p1 _ZTSN4pbrt22SubsurfaceScatterQueueE", !13, i64 0}
!51 = !{!"p1 _ZTSN4pbrt3RGBE", !13, i64 0}
!52 = !{!"p1 _ZTSSt6atomicIbE", !13, i64 0}
!53 = !{!"p1 _ZTSSt6thread", !13, i64 0}
!54 = !{!"_ZTSN4pbrt23WavefrontPathIntegratorE", !11, i64 0, !11, i64 1, !11, i64 2, !12, i64 3, !12, i64 15, !14, i64 32, !15, i64 40, !18, i64 48, !20, i64 56, !22, i64 64, !24, i64 72, !25, i64 80, !27, i64 88, !8, i64 96, !8, i64 100, !11, i64 104, !8, i64 108, !8, i64 112, !41, i64 120, !7, i64 520, !42, i64 536, !43, i64 544, !44, i64 552, !45, i64 560, !46, i64 568, !47, i64 576, !47, i64 584, !48, i64 592, !49, i64 600, !50, i64 608, !51, i64 616, !51, i64 624, !52, i64 632, !53, i64 640}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!"p1 _ZTSN4pbrt8RayQueueE", !13, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"p1 _ZTSN4pbrt23WavefrontPathIntegratorE", !13, i64 0}
!60 = !{!"_ZTSZN4pbrt23WavefrontPathIntegrator23SampleMediumInteractionEiE3$_0", !59, i64 0, !57, i64 8}
!61 = !{!60, !59, i64 0}
!62 = !{!60, !57, i64 8}
!63 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_20MediumSampleWorkItemEEE", !13, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"p1 _ZTSN4pbrt11PBRTOptionsE", !13, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"_ZTSN4pbrt25RenderingCoordinateSystemE", !7, i64 0}
!68 = !{!"_ZTSN4pbrt16BasicPBRTOptionsE", !8, i64 0, !11, i64 4, !11, i64 5, !11, i64 6, !11, i64 7, !11, i64 8, !11, i64 9, !11, i64 10, !11, i64 11, !11, i64 12, !11, i64 13, !67, i64 16}
!69 = !{!68, !11, i64 10}
!70 = !{!13, !13, i64 0}
!71 = !{!"any p2 pointer", !13, i64 0}
!72 = !{!"p2 _ZTSN4pbrt9WorkQueueINS_20MediumSampleWorkItemEEE", !71, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"_ZTSSt14_Function_base", !7, i64 0, !13, i64 16}
!75 = !{!"_ZTSSt8functionIFvlEE", !74, i64 0, !13, i64 24}
!76 = !{!75, !13, i64 24}
!77 = !{!74, !13, i64 16}
!78 = !{!"p1 _ZTSSt8functionIFvlEE", !13, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"_ZTSSt8functionIFvllEE", !74, i64 0, !13, i64 24}
!81 = !{!80, !13, i64 24}
!82 = !{!54, !8, i64 96}
!83 = !{!16, !16, i64 0}
!84 = !{i64 8}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"p1 _ZTSSt9type_info", !13, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEEE", !16, i64 0}
!89 = !{!88, !16, i64 0}
!90 = !{!"float", !7, i64 0}
!91 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !90, i64 0, !90, i64 4, !90, i64 8}
!92 = !{!"_ZTSN4pbrt6Point3IfEE", !91, i64 0}
!93 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !90, i64 0, !90, i64 4, !90, i64 8}
!94 = !{!"_ZTSN4pbrt7Vector3IfEE", !93, i64 0}
!95 = !{!"_ZTSN4pbrt6MediumE", !88, i64 0}
!96 = !{!"_ZTSN4pbrt3RayE", !92, i64 0, !94, i64 12, !90, i64 24, !95, i64 32}
!97 = !{!"_ZTSN4pstd5arrayIfLi4EEE", !7, i64 0}
!98 = !{!"_ZTSN4pbrt18SampledWavelengthsE", !97, i64 0, !97, i64 16}
!99 = !{!"_ZTSN4pbrt15SampledSpectrumE", !97, i64 0}
!100 = !{!"_ZTSN4pbrt8IntervalE", !90, i64 0, !90, i64 4}
!101 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3ENS_8IntervalEEE", !100, i64 0, !100, i64 8, !100, i64 16}
!102 = !{!"_ZTSN4pbrt6Point3INS_8IntervalEEE", !101, i64 0}
!103 = !{!"_ZTSN4pbrt8Point3fiE", !102, i64 0}
!104 = !{!"_ZTSN4pbrt6Tuple3INS_7Normal3EfEE", !90, i64 0, !90, i64 4, !90, i64 8}
!105 = !{!"_ZTSN4pbrt7Normal3IfEE", !104, i64 0}
!106 = !{!"_ZTSN4pbrt18LightSampleContextE", !103, i64 0, !105, i64 24, !105, i64 36}
!107 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEEE", !16, i64 0}
!108 = !{!"_ZTSN4pbrt5LightE", !107, i64 0}
!109 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EfEE", !90, i64 0, !90, i64 4}
!110 = !{!"_ZTSN4pbrt6Point2IfEE", !109, i64 0}
!111 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEEE", !16, i64 0}
!112 = !{!"_ZTSN4pbrt8MaterialE", !111, i64 0}
!113 = !{!"_ZTSN4pbrt15MediumInterfaceE", !95, i64 0, !95, i64 8}
!114 = !{!"_ZTSN4pbrt20MediumSampleWorkItemE", !96, i64 0, !8, i64 40, !90, i64 44, !98, i64 48, !99, i64 80, !99, i64 96, !99, i64 112, !8, i64 128, !106, i64 132, !8, i64 180, !8, i64 184, !90, i64 188, !108, i64 192, !103, i64 200, !105, i64 224, !94, i64 236, !94, i64 248, !94, i64 260, !110, i64 272, !112, i64 280, !105, i64 288, !94, i64 300, !94, i64 312, !105, i64 324, !105, i64 336, !8, i64 348, !113, i64 352}
!115 = !{!114, !90, i64 44}
!116 = !{!7, !7, i64 0}
!117 = !{i64 0, i64 16, !116, i64 16, i64 16, !116}
!118 = !{!11, !11, i64 0}
!119 = !{!"_ZTSN4pbrt3RNGE", !16, i64 0, !16, i64 8}
!120 = !{!119, !16, i64 8}
!121 = !{!119, !16, i64 0}
!122 = !{!90, !90, i64 0}
!123 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIfEE", !15, i64 0}
!124 = !{!"_ZTSN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEE", !123, i64 0, !28, i64 8, !16, i64 16, !16, i64 24}
!125 = !{!"_ZTSN4pbrt22DenselySampledSpectrumE", !8, i64 0, !8, i64 4, !124, i64 8}
!126 = !{!125, !8, i64 0}
!127 = !{!124, !16, i64 24}
!128 = !{!124, !28, i64 8}
!129 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_15HGPhaseFunctionEEEE", !16, i64 0}
!130 = !{!129, !16, i64 0}
!131 = !{!"_ZTSN4pstd8optionalIN4pbrt18RayMajorantSegmentEEE", !7, i64 0, !11, i64 24}
!132 = !{!131, !11, i64 24}
!133 = !{!"_ZTSN4pbrt18RayMajorantSegmentE", !90, i64 0, !90, i64 4, !99, i64 8}
!134 = !{!133, !90, i64 4}
!135 = !{!133, !90, i64 0}
!136 = !{!8, !8, i64 0}
!137 = !{!91, !90, i64 0}
!138 = !{!91, !90, i64 4}
!139 = !{!91, !90, i64 8}
!140 = !{!"_ZTSN4pbrt7Bounds3IfEE", !92, i64 0, !92, i64 12}
!141 = !{!"_ZTSN4pbrt12SquareMatrixILi4EEE", !7, i64 0}
!142 = !{!"_ZTSN4pbrt9TransformE", !141, i64 0, !141, i64 64}
!143 = !{!"_ZTSN4pbrt15HGPhaseFunctionE", !90, i64 0}
!144 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EiEE", !8, i64 0, !8, i64 4, !8, i64 8}
!145 = !{!"_ZTSN4pbrt6Point3IiEE", !144, i64 0}
!146 = !{!"_ZTSN4pbrt12MajorantGridE", !140, i64 0, !124, i64 24, !145, i64 56}
!147 = !{!"_ZTSN4pbrt27HomogeneousMajorantIteratorE", !133, i64 0, !11, i64 24}
!148 = !{!147, !11, i64 24}
!149 = !{!"_ZTSN7nanovdb14GridHandleBaseE"}
!150 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorISt4byteEE", !15, i64 0}
!151 = !{!"p1 omnipotent char", !13, i64 0}
!152 = !{!"_ZTSN4pbrt13NanoVDBBufferE", !150, i64 0, !16, i64 8, !151, i64 16}
!153 = !{!"_ZTSN7nanovdb10GridHandleIN4pbrt13NanoVDBBufferEEE", !149, i64 0, !152, i64 8}
!154 = !{!"p1 _ZTSN7nanovdb4GridINS_4TreeINS_8RootNodeINS_12InternalNodeINS3_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEEEEEEE", !13, i64 0}
!155 = !{!"_ZTSN4pbrt13NanoVDBMediumE", !140, i64 0, !142, i64 24, !125, i64 152, !125, i64 192, !143, i64 232, !146, i64 240, !153, i64 312, !153, i64 344, !154, i64 376, !154, i64 384, !90, i64 392, !90, i64 396, !90, i64 400}
!156 = !{!"_ZTSN7nanovdb8BaseBBoxINS_5CoordEEE", !7, i64 0}
!157 = !{!"_ZTSN7nanovdb4BBoxINS_5CoordELb0EEE", !156, i64 0}
!158 = !{!"_ZTSN7nanovdb8RootDataINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEEE", !157, i64 0, !8, i64 24, !90, i64 28, !90, i64 32, !90, i64 36, !90, i64 40, !90, i64 44}
!159 = !{!158, !8, i64 24}
!160 = !{!"_ZTSN7nanovdb8RootDataINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE4TileE", !16, i64 0, !16, i64 8, !8, i64 16, !90, i64 20}
!161 = !{!160, !16, i64 0}
!162 = !{!160, !16, i64 8}
!163 = !{!114, !8, i64 128}
!164 = !{!33, !31, i64 8}
!165 = !{!114, !8, i64 40}
!166 = !{!114, !8, i64 180}
!167 = !{!35, !28, i64 8}
!168 = !{!35, !28, i64 16}
!169 = !{!35, !28, i64 24}
!170 = !{!38, !28, i64 8}
!171 = !{!38, !28, i64 16}
!172 = !{!38, !28, i64 24}
!173 = !{!"_ZTSN4pbrt3SOAINS_8IntervalEEE", !8, i64 0, !28, i64 8, !28, i64 16}
!174 = !{!"_ZTSN4pbrt3SOAINS_8Point3fiEEE", !8, i64 0, !173, i64 8, !173, i64 32, !173, i64 56}
!175 = !{!"_ZTSN4pbrt3SOAINS_18LightSampleContextEEE", !8, i64 0, !174, i64 8, !36, i64 88, !36, i64 120}
!176 = !{!32, !31, i64 8}
!177 = !{!32, !31, i64 16}
!178 = !{!173, !28, i64 8}
end_hunk_1
