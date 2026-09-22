Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZN4pbrt14PathIntegratorC2EiNS_6CameraENS_7SamplerENS_9PrimitiveESt6vectorINS_5LightESaIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %cmp.n29 = icmp eq i64 %i.x, %n.vec23
  br i1 %cmp.n29, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i.i.i.i.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.aq = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !64
  store i64 %i.aq, ptr %.013.i.i.i.i.i, align 8, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1144

_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit:  ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.am, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.o, align 8, !tbaa !58
  invoke void @_ZN4pbrt13RayIntegratorC2ENS_6CameraENS_7SamplerENS_9PrimitiveESt6vectorINS_5LightESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %8, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %9, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %10, ptr nofree noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit
  %i.at = load ptr, ptr %11, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #39
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit

_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit:      ; preds = %bb.d, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4pbrt14PathIntegratorE, i64 16), ptr %0, align 8, !tbaa !89
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %1, ptr %i.ay, align 8, !tbaa !431
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #38
  invoke void @_ZN4pbrt12LightSampler6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd4spanIKNS_5LightEEENS9_3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::LightSampler") align 8 %i.az, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %i.ba, i64 %i.bf, ptr %i.bg)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit
  %i.bh = zext i1 %7 to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %i.bh, ptr %i.bi, align 8, !tbaa !432
  ret void

bb.g:                                             ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %11, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #39
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit8

bb.i:                                             ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt10IntegratorD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #38
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit8

_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit8:     ; preds = %bb.h, %bb.g, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.i ], [ %i.bj, %bb.g ], [ %i.bj, %bb.h ]
  resume { ptr, i32 } %.pn
}

declare void @_ZN4pbrt12LightSampler6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd4spanIKNS_5LightEEENS9_3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind writable sret(%"class.pbrt::LightSampler") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt14PathIntegrator2LiENS_15RayDifferentialERNS_18SampledWavelengthsENS_7SamplerERNS_13ScratchBufferEPNS_14VisibleSurfaceE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(32) %2, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %3, ptr noundef nonnull align 64 dereferenceable(40) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.pbrt::Light", align 8       ; 4 uses
  %7 = alloca %"class.pbrt::Light", align 8       ; 4 uses
  %8 = alloca %class.anon.390, align 1            ; 3 uses
  %9 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %10 = alloca %"class.pbrt::Vector3", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %11 = alloca %class.anon.466, align 8           ; 7 uses
  %12 = alloca %class.anon.419, align 1           ; 3 uses
  %13 = alloca %class.anon.390, align 1           ; 3 uses
  %14 = alloca %class.anon.435, align 1           ; 3 uses
  %15 = alloca %class.anon.464, align 1           ; 3 uses
  %16 = alloca %"class.pbrt::Vector3", align 8    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %17 = alloca %class.anon.445, align 8           ; 6 uses
  %18 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %19 = alloca %class.anon.447, align 8           ; 5 uses
  %20 = alloca %"class.pbrt::Vector3", align 8    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %21 = alloca %class.anon.445, align 8           ; 6 uses
  %22 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %23 = alloca %"class.pbrt::LightSampleContext", align 4 ; 10 uses
  %24 = alloca %"class.pstd::optional.111", align 8 ; 30 uses
  %25 = alloca %"class.pbrt::Light", align 8      ; 2 uses
  %26 = alloca %"class.pbrt::BSDF", align 8       ; 24 uses
  %27 = alloca %"class.pbrt::Camera", align 8     ; 4 uses
  %28 = alloca %"class.pbrt::Sampler", align 8    ; 4 uses
  %i.e = alloca [16 x float], align 16            ; 5 uses
  %29 = alloca [16 x %"class.pbrt::Point2.99"], align 16 ; 8 uses
  %30 = alloca %"class.pbrt::VisibleSurface", align 4 ; 5 uses
  %31 = alloca %"class.pbrt::Sampler", align 8    ; 2 uses
  %32 = alloca %"class.pstd::optional.128", align 8 ; 14 uses
  %33 = alloca %"class.pbrt::LightSampleContext", align 4 ; 7 uses
  %34 = alloca %"class.pbrt::RayDifferential", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %23, i8 0, i64 48, i1 false)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL18nIntersectionTestsE) ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %24, i64 256 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %24, i64 200
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.2.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = icmp ne ptr %5, null
  %i.s = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %29, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %24, i64 28
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 36
  %i.w = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %.sroa.222.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %26, i64 20 ; 2 uses
  %.sroa.214.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %26, i64 28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL16regularizedBSDFsE) ; 2 uses
  %i.ab = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL10totalBSDFsE) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL10totalPathsE) ; 2 uses
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL17zeroRadiancePathsE) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %32, i64 44 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %24, i64 128 ; 2 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 136
  %.sroa.6.0..sroa_idx.i274 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %32, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %32, i64 40
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %32, i64 36
  %i.ap = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %33, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %34, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %24, i64 248 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !145, !noalias !1152
  %i.ay = add nsw i64 %i.ax, 1
  store i64 %i.ay, ptr %i.f, align 8, !tbaa !145, !noalias !1152
  %i.az = load i64, ptr %i.g, align 8, !tbaa !55, !noalias !1152
  %i.ba = and i64 %i.az, 144115188075855871
  %.not.i11181135 = icmp eq i64 %i.ba, 0
  br i1 %.not.i11181135, label %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread, label %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph

_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph: ; preds = %bb.a
  %i.bb = tail call float @llvm.fabs.f32(float undef)
  br label %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph

_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph: ; preds = %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph, %.outer
  %.in = phi float [ %i.bb, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph ], [ %i.qw, %.outer ]
  %i.bc = phi float [ undef, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph ], [ %i.qv, %.outer ] ; 2 uses
  %or.cond3.peel = phi i1 [ true, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph ], [ %i.pi, %.outer ]
  %.0.ph1144 = phi i32 [ 0, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph ], [ %i.ky, %.outer ] ; 8 uses
  %.0104.ph1143 = phi float [ undef, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph ], [ %i.pe, %.outer ] ; 4 uses
  %.0107.ph1142 = phi float [ 1.000000e+00, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph ], [ %.1108, %.outer ] ; 2 uses
  %.0111.ph1141 = phi i1 [ false, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph ], [ %i.pi, %.outer ]
  %.0115.ph1140 = phi i8 [ 0, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph ], [ %37, %.outer ] ; 2 uses
  %.sroa.23.0.ph1139 = phi <2 x float> [ zeroinitializer, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph ], [ %.sroa.23.4, %.outer ] ; 4 uses
  %.sroa.0482.0.ph1138 = phi <2 x float> [ zeroinitializer, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph ], [ %.sroa.0482.4, %.outer ] ; 4 uses
  %i.bd = phi <2 x float> [ splat (float 1.000000e+00), %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph ], [ %.sroa.19.4, %.outer ] ; 9 uses
  %i.be = phi <2 x float> [ splat (float 1.000000e+00), %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph.lr.ph ], [ %.sroa.0441.4, %.outer ] ; 9 uses
  %i.bf = fcmp oeq float %.in, +inf
  call void @_ZNK4pbrt9Primitive9IntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.111") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %1, float noundef +inf)
  %.pre.peel = load i8, ptr %i.h, align 8, !tbaa !286, !range !136
  %i.bg = trunc nuw i8 %.pre.peel to i1
  br i1 %i.bg, label %bb.b, label %.loopexit873

