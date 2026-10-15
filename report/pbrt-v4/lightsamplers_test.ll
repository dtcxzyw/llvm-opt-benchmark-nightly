Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lightsamplers_test?download=true
inline.NumInlined: 2669
inline.NumDeleted: 1108
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZdlPvm
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

_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit:      ; preds = %bb.dy
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
  br label %bb.ec

bb.h:                                             ; preds = %.preheader, %bb.dy
  %.052277 = phi i32 [ 0, %.preheader ], [ %.153, %bb.dy ] ; 2 uses
  %.sroa.0214.0276 = phi i64 [ -8846114313915602277, %.preheader ], [ %.sroa.0214.1, %bb.dy ] ; 2 uses
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
  %i.bh = fsub nnan float 1.000000e+00, %.sroa.speculated.i91
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
  %i.cb = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ca
  %i.cc = fmul nnan <2 x float> %i.cb, splat (float 5.000000e+00)
  %i.cd = fmul nnan <2 x float> %i.ca, splat (float 5.000000e+00)
  %i.ce = fsub <2 x float> %i.cd, %i.cc           ; 6 uses
  %i.cf = fmul <2 x float> %i.ce, %i.ce           ; 2 uses
  %i.cg = extractelement <2 x float> %i.cf, i64 0
  %i.ch = fadd float %i.cg, %i.bn
  %i.ci = extractelement <2 x float> %i.cf, i64 1
  %i.cj = fadd float %i.ch, %i.ci
  %sqrt.i.i = call noundef float @sqrtf(float noundef %i.cj) #25
  %i.ck = extractelement <2 x float> %i.ce, i64 1 ; 2 uses
  %i.cl = fdiv float %i.ck, %sqrt.i.i
  %i.cm = call noundef float @acosf(float noundef %i.cl) #25
  %i.cn = fmul float %i.cm, f0x42652EE0           ; 2 uses
  %i.co = fcmp ogt float %i.cn, 4.475000e+01
  %i.cp = fcmp olt float %i.cn, 4.525000e+01
  %or.cond = and i1 %i.co, %i.cp
  br i1 %or.cond, label %bb.dy, label %bb.i

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
  br label %bb.eb

bb.n:                                             ; preds = %bb.j
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ea

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

bb.aa:                                            ; preds = %bb.r
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn55 = phi { ptr, i32 } [ %i.ey, %bb.aa ], [ %i.ex, %bb.z ] ; 2 uses
  %i.ez = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4pbrt17PowerLightSamplerD2Ev:bb.a
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28
  unreachable

_ZN4pbrt10AliasTableD2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.n, align 8, !tbaa !198
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !199  ; 2 uses
  %.not.i.i.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i1, label %_ZN4pbrt7HashMapINS_5LightEmSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_mEEEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt10AliasTableD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !200
  %i.t = mul i64 %i.s, 24
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !201  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.p, i64 noundef %i.t, i64 noundef 8)
          to label %_ZN4pbrt7HashMapINS_5LightEmSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_mEEEEEED2Ev.exit unwind label %bb.e, !inline_history !6

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #28
  unreachable

_ZN4pbrt7HashMapINS_5LightEmSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_mEEEEEED2Ev.exit: ; preds = %_ZN4pbrt10AliasTableD2Ev.exit, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.aa, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt7HashMapINS_5LightEmSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_mEEEEEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !82
  %i.af = shl i64 %i.ae, 3
  %i.ag = load ptr, ptr %0, align 8, !tbaa !83    ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %i.ac, i64 noundef %i.af, i64 noundef 8)
          to label %_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #28
  unreachable

_ZN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %_ZN4pbrt7HashMapINS_5LightEmSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_mEEEEEED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN29BVHLightSampling_OneSpot_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN27BVHLightSampling_Point_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN36BVHLightSampling_PointVaryPower_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN28BVHLightSampling_OneTri_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN31BVHLightSampling_PdfMethod_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN38ExhaustiveLightSampling_PdfMethod_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN35UniformLightSampling_PdfMethod_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN33PowerLightSampling_PdfMethod_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE"(ptr noundef nonnull align 8 dereferenceable(8) %0) #10 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL20redundantBufferBytesE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !153
  tail call void @_ZN4pbrt16StatsAccumulator19ReportMemoryCounterEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.46, i64 noundef %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !153
  ret void
}

declare void @_ZN4pbrt16StatsAccumulator19ReportMemoryCounterEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE"(ptr noundef nonnull align 8 dereferenceable(8) %0) #10 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL16nBufferCacheHitsE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !153
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL19nBufferCacheLookupsE) ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !153
  tail call void @_ZN4pbrt16StatsAccumulator16ReportPercentageEPKcll(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.47, i64 noundef %i.b, i64 noundef %i.d)
  store i64 0, ptr %i.a, align 8, !tbaa !153
  store i64 0, ptr %i.c, align 8, !tbaa !153
  ret void
}

