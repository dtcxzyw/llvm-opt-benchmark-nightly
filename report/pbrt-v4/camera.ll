Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/camera?download=true
inline.NumInlined: 1396
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4pbrt23WavefrontPathIntegrator11ParallelForIZNS0_18GenerateCameraRaysINS_13ZSobolSamplerEEEviNS_9TransformEiEUliE_EEvPKciOT_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.l, align 8
  %i.m = ptrtoint ptr %5 to i64
  store i64 %i.m, ptr %4, align 8, !tbaa !119
  store ptr @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E9_M_invokeERKSt9_Any_dataOlSA_, ptr %i.k, align 8, !tbaa !121
  store ptr @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.j, align 8, !tbaa !117
  invoke void @_ZN4pbrt11ParallelForEllSt8functionIFvllEE(i64 noundef 0, i64 noundef %i.h, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.f

common.resume:                                    ; preds = %bb.l, %.body
  resume { ptr, i32 } %i.r

bb.c:                                             ; preds = %_ZNSt8functionIFvlEEC2IRZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS3_13ZSobolSamplerEEEviNS3_9TransformEiEUliE_vEEOT_.exit
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !117  ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.n, null
  br i1 %.not.i.i3, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %bb.i unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

bb.f:                                             ; preds = %_ZNSt8functionIFvlEEC2IRZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS3_13ZSobolSamplerEEEviNS3_9TransformEiEUliE_vEEOT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !117  ; 2 uses
  %.not.i3.i = icmp eq ptr %i.s, null
  br i1 %.not.i3.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body unwind label %bb.h      ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #28
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !117  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %bb.j
  ret void

.body:                                            ; preds = %bb.f, %bb.g
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  %.not.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i5, label %common.resume, label %bb.l

bb.l:                                             ; preds = %.body
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %common.resume unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvlEZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS1_13ZSobolSamplerEEEviNS1_9TransformEiEUliE_E9_M_invokeERKSt9_Any_dataOl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113
  %i.b = load i64, ptr %1, align 8, !tbaa !101
  %i.c = trunc i64 %i.b to i32
  tail call void @_ZZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_13ZSobolSamplerEEEviNS_9TransformEiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i32 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvlEZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS1_13ZSobolSamplerEEEviNS1_9TransformEiEUliE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS1_13ZSobolSamplerEEEviNS1_9TransformEiEUliE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_13ZSobolSamplerEEEviNS_9TransformEiEUliE_, ptr %0, align 8, !tbaa !124
  br label %_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS1_13ZSobolSamplerEEEviNS1_9TransformEiEUliE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !113
  store ptr %i.a, ptr %0, align 8, !tbaa !113
  br label %_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS1_13ZSobolSamplerEEEviNS1_9TransformEiEUliE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !113
  %i.c = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(152) %i.b, i64 152, i1 false), !tbaa.struct !112
  store ptr %i.c, ptr %0, align 8, !tbaa !113
  br label %_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS1_13ZSobolSamplerEEEviNS1_9TransformEiEUliE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !113    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS1_13ZSobolSamplerEEEviNS1_9TransformEiEUliE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 152) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS1_13ZSobolSamplerEEEviNS1_9TransformEiEUliE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS1_13ZSobolSamplerEEEviNS1_9TransformEiEUliE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_13ZSobolSamplerEEEviNS_9TransformEiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %3 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %4 = alloca %"struct.pbrt::CameraSample", align 8 ; 10 uses
  %5 = alloca %"class.pbrt::Point2.31", align 8   ; 4 uses
  %6 = alloca %class.anon.51, align 8             ; 4 uses
  %7 = alloca %"class.pbrt::ZSobolSampler", align 8 ; 6 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %8 = alloca %class.anon.49, align 8             ; 4 uses
  %9 = alloca %"class.pbrt::ZSobolSampler", align 8 ; 8 uses
  %10 = alloca %"class.pbrt::SampledWavelengths", align 16 ; 11 uses
  %11 = alloca %"class.pstd::optional.33", align 16 ; 22 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !97     ; 33 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !125
  %i.e = and i64 %i.d, 144115188075855871
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %.sroa.2.0.copyload.i.i14.pn.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.2.0.copyload.i.i14.pn.i.i.i = load i64, ptr %.sroa.2.0.copyload.i.i14.pn.in.i.i.i, align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i12.pn.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i.i12.pn.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i12.pn.in.i.i.i, align 8 ; 2 uses
  %.sroa.7118.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i.i14.pn.i.i.i to i32 ; 2 uses
  %.sroa.0115.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i.i12.pn.i.i.i to i32 ; 2 uses
  %i.g = sub nsw i32 %.sroa.7118.8.extract.trunc, %.sroa.0115.0.extract.trunc ; 2 uses
  %i.h = srem i32 %1, %i.g                        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !98
  %i.k = sdiv i32 %1, %i.g
  %i.l = add nsw i32 %i.h, %.sroa.0115.0.extract.trunc ; 4 uses
  %i.m = add nsw i32 %i.k, %i.j                   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126
  %i.p = sext i32 %1 to i64                       ; 28 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  store i32 %i.l, ptr %i.q, align 4, !tbaa !110
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !127
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.p
  store i32 %i.m, ptr %i.t, align 4, !tbaa !110
  %.not.i = icmp sgt i32 %i.h, -1
  %i.u = icmp slt i32 %i.l, %.sroa.7118.8.extract.trunc
  %or.cond.not12.not14.i = select i1 %.not.i, i1 %i.u, i1 false
  %.sroa.0115.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i.i12.pn.i.i.i, 32
  %.sroa.0115.4.extract.trunc = trunc nuw i64 %.sroa.0115.4.extract.shift to i32
  %.not6.i = icmp sge i32 %i.m, %.sroa.0115.4.extract.trunc
  %or.cond10.not.i = select i1 %or.cond.not12.not14.i, i1 %.not6.i, i1 false
  %.sroa.7118.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i.i14.pn.i.i.i, 32
  %.sroa.7118.12.extract.trunc = trunc nuw i64 %.sroa.7118.12.extract.shift to i32
  %i.v = icmp slt i32 %i.m, %.sroa.7118.12.extract.trunc
  %i.w = select i1 %or.cond10.not.i, i1 %i.v, i1 false
  br i1 %i.w, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %.sroa.8106.0.insert.ext111 = zext i32 %i.m to i64 ; 2 uses
  %.sroa.099.0.insert.ext103 = zext i32 %i.l to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18
  %i.z = and i64 %i.y, 144115188075855871
  %i.aa = inttoptr i64 %i.z to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !tbaa.struct !461
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !99
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 0, ptr %i.ad, align 8, !tbaa !246
  %i.ae = shl nuw nsw i64 %.sroa.8106.0.insert.ext111, 16
  %i.af = or i64 %i.ae, %.sroa.8106.0.insert.ext111
  %i.ag = shl nuw nsw i64 %.sroa.099.0.insert.ext103, 16
  %i.ah = or i64 %i.ag, %.sroa.099.0.insert.ext103
  %12 = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %13 = insertelement <2 x i64> %12, i64 %i.ah, i64 1
  %14 = and <2 x i64> %13, splat (i64 281470681808895) ; 2 uses
  %15 = shl nuw nsw <2 x i64> %14, splat (i64 8)
  %16 = or <2 x i64> %15, %14
  %17 = and <2 x i64> %16, splat (i64 71777214294589695) ; 2 uses
  %18 = shl nuw nsw <2 x i64> %17, splat (i64 4)
  %19 = or <2 x i64> %18, %17
  %20 = and <2 x i64> %19, splat (i64 1085102592571150095) ; 2 uses
  %21 = shl nuw nsw <2 x i64> %20, splat (i64 2)
  %22 = or <2 x i64> %21, %20
  %23 = and <2 x i64> %22, splat (i64 3689348814741910323) ; 2 uses
  %24 = shl nuw nsw <2 x i64> %23, <i64 1, i64 0>
  %25 = shl nuw <2 x i64> %23, <i64 2, i64 1>
  %26 = or <2 x i64> %25, %24
  %27 = and <2 x i64> %26, <i64 -6148914691236517206, i64 6148914691236517205>
  %28 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %27)
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !247
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl i64 %28, %i.ak
  %i.am = sext i32 %i.ac to i64
  %i.an = or i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !248
  %i.ap = call noundef float @_ZN4pbrt13ZSobolSampler5Get1DEv(ptr noundef nonnull align 8 dereferenceable(28) %9)
  %i.aq = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !134, !range !107, !noundef !108
  %i.at = trunc nuw i8 %i.as to i1
  %spec.select = select i1 %i.at, float 5.000000e-01, float %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %spec.select, ptr %i.a, align 4, !tbaa !136, !noalias !462
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !462
  store ptr %i.a, ptr %8, align 8, !tbaa !137, !noalias !462
  call void @_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE8DispatchIRZNKS_4Film17SampleWavelengthsEfEUlT_E_EEDcOS7_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SampledWavelengths") align 4 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !138 ; 2 uses
  %i.aw = call <2 x float> @_ZN4pbrt13ZSobolSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(28) %7), !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !463
  store <2 x float> %i.aw, ptr %5, align 8, !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !463
  store ptr %5, ptr %6, align 8, !tbaa !141, !noalias !463
  %i.ax = and i64 %i.av, 144115188075855871
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = lshr i64 %i.av, 57
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = add nsw i32 %i.ba, -1
  %i.bc = call { <2 x float>, float } @_ZN4pbrt6detail8DispatchIRZNKS_6Filter6SampleENS_6Point2IfEEEUlT_E_NS_12FilterSampleENS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ay, i32 noundef %i.bb), !noalias !463 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !463
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.bc, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.bc, 1
  %i.bd = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.be = insertelement <2 x i32> %i.bd, i32 %i.m, i64 1
  %i.bf = sitofp <2 x i32> %i.be to <2 x float>   ; 2 uses
  %i.bg = fadd <2 x float> %.fca.0.extract.i, %i.bf
  %i.bh = call noundef float @_ZN4pbrt13ZSobolSampler5Get1DEv(ptr noundef nonnull align 8 dereferenceable(28) %7), !noalias !463
  %i.bi = call <2 x float> @_ZN4pbrt13ZSobolSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(28) %7), !noalias !463
  %i.bj = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !103, !noalias !463
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 5
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !142, !range !107, !noalias !463, !noundef !108
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.c, label %_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit

