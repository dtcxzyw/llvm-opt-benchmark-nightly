Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0
@_ZN4pbrtL19nBufferCacheLookupsE = internal thread_local unnamed_addr global i64 0, align 8
@.str.115 = private unnamed_addr constant [46 x i8] c"Intersections/Ray-Triangle intersection tests\00", align 1
@_ZN4pbrtL11nTriHitsSumE = internal thread_local unnamed_addr global i64 0, align 8
@_ZN4pbrtL12nTriTestsSumE = internal thread_local unnamed_addr global i64 0, align 8
@.str.116 = private unnamed_addr constant [17 x i8] c"Memory/Triangles\00", align 1
@.str.117 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/shapes.h\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"LengthSquared(ng)\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.120 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/print.h\00", align 1
@.str.121 = private unnamed_addr constant [42 x i8] c"Non-integral type provided for %* format.\00", align 1
@.str.122 = private unnamed_addr constant [39 x i8] c"Non-integral type passed to %d format.\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"Excess values passed to Printf.\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.124 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.125 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.126 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"MEH\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"Memory/Curves\00", align 1
@.str.132 = private unnamed_addr constant [43 x i8] c"Intersections/Ray-curve intersection tests\00", align 1
@.str.133 = private unnamed_addr constant [16 x i8] c"Geometry/Curves\00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"Geometry/Split curves\00", align 1
@.str.135 = private unnamed_addr constant [52 x i8] c"Intersections/Ray-bilinear patch intersection tests\00", align 1
@_ZN4pbrtL8nBLPHitsE = internal thread_local unnamed_addr global i64 0, align 8
@_ZN4pbrtL11nBLPHitsSumE = internal thread_local unnamed_addr global i64 0, align 8
@_ZN4pbrtL9nBLPTestsE = internal thread_local unnamed_addr global i64 0, align 8
@_ZN4pbrtL12nBLPTestsSumE = internal thread_local unnamed_addr global i64 0, align 8
@_ZTIZN4pbrt5Image23GetSamplingDistributionIZNS0_23GetSamplingDistributionEvEUlNS_6Point2IfEEE_EENS_7Array2DIfEET_RKNS_7Bounds2IfEEN4pstd3pmr21polymorphic_allocatorISt4byteEEEUlllE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN4pbrt5Image23GetSamplingDistributionIZNS0_23GetSamplingDistributionEvEUlNS_6Point2IfEEE_EENS_7Array2DIfEET_RKNS_7Bounds2IfEEN4pstd3pmr21polymorphic_allocatorISt4byteEEEUlllE_ }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSZN4pbrt5Image23GetSamplingDistributionIZNS0_23GetSamplingDistributionEvEUlNS_6Point2IfEEE_EENS_7Array2DIfEET_RKNS_7Bounds2IfEEN4pstd3pmr21polymorphic_allocatorISt4byteEEEUlllE_ = linkonce_odr dso_local constant [177 x i8] c"ZN4pbrt5Image23GetSamplingDistributionIZNS0_23GetSamplingDistributionEvEUlNS_6Point2IfEEE_EENS_7Array2DIfEET_RKNS_7Bounds2IfEEN4pstd3pmr21polymorphic_allocatorISt4byteEEEUlllE_\00", comdat, align 1
@.str.136 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/pstd.h\00", align 1
@.str.137 = private unnamed_addr constant [17 x i8] c"Check failed: %s\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.139 = private unnamed_addr constant [24 x i8] c"Memory/Bilinear patches\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"Geometry/Spheres\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"Geometry/Cylinders\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"Geometry/Disks\00", align 1
@.str.143 = private unnamed_addr constant [51 x i8] c"Geometry/Triangles added from displacement mapping\00", align 1
@.str.144 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.145 = private unnamed_addr constant [54 x i8] c"Printf: Non-basic type %s passed for format string %s\00", align 1
@_ZTSN4pbrt9TransformE = linkonce_odr dso_local constant [18 x i8] c"N4pbrt9TransformE\00", comdat, align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"lu\00", align 1
@_ZTSN4pbrt6Point3IfEE = linkonce_odr dso_local constant [18 x i8] c"N4pbrt6Point3IfEE\00", comdat, align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@_ZTSN4pstd4spanIKN4pbrt6Point3IfEEEE = linkonce_odr dso_local constant [33 x i8] c"N4pstd4spanIKN4pbrt6Point3IfEEEE\00", comdat, align 1
@_ZTSN4pstd4spanIKfEE = linkonce_odr dso_local constant [17 x i8] c"N4pstd4spanIKfEE\00", comdat, align 1
@_ZTSN4pstd4spanIKN4pbrt7Normal3IfEEEE = linkonce_odr dso_local constant [34 x i8] c"N4pstd4spanIKN4pbrt7Normal3IfEEEE\00", comdat, align 1
@_ZTSN4pbrt7Vector3IfEE = linkonce_odr dso_local constant [19 x i8] c"N4pbrt7Vector3IfEE\00", comdat, align 1
@_ZTSN4pbrt11CurveCommonE = linkonce_odr dso_local constant [21 x i8] c"N4pbrt11CurveCommonE\00", comdat, align 1
@_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = linkonce_odr dso_local constant [53 x i8] c"NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\00", comdat, align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"TODO\00", align 1
@_ZTSN4pbrt6Point2IfEE = linkonce_odr dso_local constant [18 x i8] c"N4pbrt6Point2IfEE\00", comdat, align 1
@.str.154 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/sampling.h\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"func.size()\00", align 1
@.str.156 = private unnamed_addr constant [24 x i8] c"(size_t)nu * (size_t)nv\00", align 1
@.str.157 = private unnamed_addr constant [44 x i8] c"Check failed: %s > %s with %s = %s, %s = %s\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.160 = private unnamed_addr constant [45 x i8] c"Check failed: %s >= %s with %s = %s, %s = %s\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"func[i - 1]\00", align 1
@.str.162 = private unnamed_addr constant [57 x i8] c"Vertex uvs are currently required by Displace(). Sorry.\0A\00", align 1
@.str.163 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.164 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/containers.h\00", align 1
@.str.165 = private unnamed_addr constant [26 x i8] c"table[offset].has_value()\00", align 1
@_ZTIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_ }, comdat, align 8
@_ZTSZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_ = linkonce_odr dso_local constant [48 x i8] c"ZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_\00", comdat, align 1
@"_ZTIZZN4pbrt5Shape6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_9TransformESB_bRKNS_19ParameterDictionaryERKSt3mapIS6_NS_12FloatTextureESt4lessIS6_ESaISt4pairIS7_SG_EEEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEEENK3$_0clEPNS_6Point3IfEEPKNS_7Normal3IfEEPKNS_6Point2IfEEiEUliE_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZZN4pbrt5Shape6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_9TransformESB_bRKNS_19ParameterDictionaryERKSt3mapIS6_NS_12FloatTextureESt4lessIS6_ESaISt4pairIS7_SG_EEEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEEENK3$_0clEPNS_6Point3IfEEPKNS_7Normal3IfEEPKNS_6Point2IfEEiEUliE_" }, align 8
@"_ZTSZZN4pbrt5Shape6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_9TransformESB_bRKNS_19ParameterDictionaryERKSt3mapIS6_NS_12FloatTextureESt4lessIS6_ESaISt4pairIS7_SG_EEEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEEENK3$_0clEPNS_6Point3IfEEPKNS_7Normal3IfEEPKNS_6Point2IfEEiEUliE_" = internal constant [308 x i8] c"ZZN4pbrt5Shape6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_9TransformESB_bRKNS_19ParameterDictionaryERKSt3mapIS6_NS_12FloatTextureESt4lessIS6_ESaISt4pairIS7_SG_EEEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEEENK3$_0clEPNS_6Point3IfEEPKNS_7Normal3IfEEPKNS_6Point2IfEEiEUliE_\00", align 1
@_ZTSN4pbrt11InteractionE = linkonce_odr dso_local constant [21 x i8] c"N4pbrt11InteractionE\00", comdat, align 1
@_ZTSN4pbrt18SurfaceInteractionE = linkonce_odr dso_local constant [28 x i8] c"N4pbrt18SurfaceInteractionE\00", comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_shapes.cpp, ptr null }]

