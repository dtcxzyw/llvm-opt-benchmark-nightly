Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrator?download=true
inline.NumInlined: 4025
inline.NumDeleted: 1526
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 39
begin_hunk_0_@"_ZNSt17_Function_handlerIFvlEZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E9_M_invokeERKSt9_Any_dataOl":bb.a
  %.sroa.037.1.i.i.i.i = phi <4 x float> [ %i.ev, %bb.d ], [ %i.gk, %bb.e ], [ %.sroa.037.092.i.i.i.i, %bb.b ]
  %i.gl = freeze <4 x float> %.sroa.037.1.i.i.i.i ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.093.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gm, %i.df
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.b

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.gn = load i32, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !tbaa !1109
  %i.go = getelementptr inbounds nuw i8, ptr %.val.val, i64 208
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !268
  %i.gq = sext i32 %i.gn to i64
  %i.gr = getelementptr inbounds [16 x i8], ptr %i.gp, i64 %i.gq ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load <2 x float>, ptr %i.gr, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !122
  %i.gs = shufflevector <4 x float> %.sroa.037.0.lcssa.i.i.i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gt = fadd <2 x float> %i.gs, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %i.gu = shufflevector <4 x float> %.sroa.037.0.lcssa.i.i.i.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gv = fadd <2 x float> %i.gu, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  store <2 x float> %i.gt, ptr %i.gr, align 16
  store <2 x float> %i.gv, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !122
  br label %"_ZSt10__invoke_rIvRZN4pbrt12ForAllQueuedIZNS0_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS0_18EscapedRayWorkItemEEEvPKcPKNS0_9WorkQueueIT0_EEiOT_EUliE_JlEENSt9enable_ifIX16is_invocable_r_vISC_S8_DpT1_EESC_E4typeEOS8_DpOSH_.exit"

"_ZSt10__invoke_rIvRZN4pbrt12ForAllQueuedIZNS0_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS0_18EscapedRayWorkItemEEEvPKcPKNS0_9WorkQueueIT0_EEiOT_EUliE_JlEENSt9enable_ifIX16is_invocable_r_vISC_S8_DpT1_EESC_E4typeEOS8_DpOSH_.exit": ; preds = %._crit_edge.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt12ForAllQueuedIZNS_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS_18EscapedRayWorkItemEEEvPKcPKNS_9WorkQueueIT0_EEiOT_EUliE_", ptr %0, align 8, !tbaa !339
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1110
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_5Light2LeERKNS_3RayERKNS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS9_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #23 comdat {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 5, label %bb.e
    i32 6, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1112, !nonnull !119, !align !438
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1113, !nonnull !119, !align !472
  %i.d = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt20UniformInfiniteLight2LeERKNS_3RayERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(180) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 4 dereferenceable(32) %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1112, !nonnull !119, !align !438 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1113, !nonnull !119, !align !472
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.015.0.copyload.i.i = load <2 x float>, ptr %i.h, align 4 ; 3 uses
  %.sroa.216.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.216.0.copyload.i.i = load float, ptr %.sroa.216.0..sroa_idx.i.i, align 4 ; 2 uses
  %i.i = shufflevector <2 x float> %.sroa.015.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !437
  %i.n = fmul <2 x float> %.sroa.015.0.copyload.i.i, %i.m ; 2 uses
  %shift = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.n, %shift
  %i.o = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.q = load float, ptr %i.p, align 4, !tbaa !437
  %i.r = fmul float %.sroa.216.0.copyload.i.i, %i.q
  %i.s = fadd float %i.o, %i.r                    ; 3 uses
  %i.t = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.j, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !437 ; 3 uses
  %i.u = shufflevector <5 x float> %i.t, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <5 x float> %i.t, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.w = fmul <2 x float> %i.i, %i.v
  %i.x = load <2 x float>, ptr %i.k, align 4, !tbaa !437 ; 2 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.z = shufflevector <4 x float> %i.u, <4 x float> %i.y, <2 x i32> <i32 0, i32 4>
  %i.aa = fmul <2 x float> %.sroa.015.0.copyload.i.i, %i.z
  %i.ab = fadd <2 x float> %i.w, %i.aa
  %i.ac = insertelement <2 x float> poison, float %.sroa.216.0.copyload.i.i, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = shufflevector <2 x float> %i.x, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <5 x float> %i.t, <5 x float> %i.ae, <2 x i32> <i32 2, i32 6>
  %i.ag = fmul <2 x float> %i.ad, %i.af
  %i.ah = fadd <2 x float> %i.ab, %i.ag           ; 3 uses
  %i.ai = fmul <2 x float> %i.ah, %i.ah           ; 2 uses
  %shift21 = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop22 = fadd <2 x float> %i.ai, %shift21
  %i.aj = extractelement <2 x float> %foldExtExtBinop22, i64 0
  %i.ak = fmul float %i.s, %i.s
  %i.al = fadd float %i.aj, %i.ak
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.al) ; 2 uses
  %i.am = insertelement <2 x float> poison, float %sqrt.i.i.i.i, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fdiv <2 x float> %i.ah, %i.an
  %i.ap = fdiv float %i.s, %sqrt.i.i.i.i
  %i.aq = tail call <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float> %i.ao, float %i.ap)
  %i.ar = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt18ImageInfiniteLight7ImageLeENS_6Point2IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(592) %1, <2 x float> %i.aq, ptr noundef nonnull align 4 dereferenceable(32) %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %0, align 8, !tbaa !1112, !nonnull !119, !align !438
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1113, !nonnull !119, !align !472
  %i.av = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt24PortalImageInfiniteLight2LeERKNS_3RayERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(516) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 4 dereferenceable(32) %i.au)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.c, %bb.b
  %.pn = phi { <2 x float>, <2 x float> } [ %i.av, %bb.d ], [ %i.ar, %bb.c ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ %i.d, %bb.b ], [ zeroinitializer, %bb.a ]
  ret { <2 x float>, <2 x float> } %.pn
}

declare { <2 x float>, <2 x float> } @_ZNK4pbrt20UniformInfiniteLight2LeERKNS_3RayERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(180), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

declare <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float>, float) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt18ImageInfiniteLight7ImageLeENS_6Point2IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(592) %0, <2 x float> %1, ptr noundef nonnull align 4 dereferenceable(32) %2) local_unnamed_addr #23 comdat align 2 {
_ZN4pbrt3RGBixEi.exit.2:
  %3 = alloca %"class.pbrt::RGBIlluminantSpectrum", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !441
  %i.e = sitofp i32 %i.d to float
  %i.f = fmul float %.sroa.03.0.vec.extract.i, %i.e
  %i.g = fptosi float %i.f to i32
  %i.h = load i32, ptr %i.c, align 8, !tbaa !442
  %i.i = sitofp i32 %i.h to float
  %i.j = fmul float %.sroa.03.4.vec.extract.i, %i.i
  %i.k = fptosi float %i.j to i32
  %.sroa.4.0.insert.ext.i = zext i32 %i.k to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.g to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.l = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i, i32 noundef 0, i64 12884901891)
  %.sroa.024.0.vec.insert = insertelement <2 x float> poison, float %i.l, i64 0
  %i.m = load i32, ptr %i.b, align 4, !tbaa !441
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul float %.sroa.03.0.vec.extract.i, %i.n
  %i.p = fptosi float %i.o to i32
  %i.q = load i32, ptr %i.c, align 8, !tbaa !442
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %.sroa.03.4.vec.extract.i, %i.r
  %i.t = fptosi float %i.s to i32
  %.sroa.4.0.insert.ext.i.1 = zext i32 %i.t to i64
  %.sroa.4.0.insert.shift.i.1 = shl nuw i64 %.sroa.4.0.insert.ext.i.1, 32
  %.sroa.0.0.insert.ext.i.1 = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i.1 = or disjoint i64 %.sroa.4.0.insert.shift.i.1, %.sroa.0.0.insert.ext.i.1
  %i.u = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i.1, i32 noundef 1, i64 12884901891)
  %.sroa.024.4.vec.insert = insertelement <2 x float> %.sroa.024.0.vec.insert, float %i.u, i64 1 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.b, align 4, !tbaa !130
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  %i.x = fmul <2 x float> %1, %i.w                ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = fptosi float %i.y to i32
  %i.aa = extractelement <2 x float> %i.x, i64 1
  %i.ab = fptosi float %i.aa to i32
  %.sroa.4.0.insert.ext.i.2 = zext i32 %i.ab to i64
  %.sroa.4.0.insert.shift.i.2 = shl nuw i64 %.sroa.4.0.insert.ext.i.2, 32
  %.sroa.0.0.insert.ext.i.2 = zext i32 %i.z to i64
  %.sroa.0.0.insert.insert.i.2 = or disjoint i64 %.sroa.4.0.insert.shift.i.2, %.sroa.0.0.insert.ext.i.2
  %i.ac = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i.2, i32 noundef 2, i64 12884901891) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1121
  %i.af = fcmp ogt <2 x float> %.sroa.024.4.vec.insert, zeroinitializer
  %i.ag = select <2 x i1> %i.af, <2 x float> %.sroa.024.4.vec.insert, <2 x float> zeroinitializer
  %i.ah = fcmp ogt float %i.ac, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.ah, float %i.ac, float 0.000000e+00
  call void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(152) %i.ae, <2 x float> %i.ag, float %.sroa.speculated.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 312
  %4 = load <4 x float>, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !494 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2
  %i.al = load float, ptr %3, align 8, !tbaa !495 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !496 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !497 ; 4 uses
  %i.ar = load float, ptr %i.am, align 4, !tbaa !498 ; 4 uses
  %i.as = load float, ptr %2, align 4, !tbaa !437 ; 2 uses
  %i.at = call noundef float @llvm.fma.f32(float %i.as, float %i.ar, float %i.aq)
  %i.au = call noundef float @llvm.fma.f32(float %i.as, float %i.at, float %i.ao) ; 5 uses
  %i.av = call float @llvm.fabs.f32(float %i.au)
  %i.aw = fcmp oeq float %i.av, +inf
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ax = fcmp ogt float %i.au, 0.000000e+00
  %i.ay = uitofp i1 %i.ax to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

