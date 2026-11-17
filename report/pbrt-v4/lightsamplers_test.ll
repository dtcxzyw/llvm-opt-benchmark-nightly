Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lightsamplers_test?download=true
inline.NumInlined: 2669
inline.NumDeleted: 1108
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@llvm.lifetime.start.p0
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing4Test13SetUpTestCaseEv() #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing4Test16TearDownTestCaseEv() #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN29BVHLightSampling_OneSpot_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %class.anon.115, align 8            ; 7 uses
  %5 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %6 = alloca %"class.pbrt::LightSampleContext", align 8 ; 7 uses
  %7 = alloca %"class.pbrt::Transform", align 4   ; 17 uses
  %8 = alloca %"class.pbrt::ConstantSpectrum", align 4 ; 6 uses
  %9 = alloca %"struct.pbrt::MediumInterface", align 8 ; 6 uses
  %10 = alloca %"class.pbrt::Spectrum", align 8   ; 2 uses
  %11 = alloca %"class.pbrt::BVHLightSampler", align 8 ; 7 uses
  %12 = alloca %"class.pstd::optional", align 16  ; 7 uses
  %13 = alloca %"class.pstd::optional.14", align 8 ; 7 uses
  %14 = alloca %"class.pbrt::LightSampleContext", align 8 ; 8 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %16 = alloca %"class.testing::Message", align 8 ; 8 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %20 = alloca %"class.testing::Message", align 8 ; 8 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %24 = alloca %"class.testing::Message", align 8 ; 8 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %27 = alloca %"class.testing::Message", align 8 ; 8 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %31 = alloca %"class.testing::Message", align 8 ; 11 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store float 1.000000e+00, ptr %7, align 4, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.h, align 4, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 108
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store float 1.000000e+00, ptr %8, align 4, !tbaa !20
  %i.o = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #26
          to label %bb.b unwind label %bb.d       ; 3 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.p = ptrtoint ptr %8 to i64
  %i.q = or i64 %i.p, 144115188075855872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store i64 %i.q, ptr %10, align 8, !tbaa !23
  invoke void @_ZN4pbrt9SpotLightC1ERKNS_9TransformERKNS_15MediumInterfaceENS_8SpectrumEfff(ptr noundef nonnull align 8 dereferenceable(172) %i.o, ptr noundef nonnull align 4 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %10, float noundef 1.000000e+00, float noundef 4.500000e+01, float noundef 4.400000e+01)
          to label %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.f

_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.b
  %i.r = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %bb.c unwind label %bb.e       ; 6 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = or i64 %i.s, 720575940379279360
  store i64 %i.t, ptr %i.r, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.u = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25
  invoke void @_ZN4pbrt15BVHLightSamplerC1EN4pstd4spanIKNS_5LightEEENS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(160) %11, ptr nonnull %i.r, i64 1, ptr %i.u)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %bb.c
  %.sroa.2202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.3203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.6191.0..sroa_idx192 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.7194.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  br label %bb.h

_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit:      ; preds = %bb.dx
  call void @_ZN4pbrt15BVHLightSamplerD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.thread253

bb.e:                                             ; preds = %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.thread253

bb.f:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 176) #27
  br label %.thread253

bb.g:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.h:                                             ; preds = %.preheader, %bb.dx
  %.052277 = phi i32 [ 0, %.preheader ], [ %.153, %bb.dx ] ; 2 uses
  %.sroa.0214.0276 = phi i64 [ -8846114313915602277, %.preheader ], [ %.sroa.0214.1, %bb.dx ] ; 2 uses
  %i.at = mul i64 %.sroa.0214.0276, 6364136223846793005
  %i.au = add i64 %i.at, -2720673578348880933     ; 4 uses
  %i.av = mul i64 %i.au, 6364136223846793005
  %i.aw = add i64 %i.av, -2720673578348880933     ; 2 uses
  %i.ax = lshr i64 %i.au, 45
  %i.ay = lshr i64 %i.au, 27
  %i.az = xor i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = lshr i64 %i.au, 59
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = call noundef i32 @llvm.fshr.i32(i32 %i.ba, i32 %i.ba, i32 %i.bc)
  %i.be = uitofp i32 %i.bd to float
  %i.bf = fmul nnan float %i.be, f0x2F800000      ; 2 uses
  %i.bg = fcmp olt float %i.bf, f0x3F7FFFFF
  %.sroa.speculated.i91 = select i1 %i.bg, float %i.bf, float f0x3F7FFFFF ; 2 uses
  %i.bh = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i91
  %i.bi = fmul nnan float %i.bh, 5.000000e+00
  %i.bj = fmul nnan float %.sroa.speculated.i91, 5.000000e+00
  %i.bk = fsub float %i.bj, %i.bi                 ; 4 uses
  %i.bl = mul i64 %i.aw, 6364136223846793005
  %i.bm = add i64 %i.bl, -2720673578348880933     ; 3 uses
  %i.bn = fmul float %i.bk, %i.bk
  %i.bo = insertelement <2 x i64> poison, i64 %.sroa.0214.0276, i64 0
  %i.bp = insertelement <2 x i64> %i.bo, i64 %i.aw, i64 1 ; 3 uses
  %i.bq = lshr <2 x i64> %i.bp, splat (i64 45)
  %i.br = lshr <2 x i64> %i.bp, splat (i64 27)
  %i.bs = xor <2 x i64> %i.bq, %i.br
  %i.bt = trunc <2 x i64> %i.bs to <2 x i32>      ; 2 uses
  %i.bu = lshr <2 x i64> %i.bp, splat (i64 59)
  %i.bv = trunc nuw nsw <2 x i64> %i.bu to <2 x i32>
  %i.bw = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bt, <2 x i32> %i.bt, <2 x i32> %i.bv)
  %i.bx = uitofp <2 x i32> %i.bw to <2 x float>
  %i.by = fmul nnan <2 x float> %i.bx, splat (float f0x2F800000) ; 2 uses
  %i.bz = fcmp olt <2 x float> %i.by, splat (float f0x3F7FFFFF)
  %i.ca = select <2 x i1> %i.bz, <2 x float> %i.by, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.cb = fsub nnan ninf <2 x float> splat (float 1.000000e+00), %i.ca
  %i.cc = fmul nnan <2 x float> %i.cb, splat (float 5.000000e+00)
  %i.cd = fmul nnan <2 x float> %i.ca, splat (float 5.000000e+00)
  %i.ce = fsub <2 x float> %i.cd, %i.cc           ; 6 uses
  %i.cf = fmul <2 x float> %i.ce, %i.ce           ; 2 uses
  %i.cg = extractelement <2 x float> %i.cf, i64 0
  %i.ch = fadd float %i.cg, %i.bn
  %i.ci = extractelement <2 x float> %i.cf, i64 1
  %i.cj = fadd float %i.ch, %i.ci
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.cj)
  %i.ck = extractelement <2 x float> %i.ce, i64 1 ; 2 uses
  %i.cl = fdiv float %i.ck, %sqrt.i.i
  %i.cm = call noundef float @acosf(float noundef %i.cl) #25
  %i.cn = fmul float %i.cm, f0x42652EE0           ; 2 uses
  %i.co = fcmp ogt float %i.cn, 4.475000e+01
  %i.cp = fcmp olt float %i.cn, 4.525000e+01
  %or.cond = and i1 %i.co, %i.cp
  br i1 %or.cond, label %bb.dx, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.07.4.vec.insert.i.i = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cq = insertelement <2 x float> poison, float %i.bk, i64 0
  %.sroa.05.4.vec.insert.i.i = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0.4.vec.insert.i.i94 = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cr = mul i64 %i.bm, 6364136223846793005
  %i.cs = add i64 %i.cr, -2720673578348880933     ; 2 uses
  %i.ct = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %i.cu = insertelement <2 x i64> %i.ct, i64 %i.cs, i64 1 ; 3 uses
  %i.cv = lshr <2 x i64> %i.cu, splat (i64 45)
  %i.cw = lshr <2 x i64> %i.cu, splat (i64 27)
  %i.cx = xor <2 x i64> %i.cv, %i.cw
  %i.cy = trunc <2 x i64> %i.cx to <2 x i32>      ; 2 uses
  %i.cz = lshr <2 x i64> %i.cu, splat (i64 59)
  %i.da = trunc nuw nsw <2 x i64> %i.cz to <2 x i32>
  %i.db = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.cy, <2 x i32> %i.cy, <2 x i32> %i.da)
  %i.dc = uitofp <2 x i32> %i.db to <2 x float>
  %i.dd = fmul nnan <2 x float> %i.dc, splat (float f0x2F800000) ; 2 uses
  %i.de = fcmp olt <2 x float> %i.dd, splat (float f0x3F7FFFFF)
  %i.df = select <2 x i1> %i.de, <2 x float> %i.dd, <2 x float> splat (float f0x3F7FFFFF)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4204.0..sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <8 x float> <float 5.950000e+02, float 7.125000e+02, float 8.300000e+02, float 4.775000e+02, float f0x3B0B7034, float f0x3B0B7034, float f0x3B0B7034, float f0x3B0B7034>, ptr %5, align 8
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %6, align 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %.sroa.2202.0..sroa_idx, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i.i94, ptr %.sroa.3203.0..sroa_idx, align 8
  store <2 x float> %i.df, ptr %3, align 8, !noalias !231
  store i8 0, ptr %i.a, align 1, !tbaa !27, !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !231
  store ptr %6, ptr %4, align 8, !tbaa !30, !noalias !231
  store ptr %3, ptr %i.v, align 8, !tbaa !32, !noalias !231
  store ptr %5, ptr %i.w, align 8, !tbaa !34, !noalias !231
  store ptr %i.a, ptr %i.x, align 8, !tbaa !36, !noalias !231
  %i.dg = load i64, ptr %i.r, align 8, !tbaa !25, !noalias !232 ; 2 uses
  %i.dh = and i64 %i.dg, 144115188075855871
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = lshr i64 %i.dg, 57
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = add nsw i32 %i.dk, -1
  invoke void @_ZN4pbrt6detail8DispatchIRZNKS_5Light8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEbEUlT_E_N4pstd8optionalINS_13LightLiSampleEEENS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS7_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.di, i32 noundef %i.dl)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.dm = mul i64 %i.cs, 6364136223846793005
  %i.dn = add i64 %i.dm, -2720673578348880933     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %14, align 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %.sroa.6191.0..sroa_idx192, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i.i94, ptr %.sroa.7194.0..sroa_idx195, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.do = mul i64 %i.dn, 6364136223846793005
  %i.dp = add i64 %i.do, -2720673578348880933
  %i.dq = lshr i64 %i.dn, 45
  %i.dr = lshr i64 %i.dn, 27
  %i.ds = xor i64 %i.dq, %i.dr
  %i.dt = trunc i64 %i.ds to i32                  ; 2 uses
  %i.du = lshr i64 %i.dn, 59
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = call noundef i32 @llvm.fshr.i32(i32 %i.dt, i32 %i.dt, i32 %i.dv)
  %i.dx = uitofp i32 %i.dw to float
  %i.dy = fmul nnan float %i.dx, f0x2F800000      ; 2 uses
  %i.dz = fcmp olt float %i.dy, f0x3F7FFFFF
  %.sroa.speculated.i98 = select i1 %i.dz, float %i.dy, float f0x3F7FFFFF
  invoke void @_ZNK4pbrt15BVHLightSampler6SampleERKNS_18LightSampleContextEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.14") align 8 %13, ptr noundef nonnull align 8 dereferenceable(160) %11, ptr noundef nonnull align 4 dereferenceable(48) %14, float noundef %.sroa.speculated.i98)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.ea = load i8, ptr %i.z, align 8, !tbaa !38, !range !39, !noundef !40
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.ai, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.ec = load i8, ptr %i.aa, align 16, !tbaa !42, !range !39, !noundef !40 ; 2 uses
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = xor i8 %i.ec, 1
  store i8 %i.ee, ptr %15, align 8, !tbaa !46
  store ptr null, ptr %i.ab, align 8, !tbaa !47
  br i1 %i.ed, label %bb.o, label %_ZN7testing15AssertionResultD2Ev.exit

bb.m:                                             ; preds = %bb.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.n:                                             ; preds = %bb.j
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.dz

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.eh = load ptr, ptr %18, align 8, !tbaa !51
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 54, ptr noundef %i.eh)
          to label %bb.r unwind label %bb.z

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #25
  %i.ei = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ac
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.ek = load i64, ptr %i.ac, align 8, !tbaa !52
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.em = load ptr, ptr %16, align 8, !tbaa !55
  %.not.i.i.i99 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i99, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.en = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.w

.noexc.i.i:                                       ; preds = %bb.t
  br i1 %i.en, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %.noexc.i.i
  %i.eo = load ptr, ptr %16, align 8, !tbaa !55   ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !57
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(128) %i.eo) #25, !inline_history !0
  br label %bb.ad

bb.w:                                             ; preds = %bb.t
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #28
  unreachable

bb.x:                                             ; preds = %bb.o
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %bb.p
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.z:                                             ; preds = %bb.q
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

end_hunk_0
begin_hunk_1_@_ZN4pbrt15BVHLightSamplerD2Ev:bb.a
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28
  unreachable

_ZN4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.n, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIN4pbrt12LightBVHNodeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i64, ptr %i.r, align 8, !tbaa !240
  %i.t = shl i64 %i.s, 5
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !241  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.p, i64 noundef %i.t, i64 noundef 32)
          to label %_ZN4pstd6vectorIN4pbrt12LightBVHNodeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.e, !inline_history !237

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #28
  unreachable

_ZN4pstd6vectorIN4pbrt12LightBVHNodeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %_ZN4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEED2Ev.exit, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.aa, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i1, label %_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4pstd6vectorIN4pbrt12LightBVHNodeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !82
  %i.ag = shl i64 %i.af, 3
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !83 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.ac, i64 noundef %i.ag, i64 noundef 8)
          to label %_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #28
  unreachable

_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %_ZN4pstd6vectorIN4pbrt12LightBVHNodeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.an, align 8, !tbaa !65
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i2, label %_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !82
  %i.as = shl i64 %i.ar, 3
  %i.at = load ptr, ptr %0, align 8, !tbaa !83    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !57
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull %i.ap, i64 noundef %i.as, i64 noundef 8)
          to label %_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit3 unwind label %bb.i, !inline_history !1

bb.i:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #28
  unreachable

_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit3: ; preds = %_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27BVHLightSampling_Point_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %2 = alloca %"class.pbrt::Transform", align 8   ; 4 uses
  %3 = alloca %"class.std::unordered_map", align 8 ; 15 uses
  %4 = alloca %"class.pbrt::ConstantSpectrum", align 4 ; 5 uses
  %5 = alloca %"class.pbrt::Transform", align 8   ; 2 uses
  %6 = alloca %"struct.pbrt::MediumInterface", align 8 ; 2 uses
  %7 = alloca %"class.pbrt::BVHLightSampler", align 8 ; 8 uses
  %8 = alloca %"class.pstd::optional.14", align 8 ; 11 uses
  %9 = alloca %"class.pbrt::LightSampleContext", align 8 ; 8 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %18 = alloca %"class.pbrt::LightSampleContext", align 8 ; 8 uses
  %19 = alloca %"class.pbrt::Light", align 8      ; 2 uses
  %20 = alloca %"class.testing::Message", align 8 ; 8 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 8 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 8 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 1, ptr %i.e, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store float 1.000000e+00, ptr %4, align 4, !tbaa !20
  %i.i = ptrtoint ptr %4 to i64
  %i.j = or i64 %i.i, 144115188075855872
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.k = ptrtoint ptr %.sroa.11261.1 to i64
  %i.l = ptrtoint ptr %.sroa.0255.3 to i64        ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 4 uses
  %i.o = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25
  invoke void @_ZN4pbrt15BVHLightSamplerC1EN4pstd4spanIKNS_5LightEEENS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(160) %7, ptr %.sroa.0255.3, i64 %i.n, ptr %i.o)
          to label %.preheader unwind label %bb.m

.preheader:                                       ; preds = %bb.b
  %i.p = icmp ugt i64 %i.n, 2305843009213693951
  %.not.i.i.i.i132 = icmp eq ptr %.sroa.11261.1, %.sroa.0255.3 ; 2 uses
  %i.q = ashr exact i64 %i.m, 1                   ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.8.0..sroa_idx217 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.aa = and i64 %i.q, -4
  %umax = call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  br label %bb.n

