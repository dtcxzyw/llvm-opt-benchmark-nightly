Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/aggregate?download=true
inline.NumInlined: 2847
inline.NumDeleted: 905
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@"_ZNSt17_Function_handlerIFvlEZNK4pbrt12CPUAggregate15IntersectShadowEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E9_M_invokeERKSt9_Any_dataOl":bb.a
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !100, !noalias !735
  %i.bd = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i14.i.i.i.i = load <2 x float>, ptr %i.bd, align 16, !noalias !735
  %.sroa.2.0..0..sroa_idx.i.i.i.i15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.2.0.copyload.i.i.i.i16.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i15.i.i.i.i, align 8, !tbaa !99, !noalias !735
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  store <2 x float> %.sroa.0.0.copyload.i.i.i.i14.i.i.i.i, ptr %i.be, align 4, !alias.scope !735
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 2 uses
  store <2 x float> %.sroa.2.0.copyload.i.i.i.i16.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 4, !tbaa !99, !alias.scope !735
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !100, !noalias !735
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i21.i.i.i.i = load <2 x float>, ptr %i.bh, align 16, !noalias !735
  %.sroa.2.0..0..sroa_idx.i.i.i.i22.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.2.0.copyload.i.i.i.i23.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i22.i.i.i.i, align 8, !tbaa !99, !noalias !735
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  store <2 x float> %.sroa.0.0.copyload.i.i.i.i21.i.i.i.i, ptr %i.bi, align 4, !alias.scope !735
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  store <2 x float> %.sroa.2.0.copyload.i.i.i.i23.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !tbaa !99, !alias.scope !735
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !208, !noalias !735
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.h
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !76, !noalias !735
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !740, !alias.scope !735
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = call noundef zeroext i1 @_ZNK4pbrt9Primitive10IntersectPERKNS_3RayEf(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %i.ap)
  br i1 %i.bp, label %"_ZSt10__invoke_rIvRZNK4pbrt12CPUAggregate15IntersectShadowEiPNS0_9WorkQueueINS0_17ShadowRayWorkItemEEEPNS0_3SOAINS0_16PixelSampleStateEEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !741
  %.sroa.12.40.copyload.i.i.i = load i32, ptr %i.bn, align 4
  %.sroa.7.40.copyload.i.i.i = load <2 x float>, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 4
  %.sroa.6.40.copyload.i.i.i = load <2 x float>, ptr %i.be, align 4
  %.sroa.5.40.copyload.i.i.i = load <2 x float>, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 4
  %.sroa.4.40.copyload.i.i.i = load <2 x float>, ptr %i.ba, align 4
  %i.bs = load <2 x float>, ptr %i.bi, align 4
  %i.bt = fadd <2 x float> %i.bs, %.sroa.6.40.copyload.i.i.i ; 2 uses
  %i.bu = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4
  %i.bv = fadd <2 x float> %i.bu, %.sroa.7.40.copyload.i.i.i ; 2 uses
  %shift = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bt, %shift
  %foldExtExtBinop4 = fadd <2 x float> %i.bv, %foldExtExtBinop
  %shift6 = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop7 = fadd <2 x float> %shift6, %foldExtExtBinop4
  %i.bw = extractelement <2 x float> %foldExtExtBinop7, i64 0
  %i.bx = fmul float %i.bw, 2.500000e-01
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !100
  %i.ca = sext i32 %.sroa.12.40.copyload.i.i.i to i64
  %i.cb = getelementptr inbounds [16 x i8], ptr %i.bz, i64 %i.ca ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i2.i.i.i = load <2 x float>, ptr %i.cb, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i3.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i4.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i3.i.i.i, align 8, !tbaa !99
  %i.cc = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ce = fdiv <2 x float> %.sroa.4.40.copyload.i.i.i, %i.cd
  %i.cf = fadd <2 x float> %.sroa.0.0.copyload.i.i.i.i.i2.i.i.i, %i.ce
  %i.cg = fdiv <2 x float> %.sroa.5.40.copyload.i.i.i, %i.cd
  %i.ch = fadd <2 x float> %.sroa.2.0.copyload.i.i.i.i.i4.i.i.i, %i.cg
  store <2 x float> %i.cf, ptr %i.cb, align 16
  store <2 x float> %i.ch, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i3.i.i.i, align 8, !tbaa !99
  br label %"_ZSt10__invoke_rIvRZNK4pbrt12CPUAggregate15IntersectShadowEiPNS0_9WorkQueueINS0_17ShadowRayWorkItemEEEPNS0_3SOAINS0_16PixelSampleStateEEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

"_ZSt10__invoke_rIvRZNK4pbrt12CPUAggregate15IntersectShadowEiPNS0_9WorkQueueINS0_17ShadowRayWorkItemEEEPNS0_3SOAINS0_16PixelSampleStateEEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZNK4pbrt12CPUAggregate15IntersectShadowEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate15IntersectShadowEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK4pbrt12CPUAggregate15IntersectShadowEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEE3$_0", ptr %0, align 8, !tbaa !48
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate15IntersectShadowEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !28
  store ptr %.val, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate15IntersectShadowEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !742
  store ptr %i.a, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate15IntersectShadowEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !28 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate15IntersectShadowEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate15IntersectShadowEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate15IntersectShadowEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4pbrt9Primitive10IntersectPERKNS_3RayEf(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(40), float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E9_M_invokeERKSt9_Any_dataOl"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %2 = alloca %class.anon.220, align 8            ; 9 uses
  %3 = alloca %class.anon.219, align 8            ; 7 uses
  %4 = alloca %"class.pstd::optional", align 8    ; 11 uses
  %5 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 7 uses
  %6 = alloca %"class.pbrt::RNG", align 8         ; 8 uses
  %7 = alloca %"class.pbrt::SampledSpectrum", align 16 ; 10 uses
  %8 = alloca %"class.pbrt::SampledSpectrum", align 16 ; 9 uses
  %9 = alloca %"class.pbrt::SampledSpectrum", align 16 ; 7 uses
  %10 = alloca %"class.pbrt::Ray", align 8        ; 9 uses
  %11 = alloca %"class.pbrt::Ray", align 8        ; 9 uses
  %12 = alloca %"class.pstd::optional", align 8   ; 20 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !28    ; 3 uses
  %.val2 = load i64, ptr %1, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !762
  %i.e = load ptr, ptr %.val, align 8, !tbaa !763 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51, !noalias !764
  %sext.i.i = shl i64 %.val2, 32
  %i.h = ashr exact i64 %sext.i.i, 32             ; 15 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load float, ptr %i.i, align 4, !tbaa !53, !noalias !764
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.j, i64 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54, !noalias !764
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.h
  %i.n = load float, ptr %i.m, align 4, !tbaa !53, !noalias !764
  %.sroa.0.4.vec.insert.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i.i.i, float %i.n, i64 1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !55, !noalias !764
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.h
  %i.r = load float, ptr %i.q, align 4, !tbaa !53, !noalias !764 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57, !noalias !764
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.h
  %i.v = load float, ptr %i.u, align 4, !tbaa !53, !noalias !764 ; 2 uses
  %.sroa.0.0.vec.insert.i12.i.i.i.i.i = insertelement <2 x float> poison, float %i.v, i64 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58, !noalias !764
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.h
  %i.z = load float, ptr %i.y, align 4, !tbaa !53, !noalias !764 ; 2 uses
  %.sroa.0.4.vec.insert.i13.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i12.i.i.i.i.i, float %i.z, i64 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !59, !noalias !764
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.h
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !53, !noalias !764 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62, !noalias !764
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.h
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !53, !noalias !764
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !63, !noalias !764
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.h
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !65, !noalias !764
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !207, !noalias !765
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.h
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !53, !noalias !765 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !97, !noalias !766
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !98, !noalias !766
  %i.au = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load <2 x float>, ptr %i.au, align 16, !noalias !766
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !99, !noalias !766
  %i.av = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i16.i.i.i.i.i.i.i = load <2 x float>, ptr %i.av, align 16, !noalias !766
  %.sroa.2.0..0..sroa_idx.i17.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.2.0.copyload.i18.i.i.i.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i17.i.i.i.i.i.i.i, align 8, !tbaa !99, !noalias !766
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !100, !noalias !765
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i9.i.i.i.i = load <2 x float>, ptr %i.ay, align 16, !noalias !765
  %.sroa.2.0..0..sroa_idx.i.i.i.i10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.2.0.copyload.i.i.i.i11.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i10.i.i.i.i, align 8, !tbaa !99, !noalias !765
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !100, !noalias !765
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i14.i.i.i.i = load <2 x float>, ptr %i.bb, align 16, !noalias !765 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i.i15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.2.0.copyload.i.i.i.i16.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i15.i.i.i.i, align 8, !tbaa !99, !noalias !765
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !100, !noalias !765
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i21.i.i.i.i = load <2 x float>, ptr %i.be, align 16, !noalias !765
  %.sroa.2.0..0..sroa_idx.i.i.i.i22.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.2.0.copyload.i.i.i.i23.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i22.i.i.i.i, align 8, !tbaa !99, !noalias !765
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !208, !noalias !765
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.h
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !76, !noalias !765
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 256 ; 3 uses
  store i8 0, ptr %i.bj, align 8, !tbaa !114
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !767
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store <2 x float> %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %5, align 8
  %.sroa.11.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.11.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !99
  %.sroa.11.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x float> %.sroa.0.0.copyload.i16.i.i.i.i.i.i.i, ptr %.sroa.11.sroa.3.0..sroa_idx.i.i.i, align 8
  %.sroa.11.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store <2 x float> %.sroa.2.0.copyload.i18.i.i.i.i.i.i.i, ptr %.sroa.11.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !99
  %i.bm = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %.sroa.0.4.vec.insert.i13.i.i.i.i.i, %i.bn
  %i.bp = fmul float %i.ad, %i.ap
  %i.bq = fadd <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i.i, %i.bo
  %i.br = fadd float %i.r, %i.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bs = bitcast float %i.r to i32
  %i.bt = bitcast <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i.i to i64
  %i.bu = mul i64 %i.bt, -4132994306676758123     ; 2 uses
  %i.bv = lshr i64 %i.bu, 47
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = mul i64 %i.bw, -4132994306676758123
  %i.by = xor i64 %i.bx, 5744300541007557372
  %i.bz = mul i64 %i.by, -4132994306676758123
  %i.ca = zext i32 %i.bs to i64
  %i.cb = xor i64 %i.bz, %i.ca
  %i.cc = mul i64 %i.cb, -4132994306676758123     ; 2 uses
  %i.cd = lshr i64 %i.cc, 47
  %i.ce = xor i64 %i.cd, %i.cc
  %i.cf = mul i64 %i.ce, -4132994306676758123     ; 2 uses
  %i.cg = lshr i64 %i.cf, 47
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = bitcast float %i.ad to i32
  %i.cj = bitcast <2 x float> %.sroa.0.4.vec.insert.i13.i.i.i.i.i to i64
  %i.ck = mul i64 %i.cj, -4132994306676758123     ; 2 uses
  %i.cl = lshr i64 %i.ck, 47
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = mul i64 %i.cm, -4132994306676758123
  %i.co = xor i64 %i.cn, 5744300541007557372
  %i.cp = mul i64 %i.co, -4132994306676758123
  %i.cq = zext i32 %i.ci to i64
  %i.cr = xor i64 %i.cp, %i.cq
  %i.cs = mul i64 %i.cr, -4132994306676758123     ; 2 uses
  %i.ct = lshr i64 %i.cs, 47
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = mul i64 %i.cu, -4132994306676758123     ; 2 uses
  %i.cw = lshr i64 %i.cv, 47
  %i.cx = xor i64 %i.cw, %i.cv
  %i.cy = shl i64 %i.ch, 1
  %i.cz = or disjoint i64 %i.cy, 1                ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !210
  %i.db = add i64 %i.cx, %i.cz
  %i.dc = mul i64 %i.db, 6364136223846793005
  %i.dd = add i64 %i.dc, %i.cz
  store i64 %i.dd, ptr %6, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <4 x float> splat (float 1.000000e+00), ptr %7, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <4 x float> splat (float 1.000000e+00), ptr %8, align 16, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store <4 x float> splat (float 1.000000e+00), ptr %9, align 16, !tbaa !53
  %i.dh = fcmp une float %i.v, 0.000000e+00
  %i.di = fcmp une float %i.z, 0.000000e+00
  %or.cond.i261.i.i.i.i = select i1 %i.dh, i1 true, i1 %i.di
  %i.dj = fcmp une float %i.ad, 0.000000e+00
  %or.cond262.i.i.i.i = select i1 %or.cond.i261.i.i.i.i, i1 true, i1 %i.dj
  br i1 %or.cond262.i.i.i.i, label %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i, label %.thread249.thread.i.i.i.i

_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i: ; preds = %bb.a
  %.sroa.10192.0..sroa_idx193.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.14.0..sroa_idx197.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  %.sroa.21.0..sroa_idx207.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 20
  %.sroa.26.0..sroa_idx213.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 192
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 208
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 248
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 248
  %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %.sroa.10192.0..sroa_idx195.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.14.0..sroa_idx199.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.21.0..sroa_idx209.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  %.sroa.26.0..sroa_idx215.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.4164.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 40
  %.sroa.210.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.i.i.i.i

_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.i.i.i.i: ; preds = %bb.f, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i
  %.sroa.0.0.copyload.i.i25.i.i.i = phi float [ undef, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.f ]
  %i.eg = phi i1 [ false, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ true, %bb.f ]
  %.sroa.27217.0268.i.i.i.i = phi i64 [ %i.al, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i, %bb.f ] ; 5 uses
  %.sroa.26.0267.i.i.i.i = phi float [ %i.ah, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %i.gv, %bb.f ] ; 2 uses
  %.sroa.21.0266.i.i.i.i = phi float [ %i.ad, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %i.he, %bb.f ] ; 4 uses
  %.sroa.10192.0264.i.i.i.i = phi float [ %i.r, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %.fca.1.extract.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.0187.0263.i.i.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i.i.i.i.i, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %.fca.0.extract.i.i.i.i.i.i.i.i, %bb.f ] ; 4 uses
  %i.eh = phi <2 x float> [ %.sroa.0.4.vec.insert.i13.i.i.i.i.i, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.lr.ph.i.i.i.i ], [ %i.hd, %bb.f ] ; 4 uses
  store <2 x float> %.sroa.0187.0263.i.i.i.i, ptr %10, align 8
  store float %.sroa.10192.0264.i.i.i.i, ptr %.sroa.10192.0..sroa_idx193.i.i.i.i, align 8
  store <2 x float> %i.eh, ptr %.sroa.14.0..sroa_idx197.i.i.i.i, align 4
  store float %.sroa.21.0266.i.i.i.i, ptr %.sroa.21.0..sroa_idx207.i.i.i.i, align 4
  store float %.sroa.26.0267.i.i.i.i, ptr %.sroa.26.0..sroa_idx213.i.i.i.i, align 8
  store i64 %.sroa.27217.0268.i.i.i.i, ptr %i.dk, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !768
  call void @_ZNK4pbrt9Primitive9IntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull align 8 dereferenceable(40) %10, float noundef %i.ap)
  br i1 %i.eg, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5valueEv.exit.i.i.i.i.i.i.i, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5resetEv.exit.i.i.i.i.i.i

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5valueEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.i.i.i.i
  store i8 0, ptr %i.bj, align 8, !tbaa !114, !noalias !768
  br label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5resetEv.exit.i.i.i.i.i.i

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5resetEv.exit.i.i.i.i.i.i: ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5valueEv.exit.i.i.i.i.i.i.i, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.i.i.i.i
  %i.ei = load i8, ptr %i.dm, align 8, !tbaa !114, !range !115, !noalias !768, !noundef !44
  %i.ej = trunc nuw i8 %i.ei to i1                ; 2 uses
  br i1 %i.ej, label %bb.b, label %.thread.i.i.i.i

bb.b:                                             ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5resetEv.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(257) %12, ptr noundef nonnull align 8 dereferenceable(257) %4, i64 72, i1 false), !noalias !768
  %i.ek = load i64, ptr %i.do, align 8, !tbaa !65, !noalias !768
  store i64 %i.ek, ptr %i.dn, align 8, !tbaa !65, !noalias !768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dp, ptr noundef nonnull align 8 dereferenceable(112) %i.dq, i64 112, i1 false), !noalias !768
  %i.el = load <2 x i64>, ptr %i.ds, align 8, !tbaa !43, !noalias !768
  %i.em = load i64, ptr %i.ds, align 8, !tbaa !147, !noalias !768
  store <2 x i64> %i.el, ptr %i.dr, align 8, !tbaa !43, !noalias !768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dt, ptr noundef nonnull align 8 dereferenceable(40) %i.du, i64 40, i1 false), !noalias !768
  %i.en = load float, ptr %i.dw, align 8, !tbaa !127, !noalias !768
  store float %i.en, ptr %i.dv, align 8, !tbaa !127, !noalias !768
  store i8 1, ptr %i.bj, align 8, !tbaa !114, !noalias !768
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !768
  %.sroa.0.sroa.0.0.copyload.i.i.i.i.i.i = load float, ptr %12, align 8, !noalias !768 ; 3 uses
  %.sroa.0.sroa.3.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !768
  %.sroa.0.sroa.4.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !768
  %.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !768
  %i.eo = fadd float %.sroa.0.sroa.3.0.copyload.i.i.i.i.i.i, %.sroa.0.sroa.4.0.copyload.i.i.i.i.i.i
  %i.ep = fmul float %i.eo, 5.000000e-01
  %i.eq = load <4 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !768
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.es = insertelement <2 x float> poison, float %.sroa.0.sroa.0.0.copyload.i.i.i.i.i.i, i64 0
  %i.et = insertelement <2 x float> %i.es, float %.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i, i64 1
  %i.eu = fadd <2 x float> %i.er, %i.et
  %i.ev = fmul <2 x float> %i.eu, splat (float 5.000000e-01)
  %i.ew = and i64 %i.em, 144115188075855871
  %.not257.i.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not257.i.i.i.i, label %bb.c, label %"_ZSt10__invoke_rIvRZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS0_9WorkQueueINS0_17ShadowRayWorkItemEEEPNS0_3SOAINS0_16PixelSampleStateEEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

bb.c:                                             ; preds = %bb.b
  %i.ex = and i64 %.sroa.27217.0268.i.i.i.i, 144115188075855871
  %.not258.i.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not258.i.i.i.i, label %..thread247_crit_edge.i.i.i.i, label %bb.d

..thread247_crit_edge.i.i.i.i:                    ; preds = %bb.c
  %i.ey = load <4 x float>, ptr %7, align 16
  br label %.thread247.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEE5resetEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !768
  %i.ez = and i64 %.sroa.27217.0268.i.i.i.i, 144115188075855871
  %.not.i.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i.i, label %.thread249.i.i.i.i, label %.thread244.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %.sroa.0.4.vec.extract.i.i.i.i.i = extractelement <2 x float> %.sroa.0187.0263.i.i.i.i, i64 1
  %i.fa = fsub float %.sroa.0.4.vec.extract.i.i.i.i.i, %i.ep ; 2 uses
  %i.fb = fmul float %i.fa, %i.fa
  %i.fc = insertelement <2 x float> %.sroa.0187.0263.i.i.i.i, float %.sroa.10192.0264.i.i.i.i, i64 1
  %i.fd = fsub <2 x float> %i.fc, %i.ev           ; 2 uses
  %i.fe = fmul <2 x float> %i.fd, %i.fd           ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0
  %i.fg = fadd float %i.ff, %i.fb
  %i.fh = extractelement <2 x float> %i.fe, i64 1
  %i.fi = fadd float %i.fg, %i.fh
  %sqrt.i.i.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.fi)
  %i.fj = fmul <2 x float> %i.eh, %i.eh           ; 2 uses
  %shift = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.fj
  %i.fk = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fl = fmul float %.sroa.21.0266.i.i.i.i, %.sroa.21.0266.i.i.i.i
  %i.fm = fadd float %i.fk, %i.fl
  %sqrt.i.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.fm)
  %i.fn = fdiv float %sqrt.i.i.i.i.i.i, %sqrt.i.i.i.i.i
  br label %.thread244.i.i.i.i

.thread244.i.i.i.i:                               ; preds = %bb.d, %.thread.i.i.i.i
  %.sroa.0.0.copyload.i.i24.i.i.i = phi float [ %.sroa.0.sroa.0.0.copyload.i.i.i.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i25.i.i.i, %.thread.i.i.i.i ]
  %i.fo = phi float [ %i.fn, %bb.d ], [ %i.ap, %.thread.i.i.i.i ]
  store <2 x float> %.sroa.0187.0263.i.i.i.i, ptr %11, align 8
  store float %.sroa.10192.0264.i.i.i.i, ptr %.sroa.10192.0..sroa_idx195.i.i.i.i, align 8
  store <2 x float> %i.eh, ptr %.sroa.14.0..sroa_idx199.i.i.i.i, align 4
  store float %.sroa.21.0266.i.i.i.i, ptr %.sroa.21.0..sroa_idx209.i.i.i.i, align 4
  store float %.sroa.26.0267.i.i.i.i, ptr %.sroa.26.0..sroa_idx215.i.i.i.i, align 8
  store i64 %.sroa.27217.0268.i.i.i.i, ptr %i.dx, align 8, !tbaa !65
  %i.fp = load i64, ptr %6, align 8, !tbaa !211   ; 4 uses
  %i.fq = mul i64 %i.fp, 6364136223846793005
  %i.fr = load i64, ptr %i.da, align 8, !tbaa !210
  %i.fs = add i64 %i.fq, %i.fr
  store i64 %i.fs, ptr %6, align 8, !tbaa !211
  %i.ft = lshr i64 %i.fp, 45
  %i.fu = lshr i64 %i.fp, 27
  %i.fv = xor i64 %i.ft, %i.fu
  %i.fw = trunc i64 %i.fv to i32                  ; 2 uses
  %i.fx = lshr i64 %i.fp, 59
  %i.fy = trunc nuw nsw i64 %i.fx to i32
  %i.fz = call noundef i32 @llvm.fshr.i32(i32 %i.fw, i32 %i.fw, i32 %i.fy)
  %i.ga = uitofp i32 %i.fz to float
  %i.gb = fmul nnan float %i.ga, f0x2F800000      ; 2 uses
  %i.gc = fcmp olt float %i.gb, f0x3F7FFFFF
  %.sroa.speculated.i.i.i.i.i = select i1 %i.gc, float %i.gb, float f0x3F7FFFFF
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %7, ptr %3, align 8
  store ptr %9, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  store ptr %8, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8
  store ptr %6, ptr %.sroa.4164.0..sroa_idx.i.i.i.i, align 8
  store float %i.fo, ptr %i.a, align 4, !tbaa !53
  store float %.sroa.speculated.i.i.i.i.i, ptr %i.b, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %11, ptr %2, align 8, !tbaa !769
  store ptr %i.a, ptr %i.dy, align 8, !tbaa !770
  store ptr %i.b, ptr %i.dz, align 8, !tbaa !770
  store ptr %6, ptr %i.ea, align 8, !tbaa !214
  store ptr %5, ptr %i.eb, align 8, !tbaa !771
  store ptr %3, ptr %i.ec, align 8, !tbaa !28
  %i.gd = lshr i64 %.sroa.27217.0268.i.i.i.i, 57
  %i.ge = trunc nuw nsw i64 %i.gd to i32
  %i.gf = add nsw i32 %i.ge, -1
  %i.gg = call fastcc { <2 x float>, <2 x float> } @"_ZN4pbrt6detail8DispatchIRZNS_11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS4_17IntersectShadowTrEiS8_SC_ENKSD_clEiEUlNS_6Point3IfEEE_EEvS6_SC_T_T0_EUlSH_NS_16MediumPropertiesENS_15SampledSpectrumESM_E_EESM_SE_ffRNS_3RNGERKNS_18SampledWavelengthsESJ_EUlSJ_E_SM_NS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEESK_OSJ_Pvi"(ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i32 noundef %i.gf) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gh = extractvalue { <2 x float>, <2 x float> } %i.gg, 0 ; 2 uses
  %i.gi = extractvalue { <2 x float>, <2 x float> } %i.gg, 1
  %i.gj = shufflevector <2 x float> %i.gh, <2 x float> %i.gi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gk = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gl = fdiv <4 x float> %i.gj, %i.gk           ; 3 uses
  %i.gm = load <4 x float>, ptr %7, align 16, !tbaa !53
  %i.gn = fmul <4 x float> %i.gl, %i.gm           ; 2 uses
  store <4 x float> %i.gn, ptr %7, align 16, !tbaa !53
  %i.go = load <4 x float>, ptr %9, align 16, !tbaa !53
  %i.gp = fmul <4 x float> %i.gl, %i.go
  store <4 x float> %i.gp, ptr %9, align 16, !tbaa !53
  %i.gq = load <4 x float>, ptr %8, align 16, !tbaa !53
  %i.gr = fmul <4 x float> %i.gl, %i.gq
  store <4 x float> %i.gr, ptr %8, align 16, !tbaa !53
  br i1 %i.ej, label %.thread247.i.i.i.i, label %.thread249.i.i.i.i