bb.c:                                             ; preds = %bb.a
  %i.az = fmul float %i.au, %i.au
  %i.ba = fadd float %i.az, 1.000000e+00
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.ba)
  %i.bb = fmul float %sqrt.i.i.i, 2.000000e+00
  %i.bc = fdiv float %i.au, %i.bb
  %i.bd = fadd float %i.bc, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i:       ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi float [ %i.ay, %bb.b ], [ %i.bd, %bb.c ]
  %i.be = fmul float %i.al, %.0.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !437 ; 2 uses
  %i.bh = call noundef float @llvm.fma.f32(float %i.bg, float %i.ar, float %i.aq)
  %i.bi = call noundef float @llvm.fma.f32(float %i.bg, float %i.bh, float %i.ao) ; 5 uses
  %i.bj = call float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp oeq float %i.bj, +inf
  br i1 %i.bk, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.bl = fmul float %i.bi, %i.bi
  %i.bm = fadd float %i.bl, 1.000000e+00
  %sqrt.i.i.1.i = call float @llvm.sqrt.f32(float %i.bm)
  %i.bn = fmul float %sqrt.i.i.1.i, 2.000000e+00
  %i.bo = fdiv float %i.bi, %i.bn
  %i.bp = fadd float %i.bo, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i

bb.e:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.bq = fcmp ogt float %i.bi, 0.000000e+00
  %i.br = uitofp i1 %i.bq to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i:     ; preds = %bb.e, %bb.d
  %.0.i.i.1.i = phi float [ %i.br, %bb.e ], [ %i.bp, %bb.d ]
  %i.bs = fmul float %i.al, %.0.i.i.1.i
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !437 ; 2 uses
  %i.bv = call noundef float @llvm.fma.f32(float %i.bu, float %i.ar, float %i.aq)
  %i.bw = call noundef float @llvm.fma.f32(float %i.bu, float %i.bv, float %i.ao) ; 5 uses
  %i.bx = call float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp oeq float %i.bx, +inf
  br i1 %i.by, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i
  %i.bz = fmul float %i.bw, %i.bw
  %i.ca = fadd float %i.bz, 1.000000e+00
  %sqrt.i.i.2.i = call float @llvm.sqrt.f32(float %i.ca)
  %i.cb = fmul float %sqrt.i.i.2.i, 2.000000e+00
  %i.cc = fdiv float %i.bw, %i.cb
  %i.cd = fadd float %i.cc, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i

bb.g:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i
  %i.ce = fcmp ogt float %i.bw, 0.000000e+00
  %i.cf = uitofp i1 %i.ce to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i:     ; preds = %bb.g, %bb.f
  %.0.i.i.2.i = phi float [ %i.cf, %bb.g ], [ %i.cd, %bb.f ]
  %i.cg = fmul float %i.al, %.0.i.i.2.i
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !437 ; 2 uses
  %i.cj = call noundef float @llvm.fma.f32(float %i.ci, float %i.ar, float %i.aq)
  %i.ck = call noundef float @llvm.fma.f32(float %i.ci, float %i.cj, float %i.ao) ; 5 uses
  %i.cl = call float @llvm.fabs.f32(float %i.ck)
  %i.cm = fcmp oeq float %i.cl, +inf
  br i1 %i.cm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.cn = fmul float %i.ck, %i.ck
  %i.co = fadd float %i.cn, 1.000000e+00
  %sqrt.i.i.3.i = call float @llvm.sqrt.f32(float %i.co)
  %i.cp = fmul float %sqrt.i.i.3.i, 2.000000e+00
  %i.cq = fdiv float %i.ck, %i.cp
  %i.cr = fadd float %i.cq, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

bb.i:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.cs = fcmp ogt float %i.ck, 0.000000e+00
  %i.ct = uitofp i1 %i.cs to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i:     ; preds = %bb.i, %bb.h
  %.0.i.i.3.i = phi float [ %i.ct, %bb.i ], [ %i.cr, %bb.h ]
  %i.cu = fmul float %i.al, %.0.i.i.3.i
  %i.cv = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 4 dereferenceable(32) %2) ; 2 uses
  %i.cw = extractvalue { <2 x float>, <2 x float> } %i.cv, 0
  %i.cx = extractvalue { <2 x float>, <2 x float> } %i.cv, 1
  %i.cy = insertelement <2 x float> poison, float %i.be, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.bs, i64 1
  %i.da = fmul <2 x float> %i.cz, %i.cw
  %i.db = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.cu, i64 1
  %i.dd = fmul <2 x float> %i.dc, %i.cx
  br label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit

_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i
  %.sroa.06.0.i = phi <2 x float> [ %i.da, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %.sroa.4.0.i = phi <2 x float> [ %i.dd, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.de = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = shufflevector <2 x float> %.sroa.06.0.i, <2 x float> %.sroa.4.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dg = fmul <4 x float> %i.de, %i.df           ; 2 uses
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.di = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.dh, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %i.di, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

declare void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(152), <2 x float>, float) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, i32 noundef %2, i64 %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Point2", align 8      ; 5 uses
  %i.a = alloca float, align 4                    ; 6 uses
  store i64 %1, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.sroa.04.0.copyload = load i64, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_ZN4pbrt16RemapPixelCoordsEPNS_6Point2IiEES1_NS_10WrapMode2DE(ptr noundef nonnull %4, i64 %.sroa.04.0.copyload, i64 %3)
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !1122
  switch i32 %i.d, label %bb.k [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.02.0.copyload to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.02.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1123
  %i.h = trunc i64 %i.g to i32
  %i.i = load i32, ptr %i.b, align 4, !tbaa !441
  %i.j = mul nsw i32 %i.i, %.sroa.2.0.extract.trunc.i
  %i.k = add nsw i32 %i.j, %.sroa.0.0.extract.trunc.i
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = sext i32 %i.l to i64
  %i.n = sext i32 %2 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1124
  %i.q = getelementptr i8, ptr %i.p, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 %i.n     ; 3 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !1125 ; 2 uses
  %i.t = and i64 %i.s, 144115188075855871
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = lshr i64 %i.s, 57
  %i.w = trunc nuw nsw i64 %i.v to i32
  switch i32 %i.w, label %bb.e [
    i32 1, label %.lr.ph.i.i.i.i.i
    i32 2, label %bb.d
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %i.x = load i8, ptr %i.r, align 1, !tbaa !122
  %i.y = uitofp i8 %i.x to float
  %i.z = fdiv float %i.y, 2.550000e+02
  store float %i.z, ptr %i.a, align 4, !tbaa !437
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr %i.r, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.u, ptr %i.r, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %bb.e
  %i.aa = load float, ptr %i.a, align 4, !tbaa !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %.sroa.01.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i9 = trunc i64 %.sroa.01.0.copyload to i32
  %.sroa.2.0.extract.shift.i10 = lshr i64 %.sroa.01.0.copyload, 32
  %.sroa.2.0.extract.trunc.i11 = trunc nuw i64 %.sroa.2.0.extract.shift.i10 to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1123
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !441
  %i.af = mul nsw i32 %i.ae, %.sroa.2.0.extract.trunc.i11
  %i.ag = add nsw i32 %i.af, %.sroa.0.0.extract.trunc.i9
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = sext i32 %i.ah to i64
  %i.aj = sext i32 %2 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1126
  %i.am = getelementptr [2 x i8], ptr %i.al, i64 %i.ai
  %i.an = getelementptr [2 x i8], ptr %i.am, i64 %i.aj
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !1128 ; 2 uses
  %i.ap = zext i16 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 13               ; 4 uses
  %i.ar = and i32 %i.aq, 260046848                ; 2 uses
  %i.as = icmp eq i32 %i.ar, 260046848
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = or i32 %i.aq, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit

bb.h:                                             ; preds = %bb.f
  %i.au = and i32 %i.aq, 268427264
  %i.av = add nuw nsw i32 %i.au, 939524096
  %i.aw = icmp eq i32 %i.ar, 0
  br i1 %i.aw, label %bb.i, label %_ZNK4pbrt4HalfcvfEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = or i32 %i.aq, 947912704
  %i.ay = bitcast i32 %i.ax to float
  %i.az = fadd float %i.ay, f0xB8800000
  %i.ba = bitcast float %i.az to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit

_ZNK4pbrt4HalfcvfEv.exit:                         ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i32 [ %i.at, %bb.g ], [ %i.ba, %bb.i ], [ %i.av, %bb.h ]
  %.signext.i = sext i16 %i.ao to i32
  %i.bb = and i32 %.signext.i, -2147483648
  %i.bc = or i32 %.sroa.0.0.i, %i.bb
  %i.bd = bitcast i32 %i.bc to float
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i12 = trunc i64 %.sroa.0.0.copyload to i32
  %.sroa.2.0.extract.shift.i13 = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.2.0.extract.trunc.i14 = trunc nuw i64 %.sroa.2.0.extract.shift.i13 to i32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1123
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !441
  %i.bi = mul nsw i32 %i.bh, %.sroa.2.0.extract.trunc.i14
  %i.bj = add nsw i32 %i.bi, %.sroa.0.0.extract.trunc.i12
  %i.bk = mul nsw i32 %i.bj, %i.bg
  %i.bl = sext i32 %i.bk to i64
  %i.bm = sext i32 %2 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !500
  %i.bp = getelementptr [4 x i8], ptr %i.bo, i64 %i.bl
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %i.bm
  %i.br = load float, ptr %i.bq, align 4, !tbaa !437
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.88, i32 noundef 273, ptr noundef nonnull @.str.89) #33
  unreachable

bb.l:                                             ; preds = %bb.a, %bb.j, %_ZNK4pbrt4HalfcvfEv.exit, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit
  %.0 = phi float [ %i.aa, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit ], [ %i.bd, %_ZNK4pbrt4HalfcvfEv.exit ], [ %i.br, %bb.j ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4pbrt16RemapPixelCoordsEPNS_6Point2IiEES1_NS_10WrapMode2DE(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 9 uses
  %.sroa.9.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %.sroa.9.0.extract.trunc = trunc nuw i64 %.sroa.9.0.extract.shift to i32 ; 8 uses
  %.sroa.0.0.extract.trunc90 = trunc i64 %2 to i32 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.a = icmp eq i32 %.sroa.0.0.extract.trunc90, 3
  br i1 %i.a, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !130    ; 5 uses
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = icmp slt i32 %i.b, %.sroa.0.0.extract.trunc
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %.preheader.1, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.sroa.3.0.extract.shift, 3
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4pbrt8LogFatalIJRA47_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.88, i32 noundef 101, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(47) @.str.90) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = load i32, ptr %0, align 4, !tbaa !130    ; 5 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = sub nsw i32 0, %i.f                      ; 2 uses
  store i32 %i.h, ptr %0, align 4, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !130
  %i.k = xor i32 %i.j, -1
  %i.l = add i32 %i.k, %.sroa.9.0.extract.trunc   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRA26_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  resume { ptr, i32 } %.pn24
}

declare noundef float @_ZNK4pbrt22ExhaustiveLightSampler3PMFERKNS_18LightSampleContextENS_5LightE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 4 dereferenceable(48), ptr nofree noundef align 8 dead_on_return dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt15BVHLightSampler3PMFERKNS_18LightSampleContextENS_5LightE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %2) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 5 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !99     ; 4 uses
  %i.c = and i64 %i.b, 144115188075855871
  %i.d = mul i64 %i.c, -4132994306676758123       ; 2 uses
  %i.e = lshr i64 %i.d, 47
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, -4132994306676758123
  %i.h = xor i64 %i.g, 3829533694005038248
  %i.i = mul i64 %i.h, -4132994306676758123       ; 2 uses
  %i.j = lshr i64 %i.i, 47
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4132994306676758123       ; 2 uses
  %i.m = lshr i64 %i.l, 47
  %i.n = xor i64 %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1187
  %i.q = add i64 %i.p, -1                         ; 3 uses
  %i.r = and i64 %i.n, %i.q                       ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1188 ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.r ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !1190, !range !118, !noundef !119
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.preheader.i, label %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE6HasKeyERKS1_.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.y = load i64, ptr %i.u, align 8, !tbaa !99
  %.not.i2.i = icmp eq i64 %i.b, %i.y
  br i1 %.not.i2.i, label %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEEixERKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %.01220.i3.i = phi i32 [ %i.z, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %i.z = add nuw nsw i32 %.01220.i3.i, 1          ; 4 uses
  %i.aa = lshr i32 %i.z, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = add i64 %i.r, %i.ab
  %i.ad = mul nuw nsw i32 %i.z, %i.z
  %i.ae = lshr i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add i64 %i.ac, %i.af
  %i.ah = and i64 %i.ag, %i.q
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !1190, !range !118, !noundef !119
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i.i, label %._ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE10FindOffsetERKS1_.exit.loopexit_crit_edge.i, !llvm.loop !1182

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !99
  %.not.i.i = icmp eq i64 %i.b, %i.am
  br i1 %.not.i.i, label %.lr.ph.i49, label %.lr.ph.i, !llvm.loop !1182

._ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE10FindOffsetERKS1_.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i
  br label %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE6HasKeyERKS1_.exit, !llvm.loop !1182

_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE6HasKeyERKS1_.exit: ; preds = %._ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE10FindOffsetERKS1_.exit.loopexit_crit_edge.i, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !103
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1194
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i64
  %i.at = add i64 %i.ao, %i.as
  %i.au = uitofp i64 %i.at to float
  %i.av = fdiv float 1.000000e+00, %i.au
  br label %.thread53

.lr.ph.i49:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i51
  %.01220.i4.i = phi i32 [ %i.aw, %.lr.ph.i.i51 ], [ 0, %.lr.ph.i.i ]
  %i.aw = add nuw nsw i32 %.01220.i4.i, 1         ; 4 uses
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = add i64 %i.r, %i.ay
  %i.ba = mul nuw nsw i32 %i.aw, %i.aw
  %i.bb = lshr i32 %i.ba, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = add i64 %i.az, %i.bc
  %i.be = and i64 %i.bd, %i.q                     ; 2 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !1190, !range !118, !noundef !119
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.lr.ph.i.i51, label %._ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE10FindOffsetERKS1_.exit.loopexit_crit_edge.i50, !llvm.loop !1182

.lr.ph.i.i51:                                     ; preds = %.lr.ph.i49
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !99
  %.not.i.i52 = icmp eq i64 %i.b, %i.bj
  br i1 %.not.i.i52, label %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEEixERKS1_.exit, label %.lr.ph.i49, !llvm.loop !1182

._ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE10FindOffsetERKS1_.exit.loopexit_crit_edge.i50: ; preds = %.lr.ph.i49
  tail call void @_ZN4pbrt8LogFatalIJRA26_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.92, i32 noundef 706, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(26) @.str.93) #33
  unreachable

_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEEixERKS1_.exit: ; preds = %.lr.ph.i.i51, %.lr.ph.i.preheader.i
  %.118.i.ph.i = phi i64 [ %i.r, %.lr.ph.i.preheader.i ], [ %i.be, %.lr.ph.i.i51 ]
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.bk = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.bl = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bn = fadd <2 x float> %i.bk, %i.bm
  %i.bo = fmul <2 x float> %i.bn, splat (float 5.000000e-01) ; 2 uses
  %i.bp = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.bq = fmul float %i.bp, 5.000000e-01          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.br, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !103 ; 2 uses
  %i.bu = uitofp i64 %i.bt to float
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1194
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = zext i1 %i.bx to i64
  %i.bz = add i64 %i.bt, %i.by
  %i.ca = uitofp i64 %i.bz to float
  %i.cb = fdiv float %i.bu, %i.ca
  %i.cc = fsub float 1.000000e+00, %i.cb          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1195 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8            ; 2 uses
  %.not59 = icmp sgt i32 %i.cg, -1
  br i1 %.not59, label %.lr.ph, label %.thread53

.lr.ph:                                           ; preds = %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEEixERKS1_.exit
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.118.i.ph.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !130
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.cm = phi i32 [ %i.cg, %.lr.ph ], [ %i.dk, %bb.d ]
  %i.cn = phi ptr [ %i.cf, %.lr.ph ], [ %i.dj, %bb.d ]
  %i.co = phi ptr [ %i.ce, %.lr.ph ], [ %i.dh, %bb.d ] ; 2 uses
  %.03962 = phi i32 [ %i.cj, %.lr.ph ], [ %i.dg, %bb.d ] ; 2 uses
  %.04161 = phi float [ %i.cc, %.lr.ph ], [ %i.dc, %bb.d ]
  %.04360 = phi i32 [ 0, %.lr.ph ], [ %i.df, %bb.d ]
  %i.cp = add nuw nsw i32 %.04360, 1              ; 2 uses
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cq
  %i.cs = zext nneg i32 %i.cm to i64
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.cu = tail call noundef float @_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %i.cr, <2 x float> %i.bo, float %i.bq, <2 x float> %.sroa.025.0.copyload, float %.sroa.5.0.copyload, ptr noundef nonnull align 4 dereferenceable(24) %i.ck) ; 2 uses
  store float %i.cu, ptr %i.a, align 4, !tbaa !437
  %i.cv = tail call noundef float @_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %i.ct, <2 x float> %i.bo, float %i.bq, <2 x float> %.sroa.025.0.copyload, float %.sroa.5.0.copyload, ptr noundef nonnull align 4 dereferenceable(24) %i.ck) ; 2 uses
  store float %i.cv, ptr %i.cl, align 4, !tbaa !437
  %i.cw = and i32 %.03962, 1                      ; 2 uses
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !437
  %i.da = fadd float %i.cu, %i.cv
  %i.db = fdiv float %i.cz, %i.da
  %i.dc = fmul float %.04161, %i.db               ; 2 uses
  %.not47 = icmp eq i32 %i.cw, 0
  br i1 %.not47, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dd = load i32, ptr %i.cn, align 8
  %i.de = and i32 %i.dd, 2147483647               ; 2 uses
  %.pre = zext nneg i32 %i.de to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.cq, %bb.b ]
  %i.df = phi i32 [ %i.de, %bb.c ], [ %i.cp, %bb.b ]
  %i.dg = lshr i32 %.03962, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.dh = load ptr, ptr %i.cd, align 8, !tbaa !1195 ; 2 uses
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %.pre-phi
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8            ; 2 uses
  %.not = icmp sgt i32 %i.dk, -1
  br i1 %.not, label %bb.b, label %.thread53, !llvm.loop !1183