bb.c:                                             ; preds = %bb.a, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit
  %.063444 = phi i32 [ 0, %bb.a ], [ %i.dg, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 2 uses
  %.sroa.0255.0443 = phi ptr [ null, %bb.a ], [ %.sroa.0255.3, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 13 uses
  %.sroa.11261.0442 = phi ptr [ null, %bb.a ], [ %.sroa.11261.1, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 8 uses
  %.sroa.18.0441 = phi ptr [ null, %bb.a ], [ %.sroa.18.3, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 4 uses
  %.sroa.0.0440 = phi i64 [ -8846114313915602277, %bb.a ], [ %i.ag, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 2 uses
  %i.ab = mul i64 %.sroa.0.0440, 6364136223846793005
  %i.ac = add i64 %i.ab, -2720673578348880933     ; 2 uses
  %i.ad = mul i64 %i.ac, 6364136223846793005
  %i.ae = add i64 %i.ad, -2720673578348880933     ; 4 uses
  %i.af = mul i64 %i.ae, 6364136223846793005
  %i.ag = add i64 %i.af, -2720673578348880933     ; 2 uses
  %i.ah = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #26
          to label %bb.d unwind label %.loopexit291 ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.ai = insertelement <2 x i64> poison, i64 %.sroa.0.0440, i64 0
  %i.aj = insertelement <2 x i64> %i.ai, i64 %i.ac, i64 1 ; 3 uses
  %i.ak = lshr <2 x i64> %i.aj, splat (i64 45)
  %i.al = lshr <2 x i64> %i.aj, splat (i64 27)
  %i.am = lshr <2 x i64> %i.aj, splat (i64 59)
  %i.an = xor <2 x i64> %i.ak, %i.al
  %i.ao = trunc <2 x i64> %i.an to <2 x i32>      ; 2 uses
  %i.ap = trunc nuw nsw <2 x i64> %i.am to <2 x i32>
  %i.aq = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ao, <2 x i32> %i.ao, <2 x i32> %i.ap)
  %i.ar = uitofp <2 x i32> %i.aq to <2 x float>
  %i.as = fmul nnan <2 x float> %i.ar, splat (float f0x2F800000) ; 2 uses
  %i.at = fcmp olt <2 x float> %i.as, splat (float f0x3F7FFFFF)
  %i.au = select <2 x i1> %i.at, <2 x float> %i.as, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.av = fsub nnan ninf <2 x float> splat (float 1.000000e+00), %i.au
  %i.aw = fmul nnan <2 x float> %i.av, splat (float 5.000000e+00)
  %i.ax = fmul nnan <2 x float> %i.au, splat (float 5.000000e+00)
  %i.ay = fsub <2 x float> %i.ax, %i.aw
  %i.az = lshr i64 %i.ae, 45
  %i.ba = lshr i64 %i.ae, 27
  %i.bb = xor i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = lshr i64 %i.ae, 59
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = call noundef i32 @llvm.fshr.i32(i32 %i.bc, i32 %i.bc, i32 %i.be)
  %i.bg = uitofp i32 %i.bf to float
  %i.bh = fmul nnan float %i.bg, f0x2F800000      ; 2 uses
  %i.bi = fcmp olt float %i.bh, f0x3F7FFFFF
  %.sroa.speculated.i117 = select i1 %i.bi, float %i.bh, float f0x3F7FFFFF ; 2 uses
  %i.bj = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i117
  %i.bk = fmul nnan float %i.bj, 5.000000e+00
  %i.bl = fmul nnan float %.sroa.speculated.i117, 5.000000e+00
  %i.bm = fsub float %i.bl, %i.bk
  invoke void @_ZN4pbrt9TranslateENS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %5, <2 x float> %i.ay, float %i.bm)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 128, i1 false)
  invoke void @_ZN4pbrt9LightBaseC2ENS_9LightTypeERKNS_9TransformERKNS_15MediumInterfaceE(ptr noundef nonnull align 8 dereferenceable(164) %i.ah, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.e
  store i64 %i.j, ptr %1, align 8, !tbaa !23
  %i.bn = invoke noundef ptr @_ZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumE(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %1)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %.noexc
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !102
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  store float 1.000000e+00, ptr %i.bp, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bq = ptrtoint ptr %i.ah to i64
  %i.br = or i64 %i.bq, 144115188075855872        ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.11261.0442, %.sroa.18.0441
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.br, ptr %.sroa.11261.0442, align 8, !tbaa !25
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EE9push_backEOS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.11261.0442 to i64   ; 2 uses
  %i.bt = ptrtoint ptr %.sroa.0255.0443 to i64    ; 3 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.i, label %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #29
          to label %.noexc119 unwind label %.loopexit.split-lp292

.noexc119:                                        ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
  %i.ca = select i1 %i.by, i64 1152921504606846975, i64 %i.bz ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ca, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #26
          to label %.noexc120 unwind label %.loopexit291 ; 10 uses

.noexc120:                                        ; preds = %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  store i64 %i.br, ptr %i.cd, align 8, !tbaa !25
  %.not13.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0255.0443, %.sroa.11261.0442
  br i1 %.not13.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc120
  %i.ce = ptrtoaddr ptr %i.cc to i64
  %i.cf = add i64 %i.bs, -8
  %i.cg = sub i64 %i.cf, %i.bt                    ; 3 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cg, 24
  %i.cj = sub i64 %i.bt, %i.ce
  %diff.check = icmp ugt i64 %i.cj, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check874 = icmp ult i64 %i.cg, 120
  br i1 %min.iters.check874, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ck = and i64 %i.ci, 12
  %n.vec = and i64 %i.ci, 4611686018427387888     ; 4 uses
  %i.cl = shl i64 %n.vec, 3                       ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cc, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.0255.0443, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cc, i64 %i.co ; 4 uses
  %next.gep875 = getelementptr i8, ptr %.sroa.0255.0443, i64 %i.co ; 4 uses
  %i.cp = getelementptr i8, ptr %next.gep875, i64 32
  %i.cq = getelementptr i8, ptr %next.gep875, i64 64
  %i.cr = getelementptr i8, ptr %next.gep875, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep875, align 8, !tbaa !25
  %wide.load876 = load <4 x i64>, ptr %i.cp, align 8, !tbaa !25
  %wide.load877 = load <4 x i64>, ptr %i.cq, align 8, !tbaa !25
  %wide.load878 = load <4 x i64>, ptr %i.cr, align 8, !tbaa !25
  %i.cs = getelementptr i8, ptr %next.gep, i64 32
  %i.ct = getelementptr i8, ptr %next.gep, i64 64
  %i.cu = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25
  store <4 x i64> %wide.load876, ptr %i.cs, align 8, !tbaa !25
  store <4 x i64> %wide.load877, ptr %i.ct, align 8, !tbaa !25
  store <4 x i64> %wide.load878, ptr %i.cu, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !106

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec879 = and i64 %i.ci, 4611686018427387900  ; 3 uses
  %i.cw = shl i64 %n.vec879, 3                    ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cc, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %.sroa.0255.0443, i64 %i.cw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index880 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next884, %vec.epilog.vector.body ] ; 2 uses
  %i.cz = shl i64 %index880, 3                    ; 2 uses
  %next.gep881 = getelementptr i8, ptr %i.cc, i64 %i.cz
  %next.gep882 = getelementptr i8, ptr %.sroa.0255.0443, i64 %i.cz
  %wide.load883 = load <4 x i64>, ptr %next.gep882, align 8, !tbaa !25
  store <4 x i64> %wide.load883, ptr %next.gep881, align 8, !tbaa !25
  %index.next884 = add nuw i64 %index880, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next884, %n.vec879
  br i1 %i.da, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !243

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n885 = icmp eq i64 %i.ci, %n.vec879
  br i1 %cmp.n885, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cc, %iter.check ], [ %i.cm, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  %.01214.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0255.0443, %iter.check ], [ %i.cn, %vec.epilog.iter.check ], [ %i.cy, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.db = load i64, ptr %.01214.i.i.i.i.i.i.i.i, align 8, !tbaa !25
  store i64 %i.db, ptr %.015.i.i.i.i.i.i.i.i, align 8, !tbaa !25
  %i.dc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dc, %.sroa.11261.0442
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !244

_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc120
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.noexc120 ], [ %i.cx, %vec.epilog.middle.block ], [ %i.cm, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.not.i35.i.i.i = icmp eq ptr %.sroa.0255.0443, null
  br i1 %.not.i35.i.i.i, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0255.0443, i64 noundef %i.bu) #27
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ca
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN4pbrt5LightESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.g
  %.sroa.18.3 = phi ptr [ %i.de, %_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18.0441, %bb.g ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.11261.0442, %bb.g ] ; 2 uses
  %.sroa.0255.3 = phi ptr [ %i.cc, %_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0255.0443, %bb.g ] ; 8 uses
  %i.df = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIN4pbrt5LightESt4pairIKS2_iESaIS5_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8) %.0.lcssa.i.i.i.i.i.i.i.i.pn)
          to label %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit unwind label %bb.k

_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit: ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EE9push_backEOS1_.exit
  %.sroa.11261.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.pn, i64 8 ; 3 uses
  store i32 %.063444, ptr %i.df, align 4, !tbaa !58
  %i.dg = add nuw nsw i32 %.063444, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dg, 33
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !245

bb.k:                                             ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EE9push_backEOS1_.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

.loopexit291:                                     ; preds = %bb.c, %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.18.0441.lcssa = phi ptr [ %.sroa.18.0441, %bb.c ], [ %.sroa.11261.0442, %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit293 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

.loopexit.split-lp292:                            ; preds = %bb.i
  %lpad.loopexit.split-lp294 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.l:                                             ; preds = %.noexc, %bb.e, %bb.d
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 168) #27
  br label %bb.eq

bb.m:                                             ; preds = %bb.b
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.n:                                             ; preds = %.preheader, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.064449 = phi i32 [ 0, %.preheader ], [ %i.pu, %_ZNSt6vectorIfSaIfEED2Ev.exit ]
  %.sroa.0.1448 = phi i64 [ %i.ag, %.preheader ], [ %.sink.i130, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 2 uses
  %i.dk = mul i64 %.sroa.0.1448, 6364136223846793005
  %i.dl = add i64 %i.dk, -2720673578348880933     ; 2 uses
  %i.dm = insertelement <2 x i64> poison, i64 %i.dl, i64 0
  %i.dn = insertelement <2 x i64> %i.dm, i64 %.sroa.0.1448, i64 1 ; 3 uses
  %i.do = lshr <2 x i64> %i.dn, splat (i64 45)
  %i.dp = lshr <2 x i64> %i.dn, splat (i64 27)
  %i.dq = xor <2 x i64> %i.do, %i.dp
  %i.dr = trunc <2 x i64> %i.dq to <2 x i32>      ; 2 uses
  %i.ds = lshr <2 x i64> %i.dn, splat (i64 59)
  %i.dt = trunc nuw nsw <2 x i64> %i.ds to <2 x i32>
  %i.du = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.dr, <2 x i32> %i.dr, <2 x i32> %i.dt)
  %i.dv = uitofp <2 x i32> %i.du to <2 x float>
  %i.dw = fmul nnan <2 x float> %i.dv, splat (float f0x2F800000) ; 3 uses
  %i.dx = fcmp olt <2 x float> %i.dw, splat (float f0x3F7FFFFF) ; 2 uses
  %i.dy = extractelement <2 x i1> %i.dx, i64 1
  %i.dz = extractelement <2 x float> %i.dw, i64 1
  %i.ea = fcmp olt float %i.dz, 5.000000e-01
  %i.eb = select i1 %i.dy, i1 %i.ea, i1 false
  %i.ec = extractelement <2 x i1> %i.dx, i64 0
  %i.ed = extractelement <2 x float> %i.dw, i64 0
  %.sroa.speculated.i1.i = select i1 %i.ec, float %i.ed, float f0x3F7FFFFF ; 3 uses
  %i.ee = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i1.i ; 2 uses
  br i1 %i.eb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ef = fmul nnan float %i.ee, 1.500000e+01
  %i.eg = fmul nnan float %.sroa.speculated.i1.i, -7.000000e+00
  %i.eh = fsub float %i.eg, %i.ef
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ei = fmul nnan float %i.ee, 7.000000e+00
  %i.ej = fmul nnan float %.sroa.speculated.i1.i, 1.600000e+01
  %i.ek = fadd float %i.ej, %i.ei
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.el = phi float [ %i.eh, %bb.o ], [ %i.ek, %bb.p ]
  %.pn.i = mul i64 %i.dl, 6364136223846793005
  %.sink.i = add i64 %.pn.i, -2720673578348880933 ; 2 uses
  %i.em = mul i64 %.sink.i, 6364136223846793005
  %i.en = add i64 %i.em, -2720673578348880933     ; 2 uses
  %i.eo = insertelement <2 x i64> poison, i64 %i.en, i64 0
  %i.ep = insertelement <2 x i64> %i.eo, i64 %.sink.i, i64 1 ; 3 uses
  %i.eq = lshr <2 x i64> %i.ep, splat (i64 45)
  %i.er = lshr <2 x i64> %i.ep, splat (i64 27)
  %i.es = xor <2 x i64> %i.eq, %i.er
  %i.et = trunc <2 x i64> %i.es to <2 x i32>      ; 2 uses
  %i.eu = lshr <2 x i64> %i.ep, splat (i64 59)
  %i.ev = trunc nuw nsw <2 x i64> %i.eu to <2 x i32>
  %i.ew = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.et, <2 x i32> %i.et, <2 x i32> %i.ev)
  %i.ex = uitofp <2 x i32> %i.ew to <2 x float>
  %i.ey = fmul nnan <2 x float> %i.ex, splat (float f0x2F800000) ; 3 uses
  %i.ez = fcmp olt <2 x float> %i.ey, splat (float f0x3F7FFFFF) ; 2 uses
  %i.fa = extractelement <2 x i1> %i.ez, i64 1
  %i.fb = extractelement <2 x float> %i.ey, i64 1
  %i.fc = fcmp olt float %i.fb, 5.000000e-01
  %i.fd = select i1 %i.fa, i1 %i.fc, i1 false
  %i.fe = extractelement <2 x i1> %i.ez, i64 0
  %i.ff = extractelement <2 x float> %i.ey, i64 0
  %.sroa.speculated.i1.i123 = select i1 %i.fe, float %i.ff, float f0x3F7FFFFF ; 3 uses
  %i.fg = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i1.i123 ; 2 uses
  br i1 %i.fd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fh = fmul nnan float %i.fg, 1.500000e+01
  %i.fi = fmul nnan float %.sroa.speculated.i1.i123, -7.000000e+00
  %i.fj = fsub float %i.fi, %i.fh
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.fk = fmul nnan float %i.fg, 7.000000e+00
  %i.fl = fmul nnan float %.sroa.speculated.i1.i123, 1.600000e+01
  %i.fm = fadd float %i.fl, %i.fk
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fn = phi float [ %i.fj, %bb.r ], [ %i.fm, %bb.s ]
  %.pn.i124 = mul i64 %i.en, 6364136223846793005
  %.sink.i125 = add i64 %.pn.i124, -2720673578348880933 ; 2 uses
  %i.fo = mul i64 %.sink.i125, 6364136223846793005
  %i.fp = add i64 %i.fo, -2720673578348880933     ; 2 uses
  %i.fq = insertelement <2 x i64> poison, i64 %i.fp, i64 0
  %i.fr = insertelement <2 x i64> %i.fq, i64 %.sink.i125, i64 1 ; 3 uses
  %i.fs = lshr <2 x i64> %i.fr, splat (i64 45)
  %i.ft = lshr <2 x i64> %i.fr, splat (i64 27)
  %i.fu = xor <2 x i64> %i.fs, %i.ft
  %i.fv = trunc <2 x i64> %i.fu to <2 x i32>      ; 2 uses
  %i.fw = lshr <2 x i64> %i.fr, splat (i64 59)
  %i.fx = trunc nuw nsw <2 x i64> %i.fw to <2 x i32>
  %i.fy = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.fv, <2 x i32> %i.fv, <2 x i32> %i.fx)
  %i.fz = uitofp <2 x i32> %i.fy to <2 x float>
  %i.ga = fmul nnan <2 x float> %i.fz, splat (float f0x2F800000) ; 3 uses
  %i.gb = fcmp olt <2 x float> %i.ga, splat (float f0x3F7FFFFF) ; 2 uses
  %i.gc = extractelement <2 x i1> %i.gb, i64 1
  %i.gd = extractelement <2 x float> %i.ga, i64 1
  %i.ge = fcmp olt float %i.gd, 5.000000e-01
  %i.gf = select i1 %i.gc, i1 %i.ge, i1 false
  %i.gg = extractelement <2 x i1> %i.gb, i64 0
  %i.gh = extractelement <2 x float> %i.ga, i64 0
  %.sroa.speculated.i1.i128 = select i1 %i.gg, float %i.gh, float f0x3F7FFFFF ; 3 uses
  %i.gi = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i1.i128 ; 2 uses
  br i1 %i.gf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gj = fmul nnan float %i.gi, 1.500000e+01
  %i.gk = fmul nnan float %.sroa.speculated.i1.i128, -7.000000e+00
  %i.gl = fsub float %i.gk, %i.gj
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gm = fmul nnan float %i.gi, 7.000000e+00
  %i.gn = fmul nnan float %.sroa.speculated.i1.i128, 1.600000e+01
  %i.go = fadd float %i.gn, %i.gm
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.gp = phi float [ %i.gl, %bb.u ], [ %i.go, %bb.v ]
  %.pn.i129 = mul i64 %i.fp, 6364136223846793005
  %.sink.i130 = add i64 %.pn.i129, -2720673578348880933
  %.sroa.0243.0.vec.insert = insertelement <2 x float> poison, float %i.el, i64 0
  br i1 %i.p, label %bb.x, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #29
          to label %.noexc133 unwind label %.loopexit.split-lp287.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %bb.x
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.w
  br i1 %.not.i.i.i.i132, label %.loopexit285, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26
          to label %.noexc134 unwind label %.loopexit.split-lp287.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc134:                                        ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gq, i8 0, i64 %i.aa, i1 false), !tbaa !18
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.n
  %i.gs = ptrtoint ptr %i.gr to i64
  br label %.loopexit285

.loopexit285:                                     ; preds = %.noexc134, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0234.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.gq, %.noexc134 ] ; 11 uses
  %.sroa.14240.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.gs, %.noexc134 ] ; 3 uses
  %.sroa.07.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.0243.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gt = insertelement <2 x float> poison, float %i.fn, i64 0
  %.sroa.05.4.vec.insert.i.i = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.gp, i64 0
  %.sroa.0.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.z

.critedge111.preheader:                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit178
  br i1 %.not.i.i.i.i132, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %.lr.ph

.loopexit.split-lp287.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit203

bb.z:                                             ; preds = %.loopexit285, %_ZN7testing15AssertionResultD2Ev.exit178
  %.sroa.0222.0446 = phi i32 [ 0, %.loopexit285 ], [ %i.nk, %_ZN7testing15AssertionResultD2Ev.exit178 ] ; 2 uses
  %.sroa.11226.0445 = phi i64 [ 6364136223846793006, %.loopexit285 ], [ %i.gw, %_ZN7testing15AssertionResultD2Ev.exit178 ] ; 4 uses
  %i.gu = uitofp nneg i32 %.sroa.0222.0446 to float
  %i.gv = mul i64 %.sroa.11226.0445, 6364136223846793005
  %i.gw = add i64 %i.gv, 1
  %i.gx = lshr i64 %.sroa.11226.0445, 45
  %i.gy = lshr i64 %.sroa.11226.0445, 27
  %i.gz = xor i64 %i.gx, %i.gy
  %i.ha = trunc i64 %i.gz to i32                  ; 2 uses
  %i.hb = lshr i64 %.sroa.11226.0445, 59
  %i.hc = trunc nuw nsw i64 %i.hb to i32
  %i.hd = call noundef i32 @llvm.fshr.i32(i32 %i.ha, i32 %i.ha, i32 %i.hc)
  %i.he = uitofp i32 %i.hd to float
  %i.hf = fmul nnan float %i.he, f0x2F800000      ; 2 uses
  %i.hg = fcmp olt float %i.hf, f0x3F7FFFFF
  %.sroa.speculated.i.i135 = select i1 %i.hg, float %i.hf, float f0x3F7FFFFF
  %i.hh = fadd float %.sroa.speculated.i.i135, %i.gu
  %i.hi = fdiv float %i.hh, 1.000000e+04
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %9, align 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %.sroa.7.0..sroa_idx, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  invoke void @_ZNK4pbrt15BVHLightSampler6SampleERKNS_18LightSampleContextEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.14") align 8 %8, ptr noundef nonnull align 8 dereferenceable(160) %7, ptr noundef nonnull align 4 dereferenceable(48) %9, float noundef %i.hi)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.hj = load i8, ptr %i.s, align 8, !tbaa !38, !range !39, !noundef !40 ; 2 uses
  store i8 %i.hj, ptr %10, align 8, !tbaa !46
  store ptr null, ptr %i.t, align 8, !tbaa !47
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %_ZN4pstd8optionalIN4pbrt12SampledLightEEptEv.exit, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ad unwind label %bb.ap

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8)
          to label %bb.ae unwind label %bb.aq

bb.ae:                                            ; preds = %bb.ad
  %i.hm = load ptr, ptr %13, align 8, !tbaa !51
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 95, ptr noundef %i.hm)
          to label %bb.af unwind label %bb.ar

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ag unwind label %bb.as

bb.ag:                                            ; preds = %bb.af
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #25
  %i.hn = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !52
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.hs = load ptr, ptr %11, align 8, !tbaa !55
  %.not.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ht = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.ak