.thread247.i.i.i.i:                               ; preds = %.thread244.i.i.i.i, %..thread247_crit_edge.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i = phi float [ %.sroa.0.sroa.0.0.copyload.i.i.i.i.i.i, %..thread247_crit_edge.i.i.i.i ], [ %.sroa.0.0.copyload.i.i24.i.i.i, %.thread244.i.i.i.i ] ; 2 uses
  %i.gs = phi <4 x float> [ %i.ey, %..thread247_crit_edge.i.i.i.i ], [ %i.gn, %.thread244.i.i.i.i ]
  %.fr = freeze <4 x float> %i.gs
  %i.gt = fcmp une <4 x float> %.fr, zeroinitializer
  %i.gu = bitcast <4 x i1> %i.gt to i4
  %.not = icmp eq i4 %i.gu, 0
  br i1 %.not, label %.thread249.i.i.i.i, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i.i.i.i.i

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i.i.i.i.i: ; preds = %.thread247.i.i.i.i
  %.sroa.6.0.copyload.i.i.i.i.i = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !772
  %.sroa.7.0.copyload.i.i.i.i.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !772
  %.sroa.8.0.copyload.i64.i.i.i.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !772
  %.sroa.09.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %i.ed, align 8, !noalias !772 ; 3 uses
  %.sroa.210.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !772 ; 3 uses
  %i.gv = load float, ptr %i.ee, align 8, !tbaa !151, !noalias !772
  %i.gw = fadd float %.sroa.7.0.copyload.i.i.i.i.i, %.sroa.8.0.copyload.i64.i.i.i.i
  %i.gx = fmul float %i.gw, 5.000000e-01
  %i.gy = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !772
  %i.gz = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i.i.i.i.i, i64 0
  %i.ha = insertelement <2 x float> %i.gz, float %.sroa.6.0.copyload.i.i.i.i.i, i64 1
  %i.hb = fadd <2 x float> %i.ha, %i.gy
  %i.hc = fmul <2 x float> %i.hb, splat (float 5.000000e-01)
  %i.hd = fsub <2 x float> %i.bq, %i.hc           ; 5 uses
  %i.he = fsub float %i.br, %i.gx                 ; 5 uses
  %i.hf = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %12, <2 x float> %.sroa.09.0.copyload.i.i.i.i.i.i, float %.sroa.210.0.copyload.i.i.i.i.i.i, <2 x float> %i.hd, float %i.he) ; 2 uses
  %.fca.0.extract.i.i.i.i.i.i.i.i = extractvalue { <2 x float>, float } %i.hf, 0
  %.fca.1.extract.i.i.i.i.i.i.i.i = extractvalue { <2 x float>, float } %i.hf, 1
  %i.hg = load ptr, ptr %i.ef, align 8, !tbaa !138, !noalias !773 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i.i.i.i.i
  %.sroa.01.0.vec.extract.i.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.09.0.copyload.i.i.i.i.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.09.0.copyload.i.i.i.i.i.i, i64 1
  %i.hh = fmul float %.sroa.210.0.copyload.i.i.i.i.i.i, %i.he ; 2 uses
  %i.hi = extractelement <2 x float> %i.hd, i64 1
  %i.hj = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i.i.i.i.i.i, float %i.hi, float %i.hh)
  %i.hk = fneg float %i.hh
  %i.hl = call noundef float @llvm.fma.f32(float %.sroa.210.0.copyload.i.i.i.i.i.i, float %i.he, float %i.hk)
  %i.hm = fadd float %i.hj, %i.hl
  %i.hn = extractelement <2 x float> %i.hd, i64 0
  %i.ho = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i.i.i.i.i.i, float %i.hn, float %i.hm)
  %i.hp = fcmp ogt float %i.ho, 0.000000e+00
  %spec.select.idx.i.i.i.i.i.i.i = select i1 %i.hp, i64 8, i64 0
  %spec.select.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 %spec.select.idx.i.i.i.i.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i.i.i.i.i
  %storemerge.in.i.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i, %bb.e ], [ %i.dn, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i.i.i.i.i ]
  %storemerge.i.i.i.i.i.i.i = load i64, ptr %storemerge.in.i.i.i.i.i.i.i, align 8, !tbaa !65, !noalias !773
  %i.hq = fcmp une <2 x float> %i.hd, zeroinitializer ; 2 uses
  %i.hr = extractelement <2 x i1> %i.hq, i64 0
  %i.hs = extractelement <2 x i1> %i.hq, i64 1
  %or.cond.i.i.i.i.i = select i1 %i.hr, i1 true, i1 %i.hs
  %i.ht = fcmp une float %i.he, 0.000000e+00
  %or.cond.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 true, i1 %i.ht
  br i1 %or.cond.i.i.i.i, label %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread.i.i.i.i, label %.thread249.i.i.i.i

.thread249.i.i.i.i:                               ; preds = %bb.f, %.thread247.i.i.i.i, %.thread244.i.i.i.i, %.thread.i.i.i.i
  %i.hu = load <4 x float>, ptr %7, align 16
  %.fr4 = freeze <4 x float> %i.hu
  %i.hv = fcmp une <4 x float> %.fr4, zeroinitializer
  %i.hw = bitcast <4 x i1> %i.hv to i4
  %.not5 = icmp eq i4 %i.hw, 0
  br i1 %.not5, label %"_ZSt10__invoke_rIvRZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS0_9WorkQueueINS0_17ShadowRayWorkItemEEEPNS0_3SOAINS0_16PixelSampleStateEEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit", label %.thread249.i..thread249.thread.i_crit_edge.i.i.i

.thread249.i..thread249.thread.i_crit_edge.i.i.i: ; preds = %.thread249.i.i.i.i
  %.pre.i.i.i = load float, ptr %8, align 16, !tbaa !53
  %.pre26.i.i.i = load float, ptr %i.df, align 4, !tbaa !53
  %i.hx = load <2 x float>, ptr %i.dg, align 8, !tbaa !53
  %i.hy = load <4 x float>, ptr %9, align 16, !tbaa !53
  %i.hz = shufflevector <2 x float> %i.hx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %.thread249.thread.i.i.i.i

.thread249.thread.i.i.i.i:                        ; preds = %.thread249.i..thread249.thread.i_crit_edge.i.i.i, %bb.a
  %i.ia = phi float [ %.pre26.i.i.i, %.thread249.i..thread249.thread.i_crit_edge.i.i.i ], [ 1.000000e+00, %bb.a ]
  %i.ib = phi float [ %.pre.i.i.i, %.thread249.i..thread249.thread.i_crit_edge.i.i.i ], [ 1.000000e+00, %bb.a ]
  %i.ic = phi <4 x float> [ %i.hy, %.thread249.i..thread249.thread.i_crit_edge.i.i.i ], [ splat (float 1.000000e+00), %bb.a ]
  %i.id = phi <4 x float> [ %i.hz, %.thread249.i..thread249.thread.i_crit_edge.i.i.i ], [ <float 1.000000e+00, float 1.000000e+00, float undef, float undef>, %bb.a ]
  %.sroa.0.0.vec.extract.i71.i.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i.i.i14.i.i.i.i, i64 0
  %i.ie = fmul float %.sroa.0.0.vec.extract.i71.i.i.i.i, %i.ib
  %i.if = shufflevector <2 x float> %.sroa.0.0.copyload.i.i.i.i14.i.i.i.i, <2 x float> %.sroa.2.0.copyload.i.i.i.i16.i.i.i.i, <4 x i32> <i32 poison, i32 1, i32 2, i32 3>
  %i.ig = insertelement <4 x float> %i.if, float -0.000000e+00, i64 0
  %i.ih = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ia, i64 1
  %i.ii = shufflevector <4 x float> %i.ih, <4 x float> %i.id, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %13 = fmul <4 x float> %i.ig, %i.ii
  %14 = shufflevector <2 x float> %.sroa.0.0.copyload.i.i.i.i21.i.i.i.i, <2 x float> %.sroa.2.0.copyload.i.i.i.i23.i.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ij = fmul <4 x float> %14, %i.ic
  %i.ik = fadd <4 x float> %i.ij, %13
  %i.il = call float @llvm.vector.reduce.fadd.v4f32(float %i.ie, <4 x float> %i.ik)
  %i.im = fmul float %i.il, 2.500000e-01
  %.sroa.0.0.copyload4.i107.i.i.i.i = load <2 x float>, ptr %7, align 16
  %.sroa.8.0.copyload.i109.i.i.i.i = load <2 x float>, ptr %i.de, align 8, !tbaa !99
  %i.in = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !100
  %i.ip = sext i32 %i.bi to i64
  %i.iq = getelementptr inbounds [16 x i8], ptr %i.io, i64 %i.ip ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i4.i.i.i = load <2 x float>, ptr %i.iq, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i6.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i5.i.i.i, align 8, !tbaa !99
  %i.ir = insertelement <2 x float> poison, float %i.im, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.it = fdiv <2 x float> %.sroa.0.0.copyload4.i107.i.i.i.i, %i.is
  %i.iu = fmul <2 x float> %.sroa.0.0.copyload.i.i.i.i9.i.i.i.i, %i.it
  %i.iv = fadd <2 x float> %.sroa.0.0.copyload.i.i.i.i.i4.i.i.i, %i.iu
  %i.iw = fdiv <2 x float> %.sroa.8.0.copyload.i109.i.i.i.i, %i.is
  %i.ix = fmul <2 x float> %.sroa.2.0.copyload.i.i.i.i11.i.i.i.i, %i.iw
  %i.iy = fadd <2 x float> %.sroa.2.0.copyload.i.i.i.i.i6.i.i.i, %i.ix
  store <2 x float> %i.iv, ptr %i.iq, align 16
  store <2 x float> %i.iy, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i5.i.i.i, align 8, !tbaa !99
  br label %"_ZSt10__invoke_rIvRZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS0_9WorkQueueINS0_17ShadowRayWorkItemEEEPNS0_3SOAINS0_16PixelSampleStateEEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

"_ZSt10__invoke_rIvRZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS0_9WorkQueueINS0_17ShadowRayWorkItemEEEPNS0_3SOAINS0_16PixelSampleStateEEEE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %bb.b, %.thread249.i.i.i.i, %.thread249.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEE3$_0", ptr %0, align 8, !tbaa !48
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !28
  store ptr %.val, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !774
  store ptr %i.a, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !28 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4pbrt12CPUAggregate17IntersectShadowTrEiPNS1_9WorkQueueINS1_17ShadowRayWorkItemEEEPNS1_3SOAINS1_16PixelSampleStateEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal fastcc { <2 x float>, <2 x float> } @"_ZN4pbrt6detail8DispatchIRZNS_11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS4_17IntersectShadowTrEiS8_SC_ENKSD_clEiEUlNS_6Point3IfEEE_EEvS6_SC_T_T0_EUlSH_NS_16MediumPropertiesENS_15SampledSpectrumESM_E_EESM_SE_ffRNS_3RNGERKNS_18SampledWavelengthsESJ_EUlSJ_E_SM_NS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEESK_OSJ_Pvi"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.nanovdb::Coord", align 8    ; 14 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.pbrt::DDAMajorantIterator", align 8 ; 5 uses
  %4 = alloca %"class.pbrt::Ray", align 8         ; 9 uses
  %5 = alloca %"class.pstd::optional.221", align 4 ; 12 uses
  %6 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.pbrt::HomogeneousMajorantIterator", align 4 ; 8 uses
  %8 = alloca %"class.pbrt::Ray", align 8         ; 9 uses
  %9 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %.sroa.017.i.i.i = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %10 = alloca %class.anon.237, align 8           ; 4 uses
  %11 = alloca %class.anon.242, align 8           ; 4 uses
  %12 = alloca %"class.pbrt::DDAMajorantIterator", align 8 ; 5 uses
  %13 = alloca %"class.pbrt::Ray", align 8        ; 9 uses
  %14 = alloca %"class.pstd::optional.221", align 4 ; 12 uses
  %15 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %16 = alloca %"class.pbrt::DDAMajorantIterator", align 8 ; 5 uses
  %17 = alloca %"class.pbrt::Ray", align 8        ; 9 uses
  %18 = alloca %"class.pstd::optional.221", align 4 ; 12 uses
  %19 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %20 = alloca %"struct.pbrt::MediumProperties", align 16 ; 5 uses
  %21 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !786, !nonnull !44, !align !45 ; 27 uses
  switch i32 %1, label %bb.ds [
    i32 0, label %bb.b
    i32 1, label %bb.al
    i32 2, label %bb.bm
    i32 3, label %bb.cs
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.1.0.copyload.i = load <2 x float>, ptr %.sroa.1.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !787, !nonnull !44, !align !182
  %i.l = load float, ptr %i.k, align 4, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !788, !nonnull !44, !align !182
  %i.o = load float, ptr %i.n, align 4, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !789, !nonnull !44, !align !45 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !790, !nonnull !44, !align !182 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !791, !nonnull !44, !align !45 ; 4 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !793 ; 6 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !793 ; 4 uses
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.36.0.copyload.i = load ptr, ptr %.sroa.36.0..sroa_idx.i, align 8, !tbaa !793 ; 2 uses
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.47.0.copyload.i = load ptr, ptr %.sroa.47.0..sroa_idx.i, align 8, !tbaa !214 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.1.0.copyload.i, %.sroa.1.0.copyload.i
  %foldExtExtBinop346 = fmul <2 x float> %.sroa.1.0.copyload.i, %.sroa.1.0.copyload.i
  %shift = shufflevector <2 x float> %foldExtExtBinop346, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop348 = fadd <2 x float> %foldExtExtBinop, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop348, i64 0
  %i.w = fmul float %.sroa.3.0.copyload.i, %.sroa.3.0.copyload.i
  %i.x = fadd float %i.w, %i.v
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.x)
  %i.y = fmul float %i.l, %sqrt.i.i.i             ; 4 uses
  %i.z = and i64 %i.i, 144115188075855871
  %i.aa = inttoptr i64 %i.z to ptr                ; 9 uses
  %i.ab = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(124) %i.aa, ptr noundef nonnull align 4 dereferenceable(32) %i.s), !noalias !794 ; 2 uses
  %i.ac = extractvalue { <2 x float>, <2 x float> } %i.ab, 0
  %i.ad = extractvalue { <2 x float>, <2 x float> } %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.af = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 4 dereferenceable(32) %i.s), !noalias !794 ; 2 uses
  %i.ag = extractvalue { <2 x float>, <2 x float> } %i.af, 0
  %i.ah = extractvalue { <2 x float>, <2 x float> } %i.af, 1
  %i.ai = fadd <2 x float> %i.ac, %i.ag           ; 5 uses
  %i.aj = fadd <2 x float> %i.ad, %i.ah           ; 6 uses
  %i.ak = extractelement <2 x float> %i.ai, i64 0 ; 4 uses
  %i.al = fcmp oeq float %i.ak, 0.000000e+00
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.47.0.copyload.i, i64 8
  br i1 %i.al, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.us.i.i, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit100.i.i.preheader

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit100.i.i.preheader: ; preds = %bb.b
  %i.aw = extractelement <2 x float> %i.ai, i64 1
  %i.ax = extractelement <2 x float> %i.aj, i64 0
  %i.ay = extractelement <2 x float> %i.aj, i64 1
  %i.az = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit100.i.i

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.us.i.i: ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bb = tail call float @llvm.fabs.f32(float %i.y)
  %i.bc = fcmp oeq float %i.bb, +inf
  %.neg310.i.i = fneg float %i.y
  %i.bd = select i1 %i.bc, float f0xFF7FFFFF, float %.neg310.i.i
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = fmul <2 x float> %i.bf, %i.aj
  %i.bh = fmul <2 x float> %i.bf, %i.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  store <2 x float> %i.bh, ptr %21, align 8
  store <2 x float> %i.bg, ptr %i.ba, align 8
  %i.bi = call { <2 x float>, <2 x float> } @_ZN4pbrt7FastExpERKNS_15SampledSpectrumE(ptr noundef nonnull align 4 dereferenceable(16) %21) ; 2 uses
  %i.bj = extractvalue { <2 x float>, <2 x float> } %i.bi, 0
  %i.bk = extractvalue { <2 x float>, <2 x float> } %i.bi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_17HomogeneousMediumEEEDaSH_.exit"

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit100.i.i: ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit100.i.i.preheader, %bb.aa
  %.073.i.i = phi float [ %i.bo, %bb.aa ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit100.i.i.preheader ] ; 3 uses
end_hunk_0
begin_hunk_1_@"_ZN4pbrt6detail8DispatchIRZNS_11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS4_17IntersectShadowTrEiS8_SC_ENKSD_clEiEUlNS_6Point3IfEEE_EEvS6_SC_T_T0_EUlSH_NS_16MediumPropertiesENS_15SampledSpectrumESM_E_EESM_SE_ffRNS_3RNGERKNS_18SampledWavelengthsESJ_EUlSJ_E_SM_NS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEESK_OSJ_Pvi":bb.a
  %i.jf = phi <4 x float> [ %i.je, %bb.z ], [ zeroinitializer, %bb.y ], [ %i.io, %.noexc120.i.i ]
  %i.jg = fcmp une <4 x float> %i.jf, zeroinitializer
  %i.jh = bitcast <4 x i1> %i.jg to i4
  %.not420 = icmp eq i4 %i.jh, 0
  br i1 %.not420, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_17HomogeneousMediumEEEDaSH_.exit", label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit100.i.i

bb.ab:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit100.i.i
  %i.ji = fsub float %i.y, %.073.i.i              ; 2 uses
  %i.jj = tail call float @llvm.fabs.f32(float %i.ji)
  %i.jk = fcmp oeq float %i.jj, +inf
  %.neg.i.i = fneg float %i.ji
  %i.jl = select i1 %i.jk, float f0xFF7FFFFF, float %.neg.i.i ; 4 uses
  %i.jm = fmul float %i.ak, %i.jl
  %i.jn = extractelement <2 x float> %i.ai, i64 1
  %i.jo = fmul float %i.jn, %i.jl
  %i.jp = extractelement <2 x float> %i.aj, i64 0
  %i.jq = fmul float %i.jp, %i.jl
  %i.jr = extractelement <2 x float> %i.aj, i64 1
  %i.js = fmul float %i.jr, %i.jl
  %i.jt = fmul float %i.jm, f0x3FB8AA3B           ; 2 uses
  %i.ju = tail call noundef float @llvm.floor.f32(float %i.jt) ; 2 uses
  %i.jv = fsub float %i.jt, %i.ju                 ; 3 uses
  %i.jw = fptosi float %i.ju to i32
  %i.jx = tail call noundef float @llvm.fma.f32(float %i.jv, float f0x3DA00AC9, float f0x3E679A0B)
  %i.jy = tail call noundef float @llvm.fma.f32(float %i.jv, float %i.jx, float f0x3F321004)
  %i.jz = tail call noundef float @llvm.fma.f32(float %i.jv, float %i.jy, float 1.000000e+00)
  %i.ka = bitcast float %i.jz to i32              ; 2 uses
  %i.kb = lshr i32 %i.ka, 23
  %i.kc = add i32 %i.jw, -127
  %i.kd = add i32 %i.kc, %i.kb                    ; 3 uses
  %i.ke = icmp slt i32 %i.kd, -126
  br i1 %i.ke, label %_ZN4pbrt7FastExpEf.exit.i150.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kf = icmp sgt i32 %i.kd, 127
  br i1 %i.kf, label %_ZN4pbrt7FastExpEf.exit.i150.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kg = and i32 %i.ka, -2139095041
  %i.kh = shl nsw i32 %i.kd, 23
  %i.ki = add nsw i32 %i.kh, 1065353216
  %i.kj = or i32 %i.ki, %i.kg
  %i.kk = bitcast i32 %i.kj to float
  br label %_ZN4pbrt7FastExpEf.exit.i150.i.i

_ZN4pbrt7FastExpEf.exit.i150.i.i:                 ; preds = %bb.ad, %bb.ac, %bb.ab
  %.0.i.i151.i.i = phi float [ %i.kk, %bb.ad ], [ 0.000000e+00, %bb.ab ], [ +inf, %bb.ac ]
  %i.kl = fmul float %i.jo, f0x3FB8AA3B           ; 2 uses
  %i.km = tail call noundef float @llvm.floor.f32(float %i.kl) ; 2 uses
  %i.kn = fsub float %i.kl, %i.km                 ; 3 uses
  %i.ko = fptosi float %i.km to i32
  %i.kp = tail call noundef float @llvm.fma.f32(float %i.kn, float f0x3DA00AC9, float f0x3E679A0B)
  %i.kq = tail call noundef float @llvm.fma.f32(float %i.kn, float %i.kp, float f0x3F321004)
  %i.kr = tail call noundef float @llvm.fma.f32(float %i.kn, float %i.kq, float 1.000000e+00)
  %i.ks = bitcast float %i.kr to i32              ; 2 uses
  %i.kt = lshr i32 %i.ks, 23
  %i.ku = add i32 %i.ko, -127
  %i.kv = add i32 %i.ku, %i.kt                    ; 3 uses
  %i.kw = icmp slt i32 %i.kv, -126
  br i1 %i.kw, label %_ZN4pbrt7FastExpEf.exit.1.i152.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i150.i.i
  %i.kx = icmp sgt i32 %i.kv, 127
  br i1 %i.kx, label %_ZN4pbrt7FastExpEf.exit.1.i152.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ky = and i32 %i.ks, -2139095041
  %i.kz = shl nsw i32 %i.kv, 23
  %i.la = add nsw i32 %i.kz, 1065353216
  %i.lb = or i32 %i.la, %i.ky
  %i.lc = bitcast i32 %i.lb to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i152.i.i

_ZN4pbrt7FastExpEf.exit.1.i152.i.i:               ; preds = %bb.af, %bb.ae, %_ZN4pbrt7FastExpEf.exit.i150.i.i
  %.0.i.1.i153.i.i = phi float [ %i.lc, %bb.af ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i150.i.i ], [ +inf, %bb.ae ]
  %i.ld = fmul float %i.jq, f0x3FB8AA3B           ; 2 uses
  %i.le = tail call noundef float @llvm.floor.f32(float %i.ld) ; 2 uses
  %i.lf = fsub float %i.ld, %i.le                 ; 3 uses
  %i.lg = fptosi float %i.le to i32
  %i.lh = tail call noundef float @llvm.fma.f32(float %i.lf, float f0x3DA00AC9, float f0x3E679A0B)
  %i.li = tail call noundef float @llvm.fma.f32(float %i.lf, float %i.lh, float f0x3F321004)
  %i.lj = tail call noundef float @llvm.fma.f32(float %i.lf, float %i.li, float 1.000000e+00)
  %i.lk = bitcast float %i.lj to i32              ; 2 uses
  %i.ll = lshr i32 %i.lk, 23
  %i.lm = add i32 %i.lg, -127
  %i.ln = add i32 %i.lm, %i.ll                    ; 3 uses
  %i.lo = icmp slt i32 %i.ln, -126
  br i1 %i.lo, label %_ZN4pbrt7FastExpEf.exit.2.i154.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i152.i.i
  %i.lp = icmp sgt i32 %i.ln, 127
  br i1 %i.lp, label %_ZN4pbrt7FastExpEf.exit.2.i154.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lq = and i32 %i.lk, -2139095041
  %i.lr = shl nsw i32 %i.ln, 23
  %i.ls = add nsw i32 %i.lr, 1065353216
  %i.lt = or i32 %i.ls, %i.lq
  %i.lu = bitcast i32 %i.lt to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i154.i.i

_ZN4pbrt7FastExpEf.exit.2.i154.i.i:               ; preds = %bb.ah, %bb.ag, %_ZN4pbrt7FastExpEf.exit.1.i152.i.i
  %.0.i.2.i155.i.i = phi float [ %i.lu, %bb.ah ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i152.i.i ], [ +inf, %bb.ag ]
  %i.lv = fmul float %i.js, f0x3FB8AA3B           ; 2 uses
  %i.lw = tail call noundef float @llvm.floor.f32(float %i.lv) ; 2 uses
  %i.lx = fsub float %i.lv, %i.lw                 ; 3 uses
  %i.ly = fptosi float %i.lw to i32
  %i.lz = tail call noundef float @llvm.fma.f32(float %i.lx, float f0x3DA00AC9, float f0x3E679A0B)
  %i.ma = tail call noundef float @llvm.fma.f32(float %i.lx, float %i.lz, float f0x3F321004)
  %i.mb = tail call noundef float @llvm.fma.f32(float %i.lx, float %i.ma, float 1.000000e+00)
  %i.mc = bitcast float %i.mb to i32              ; 2 uses
  %i.md = lshr i32 %i.mc, 23
  %i.me = add i32 %i.ly, -127
  %i.mf = add i32 %i.me, %i.md                    ; 3 uses
  %i.mg = icmp slt i32 %i.mf, -126
  br i1 %i.mg, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i154.i.i
  %i.mh = icmp sgt i32 %i.mf, 127
  br i1 %i.mh, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mi = and i32 %i.mc, -2139095041
  %i.mj = shl nsw i32 %i.mf, 23
  %i.mk = add nsw i32 %i.mj, 1065353216
  %i.ml = or i32 %i.mk, %i.mi
  %i.mm = bitcast i32 %i.ml to float
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %_ZN4pbrt7FastExpEf.exit.2.i154.i.i
  %.0.i.3.i156.i.i = phi float [ %i.mm, %bb.aj ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2.i154.i.i ], [ +inf, %bb.ai ]
  %.sroa.0221.0.vec.insert233.i.i = insertelement <2 x float> poison, float %.0.i.i151.i.i, i64 0
  %.sroa.0221.4.vec.insert246.i.i = insertelement <2 x float> %.sroa.0221.0.vec.insert233.i.i, float %.0.i.1.i153.i.i, i64 1
  %.sroa.21.8.vec.insert260.i.i = insertelement <2 x float> poison, float %.0.i.2.i155.i.i, i64 0
  %.sroa.21.12.vec.insert273.i.i = insertelement <2 x float> %.sroa.21.8.vec.insert260.i.i, float %.0.i.3.i156.i.i, i64 1
  br label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_17HomogeneousMediumEEEDaSH_.exit"