bb.c:                                             ; preds = %bb.b
  br label %_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit

_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit: ; preds = %bb.b, %bb.c
  %.sroa.090.0.in = phi <2 x float> [ %i.bf, %bb.c ], [ %i.bg, %bb.b ]
  %.sroa.691.0 = phi <2 x float> [ splat (float 5.000000e-01), %bb.c ], [ %i.bi, %bb.b ]
  %.sroa.992.0 = phi float [ 5.000000e-01, %bb.c ], [ %i.bh, %bb.b ]
  %.sroa.1193.0 = phi float [ 1.000000e+00, %bb.c ], [ %.fca.1.extract.i, %bb.b ] ; 2 uses
  %.sroa.090.0 = fadd <2 x float> %.sroa.090.0.in, splat (float 5.000000e-01)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> %.sroa.090.0, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.691.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %.sroa.992.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %.sroa.1193.0, ptr %.sroa.4.0..sroa_idx, align 4
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !143, !noalias !464 ; 2 uses
  %i.bp = and i64 %i.bo, 144115188075855871
  %i.bq = inttoptr i64 %i.bp to ptr               ; 4 uses
  %i.br = lshr i64 %i.bo, 57
  %i.bs = trunc nuw nsw i64 %i.br to i32
  switch i32 %i.bs, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt17PerspectiveCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1448) %i.bq, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.e:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt18OrthographicCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1440) %i.bq, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.f:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt15SphericalCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(900) %i.bq, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