declare void @_ZN4pbrt16StatsAccumulator16ReportPercentageEPKcll(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI29BVHLightSampling_OneSpot_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI29BVHLightSampling_OneSpot_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV29BVHLightSampling_OneSpot_Test, i64 16), ptr %i.a, align 8, !tbaa !57
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail8DispatchIRZNKS_5Light8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEbEUlT_E_N4pstd8optionalINS_13LightLiSampleEEENS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS7_PKvi(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 comdat {
bb.a:
  %4 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %5 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %6 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %7 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %8 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %9 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %10 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %11 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %12 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %13 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %14 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %15 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %16 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %17 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %18 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  switch i32 %3, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.b = load ptr, ptr %1, align 8, !tbaa !385, !noalias !383, !nonnull !40, !align !386 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.55.0.copyload.i = load float, ptr %.sroa.55.0..sroa_idx.i, align 4, !noalias !383
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.66.0.copyload.i = load float, ptr %.sroa.66.0..sroa_idx.i, align 4, !noalias !383
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !387, !noalias !383, !nonnull !40, !align !386
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.g = fadd float %.sroa.55.0.copyload.i, %.sroa.66.0.copyload.i
  %i.h = fmul float %i.g, 5.000000e-01
  %i.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !noalias !383
  %i.j = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.b, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !noalias !383
  %i.k = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 4 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.l = load <8 x float>, ptr %i.e, align 4, !tbaa !18, !noalias !389 ; 4 uses
  %i.m = shufflevector <8 x float> %i.l, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.n = fmul <2 x float> %i.m, zeroinitializer
  %i.o = shufflevector <8 x float> %i.l, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.p = fmul <2 x float> %i.o, zeroinitializer
  %i.q = fadd <2 x float> %i.n, %i.p
  %i.r = shufflevector <8 x float> %i.l, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.s = fmul <2 x float> %i.r, zeroinitializer
  %i.t = fadd <2 x float> %i.q, %i.s
  %i.u = shufflevector <8 x float> %i.l, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.v = fadd <2 x float> %i.u, %i.t              ; 2 uses
  %i.w = load <8 x float>, ptr %i.f, align 4, !tbaa !18, !noalias !389 ; 4 uses
  %i.x = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.y = fmul <2 x float> %i.x, zeroinitializer
  %i.z = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.aa = fmul <2 x float> %i.z, zeroinitializer
  %i.ab = fadd <2 x float> %i.y, %i.aa
  %i.ac = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ad = fmul <2 x float> %i.ac, zeroinitializer
  %i.ae = fadd <2 x float> %i.ab, %i.ad
  %i.af = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ag = fadd <2 x float> %i.af, %i.ae           ; 3 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.ai = fcmp oeq float %i.ah, 1.000000e+00      ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = fdiv <2 x float> %i.v, %i.aj
  %i.al = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %i.am = fdiv float %i.al, %i.ah
  %i.an = insertelement <2 x i1> poison, i1 %i.ai, i64 0
  %i.ao = shufflevector <2 x i1> %i.an, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.v, <2 x float> %i.ak ; 3 uses
  %.sroa.495.0.i.i.i = select i1 %i.ai, float %i.al, float %i.am ; 2 uses
  %i.aq = fadd <2 x float> %i.i, %i.k
  %i.ar = fmul <2 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = fsub <2 x float> %i.ap, %i.ar           ; 3 uses
  %i.at = fsub float %.sroa.495.0.i.i.i, %i.h     ; 3 uses
  %i.au = fmul <2 x float> %i.as, %i.as           ; 2 uses
  %shift = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.au, %shift
  %i.av = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aw = fmul float %i.at, %i.at
  %i.ax = fadd float %i.aw, %i.av                 ; 2 uses
  %sqrt.i.i.i.i = tail call noundef float @sqrtf(float noundef %i.ax) #25, !noalias !389 ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %sqrt.i.i.i.i, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fdiv <2 x float> %i.as, %i.az
  %i.bb = fdiv float %i.at, %sqrt.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !103, !noalias !389
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !102, !noalias !389
  %i.bg = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %18), !noalias !389 ; 2 uses
  %i.bh = extractvalue { <2 x float>, <2 x float> } %i.bg, 0
  %i.bi = extractvalue { <2 x float>, <2 x float> } %i.bg, 1
  %i.bj = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = fmul <2 x float> %i.bk, %i.bh
  %i.bm = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = fdiv <2 x float> %i.bl, %i.bn
  %i.bp = fmul <2 x float> %i.bk, %i.bi
  %i.bq = fdiv <2 x float> %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.07.4.vec.insert.i.i.i.i = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.05.4.vec.insert.i.i.i.i = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i.i76.i.i = insertelement <2 x float> poison, float %.sroa.495.0.i.i.i, i64 0
  %.sroa.0.4.vec.insert.i.i77.i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i76.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.11.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.11.32..sroa_idx.i.i, i8 0, i64 36, i1 false), !alias.scope !389
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.bs, align 8, !tbaa !42, !alias.scope !389
  store <2 x float> %i.bo, ptr %0, align 8, !alias.scope !389
  %.sroa.079.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.bq, ptr %.sroa.079.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !389
  %.sroa.480.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.ba, ptr %.sroa.480.0..sroa_idx.i.i, align 8, !alias.scope !389
  %.sroa.581.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bb, ptr %.sroa.581.0..sroa_idx.i.i, align 8, !alias.scope !389
  %.sroa.682.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %.sroa.682.0..sroa_idx.i.i, align 4, !alias.scope !389
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.07.4.vec.insert.i.i.i.i, ptr %i.bt, align 8, !alias.scope !389
  %.sroa.9.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.05.4.vec.insert.i.i.i.i, ptr %.sroa.9.32..sroa_idx.i.i, align 8, !alias.scope !389
  %.sroa.10.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i77.i.i, ptr %.sroa.10.32..sroa_idx.i.i, align 8, !alias.scope !389
  %.sroa.13.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.br, ptr %.sroa.13.32..sroa_idx.i.i, align 8, !alias.scope !389
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.bu, align 8, !tbaa !209, !alias.scope !389
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !383
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.bv = load ptr, ptr %1, align 8, !tbaa !385, !noalias !390, !nonnull !40, !align !386 ; 6 uses
  %.sroa.03.0.copyload.i19 = load float, ptr %i.bv, align 4, !noalias !390
  %.sroa.2.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.sroa.2.0.copyload.i21 = load float, ptr %.sroa.2.0..sroa_idx.i20, align 4, !noalias !390
  %.sroa.3.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.3.0.copyload.i23 = load float, ptr %.sroa.3.0..sroa_idx.i22, align 4, !noalias !390
  %.sroa.44.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.sroa.44.0.copyload.i25 = load float, ptr %.sroa.44.0..sroa_idx.i24, align 4, !noalias !390
  %.sroa.55.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.55.0.copyload.i27 = load float, ptr %.sroa.55.0..sroa_idx.i26, align 4, !noalias !390
  %.sroa.66.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %.sroa.66.0.copyload.i29 = load float, ptr %.sroa.66.0..sroa_idx.i28, align 4, !noalias !390
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !387, !noalias !390, !nonnull !40, !align !386
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 4 dereferenceable(32) %i.bx, i64 32, i1 false), !noalias !390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !18, !noalias !392
  %i.cc = fmul <2 x float> %i.cb, zeroinitializer ; 2 uses
  %shift69 = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop70 = fadd <2 x float> %i.cc, %shift69
  %i.cd = extractelement <2 x float> %foldExtExtBinop70, i64 0
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !18, !noalias !392
  %i.cg = fadd float %i.cf, %i.cd                 ; 3 uses
  %i.ch = fmul float %i.cg, %i.cg
  %i.ci = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.by, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !18, !noalias !392 ; 3 uses
  %i.cj = shufflevector <5 x float> %i.ci, <5 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ck = fmul <2 x float> %i.cj, zeroinitializer
  %i.cl = load <2 x float>, ptr %i.bz, align 4, !tbaa !18, !noalias !392
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cn = shufflevector <5 x float> %i.ci, <5 x float> %i.cm, <2 x i32> <i32 1, i32 5>
  %i.co = fmul <2 x float> %i.cn, zeroinitializer
  %i.cp = fadd <2 x float> %i.ck, %i.co
  %i.cq = shufflevector <5 x float> %i.ci, <5 x float> %i.cm, <2 x i32> <i32 2, i32 6>
  %i.cr = fadd <2 x float> %i.cq, %i.cp           ; 3 uses
  %i.cs = fmul <2 x float> %i.cr, %i.cr           ; 2 uses
  %shift72 = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop73 = fadd <2 x float> %i.cs, %shift72
  %i.ct = extractelement <2 x float> %foldExtExtBinop73, i64 0
  %i.cu = fadd float %i.ct, %i.ch
  %sqrt.i.i.i.i30 = tail call noundef float @sqrtf(float noundef %i.cu) #25, !noalias !392 ; 2 uses
  %i.cv = insertelement <2 x float> poison, float %sqrt.i.i.i.i30, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fdiv <2 x float> %i.cr, %i.cw           ; 3 uses
  %i.cy = fdiv float %i.cg, %sqrt.i.i.i.i30       ; 2 uses
  %i.cz = fadd float %.sroa.03.0.copyload.i19, %.sroa.2.0.copyload.i21
  %i.da = fmul float %i.cz, 5.000000e-01
  %i.db = fadd float %.sroa.3.0.copyload.i23, %.sroa.44.0.copyload.i25
  %i.dc = fmul float %i.db, 5.000000e-01
  %i.dd = fadd float %.sroa.55.0.copyload.i27, %.sroa.66.0.copyload.i29
  %i.de = fmul float %i.dd, 5.000000e-01
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.dg = load float, ptr %i.df, align 8, !tbaa !394, !noalias !392
  %i.dh = fmul float %i.dg, 2.000000e+00          ; 3 uses
  %i.di = extractelement <2 x float> %i.cx, i64 0
  %i.dj = fmul float %i.di, %i.dh
  %i.dk = extractelement <2 x float> %i.cx, i64 1
  %i.dl = fmul float %i.dk, %i.dh
  %i.dm = fmul float %i.cy, %i.dh
  %i.dn = fadd float %i.da, %i.dj
  %i.do = fadd float %i.dc, %i.dl
  %i.dp = fadd float %i.de, %i.dm
  %.sroa.0.0.vec.insert.i43.i.i = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !395, !noalias !392
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !396, !noalias !392
  %i.du = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %17), !noalias !392 ; 2 uses
  %i.dv = extractvalue { <2 x float>, <2 x float> } %i.du, 0
  %i.dw = extractvalue { <2 x float>, <2 x float> } %i.du, 1
  %i.dx = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = fmul <2 x float> %i.dy, %i.dv
  %i.ea = fmul <2 x float> %i.dy, %i.dw
  %.sroa.07.4.vec.insert.i.i.i.i36 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i43.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = insertelement <2 x float> poison, float %i.do, i64 0
  %.sroa.05.4.vec.insert.i.i.i.i37 = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.0.vec.insert.i.i51.i.i = insertelement <2 x float> poison, float %i.dp, i64 0
  %.sroa.0.4.vec.insert.i.i52.i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i51.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.12.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.12.32..sroa_idx.i.i, i8 0, i64 36, i1 false), !alias.scope !392
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.ec, align 8, !tbaa !42, !alias.scope !392
  store <2 x float> %i.dz, ptr %0, align 8, !alias.scope !392
  %.sroa.459.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.ea, ptr %.sroa.459.0..sroa_idx.i.i, align 8, !alias.scope !392
  %.sroa.560.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.cx, ptr %.sroa.560.0..sroa_idx.i.i, align 8, !alias.scope !392
  %.sroa.661.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cy, ptr %.sroa.661.0..sroa_idx.i.i, align 8, !alias.scope !392
  %.sroa.762.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %.sroa.762.0..sroa_idx.i.i, align 4, !alias.scope !392
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.07.4.vec.insert.i.i.i.i36, ptr %i.ed, align 8, !alias.scope !392
  %.sroa.10.32..sroa_idx.i.i38 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.05.4.vec.insert.i.i.i.i37, ptr %.sroa.10.32..sroa_idx.i.i38, align 8, !alias.scope !392
  %.sroa.11.32..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i52.i.i, ptr %.sroa.11.32..sroa_idx.i.i39, align 8, !alias.scope !392
  %.sroa.14.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.32..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !392
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !390
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.ee = load ptr, ptr %1, align 8, !tbaa !385, !noalias !397, !nonnull !40, !align !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 4 dereferenceable(48) %i.ee, i64 48, i1 false), !noalias !397
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !398, !noalias !397, !nonnull !40, !align !386
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.eg, align 4, !noalias !397
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !387, !noalias !397, !nonnull !40, !align !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 4 dereferenceable(32) %i.ei, i64 32, i1 false), !tbaa.struct !399, !noalias !397
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !400, !noalias !397, !nonnull !40
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !27, !range !39, !noalias !397, !noundef !40
  %i.em = trunc nuw i8 %i.el to i1
  tail call void @_ZNK4pbrt15ProjectionLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull byval(%"class.pbrt::LightSampleContext") align 8 %15, <2 x float> %.sroa.0.0.copyload.i, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %16, i1 noundef zeroext %i.em)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.en = load ptr, ptr %1, align 8, !tbaa !385, !noalias !401, !nonnull !40, !align !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 4 dereferenceable(48) %i.en, i64 48, i1 false), !noalias !401
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !398, !noalias !401, !nonnull !40, !align !386
  %.sroa.0.0.copyload.i40.a = load <2 x float>, ptr %i.ep, align 4, !noalias !401
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !387, !noalias !401, !nonnull !40, !align !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 4 dereferenceable(32) %i.er, i64 32, i1 false), !tbaa.struct !399, !noalias !401
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !400, !noalias !401, !nonnull !40
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !27, !range !39, !noalias !401, !noundef !40
  %i.ev = trunc nuw i8 %i.eu to i1
  tail call void @_ZNK4pbrt16GoniometricLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(448) %2, ptr noundef nonnull byval(%"class.pbrt::LightSampleContext") align 8 %13, <2 x float> %.sroa.0.0.copyload.i40.a, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %14, i1 noundef zeroext %i.ev)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ew = load ptr, ptr %1, align 8, !tbaa !385, !noalias !402, !nonnull !40, !align !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 4 dereferenceable(48) %i.ew, i64 48, i1 false), !noalias !402
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !398, !noalias !402, !nonnull !40, !align !386
  %.sroa.0.0.copyload.i41.a = load <2 x float>, ptr %i.ey, align 4, !noalias !402
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !387, !noalias !402, !nonnull !40, !align !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 4 dereferenceable(32) %i.fa, i64 32, i1 false), !tbaa.struct !399, !noalias !402
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !400, !noalias !402, !nonnull !40
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !27, !range !39, !noalias !402, !noundef !40
  %i.fe = trunc nuw i8 %i.fd to i1
  tail call void @_ZNK4pbrt9SpotLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(172) %2, ptr noundef nonnull byval(%"class.pbrt::LightSampleContext") align 8 %11, <2 x float> %.sroa.0.0.copyload.i41.a, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %12, i1 noundef zeroext %i.fe)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ff = load ptr, ptr %1, align 8, !tbaa !385, !noalias !403, !nonnull !40, !align !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 4 dereferenceable(48) %i.ff, i64 48, i1 false), !noalias !403
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !398, !noalias !403, !nonnull !40, !align !386
  %.sroa.0.0.copyload.i42.a = load <2 x float>, ptr %i.fh, align 4, !noalias !403
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !387, !noalias !403, !nonnull !40, !align !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 4 dereferenceable(32) %i.fj, i64 32, i1 false), !tbaa.struct !399, !noalias !403
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !400, !noalias !403, !nonnull !40
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !27, !range !39, !noalias !403, !noundef !40
  %i.fn = trunc nuw i8 %i.fm to i1
  tail call void @_ZNK4pbrt16DiffuseAreaLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(352) %2, ptr noundef nonnull byval(%"class.pbrt::LightSampleContext") align 8 %9, <2 x float> %.sroa.0.0.copyload.i42.a, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %10, i1 noundef zeroext %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.fo = load ptr, ptr %1, align 8, !tbaa !385, !noalias !404, !nonnull !40, !align !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 4 dereferenceable(48) %i.fo, i64 48, i1 false), !noalias !404
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !398, !noalias !404, !nonnull !40, !align !386
  %.sroa.0.0.copyload.i43 = load <2 x float>, ptr %i.fq, align 4, !noalias !404
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !387, !noalias !404, !nonnull !40, !align !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(32) %i.fs, i64 32, i1 false), !tbaa.struct !399, !noalias !404
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !400, !noalias !404, !nonnull !40
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !27, !range !39, !noalias !404, !noundef !40
  %i.fw = trunc nuw i8 %i.fv to i1
  tail call void @_ZNK4pbrt20UniformInfiniteLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(180) %2, ptr noundef nonnull byval(%"class.pbrt::LightSampleContext") align 8 %7, <2 x float> %.sroa.0.0.copyload.i43, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %8, i1 noundef zeroext %i.fw)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.fx = load ptr, ptr %1, align 8, !tbaa !385, !noalias !405, !nonnull !40, !align !386 ; 4 uses
  %.sroa.03.0.copyload.i44 = load float, ptr %i.fx, align 4, !noalias !405
  %.sroa.2.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %.sroa.2.0.copyload.i46 = load float, ptr %.sroa.2.0..sroa_idx.i45, align 4, !noalias !405
  %.sroa.3.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.sroa.44.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  %i.fy = load <2 x float>, ptr %.sroa.44.0..sroa_idx.i49, align 4, !noalias !405
  %i.fz = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %.sroa.3.0..sroa_idx.i47, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !noalias !405
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !398, !noalias !405, !nonnull !40, !align !386
  %.sroa.0.0.copyload.i55 = load <2 x float>, ptr %i.gb, align 4, !noalias !405
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !387, !noalias !405, !nonnull !40, !align !386
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %i.gd, i64 32, i1 false), !noalias !405
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !400, !noalias !405, !nonnull !40
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !27, !range !39, !noalias !405, !noundef !40
  %i.gh = trunc nuw i8 %i.gg to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !407
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !18, !noalias !407
  %..i.i = select i1 %i.gh, i64 464, i64 336
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 %..i.i
  %i.gj = call <2 x float> @_ZNK4pbrt19PiecewiseConstant2D6SampleENS_6Point2IfEEPfPNS1_IiEE(ptr noundef nonnull align 8 dereferenceable(128) %i.gi, <2 x float> %.sroa.0.0.copyload.i55, ptr noundef nonnull %i.a, ptr noundef null), !noalias !407 ; 2 uses
  %i.gk = load float, ptr %i.a, align 4, !tbaa !18, !noalias !407
  %i.gl = fcmp oeq float %i.gk, 0.000000e+00
  br i1 %i.gl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false), !alias.scope !407
  br label %_ZZNK4pbrt5Light8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEbENKUlT_E_clIPKNS_18ImageInfiniteLightEEEDaS5_.exit