@_ZN4pbrt11CurveCommonC1EN4pstd4spanIKNS_6Point3IfEEEEffNS_9CurveTypeENS2_IKNS_7Normal3IfEEEEPKNS_9TransformESE_b = dso_local unnamed_addr alias void (ptr, ptr, i64, float, float, i32, ptr, i64, ptr, ptr, i1), ptr @_ZN4pbrt11CurveCommonC2EN4pstd4spanIKNS_6Point3IfEEEEffNS_9CurveTypeENS2_IKNS_7Normal3IfEEEEPKNS_9TransformESE_b
@_ZN4pbrt13BilinearPatchC1EPKNS_17BilinearPatchMeshEii = dso_local unnamed_addr alias void (ptr, ptr, i32, i32), ptr @_ZN4pbrt13BilinearPatchC2EPKNS_17BilinearPatchMeshEii

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt6Sphere6BoundsEv(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(42) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.pbrt::Bounds3", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.c = load float, ptr %1, align 8, !tbaa !25   ; 5 uses
  %i.d = fneg float %i.c                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !26 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !27 ; 4 uses
  %i.i = fcmp olt float %i.c, 0.000000e+00
  %i.j = select i1 %i.i, float %i.c, float %i.d
  %i.k = fcmp olt float %i.h, %i.f
  %.sroa.speculated.i.i = select i1 %i.k, float %i.h, float %i.f
  %.sroa.015.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.j, i64 0
  %.sroa.015.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.015.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.015.4.vec.insert.i.i, ptr %2, align 8
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sroa.speculated.i.i, ptr %.sroa.212.0..sroa_idx.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = fcmp ogt float %i.c, 0.000000e+00
  %i.n = select i1 %i.m, float %i.c, float %i.d
  %i.o = fcmp olt float %i.f, %i.h
  %.sroa.speculated.i34.i = select i1 %i.o, float %i.h, float %i.f
  %.sroa.015.0.vec.insert.i35.i = insertelement <2 x float> poison, float %i.n, i64 0
  %.sroa.015.4.vec.insert.i36.i = shufflevector <2 x float> %.sroa.015.0.vec.insert.i35.i, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.015.4.vec.insert.i36.i, ptr %i.l, align 4
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %.sroa.speculated.i34.i, ptr %.sroa.2.0..sroa_idx.i, align 4
  call void @_ZNK4pbrt9TransformclERKNS_7Bounds3IfEE(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %i.b, ptr noundef nonnull align 4 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void
}

declare void @_ZNK4pbrt9TransformclERKNS_7Bounds3IfEE(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 4 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt6Sphere6SampleENS_6Point2IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional") align 8 captures(none) initializes((0, 60), (64, 84), (88, 89)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(42) %1, <2 x float> %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %.sroa.0 = alloca { %"class.pbrt::Point3fi", float, %"class.pbrt::Vector3" }, align 8 ; 5 uses
  %i.a = load float, ptr %1, align 8, !tbaa !25   ; 5 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %2, i64 0
  %i.b = fmul float %.sroa.0.0.vec.extract.i, 2.000000e+00
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %2, i64 1
  %i.c = fmul float %.sroa.0.4.vec.extract.i, f0x40C90FDB ; 2 uses
  %i.d = tail call noundef float @cosf(float noundef %i.c) #32
  %i.e = tail call noundef float @sinf(float noundef %i.c) #32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.k = fsub float 1.000000e+00, %i.b            ; 3 uses
  %i.l = fmul float %i.k, %i.k
  %i.m = fsub float 1.000000e+00, %i.l            ; 2 uses
  %i.n = fcmp ogt float %i.m, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.n, float %i.m, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 2 uses
  %i.o = fmul float %sqrt.i.i, %i.d
  %i.p = fmul float %sqrt.i.i, %i.e
  %i.q = fmul float %i.a, %i.o
  %i.r = fmul float %i.a, %i.p
  %i.s = fmul float %i.k, %i.a
  %i.t = fadd float %i.q, 0.000000e+00            ; 3 uses
  %i.u = fadd float %i.r, 0.000000e+00            ; 3 uses
  %i.v = fadd float %i.s, 0.000000e+00            ; 3 uses
  %i.w = fmul float %i.t, %i.t
  %i.x = fmul float %i.u, %i.u
  %i.y = fadd float %i.w, %i.x
  %i.z = fmul float %i.v, %i.v
  %i.aa = fadd float %i.z, %i.y
  %sqrt.i.i90 = tail call noundef float @llvm.sqrt.f32(float %i.aa)
  %i.ab = fdiv float %i.a, %sqrt.i.i90            ; 3 uses
  %i.ac = fmul float %i.t, %i.ab                  ; 7 uses
  %i.ad = fmul float %i.u, %i.ab                  ; 7 uses
  %i.ae = fmul float %i.v, %i.ab                  ; 7 uses
  %i.af = tail call noundef float @llvm.fabs.f32(float %i.ac)
  %i.ag = tail call noundef float @llvm.fabs.f32(float %i.ad)
  %i.ah = tail call noundef float @llvm.fabs.f32(float %i.ae)
  %i.ai = fmul float %i.af, f0x34A00003           ; 3 uses
  %i.aj = fmul float %i.ag, f0x34A00003           ; 3 uses
  %i.ak = fmul float %i.ah, f0x34A00003           ; 3 uses
  %i.al = load <2 x float>, ptr %i.h, align 4, !tbaa !28
  %i.am = load <2 x float>, ptr %i.i, align 4, !tbaa !28
  %i.an = load <2 x float>, ptr %i.j, align 4, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.at = load float, ptr %i.as, align 4, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load i8, ptr %i.au, align 8, !tbaa !29, !range !30, !noundef !31
  %i.aw = fdiv float %i.ae, %i.a                  ; 3 uses
  %i.ax = fcmp olt float %i.aw, -1.000000e+00
  %i.ay = fcmp ogt float %i.aw, 1.000000e+00
  %..i.i = select i1 %i.ay, float 1.000000e+00, float %i.aw
  %.0.i.i = select i1 %i.ax, float -1.000000e+00, float %..i.i
  %i.az = tail call noundef float @acosf(float noundef %.0.i.i) #32
  %i.ba = tail call noundef float @atan2f(float noundef %i.ad, float noundef %i.ac) #32 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %4 = load <2 x float>, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load float, ptr %i.be, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.bg = fcmp oeq float %i.ai, 0.000000e+00
  br i1 %i.bg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bh = insertelement <2 x float> poison, float %i.ac, i64 0
  %.sroa.0.0.vec.insert.i.i110 = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

bb.c:                                             ; preds = %bb.a
  %i.bi = fsub float %i.ac, %i.ai                 ; 3 uses
  %or.cond.i.i.i.i.i = fcmp oeq float %i.bi, -inf
  br i1 %or.cond.i.i.i.i.i, label %_ZN4pbrt12SubRoundDownEff.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = fcmp oeq float %i.bi, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.bj, float -0.000000e+00, float %i.bi ; 2 uses
  %i.bk = bitcast float %spec.store.select.i.i.i.i.i to i32
  %i.bl = fcmp ogt float %spec.store.select.i.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i.i = select i1 %i.bl, i32 -1, i32 1
  %.0.i.i.i.i.i = add i32 %.0.v.i.i.i.i.i, %i.bk
  %i.bm = bitcast i32 %.0.i.i.i.i.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i.i

_ZN4pbrt12SubRoundDownEff.exit.i.i:               ; preds = %bb.d, %bb.c
  %.09.i.i.i.i.i = phi float [ %i.bm, %bb.d ], [ -inf, %bb.c ]
  %.sroa.0.0.vec.insert8.i.i = insertelement <2 x float> poison, float %.09.i.i.i.i.i, i64 0
  %i.bn = fadd float %i.ac, %i.ai                 ; 3 uses
  %or.cond.i.i.i.i = fcmp oeq float %i.bn, +inf
  br i1 %or.cond.i.i.i.i, label %_ZN4pbrt10AddRoundUpEff.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %i.bo = fcmp oeq float %i.bn, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.bo, float 0.000000e+00, float %i.bn ; 2 uses
  %i.bp = bitcast float %spec.store.select.i.i.i.i to i32
  %i.bq = fcmp ult float %spec.store.select.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i = select i1 %i.bq, i32 -1, i32 1
  %.0.i.i.i.i = add i32 %.0.v.i.i.i.i, %i.bp
  %i.br = bitcast i32 %.0.i.i.i.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i.i

_ZN4pbrt10AddRoundUpEff.exit.i.i:                 ; preds = %bb.e, %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %.010.i.i.i.i = phi float [ %i.br, %bb.e ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i.i ]
  %.sroa.0.4.vec.insert10.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i.i, float %.010.i.i.i.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i:   ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i.i, %bb.b
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i.i110, %bb.b ], [ %.sroa.0.4.vec.insert10.i.i, %_ZN4pbrt10AddRoundUpEff.exit.i.i ]
  %i.bs = fcmp oeq float %i.aj, 0.000000e+00
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.bt = insertelement <2 x float> poison, float %i.ad, i64 0
  %.sroa.0.0.vec.insert.i24.i = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

bb.g:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.bu = fsub float %i.ad, %i.aj                 ; 3 uses
  %or.cond.i.i.i.i9.i = fcmp oeq float %i.bu, -inf
  br i1 %or.cond.i.i.i.i9.i, label %_ZN4pbrt12SubRoundDownEff.exit.i13.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = fcmp oeq float %i.bu, 0.000000e+00
  %spec.store.select.i.i.i.i10.i = select i1 %i.bv, float -0.000000e+00, float %i.bu ; 2 uses
  %i.bw = bitcast float %spec.store.select.i.i.i.i10.i to i32
  %i.bx = fcmp ogt float %spec.store.select.i.i.i.i10.i, 0.000000e+00
  %.0.v.i.i.i.i11.i = select i1 %i.bx, i32 -1, i32 1
  %.0.i.i.i.i12.i = add i32 %.0.v.i.i.i.i11.i, %i.bw
  %i.by = bitcast i32 %.0.i.i.i.i12.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i13.i

_ZN4pbrt12SubRoundDownEff.exit.i13.i:             ; preds = %bb.h, %bb.g
  %.09.i.i.i.i14.i = phi float [ %i.by, %bb.h ], [ -inf, %bb.g ]
  %.sroa.0.0.vec.insert8.i15.i = insertelement <2 x float> poison, float %.09.i.i.i.i14.i, i64 0
  %i.bz = fadd float %i.ad, %i.aj                 ; 3 uses
  %or.cond.i.i.i16.i = fcmp oeq float %i.bz, +inf
  br i1 %or.cond.i.i.i16.i, label %_ZN4pbrt10AddRoundUpEff.exit.i20.i, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %i.ca = fcmp oeq float %i.bz, 0.000000e+00
  %spec.store.select.i.i.i17.i = select i1 %i.ca, float 0.000000e+00, float %i.bz ; 2 uses
  %i.cb = bitcast float %spec.store.select.i.i.i17.i to i32
  %i.cc = fcmp ult float %spec.store.select.i.i.i17.i, 0.000000e+00
  %.0.v.i.i.i18.i = select i1 %i.cc, i32 -1, i32 1
  %.0.i.i.i19.i = add i32 %.0.v.i.i.i18.i, %i.cb
  %i.cd = bitcast i32 %.0.i.i.i19.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i20.i

_ZN4pbrt10AddRoundUpEff.exit.i20.i:               ; preds = %bb.i, %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %.010.i.i.i21.i = phi float [ %i.cd, %bb.i ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i13.i ]
  %.sroa.0.4.vec.insert10.i22.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i15.i, float %.010.i.i.i21.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i: ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i20.i, %bb.f
  %.sroa.0.0.i23.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i24.i, %bb.f ], [ %.sroa.0.4.vec.insert10.i22.i, %_ZN4pbrt10AddRoundUpEff.exit.i20.i ]
  %i.ce = fcmp oeq float %i.ak, 0.000000e+00
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.cf = insertelement <2 x float> poison, float %i.ae, i64 0
  %.sroa.0.0.vec.insert.i41.i = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