bb.al:                                            ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.5.0.copyload.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.12.sroa.0.0.copyload.i = load float, ptr %.sroa.12.0..sroa_idx.i, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !65 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !787, !nonnull !44, !align !182
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !53
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !788, !nonnull !44, !align !182
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !53
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !789, !nonnull !44, !align !45 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !790, !nonnull !44, !align !182 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !791, !nonnull !44, !align !45 ; 4 uses
  %.sroa.018.0.copyload.i = load ptr, ptr %i.na, align 8, !tbaa !793 ; 6 uses
  %.sroa.2.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %.sroa.2.0.copyload.i14 = load ptr, ptr %.sroa.2.0..sroa_idx.i13, align 8, !tbaa !793 ; 4 uses
  %.sroa.319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %.sroa.319.0.copyload.i = load ptr, ptr %.sroa.319.0..sroa_idx.i, align 8, !tbaa !793 ; 2 uses
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  %.sroa.420.0.copyload.i = load ptr, ptr %.sroa.420.0..sroa_idx.i, align 8, !tbaa !214 ; 3 uses
  %i.nb = fmul <2 x float> %.sroa.5.0.copyload.i, %.sroa.5.0.copyload.i ; 2 uses
  %shift358 = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop359 = fadd <2 x float> %i.nb, %shift358
  %i.nc = extractelement <2 x float> %foldExtExtBinop359, i64 0
  %i.nd = fmul float %.sroa.9.0.copyload.i, %.sroa.9.0.copyload.i
  %i.ne = fadd float %i.nd, %i.nc
  %sqrt.i.i.i17 = tail call noundef float @llvm.sqrt.f32(float %i.ne) ; 3 uses
  %i.nf = fmul float %i.mr, %sqrt.i.i.i17
  %i.ng = load <2 x float>, ptr %i.g, align 8     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.nh = insertelement <2 x float> poison, float %sqrt.i.i.i17, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nj = fdiv <2 x float> %.sroa.5.0.copyload.i, %i.ni ; 2 uses
  %i.nk = fdiv float %.sroa.9.0.copyload.i, %sqrt.i.i.i17 ; 2 uses
  %i.nl = and i64 %i.mo, 144115188075855871
  %i.nm = inttoptr i64 %i.nl to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store <2 x float> %i.ng, ptr %17, align 8
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store float %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx4.i, align 8
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %17, i64 12
  store <2 x float> %i.nj, ptr %.sroa.5.0..sroa_idx6.i, align 4
  %.sroa.9.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %17, i64 20
  store float %i.nk, ptr %.sroa.9.0..sroa_idx9.i, align 4
  %.sroa.12.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %17, i64 24
  store float %.sroa.12.sroa.0.0.copyload.i, ptr %.sroa.12.0..sroa_idx11.i, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i64 %i.mo, ptr %i.nn, align 8, !tbaa !65
  call void @_ZNK4pbrt10GridMedium9SampleRayENS_3RayEfRKNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::DDAMajorantIterator") align 8 %16, ptr noundef nonnull align 8 dereferenceable(520) %i.nm, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(40) %17, float noundef %i.nf, ptr noundef nonnull align 4 dereferenceable(32) %i.my)
  %i.no = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i104.i.i = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %.sroa.5160.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload.i, i64 8
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i14, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload.i, i64 8
  %i.nv = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @_ZN4pbrt19DDAMajorantIterator4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.221") align 4 %18, ptr noundef nonnull align 8 dereferenceable(92) %16)
  %i.nw = load i8, ptr %i.no, align 4, !tbaa !220, !range !115, !noundef !44
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_10GridMediumEEEDaSH_.exit"

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i: ; preds = %bb.al, %bb.bl
  %.sroa.0169.0278.i45.i = phi <2 x float> [ %.sroa.0169.4.i.i, %bb.bl ], [ splat (float 1.000000e+00), %bb.al ] ; 2 uses
  %.sroa.21.0279.i44.i = phi <2 x float> [ %.sroa.21.4.i.i, %bb.bl ], [ splat (float 1.000000e+00), %bb.al ] ; 2 uses
  %.054280.i43.i = phi float [ %.2.i.i, %bb.bl ], [ %i.mu, %bb.al ] ; 2 uses
  %i.ny = load float, ptr %i.np, align 4, !tbaa !53
  %i.nz = fcmp oeq float %i.ny, 0.000000e+00
  br i1 %i.nz, label %bb.am, label %.lr.ph.preheader.i.i

bb.am:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i
  %i.oa = load float, ptr %i.nr, align 4, !tbaa !222
  %i.ob = load float, ptr %18, align 4, !tbaa !223
  %i.oc = fsub float %i.oa, %i.ob                 ; 2 uses
  %i.od = call float @llvm.fabs.f32(float %i.oc)
  %i.oe = fcmp oeq float %i.od, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %.neg248.i.i = fneg float %i.oc
  %i.of = select i1 %i.oe, float f0xFF7FFFFF, float %.neg248.i.i
  %.sroa.0.0.copyload.i.i.i.i = load <2 x float>, ptr %i.np, align 4
  %.sroa.6.0.copyload.i.i.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i, align 4, !tbaa !99
  %i.og = insertelement <2 x float> poison, float %i.of, i64 0
  %i.oh = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oi = fmul <2 x float> %.sroa.0.0.copyload.i.i.i.i, %i.oh
  %i.oj = fmul <2 x float> %i.oh, %.sroa.6.0.copyload.i.i.i.i
  store <2 x float> %i.oi, ptr %19, align 8
  store <2 x float> %i.oj, ptr %i.nv, align 8
  %i.ok = call { <2 x float>, <2 x float> } @_ZN4pbrt7FastExpERKNS_15SampledSpectrumE(ptr noundef nonnull align 4 dereferenceable(16) %19) ; 2 uses
  %i.ol = extractvalue { <2 x float>, <2 x float> } %i.ok, 0
  %i.om = extractvalue { <2 x float>, <2 x float> } %i.ok, 1
  %i.on = fmul <2 x float> %.sroa.0169.0278.i45.i, %i.ol
  %i.oo = fmul <2 x float> %.sroa.21.0279.i44.i, %i.om
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.bl

.lr.ph.preheader.i.i:                             ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i
  %i.op = load float, ptr %18, align 4, !tbaa !223
  br label %.lr.ph.i.i