.noexc.i.i:                                       ; preds = %bb.ah
  br i1 %i.ht, label %bb.ai, label %_ZN7testing7MessageD2Ev.exit

bb.ai:                                            ; preds = %.noexc.i.i
  %i.hu = load ptr, ptr %11, align 8, !tbaa !55   ; 3 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %_ZN7testing7MessageD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !57
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(128) %i.hu) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.ak:                                            ; preds = %bb.ah
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #28
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i.i, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ib = load ptr, ptr %i.t, align 8, !tbaa !47
  %.not.i.i.i136 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i136, label %.critedge113, label %bb.al

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.ic = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i137 unwind label %bb.ao

.noexc.i.i137:                                    ; preds = %bb.al
  br i1 %i.ic, label %bb.am, label %.critedge113

bb.am:                                            ; preds = %.noexc.i.i137
  %i.id = load ptr, ptr %i.t, align 8, !tbaa !47  ; 4 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %.critedge113, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.if = load ptr, ptr %i.id, align 8, !tbaa !51 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.an
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !52
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef 32) #27
end_hunk_1
begin_hunk_2_@_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.am, %bb.s ] ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !52
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4pbrt5LightESt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !108 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #27
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN4pbrt5LightESt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableIN4pbrt5LightESt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !91
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN4pbrt5LightESt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4pbrt5LightESt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !91
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt10_HashtableIN4pbrt5LightESt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4pbrt5LightESt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4pbrt5LightESt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN36BVHLightSampling_PointVaryPower_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %2 = alloca %"class.pbrt::Transform", align 8   ; 4 uses
  %3 = alloca %"class.std::vector.34", align 8    ; 10 uses
  %4 = alloca %"class.std::unordered_map", align 8 ; 17 uses
  %5 = alloca %"class.pbrt::Transform", align 8   ; 2 uses
  %6 = alloca %"struct.pbrt::MediumInterface", align 8 ; 2 uses
  %7 = alloca %"class.pbrt::BVHLightSampler", align 8 ; 10 uses
  %8 = alloca %"class.pstd::optional.14", align 8 ; 8 uses
  %9 = alloca %"class.pbrt::LightSampleContext", align 8 ; 8 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %18 = alloca %"class.pbrt::LightSampleContext", align 8 ; 8 uses
  %19 = alloca %"class.pbrt::Light", align 8      ; 2 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %20 = alloca %"class.testing::Message", align 8 ; 8 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 8 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 8 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.pstd::optional.14", align 8 ; 8 uses
  %29 = alloca %"class.pbrt::LightSampleContext", align 8 ; 8 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %31 = alloca %"class.testing::Message", align 8 ; 8 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = alloca float, align 4                    ; 6 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %35 = alloca %"class.testing::Message", align 8 ; 8 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %38 = alloca %"class.pbrt::LightSampleContext", align 8 ; 8 uses
  %39 = alloca %"class.pbrt::Light", align 8      ; 2 uses
  %40 = alloca %"class.testing::Message", align 8 ; 8 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %43 = alloca %"class.testing::Message", align 8 ; 8 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.j = alloca double, align 8                   ; 5 uses
  %46 = alloca %"class.testing::Message", align 8 ; 8 uses
  %47 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 1, ptr %i.l, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.r = ptrtoint ptr %.sroa.13603.1 to i64
  %i.s = ptrtoint ptr %.sroa.0595.3 to i64        ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = ashr exact i64 %i.t, 3                   ; 5 uses
  %i.v = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25
  invoke void @_ZN4pbrt15BVHLightSamplerC1EN4pstd4spanIKNS_5LightEEENS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(160) %7, ptr %.sroa.0595.3, i64 %i.u, ptr %i.v)
          to label %.preheader unwind label %bb.w

.preheader:                                       ; preds = %bb.b
  %i.w = icmp ugt i64 %i.u, 2305843009213693951
  %.not.i.i.i.i268 = icmp eq ptr %.sroa.13603.1, %.sroa.0595.3 ; 4 uses
  %i.x = ashr exact i64 %i.t, 1                   ; 3 uses
  %.sroa.7529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.8532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %.sroa.7529.0..sroa_idx530 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.8532.0..sroa_idx533 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.ah = and i64 %i.x, -4                        ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.u, i64 1) ; 2 uses
  br label %bb.x

bb.c:                                             ; preds = %bb.a, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit
  %.0581033 = phi float [ 0.000000e+00, %bb.a ], [ %i.er, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ]
  %.0591032 = phi i32 [ 0, %bb.a ], [ %i.gp, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 2 uses
  %.sroa.0595.01031 = phi ptr [ null, %bb.a ], [ %.sroa.0595.3, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 15 uses
  %.sroa.13603.01030 = phi ptr [ null, %bb.a ], [ %.sroa.13603.1, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 8 uses
  %.sroa.22.01029 = phi ptr [ null, %bb.a ], [ %.sroa.22.3, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 7 uses
  %.sroa.0584.01028 = phi ptr [ null, %bb.a ], [ %.sroa.0584.3, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 6 uses
  %.sroa.9588.01027 = phi ptr [ null, %bb.a ], [ %.sroa.9588.1, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 5 uses
  %.sroa.14591.01026 = phi ptr [ null, %bb.a ], [ %.sroa.14591.3, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 2 uses
  %.sroa.0.01025 = phi i64 [ -8476607889265810118, %bb.a ], [ %i.by, %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit ] ; 2 uses
  %i.ai = mul i64 %.sroa.0.01025, 6364136223846793005
  %i.aj = add i64 %i.ai, 106503                   ; 2 uses
  %i.ak = mul i64 %i.aj, 6364136223846793005
  %i.al = insertelement <2 x i64> poison, i64 %.sroa.0.01025, i64 0
  %i.am = insertelement <2 x i64> %i.al, i64 %i.aj, i64 1 ; 3 uses
  %i.an = lshr <2 x i64> %i.am, splat (i64 45)
  %i.ao = lshr <2 x i64> %i.am, splat (i64 27)
  %i.ap = xor <2 x i64> %i.an, %i.ao
  %i.aq = trunc <2 x i64> %i.ap to <2 x i32>      ; 2 uses
  %i.ar = lshr <2 x i64> %i.am, splat (i64 59)
  %i.as = trunc nuw nsw <2 x i64> %i.ar to <2 x i32>
  %i.at = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.aq, <2 x i32> %i.aq, <2 x i32> %i.as)
  %i.au = uitofp <2 x i32> %i.at to <2 x float>
  %i.av = fmul nnan <2 x float> %i.au, splat (float f0x2F800000) ; 2 uses
  %i.aw = fcmp olt <2 x float> %i.av, splat (float f0x3F7FFFFF)
  %i.ax = select <2 x i1> %i.aw, <2 x float> %i.av, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.ay = fsub nnan ninf <2 x float> splat (float 1.000000e+00), %i.ax
  %i.az = fmul nnan <2 x float> %i.ay, splat (float 5.000000e+00)
  %i.ba = fmul nnan <2 x float> %i.ax, splat (float 5.000000e+00)
  %i.bb = fsub <2 x float> %i.ba, %i.az
  %i.bc = add i64 %i.ak, 106503                   ; 2 uses
  %i.bd = mul i64 %i.bc, 6364136223846793005
  %i.be = add i64 %i.bd, 106503                   ; 2 uses
  %i.bf = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %i.bg = insertelement <2 x i64> %i.bf, i64 %i.bc, i64 1 ; 3 uses
  %i.bh = lshr <2 x i64> %i.bg, splat (i64 45)
  %i.bi = lshr <2 x i64> %i.bg, splat (i64 27)
  %i.bj = xor <2 x i64> %i.bh, %i.bi
  %i.bk = trunc <2 x i64> %i.bj to <2 x i32>      ; 2 uses
  %i.bl = lshr <2 x i64> %i.bg, splat (i64 59)
  %i.bm = trunc nuw nsw <2 x i64> %i.bl to <2 x i32>
  %i.bn = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bk, <2 x i32> %i.bk, <2 x i32> %i.bm)
  %i.bo = uitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = fmul nnan <2 x float> %i.bo, splat (float f0x2F800000) ; 3 uses
  %i.bq = fcmp olt <2 x float> %i.bp, splat (float f0x3F7FFFFF) ; 2 uses
  %i.br = extractelement <2 x i1> %i.bq, i64 1
  %i.bs = extractelement <2 x float> %i.bp, i64 1
  %.sroa.speculated.i241 = select i1 %i.br, float %i.bs, float f0x3F7FFFFF ; 2 uses
  %i.bt = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i241
  %i.bu = fmul nnan float %i.bt, 5.000000e+00
  %i.bv = fmul nnan float %.sroa.speculated.i241, 5.000000e+00
  %i.bw = fsub float %i.bv, %i.bu
  %i.bx = mul i64 %i.be, 6364136223846793005
  %i.by = add i64 %i.bx, 106503                   ; 2 uses
  %i.bz = extractelement <2 x i1> %i.bq, i64 0
  %i.ca = extractelement <2 x float> %i.bp, i64 0
  %.sroa.speculated.i242 = select i1 %i.bz, float %i.ca, float f0x3F7FFFFF ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.9588.01027, %.sroa.14591.01026
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %.sroa.speculated.i242, ptr %.sroa.9588.01027, align 4, !tbaa !18
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.e:                                             ; preds = %bb.c
  %i.cb = ptrtoint ptr %.sroa.9588.01027 to i64
  %i.cc = ptrtoint ptr %.sroa.0584.01028 to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 6 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775804
  br i1 %i.ce, label %bb.f, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #29
          to label %.noexc unwind label %.loopexit.split-lp653.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.cf = ashr exact i64 %i.cd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 2305843009213693951)
  %i.cj = select i1 %i.ch, i64 2305843009213693951, i64 %i.ci ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ck = shl nuw nsw i64 %i.cj, 2
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #26
          to label %.noexc243 unwind label %.loopexit.split-lp653.loopexit.split-lp ; 4 uses

.noexc243:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cd ; 2 uses
  store float %.sroa.speculated.i242, ptr %i.cm, align 4, !tbaa !18
  %i.cn = icmp sgt i64 %i.cd, 0
  br i1 %i.cn, label %bb.g, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc243
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %.sroa.0584.01028, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %.noexc243
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0584.01028, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0584.01028, i64 noundef %i.cd) #27
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cj
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.d
  %.sroa.14591.3 = phi ptr [ %i.co, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.14591.01026, %bb.d ] ; 8 uses
  %.pn644 = phi ptr [ %i.cm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.9588.01027, %bb.d ] ; 3 uses
  %.sroa.0584.3 = phi ptr [ %i.cl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.0584.01028, %bb.d ] ; 11 uses
  %.sroa.9588.1 = getelementptr inbounds nuw i8, ptr %.pn644, i64 4
  %i.cp = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %bb.i unwind label %.loopexit656 ; 4 uses

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.cq = load float, ptr %.pn644, align 4, !tbaa !18, !noalias !278
  store float %i.cq, ptr %i.cp, align 4, !tbaa !20, !noalias !278
  %i.cr = load ptr, ptr %i.p, align 8, !tbaa !123 ; 7 uses
  %i.cs = load ptr, ptr %i.q, align 8, !tbaa !124
  %.not.i.i245 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i.i245, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = ptrtoint ptr %i.cp to i64
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !126
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.cu, ptr %i.p, align 8, !tbaa !123
  br label %_ZNSt10unique_ptrIN4pbrt16ConstantSpectrumESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.cv = load ptr, ptr %3, align 8, !tbaa !127   ; 12 uses
  %i.cw = ptrtoint ptr %i.cr to i64               ; 3 uses
  %i.cx = ptrtoint ptr %i.cv to i64               ; 3 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 4 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN4pbrt16ConstantSpectrumESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #29
          to label %.noexc453 unwind label %_ZNSt10unique_ptrIN4pbrt16ConstantSpectrumESt14default_deleteIS1_EED2Ev.exit257.loopexit.split-lp.loopexit.split-lp

.noexc453:                                        ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4pbrt16ConstantSpectrumESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i449 = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i449, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i450 = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i450)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #26
          to label %.noexc454 unwind label %_ZNSt10unique_ptrIN4pbrt16ConstantSpectrumESt14default_deleteIS1_EED2Ev.exit257.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc454:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4pbrt16ConstantSpectrumESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  %i.di = ptrtoint ptr %i.cp to i64
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !126
  %.not10.i.i.i.i = icmp eq ptr %i.cv, %i.cr
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4pbrt16ConstantSpectrumESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check2126

iter.check2126:                                   ; preds = %.noexc454
  %i.dj = add i64 %i.cw, -8
  %i.dk = sub i64 %i.dj, %i.cx                    ; 3 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 5 uses
  %min.iters.check2109 = icmp ult i64 %i.dk, 24
  br i1 %min.iters.check2109, label %.lr.ph.i.i.i.i451.preheader, label %vector.memcheck2110

vector.memcheck2110:                              ; preds = %iter.check2126
  %i.dn = add i64 %i.cw, -8
  %i.do = sub i64 %i.dn, %i.cx
  %i.dp = and i64 %i.do, -8
  %i.dq = add i64 %i.dp, 8                        ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dg, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.cv, i64 %i.dq
  %bound0 = icmp ult ptr %i.dg, %i.ds
  %bound1 = icmp ult ptr %i.cv, %i.dr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i451.preheader, label %vector.main.loop.iter.check2111

vector.main.loop.iter.check2111:                  ; preds = %vector.memcheck2110
  %min.iters.check2112 = icmp ult i64 %i.dk, 120
  br i1 %min.iters.check2112, label %vec.epilog.ph2130, label %vector.ph2113

vector.ph2113:                                    ; preds = %vector.main.loop.iter.check2111
  %i.dt = and i64 %i.dm, 12
  %n.vec2114 = and i64 %i.dm, 4611686018427387888 ; 4 uses
  %i.du = shl i64 %n.vec2114, 3                   ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dg, i64 %i.du  ; 2 uses
  %i.dw = getelementptr i8, ptr %i.cv, i64 %i.du
  br label %vector.body2115

vector.body2115:                                  ; preds = %vector.ph2113, %vector.body2115
  %index2116 = phi i64 [ 0, %vector.ph2113 ], [ %index.next2123, %vector.body2115 ] ; 2 uses
  %i.dx = shl i64 %index2116, 3                   ; 2 uses
  %next.gep2117 = getelementptr i8, ptr %i.dg, i64 %i.dx ; 4 uses
  %next.gep2118 = getelementptr i8, ptr %i.cv, i64 %i.dx ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.dy = getelementptr i8, ptr %next.gep2118, i64 32 ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep2118, i64 64 ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep2118, i64 96 ; 2 uses
  %wide.load2119 = load <4 x i64>, ptr %next.gep2118, align 8, !tbaa !126, !alias.scope !281
  %wide.load2120 = load <4 x i64>, ptr %i.dy, align 8, !tbaa !126, !alias.scope !281
  %wide.load2121 = load <4 x i64>, ptr %i.dz, align 8, !tbaa !126, !alias.scope !281
  %wide.load2122 = load <4 x i64>, ptr %i.ea, align 8, !tbaa !126, !alias.scope !281
  %i.eb = getelementptr i8, ptr %next.gep2117, i64 32
  %i.ec = getelementptr i8, ptr %next.gep2117, i64 64
  %i.ed = getelementptr i8, ptr %next.gep2117, i64 96
  store <4 x i64> %wide.load2119, ptr %next.gep2117, align 8, !tbaa !126, !alias.scope !282, !noalias !283
  store <4 x i64> %wide.load2120, ptr %i.eb, align 8, !tbaa !126, !alias.scope !282, !noalias !283
  store <4 x i64> %wide.load2121, ptr %i.ec, align 8, !tbaa !126, !alias.scope !282, !noalias !283
  store <4 x i64> %wide.load2122, ptr %i.ed, align 8, !tbaa !126, !alias.scope !282, !noalias !283
  store <4 x ptr> splat (ptr null), ptr %next.gep2118, align 8, !tbaa !126, !alias.scope !281
  store <4 x ptr> splat (ptr null), ptr %i.dy, align 8, !tbaa !126, !alias.scope !281
  store <4 x ptr> splat (ptr null), ptr %i.dz, align 8, !tbaa !126, !alias.scope !281
  store <4 x ptr> splat (ptr null), ptr %i.ea, align 8, !tbaa !126, !alias.scope !281
  %index.next2123 = add nuw i64 %index2116, 16    ; 2 uses
  %i.ee = icmp eq i64 %index.next2123, %n.vec2114
  br i1 %i.ee, label %middle.block2124, label %vector.body2115, !llvm.loop !267

middle.block2124:                                 ; preds = %vector.body2115
  %cmp.n2125 = icmp eq i64 %i.dm, %n.vec2114
  br i1 %cmp.n2125, label %_ZNSt6vectorISt10unique_ptrIN4pbrt16ConstantSpectrumESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check2127

vec.epilog.iter.check2127:                        ; preds = %middle.block2124
  %min.epilog.iters.check2129 = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check2129, label %.lr.ph.i.i.i.i451.preheader, label %vec.epilog.ph2130, !prof !106

vec.epilog.ph2130:                                ; preds = %vector.main.loop.iter.check2111, %vec.epilog.iter.check2127
  %vec.epilog.resume.val2131 = phi i64 [ %n.vec2114, %vec.epilog.iter.check2127 ], [ 0, %vector.main.loop.iter.check2111 ]
  %n.vec2132 = and i64 %i.dm, 4611686018427387900 ; 3 uses
  %i.ef = shl i64 %n.vec2132, 3                   ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dg, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.cv, i64 %i.ef
  br label %vec.epilog.vector.body2133

vec.epilog.vector.body2133:                       ; preds = %vec.epilog.vector.body2133, %vec.epilog.ph2130
end_hunk_2
begin_hunk_3_@_ZN36BVHLightSampling_PointVaryPower_Test8TestBodyEv:bb.a
  br i1 %.not13.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc253
  %i.fn = ptrtoaddr ptr %i.fl to i64
  %i.fo = add i64 %i.fb, -8
  %i.fp = sub i64 %i.fo, %i.fc                    ; 3 uses
  %i.fq = lshr i64 %i.fp, 3
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fp, 24
  %i.fs = sub i64 %i.fc, %i.fn
  %diff.check = icmp ugt i64 %i.fs, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2092 = icmp ult i64 %i.fp, 120
  br i1 %min.iters.check2092, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ft = and i64 %i.fr, 12
  %n.vec = and i64 %i.fr, 4611686018427387888     ; 4 uses
  %i.fu = shl i64 %n.vec, 3                       ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fl, i64 %i.fu  ; 2 uses
  %i.fw = getelementptr i8, ptr %.sroa.0595.01031, i64 %i.fu
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fl, i64 %i.fx ; 4 uses
  %next.gep2093 = getelementptr i8, ptr %.sroa.0595.01031, i64 %i.fx ; 4 uses
  %i.fy = getelementptr i8, ptr %next.gep2093, i64 32
  %i.fz = getelementptr i8, ptr %next.gep2093, i64 64
  %i.ga = getelementptr i8, ptr %next.gep2093, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep2093, align 8, !tbaa !25
  %wide.load2094 = load <4 x i64>, ptr %i.fy, align 8, !tbaa !25
  %wide.load2095 = load <4 x i64>, ptr %i.fz, align 8, !tbaa !25
  %wide.load2096 = load <4 x i64>, ptr %i.ga, align 8, !tbaa !25
  %i.gb = getelementptr i8, ptr %next.gep, i64 32
  %i.gc = getelementptr i8, ptr %next.gep, i64 64
  %i.gd = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25
  store <4 x i64> %wide.load2094, ptr %i.gb, align 8, !tbaa !25
  store <4 x i64> %wide.load2095, ptr %i.gc, align 8, !tbaa !25
  store <4 x i64> %wide.load2096, ptr %i.gd, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !270

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fr, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ft, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !106

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2097 = and i64 %i.fr, 4611686018427387900 ; 3 uses
  %i.gf = shl i64 %n.vec2097, 3                   ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fl, i64 %i.gf  ; 2 uses
  %i.gh = getelementptr i8, ptr %.sroa.0595.01031, i64 %i.gf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2098 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2102, %vec.epilog.vector.body ] ; 2 uses
  %i.gi = shl i64 %index2098, 3                   ; 2 uses
  %next.gep2099 = getelementptr i8, ptr %i.fl, i64 %i.gi
  %next.gep2100 = getelementptr i8, ptr %.sroa.0595.01031, i64 %i.gi
  %wide.load2101 = load <4 x i64>, ptr %next.gep2100, align 8, !tbaa !25
  store <4 x i64> %wide.load2101, ptr %next.gep2099, align 8, !tbaa !25
  %index.next2102 = add nuw i64 %index2098, 4     ; 2 uses
  %i.gj = icmp eq i64 %index.next2102, %n.vec2097
  br i1 %i.gj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !271

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2103 = icmp eq i64 %i.fr, %n.vec2097
  br i1 %cmp.n2103, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.fl, %iter.check ], [ %i.fv, %vec.epilog.iter.check ], [ %i.gg, %vec.epilog.middle.block ]
  %.01214.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0595.01031, %iter.check ], [ %i.fw, %vec.epilog.iter.check ], [ %i.gh, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gk = load i64, ptr %.01214.i.i.i.i.i.i.i.i, align 8, !tbaa !25
  store i64 %i.gk, ptr %.015.i.i.i.i.i.i.i.i, align 8, !tbaa !25
  %i.gl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gl, %.sroa.13603.01030
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !272

_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc253
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.fl, %.noexc253 ], [ %i.gg, %vec.epilog.middle.block ], [ %i.fv, %middle.block ], [ %i.gm, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.not.i35.i.i.i = icmp eq ptr %.sroa.0595.01031, null
  br i1 %.not.i35.i.i.i, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0595.01031, i64 noundef %i.fd) #27
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fj
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN4pbrt5LightESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.q
  %.sroa.22.3 = phi ptr [ %i.gn, %_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.22.01029, %bb.q ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.13603.01030, %bb.q ] ; 2 uses
  %.sroa.0595.3 = phi ptr [ %i.fl, %_ZNSt6vectorIN4pbrt5LightESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0595.01031, %bb.q ] ; 8 uses
  %i.go = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIN4pbrt5LightESt4pairIKS2_iESaIS5_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %.0.lcssa.i.i.i.i.i.i.i.i.pn)
          to label %_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit unwind label %bb.u