bb.g:                                             ; preds = %_ZN4pbrt15GetCameraSampleINS_13ZSobolSamplerEEENS_12CameraSampleET_NS_6Point2IiEENS_6FilterE.exit
  call void @_ZNK4pbrt15RealisticCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1128) %i.bq, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %4, ptr noundef nonnull align 4 dereferenceable(32) %10)
  br label %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit

_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 4 uses
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !145, !range !107, !noundef !108
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit, label %bb.k

_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit:    ; preds = %_ZNK4pbrt6Camera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !465
  %i.bx = load <1 x float>, ptr %11, align 16, !noalias !465
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.bx, <1 x float> poison, <2 x i32> zeroinitializer
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.bz = load <1 x float>, ptr %i.by, align 4, !noalias !465
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.bz, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cb = load <1 x float>, ptr %i.ca, align 8, !noalias !465
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.cb, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %3, align 8, !tbaa !136, !noalias !465
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.cc, align 8, !tbaa !136, !noalias !465
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.cd, align 8, !tbaa !136, !noalias !465
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %2, ptr noundef nonnull align 4 dereferenceable(128) %i.bw, ptr noundef nonnull align 4 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !465
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.ce, align 4, !noalias !465 ; 3 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !noalias !465 ; 2 uses
  %i.cf = shufflevector <2 x float> %.sroa.044.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ch = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 8 %i.bw, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !136, !noalias !465 ; 3 uses
  %i.ci = shufflevector <5 x float> %i.ch, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <5 x float> %i.ch, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.ck = fmul <2 x float> %i.cf, %i.cj
  %i.cl = load <2 x float>, ptr %i.cg, align 4, !tbaa !136, !noalias !465 ; 2 uses
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <4 x float> %i.ci, <4 x float> %i.cm, <2 x i32> <i32 0, i32 4>
  %i.co = fmul <2 x float> %.sroa.044.0.copyload.i, %i.cn
  %i.cp = fadd <2 x float> %i.ck, %i.co
  %i.cq = insertelement <2 x float> poison, float %.sroa.245.0.copyload.i, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = shufflevector <2 x float> %i.cl, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ct = shufflevector <5 x float> %i.ch, <5 x float> %i.cs, <2 x i32> <i32 2, i32 6>
  %i.cu = fmul <2 x float> %i.cr, %i.ct
  %i.cv = fadd <2 x float> %i.cp, %i.cu           ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cx = load <2 x float>, ptr %i.cw, align 8, !tbaa !136, !noalias !465
  %i.cy = fmul <2 x float> %.sroa.044.0.copyload.i, %i.cx ; 2 uses
  %shift = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cy, %shift
  %i.cz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = load float, ptr %i.da, align 8, !tbaa !136, !noalias !465
  %i.dc = fmul float %.sroa.245.0.copyload.i, %i.db
  %i.dd = fadd float %i.cz, %i.dc                 ; 5 uses
  %i.de = fmul <2 x float> %i.cv, %i.cv           ; 2 uses
  %shift124 = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop125 = fadd <2 x float> %i.de, %shift124
  %i.df = extractelement <2 x float> %foldExtExtBinop125, i64 0
  %i.dg = fmul float %i.dd, %i.dd
  %i.dh = fadd float %i.df, %i.dg                 ; 2 uses
  %i.di = fcmp ogt float %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %i.dj = extractelement <2 x float> %i.cv, i64 1
  %i.dk = call noundef float @llvm.fabs.f32(float %i.dj)
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !147, !noalias !465
  %i.do = load float, ptr %i.dl, align 8, !tbaa !148, !noalias !465
  %i.dp = fsub float %i.dn, %i.do
  %i.dq = fmul float %i.dp, 5.000000e-01
  %i.dr = fmul float %i.dk, %i.dq
  %i.ds = insertelement <2 x float> %i.cv, float %i.dd, i64 1
  %i.dt = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ds)
  %i.du = load <6 x float>, ptr %2, align 16, !tbaa !136, !noalias !465 ; 2 uses
  %i.dv = shufflevector <6 x float> %i.du, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.dw = shufflevector <6 x float> %i.du, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.dx = fsub <2 x float> %i.dv, %i.dw
  %i.dy = fmul <2 x float> %i.dx, splat (float 5.000000e-01)
  %i.dz = fmul <2 x float> %i.dt, %i.dy           ; 2 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = fadd float %i.ea, %i.dr
  %i.ec = extractelement <2 x float> %i.dz, i64 1
  %i.ed = fadd float %i.eb, %i.ec
  %i.ee = fdiv float %i.ed, %i.dh                 ; 2 uses
  %i.ef = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %i.cv, %i.eg
  %i.ei = fmul float %i.dd, %i.ee
  %i.ej = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %2, <2 x float> %i.eh, float %i.ei) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4pstd8optionalIN4pbrt9CameraRayEEptEv.exit
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ek = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !465
  %i.el = load <4 x float>, ptr %2, align 16, !noalias !465
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !465
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !465
end_hunk_0
begin_hunk_1_@_ZN4pbrt13ZSobolSampler5Get2DEv:bb.a
  %i.nr = zext i32 %i.nq to i64                   ; 2 uses
  %i.ns = lshr i64 %i.nr, 31
  %i.nt = xor i64 %i.ns, %i.nr
  %i.nu = mul i64 %i.nt, 9202493588570546565      ; 2 uses
  %i.nv = lshr i64 %i.nu, 27
  %i.nw = xor i64 %i.nv, %i.nu
  %i.nx = mul i64 %i.nw, -9089707755183418291     ; 2 uses
  %i.ny = lshr i64 %i.nx, 33
  %i.nz = xor i64 %i.ny, %i.nx
  %i.oa = trunc i64 %i.nz to i32
  %i.ob = shl nuw i32 1, %.013.i.i
  %i.oc = and i32 %i.ob, %i.oa
  %.not11.i.i = icmp eq i32 %i.oc, 0
  %i.od = lshr exact i32 -2147483648, %.013.i.i
  %i.oe = select i1 %.not11.i.i, i32 0, i32 %i.od
  %.2.i.i = xor i32 %i.oe, %.112.i.i              ; 3 uses
  %exitcond.not.i.i = icmp eq i32 %.013.i.i, 31
  br i1 %exitcond.not.i.i, label %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.of = ashr exact i32 -2147483648, %.013.i.i
  %i.og = and i32 %i.of, %.2.i.i
  %i.oh = xor i32 %i.og, %i.km
  %i.oi = zext i32 %i.oh to i64                   ; 2 uses
  %i.oj = lshr i64 %i.oi, 31
  %i.ok = xor i64 %i.oj, %i.oi
  %i.ol = mul i64 %i.ok, 9202493588570546565      ; 2 uses
  %i.om = lshr i64 %i.ol, 27
  %i.on = xor i64 %i.om, %i.ol
  %i.oo = mul i64 %i.on, -9089707755183418291     ; 2 uses
  %i.op = lshr i64 %i.oo, 33
  %i.oq = xor i64 %i.op, %i.oo
  %i.or = trunc i64 %i.oq to i32
  %i.os = shl nuw i32 2, %.013.i.i
  %i.ot = and i32 %i.os, %i.or
  %.not11.i.i.1 = icmp eq i32 %i.ot, 0
  %i.ou = lshr exact i32 1073741824, %.013.i.i
  %i.ov = select i1 %.not11.i.i.1, i32 0, i32 %i.ou
  %.2.i.i.1 = xor i32 %i.ov, %.2.i.i
  %i.ow = add nuw nsw i32 %.013.i.i, 2
  br label %bb.s