.noexc97.i.i:                                     ; preds = %bb.bk
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef 235, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(4) @.str.22) #29
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.bk, %.lr.ph.preheader.i.i
  %.1277.i.i = phi float [ %.sroa.speculated.i.i.i20, %bb.bk ], [ %.054280.i43.i, %.lr.ph.preheader.i.i ]
  %.073276.i.i = phi float [ %i.ou, %bb.bk ], [ %i.op, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.21.1275.i.i = phi <2 x float> [ splat (float 1.000000e+00), %bb.bk ], [ %.sroa.21.0279.i44.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.0169.1274.i.i = phi <2 x float> [ splat (float 1.000000e+00), %bb.bk ], [ %.sroa.0169.0278.i45.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.oq = load float, ptr %i.np, align 4, !tbaa !53
  %i.or = fsub float 1.000000e+00, %.1277.i.i
  %i.os = call noundef float @logf(float noundef %i.or) #25
  %i.ot = fdiv float %i.os, %i.oq
  %i.ou = fsub float %.073276.i.i, %i.ot          ; 5 uses
  %i.ov = load i64, ptr %i.mw, align 8, !tbaa !211 ; 4 uses
  %i.ow = mul i64 %i.ov, 6364136223846793005
  %i.ox = load i64, ptr %i.nq, align 8, !tbaa !210
  %i.oy = add i64 %i.ow, %i.ox
  store i64 %i.oy, ptr %i.mw, align 8, !tbaa !211
  %i.oz = lshr i64 %i.ov, 45
  %i.pa = lshr i64 %i.ov, 27
  %i.pb = xor i64 %i.oz, %i.pa
  %i.pc = trunc i64 %i.pb to i32                  ; 2 uses
  %i.pd = lshr i64 %i.ov, 59
  %i.pe = trunc nuw nsw i64 %i.pd to i32
  %i.pf = call noundef i32 @llvm.fshr.i32(i32 %i.pc, i32 %i.pc, i32 %i.pe)
  %i.pg = uitofp i32 %i.pf to float
  %i.ph = fmul nnan float %i.pg, f0x2F800000      ; 2 uses
  %i.pi = fcmp olt float %i.ph, f0x3F7FFFFF
  %.sroa.speculated.i.i.i20 = select i1 %i.pi, float %i.ph, float f0x3F7FFFFF ; 2 uses
  %i.pj = load float, ptr %i.nr, align 4, !tbaa !222 ; 2 uses
  %i.pk = fcmp olt float %i.ou, %i.pj
  br i1 %i.pk, label %bb.an, label %bb.bb

bb.an:                                            ; preds = %.lr.ph.i.i
  %i.pl = fsub float %i.ou, %.073276.i.i
  %i.pm = fneg float %i.pl                        ; 4 uses
  %.sroa.0.0.copyload.i.i103.i.i = load <2 x float>, ptr %i.np, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i105.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i, align 4, !tbaa !99 ; 2 uses
  %.sroa.0.0.vec.extract.i.i106.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i103.i.i, i64 0
  %i.pn = fmul float %.sroa.0.0.vec.extract.i.i106.i.i, %i.pm
  %.sroa.0.4.vec.extract.i.i108.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i103.i.i, i64 1
  %i.po = fmul float %.sroa.0.4.vec.extract.i.i108.i.i, %i.pm
  %.sroa.6.8.vec.extract.i.i110.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i105.i.i, i64 0
  %i.pp = fmul float %.sroa.6.8.vec.extract.i.i110.i.i, %i.pm
  %.sroa.6.12.vec.extract.i.i112.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i105.i.i, i64 1
  %i.pq = fmul float %.sroa.6.12.vec.extract.i.i112.i.i, %i.pm
  %i.pr = fmul float %i.pn, f0x3FB8AA3B           ; 2 uses
  %i.ps = call noundef float @llvm.floor.f32(float %i.pr) ; 2 uses
  %i.pt = fsub float %i.pr, %i.ps                 ; 3 uses
  %i.pu = fptosi float %i.ps to i32
  %i.pv = call noundef float @llvm.fma.f32(float %i.pt, float f0x3DA00AC9, float f0x3E679A0B)
  %i.pw = call noundef float @llvm.fma.f32(float %i.pt, float %i.pv, float f0x3F321004)
  %i.px = call noundef float @llvm.fma.f32(float %i.pt, float %i.pw, float 1.000000e+00)
  %i.py = bitcast float %i.px to i32              ; 2 uses
  %i.pz = lshr i32 %i.py, 23
  %i.qa = add i32 %i.pu, -127
  %i.qb = add i32 %i.qa, %i.pz                    ; 3 uses
  %i.qc = icmp slt i32 %i.qb, -126
  br i1 %i.qc, label %_ZN4pbrt7FastExpEf.exit.i.i.i22, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.qd = icmp sgt i32 %i.qb, 127
  br i1 %i.qd, label %_ZN4pbrt7FastExpEf.exit.i.i.i22, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.qe = and i32 %i.py, -2139095041
  %i.qf = shl nsw i32 %i.qb, 23
  %i.qg = add nsw i32 %i.qf, 1065353216
  %i.qh = or i32 %i.qg, %i.qe
  %i.qi = bitcast i32 %i.qh to float
  br label %_ZN4pbrt7FastExpEf.exit.i.i.i22

_ZN4pbrt7FastExpEf.exit.i.i.i22:                  ; preds = %bb.ap, %bb.ao, %bb.an
  %.0.i.i.i.i23 = phi float [ %i.qi, %bb.ap ], [ 0.000000e+00, %bb.an ], [ +inf, %bb.ao ]
  %i.qj = fmul float %i.po, f0x3FB8AA3B           ; 2 uses
  %i.qk = call noundef float @llvm.floor.f32(float %i.qj) ; 2 uses
  %i.ql = fsub float %i.qj, %i.qk                 ; 3 uses
  %i.qm = fptosi float %i.qk to i32
  %i.qn = call noundef float @llvm.fma.f32(float %i.ql, float f0x3DA00AC9, float f0x3E679A0B)
  %i.qo = call noundef float @llvm.fma.f32(float %i.ql, float %i.qn, float f0x3F321004)
  %i.qp = call noundef float @llvm.fma.f32(float %i.ql, float %i.qo, float 1.000000e+00)
  %i.qq = bitcast float %i.qp to i32              ; 2 uses
  %i.qr = lshr i32 %i.qq, 23
  %i.qs = add i32 %i.qm, -127
  %i.qt = add i32 %i.qs, %i.qr                    ; 3 uses
  %i.qu = icmp slt i32 %i.qt, -126
  br i1 %i.qu, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i24, label %bb.aq

bb.aq:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i.i.i22
  %i.qv = icmp sgt i32 %i.qt, 127
  br i1 %i.qv, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i24, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qw = and i32 %i.qq, -2139095041
  %i.qx = shl nsw i32 %i.qt, 23
  %i.qy = add nsw i32 %i.qx, 1065353216
  %i.qz = or i32 %i.qy, %i.qw
  %i.ra = bitcast i32 %i.qz to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i.i.i24

_ZN4pbrt7FastExpEf.exit.1.i.i.i24:                ; preds = %bb.ar, %bb.aq, %_ZN4pbrt7FastExpEf.exit.i.i.i22
  %.0.i.1.i.i.i25 = phi float [ %i.ra, %bb.ar ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i.i.i22 ], [ +inf, %bb.aq ]
  %i.rb = fmul float %i.pp, f0x3FB8AA3B           ; 2 uses
  %i.rc = call noundef float @llvm.floor.f32(float %i.rb) ; 2 uses
  %i.rd = fsub float %i.rb, %i.rc                 ; 3 uses
  %i.re = fptosi float %i.rc to i32
  %i.rf = call noundef float @llvm.fma.f32(float %i.rd, float f0x3DA00AC9, float f0x3E679A0B)
  %i.rg = call noundef float @llvm.fma.f32(float %i.rd, float %i.rf, float f0x3F321004)
  %i.rh = call noundef float @llvm.fma.f32(float %i.rd, float %i.rg, float 1.000000e+00)
  %i.ri = bitcast float %i.rh to i32              ; 2 uses
  %i.rj = lshr i32 %i.ri, 23
  %i.rk = add i32 %i.re, -127
  %i.rl = add i32 %i.rk, %i.rj                    ; 3 uses
  %i.rm = icmp slt i32 %i.rl, -126
  br i1 %i.rm, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i26, label %bb.as

bb.as:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i.i.i24
  %i.rn = icmp sgt i32 %i.rl, 127
  br i1 %i.rn, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i26, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ro = and i32 %i.ri, -2139095041
  %i.rp = shl nsw i32 %i.rl, 23
  %i.rq = add nsw i32 %i.rp, 1065353216
  %i.rr = or i32 %i.rq, %i.ro
  %i.rs = bitcast i32 %i.rr to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i.i.i26

_ZN4pbrt7FastExpEf.exit.2.i.i.i26:                ; preds = %bb.at, %bb.as, %_ZN4pbrt7FastExpEf.exit.1.i.i.i24
  %.0.i.2.i.i.i27 = phi float [ %i.rs, %bb.at ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i.i.i24 ], [ +inf, %bb.as ]
  %i.rt = fmul float %i.pq, f0x3FB8AA3B           ; 2 uses
  %i.ru = call noundef float @llvm.floor.f32(float %i.rt) ; 2 uses
  %i.rv = fsub float %i.rt, %i.ru                 ; 3 uses
  %i.rw = fptosi float %i.ru to i32
  %i.rx = call noundef float @llvm.fma.f32(float %i.rv, float f0x3DA00AC9, float f0x3E679A0B)
  %i.ry = call noundef float @llvm.fma.f32(float %i.rv, float %i.rx, float f0x3F321004)
  %i.rz = call noundef float @llvm.fma.f32(float %i.rv, float %i.ry, float 1.000000e+00)
  %i.sa = bitcast float %i.rz to i32              ; 2 uses
  %i.sb = lshr i32 %i.sa, 23
  %i.sc = add i32 %i.rw, -127
  %i.sd = add i32 %i.sc, %i.sb                    ; 3 uses
  %i.se = icmp slt i32 %i.sd, -126
  br i1 %i.se, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i.i.i26
  %i.sf = icmp sgt i32 %i.sd, 127
  br i1 %i.sf, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.sg = and i32 %i.sa, -2139095041
  %i.sh = shl nsw i32 %i.sd, 23
  %i.si = add nsw i32 %i.sh, 1065353216
  %i.sj = or i32 %i.si, %i.sg
  %i.sk = bitcast i32 %i.sj to float
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %_ZN4pbrt7FastExpEf.exit.2.i.i.i26
  %.0.i.3.i.i.i28 = phi float [ %i.sk, %bb.av ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2.i.i.i26 ], [ +inf, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %i.sl = insertelement <2 x float> poison, float %i.ou, i64 0
  %i.sm = shufflevector <2 x float> %i.sl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sn = fmul <2 x float> %i.nj, %i.sm
  %i.so = fmul float %i.nk, %i.ou
  %i.sp = fadd <2 x float> %i.ng, %i.sn
  %i.sq = fadd float %.sroa.4.0.copyload.i, %i.so
  call void @_ZNK4pbrt10GridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::MediumProperties") align 8 %20, ptr noundef nonnull align 8 dereferenceable(520) %i.nm, <2 x float> %i.sp, float %i.sq, ptr noundef nonnull align 4 dereferenceable(32) %i.my)
  %i.sr = load i8, ptr %i.no, align 4, !tbaa !220, !range !115, !noundef !44
  %i.ss = trunc nuw i8 %i.sr to i1
  br i1 %i.ss, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit121.i.i, label %.noexc120.i.i29

.noexc120.i.i29:                                  ; preds = %bb.aw
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef 235, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(4) @.str.22) #29
  unreachable

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit121.i.i: ; preds = %bb.aw
  %.sroa.04.0.copyload.i.i = load <2 x float>, ptr %i.np, align 4
  %.sroa.25.0.copyload.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i, align 4, !tbaa !99
  %i.st = shufflevector <2 x float> %.sroa.0169.1274.i.i, <2 x float> %.sroa.21.1275.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.su = insertelement <4 x float> poison, float %.0.i.i.i.i23, i64 0
  %i.sv = insertelement <4 x float> %i.su, float %.0.i.1.i.i.i25, i64 1
  %i.sw = insertelement <4 x float> %i.sv, float %.0.i.2.i.i.i27, i64 2
  %i.sx = insertelement <4 x float> %i.sw, float %.0.i.3.i.i.i28, i64 3
  %i.sy = fmul <4 x float> %i.st, %i.sx           ; 2 uses
  %i.sz = load <4 x float>, ptr %.sroa.5160.0..sroa_idx.i.i, align 16
  %i.ta = load <4 x float>, ptr %20, align 16
  %22 = shufflevector <2 x float> %.sroa.04.0.copyload.i.i, <2 x float> %.sroa.25.0.copyload.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.tb = fsub <4 x float> %22, %i.ta
  %i.tc = fsub <4 x float> %i.tb, %i.sz           ; 2 uses
  %i.td = fcmp ogt <4 x float> %i.tc, zeroinitializer
  %i.te = select <4 x i1> %i.td, <4 x float> %i.tc, <4 x float> zeroinitializer
  %i.tf = fmul <4 x float> %i.sy, %i.te
  %i.tg = load <4 x float>, ptr %.sroa.018.0.copyload.i, align 4, !tbaa !53
  %i.th = fmul <4 x float> %i.sy, %22             ; 2 uses
  %i.ti = shufflevector <4 x float> %i.th, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.tj = fdiv <4 x float> %i.tf, %i.ti           ; 2 uses
  %i.tk = fmul <4 x float> %i.tj, %i.tg
  store <4 x float> %i.tk, ptr %.sroa.018.0.copyload.i, align 4, !tbaa !53
  %i.tl = fdiv <4 x float> %i.th, %i.ti
  %i.tm = load <4 x float>, ptr %.sroa.2.0.copyload.i14, align 4, !tbaa !53
  %i.tn = fmul <4 x float> %i.tl, %i.tm
  store <4 x float> %i.tn, ptr %.sroa.2.0.copyload.i14, align 4, !tbaa !53
  %i.to = load <4 x float>, ptr %.sroa.319.0.copyload.i, align 4, !tbaa !53
  %i.tp = fmul <4 x float> %i.tj, %i.to           ; 3 uses
  store <4 x float> %i.tp, ptr %.sroa.319.0.copyload.i, align 4, !tbaa !53
  %.sroa.0.0.copyload4.i103.i.i.i36 = load <2 x float>, ptr %.sroa.2.0.copyload.i14, align 4
  %.sroa.8.0.copyload.i105.i.i.i37 = load <2 x float>, ptr %i.nt, align 4, !tbaa !99
  %i.tq = shufflevector <4 x float> %i.tp, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.tr = fadd <2 x float> %i.tq, %.sroa.0.0.copyload4.i103.i.i.i36 ; 2 uses
  %i.ts = shufflevector <4 x float> %i.tp, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.tt = fadd <2 x float> %i.ts, %.sroa.8.0.copyload.i105.i.i.i37 ; 2 uses
  %shift361 = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop362 = fadd <2 x float> %i.tr, %shift361
  %foldExtExtBinop364 = fadd <2 x float> %foldExtExtBinop362, %i.tt
  %shift366 = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop367 = fadd <2 x float> %shift366, %foldExtExtBinop364
  %i.tu = extractelement <2 x float> %foldExtExtBinop367, i64 0
  %i.tv = fmul float %i.tu, 2.500000e-01          ; 3 uses
  %.sroa.0.0.copyload4.i116.i.i.i42 = load <2 x float>, ptr %.sroa.018.0.copyload.i, align 4 ; 2 uses
  %.sroa.8.0.copyload.i118.i.i.i43 = load <2 x float>, ptr %i.ns, align 4 ; 3 uses
  %i.tw = insertelement <2 x float> poison, float %i.tv, i64 0
  %i.tx = shufflevector <2 x float> %i.tw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ty = fdiv <2 x float> %.sroa.0.0.copyload4.i116.i.i.i42, %i.tx ; 2 uses
  %.sroa.8.8.vec.extract.i123.i.i.i46 = extractelement <2 x float> %.sroa.8.0.copyload.i118.i.i.i43, i64 0
  %i.tz = fdiv float %.sroa.8.8.vec.extract.i123.i.i.i46, %i.tv ; 2 uses
  %.sroa.8.12.vec.extract.i125.i.i.i47 = extractelement <2 x float> %.sroa.8.0.copyload.i118.i.i.i43, i64 1
  %i.ua = fdiv float %.sroa.8.12.vec.extract.i125.i.i.i47, %i.tv ; 2 uses
  %i.ub = extractelement <2 x float> %i.ty, i64 0 ; 2 uses
  %i.uc = extractelement <2 x float> %i.ty, i64 1 ; 2 uses
  %i.ud = fcmp olt float %i.ub, %i.uc
  %.sroa.speculated.i129.i.i.i48 = select i1 %i.ud, float %i.uc, float %i.ub ; 2 uses
  %i.ue = fcmp olt float %.sroa.speculated.i129.i.i.i48, %i.tz
  %.sroa.speculated.1.i130.i.i.i49 = select i1 %i.ue, float %i.tz, float %.sroa.speculated.i129.i.i.i48 ; 2 uses
  %i.uf = fcmp olt float %.sroa.speculated.1.i130.i.i.i49, %i.ua
  %.sroa.speculated.2.i131.i.i.i50 = select i1 %i.uf, float %i.ua, float %.sroa.speculated.1.i130.i.i.i49
  %i.ug = fcmp olt float %.sroa.speculated.2.i131.i.i.i50, 5.000000e-02
  %i.uh = shufflevector <2 x float> %.sroa.0.0.copyload4.i116.i.i.i42, <2 x float> %.sroa.8.0.copyload.i118.i.i.i43, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br i1 %i.ug, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit121.i.i
  %i.ui = load i64, ptr %.sroa.420.0.copyload.i, align 8, !tbaa !211 ; 4 uses
  %i.uj = mul i64 %i.ui, 6364136223846793005
  %i.uk = load i64, ptr %i.nu, align 8, !tbaa !210
  %i.ul = add i64 %i.uj, %i.uk
  store i64 %i.ul, ptr %.sroa.420.0.copyload.i, align 8, !tbaa !211
  %i.um = lshr i64 %i.ui, 45
  %i.un = lshr i64 %i.ui, 27
  %i.uo = xor i64 %i.um, %i.un
  %i.up = trunc i64 %i.uo to i32                  ; 2 uses
  %i.uq = lshr i64 %i.ui, 59
  %i.ur = trunc nuw nsw i64 %i.uq to i32
  %i.us = call noundef i32 @llvm.fshr.i32(i32 %i.up, i32 %i.up, i32 %i.ur)
  %i.ut = uitofp i32 %i.us to float
  %i.uu = fmul nnan float %i.ut, f0x2F800000      ; 2 uses
  %i.uv = fcmp olt float %i.uu, f0x3F7FFFFF
  %.sroa.speculated.i132.i.i.i54 = select i1 %i.uv, float %i.uu, float f0x3F7FFFFF
  %i.uw = fcmp olt float %.sroa.speculated.i132.i.i.i54, 7.500000e-01
  br i1 %i.uw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.018.0.copyload.i, i8 0, i64 16, i1 false)
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ux = fmul <4 x float> %i.uh, splat (float 4.000000e+00) ; 2 uses
  store <4 x float> %i.ux, ptr %.sroa.018.0.copyload.i, align 4, !tbaa !53
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit121.i.i
  %i.uy = phi <4 x float> [ %i.ux, %bb.az ], [ zeroinitializer, %bb.ay ], [ %i.uh, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit121.i.i ]
  %i.uz = fcmp une <4 x float> %i.uy, zeroinitializer
  %i.va = bitcast <4 x i1> %i.uz to i4
  %.not419 = icmp eq i4 %i.va, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br i1 %.not419, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_10GridMediumEEEDaSH_.exit", label %bb.bk

bb.bb:                                            ; preds = %.lr.ph.i.i
  %i.vb = fsub float %i.pj, %.073276.i.i          ; 2 uses
  %i.vc = call float @llvm.fabs.f32(float %i.vb)
  %i.vd = fcmp oeq float %i.vc, +inf
  %.neg.i.i21 = fneg float %i.vb
  %i.ve = select i1 %i.vd, float f0xFF7FFFFF, float %.neg.i.i21 ; 4 uses
  %.sroa.0.0.copyload.i.i128.i.i = load <2 x float>, ptr %i.np, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i130.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i, align 4, !tbaa !99 ; 2 uses
  %.sroa.0.0.vec.extract.i.i131.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i128.i.i, i64 0
  %i.vf = fmul float %i.ve, %.sroa.0.0.vec.extract.i.i131.i.i
  %.sroa.0.4.vec.extract.i.i133.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i128.i.i, i64 1
  %i.vg = fmul float %i.ve, %.sroa.0.4.vec.extract.i.i133.i.i
  %.sroa.6.8.vec.extract.i.i135.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i130.i.i, i64 0
  %i.vh = fmul float %i.ve, %.sroa.6.8.vec.extract.i.i135.i.i
  %.sroa.6.12.vec.extract.i.i137.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i130.i.i, i64 1
  %i.vi = fmul float %i.ve, %.sroa.6.12.vec.extract.i.i137.i.i
  %i.vj = fmul float %i.vf, f0x3FB8AA3B           ; 2 uses
  %i.vk = call noundef float @llvm.floor.f32(float %i.vj) ; 2 uses
  %i.vl = fsub float %i.vj, %i.vk                 ; 3 uses
  %i.vm = fptosi float %i.vk to i32
  %i.vn = call noundef float @llvm.fma.f32(float %i.vl, float f0x3DA00AC9, float f0x3E679A0B)
  %i.vo = call noundef float @llvm.fma.f32(float %i.vl, float %i.vn, float f0x3F321004)
  %i.vp = call noundef float @llvm.fma.f32(float %i.vl, float %i.vo, float 1.000000e+00)
  %i.vq = bitcast float %i.vp to i32              ; 2 uses
  %i.vr = lshr i32 %i.vq, 23
  %i.vs = add i32 %i.vm, -127
  %i.vt = add i32 %i.vs, %i.vr                    ; 3 uses
  %i.vu = icmp slt i32 %i.vt, -126
  br i1 %i.vu, label %_ZN4pbrt7FastExpEf.exit.i141.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.vv = icmp sgt i32 %i.vt, 127
  br i1 %i.vv, label %_ZN4pbrt7FastExpEf.exit.i141.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.vw = and i32 %i.vq, -2139095041
  %i.vx = shl nsw i32 %i.vt, 23
  %i.vy = add nsw i32 %i.vx, 1065353216
  %i.vz = or i32 %i.vy, %i.vw
  %i.wa = bitcast i32 %i.vz to float
  br label %_ZN4pbrt7FastExpEf.exit.i141.i.i

_ZN4pbrt7FastExpEf.exit.i141.i.i:                 ; preds = %bb.bd, %bb.bc, %bb.bb
  %.0.i.i142.i.i = phi float [ %i.wa, %bb.bd ], [ 0.000000e+00, %bb.bb ], [ +inf, %bb.bc ]
  %i.wb = fmul float %i.vg, f0x3FB8AA3B           ; 2 uses
  %i.wc = call noundef float @llvm.floor.f32(float %i.wb) ; 2 uses
  %i.wd = fsub float %i.wb, %i.wc                 ; 3 uses
  %i.we = fptosi float %i.wc to i32
  %i.wf = call noundef float @llvm.fma.f32(float %i.wd, float f0x3DA00AC9, float f0x3E679A0B)
  %i.wg = call noundef float @llvm.fma.f32(float %i.wd, float %i.wf, float f0x3F321004)
  %i.wh = call noundef float @llvm.fma.f32(float %i.wd, float %i.wg, float 1.000000e+00)
  %i.wi = bitcast float %i.wh to i32              ; 2 uses
  %i.wj = lshr i32 %i.wi, 23
  %i.wk = add i32 %i.we, -127
  %i.wl = add i32 %i.wk, %i.wj                    ; 3 uses
  %i.wm = icmp slt i32 %i.wl, -126
  br i1 %i.wm, label %_ZN4pbrt7FastExpEf.exit.1.i143.i.i, label %bb.be

bb.be:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i141.i.i
  %i.wn = icmp sgt i32 %i.wl, 127
  br i1 %i.wn, label %_ZN4pbrt7FastExpEf.exit.1.i143.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.wo = and i32 %i.wi, -2139095041
  %i.wp = shl nsw i32 %i.wl, 23
  %i.wq = add nsw i32 %i.wp, 1065353216
  %i.wr = or i32 %i.wq, %i.wo
  %i.ws = bitcast i32 %i.wr to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i143.i.i

_ZN4pbrt7FastExpEf.exit.1.i143.i.i:               ; preds = %bb.bf, %bb.be, %_ZN4pbrt7FastExpEf.exit.i141.i.i
  %.0.i.1.i144.i.i = phi float [ %i.ws, %bb.bf ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i141.i.i ], [ +inf, %bb.be ]
  %i.wt = fmul float %i.vh, f0x3FB8AA3B           ; 2 uses
  %i.wu = call noundef float @llvm.floor.f32(float %i.wt) ; 2 uses
  %i.wv = fsub float %i.wt, %i.wu                 ; 3 uses
  %i.ww = fptosi float %i.wu to i32
  %i.wx = call noundef float @llvm.fma.f32(float %i.wv, float f0x3DA00AC9, float f0x3E679A0B)
  %i.wy = call noundef float @llvm.fma.f32(float %i.wv, float %i.wx, float f0x3F321004)
  %i.wz = call noundef float @llvm.fma.f32(float %i.wv, float %i.wy, float 1.000000e+00)
  %i.xa = bitcast float %i.wz to i32              ; 2 uses
  %i.xb = lshr i32 %i.xa, 23
  %i.xc = add i32 %i.ww, -127
  %i.xd = add i32 %i.xc, %i.xb                    ; 3 uses
  %i.xe = icmp slt i32 %i.xd, -126
  br i1 %i.xe, label %_ZN4pbrt7FastExpEf.exit.2.i145.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i143.i.i
  %i.xf = icmp sgt i32 %i.xd, 127
  br i1 %i.xf, label %_ZN4pbrt7FastExpEf.exit.2.i145.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.xg = and i32 %i.xa, -2139095041
  %i.xh = shl nsw i32 %i.xd, 23
  %i.xi = add nsw i32 %i.xh, 1065353216
  %i.xj = or i32 %i.xi, %i.xg
  %i.xk = bitcast i32 %i.xj to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i145.i.i

_ZN4pbrt7FastExpEf.exit.2.i145.i.i:               ; preds = %bb.bh, %bb.bg, %_ZN4pbrt7FastExpEf.exit.1.i143.i.i
  %.0.i.2.i146.i.i = phi float [ %i.xk, %bb.bh ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i143.i.i ], [ +inf, %bb.bg ]
  %i.xl = fmul float %i.vi, f0x3FB8AA3B           ; 2 uses
  %i.xm = call noundef float @llvm.floor.f32(float %i.xl) ; 2 uses
  %i.xn = fsub float %i.xl, %i.xm                 ; 3 uses
  %i.xo = fptosi float %i.xm to i32
  %i.xp = call noundef float @llvm.fma.f32(float %i.xn, float f0x3DA00AC9, float f0x3E679A0B)
  %i.xq = call noundef float @llvm.fma.f32(float %i.xn, float %i.xp, float f0x3F321004)
  %i.xr = call noundef float @llvm.fma.f32(float %i.xn, float %i.xq, float 1.000000e+00)
  %i.xs = bitcast float %i.xr to i32              ; 2 uses
  %i.xt = lshr i32 %i.xs, 23
  %i.xu = add i32 %i.xo, -127
  %i.xv = add i32 %i.xu, %i.xt                    ; 3 uses
  %i.xw = icmp slt i32 %i.xv, -126
  br i1 %i.xw, label %.thread.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i145.i.i
  %i.xx = icmp sgt i32 %i.xv, 127
  br i1 %i.xx, label %.thread.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.xy = and i32 %i.xs, -2139095041
  %i.xz = shl nsw i32 %i.xv, 23
  %i.ya = add nsw i32 %i.xz, 1065353216
  %i.yb = or i32 %i.ya, %i.xy
  %i.yc = bitcast i32 %i.yb to float
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bj, %bb.bi, %_ZN4pbrt7FastExpEf.exit.2.i145.i.i
  %.0.i.3.i147.i.i = phi float [ %i.yc, %bb.bj ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2.i145.i.i ], [ +inf, %bb.bi ]
  %i.yd = insertelement <2 x float> poison, float %.0.i.i142.i.i, i64 0
  %i.ye = insertelement <2 x float> %i.yd, float %.0.i.1.i144.i.i, i64 1
  %i.yf = fmul <2 x float> %.sroa.0169.1274.i.i, %i.ye
  %i.yg = insertelement <2 x float> poison, float %.0.i.2.i146.i.i, i64 0
  %i.yh = insertelement <2 x float> %i.yg, float %.0.i.3.i147.i.i, i64 1
  %i.yi = fmul <2 x float> %.sroa.21.1275.i.i, %i.yh
  br label %bb.bl

bb.bk:                                            ; preds = %bb.ba
  %i.yj = load i8, ptr %i.no, align 4, !tbaa !220, !range !115, !noundef !44
  %i.yk = trunc nuw i8 %i.yj to i1
  br i1 %i.yk, label %.lr.ph.i.i, label %.noexc97.i.i

bb.bl:                                            ; preds = %.thread.i.i, %bb.am
  %.sroa.0169.4.i.i = phi <2 x float> [ %i.on, %bb.am ], [ %i.yf, %.thread.i.i ] ; 2 uses
  %.sroa.21.4.i.i = phi <2 x float> [ %i.oo, %bb.am ], [ %i.yi, %.thread.i.i ] ; 2 uses
  %.2.i.i = phi float [ %.054280.i43.i, %bb.am ], [ %.sroa.speculated.i.i.i20, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @_ZN4pbrt19DDAMajorantIterator4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.221") align 4 %18, ptr noundef nonnull align 8 dereferenceable(92) %16)
  %i.yl = load i8, ptr %i.no, align 4, !tbaa !220, !range !115, !noundef !44
  %i.ym = trunc nuw i8 %i.yl to i1
  br i1 %i.ym, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_10GridMediumEEEDaSH_.exit"

"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_10GridMediumEEEDaSH_.exit": ; preds = %bb.bl, %bb.ba, %bb.al
  %.sroa.0224.2.i.i = phi <2 x float> [ splat (float 1.000000e+00), %bb.ba ], [ splat (float 1.000000e+00), %bb.al ], [ %.sroa.0169.4.i.i, %bb.bl ]
  %.sroa.4226.2.i.i = phi <2 x float> [ splat (float 1.000000e+00), %bb.ba ], [ splat (float 1.000000e+00), %bb.al ], [ %.sroa.21.4.i.i, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_17HomogeneousMediumEEEDaSH_.exit"

bb.bm:                                            ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i63 = load float, ptr %.sroa.4.0..sroa_idx.i62, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.5.0.copyload.i65 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i64, align 4 ; 3 uses
  %.sroa.9.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.9.0.copyload.i67 = load float, ptr %.sroa.9.0..sroa_idx.i66, align 4 ; 3 uses
  %.sroa.12.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.12.sroa.0.0.copyload.i69 = load float, ptr %.sroa.12.0..sroa_idx.i68, align 8
  %i.yn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.yo = load i64, ptr %i.yn, align 8, !tbaa !65 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !787, !nonnull !44, !align !182
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !53
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !788, !nonnull !44, !align !182
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !53
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !789, !nonnull !44, !align !45 ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !790, !nonnull !44, !align !182 ; 4 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !791, !nonnull !44, !align !45 ; 4 uses
  %.sroa.018.0.copyload.i70 = load ptr, ptr %i.za, align 8, !tbaa !793 ; 6 uses
  %.sroa.2.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %.sroa.2.0.copyload.i72 = load ptr, ptr %.sroa.2.0..sroa_idx.i71, align 8, !tbaa !793 ; 4 uses
  %.sroa.319.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.za, i64 16
  %.sroa.319.0.copyload.i74 = load ptr, ptr %.sroa.319.0..sroa_idx.i73, align 8, !tbaa !793 ; 2 uses
  %.sroa.420.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.za, i64 24
  %.sroa.420.0.copyload.i76 = load ptr, ptr %.sroa.420.0..sroa_idx.i75, align 8, !tbaa !214 ; 3 uses
  %i.zb = fmul <2 x float> %.sroa.5.0.copyload.i65, %.sroa.5.0.copyload.i65 ; 2 uses
  %shift369 = shufflevector <2 x float> %i.zb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop370 = fadd <2 x float> %i.zb, %shift369
  %i.zc = extractelement <2 x float> %foldExtExtBinop370, i64 0
  %i.zd = fmul float %.sroa.9.0.copyload.i67, %.sroa.9.0.copyload.i67
  %i.ze = fadd float %i.zd, %i.zc
  %sqrt.i.i.i79 = tail call noundef float @llvm.sqrt.f32(float %i.ze) ; 3 uses
  %i.zf = fmul float %i.yr, %sqrt.i.i.i79
  %i.zg = load <2 x float>, ptr %i.g, align 8     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.zh = insertelement <2 x float> poison, float %sqrt.i.i.i79, i64 0
  %i.zi = shufflevector <2 x float> %i.zh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zj = fdiv <2 x float> %.sroa.5.0.copyload.i65, %i.zi ; 2 uses
  %i.zk = fdiv float %.sroa.9.0.copyload.i67, %sqrt.i.i.i79 ; 2 uses
  %i.zl = and i64 %i.yo, 144115188075855871
  %i.zm = inttoptr i64 %i.zl to ptr               ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store <2 x float> %i.zg, ptr %13, align 8
  %.sroa.4.0..sroa_idx4.i83 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float %.sroa.4.0.copyload.i63, ptr %.sroa.4.0..sroa_idx4.i83, align 8
  %.sroa.5.0..sroa_idx6.i84 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store <2 x float> %i.zj, ptr %.sroa.5.0..sroa_idx6.i84, align 4
  %.sroa.9.0..sroa_idx9.i85 = getelementptr inbounds nuw i8, ptr %13, i64 20
  store float %i.zk, ptr %.sroa.9.0..sroa_idx9.i85, align 4
  %.sroa.12.0..sroa_idx11.i86 = getelementptr inbounds nuw i8, ptr %13, i64 24
  store float %.sroa.12.sroa.0.0.copyload.i69, ptr %.sroa.12.0..sroa_idx11.i86, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 %i.yo, ptr %i.zn, align 8, !tbaa !65
  call void @_ZNK4pbrt13RGBGridMedium9SampleRayENS_3RayEfRKNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::DDAMajorantIterator") align 8 %12, ptr noundef nonnull align 8 dereferenceable(408) %i.zm, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(40) %13, float noundef %i.zf, ptr noundef nonnull align 4 dereferenceable(32) %i.yy)
  %i.zo = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.zr = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i104.i.i87 = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zm, i64 88
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zm, i64 120
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zm, i64 124
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zm, i64 128
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zm, i64 132
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zm, i64 136
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zm, i64 144
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zm, i64 148
  %.sroa.26.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zm, i64 12
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zm, i64 20
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zm, i64 328 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zm, i64 264
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zm, i64 216
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zm, i64 320
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zm, i64 272
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zm, i64 152
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zm, i64 200
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zm, i64 208
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload.i70, i64 8
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i72, i64 8
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload.i76, i64 8
  %i.aao = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @_ZN4pbrt19DDAMajorantIterator4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.221") align 4 %14, ptr noundef nonnull align 8 dereferenceable(92) %12)
  %i.aap = load i8, ptr %i.zo, align 4, !tbaa !220, !range !115, !noundef !44
  %i.aaq = trunc nuw i8 %i.aap to i1
  br i1 %i.aaq, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i90, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_13RGBGridMediumEEEDaSH_.exit"

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i90: ; preds = %bb.bm, %.thread.i.i96
  %.sroa.0176.0284.i50.i = phi <2 x float> [ %.sroa.0176.4.i.i, %.thread.i.i96 ], [ splat (float 1.000000e+00), %bb.bm ] ; 2 uses
  %.sroa.21.0285.i49.i = phi <2 x float> [ %.sroa.21.4.i.i97, %.thread.i.i96 ], [ splat (float 1.000000e+00), %bb.bm ] ; 2 uses
  %.054286.i48.i = phi float [ %.2.i.i98, %.thread.i.i96 ], [ %i.yu, %bb.bm ] ; 2 uses
  %i.aar = load float, ptr %i.zp, align 4, !tbaa !53
  %i.aas = fcmp oeq float %i.aar, 0.000000e+00
  br i1 %i.aas, label %bb.bn, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i

bb.bn:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i90
  %i.aat = load float, ptr %i.zr, align 4, !tbaa !222
  %i.aau = load float, ptr %14, align 4, !tbaa !223
  %i.aav = fsub float %i.aat, %i.aau              ; 2 uses
  %i.aaw = call float @llvm.fabs.f32(float %i.aav)
  %i.aax = fcmp oeq float %i.aaw, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %.neg249.i.i = fneg float %i.aav
  %i.aay = select i1 %i.aax, float f0xFF7FFFFF, float %.neg249.i.i
  %.sroa.0.0.copyload.i.i.i.i139 = load <2 x float>, ptr %i.zp, align 4
  %.sroa.6.0.copyload.i.i.i.i140 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i87, align 4, !tbaa !99
  %i.aaz = insertelement <2 x float> poison, float %i.aay, i64 0
  %i.aba = shufflevector <2 x float> %i.aaz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.abb = fmul <2 x float> %.sroa.0.0.copyload.i.i.i.i139, %i.aba
  %i.abc = fmul <2 x float> %i.aba, %.sroa.6.0.copyload.i.i.i.i140
  store <2 x float> %i.abb, ptr %15, align 8
  store <2 x float> %i.abc, ptr %i.aao, align 8
  %i.abd = call { <2 x float>, <2 x float> } @_ZN4pbrt7FastExpERKNS_15SampledSpectrumE(ptr noundef nonnull align 4 dereferenceable(16) %15) ; 2 uses
  %i.abe = extractvalue { <2 x float>, <2 x float> } %i.abd, 0
  %i.abf = extractvalue { <2 x float>, <2 x float> } %i.abd, 1
  %i.abg = fmul <2 x float> %.sroa.0176.0284.i50.i, %i.abe
  %i.abh = fmul <2 x float> %.sroa.21.0285.i49.i, %i.abf
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.thread.i.i96

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i: ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i90
  %i.abi = load float, ptr %14, align 4, !tbaa !223
  br label %bb.bo

bb.bo:                                            ; preds = %bb.ch, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i
  %.sroa.0176.1.i.i = phi <2 x float> [ %.sroa.0176.0284.i50.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i ], [ splat (float 1.000000e+00), %bb.ch ] ; 2 uses
  %.sroa.21.1.i.i = phi <2 x float> [ %.sroa.21.0285.i49.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i ], [ splat (float 1.000000e+00), %bb.ch ] ; 2 uses
  %.073.i.i91 = phi float [ %i.abi, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i ], [ %i.abp, %bb.ch ] ; 3 uses
  %.1.i.i92 = phi float [ %.054286.i48.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i ], [ %.sroa.speculated.i.i.i94, %bb.ch ]
  %i.abj = load i8, ptr %i.zo, align 4, !tbaa !220, !range !115, !noundef !44
  %i.abk = trunc nuw i8 %i.abj to i1
  br i1 %i.abk, label %bb.bp, label %.noexc97.i.i93

.noexc97.i.i93:                                   ; preds = %bb.bo
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef 235, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(4) @.str.22) #29
  unreachable

bb.bp:                                            ; preds = %bb.bo
  %i.abl = load float, ptr %i.zp, align 4, !tbaa !53
  %i.abm = fsub float 1.000000e+00, %.1.i.i92
  %i.abn = call noundef float @logf(float noundef %i.abm) #25
  %i.abo = fdiv float %i.abn, %i.abl
  %i.abp = fsub float %.073.i.i91, %i.abo         ; 5 uses
  %i.abq = load i64, ptr %i.yw, align 8, !tbaa !211 ; 4 uses
  %i.abr = mul i64 %i.abq, 6364136223846793005
  %i.abs = load i64, ptr %i.zq, align 8, !tbaa !210
  %i.abt = add i64 %i.abr, %i.abs
  store i64 %i.abt, ptr %i.yw, align 8, !tbaa !211
  %i.abu = lshr i64 %i.abq, 45
  %i.abv = lshr i64 %i.abq, 27
  %i.abw = xor i64 %i.abu, %i.abv
  %i.abx = trunc i64 %i.abw to i32                ; 2 uses
  %i.aby = lshr i64 %i.abq, 59
  %i.abz = trunc nuw nsw i64 %i.aby to i32
  %i.aca = call noundef i32 @llvm.fshr.i32(i32 %i.abx, i32 %i.abx, i32 %i.abz)
  %i.acb = uitofp i32 %i.aca to float
  %i.acc = fmul nnan float %i.acb, f0x2F800000    ; 2 uses
  %i.acd = fcmp olt float %i.acc, f0x3F7FFFFF
  %.sroa.speculated.i.i.i94 = select i1 %i.acd, float %i.acc, float f0x3F7FFFFF ; 2 uses
  %i.ace = load float, ptr %i.zr, align 4, !tbaa !222 ; 2 uses
  %i.acf = fcmp olt float %i.abp, %i.ace
  br i1 %i.acf, label %bb.bq, label %bb.ci

bb.bq:                                            ; preds = %bb.bp
  %i.acg = fsub float %i.abp, %.073.i.i91
  %i.ach = fneg float %i.acg                      ; 4 uses
  %.sroa.0.0.copyload.i.i103.i.i99 = load <2 x float>, ptr %i.zp, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i105.i.i100 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i87, align 4, !tbaa !99 ; 2 uses
  %.sroa.0.0.vec.extract.i.i106.i.i101 = extractelement <2 x float> %.sroa.0.0.copyload.i.i103.i.i99, i64 0
  %i.aci = fmul float %.sroa.0.0.vec.extract.i.i106.i.i101, %i.ach
  %.sroa.0.4.vec.extract.i.i108.i.i102 = extractelement <2 x float> %.sroa.0.0.copyload.i.i103.i.i99, i64 1
  %i.acj = fmul float %.sroa.0.4.vec.extract.i.i108.i.i102, %i.ach
  %.sroa.6.8.vec.extract.i.i110.i.i103 = extractelement <2 x float> %.sroa.6.0.copyload.i.i105.i.i100, i64 0
  %i.ack = fmul float %.sroa.6.8.vec.extract.i.i110.i.i103, %i.ach
  %.sroa.6.12.vec.extract.i.i112.i.i104 = extractelement <2 x float> %.sroa.6.0.copyload.i.i105.i.i100, i64 1
  %i.acl = fmul float %.sroa.6.12.vec.extract.i.i112.i.i104, %i.ach
  %i.acm = fmul float %i.aci, f0x3FB8AA3B         ; 2 uses
  %i.acn = call noundef float @llvm.floor.f32(float %i.acm) ; 2 uses
  %i.aco = fsub float %i.acm, %i.acn              ; 3 uses
  %i.acp = fptosi float %i.acn to i32
  %i.acq = call noundef float @llvm.fma.f32(float %i.aco, float f0x3DA00AC9, float f0x3E679A0B)
  %i.acr = call noundef float @llvm.fma.f32(float %i.aco, float %i.acq, float f0x3F321004)
  %i.acs = call noundef float @llvm.fma.f32(float %i.aco, float %i.acr, float 1.000000e+00)
  %i.act = bitcast float %i.acs to i32            ; 2 uses
  %i.acu = lshr i32 %i.act, 23
  %i.acv = add i32 %i.acp, -127
  %i.acw = add i32 %i.acv, %i.acu                 ; 3 uses
  %i.acx = icmp slt i32 %i.acw, -126
  br i1 %i.acx, label %_ZN4pbrt7FastExpEf.exit.i.i.i105, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.acy = icmp sgt i32 %i.acw, 127
  br i1 %i.acy, label %_ZN4pbrt7FastExpEf.exit.i.i.i105, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.acz = and i32 %i.act, -2139095041
  %i.ada = shl nsw i32 %i.acw, 23
  %i.adb = add nsw i32 %i.ada, 1065353216
  %i.adc = or i32 %i.adb, %i.acz
  %i.add = bitcast i32 %i.adc to float
  br label %_ZN4pbrt7FastExpEf.exit.i.i.i105

_ZN4pbrt7FastExpEf.exit.i.i.i105:                 ; preds = %bb.bs, %bb.br, %bb.bq
  %.0.i.i.i.i106 = phi float [ %i.add, %bb.bs ], [ 0.000000e+00, %bb.bq ], [ +inf, %bb.br ]
  %i.ade = fmul float %i.acj, f0x3FB8AA3B         ; 2 uses
  %i.adf = call noundef float @llvm.floor.f32(float %i.ade) ; 2 uses
  %i.adg = fsub float %i.ade, %i.adf              ; 3 uses
  %i.adh = fptosi float %i.adf to i32
  %i.adi = call noundef float @llvm.fma.f32(float %i.adg, float f0x3DA00AC9, float f0x3E679A0B)
  %i.adj = call noundef float @llvm.fma.f32(float %i.adg, float %i.adi, float f0x3F321004)
  %i.adk = call noundef float @llvm.fma.f32(float %i.adg, float %i.adj, float 1.000000e+00)
  %i.adl = bitcast float %i.adk to i32            ; 2 uses
  %i.adm = lshr i32 %i.adl, 23
  %i.adn = add i32 %i.adh, -127
  %i.ado = add i32 %i.adn, %i.adm                 ; 3 uses
  %i.adp = icmp slt i32 %i.ado, -126
  br i1 %i.adp, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i107, label %bb.bt

bb.bt:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i.i.i105
  %i.adq = icmp sgt i32 %i.ado, 127
  br i1 %i.adq, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i107, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.adr = and i32 %i.adl, -2139095041
  %i.ads = shl nsw i32 %i.ado, 23
  %i.adt = add nsw i32 %i.ads, 1065353216
  %i.adu = or i32 %i.adt, %i.adr
  %i.adv = bitcast i32 %i.adu to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i.i.i107

_ZN4pbrt7FastExpEf.exit.1.i.i.i107:               ; preds = %bb.bu, %bb.bt, %_ZN4pbrt7FastExpEf.exit.i.i.i105
  %.0.i.1.i.i.i108 = phi float [ %i.adv, %bb.bu ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i.i.i105 ], [ +inf, %bb.bt ]
  %i.adw = fmul float %i.ack, f0x3FB8AA3B         ; 2 uses
  %i.adx = call noundef float @llvm.floor.f32(float %i.adw) ; 2 uses
  %i.ady = fsub float %i.adw, %i.adx              ; 3 uses
  %i.adz = fptosi float %i.adx to i32
  %i.aea = call noundef float @llvm.fma.f32(float %i.ady, float f0x3DA00AC9, float f0x3E679A0B)
  %i.aeb = call noundef float @llvm.fma.f32(float %i.ady, float %i.aea, float f0x3F321004)
  %i.aec = call noundef float @llvm.fma.f32(float %i.ady, float %i.aeb, float 1.000000e+00)
  %i.aed = bitcast float %i.aec to i32            ; 2 uses
  %i.aee = lshr i32 %i.aed, 23
  %i.aef = add i32 %i.adz, -127
  %i.aeg = add i32 %i.aef, %i.aee                 ; 3 uses
  %i.aeh = icmp slt i32 %i.aeg, -126
  br i1 %i.aeh, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i109, label %bb.bv

bb.bv:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i.i.i107
  %i.aei = icmp sgt i32 %i.aeg, 127
  br i1 %i.aei, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i109, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aej = and i32 %i.aed, -2139095041
  %i.aek = shl nsw i32 %i.aeg, 23
  %i.ael = add nsw i32 %i.aek, 1065353216
  %i.aem = or i32 %i.ael, %i.aej
  %i.aen = bitcast i32 %i.aem to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i.i.i109

_ZN4pbrt7FastExpEf.exit.2.i.i.i109:               ; preds = %bb.bw, %bb.bv, %_ZN4pbrt7FastExpEf.exit.1.i.i.i107
  %.0.i.2.i.i.i110 = phi float [ %i.aen, %bb.bw ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i.i.i107 ], [ +inf, %bb.bv ]
  %i.aeo = fmul float %i.acl, f0x3FB8AA3B         ; 2 uses
  %i.aep = call noundef float @llvm.floor.f32(float %i.aeo) ; 2 uses
  %i.aeq = fsub float %i.aeo, %i.aep              ; 3 uses
  %i.aer = fptosi float %i.aep to i32
  %i.aes = call noundef float @llvm.fma.f32(float %i.aeq, float f0x3DA00AC9, float f0x3E679A0B)
  %i.aet = call noundef float @llvm.fma.f32(float %i.aeq, float %i.aes, float f0x3F321004)
  %i.aeu = call noundef float @llvm.fma.f32(float %i.aeq, float %i.aet, float 1.000000e+00)
  %i.aev = bitcast float %i.aeu to i32            ; 2 uses
  %i.aew = lshr i32 %i.aev, 23
  %i.aex = add i32 %i.aer, -127
  %i.aey = add i32 %i.aex, %i.aew                 ; 3 uses
  %i.aez = icmp slt i32 %i.aey, -126
  br i1 %i.aez, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i.i.i109
  %i.afa = icmp sgt i32 %i.aey, 127
  br i1 %i.afa, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.afb = and i32 %i.aev, -2139095041
  %i.afc = shl nsw i32 %i.aey, 23
  %i.afd = add nsw i32 %i.afc, 1065353216
  %i.afe = or i32 %i.afd, %i.afb
  %i.aff = bitcast i32 %i.afe to float
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %_ZN4pbrt7FastExpEf.exit.2.i.i.i109
  %.0.i.3.i.i.i111 = phi float [ %i.aff, %bb.by ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2.i.i.i109 ], [ +inf, %bb.bx ]
  %i.afg = shufflevector <2 x float> %.sroa.0176.1.i.i, <2 x float> %.sroa.21.1.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.afh = insertelement <4 x float> poison, float %.0.i.i.i.i106, i64 0
  %i.afi = insertelement <4 x float> %i.afh, float %.0.i.1.i.i.i108, i64 1
  %i.afj = insertelement <4 x float> %i.afi, float %.0.i.2.i.i.i110, i64 2
  %i.afk = insertelement <4 x float> %i.afj, float %.0.i.3.i.i.i111, i64 3
  %i.afl = fmul <4 x float> %i.afg, %i.afk        ; 2 uses
  %i.afm = insertelement <2 x float> poison, float %i.abp, i64 0
  %i.afn = shufflevector <2 x float> %i.afm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afo = fmul <2 x float> %i.zj, %i.afn
  %i.afp = fmul float %i.zk, %i.abp
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.afq = load float, ptr %i.zt, align 4, !tbaa !53, !noalias !795
  %i.afr = load float, ptr %i.zu, align 4, !tbaa !53, !noalias !795
  %i.afs = load float, ptr %i.zv, align 4, !tbaa !53, !noalias !795
  %i.aft = load float, ptr %i.zw, align 4, !tbaa !53, !noalias !795
  %i.afu = load float, ptr %i.zy, align 4, !tbaa !53, !noalias !795
  %i.afv = load float, ptr %i.zz, align 4, !tbaa !53, !noalias !795
  %i.afw = fadd <2 x float> %i.zg, %i.afo         ; 5 uses
  %i.afx = fadd float %.sroa.4.0.copyload.i63, %i.afp ; 3 uses
  %i.afy = load <8 x float>, ptr %i.zs, align 4, !tbaa !53, !noalias !795 ; 4 uses
  %i.afz = load <2 x float>, ptr %i.zx, align 4, !tbaa !53, !noalias !795
  %i.aga = fmul <2 x float> %i.afw, %i.afz        ; 2 uses
  %shift372 = shufflevector <2 x float> %i.aga, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop373 = fadd <2 x float> %i.aga, %shift372
  %i.agb = extractelement <2 x float> %foldExtExtBinop373, i64 0
  %i.agc = fmul float %i.afx, %i.afu
  %i.agd = fadd float %i.agc, %i.afv
  %i.age = fadd float %i.agb, %i.agd              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !795
  store float %i.age, ptr %i.e, align 4, !tbaa !53, !noalias !795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25, !noalias !795
  store i32 0, ptr %i.f, align 4, !tbaa !76, !noalias !795
  %i.agf = fcmp une float %i.age, 0.000000e+00
  br i1 %i.agf, label %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i, label %.noexc116.i.i

.noexc116.i.i:                                    ; preds = %bb.bz
  call void @_ZN4pbrt8LogFatalIJRA3_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 393, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, ptr noundef nonnull align 1 dereferenceable(2) @.str.26, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(2) @.str.26, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #29
  unreachable

_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i: ; preds = %bb.bz
  %i.agg = shufflevector <2 x float> %i.afw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.agh = extractelement <2 x float> %i.afw, i64 0
  %i.agi = fmul float %i.agh, %i.afq
  %i.agj = extractelement <2 x float> %i.afw, i64 1
  %i.agk = fmul float %i.agj, %i.afr
  %i.agl = fadd float %i.agi, %i.agk
  %i.agm = fmul float %i.afx, %i.afs
  %i.agn = fadd float %i.agm, %i.aft
  %i.ago = fadd float %i.agl, %i.agn              ; 2 uses
  %i.agp = shufflevector <8 x float> %i.afy, <8 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.agq = fmul <2 x float> %i.agg, %i.agp
  %i.agr = shufflevector <8 x float> %i.afy, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.ags = fmul <2 x float> %i.afw, %i.agr
  %i.agt = insertelement <2 x float> poison, float %i.afx, i64 0
  %i.agu = shufflevector <2 x float> %i.agt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agv = shufflevector <8 x float> %i.afy, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.agw = fmul <2 x float> %i.agu, %i.agv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25, !noalias !795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !795
  %i.agx = fcmp oeq float %i.age, 1.000000e+00    ; 2 uses
  %i.agy = fdiv float %i.ago, %i.age
  %.sroa.493.0.i.i.i.i = select i1 %i.agx, float %i.ago, float %i.agy
  %.sroa.05.0.copyload.i.i.i.i = load <2 x float>, ptr %i.zm, align 4, !noalias !795 ; 3 uses
  %.sroa.26.0.copyload.i.i.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 4, !noalias !795 ; 3 uses
  %.sroa.03.0.vec.extract.i.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i.i, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i.i, i64 1 ; 2 uses
  %i.agz = fadd <2 x float> %i.agq, %i.ags
  %i.aha = shufflevector <8 x float> %i.afy, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ahb = fadd <2 x float> %i.agw, %i.aha
  %i.ahc = fadd <2 x float> %i.agz, %i.ahb        ; 2 uses
  %i.ahd = insertelement <2 x float> poison, float %i.age, i64 0
  %i.ahe = shufflevector <2 x float> %i.ahd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahf = fdiv <2 x float> %i.ahc, %i.ahe
  %i.ahg = insertelement <2 x i1> poison, i1 %i.agx, i64 0
  %i.ahh = shufflevector <2 x i1> %i.ahg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ahi = select <2 x i1> %i.ahh, <2 x float> %i.ahc, <2 x float> %i.ahf
  %i.ahj = fsub <2 x float> %i.ahi, %.sroa.05.0.copyload.i.i.i.i ; 3 uses
  %i.ahk = fsub float %.sroa.493.0.i.i.i.i, %.sroa.26.0.copyload.i.i.i.i ; 2 uses
  %i.ahl = load float, ptr %i.aaa, align 4, !tbaa !161, !noalias !795 ; 2 uses
  %i.ahm = fcmp ogt float %i.ahl, %.sroa.03.0.vec.extract.i.i.i.i.i
  %i.ahn = fsub float %i.ahl, %.sroa.03.0.vec.extract.i.i.i.i.i
  %i.aho = extractelement <2 x float> %i.ahj, i64 0
  %i.ahp = fdiv float %i.aho, %i.ahn
  %.sroa.09.0.vec.insert.i.i.i.i = insertelement <2 x float> %i.ahj, float %i.ahp, i64 0
  %.sroa.09.0.i.i.i.i = select i1 %i.ahm, <2 x float> %.sroa.09.0.vec.insert.i.i.i.i, <2 x float> %i.ahj ; 3 uses
  %i.ahq = load float, ptr %i.aab, align 4, !tbaa !162, !noalias !795 ; 2 uses
  %i.ahr = fcmp ogt float %i.ahq, %.sroa.03.4.vec.extract.i.i.i.i.i
  %i.ahs = fsub float %i.ahq, %.sroa.03.4.vec.extract.i.i.i.i.i
  %.sroa.09.4.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.09.0.i.i.i.i, i64 1
  %i.aht = fdiv float %.sroa.09.4.vec.extract.i.i.i.i, %i.ahs
  %.sroa.09.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.09.0.i.i.i.i, float %i.aht, i64 1
  %.sroa.09.1.i.i.i.i = select i1 %i.ahr, <2 x float> %.sroa.09.4.vec.insert.i.i.i.i, <2 x float> %.sroa.09.0.i.i.i.i ; 3 uses
  %i.ahu = load float, ptr %i.aac, align 4, !tbaa !163, !noalias !795 ; 2 uses
  %i.ahv = fcmp ogt float %i.ahu, %.sroa.26.0.copyload.i.i.i.i
  %i.ahw = fsub float %i.ahu, %.sroa.26.0.copyload.i.i.i.i
  %i.ahx = fdiv float %i.ahk, %i.ahw
  %.sroa.6.0.i.i.i.i = select i1 %i.ahv, float %i.ahx, float %i.ahk ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.yy, i64 32, i1 false), !noalias !795
  %i.ahy = load float, ptr %i.aad, align 8, !tbaa !799, !noalias !795 ; 2 uses
  %i.ahz = load i8, ptr %i.aae, align 8, !tbaa !800, !range !115, !noalias !795, !noundef !44
  %i.aia = trunc nuw i8 %i.ahz to i1
  br i1 %i.aia, label %_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_20RGBUnboundedSpectrumEEEEptEv.exit.i.i.i, label %bb.ca

_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_20RGBUnboundedSpectrumEEEEptEv.exit.i.i.i: ; preds = %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 4 dereferenceable(32) %i.yy, i64 32, i1 false), !noalias !795
  %i.aib = call { <2 x float>, <2 x float> } @_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaS6_T_(ptr noundef nonnull align 8 dereferenceable(44) %i.aaf, <2 x float> %.sroa.09.1.i.i.i.i, float %.sroa.6.0.i.i.i.i, ptr noundef nonnull byval(%class.anon.237) align 8 %10) ; 2 uses
  %i.aic = extractvalue { <2 x float>, <2 x float> } %i.aib, 0
  %i.aid = extractvalue { <2 x float>, <2 x float> } %i.aib, 1
  %.pre.i.i.i = load float, ptr %i.aad, align 8, !tbaa !799, !noalias !795
  br label %bb.ca

bb.ca:                                            ; preds = %_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_20RGBUnboundedSpectrumEEEEptEv.exit.i.i.i, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i
  %i.aie = phi float [ %.pre.i.i.i, %_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_20RGBUnboundedSpectrumEEEEptEv.exit.i.i.i ], [ %i.ahy, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i ]
  %.sroa.687.0.i.i.i = phi <2 x float> [ %i.aid, %_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_20RGBUnboundedSpectrumEEEEptEv.exit.i.i.i ], [ splat (float 1.000000e+00), %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i ]
  %.sroa.085.0.i.i.i = phi <2 x float> [ %i.aic, %_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_20RGBUnboundedSpectrumEEEEptEv.exit.i.i.i ], [ splat (float 1.000000e+00), %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i ]
  %i.aif = load i8, ptr %i.aag, align 8, !tbaa !800, !range !115, !noalias !795, !noundef !44
  %i.aig = trunc nuw i8 %i.aif to i1
  br i1 %i.aig, label %_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_20RGBUnboundedSpectrumEEEEptEv.exit53.i.i.i, label %bb.cb

_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_20RGBUnboundedSpectrumEEEEptEv.exit53.i.i.i: ; preds = %bb.ca
  %i.aih = call { <2 x float>, <2 x float> } @_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaS6_T_(ptr noundef nonnull align 8 dereferenceable(44) %i.aah, <2 x float> %.sroa.09.1.i.i.i.i, float %.sroa.6.0.i.i.i.i, ptr noundef nonnull byval(%class.anon.237) align 8 %.sroa.017.i.i.i) ; 2 uses
  %i.aii = extractvalue { <2 x float>, <2 x float> } %i.aih, 0
  %i.aij = extractvalue { <2 x float>, <2 x float> } %i.aih, 1
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_20RGBUnboundedSpectrumEEEEptEv.exit53.i.i.i, %bb.ca
  %.sroa.683.0.i.i.i = phi <2 x float> [ %i.aij, %_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_20RGBUnboundedSpectrumEEEEptEv.exit53.i.i.i ], [ splat (float 1.000000e+00), %bb.ca ]
  %.sroa.081.0.i.i.i = phi <2 x float> [ %i.aii, %_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_20RGBUnboundedSpectrumEEEEptEv.exit53.i.i.i ], [ splat (float 1.000000e+00), %bb.ca ]
  %i.aik = load i8, ptr %i.aaj, align 8, !tbaa !801, !range !115, !noalias !795, !noundef !44
  %i.ail = trunc nuw i8 %i.aik to i1
  br i1 %i.ail, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.aim = load float, ptr %i.aak, align 8, !tbaa !802, !noalias !795
  %i.ain = fcmp ogt float %i.aim, 0.000000e+00
  br i1 %i.ain, label %_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_21RGBIlluminantSpectrumEEEEptEv.exit.i.i.i, label %bb.cd

_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_21RGBIlluminantSpectrumEEEEptEv.exit.i.i.i: ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 4 dereferenceable(32) %i.yy, i64 32, i1 false), !noalias !795
  %i.aio = call { <2 x float>, <2 x float> } @_ZNK4pbrt11SampledGridINS_21RGBIlluminantSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaS6_T_(ptr noundef nonnull align 8 dereferenceable(44) %i.aai, <2 x float> %.sroa.09.1.i.i.i.i, float %.sroa.6.0.i.i.i.i, ptr noundef nonnull byval(%class.anon.242) align 8 %11) ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNK4pstd8optionalIN4pbrt11SampledGridINS1_21RGBIlluminantSpectrumEEEEptEv.exit.i.i.i, %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.aip = load i8, ptr %i.zo, align 4, !tbaa !220, !range !115, !noundef !44
  %i.aiq = trunc nuw i8 %i.aip to i1
  br i1 %i.aiq, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit125.i.i, label %.noexc124.i.i