bb.k:                                             ; preds = %bb.i
  %i.gm = shufflevector <4 x float> %i.fz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.gn = call { <2 x float>, float } @_ZN4pbrt23EqualAreaSquareToSphereENS_6Point2IfEE(<2 x float> %i.gj), !noalias !407 ; 2 uses
  %.fca.0.extract30.i.i = extractvalue { <2 x float>, float } %i.gn, 0 ; 3 uses
  %.fca.1.extract31.i.i = extractvalue { <2 x float>, float } %i.gn, 1 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gp = shufflevector <2 x float> %.fca.0.extract30.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gr = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.go, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !18, !noalias !407 ; 3 uses
  %i.gs = shufflevector <5 x float> %i.gr, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gt = shufflevector <5 x float> %i.gr, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.gu = fmul <2 x float> %i.gp, %i.gt
  %i.gv = load <2 x float>, ptr %i.gq, align 4, !tbaa !18, !noalias !407 ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x float> %i.gs, <4 x float> %i.gw, <2 x i32> <i32 0, i32 4>
  %i.gy = fmul <2 x float> %i.gx, %.fca.0.extract30.i.i
  %i.gz = fadd <2 x float> %i.gu, %i.gy
  %i.ha = insertelement <2 x float> poison, float %.fca.1.extract31.i.i, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = shufflevector <2 x float> %i.gv, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.hd = shufflevector <5 x float> %i.gr, <5 x float> %i.hc, <2 x i32> <i32 2, i32 6>