_ZNSt13unordered_mapIN4pbrt5LightEiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEEixERS7_.exit: ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EE9push_backEOS1_.exit
  %.sroa.13603.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.pn, i64 8 ; 3 uses
  store i32 %.0591032, ptr %i.go, align 4, !tbaa !58
  %i.gp = add nuw nsw i32 %.0591032, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gp, 82
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !273

bb.u:                                             ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EE9push_backEOS1_.exit
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ka

.loopexit.split-lp653.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %lpad.loopexit.split-lp2361 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ka

_ZNSt10unique_ptrIN4pbrt16ConstantSpectrumESt14default_deleteIS1_EED2Ev.exit257.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4pbrt16ConstantSpectrumESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 4) #27
  br label %bb.ka

.loopexit656:                                     ; preds = %_ZNSt10unique_ptrIN4pbrt16ConstantSpectrumESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %.sroa.22.01029.lcssa1297 = phi ptr [ %.sroa.22.01029, %_ZNSt10unique_ptrIN4pbrt16ConstantSpectrumESt14default_deleteIS1_EED2Ev.exit ], [ %.sroa.13603.01030, %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.22.01029, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ]
  %lpad.loopexit658 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ka

.loopexit.split-lp657:                            ; preds = %bb.s
  %lpad.loopexit.split-lp659 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ka

bb.v:                                             ; preds = %.noexc247, %bb.o, %bb.n
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef 168) #27
  br label %bb.ka

.critedge226.preheader:                           ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.sroa.7502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.sroa.8505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %.sroa.7502.0..sroa_idx503 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %.sroa.8505.0..sroa_idx506 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.gy = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  br label %bb.ey

bb.w:                                             ; preds = %bb.b
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

bb.x:                                             ; preds = %.preheader, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.01381038 = phi i32 [ 0, %.preheader ], [ %i.tg, %_ZNSt6vectorIfSaIfEED2Ev.exit ]
  %.sroa.0.11037 = phi i64 [ %i.by, %.preheader ], [ %.sink.i266, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 2 uses
  %i.hc = mul i64 %.sroa.0.11037, 6364136223846793005
  %i.hd = add i64 %i.hc, 106503                   ; 2 uses
  %i.he = insertelement <2 x i64> poison, i64 %i.hd, i64 0
  %i.hf = insertelement <2 x i64> %i.he, i64 %.sroa.0.11037, i64 1 ; 3 uses
  %i.hg = lshr <2 x i64> %i.hf, splat (i64 45)
  %i.hh = lshr <2 x i64> %i.hf, splat (i64 27)
  %i.hi = xor <2 x i64> %i.hg, %i.hh
  %i.hj = trunc <2 x i64> %i.hi to <2 x i32>      ; 2 uses
  %i.hk = lshr <2 x i64> %i.hf, splat (i64 59)
  %i.hl = trunc nuw nsw <2 x i64> %i.hk to <2 x i32>
  %i.hm = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.hj, <2 x i32> %i.hj, <2 x i32> %i.hl)
  %i.hn = uitofp <2 x i32> %i.hm to <2 x float>
  %i.ho = fmul nnan <2 x float> %i.hn, splat (float f0x2F800000) ; 3 uses
  %i.hp = fcmp olt <2 x float> %i.ho, splat (float f0x3F7FFFFF) ; 2 uses
  %i.hq = extractelement <2 x i1> %i.hp, i64 1
  %i.hr = extractelement <2 x float> %i.ho, i64 1
  %i.hs = fcmp olt float %i.hr, 5.000000e-01
  %i.ht = select i1 %i.hq, i1 %i.hs, i1 false
  %i.hu = extractelement <2 x i1> %i.hp, i64 0
  %i.hv = extractelement <2 x float> %i.ho, i64 0
  %.sroa.speculated.i1.i = select i1 %i.hu, float %i.hv, float f0x3F7FFFFF ; 3 uses
  %i.hw = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i1.i ; 2 uses
  br i1 %i.ht, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hx = fmul nnan float %i.hw, 1.500000e+01
  %i.hy = fmul nnan float %.sroa.speculated.i1.i, -7.000000e+00
  %i.hz = fsub float %i.hy, %i.hx
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ia = fmul nnan float %i.hw, 7.000000e+00
  %i.ib = fmul nnan float %.sroa.speculated.i1.i, 1.600000e+01
  %i.ic = fadd float %i.ib, %i.ia
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.id = phi float [ %i.hz, %bb.y ], [ %i.ic, %bb.z ]
  %.pn.i = mul i64 %i.hd, 6364136223846793005
  %.sink.i = add i64 %.pn.i, 106503               ; 2 uses
  %i.ie = mul i64 %.sink.i, 6364136223846793005
  %i.if = add i64 %i.ie, 106503                   ; 2 uses
  %i.ig = insertelement <2 x i64> poison, i64 %i.if, i64 0
  %i.ih = insertelement <2 x i64> %i.ig, i64 %.sink.i, i64 1 ; 3 uses
  %i.ii = lshr <2 x i64> %i.ih, splat (i64 45)
  %i.ij = lshr <2 x i64> %i.ih, splat (i64 27)
  %i.ik = xor <2 x i64> %i.ii, %i.ij
  %i.il = trunc <2 x i64> %i.ik to <2 x i32>      ; 2 uses
  %i.im = lshr <2 x i64> %i.ih, splat (i64 59)
  %i.in = trunc nuw nsw <2 x i64> %i.im to <2 x i32>
  %i.io = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.il, <2 x i32> %i.il, <2 x i32> %i.in)
  %i.ip = uitofp <2 x i32> %i.io to <2 x float>
  %i.iq = fmul nnan <2 x float> %i.ip, splat (float f0x2F800000) ; 3 uses
  %i.ir = fcmp olt <2 x float> %i.iq, splat (float f0x3F7FFFFF) ; 2 uses
  %i.is = extractelement <2 x i1> %i.ir, i64 1
  %i.it = extractelement <2 x float> %i.iq, i64 1
  %i.iu = fcmp olt float %i.it, 5.000000e-01
  %i.iv = select i1 %i.is, i1 %i.iu, i1 false
  %i.iw = extractelement <2 x i1> %i.ir, i64 0
  %i.ix = extractelement <2 x float> %i.iq, i64 0
  %.sroa.speculated.i1.i259 = select i1 %i.iw, float %i.ix, float f0x3F7FFFFF ; 3 uses
  %i.iy = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i1.i259 ; 2 uses
  br i1 %i.iv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.iz = fmul nnan float %i.iy, 1.500000e+01
  %i.ja = fmul nnan float %.sroa.speculated.i1.i259, -7.000000e+00
  %i.jb = fsub float %i.ja, %i.iz
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.jc = fmul nnan float %i.iy, 7.000000e+00
  %i.jd = fmul nnan float %.sroa.speculated.i1.i259, 1.600000e+01
  %i.je = fadd float %i.jd, %i.jc
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jf = phi float [ %i.jb, %bb.ab ], [ %i.je, %bb.ac ]
  %.pn.i260 = mul i64 %i.if, 6364136223846793005
  %.sink.i261 = add i64 %.pn.i260, 106503         ; 2 uses
  %i.jg = mul i64 %.sink.i261, 6364136223846793005
  %i.jh = add i64 %i.jg, 106503                   ; 2 uses
  %i.ji = insertelement <2 x i64> poison, i64 %i.jh, i64 0
  %i.jj = insertelement <2 x i64> %i.ji, i64 %.sink.i261, i64 1 ; 3 uses
  %i.jk = lshr <2 x i64> %i.jj, splat (i64 45)
  %i.jl = lshr <2 x i64> %i.jj, splat (i64 27)
  %i.jm = xor <2 x i64> %i.jk, %i.jl
  %i.jn = trunc <2 x i64> %i.jm to <2 x i32>      ; 2 uses
  %i.jo = lshr <2 x i64> %i.jj, splat (i64 59)
  %i.jp = trunc nuw nsw <2 x i64> %i.jo to <2 x i32>
  %i.jq = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.jn, <2 x i32> %i.jn, <2 x i32> %i.jp)
  %i.jr = uitofp <2 x i32> %i.jq to <2 x float>
  %i.js = fmul nnan <2 x float> %i.jr, splat (float f0x2F800000) ; 3 uses
  %i.jt = fcmp olt <2 x float> %i.js, splat (float f0x3F7FFFFF) ; 2 uses
  %i.ju = extractelement <2 x i1> %i.jt, i64 1
  %i.jv = extractelement <2 x float> %i.js, i64 1
  %i.jw = fcmp olt float %i.jv, 5.000000e-01
  %i.jx = select i1 %i.ju, i1 %i.jw, i1 false
  %i.jy = extractelement <2 x i1> %i.jt, i64 0
  %i.jz = extractelement <2 x float> %i.js, i64 0
  %.sroa.speculated.i1.i264 = select i1 %i.jy, float %i.jz, float f0x3F7FFFFF ; 3 uses
  %i.ka = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i1.i264 ; 2 uses
  br i1 %i.jx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.kb = fmul nnan float %i.ka, 1.500000e+01
  %i.kc = fmul nnan float %.sroa.speculated.i1.i264, -7.000000e+00
  %i.kd = fsub float %i.kc, %i.kb
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ke = fmul nnan float %i.ka, 7.000000e+00
  %i.kf = fmul nnan float %.sroa.speculated.i1.i264, 1.600000e+01
  %i.kg = fadd float %i.kf, %i.ke
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.kh = phi float [ %i.kd, %bb.ae ], [ %i.kg, %bb.af ]
  %.pn.i265 = mul i64 %i.jh, 6364136223846793005
  %.sink.i266 = add i64 %.pn.i265, 106503         ; 2 uses
  br i1 %i.w, label %bb.ah, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #29
          to label %.noexc269 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc269:                                        ; preds = %bb.ah
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ag
  br i1 %.not.i.i.i.i268, label %.loopexit648, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #26
          to label %.noexc270 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc270:                                        ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ki, i8 0, i64 %i.ah, i1 false), !tbaa !18
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.u
  %i.kk = ptrtoint ptr %i.kj to i64
  br label %.loopexit648

.loopexit648:                                     ; preds = %.noexc270, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0557.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ki, %.noexc270 ] ; 9 uses
  %.sroa.14564.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.kk, %.noexc270 ] ; 3 uses
  %.sroa.07.0.vec.insert.i = insertelement <2 x float> poison, float %i.id, i64 0
  %.sroa.07.4.vec.insert.i = shufflevector <2 x float> %.sroa.07.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.05.0.vec.insert.i = insertelement <2 x float> poison, float %i.jf, i64 0
  %.sroa.05.4.vec.insert.i = shufflevector <2 x float> %.sroa.05.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.kh, i64 0
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.aj

.critedge222.preheader:                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit308
  br i1 %.not.i.i.i.i268, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %.lr.ph

bb.aj:                                            ; preds = %.loopexit648, %_ZN7testing15AssertionResultD2Ev.exit308
  %.sroa.0544.01035 = phi i32 [ 0, %.loopexit648 ], [ %i.qw, %_ZN7testing15AssertionResultD2Ev.exit308 ] ; 2 uses
  %.sroa.11548.01034 = phi i64 [ 6364136223846793006, %.loopexit648 ], [ %i.kn, %_ZN7testing15AssertionResultD2Ev.exit308 ] ; 4 uses
  %i.kl = uitofp nneg i32 %.sroa.0544.01035 to float
  %i.km = mul i64 %.sroa.11548.01034, 6364136223846793005
  %i.kn = add i64 %i.km, 1
  %i.ko = lshr i64 %.sroa.11548.01034, 45
  %i.kp = lshr i64 %.sroa.11548.01034, 27
  %i.kq = xor i64 %i.ko, %i.kp
  %i.kr = trunc i64 %i.kq to i32                  ; 2 uses
  %i.ks = lshr i64 %.sroa.11548.01034, 59
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = call noundef i32 @llvm.fshr.i32(i32 %i.kr, i32 %i.kr, i32 %i.kt)
  %i.kv = uitofp i32 %i.ku to float
  %i.kw = fmul nnan float %i.kv, f0x2F800000      ; 2 uses
  %i.kx = fcmp olt float %i.kw, f0x3F7FFFFF
  %.sroa.speculated.i.i271 = select i1 %i.kx, float %i.kw, float f0x3F7FFFFF
  %i.ky = fadd float %.sroa.speculated.i.i271, %i.kl
  %i.kz = fdiv float %i.ky, 1.000000e+05
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store <2 x float> %.sroa.07.4.vec.insert.i, ptr %9, align 8
  store <2 x float> %.sroa.05.4.vec.insert.i, ptr %.sroa.7529.0..sroa_idx, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %.sroa.8532.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  invoke void @_ZNK4pbrt15BVHLightSampler6SampleERKNS_18LightSampleContextEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.14") align 8 %8, ptr noundef nonnull align 8 dereferenceable(160) %7, ptr noundef nonnull align 4 dereferenceable(48) %9, float noundef %i.kz)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.la = load i8, ptr %i.z, align 8, !tbaa !38, !range !39, !noundef !40 ; 2 uses
  store i8 %i.la, ptr %10, align 8, !tbaa !46
  store ptr null, ptr %i.aa, align 8, !tbaa !47
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.bf, label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.df

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.an unwind label %bb.az

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8)
          to label %bb.ao unwind label %bb.ba

bb.ao:                                            ; preds = %bb.an
  %i.ld = load ptr, ptr %13, align 8, !tbaa !51
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 145, ptr noundef %i.ld)
          to label %bb.ap unwind label %bb.bb

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aq unwind label %bb.bc

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #25
  %i.le = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aq
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !52
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.lj = load ptr, ptr %11, align 8, !tbaa !55
  %.not.i.i.i = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.lk = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.au

.noexc.i.i:                                       ; preds = %bb.ar
  br i1 %i.lk, label %bb.as, label %_ZN7testing7MessageD2Ev.exit

bb.as:                                            ; preds = %.noexc.i.i
  %i.ll = load ptr, ptr %11, align 8, !tbaa !55   ; 3 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %_ZN7testing7MessageD2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ln = load ptr, ptr %i.ll, align 8, !tbaa !57
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(128) %i.ll) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.au:                                            ; preds = %bb.ar
  %i.lq = landingpad { ptr, i32 }
          catch ptr null
  %i.lr = extractvalue { ptr, i32 } %i.lq, 0
  call void @__clang_call_terminate(ptr %i.lr) #28
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i.i, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ls = load ptr, ptr %i.aa, align 8, !tbaa !47
  %.not.i.i.i272 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i272, label %.critedge224, label %bb.av

bb.av:                                            ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.lt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i273 unwind label %bb.ay

.noexc.i.i273:                                    ; preds = %bb.av
  br i1 %i.lt, label %bb.aw, label %.critedge224

bb.aw:                                            ; preds = %.noexc.i.i273
  %i.lu = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 4 uses
  %i.lv = icmp eq ptr %i.lu, null
  br i1 %i.lv, label %.critedge224, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lw = load ptr, ptr %i.lu, align 8, !tbaa !51 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ax
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !52
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef 32) #27
  br label %.critedge224

bb.ay:                                            ; preds = %bb.av
  %i.mb = landingpad { ptr, i32 }
          catch ptr null
end_hunk_3
begin_hunk_4_@_ZN36BVHLightSampling_PointVaryPower_Test8TestBodyEv:bb.a
  %i.sb = load i8, ptr %25, align 8, !tbaa !46, !range !39, !noundef !40
  %i.sc = trunc nuw i8 %i.sb to i1
  br i1 %i.sc, label %bb.es, label %bb.ee