bb.b:                                             ; preds = %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph
  %i.bh = load <2 x float>, ptr %i.i, align 4, !tbaa !189
  %i.bi = fneg <2 x float> %i.bh
  %i.bj = load float, ptr %i.k, align 4, !tbaa !295
  %i.bk = fneg float %i.bj
  %i.bl = call { <2 x float>, <2 x float> } @_ZNK4pbrt18SurfaceInteraction2LeENS_7Vector3IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(248) %24, <2 x float> %i.bi, float %i.bk, ptr noundef nonnull align 4 dereferenceable(32) %2) ; 2 uses
  %i.bm = extractvalue { <2 x float>, <2 x float> } %i.bl, 0 ; 3 uses
  %i.bn = extractvalue { <2 x float>, <2 x float> } %i.bl, 1 ; 3 uses
  %i.bo = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr.peel = freeze <4 x float> %i.bo
  %i.bp = fcmp une <4 x float> %.fr.peel, zeroinitializer
  %i.bq = bitcast <4 x i1> %i.bp to i4
  %.not1187.peel = icmp eq i4 %i.bq, 0
  br i1 %.not1187.peel, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond3.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = load i8, ptr %i.h, align 8, !tbaa !286, !range !136, !noundef !137
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit207.peel, label %.noexc206

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit207.peel: ; preds = %bb.d
  %i.bt = load i64, ptr %i.l, align 8, !tbaa !64  ; 3 uses
  store i64 %i.bt, ptr %25, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  store ptr %23, ptr %19, align 8, !tbaa !365
  store ptr %25, ptr %i.n, align 8, !tbaa !61
  %i.bu = load i64, ptr %i.m, align 8, !tbaa !433 ; 2 uses
  %i.bv = and i64 %i.bu, 144115188075855871
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = lshr i64 %i.bu, 57
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = add nsw i32 %i.by, -1
  %i.ca = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_12LightSampler3PMFERKNS_18LightSampleContextENS_5LightEEUlT_E_fNS_19UniformLightSamplerENS_17PowerLightSamplerENS_22ExhaustiveLightSamplerENS_15BVHLightSamplerEEET0_OS7_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %i.bw, i32 noundef %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 4 dereferenceable(48) %23, i64 48, i1 false)
  %.sroa.056.0.copyload.peel = load <2 x float>, ptr %i.i, align 4
  %.sroa.257.0.copyload.peel = load float, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x float> %.sroa.056.0.copyload.peel, ptr %16, align 8
  store float %.sroa.257.0.copyload.peel, ptr %.sroa.2.0..sroa_idx.i210, align 8
  store i8 1, ptr %i.c, align 1, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  store ptr %18, ptr %17, align 8, !tbaa !365
  store ptr %16, ptr %i.o, align 8, !tbaa !375
  store ptr %i.c, ptr %i.p, align 8, !tbaa !369
  %i.cb = and i64 %i.bt, 144115188075855871
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = lshr i64 %i.bt, 57
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, -1
  %i.cg = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_5Light6PDF_LiENS_18LightSampleContextENS_7Vector3IfEEbEUlT_E_fNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef %i.cc, i32 noundef %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ch = fmul float %i.ca, %i.cg                 ; 2 uses
  %i.ci = fmul float %i.ch, %i.ch
  %i.cj = fadd float %i.bc, %i.ci
  %i.ck = fdiv float %i.bc, %i.cj
  %.0.i213.peel = select i1 %i.bf, float 1.000000e+00, float %i.ck
  %i.cl = insertelement <2 x float> poison, float %.0.i213.peel, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cn = fmul <2 x float> %i.be, %i.cm
  %i.co = fmul <2 x float> %i.bm, %i.cn
  %i.cp = fadd <2 x float> %.sroa.0482.0.ph1138, %i.co
  %i.cq = fmul <2 x float> %i.bd, %i.cm
  %i.cr = fmul <2 x float> %i.bn, %i.cq
  %i.cs = fadd <2 x float> %.sroa.23.0.ph1139, %i.cr
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ct = fmul <2 x float> %i.be, %i.bm
  %i.cu = fmul <2 x float> %i.bd, %i.bn
  %i.cv = fadd <2 x float> %.sroa.0482.0.ph1138, %i.ct
  %i.cw = fadd <2 x float> %.sroa.23.0.ph1139, %i.cu
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit207.peel, %bb.b
  %.sroa.0482.3.peel = phi <2 x float> [ %i.cv, %bb.e ], [ %i.cp, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit207.peel ], [ %.sroa.0482.0.ph1138, %bb.b ] ; 3 uses
  %.sroa.23.3.peel = phi <2 x float> [ %i.cw, %bb.e ], [ %i.cs, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit207.peel ], [ %.sroa.23.0.ph1139, %bb.b ] ; 3 uses
  %i.cx = load i8, ptr %i.h, align 8, !tbaa !286, !range !136, !noundef !137
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.g, label %.noexc241

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.cz = load i64, ptr %i.q, align 8, !tbaa !51
  store i64 %i.cz, ptr %27, align 8, !tbaa !51
  %i.da = load i64, ptr %3, align 8, !tbaa !53
  store i64 %i.da, ptr %28, align 8, !tbaa !53
  call void @_ZN4pbrt18SurfaceInteraction7GetBSDFERKNS_15RayDifferentialERNS_18SampledWavelengthsENS_6CameraERNS_13ScratchBufferENS_7SamplerE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::BSDF") align 8 %26, ptr noundef nonnull align 8 dereferenceable(248) %24, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 4 dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %27, ptr noundef nonnull align 64 dereferenceable(40) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %28)
  %i.db = load i64, ptr %26, align 8, !tbaa !362
  %i.dc = and i64 %i.db, 144115188075855871
  %.not602.peel = icmp eq i64 %i.dc, 0
  br i1 %.not602.peel, label %bb.h, label %.loopexit1328

bb.h:                                             ; preds = %bb.g
  %i.dd = load i8, ptr %i.h, align 8, !tbaa !286, !range !136, !noundef !137
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel, label %.noexc243

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel: ; preds = %bb.h
  %i.df = load float, ptr %i.aw, align 8, !tbaa !294
  call void @_ZNK4pbrt18SurfaceInteraction16SkipIntersectionEPNS_15RayDifferentialEf(ptr noundef nonnull align 8 dereferenceable(248) %24, ptr noundef nonnull %1, float noundef %i.df), !llvm.loop !1147
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.dg = load i64, ptr %i.f, align 8, !tbaa !145, !noalias !1153
  %i.dh = add nsw i64 %i.dg, 1
  store i64 %i.dh, ptr %i.f, align 8, !tbaa !145, !noalias !1153
  %i.di = load i64, ptr %i.g, align 8, !tbaa !55, !noalias !1153
  %i.dj = and i64 %i.di, 144115188075855871
  %.not.i.peel = icmp eq i64 %i.dj, 0
  br i1 %.not.i.peel, label %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread, label %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit

_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread: ; preds = %.outer, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel, %bb.a
  %.sroa.19.0.ph.lcssa = phi <2 x float> [ %i.bd, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244 ], [ splat (float 1.000000e+00), %bb.a ], [ %i.bd, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel ], [ %.sroa.19.4, %.outer ]
  %.sroa.0441.0.ph.lcssa = phi <2 x float> [ %i.be, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244 ], [ splat (float 1.000000e+00), %bb.a ], [ %i.be, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel ], [ %.sroa.0441.4, %.outer ]
  %.0104.ph.lcssa = phi float [ %.0104.ph1143, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244 ], [ undef, %bb.a ], [ %.0104.ph1143, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel ], [ %i.pe, %.outer ]
  %.0.ph.lcssa = phi i32 [ %.0.ph1144, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244 ], [ 0, %bb.a ], [ %.0.ph1144, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel ], [ %i.ky, %.outer ]
  %.sroa.0482.0.lcssa = phi <2 x float> [ %.sroa.0482.3.peel, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel ], [ zeroinitializer, %bb.a ], [ %.sroa.0482.3, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244 ], [ %.sroa.0482.4, %.outer ]
  %.sroa.23.0.lcssa = phi <2 x float> [ %.sroa.23.3.peel, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel ], [ zeroinitializer, %bb.a ], [ %.sroa.23.3, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244 ], [ %.sroa.23.4, %.outer ]
  %.0111.lcssa = phi i1 [ true, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244 ], [ false, %bb.a ], [ true, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel ], [ %i.pi, %.outer ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %24, i8 0, i64 264, i1 false), !alias.scope !1154
  br label %.loopexit873

_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit: ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244
  %.sroa.23.01120 = phi <2 x float> [ %.sroa.23.3, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244 ], [ %.sroa.23.3.peel, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel ] ; 3 uses
  %.sroa.0482.01119 = phi <2 x float> [ %.sroa.0482.3, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244 ], [ %.sroa.0482.3.peel, %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244.peel ] ; 3 uses
  call void @_ZNK4pbrt9Primitive9IntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.111") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %1, float noundef +inf)
  %.pre = load i8, ptr %i.h, align 8, !tbaa !286, !range !136
  %i.dk = trunc nuw i8 %.pre to i1
  br i1 %i.dk, label %bb.r, label %.loopexit873

.loopexit873:                                     ; preds = %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread
  %.sroa.19.0.ph1098 = phi <2 x float> [ %.sroa.19.0.ph.lcssa, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread ], [ %i.bd, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph ], [ %i.bd, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit ]
  %.sroa.0441.0.ph1083 = phi <2 x float> [ %.sroa.0441.0.ph.lcssa, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread ], [ %i.be, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph ], [ %i.be, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit ]
  %.0104.ph1068 = phi float [ %.0104.ph.lcssa, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread ], [ %.0104.ph1143, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph ], [ %.0104.ph1143, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit ] ; 2 uses
  %.0.ph1053 = phi i32 [ %.0.ph.lcssa, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread ], [ %.0.ph1144, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph ], [ %.0.ph1144, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit ] ; 3 uses
  %.sroa.0482.01016 = phi <2 x float> [ %.sroa.0482.0.lcssa, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread ], [ %.sroa.0482.01119, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit ], [ %.sroa.0482.0.ph1138, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph ] ; 2 uses
  %.sroa.23.01010 = phi <2 x float> [ %.sroa.23.0.lcssa, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread ], [ %.sroa.23.01120, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit ], [ %.sroa.23.0.ph1139, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph ] ; 2 uses
  %.01111004 = phi i1 [ %.0111.lcssa, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread ], [ true, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit ], [ %.0111.ph1141, %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !61 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !61 ; 2 uses
  %.not731 = icmp eq ptr %i.dm, %i.do
  br i1 %.not731, label %.loopexit606, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit873
  %i.dp = icmp eq i32 %.0.ph1053, 0
  %or.cond = select i1 %i.dp, i1 true, i1 %.01111004
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ds = fmul float %.0104.ph1068, %.0104.ph1068 ; 3 uses
  %i.dt = call float @llvm.fabs.f32(float %i.ds)
  %i.du = fcmp oeq float %i.dt, +inf
  %i.dv = shufflevector <2 x float> %.sroa.0441.0.ph1083, <2 x float> %.sroa.19.0.ph1098, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.23.1734 = phi <2 x float> [ %.sroa.23.01010, %.lr.ph ], [ %i.iu, %bb.q ]
  %.sroa.0482.1733 = phi <2 x float> [ %.sroa.0482.01016, %.lr.ph ], [ %i.is, %bb.q ]
  %.sroa.0438.0732 = phi ptr [ %i.dm, %.lr.ph ], [ %i.iv, %bb.q ] ; 4 uses
  %i.dw = load i64, ptr %.sroa.0438.0732, align 8, !tbaa !64 ; 2 uses
  %i.dx = and i64 %i.dw, 144115188075855871
  %i.dy = inttoptr i64 %i.dx to ptr               ; 7 uses
  %i.dz = lshr i64 %i.dw, 57
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  switch i32 %i.ea, label %bb.k [
    i32 1, label %_ZNK4pbrt5Light2LeERKNS_3RayERKNS_18SampledWavelengthsE.exit
    i32 2, label %_ZNK4pbrt5Light2LeERKNS_3RayERKNS_18SampledWavelengthsE.exit
    i32 3, label %_ZNK4pbrt5Light2LeERKNS_3RayERKNS_18SampledWavelengthsE.exit
    i32 4, label %_ZNK4pbrt5Light2LeERKNS_3RayERKNS_18SampledWavelengthsE.exit
    i32 5, label %_ZNK4pbrt5Light2LeERKNS_3RayERKNS_18SampledWavelengthsE.exit
    i32 6, label %_ZNK4pbrt5Light2LeERKNS_3RayERKNS_18SampledWavelengthsE.exit
    i32 7, label %bb.j
    i32 8, label %.noexc364
  ]

bb.j:                                             ; preds = %bb.i
  %i.eb = call { <2 x float>, <2 x float> } @_ZNK4pbrt20UniformInfiniteLight2LeERKNS_3RayERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(180) %i.dy, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(32) %2)
  br label %_ZNK4pbrt5Light2LeERKNS_3RayERKNS_18SampledWavelengthsE.exit

end_hunk_0
begin_hunk_1_@_ZNK4pbrt14PathIntegrator2LiENS_15RayDifferentialERNS_18SampledWavelengthsENS_7SamplerERNS_13ScratchBufferEPNS_14VisibleSurfaceE:bb.a
  %i.hz = call noundef float @_ZNK4pbrt15BVHLightSampler3PMFERKNS_18LightSampleContextENS_5LightE(ptr noundef nonnull align 8 dereferenceable(160) %i.fu, ptr noundef nonnull align 4 dereferenceable(48) %23, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZNK4pbrt12LightSampler3PMFERKNS_18LightSampleContextENS_5LightE.exit

_ZNK4pbrt12LightSampler3PMFERKNS_18LightSampleContextENS_5LightE.exit: ; preds = %bb.n, %bb.o, %_ZNK4pbrt7HashMapINS_5LightEmSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_mEEEEEEixERKS1_.exit.i.i.i.i, %.noexc369, %.noexc370
  %.0.i367 = phi float [ %i.hz, %.noexc370 ], [ %.0.i.i.i.i, %bb.n ], [ %i.hy, %.noexc369 ], [ %i.hx, %_ZNK4pbrt7HashMapINS_5LightEmSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_mEEEEEEixERKS1_.exit.i.i.i.i ], [ 0.000000e+00, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 4 dereferenceable(48) %23, i64 48, i1 false)
  %.sroa.071.0.copyload = load <2 x float>, ptr %i.i, align 4
  %.sroa.272.0.copyload = load float, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <2 x float> %.sroa.071.0.copyload, ptr %20, align 8
  store float %.sroa.272.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i8 1, ptr %i.d, align 1, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  store ptr %22, ptr %21, align 8, !tbaa !365
  store ptr %20, ptr %i.dq, align 8, !tbaa !375
  store ptr %i.d, ptr %i.dr, align 8, !tbaa !369
  %i.ia = load i64, ptr %.sroa.0438.0732, align 8, !tbaa !64 ; 2 uses
  %i.ib = and i64 %i.ia, 144115188075855871
  %i.ic = inttoptr i64 %i.ib to ptr
  %i.id = lshr i64 %i.ia, 57
  %i.ie = trunc nuw nsw i64 %i.id to i32
  %i.if = add nsw i32 %i.ie, -1
  %i.ig = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_5Light6PDF_LiENS_18LightSampleContextENS_7Vector3IfEEbEUlT_E_fNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef %i.ic, i32 noundef %i.if)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ih = fmul float %.0.i367, %i.ig              ; 2 uses
  %i.ii = fmul float %i.ih, %i.ih
  %i.ij = fadd float %i.ds, %i.ii
  %i.ik = fdiv float %i.ds, %i.ij
  %.0.i = select i1 %i.du, float 1.000000e+00, float %i.ik
  %i.il = insertelement <4 x float> poison, float %.0.i, i64 0
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> zeroinitializer
  %i.in = fmul <4 x float> %i.dv, %i.im
  %i.io = shufflevector <2 x float> %i.fn, <2 x float> %i.fo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ip = fmul <4 x float> %i.io, %i.in
  br label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt12LightSampler3PMFERKNS_18LightSampleContextENS_5LightE.exit, %bb.l
  %i.iq = phi <4 x float> [ %i.ip, %_ZNK4pbrt12LightSampler3PMFERKNS_18LightSampleContextENS_5LightE.exit ], [ %i.fq, %bb.l ] ; 2 uses
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.is = fadd <2 x float> %.sroa.0482.1733, %i.ir ; 2 uses
  %i.it = shufflevector <4 x float> %i.iq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.iu = fadd <2 x float> %.sroa.23.1734, %i.it  ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0438.0732, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.iv, %i.do
  br i1 %.not, label %.loopexit606, label %bb.i