end_hunk_1
begin_hunk_2_@_ZN4pbrt6detail8DispatchIRZNKS_5Light8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEbEUlT_E_N4pstd8optionalINS_13LightLiSampleEEENS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS7_PKvi:bb.a
  %.sink.i.i = phi i8 [ 0, %bb.j ], [ 1, %bb.k ]
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %.sink.i.i, ptr %i.im, align 8, !tbaa !42, !alias.scope !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !405
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !409
  %i.in = load ptr, ptr %1, align 8, !tbaa !385, !noalias !410, !nonnull !40, !align !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %i.in, i64 48, i1 false), !noalias !410
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !398, !noalias !410, !nonnull !40, !align !386
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.ip, align 4, !noalias !410
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !387, !noalias !410, !nonnull !40, !align !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %i.ir, i64 32, i1 false), !tbaa.struct !399, !noalias !410
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !400, !noalias !410, !nonnull !40
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !27, !range !39, !noalias !410, !noundef !40
  %i.iv = trunc nuw i8 %i.iu to i1
  tail call void @_ZNK4pbrt24PortalImageInfiniteLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(516) %2, ptr noundef nonnull byval(%"class.pbrt::LightSampleContext") align 8 %4, <2 x float> %.sroa.0.0.copyload.i.i, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %5, i1 noundef zeroext %i.iv)
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !409
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !409
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZZNK4pbrt5Light8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEbENKUlT_E_clIPKNS_18ImageInfiniteLightEEEDaS5_.exit, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load float, ptr %1, align 4, !tbaa !18
  %i.d = tail call noundef i64 @lroundf(float noundef %i.c) #25
  %i.e = load i32, ptr %0, align 8, !tbaa !412
  %i.f = trunc i64 %i.d to i32
  %i.g = sub i32 %i.f, %i.e                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !181
  %.not = icmp ugt i64 %i.j, %i.i
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  %i.m = load float, ptr %i.l, align 4, !tbaa !18
  %.sroa.0.0.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.vec.insert, %bb.c ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !18
  %i.p = tail call noundef i64 @lroundf(float noundef %i.o) #25
  %i.q = load i32, ptr %0, align 8, !tbaa !412
  %i.r = trunc i64 %i.p to i32
  %i.s = sub i32 %i.r, %i.q                       ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = zext nneg i32 %i.s to i64                ; 2 uses
  %i.v = load i64, ptr %i.a, align 8, !tbaa !181
  %.not.1 = icmp ugt i64 %i.v, %i.u
  br i1 %.not.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  %i.y = load float, ptr %i.x, align 4, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sink = phi float [ %i.y, %bb.f ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !18
  %i.ab = tail call noundef i64 @lroundf(float noundef %i.aa) #25
  %i.ac = load i32, ptr %0, align 8, !tbaa !412
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = sub i32 %i.ad, %i.ac                    ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !181
  %.not.2 = icmp ugt i64 %i.ah, %i.ag
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !18
  %.sroa.6.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.6.0 = phi <2 x float> [ %.sroa.6.8.vec.insert, %bb.i ], [ zeroinitializer, %bb.h ], [ zeroinitializer, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !18
  %i.an = tail call noundef i64 @lroundf(float noundef %i.am) #25
  %i.ao = load i32, ptr %0, align 8, !tbaa !412
  %i.ap = trunc i64 %i.an to i32
  %i.aq = sub i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.at = load i64, ptr %i.a, align 8, !tbaa !181
  %.not.3 = icmp ugt i64 %i.at, %i.as
  br i1 %.not.3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  %i.aw = load float, ptr %i.av, align 4, !tbaa !18
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
declare i64 @lroundf(float noundef) local_unnamed_addr #7

declare void @_ZNK4pbrt15ProjectionLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8, ptr noundef nonnull align 8 dereferenceable(728), ptr noundef byval(%"class.pbrt::LightSampleContext") align 8, <2 x float>, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK4pbrt16GoniometricLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8, ptr noundef nonnull align 8 dereferenceable(448), ptr noundef byval(%"class.pbrt::LightSampleContext") align 8, <2 x float>, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt9SpotLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(172) %1, ptr noundef byval(%"class.pbrt::LightSampleContext") align 8 %2, <2 x float> %3, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8 %4, i1 noundef zeroext %5) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.c = load <8 x float>, ptr %i.b, align 4, !tbaa !18 ; 4 uses
  %i.d = shufflevector <8 x float> %i.c, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.e = fmul <2 x float> %i.d, zeroinitializer
  %i.f = shufflevector <8 x float> %i.c, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.g = fmul <2 x float> %i.f, zeroinitializer
  %i.h = fadd <2 x float> %i.e, %i.g
  %i.i = shufflevector <8 x float> %i.c, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.j = fmul <2 x float> %i.i, zeroinitializer
  %i.k = fadd <2 x float> %i.h, %i.j
  %i.l = shufflevector <8 x float> %i.c, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.m = fadd <2 x float> %i.l, %i.k              ; 3 uses
  %i.n = extractelement <2 x float> %i.m, i64 1   ; 2 uses
  %i.o = fcmp oeq float %i.n, 1.000000e+00        ; 2 uses
  %i.p = extractelement <2 x float> %i.m, i64 0   ; 2 uses
  %i.q = fdiv float %i.p, %i.n
  %.sroa.495.0.i = select i1 %i.o, float %i.p, float %i.q ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.r = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.s = fmul float %i.r, 5.000000e-01
  %i.t = fsub float %.sroa.495.0.i, %i.s          ; 3 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = load <8 x float>, ptr %i.a, align 4, !tbaa !18 ; 4 uses
  %i.w = shufflevector <8 x float> %i.v, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.x = fmul <2 x float> %i.w, zeroinitializer
  %i.y = shufflevector <8 x float> %i.v, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.z = fmul <2 x float> %i.y, zeroinitializer
  %i.aa = fadd <2 x float> %i.x, %i.z
  %i.ab = shufflevector <8 x float> %i.v, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ac = fmul <2 x float> %i.ab, zeroinitializer
  %i.ad = fadd <2 x float> %i.aa, %i.ac
  %i.ae = shufflevector <8 x float> %i.v, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.af = fadd <2 x float> %i.ae, %i.ad           ; 2 uses
  %i.ag = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fdiv <2 x float> %i.af, %i.ag
  %i.ai = insertelement <2 x i1> poison, i1 %i.o, i64 0
  %i.aj = shufflevector <2 x i1> %i.ai, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x float> %i.af, <2 x float> %i.ah ; 3 uses
  %i.al = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.am = load <4 x float>, ptr %2, align 8
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ao = fadd <2 x float> %i.al, %i.an
  %i.ap = fmul <2 x float> %i.ao, splat (float 5.000000e-01)
  %i.aq = fsub <2 x float> %i.ak, %i.ap           ; 3 uses
  %i.ar = fmul <2 x float> %i.aq, %i.aq           ; 2 uses
  %shift = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ar, %shift
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.at = fadd float %i.as, %i.u                  ; 2 uses
  %sqrt.i.i = tail call noundef float @sqrtf(float noundef %i.at) #25 ; 2 uses
  %i.au = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x float> %i.aq, %i.av           ; 4 uses
  %i.ax = fdiv float %i.t, %sqrt.i.i              ; 3 uses
  %i.ay = extractelement <2 x float> %i.aw, i64 1
  %i.az = fneg float %i.ay                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bb = extractelement <2 x float> %i.aw, i64 0
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.be = load float, ptr %i.bd, align 4, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !18
  %i.bh = fmul float %i.bg, %i.az
  %i.bi = fmul float %i.bb, %i.be
  %i.bj = fsub float %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !18
  %i.bm = fmul float %i.ax, %i.bl
  %i.bn = fsub float %i.bj, %i.bm                 ; 3 uses
  %i.bo = fmul float %i.bn, %i.bn
  %i.bp = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.ba, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !18 ; 3 uses
  %i.bq = load <2 x float>, ptr %i.bc, align 8, !tbaa !18
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.bs = shufflevector <5 x float> %i.bp, <5 x float> %i.br, <2 x i32> <i32 1, i32 5>
  %i.bt = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %i.bs, %i.bu
  %6 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = shufflevector <5 x float> %i.bp, <5 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bw = fmul <2 x float> %6, %7
  %i.bx = fsub <2 x float> %i.bv, %i.bw
  %8 = insertelement <2 x float> poison, float %i.ax, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = shufflevector <5 x float> %i.bp, <5 x float> %i.br, <2 x i32> <i32 2, i32 6>
  %i.by = fmul <2 x float> %9, %10
  %i.bz = fsub <2 x float> %i.bx, %i.by           ; 3 uses
  %i.ca = fmul <2 x float> %i.bz, %i.bz           ; 2 uses
  %shift131 = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132 = fadd <2 x float> %i.ca, %shift131
  %i.cb = extractelement <2 x float> %foldExtExtBinop132, i64 0
  %i.cc = fadd float %i.cb, %i.bo
  %sqrt.i.i83 = tail call noundef float @sqrtf(float noundef %i.cc) #25 ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %sqrt.i.i83, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv <2 x float> %i.bz, %i.ce
  %i.cg = fdiv float %i.bn, %sqrt.i.i83
  %i.ch = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt9SpotLight1IENS_7Vector3IfEENS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(172) %1, <2 x float> %i.cf, float %i.cg, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %4) ; 2 uses
  %i.ci = extractvalue { <2 x float>, <2 x float> } %i.ch, 0
  %i.cj = extractvalue { <2 x float>, <2 x float> } %i.ch, 1
  %i.ck = insertelement <2 x float> poison, float %i.at, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = fdiv <2 x float> %i.ci, %i.cl           ; 2 uses
  %i.cn = fdiv <2 x float> %i.cj, %i.cl           ; 2 uses
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x float> %i.co
  %i.cp = fcmp une <4 x float> %.fr, zeroinitializer
  %i.cq = bitcast <4 x i1> %i.cp to i4
  %.not = icmp eq i4 %i.cq, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.07.4.vec.insert.i.i = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.05.4.vec.insert.i.i = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i.i109 = insertelement <2 x float> poison, float %.sroa.495.0.i, i64 0
  %.sroa.0.4.vec.insert.i.i110 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i109, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.11.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.11.32..sroa_idx, i8 0, i64 36, i1 false)
  store <2 x float> %i.cm, ptr %0, align 8
  %.sroa.0112.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.cn, ptr %.sroa.0112.sroa.4.0..sroa_idx, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.aw, ptr %.sroa.4113.0..sroa_idx, align 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ax, ptr %.sroa.5114.0..sroa_idx, align 8
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %.sroa.6115.0..sroa_idx, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %i.cs, align 8
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %.sroa.9.32..sroa_idx, align 8
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i110, ptr %.sroa.10.32..sroa_idx, align 8
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.cr, ptr %.sroa.13.32..sroa_idx, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.ct, align 8, !tbaa !209
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %.sink, ptr %i.cu, align 8, !tbaa !42
  ret void
}