bb.ec:                                            ; preds = %bb.dv, %bb.dh
  %.pn198.pn.pn = phi { ptr, i32 } [ %.pn198.pn, %bb.dv ], [ %i.ra, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %.thread

bb.ed:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit319
  %i.sd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.ex

bb.ee:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ef unwind label %bb.en

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.se = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %.not.i.i320 = icmp eq ptr %i.se, null
  br i1 %.not.i.i320, label %_ZNK7testing15AssertionResult15failure_messageEv.exit321, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !51
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit321

_ZNK7testing15AssertionResult15failure_messageEv.exit321: ; preds = %bb.eg, %bb.ef
  %i.sg = phi ptr [ %i.sf, %bb.eg ], [ @.str.60, %bb.ef ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 157, ptr noundef %i.sg)
          to label %bb.eh unwind label %bb.eo

bb.eh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit321
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ei unwind label %bb.ep

bb.ei:                                            ; preds = %bb.eh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.sh = load ptr, ptr %26, align 8, !tbaa !55
  %.not.i.i.i322 = icmp eq ptr %i.sh, null
  br i1 %.not.i.i.i322, label %_ZN7testing7MessageD2Ev.exit324, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.si = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i323 unwind label %bb.em

.noexc.i.i323:                                    ; preds = %bb.ej
  br i1 %i.si, label %bb.ek, label %_ZN7testing7MessageD2Ev.exit324

bb.ek:                                            ; preds = %.noexc.i.i323
  %i.sj = load ptr, ptr %26, align 8, !tbaa !55   ; 3 uses
  %i.sk = icmp eq ptr %i.sj, null
  br i1 %i.sk, label %_ZN7testing7MessageD2Ev.exit324, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.sl = load ptr, ptr %i.sj, align 8, !tbaa !57
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8
  call void %i.sn(ptr noundef nonnull align 8 dereferenceable(128) %i.sj) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit324

bb.em:                                            ; preds = %bb.ej
  %i.so = landingpad { ptr, i32 }
          catch ptr null
  %i.sp = extractvalue { ptr, i32 } %i.so, 0
  call void @__clang_call_terminate(ptr %i.sp) #28
  unreachable

_ZN7testing7MessageD2Ev.exit324:                  ; preds = %bb.ei, %.noexc.i.i323, %bb.ek, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.es

bb.en:                                            ; preds = %bb.ee
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.eo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit321
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ep:                                            ; preds = %bb.eh
  %i.ss = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #25
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.pn202 = phi { ptr, i32 } [ %i.ss, %bb.ep ], [ %i.sr, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #25
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.en
  %.pn202.pn = phi { ptr, i32 } [ %.pn202, %bb.eq ], [ %i.sq, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #25
  br label %bb.ex

bb.es:                                            ; preds = %bb.eb, %_ZN7testing7MessageD2Ev.exit324
  %i.st = load ptr, ptr %i.ag, align 8, !tbaa !47
  %.not.i.i.i325 = icmp eq ptr %i.st, null
  br i1 %.not.i.i.i325, label %_ZN7testing15AssertionResultD2Ev.exit330, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.su = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i326 unwind label %bb.ew

.noexc.i.i326:                                    ; preds = %bb.et
  br i1 %i.su, label %bb.eu, label %_ZN7testing15AssertionResultD2Ev.exit330

bb.eu:                                            ; preds = %.noexc.i.i326
  %i.sv = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 4 uses
  %i.sw = icmp eq ptr %i.sv, null
  br i1 %i.sw, label %_ZN7testing15AssertionResultD2Ev.exit330, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.sx = load ptr, ptr %i.sv, align 8, !tbaa !51 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 16 ; 2 uses
  %i.sz = icmp eq ptr %i.sx, %i.sy
  br i1 %i.sz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327: ; preds = %bb.ev
  %i.ta = load i64, ptr %i.sy, align 8, !tbaa !52
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.tb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i328: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327
  call void @_ZdlPvm(ptr noundef nonnull %i.sv, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit330

bb.ew:                                            ; preds = %bb.et
  %i.tc = landingpad { ptr, i32 }
          catch ptr null
  %i.td = extractvalue { ptr, i32 } %i.tc, 0
  call void @__clang_call_terminate(ptr %i.td) #28
  unreachable

_ZN7testing15AssertionResultD2Ev.exit330:         ; preds = %bb.es, %.noexc.i.i326, %bb.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond1345.not = icmp eq i64 %indvars.iv.next, %umax
  br i1 %exitcond1345.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %.lr.ph, !llvm.loop !274

bb.ex:                                            ; preds = %bb.er, %bb.ed
  %.pn202.pn.pn = phi { ptr, i32 } [ %.pn202.pn, %bb.er ], [ %i.sd, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %.thread

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZN7testing15AssertionResultD2Ev.exit330, %.critedge222.preheader
  %i.te = ptrtoint ptr %.sroa.0557.0 to i64
  %i.tf = sub i64 %.sroa.14564.0, %i.te
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0557.0, i64 noundef %i.tf) #27
  %i.tg = add nuw nsw i32 %.01381038, 1           ; 2 uses
  %exitcond1346 = icmp eq i32 %i.tg, 10
  br i1 %exitcond1346, label %.critedge226.preheader, label %bb.x, !llvm.loop !275

.thread:                                          ; preds = %bb.ex, %bb.ec, %bb.df
  %.pn202.pn.pn.pn.pn633 = phi { ptr, i32 } [ %.pn151.pn.pn.pn.pn.pn.pn, %bb.df ], [ %.pn202.pn.pn, %bb.ex ], [ %.pn198.pn.pn, %bb.ec ]
  %i.th = ptrtoint ptr %.sroa.0557.0 to i64
  %i.ti = sub i64 %.sroa.14564.0, %i.th
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0557.0, i64 noundef %i.ti) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit333

.critedge224:                                     ; preds = %_ZN7testing7MessageD2Ev.exit, %.noexc.i.i273, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.not.i.i.i334 = icmp eq ptr %.sroa.0557.0, null
  br i1 %.not.i.i.i334, label %_ZNSt6vectorIfSaIfEED2Ev.exit335, label %_ZNSt6vectorIfSaIfEED2Ev.exit335.sink.split

bb.ey:                                            ; preds = %.critedge226.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.0601044 = phi i32 [ 0, %.critedge226.preheader ], [ %i.afq, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %.sroa.0.31043 = phi i64 [ %.sink.i266, %.critedge226.preheader ], [ %.sink.i348, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.tj = mul i64 %.sroa.0.31043, 6364136223846793005
  %i.tk = add i64 %i.tj, 106503                   ; 2 uses
  %i.tl = insertelement <2 x i64> poison, i64 %i.tk, i64 0
  %i.tm = insertelement <2 x i64> %i.tl, i64 %.sroa.0.31043, i64 1 ; 3 uses
  %i.tn = lshr <2 x i64> %i.tm, splat (i64 45)
  %i.to = lshr <2 x i64> %i.tm, splat (i64 27)
  %i.tp = xor <2 x i64> %i.tn, %i.to
  %i.tq = trunc <2 x i64> %i.tp to <2 x i32>      ; 2 uses
  %i.tr = lshr <2 x i64> %i.tm, splat (i64 59)
  %i.ts = trunc nuw nsw <2 x i64> %i.tr to <2 x i32>
  %i.tt = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.tq, <2 x i32> %i.tq, <2 x i32> %i.ts)
  %i.tu = uitofp <2 x i32> %i.tt to <2 x float>
  %i.tv = fmul nnan <2 x float> %i.tu, splat (float f0x2F800000) ; 3 uses
  %i.tw = fcmp olt <2 x float> %i.tv, splat (float f0x3F7FFFFF) ; 2 uses
  %i.tx = extractelement <2 x i1> %i.tw, i64 1
  %i.ty = extractelement <2 x float> %i.tv, i64 1
  %i.tz = fcmp olt float %i.ty, 5.000000e-01
  %i.ua = select i1 %i.tx, i1 %i.tz, i1 false
  %i.ub = extractelement <2 x i1> %i.tw, i64 0
  %i.uc = extractelement <2 x float> %i.tv, i64 0
  %.sroa.speculated.i1.i337 = select i1 %i.ub, float %i.uc, float f0x3F7FFFFF ; 3 uses
  %i.ud = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i1.i337 ; 2 uses
  br i1 %i.ua, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.ue = fmul nnan float %i.ud, 1.500000e+01
  %i.uf = fmul nnan float %.sroa.speculated.i1.i337, -7.000000e+00
  %i.ug = fsub float %i.uf, %i.ue
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  %i.uh = fmul nnan float %i.ud, 7.000000e+00
  %i.ui = fmul nnan float %.sroa.speculated.i1.i337, 1.600000e+01
  %i.uj = fadd float %i.ui, %i.uh
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.uk = phi float [ %i.ug, %bb.ez ], [ %i.uj, %bb.fa ]
  %.pn.i338 = mul i64 %i.tk, 6364136223846793005
  %i.ul = fmul float %i.uk, 1.000000e+04
  %.sink.i339 = add i64 %.pn.i338, 106503         ; 2 uses
  %i.um = mul i64 %.sink.i339, 6364136223846793005
  %i.un = add i64 %i.um, 106503                   ; 2 uses
  %i.uo = insertelement <2 x i64> poison, i64 %i.un, i64 0
  %i.up = insertelement <2 x i64> %i.uo, i64 %.sink.i339, i64 1 ; 3 uses
  %i.uq = lshr <2 x i64> %i.up, splat (i64 45)
  %i.ur = lshr <2 x i64> %i.up, splat (i64 27)
  %i.us = xor <2 x i64> %i.uq, %i.ur
  %i.ut = trunc <2 x i64> %i.us to <2 x i32>      ; 2 uses
  %i.uu = lshr <2 x i64> %i.up, splat (i64 59)
  %i.uv = trunc nuw nsw <2 x i64> %i.uu to <2 x i32>
  %i.uw = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ut, <2 x i32> %i.ut, <2 x i32> %i.uv)
  %i.ux = uitofp <2 x i32> %i.uw to <2 x float>
  %i.uy = fmul nnan <2 x float> %i.ux, splat (float f0x2F800000) ; 3 uses
  %i.uz = fcmp olt <2 x float> %i.uy, splat (float f0x3F7FFFFF) ; 2 uses
  %i.va = extractelement <2 x i1> %i.uz, i64 1
  %i.vb = extractelement <2 x float> %i.uy, i64 1
  %i.vc = fcmp olt float %i.vb, 5.000000e-01
  %i.vd = select i1 %i.va, i1 %i.vc, i1 false
  %i.ve = extractelement <2 x i1> %i.uz, i64 0
  %i.vf = extractelement <2 x float> %i.uy, i64 0
  %.sroa.speculated.i1.i341 = select i1 %i.ve, float %i.vf, float f0x3F7FFFFF ; 3 uses
  %i.vg = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i1.i341 ; 2 uses
  br i1 %i.vd, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.vh = fmul nnan float %i.vg, 1.500000e+01
  %i.vi = fmul nnan float %.sroa.speculated.i1.i341, -7.000000e+00
  %i.vj = fsub float %i.vi, %i.vh
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.vk = fmul nnan float %i.vg, 7.000000e+00
  %i.vl = fmul nnan float %.sroa.speculated.i1.i341, 1.600000e+01
  %i.vm = fadd float %i.vl, %i.vk
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.vn = phi float [ %i.vj, %bb.fc ], [ %i.vm, %bb.fd ]
  %.pn.i342 = mul i64 %i.un, 6364136223846793005
  %.sink.i343 = add i64 %.pn.i342, 106503         ; 2 uses
  %i.vo = mul i64 %.sink.i343, 6364136223846793005
  %i.vp = add i64 %i.vo, 106503                   ; 2 uses
  %i.vq = insertelement <2 x i64> poison, i64 %i.vp, i64 0
  %i.vr = insertelement <2 x i64> %i.vq, i64 %.sink.i343, i64 1 ; 3 uses
  %i.vs = lshr <2 x i64> %i.vr, splat (i64 45)
  %i.vt = lshr <2 x i64> %i.vr, splat (i64 27)
  %i.vu = xor <2 x i64> %i.vs, %i.vt
  %i.vv = trunc <2 x i64> %i.vu to <2 x i32>      ; 2 uses
  %i.vw = lshr <2 x i64> %i.vr, splat (i64 59)
  %i.vx = trunc nuw nsw <2 x i64> %i.vw to <2 x i32>
  %i.vy = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.vv, <2 x i32> %i.vv, <2 x i32> %i.vx)
  %i.vz = uitofp <2 x i32> %i.vy to <2 x float>
  %i.wa = fmul nnan <2 x float> %i.vz, splat (float f0x2F800000) ; 3 uses
  %i.wb = fcmp olt <2 x float> %i.wa, splat (float f0x3F7FFFFF) ; 2 uses
  %i.wc = extractelement <2 x i1> %i.wb, i64 1
  %i.wd = extractelement <2 x float> %i.wa, i64 1
  %i.we = fcmp olt float %i.wd, 5.000000e-01
  %i.wf = select i1 %i.wc, i1 %i.we, i1 false
  %i.wg = extractelement <2 x i1> %i.wb, i64 0
  %i.wh = extractelement <2 x float> %i.wa, i64 0
  %.sroa.speculated.i1.i346 = select i1 %i.wg, float %i.wh, float f0x3F7FFFFF ; 3 uses
  %i.wi = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i1.i346 ; 2 uses
  br i1 %i.wf, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.wj = fmul nnan float %i.wi, 1.500000e+01
  %i.wk = fmul nnan float %.sroa.speculated.i1.i346, -7.000000e+00
  %i.wl = fsub float %i.wk, %i.wj
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.fg:                                            ; preds = %bb.fe
  %i.wm = fmul nnan float %i.wi, 7.000000e+00
  %i.wn = fmul nnan float %.sroa.speculated.i1.i346, 1.600000e+01
  %i.wo = fadd float %i.wn, %i.wm
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ff, %bb.fg
  %i.wp = phi float [ %i.wl, %bb.ff ], [ %i.wo, %bb.fg ]
  %.pn.i347 = mul i64 %i.vp, 6364136223846793005
  %.sink.i348 = add i64 %.pn.i347, 106503
  %i.wq = fmul float %i.vn, 1.000000e+04
  %i.wr = fmul float %i.wp, 1.000000e+04
  %.sroa.07.0.vec.insert.i350 = insertelement <2 x float> poison, float %i.ul, i64 0
  %.sroa.07.4.vec.insert.i351 = shufflevector <2 x float> %.sroa.07.0.vec.insert.i350, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.05.0.vec.insert.i352 = insertelement <2 x float> poison, float %i.wq, i64 0
  %.sroa.05.4.vec.insert.i353 = shufflevector <2 x float> %.sroa.05.0.vec.insert.i352, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.vec.insert.i354 = insertelement <2 x float> poison, float %i.wr, i64 0
  %.sroa.0.4.vec.insert.i355 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i354, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br i1 %.not.i.i.i.i268, label %.loopexit645, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ws = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #26
          to label %.noexc362 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc362:                                        ; preds = %bb.fh
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ws, i8 0, i64 %i.ah, i1 false), !tbaa !58
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %i.u
  %i.wu = ptrtoint ptr %i.wt to i64
  br label %.loopexit645

.loopexit645:                                     ; preds = %.noexc362, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0485.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ws, %.noexc362 ] ; 9 uses
  %.sroa.14491.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.wu, %.noexc362 ] ; 3 uses
  br label %bb.fi

.critedge232.preheader:                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit412
  br i1 %.not.i.i.i.i268, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph1042

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fh, %bb.ai, %bb.ah
  %lpad.loopexit.split-lp2233 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit333

bb.fi:                                            ; preds = %.loopexit645, %_ZN7testing15AssertionResultD2Ev.exit412
  %.sroa.0476.01040 = phi i32 [ 0, %.loopexit645 ], [ %i.acz, %_ZN7testing15AssertionResultD2Ev.exit412 ] ; 2 uses
  %.sroa.11.01039 = phi i64 [ 6364136223846793006, %.loopexit645 ], [ %i.wx, %_ZN7testing15AssertionResultD2Ev.exit412 ] ; 4 uses
  %i.wv = uitofp nneg i32 %.sroa.0476.01040 to float
  %i.ww = mul i64 %.sroa.11.01039, 6364136223846793005
  %i.wx = add i64 %i.ww, 1
  %i.wy = lshr i64 %.sroa.11.01039, 45
  %i.wz = lshr i64 %.sroa.11.01039, 27
  %i.xa = xor i64 %i.wy, %i.wz
  %i.xb = trunc i64 %i.xa to i32                  ; 2 uses
  %i.xc = lshr i64 %.sroa.11.01039, 59
  %i.xd = trunc nuw nsw i64 %i.xc to i32
  %i.xe = call noundef i32 @llvm.fshr.i32(i32 %i.xb, i32 %i.xb, i32 %i.xd)
  %i.xf = uitofp i32 %i.xe to float
  %i.xg = fmul nnan float %i.xf, f0x2F800000      ; 2 uses
  %i.xh = fcmp olt float %i.xg, f0x3F7FFFFF
  %.sroa.speculated.i.i363 = select i1 %i.xh, float %i.xg, float f0x3F7FFFFF
  %i.xi = fadd float %.sroa.speculated.i.i363, %i.wv
  %i.xj = fdiv float %i.xi, 1.000000e+05
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  store <2 x float> %.sroa.07.4.vec.insert.i351, ptr %29, align 8
  store <2 x float> %.sroa.05.4.vec.insert.i353, ptr %.sroa.7502.0..sroa_idx, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i355, ptr %.sroa.8505.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i8 0, i64 24, i1 false)
  invoke void @_ZNK4pbrt15BVHLightSampler6SampleERKNS_18LightSampleContextEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.14") align 8 %28, ptr noundef nonnull align 8 dereferenceable(160) %7, ptr noundef nonnull align 4 dereferenceable(48) %29, float noundef %i.xj)
          to label %bb.fj unwind label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.xk = load i8, ptr %i.gt, align 8, !tbaa !38, !range !39, !noundef !40 ; 2 uses
  store i8 %i.xk, ptr %30, align 8, !tbaa !46
  store ptr null, ptr %i.gu, align 8, !tbaa !47
  %i.xl = trunc nuw i8 %i.xk to i1
  br i1 %i.xl, label %bb.ge, label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  %i.xm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.ic

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.fm unwind label %bb.fy

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8)
          to label %bb.fn unwind label %bb.fz

bb.fn:                                            ; preds = %bb.fm
  %i.xn = load ptr, ptr %33, align 8, !tbaa !51
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 177, ptr noundef %i.xn)
          to label %bb.fo unwind label %bb.ga

bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.fp unwind label %bb.gb

bb.fp:                                            ; preds = %bb.fo
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #25
  %i.xo = load ptr, ptr %33, align 8, !tbaa !51   ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.xq = icmp eq ptr %i.xo, %i.xp
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %bb.fp
  %i.xr = load i64, ptr %i.xp, align 8, !tbaa !52
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  %i.xt = load ptr, ptr %31, align 8, !tbaa !55
  %.not.i.i.i367 = icmp eq ptr %i.xt, null
  br i1 %.not.i.i.i367, label %_ZN7testing7MessageD2Ev.exit369, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.xu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i368 unwind label %bb.ft