.lr.ph.i95:                                       ; preds = %bb.r, %bb.v
  %indvars.iv.i96 = phi i64 [ %indvars.iv.next.i101, %bb.v ], [ 0, %bb.r ] ; 2 uses
  %.0914.i97 = phi i32 [ %.1.i100, %bb.v ], [ 0, %bb.r ] ; 2 uses
  %.01013.i98 = phi i64 [ %i.pb, %bb.v ], [ %.1.i, %bb.r ] ; 2 uses
  %i.ox = and i64 %.01013.i98, 1
  %.not11.i99 = icmp eq i64 %i.ox, 0
  br i1 %.not11.i99, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i95
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i96
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !110
  %i.pa = xor i32 %i.oz, %.0914.i97
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i95
  %.1.i100 = phi i32 [ %i.pa, %bb.u ], [ %.0914.i97, %.lr.ph.i95 ] ; 2 uses
  %i.pb = ashr i64 %.01013.i98, 1                 ; 2 uses
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i96, 1
  %.not.i102 = icmp eq i64 %i.pb, 0
  br i1 %.not.i102, label %._crit_edge.i103, label %.lr.ph.i95, !llvm.loop !6

_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit: ; preds = %bb.s
  %i.pc = uitofp i32 %.2.i.i to float
  %i.pd = fmul nnan float %i.pc, f0x2F800000      ; 2 uses
  %i.pe = fcmp ogt float %i.pd, f0x3F7FFFFF
  %.sroa.speculated.i105 = select i1 %i.pe, float f0x3F7FFFFF, float %i.pd
  br i1 %.not12.i93, label %._crit_edge.i116, label %.lr.ph.i108