bb.r:                                             ; preds = %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit
  %i.iw = load <2 x float>, ptr %i.i, align 4, !tbaa !189
  %i.ix = fneg <2 x float> %i.iw
  %i.iy = load float, ptr %i.k, align 4, !tbaa !295
  %i.iz = fneg float %i.iy
  %i.ja = call { <2 x float>, <2 x float> } @_ZNK4pbrt18SurfaceInteraction2LeENS_7Vector3IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(248) %24, <2 x float> %i.ix, float %i.iz, ptr noundef nonnull align 4 dereferenceable(32) %2) ; 2 uses
  %i.jb = extractvalue { <2 x float>, <2 x float> } %i.ja, 0 ; 2 uses
  %i.jc = extractvalue { <2 x float>, <2 x float> } %i.ja, 1 ; 2 uses
  %i.jd = shufflevector <2 x float> %i.jb, <2 x float> %i.jc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x float> %i.jd
  %i.je = fcmp une <4 x float> %.fr, zeroinitializer
  %i.jf = bitcast <4 x i1> %i.je to i4
  %.not1187 = icmp eq i4 %i.jf, 0                 ; 2 uses
  %i.jg = fmul <2 x float> %i.be, %i.jb
  %i.jh = fmul <2 x float> %i.bd, %i.jc
  %i.ji = fadd <2 x float> %.sroa.0482.01119, %i.jg
  %i.jj = fadd <2 x float> %.sroa.23.01120, %i.jh
  %.sroa.0482.3 = select i1 %.not1187, <2 x float> %.sroa.0482.01119, <2 x float> %i.ji ; 3 uses
  %.sroa.23.3 = select i1 %.not1187, <2 x float> %.sroa.23.01120, <2 x float> %i.jj ; 3 uses
  %i.jk = load i8, ptr %i.h, align 8, !tbaa !286, !range !136, !noundef !137
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.s, label %.noexc241

.noexc206:                                        ; preds = %bb.d
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #41
  unreachable

.noexc241:                                        ; preds = %bb.f, %bb.r
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #41
  unreachable

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.jm = load i64, ptr %i.q, align 8, !tbaa !51
  store i64 %i.jm, ptr %27, align 8, !tbaa !51
  %i.jn = load i64, ptr %3, align 8, !tbaa !53
  store i64 %i.jn, ptr %28, align 8, !tbaa !53
  call void @_ZN4pbrt18SurfaceInteraction7GetBSDFERKNS_15RayDifferentialERNS_18SampledWavelengthsENS_6CameraERNS_13ScratchBufferENS_7SamplerE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::BSDF") align 8 %26, ptr noundef nonnull align 8 dereferenceable(248) %24, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 4 dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %27, ptr noundef nonnull align 64 dereferenceable(40) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %28)
  %i.jo = load i64, ptr %26, align 8, !tbaa !362
  %i.jp = and i64 %i.jo, 144115188075855871
  %.not602 = icmp eq i64 %i.jp, 0
  br i1 %.not602, label %bb.t, label %.loopexit1328

bb.t:                                             ; preds = %bb.s
  %i.jq = load i8, ptr %i.h, align 8, !tbaa !286, !range !136, !noundef !137
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244, label %.noexc243

.noexc243:                                        ; preds = %bb.h, %bb.t
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #41
  unreachable

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit244: ; preds = %bb.t
  %i.js = load float, ptr %i.aw, align 8, !tbaa !294
  call void @_ZNK4pbrt18SurfaceInteraction16SkipIntersectionEPNS_15RayDifferentialEf(ptr noundef nonnull align 8 dereferenceable(248) %24, ptr noundef nonnull %1, float noundef %i.js), !llvm.loop !1147
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.jt = load i64, ptr %i.f, align 8, !tbaa !145, !noalias !1153
  %i.ju = add nsw i64 %i.jt, 1
  store i64 %i.ju, ptr %i.f, align 8, !tbaa !145, !noalias !1153
  %i.jv = load i64, ptr %i.g, align 8, !tbaa !55, !noalias !1153
  %i.jw = and i64 %i.jv, 144115188075855871
  %.not.i = icmp eq i64 %i.jw, 0
  br i1 %.not.i, label %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread, label %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit, !llvm.loop !1150

.loopexit1328:                                    ; preds = %bb.s, %bb.g
  %.sroa.0482.3.lcssa1221 = phi <2 x float> [ %.sroa.0482.3.peel, %bb.g ], [ %.sroa.0482.3, %bb.s ] ; 3 uses
  %.sroa.23.3.lcssa1208 = phi <2 x float> [ %.sroa.23.3.peel, %bb.g ], [ %.sroa.23.3, %bb.s ] ; 3 uses
  %i.jx = icmp eq i32 %.0.ph1144, 0
  %or.cond5 = and i1 %i.r, %i.jx
  br i1 %or.cond5, label %bb.u, label %bb.z