.thread53:                                        ; preds = %bb.d, %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEEixERKS1_.exit, %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE6HasKeyERKS1_.exit
  %.2 = phi float [ %i.av, %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEE6HasKeyERKS1_.exit ], [ %i.cc, %_ZNK4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEEixERKS1_.exit ], [ %i.dc, %bb.d ]
  ret float %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, ptr noundef nonnull align 4 dereferenceable(24) %5) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %6 = load <4 x float>, ptr %5, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !1198, !noalias !1199
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load <4 x i16>, ptr %i.a, align 4, !tbaa !1200, !noalias !1199
  %i.i = shufflevector <4 x i16> %i.h, <4 x i16> poison, <2 x i32> <i32 0, i32 3>
  %i.j = uitofp <2 x i16> %i.i to <2 x float>
  %i.k = fdiv <2 x float> %i.j, splat (float 6.553500e+04) ; 2 uses
  %i.l = fsub nnan <2 x float> splat (float 1.000000e+00), %i.k
  %i.m = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %i.m, %i.l
  %i.o = insertelement <2 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.k, %i.p
  %i.r = fadd <2 x float> %i.q, %i.n              ; 4 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.t = fcmp olt <2 x float> %i.r, %i.s
  %i.u = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = select <2 x i1> %i.t, <2 x float> %i.u, <2 x float> %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = insertelement <2 x i32> poison, i32 %i.y, i64 0
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ab = lshr <2 x i32> %i.aa, <i32 0, i32 15>
  %i.ac = and <2 x i32> %i.ab, splat (i32 32767)
  %i.ad = uitofp nneg <2 x i32> %i.ac to <2 x float>
  %i.ae = fdiv nnan <2 x float> %i.ad, splat (float 3.276700e+04) ; 2 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = fmul nnan float %i.af, 2.000000e+00
  %i.ah = fadd float %i.ag, -1.000000e+00         ; 4 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 1
  %i.aj = fmul nnan float %i.ai, 2.000000e+00
  %i.ak = fadd float %i.aj, -1.000000e+00
  %i.al = extractelement <2 x float> %i.w, i64 0  ; 3 uses
  %i.am = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.an = fadd float %i.al, %i.am
  %i.ao = fmul float %i.an, 5.000000e-01          ; 5 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.ap = fsub float %.sroa.0.0.vec.extract.i, %i.ao ; 3 uses
  %i.aq = load <2 x i16>, ptr %i.d, align 2, !tbaa !1200, !noalias !1199
  %i.ar = uitofp <2 x i16> %i.aq to <2 x float>
  %i.as = fdiv <2 x float> %i.ar, splat (float 6.553500e+04) ; 2 uses
  %i.at = load <2 x float>, ptr %i.e, align 4, !tbaa !437, !noalias !1199 ; 2 uses
  %i.au = load <2 x float>, ptr %i.f, align 4, !tbaa !437, !noalias !1199 ; 2 uses
  %i.av = fsub nnan <2 x float> splat (float 1.000000e+00), %i.as
  %i.aw = fmul <2 x float> %i.at, %i.av
  %i.ax = fmul <2 x float> %i.as, %i.au
  %i.ay = fadd <2 x float> %i.ax, %i.aw           ; 4 uses
  %i.az = load <2 x i16>, ptr %i.g, align 4, !tbaa !1200, !noalias !1199
  %i.ba = uitofp <2 x i16> %i.az to <2 x float>
  %i.bb = fdiv <2 x float> %i.ba, splat (float 6.553500e+04) ; 2 uses
  %i.bc = fsub nnan <2 x float> splat (float 1.000000e+00), %i.bb
  %i.bd = fmul <2 x float> %i.at, %i.bc
  %i.be = fmul <2 x float> %i.au, %i.bb
  %i.bf = fadd <2 x float> %i.be, %i.bd           ; 4 uses
  %i.bg = fcmp olt <2 x float> %i.bf, %i.ay
  %i.bh = select <2 x i1> %i.bg, <2 x float> %i.bf, <2 x float> %i.ay ; 4 uses
  %i.bi = fcmp olt <2 x float> %i.ay, %i.bf
  %i.bj = select <2 x i1> %i.bi, <2 x float> %i.bf, <2 x float> %i.ay ; 6 uses
  %i.bk = fadd <2 x float> %i.bj, %i.bh
  %i.bl = fmul <2 x float> %i.bk, splat (float 5.000000e-01) ; 7 uses
  %i.bm = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bn = insertelement <2 x float> %i.bm, float %2, i64 1
  %i.bo = fsub <2 x float> %i.bn, %i.bl           ; 3 uses
  %i.bp = fmul float %i.ap, %i.ap
  %i.bq = fmul <2 x float> %i.bo, %i.bo           ; 2 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %i.bs = fadd float %i.bp, %i.br
  %i.bt = extractelement <2 x float> %i.bq, i64 1
  %i.bu = fadd float %i.bt, %i.bs                 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.bj, %i.bh ; 2 uses
  %foldExtExtBinop178 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.bv = shufflevector <2 x float> %i.bj, <2 x float> %i.w, <2 x i32> <i32 1, i32 2>
  %i.bw = shufflevector <2 x float> %i.bh, <2 x float> %i.w, <2 x i32> <i32 1, i32 3>
  %i.bx = fsub <2 x float> %i.bv, %i.bw           ; 2 uses
  %i.by = fmul <2 x float> %i.bx, %i.bx           ; 2 uses
  %shift = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop180 = fadd <2 x float> %shift, %foldExtExtBinop178
  %foldExtExtBinop182 = fadd <2 x float> %i.by, %foldExtExtBinop180
  %i.bz = extractelement <2 x float> %foldExtExtBinop182, i64 0
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.bz)
  %i.ca = fmul float %sqrt.i, 5.000000e-01        ; 2 uses
  %i.cb = fcmp olt float %i.bu, %i.ca
  %.sroa.speculated149 = select i1 %i.cb, float %i.ca, float %i.bu
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bu) ; 2 uses
  %i.cc = fdiv float %i.ap, %sqrt.i.i             ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv <2 x float> %i.bo, %i.ce           ; 3 uses
  %i.cg = load <2 x i16>, ptr %0, align 4, !tbaa !1200
  %i.ch = uitofp <2 x i16> %i.cg to <2 x float>
  %i.ci = fdiv nnan <2 x float> %i.ch, splat (float 6.553500e+04)
  %i.cj = fmul nnan <2 x float> %i.ci, splat (float 2.000000e+00)
  %i.ck = fadd <2 x float> %i.cj, splat (float -1.000000e+00) ; 3 uses
  %i.cl = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ck) ; 3 uses
  %shift184 = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop185 = fadd <2 x float> %i.cl, %shift184
  %i.cm = extractelement <2 x float> %foldExtExtBinop185, i64 0
  %i.cn = fsub float 1.000000e+00, %i.cm          ; 4 uses
  %i.co = fcmp olt float %i.cn, 0.000000e+00
  br i1 %i.co, label %bb.b, label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