.noexc.i.i368:                                    ; preds = %bb.fq
  br i1 %i.xu, label %bb.fr, label %_ZN7testing7MessageD2Ev.exit369

bb.fr:                                            ; preds = %.noexc.i.i368
  %i.xv = load ptr, ptr %31, align 8, !tbaa !55   ; 3 uses
  %i.xw = icmp eq ptr %i.xv, null
  br i1 %i.xw, label %_ZN7testing7MessageD2Ev.exit369, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.xx = load ptr, ptr %i.xv, align 8, !tbaa !57
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8
  call void %i.xz(ptr noundef nonnull align 8 dereferenceable(128) %i.xv) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit369

bb.ft:                                            ; preds = %bb.fq
  %i.ya = landingpad { ptr, i32 }
          catch ptr null
  %i.yb = extractvalue { ptr, i32 } %i.ya, 0
  call void @__clang_call_terminate(ptr %i.yb) #28
  unreachable

_ZN7testing7MessageD2Ev.exit369:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %.noexc.i.i368, %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  %i.yc = load ptr, ptr %i.gu, align 8, !tbaa !47
  %.not.i.i.i370 = icmp eq ptr %i.yc, null
  br i1 %.not.i.i.i370, label %.critedge234, label %bb.fu

bb.fu:                                            ; preds = %_ZN7testing7MessageD2Ev.exit369
  %i.yd = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i371 unwind label %bb.fx

.noexc.i.i371:                                    ; preds = %bb.fu
  br i1 %i.yd, label %bb.fv, label %.critedge234

bb.fv:                                            ; preds = %.noexc.i.i371
  %i.ye = load ptr, ptr %i.gu, align 8, !tbaa !47 ; 4 uses
  %i.yf = icmp eq ptr %i.ye, null
  br i1 %i.yf, label %.critedge234, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.yg = load ptr, ptr %i.ye, align 8, !tbaa !51 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 16 ; 2 uses
  %i.yi = icmp eq ptr %i.yg, %i.yh
  br i1 %i.yi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372: ; preds = %bb.fw
  %i.yj = load i64, ptr %i.yh, align 8, !tbaa !52
  %i.yk = add i64 %i.yj, 1
  call void @_ZdlPvm(ptr noundef %i.yg, i64 noundef %i.yk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i373

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i373: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i372
  call void @_ZdlPvm(ptr noundef nonnull %i.ye, i64 noundef 32) #27
  br label %.critedge234

bb.fx:                                            ; preds = %bb.fu
  %i.yl = landingpad { ptr, i32 }
          catch ptr null
  %i.ym = extractvalue { ptr, i32 } %i.yl, 0
  call void @__clang_call_terminate(ptr %i.ym) #28
  unreachable
end_hunk_4
begin_hunk_5_@_ZN28BVHLightSampling_OneTri_Test8TestBodyEv:bb.a
bb.ai:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.x
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn40 = phi { ptr, i32 } [ %i.ec, %bb.aj ], [ %i.eb, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #25
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %bb.ak ], [ %i.ea, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #25
  br label %bb.at

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIimEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !47
  %.not.i.i.i102 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i102, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %.critedge
  %i.ef = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i103 unwind label %bb.ap

.noexc.i.i103:                                    ; preds = %bb.am
  br i1 %i.ef, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %.noexc.i.i103
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !47 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !51 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104: ; preds = %bb.ao
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !52
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i105: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef 32) #27
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #28
  unreachable

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i105, %bb.an, %.noexc.i.i103, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store float 1.000000e+00, ptr %17, align 4, !tbaa !20
  %i.ep = invoke noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #26
          to label %bb.ar unwind label %bb.au     ; 3 uses

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.eq = ptrtoint ptr %17 to i64
  %i.er = or i64 %i.eq, 144115188075855872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  store i64 %i.er, ptr %19, align 8, !tbaa !23
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !154
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !156
  store i64 %i.eu, ptr %20, align 8, !tbaa !156
  store i64 0, ptr %21, align 8, !tbaa !158
  %i.ev = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25
  store i32 0, ptr %22, align 8, !tbaa !175
  %i.ew = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i32 0, ptr %i.ew, align 4, !tbaa !176
  %i.ex = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 0, ptr %i.ex, align 8, !tbaa !177
  %i.ey = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ez = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25
  %i.fa = ptrtoint ptr %i.ez to i64
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !178
  %i.fb = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.fd = ptrtoint ptr %i.ev to i64               ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, i8 0, i64 32, i1 false)
  store i64 %i.fd, ptr %i.fc, align 8, !tbaa !178
  %i.fe = getelementptr inbounds nuw i8, ptr %22, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i8 0, i64 24, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %22, i64 88
  store i64 %i.fd, ptr %i.ff, align 8, !tbaa !178
  %i.fg = getelementptr inbounds nuw i8, ptr %22, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i8 0, i64 24, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %22, i64 120
  store i64 %i.fd, ptr %i.fh, align 8, !tbaa !178
  %i.fi = getelementptr inbounds nuw i8, ptr %22, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i8 0, i64 24, i1 false)
  invoke void @_ZN4pbrt16DiffuseAreaLightC1ERKNS_9TransformERKNS_15MediumInterfaceENS_8SpectrumEfNS_5ShapeENS_12FloatTextureENS_5ImageEPKNS_13RGBColorSpaceEb(ptr noundef nonnull align 8 dereferenceable(352) %i.ep, ptr noundef nonnull align 4 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %19, float noundef 1.000000e+00, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %20, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %21, ptr nofree noundef nonnull align 8 dereferenceable(152) %22, ptr noundef null, i1 noundef zeroext false)
          to label %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i unwind label %.thread238

.thread238:                                       ; preds = %bb.ar
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 352) #27
  br label %.thread242

_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ar
  %i.fk = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %bb.as unwind label %bb.av     ; 5 uses

bb.as:                                            ; preds = %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fl = ptrtoint ptr %i.ep to i64
  %i.fm = or i64 %i.fl, 864691128455135232
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !25
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.fn = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25
  invoke void @_ZN4pbrt15BVHLightSamplerC1EN4pstd4spanIKNS_5LightEEENS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(160) %23, ptr nonnull %i.fk, i64 1, ptr %i.fn)
          to label %.preheader unwind label %bb.aw

.preheader:                                       ; preds = %bb.as
  %.sroa.2168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.3169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6157.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.7160.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %24, i64 112
  %i.fu = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  br label %bb.ax

_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit:      ; preds = %bb.bx
  call void @_ZN4pbrt15BVHLightSamplerD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef 8) #27
  br label %bb.ca

bb.at:                                            ; preds = %bb.al, %bb.t
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.al ], [ %i.db, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit139

bb.au:                                            ; preds = %bb.aq
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.thread242

bb.av:                                            ; preds = %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %.thread242

bb.aw:                                            ; preds = %bb.as
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ax:                                            ; preds = %.preheader, %bb.bx
  %.038249 = phi i32 [ 0, %.preheader ], [ %i.ko, %bb.bx ]
  %.sroa.0224.0248 = phi i64 [ -1594652095003101532, %.preheader ], [ %i.iq, %bb.bx ] ; 2 uses
  %i.fz = mul i64 %.sroa.0224.0248, 6364136223846793005
  %i.ga = add i64 %i.fz, 10503                    ; 2 uses
  %i.gb = mul i64 %i.ga, 6364136223846793005
  %i.gc = add i64 %i.gb, 10503                    ; 4 uses
  %i.gd = insertelement <2 x i64> poison, i64 %i.ga, i64 0
  %i.ge = insertelement <2 x i64> %i.gd, i64 %.sroa.0224.0248, i64 1 ; 3 uses
  %i.gf = lshr <2 x i64> %i.ge, splat (i64 45)
  %i.gg = lshr <2 x i64> %i.ge, splat (i64 27)
  %i.gh = xor <2 x i64> %i.gf, %i.gg
  %i.gi = trunc <2 x i64> %i.gh to <2 x i32>      ; 2 uses
  %i.gj = lshr <2 x i64> %i.ge, splat (i64 59)
  %i.gk = trunc nuw nsw <2 x i64> %i.gj to <2 x i32>
  %i.gl = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.gi, <2 x i32> %i.gi, <2 x i32> %i.gk)
  %i.gm = uitofp <2 x i32> %i.gl to <2 x float>
  %i.gn = fmul nnan <2 x float> %i.gm, splat (float f0x2F800000) ; 3 uses
  %i.go = fcmp olt <2 x float> %i.gn, splat (float f0x3F7FFFFF) ; 2 uses
  %i.gp = extractelement <2 x i1> %i.go, i64 1
  %i.gq = extractelement <2 x float> %i.gn, i64 1
  %.sroa.speculated.i = select i1 %i.gp, float %i.gq, float f0x3F7FFFFF ; 2 uses
  %i.gr = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i
  %i.gs = fmul nnan float %i.gr, 5.000000e+00
  %i.gt = fmul nnan float %.sroa.speculated.i, 5.000000e+00
  %i.gu = fsub float %i.gt, %i.gs
  %i.gv = extractelement <2 x i1> %i.go, i64 0
  %i.gw = extractelement <2 x float> %i.gn, i64 0
  %.sroa.speculated.i113 = select i1 %i.gv, float %i.gw, float f0x3F7FFFFF ; 2 uses
  %i.gx = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i113
  %i.gy = fmul nnan float %i.gx, 5.000000e+00
  %i.gz = fmul nnan float %.sroa.speculated.i113, 5.000000e+00
  %i.ha = fsub float %i.gz, %i.gy
  %i.hb = mul i64 %i.gc, 6364136223846793005
  %i.hc = lshr i64 %i.gc, 45
  %i.hd = lshr i64 %i.gc, 27
  %i.he = xor i64 %i.hc, %i.hd
  %i.hf = trunc i64 %i.he to i32                  ; 2 uses
  %i.hg = lshr i64 %i.gc, 59
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = call noundef i32 @llvm.fshr.i32(i32 %i.hf, i32 %i.hf, i32 %i.hh)
  %i.hj = uitofp i32 %i.hi to float
  %i.hk = fmul nnan float %i.hj, f0x2F800000      ; 2 uses
  %i.hl = fcmp olt float %i.hk, f0x3F7FFFFF
  %.sroa.speculated.i114 = select i1 %i.hl, float %i.hk, float f0x3F7FFFFF ; 2 uses
  %i.hm = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i114
  %i.hn = fmul nnan float %i.hm, 5.000000e+00
  %i.ho = fmul nnan float %.sroa.speculated.i114, 5.000000e+00
  %i.hp = fsub float %i.ho, %i.hn
  %.sroa.0171.0.vec.insert = insertelement <2 x float> poison, float %i.gu, i64 0
  %.sroa.07.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.0171.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = insertelement <2 x float> poison, float %i.ha, i64 0
  %.sroa.05.4.vec.insert.i.i = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.hp, i64 0
  %.sroa.0.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hr = add i64 %i.hb, 10503                    ; 2 uses
  %i.hs = mul i64 %i.hr, 6364136223846793005
  %i.ht = add i64 %i.hs, 10503                    ; 2 uses
  %i.hu = insertelement <2 x i64> poison, i64 %i.hr, i64 0
  %i.hv = insertelement <2 x i64> %i.hu, i64 %i.ht, i64 1 ; 3 uses
  %i.hw = lshr <2 x i64> %i.hv, splat (i64 45)
  %i.hx = lshr <2 x i64> %i.hv, splat (i64 27)
  %i.hy = xor <2 x i64> %i.hw, %i.hx
  %i.hz = trunc <2 x i64> %i.hy to <2 x i32>      ; 2 uses
  %i.ia = lshr <2 x i64> %i.hv, splat (i64 59)
  %i.ib = trunc nuw nsw <2 x i64> %i.ia to <2 x i32>
  %i.ic = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.hz, <2 x i32> %i.hz, <2 x i32> %i.ib)
  %i.id = uitofp <2 x i32> %i.ic to <2 x float>
  %i.ie = fmul nnan <2 x float> %i.id, splat (float f0x2F800000) ; 2 uses
  %i.if = fcmp olt <2 x float> %i.ie, splat (float f0x3F7FFFFF)
  %i.ig = select <2 x i1> %i.if, <2 x float> %i.ie, <2 x float> splat (float f0x3F7FFFFF)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4170.0..sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <8 x float> <float 5.950000e+02, float 7.125000e+02, float 8.300000e+02, float 4.775000e+02, float f0x3B0B7034, float f0x3B0B7034, float f0x3B0B7034, float f0x3B0B7034>, ptr %3, align 8
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %4, align 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %.sroa.2168.0..sroa_idx, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %.sroa.3169.0..sroa_idx, align 8
  store <2 x float> %i.ig, ptr %1, align 8, !noalias !289
  store i8 0, ptr %i.a, align 1, !tbaa !27, !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !289
  store ptr %4, ptr %2, align 8, !tbaa !30, !noalias !289
  store ptr %1, ptr %i.fo, align 8, !tbaa !32, !noalias !289
  store ptr %3, ptr %i.fp, align 8, !tbaa !34, !noalias !289
  store ptr %i.a, ptr %i.fq, align 8, !tbaa !36, !noalias !289
  %i.ih = load i64, ptr %i.fk, align 8, !tbaa !25, !noalias !290 ; 2 uses
  %i.ii = and i64 %i.ih, 144115188075855871
  %i.ij = inttoptr i64 %i.ii to ptr
  %i.ik = lshr i64 %i.ih, 57
  %i.il = trunc nuw nsw i64 %i.ik to i32
  %i.im = add nsw i32 %i.il, -1
  invoke void @_ZN4pbrt6detail8DispatchIRZNKS_5Light8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEbEUlT_E_N4pstd8optionalINS_13LightLiSampleEEENS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS7_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.ij, i32 noundef %i.im)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.in = mul i64 %i.ht, 6364136223846793005
  %i.io = add i64 %i.in, 10503                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %26, align 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %.sroa.6157.0..sroa_idx158, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %.sroa.7160.0..sroa_idx161, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i8 0, i64 24, i1 false)
  %i.ip = mul i64 %i.io, 6364136223846793005
  %i.iq = add i64 %i.ip, 10503
  %i.ir = lshr i64 %i.io, 45
  %i.is = lshr i64 %i.io, 27
  %i.it = xor i64 %i.ir, %i.is
  %i.iu = trunc i64 %i.it to i32                  ; 2 uses
  %i.iv = lshr i64 %i.io, 59
  %i.iw = trunc nuw nsw i64 %i.iv to i32
  %i.ix = call noundef i32 @llvm.fshr.i32(i32 %i.iu, i32 %i.iu, i32 %i.iw)
  %i.iy = uitofp i32 %i.ix to float
  %i.iz = fmul nnan float %i.iy, f0x2F800000      ; 2 uses
  %i.ja = fcmp olt float %i.iz, f0x3F7FFFFF
  %.sroa.speculated.i118 = select i1 %i.ja, float %i.iz, float f0x3F7FFFFF
  invoke void @_ZNK4pbrt15BVHLightSampler6SampleERKNS_18LightSampleContextEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.14") align 8 %25, ptr noundef nonnull align 8 dereferenceable(160) %23, ptr noundef nonnull align 4 dereferenceable(48) %26, float noundef %.sroa.speculated.i118)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  %i.jb = load i8, ptr %i.fs, align 8, !tbaa !38, !range !39, !noundef !40
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.bx, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.jd = load i8, ptr %i.ft, align 8, !tbaa !42, !range !39, !noundef !40 ; 2 uses
  %i.je = trunc nuw i8 %i.jd to i1
  %i.jf = xor i8 %i.jd, 1
  store i8 %i.jf, ptr %27, align 8, !tbaa !46
  store ptr null, ptr %i.fu, align 8, !tbaa !47
  br i1 %i.je, label %bb.bd, label %_ZN7testing15AssertionResultD2Ev.exit130

bb.bb:                                            ; preds = %bb.ax
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bc:                                            ; preds = %bb.ay
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.by

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.be unwind label %bb.bm

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9)
          to label %bb.bf unwind label %bb.bn

bb.bf:                                            ; preds = %bb.be
  %i.ji = load ptr, ptr %30, align 8, !tbaa !51
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 230, ptr noundef %i.ji)
          to label %bb.bg unwind label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.bh unwind label %bb.bp

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #25
  %i.jj = load ptr, ptr %30, align 8, !tbaa !51   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.fv
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bh
  %i.jl = load i64, ptr %i.fv, align 8, !tbaa !52
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.jn = load ptr, ptr %28, align 8, !tbaa !55
  %.not.i.i.i119 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i119, label %bb.bs, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jo = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i120 unwind label %bb.bl

.noexc.i.i120:                                    ; preds = %bb.bi
  br i1 %i.jo, label %bb.bj, label %bb.bs

bb.bj:                                            ; preds = %.noexc.i.i120
  %i.jp = load ptr, ptr %28, align 8, !tbaa !55   ; 3 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.bs, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !57
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(128) %i.jp) #25, !inline_history !0
  br label %bb.bs

bb.bl:                                            ; preds = %bb.bi
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  %i.jv = extractvalue { ptr, i32 } %i.ju, 0
  call void @__clang_call_terminate(ptr %i.jv) #28
  unreachable

bb.bm:                                            ; preds = %bb.bd
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bn:                                            ; preds = %bb.be
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

bb.bo:                                            ; preds = %bb.bf
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bg
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #25
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn47 = phi { ptr, i32 } [ %i.jz, %bb.bp ], [ %i.jy, %bb.bo ] ; 2 uses
  %i.ka = load ptr, ptr %30, align 8, !tbaa !51   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.fv
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.bq
end_hunk_5
begin_hunk_6_@_ZL12randomLightsiN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
  store i64 %i.ik, ptr %.sroa.10195.0484, align 8, !tbaa !156
  %.sroa.10195.1679 = getelementptr inbounds nuw i8, ptr %.sroa.10195.0484, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !152
  br label %bb.an

bb.ak:                                            ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EE9push_backEOS1_.exit
  %i.il = ptrtoint ptr %.sroa.10195.0484 to i64   ; 2 uses
  %i.im = ptrtoint ptr %.sroa.0191.0485 to i64    ; 3 uses
  %i.in = sub i64 %i.il, %i.im                    ; 4 uses
  %i.io = icmp eq i64 %i.in, 9223372036854775800
  br i1 %i.io, label %bb.al, label %_ZNKSt6vectorIN4pbrt5ShapeESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #29
          to label %.noexc112 unwind label %.loopexit.split-lp248.loopexit.split-lp

.noexc112:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN4pbrt5ShapeESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ak
  %i.ip = ashr exact i64 %i.in, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ip, i64 1)
  %i.iq = add nsw i64 %.sroa.speculated.i.i.i, %i.ip ; 2 uses
  %i.ir = icmp ult i64 %i.iq, %i.ip
  %i.is = call i64 @llvm.umin.i64(i64 %i.iq, i64 1152921504606846975)
  %i.it = select i1 %i.ir, i64 1152921504606846975, i64 %i.is ; 3 uses
  %.not.i.i.i111 = icmp ne i64 %i.it, 0
  call void @llvm.assume(i1 %.not.i.i.i111)
  %i.iu = shl nuw nsw i64 %i.it, 3
  %i.iv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iu) #26
          to label %.noexc113 unwind label %.loopexit.split-lp248.loopexit.split-lp ; 11 uses