.noexc124.i.i:                                    ; preds = %bb.cd
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef 235, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(4) @.str.22) #29
  unreachable

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit125.i.i: ; preds = %bb.cd
  %.sroa.04.0.copyload.i.i112 = load <2 x float>, ptr %i.zp, align 4
  %.sroa.25.0.copyload.i.i113 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i87, align 4, !tbaa !99
  %i.air = insertelement <4 x float> poison, float %i.ahy, i64 0
  %i.ais = shufflevector <4 x float> %i.air, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ait = shufflevector <2 x float> %.sroa.085.0.i.i.i, <2 x float> %.sroa.687.0.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aiu = fmul <4 x float> %i.ais, %i.ait
  %i.aiv = insertelement <4 x float> poison, float %i.aie, i64 0
  %i.aiw = shufflevector <4 x float> %i.aiv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aix = shufflevector <2 x float> %.sroa.081.0.i.i.i, <2 x float> %.sroa.683.0.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aiy = fmul <4 x float> %i.aiw, %i.aix
  %23 = shufflevector <2 x float> %.sroa.04.0.copyload.i.i112, <2 x float> %.sroa.25.0.copyload.i.i113, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.aiz = fsub <4 x float> %23, %i.aiu
  %i.aja = fsub <4 x float> %i.aiz, %i.aiy        ; 2 uses
  %i.ajb = fcmp ogt <4 x float> %i.aja, zeroinitializer
  %i.ajc = select <4 x i1> %i.ajb, <4 x float> %i.aja, <4 x float> zeroinitializer
  %i.ajd = fmul <4 x float> %i.afl, %i.ajc
  %i.aje = load <4 x float>, ptr %.sroa.018.0.copyload.i70, align 4, !tbaa !53
  %i.ajf = fmul <4 x float> %i.afl, %23           ; 2 uses
  %i.ajg = shufflevector <4 x float> %i.ajf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ajh = fdiv <4 x float> %i.ajd, %i.ajg        ; 2 uses
  %i.aji = fmul <4 x float> %i.ajh, %i.aje
  store <4 x float> %i.aji, ptr %.sroa.018.0.copyload.i70, align 4, !tbaa !53
  %i.ajj = fdiv <4 x float> %i.ajf, %i.ajg
  %i.ajk = load <4 x float>, ptr %.sroa.2.0.copyload.i72, align 4, !tbaa !53
  %i.ajl = fmul <4 x float> %i.ajj, %i.ajk
  store <4 x float> %i.ajl, ptr %.sroa.2.0.copyload.i72, align 4, !tbaa !53
  %i.ajm = load <4 x float>, ptr %.sroa.319.0.copyload.i74, align 4, !tbaa !53
  %i.ajn = fmul <4 x float> %i.ajh, %i.ajm        ; 3 uses
  store <4 x float> %i.ajn, ptr %.sroa.319.0.copyload.i74, align 4, !tbaa !53
  %.sroa.0.0.copyload4.i103.i.i.i120 = load <2 x float>, ptr %.sroa.2.0.copyload.i72, align 4
  %.sroa.8.0.copyload.i105.i.i.i121 = load <2 x float>, ptr %i.aam, align 4, !tbaa !99
  %i.ajo = shufflevector <4 x float> %i.ajn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ajp = fadd <2 x float> %i.ajo, %.sroa.0.0.copyload4.i103.i.i.i120 ; 2 uses
  %i.ajq = shufflevector <4 x float> %i.ajn, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ajr = fadd <2 x float> %i.ajq, %.sroa.8.0.copyload.i105.i.i.i121 ; 2 uses
  %shift375 = shufflevector <2 x float> %i.ajp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop376 = fadd <2 x float> %i.ajp, %shift375
  %foldExtExtBinop378 = fadd <2 x float> %foldExtExtBinop376, %i.ajr
  %shift380 = shufflevector <2 x float> %i.ajr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop381 = fadd <2 x float> %shift380, %foldExtExtBinop378
  %i.ajs = extractelement <2 x float> %foldExtExtBinop381, i64 0
  %i.ajt = fmul float %i.ajs, 2.500000e-01        ; 3 uses
  %.sroa.0.0.copyload4.i116.i.i.i126 = load <2 x float>, ptr %.sroa.018.0.copyload.i70, align 4 ; 2 uses
  %.sroa.8.0.copyload.i118.i.i.i127 = load <2 x float>, ptr %i.aal, align 4 ; 3 uses
  %i.aju = insertelement <2 x float> poison, float %i.ajt, i64 0
  %i.ajv = shufflevector <2 x float> %i.aju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajw = fdiv <2 x float> %.sroa.0.0.copyload4.i116.i.i.i126, %i.ajv ; 2 uses
  %.sroa.8.8.vec.extract.i123.i.i.i130 = extractelement <2 x float> %.sroa.8.0.copyload.i118.i.i.i127, i64 0
  %i.ajx = fdiv float %.sroa.8.8.vec.extract.i123.i.i.i130, %i.ajt ; 2 uses
  %.sroa.8.12.vec.extract.i125.i.i.i131 = extractelement <2 x float> %.sroa.8.0.copyload.i118.i.i.i127, i64 1
  %i.ajy = fdiv float %.sroa.8.12.vec.extract.i125.i.i.i131, %i.ajt ; 2 uses
  %i.ajz = extractelement <2 x float> %i.ajw, i64 0 ; 2 uses
  %i.aka = extractelement <2 x float> %i.ajw, i64 1 ; 2 uses
  %i.akb = fcmp olt float %i.ajz, %i.aka
  %.sroa.speculated.i129.i.i.i132 = select i1 %i.akb, float %i.aka, float %i.ajz ; 2 uses
  %i.akc = fcmp olt float %.sroa.speculated.i129.i.i.i132, %i.ajx
  %.sroa.speculated.1.i130.i.i.i133 = select i1 %i.akc, float %i.ajx, float %.sroa.speculated.i129.i.i.i132 ; 2 uses
  %i.akd = fcmp olt float %.sroa.speculated.1.i130.i.i.i133, %i.ajy
  %.sroa.speculated.2.i131.i.i.i134 = select i1 %i.akd, float %i.ajy, float %.sroa.speculated.1.i130.i.i.i133
  %i.ake = fcmp olt float %.sroa.speculated.2.i131.i.i.i134, 5.000000e-02
  %i.akf = shufflevector <2 x float> %.sroa.0.0.copyload4.i116.i.i.i126, <2 x float> %.sroa.8.0.copyload.i118.i.i.i127, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br i1 %i.ake, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit125.i.i
  %i.akg = load i64, ptr %.sroa.420.0.copyload.i76, align 8, !tbaa !211 ; 4 uses
  %i.akh = mul i64 %i.akg, 6364136223846793005
  %i.aki = load i64, ptr %i.aan, align 8, !tbaa !210
  %i.akj = add i64 %i.akh, %i.aki
  store i64 %i.akj, ptr %.sroa.420.0.copyload.i76, align 8, !tbaa !211
  %i.akk = lshr i64 %i.akg, 45
  %i.akl = lshr i64 %i.akg, 27
  %i.akm = xor i64 %i.akk, %i.akl
  %i.akn = trunc i64 %i.akm to i32                ; 2 uses
  %i.ako = lshr i64 %i.akg, 59
  %i.akp = trunc nuw nsw i64 %i.ako to i32
  %i.akq = call noundef i32 @llvm.fshr.i32(i32 %i.akn, i32 %i.akn, i32 %i.akp)
  %i.akr = uitofp i32 %i.akq to float
  %i.aks = fmul nnan float %i.akr, f0x2F800000    ; 2 uses
  %i.akt = fcmp olt float %i.aks, f0x3F7FFFFF
  %.sroa.speculated.i132.i.i.i138 = select i1 %i.akt, float %i.aks, float f0x3F7FFFFF
  %i.aku = fcmp olt float %.sroa.speculated.i132.i.i.i138, 7.500000e-01
  br i1 %i.aku, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.018.0.copyload.i70, i8 0, i64 16, i1 false)
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.akv = fmul <4 x float> %i.akf, splat (float 4.000000e+00) ; 2 uses
  store <4 x float> %i.akv, ptr %.sroa.018.0.copyload.i70, align 4, !tbaa !53
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit125.i.i
  %i.akw = phi <4 x float> [ %i.akv, %bb.cg ], [ zeroinitializer, %bb.cf ], [ %i.akf, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit125.i.i ]
  %i.akx = fcmp une <4 x float> %i.akw, zeroinitializer
  %i.aky = bitcast <4 x i1> %i.akx to i4
  %.not418 = icmp eq i4 %i.aky, 0
  br i1 %.not418, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_13RGBGridMediumEEEDaSH_.exit", label %bb.bo