declare { <2 x float>, <2 x float> } @_ZNK4pbrt9SpotLight1IENS_7Vector3IfEENS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(172), <2 x float>, float, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8) local_unnamed_addr #1

declare void @_ZNK4pbrt16DiffuseAreaLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8, ptr noundef nonnull align 8 dereferenceable(352), ptr noundef byval(%"class.pbrt::LightSampleContext") align 8, <2 x float>, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK4pbrt20UniformInfiniteLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8, ptr noundef nonnull align 8 dereferenceable(180), ptr noundef byval(%"class.pbrt::LightSampleContext") align 8, <2 x float>, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZNK4pbrt19PiecewiseConstant2D6SampleENS_6Point2IfEEPfPNS1_IiEE(ptr noundef nonnull align 8 dereferenceable(128) %0, <2 x float> %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.sroa.022.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !181
  %i.c = shl i64 %i.b, 32
  %i.d = ashr exact i64 %i.c, 32                  ; 2 uses
  %i.e = add nsw i64 %i.d, -2                     ; 2 uses
  %i.f = icmp sgt i64 %i.d, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !182  ; 2 uses
  br i1 %i.f, label %.lr.ph.i.i, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %.fr.i.i, %.lr.ph.i.i ], [ 1, %bb.a ] ; 2 uses
  %.01516.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = lshr i64 %.01516.i.i, 1                  ; 3 uses
  %i.j = add i64 %i.i, %.017.i.i                  ; 2 uses
  %i.k = shl i64 %i.j, 32
  %i.l = ashr exact i64 %i.k, 30
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !18
  %i.o = fcmp ole float %i.n, %.sroa.022.4.vec.extract ; 2 uses
  %i.p = add i64 %i.j, 1
  %i.q = select i1 %i.o, i64 %i.p, i64 %.017.i.i
  %.fr.i.i = freeze i64 %i.q                      ; 3 uses
  %.neg.i.i = xor i64 %i.i, -1
  %i.r = add nsw i64 %.01516.i.i, %.neg.i.i
  %i.s = select i1 %i.o, i64 %i.r, i64 %i.i       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !413

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.u = add nsw i64 %.fr.i.i, -1
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.e)
  %.inv.i.i = icmp sgt i64 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.inv.i.i, i64 %..i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i: ; preds = %bb.a, %._crit_edge.i.i
  %i.v = phi i64 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %bb.a ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v
  %i.x = load <2 x float>, ptr %i.w, align 4, !tbaa !18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load float, ptr %i.y, align 8, !tbaa !414 ; 2 uses
  %i.aa = fcmp ogt float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.b, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit

bb.b:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !182
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.v
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !18
  %i.af = fdiv float %i.ae, %i.z
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit: ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i, %bb.b
  %i.ag = phi float [ %i.af, %bb.b ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !181
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load <2 x float>, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !415
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.am, i64 %i.v ; 6 uses
  %.sroa.022.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !181
  %i.aq = shl i64 %i.ap, 32
  %i.ar = ashr exact i64 %i.aq, 32                ; 2 uses
  %i.as = add nsw i64 %i.ar, -2                   ; 2 uses
  %i.at = icmp sgt i64 %i.ar, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !182 ; 2 uses
  br i1 %i.at, label %.lr.ph.i.i11, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9

.lr.ph.i.i11:                                     ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit, %.lr.ph.i.i11
  %.017.i.i12 = phi i64 [ %.fr.i.i14, %.lr.ph.i.i11 ], [ 1, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 2 uses
  %.01516.i.i13 = phi i64 [ %i.bg, %.lr.ph.i.i11 ], [ %i.as, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 2 uses
  %i.aw = lshr i64 %.01516.i.i13, 1               ; 3 uses
  %i.ax = add i64 %i.aw, %.017.i.i12              ; 2 uses
  %i.ay = shl i64 %i.ax, 32
  %i.az = ashr exact i64 %i.ay, 30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !18
  %i.bc = fcmp ole float %i.bb, %.sroa.022.0.vec.extract ; 2 uses
  %i.bd = add i64 %i.ax, 1
  %i.be = select i1 %i.bc, i64 %i.bd, i64 %.017.i.i12
  %.fr.i.i14 = freeze i64 %i.be                   ; 3 uses
  %.neg.i.i15 = xor i64 %i.aw, -1
  %i.bf = add nsw i64 %.01516.i.i13, %.neg.i.i15
  %i.bg = select i1 %i.bc, i64 %i.bf, i64 %i.aw   ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i11, label %._crit_edge.i.i16, !llvm.loop !413

._crit_edge.i.i16:                                ; preds = %.lr.ph.i.i11
  %i.bi = add nsw i64 %.fr.i.i14, -1
  %..i.i.i17 = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.as)
  %.inv.i.i18 = icmp sgt i64 %.fr.i.i14, 0
  %spec.select.i.i19 = select i1 %.inv.i.i18, i64 %..i.i.i17, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9: ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit, %._crit_edge.i.i16
  %i.bj = phi i64 [ %spec.select.i.i19, %._crit_edge.i.i16 ], [ 0, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bj
  %i.bl = load <2 x float>, ptr %i.bk, align 4, !tbaa !18 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !414 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.c, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20

bb.c:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !182
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bj
  %i.bs = load float, ptr %i.br, align 4, !tbaa !18
  %i.bt = fdiv float %i.bs, %i.bn
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20: ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9, %bb.c
  %i.bu = phi float [ %i.bt, %bb.c ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !181
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.by = load <2 x float>, ptr %i.bx, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20
  %i.bz = fmul float %i.ag, %i.bu
  store float %i.bz, ptr %2, align 4, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20
  %.not8 = icmp eq ptr %3, null
end_hunk_2
begin_hunk_3_@_ZN4pbrt6detail21stringPrintfRecursiveIRA47_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !51, !alias.scope !442 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %.body42, label %.body42.sink.split

_ZN4pbrt6detail9formatOneIRA47_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !59 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !59
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44

bb.v:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA47_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #29
          to label %.noexc45 unwind label %bb.w

.noexc45:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44: ; preds = %_ZN4pbrt6detail9formatOneIRA47_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !51
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47 unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44
  %i.dj = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !52
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44, %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body42, label %.body42.sink.split

.body42.sink.split:                               ; preds = %bb.w, %bb.u
  %.sink89 = phi ptr [ %i.da, %bb.u ], [ %i.do, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !52
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink89, i64 noundef %i.dr) #27
  br label %.body42

.body42:                                          ; preds = %.body42.sink.split, %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ], [ %.pn.ph, %.body42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.z

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.55, %bb.c ], [ @.str.56, %bb.r ], [ @.str.54, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #29
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !116
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.y unwind label %bb.b

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.y
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !52
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !52
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn24
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

declare void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #9 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

declare void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #18

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

declare void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, ptr, i64) local_unnamed_addr #1

declare void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124), ptr, i64, ptr, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #19

declare void @_ZNK4pbrt24PortalImageInfiniteLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 8, ptr noundef nonnull align 8 dereferenceable(516), ptr noundef byval(%"class.pbrt::LightSampleContext") align 8, <2 x float>, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, ptr noundef nonnull align 4 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load <1 x float>, ptr %5, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !445, !noalias !446
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load <4 x i16>, ptr %i.a, align 4, !tbaa !76, !noalias !446
  %i.j = shufflevector <4 x i16> %i.i, <4 x i16> poison, <2 x i32> <i32 0, i32 3>
  %i.k = uitofp <2 x i16> %i.j to <2 x float>
  %i.l = fdiv <2 x float> %i.k, splat (float 6.553500e+04) ; 2 uses
  %i.m = fsub nnan <2 x float> splat (float 1.000000e+00), %i.l
  %i.n = shufflevector <1 x float> %i.b, <1 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.n, %i.m
  %i.p = insertelement <2 x float> poison, float %i.d, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.l, %i.q
  %i.s = fadd <2 x float> %i.r, %i.o              ; 4 uses
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.u = fcmp olt <2 x float> %i.s, %i.t
  %i.v = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = select <2 x i1> %i.u, <2 x float> %i.v, <2 x float> %i.w ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %6 = load <1 x i32>, ptr %i.y, align 4
  %i.z = shufflevector <1 x i32> %6, <1 x i32> poison, <2 x i32> zeroinitializer
  %i.aa = lshr <2 x i32> %i.z, <i32 0, i32 15>
  %i.ab = and <2 x i32> %i.aa, splat (i32 32767)
  %i.ac = uitofp nneg <2 x i32> %i.ab to <2 x float>
  %i.ad = fdiv nnan <2 x float> %i.ac, splat (float 3.276700e+04)
  %7 = fmul nnan <2 x float> %i.ad, splat (float 2.000000e+00) ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  %i.ae = fadd float %8, -1.000000e+00            ; 4 uses
  %i.af = extractelement <2 x float> %7, i64 1
  %i.ag = fadd float %i.af, -1.000000e+00
  %i.ah = extractelement <2 x float> %i.x, i64 0  ; 3 uses
  %i.ai = extractelement <2 x float> %i.x, i64 1  ; 2 uses
  %i.aj = fadd float %i.ah, %i.ai
  %i.ak = fmul float %i.aj, 5.000000e-01          ; 5 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.al = fsub float %.sroa.0.0.vec.extract.i, %i.ak ; 3 uses
  %i.am = load <2 x i16>, ptr %i.e, align 2, !tbaa !76, !noalias !446
  %i.an = uitofp <2 x i16> %i.am to <2 x float>
  %i.ao = fdiv <2 x float> %i.an, splat (float 6.553500e+04) ; 2 uses
  %i.ap = load <2 x float>, ptr %i.f, align 4, !tbaa !18, !noalias !446 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.g, align 4, !tbaa !18, !noalias !446 ; 2 uses
  %i.ar = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ao
  %i.as = fmul <2 x float> %i.ap, %i.ar
  %i.at = fmul <2 x float> %i.ao, %i.aq
  %i.au = fadd <2 x float> %i.at, %i.as           ; 4 uses
  %i.av = load <2 x i16>, ptr %i.h, align 4, !tbaa !76, !noalias !446
  %i.aw = uitofp <2 x i16> %i.av to <2 x float>
  %i.ax = fdiv <2 x float> %i.aw, splat (float 6.553500e+04) ; 2 uses
  %i.ay = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ax
  %i.az = fmul <2 x float> %i.ap, %i.ay
  %i.ba = fmul <2 x float> %i.aq, %i.ax
  %i.bb = fadd <2 x float> %i.ba, %i.az           ; 4 uses
  %i.bc = fcmp olt <2 x float> %i.bb, %i.au
  %i.bd = select <2 x i1> %i.bc, <2 x float> %i.bb, <2 x float> %i.au ; 4 uses
  %i.be = fcmp olt <2 x float> %i.au, %i.bb
  %i.bf = select <2 x i1> %i.be, <2 x float> %i.bb, <2 x float> %i.au ; 6 uses
  %i.bg = fadd <2 x float> %i.bf, %i.bd
  %i.bh = fmul <2 x float> %i.bg, splat (float 5.000000e-01) ; 7 uses
  %i.bi = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float %2, i64 1
  %i.bk = fsub <2 x float> %i.bj, %i.bh           ; 3 uses
  %i.bl = fmul float %i.al, %i.al
  %i.bm = fmul <2 x float> %i.bk, %i.bk           ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = fadd float %i.bl, %i.bn
  %i.bp = extractelement <2 x float> %i.bm, i64 1
  %i.bq = fadd float %i.bp, %i.bo                 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.bf, %i.bd ; 2 uses
  %foldExtExtBinop178 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.br = shufflevector <2 x float> %i.bf, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  %i.bs = shufflevector <2 x float> %i.bd, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.bt = fsub <2 x float> %i.br, %i.bs           ; 2 uses
  %i.bu = fmul <2 x float> %i.bt, %i.bt           ; 2 uses
  %shift = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop180 = fadd <2 x float> %shift, %foldExtExtBinop178
  %foldExtExtBinop182.a = fadd <2 x float> %i.bu, %foldExtExtBinop180
  %i.bv = extractelement <2 x float> %foldExtExtBinop182.a, i64 0
  %sqrt.i.a = tail call noundef float @sqrtf(float noundef %i.bv) #25
  %i.bw = fmul float %sqrt.i.a, 5.000000e-01      ; 2 uses
  %i.bx = fcmp olt float %i.bq, %i.bw
  %.sroa.speculated149 = select i1 %i.bx, float %i.bw, float %i.bq
  %sqrt.i.i.a = tail call noundef float @sqrtf(float noundef %i.bq) #25 ; 2 uses
  %i.by = fdiv float %i.al, %sqrt.i.i.a           ; 2 uses
  %i.bz = insertelement <2 x float> poison, float %sqrt.i.i.a, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fdiv <2 x float> %i.bk, %i.ca           ; 3 uses
  %i.cc = load <2 x i16>, ptr %0, align 4, !tbaa !76
  %i.cd = uitofp <2 x i16> %i.cc to <2 x float>
  %i.ce = fdiv nnan <2 x float> %i.cd, splat (float 6.553500e+04)
  %i.cf = fmul nnan <2 x float> %i.ce, splat (float 2.000000e+00)
  %i.cg = fadd <2 x float> %i.cf, splat (float -1.000000e+00) ; 3 uses
  %i.ch = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cg) ; 3 uses
  %shift184.a = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop185.a = fadd <2 x float> %i.ch, %shift184.a
  %i.ci = extractelement <2 x float> %foldExtExtBinop185.a, i64 0
  %i.cj = fsub float 1.000000e+00, %i.ci          ; 4 uses
  %i.ck = fcmp olt float %i.cj, 0.000000e+00
  br i1 %i.ck, label %bb.b, label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

bb.b:                                             ; preds = %bb.a
  %i.cl = fsub nnan <2 x float> splat (float 1.000000e+00), %i.ch
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cn = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> splat (float 1.000000e+00), <2 x float> %i.cg)
  %i.co = fmul nnan <2 x float> %i.cn, %i.cm
  br label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi <2 x float> [ %i.co, %bb.b ], [ %i.cg, %bb.a ] ; 4 uses
  %.sroa.01.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.cp = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.i ; 2 uses
  %shift187 = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop188 = fadd <2 x float> %i.cp, %shift187
  %i.cq = extractelement <2 x float> %foldExtExtBinop188, i64 0
  %i.cr = fmul float %i.cj, %i.cj
  %i.cs = fadd float %i.cr, %i.cq
  %sqrt.i.i.i = tail call noundef float @sqrtf(float noundef %i.cs) #25 ; 2 uses
  %i.ct = fdiv float %.sroa.01.0.vec.extract.i.i.i.i, %sqrt.i.i.i
  %i.cu = fmul float %i.by, %i.ct
  %i.cv = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cw = insertelement <2 x float> %i.cv, float %i.cj, i64 1
  %i.cx = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fdiv <2 x float> %i.cw, %i.cy
  %i.da = fmul <2 x float> %i.cb, %i.cz           ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  %i.dc = fadd float %i.cu, %i.db
  %i.dd = extractelement <2 x float> %i.da, i64 1
  %i.de = fadd float %i.dd, %i.dc                 ; 2 uses
  %9 = load i32, ptr %i.y, align 4
  %i.df = and i32 %9, 1073741824
  %.not = icmp eq i32 %i.df, 0
  %i.dg = tail call float @llvm.fabs.f32(float %i.de)
  %spec.select = select i1 %.not, float %i.de, float %i.dg ; 5 uses
  %i.dh = fmul float %spec.select, %spec.select
  %i.di = fsub float 1.000000e+00, %i.dh          ; 2 uses
  %i.dj = fcmp ogt float %i.di, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.dj, float %i.di, float 0.000000e+00
  %sqrt.i124 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 2 uses
  %i.dk = fcmp ult float %i.ak, %i.ai
  %i.dl = fcmp ugt float %i.ak, %i.ah
  %or.cond.i.i.i = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond.i.i.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit
  %i.dm = shufflevector <2 x float> %i.bh, <2 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dn = shufflevector <2 x float> %i.bf, <2 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.do = fcmp ugt <4 x float> %i.dm, %i.dn
  %i.dp = freeze <4 x i1> %i.do
  %i.dq = bitcast <4 x i1> %i.dp to i4
  %.not206 = icmp eq i4 %i.dq, 0
  br i1 %.not206, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.a, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.a: ; preds = %bb.c
  %i.dr = fsub float %i.ak, %i.ah                 ; 2 uses
  %foldExtExtBinop190 = fsub <2 x float> %i.bh, %i.bf ; 2 uses
  %foldExtExtBinop192 = fsub <2 x float> %i.bh, %i.bf ; 2 uses
  %i.ds = fmul float %i.dr, %i.dr
  %foldExtExtBinop194 = fmul <2 x float> %foldExtExtBinop190, %foldExtExtBinop190
  %i.dt = extractelement <2 x float> %foldExtExtBinop194, i64 0
  %i.du = fadd float %i.ds, %i.dt
  %foldExtExtBinop196.a = fmul <2 x float> %foldExtExtBinop192, %foldExtExtBinop192
  %i.dv = extractelement <2 x float> %foldExtExtBinop196.a, i64 1
  %i.dw = fadd float %i.dv, %i.du
  %sqrt.i.i.i.i = tail call noundef float @sqrtf(float noundef %i.dw) #25 ; 2 uses
  %i.dx = fmul float %sqrt.i.i.i.i, %sqrt.i.i.i.i
  br label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i: ; preds = %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.a, %bb.c, %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit
  %10 = phi float [ %i.dx, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.a ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit ] ; 2 uses
  %11 = fcmp olt float %i.bq, %10
  br i1 %11, label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread: ; preds = %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i
  %i.dy = fsub float %i.ak, %.sroa.0.0.vec.extract.i ; 3 uses
  %shift198 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop199 = fsub <2 x float> %i.bh, %shift198 ; 3 uses
  %i.dz = extractelement <2 x float> %foldExtExtBinop199, i64 0
  %i.ea = extractelement <2 x float> %i.bh, i64 1
  %i.eb = fsub float %i.ea, %2                    ; 3 uses
  %i.ec = fmul float %i.dy, %i.dy
  %foldExtExtBinop201.a = fmul <2 x float> %foldExtExtBinop199, %foldExtExtBinop199
  %i.ed = extractelement <2 x float> %foldExtExtBinop201.a, i64 0
  %i.ee = fadd float %i.ec, %i.ed
  %i.ef = fmul float %i.eb, %i.eb
  %i.eg = fadd float %i.ef, %i.ee                 ; 2 uses
  %sqrt.i.i.i125 = tail call noundef float @sqrtf(float noundef %i.eg) #25 ; 3 uses
  %i.eh = fdiv float %i.dy, %sqrt.i.i.i125        ; 2 uses
  %i.ei = fdiv float %i.dz, %sqrt.i.i.i125        ; 2 uses
  %i.ej = fdiv float %i.eb, %sqrt.i.i.i125        ; 3 uses
  %i.ek = fdiv float %10, %i.eg
  %i.el = fsub float 1.000000e+00, %i.ek          ; 2 uses
  %i.em = fcmp ogt float %i.el, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.em, float %i.el, float 0.000000e+00
  %sqrt.i.i126 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i)
  %i.en = fmul float %i.eh, %i.eh
  %i.eo = fmul float %i.ei, %i.ei
  %i.ep = fadd float %i.en, %i.eo
  %i.eq = fmul float %i.ej, %i.ej
  %i.er = fadd float %i.eq, %i.ep
  %sqrt.i.i.i48.i = tail call noundef float @sqrtf(float noundef %i.er) #25
  %i.es = fdiv float %i.ej, %sqrt.i.i.i48.i
  %.sroa.3.8.vec.insert.i = insertelement <2 x float> poison, float %i.es, i64 0
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %sqrt.i.i126, i64 1
  br label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit

_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit: ; preds = %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread
  %.sroa.3.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread ], [ <float 1.000000e+00, float -1.000000e+00>, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ] ; 2 uses
  %.sroa.3.12.vec.extract = extractelement <2 x float> %.sroa.3.0.i, i64 1 ; 4 uses
  %i.et = shufflevector <2 x float> %.sroa.3.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eu = insertelement <2 x float> %i.et, float %i.ae, i64 1 ; 2 uses
  %i.ev = fmul <2 x float> %i.eu, %i.eu
  %i.ew = fsub <2 x float> splat (float 1.000000e+00), %i.ev ; 2 uses
  %i.ex = fcmp ogt <2 x float> %i.ew, zeroinitializer
  %i.ey = select <2 x i1> %i.ex, <2 x float> %i.ew, <2 x float> zeroinitializer ; 2 uses
  %i.ez = extractelement <2 x float> %i.ey, i64 0
  %sqrt.i130 = tail call noundef float @llvm.sqrt.f32(float %i.ez) ; 2 uses
  %i.fa = extractelement <2 x float> %i.ey, i64 1
  %sqrt.i132 = tail call noundef float @llvm.sqrt.f32(float %i.fa) ; 2 uses
  %i.fb = fcmp ogt float %spec.select, %i.ae      ; 2 uses
  %i.fc = fmul float %i.ae, %spec.select
  %i.fd = fmul float %sqrt.i132, %sqrt.i124
  %i.fe = fadd float %i.fc, %i.fd
  %.0.i = select i1 %i.fb, float 1.000000e+00, float %i.fe ; 2 uses
  %i.ff = fmul float %i.ae, %sqrt.i124
  %i.fg = fmul float %sqrt.i132, %spec.select
  %i.fh = fsub float %i.ff, %i.fg
  %.0.i133 = select i1 %i.fb, float 0.000000e+00, float %i.fh
  %i.fi = fcmp ogt float %.0.i, %.sroa.3.12.vec.extract
  %i.fj = fmul float %.0.i, %.sroa.3.12.vec.extract
  %i.fk = fmul float %.0.i133, %sqrt.i130
  %i.fl = fadd float %i.fj, %i.fk
  %.0.i134 = select i1 %i.fi, float 1.000000e+00, float %i.fl ; 2 uses
  %i.fm = fcmp ugt float %.0.i134, %i.ag
  br i1 %i.fm, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !450
  %i.fp = fmul float %.0.i134, %i.fo
  %i.fq = fdiv float %i.fp, %.sroa.speculated149  ; 2 uses
  %.sroa.0164.0.vec.extract = extractelement <2 x float> %3, i64 0 ; 2 uses
  %i.fr = fcmp une float %.sroa.0164.0.vec.extract, 0.000000e+00
  %.sroa.0164.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.fs = fcmp une float %.sroa.0164.4.vec.extract, 0.000000e+00
  %or.cond.i137 = select i1 %i.fr, i1 true, i1 %i.fs
  %i.ft = fcmp une float %4, 0.000000e+00
  %or.cond = select i1 %or.cond.i137, i1 true, i1 %i.ft
  br i1 %or.cond, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %bb.e

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread: ; preds = %bb.d
  %i.fu = extractelement <2 x float> %i.cb, i64 1
  %i.fv = fmul float %4, %i.fu                    ; 2 uses
  %i.fw = fneg float %i.fv
  %i.fx = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fy = insertelement <2 x float> %i.fx, float %4, i64 1
  %i.fz = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %i.fw, i64 1
  %i.gb = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.fy, <2 x float> %i.cb, <2 x float> %i.ga) ; 2 uses
  %shift203 = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop204 = fadd <2 x float> %i.gb, %shift203
  %i.gc = extractelement <2 x float> %foldExtExtBinop204, i64 0
  %i.gd = tail call noundef float @llvm.fma.f32(float %.sroa.0164.0.vec.extract, float %i.by, float %i.gc) ; 3 uses
  %i.ge = tail call noundef float @llvm.fabs.f32(float %i.gd) ; 2 uses
  %i.gf = fmul float %i.gd, %i.gd
  %i.gg = fsub float 1.000000e+00, %i.gf          ; 2 uses
  %i.gh = fcmp ogt float %i.gg, 0.000000e+00
  %.sroa.speculated.i140 = select i1 %i.gh, float %i.gg, float 0.000000e+00
  %sqrt.i141 = tail call nnan float @llvm.sqrt.f32(float %.sroa.speculated.i140)
  %i.gi = fcmp ogt float %i.ge, %.sroa.3.12.vec.extract
  %i.gj = fmul float %i.ge, %.sroa.3.12.vec.extract
  %i.gk = fmul float %sqrt.i141, %sqrt.i130
  %i.gl = fadd float %i.gj, %i.gk
  %.0.i142 = select i1 %i.gi, float 1.000000e+00, float %i.gl
  %i.gm = fmul float %.0.i142, %i.fq
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread
  %.0170 = phi float [ %i.gm, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread ], [ %i.fq, %bb.d ] ; 2 uses
  %i.gn = fcmp olt float %.0170, 0.000000e+00
  %.sroa.speculated = select i1 %i.gn, float 0.000000e+00, float %.0170
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
  store ptr %i.a, ptr %5, align 8, !tbaa !222, !alias.scope !453
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !59, !alias.scope !453
  store i8 0, ptr %i.a, align 8, !tbaa !52, !alias.scope !453
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(4) %4)
          to label %_ZN4pbrt12StringPrintfIJRA4_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !51, !alias.scope !453 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !52, !alias.scope !453
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
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !222, !alias.scope !464
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !59, !alias.scope !464
  store i8 0, ptr %i.j, align 8, !tbaa !52, !alias.scope !464
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !224, !noalias !464 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !464 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
end_hunk_3