bb.u:                                             ; preds = %.loopexit1328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZNK4pbrt17VolPathIntegrator2LiENS_15RayDifferentialERNS_18SampledWavelengthsENS_7SamplerERNS_13ScratchBufferEPNS_14VisibleSurfaceE.ucRho, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  store <8 x float> <float f0x3F5B21D5, float 5.703670e-01, float 3.818230e-01, float 8.518440e-01, float 2.853280e-01, float 7.642620e-01, float 7.333800e-01, float 1.140730e-01>, ptr %29, align 16, !tbaa !189
  store <8 x float> <float 5.426630e-01, float 3.444650e-01, float 1.272740e-01, float 4.148480e-01, float f0x3F76F694, float f0x3F727935, float 5.940890e-01, float 6.434630e-01>, ptr %i.s, align 16, !tbaa !189
  store <8 x float> <float 9.510900e-02, float 1.703690e-01, float 8.254440e-01, float 2.633590e-01, float 4.294670e-01, float 4.544690e-01, float 2.444600e-01, float 8.164590e-01>, ptr %i.t, align 16, !tbaa !189
  store <8 x float> <float f0x3F419210, float f0x3F3B33B9, float 5.161650e-01, float 1.528520e-01, float 1.808880e-01, float 2.141740e-01, float 8.985790e-01, float 5.038970e-01>, ptr %i.u, align 16, !tbaa !189
  %.sroa.043.0.copyload = load <2 x float>, ptr %i.v, align 4 ; 6 uses
  %.sroa.244.0.copyload = load float, ptr %.sroa.244.0..sroa_idx, align 4 ; 3 uses
  %.sroa.021.0.copyload.i.i.i = load <2 x float>, ptr %i.w, align 8 ; 2 uses
  %.sroa.222.0.copyload.i.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i.i, align 8
  %foldExtExtBinop1164 = fmul <2 x float> %.sroa.043.0.copyload, %.sroa.021.0.copyload.i.i.i
  %foldExtExtBinop1166 = fmul <2 x float> %.sroa.043.0.copyload, %.sroa.021.0.copyload.i.i.i
  %shift1168 = shufflevector <2 x float> %foldExtExtBinop1166, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1169 = fadd <2 x float> %foldExtExtBinop1164, %shift1168
  %i.jy = extractelement <2 x float> %foldExtExtBinop1169, i64 0
  %i.jz = fmul float %.sroa.244.0.copyload, %.sroa.222.0.copyload.i.i.i
  %i.ka = fadd float %i.jz, %i.jy
  %.sroa.013.0.copyload.i.i.i = load <2 x float>, ptr %i.x, align 4 ; 2 uses
  %.sroa.214.0.copyload.i.i.i = load float, ptr %.sroa.214.0..sroa_idx.i.i.i, align 4
  %foldExtExtBinop1171 = fmul <2 x float> %.sroa.043.0.copyload, %.sroa.013.0.copyload.i.i.i
  %foldExtExtBinop1173 = fmul <2 x float> %.sroa.043.0.copyload, %.sroa.013.0.copyload.i.i.i
  %shift1175 = shufflevector <2 x float> %foldExtExtBinop1173, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1176 = fadd <2 x float> %foldExtExtBinop1171, %shift1175
  %i.kb = extractelement <2 x float> %foldExtExtBinop1176, i64 0
  %i.kc = fmul float %.sroa.244.0.copyload, %.sroa.214.0.copyload.i.i.i
  %i.kd = fadd float %i.kc, %i.kb
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.y, align 8 ; 2 uses
  %.sroa.26.0.copyload.i.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 8
  %foldExtExtBinop1178 = fmul <2 x float> %.sroa.043.0.copyload, %.sroa.05.0.copyload.i.i.i
  %foldExtExtBinop1180 = fmul <2 x float> %.sroa.043.0.copyload, %.sroa.05.0.copyload.i.i.i
  %shift1182 = shufflevector <2 x float> %foldExtExtBinop1180, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1183 = fadd <2 x float> %foldExtExtBinop1178, %shift1182
  %i.ke = extractelement <2 x float> %foldExtExtBinop1183, i64 0
  %i.kf = fmul float %.sroa.244.0.copyload, %.sroa.26.0.copyload.i.i.i
  %i.kg = fadd float %i.kf, %i.ke
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.ka, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.kd, i64 1
  %i.kh = invoke { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(44) %26, <2 x float> %.sroa.0.4.vec.insert.i.i.i, float %i.kg, ptr nonnull %i.e, i64 16, ptr nonnull %29, i64 16)
          to label %_ZNK4pbrt4BSDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE.exit unwind label %bb.w ; 2 uses

_ZNK4pbrt4BSDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE.exit: ; preds = %bb.u
  %i.ki = extractvalue { <2 x float>, <2 x float> } %i.kh, 0
  %i.kj = extractvalue { <2 x float>, <2 x float> } %i.kh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  invoke void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89) %30, ptr noundef nonnull align 8 dereferenceable(248) %24, <2 x float> %i.ki, <2 x float> %i.kj, ptr noundef nonnull align 4 dereferenceable(32) %2)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %_ZNK4pbrt4BSDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(89) %5, ptr noundef nonnull align 4 dereferenceable(89) %30, i64 89, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %_ZNK4pbrt4BSDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE.exit
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.pn156.pn = phi { ptr, i32 } [ %i.kk, %bb.w ], [ %i.kl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  br label %bb.av

bb.z:                                             ; preds = %bb.v, %.loopexit1328
  %i.km = load i8, ptr %i.z, align 8, !tbaa !432, !range !136, !noundef !137
  %35 = trunc nuw i8 %i.km to i1
  %i.kn = trunc nuw i8 %.0115.ph1140 to i1
  %or.cond7 = select i1 %35, i1 %i.kn, i1 false
  br i1 %or.cond7, label %_ZN4pbrt4BSDF10RegularizeEv.exit, label %bb.aa

_ZN4pbrt4BSDF10RegularizeEv.exit:                 ; preds = %bb.z
  %i.ko = load i64, ptr %i.aa, align 8, !tbaa !145
  %i.kp = add nsw i64 %i.ko, 1
  store i64 %i.kp, ptr %i.aa, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.kq = load i64, ptr %26, align 8, !tbaa !362  ; 2 uses
  %i.kr = and i64 %i.kq, 144115188075855871
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = lshr i64 %i.kq, 57
  %i.ku = trunc nuw nsw i64 %i.kt to i32
  %i.kv = add nsw i32 %i.ku, -1
  call void @_ZN4pbrt6detail8DispatchIRZNS_4BxDF10RegularizeEvEUlT_E_vNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef %i.ks, i32 noundef %i.kv)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4pbrt4BSDF10RegularizeEv.exit, %bb.z
  %i.kw = load i64, ptr %i.ab, align 8, !tbaa !145
  %i.kx = add nsw i64 %i.kw, 1
  store i64 %i.kx, ptr %i.ab, align 8, !tbaa !145
  %i.ky = add nuw nsw i32 %.0.ph1144, 1           ; 3 uses
  %i.kz = load i32, ptr %i.ac, align 8, !tbaa !431
  %i.la = icmp eq i32 %.0.ph1144, %i.kz
  br i1 %i.la, label %.loopexit606.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  %i.lb = load i64, ptr %26, align 8, !tbaa !362  ; 2 uses
  %i.lc = and i64 %i.lb, 144115188075855871
  %i.ld = inttoptr i64 %i.lc to ptr
  %i.le = lshr i64 %i.lb, 57
  %i.lf = trunc nuw nsw i64 %i.le to i32
  %i.lg = add nsw i32 %i.lf, -1
  %i.lh = call noundef i32 @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF5FlagsEvEUlT_E_NS_9BxDFFlagsENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_PKvi(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef %i.ld, i32 noundef %i.lg)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  %i.li = and i32 %i.lh, 12
  %.not603 = icmp eq i32 %i.li, 0
  br i1 %.not603, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lj = load i64, ptr %i.ad, align 8, !tbaa !145
  %i.lk = add nsw i64 %i.lj, 1
  store i64 %i.lk, ptr %i.ad, align 8, !tbaa !145
  %i.ll = load i64, ptr %3, align 8, !tbaa !53
  store i64 %i.ll, ptr %31, align 8, !tbaa !53
  %i.lm = call { <2 x float>, <2 x float> } @_ZNK4pbrt14PathIntegrator8SampleLdERKNS_18SurfaceInteractionEPKNS_4BSDFERNS_18SampledWavelengthsENS_7SamplerE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(248) %24, ptr noundef nonnull %26, ptr noundef nonnull align 4 dereferenceable(32) %2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %31) ; 2 uses
  %i.ln = extractvalue { <2 x float>, <2 x float> } %i.lm, 0 ; 2 uses
  %i.lo = extractvalue { <2 x float>, <2 x float> } %i.lm, 1 ; 2 uses
  %i.lp = shufflevector <2 x float> %i.ln, <2 x float> %i.lo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr1188 = freeze <4 x float> %i.lp
  %i.lq = fcmp une <4 x float> %.fr1188, zeroinitializer
  %i.lr = bitcast <4 x i1> %i.lq to i4
  %.not1189 = icmp eq i4 %i.lr, 0
  br i1 %.not1189, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ls = load i64, ptr %i.ae, align 8, !tbaa !145
  %i.lt = add nsw i64 %i.ls, 1
  store i64 %i.lt, ptr %i.ae, align 8, !tbaa !145
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.lu = fmul <2 x float> %i.be, %i.ln
  %i.lv = fadd <2 x float> %.sroa.0482.3.lcssa1221, %i.lu
  %i.lw = fmul <2 x float> %i.bd, %i.lo
  %i.lx = fadd <2 x float> %.sroa.23.3.lcssa1208, %i.lw
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ae
  %.sroa.0482.4 = phi <2 x float> [ %i.lv, %bb.ae ], [ %.sroa.0482.3.lcssa1221, %bb.ab ] ; 3 uses
  %.sroa.23.4 = phi <2 x float> [ %i.lx, %bb.ae ], [ %.sroa.23.3.lcssa1208, %bb.ab ] ; 3 uses
  %i.ly = load float, ptr %i.i, align 4, !tbaa !442 ; 4 uses
  %i.lz = load float, ptr %i.j, align 8, !tbaa !443
  %i.ma = fneg float %i.lz                        ; 4 uses
  %i.mb = load float, ptr %i.k, align 4, !tbaa !295 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.mc = load i64, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.md = and i64 %i.mc, 144115188075855871
  %i.me = inttoptr i64 %i.md to ptr
  %i.mf = lshr i64 %i.mc, 57
  %i.mg = trunc nuw nsw i64 %i.mf to i32
  %i.mh = add nsw i32 %i.mg, -1
  %i.mi = call noundef float @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get1DEvEUlT_E_fNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef %i.me, i32 noundef %i.mh)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.mj = load i64, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.mk = and i64 %i.mj, 144115188075855871
  %i.ml = inttoptr i64 %i.mk to ptr
  %i.mm = lshr i64 %i.mj, 57
  %i.mn = trunc nuw nsw i64 %i.mm to i32
  %i.mo = add nsw i32 %i.mn, -1
  %i.mp = invoke <2 x float> @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get2DEvEUlT_E_NS_6Point2IfEENS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef %i.ml, i32 noundef %i.mo)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.mq = fneg float %i.mb
  %i.mr = fneg float %i.ly
  %.sroa.0.0.vec.insert.i264 = insertelement <2 x float> poison, float %i.mr, i64 0
  %.sroa.0.4.vec.insert.i265 = insertelement <2 x float> %.sroa.0.0.vec.insert.i264, float %i.ma, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  invoke void @_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.128") align 4 %32, ptr noundef nonnull align 8 dereferenceable(44) %26, <2 x float> %.sroa.0.4.vec.insert.i265, float %i.mq, float noundef %i.mi, <2 x float> %i.mp, i32 noundef 0, i32 noundef 3)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ms = load i8, ptr %i.af, align 4, !tbaa !379, !range !136, !noundef !137
  %i.mt = trunc nuw i8 %i.ms to i1
  br i1 %i.mt, label %bb.aj, label %.thread866