bb.b:                                             ; preds = %bb.a
  %i.cp = fsub nnan <2 x float> splat (float 1.000000e+00), %i.cl
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cr = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> splat (float 1.000000e+00), <2 x float> %i.ck)
  %i.cs = fmul nnan <2 x float> %i.cr, %i.cq
  br label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi <2 x float> [ %i.cs, %bb.b ], [ %i.ck, %bb.a ] ; 4 uses
  %.sroa.01.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.ct = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.i ; 2 uses
  %shift187 = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop188 = fadd <2 x float> %i.ct, %shift187
  %i.cu = extractelement <2 x float> %foldExtExtBinop188, i64 0
  %i.cv = fmul float %i.cn, %i.cn
  %i.cw = fadd float %i.cv, %i.cu
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cw) ; 2 uses
  %i.cx = fdiv float %.sroa.01.0.vec.extract.i.i.i.i, %sqrt.i.i.i
  %i.cy = fmul float %i.cc, %i.cx
  %i.cz = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.da = insertelement <2 x float> %i.cz, float %i.cn, i64 1
  %i.db = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fdiv <2 x float> %i.da, %i.dc
  %i.de = fmul <2 x float> %i.cf, %i.dd           ; 2 uses
  %i.df = extractelement <2 x float> %i.de, i64 0
  %i.dg = fadd float %i.cy, %i.df
  %i.dh = extractelement <2 x float> %i.de, i64 1
  %i.di = fadd float %i.dh, %i.dg                 ; 2 uses
  %i.dj = and i32 %i.y, 1073741824
  %.not = icmp eq i32 %i.dj, 0
  %i.dk = tail call float @llvm.fabs.f32(float %i.di)
  %spec.select = select i1 %.not, float %i.di, float %i.dk ; 5 uses
  %i.dl = fmul float %spec.select, %spec.select
  %i.dm = fsub float 1.000000e+00, %i.dl          ; 2 uses
  %i.dn = fcmp ogt float %i.dm, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.dn, float %i.dm, float 0.000000e+00
  %sqrt.i124 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 2 uses
  %i.do = fcmp ult float %i.ao, %i.am
  %i.dp = fcmp ugt float %i.ao, %i.al
  %or.cond.i.i.i = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond.i.i.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit
  %i.dq = shufflevector <2 x float> %i.bl, <2 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dr = shufflevector <2 x float> %i.bj, <2 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ds = fcmp ugt <4 x float> %i.dq, %i.dr
  %i.dt = freeze <4 x i1> %i.ds
  %i.du = bitcast <4 x i1> %i.dt to i4
  %.not206 = icmp eq i4 %i.du, 0
  br i1 %.not206, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i: ; preds = %bb.c
  %i.dv = fsub float %i.ao, %i.al                 ; 2 uses
  %foldExtExtBinop190 = fsub <2 x float> %i.bl, %i.bj ; 2 uses
  %foldExtExtBinop192 = fsub <2 x float> %i.bl, %i.bj ; 2 uses
  %i.dw = fmul float %i.dv, %i.dv
  %foldExtExtBinop194 = fmul <2 x float> %foldExtExtBinop190, %foldExtExtBinop190
  %i.dx = extractelement <2 x float> %foldExtExtBinop194, i64 0
  %i.dy = fadd float %i.dw, %i.dx
  %foldExtExtBinop196 = fmul <2 x float> %foldExtExtBinop192, %foldExtExtBinop192
  %i.dz = extractelement <2 x float> %foldExtExtBinop196, i64 1
  %i.ea = fadd float %i.dz, %i.dy
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ea) ; 2 uses
  %i.eb = fmul float %sqrt.i.i.i.i, %sqrt.i.i.i.i ; 2 uses
  %i.ec = fcmp olt float %i.bu, %i.eb
  br i1 %i.ec, label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread: ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit, %bb.c, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i
  %i.ed = phi float [ %i.eb, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit ]
  %i.ee = fsub float %i.ao, %.sroa.0.0.vec.extract.i ; 3 uses
  %shift198 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop199 = fsub <2 x float> %i.bl, %shift198 ; 3 uses
  %i.ef = extractelement <2 x float> %foldExtExtBinop199, i64 0
  %i.eg = extractelement <2 x float> %i.bl, i64 1
  %i.eh = fsub float %i.eg, %2                    ; 3 uses
  %i.ei = fmul float %i.ee, %i.ee
  %foldExtExtBinop201 = fmul <2 x float> %foldExtExtBinop199, %foldExtExtBinop199
  %i.ej = extractelement <2 x float> %foldExtExtBinop201, i64 0
  %i.ek = fadd float %i.ei, %i.ej
  %i.el = fmul float %i.eh, %i.eh
  %i.em = fadd float %i.el, %i.ek                 ; 2 uses
  %sqrt.i.i.i125 = tail call noundef float @llvm.sqrt.f32(float %i.em) ; 3 uses
  %i.en = fdiv float %i.ee, %sqrt.i.i.i125        ; 2 uses
  %i.eo = fdiv float %i.ef, %sqrt.i.i.i125        ; 2 uses
  %i.ep = fdiv float %i.eh, %sqrt.i.i.i125        ; 3 uses
  %i.eq = fdiv float %i.ed, %i.em
  %i.er = fsub float 1.000000e+00, %i.eq          ; 2 uses
  %i.es = fcmp ogt float %i.er, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.es, float %i.er, float 0.000000e+00
  %sqrt.i.i126 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i)
  %i.et = fmul float %i.en, %i.en
  %i.eu = fmul float %i.eo, %i.eo
  %i.ev = fadd float %i.et, %i.eu
  %i.ew = fmul float %i.ep, %i.ep
  %i.ex = fadd float %i.ew, %i.ev
  %sqrt.i.i.i48.i = tail call noundef float @llvm.sqrt.f32(float %i.ex)
  %i.ey = fdiv float %i.ep, %sqrt.i.i.i48.i
  %.sroa.3.8.vec.insert.i = insertelement <2 x float> poison, float %i.ey, i64 0
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %sqrt.i.i126, i64 1
  br label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit

_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit: ; preds = %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread
  %.sroa.3.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread ], [ <float 1.000000e+00, float -1.000000e+00>, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ] ; 2 uses
  %.sroa.3.12.vec.extract = extractelement <2 x float> %.sroa.3.0.i, i64 1 ; 4 uses
  %i.ez = shufflevector <2 x float> %.sroa.3.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fa = insertelement <2 x float> %i.ez, float %i.ah, i64 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4pbrt16DiffuseAreaLight1LENS_6Point3IfEENS_7Normal3IfEENS_6Point2IfEENS_7Vector3IfEERKNS_18SampledWavelengthsE:bb.a

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i:     ; preds = %bb.m, %bb.l
  %.0.i.i.2.i = phi float [ %i.cs, %bb.m ], [ %i.cq, %bb.l ]
  %i.ct = fmul float %i.ay, %.0.i.i.2.i
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !437 ; 2 uses
  %i.cw = call noundef float @llvm.fma.f32(float %i.cv, float %i.be, float %i.bd)
  %i.cx = call noundef float @llvm.fma.f32(float %i.cv, float %i.cw, float %i.bb) ; 5 uses
  %i.cy = call float @llvm.fabs.f32(float %i.cx)
  %i.cz = fcmp oeq float %i.cy, +inf
  br i1 %i.cz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.da = fmul float %i.cx, %i.cx
  %i.db = fadd float %i.da, 1.000000e+00
  %sqrt.i.i.3.i = call float @llvm.sqrt.f32(float %i.db)
  %i.dc = fmul float %sqrt.i.i.3.i, 2.000000e+00
  %i.dd = fdiv float %i.cx, %i.dc
  %i.de = fadd float %i.dd, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

bb.o:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.df = fcmp ogt float %i.cx, 0.000000e+00
  %i.dg = uitofp i1 %i.df to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i:     ; preds = %bb.o, %bb.n
  %.0.i.i.3.i = phi float [ %i.dg, %bb.o ], [ %i.de, %bb.n ]
  %i.dh = fmul float %i.ay, %.0.i.i.3.i
  %i.di = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.hy, ptr noundef nonnull align 4 dereferenceable(32) %8) ; 2 uses
  %i.dj = extractvalue { <2 x float>, <2 x float> } %i.di, 0
  %i.dk = extractvalue { <2 x float>, <2 x float> } %i.di, 1
  %i.dl = insertelement <2 x float> poison, float %i.br, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.cf, i64 1
  %i.dn = fmul <2 x float> %i.dm, %i.dj
  %i.do = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dh, i64 1
  %i.dq = fmul <2 x float> %i.dp, %i.dk
  br label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit

_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i
  %.sroa.06.0.i = phi <2 x float> [ %i.dn, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %.sroa.4.0.i = phi <2 x float> [ %i.dq, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.dr = shufflevector <1 x float> %i.hw, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = fmul <2 x float> %i.dr, %.sroa.06.0.i
  %i.dt = fmul <2 x float> %i.dr, %.sroa.4.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.q

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %bb.f
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 12 uses
  %.sroa.083.4.vec.extract = extractelement <2 x float> %5, i64 1
  %i.dv = fsub float 1.000000e+00, %.sroa.083.4.vec.extract ; 3 uses
  %.sroa.040.0.vec.extract.i = extractelement <2 x float> %5, i64 0
  %i.dw = uitofp nneg i32 %i.as to float
  %i.dx = fmul float %.sroa.040.0.vec.extract.i, %i.dw
  %i.dy = uitofp nneg i32 %i.av to float
  %i.dz = fmul float %i.dv, %i.dy
  %i.ea = fadd float %i.dx, -5.000000e-01         ; 2 uses
  %i.eb = fadd float %i.dz, -5.000000e-01         ; 2 uses
  %i.ec = call noundef float @llvm.floor.f32(float %i.ea)
  %i.ed = fptosi float %i.ec to i32               ; 3 uses
  %i.ee = call noundef float @llvm.floor.f32(float %i.eb)
  %i.ef = fptosi float %i.ee to i32               ; 3 uses
  %.sroa.239.0.insert.ext.i = zext i32 %i.ef to i64
  %.sroa.239.0.insert.shift.i = shl nuw i64 %.sroa.239.0.insert.ext.i, 32 ; 2 uses
  %.sroa.038.0.insert.ext.i = zext i32 %i.ed to i64 ; 2 uses
  %.sroa.038.0.insert.insert.i = or disjoint i64 %.sroa.239.0.insert.shift.i, %.sroa.038.0.insert.ext.i
  %i.eg = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.038.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %i.eh = add nsw i32 %i.ed, 1
  %.sroa.036.0.insert.ext.i = zext i32 %i.eh to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i = or disjoint i64 %.sroa.239.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.ei = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.036.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %i.ej = add nsw i32 %i.ef, 1
  %.sroa.235.0.insert.ext.i = zext i32 %i.ej to i64
  %.sroa.235.0.insert.shift.i = shl nuw i64 %.sroa.235.0.insert.ext.i, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.038.0.insert.ext.i
  %i.ek = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.034.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.el = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.0.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %i.em = load <2 x i32>, ptr %i.ar, align 4, !tbaa !130
  %i.en = sitofp <2 x i32> %i.em to <2 x float>   ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %5, %i.en
  %i.eo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ep = fadd float %i.eo, -5.000000e-01         ; 2 uses
  %i.eq = extractelement <2 x float> %i.en, i64 1
  %i.er = fmul float %i.dv, %i.eq
  %i.es = fadd float %i.er, -5.000000e-01         ; 2 uses
  %i.et = call noundef float @llvm.floor.f32(float %i.ep)
  %i.eu = fptosi float %i.et to i32               ; 3 uses
  %i.ev = call noundef float @llvm.floor.f32(float %i.es)
  %i.ew = fptosi float %i.ev to i32               ; 3 uses
  %.sroa.239.0.insert.ext.i.1 = zext i32 %i.ew to i64
  %.sroa.239.0.insert.shift.i.1 = shl nuw i64 %.sroa.239.0.insert.ext.i.1, 32 ; 2 uses
  %.sroa.038.0.insert.ext.i.1 = zext i32 %i.eu to i64 ; 2 uses
  %.sroa.038.0.insert.insert.i.1 = or disjoint i64 %.sroa.239.0.insert.shift.i.1, %.sroa.038.0.insert.ext.i.1
  %i.ex = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.038.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %i.ey = add nsw i32 %i.eu, 1
  %.sroa.036.0.insert.ext.i.1 = zext i32 %i.ey to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i.1 = or disjoint i64 %.sroa.239.0.insert.shift.i.1, %.sroa.036.0.insert.ext.i.1
  %i.ez = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.036.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %i.fa = add nsw i32 %i.ew, 1
  %.sroa.235.0.insert.ext.i.1 = zext i32 %i.fa to i64
  %.sroa.235.0.insert.shift.i.1 = shl nuw i64 %.sroa.235.0.insert.ext.i.1, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i.1 = or disjoint i64 %.sroa.235.0.insert.shift.i.1, %.sroa.038.0.insert.ext.i.1
  %i.fb = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.034.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %.sroa.0.0.insert.insert.i.1 = or disjoint i64 %.sroa.235.0.insert.shift.i.1, %.sroa.036.0.insert.ext.i.1
  %i.fc = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.0.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %i.fd = insertelement <2 x i32> poison, i32 %i.ef, i64 0
  %i.fe = insertelement <2 x i32> %i.fd, i32 %i.ew, i64 1
  %i.ff = sitofp <2 x i32> %i.fe to <2 x float>
  %i.fg = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.es, i64 1
  %i.fi = fsub <2 x float> %i.fh, %i.ff           ; 3 uses
  %i.fj = insertelement <2 x i32> poison, i32 %i.ed, i64 0
  %i.fk = insertelement <2 x i32> %i.fj, i32 %i.eu, i64 1
  %i.fl = sitofp <2 x i32> %i.fk to <2 x float>
  %i.fm = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.ep, i64 1
  %i.fo = fsub <2 x float> %i.fn, %i.fl           ; 3 uses
  %i.fp = fsub <2 x float> splat (float 1.000000e+00), %i.fo ; 2 uses
  %i.fq = fsub <2 x float> splat (float 1.000000e+00), %i.fi ; 2 uses
  %i.fr = fmul <2 x float> %i.fp, %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.ex, i64 1
  %i.fu = fmul <2 x float> %i.ft, %i.fr
  %i.fv = fmul <2 x float> %i.fo, %i.fq
  %i.fw = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.ez, i64 1
  %i.fy = fmul <2 x float> %i.fx, %i.fv
  %i.fz = fadd <2 x float> %i.fu, %i.fy
  %i.ga = fmul <2 x float> %i.fp, %i.fi
  %i.gb = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %i.fb, i64 1
  %i.gd = fmul <2 x float> %i.gc, %i.ga
  %i.ge = fadd <2 x float> %i.gd, %i.fz
  %i.gf = fmul <2 x float> %i.fo, %i.fi
  %i.gg = insertelement <2 x float> poison, float %i.el, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.fc, i64 1
  %i.gi = fmul <2 x float> %i.gh, %i.gf
  %i.gj = fadd <2 x float> %i.gi, %i.ge           ; 2 uses
  %i.gk = load <2 x i32>, ptr %i.ar, align 4, !tbaa !130
  %i.gl = sitofp <2 x i32> %i.gk to <2 x float>
  %i.gm = insertelement <2 x float> %5, float %i.dv, i64 1
  %i.gn = fmul <2 x float> %i.gm, %i.gl
  %i.go = fadd <2 x float> %i.gn, splat (float -5.000000e-01) ; 2 uses
  %i.gp = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.go)
  %i.gq = fptosi <2 x float> %i.gp to <2 x i32>   ; 4 uses
  %i.gr = extractelement <2 x i32> %i.gq, i64 1   ; 2 uses
  %.sroa.239.0.insert.ext.i.2 = zext i32 %i.gr to i64
  %.sroa.239.0.insert.shift.i.2 = shl nuw i64 %.sroa.239.0.insert.ext.i.2, 32
  %i.gs = extractelement <2 x i32> %i.gq, i64 0   ; 2 uses
  %.sroa.038.0.insert.ext.i.2 = zext i32 %i.gs to i64
  %.sroa.038.0.insert.insert.i.2 = bitcast <2 x i32> %i.gq to i64
  %i.gt = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.038.0.insert.insert.i.2, i32 noundef 2, i64 4294967297)
  %i.gu = add nsw i32 %i.gs, 1
  %.sroa.036.0.insert.ext.i.2 = zext i32 %i.gu to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i.2 = or disjoint i64 %.sroa.239.0.insert.shift.i.2, %.sroa.036.0.insert.ext.i.2
  %i.gv = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.036.0.insert.insert.i.2, i32 noundef 2, i64 4294967297)
  %i.gw = add nsw i32 %i.gr, 1
  %.sroa.235.0.insert.ext.i.2 = zext i32 %i.gw to i64
  %.sroa.235.0.insert.shift.i.2 = shl nuw i64 %.sroa.235.0.insert.ext.i.2, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i.2 = or disjoint i64 %.sroa.235.0.insert.shift.i.2, %.sroa.038.0.insert.ext.i.2
  %i.gx = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.034.0.insert.insert.i.2, i32 noundef 2, i64 4294967297)
  %.sroa.0.0.insert.insert.i.2 = or disjoint i64 %.sroa.235.0.insert.shift.i.2, %.sroa.036.0.insert.ext.i.2
  %i.gy = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.0.0.insert.insert.i.2, i32 noundef 2, i64 4294967297)
  %i.gz = sitofp <2 x i32> %i.gq to <2 x float>
  %i.ha = fsub <2 x float> %i.go, %i.gz           ; 2 uses
  %i.hb = extractelement <2 x float> %i.ha, i64 0 ; 3 uses
  %i.hc = fsub float 1.000000e+00, %i.hb          ; 2 uses
  %i.hd = extractelement <2 x float> %i.ha, i64 1 ; 3 uses
  %i.he = fsub float 1.000000e+00, %i.hd          ; 2 uses
  %i.hf = fmul float %i.hc, %i.he
  %i.hg = fmul float %i.gt, %i.hf
  %i.hh = fmul float %i.hb, %i.he
  %i.hi = fmul float %i.gv, %i.hh
  %i.hj = fadd float %i.hg, %i.hi
  %i.hk = fmul float %i.hc, %i.hd
  %i.hl = fmul float %i.gx, %i.hk
  %i.hm = fadd float %i.hl, %i.hj
  %i.hn = fmul float %i.hb, %i.hd
  %i.ho = fmul float %i.gy, %i.hn
  %i.hp = fadd float %i.ho, %i.hm                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1237
  %i.hs = fcmp ogt <2 x float> %i.gj, zeroinitializer
  %i.ht = select <2 x i1> %i.hs, <2 x float> %i.gj, <2 x float> zeroinitializer
  %i.hu = fcmp ogt float %i.hp, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.hu, float %i.hp, float 0.000000e+00
  call void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(152) %i.hr, <2 x float> %i.ht, float %.sroa.speculated.i)
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hw = load <1 x float>, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !494 ; 2 uses
  %.not.i40 = icmp eq ptr %i.hy, null
  br i1 %.not.i40, label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit, label %bb.g

bb.p:                                             ; preds = %bb.f
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 184
  %13 = load <4 x float>, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !1238
  %i.ic = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ib, ptr noundef nonnull align 4 dereferenceable(32) %8) ; 2 uses
  %i.id = extractvalue { <2 x float>, <2 x float> } %i.ic, 0
  %i.ie = extractvalue { <2 x float>, <2 x float> } %i.ic, 1
  %i.if = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ig = fmul <2 x float> %i.if, %i.id
  %i.ih = fmul <2 x float> %i.if, %i.ie
  br label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread99, %bb.b, %bb.p, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit
  %.sroa.086.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.ds, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ], [ %i.ig, %bb.p ], [ zeroinitializer, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread99 ], [ zeroinitializer, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit ]
  %.sroa.792.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.dt, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ], [ %i.ih, %bb.p ], [ zeroinitializer, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread99 ], [ zeroinitializer, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.086.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.792.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

declare noundef float @_ZN4pbrt25UniversalTextureEvaluatorclENS_12FloatTextureENS_18TextureEvalContextE(ptr noundef nonnull align 1 dereferenceable(1), ptr nofree noundef align 8 dead_on_return dereferenceable(8), ptr noundef byval(%"struct.pbrt::TextureEvalContext") align 8) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #24

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA12_KcJRKmEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !313
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 42, i64 noundef 0) #29
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 115, i64 noundef 0) #29
  %.not17 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 noundef signext 100, i64 noundef 0) #29
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.x
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %.not18 = icmp eq i64 %i.d, -1
  br i1 %.not18, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not17, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.i = load ptr, ptr %4, align 8, !tbaa !123    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !121, !alias.scope !1249
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !83, !alias.scope !1249
  store i8 0, ptr %i.j, align 8, !tbaa !122, !alias.scope !1249
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !317, !noalias !1249 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1249 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !318, !noalias !1249 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %7, align 8, !tbaa !123, !alias.scope !1249 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.aa = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.i, ptr noundef %i.aa) #29, !noalias !1250
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ae, ptr %6, align 8, !tbaa !121, !alias.scope !1250
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !83, !alias.scope !1250
  store i8 0, ptr %i.ae, align 8, !tbaa !122, !alias.scope !1250
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ad, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %6, align 8, !tbaa !123, !alias.scope !1250
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ag, i64 noundef %i.ad, ptr noundef %i.i, ptr noundef %i.aa) #29 ; 0 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !83, !alias.scope !1250
  %i.aj = add i64 %i.ai, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.aj, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #30
  unreachable

bb.k:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %6, align 8, !tbaa !123, !alias.scope !1250 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %.body27, label %.body27.sink.split