bb.k:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.cg = fsub float %i.ae, %i.ak                 ; 3 uses
  %or.cond.i.i.i.i26.i = fcmp oeq float %i.cg, -inf
  br i1 %or.cond.i.i.i.i26.i, label %_ZN4pbrt12SubRoundDownEff.exit.i30.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = fcmp oeq float %i.cg, 0.000000e+00
  %spec.store.select.i.i.i.i27.i = select i1 %i.ch, float -0.000000e+00, float %i.cg ; 2 uses
  %i.ci = bitcast float %spec.store.select.i.i.i.i27.i to i32
  %i.cj = fcmp ogt float %spec.store.select.i.i.i.i27.i, 0.000000e+00
  %.0.v.i.i.i.i28.i = select i1 %i.cj, i32 -1, i32 1
  %.0.i.i.i.i29.i = add i32 %.0.v.i.i.i.i28.i, %i.ci
  %i.ck = bitcast i32 %.0.i.i.i.i29.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i30.i

_ZN4pbrt12SubRoundDownEff.exit.i30.i:             ; preds = %bb.l, %bb.k
  %.09.i.i.i.i31.i = phi float [ %i.ck, %bb.l ], [ -inf, %bb.k ]
  %.sroa.0.0.vec.insert8.i32.i = insertelement <2 x float> poison, float %.09.i.i.i.i31.i, i64 0
  %i.cl = fadd float %i.ae, %i.ak                 ; 3 uses
  %or.cond.i.i.i33.i = fcmp oeq float %i.cl, +inf
  br i1 %or.cond.i.i.i33.i, label %_ZN4pbrt10AddRoundUpEff.exit.i37.i, label %bb.m

bb.m:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %i.cm = fcmp oeq float %i.cl, 0.000000e+00
  %spec.store.select.i.i.i34.i = select i1 %i.cm, float 0.000000e+00, float %i.cl ; 2 uses
  %i.cn = bitcast float %spec.store.select.i.i.i34.i to i32
  %i.co = fcmp ult float %spec.store.select.i.i.i34.i, 0.000000e+00
  %.0.v.i.i.i35.i = select i1 %i.co, i32 -1, i32 1
  %.0.i.i.i36.i = add i32 %.0.v.i.i.i35.i, %i.cn
  %i.cp = bitcast i32 %.0.i.i.i36.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i37.i