bb.ci:                                            ; preds = %bb.bp
  %i.akz = fsub float %i.ace, %.073.i.i91         ; 2 uses
  %i.ala = call float @llvm.fabs.f32(float %i.akz)
  %i.alb = fcmp oeq float %i.ala, +inf
  %.neg.i.i95 = fneg float %i.akz
  %i.alc = select i1 %i.alb, float f0xFF7FFFFF, float %.neg.i.i95 ; 4 uses
  %.sroa.0.0.copyload.i.i132.i.i = load <2 x float>, ptr %i.zp, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i134.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i87, align 4, !tbaa !99 ; 2 uses
  %.sroa.0.0.vec.extract.i.i135.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i132.i.i, i64 0
  %i.ald = fmul float %i.alc, %.sroa.0.0.vec.extract.i.i135.i.i
  %.sroa.0.4.vec.extract.i.i137.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i132.i.i, i64 1
  %i.ale = fmul float %i.alc, %.sroa.0.4.vec.extract.i.i137.i.i
  %.sroa.6.8.vec.extract.i.i139.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i134.i.i, i64 0
  %i.alf = fmul float %i.alc, %.sroa.6.8.vec.extract.i.i139.i.i
  %.sroa.6.12.vec.extract.i.i141.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i134.i.i, i64 1
  %i.alg = fmul float %i.alc, %.sroa.6.12.vec.extract.i.i141.i.i
  %i.alh = fmul float %i.ald, f0x3FB8AA3B         ; 2 uses
  %i.ali = call noundef float @llvm.floor.f32(float %i.alh) ; 2 uses
  %i.alj = fsub float %i.alh, %i.ali              ; 3 uses
  %i.alk = fptosi float %i.ali to i32
  %i.all = call noundef float @llvm.fma.f32(float %i.alj, float f0x3DA00AC9, float f0x3E679A0B)
  %i.alm = call noundef float @llvm.fma.f32(float %i.alj, float %i.all, float f0x3F321004)
  %i.aln = call noundef float @llvm.fma.f32(float %i.alj, float %i.alm, float 1.000000e+00)
  %i.alo = bitcast float %i.aln to i32            ; 2 uses
  %i.alp = lshr i32 %i.alo, 23
  %i.alq = add i32 %i.alk, -127
  %i.alr = add i32 %i.alq, %i.alp                 ; 3 uses
  %i.als = icmp slt i32 %i.alr, -126
  br i1 %i.als, label %_ZN4pbrt7FastExpEf.exit.i145.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.alt = icmp sgt i32 %i.alr, 127
  br i1 %i.alt, label %_ZN4pbrt7FastExpEf.exit.i145.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.alu = and i32 %i.alo, -2139095041
  %i.alv = shl nsw i32 %i.alr, 23
  %i.alw = add nsw i32 %i.alv, 1065353216
  %i.alx = or i32 %i.alw, %i.alu
  %i.aly = bitcast i32 %i.alx to float
  br label %_ZN4pbrt7FastExpEf.exit.i145.i.i

_ZN4pbrt7FastExpEf.exit.i145.i.i:                 ; preds = %bb.ck, %bb.cj, %bb.ci
  %.0.i.i146.i.i = phi float [ %i.aly, %bb.ck ], [ 0.000000e+00, %bb.ci ], [ +inf, %bb.cj ]
  %i.alz = fmul float %i.ale, f0x3FB8AA3B         ; 2 uses
  %i.ama = call noundef float @llvm.floor.f32(float %i.alz) ; 2 uses
  %i.amb = fsub float %i.alz, %i.ama              ; 3 uses
  %i.amc = fptosi float %i.ama to i32
  %i.amd = call noundef float @llvm.fma.f32(float %i.amb, float f0x3DA00AC9, float f0x3E679A0B)
  %i.ame = call noundef float @llvm.fma.f32(float %i.amb, float %i.amd, float f0x3F321004)
  %i.amf = call noundef float @llvm.fma.f32(float %i.amb, float %i.ame, float 1.000000e+00)
  %i.amg = bitcast float %i.amf to i32            ; 2 uses
  %i.amh = lshr i32 %i.amg, 23
  %i.ami = add i32 %i.amc, -127
  %i.amj = add i32 %i.ami, %i.amh                 ; 3 uses
  %i.amk = icmp slt i32 %i.amj, -126
  br i1 %i.amk, label %_ZN4pbrt7FastExpEf.exit.1.i147.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i145.i.i
  %i.aml = icmp sgt i32 %i.amj, 127
  br i1 %i.aml, label %_ZN4pbrt7FastExpEf.exit.1.i147.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.amm = and i32 %i.amg, -2139095041
  %i.amn = shl nsw i32 %i.amj, 23
  %i.amo = add nsw i32 %i.amn, 1065353216
  %i.amp = or i32 %i.amo, %i.amm
  %i.amq = bitcast i32 %i.amp to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i147.i.i

_ZN4pbrt7FastExpEf.exit.1.i147.i.i:               ; preds = %bb.cm, %bb.cl, %_ZN4pbrt7FastExpEf.exit.i145.i.i
  %.0.i.1.i148.i.i = phi float [ %i.amq, %bb.cm ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i145.i.i ], [ +inf, %bb.cl ]
  %i.amr = fmul float %i.alf, f0x3FB8AA3B         ; 2 uses
  %i.ams = call noundef float @llvm.floor.f32(float %i.amr) ; 2 uses
  %i.amt = fsub float %i.amr, %i.ams              ; 3 uses
  %i.amu = fptosi float %i.ams to i32
  %i.amv = call noundef float @llvm.fma.f32(float %i.amt, float f0x3DA00AC9, float f0x3E679A0B)
  %i.amw = call noundef float @llvm.fma.f32(float %i.amt, float %i.amv, float f0x3F321004)
  %i.amx = call noundef float @llvm.fma.f32(float %i.amt, float %i.amw, float 1.000000e+00)
  %i.amy = bitcast float %i.amx to i32            ; 2 uses
  %i.amz = lshr i32 %i.amy, 23
  %i.ana = add i32 %i.amu, -127
  %i.anb = add i32 %i.ana, %i.amz                 ; 3 uses
  %i.anc = icmp slt i32 %i.anb, -126
  br i1 %i.anc, label %_ZN4pbrt7FastExpEf.exit.2.i149.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i147.i.i
  %i.and = icmp sgt i32 %i.anb, 127
  br i1 %i.and, label %_ZN4pbrt7FastExpEf.exit.2.i149.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ane = and i32 %i.amy, -2139095041
  %i.anf = shl nsw i32 %i.anb, 23
  %i.ang = add nsw i32 %i.anf, 1065353216
  %i.anh = or i32 %i.ang, %i.ane
  %i.ani = bitcast i32 %i.anh to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i149.i.i

_ZN4pbrt7FastExpEf.exit.2.i149.i.i:               ; preds = %bb.co, %bb.cn, %_ZN4pbrt7FastExpEf.exit.1.i147.i.i
  %.0.i.2.i150.i.i = phi float [ %i.ani, %bb.co ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i147.i.i ], [ +inf, %bb.cn ]
  %i.anj = fmul float %i.alg, f0x3FB8AA3B         ; 2 uses
  %i.ank = call noundef float @llvm.floor.f32(float %i.anj) ; 2 uses
  %i.anl = fsub float %i.anj, %i.ank              ; 3 uses
  %i.anm = fptosi float %i.ank to i32
  %i.ann = call noundef float @llvm.fma.f32(float %i.anl, float f0x3DA00AC9, float f0x3E679A0B)
  %i.ano = call noundef float @llvm.fma.f32(float %i.anl, float %i.ann, float f0x3F321004)
  %i.anp = call noundef float @llvm.fma.f32(float %i.anl, float %i.ano, float 1.000000e+00)
  %i.anq = bitcast float %i.anp to i32            ; 2 uses
  %i.anr = lshr i32 %i.anq, 23
  %i.ans = add i32 %i.anm, -127
  %i.ant = add i32 %i.ans, %i.anr                 ; 3 uses
  %i.anu = icmp slt i32 %i.ant, -126