._crit_edge.i116:                                 ; preds = %bb.z, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit
  %.09.lcssa.i117 = phi i32 [ 0, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit ], [ %.1.i113, %bb.z ]
  %i.pf = shl i32 %i.ko, 31
  %spec.select.i.i118 = xor i32 %.09.lcssa.i117, %i.pf
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %._crit_edge.i116
  %.013.i.i119 = phi i32 [ 1, %._crit_edge.i116 ], [ %i.qp, %bb.x ] ; 8 uses
  %.112.i.i120 = phi i32 [ %spec.select.i.i118, %._crit_edge.i116 ], [ %.2.i.i122.1, %bb.x ] ; 2 uses
  %i.pg = sub nuw nsw i32 32, %.013.i.i119
  %i.ph = shl nsw i32 -1, %i.pg
  %i.pi = and i32 %i.ph, %.112.i.i120
  %i.pj = zext i32 %i.pi to i64
  %i.pk = xor i64 %i.kn, %i.pj                    ; 2 uses
  %i.pl = lshr i64 %i.pk, 31
  %i.pm = xor i64 %i.pl, %i.pk
  %i.pn = mul i64 %i.pm, 9202493588570546565      ; 2 uses
  %i.po = lshr i64 %i.pn, 27
  %i.pp = xor i64 %i.po, %i.pn
  %i.pq = mul i64 %i.pp, -9089707755183418291     ; 2 uses
  %i.pr = lshr i64 %i.pq, 33
  %i.ps = xor i64 %i.pr, %i.pq
  %i.pt = trunc i64 %i.ps to i32
  %i.pu = shl nuw i32 1, %.013.i.i119
  %i.pv = and i32 %i.pu, %i.pt
  %.not11.i.i121 = icmp eq i32 %i.pv, 0
  %i.pw = lshr exact i32 -2147483648, %.013.i.i119
  %i.px = select i1 %.not11.i.i121, i32 0, i32 %i.pw
  %.2.i.i122 = xor i32 %i.px, %.112.i.i120        ; 3 uses
  %exitcond.not.i.i123 = icmp eq i32 %.013.i.i119, 31
  br i1 %exitcond.not.i.i123, label %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit125, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.py = ashr exact i32 -2147483648, %.013.i.i119
  %i.pz = and i32 %i.py, %.2.i.i122
  %i.qa = zext i32 %i.pz to i64
  %i.qb = xor i64 %i.kn, %i.qa                    ; 2 uses
  %i.qc = lshr i64 %i.qb, 31
  %i.qd = xor i64 %i.qc, %i.qb
  %i.qe = mul i64 %i.qd, 9202493588570546565      ; 2 uses
  %i.qf = lshr i64 %i.qe, 27
  %i.qg = xor i64 %i.qf, %i.qe
  %i.qh = mul i64 %i.qg, -9089707755183418291     ; 2 uses
  %i.qi = lshr i64 %i.qh, 33
  %i.qj = xor i64 %i.qi, %i.qh
  %i.qk = trunc i64 %i.qj to i32
  %i.ql = shl nuw i32 2, %.013.i.i119
  %i.qm = and i32 %i.ql, %i.qk
  %.not11.i.i121.1 = icmp eq i32 %i.qm, 0
  %i.qn = lshr exact i32 1073741824, %.013.i.i119
  %i.qo = select i1 %.not11.i.i121.1, i32 0, i32 %i.qn
  %.2.i.i122.1 = xor i32 %i.qo, %.2.i.i122
  %i.qp = add nuw nsw i32 %.013.i.i119, 2
  br label %bb.w

.lr.ph.i108:                                      ; preds = %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit, %bb.z
  %indvars.iv.i109 = phi i64 [ %indvars.iv.next.i114, %bb.z ], [ 52, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit ] ; 2 uses
  %.0914.i110 = phi i32 [ %.1.i113, %bb.z ], [ 0, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit ] ; 2 uses
  %.01013.i111 = phi i64 [ %i.qu, %bb.z ], [ %.1.i, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit ] ; 2 uses
  %i.qq = and i64 %.01013.i111, 1
  %.not11.i112 = icmp eq i64 %i.qq, 0
  br i1 %.not11.i112, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i108
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i109
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !110
  %i.qt = xor i32 %i.qs, %.0914.i110
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i108
  %.1.i113 = phi i32 [ %i.qt, %bb.y ], [ %.0914.i110, %.lr.ph.i108 ] ; 2 uses
  %i.qu = ashr i64 %.01013.i111, 1                ; 2 uses
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i109, 1
  %.not.i115 = icmp eq i64 %i.qu, 0
  br i1 %.not.i115, label %._crit_edge.i116, label %.lr.ph.i108, !llvm.loop !6