_ZN4pbrt10AddRoundUpEff.exit.i37.i:               ; preds = %bb.m, %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %.010.i.i.i38.i = phi float [ %i.cp, %bb.m ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i30.i ]
  %.sroa.0.4.vec.insert10.i39.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i32.i, float %.010.i.i.i38.i, i64 1
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit: ; preds = %bb.j, %_ZN4pbrt10AddRoundUpEff.exit.i37.i
  %.sroa.0.0.i40.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i41.i, %bb.j ], [ %.sroa.0.4.vec.insert10.i39.i, %_ZN4pbrt10AddRoundUpEff.exit.i37.i ]
  %i.cq = trunc nuw i8 %i.av to i1                ; 2 uses
  %i.cr = fmul float %i.ap, %i.ac
  %i.cs = fmul float %i.ad, %i.ar
  %i.ct = fadd float %i.cr, %i.cs
  %i.cu = fmul float %i.ae, %i.at
  %i.cv = fadd float %i.ct, %i.cu                 ; 3 uses
  %i.cw = fmul float %i.cv, %i.cv
  %i.cx = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x float> %i.an, %i.cy
  %i.da = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x float> %i.al, %i.db
  %i.dd = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x float> %i.am, %i.de
  %i.dg = fadd <2 x float> %i.dc, %i.df
  %i.dh = fadd <2 x float> %i.cz, %i.dg           ; 3 uses
  %i.di = fmul <2 x float> %i.dh, %i.dh           ; 2 uses
  %shift = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.di, %shift
  %i.dj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dk = fadd float %i.cw, %i.dj
  %sqrt.i.i105 = tail call noundef float @llvm.sqrt.f32(float %i.dk) ; 2 uses
  %i.dl = fdiv float %i.cv, %sqrt.i.i105          ; 2 uses
  %i.dm = fneg float %i.dl
  %.sroa.8118.0 = select i1 %i.cq, float %i.dm, float %i.dl
  %i.dn = insertelement <2 x float> poison, float %sqrt.i.i105, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fdiv <2 x float> %i.dh, %i.do           ; 2 uses
  %i.dq = fneg <2 x float> %i.dp
  %.sroa.0114.0 = select i1 %i.cq, <2 x float> %i.dq, <2 x float> %i.dp
  %i.dr = fcmp olt float %i.ba, 0.000000e+00
  %i.ds = fadd float %i.ba, f0x40C90FDB
  %spec.select = select i1 %i.dr, float %i.ds, float %i.ba
  %i.dt = fsub float %i.az, %i.bd
  %i.du = fsub float %i.bf, %i.bd
  %i.dv = insertelement <2 x float> poison, float %spec.select, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.dt, i64 1
  %i.dx = insertelement <2 x float> %4, float %i.du, i64 1
  %i.dy = fdiv <2 x float> %i.dw, %i.dx
  store <2 x float> %.sroa.0.0.i.i, ptr %3, align 8, !tbaa !28
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.0.0.i23.i, ptr %i.dz, align 8, !tbaa !28
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %.sroa.0.0.i40.i, ptr %i.ea, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %.sroa.0, ptr noundef nonnull align 4 dereferenceable(128) %i.g, ptr noundef nonnull align 4 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx, i8 0, i64 16, i1 false)
  %i.eb = load float, ptr %i.bb, align 4, !tbaa !34
  %i.ec = load float, ptr %1, align 8, !tbaa !25
  %i.ed = fmul float %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !27
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !26
  %i.ei = fsub float %i.ef, %i.eh
  %i.ej = fmul float %i.ed, %i.ei
  %i.ek = fdiv float 1.000000e+00, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.el, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0, i64 40, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.0114.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %.sroa.8118.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %i.dy, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.sroa.3.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.3.0..sroa.8.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store float %i.ek, ptr %i.em, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Point3fi") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.pbrt::Point3.5", align 8    ; 2 uses
  %4 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %i.a = load float, ptr %2, align 4, !tbaa !54   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !55 ; 2 uses
  %i.d = fadd float %i.a, %i.c
  %i.e = fmul float %i.d, 5.000000e-01            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !54 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !55 ; 2 uses
  %i.j = fadd float %i.g, %i.i
  %i.k = fmul float %i.j, 5.000000e-01            ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !54 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !55 ; 3 uses
  %i.p = fadd float %i.m, %i.o
  %i.q = fmul float %i.p, 5.000000e-01            ; 4 uses
  %i.r = load float, ptr %1, align 4, !tbaa !28   ; 2 uses
  %i.s = fmul float %i.e, %i.r                    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !28 ; 2 uses
  %i.v = fmul float %i.k, %i.u                    ; 3 uses
  %i.w = fadd float %i.s, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !28 ; 2 uses
  %i.z = fmul float %i.q, %i.y                    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !28 ; 3 uses
  %i.ac = fadd float %i.z, %i.ab
  %i.ad = fadd float %i.w, %i.ac                  ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load float, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = fmul float %i.e, %i.af                  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !28 ; 2 uses
  %i.aj = fmul float %i.k, %i.ai                  ; 3 uses
  %i.ak = fadd float %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load float, ptr %i.al, align 4, !tbaa !28 ; 2 uses
  %i.an = fmul float %i.q, %i.am                  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !28 ; 3 uses
  %i.aq = fadd float %i.an, %i.ap
  %i.ar = fadd float %i.ak, %i.aq                 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load float, ptr %i.as, align 4, !tbaa !28 ; 2 uses
  %i.au = fmul float %i.e, %i.at                  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aw = load float, ptr %i.av, align 4, !tbaa !28 ; 2 uses
  %i.ax = fmul float %i.k, %i.aw                  ; 3 uses
  %i.ay = fadd float %i.au, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load float, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %i.bb = fmul float %i.q, %i.ba                  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !28 ; 3 uses
  %i.be = fadd float %i.bb, %i.bd
  %i.bf = fadd float %i.ay, %i.be                 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !28
  %i.bi = fmul float %i.e, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !28
  %i.bl = fmul float %i.k, %i.bk
  %i.bm = fadd float %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !28
  %i.bp = fmul float %i.q, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.br = load float, ptr %i.bq, align 4, !tbaa !28
  %i.bs = fadd float %i.bp, %i.br
  %i.bt = fadd float %i.bm, %i.bs                 ; 2 uses
  %i.bu = fsub float %i.c, %i.a                   ; 2 uses
  %i.bv = fcmp oeq float %i.bu, 0.000000e+00
  %i.bw = fsub float %i.i, %i.g                   ; 2 uses
  %i.bx = fcmp oeq float %i.bw, 0.000000e+00
  %or.cond = select i1 %i.bv, i1 %i.bx, i1 false
  %i.by = fsub float %i.o, %i.m
  %i.bz = fcmp oeq float %i.by, 0.000000e+00
  %or.cond347 = select i1 %or.cond, i1 %i.bz, i1 false
  br i1 %or.cond347, label %bb.b, label %_ZNK4pbrt8Point3fi7IsExactEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.ca = tail call noundef float @llvm.fabs.f32(float %i.s)
  %i.cb = tail call noundef float @llvm.fabs.f32(float %i.v)
  %i.cc = fadd float %i.ca, %i.cb
  %i.cd = tail call noundef float @llvm.fabs.f32(float %i.z)
  %i.ce = fadd float %i.cc, %i.cd
  %i.cf = tail call noundef float @llvm.fabs.f32(float %i.ab)
  %i.cg = fadd float %i.cf, %i.ce
  %i.ch = fmul float %i.cg, f0x34400002
  %.sroa.0289.0.vec.insert = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ci = tail call noundef float @llvm.fabs.f32(float %i.ag)
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.aj)
  %i.ck = fadd float %i.ci, %i.cj
  %i.cl = tail call noundef float @llvm.fabs.f32(float %i.an)
  %i.cm = fadd float %i.ck, %i.cl
  %i.cn = tail call noundef float @llvm.fabs.f32(float %i.ap)
  %i.co = fadd float %i.cn, %i.cm
  %i.cp = fmul float %i.co, f0x34400002
  %.sroa.0289.4.vec.insert297 = insertelement <2 x float> %.sroa.0289.0.vec.insert, float %i.cp, i64 1
  %i.cq = tail call noundef float @llvm.fabs.f32(float %i.au)
  %i.cr = tail call noundef float @llvm.fabs.f32(float %i.ax)
  %i.cs = fadd float %i.cq, %i.cr
  %i.ct = tail call noundef float @llvm.fabs.f32(float %i.bb)
  %i.cu = fadd float %i.cs, %i.ct
  %i.cv = tail call noundef float @llvm.fabs.f32(float %i.bd)
  %i.cw = fadd float %i.cv, %i.cu
  %i.cx = fmul float %i.cw, f0x34400002
  br label %bb.c