_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ap = load i64, ptr %i.af, align 8, !tbaa !83 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !83
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.ap
  br i1 %i.at, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #33
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  %i.au = load ptr, ptr %6, align 8, !tbaa !123
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.au, i64 noundef %i.ap)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.o ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aw = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ae
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ay = load i64, ptr %i.ae, align 8, !tbaa !122
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ba = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.j
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !122
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %5, align 8, !tbaa !94
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %5, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !94
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bj, ptr %i.f, align 8, !tbaa !94
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bk, align 8, !tbaa !94
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !123 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_:bb.a
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !123 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !122
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !4

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN4pbrt7Bounds2IiEEN4pstd4spanINS4_IfEEEEEZNS0_23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0E9_M_invokeERKSt9_Any_dataOS2_OS6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #23 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !138   ; 3 uses
  %.val3 = load i64, ptr %1, align 4              ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.a, align 4            ; 2 uses
  %.val5 = load ptr, ptr %2, align 8, !tbaa !1280 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.val3 to i32 ; 3 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %.val3, 32
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i to i32 ; 3 uses
  %.sroa.5.8.extract.trunc.i.i.i = trunc i64 %.val4 to i32 ; 2 uses
  %.sroa.8.8.extract.shift.i.i.i = lshr i64 %.val4, 32
  %.sroa.8.8.extract.trunc.i.i.i = trunc nuw i64 %.sroa.8.8.extract.shift.i.i.i to i32 ; 2 uses
  %.not.i.i.i.i = icmp sge i32 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.5.8.extract.trunc.i.i.i
  %i.b = tail call i32 @llvm.smax.i32(i32 %.sroa.4.0.extract.trunc.i.i.i, i32 %.sroa.8.8.extract.trunc.i.i.i)
  %.not5.i.i = icmp sge i32 %.sroa.4.0.extract.trunc.i.i.i, %.sroa.8.8.extract.trunc.i.i.i
  %.not.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0JNS0_7Bounds2IiEEN4pstd4spanINS7_IfEEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.0.0.insert.ext.i.i.i = and i64 %.val3, 4294967295
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1282
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %invariant.op.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, 4294967296
  %i.g = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN4pbrt3RGBixEi.exit.2.i.i.i ] ; 4 uses
  %.sroa.025.4.extract.trunc47.i.i.i = phi i32 [ %.sroa.4.0.extract.trunc.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.025.4.extract.trunc.i.i.i, %_ZN4pbrt3RGBixEi.exit.2.i.i.i ]
  %.sroa.025.0.extract.trunc46.i.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.025.0.extract.trunc.i.i.i, %_ZN4pbrt3RGBixEi.exit.2.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i = phi i64 [ %.val3, %.lr.ph.i.i.i ], [ %.sroa.025.1.i.i.i, %_ZN4pbrt3RGBixEi.exit.2.i.i.i ]
  %i.i = load i32, ptr %.val, align 8, !tbaa !441
  %i.j = add nsw i32 %i.i, %.sroa.025.0.extract.trunc46.i.i.i
  %i.k = load i32, ptr %i.f, align 4, !tbaa !442
  %i.l = add nsw i32 %i.k, %.sroa.025.4.extract.trunc47.i.i.i
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.l to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i17.i.i.i = zext i32 %i.j to i64
  %.sroa.0.0.insert.insert.i18.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i17.i.i.i ; 3 uses
  %i.m = load i64, ptr %i.e, align 8, !tbaa !111  ; 2 uses
  %i.n = and i64 %i.m, 144115188075855871
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = lshr i64 %i.m, 57
  %i.q = trunc nuw nsw i64 %i.p to i32
  switch i32 %i.q, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = tail call { <2 x float>, float } @_ZNK4pbrt7RGBFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(168) %i.o, i64 %.sroa.0.0.insert.insert.i18.i.i.i, float noundef 1.000000e+00)
  br label %_ZN4pbrt3RGBixEi.exit.2.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = tail call { <2 x float>, float } @_ZNK4pbrt11GBufferFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(872) %i.o, i64 %.sroa.0.0.insert.insert.i18.i.i.i, float noundef 1.000000e+00)
  br label %_ZN4pbrt3RGBixEi.exit.2.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.t = tail call { <2 x float>, float } @_ZNK4pbrt12SpectralFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(180) %i.o, i64 %.sroa.0.0.insert.insert.i18.i.i.i, float noundef 1.000000e+00)
  br label %_ZN4pbrt3RGBixEi.exit.2.i.i.i