.noexc113:                                        ; preds = %_ZNKSt6vectorIN4pbrt5ShapeESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.in
  %i.ix = load i64, ptr %i.ij, align 8, !tbaa !156
  store i64 %i.ix, ptr %i.iw, align 8, !tbaa !156
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0191.0485, %.sroa.10195.0484
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5ShapeES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i, label %iter.check229

iter.check229:                                    ; preds = %.noexc113
  %i.iy = ptrtoaddr ptr %i.iv to i64
  %i.iz = add i64 %i.il, -8
  %i.ja = sub i64 %i.iz, %i.im                    ; 3 uses
  %i.jb = lshr i64 %i.ja, 3
  %i.jc = add nuw nsw i64 %i.jb, 1                ; 5 uses
  %min.iters.check211 = icmp ult i64 %i.ja, 24
  %i.jd = sub i64 %i.im, %i.iy
  %diff.check213 = icmp ugt i64 %i.jd, -128
  %or.cond283 = or i1 %min.iters.check211, %diff.check213
  br i1 %or.cond283, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check214

vector.main.loop.iter.check214:                   ; preds = %iter.check229
  %min.iters.check215 = icmp ult i64 %i.ja, 120
  br i1 %min.iters.check215, label %vec.epilog.ph233, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check214
  %i.je = and i64 %i.jc, 12
  %n.vec217 = and i64 %i.jc, 4611686018427387888  ; 4 uses
  %i.jf = shl i64 %n.vec217, 3                    ; 2 uses
  %i.jg = getelementptr i8, ptr %i.iv, i64 %i.jf  ; 2 uses
  %i.jh = getelementptr i8, ptr %.sroa.0191.0485, i64 %i.jf
  br label %vector.body218

vector.body218:                                   ; preds = %vector.ph216, %vector.body218
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next226, %vector.body218 ] ; 2 uses
  %i.ji = shl i64 %index219, 3                    ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.iv, i64 %i.ji ; 4 uses
  %next.gep221 = getelementptr i8, ptr %.sroa.0191.0485, i64 %i.ji ; 4 uses
  %i.jj = getelementptr i8, ptr %next.gep221, i64 32
  %i.jk = getelementptr i8, ptr %next.gep221, i64 64
  %i.jl = getelementptr i8, ptr %next.gep221, i64 96
  %wide.load222 = load <4 x i64>, ptr %next.gep221, align 8, !tbaa !156
  %wide.load223 = load <4 x i64>, ptr %i.jj, align 8, !tbaa !156
  %wide.load224 = load <4 x i64>, ptr %i.jk, align 8, !tbaa !156
  %wide.load225 = load <4 x i64>, ptr %i.jl, align 8, !tbaa !156
  %i.jm = getelementptr i8, ptr %next.gep220, i64 32
  %i.jn = getelementptr i8, ptr %next.gep220, i64 64
  %i.jo = getelementptr i8, ptr %next.gep220, i64 96
  store <4 x i64> %wide.load222, ptr %next.gep220, align 8, !tbaa !156
  store <4 x i64> %wide.load223, ptr %i.jm, align 8, !tbaa !156
  store <4 x i64> %wide.load224, ptr %i.jn, align 8, !tbaa !156
  store <4 x i64> %wide.load225, ptr %i.jo, align 8, !tbaa !156
  %index.next226 = add nuw i64 %index219, 16      ; 2 uses
  %i.jp = icmp eq i64 %index.next226, %n.vec217
  br i1 %i.jp, label %middle.block227, label %vector.body218, !llvm.loop !311

middle.block227:                                  ; preds = %vector.body218
  %cmp.n228 = icmp eq i64 %i.jc, %n.vec217
  br i1 %cmp.n228, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5ShapeES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i, label %vec.epilog.iter.check230

vec.epilog.iter.check230:                         ; preds = %middle.block227
  %min.epilog.iters.check232 = icmp eq i64 %i.je, 0
  br i1 %min.epilog.iters.check232, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph233, !prof !106

vec.epilog.ph233:                                 ; preds = %vector.main.loop.iter.check214, %vec.epilog.iter.check230
  %vec.epilog.resume.val234 = phi i64 [ %n.vec217, %vec.epilog.iter.check230 ], [ 0, %vector.main.loop.iter.check214 ]
  %n.vec235 = and i64 %i.jc, 4611686018427387900  ; 3 uses
  %i.jq = shl i64 %n.vec235, 3                    ; 2 uses
  %i.jr = getelementptr i8, ptr %i.iv, i64 %i.jq  ; 2 uses
  %i.js = getelementptr i8, ptr %.sroa.0191.0485, i64 %i.jq
  br label %vec.epilog.vector.body236

vec.epilog.vector.body236:                        ; preds = %vec.epilog.vector.body236, %vec.epilog.ph233
  %index237 = phi i64 [ %vec.epilog.resume.val234, %vec.epilog.ph233 ], [ %index.next241, %vec.epilog.vector.body236 ] ; 2 uses
  %i.jt = shl i64 %index237, 3                    ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.iv, i64 %i.jt
  %next.gep239 = getelementptr i8, ptr %.sroa.0191.0485, i64 %i.jt
  %wide.load240 = load <4 x i64>, ptr %next.gep239, align 8, !tbaa !156
  store <4 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !156
  %index.next241 = add nuw i64 %index237, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next241, %n.vec235
  br i1 %i.ju, label %vec.epilog.middle.block242, label %vec.epilog.vector.body236, !llvm.loop !312

vec.epilog.middle.block242:                       ; preds = %vec.epilog.vector.body236
  %cmp.n243 = icmp eq i64 %i.jc, %n.vec235
  br i1 %cmp.n243, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5ShapeES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check229, %vec.epilog.iter.check230, %vec.epilog.middle.block242
  %.015.i.i.i.i.i.i.i.ph = phi ptr [ %i.iv, %iter.check229 ], [ %i.jg, %vec.epilog.iter.check230 ], [ %i.jr, %vec.epilog.middle.block242 ]
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0191.0485, %iter.check229 ], [ %i.jh, %vec.epilog.iter.check230 ], [ %i.js, %vec.epilog.middle.block242 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.jw, %.lr.ph.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.jv = load i64, ptr %.01214.i.i.i.i.i.i.i, align 8, !tbaa !156
  store i64 %i.jv, ptr %.015.i.i.i.i.i.i.i, align 8, !tbaa !156
  %i.jw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jw, %.sroa.10195.0484
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5ShapeES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !313

_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5ShapeES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block227, %vec.epilog.middle.block242, %.noexc113
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.iv, %.noexc113 ], [ %i.jr, %vec.epilog.middle.block242 ], [ %i.jg, %middle.block227 ], [ %i.jx, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i35.i.i = icmp eq ptr %.sroa.0191.0485, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5ShapeES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.0485, i64 noundef %i.in) #27
  br label %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5ShapeES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i, %bb.am
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.it ; 2 uses
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !154 ; 2 uses
  %.sroa.10195.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !152
  %.not.i.i.i.i114 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i114, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit.thread, %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit
  %.sroa.10195.1685 = phi ptr [ %.sroa.10195.1679, %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit.thread ], [ %.sroa.10195.1, %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit ]
  %.sroa.0191.2683 = phi ptr [ %.sroa.0191.0485, %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit.thread ], [ %i.iv, %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit ]
  %.sroa.14.2681 = phi ptr [ %.sroa.14.0483, %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit.thread ], [ %i.jy, %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit ]
  %i.jz = phi ptr [ %i.ij, %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit.thread ], [ %.pre, %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit ]
  %i.ka = load i64, ptr %i.an, align 8, !tbaa !179
  %i.kb = shl i64 %i.ka, 3
  %i.kc = load ptr, ptr %12, align 8, !tbaa !180  ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !57
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8
  invoke void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, ptr noundef nonnull %i.jz, i64 noundef %i.kb, i64 noundef 8)
          to label %bb.ap unwind label %bb.ao, !inline_history !5

bb.ao:                                            ; preds = %bb.an
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #28
  unreachable

bb.ap:                                            ; preds = %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit, %bb.an
  %.sroa.10195.1686 = phi ptr [ %.sroa.10195.1, %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.10195.1685, %bb.an ] ; 2 uses
  %.sroa.0191.2684 = phi ptr [ %i.iv, %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0191.2683, %bb.an ] ; 4 uses
  %.sroa.14.2682 = phi ptr [ %i.jy, %_ZNSt6vectorIN4pbrt5ShapeESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.14.2681, %bb.an ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 36) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 12) #27
  %i.ki = mul i64 %i.fu, 6364136223846793005
  %i.kj = add i64 %i.ki, 13005                    ; 2 uses
  %i.kk = mul i64 %i.kj, 6364136223846793005
  %i.kl = add i64 %i.kk, 13005                    ; 4 uses
  %i.km = mul i64 %i.kl, 6364136223846793005
  %i.kn = add i64 %i.km, 13005                    ; 4 uses
  %i.ko = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #26
          to label %bb.aq unwind label %.loopexit.split-lp253.loopexit.split-lp ; 5 uses

bb.aq:                                            ; preds = %bb.ap
  %i.kp = insertelement <2 x i64> poison, i64 %i.fu, i64 0
  %i.kq = insertelement <2 x i64> %i.kp, i64 %i.kj, i64 1 ; 3 uses
  %i.kr = lshr <2 x i64> %i.kq, splat (i64 45)
  %i.ks = lshr <2 x i64> %i.kq, splat (i64 27)
  %i.kt = lshr <2 x i64> %i.kq, splat (i64 59)
  %i.ku = xor <2 x i64> %i.kr, %i.ks
  %i.kv = trunc <2 x i64> %i.ku to <2 x i32>      ; 2 uses
  %i.kw = trunc nuw nsw <2 x i64> %i.kt to <2 x i32>
  %i.kx = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.kv, <2 x i32> %i.kv, <2 x i32> %i.kw)
  %i.ky = uitofp <2 x i32> %i.kx to <2 x float>
  %i.kz = fmul nnan <2 x float> %i.ky, splat (float f0x2F800000) ; 2 uses
  %i.la = fcmp olt <2 x float> %i.kz, splat (float f0x3F7FFFFF)
  %i.lb = select <2 x i1> %i.la, <2 x float> %i.kz, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.lc = fsub nnan ninf <2 x float> splat (float 1.000000e+00), %i.lb
  %i.ld = fmul nnan <2 x float> %i.lc, splat (float 5.000000e+00)
  %i.le = fmul nnan <2 x float> %i.lb, splat (float 5.000000e+00)
  %i.lf = fsub <2 x float> %i.le, %i.ld
  %i.lg = lshr i64 %i.kl, 45
  %i.lh = lshr i64 %i.kl, 27
  %i.li = xor i64 %i.lg, %i.lh
  %i.lj = trunc i64 %i.li to i32                  ; 2 uses
  %i.lk = lshr i64 %i.kl, 59
  %i.ll = trunc nuw nsw i64 %i.lk to i32
  %i.lm = call noundef i32 @llvm.fshr.i32(i32 %i.lj, i32 %i.lj, i32 %i.ll)
  %i.ln = uitofp i32 %i.lm to float
  %i.lo = fmul nnan float %i.ln, f0x2F800000      ; 2 uses
  %i.lp = fcmp olt float %i.lo, f0x3F7FFFFF
  %.sroa.speculated.i122 = select i1 %i.lp, float %i.lo, float f0x3F7FFFFF ; 2 uses
  %i.lq = fsub nnan ninf float 1.000000e+00, %.sroa.speculated.i122
  %i.lr = fmul nnan float %i.lq, 5.000000e+00
  %i.ls = fmul nnan float %.sroa.speculated.i122, 5.000000e+00
  %i.lt = fsub float %i.ls, %i.lr
  invoke void @_ZN4pbrt9TranslateENS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %15, <2 x float> %i.lf, float %i.lt)
          to label %bb.ar unwind label %.thread244

bb.ar:                                            ; preds = %bb.aq
  %i.lu = mul i64 %i.kn, 6364136223846793005
  %i.lv = add i64 %i.lu, 13005
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.lw = load ptr, ptr %4, align 8, !tbaa !322   ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !57
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = invoke noundef ptr %i.lz(ptr noundef nonnull align 8 dereferenceable(8) %i.lw, i64 noundef 4, i64 noundef 4)
          to label %bb.as unwind label %.thread244, !inline_history !306 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.mb = lshr i64 %i.kn, 45
  %i.mc = lshr i64 %i.kn, 27
  %i.md = xor i64 %i.mb, %i.mc
  %i.me = trunc i64 %i.md to i32                  ; 2 uses
  %i.mf = lshr i64 %i.kn, 59
  %i.mg = trunc nuw nsw i64 %i.mf to i32
  %i.mh = call noundef i32 @llvm.fshr.i32(i32 %i.me, i32 %i.me, i32 %i.mg)
  %i.mi = uitofp i32 %i.mh to float
  %i.mj = fmul nnan float %i.mi, f0x2F800000      ; 2 uses
  %i.mk = fcmp olt float %i.mj, f0x3F7FFFFF
  %.sroa.speculated.i.i123 = select i1 %i.mk, float %i.mj, float f0x3F7FFFFF
  store float %.sroa.speculated.i.i123, ptr %i.ma, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %15, i64 128, i1 false)
  invoke void @_ZN4pbrt9LightBaseC2ENS_9LightTypeERKNS_9TransformERKNS_15MediumInterfaceE(ptr noundef nonnull align 8 dereferenceable(164) %i.ko, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %.noexc126 unwind label %.thread244

.noexc126:                                        ; preds = %bb.as
  %i.ml = ptrtoint ptr %i.ma to i64
  %i.mm = or i64 %i.ml, 144115188075855872
  store i64 %i.mm, ptr %2, align 8, !tbaa !23
  %i.mn = invoke noundef ptr @_ZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumE(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %2)
          to label %bb.at unwind label %.thread244

bb.at:                                            ; preds = %.noexc126
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ko, i64 152
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !102
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ko, i64 160
  store float 1.000000e+00, ptr %i.mp, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.mq = ptrtoint ptr %i.ko to i64
  %i.mr = or i64 %i.mq, 144115188075855872        ; 2 uses
  %.not.i.i128 = icmp eq ptr %.sroa.12206.1, %.sroa.19.7
  br i1 %.not.i.i128, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i64 %i.mr, ptr %.sroa.12206.1, align 8, !tbaa !25
  %i.ms = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.pn, i64 16
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EE9push_backEOS1_.exit143

bb.av:                                            ; preds = %bb.at
  %i.mt = ptrtoint ptr %.sroa.19.7 to i64
  %i.mu = ptrtoint ptr %.sroa.0201.7 to i64       ; 3 uses
  %i.mv = sub i64 %i.mt, %i.mu                    ; 4 uses
  %i.mw = icmp eq i64 %i.mv, 9223372036854775800
  br i1 %i.mw, label %bb.aw, label %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i129

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #29
          to label %.noexc141 unwind label %.loopexit.split-lp253.loopexit.split-lp

.noexc141:                                        ; preds = %bb.aw
  unreachable

_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i129: ; preds = %bb.av
  %i.mx = ashr exact i64 %i.mv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i130 = call i64 @llvm.umax.i64(i64 %i.mx, i64 1)
  %i.my = add nsw i64 %.sroa.speculated.i.i.i.i130, %i.mx ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mx
  %i.na = call i64 @llvm.umin.i64(i64 %i.my, i64 1152921504606846975)
  %i.nb = select i1 %i.mz, i64 1152921504606846975, i64 %i.na ; 3 uses
  %.not.i.i.i.i131 = icmp ne i64 %i.nb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i131)
  %i.nc = shl nuw nsw i64 %i.nb, 3
  %i.nd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nc) #26
          to label %.noexc142 unwind label %.loopexit.split-lp253.loopexit.split-lp ; 10 uses

.noexc142:                                        ; preds = %_ZNKSt6vectorIN4pbrt5LightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i129
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.mv
  store i64 %i.mr, ptr %i.ne, align 8, !tbaa !25
  %.not13.i.i.i.i.i.i.i.i132 = icmp eq ptr %.sroa.0201.7, %.sroa.19.7
  br i1 %.not13.i.i.i.i.i.i.i.i132, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i137, label %iter.check

iter.check:                                       ; preds = %.noexc142
  %i.nf = ptrtoaddr ptr %i.nd to i64
  %i.ng = sub i64 %.0.lcssa.i.i.i.i.i.i.i.i.pn195, %i.mu ; 3 uses
  %i.nh = lshr i64 %i.ng, 3
  %i.ni = add nuw nsw i64 %i.nh, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ng, 24
  %i.nj = sub i64 %i.mu, %i.nf
  %diff.check = icmp ugt i64 %i.nj, -128
  %or.cond284 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond284, label %.lr.ph.i.i.i.i.i.i.i.i133.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check196 = icmp ult i64 %i.ng, 120
  br i1 %min.iters.check196, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nk = and i64 %i.ni, 12
  %n.vec = and i64 %i.ni, 4611686018427387888     ; 4 uses
  %i.nl = shl i64 %n.vec, 3                       ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nd, i64 %i.nl  ; 2 uses
  %i.nn = getelementptr i8, ptr %.sroa.0201.7, i64 %i.nl
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.no = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.nd, i64 %i.no ; 4 uses
  %next.gep197 = getelementptr i8, ptr %.sroa.0201.7, i64 %i.no ; 4 uses
  %i.np = getelementptr i8, ptr %next.gep197, i64 32
  %i.nq = getelementptr i8, ptr %next.gep197, i64 64
  %i.nr = getelementptr i8, ptr %next.gep197, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep197, align 8, !tbaa !25
  %wide.load198 = load <4 x i64>, ptr %i.np, align 8, !tbaa !25
  %wide.load199 = load <4 x i64>, ptr %i.nq, align 8, !tbaa !25
  %wide.load200 = load <4 x i64>, ptr %i.nr, align 8, !tbaa !25
  %i.ns = getelementptr i8, ptr %next.gep, i64 32
  %i.nt = getelementptr i8, ptr %next.gep, i64 64
  %i.nu = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25
  store <4 x i64> %wide.load198, ptr %i.ns, align 8, !tbaa !25
  store <4 x i64> %wide.load199, ptr %i.nt, align 8, !tbaa !25
  store <4 x i64> %wide.load200, ptr %i.nu, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.nv = icmp eq i64 %index.next, %n.vec
  br i1 %i.nv, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ni, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i137, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i133.preheader, label %vec.epilog.ph, !prof !106

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec201 = and i64 %i.ni, 4611686018427387900  ; 3 uses
  %i.nw = shl i64 %n.vec201, 3                    ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nd, i64 %i.nw  ; 2 uses
  %i.ny = getelementptr i8, ptr %.sroa.0201.7, i64 %i.nw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index202 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next206, %vec.epilog.vector.body ] ; 2 uses
  %i.nz = shl i64 %index202, 3                    ; 2 uses
  %next.gep203 = getelementptr i8, ptr %i.nd, i64 %i.nz
  %next.gep204 = getelementptr i8, ptr %.sroa.0201.7, i64 %i.nz
  %wide.load205 = load <4 x i64>, ptr %next.gep204, align 8, !tbaa !25
  store <4 x i64> %wide.load205, ptr %next.gep203, align 8, !tbaa !25
  %index.next206 = add nuw i64 %index202, 4       ; 2 uses
  %i.oa = icmp eq i64 %index.next206, %n.vec201
  br i1 %i.oa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !315

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n207 = icmp eq i64 %i.ni, %n.vec201
  br i1 %cmp.n207, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i137, label %.lr.ph.i.i.i.i.i.i.i.i133.preheader