bb.ai:                                            ; preds = %bb.af, %bb.ag
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit:                                        ; preds = %bb.ak
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aj:                                            ; preds = %bb.ah
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.ag, align 8 ; 5 uses
  %.sroa.228.0.copyload = load float, ptr %.sroa.228.0..sroa_idx, align 8 ; 4 uses
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.ah, align 8 ; 2 uses
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.025.0.copyload, i64 0
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.027.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.025.0.copyload, i64 1
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.027.0.copyload, i64 1 ; 2 uses
  %i.mv = fmul float %.sroa.228.0.copyload, %.sroa.226.0.copyload ; 2 uses
  %i.mw = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i, float %.sroa.04.4.vec.extract.i.i, float %i.mv)
  %i.mx = fneg float %i.mv
  %i.my = call noundef float @llvm.fma.f32(float %.sroa.226.0.copyload, float %.sroa.228.0.copyload, float %i.mx)
  %i.mz = fadd float %i.mw, %i.my
  %i.na = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i, float %.sroa.04.0.vec.extract.i.i, float %i.mz)
  %i.nb = call noundef float @llvm.fabs.f32(float %i.na)
  %.sroa.0.0.copyload.i273 = load <2 x float>, ptr %32, align 8
  %.sroa.6.0.copyload.i275 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i274, align 8, !tbaa !47
  %i.nc = load float, ptr %i.ai, align 4, !tbaa !444 ; 2 uses
  %i.nd = insertelement <2 x float> poison, float %i.nb, i64 0
  %i.ne = shufflevector <2 x float> %i.nd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nf = fmul <2 x float> %.sroa.0.0.copyload.i273, %i.ne
  %i.ng = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ni = fdiv <2 x float> %i.nf, %i.nh
  %i.nj = fmul <2 x float> %i.be, %i.ni           ; 4 uses
  %i.nk = fmul <2 x float> %.sroa.6.0.copyload.i275, %i.ne
  %i.nl = fdiv <2 x float> %i.nk, %i.nh
  %i.nm = fmul <2 x float> %i.bd, %i.nl           ; 4 uses
  %i.nn = load i8, ptr %i.aj, align 8, !tbaa !445, !range !136, !noundef !137
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit304, label %_ZNK4pbrt4BSDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit304: ; preds = %bb.aj
  %.sroa.05.0.copyload.i.i.i307 = load <2 x float>, ptr %i.y, align 8 ; 3 uses
  %.sroa.26.0.copyload.i.i.i309 = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i35.i.i.i310 = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i307, i64 0
  %.sroa.01.4.vec.extract.i37.i.i.i311 = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i307, i64 1 ; 2 uses
  %i.np = fmul float %.sroa.01.4.vec.extract.i37.i.i.i311, %i.ma
  %i.nq = fmul float %i.ly, %.sroa.01.0.vec.extract.i35.i.i.i310
  %i.nr = fsub float %i.np, %i.nq
  %i.ns = fmul float %i.mb, %.sroa.26.0.copyload.i.i.i309
  %i.nt = fsub float %i.nr, %i.ns                 ; 2 uses
  %i.nu = fcmp oeq float %i.nt, 0.000000e+00
  br i1 %i.nu, label %_ZNK4pbrt4BSDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit304
  %.sroa.222.0.copyload.i.i.i313 = load float, ptr %.sroa.222.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.021.0.copyload.i.i.i314 = load <2 x float>, ptr %i.w, align 8 ; 4 uses
  %.sroa.01.0.vec.extract.i.i.i.i315 = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i314, i64 0
  %.sroa.01.4.vec.extract.i.i.i.i316 = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i314, i64 1
  %.sroa.214.0.copyload.i.i.i318 = load float, ptr %.sroa.214.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.013.0.copyload.i.i.i319 = load <2 x float>, ptr %i.x, align 4 ; 4 uses
  %.sroa.01.0.vec.extract.i31.i.i.i320 = extractelement <2 x float> %.sroa.013.0.copyload.i.i.i319, i64 0
  %.sroa.01.4.vec.extract.i33.i.i.i321 = extractelement <2 x float> %.sroa.013.0.copyload.i.i.i319, i64 1
  %i.nv = insertelement <2 x float> poison, float %.sroa.228.0.copyload, i64 0
  %i.nw = shufflevector <2 x float> %i.nv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nx = insertelement <2 x float> poison, float %.sroa.222.0.copyload.i.i.i313, i64 0
  %i.ny = insertelement <2 x float> %i.nx, float %.sroa.214.0.copyload.i.i.i318, i64 1
  %i.nz = fmul <2 x float> %i.nw, %i.ny
  %i.oa = shufflevector <2 x float> %.sroa.027.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ob = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i319, <2 x float> %.sroa.021.0.copyload.i.i.i314, <2 x i32> <i32 3, i32 0>
  %i.oc = fmul <2 x float> %i.oa, %i.ob
  %i.od = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i314, <2 x float> %.sroa.013.0.copyload.i.i.i319, <2 x i32> <i32 0, i32 3>
  %i.oe = fmul <2 x float> %.sroa.027.0.copyload, %i.od
  %i.of = fadd <2 x float> %i.oc, %i.oe
  %i.og = fadd <2 x float> %i.nz, %i.of
  %i.oh = fmul float %.sroa.228.0.copyload, %.sroa.26.0.copyload.i.i.i309
  %foldExtExtBinop1185 = fmul <2 x float> %.sroa.027.0.copyload, %.sroa.05.0.copyload.i.i.i307
  %i.oi = extractelement <2 x float> %foldExtExtBinop1185, i64 0
  %i.oj = fmul float %.sroa.04.4.vec.extract.i.i, %.sroa.01.4.vec.extract.i37.i.i.i311
  %i.ok = fadd float %i.oi, %i.oj
  %i.ol = fadd float %i.oh, %i.ok
  %i.om = fmul float %.sroa.01.4.vec.extract.i.i.i.i316, %i.ma
  %i.on = fmul float %i.ly, %.sroa.01.0.vec.extract.i.i.i.i315
  %i.oo = fsub float %i.om, %i.on
  %i.op = fmul float %i.mb, %.sroa.222.0.copyload.i.i.i313
  %i.oq = fsub float %i.oo, %i.op
  %.sroa.0.0.vec.insert.i.i.i322 = insertelement <2 x float> poison, float %i.oq, i64 0
  %i.or = fmul float %.sroa.01.4.vec.extract.i33.i.i.i321, %i.ma
  %i.os = fmul float %i.ly, %.sroa.01.0.vec.extract.i31.i.i.i320
  %i.ot = fsub float %i.or, %i.os
  %i.ou = fmul float %i.mb, %.sroa.214.0.copyload.i.i.i318
  %i.ov = fsub float %i.ot, %i.ou
  %.sroa.0.4.vec.insert.i.i.i323 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i322, float %i.ov, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i323, ptr %9, align 8
  store float %i.nt, ptr %.sroa.22.0..sroa_idx.i.i, align 8
  store <2 x float> %i.og, ptr %10, align 8
  store float %i.ol, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  store i32 0, ptr %i.a, align 4, !tbaa !373
  store i32 3, ptr %i.b, align 4, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  store ptr %9, ptr %11, align 8, !tbaa !375
  store ptr %10, ptr %i.ak, align 8, !tbaa !375
  store ptr %i.a, ptr %i.al, align 8, !tbaa !165
  store ptr %i.b, ptr %i.am, align 8, !tbaa !165
  %i.ow = load i64, ptr %26, align 8, !tbaa !362  ; 2 uses
  %i.ox = and i64 %i.ow, 144115188075855871
  %i.oy = inttoptr i64 %i.ox to ptr
  %i.oz = lshr i64 %i.ow, 57
  %i.pa = trunc nuw nsw i64 %i.oz to i32
  %i.pb = add nsw i32 %i.pa, -1
  %i.pc = invoke noundef float @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF3PDFENS_7Vector3IfEES4_NS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_fNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS7_PKvi(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.oy, i32 noundef %i.pb)
          to label %_ZNK4pbrt4BSDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE.exit unwind label %.loopexit