_ZN4pbrt3RGBixEi.exit.2.i.i.i:                    ; preds = %bb.e, %bb.d, %bb.c
  %.pn.i.i.i.i.i.i = phi { <2 x float>, float } [ %i.t, %bb.e ], [ %i.r, %bb.c ], [ %i.s, %bb.d ] ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i.i.i.i, 0 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i.i.i.i, 1
  %.sroa.0.4.vec.extract.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i, i64 1
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i, i64 0
  %i.u = load ptr, ptr %.val5, align 8, !tbaa !1284
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  store float %.sroa.0.0.vec.extract.i.i.i, ptr %i.v, align 4, !tbaa !437
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !1284
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  store float %.sroa.0.4.vec.extract.i.i.i, ptr %i.x, align 4, !tbaa !437
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !1284
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i.i.i
  store float %.fca.1.extract.i.i.i, ptr %i.z, align 4, !tbaa !437
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.aa = add nsw i32 %.sroa.025.0.extract.trunc46.i.i.i, 1 ; 2 uses
  %.sroa.025.0.insert.ext.i.i.i = zext i32 %i.aa to i64
  %.sroa.025.0.insert.mask.i.i.i = and i64 %.sroa.025.044.i.i.i, -4294967296 ; 2 uses
  %.sroa.025.0.insert.insert.i.i.i = or disjoint i64 %.sroa.025.0.insert.mask.i.i.i, %.sroa.025.0.insert.ext.i.i.i
  %i.ab = icmp eq i32 %i.aa, %.sroa.5.8.extract.trunc.i.i.i
  %.sroa.025.4.insert.insert.reass.i.i.i = add i64 %invariant.op.i.i.i, %.sroa.025.0.insert.mask.i.i.i
  %.sroa.025.1.i.i.i = select i1 %i.ab, i64 %.sroa.025.4.insert.insert.reass.i.i.i, i64 %.sroa.025.0.insert.insert.i.i.i ; 3 uses
  %.sroa.025.0.extract.trunc.i.i.i = trunc i64 %.sroa.025.1.i.i.i to i32 ; 2 uses
  %.not.i.i.i.i.i = icmp ne i32 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.025.0.extract.trunc.i.i.i
  %.sroa.025.4.extract.shift.i.i.i = lshr i64 %.sroa.025.1.i.i.i, 32
  %.sroa.025.4.extract.trunc.i.i.i = trunc nuw i64 %.sroa.025.4.extract.shift.i.i.i to i32 ; 2 uses
  %i.ac = icmp ne i32 %i.b, %.sroa.025.4.extract.trunc.i.i.i
  %i.ad = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.ac
  br i1 %i.ad, label %bb.b, label %"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0JNS0_7Bounds2IiEEN4pstd4spanINS7_IfEEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0JNS0_7Bounds2IiEEN4pstd4spanINS7_IfEEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %_ZN4pbrt3RGBixEi.exit.2.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN4pbrt7Bounds2IiEEN4pstd4spanINS4_IfEEEEEZNS0_23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0", ptr %0, align 8, !tbaa !339
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !138
  store ptr %.val, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !138 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #32
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18StartDisplayThreadEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt7RGBFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, float noundef %2) local_unnamed_addr #23 comdat align 2 {
_ZN4pbrt3RGBixEi.exit.2:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !441  ; 2 uses
  %i.c = sub i32 %.sroa.0.0.extract.trunc.i, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.e = load i32, ptr %i.d, align 4, !tbaa !442
  %i.f = sub nsw i32 %.sroa.4.0.extract.trunc.i, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !446
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load i32, ptr %i.i, align 8, !tbaa !441
  %i.k = sub nsw i32 %i.j, %i.b
  %i.l = mul nsw i32 %i.k, %i.f
  %i.m = add nsw i32 %i.c, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.n ; 6 uses
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !501
  %i.q = fptrunc <2 x double> %i.p to <2 x float> ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !501
  %i.t = fptrunc double %i.s to float             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !1286
  %i.w = fptrunc double %i.v to float             ; 3 uses
  %i.x = fcmp une float %i.w, 0.000000e+00        ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.w, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fdiv <2 x float> %i.q, %i.z
  %i.ab = fdiv float %i.t, %i.w
  %.sroa.0.0 = select i1 %i.x, <2 x float> %i.aa, <2 x float> %i.q
  %.sroa.11.0 = select i1 %i.x, float %i.ab, float %i.t
  %i.ac = fpext float %2 to double                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.af = load atomic i64, ptr %i.ad seq_cst, align 8
  %3 = load <4 x float>, ptr %i.ae, align 8
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ah = load atomic i64, ptr %i.ag seq_cst, align 8
  %i.ai = load float, ptr %i.ae, align 8, !tbaa !1288
  %i.aj = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %i.ak = insertelement <2 x i64> %i.aj, i64 %i.ah, i64 1
  %i.al = bitcast <2 x i64> %i.ak to <2 x double>
  %i.am = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.an, %i.al
  %i.ap = insertelement <2 x float> %4, float %i.ai, i64 1
  %i.aq = fpext <2 x float> %i.ap to <2 x double>
  %i.ar = fdiv <2 x double> %i.ao, %i.aq
  %i.as = fpext <2 x float> %.sroa.0.0 to <2 x double>
  %i.at = fadd <2 x double> %i.ar, %i.as
  %i.au = fptrunc <2 x double> %i.at to <2 x float> ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aw = load atomic i64, ptr %i.av seq_cst, align 8
  %i.ax = load float, ptr %i.ae, align 8, !tbaa !1288
  %i.ay = bitcast i64 %i.aw to double
  %i.az = fmul double %i.ac, %i.ay
  %i.ba = fpext float %i.ax to double
  %i.bb = fdiv double %i.az, %i.ba
  %i.bc = fpext float %.sroa.11.0 to double
  %i.bd = fadd double %i.bb, %i.bc
  %i.be = fptrunc double %i.bd to float           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bh = load <4 x float>, ptr %i.bf, align 4, !tbaa !437 ; 3 uses
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bj = load <4 x float>, ptr %i.bg, align 4    ; 2 uses
  %i.bk = shufflevector <4 x float> %i.bh, <4 x float> %i.bj, <2 x i32> <i32 1, i32 4>
  %i.bl = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = shufflevector <4 x float> %i.bh, <4 x float> %i.bj, <2 x i32> <i32 2, i32 5>
  %i.bo = fmul <2 x float> %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bq = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bq, %i.bi
  %i.bs = fadd <2 x float> %i.br, zeroinitializer
  %i.bt = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x float> %i.bt, %i.bk
  %i.bv = fadd <2 x float> %i.bs, %i.bu
  %i.bw = fadd <2 x float> %i.bv, %i.bo
  %i.bx = load <2 x float>, ptr %i.bp, align 4, !tbaa !437
  %i.by = fmul <2 x float> %i.bx, %i.au           ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0
  %i.ca = fadd float %i.bz, 0.000000e+00
  %i.cb = extractelement <2 x float> %i.by, i64 1
  %i.cc = fadd float %i.cb, %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !437
  %i.cf = fmul float %i.ce, %i.be
  %i.cg = fadd float %i.cf, %i.cc
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.bw, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.cg, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt11GBufferFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(872) %0, i64 %1, float noundef %2) local_unnamed_addr #23 comdat align 2 {
_ZN4pbrt3RGBixEi.exit.2:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !441  ; 2 uses
  %i.c = sub i32 %.sroa.0.0.extract.trunc.i, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.e = load i32, ptr %i.d, align 4, !tbaa !442
  %i.f = sub nsw i32 %.sroa.4.0.extract.trunc.i, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !449
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.j = load i32, ptr %i.i, align 8, !tbaa !441
  %i.k = sub nsw i32 %i.j, %i.b
  %i.l = mul nsw i32 %i.k, %i.f
  %i.m = add nsw i32 %i.c, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [192 x i8], ptr %i.h, i64 %i.n ; 6 uses
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !501
  %i.q = fptrunc <2 x double> %i.p to <2 x float> ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !501
  %i.t = fptrunc double %i.s to float             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !1290
  %i.w = fptrunc double %i.v to float             ; 3 uses
  %i.x = fcmp une float %i.w, 0.000000e+00        ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.w, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fdiv <2 x float> %i.q, %i.z
  %i.ab = fdiv float %i.t, %i.w
  %.sroa.0.0 = select i1 %i.x, <2 x float> %i.aa, <2 x float> %i.q
  %.sroa.11.0 = select i1 %i.x, float %i.ab, float %i.t
  %i.ac = fpext float %2 to double                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.af = load atomic i64, ptr %i.ad seq_cst, align 8
  %3 = load <4 x float>, ptr %i.ae, align 8
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ah = load atomic i64, ptr %i.ag seq_cst, align 8
  %i.ai = load float, ptr %i.ae, align 8, !tbaa !1292
  %i.aj = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %i.ak = insertelement <2 x i64> %i.aj, i64 %i.ah, i64 1
  %i.al = bitcast <2 x i64> %i.ak to <2 x double>
  %i.am = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.an, %i.al
  %i.ap = insertelement <2 x float> %4, float %i.ai, i64 1
  %i.aq = fpext <2 x float> %i.ap to <2 x double>
  %i.ar = fdiv <2 x double> %i.ao, %i.aq
  %i.as = fpext <2 x float> %.sroa.0.0 to <2 x double>
  %i.at = fadd <2 x double> %i.ar, %i.as
  %i.au = fptrunc <2 x double> %i.at to <2 x float> ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.aw = load atomic i64, ptr %i.av seq_cst, align 8
  %i.ax = load float, ptr %i.ae, align 8, !tbaa !1292
  %i.ay = bitcast i64 %i.aw to double
  %i.az = fmul double %i.ac, %i.ay
  %i.ba = fpext float %i.ax to double
  %i.bb = fdiv double %i.az, %i.ba
  %i.bc = fpext float %.sroa.11.0 to double
  %i.bd = fadd double %i.bb, %i.bc
  %i.be = fptrunc double %i.bd to float           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 836
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.bh = load <4 x float>, ptr %i.bf, align 4, !tbaa !437 ; 3 uses
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bj = load <4 x float>, ptr %i.bg, align 4    ; 2 uses
  %i.bk = shufflevector <4 x float> %i.bh, <4 x float> %i.bj, <2 x i32> <i32 1, i32 4>
  %i.bl = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = shufflevector <4 x float> %i.bh, <4 x float> %i.bj, <2 x i32> <i32 2, i32 5>
  %i.bo = fmul <2 x float> %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.bq = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bq, %i.bi
  %i.bs = fadd <2 x float> %i.br, zeroinitializer
  %i.bt = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x float> %i.bt, %i.bk
  %i.bv = fadd <2 x float> %i.bs, %i.bu
  %i.bw = fadd <2 x float> %i.bv, %i.bo
  %i.bx = load <2 x float>, ptr %i.bp, align 4, !tbaa !437
  %i.by = fmul <2 x float> %i.bx, %i.au           ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0
  %i.ca = fadd float %i.bz, 0.000000e+00
  %i.cb = extractelement <2 x float> %i.by, i64 1
  %i.cc = fadd float %i.cb, %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !437
  %i.cf = fmul float %i.ce, %i.be
  %i.cg = fadd float %i.cf, %i.cc
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.bw, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.cg, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

declare { <2 x float>, float } @_ZNK4pbrt12SpectralFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(180), i64, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E9_M_invokeERKSt9_Any_dataOl"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #23 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !138   ; 4 uses
  %.val2 = load i64, ptr %1, align 8, !tbaa !178  ; 2 uses
  %i.a = trunc i64 %.val2 to i32                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1294
  %i.d = load i32, ptr %.val, align 8, !tbaa !440 ; 2 uses
  %i.e = srem i32 %i.a, %i.d
  %i.f = sdiv i32 %i.a, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = load float, ptr %i.g, align 8, !tbaa !1295 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !111  ; 2 uses
  %i.k = and i64 %i.j, 144115188075855871
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %.sroa.0.0.copyload.i.i12.pn.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i.i12.pn.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i12.pn.in.i.i.i.i.i.i, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i12.pn.i.i.i.i.i.i to i32
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i12.pn.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.m = add nsw i32 %i.e, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.n = add nsw i32 %i.f, %.sroa.2.0.extract.trunc.i.i.i.i
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.n to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.m to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i ; 3 uses
  %i.o = lshr i64 %i.j, 57
  %i.p = trunc nuw nsw i64 %i.o to i32
  switch i32 %i.p, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = tail call { <2 x float>, float } @_ZNK4pbrt7RGBFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(168) %i.l, i64 %.sroa.0.0.insert.insert.i.i.i.i, float noundef 1.000000e+00)
  br label %"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS0_7Bounds2IiEEfPNS0_3RGBEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

bb.c:                                             ; preds = %bb.a
  %i.r = tail call { <2 x float>, float } @_ZNK4pbrt11GBufferFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(872) %i.l, i64 %.sroa.0.0.insert.insert.i.i.i.i, float noundef 1.000000e+00)
  br label %"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS0_7Bounds2IiEEfPNS0_3RGBEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

bb.d:                                             ; preds = %bb.a
  %i.s = tail call { <2 x float>, float } @_ZNK4pbrt12SpectralFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(180) %i.l, i64 %.sroa.0.0.insert.insert.i.i.i.i, float noundef 1.000000e+00)
  br label %"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS0_7Bounds2IiEEfPNS0_3RGBEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS0_7Bounds2IiEEfPNS0_3RGBEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.b, %bb.c, %bb.d
  %.pn.i.i.i16.i.i.i = phi { <2 x float>, float } [ %i.s, %bb.d ], [ %i.q, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %.fca.0.extract3.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i16.i.i.i, 0
  %.fca.1.extract4.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i16.i.i.i, 1
  %i.t = insertelement <2 x float> poison, float %i.h, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %.fca.0.extract3.i.i.i
  %i.w = fmul float %i.h, %.fca.1.extract4.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1296
  %sext.i.i = shl i64 %.val2, 32
  %i.z = ashr exact i64 %sext.i.i, 32
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.y, i64 %i.z ; 2 uses
  store <2 x float> %i.v, ptr %i.aa, align 4, !tbaa !437
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store float %i.w, ptr %.sroa.413.0..sroa_idx.i.i.i, align 4, !tbaa !437
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS_7Bounds2IiEEfPNS_3RGBEE3$_0", ptr %0, align 8, !tbaa !339
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !138
  store ptr %.val, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !138 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #32
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator25UpdateFramebufferFromFilmENS1_7Bounds2IiEEfPNS1_3RGBEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_integrator.cpp() #25 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !437
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !437
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !437
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !437
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL24STATS_REGprimitiveMemoryE, ptr noundef nonnull @"_ZN4pbrt3$_28__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL28STATS_REGpathIntegratorBytesE, ptr noundef nonnull @"_ZN4pbrt3$_68__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #24
end_hunk_3