.lr.ph.i.i.i.i.i.i.i.i133.preheader:              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.i.i.i.i.i.i134.ph = phi ptr [ %i.nd, %iter.check ], [ %i.nm, %vec.epilog.iter.check ], [ %i.nx, %vec.epilog.middle.block ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i135.ph = phi ptr [ %.sroa.0201.7, %iter.check ], [ %i.nn, %vec.epilog.iter.check ], [ %i.ny, %vec.epilog.middle.block ] ; 3 uses
  %.01214.i.i.i.i.i.i.i.i135.ph493 = ptrtoaddr ptr %.01214.i.i.i.i.i.i.i.i135.ph to i64
  %i.ob = sub i64 %.0.lcssa.i.i.i.i.i.i.i.i.pn195, %.01214.i.i.i.i.i.i.i.i135.ph493 ; 2 uses
  %i.oc = lshr i64 %i.ob, 3
  %i.od = add nuw nsw i64 %i.oc, 1
  %xtraiter = and i64 %i.od, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i133.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i133.prol

.lr.ph.i.i.i.i.i.i.i.i133.prol:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i133.preheader, %.lr.ph.i.i.i.i.i.i.i.i133.prol
  %.015.i.i.i.i.i.i.i.i134.prol = phi ptr [ %i.og, %.lr.ph.i.i.i.i.i.i.i.i133.prol ], [ %.015.i.i.i.i.i.i.i.i134.ph, %.lr.ph.i.i.i.i.i.i.i.i133.preheader ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i135.prol = phi ptr [ %i.of, %.lr.ph.i.i.i.i.i.i.i.i133.prol ], [ %.01214.i.i.i.i.i.i.i.i135.ph, %.lr.ph.i.i.i.i.i.i.i.i133.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i133.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i133.preheader ]
  %i.oe = load i64, ptr %.01214.i.i.i.i.i.i.i.i135.prol, align 8, !tbaa !25
  store i64 %i.oe, ptr %.015.i.i.i.i.i.i.i.i134.prol, align 8, !tbaa !25
  %i.of = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i135.prol, i64 8 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i134.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i133.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i133.prol, !llvm.loop !316

.lr.ph.i.i.i.i.i.i.i.i133.prol.loopexit:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i133.prol, %.lr.ph.i.i.i.i.i.i.i.i133.preheader
  %.lcssa292.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i133.preheader ], [ %i.og, %.lr.ph.i.i.i.i.i.i.i.i133.prol ]
  %.015.i.i.i.i.i.i.i.i134.unr = phi ptr [ %.015.i.i.i.i.i.i.i.i134.ph, %.lr.ph.i.i.i.i.i.i.i.i133.preheader ], [ %i.og, %.lr.ph.i.i.i.i.i.i.i.i133.prol ]
  %.01214.i.i.i.i.i.i.i.i135.unr = phi ptr [ %.01214.i.i.i.i.i.i.i.i135.ph, %.lr.ph.i.i.i.i.i.i.i.i133.preheader ], [ %i.of, %.lr.ph.i.i.i.i.i.i.i.i133.prol ]
  %i.oh = icmp ult i64 %i.ob, 56
  br i1 %i.oh, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt5LightES2_SaIS1_EET0_T_S5_S4_RT1_.exit34.i.i.i137, label %.lr.ph.i.i.i.i.i.i.i.i133

end_hunk_6
begin_hunk_7_@_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE:bb.a
  %i.bs = extractelement <2 x float> %i.br, i64 0
  %i.bt = fadd float %i.bq, %i.bs
  %i.bu = extractelement <2 x float> %i.br, i64 1
  %i.bv = fadd float %i.bu, %i.bt                 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.bk, %i.bi ; 2 uses
  %foldExtExtBinop178 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.bw = shufflevector <2 x float> %i.bk, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  %i.bx = shufflevector <2 x float> %i.bi, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.by = fsub <2 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = fmul <2 x float> %i.by, %i.by           ; 2 uses
  %shift = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop180 = fadd <2 x float> %shift, %foldExtExtBinop178
  %foldExtExtBinop182 = fadd <2 x float> %i.bz, %foldExtExtBinop180
  %i.ca = extractelement <2 x float> %foldExtExtBinop182, i64 0
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ca)
  %i.cb = fmul float %sqrt.i, 5.000000e-01        ; 2 uses
  %i.cc = fcmp olt float %i.bv, %i.cb
  %.sroa.speculated149 = select i1 %i.cc, float %i.cb, float %i.bv
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bv) ; 2 uses
  %i.cd = fdiv float %i.aq, %sqrt.i.i             ; 2 uses
  %i.ce = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fdiv <2 x float> %i.bp, %i.cf           ; 3 uses
  %i.ch = load <2 x i16>, ptr %0, align 4, !tbaa !76
  %i.ci = uitofp <2 x i16> %i.ch to <2 x float>
  %i.cj = fdiv nnan <2 x float> %i.ci, splat (float 6.553500e+04)
  %i.ck = fmul nnan <2 x float> %i.cj, splat (float 2.000000e+00)
  %i.cl = fadd <2 x float> %i.ck, splat (float -1.000000e+00) ; 3 uses
  %i.cm = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cl) ; 3 uses
  %shift184 = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop185 = fadd <2 x float> %i.cm, %shift184
  %i.cn = extractelement <2 x float> %foldExtExtBinop185, i64 0
  %i.co = fsub float 1.000000e+00, %i.cn          ; 4 uses
  %i.cp = fcmp olt float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.b, label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

bb.b:                                             ; preds = %bb.a
  %i.cq = fsub nnan <2 x float> splat (float 1.000000e+00), %i.cm
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> splat (float 1.000000e+00), <2 x float> %i.cl)
  %i.ct = fmul nnan <2 x float> %i.cs, %i.cr
  br label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi <2 x float> [ %i.ct, %bb.b ], [ %i.cl, %bb.a ] ; 4 uses
  %.sroa.01.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.cu = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.i ; 2 uses
  %shift187 = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop188 = fadd <2 x float> %i.cu, %shift187
  %i.cv = extractelement <2 x float> %foldExtExtBinop188, i64 0
  %i.cw = fmul float %i.co, %i.co
  %i.cx = fadd float %i.cw, %i.cv
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cx) ; 2 uses
  %i.cy = fdiv float %.sroa.01.0.vec.extract.i.i.i.i, %sqrt.i.i.i
  %i.cz = fmul float %i.cd, %i.cy
  %i.da = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x float> %i.da, float %i.co, i64 1
  %i.dc = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x float> %i.db, %i.dd
  %i.df = fmul <2 x float> %i.cg, %i.de           ; 2 uses
  %i.dg = extractelement <2 x float> %i.df, i64 0
  %i.dh = fadd float %i.cz, %i.dg
  %i.di = extractelement <2 x float> %i.df, i64 1
  %i.dj = fadd float %i.di, %i.dh                 ; 2 uses
  %i.dk = and i32 %i.z, 1073741824
  %.not = icmp eq i32 %i.dk, 0
  %i.dl = tail call float @llvm.fabs.f32(float %i.dj)
  %spec.select = select i1 %.not, float %i.dj, float %i.dl ; 5 uses
  %i.dm = fmul float %spec.select, %spec.select
  %i.dn = fsub float 1.000000e+00, %i.dm          ; 2 uses
  %i.do = fcmp ogt float %i.dn, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.do, float %i.dn, float 0.000000e+00
  %sqrt.i124 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 2 uses
  %i.dp = fcmp ult float %i.ap, %i.an
  %i.dq = fcmp ugt float %i.ap, %i.am
  %or.cond.i.i.i = select i1 %i.dp, i1 true, i1 %i.dq
  br i1 %or.cond.i.i.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit
  %i.dr = shufflevector <2 x float> %i.bm, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ds = shufflevector <2 x float> %i.bk, <2 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = fcmp ugt <4 x float> %i.dr, %i.ds
  %i.du = freeze <4 x i1> %i.dt
  %i.dv = bitcast <4 x i1> %i.du to i4
  %.not206 = icmp eq i4 %i.dv, 0
  br i1 %.not206, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i: ; preds = %bb.c
  %i.dw = fsub float %i.ap, %i.am                 ; 2 uses
  %foldExtExtBinop190 = fsub <2 x float> %i.bm, %i.bk ; 2 uses
  %foldExtExtBinop192 = fsub <2 x float> %i.bm, %i.bk ; 2 uses
  %i.dx = fmul float %i.dw, %i.dw
  %foldExtExtBinop194 = fmul <2 x float> %foldExtExtBinop190, %foldExtExtBinop190
  %i.dy = extractelement <2 x float> %foldExtExtBinop194, i64 0
  %i.dz = fadd float %i.dx, %i.dy
  %foldExtExtBinop196 = fmul <2 x float> %foldExtExtBinop192, %foldExtExtBinop192
  %i.ea = extractelement <2 x float> %foldExtExtBinop196, i64 1
  %i.eb = fadd float %i.ea, %i.dz
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.eb) ; 2 uses
  %i.ec = fmul float %sqrt.i.i.i.i, %sqrt.i.i.i.i ; 2 uses
  %i.ed = fcmp olt float %i.bv, %i.ec
  br i1 %i.ed, label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread: ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit, %bb.c, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i
  %i.ee = phi float [ %i.ec, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit ]
  %i.ef = fsub float %i.ap, %.sroa.0.0.vec.extract.i ; 3 uses
  %shift198 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop199 = fsub <2 x float> %i.bm, %shift198 ; 3 uses
  %i.eg = extractelement <2 x float> %foldExtExtBinop199, i64 0
  %i.eh = extractelement <2 x float> %i.bm, i64 1
  %i.ei = fsub float %i.eh, %2                    ; 3 uses
  %i.ej = fmul float %i.ef, %i.ef
  %foldExtExtBinop201 = fmul <2 x float> %foldExtExtBinop199, %foldExtExtBinop199
  %i.ek = extractelement <2 x float> %foldExtExtBinop201, i64 0
  %i.el = fadd float %i.ej, %i.ek
  %i.em = fmul float %i.ei, %i.ei
  %i.en = fadd float %i.em, %i.el                 ; 2 uses
  %sqrt.i.i.i125 = tail call noundef float @llvm.sqrt.f32(float %i.en) ; 3 uses
  %i.eo = fdiv float %i.ef, %sqrt.i.i.i125        ; 2 uses
  %i.ep = fdiv float %i.eg, %sqrt.i.i.i125        ; 2 uses
  %i.eq = fdiv float %i.ei, %sqrt.i.i.i125        ; 3 uses
  %i.er = fdiv float %i.ee, %i.en
  %i.es = fsub float 1.000000e+00, %i.er          ; 2 uses
  %i.et = fcmp ogt float %i.es, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.et, float %i.es, float 0.000000e+00
  %sqrt.i.i126 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i)
  %i.eu = fmul float %i.eo, %i.eo
  %i.ev = fmul float %i.ep, %i.ep
  %i.ew = fadd float %i.eu, %i.ev
  %i.ex = fmul float %i.eq, %i.eq
  %i.ey = fadd float %i.ex, %i.ew
  %sqrt.i.i.i48.i = tail call noundef float @llvm.sqrt.f32(float %i.ey)
  %i.ez = fdiv float %i.eq, %sqrt.i.i.i48.i
  %.sroa.3.8.vec.insert.i = insertelement <2 x float> poison, float %i.ez, i64 0
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %sqrt.i.i126, i64 1
  br label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit

_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit: ; preds = %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread
  %.sroa.3.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread ], [ <float 1.000000e+00, float -1.000000e+00>, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ] ; 2 uses
  %.sroa.3.12.vec.extract = extractelement <2 x float> %.sroa.3.0.i, i64 1 ; 4 uses
  %i.fa = shufflevector <2 x float> %.sroa.3.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fb = insertelement <2 x float> %i.fa, float %i.ai, i64 1 ; 2 uses
  %i.fc = fmul <2 x float> %i.fb, %i.fb
  %i.fd = fsub <2 x float> splat (float 1.000000e+00), %i.fc ; 2 uses
  %i.fe = fcmp ogt <2 x float> %i.fd, zeroinitializer
  %i.ff = select <2 x i1> %i.fe, <2 x float> %i.fd, <2 x float> zeroinitializer ; 2 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 0
  %sqrt.i130 = tail call noundef float @llvm.sqrt.f32(float %i.fg) ; 2 uses
  %i.fh = extractelement <2 x float> %i.ff, i64 1
  %sqrt.i132 = tail call noundef float @llvm.sqrt.f32(float %i.fh) ; 2 uses
  %i.fi = fcmp ogt float %spec.select, %i.ai      ; 2 uses
  %i.fj = fmul float %i.ai, %spec.select
  %i.fk = fmul float %sqrt.i132, %sqrt.i124
  %i.fl = fadd float %i.fj, %i.fk
  %.0.i = select i1 %i.fi, float 1.000000e+00, float %i.fl ; 2 uses
  %i.fm = fmul float %i.ai, %sqrt.i124
  %i.fn = fmul float %sqrt.i132, %spec.select
  %i.fo = fsub float %i.fm, %i.fn
  %.0.i133 = select i1 %i.fi, float 0.000000e+00, float %i.fo
  %i.fp = fcmp ogt float %.0.i, %.sroa.3.12.vec.extract
  %i.fq = fmul float %.0.i, %.sroa.3.12.vec.extract
  %i.fr = fmul float %.0.i133, %sqrt.i130
  %i.fs = fadd float %i.fq, %i.fr
  %.0.i134 = select i1 %i.fp, float 1.000000e+00, float %i.fs ; 2 uses
  %i.ft = fcmp ugt float %.0.i134, %i.al
  br i1 %i.ft, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !451
  %i.fw = fmul float %.0.i134, %i.fv
  %i.fx = fdiv float %i.fw, %.sroa.speculated149  ; 2 uses
  %.sroa.0164.0.vec.extract = extractelement <2 x float> %3, i64 0 ; 2 uses
  %i.fy = fcmp une float %.sroa.0164.0.vec.extract, 0.000000e+00
  %.sroa.0164.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.fz = fcmp une float %.sroa.0164.4.vec.extract, 0.000000e+00
  %or.cond.i137 = select i1 %i.fy, i1 true, i1 %i.fz
  %i.ga = fcmp une float %4, 0.000000e+00
  %or.cond = select i1 %or.cond.i137, i1 true, i1 %i.ga
  br i1 %or.cond, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %bb.e

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread: ; preds = %bb.d
  %i.gb = extractelement <2 x float> %i.cg, i64 1
  %i.gc = fmul float %4, %i.gb                    ; 2 uses
  %i.gd = fneg float %i.gc
  %i.ge = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = insertelement <2 x float> %i.ge, float %4, i64 1
  %i.gg = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.gd, i64 1
  %i.gi = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.gf, <2 x float> %i.cg, <2 x float> %i.gh) ; 2 uses
  %shift203 = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop204 = fadd <2 x float> %i.gi, %shift203
  %i.gj = extractelement <2 x float> %foldExtExtBinop204, i64 0
  %i.gk = tail call noundef float @llvm.fma.f32(float %.sroa.0164.0.vec.extract, float %i.cd, float %i.gj) ; 3 uses
  %i.gl = tail call noundef float @llvm.fabs.f32(float %i.gk) ; 2 uses
  %i.gm = fmul float %i.gk, %i.gk
  %i.gn = fsub float 1.000000e+00, %i.gm          ; 2 uses
  %i.go = fcmp ogt float %i.gn, 0.000000e+00
  %.sroa.speculated.i140 = select i1 %i.go, float %i.gn, float 0.000000e+00
  %sqrt.i141 = tail call nnan ninf float @llvm.sqrt.f32(float %.sroa.speculated.i140)
  %i.gp = fcmp ogt float %i.gl, %.sroa.3.12.vec.extract
  %i.gq = fmul float %i.gl, %.sroa.3.12.vec.extract
  %i.gr = fmul float %sqrt.i141, %sqrt.i130
  %i.gs = fadd float %i.gq, %i.gr
  %.0.i142 = select i1 %i.gp, float 1.000000e+00, float %i.gs
  %i.gt = fmul float %.0.i142, %i.fx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread
  %.0170 = phi float [ %i.gt, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread ], [ %i.fx, %bb.d ] ; 2 uses
  %i.gu = fcmp olt float %.0170, 0.000000e+00
  %.sroa.speculated = select i1 %i.gu, float 0.000000e+00, float %.0170
  br label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit, %bb.e
  %.0 = phi float [ %.sroa.speculated, %bb.e ], [ 0.000000e+00, %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit ]
  ret float %.0
}

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(4) %4) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !222, !alias.scope !454
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !59, !alias.scope !454
  store i8 0, ptr %i.a, align 8, !tbaa !52, !alias.scope !454
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(4) %4)
          to label %_ZN4pbrt12StringPrintfIJRA4_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !51, !alias.scope !454 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !52, !alias.scope !454
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA4_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !51
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA4_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA4_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !52
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(4) %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 42, i64 noundef 0) #25
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 115, i64 noundef 0) #25
  %.not16 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 100, i64 noundef 0) #25
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.x
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp eq i64 %i.d, -1
  br i1 %.not17, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not16, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.i = load ptr, ptr %3, align 8, !tbaa !51     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !222, !alias.scope !465
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !59, !alias.scope !465
  store i8 0, ptr %i.j, align 8, !tbaa !52, !alias.scope !465
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !224, !noalias !465 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !465 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !225, !noalias !465 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !51, !alias.scope !465 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.aa = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.i, ptr noundef %i.aa) #25, !noalias !466
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !222, !alias.scope !466
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !59, !alias.scope !466
  store i8 0, ptr %i.ae, align 8, !tbaa !52, !alias.scope !466
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ad, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %5, align 8, !tbaa !51, !alias.scope !466
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ag, i64 noundef %i.ad, ptr noundef %i.i, ptr noundef %i.aa) #25 ; 0 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !59, !alias.scope !466
  %i.aj = add i64 %i.ai, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aj, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #28
  unreachable

bb.k:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !51, !alias.scope !466 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %.body26, label %.body26.sink.split

_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ap = load i64, ptr %i.af, align 8, !tbaa !59 ; 2 uses
end_hunk_7