_ZNK4pbrt8Point3fi7IsExactEv.exit.thread:         ; preds = %bb.a
  %i.cy = fmul float %i.bu, 5.000000e-01          ; 3 uses
  %i.cz = fmul float %i.bw, 5.000000e-01          ; 3 uses
  %i.da = fsub float %i.o, %i.m
  %i.db = fmul float %i.da, 5.000000e-01          ; 3 uses
  %i.dc = tail call noundef float @llvm.fabs.f32(float %i.r)
  %i.dd = fmul float %i.cy, %i.dc
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.u)
  %i.df = fmul float %i.de, %i.cz
  %i.dg = fadd float %i.dd, %i.df
  %i.dh = tail call noundef float @llvm.fabs.f32(float %i.y)
  %i.di = fmul float %i.dh, %i.db
  %i.dj = fadd float %i.dg, %i.di
  %i.dk = fmul float %i.dj, f0x3F800002
  %i.dl = tail call noundef float @llvm.fabs.f32(float %i.s)
  %i.dm = tail call noundef float @llvm.fabs.f32(float %i.v)
  %i.dn = fadd float %i.dl, %i.dm
  %i.do = tail call noundef float @llvm.fabs.f32(float %i.z)
  %i.dp = fadd float %i.dn, %i.do
  %i.dq = tail call noundef float @llvm.fabs.f32(float %i.ab)
  %i.dr = fadd float %i.dq, %i.dp
  %i.ds = fmul float %i.dr, f0x34400002
  %i.dt = fadd float %i.ds, %i.dk
  %.sroa.0289.0.vec.insert293 = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.du = tail call noundef float @llvm.fabs.f32(float %i.af)
  %i.dv = fmul float %i.cy, %i.du
  %i.dw = tail call noundef float @llvm.fabs.f32(float %i.ai)
  %i.dx = fmul float %i.dw, %i.cz
  %i.dy = fadd float %i.dv, %i.dx
  %i.dz = tail call noundef float @llvm.fabs.f32(float %i.am)
  %i.ea = fmul float %i.dz, %i.db
  %i.eb = fadd float %i.dy, %i.ea
  %i.ec = fmul float %i.eb, f0x3F800002
  %i.ed = tail call noundef float @llvm.fabs.f32(float %i.ag)
  %i.ee = tail call noundef float @llvm.fabs.f32(float %i.aj)
  %i.ef = fadd float %i.ed, %i.ee
  %i.eg = tail call noundef float @llvm.fabs.f32(float %i.an)
  %i.eh = fadd float %i.ef, %i.eg
  %i.ei = tail call noundef float @llvm.fabs.f32(float %i.ap)
  %i.ej = fadd float %i.ei, %i.eh
  %i.ek = fmul float %i.ej, f0x34400002
  %i.el = fadd float %i.ek, %i.ec
  %.sroa.0289.4.vec.insert = insertelement <2 x float> %.sroa.0289.0.vec.insert293, float %i.el, i64 1
  %i.em = tail call noundef float @llvm.fabs.f32(float %i.at)
  %i.en = fmul float %i.cy, %i.em
  %i.eo = tail call noundef float @llvm.fabs.f32(float %i.aw)
end_hunk_0
begin_hunk_1_@_ZNK4pbrt5Curve12IntersectRayERKNS_3RayEfPN4pstd8optionalINS_17ShapeIntersectionEEE:bb.a
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.d = load ptr, ptr %0, align 8, !tbaa !180
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !173  ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !392
  %i.g = load <1 x float>, ptr %1, align 8, !noalias !392
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.g, <1 x float> poison, <2 x i32> zeroinitializer
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load <1 x float>, ptr %i.h, align 4, !noalias !392
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.i, <1 x float> poison, <2 x i32> zeroinitializer
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load <1 x float>, ptr %i.j, align 8, !noalias !392
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.k, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %5, align 8, !tbaa !28, !noalias !392
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.l, align 8, !tbaa !28, !noalias !392
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.m, align 8, !tbaa !28, !noalias !392
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %4, ptr noundef nonnull align 4 dereferenceable(128) %i.f, ptr noundef nonnull align 4 dereferenceable(24) %5), !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !392
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.n, align 4, !noalias !392 ; 3 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !noalias !392 ; 2 uses
  %i.o = shufflevector <2 x float> %.sroa.044.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.q = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.f, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !28, !noalias !392 ; 3 uses
  %i.r = shufflevector <5 x float> %i.q, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.s = shufflevector <5 x float> %i.q, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.t = fmul <2 x float> %i.o, %i.s
  %i.u = load <2 x float>, ptr %i.p, align 4, !tbaa !28, !noalias !392 ; 2 uses
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.w = shufflevector <4 x float> %i.r, <4 x float> %i.v, <2 x i32> <i32 0, i32 4>
  %i.x = fmul <2 x float> %.sroa.044.0.copyload.i, %i.w
  %i.y = fadd <2 x float> %i.t, %i.x
  %i.z = insertelement <2 x float> poison, float %.sroa.245.0.copyload.i, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = shufflevector <2 x float> %i.u, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ac = shufflevector <5 x float> %i.q, <5 x float> %i.ab, <2 x i32> <i32 2, i32 6>
  %i.ad = fmul <2 x float> %i.aa, %i.ac
  %i.ae = fadd <2 x float> %i.y, %i.ad            ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !28, !noalias !392
  %i.ah = fmul <2 x float> %.sroa.044.0.copyload.i, %i.ag ; 2 uses
  %shift = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ah, %shift
  %i.ai = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !28, !noalias !392
  %i.al = fmul float %.sroa.245.0.copyload.i, %i.ak
  %i.am = fadd float %i.ai, %i.al                 ; 10 uses
  %i.an = fmul <2 x float> %i.ae, %i.ae           ; 3 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0
  %shift262 = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop263 = fadd <2 x float> %i.an, %shift262
  %i.ap = extractelement <2 x float> %foldExtExtBinop263, i64 0
  %i.aq = fmul float %i.am, %i.am
  %i.ar = fadd float %i.ap, %i.aq                 ; 3 uses
  %i.as = fcmp ogt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.b, label %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit

bb.b:                                             ; preds = %bb.a
  %i.at = extractelement <2 x float> %i.ae, i64 1
  %i.au = call noundef float @llvm.fabs.f32(float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !55, !noalias !392
  %i.ay = load float, ptr %i.av, align 8, !tbaa !54, !noalias !392
  %i.az = fsub float %i.ax, %i.ay
  %i.ba = fmul float %i.az, 5.000000e-01
  %i.bb = fmul float %i.au, %i.ba
  %i.bc = insertelement <2 x float> %i.ae, float %i.am, i64 1
  %i.bd = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bc)
  %i.be = load <6 x float>, ptr %4, align 16, !tbaa !28, !noalias !392 ; 2 uses
  %i.bf = shufflevector <6 x float> %i.be, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bg = shufflevector <6 x float> %i.be, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bh = fsub <2 x float> %i.bf, %i.bg
  %i.bi = fmul <2 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = fmul <2 x float> %i.bd, %i.bi           ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
  %i.bl = fadd float %i.bk, %i.bb
  %i.bm = extractelement <2 x float> %i.bj, i64 1
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = fdiv float %i.bn, %i.ar                 ; 2 uses
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.ae, %i.bq
  %i.bs = fmul float %i.am, %i.bo
  %i.bt = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %4, <2 x float> %i.br, float %i.bs), !noalias !392 ; 0 uses
  br label %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit

_ZNK4pbrt9TransformclERKNS_3RayEPf.exit:          ; preds = %bb.a, %bb.b
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !392
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !392
  %i.bu = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !392
  %i.bv = load <4 x float>, ptr %4, align 16, !noalias !392
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bx = fadd <2 x float> %i.bu, %i.bw
  %i.by = fmul <2 x float> %i.bx, splat (float 5.000000e-01) ; 3 uses
  %i.bz = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.ca = fmul float %i.bz, 5.000000e-01          ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !127, !noalias !392
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !129, !noalias !392
  store <2 x float> %i.by, ptr %6, align 8, !alias.scope !392
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ca, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !alias.scope !392
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 12
  store <2 x float> %i.ae, ptr %i.cf, align 4, !alias.scope !392
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.am, ptr %.sroa.23.0..sroa_idx.i.i, align 4, !alias.scope !392
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.cc, ptr %i.cg, align 8, !tbaa !127, !alias.scope !392
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.ce, ptr %i.ch, align 8, !tbaa !129, !alias.scope !392
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.ci = load ptr, ptr %0, align 8, !tbaa !180
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !181
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !182
  call void @_ZN4pbrt24CubicBezierControlPointsEN4pstd4spanIKNS_6Point3IfEEEEff(ptr dead_on_unwind nonnull writable sret(%"class.pstd::array.64") align 4 %7, ptr nonnull %i.cj, i64 4, float noundef %i.cl, float noundef %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %.sroa.0112.0.copyload = load <2 x float>, ptr %7, align 8 ; 2 uses
  %.sroa.2113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.2113.0.copyload = load float, ptr %.sroa.2113.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.cr = extractelement <2 x float> %i.ae, i64 0 ; 3 uses
  %i.cs = fneg float %i.cr
  %i.ct = load <2 x float>, ptr %i.co, align 4, !tbaa !28
  %i.cu = load <2 x float>, ptr %i.cp, align 8, !tbaa !28
  %i.cv = fsub <2 x float> %i.ct, %.sroa.0112.0.copyload ; 3 uses
  %i.cw = shufflevector <2 x float> %.sroa.0112.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cx = insertelement <2 x float> %i.cw, float %.sroa.2113.0.copyload, i64 1
  %i.cy = fsub <2 x float> %i.cu, %i.cx           ; 2 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 1 ; 2 uses
  %i.da = fmul float %i.cr, %i.cz                 ; 2 uses
  %i.db = fneg float %i.da
  %i.dc = extractelement <2 x float> %i.cv, i64 0
  %i.dd = call noundef float @llvm.fma.f32(float %i.am, float %i.dc, float %i.db)
  %i.de = call noundef float @llvm.fma.f32(float %i.cs, float %i.cz, float %i.da)
  %i.df = fadd float %i.dd, %i.de                 ; 3 uses
  %i.dg = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dh = insertelement <2 x float> %i.dg, float %i.am, i64 1 ; 2 uses
  %i.di = fmul <2 x float> %i.dh, %i.cv           ; 2 uses
  %i.dj = fneg <2 x float> %i.di
  %i.dk = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ae, <2 x float> %i.cy, <2 x float> %i.dj)
  %i.dl = fneg <2 x float> %i.dh
  %i.dm = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.dl, <2 x float> %i.cv, <2 x float> %i.di)
  %i.dn = fadd <2 x float> %i.dk, %i.dm           ; 4 uses
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i129 = insertelement <2 x float> %i.do, float %i.df, i64 1
  %i.dp = fmul float %i.df, %i.df
  %i.dq = fmul <2 x float> %i.dn, %i.dn           ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 1
  %i.ds = fadd float %i.dr, %i.dp
  %i.dt = extractelement <2 x float> %i.dq, i64 0
  %i.du = fadd float %i.dt, %i.ds
  %i.dv = fcmp oeq float %i.du, 0.000000e+00
  %i.dw = extractelement <2 x float> %i.dn, i64 0
  br i1 %i.dv, label %bb.c, label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit

bb.c:                                             ; preds = %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit
  %i.dx = call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.am) ; 4 uses
  %i.dy = fadd float %i.am, %i.dx
  %i.dz = fdiv float -1.000000e+00, %i.dy         ; 2 uses
  %shift265 = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop266 = fmul <2 x float> %i.ae, %shift265
  %i.ea = extractelement <2 x float> %foldExtExtBinop266, i64 0
  %i.eb = fmul float %i.ea, %i.dz
  %i.ec = fmul float %i.ao, %i.dx
  %i.ed = fmul float %i.ec, %i.dz
  %i.ee = fadd float %i.ed, 1.000000e+00
  %i.ef = fmul float %i.dx, %i.eb
  %i.eg = fneg float %i.dx
  %i.eh = fmul float %i.cr, %i.eg
  %.sroa.0247.0.vec.insert = insertelement <2 x float> poison, float %i.ee, i64 0
  %.sroa.0247.4.vec.insert = insertelement <2 x float> %.sroa.0247.0.vec.insert, float %i.ef, i64 1
  br label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit

_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit: ; preds = %bb.c, %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit
  %.sroa.0247.0 = phi <2 x float> [ %.sroa.0247.4.vec.insert, %bb.c ], [ %.sroa.0.4.vec.insert.i129, %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit ]
  %.sroa.6249.0 = phi float [ %i.eh, %bb.c ], [ %i.dw, %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ei = fadd <2 x float> %i.ae, %i.by
  %i.ej = fadd float %i.am, %i.ca
  call void @_ZN4pbrt6LookAtENS_6Point3IfEES1_NS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %8, <2 x float> %i.by, float %i.ca, <2 x float> %i.ei, float %i.ej, <2 x float> %.sroa.0247.0, float %.sroa.6249.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %.sroa.066.0.copyload = load <2 x float>, ptr %7, align 8 ; 2 uses
  %11 = load <2 x float>, ptr %.sroa.2113.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 40
  %12 = load <1 x float>, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 44
  %13 = load <1 x float>, ptr %i.ep, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 56
  %14 = load <1 x float>, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 60
  %15 = load <1 x float>, ptr %i.es, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.058.0.copyload = load <2 x float>, ptr %i.et, align 4 ; 2 uses
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  %16 = load <2 x float>, ptr %.sroa.259.0..sroa_idx, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.050.0.copyload = load <2 x float>, ptr %i.eu, align 8 ; 2 uses
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.251.0.copyload = load float, ptr %.sroa.251.0..sroa_idx, align 8
  %.sroa.042.0.copyload = load <2 x float>, ptr %i.co, align 4 ; 2 uses
  %.sroa.243.0.copyload = load float, ptr %i.cq, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 36
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ev = load float, ptr %i.ck, align 8, !tbaa !181 ; 3 uses
  %i.ew = load ptr, ptr %0, align 8, !tbaa !180   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 52 ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !28 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 56 ; 2 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !28 ; 3 uses
  %i.fb = fsub float 1.000000e+00, %i.ev
  %i.fc = fmul float %i.fb, %i.ey
  %i.fd = fmul float %i.ev, %i.fa
  %i.fe = fadd float %i.fc, %i.fd                 ; 2 uses
  %i.ff = load float, ptr %i.cm, align 4, !tbaa !182 ; 3 uses
  %i.fg = fsub float 1.000000e+00, %i.ff
  %i.fh = fmul float %i.ey, %i.fg
  %i.fi = fmul float %i.fa, %i.ff
  %i.fj = fadd float %i.fi, %i.fh                 ; 2 uses
  %i.fk = fcmp olt float %i.fe, %i.fj
  %.sroa.speculated241 = select i1 %i.fk, float %i.fj, float %i.fe
  %i.fl = load <2 x float>, ptr %i.en, align 8, !tbaa !28 ; 3 uses
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fn = load <2 x float>, ptr %i.eq, align 8, !tbaa !28 ; 3 uses
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fp = shufflevector <2 x float> %.sroa.066.0.copyload, <2 x float> %.sroa.050.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.fq = fmul <2 x float> %i.fp, %i.fo
  %i.fr = shufflevector <2 x float> %.sroa.066.0.copyload, <2 x float> %.sroa.050.0.copyload, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.fs = fmul <2 x float> %i.fr, %i.fn
  %i.ft = fadd <2 x float> %i.fq, %i.fs
  %i.fu = shufflevector <1 x float> %14, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fv = insertelement <2 x float> %11, float %.sroa.251.0.copyload, i64 1 ; 4 uses
  %i.fw = fmul <2 x float> %i.fu, %i.fv
  %i.fx = fadd <2 x float> %i.ft, %i.fw
  %i.fy = shufflevector <1 x float> %15, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fz = fadd <2 x float> %i.fy, %i.fx           ; 4 uses
  %i.ga = fcmp oeq <2 x float> %i.fz, splat (float 1.000000e+00) ; 3 uses
  %i.gb = shufflevector <2 x float> %.sroa.058.0.copyload, <2 x float> %.sroa.042.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.gc = fmul <2 x float> %i.fo, %i.gb
  %i.gd = shufflevector <2 x float> %.sroa.058.0.copyload, <2 x float> %.sroa.042.0.copyload, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.ge = fmul <2 x float> %i.fn, %i.gd
  %i.gf = fadd <2 x float> %i.gc, %i.ge
  %i.gg = insertelement <2 x float> %16, float %.sroa.243.0.copyload, i64 1 ; 4 uses
  %i.gh = fmul <2 x float> %i.fu, %i.gg
  %i.gi = fadd <2 x float> %i.gh, %i.gf
  %i.gj = fadd <2 x float> %i.fy, %i.gi           ; 4 uses
  %i.gk = fcmp oeq <2 x float> %i.gj, splat (float 1.000000e+00) ; 3 uses
  %i.gl = fmul <2 x float> %i.fp, %i.fm
  %i.gm = fmul <2 x float> %i.fr, %i.fl
  %i.gn = fadd <2 x float> %i.gl, %i.gm
  %i.go = shufflevector <1 x float> %12, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gp = fmul <2 x float> %i.go, %i.fv
  %i.gq = fadd <2 x float> %i.gn, %i.gp
  %i.gr = shufflevector <1 x float> %13, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gs = fadd <2 x float> %i.gr, %i.gq           ; 2 uses
  %i.gt = fdiv <2 x float> %i.gs, %i.fz
  %i.gu = select <2 x i1> %i.ga, <2 x float> %i.gs, <2 x float> %i.gt ; 6 uses
  %i.gv = fmul <2 x float> %i.fm, %i.gb
  %i.gw = fmul <2 x float> %i.fl, %i.gd
  %i.gx = fadd <2 x float> %i.gv, %i.gw
  %i.gy = fmul <2 x float> %i.go, %i.gg
  %i.gz = fadd <2 x float> %i.gy, %i.gx
  %i.ha = fadd <2 x float> %i.gr, %i.gz           ; 2 uses
  %i.hb = fdiv <2 x float> %i.ha, %i.gj
  %i.hc = select <2 x i1> %i.gk, <2 x float> %i.ha, <2 x float> %i.hb ; 6 uses
  %i.hd = extractelement <2 x float> %i.gu, i64 0 ; 2 uses
  store float %i.hd, ptr %.sroa.4.0..sroa_idx, align 8
  %i.he = extractelement <2 x float> %i.hc, i64 0 ; 3 uses
  store float %i.he, ptr %.sroa.6.0..sroa_idx, align 4
  %i.hf = extractelement <2 x float> %i.gu, i64 1 ; 3 uses
  store float %i.hf, ptr %.sroa.8.0..sroa_idx, align 8
  %i.hg = extractelement <2 x float> %i.hc, i64 1 ; 2 uses
  store float %i.hg, ptr %.sroa.10.0..sroa_idx, align 4
  %i.hh = fcmp olt <2 x float> %i.hc, %i.gu
  %i.hi = select <2 x i1> %i.hh, <2 x float> %i.hc, <2 x float> %i.gu ; 2 uses
  %i.hj = load <2 x float>, ptr %8, align 8, !tbaa !28 ; 3 uses
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hl = load <2 x float>, ptr %i.ek, align 8, !tbaa !28 ; 2 uses
  %i.hm = fmul <2 x float> %i.fp, %i.hk
  %i.hn = fmul <2 x float> %i.fr, %i.hj
  %i.ho = fadd <2 x float> %i.hm, %i.hn
  %i.hp = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = fmul <2 x float> %i.hp, %i.fv
  %i.hr = fadd <2 x float> %i.ho, %i.hq
  %i.hs = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ht = fadd <2 x float> %i.hs, %i.hr           ; 2 uses
  %i.hu = fmul <2 x float> %i.hk, %i.gb
  %i.hv = fmul <2 x float> %i.hj, %i.gd
  %i.hw = fadd <2 x float> %i.hu, %i.hv
  %i.hx = fmul <2 x float> %i.hp, %i.gg
  %i.hy = fadd <2 x float> %i.hx, %i.hw
  %i.hz = fadd <2 x float> %i.hs, %i.hy           ; 2 uses
  %i.ia = fdiv <2 x float> %i.ht, %i.fz
  %i.ib = select <2 x i1> %i.ga, <2 x float> %i.ht, <2 x float> %i.ia ; 8 uses
  %i.ic = fdiv <2 x float> %i.hz, %i.gj
  %i.id = select <2 x i1> %i.gk, <2 x float> %i.hz, <2 x float> %i.ic ; 8 uses
  %i.ie = fcmp olt <2 x float> %i.id, %i.ib
  %i.if = select <2 x i1> %i.ie, <2 x float> %i.id, <2 x float> %i.ib ; 2 uses
  %i.ig = fcmp olt <2 x float> %i.ib, %i.id
  %i.ih = select <2 x i1> %i.ig, <2 x float> %i.id, <2 x float> %i.ib ; 2 uses
  %i.ii = load <2 x float>, ptr %i.el, align 8, !tbaa !28 ; 3 uses
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ik = load <2 x float>, ptr %i.em, align 8, !tbaa !28 ; 2 uses
  %i.il = fmul <2 x float> %i.fp, %i.ij
  %i.im = fmul <2 x float> %i.fr, %i.ii
  %i.in = fadd <2 x float> %i.il, %i.im
  %i.io = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ip = fmul <2 x float> %i.io, %i.fv
  %i.iq = fadd <2 x float> %i.in, %i.ip
  %i.ir = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.is = fadd <2 x float> %i.ir, %i.iq           ; 2 uses
  %i.it = fmul <2 x float> %i.ij, %i.gb
  %i.iu = fmul <2 x float> %i.ii, %i.gd
  %i.iv = fadd <2 x float> %i.it, %i.iu
  %i.iw = fmul <2 x float> %i.io, %i.gg
  %i.ix = fadd <2 x float> %i.iw, %i.iv
  %i.iy = fadd <2 x float> %i.ir, %i.ix           ; 2 uses
  %i.iz = fdiv <2 x float> %i.is, %i.fz
  %i.ja = select <2 x i1> %i.ga, <2 x float> %i.is, <2 x float> %i.iz ; 7 uses
  %i.jb = shufflevector <2 x float> %i.ib, <2 x float> %i.ja, <2 x i32> <i32 0, i32 2>
  %i.jc = fdiv <2 x float> %i.iy, %i.gj
  %i.jd = select <2 x i1> %i.gk, <2 x float> %i.iy, <2 x float> %i.jc ; 7 uses
  %i.je = shufflevector <2 x float> %i.id, <2 x float> %i.jd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.jf = shufflevector <2 x float> %i.ib, <2 x float> %i.ja, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.jg = shufflevector <2 x float> %i.id, <2 x float> %i.jd, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.jb, ptr %9, align 8
  store <2 x float> %i.je, ptr %.sroa.5.0..sroa_idx, align 4
  store <2 x float> %i.jf, ptr %.sroa.7.0..sroa_idx, align 8
  store <2 x float> %i.jg, ptr %.sroa.9.0..sroa_idx, align 4
  %i.jh = fcmp olt <2 x float> %i.jd, %i.ja
  %i.ji = select <2 x i1> %i.jh, <2 x float> %i.jd, <2 x float> %i.ja ; 2 uses
  %i.jj = fcmp olt <2 x float> %i.ja, %i.jd
  %i.jk = select <2 x i1> %i.jj, <2 x float> %i.jd, <2 x float> %i.ja ; 2 uses
  %i.jl = fcmp olt <2 x float> %i.gu, %i.hc
  %i.jm = select <2 x i1> %i.jl, <2 x float> %i.hc, <2 x float> %i.gu ; 2 uses
  %i.jn = extractelement <2 x float> %i.hi, i64 0 ; 2 uses
  %i.jo = extractelement <2 x float> %i.hi, i64 1 ; 2 uses
  %i.jp = fcmp olt float %i.jo, %i.jn
  %.sroa.speculated.i.i184 = select i1 %i.jp, float %i.jo, float %i.jn
  %i.jq = extractelement <2 x float> %i.jm, i64 0 ; 2 uses
  %i.jr = extractelement <2 x float> %i.jm, i64 1 ; 2 uses
  %i.js = fcmp olt float %i.jq, %i.jr
  %.sroa.speculated.i31.i = select i1 %i.js, float %i.jr, float %i.jq
  %i.jt = fmul float %.sroa.speculated241, 5.000000e-01 ; 3 uses
  %i.ju = fsub float %.sroa.speculated.i.i184, %i.jt
  %i.jv = fadd float %i.jt, %.sroa.speculated.i31.i
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.ar)
  %i.jw = fmul float %2, %sqrt.i                  ; 4 uses
  %i.jx = fcmp olt float %i.jw, 0.000000e+00
  %.sroa.speculated.i.i193 = select i1 %i.jx, float %i.jw, float 0.000000e+00
  %i.jy = fcmp ogt float %i.jw, 0.000000e+00
  %.sroa.speculated.i34.i197 = select i1 %i.jy, float %i.jw, float 0.000000e+00
  %i.jz = shufflevector <2 x float> %i.ji, <2 x float> %i.if, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ka = shufflevector <2 x float> %i.ji, <2 x float> %i.if, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kb = fcmp olt <2 x float> %i.jz, %i.ka
  %i.kc = select <2 x i1> %i.kb, <2 x float> %i.jz, <2 x float> %i.ka
  %i.kd = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kf = fsub <2 x float> %i.kc, %i.ke
  %i.kg = fcmp ole <2 x float> %i.kf, zeroinitializer ; 2 uses
  %i.kh = extractelement <2 x i1> %i.kg, i64 1
  %i.ki = shufflevector <2 x float> %i.jk, <2 x float> %i.ih, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kj = shufflevector <2 x float> %i.jk, <2 x float> %i.ih, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.kk = fcmp olt <2 x float> %i.ki, %i.kj
  %i.kl = select <2 x i1> %i.kk, <2 x float> %i.kj, <2 x float> %i.ki
  %i.km = fadd <2 x float> %i.ke, %i.kl
  %i.kn = fcmp oge <2 x float> %i.km, zeroinitializer ; 2 uses
  %i.ko = extractelement <2 x i1> %i.kn, i64 1
  %i.kp = select i1 %i.kh, i1 %i.ko, i1 false
  %i.kq = fcmp oge float %.sroa.speculated.i34.i197, %i.ju
  %i.kr = fcmp ole float %.sroa.speculated.i.i193, %i.jv
  %i.ks = extractelement <2 x i1> %i.kg, i64 0
  %i.kt = select i1 %i.kp, i1 %i.ks, i1 false
  %i.ku = extractelement <2 x i1> %i.kn, i64 0
  %or.cond.i = select i1 %i.kt, i1 %i.ku, i1 false
  %i.kv = select i1 %or.cond.i, i1 %i.kq, i1 false
  %i.kw = select i1 %i.kv, i1 %i.kr, i1 false
  br i1 %i.kw, label %.preheader.preheader, label %bb.f