end_hunk_1
begin_hunk_2_@"_ZN4pbrt6detail8DispatchIRZNS_11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS4_17IntersectShadowTrEiS8_SC_ENKSD_clEiEUlNS_6Point3IfEEE_EEvS6_SC_T_T0_EUlSH_NS_16MediumPropertiesENS_15SampledSpectrumESM_E_EESM_SE_ffRNS_3RNGERKNS_18SampledWavelengthsESJ_EUlSJ_E_SM_NS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEESK_OSJ_Pvi":bb.a
  %i.bbv = call noundef float @llvm.floor.f32(float %i.bbu) ; 2 uses
  %i.bbw = fsub float %i.bbu, %i.bbv              ; 3 uses
  %i.bbx = fptosi float %i.bbv to i32
  %i.bby = call noundef float @llvm.fma.f32(float %i.bbw, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bbz = call noundef float @llvm.fma.f32(float %i.bbw, float %i.bby, float f0x3F321004)
  %i.bca = call noundef float @llvm.fma.f32(float %i.bbw, float %i.bbz, float 1.000000e+00)
  %i.bcb = bitcast float %i.bca to i32            ; 2 uses
  %i.bcc = lshr i32 %i.bcb, 23
  %i.bcd = add i32 %i.bbx, -127
  %i.bce = add i32 %i.bcd, %i.bcc                 ; 3 uses
  %i.bcf = icmp slt i32 %i.bce, -126
  br i1 %i.bcf, label %_ZN4pbrt7FastExpEf.exit.i145.i.i189, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.bcg = icmp sgt i32 %i.bce, 127
  br i1 %i.bcg, label %_ZN4pbrt7FastExpEf.exit.i145.i.i189, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.bch = and i32 %i.bcb, -2139095041
  %i.bci = shl nsw i32 %i.bce, 23
  %i.bcj = add nsw i32 %i.bci, 1065353216
  %i.bck = or i32 %i.bcj, %i.bch
  %i.bcl = bitcast i32 %i.bck to float
  br label %_ZN4pbrt7FastExpEf.exit.i145.i.i189

_ZN4pbrt7FastExpEf.exit.i145.i.i189:              ; preds = %bb.dl, %bb.dk, %bb.dj
  %.0.i.i146.i.i190 = phi float [ %i.bcl, %bb.dl ], [ 0.000000e+00, %bb.dj ], [ +inf, %bb.dk ]
  %i.bcm = fmul float %i.bbr, f0x3FB8AA3B         ; 2 uses
  %i.bcn = call noundef float @llvm.floor.f32(float %i.bcm) ; 2 uses
  %i.bco = fsub float %i.bcm, %i.bcn              ; 3 uses
  %i.bcp = fptosi float %i.bcn to i32
  %i.bcq = call noundef float @llvm.fma.f32(float %i.bco, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bcr = call noundef float @llvm.fma.f32(float %i.bco, float %i.bcq, float f0x3F321004)
  %i.bcs = call noundef float @llvm.fma.f32(float %i.bco, float %i.bcr, float 1.000000e+00)
  %i.bct = bitcast float %i.bcs to i32            ; 2 uses
  %i.bcu = lshr i32 %i.bct, 23
  %i.bcv = add i32 %i.bcp, -127
  %i.bcw = add i32 %i.bcv, %i.bcu                 ; 3 uses
  %i.bcx = icmp slt i32 %i.bcw, -126
  br i1 %i.bcx, label %_ZN4pbrt7FastExpEf.exit.1.i147.i.i191, label %bb.dm

bb.dm:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i145.i.i189
  %i.bcy = icmp sgt i32 %i.bcw, 127
  br i1 %i.bcy, label %_ZN4pbrt7FastExpEf.exit.1.i147.i.i191, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bcz = and i32 %i.bct, -2139095041
  %i.bda = shl nsw i32 %i.bcw, 23
  %i.bdb = add nsw i32 %i.bda, 1065353216
  %i.bdc = or i32 %i.bdb, %i.bcz
  %i.bdd = bitcast i32 %i.bdc to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i147.i.i191

_ZN4pbrt7FastExpEf.exit.1.i147.i.i191:            ; preds = %bb.dn, %bb.dm, %_ZN4pbrt7FastExpEf.exit.i145.i.i189
  %.0.i.1.i148.i.i192 = phi float [ %i.bdd, %bb.dn ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i145.i.i189 ], [ +inf, %bb.dm ]
  %i.bde = fmul float %i.bbs, f0x3FB8AA3B         ; 2 uses
  %i.bdf = call noundef float @llvm.floor.f32(float %i.bde) ; 2 uses
  %i.bdg = fsub float %i.bde, %i.bdf              ; 3 uses
  %i.bdh = fptosi float %i.bdf to i32
  %i.bdi = call noundef float @llvm.fma.f32(float %i.bdg, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bdj = call noundef float @llvm.fma.f32(float %i.bdg, float %i.bdi, float f0x3F321004)
  %i.bdk = call noundef float @llvm.fma.f32(float %i.bdg, float %i.bdj, float 1.000000e+00)
  %i.bdl = bitcast float %i.bdk to i32            ; 2 uses
  %i.bdm = lshr i32 %i.bdl, 23
  %i.bdn = add i32 %i.bdh, -127
  %i.bdo = add i32 %i.bdn, %i.bdm                 ; 3 uses
  %i.bdp = icmp slt i32 %i.bdo, -126
  br i1 %i.bdp, label %_ZN4pbrt7FastExpEf.exit.2.i149.i.i193, label %bb.do

bb.do:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i147.i.i191
  %i.bdq = icmp sgt i32 %i.bdo, 127
  br i1 %i.bdq, label %_ZN4pbrt7FastExpEf.exit.2.i149.i.i193, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bdr = and i32 %i.bdl, -2139095041
  %i.bds = shl nsw i32 %i.bdo, 23
  %i.bdt = add nsw i32 %i.bds, 1065353216
  %i.bdu = or i32 %i.bdt, %i.bdr
  %i.bdv = bitcast i32 %i.bdu to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i149.i.i193

_ZN4pbrt7FastExpEf.exit.2.i149.i.i193:            ; preds = %bb.dp, %bb.do, %_ZN4pbrt7FastExpEf.exit.1.i147.i.i191
  %.0.i.2.i150.i.i194 = phi float [ %i.bdv, %bb.dp ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i147.i.i191 ], [ +inf, %bb.do ]
  %i.bdw = fmul float %i.bbt, f0x3FB8AA3B         ; 2 uses
  %i.bdx = call noundef float @llvm.floor.f32(float %i.bdw) ; 2 uses
  %i.bdy = fsub float %i.bdw, %i.bdx              ; 3 uses
  %i.bdz = fptosi float %i.bdx to i32
  %i.bea = call noundef float @llvm.fma.f32(float %i.bdy, float f0x3DA00AC9, float f0x3E679A0B)
  %i.beb = call noundef float @llvm.fma.f32(float %i.bdy, float %i.bea, float f0x3F321004)
  %i.bec = call noundef float @llvm.fma.f32(float %i.bdy, float %i.beb, float 1.000000e+00)
  %i.bed = bitcast float %i.bec to i32            ; 2 uses
  %i.bee = lshr i32 %i.bed, 23
  %i.bef = add i32 %i.bdz, -127
  %i.beg = add i32 %i.bef, %i.bee                 ; 3 uses
  %i.beh = icmp slt i32 %i.beg, -126
  br i1 %i.beh, label %.thread.i.i195, label %bb.dq

bb.dq:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i149.i.i193
  %i.bei = icmp sgt i32 %i.beg, 127
  br i1 %i.bei, label %.thread.i.i195, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.bej = and i32 %i.bed, -2139095041
  %i.bek = shl nsw i32 %i.beg, 23
  %i.bel = add nsw i32 %i.bek, 1065353216
  %i.bem = or i32 %i.bel, %i.bej
  %i.ben = bitcast i32 %i.bem to float
  br label %.thread.i.i195

.thread.i.i195:                                   ; preds = %bb.dr, %bb.dq, %_ZN4pbrt7FastExpEf.exit.2.i149.i.i193
  %.0.i.3.i151.i.i196 = phi float [ %i.ben, %bb.dr ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2.i149.i.i193 ], [ +inf, %bb.dq ]
  %i.beo = insertelement <2 x float> poison, float %.0.i.i146.i.i190, i64 0
  %i.bep = insertelement <2 x float> %i.beo, float %.0.i.1.i148.i.i192, i64 1
  %i.beq = fmul <2 x float> %.sroa.0225.1.i.i, %i.bep
  %i.ber = insertelement <2 x float> poison, float %.0.i.2.i150.i.i194, i64 0
  %i.bes = insertelement <2 x float> %i.ber, float %.0.i.3.i151.i.i196, i64 1
  %i.bet = fmul <2 x float> %.sroa.21.1.i.i184, %i.bes
  br label %.thread298.i.i

.thread298.i.i:                                   ; preds = %.thread.i.i195, %bb.cu
  %.sroa.0225.4.i.i = phi <2 x float> [ %i.aqt, %bb.cu ], [ %i.beq, %.thread.i.i195 ] ; 2 uses
  %.sroa.21.4.i.i197 = phi <2 x float> [ %i.aqu, %bb.cu ], [ %i.bet, %.thread.i.i195 ] ; 2 uses
  %.2.i.i198 = phi float [ %.054329.i34.i, %bb.cu ], [ %.sroa.speculated.i.i.i187, %.thread.i.i195 ]
  %i.beu = load i8, ptr %i.apk, align 4, !tbaa !232, !range !115, !noalias !803, !noundef !44
  %i.bev = trunc nuw i8 %i.beu to i1
  br i1 %i.bev, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_11CloudMediumEEEDaSH_.exit", label %bb.ct

"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_11CloudMediumEEEDaSH_.exit": ; preds = %.thread298.i.i, %bb.di, %bb.cs
  %.sroa.0280.2.i.i = phi <2 x float> [ splat (float 1.000000e+00), %bb.di ], [ splat (float 1.000000e+00), %bb.cs ], [ %.sroa.0225.4.i.i, %.thread298.i.i ]
  %.sroa.4282.2.i.i = phi <2 x float> [ splat (float 1.000000e+00), %bb.di ], [ splat (float 1.000000e+00), %bb.cs ], [ %.sroa.21.4.i.i197, %.thread298.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_17HomogeneousMediumEEEDaSH_.exit"

bb.ds:                                            ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i252 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i253 = load float, ptr %.sroa.4.0..sroa_idx.i252, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i254 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.5.0.copyload.i255 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i254, align 4 ; 3 uses
  %.sroa.9.0..sroa_idx.i256 = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.9.0.copyload.i257 = load float, ptr %.sroa.9.0..sroa_idx.i256, align 4 ; 3 uses
  %.sroa.12.0..sroa_idx.i258 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.12.sroa.0.0.copyload.i259 = load float, ptr %.sroa.12.0..sroa_idx.i258, align 8
  %i.bew = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bex = load i64, ptr %i.bew, align 8, !tbaa !65 ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !787, !nonnull !44, !align !182
  %i.bfa = load float, ptr %i.bez, align 4, !tbaa !53
  %i.bfb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bfc = load ptr, ptr %i.bfb, align 8, !tbaa !788, !nonnull !44, !align !182
  %i.bfd = load float, ptr %i.bfc, align 4, !tbaa !53
  %i.bfe = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !789, !nonnull !44, !align !45 ; 3 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !790, !nonnull !44, !align !182 ; 7 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bfj = load ptr, ptr %i.bfi, align 8, !tbaa !791, !nonnull !44, !align !45 ; 4 uses
  %.sroa.018.0.copyload.i260 = load ptr, ptr %i.bfj, align 8, !tbaa !793 ; 6 uses
  %.sroa.2.0..sroa_idx.i261 = getelementptr inbounds nuw i8, ptr %i.bfj, i64 8
  %.sroa.2.0.copyload.i262 = load ptr, ptr %.sroa.2.0..sroa_idx.i261, align 8, !tbaa !793 ; 4 uses
  %.sroa.319.0..sroa_idx.i263 = getelementptr inbounds nuw i8, ptr %i.bfj, i64 16
  %.sroa.319.0.copyload.i264 = load ptr, ptr %.sroa.319.0..sroa_idx.i263, align 8, !tbaa !793 ; 2 uses
  %.sroa.420.0..sroa_idx.i265 = getelementptr inbounds nuw i8, ptr %i.bfj, i64 24
  %.sroa.420.0.copyload.i266 = load ptr, ptr %.sroa.420.0..sroa_idx.i265, align 8, !tbaa !214 ; 3 uses
  %i.bfk = fmul <2 x float> %.sroa.5.0.copyload.i255, %.sroa.5.0.copyload.i255 ; 2 uses
  %shift400 = shufflevector <2 x float> %i.bfk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop401 = fadd <2 x float> %i.bfk, %shift400
  %i.bfl = extractelement <2 x float> %foldExtExtBinop401, i64 0
  %i.bfm = fmul float %.sroa.9.0.copyload.i257, %.sroa.9.0.copyload.i257
  %i.bfn = fadd float %i.bfm, %i.bfl
  %sqrt.i.i.i269 = tail call noundef float @llvm.sqrt.f32(float %i.bfn) ; 3 uses
  %i.bfo = fmul float %i.bfa, %sqrt.i.i.i269
  %i.bfp = load <2 x float>, ptr %i.g, align 8    ; 2 uses
  %i.bfq = shufflevector <2 x float> %i.bfp, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bfr = shufflevector <2 x float> %.sroa.5.0.copyload.i255, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.bfs = insertelement <3 x float> poison, float %sqrt.i.i.i269, i64 0
  %i.bft = shufflevector <3 x float> %i.bfs, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bfu = fdiv <3 x float> %i.bfr, %i.bft        ; 2 uses
  %i.bfv = fdiv float %.sroa.9.0.copyload.i257, %sqrt.i.i.i269 ; 2 uses
  %i.bfw = shufflevector <3 x float> %i.bfu, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bfx = and i64 %i.bex, 144115188075855871
  %i.bfy = inttoptr i64 %i.bfx to ptr             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store <2 x float> %i.bfp, ptr %4, align 8
  %.sroa.4.0..sroa_idx4.i273 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %.sroa.4.0.copyload.i253, ptr %.sroa.4.0..sroa_idx4.i273, align 8
  %.sroa.5.0..sroa_idx6.i274 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <2 x float> %i.bfw, ptr %.sroa.5.0..sroa_idx6.i274, align 4
  %.sroa.9.0..sroa_idx9.i275 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.bfv, ptr %.sroa.9.0..sroa_idx9.i275, align 4
  %.sroa.12.0..sroa_idx11.i276 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %.sroa.12.sroa.0.0.copyload.i259, ptr %.sroa.12.0..sroa_idx11.i276, align 8
  %i.bfz = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.bex, ptr %i.bfz, align 8, !tbaa !65
  call void @_ZNK4pbrt13NanoVDBMedium9SampleRayENS_3RayEfRKNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::DDAMajorantIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(404) %i.bfy, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(40) %4, float noundef %i.bfo, ptr noundef nonnull align 4 dereferenceable(32) %i.bfh)
  %i.bga = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bff, i64 8
  %i.bgd = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i104.i.i277 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfy, i64 152 ; 4 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bfy, i64 184 ; 4 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bfy, i64 168 ; 4 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bfh, i64 4
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 8
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bfh, i64 12
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bfy, i64 192
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bfy, i64 88
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bfy, i64 120
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bfy, i64 136
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bfy, i64 144
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bfy, i64 148
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bfy, i64 376
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN4pbrt19DDAMajorantIterator4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.221") align 4 %5, ptr noundef nonnull align 8 dereferenceable(92) %3)
  %i.bgt = load i8, ptr %i.bga, align 4, !tbaa !220, !range !115, !noundef !44
  %i.bgu = trunc nuw i8 %i.bgt to i1
  br i1 %i.bgu, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.lr.ph.i, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_13NanoVDBMediumEEEDaSH_.exit"

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.lr.ph.i: ; preds = %bb.ds
  %i.bgv = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload.i260, i64 8
  %i.bgw = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i262, i64 8
  %i.bgx = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload.i266, i64 8
  br label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i280

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i280: ; preds = %.thread.i.i288, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.lr.ph.i
  %.sroa.0197.0315.i52.i = phi <2 x float> [ splat (float 1.000000e+00), %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.lr.ph.i ], [ %.sroa.0197.4.i.i, %.thread.i.i288 ] ; 2 uses
  %.sroa.21.0316.i51.i = phi <2 x float> [ splat (float 1.000000e+00), %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.lr.ph.i ], [ %.sroa.21.4.i.i289, %.thread.i.i288 ] ; 2 uses
  %.054317.i50.i = phi float [ %i.bfd, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.lr.ph.i ], [ %.2.i.i290, %.thread.i.i288 ] ; 2 uses
  %i.bgy = load float, ptr %i.bgb, align 4, !tbaa !53
  %i.bgz = fcmp oeq float %i.bgy, 0.000000e+00
  br i1 %i.bgz, label %bb.dt, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281

bb.dt:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i280
  %i.bha = load float, ptr %i.bgd, align 4, !tbaa !222
  %i.bhb = load float, ptr %5, align 4, !tbaa !223
  %i.bhc = fsub float %i.bha, %i.bhb              ; 2 uses
  %i.bhd = call float @llvm.fabs.f32(float %i.bhc)
  %i.bhe = fcmp oeq float %i.bhd, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %.neg278.i.i = fneg float %i.bhc
  %i.bhf = select i1 %i.bhe, float f0xFF7FFFFF, float %.neg278.i.i
  %.sroa.0.0.copyload.i.i.i.i346 = load <2 x float>, ptr %i.bgb, align 4
  %.sroa.6.0.copyload.i.i.i.i347 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i277, align 4, !tbaa !99
  %i.bhg = insertelement <2 x float> poison, float %i.bhf, i64 0
  %i.bhh = shufflevector <2 x float> %i.bhg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bhi = fmul <2 x float> %.sroa.0.0.copyload.i.i.i.i346, %i.bhh
  %i.bhj = fmul <2 x float> %i.bhh, %.sroa.6.0.copyload.i.i.i.i347
  store <2 x float> %i.bhi, ptr %6, align 8
  store <2 x float> %i.bhj, ptr %i.bgs, align 8
  %i.bhk = call { <2 x float>, <2 x float> } @_ZN4pbrt7FastExpERKNS_15SampledSpectrumE(ptr noundef nonnull align 4 dereferenceable(16) %6) ; 2 uses
  %i.bhl = extractvalue { <2 x float>, <2 x float> } %i.bhk, 0
  %i.bhm = extractvalue { <2 x float>, <2 x float> } %i.bhk, 1
  %i.bhn = fmul <2 x float> %.sroa.0197.0315.i52.i, %i.bhl
  %i.bho = fmul <2 x float> %.sroa.21.0316.i51.i, %i.bhm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.thread.i.i288

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281: ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i280
  %i.bhp = load float, ptr %5, align 4, !tbaa !223
  br label %bb.du

bb.du:                                            ; preds = %bb.ez, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281
  %.sroa.0197.1.i.i = phi <2 x float> [ %.sroa.0197.0315.i52.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281 ], [ splat (float 1.000000e+00), %bb.ez ] ; 2 uses
  %.sroa.21.1.i.i282 = phi <2 x float> [ %.sroa.21.0316.i51.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281 ], [ splat (float 1.000000e+00), %bb.ez ] ; 2 uses
  %.073.i.i283 = phi float [ %i.bhp, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281 ], [ %i.bhw, %bb.ez ] ; 3 uses
  %.1.i.i284 = phi float [ %.054317.i50.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281 ], [ %.sroa.speculated.i.i.i286, %bb.ez ]
  %i.bhq = load i8, ptr %i.bga, align 4, !tbaa !220, !range !115, !noundef !44
  %i.bhr = trunc nuw i8 %i.bhq to i1
  br i1 %i.bhr, label %bb.dv, label %.noexc97.i.i285

.noexc97.i.i285:                                  ; preds = %bb.du
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef 235, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(4) @.str.22) #29
  unreachable

bb.dv:                                            ; preds = %bb.du
  %i.bhs = load float, ptr %i.bgb, align 4, !tbaa !53
  %i.bht = fsub float 1.000000e+00, %.1.i.i284
  %i.bhu = call noundef float @logf(float noundef %i.bht) #25
  %i.bhv = fdiv float %i.bhu, %i.bhs
  %i.bhw = fsub float %.073.i.i283, %i.bhv        ; 5 uses
  %i.bhx = load i64, ptr %i.bff, align 8, !tbaa !211 ; 4 uses
  %i.bhy = mul i64 %i.bhx, 6364136223846793005
  %i.bhz = load i64, ptr %i.bgc, align 8, !tbaa !210
  %i.bia = add i64 %i.bhy, %i.bhz
  store i64 %i.bia, ptr %i.bff, align 8, !tbaa !211
  %i.bib = lshr i64 %i.bhx, 45
  %i.bic = lshr i64 %i.bhx, 27
  %i.bid = xor i64 %i.bib, %i.bic
  %i.bie = trunc i64 %i.bid to i32                ; 2 uses
  %i.bif = lshr i64 %i.bhx, 59
  %i.big = trunc nuw nsw i64 %i.bif to i32
  %i.bih = call noundef i32 @llvm.fshr.i32(i32 %i.bie, i32 %i.bie, i32 %i.big)
  %i.bii = uitofp i32 %i.bih to float
  %i.bij = fmul nnan float %i.bii, f0x2F800000    ; 2 uses
  %i.bik = fcmp olt float %i.bij, f0x3F7FFFFF
  %.sroa.speculated.i.i.i286 = select i1 %i.bik, float %i.bij, float f0x3F7FFFFF ; 2 uses
  %i.bil = load float, ptr %i.bgd, align 4, !tbaa !222 ; 2 uses
  %i.bim = fcmp olt float %i.bhw, %i.bil
  br i1 %i.bim, label %bb.dw, label %bb.fa

bb.dw:                                            ; preds = %bb.dv
  %i.bin = fsub float %i.bhw, %.073.i.i283
  %i.bio = fneg float %i.bin                      ; 4 uses
  %.sroa.0.0.copyload.i.i103.i.i291 = load <2 x float>, ptr %i.bgb, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i105.i.i292 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i277, align 4, !tbaa !99 ; 2 uses
  %.sroa.0.0.vec.extract.i.i106.i.i293 = extractelement <2 x float> %.sroa.0.0.copyload.i.i103.i.i291, i64 0
  %i.bip = fmul float %.sroa.0.0.vec.extract.i.i106.i.i293, %i.bio
  %.sroa.0.4.vec.extract.i.i108.i.i294 = extractelement <2 x float> %.sroa.0.0.copyload.i.i103.i.i291, i64 1
  %i.biq = fmul float %.sroa.0.4.vec.extract.i.i108.i.i294, %i.bio
  %.sroa.6.8.vec.extract.i.i110.i.i295 = extractelement <2 x float> %.sroa.6.0.copyload.i.i105.i.i292, i64 0
  %i.bir = fmul float %.sroa.6.8.vec.extract.i.i110.i.i295, %i.bio
  %.sroa.6.12.vec.extract.i.i112.i.i296 = extractelement <2 x float> %.sroa.6.0.copyload.i.i105.i.i292, i64 1
  %i.bis = fmul float %.sroa.6.12.vec.extract.i.i112.i.i296, %i.bio
  %i.bit = fmul float %i.bip, f0x3FB8AA3B         ; 2 uses
  %i.biu = call noundef float @llvm.floor.f32(float %i.bit) ; 2 uses
  %i.biv = fsub float %i.bit, %i.biu              ; 3 uses
  %i.biw = fptosi float %i.biu to i32
  %i.bix = call noundef float @llvm.fma.f32(float %i.biv, float f0x3DA00AC9, float f0x3E679A0B)
  %i.biy = call noundef float @llvm.fma.f32(float %i.biv, float %i.bix, float f0x3F321004)
  %i.biz = call noundef float @llvm.fma.f32(float %i.biv, float %i.biy, float 1.000000e+00)
  %i.bja = bitcast float %i.biz to i32            ; 2 uses
  %i.bjb = lshr i32 %i.bja, 23
  %i.bjc = add i32 %i.biw, -127
  %i.bjd = add i32 %i.bjc, %i.bjb                 ; 3 uses
  %i.bje = icmp slt i32 %i.bjd, -126
  br i1 %i.bje, label %_ZN4pbrt7FastExpEf.exit.i.i.i297, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bjf = icmp sgt i32 %i.bjd, 127
  br i1 %i.bjf, label %_ZN4pbrt7FastExpEf.exit.i.i.i297, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bjg = and i32 %i.bja, -2139095041
  %i.bjh = shl nsw i32 %i.bjd, 23
  %i.bji = add nsw i32 %i.bjh, 1065353216
  %i.bjj = or i32 %i.bji, %i.bjg
  %i.bjk = bitcast i32 %i.bjj to float
  br label %_ZN4pbrt7FastExpEf.exit.i.i.i297

_ZN4pbrt7FastExpEf.exit.i.i.i297:                 ; preds = %bb.dy, %bb.dx, %bb.dw
  %.0.i.i.i.i298 = phi float [ %i.bjk, %bb.dy ], [ 0.000000e+00, %bb.dw ], [ +inf, %bb.dx ]
  %i.bjl = fmul float %i.biq, f0x3FB8AA3B         ; 2 uses
  %i.bjm = call noundef float @llvm.floor.f32(float %i.bjl) ; 2 uses
  %i.bjn = fsub float %i.bjl, %i.bjm              ; 3 uses
  %i.bjo = fptosi float %i.bjm to i32
  %i.bjp = call noundef float @llvm.fma.f32(float %i.bjn, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bjq = call noundef float @llvm.fma.f32(float %i.bjn, float %i.bjp, float f0x3F321004)
  %i.bjr = call noundef float @llvm.fma.f32(float %i.bjn, float %i.bjq, float 1.000000e+00)
  %i.bjs = bitcast float %i.bjr to i32            ; 2 uses
  %i.bjt = lshr i32 %i.bjs, 23
  %i.bju = add i32 %i.bjo, -127
  %i.bjv = add i32 %i.bju, %i.bjt                 ; 3 uses
  %i.bjw = icmp slt i32 %i.bjv, -126
  br i1 %i.bjw, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i299, label %bb.dz

bb.dz:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i.i.i297
  %i.bjx = icmp sgt i32 %i.bjv, 127
  br i1 %i.bjx, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i299, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.bjy = and i32 %i.bjs, -2139095041
  %i.bjz = shl nsw i32 %i.bjv, 23
  %i.bka = add nsw i32 %i.bjz, 1065353216
  %i.bkb = or i32 %i.bka, %i.bjy
  %i.bkc = bitcast i32 %i.bkb to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i.i.i299

_ZN4pbrt7FastExpEf.exit.1.i.i.i299:               ; preds = %bb.ea, %bb.dz, %_ZN4pbrt7FastExpEf.exit.i.i.i297
  %.0.i.1.i.i.i300 = phi float [ %i.bkc, %bb.ea ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i.i.i297 ], [ +inf, %bb.dz ]
  %i.bkd = fmul float %i.bir, f0x3FB8AA3B         ; 2 uses
  %i.bke = call noundef float @llvm.floor.f32(float %i.bkd) ; 2 uses
  %i.bkf = fsub float %i.bkd, %i.bke              ; 3 uses
  %i.bkg = fptosi float %i.bke to i32
  %i.bkh = call noundef float @llvm.fma.f32(float %i.bkf, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bki = call noundef float @llvm.fma.f32(float %i.bkf, float %i.bkh, float f0x3F321004)
  %i.bkj = call noundef float @llvm.fma.f32(float %i.bkf, float %i.bki, float 1.000000e+00)
  %i.bkk = bitcast float %i.bkj to i32            ; 2 uses
  %i.bkl = lshr i32 %i.bkk, 23
  %i.bkm = add i32 %i.bkg, -127
  %i.bkn = add i32 %i.bkm, %i.bkl                 ; 3 uses
  %i.bko = icmp slt i32 %i.bkn, -126
  br i1 %i.bko, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i301, label %bb.eb

bb.eb:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i.i.i299
  %i.bkp = icmp sgt i32 %i.bkn, 127
  br i1 %i.bkp, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i301, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.bkq = and i32 %i.bkk, -2139095041
  %i.bkr = shl nsw i32 %i.bkn, 23
  %i.bks = add nsw i32 %i.bkr, 1065353216
  %i.bkt = or i32 %i.bks, %i.bkq
  %i.bku = bitcast i32 %i.bkt to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i.i.i301

_ZN4pbrt7FastExpEf.exit.2.i.i.i301:               ; preds = %bb.ec, %bb.eb, %_ZN4pbrt7FastExpEf.exit.1.i.i.i299
end_hunk_2
begin_hunk_3_@"_ZN4pbrt6detail8DispatchIRZNS_11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS4_17IntersectShadowTrEiS8_SC_ENKSD_clEiEUlNS_6Point3IfEEE_EEvS6_SC_T_T0_EUlSH_NS_16MediumPropertiesENS_15SampledSpectrumESM_E_EESM_SE_ffRNS_3RNGERKNS_18SampledWavelengthsESJ_EUlSJ_E_SM_NS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEESK_OSJ_Pvi":bb.a
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.bqo to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.bqm to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %2, align 8
  %i.bqp = extractelement <2 x i32> %i.bqn, i64 1 ; 4 uses
  store i32 %i.bqp, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bor, i64 696 ; 7 uses
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !43
  %i.bqs = getelementptr inbounds i8, ptr %i.bpb, i64 %i.bqr ; 5 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 64
  %i.bqu = lshr i32 %i.bqp, 12
  %i.bqv = zext nneg i32 %i.bqu to i64
  %i.bqw = lshr i32 %i.bqo, 12
  %i.bqx = zext nneg i32 %i.bqw to i64
  %i.bqy = shl nuw nsw i64 %i.bqx, 21
  %i.bqz = or disjoint i64 %i.bqy, %i.bqv
  %i.bra = lshr i32 %i.bqm, 12
  %i.brb = zext nneg i32 %i.bra to i64
  %i.brc = shl nuw nsw i64 %i.brb, 42
  %i.brd = or disjoint i64 %i.bqz, %i.brc
  %i.bre = getelementptr inbounds nuw i8, ptr %i.bqs, i64 24
  %i.brf = load i32, ptr %i.bre, align 8, !tbaa !242 ; 2 uses
  %.not12.not.i.i.i.i = icmp eq i32 %i.brf, 0
  br i1 %.not12.not.i.i.i.i, label %.loopexit.i.i.i316, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i312
  %wide.trip.count.i.i.i.i = zext i32 %i.brf to i64
  br label %.lr.ph.i.i.i.i

bb.er:                                            ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i316, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.i:                                   ; preds = %bb.er, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.er ] ; 2 uses
  %i.brg = getelementptr inbounds nuw [32 x i8], ptr %i.bqt, i64 %indvars.iv.i.i.i.i ; 3 uses
  %i.brh = load i64, ptr %i.brg, align 32, !tbaa !244
  %i.bri = icmp eq i64 %i.brh, %i.brd
  br i1 %i.bri, label %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i, label %bb.er

_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.brj = getelementptr inbounds nuw i8, ptr %i.brg, i64 8
  %i.brk = load i64, ptr %i.brj, align 8, !tbaa !245 ; 2 uses
  %.not.i179.i.i = icmp eq i64 %i.brk, 0
  br i1 %.not.i179.i.i, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i
  %i.brl = getelementptr inbounds i8, ptr %i.bqs, i64 %i.brk ; 3 uses
  %i.brm = shl i32 %i.bqm, 3
  %i.brn = and i32 %i.brm, 31744
  %i.bro = lshr i32 %i.bqo, 2
  %i.brp = and i32 %i.bro, 992
  %i.brq = or disjoint i32 %i.brp, %i.brn         ; 2 uses
  %i.brr = lshr i32 %i.bqp, 7
  %i.brs = and i32 %i.brr, 31
  %i.brt = or disjoint i32 %i.brs, %i.brq         ; 2 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brl, i64 4128
  %i.brv = lshr i32 %i.brq, 6
  %i.brw = zext nneg i32 %i.brv to i64
  %i.brx = getelementptr inbounds nuw [8 x i8], ptr %i.bru, i64 %i.brw
  %i.bry = load i64, ptr %i.brx, align 8, !tbaa !43
  %i.brz = and i32 %i.brt, 63
  %i.bsa = zext nneg i32 %i.brz to i64
  %i.bsb = shl nuw i64 1, %i.bsa
  %i.bsc = and i64 %i.bry, %i.bsb
  %.not.i.i.i.i = icmp eq i64 %i.bsc, 0
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.brl, i64 8256
  %i.bse = zext nneg i32 %i.brt to i64
  %i.bsf = getelementptr inbounds nuw [8 x i8], ptr %i.bsd, i64 %i.bse ; 2 uses
  br i1 %.not.i.i.i.i, label %.noexc168.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bsg = load i64, ptr %i.bsf, align 8, !tbaa !99
  %i.bsh = getelementptr inbounds i8, ptr %i.brl, i64 %i.bsg ; 3 uses
  %i.bsi = shl i32 %i.bqm, 5
  %i.bsj = and i32 %i.bsi, 3840
  %i.bsk = lshr <2 x i32> %i.bqn, <i32 1, i32 3>
  %i.bsl = shl <2 x i32> %i.bqn, <i32 1, i32 3>
  %i.bsm = shufflevector <2 x i32> %i.bsl, <2 x i32> %i.bsk, <2 x i32> <i32 0, i32 3>
  %i.bsn = and <2 x i32> %i.bsm, <i32 240, i32 -1> ; 2 uses
  %i.bso = extractelement <2 x i32> %i.bsn, i64 0
  %i.bsp = or disjoint i32 %i.bso, %i.bsj         ; 2 uses
  %i.bsq = extractelement <2 x i32> %i.bsn, i64 1
  %i.bsr = and i32 %i.bsq, 15
  %i.bss = or disjoint i32 %i.bsr, %i.bsp         ; 2 uses
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bsh, i64 544
  %i.bsu = lshr i32 %i.bsp, 6
  %i.bsv = zext nneg i32 %i.bsu to i64
  %i.bsw = getelementptr inbounds nuw [8 x i8], ptr %i.bst, i64 %i.bsv
  %i.bsx = load i64, ptr %i.bsw, align 8, !tbaa !43
  %i.bsy = and i32 %i.bss, 63
  %i.bsz = zext nneg i32 %i.bsy to i64
  %i.bta = shl nuw i64 1, %i.bsz
  %i.btb = and i64 %i.bsx, %i.bta
  %.not.i.i.i.i.i = icmp eq i64 %i.btb, 0
  %i.btc = getelementptr inbounds nuw i8, ptr %i.bsh, i64 1088
  %i.btd = zext nneg i32 %i.bss to i64
  %i.bte = getelementptr inbounds nuw [8 x i8], ptr %i.btc, i64 %i.btd ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.noexc168.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.btf = load i64, ptr %i.bte, align 8, !tbaa !99
  %i.btg = getelementptr inbounds i8, ptr %i.bsh, i64 %i.btf
  %i.bth = shl i32 %i.bqm, 6
  %i.bti = and i32 %i.bth, 448
  %i.btj = shl <2 x i32> %i.bqn, <i32 3, i32 0>
  %i.btk = and <2 x i32> %i.btj, <i32 56, i32 7>  ; 2 uses
  %i.btl = extractelement <2 x i32> %i.btk, i64 0
  %i.btm = or disjoint i32 %i.btl, %i.bti
  %i.btn = extractelement <2 x i32> %i.btk, i64 1
  %i.bto = or disjoint i32 %i.btm, %i.btn
  %i.btp = getelementptr inbounds nuw i8, ptr %i.btg, i64 96
  %i.btq = zext nneg i32 %i.bto to i64
  %i.btr = getelementptr inbounds nuw [4 x i8], ptr %i.btp, i64 %i.btq
  br label %.noexc168.i.i

bb.ev:                                            ; preds = %_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8findTileERKS3_.exit.i.i.i
  %i.bts = getelementptr inbounds nuw i8, ptr %i.brg, i64 20
  br label %.noexc168.i.i

.loopexit.i.i.i316:                               ; preds = %bb.er, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i312
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 28
  br label %.noexc168.i.i

.noexc168.i.i:                                    ; preds = %.loopexit.i.i.i316, %bb.ev, %bb.eu, %bb.et, %bb.es
  %.1.in.i.i.i = phi ptr [ %i.btt, %.loopexit.i.i.i316 ], [ %i.bts, %bb.ev ], [ %i.bte, %bb.et ], [ %i.btr, %bb.eu ], [ %i.bsf, %bb.es ]
  %.1.i.i.i = load float, ptr %.1.in.i.i.i, align 4, !tbaa !99 ; 2 uses
  %i.btu = add nsw i32 %i.bqp, 1
  store i32 %i.btu, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.btv = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bqs, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.btw = load i32, ptr %i.bgr, align 4, !tbaa !76
  %i.btx = add nsw i32 %i.btw, 1
  store i32 %i.btx, ptr %i.bgr, align 4, !tbaa !76
  %i.bty = load i64, ptr %i.bqq, align 8, !tbaa !43
  %i.btz = getelementptr inbounds i8, ptr %i.bpb, i64 %i.bty
  %i.bua = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.btz, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.bub = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.buc = add nsw i32 %i.bub, -1
  store i32 %i.buc, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.bud = load i64, ptr %i.bqq, align 8, !tbaa !43
  %i.bue = getelementptr inbounds i8, ptr %i.bpb, i64 %i.bud
  %i.buf = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.bue, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %i.bug = load i32, ptr %2, align 8, !tbaa !76
  %i.buh = add nsw i32 %i.bug, 1
  store i32 %i.buh, ptr %2, align 8, !tbaa !76
  %i.bui = load i64, ptr %i.bqq, align 8, !tbaa !43
  %i.buj = getelementptr inbounds i8, ptr %i.bpb, i64 %i.bui
  %i.buk = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.buj, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %i.bul = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.bum = add nsw i32 %i.bul, 1
  store i32 %i.bum, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.bun = load i64, ptr %i.bqq, align 8, !tbaa !43
  %i.buo = getelementptr inbounds i8, ptr %i.bpb, i64 %i.bun
  %i.bup = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.buo, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.buq = load i32, ptr %i.bgr, align 4, !tbaa !76
  %i.bur = add nsw i32 %i.buq, -1
  store i32 %i.bur, ptr %i.bgr, align 4, !tbaa !76
  %i.bus = load i64, ptr %i.bqq, align 8, !tbaa !43
  %i.but = getelementptr inbounds i8, ptr %i.bpb, i64 %i.bus
  %i.buu = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.but, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.buv = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.buw = add nsw i32 %i.buv, -1
  store i32 %i.buw, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %i.bux = load i64, ptr %i.bqq, align 8, !tbaa !43
  %i.buy = getelementptr inbounds i8, ptr %i.bpb, i64 %i.bux
  %i.buz = call noundef float @_ZNK7nanovdb8RootNodeINS_12InternalNodeINS1_INS_8LeafNodeIfNS_5CoordENS_4MaskELj3EEELj4EEELj5EEEE8getValueERKS3_(ptr noundef nonnull align 32 dereferenceable(48) %i.buy, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bva = extractelement <3 x float> %i.bpl, i64 2
  %i.bvb = call { <2 x float>, <2 x float> } @_ZNK4pbrt13NanoVDBMedium2LeENS_6Point3IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(404) %i.bfy, <2 x float> %i.bpm, float %i.bva, ptr noundef nonnull align 4 dereferenceable(32) %i.bfh) ; 0 uses
  %i.bvc = load i8, ptr %i.bga, align 4, !tbaa !220, !range !115, !noundef !44
  %i.bvd = trunc nuw i8 %i.bvc to i1
  br i1 %i.bvd, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i, label %.noexc133.i.i

.noexc133.i.i:                                    ; preds = %.noexc168.i.i
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef 235, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(4) @.str.22) #29
  unreachable

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i: ; preds = %.noexc168.i.i
  %i.bve = fsub float %i.btv, %.1.i.i.i
  %i.bvf = fmul float %i.bql, %i.bve
  %i.bvg = fadd float %.1.i.i.i, %i.bvf           ; 2 uses
  %i.bvh = fsub float %i.bua, %i.buf
  %i.bvi = fmul float %i.bql, %i.bvh
  %i.bvj = fadd float %i.buf, %i.bvi
  %i.bvk = fsub float %i.bvj, %i.bvg
  %i.bvl = fmul float %i.bqk, %i.bvk
  %i.bvm = fadd float %i.bvg, %i.bvl              ; 2 uses
  %i.bvn = fsub float %i.buu, %i.buz
  %i.bvo = fmul float %i.bql, %i.bvn
  %i.bvp = fadd float %i.buz, %i.bvo              ; 2 uses
  %i.bvq = fsub float %i.bup, %i.buk
  %i.bvr = fmul float %i.bql, %i.bvq
  %i.bvs = fadd float %i.buk, %i.bvr
  %i.bvt = fsub float %i.bvs, %i.bvp
  %i.bvu = fmul float %i.bqk, %i.bvt
  %i.bvv = fadd float %i.bvp, %i.bvu
  %i.bvw = fsub float %i.bvv, %i.bvm
  %i.bvx = fmul float %i.bqj, %i.bvw
  %.sroa.04.0.copyload.i.i317 = load <2 x float>, ptr %i.bgb, align 4
  %.sroa.25.0.copyload.i.i318 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i277, align 4, !tbaa !99
  %i.bvy = fadd float %i.bvm, %i.bvx
  %i.bvz = shufflevector <2 x float> %i.bof, <2 x float> %i.boe, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bwa = insertelement <4 x float> poison, float %i.bvy, i64 0
  %i.bwb = shufflevector <4 x float> %i.bwa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bwc = fmul <4 x float> %i.bvz, %i.bwb
  %i.bwd = shufflevector <2 x float> %.sroa.0.0.i.i.i305, <2 x float> %.sroa.6.0.i.i.i308, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.bwe = insertelement <4 x float> %i.bwd, float %.sink.i.i.i, i64 1
  %i.bwf = insertelement <4 x float> %i.bwe, float %.sink30.i.i.i311, i64 3
  %i.bwg = fmul <4 x float> %i.bwf, %i.bwb
  %24 = shufflevector <2 x float> %.sroa.04.0.copyload.i.i317, <2 x float> %.sroa.25.0.copyload.i.i318, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bwh = fsub <4 x float> %24, %i.bwg
  %i.bwi = fsub <4 x float> %i.bwh, %i.bwc        ; 2 uses
  %i.bwj = fcmp ogt <4 x float> %i.bwi, zeroinitializer
  %i.bwk = select <4 x i1> %i.bwj, <4 x float> %i.bwi, <4 x float> zeroinitializer
  %i.bwl = fmul <4 x float> %i.bls, %i.bwk
  %i.bwm = load <4 x float>, ptr %.sroa.018.0.copyload.i260, align 4, !tbaa !53
  %i.bwn = fmul <4 x float> %i.bls, %24           ; 2 uses
  %i.bwo = shufflevector <4 x float> %i.bwn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bwp = fdiv <4 x float> %i.bwl, %i.bwo        ; 2 uses
  %i.bwq = fmul <4 x float> %i.bwp, %i.bwm
  store <4 x float> %i.bwq, ptr %.sroa.018.0.copyload.i260, align 4, !tbaa !53
  %i.bwr = fdiv <4 x float> %i.bwn, %i.bwo
  %i.bws = load <4 x float>, ptr %.sroa.2.0.copyload.i262, align 4, !tbaa !53
  %i.bwt = fmul <4 x float> %i.bwr, %i.bws
  store <4 x float> %i.bwt, ptr %.sroa.2.0.copyload.i262, align 4, !tbaa !53
  %i.bwu = load <4 x float>, ptr %.sroa.319.0.copyload.i264, align 4, !tbaa !53
  %i.bwv = fmul <4 x float> %i.bwp, %i.bwu        ; 3 uses
  store <4 x float> %i.bwv, ptr %.sroa.319.0.copyload.i264, align 4, !tbaa !53
  %.sroa.0.0.copyload4.i103.i.i.i326 = load <2 x float>, ptr %.sroa.2.0.copyload.i262, align 4
  %.sroa.8.0.copyload.i105.i.i.i327 = load <2 x float>, ptr %i.bgw, align 4, !tbaa !99
  %i.bww = shufflevector <4 x float> %i.bwv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bwx = fadd <2 x float> %i.bww, %.sroa.0.0.copyload4.i103.i.i.i326 ; 2 uses
  %i.bwy = shufflevector <4 x float> %i.bwv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bwz = fadd <2 x float> %i.bwy, %.sroa.8.0.copyload.i105.i.i.i327 ; 2 uses
  %shift410 = shufflevector <2 x float> %i.bwx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop411 = fadd <2 x float> %i.bwx, %shift410
  %foldExtExtBinop413 = fadd <2 x float> %foldExtExtBinop411, %i.bwz
  %shift415 = shufflevector <2 x float> %i.bwz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop416 = fadd <2 x float> %shift415, %foldExtExtBinop413
  %i.bxa = extractelement <2 x float> %foldExtExtBinop416, i64 0
  %i.bxb = fmul float %i.bxa, 2.500000e-01        ; 3 uses
  %.sroa.0.0.copyload4.i116.i.i.i332 = load <2 x float>, ptr %.sroa.018.0.copyload.i260, align 4 ; 2 uses
  %.sroa.8.0.copyload.i118.i.i.i333 = load <2 x float>, ptr %i.bgv, align 4 ; 3 uses
  %i.bxc = insertelement <2 x float> poison, float %i.bxb, i64 0
  %i.bxd = shufflevector <2 x float> %i.bxc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bxe = fdiv <2 x float> %.sroa.0.0.copyload4.i116.i.i.i332, %i.bxd ; 2 uses
  %.sroa.8.8.vec.extract.i123.i.i.i336 = extractelement <2 x float> %.sroa.8.0.copyload.i118.i.i.i333, i64 0
  %i.bxf = fdiv float %.sroa.8.8.vec.extract.i123.i.i.i336, %i.bxb ; 2 uses
  %.sroa.8.12.vec.extract.i125.i.i.i337 = extractelement <2 x float> %.sroa.8.0.copyload.i118.i.i.i333, i64 1
  %i.bxg = fdiv float %.sroa.8.12.vec.extract.i125.i.i.i337, %i.bxb ; 2 uses
  %i.bxh = extractelement <2 x float> %i.bxe, i64 0 ; 2 uses
  %i.bxi = extractelement <2 x float> %i.bxe, i64 1 ; 2 uses
  %i.bxj = fcmp olt float %i.bxh, %i.bxi
  %.sroa.speculated.i129.i.i.i338 = select i1 %i.bxj, float %i.bxi, float %i.bxh ; 2 uses
  %i.bxk = fcmp olt float %.sroa.speculated.i129.i.i.i338, %i.bxf
  %.sroa.speculated.1.i130.i.i.i339 = select i1 %i.bxk, float %i.bxf, float %.sroa.speculated.i129.i.i.i338 ; 2 uses
  %i.bxl = fcmp olt float %.sroa.speculated.1.i130.i.i.i339, %i.bxg
  %.sroa.speculated.2.i131.i.i.i340 = select i1 %i.bxl, float %i.bxg, float %.sroa.speculated.1.i130.i.i.i339
  %i.bxm = fcmp olt float %.sroa.speculated.2.i131.i.i.i340, 5.000000e-02
  %i.bxn = shufflevector <2 x float> %.sroa.0.0.copyload4.i116.i.i.i332, <2 x float> %.sroa.8.0.copyload.i118.i.i.i333, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br i1 %i.bxm, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i
  %i.bxo = load i64, ptr %.sroa.420.0.copyload.i266, align 8, !tbaa !211 ; 4 uses
  %i.bxp = mul i64 %i.bxo, 6364136223846793005
  %i.bxq = load i64, ptr %i.bgx, align 8, !tbaa !210
  %i.bxr = add i64 %i.bxp, %i.bxq
  store i64 %i.bxr, ptr %.sroa.420.0.copyload.i266, align 8, !tbaa !211
  %i.bxs = lshr i64 %i.bxo, 45
  %i.bxt = lshr i64 %i.bxo, 27
  %i.bxu = xor i64 %i.bxs, %i.bxt
  %i.bxv = trunc i64 %i.bxu to i32                ; 2 uses
  %i.bxw = lshr i64 %i.bxo, 59
  %i.bxx = trunc nuw nsw i64 %i.bxw to i32
  %i.bxy = call noundef i32 @llvm.fshr.i32(i32 %i.bxv, i32 %i.bxv, i32 %i.bxx)
  %i.bxz = uitofp i32 %i.bxy to float
  %i.bya = fmul nnan float %i.bxz, f0x2F800000    ; 2 uses
  %i.byb = fcmp olt float %i.bya, f0x3F7FFFFF
  %.sroa.speculated.i132.i.i.i344 = select i1 %i.byb, float %i.bya, float f0x3F7FFFFF
  %i.byc = fcmp olt float %.sroa.speculated.i132.i.i.i344, 7.500000e-01
  br i1 %i.byc, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.018.0.copyload.i260, i8 0, i64 16, i1 false)
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  %i.byd = fmul <4 x float> %i.bxn, splat (float 4.000000e+00) ; 2 uses
  store <4 x float> %i.byd, ptr %.sroa.018.0.copyload.i260, align 4, !tbaa !53
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i
  %i.bye = phi <4 x float> [ %i.byd, %bb.ey ], [ zeroinitializer, %bb.ex ], [ %i.bxn, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit134.i.i ]
  %i.byf = fcmp une <4 x float> %i.bye, zeroinitializer
  %i.byg = bitcast <4 x i1> %i.byf to i4
  %.not421 = icmp eq i4 %i.byg, 0
  br i1 %.not421, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_13NanoVDBMediumEEEDaSH_.exit", label %bb.du

bb.fa:                                            ; preds = %bb.dv
  %i.byh = fsub float %i.bil, %.073.i.i283        ; 2 uses
  %i.byi = call float @llvm.fabs.f32(float %i.byh)
  %i.byj = fcmp oeq float %i.byi, +inf
  %.neg.i.i287 = fneg float %i.byh
  %i.byk = select i1 %i.byj, float f0xFF7FFFFF, float %.neg.i.i287 ; 4 uses
  %.sroa.0.0.copyload.i.i141.i.i = load <2 x float>, ptr %i.bgb, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i143.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i277, align 4, !tbaa !99 ; 2 uses
  %.sroa.0.0.vec.extract.i.i144.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i141.i.i, i64 0
  %i.byl = fmul float %i.byk, %.sroa.0.0.vec.extract.i.i144.i.i
  %.sroa.0.4.vec.extract.i.i146.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i141.i.i, i64 1
  %i.bym = fmul float %i.byk, %.sroa.0.4.vec.extract.i.i146.i.i
  %.sroa.6.8.vec.extract.i.i148.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i143.i.i, i64 0
  %i.byn = fmul float %i.byk, %.sroa.6.8.vec.extract.i.i148.i.i
  %.sroa.6.12.vec.extract.i.i150.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i143.i.i, i64 1
  %i.byo = fmul float %i.byk, %.sroa.6.12.vec.extract.i.i150.i.i
  %i.byp = fmul float %i.byl, f0x3FB8AA3B         ; 2 uses
  %i.byq = call noundef float @llvm.floor.f32(float %i.byp) ; 2 uses
  %i.byr = fsub float %i.byp, %i.byq              ; 3 uses
  %i.bys = fptosi float %i.byq to i32
  %i.byt = call noundef float @llvm.fma.f32(float %i.byr, float f0x3DA00AC9, float f0x3E679A0B)
  %i.byu = call noundef float @llvm.fma.f32(float %i.byr, float %i.byt, float f0x3F321004)
  %i.byv = call noundef float @llvm.fma.f32(float %i.byr, float %i.byu, float 1.000000e+00)
  %i.byw = bitcast float %i.byv to i32            ; 2 uses
  %i.byx = lshr i32 %i.byw, 23
  %i.byy = add i32 %i.bys, -127
  %i.byz = add i32 %i.byy, %i.byx                 ; 3 uses
  %i.bza = icmp slt i32 %i.byz, -126
  br i1 %i.bza, label %_ZN4pbrt7FastExpEf.exit.i154.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.bzb = icmp sgt i32 %i.byz, 127
  br i1 %i.bzb, label %_ZN4pbrt7FastExpEf.exit.i154.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.bzc = and i32 %i.byw, -2139095041
  %i.bzd = shl nsw i32 %i.byz, 23
  %i.bze = add nsw i32 %i.bzd, 1065353216
  %i.bzf = or i32 %i.bze, %i.bzc
  %i.bzg = bitcast i32 %i.bzf to float
  br label %_ZN4pbrt7FastExpEf.exit.i154.i.i

_ZN4pbrt7FastExpEf.exit.i154.i.i:                 ; preds = %bb.fc, %bb.fb, %bb.fa
  %.0.i.i155.i.i = phi float [ %i.bzg, %bb.fc ], [ 0.000000e+00, %bb.fa ], [ +inf, %bb.fb ]
  %i.bzh = fmul float %i.bym, f0x3FB8AA3B         ; 2 uses
  %i.bzi = call noundef float @llvm.floor.f32(float %i.bzh) ; 2 uses
  %i.bzj = fsub float %i.bzh, %i.bzi              ; 3 uses
  %i.bzk = fptosi float %i.bzi to i32
  %i.bzl = call noundef float @llvm.fma.f32(float %i.bzj, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bzm = call noundef float @llvm.fma.f32(float %i.bzj, float %i.bzl, float f0x3F321004)
  %i.bzn = call noundef float @llvm.fma.f32(float %i.bzj, float %i.bzm, float 1.000000e+00)
  %i.bzo = bitcast float %i.bzn to i32            ; 2 uses
  %i.bzp = lshr i32 %i.bzo, 23
  %i.bzq = add i32 %i.bzk, -127
  %i.bzr = add i32 %i.bzq, %i.bzp                 ; 3 uses
  %i.bzs = icmp slt i32 %i.bzr, -126
  br i1 %i.bzs, label %_ZN4pbrt7FastExpEf.exit.1.i156.i.i, label %bb.fd

bb.fd:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i154.i.i
  %i.bzt = icmp sgt i32 %i.bzr, 127
  br i1 %i.bzt, label %_ZN4pbrt7FastExpEf.exit.1.i156.i.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.bzu = and i32 %i.bzo, -2139095041
  %i.bzv = shl nsw i32 %i.bzr, 23
  %i.bzw = add nsw i32 %i.bzv, 1065353216
  %i.bzx = or i32 %i.bzw, %i.bzu
  %i.bzy = bitcast i32 %i.bzx to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i156.i.i

_ZN4pbrt7FastExpEf.exit.1.i156.i.i:               ; preds = %bb.fe, %bb.fd, %_ZN4pbrt7FastExpEf.exit.i154.i.i
  %.0.i.1.i157.i.i = phi float [ %i.bzy, %bb.fe ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i154.i.i ], [ +inf, %bb.fd ]
  %i.bzz = fmul float %i.byn, f0x3FB8AA3B         ; 2 uses
  %i.caa = call noundef float @llvm.floor.f32(float %i.bzz) ; 2 uses
  %i.cab = fsub float %i.bzz, %i.caa              ; 3 uses
  %i.cac = fptosi float %i.caa to i32
  %i.cad = call noundef float @llvm.fma.f32(float %i.cab, float f0x3DA00AC9, float f0x3E679A0B)
  %i.cae = call noundef float @llvm.fma.f32(float %i.cab, float %i.cad, float f0x3F321004)
  %i.caf = call noundef float @llvm.fma.f32(float %i.cab, float %i.cae, float 1.000000e+00)
  %i.cag = bitcast float %i.caf to i32            ; 2 uses
  %i.cah = lshr i32 %i.cag, 23
  %i.cai = add i32 %i.cac, -127
  %i.caj = add i32 %i.cai, %i.cah                 ; 3 uses
  %i.cak = icmp slt i32 %i.caj, -126
  br i1 %i.cak, label %_ZN4pbrt7FastExpEf.exit.2.i158.i.i, label %bb.ff

bb.ff:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i156.i.i
  %i.cal = icmp sgt i32 %i.caj, 127
  br i1 %i.cal, label %_ZN4pbrt7FastExpEf.exit.2.i158.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.cam = and i32 %i.cag, -2139095041
  %i.can = shl nsw i32 %i.caj, 23
  %i.cao = add nsw i32 %i.can, 1065353216
  %i.cap = or i32 %i.cao, %i.cam
  %i.caq = bitcast i32 %i.cap to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i158.i.i

_ZN4pbrt7FastExpEf.exit.2.i158.i.i:               ; preds = %bb.fg, %bb.ff, %_ZN4pbrt7FastExpEf.exit.1.i156.i.i
  %.0.i.2.i159.i.i = phi float [ %i.caq, %bb.fg ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i156.i.i ], [ +inf, %bb.ff ]
  %i.car = fmul float %i.byo, f0x3FB8AA3B         ; 2 uses
  %i.cas = call noundef float @llvm.floor.f32(float %i.car) ; 2 uses
  %i.cat = fsub float %i.car, %i.cas              ; 3 uses
  %i.cau = fptosi float %i.cas to i32
  %i.cav = call noundef float @llvm.fma.f32(float %i.cat, float f0x3DA00AC9, float f0x3E679A0B)
  %i.caw = call noundef float @llvm.fma.f32(float %i.cat, float %i.cav, float f0x3F321004)
  %i.cax = call noundef float @llvm.fma.f32(float %i.cat, float %i.caw, float 1.000000e+00)
  %i.cay = bitcast float %i.cax to i32            ; 2 uses
  %i.caz = lshr i32 %i.cay, 23
  %i.cba = add i32 %i.cau, -127
  %i.cbb = add i32 %i.cba, %i.caz                 ; 3 uses
  %i.cbc = icmp slt i32 %i.cbb, -126
end_hunk_3
begin_hunk_4_@_ZNK4pbrt10GridMedium9SampleRayENS_3RayEfRKNS_18SampledWavelengthsE:bb.a
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
  %i.bp = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %5, <2 x float> %.sroa.0.4.vec.insert.i57.i, float %i.bo), !noalias !813 ; 0 uses
  %i.bq = fsub float %3, %i.bj
  br label %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit

_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit: ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.bq, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.sroa.045.4.vec.insert.i.i = insertelement <2 x float> %i.ai, float %i.s, i64 1
  %.sroa.060.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.060.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.060.sroa.5.0.copyload.i = load float, ptr %.sroa.060.sroa.5.0..sroa_idx.i, align 16, !noalias !813
  %.sroa.060.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.060.sroa.6.0.copyload.i = load float, ptr %.sroa.060.sroa.6.0..sroa_idx.i, align 4, !noalias !813
  %i.br = load <2 x float>, ptr %.sroa.060.sroa.2.0..sroa_idx.i, align 4, !noalias !813
  %i.bs = load <4 x float>, ptr %5, align 16, !noalias !813
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bu = fadd <2 x float> %i.br, %i.bt
  %i.bv = fmul <2 x float> %i.bu, splat (float 5.000000e-01) ; 3 uses
  %i.bw = fadd float %.sroa.060.sroa.5.0.copyload.i, %.sroa.060.sroa.6.0.copyload.i
  %i.bx = fmul float %i.bw, 5.000000e-01          ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !813
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
  %.0.i4186.i = load float, ptr %i.cf, align 4, !tbaa !53
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
  %.0.i4186.1.i = load float, ptr %i.cu, align 8, !tbaa !53
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
  %.0.i4186.2.i = load float, ptr %i.ce, align 4, !tbaa !53
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
  store <2 x float> <float +inf, float -inf>, ptr %i.ds, align 8, !tbaa !53
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
  %i.ee = load i64, ptr %i.by, align 8, !tbaa !65
  store i64 %i.ee, ptr %i.ed, align 8, !tbaa !65
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 448
  call void @_ZN4pbrt19DDAMajorantIteratorC2ENS_3RayEffPKNS_12MajorantGridENS_15SampledSpectrumE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(40) %7, float noundef %i.do, float noundef %i.dq, ptr noundef nonnull %i.ef, <2 x float> %i.eb, <2 x float> %i.ec)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt7Bounds3IfE10IntersectPENS_6Point3IfEENS_7Vector3IfEEfPfS6_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt19DDAMajorantIterator4NextEv(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.221") align 4 %0, ptr noundef nonnull align 8 dereferenceable(92) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !248 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !249 ; 6 uses
  %i.e = fcmp ult float %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !53 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = load float, ptr %i.h, align 4, !tbaa !53 ; 2 uses
  %i.j = fcmp olt float %i.g, %i.i
  %i.k = select i1 %i.j, i64 4, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load float, ptr %i.l, align 8, !tbaa !53 ; 2 uses
  %i.n = fcmp olt float %i.g, %i.m
  %i.o = select i1 %i.n, i64 2, i64 0
  %i.p = fcmp olt float %i.i, %i.m
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4pbrt19DDAMajorantIterator4NextEv.cmpToAxis, i64 %i.k
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.o
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q
  %i.u = load i32, ptr %i.t, align 4, !tbaa !76
  %i.v = sext i32 %i.u to i64                     ; 5 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.v ; 4 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !53 ; 2 uses
  %i.y = fcmp olt float %i.x, %i.d
  %i.z = select i1 %i.y, float %i.x, float %i.d   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !250 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !251
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !252
  %i.am = mul nsw i32 %i.al, %i.ah
  %i.an = add nsw i32 %i.am, %i.af
  %i.ao = mul nsw i32 %i.an, %i.aj
  %i.ap = add nsw i32 %i.ao, %i.ad
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !178
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aq
  %i.au = load float, ptr %i.at, align 4, !tbaa !53
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %1, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !99
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = fmul <2 x float> %i.aw, %.sroa.0.0.copyload.i
  %i.ay = fmul <2 x float> %i.aw, %.sroa.6.0.copyload.i
  store float %i.z, ptr %i.a, align 8, !tbaa !248
  %i.az = load float, ptr %i.w, align 4, !tbaa !53
  %i.ba = fcmp ogt float %i.az, %i.d
  %spec.store.select = select i1 %i.ba, float %i.d, float %i.z
  store float %spec.store.select, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.v
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !76
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !76
  %i.bg = add nsw i32 %i.bf, %i.bd                ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !76
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.v
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !76
  %i.bk = icmp eq i32 %i.bg, %i.bj
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.d, ptr %i.a, align 8, !tbaa !248
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.v
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !53
  %i.bo = load float, ptr %i.w, align 4, !tbaa !53
  %i.bp = fadd float %i.bn, %i.bo
  store float %i.bp, ptr %i.w, align 4, !tbaa !53
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bq, align 4, !tbaa !220
  store float %i.b, ptr %0, align 4, !tbaa !53
  %.sroa.4.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.z, ptr %.sroa.4.0..sroa_idx11, align 4, !tbaa !53
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.ax, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.ay, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !99
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt10GridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::MediumProperties") align 8 %0, ptr noundef nonnull align 8 dereferenceable(520) %1, <2 x float> %2, float %3, ptr noundef nonnull align 4 dereferenceable(32) %4) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.pbrt::BlackbodySpectrum", align 4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.f = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load <8 x float>, ptr %i.g, align 8, !tbaa !53 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.j = load float, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.l = load float, ptr %i.k, align 4, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = load float, ptr %i.m, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.p = load float, ptr %i.o, align 4, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = load <2 x float>, ptr %i.q, align 8, !tbaa !53
  %i.s = fmul <2 x float> %2, %i.r                ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.s, %shift
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = load float, ptr %i.u, align 8, !tbaa !53
  %i.w = fmul float %3, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.y = load float, ptr %i.x, align 4, !tbaa !53
  %i.z = fadd float %i.w, %i.y
  %i.aa = fadd float %i.t, %i.z                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store float %i.aa, ptr %i.a, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !76
  %i.ab = fcmp une float %i.aa, 0.000000e+00
  br i1 %i.ab, label %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA3_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 393, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, ptr noundef nonnull align 1 dereferenceable(2) @.str.26, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.26, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #29
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
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !161 ; 2 uses
  %i.bi = fcmp ogt float %i.bh, %.sroa.03.0.vec.extract.i.i
  %i.bj = fsub float %i.bh, %.sroa.03.0.vec.extract.i.i
  %i.bk = extractelement <2 x float> %i.be, i64 0
  %i.bl = fdiv float %i.bk, %i.bj
  %.sroa.09.0.vec.insert.i = insertelement <2 x float> %i.be, float %i.bl, i64 0
  %.sroa.09.0.i = select i1 %i.bi, <2 x float> %.sroa.09.0.vec.insert.i, <2 x float> %i.be ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !162 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, %.sroa.03.4.vec.extract.i.i
  %i.bp = fsub float %i.bn, %.sroa.03.4.vec.extract.i.i
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %.sroa.09.0.i, i64 1
  %i.bq = fdiv float %.sroa.09.4.vec.extract.i, %i.bp
  %.sroa.09.4.vec.insert.i = insertelement <2 x float> %.sroa.09.0.i, float %i.bq, i64 1
  %.sroa.09.1.i = select i1 %i.bo, <2 x float> %.sroa.09.4.vec.insert.i, <2 x float> %.sroa.09.0.i ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bs = load float, ptr %i.br, align 4, !tbaa !163 ; 2 uses
  %i.bt = fcmp ogt float %i.bs, %.sroa.26.0.copyload.i
  %i.bu = fsub float %i.bs, %.sroa.26.0.copyload.i
  %i.bv = fdiv float %i.bf, %i.bu
  %.sroa.6.0.i = select i1 %i.bt, float %i.bv, float %i.bf ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bx = tail call noundef float @_ZNK4pbrt11SampledGridIfE6LookupENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(44) %i.bw, <2 x float> %.sroa.09.1.i, float %.sroa.6.0.i)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !816, !range !115, !noundef !44
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.cc = tail call noundef float @_ZNK4pbrt11SampledGridIfE6LookupENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(44) %i.cb, <2 x float> %.sroa.09.1.i, float %.sroa.6.0.i) ; 3 uses
  %i.cd = fcmp ogt float %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !817, !range !115, !noundef !44
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZNK4pstd8optionalIN4pbrt11SampledGridIfEEEptEv.exit, label %bb.i

_ZNK4pstd8optionalIN4pbrt11SampledGridIfEEEptEv.exit: ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ci = tail call noundef float @_ZNK4pbrt11SampledGridIfE6LookupENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(44) %i.ch, <2 x float> %.sroa.09.1.i, float %.sroa.6.0.i)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !818
  %i.cl = fsub float %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 436
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !819
  %i.co = fmul float %i.cl, %i.cn                 ; 4 uses
  %i.cp = fcmp ogt float %i.co, 1.000000e+02
  br i1 %i.cp, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZNK4pstd8optionalIN4pbrt11SampledGridIfEEEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store float %i.co, ptr %5, align 4, !tbaa !255
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
end_hunk_4