_ZNK4pbrt4BSDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre856 = load i8, ptr %i.af, align 4, !tbaa !379, !range !136
  %i.pd = trunc nuw i8 %.pre856 to i1
  br i1 %i.pd, label %_ZNK4pbrt4BSDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZNK4pbrt4BSDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE.exit
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #41
          to label %.noexc328 unwind label %.loopexit.split-lp

.noexc328:                                        ; preds = %bb.al
  unreachable

_ZNK4pbrt4BSDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread: ; preds = %bb.aj, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit304, %_ZNK4pbrt4BSDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE.exit
  %i.pe = phi float [ %i.pc, %_ZNK4pbrt4BSDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE.exit ], [ %i.nc, %bb.aj ], [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit304 ] ; 4 uses
  %i.pf = load i32, ptr %i.an, align 8, !tbaa !382 ; 4 uses
  %i.pg = and i32 %i.pf, 16
  %.not604 = icmp eq i32 %i.pg, 0
  %i.ph = and i32 %i.pf, 16
  %i.pi = icmp ne i32 %i.ph, 0                    ; 3 uses
  %36 = zext i1 %.not604 to i8
  %37 = or i8 %.0115.ph1140, %36
  %i.pj = and i32 %i.pf, 2
  %.not605 = icmp eq i32 %i.pj, 0
  %i.pk = load float, ptr %i.ao, align 4          ; 3 uses
  %i.pl = fmul float %i.pk, %i.pk
  %i.pm = fmul float %.0107.ph1142, %i.pl
  %.1108 = select i1 %.not605, float %.0107.ph1142, float %i.pm ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  %i.pn = load i8, ptr %i.h, align 8, !tbaa !286, !range !136, !noundef !137
  %i.po = trunc nuw i8 %i.pn to i1
  br i1 %i.po, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNK4pbrt4BSDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.124, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #41
          to label %.noexc336 unwind label %bb.ar