.preheader.preheader:                             ; preds = %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit
  %i.kx = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ky = extractelement <2 x float> %i.id, i64 0
  %i.kz = fmul float %i.ky, 2.000000e+00
  %i.la = extractelement <2 x float> %i.ib, i64 0
  %i.lb = fsub float %i.la, %i.kz
  %i.lc = extractelement <2 x float> %i.ib, i64 1
  %i.ld = fadd float %i.lc, %i.lb
  %i.le = call noundef float @llvm.fabs.f32(float %i.ld) ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !183
  %i.lh = extractelement <2 x float> %i.jd, i64 0
  %i.li = fmul float %i.lh, 2.000000e+00
  %i.lj = fsub float %i.lg, %i.li
  %i.lk = extractelement <2 x float> %i.ja, i64 1
  %i.ll = fadd float %i.lk, %i.lj
  %i.lm = call noundef float @llvm.fabs.f32(float %i.ll) ; 2 uses
  %i.ln = fcmp olt float %i.le, %i.lm
  %i.lo = fmul float %i.he, 2.000000e+00
  %i.lp = fsub float %i.hd, %i.lo
  %i.lq = fadd float %i.hf, %i.lp
  %i.lr = call noundef float @llvm.fabs.f32(float %i.lq) ; 2 uses
  %i.ls = select i1 %i.ln, float %i.lm, float %i.le ; 2 uses
  %i.lt = fcmp olt float %i.ls, %i.lr
  %i.lu = select i1 %i.lt, float %i.lr, float %i.ls ; 2 uses
  %i.lv = fcmp ogt float %i.lu, 0.000000e+00
  %.sroa.speculated = select i1 %i.lv, float %i.lu, float 0.000000e+00 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.lx = load float, ptr %i.lw, align 8, !tbaa !183
  %i.ly = fmul <2 x float> %i.jf, splat (float 2.000000e+00)
  %i.lz = fsub <2 x float> %i.je, %i.ly
  %i.ma = insertelement <2 x float> %i.kx, float %i.lx, i64 1
  %i.mb = fadd <2 x float> %i.ma, %i.lz
  %i.mc = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mb) ; 2 uses
  %i.md = extractelement <2 x float> %i.mc, i64 0 ; 2 uses
  %i.me = extractelement <2 x float> %i.mc, i64 1 ; 2 uses
  %i.mf = fcmp olt float %i.md, %i.me
  %i.mg = fmul float %i.hf, 2.000000e+00
  %i.mh = fsub float %i.he, %i.mg
  %i.mi = fadd float %i.hg, %i.mh
  %i.mj = call noundef float @llvm.fabs.f32(float %i.mi) ; 2 uses
  %i.mk = select i1 %i.mf, float %i.me, float %i.md ; 2 uses
  %i.ml = fcmp olt float %i.mk, %i.mj
  %i.mm = select i1 %i.ml, float %i.mj, float %i.mk ; 2 uses
  %i.mn = fcmp olt float %.sroa.speculated, %i.mm
  %.sroa.speculated.1 = select i1 %i.mn, float %i.mm, float %.sroa.speculated ; 2 uses
  %i.mo = fcmp ogt float %.sroa.speculated.1, 0.000000e+00
  br i1 %i.mo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.preheader
  %i.mp = fcmp olt float %i.ey, %i.fa
  %..i204 = select i1 %i.mp, ptr %i.ez, ptr %i.ex
  %i.mq = load float, ptr %..i204, align 4, !tbaa !28
  %i.mr = fmul float %i.mq, 5.000000e-02
  %i.ms = fmul nnan float %.sroa.speculated.1, f0x4107C3B6
  %i.mt = fmul float %i.mr, 8.000000e+00
  %i.mu = fdiv float %i.ms, %i.mt
  %i.mv = call noundef i32 @_ZN4pbrt7Log2IntEf(float noundef %i.mu) ; 2 uses
  %i.mw = sdiv i32 %i.mv, 2
  %i.mx = icmp slt i32 %i.mv, -1
  %i.my = call i32 @llvm.umin.i32(i32 %i.mw, i32 10)
  %.0.i = select i1 %i.mx, i32 0, i32 %i.my
  %.pre = load float, ptr %i.ck, align 8, !tbaa !181
  %.pre256 = load float, ptr %i.cm, align 4, !tbaa !182
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.preheader
  %i.mz = phi float [ %.pre256, %bb.d ], [ %i.ff, %.preheader.preheader ]
  %i.na = phi float [ %.pre, %bb.d ], [ %i.ev, %.preheader.preheader ]
  %.0125 = phi i32 [ %.0.i, %bb.d ], [ 0, %.preheader.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.nb = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(64) %i.nb, i64 64, i1 false), !tbaa.struct !393
  %i.nc = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.nc, ptr noundef nonnull align 8 dereferenceable(128) %8, i64 64, i1 false), !tbaa.struct !393
end_hunk_1