_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit125: ; preds = %bb.w
  %i.qv = uitofp i32 %.2.i.i122 to float
  %i.qw = fmul nnan float %i.qv, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit34

_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit34: ; preds = %._crit_edge.loopexit.i30, %bb.c, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit125, %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit92, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit63
  %.sink161 = phi float [ %i.qw, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit125 ], [ %i.nl, %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit92 ], [ %i.ly, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit63 ], [ 0.000000e+00, %bb.c ], [ %i.kz, %._crit_edge.loopexit.i30 ] ; 2 uses
  %.sroa.speculated.i105.sink = phi float [ %.sroa.speculated.i105, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit125 ], [ %.sroa.speculated.i77, %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit92 ], [ %.sroa.speculated.i48150, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit63 ], [ 0.000000e+00, %bb.c ], [ %.sroa.speculated.i, %._crit_edge.loopexit.i30 ]
  %i.qx = fcmp ogt float %.sink161, f0x3F7FFFFF
  %.sroa.speculated.i124 = select i1 %i.qx, float f0x3F7FFFFF, float %.sink161
  %.sroa.0131.0.vec.insert138 = insertelement <2 x float> poison, float %.sroa.speculated.i105.sink, i64 0
  %.sroa.0131.4.vec.insert144 = insertelement <2 x float> %.sroa.0131.0.vec.insert138, float %.sroa.speculated.i124, i64 1
  ret <2 x float> %.sroa.0131.4.vec.insert144
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_camera.cpp() #21 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !136
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !136
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !136
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !136
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !122}
!1 = distinct !{!1, !122}
!2 = distinct !{!2, !122}
!3 = distinct !{!3, !122}
!4 = distinct !{!4, !122}
!5 = distinct !{!5, !122}
!6 = distinct !{!6, !122}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !12, i64 0}
!17 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerENS_15DebugMLTSamplerEEEE", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"any pointer", !12, i64 0}
!20 = !{!"p1 _ZTSN4pbrt8RayQueueE", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"bool", !12, i64 0}
!23 = !{!"_ZTSN4pstd5arrayIbLi12EEE", !12, i64 0}
!24 = !{!"p1 _ZTSN4pbrt23WavefrontPathIntegrator5StatsE", !19, i64 0}
!25 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !19, i64 0}
!26 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEEE", !16, i64 0}
!27 = !{!"_ZTSN4pbrt6FilterE", !26, i64 0}
!28 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEEE", !16, i64 0}
!29 = !{!"_ZTSN4pbrt4FilmE", !28, i64 0}
!30 = !{!"_ZTSN4pbrt7SamplerE", !17, i64 0}
!31 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17PerspectiveCameraENS_18OrthographicCameraENS_15SphericalCameraENS_15RealisticCameraEEEE", !16, i64 0}
!32 = !{!"_ZTSN4pbrt6CameraE", !31, i64 0}
!33 = !{!"p1 _ZTSN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEEE", !19, i64 0}
!34 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_19UniformLightSamplerENS_17PowerLightSamplerENS_22ExhaustiveLightSamplerENS_15BVHLightSamplerEEEE", !16, i64 0}
!35 = !{!"_ZTSN4pbrt12LightSamplerE", !34, i64 0}
!36 = !{!"p1 float", !19, i64 0}
!37 = !{!"p1 int", !19, i64 0}
!38 = !{!"_ZTSN4pbrt3SOAINS_6Point2IiEEEE", !13, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"p1 _ZTSN4pbrt6Float4E", !19, i64 0}
!40 = !{!"_ZTSN4pbrt3SOAINS_18SampledWavelengthsEEE", !13, i64 0, !39, i64 8, !39, i64 16, !36, i64 24, !36, i64 32}
!41 = !{!"_ZTSN4pbrt3SOAINS_15SampledSpectrumEEE", !13, i64 0, !39, i64 8, !36, i64 16}
!42 = !{!"p1 bool", !19, i64 0}
!43 = !{!"_ZTSN4pbrt3SOAINS_6Point3IfEEEE", !13, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!44 = !{!"_ZTSN4pbrt3SOAINS_7Normal3IfEEEE", !13, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!45 = !{!"_ZTSN4pbrt3SOAINS_6Point2IfEEEE", !13, i64 0, !36, i64 8, !36, i64 16}
!46 = !{!"_ZTSN4pbrt3SOAINS_7Vector3IfEEEE", !13, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!47 = !{!"_ZTSN4pbrt3SOAINS_14VisibleSurfaceEEE", !13, i64 0, !42, i64 8, !43, i64 16, !44, i64 48, !44, i64 80, !45, i64 112, !36, i64 136, !46, i64 144, !46, i64 176, !41, i64 208}
!48 = !{!"_ZTSN4pbrt3SOAINS_10RaySamplesEEE", !39, i64 0, !39, i64 8, !39, i64 16, !36, i64 24, !36, i64 32}
!49 = !{!"_ZTSN4pbrt3SOAINS_16PixelSampleStateEEE", !13, i64 0, !36, i64 8, !38, i64 16, !40, i64 40, !41, i64 80, !41, i64 104, !47, i64 128, !48, i64 360}
!50 = !{!"p1 _ZTSN4pbrt18WavefrontAggregateE", !19, i64 0}
!51 = !{!"p1 _ZTSN4pbrt17MediumSampleQueueE", !19, i64 0}
!52 = !{!"p1 _ZTSN4pbrt14MultiWorkQueueINS_8TypePackIJNS_21MediumScatterWorkItemINS_15HGPhaseFunctionEEEEEEEE", !19, i64 0}
!53 = !{!"p1 _ZTSN4pbrt15EscapedRayQueueE", !19, i64 0}
!54 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_20HitAreaLightWorkItemEEE", !19, i64 0}
!55 = !{!"p1 _ZTSN4pbrt14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS2_INS_23CoatedConductorMaterialEEENS2_INS_17ConductorMaterialEEENS2_INS_18DielectricMaterialEEENS2_INS_15DiffuseMaterialEEENS2_INS_27DiffuseTransmissionMaterialEEENS2_INS_12HairMaterialEEENS2_INS_16MeasuredMaterialEEENS2_INS_18SubsurfaceMaterialEEENS2_INS_22ThinDielectricMaterialEEENS2_INS_11MixMaterialEEEEEEEE", !19, i64 0}
!56 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_17ShadowRayWorkItemEEE", !19, i64 0}
!57 = !{!"p1 _ZTSN4pbrt25GetBSSRDFAndProbeRayQueueE", !19, i64 0}
!58 = !{!"p1 _ZTSN4pbrt22SubsurfaceScatterQueueE", !19, i64 0}
!59 = !{!"p1 _ZTSN4pbrt3RGBE", !19, i64 0}
!60 = !{!"p1 _ZTSSt6atomicIbE", !19, i64 0}
!61 = !{!"p1 _ZTSSt6thread", !19, i64 0}
!62 = !{!"_ZTSN4pbrt23WavefrontPathIntegratorE", !22, i64 0, !22, i64 1, !22, i64 2, !23, i64 3, !23, i64 15, !24, i64 32, !25, i64 40, !27, i64 48, !29, i64 56, !30, i64 64, !32, i64 72, !33, i64 80, !35, i64 88, !13, i64 96, !13, i64 100, !22, i64 104, !13, i64 108, !13, i64 112, !49, i64 120, !12, i64 520, !50, i64 536, !51, i64 544, !52, i64 552, !53, i64 560, !54, i64 568, !55, i64 576, !55, i64 584, !56, i64 592, !57, i64 600, !58, i64 608, !59, i64 616, !59, i64 624, !60, i64 632, !61, i64 640}
!63 = !{!"p1 _ZTSN4pbrt23WavefrontPathIntegratorE", !19, i64 0}
!64 = !{!"_ZTSN4pbrt12SquareMatrixILi4EEE", !12, i64 0}
!65 = !{!"_ZTSN4pbrt9TransformE", !64, i64 0, !64, i64 64}
!66 = !{!"_ZTSZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_14PMJ02BNSamplerEEEviNS_9TransformEiEUliE_", !63, i64 0, !13, i64 8, !13, i64 12, !65, i64 16, !20, i64 144}
!67 = !{!66, !63, i64 0}
!68 = !{!66, !13, i64 8}
!69 = !{!66, !13, i64 12}
!70 = !{!66, !20, i64 144}
!71 = !{!"_ZTSZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_18IndependentSamplerEEEviNS_9TransformEiEUliE_", !63, i64 0, !13, i64 8, !13, i64 12, !65, i64 16, !20, i64 144}
!72 = !{!71, !63, i64 0}
!73 = !{!71, !13, i64 8}
!74 = !{!71, !13, i64 12}
!75 = !{!71, !20, i64 144}
!76 = !{!"_ZTSZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_17StratifiedSamplerEEEviNS_9TransformEiEUliE_", !63, i64 0, !13, i64 8, !13, i64 12, !65, i64 16, !20, i64 144}
!77 = !{!76, !63, i64 0}
!78 = !{!76, !13, i64 8}
!79 = !{!76, !13, i64 12}
!80 = !{!76, !20, i64 144}
!81 = !{!"_ZTSZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_13HaltonSamplerEEEviNS_9TransformEiEUliE_", !63, i64 0, !13, i64 8, !13, i64 12, !65, i64 16, !20, i64 144}
!82 = !{!81, !63, i64 0}
!83 = !{!81, !13, i64 8}
!84 = !{!81, !13, i64 12}
!85 = !{!81, !20, i64 144}
!86 = !{!"_ZTSZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_18PaddedSobolSamplerEEEviNS_9TransformEiEUliE_", !63, i64 0, !13, i64 8, !13, i64 12, !65, i64 16, !20, i64 144}
!87 = !{!86, !63, i64 0}
!88 = !{!86, !13, i64 8}
!89 = !{!86, !13, i64 12}
!90 = !{!86, !20, i64 144}
!91 = !{!"_ZTSZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_12SobolSamplerEEEviNS_9TransformEiEUliE_", !63, i64 0, !13, i64 8, !13, i64 12, !65, i64 16, !20, i64 144}
!92 = !{!91, !63, i64 0}
!93 = !{!91, !13, i64 8}
!94 = !{!91, !13, i64 12}
!95 = !{!91, !20, i64 144}
!96 = !{!"_ZTSZN4pbrt23WavefrontPathIntegrator18GenerateCameraRaysINS_13ZSobolSamplerEEEviNS_9TransformEiEUliE_", !63, i64 0, !13, i64 8, !13, i64 12, !65, i64 16, !20, i64 144}
!97 = !{!96, !63, i64 0}
!98 = !{!96, !13, i64 8}
!99 = !{!96, !13, i64 12}
!100 = !{!96, !20, i64 144}
!101 = !{!16, !16, i64 0}
!102 = !{!"p1 _ZTSN4pbrt11PBRTOptionsE", !19, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!"_ZTSN4pbrt25RenderingCoordinateSystemE", !12, i64 0}
!105 = !{!"_ZTSN4pbrt16BasicPBRTOptionsE", !13, i64 0, !22, i64 4, !22, i64 5, !22, i64 6, !22, i64 7, !22, i64 8, !22, i64 9, !22, i64 10, !22, i64 11, !22, i64 12, !22, i64 13, !104, i64 16}
!106 = !{!105, !22, i64 10}
!107 = !{i8 0, i8 2}
!108 = !{}
!109 = !{!63, !63, i64 0}
!110 = !{!13, !13, i64 0}
!111 = !{!12, !12, i64 0}
!112 = !{i64 0, i64 8, !109, i64 8, i64 4, !110, i64 12, i64 4, !110, i64 16, i64 64, !111, i64 80, i64 64, !111, i64 144, i64 8, !21}
!113 = !{!19, !19, i64 0}
!114 = !{!"_ZTSSt14_Function_base", !12, i64 0, !19, i64 16}
!115 = !{!"_ZTSSt8functionIFvlEE", !114, i64 0, !19, i64 24}
!116 = !{!115, !19, i64 24}
!117 = !{!114, !19, i64 16}
!118 = !{!"p1 _ZTSSt8functionIFvlEE", !19, i64 0}
!119 = !{!118, !118, i64 0}
!120 = !{!"_ZTSSt8functionIFvllEE", !114, i64 0, !19, i64 24}
!121 = !{!120, !19, i64 24}
!122 = !{!"llvm.loop.mustprogress"}
!123 = !{!"p1 _ZTSSt9type_info", !19, i64 0}
!124 = !{!123, !123, i64 0}
!125 = !{!28, !16, i64 0}
!126 = !{!38, !37, i64 8}
!127 = !{!38, !37, i64 16}
!128 = !{!"p1 _ZTSN4pstd6vectorIN4pbrt6Point2IfEENS_3pmr21polymorphic_allocatorIS3_EEEE", !19, i64 0}
!129 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EiEE", !13, i64 0, !13, i64 4}
!130 = !{!"_ZTSN4pbrt6Point2IiEE", !129, i64 0}
!131 = !{!"_ZTSN4pbrt14PMJ02BNSamplerE", !13, i64 0, !13, i64 4, !13, i64 8, !128, i64 16, !130, i64 24, !13, i64 32, !13, i64 36}
!132 = !{!131, !13, i64 32}
!133 = !{!131, !13, i64 36}
!134 = !{!105, !22, i64 6}
!135 = !{!"float", !12, i64 0}
!136 = !{!135, !135, i64 0}
!137 = !{!36, !36, i64 0}
!138 = !{!26, !16, i64 0}
!139 = !{!131, !13, i64 0}
!140 = !{!"p1 _ZTSN4pbrt6Point2IfEE", !19, i64 0}
!141 = !{!140, !140, i64 0}
!142 = !{!105, !22, i64 5}
!143 = !{!31, !16, i64 0}
!144 = !{!"_ZTSN4pstd8optionalIN4pbrt9CameraRayEEE", !12, i64 0, !22, i64 56}
!145 = !{!144, !22, i64 56}
!146 = !{!"_ZTSN4pbrt8IntervalE", !135, i64 0, !135, i64 4}
!147 = !{!146, !135, i64 4}
!148 = !{!146, !135, i64 0}
!149 = !{!41, !39, i64 8}
!150 = !{!40, !39, i64 8}
!151 = !{!40, !39, i64 16}
!152 = !{!62, !36, i64 128}
!153 = !{!62, !22, i64 0}
!154 = !{!47, !42, i64 8}
!155 = !{!22, !22, i64 0}
!156 = !{!43, !36, i64 8}
!157 = !{!43, !36, i64 16}
!158 = !{!43, !36, i64 24}
!159 = !{!44, !36, i64 8}
!160 = !{!44, !36, i64 16}
!161 = !{!44, !36, i64 24}
!162 = !{!45, !36, i64 8}
end_hunk_1