.noexc336:                                        ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %_ZNK4pbrt4BSDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %33, ptr noundef nonnull align 8 dereferenceable(248) %24, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ap, ptr noundef nonnull align 8 dereferenceable(12) %i.aq, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %23, ptr noundef nonnull align 4 dereferenceable(48) %33, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #38
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.ag, align 8
  %.sroa.212.0.copyload = load float, ptr %.sroa.228.0..sroa_idx, align 8
  invoke void @_ZNK4pbrt18SurfaceInteraction8SpawnRayERKNS_15RayDifferentialERKNS_4BSDFENS_7Vector3IfEEif(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::RayDifferential") align 8 %34, ptr noundef nonnull align 8 dereferenceable(248) %24, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(44) %26, <2 x float> %.sroa.011.0.copyload, float %.sroa.212.0.copyload, i32 noundef %i.pf, float noundef %i.pk)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(92) %34, i64 28, i1 false)
  %i.pp = load i64, ptr %i.at, align 8, !tbaa !264
  store i64 %i.pp, ptr %i.as, align 8, !tbaa !264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.au, ptr noundef nonnull align 8 dereferenceable(52) %i.av, i64 52, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  %i.pq = extractelement <2 x float> %i.nj, i64 0
  %i.pr = fmul float %i.pq, %.1108                ; 2 uses
  %i.ps = extractelement <2 x float> %i.nj, i64 1
  %i.pt = fmul float %i.ps, %.1108                ; 2 uses
  %i.pu = extractelement <2 x float> %i.nm, i64 0
  %i.pv = fmul float %i.pu, %.1108                ; 2 uses
  %i.pw = extractelement <2 x float> %i.nm, i64 1
  %i.px = fmul float %i.pw, %.1108                ; 2 uses
  %i.py = fcmp olt float %i.pr, %i.pt
  %.sroa.speculated.i = select i1 %i.py, float %i.pt, float %i.pr ; 2 uses
  %i.pz = fcmp olt float %.sroa.speculated.i, %i.pv
  %.sroa.speculated.1.i = select i1 %i.pz, float %i.pv, float %.sroa.speculated.i ; 2 uses
  %i.qa = fcmp olt float %.sroa.speculated.1.i, %i.px
  %.sroa.speculated.2.i = select i1 %i.qa, float %i.px, float %.sroa.speculated.1.i ; 2 uses
  %i.qb = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  %i.qc = icmp ne i32 %.0.ph1144, 0
  %or.cond9 = select i1 %i.qb, i1 %i.qc, i1 false
  br i1 %or.cond9, label %bb.ap, label %.outer

bb.ap:                                            ; preds = %bb.ao
  %i.qd = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.qe = fcmp ogt float %i.qd, 0.000000e+00
  %.sroa.speculated = select i1 %i.qe, float %i.qd, float 0.000000e+00 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.qf = load i64, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.qg = and i64 %i.qf, 144115188075855871
  %i.qh = inttoptr i64 %i.qg to ptr
  %i.qi = lshr i64 %i.qf, 57
  %i.qj = trunc nuw nsw i64 %i.qi to i32
  %i.qk = add nsw i32 %i.qj, -1
  %i.ql = invoke noundef float @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get1DEvEUlT_E_fNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.qh, i32 noundef %i.qk)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.qm = fcmp uge float %i.ql, %.sroa.speculated
  br i1 %i.qm, label %.thread, label %.thread866

bb.ar:                                            ; preds = %bb.am
  %i.qn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  br label %bb.au

bb.as:                                            ; preds = %bb.an
  %i.qo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.thread:                                          ; preds = %bb.aq
  %i.qq = fsub float 1.000000e+00, %.sroa.speculated
  %i.qr = insertelement <2 x float> poison, float %i.qq, i64 0
  %i.qs = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qt = fdiv <2 x float> %i.nj, %i.qs
  %i.qu = fdiv <2 x float> %i.nm, %i.qs
  br label %.outer

.thread866:                                       ; preds = %bb.ah, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  br label %.loopexit606.sink.split

.outer:                                           ; preds = %bb.ao, %.thread
  %.sroa.19.4 = phi <2 x float> [ %i.qu, %.thread ], [ %i.nm, %bb.ao ] ; 2 uses
  %.sroa.0441.4 = phi <2 x float> [ %i.qt, %.thread ], [ %i.nj, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  %i.qv = fmul float %i.pe, %i.pe                 ; 2 uses
  %i.qw = call float @llvm.fabs.f32(float %i.qv)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.qx = load i64, ptr %i.f, align 8, !tbaa !145, !noalias !1155
  %i.qy = add nsw i64 %i.qx, 1
  store i64 %i.qy, ptr %i.f, align 8, !tbaa !145, !noalias !1155
  %i.qz = load i64, ptr %i.g, align 8, !tbaa !55, !noalias !1155
  %i.ra = and i64 %i.qz, 144115188075855871
  %.not.i1118 = icmp eq i64 %i.ra, 0
  br i1 %.not.i1118, label %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.thread, label %_ZNK4pbrt10Integrator9IntersectERKNS_3RayEf.exit.lr.ph

bb.au:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ar, %bb.as, %bb.at, %bb.ai
  %.pn161.pn = phi { ptr, i32 } [ %i.mu, %bb.ai ], [ %i.qp, %bb.at ], [ %i.qo, %bb.as ], [ %i.qn, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.y
  %.pn161.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn, %bb.y ], [ %.pn161.pn, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  resume { ptr, i32 } %.pn161.pn.pn.pn.pn

.loopexit606.sink.split:                          ; preds = %bb.aa, %.thread866
  %.sroa.23.6589.ph = phi <2 x float> [ %.sroa.23.4, %.thread866 ], [ %.sroa.23.3.lcssa1208, %bb.aa ]
  %.sroa.0482.6588.ph = phi <2 x float> [ %.sroa.0482.4, %.thread866 ], [ %.sroa.0482.3.lcssa1221, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  br label %.loopexit606

.loopexit606:                                     ; preds = %bb.q, %.loopexit606.sink.split, %.loopexit873
  %.2590 = phi i32 [ %i.ky, %.loopexit606.sink.split ], [ %.0.ph1053, %.loopexit873 ], [ %.0.ph1053, %bb.q ]
  %.sroa.23.6589 = phi <2 x float> [ %.sroa.23.6589.ph, %.loopexit606.sink.split ], [ %.sroa.23.01010, %.loopexit873 ], [ %i.iu, %bb.q ]
  %.sroa.0482.6588 = phi <2 x float> [ %.sroa.0482.6588.ph, %.loopexit606.sink.split ], [ %.sroa.0482.01016, %.loopexit873 ], [ %i.is, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  %i.rb = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL10pathLengthE) ; 4 uses
  %i.rc = sext i32 %.2590 to i64                  ; 3 uses
  %i.rd = load <2 x i64>, ptr %i.rb, align 8, !tbaa !145
  %i.re = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.rc, i64 0
  %i.rf = add nsw <2 x i64> %i.rd, %i.re
  store <2 x i64> %i.rf, ptr %i.rb, align 8, !tbaa !145
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rb, i64 16 ; 2 uses
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !447
  %..i362 = call i64 @llvm.smin.i64(i64 %i.rc, i64 %i.rh)
  store i64 %..i362, ptr %i.rg, align 8, !tbaa !447
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rb, i64 24 ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !448
  %i.rk = call i64 @llvm.smax.i64(i64 %i.rc, i64 %i.rj)
  store i64 %i.rk, ptr %i.ri, align 8, !tbaa !448
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0482.6588, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.23.6589, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

declare void @_ZN4pbrt14VisibleSurfaceC1ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(248), <2 x float>, <2 x float>, ptr noundef nonnull align 4 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt14PathIntegrator8SampleLdERKNS_18SurfaceInteractionEPKNS_4BSDFERNS_18SampledWavelengthsENS_7SamplerE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %3, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %4) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %6 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %class.anon.423, align 8            ; 6 uses
  %8 = alloca %"class.pbrt::Point2.99", align 8   ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %9 = alloca %class.anon.421, align 8            ; 7 uses
  %10 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %11 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %12 = alloca %class.anon.419, align 1           ; 3 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %13 = alloca %class.anon.469, align 8           ; 5 uses
  %14 = alloca %class.anon.390, align 1           ; 3 uses
  %15 = alloca %class.anon.435, align 1           ; 3 uses
  %16 = alloca %"class.pbrt::LightSampleContext", align 8 ; 10 uses
  %17 = alloca %"class.pstd::optional.123", align 8 ; 6 uses
  %18 = alloca %"class.pstd::optional.126", align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %16, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.h = load i64, ptr %2, align 8, !tbaa !362    ; 2 uses
  %i.i = and i64 %i.h, 144115188075855871
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = lshr i64 %i.h, 57
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = add nsw i32 %i.l, -1
end_hunk_1
