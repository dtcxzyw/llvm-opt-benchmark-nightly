Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0
@.str.60 = private unnamed_addr constant [63 x i8] c"Invalid basis \22%s\22: only \22bezier\22 and \22bspline\22 are supported.\00", align 1
@.str.61 = private unnamed_addr constant [106 x i8] c"Invalid number of control points %d: for the degree %d Bezier basis %d + n * %d are required, for n >= 0.\00", align 1
@.str.62 = private unnamed_addr constant [88 x i8] c"Invalid number of control points %d: for the degree %d b-spline basis, must have >= %d.\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"ribbon\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"cylinder\00", align 1
@.str.67 = private unnamed_addr constant [44 x i8] c"Unknown curve type \22%s\22.  Using \22cylinder\22.\00", align 1
@.str.68 = private unnamed_addr constant [55 x i8] c"Curve normals are only used with \22ribbon\22 type curves.\00", align 1
@.str.69 = private unnamed_addr constant [90 x i8] c"Invalid number of normals %d: must provide %d normals for ribbon curves with %d segments.\00", align 1
@.str.70 = private unnamed_addr constant [64 x i8] c"Must provide normals \22N\22 at curve endpoints with ribbon curves.\00", align 1
@_ZN4pbrt7OptionsE = external local_unnamed_addr global ptr, align 8
@.str.71 = private unnamed_addr constant [11 x i8] c"splitdepth\00", align 1
@_ZN4pbrtL26STATS_REGnBLPHitsnBLPTestsE = internal global %"class.pbrt::StatRegisterer" zeroinitializer, align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"[ BilinearIntersection uv: %s t: %f\00", align 1
@.str.74 = private unnamed_addr constant [74 x i8] c"Vertex indices \22indices\22 must be provided with bilinear patch mesh shape.\00", align 1
@.str.75 = private unnamed_addr constant [71 x i8] c"Number of vertex indices %d not a multiple of 4. Discarding %d excess.\00", align 1
@.str.76 = private unnamed_addr constant [70 x i8] c"Vertex positions \22P\22 must be provided with bilinear patch mesh shape.\00", align 1
@.str.77 = private unnamed_addr constant [73 x i8] c"Number of \22uv\22s for bilinear patch mesh must match \22P\22s. Discarding uvs.\00", align 1
@.str.78 = private unnamed_addr constant [73 x i8] c"Number of \22N\22s for bilinear patch mesh must match \22P\22s. Discarding \22N\22s.\00", align 1
@.str.79 = private unnamed_addr constant [103 x i8] c"Bilinear patch mesh has out of-bounds vertex index %d (%d \22P\22 values were given. Discarding this mesh.\00", align 1
@.str.80 = private unnamed_addr constant [97 x i8] c"Number of face indices %d does not match number of bilinear patches %d. Discarding face indices.\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"emissionfilename\00", align 1
@.str.82 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.83 = private unnamed_addr constant [108 x i8] c"\22emissionfilename\22 is currently ignored for bilinear patches if \22uv\22 coordinates have been provided--sorry!\00", align 1
@_ZZN4pbrt13BilinearPatch13CreatePatchesEPKNS_17BilinearPatchMeshEN4pstd3pmr21polymorphic_allocatorISt4byteEEE13allMeshesLock = internal global { %union.pthread_mutex_t } zeroinitializer, align 8
@_ZN4pbrt13BilinearPatch9allMeshesE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN4pbrtL17STATS_REGblpBytesE = internal global %"class.pbrt::StatRegisterer" zeroinitializer, align 1
@_ZN4pbrtL8blpBytesE = internal thread_local unnamed_addr global i64 0, align 8
@.str.85 = private unnamed_addr constant [54 x i8] c"[ BilinearPatch meshIndex: %d blpIndex: %d area: %f ]\00", align 1
@_ZN4pbrtL17STATS_REGnSpheresE = internal global %"class.pbrt::StatRegisterer" zeroinitializer, align 1
@_ZN4pbrtL19STATS_REGnCylindersE = internal global %"class.pbrt::StatRegisterer" zeroinitializer, align 1
@_ZN4pbrtL15STATS_REGnDisksE = internal global %"class.pbrt::StatRegisterer" zeroinitializer, align 1
@_ZN4pbrtL27STATS_REGdisplacedTrisDeltaE = internal global %"class.pbrt::StatRegisterer" zeroinitializer, align 1
@_ZN4pbrtL8nSpheresE = internal thread_local unnamed_addr global i64 0, align 8
@_ZN4pbrtL10nCylindersE = internal thread_local unnamed_addr global i64 0, align 8
@.str.91 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@_ZN4pbrtL6nDisksE = internal thread_local unnamed_addr global i64 0, align 8
@.str.92 = private unnamed_addr constant [13 x i8] c"bilinearmesh\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"trianglemesh\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"plymesh\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"edgelength\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"displacement\00", align 1
@.str.99 = private unnamed_addr constant [29 x i8] c"%s: no such texture defined.\00", align 1
@_ZN4pbrt7logging8logLevelE = external local_unnamed_addr global i32, align 4
@.str.100 = private unnamed_addr constant [41 x i8] c"Starting to displace mesh \22%s\22 with \22%s\22\00", align 1
@.str.101 = private unnamed_addr constant [51 x i8] c"Finished displacing mesh \22%s\22 with \22%s\22 -> %d tris\00", align 1
@_ZN4pbrtL18displacedTrisDeltaE = internal thread_local unnamed_addr global i64 0, align 8
@.str.102 = private unnamed_addr constant [11 x i8] c"loopsubdiv\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"levels\00", align 1
@.str.104 = private unnamed_addr constant [60 x i8] c"Vertex indices \22indices\22 not provided for LoopSubdiv shape.\00", align 1
@.str.105 = private unnamed_addr constant [56 x i8] c"Vertex positions \22P\22 not provided for LoopSubdiv shape.\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"scheme\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.108 = private unnamed_addr constant [24 x i8] c"%s: shape type unknown.\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"%s: unable to create shape.\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"(nullptr)\00", align 1
@.str.111 = private unnamed_addr constant [33 x i8] c"[ ShapeSample intr: %s pdf: %f ]\00", align 1
@.str.112 = private unnamed_addr constant [40 x i8] c"[ ShapeIntersection intr: %s tHit: %f ]\00", align 1
@.str.113 = private unnamed_addr constant [42 x i8] c"Memory/Redundant vertex and index buffers\00", align 1
@_ZN4pbrtL20redundantBufferBytesE = internal thread_local unnamed_addr global i64 0, align 8
@.str.114 = private unnamed_addr constant [27 x i8] c"Geometry/Buffer cache hits\00", align 1
@_ZN4pbrtL16nBufferCacheHitsE = internal thread_local unnamed_addr global i64 0, align 8
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
  %3 = alloca %"class.pbrt::Point3fi", align 16   ; 5 uses
  %.sroa.0 = alloca { %"class.pbrt::Point3fi", float, %"class.pbrt::Vector3" }, align 8 ; 5 uses
  %i.a = load float, ptr %1, align 8, !tbaa !25   ; 5 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %2, i64 0
  %i.b = fmul float %.sroa.0.0.vec.extract.i, 2.000000e+00
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %2, i64 1
  %i.c = fmul float %.sroa.0.4.vec.extract.i, f0x40C90FDB ; 2 uses
  %i.d = tail call noundef float @cosf(float noundef %i.c) #32
  %i.e = tail call noundef float @sinf(float noundef %i.c) #32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = fsub float 1.000000e+00, %i.b            ; 3 uses
  %i.h = fmul float %i.g, %i.g
  %i.i = fsub float 1.000000e+00, %i.h            ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.j, float %i.i, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 2 uses
  %i.k = fmul float %sqrt.i.i, %i.d
  %i.l = fmul float %sqrt.i.i, %i.e
  %i.m = fmul float %i.a, %i.k
  %i.n = fmul float %i.a, %i.l
  %i.o = fmul float %i.g, %i.a
  %i.p = fadd float %i.m, 0.000000e+00            ; 3 uses
  %i.q = fadd float %i.n, 0.000000e+00            ; 3 uses
  %i.r = fadd float %i.o, 0.000000e+00            ; 3 uses
  %i.s = fmul float %i.p, %i.p
  %i.t = fmul float %i.q, %i.q
  %i.u = fadd float %i.s, %i.t
  %i.v = fmul float %i.r, %i.r
  %i.w = fadd float %i.v, %i.u
  %i.x = tail call noundef float @sqrtf(float noundef %i.w) #32
  %i.y = fdiv float %i.a, %i.x                    ; 3 uses
  %i.z = fmul float %i.y, %i.p                    ; 7 uses
  %i.aa = fmul float %i.y, %i.q                   ; 7 uses
  %i.ab = fmul float %i.r, %i.y                   ; 7 uses
  %i.ac = tail call noundef float @llvm.fabs.f32(float %i.z)
  %i.ad = tail call noundef float @llvm.fabs.f32(float %i.aa)
  %i.ae = tail call noundef float @llvm.fabs.f32(float %i.ab)
  %i.af = fmul float %i.ac, f0x34A00003           ; 3 uses
  %i.ag = fmul float %i.ad, f0x34A00003           ; 3 uses
  %i.ah = fmul float %i.ae, f0x34A00003           ; 3 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !24  ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.am = load <2 x float>, ptr %i.aj, align 4, !tbaa !28
  %i.an = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ao, %i.am
  %i.aq = load <2 x float>, ptr %i.ak, align 4, !tbaa !28
  %i.ar = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.as, %i.aq
  %i.au = fadd <2 x float> %i.ap, %i.at
  %i.av = load <2 x float>, ptr %i.al, align 4, !tbaa !28
  %i.aw = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.ax, %i.av
  %i.az = fadd <2 x float> %i.au, %i.ay           ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !28
  %i.bc = fmul float %i.z, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.be = load float, ptr %i.bd, align 4, !tbaa !28
  %i.bf = fmul float %i.aa, %i.be
  %i.bg = fadd float %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !28
  %i.bj = fmul float %i.ab, %i.bi
  %i.bk = fadd float %i.bg, %i.bj                 ; 3 uses
  %i.bl = fmul <2 x float> %i.az, %i.az           ; 2 uses
  %shift = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bl, %shift
  %i.bm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bn = fmul float %i.bk, %i.bk
  %i.bo = fadd float %i.bm, %i.bn
  %i.bp = tail call noundef float @sqrtf(float noundef %i.bo) #32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !29, !range !30, !noundef !31
  %i.bs = fdiv float %i.ab, %i.a                  ; 3 uses
  %i.bt = fcmp olt float %i.bs, -1.000000e+00
  %i.bu = fcmp ogt float %i.bs, 1.000000e+00
  %..i.i = select i1 %i.bu, float 1.000000e+00, float %i.bs
  %.0.i.i = select i1 %i.bt, float -1.000000e+00, float %..i.i
  %i.bv = tail call noundef float @acosf(float noundef %.0.i.i) #32
  %i.bw = tail call noundef float @atan2f(float noundef %i.aa, float noundef %i.z) #32 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bx, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.cd = fcmp oeq float %i.af, 0.000000e+00
  br i1 %i.cd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ce = insertelement <2 x float> poison, float %i.z, i64 0
  %.sroa.0.0.vec.insert.i.i108 = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

bb.c:                                             ; preds = %bb.a
  %i.cf = fsub float %i.z, %i.af                  ; 3 uses
  %or.cond.i.i.i.i.i = fcmp oeq float %i.cf, -inf
  br i1 %or.cond.i.i.i.i.i, label %_ZN4pbrt12SubRoundDownEff.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cg = fcmp oeq float %i.cf, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.cg, float -0.000000e+00, float %i.cf ; 2 uses
  %i.ch = bitcast float %spec.store.select.i.i.i.i.i to i32
  %i.ci = fcmp ogt float %spec.store.select.i.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i.i = select i1 %i.ci, i32 -1, i32 1
  %.0.i.i.i.i.i = add i32 %.0.v.i.i.i.i.i, %i.ch
  %i.cj = bitcast i32 %.0.i.i.i.i.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i.i

_ZN4pbrt12SubRoundDownEff.exit.i.i:               ; preds = %bb.d, %bb.c
  %.09.i.i.i.i.i = phi float [ %i.cj, %bb.d ], [ -inf, %bb.c ]
  %.sroa.0.0.vec.insert8.i.i = insertelement <2 x float> poison, float %.09.i.i.i.i.i, i64 0
  %i.ck = fadd float %i.z, %i.af                  ; 3 uses
  %or.cond.i.i.i.i = fcmp oeq float %i.ck, +inf
  br i1 %or.cond.i.i.i.i, label %_ZN4pbrt10AddRoundUpEff.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %i.cl = fcmp oeq float %i.ck, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.cl, float 0.000000e+00, float %i.ck ; 2 uses
  %i.cm = bitcast float %spec.store.select.i.i.i.i to i32
  %i.cn = fcmp ult float %spec.store.select.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i = select i1 %i.cn, i32 -1, i32 1
  %.0.i.i.i.i = add i32 %.0.v.i.i.i.i, %i.cm
  %i.co = bitcast i32 %.0.i.i.i.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i.i

_ZN4pbrt10AddRoundUpEff.exit.i.i:                 ; preds = %bb.e, %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %.010.i.i.i.i = phi float [ %i.co, %bb.e ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i.i ]
  %.sroa.0.4.vec.insert10.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i.i, float %.010.i.i.i.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i:   ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i.i, %bb.b
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i.i108, %bb.b ], [ %.sroa.0.4.vec.insert10.i.i, %_ZN4pbrt10AddRoundUpEff.exit.i.i ]
  %i.cp = fcmp oeq float %i.ag, 0.000000e+00
  br i1 %i.cp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.cq = insertelement <2 x float> poison, float %i.aa, i64 0
  %.sroa.0.0.vec.insert.i24.i = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

bb.g:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.cr = fsub float %i.aa, %i.ag                 ; 3 uses
  %or.cond.i.i.i.i9.i = fcmp oeq float %i.cr, -inf
  br i1 %or.cond.i.i.i.i9.i, label %_ZN4pbrt12SubRoundDownEff.exit.i13.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cs = fcmp oeq float %i.cr, 0.000000e+00
  %spec.store.select.i.i.i.i10.i = select i1 %i.cs, float -0.000000e+00, float %i.cr ; 2 uses
  %i.ct = bitcast float %spec.store.select.i.i.i.i10.i to i32
  %i.cu = fcmp ogt float %spec.store.select.i.i.i.i10.i, 0.000000e+00
  %.0.v.i.i.i.i11.i = select i1 %i.cu, i32 -1, i32 1
  %.0.i.i.i.i12.i = add i32 %.0.v.i.i.i.i11.i, %i.ct
  %i.cv = bitcast i32 %.0.i.i.i.i12.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i13.i

_ZN4pbrt12SubRoundDownEff.exit.i13.i:             ; preds = %bb.h, %bb.g
  %.09.i.i.i.i14.i = phi float [ %i.cv, %bb.h ], [ -inf, %bb.g ]
  %.sroa.0.0.vec.insert8.i15.i = insertelement <2 x float> poison, float %.09.i.i.i.i14.i, i64 0
  %i.cw = fadd float %i.aa, %i.ag                 ; 3 uses
  %or.cond.i.i.i16.i = fcmp oeq float %i.cw, +inf
  br i1 %or.cond.i.i.i16.i, label %_ZN4pbrt10AddRoundUpEff.exit.i20.i, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %i.cx = fcmp oeq float %i.cw, 0.000000e+00
  %spec.store.select.i.i.i17.i = select i1 %i.cx, float 0.000000e+00, float %i.cw ; 2 uses
  %i.cy = bitcast float %spec.store.select.i.i.i17.i to i32
  %i.cz = fcmp ult float %spec.store.select.i.i.i17.i, 0.000000e+00
  %.0.v.i.i.i18.i = select i1 %i.cz, i32 -1, i32 1
  %.0.i.i.i19.i = add i32 %.0.v.i.i.i18.i, %i.cy
  %i.da = bitcast i32 %.0.i.i.i19.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i20.i

_ZN4pbrt10AddRoundUpEff.exit.i20.i:               ; preds = %bb.i, %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %.010.i.i.i21.i = phi float [ %i.da, %bb.i ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i13.i ]
  %.sroa.0.4.vec.insert10.i22.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i15.i, float %.010.i.i.i21.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i: ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i20.i, %bb.f
  %.sroa.0.0.i23.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i24.i, %bb.f ], [ %.sroa.0.4.vec.insert10.i22.i, %_ZN4pbrt10AddRoundUpEff.exit.i20.i ]
  %i.db = fcmp oeq float %i.ah, 0.000000e+00
  br i1 %i.db, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.dc = insertelement <2 x float> poison, float %i.ab, i64 0
  %.sroa.0.0.vec.insert.i41.i = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

bb.k:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.dd = fsub float %i.ab, %i.ah                 ; 3 uses
  %or.cond.i.i.i.i26.i = fcmp oeq float %i.dd, -inf
  br i1 %or.cond.i.i.i.i26.i, label %_ZN4pbrt12SubRoundDownEff.exit.i30.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = fcmp oeq float %i.dd, 0.000000e+00
  %spec.store.select.i.i.i.i27.i = select i1 %i.de, float -0.000000e+00, float %i.dd ; 2 uses
  %i.df = bitcast float %spec.store.select.i.i.i.i27.i to i32
  %i.dg = fcmp ogt float %spec.store.select.i.i.i.i27.i, 0.000000e+00
  %.0.v.i.i.i.i28.i = select i1 %i.dg, i32 -1, i32 1
  %.0.i.i.i.i29.i = add i32 %.0.v.i.i.i.i28.i, %i.df
  %i.dh = bitcast i32 %.0.i.i.i.i29.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i30.i

_ZN4pbrt12SubRoundDownEff.exit.i30.i:             ; preds = %bb.l, %bb.k
  %.09.i.i.i.i31.i = phi float [ %i.dh, %bb.l ], [ -inf, %bb.k ]
  %.sroa.0.0.vec.insert8.i32.i = insertelement <2 x float> poison, float %.09.i.i.i.i31.i, i64 0
  %i.di = fadd float %i.ab, %i.ah                 ; 3 uses
  %or.cond.i.i.i33.i = fcmp oeq float %i.di, +inf
  br i1 %or.cond.i.i.i33.i, label %_ZN4pbrt10AddRoundUpEff.exit.i37.i, label %bb.m

bb.m:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %i.dj = fcmp oeq float %i.di, 0.000000e+00
  %spec.store.select.i.i.i34.i = select i1 %i.dj, float 0.000000e+00, float %i.di ; 2 uses
  %i.dk = bitcast float %spec.store.select.i.i.i34.i to i32
  %i.dl = fcmp ult float %spec.store.select.i.i.i34.i, 0.000000e+00
  %.0.v.i.i.i35.i = select i1 %i.dl, i32 -1, i32 1
  %.0.i.i.i36.i = add i32 %.0.v.i.i.i35.i, %i.dk
  %i.dm = bitcast i32 %.0.i.i.i36.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i37.i

_ZN4pbrt10AddRoundUpEff.exit.i37.i:               ; preds = %bb.m, %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %.010.i.i.i38.i = phi float [ %i.dm, %bb.m ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i30.i ]
  %.sroa.0.4.vec.insert10.i39.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i32.i, float %.010.i.i.i38.i, i64 1
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit: ; preds = %bb.j, %_ZN4pbrt10AddRoundUpEff.exit.i37.i
  %.sroa.0.0.i40.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i41.i, %bb.j ], [ %.sroa.0.4.vec.insert10.i39.i, %_ZN4pbrt10AddRoundUpEff.exit.i37.i ]
  %i.dn = trunc nuw i8 %i.br to i1                ; 2 uses
  %i.do = fdiv float %i.bk, %i.bp                 ; 2 uses
  %i.dp = fneg float %i.do
  %.sroa.8116.0 = select i1 %i.dn, float %i.dp, float %i.do
  %i.dq = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fdiv <2 x float> %i.az, %i.dr           ; 2 uses
  %i.dt = fneg <2 x float> %i.ds
  %.sroa.0112.0 = select i1 %i.dn, <2 x float> %i.dt, <2 x float> %i.ds
  %i.du = fcmp olt float %i.bw, 0.000000e+00
  %i.dv = fadd float %i.bw, f0x40C90FDB
  %spec.select = select i1 %i.du, float %i.dv, float %i.bw
  %i.dw = fsub float %i.bv, %i.ca
  %i.dx = fsub float %i.cc, %i.ca
  %i.dy = insertelement <2 x float> poison, float %spec.select, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.dw, i64 1
  %i.ea = insertelement <2 x float> %i.by, float %i.dx, i64 1
  %i.eb = fdiv <2 x float> %i.dz, %i.ea
  %4 = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> %.sroa.0.0.i23.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %3, align 16, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %.sroa.0.0.i40.i, ptr %i.ec, align 16, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %.sroa.0, ptr noundef nonnull align 4 dereferenceable(128) %i.ai, ptr noundef nonnull align 4 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx, i8 0, i64 16, i1 false)
  %i.ed = load float, ptr %i.bx, align 4, !tbaa !34
  %i.ee = load float, ptr %1, align 8, !tbaa !25
  %i.ef = fmul float %i.ed, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !27
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !26
  %i.ek = fsub float %i.eh, %i.ej
  %i.el = fmul float %i.ef, %i.ek
  %i.em = fdiv float 1.000000e+00, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.en, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0, i64 40, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.0112.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %.sroa.8116.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %i.eb, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.sroa.3.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.3.0..sroa.8.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store float %i.em, ptr %i.eo, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Point3fi") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.pbrt::Point3.5", align 8    ; 2 uses
  %4 = alloca %"class.pbrt::Point3fi", align 16   ; 5 uses
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
  %i.ep = fmul float %i.eo, %i.cz
  %i.eq = fadd float %i.en, %i.ep
  %i.er = tail call noundef float @llvm.fabs.f32(float %i.ba)
  %i.es = fmul float %i.er, %i.db
  %i.et = fadd float %i.eq, %i.es
  %i.eu = fmul float %i.et, f0x3F800002
  %i.ev = tail call noundef float @llvm.fabs.f32(float %i.au)
  %i.ew = tail call noundef float @llvm.fabs.f32(float %i.ax)
  %i.ex = fadd float %i.ev, %i.ew
  %i.ey = tail call noundef float @llvm.fabs.f32(float %i.bb)
  %i.ez = fadd float %i.ex, %i.ey
  %i.fa = tail call noundef float @llvm.fabs.f32(float %i.bd)
  %i.fb = fadd float %i.fa, %i.ez
  %i.fc = fmul float %i.fb, f0x34400002
  %i.fd = fadd float %i.fc, %i.eu
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt8Point3fi7IsExactEv.exit.thread, %bb.b
  %.sroa.0289.0 = phi <2 x float> [ %.sroa.0289.4.vec.insert297, %bb.b ], [ %.sroa.0289.4.vec.insert, %_ZNK4pbrt8Point3fi7IsExactEv.exit.thread ] ; 4 uses
  %.sroa.10.0 = phi float [ %i.cx, %bb.b ], [ %i.fd, %_ZNK4pbrt8Point3fi7IsExactEv.exit.thread ] ; 6 uses
  %i.fe = fcmp oeq float %i.bt, 1.000000e+00
  br i1 %i.fe, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %.sroa.04.0.vec.extract.i = extractelement <2 x float> %.sroa.0289.0, i64 0 ; 3 uses
  %i.ff = fcmp oeq float %.sroa.04.0.vec.extract.i, 0.000000e+00
  br i1 %i.ff, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0221.0.vec.insert = insertelement <2 x float> poison, float %i.ad, i64 0
  %.sroa.0.0.vec.insert.i.i = shufflevector <2 x float> %.sroa.0221.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

bb.f:                                             ; preds = %bb.d
  %i.fg = fsub float %i.ad, %.sroa.04.0.vec.extract.i ; 3 uses
  %or.cond.i.i.i.i.i = fcmp oeq float %i.fg, -inf
  br i1 %or.cond.i.i.i.i.i, label %_ZN4pbrt12SubRoundDownEff.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fh = fcmp oeq float %i.fg, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.fh, float -0.000000e+00, float %i.fg ; 2 uses
  %i.fi = bitcast float %spec.store.select.i.i.i.i.i to i32
  %i.fj = fcmp ogt float %spec.store.select.i.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i.i = select i1 %i.fj, i32 -1, i32 1
  %.0.i.i.i.i.i = add i32 %.0.v.i.i.i.i.i, %i.fi
  %i.fk = bitcast i32 %.0.i.i.i.i.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i.i

_ZN4pbrt12SubRoundDownEff.exit.i.i:               ; preds = %bb.g, %bb.f
  %.09.i.i.i.i.i = phi float [ %i.fk, %bb.g ], [ -inf, %bb.f ]
  %.sroa.0.0.vec.insert8.i.i = insertelement <2 x float> poison, float %.09.i.i.i.i.i, i64 0
  %i.fl = fadd float %i.ad, %.sroa.04.0.vec.extract.i ; 3 uses
  %or.cond.i.i.i.i = fcmp oeq float %i.fl, +inf
  br i1 %or.cond.i.i.i.i, label %_ZN4pbrt10AddRoundUpEff.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %i.fm = fcmp oeq float %i.fl, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.fm, float 0.000000e+00, float %i.fl ; 2 uses
  %i.fn = bitcast float %spec.store.select.i.i.i.i to i32
  %i.fo = fcmp ult float %spec.store.select.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i = select i1 %i.fo, i32 -1, i32 1
  %.0.i.i.i.i = add i32 %.0.v.i.i.i.i, %i.fn
  %i.fp = bitcast i32 %.0.i.i.i.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i.i

_ZN4pbrt10AddRoundUpEff.exit.i.i:                 ; preds = %bb.h, %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %.010.i.i.i.i = phi float [ %i.fp, %bb.h ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i.i ]
  %.sroa.0.4.vec.insert10.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i.i, float %.010.i.i.i.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i:   ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i.i, %bb.e ], [ %.sroa.0.4.vec.insert10.i.i, %_ZN4pbrt10AddRoundUpEff.exit.i.i ]
  %.sroa.04.4.vec.extract.i = extractelement <2 x float> %.sroa.0289.0, i64 1 ; 3 uses
  %i.fq = fcmp oeq float %.sroa.04.4.vec.extract.i, 0.000000e+00
  br i1 %i.fq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.fr = insertelement <2 x float> poison, float %i.ar, i64 0
  %.sroa.0.0.vec.insert.i24.i = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

bb.j:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.fs = fsub float %i.ar, %.sroa.04.4.vec.extract.i ; 3 uses
  %or.cond.i.i.i.i9.i = fcmp oeq float %i.fs, -inf
  br i1 %or.cond.i.i.i.i9.i, label %_ZN4pbrt12SubRoundDownEff.exit.i13.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ft = fcmp oeq float %i.fs, 0.000000e+00
  %spec.store.select.i.i.i.i10.i = select i1 %i.ft, float -0.000000e+00, float %i.fs ; 2 uses
  %i.fu = bitcast float %spec.store.select.i.i.i.i10.i to i32
  %i.fv = fcmp ogt float %spec.store.select.i.i.i.i10.i, 0.000000e+00
  %.0.v.i.i.i.i11.i = select i1 %i.fv, i32 -1, i32 1
  %.0.i.i.i.i12.i = add i32 %.0.v.i.i.i.i11.i, %i.fu
  %i.fw = bitcast i32 %.0.i.i.i.i12.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i13.i

_ZN4pbrt12SubRoundDownEff.exit.i13.i:             ; preds = %bb.k, %bb.j
  %.09.i.i.i.i14.i = phi float [ %i.fw, %bb.k ], [ -inf, %bb.j ]
  %.sroa.0.0.vec.insert8.i15.i = insertelement <2 x float> poison, float %.09.i.i.i.i14.i, i64 0
  %i.fx = fadd float %i.ar, %.sroa.04.4.vec.extract.i ; 3 uses
  %or.cond.i.i.i16.i = fcmp oeq float %i.fx, +inf
  br i1 %or.cond.i.i.i16.i, label %_ZN4pbrt10AddRoundUpEff.exit.i20.i, label %bb.l

bb.l:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %i.fy = fcmp oeq float %i.fx, 0.000000e+00
  %spec.store.select.i.i.i17.i = select i1 %i.fy, float 0.000000e+00, float %i.fx ; 2 uses
  %i.fz = bitcast float %spec.store.select.i.i.i17.i to i32
  %i.ga = fcmp ult float %spec.store.select.i.i.i17.i, 0.000000e+00
  %.0.v.i.i.i18.i = select i1 %i.ga, i32 -1, i32 1
  %.0.i.i.i19.i = add i32 %.0.v.i.i.i18.i, %i.fz
  %i.gb = bitcast i32 %.0.i.i.i19.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i20.i

_ZN4pbrt10AddRoundUpEff.exit.i20.i:               ; preds = %bb.l, %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %.010.i.i.i21.i = phi float [ %i.gb, %bb.l ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i13.i ]
  %.sroa.0.4.vec.insert10.i22.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i15.i, float %.010.i.i.i21.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i: ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i20.i, %bb.i
  %.sroa.0.0.i23.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i24.i, %bb.i ], [ %.sroa.0.4.vec.insert10.i22.i, %_ZN4pbrt10AddRoundUpEff.exit.i20.i ]
  %i.gc = fcmp oeq float %.sroa.10.0, 0.000000e+00
  br i1 %i.gc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.gd = insertelement <2 x float> poison, float %i.bf, i64 0
  %.sroa.0.0.vec.insert.i41.i = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

bb.n:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.ge = fsub float %i.bf, %.sroa.10.0           ; 3 uses
  %or.cond.i.i.i.i26.i = fcmp oeq float %i.ge, -inf
  br i1 %or.cond.i.i.i.i26.i, label %_ZN4pbrt12SubRoundDownEff.exit.i30.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gf = fcmp oeq float %i.ge, 0.000000e+00
  %spec.store.select.i.i.i.i27.i = select i1 %i.gf, float -0.000000e+00, float %i.ge ; 2 uses
  %i.gg = bitcast float %spec.store.select.i.i.i.i27.i to i32
  %i.gh = fcmp ogt float %spec.store.select.i.i.i.i27.i, 0.000000e+00
  %.0.v.i.i.i.i28.i = select i1 %i.gh, i32 -1, i32 1
  %.0.i.i.i.i29.i = add i32 %.0.v.i.i.i.i28.i, %i.gg
  %i.gi = bitcast i32 %.0.i.i.i.i29.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i30.i

_ZN4pbrt12SubRoundDownEff.exit.i30.i:             ; preds = %bb.o, %bb.n
  %.09.i.i.i.i31.i = phi float [ %i.gi, %bb.o ], [ -inf, %bb.n ]
  %.sroa.0.0.vec.insert8.i32.i = insertelement <2 x float> poison, float %.09.i.i.i.i31.i, i64 0
  %i.gj = fadd float %i.bf, %.sroa.10.0           ; 3 uses
  %or.cond.i.i.i33.i = fcmp oeq float %i.gj, +inf
  br i1 %or.cond.i.i.i33.i, label %_ZN4pbrt10AddRoundUpEff.exit.i37.i, label %bb.p

bb.p:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %i.gk = fcmp oeq float %i.gj, 0.000000e+00
  %spec.store.select.i.i.i34.i = select i1 %i.gk, float 0.000000e+00, float %i.gj ; 2 uses
  %i.gl = bitcast float %spec.store.select.i.i.i34.i to i32
  %i.gm = fcmp ult float %spec.store.select.i.i.i34.i, 0.000000e+00
  %.0.v.i.i.i35.i = select i1 %i.gm, i32 -1, i32 1
  %.0.i.i.i36.i = add i32 %.0.v.i.i.i35.i, %i.gl
  %i.gn = bitcast i32 %.0.i.i.i36.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i37.i

_ZN4pbrt10AddRoundUpEff.exit.i37.i:               ; preds = %bb.p, %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %.010.i.i.i38.i = phi float [ %i.gn, %bb.p ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i30.i ]
  %.sroa.0.4.vec.insert10.i39.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i32.i, float %.010.i.i.i38.i, i64 1
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit: ; preds = %bb.m, %_ZN4pbrt10AddRoundUpEff.exit.i37.i
  %.sroa.0.0.i40.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i41.i, %bb.m ], [ %.sroa.0.4.vec.insert10.i39.i, %_ZN4pbrt10AddRoundUpEff.exit.i37.i ]
  %5 = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> %.sroa.0.0.i23.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %5, ptr %0, align 4, !tbaa !28
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0.0.i40.i, ptr %i.go, align 4, !tbaa !28
  br label %bb.ad

bb.q:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %.sroa.04.0.vec.extract.i166 = extractelement <2 x float> %.sroa.0289.0, i64 0 ; 3 uses
  %i.gp = fcmp oeq float %.sroa.04.0.vec.extract.i166, 0.000000e+00
  br i1 %i.gp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.ad, i64 0
  %.sroa.0.0.vec.insert.i.i218 = shufflevector <2 x float> %.sroa.0.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i181

bb.s:                                             ; preds = %bb.q
  %i.gq = fsub float %i.ad, %.sroa.04.0.vec.extract.i166 ; 3 uses
  %or.cond.i.i.i.i.i167 = fcmp oeq float %i.gq, -inf
  br i1 %or.cond.i.i.i.i.i167, label %_ZN4pbrt12SubRoundDownEff.exit.i.i171, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gr = fcmp oeq float %i.gq, 0.000000e+00
  %spec.store.select.i.i.i.i.i168 = select i1 %i.gr, float -0.000000e+00, float %i.gq ; 2 uses
  %i.gs = bitcast float %spec.store.select.i.i.i.i.i168 to i32
  %i.gt = fcmp ogt float %spec.store.select.i.i.i.i.i168, 0.000000e+00
  %.0.v.i.i.i.i.i169 = select i1 %i.gt, i32 -1, i32 1
  %.0.i.i.i.i.i170 = add i32 %.0.v.i.i.i.i.i169, %i.gs
  %i.gu = bitcast i32 %.0.i.i.i.i.i170 to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i.i171

_ZN4pbrt12SubRoundDownEff.exit.i.i171:            ; preds = %bb.t, %bb.s
  %.09.i.i.i.i.i172 = phi float [ %i.gu, %bb.t ], [ -inf, %bb.s ]
  %.sroa.0.0.vec.insert8.i.i173 = insertelement <2 x float> poison, float %.09.i.i.i.i.i172, i64 0
  %i.gv = fadd float %i.ad, %.sroa.04.0.vec.extract.i166 ; 3 uses
  %or.cond.i.i.i.i174 = fcmp oeq float %i.gv, +inf
  br i1 %or.cond.i.i.i.i174, label %_ZN4pbrt10AddRoundUpEff.exit.i.i178, label %bb.u

bb.u:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i.i171
  %i.gw = fcmp oeq float %i.gv, 0.000000e+00
  %spec.store.select.i.i.i.i175 = select i1 %i.gw, float 0.000000e+00, float %i.gv ; 2 uses
  %i.gx = bitcast float %spec.store.select.i.i.i.i175 to i32
  %i.gy = fcmp ult float %spec.store.select.i.i.i.i175, 0.000000e+00
  %.0.v.i.i.i.i176 = select i1 %i.gy, i32 -1, i32 1
  %.0.i.i.i.i177 = add i32 %.0.v.i.i.i.i176, %i.gx
  %i.gz = bitcast i32 %.0.i.i.i.i177 to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i.i178

_ZN4pbrt10AddRoundUpEff.exit.i.i178:              ; preds = %bb.u, %_ZN4pbrt12SubRoundDownEff.exit.i.i171
  %.010.i.i.i.i179 = phi float [ %i.gz, %bb.u ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i.i171 ]
  %.sroa.0.4.vec.insert10.i.i180 = insertelement <2 x float> %.sroa.0.0.vec.insert8.i.i173, float %.010.i.i.i.i179, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i181

_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i181: ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i.i178, %bb.r
  %.sroa.0.0.i.i182 = phi <2 x float> [ %.sroa.0.0.vec.insert.i.i218, %bb.r ], [ %.sroa.0.4.vec.insert10.i.i180, %_ZN4pbrt10AddRoundUpEff.exit.i.i178 ]
  %.sroa.04.4.vec.extract.i184 = extractelement <2 x float> %.sroa.0289.0, i64 1 ; 3 uses
  %i.ha = fcmp oeq float %.sroa.04.4.vec.extract.i184, 0.000000e+00
  br i1 %i.ha, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i181
  %i.hb = insertelement <2 x float> poison, float %i.ar, i64 0
  %.sroa.0.0.vec.insert.i24.i217 = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i199

bb.w:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i181
  %i.hc = fsub float %i.ar, %.sroa.04.4.vec.extract.i184 ; 3 uses
  %or.cond.i.i.i.i9.i185 = fcmp oeq float %i.hc, -inf
  br i1 %or.cond.i.i.i.i9.i185, label %_ZN4pbrt12SubRoundDownEff.exit.i13.i189, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hd = fcmp oeq float %i.hc, 0.000000e+00
  %spec.store.select.i.i.i.i10.i186 = select i1 %i.hd, float -0.000000e+00, float %i.hc ; 2 uses
  %i.he = bitcast float %spec.store.select.i.i.i.i10.i186 to i32
  %i.hf = fcmp ogt float %spec.store.select.i.i.i.i10.i186, 0.000000e+00
  %.0.v.i.i.i.i11.i187 = select i1 %i.hf, i32 -1, i32 1
  %.0.i.i.i.i12.i188 = add i32 %.0.v.i.i.i.i11.i187, %i.he
  %i.hg = bitcast i32 %.0.i.i.i.i12.i188 to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i13.i189

_ZN4pbrt12SubRoundDownEff.exit.i13.i189:          ; preds = %bb.x, %bb.w
  %.09.i.i.i.i14.i190 = phi float [ %i.hg, %bb.x ], [ -inf, %bb.w ]
  %.sroa.0.0.vec.insert8.i15.i191 = insertelement <2 x float> poison, float %.09.i.i.i.i14.i190, i64 0
  %i.hh = fadd float %i.ar, %.sroa.04.4.vec.extract.i184 ; 3 uses
  %or.cond.i.i.i16.i192 = fcmp oeq float %i.hh, +inf
  br i1 %or.cond.i.i.i16.i192, label %_ZN4pbrt10AddRoundUpEff.exit.i20.i196, label %bb.y

bb.y:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i13.i189
  %i.hi = fcmp oeq float %i.hh, 0.000000e+00
  %spec.store.select.i.i.i17.i193 = select i1 %i.hi, float 0.000000e+00, float %i.hh ; 2 uses
  %i.hj = bitcast float %spec.store.select.i.i.i17.i193 to i32
  %i.hk = fcmp ult float %spec.store.select.i.i.i17.i193, 0.000000e+00
  %.0.v.i.i.i18.i194 = select i1 %i.hk, i32 -1, i32 1
  %.0.i.i.i19.i195 = add i32 %.0.v.i.i.i18.i194, %i.hj
  %i.hl = bitcast i32 %.0.i.i.i19.i195 to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i20.i196

_ZN4pbrt10AddRoundUpEff.exit.i20.i196:            ; preds = %bb.y, %_ZN4pbrt12SubRoundDownEff.exit.i13.i189
  %.010.i.i.i21.i197 = phi float [ %i.hl, %bb.y ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i13.i189 ]
  %.sroa.0.4.vec.insert10.i22.i198 = insertelement <2 x float> %.sroa.0.0.vec.insert8.i15.i191, float %.010.i.i.i21.i197, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i199

_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i199: ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i20.i196, %bb.v
  %.sroa.0.0.i23.i200 = phi <2 x float> [ %.sroa.0.0.vec.insert.i24.i217, %bb.v ], [ %.sroa.0.4.vec.insert10.i22.i198, %_ZN4pbrt10AddRoundUpEff.exit.i20.i196 ]
  %i.hm = fcmp oeq float %.sroa.10.0, 0.000000e+00
  br i1 %i.hm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i199
  %i.hn = insertelement <2 x float> poison, float %i.bf, i64 0
  %.sroa.0.0.vec.insert.i41.i216 = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit219

bb.aa:                                            ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i199
  %i.ho = fsub float %i.bf, %.sroa.10.0           ; 3 uses
  %or.cond.i.i.i.i26.i201 = fcmp oeq float %i.ho, -inf
  br i1 %or.cond.i.i.i.i26.i201, label %_ZN4pbrt12SubRoundDownEff.exit.i30.i205, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hp = fcmp oeq float %i.ho, 0.000000e+00
  %spec.store.select.i.i.i.i27.i202 = select i1 %i.hp, float -0.000000e+00, float %i.ho ; 2 uses
  %i.hq = bitcast float %spec.store.select.i.i.i.i27.i202 to i32
  %i.hr = fcmp ogt float %spec.store.select.i.i.i.i27.i202, 0.000000e+00
  %.0.v.i.i.i.i28.i203 = select i1 %i.hr, i32 -1, i32 1
  %.0.i.i.i.i29.i204 = add i32 %.0.v.i.i.i.i28.i203, %i.hq
  %i.hs = bitcast i32 %.0.i.i.i.i29.i204 to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i30.i205

_ZN4pbrt12SubRoundDownEff.exit.i30.i205:          ; preds = %bb.ab, %bb.aa
  %.09.i.i.i.i31.i206 = phi float [ %i.hs, %bb.ab ], [ -inf, %bb.aa ]
  %.sroa.0.0.vec.insert8.i32.i207 = insertelement <2 x float> poison, float %.09.i.i.i.i31.i206, i64 0
  %i.ht = fadd float %i.bf, %.sroa.10.0           ; 3 uses
  %or.cond.i.i.i33.i208 = fcmp oeq float %i.ht, +inf
  br i1 %or.cond.i.i.i33.i208, label %_ZN4pbrt10AddRoundUpEff.exit.i37.i212, label %bb.ac

bb.ac:                                            ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i30.i205
  %i.hu = fcmp oeq float %i.ht, 0.000000e+00
  %spec.store.select.i.i.i34.i209 = select i1 %i.hu, float 0.000000e+00, float %i.ht ; 2 uses
  %i.hv = bitcast float %spec.store.select.i.i.i34.i209 to i32
  %i.hw = fcmp ult float %spec.store.select.i.i.i34.i209, 0.000000e+00
  %.0.v.i.i.i35.i210 = select i1 %i.hw, i32 -1, i32 1
  %.0.i.i.i36.i211 = add i32 %.0.v.i.i.i35.i210, %i.hv
  %i.hx = bitcast i32 %.0.i.i.i36.i211 to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i37.i212

_ZN4pbrt10AddRoundUpEff.exit.i37.i212:            ; preds = %bb.ac, %_ZN4pbrt12SubRoundDownEff.exit.i30.i205
  %.010.i.i.i38.i213 = phi float [ %i.hx, %bb.ac ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i30.i205 ]
  %.sroa.0.4.vec.insert10.i39.i214 = insertelement <2 x float> %.sroa.0.0.vec.insert8.i32.i207, float %.010.i.i.i38.i213, i64 1
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit219

_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit219: ; preds = %bb.z, %_ZN4pbrt10AddRoundUpEff.exit.i37.i212
  %.sroa.0.0.i40.i215 = phi <2 x float> [ %.sroa.0.0.vec.insert.i41.i216, %bb.z ], [ %.sroa.0.4.vec.insert10.i39.i214, %_ZN4pbrt10AddRoundUpEff.exit.i37.i212 ]
  %6 = shufflevector <2 x float> %.sroa.0.0.i.i182, <2 x float> %.sroa.0.0.i23.i200, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %4, align 16, !tbaa !28
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> %.sroa.0.0.i40.i215, ptr %i.hy, align 16, !tbaa !28
  call void @_ZNK4pbrt6Tuple3INS_6Point3ENS_8IntervalEEdvIfEENS1_IDTdvtlS2_EtlT_EEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3.5") align 4 %3, ptr noundef nonnull align 4 dereferenceable(24) %4, float noundef %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit219, %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %0, <2 x float> %1, float %2, <2 x float> %3, float %4) unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.04.0.vec.extract = extractelement <2 x float> %3, i64 0
  %i.a = fcmp oeq float %.sroa.04.0.vec.extract, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert.i = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit

bb.c:                                             ; preds = %bb.a
  %foldExtExtBinop = fsub <2 x float> %1, %3
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %or.cond.i.i.i.i = fcmp oeq float %i.b, -inf
  br i1 %or.cond.i.i.i.i, label %_ZN4pbrt12SubRoundDownEff.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = fcmp oeq float %i.b, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.c, float -0.000000e+00, float %i.b ; 2 uses
  %i.d = bitcast float %spec.store.select.i.i.i.i to i32
  %i.e = fcmp ogt float %spec.store.select.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i = select i1 %i.e, i32 -1, i32 1
  %.0.i.i.i.i = add i32 %.0.v.i.i.i.i, %i.d
  %i.f = bitcast i32 %.0.i.i.i.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i

_ZN4pbrt12SubRoundDownEff.exit.i:                 ; preds = %bb.d, %bb.c
  %.09.i.i.i.i = phi float [ %i.f, %bb.d ], [ -inf, %bb.c ]
  %.sroa.0.0.vec.insert8.i = insertelement <2 x float> poison, float %.09.i.i.i.i, i64 0
  %foldExtExtBinop50 = fadd <2 x float> %1, %3
  %i.g = extractelement <2 x float> %foldExtExtBinop50, i64 0 ; 3 uses
  %or.cond.i.i.i = fcmp oeq float %i.g, +inf
  br i1 %or.cond.i.i.i, label %_ZN4pbrt10AddRoundUpEff.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  %spec.store.select.i.i.i = select i1 %i.h, float 0.000000e+00, float %i.g ; 2 uses
  %i.i = bitcast float %spec.store.select.i.i.i to i32
  %i.j = fcmp ult float %spec.store.select.i.i.i, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.j, i32 -1, i32 1
  %.0.i.i.i = add i32 %.0.v.i.i.i, %i.i
  %i.k = bitcast i32 %.0.i.i.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i

_ZN4pbrt10AddRoundUpEff.exit.i:                   ; preds = %bb.e, %_ZN4pbrt12SubRoundDownEff.exit.i
  %.010.i.i.i = phi float [ %i.k, %bb.e ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i ]
  %.sroa.0.4.vec.insert10.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i, float %.010.i.i.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit

_ZN4pbrt8Interval17FromValueAndErrorEff.exit:     ; preds = %bb.b, %_ZN4pbrt10AddRoundUpEff.exit.i
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i, %bb.b ], [ %.sroa.0.4.vec.insert10.i, %_ZN4pbrt10AddRoundUpEff.exit.i ]
  %.sroa.07.4.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %.sroa.04.4.vec.extract = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.l = fcmp oeq float %.sroa.04.4.vec.extract, 0.000000e+00
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit
  %.sroa.0.0.vec.insert.i24 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25

bb.g:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit
  %i.m = fsub float %.sroa.07.4.vec.extract, %.sroa.04.4.vec.extract ; 3 uses
  %or.cond.i.i.i.i9 = fcmp oeq float %i.m, -inf
  br i1 %or.cond.i.i.i.i9, label %_ZN4pbrt12SubRoundDownEff.exit.i13, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = fcmp oeq float %i.m, 0.000000e+00
  %spec.store.select.i.i.i.i10 = select i1 %i.n, float -0.000000e+00, float %i.m ; 2 uses
  %i.o = bitcast float %spec.store.select.i.i.i.i10 to i32
  %i.p = fcmp ogt float %spec.store.select.i.i.i.i10, 0.000000e+00
  %.0.v.i.i.i.i11 = select i1 %i.p, i32 -1, i32 1
  %.0.i.i.i.i12 = add i32 %.0.v.i.i.i.i11, %i.o
  %i.q = bitcast i32 %.0.i.i.i.i12 to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i13

_ZN4pbrt12SubRoundDownEff.exit.i13:               ; preds = %bb.h, %bb.g
  %.09.i.i.i.i14 = phi float [ %i.q, %bb.h ], [ -inf, %bb.g ]
  %.sroa.0.0.vec.insert8.i15 = insertelement <2 x float> poison, float %.09.i.i.i.i14, i64 0
  %i.r = fadd float %.sroa.07.4.vec.extract, %.sroa.04.4.vec.extract ; 3 uses
  %or.cond.i.i.i16 = fcmp oeq float %i.r, +inf
  br i1 %or.cond.i.i.i16, label %_ZN4pbrt10AddRoundUpEff.exit.i20, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i13
  %i.s = fcmp oeq float %i.r, 0.000000e+00
  %spec.store.select.i.i.i17 = select i1 %i.s, float 0.000000e+00, float %i.r ; 2 uses
  %i.t = bitcast float %spec.store.select.i.i.i17 to i32
  %i.u = fcmp ult float %spec.store.select.i.i.i17, 0.000000e+00
  %.0.v.i.i.i18 = select i1 %i.u, i32 -1, i32 1
  %.0.i.i.i19 = add i32 %.0.v.i.i.i18, %i.t
  %i.v = bitcast i32 %.0.i.i.i19 to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i20

_ZN4pbrt10AddRoundUpEff.exit.i20:                 ; preds = %bb.i, %_ZN4pbrt12SubRoundDownEff.exit.i13
  %.010.i.i.i21 = phi float [ %i.v, %bb.i ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i13 ]
  %.sroa.0.4.vec.insert10.i22 = insertelement <2 x float> %.sroa.0.0.vec.insert8.i15, float %.010.i.i.i21, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25

_ZN4pbrt8Interval17FromValueAndErrorEff.exit25:   ; preds = %bb.f, %_ZN4pbrt10AddRoundUpEff.exit.i20
  %.sroa.0.0.i23 = phi <2 x float> [ %.sroa.0.0.vec.insert.i24, %bb.f ], [ %.sroa.0.4.vec.insert10.i22, %_ZN4pbrt10AddRoundUpEff.exit.i20 ]
  %i.w = fcmp oeq float %4, 0.000000e+00
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25
  %i.x = insertelement <2 x float> poison, float %2, i64 0
  %.sroa.0.0.vec.insert.i41 = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit42

bb.k:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25
  %i.y = fsub float %2, %4                        ; 3 uses
  %or.cond.i.i.i.i26 = fcmp oeq float %i.y, -inf
  br i1 %or.cond.i.i.i.i26, label %_ZN4pbrt12SubRoundDownEff.exit.i30, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = fcmp oeq float %i.y, 0.000000e+00
  %spec.store.select.i.i.i.i27 = select i1 %i.z, float -0.000000e+00, float %i.y ; 2 uses
  %i.aa = bitcast float %spec.store.select.i.i.i.i27 to i32
  %i.ab = fcmp ogt float %spec.store.select.i.i.i.i27, 0.000000e+00
  %.0.v.i.i.i.i28 = select i1 %i.ab, i32 -1, i32 1
  %.0.i.i.i.i29 = add i32 %.0.v.i.i.i.i28, %i.aa
  %i.ac = bitcast i32 %.0.i.i.i.i29 to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i30

_ZN4pbrt12SubRoundDownEff.exit.i30:               ; preds = %bb.l, %bb.k
  %.09.i.i.i.i31 = phi float [ %i.ac, %bb.l ], [ -inf, %bb.k ]
  %.sroa.0.0.vec.insert8.i32 = insertelement <2 x float> poison, float %.09.i.i.i.i31, i64 0
  %i.ad = fadd float %2, %4                       ; 3 uses
  %or.cond.i.i.i33 = fcmp oeq float %i.ad, +inf
  br i1 %or.cond.i.i.i33, label %_ZN4pbrt10AddRoundUpEff.exit.i37, label %bb.m

bb.m:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i30
  %i.ae = fcmp oeq float %i.ad, 0.000000e+00
  %spec.store.select.i.i.i34 = select i1 %i.ae, float 0.000000e+00, float %i.ad ; 2 uses
  %i.af = bitcast float %spec.store.select.i.i.i34 to i32
  %i.ag = fcmp ult float %spec.store.select.i.i.i34, 0.000000e+00
  %.0.v.i.i.i35 = select i1 %i.ag, i32 -1, i32 1
  %.0.i.i.i36 = add i32 %.0.v.i.i.i35, %i.af
  %i.ah = bitcast i32 %.0.i.i.i36 to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i37

_ZN4pbrt10AddRoundUpEff.exit.i37:                 ; preds = %bb.m, %_ZN4pbrt12SubRoundDownEff.exit.i30
  %.010.i.i.i38 = phi float [ %i.ah, %bb.m ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i30 ]
  %.sroa.0.4.vec.insert10.i39 = insertelement <2 x float> %.sroa.0.0.vec.insert8.i32, float %.010.i.i.i38, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit42

_ZN4pbrt8Interval17FromValueAndErrorEff.exit42:   ; preds = %bb.j, %_ZN4pbrt10AddRoundUpEff.exit.i37
  %.sroa.0.0.i40 = phi <2 x float> [ %.sroa.0.0.vec.insert.i41, %bb.j ], [ %.sroa.0.4.vec.insert10.i39, %_ZN4pbrt10AddRoundUpEff.exit.i37 ]
  %5 = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.0.0.i23, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %5, ptr %0, align 4, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0.0.i40, ptr %i.ai, align 4, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt6Sphere8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(42) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !59, !alias.scope !312
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !61, !alias.scope !312
  store i8 0, ptr %i.l, align 8, !tbaa !62, !alias.scope !312
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_9TransformEJS4_RKbS6_RKfS8_S8_S8_S8_S8_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str, ptr noundef nonnull align 4 dereferenceable(128) %i.b, ptr noundef nonnull align 4 dereferenceable(128) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_ZN4pbrt12StringPrintfIJRKNS_9TransformES3_RKbS5_RKfS7_S7_S7_S7_S7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %0, align 8, !tbaa !63, !alias.scope !312 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.l, align 8, !tbaa !62, !alias.scope !312
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.n

_ZN4pbrt12StringPrintfIJRKNS_9TransformES3_RKbS5_RKfS7_S7_S7_S7_S7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt6Sphere6CreateEPKNS_9TransformES3_bRKNS_19ParameterDictionaryEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(108) %3, ptr nofree readnone captures(none) %4, ptr %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.b, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.c, align 2, !tbaa !62
  %i.d = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, float noundef 1.000000e+00)
          to label %bb.a unwind label %bb.e       ; 9 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %6, align 8, !tbaa !63     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !62
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !59
  store i32 1852403066, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i8 0, ptr %i.k, align 4, !tbaa !62
  %i.l = fneg float %i.d                          ; 5 uses
  %i.m = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %3, ptr noundef nonnull align 8 dereferenceable(32) %7, float noundef %i.l)
          to label %bb.b unwind label %bb.f       ; 4 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load ptr, ptr %7, align 8, !tbaa !63     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.i
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.b
  %i.p = load i64, ptr %i.i, align 8, !tbaa !62
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.r, ptr %8, align 8, !tbaa !59
  store i32 2019650938, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 4, ptr %i.s, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 0, ptr %i.t, align 4, !tbaa !62
  %i.u = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %3, ptr noundef nonnull align 8 dereferenceable(32) %8, float noundef %i.d)
          to label %bb.c unwind label %bb.g       ; 4 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.v = load ptr, ptr %8, align 8, !tbaa !63     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.r
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.c
  %i.x = load i64, ptr %i.r, align 8, !tbaa !62
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.z, ptr %9, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.z, ptr noundef nonnull align 1 dereferenceable(6) @.str.7, i64 6, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 6, ptr %i.aa, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i8 0, ptr %i.ab, align 2, !tbaa !62
  %i.ac = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %3, ptr noundef nonnull align 8 dereferenceable(32) %9, float noundef 3.600000e+02)
          to label %bb.d unwind label %bb.h       ; 3 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.ad = load ptr, ptr %9, align 8, !tbaa !63    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.d
  %i.af = load i64, ptr %i.z, align 8, !tbaa !62
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %i.ah = zext i1 %2 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.ai = load ptr, ptr %5, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 48, i64 noundef 8), !inline_history !313 ; 11 uses
  store float %i.d, ptr %i.al, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = fcmp olt float %i.u, %i.m
  %.sroa.speculated35.i.i.i = select i1 %i.an, float %i.u, float %i.m ; 4 uses
  %i.ao = fcmp olt float %.sroa.speculated35.i.i.i, %i.l
  %i.ap = fcmp ogt float %.sroa.speculated35.i.i.i, %i.d
  %..i12.i.i.i = select i1 %i.ap, float %i.d, float %.sroa.speculated35.i.i.i
  %.0.i.i.i.i = select i1 %i.ao, float %i.l, float %..i12.i.i.i
  store float %.0.i.i.i.i, ptr %i.am, align 4, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = fcmp olt float %i.m, %i.u
  %.sroa.speculated32.i.i.i = select i1 %i.ar, float %i.u, float %i.m ; 4 uses
  %i.as = fcmp olt float %.sroa.speculated32.i.i.i, %i.l
  %i.at = fcmp ogt float %.sroa.speculated32.i.i.i, %i.d
  %..i14.i.i.i = select i1 %i.at, float %i.d, float %.sroa.speculated32.i.i.i
  %.0.i15.i.i.i = select i1 %i.as, float %i.l, float %..i14.i.i.i
  store float %.0.i15.i.i.i, ptr %i.aq, align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.av = fdiv float %.sroa.speculated35.i.i.i, %i.d ; 3 uses
  %i.aw = fcmp olt float %i.av, -1.000000e+00
  %i.ax = fcmp ogt float %i.av, 1.000000e+00
  %..i17.i.i.i = select i1 %i.ax, float 1.000000e+00, float %i.av
  %.0.i18.i.i.i = select i1 %i.aw, float -1.000000e+00, float %..i17.i.i.i
  %i.ay = call noundef float @acosf(float noundef %.0.i18.i.i.i) #32
  store float %i.ay, ptr %i.au, align 4, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ba = fdiv float %.sroa.speculated32.i.i.i, %i.d ; 3 uses
  %i.bb = fcmp olt float %i.ba, -1.000000e+00
  %i.bc = fcmp ogt float %i.ba, 1.000000e+00
  %..i20.i.i.i = select i1 %i.bc, float 1.000000e+00, float %i.ba
  %.0.i21.i.i.i = select i1 %i.bb, float -1.000000e+00, float %..i20.i.i.i
  %i.bd = call noundef float @acosf(float noundef %.0.i21.i.i.i) #32
  store float %i.bd, ptr %i.az, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.bf = fcmp olt float %i.ac, 0.000000e+00
  %i.bg = fcmp ogt float %i.ac, 3.600000e+02
  %..i22.i.i.i = select i1 %i.bg, float 3.600000e+02, float %i.ac
  %i.bh = fmul float %..i22.i.i.i, f0x3C8EFA35
  %i.bi = select i1 %i.bf, float 0.000000e+00, float %i.bh
  store float %i.bi, ptr %i.be, align 4, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %0, ptr %i.bj, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %1, ptr %i.bk, align 8, !tbaa !56
end_hunk_0
begin_hunk_1_@_ZNK4pbrt5Curve4AreaEv:bb.a
  %i.u = call noundef float @sqrtf(float noundef %i.t) #32
  %i.v = fadd float %i.u, 0.000000e+00
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.03.0.copyload.1 = load <2 x float>, ptr %i.w, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.24.0.copyload.1 = load float, ptr %.sroa.24.0..sroa_idx.1, align 8 ; 2 uses
  %i.x = fsub float %.sroa.24.0.copyload, %.sroa.24.0.copyload.1 ; 2 uses
  %i.y = fsub <2 x float> %.sroa.03.0.copyload, %.sroa.03.0.copyload.1 ; 2 uses
  %i.z = fmul <2 x float> %i.y, %i.y              ; 2 uses
  %shift22 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop23 = fadd <2 x float> %i.z, %shift22
  %i.aa = extractelement <2 x float> %foldExtExtBinop23, i64 0
  %i.ab = fmul float %i.x, %i.x
  %i.ac = fadd float %i.ab, %i.aa
  %i.ad = call noundef float @sqrtf(float noundef %i.ac) #32
  %i.ae = fadd float %i.v, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.03.0.copyload.2 = load <2 x float>, ptr %i.af, align 4
  %.sroa.24.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.24.0.copyload.2 = load float, ptr %.sroa.24.0..sroa_idx.2, align 4
  %i.ag = fsub float %.sroa.24.0.copyload.1, %.sroa.24.0.copyload.2 ; 2 uses
  %i.ah = fsub <2 x float> %.sroa.03.0.copyload.1, %.sroa.03.0.copyload.2 ; 2 uses
  %i.ai = fmul <2 x float> %i.ah, %i.ah           ; 2 uses
  %shift25 = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop26 = fadd <2 x float> %i.ai, %shift25
  %i.aj = extractelement <2 x float> %foldExtExtBinop26, i64 0
  %i.ak = fmul float %i.ag, %i.ag
  %i.al = fadd float %i.ak, %i.aj
  %i.am = call noundef float @sqrtf(float noundef %i.al) #32
  %i.an = fadd float %i.ae, %i.am
  %i.ao = fsub float 1.000000e+00, %i.m
  %i.ap = fmul float %i.j, %i.ao
  %i.aq = fmul float %i.l, %i.m
  %i.ar = fadd float %i.aq, %i.ap
  %i.as = fsub float 1.000000e+00, %i.g
  %i.at = fmul float %i.as, %i.j
  %i.au = fmul float %i.g, %i.l
  %i.av = fadd float %i.at, %i.au
  %i.aw = fadd float %i.av, %i.ar
  %i.ax = fmul float %i.aw, 5.000000e-01
  %i.ay = fmul float %i.ax, %i.an
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret float %i.ay
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt24CubicBezierControlPointsEN4pstd4spanIKNS_6Point3IfEEEEff(ptr dead_on_unwind noalias writable sret(%"class.pstd::array.64") align 4 %0, ptr %1, i64 %2, float noundef %3, float noundef %4) local_unnamed_addr #13 comdat {
_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit:
  %.sroa.070.0.copyload.i = load <2 x float>, ptr %1, align 4, !tbaa !28 ; 2 uses
  %.sroa.271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.271.0.copyload.i = load float, ptr %.sroa.271.0..sroa_idx.i, align 4, !tbaa !28 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.068.0.copyload.i = load <2 x float>, ptr %i.a, align 4, !tbaa !28 ; 4 uses
  %.sroa.269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.269.0.copyload.i = load float, ptr %.sroa.269.0..sroa_idx.i, align 4, !tbaa !28 ; 4 uses
  %i.b = fsub float 1.000000e+00, %3              ; 7 uses
  %i.c = fmul float %i.b, %.sroa.271.0.copyload.i
  %i.d = fmul float %3, %.sroa.269.0.copyload.i
  %i.e = fadd float %i.c, %i.d                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.056.0.copyload.i = load <2 x float>, ptr %i.f, align 4, !tbaa !28 ; 4 uses
  %.sroa.257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.257.0.copyload.i = load float, ptr %.sroa.257.0..sroa_idx.i, align 4, !tbaa !28 ; 4 uses
  %i.g = fmul float %i.b, %.sroa.269.0.copyload.i
  %i.h = fmul float %3, %.sroa.257.0.copyload.i
  %i.i = fadd float %i.g, %i.h                    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.j, align 4, !tbaa !28 ; 2 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !tbaa !28 ; 2 uses
  %i.k = fmul float %i.b, %.sroa.257.0.copyload.i
  %i.l = fmul float %3, %.sroa.245.0.copyload.i
  %i.m = fadd float %i.k, %i.l                    ; 2 uses
  %i.n = fmul float %i.b, %i.e
  %i.o = fmul float %3, %i.i
  %i.p = fadd float %i.n, %i.o                    ; 2 uses
  %i.q = fmul float %i.b, %i.i
  %i.r = fmul float %3, %i.m
  %i.s = fadd float %i.q, %i.r                    ; 2 uses
  %i.t = fmul float %i.b, %i.p
  %i.u = fmul float %3, %i.s
  %i.v = fadd float %i.t, %i.u
  %i.w = fsub float 1.000000e+00, %4              ; 11 uses
  %i.x = fmul float %i.w, %i.p
  %i.y = fmul float %4, %i.s
  %i.z = fadd float %i.x, %i.y
  %i.aa = fmul float %i.w, %i.e
  %i.ab = fmul float %4, %i.i
  %i.ac = fadd float %i.aa, %i.ab
  %i.ad = fmul float %i.w, %i.i
  %i.ae = fmul float %4, %i.m
  %i.af = fadd float %i.ad, %i.ae
  %i.ag = fmul float %i.w, %i.ac
  %i.ah = fmul float %4, %i.af
  %i.ai = insertelement <2 x float> poison, float %i.b, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.ak = fmul <2 x float> %i.aj, %.sroa.070.0.copyload.i
  %i.al = insertelement <2 x float> poison, float %3, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.an = fmul <2 x float> %i.am, %.sroa.068.0.copyload.i
  %i.ao = fadd <2 x float> %i.ak, %i.an           ; 2 uses
  %i.ap = fmul <2 x float> %i.aj, %.sroa.068.0.copyload.i
  %i.aq = fmul <2 x float> %i.am, %.sroa.056.0.copyload.i
  %i.ar = fadd <2 x float> %i.ap, %i.aq           ; 4 uses
  %i.as = fmul <2 x float> %i.aj, %.sroa.056.0.copyload.i
  %i.at = fmul <2 x float> %i.am, %.sroa.044.0.copyload.i
  %i.au = fadd <2 x float> %i.as, %i.at           ; 2 uses
  %i.av = fmul <2 x float> %i.aj, %i.ao
  %i.aw = fmul <2 x float> %i.am, %i.ar
  %i.ax = fadd <2 x float> %i.av, %i.aw           ; 2 uses
  %i.ay = fmul <2 x float> %i.aj, %i.ar
  %i.az = fmul <2 x float> %i.am, %i.au
  %i.ba = fadd <2 x float> %i.ay, %i.az           ; 2 uses
  %i.bb = fmul <2 x float> %i.aj, %i.ax
  %i.bc = fmul <2 x float> %i.am, %i.ba
  %i.bd = fadd <2 x float> %i.bb, %i.bc
  %i.be = insertelement <2 x float> poison, float %i.w, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.bg = fmul <2 x float> %i.bf, %i.ax
  %i.bh = insertelement <2 x float> poison, float %4, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.bj = fmul <2 x float> %i.bi, %i.ba
  %i.bk = fadd <2 x float> %i.bg, %i.bj
  %i.bl = fmul <2 x float> %i.bf, %i.ao
  %i.bm = fmul <2 x float> %i.bi, %i.ar
  %i.bn = fadd <2 x float> %i.bl, %i.bm
  %i.bo = fmul <2 x float> %i.bf, %i.ar
  %i.bp = fmul <2 x float> %i.bi, %i.au
  %i.bq = fadd <2 x float> %i.bo, %i.bp
  %i.br = fmul <2 x float> %i.bf, %i.bn
  %i.bs = fmul <2 x float> %i.bi, %i.bq
  %i.bt = fadd <2 x float> %i.br, %i.bs
  %i.bu = fadd float %i.ag, %i.ah
  %i.bv = fmul float %i.w, %.sroa.271.0.copyload.i
  %i.bw = fmul float %4, %.sroa.269.0.copyload.i
  %i.bx = fadd float %i.bv, %i.bw
  %i.by = fmul float %i.w, %.sroa.269.0.copyload.i
  %i.bz = fmul float %4, %.sroa.257.0.copyload.i
  %i.ca = fadd float %i.by, %i.bz                 ; 2 uses
  %i.cb = fmul float %i.w, %.sroa.257.0.copyload.i
  %i.cc = fmul float %4, %.sroa.245.0.copyload.i
  %i.cd = fadd float %i.cb, %i.cc
  %i.ce = fmul float %i.w, %i.bx
  %i.cf = fmul float %4, %i.ca
  %i.cg = fadd float %i.ce, %i.cf
  %i.ch = fmul float %i.w, %i.ca
  %i.ci = fmul float %4, %i.cd
  %i.cj = fadd float %i.ch, %i.ci
  %i.ck = fmul float %i.w, %i.cg
  %i.cl = fmul float %4, %i.cj
  %i.cm = fmul <2 x float> %i.bf, %.sroa.070.0.copyload.i
  %i.cn = fmul <2 x float> %i.bi, %.sroa.068.0.copyload.i
  %i.co = fadd <2 x float> %i.cm, %i.cn
  %i.cp = fmul <2 x float> %i.bf, %.sroa.068.0.copyload.i
  %i.cq = fmul <2 x float> %i.bi, %.sroa.056.0.copyload.i
  %i.cr = fadd <2 x float> %i.cp, %i.cq           ; 2 uses
  %i.cs = fmul <2 x float> %i.bf, %.sroa.056.0.copyload.i
  %i.ct = fmul <2 x float> %i.bi, %.sroa.044.0.copyload.i
  %i.cu = fadd <2 x float> %i.cs, %i.ct
  %i.cv = fmul <2 x float> %i.bf, %i.co
  %i.cw = fmul <2 x float> %i.bi, %i.cr
  %i.cx = fadd <2 x float> %i.cv, %i.cw
  %i.cy = fmul <2 x float> %i.bf, %i.cr
  %i.cz = fmul <2 x float> %i.bi, %i.cu
  %i.da = fadd <2 x float> %i.cy, %i.cz
  %i.db = fmul <2 x float> %i.bf, %i.cx
  %i.dc = fmul <2 x float> %i.bi, %i.da
  %i.dd = fadd <2 x float> %i.db, %i.dc
  %i.de = fadd float %i.ck, %i.cl
  store <2 x float> %i.bd, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.v, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.bk, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.z, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.bt, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.bu, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> %i.dd, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.de, ptr %.sroa.10.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Curve9IntersectERKNS_3RayEf(ptr dead_on_unwind noalias nofree writable sret(%"class.pstd::optional.22") align 8 captures(address_is_null) initializes((256, 257)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, float noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 0, ptr %i.a, align 8, !tbaa !139
  %i.b = tail call noundef zeroext i1 @_ZNK4pbrt5Curve12IntersectRayERKNS_3RayEfPN4pstd8optionalINS_17ShapeIntersectionEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3, ptr noundef nonnull %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4pbrt5Curve12IntersectRayERKNS_3RayEfPN4pstd8optionalINS_17ShapeIntersectionEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, float noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %5 = alloca %"class.pbrt::Point3fi", align 16   ; 5 uses
  %6 = alloca %"class.pbrt::Ray", align 8         ; 9 uses
  %7 = alloca %"class.pstd::array.64", align 8    ; 13 uses
  %8 = alloca %"class.pbrt::Transform", align 8   ; 15 uses
  %9 = alloca %"class.pstd::array.64", align 8    ; 13 uses
  %10 = alloca %"class.pbrt::Transform", align 4  ; 5 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL11nCurveTestsE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66
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
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load <1 x float>, ptr %i.h, align 4, !noalias !392
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load <1 x float>, ptr %i.j, align 8, !noalias !392
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.k, <1 x float> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <1 x float> %i.g, <1 x float> %i.i, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x float> %11, ptr %5, align 16, !tbaa !28, !noalias !392
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.l, align 16, !tbaa !28, !noalias !392
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %4, ptr noundef nonnull align 4 dereferenceable(128) %i.f, ptr noundef nonnull align 4 dereferenceable(24) %5), !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !392
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.m, align 4, !noalias !392 ; 3 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !noalias !392 ; 2 uses
  %i.n = shufflevector <2 x float> %.sroa.044.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.p = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.f, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !28, !noalias !392 ; 3 uses
  %i.q = shufflevector <5 x float> %i.p, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.r = shufflevector <5 x float> %i.p, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.s = fmul <2 x float> %i.n, %i.r
  %i.t = load <2 x float>, ptr %i.o, align 4, !tbaa !28, !noalias !392 ; 2 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <4 x float> %i.q, <4 x float> %i.u, <2 x i32> <i32 0, i32 4>
  %i.w = fmul <2 x float> %.sroa.044.0.copyload.i, %i.v
  %i.x = fadd <2 x float> %i.s, %i.w
  %i.y = insertelement <2 x float> poison, float %.sroa.245.0.copyload.i, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = shufflevector <2 x float> %i.t, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ab = shufflevector <5 x float> %i.p, <5 x float> %i.aa, <2 x i32> <i32 2, i32 6>
  %i.ac = fmul <2 x float> %i.z, %i.ab
  %i.ad = fadd <2 x float> %i.x, %i.ac            ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.af = load <2 x float>, ptr %i.ae, align 4, !tbaa !28, !noalias !392
  %i.ag = fmul <2 x float> %.sroa.044.0.copyload.i, %i.af ; 2 uses
  %shift = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ag, %shift
  %i.ah = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !28, !noalias !392
  %i.ak = fmul float %.sroa.245.0.copyload.i, %i.aj
  %i.al = fadd float %i.ah, %i.ak                 ; 10 uses
  %i.am = fmul <2 x float> %i.ad, %i.ad           ; 3 uses
  %i.an = extractelement <2 x float> %i.am, i64 0
  %shift262 = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop263 = fadd <2 x float> %i.am, %shift262
  %i.ao = extractelement <2 x float> %foldExtExtBinop263, i64 0
  %i.ap = fmul float %i.al, %i.al
  %i.aq = fadd float %i.ao, %i.ap                 ; 3 uses
  %i.ar = fcmp ogt float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.b, label %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit

bb.b:                                             ; preds = %bb.a
  %i.as = extractelement <2 x float> %i.ad, i64 1
  %i.at = call noundef float @llvm.fabs.f32(float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aw = load float, ptr %i.av, align 4, !tbaa !55, !noalias !392
  %i.ax = load float, ptr %i.au, align 8, !tbaa !54, !noalias !392
  %i.ay = fsub float %i.aw, %i.ax
  %i.az = fmul float %i.ay, 5.000000e-01
  %i.ba = fmul float %i.at, %i.az
  %i.bb = insertelement <2 x float> %i.ad, float %i.al, i64 1
  %i.bc = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bb)
  %i.bd = load <6 x float>, ptr %4, align 16, !tbaa !28, !noalias !392 ; 2 uses
  %i.be = shufflevector <6 x float> %i.bd, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bf = shufflevector <6 x float> %i.bd, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bg = fsub <2 x float> %i.be, %i.bf
  %i.bh = fmul <2 x float> %i.bg, splat (float 5.000000e-01)
  %i.bi = fmul <2 x float> %i.bc, %i.bh           ; 2 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  %i.bk = fadd float %i.bj, %i.ba
  %i.bl = extractelement <2 x float> %i.bi, i64 1
  %i.bm = fadd float %i.bk, %i.bl
  %i.bn = fdiv float %i.bm, %i.aq                 ; 2 uses
  %i.bo = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.ad, %i.bp
  %i.br = fmul float %i.al, %i.bn
  %i.bs = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %4, <2 x float> %i.bq, float %i.br), !noalias !392 ; 0 uses
  br label %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit

_ZNK4pbrt9TransformclERKNS_3RayEPf.exit:          ; preds = %bb.a, %bb.b
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !392
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !392
  %i.bt = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !392
  %i.bu = load <4 x float>, ptr %4, align 16, !noalias !392
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bw = fadd <2 x float> %i.bt, %i.bv
  %i.bx = fmul <2 x float> %i.bw, splat (float 5.000000e-01) ; 3 uses
  %i.by = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.bz = fmul float %i.by, 5.000000e-01          ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !127, !noalias !392
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !129, !noalias !392
  store <2 x float> %i.bx, ptr %6, align 8, !alias.scope !392
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.bz, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !alias.scope !392
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 12
  store <2 x float> %i.ad, ptr %i.ce, align 4, !alias.scope !392
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.al, ptr %.sroa.23.0..sroa_idx.i.i, align 4, !alias.scope !392
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.cb, ptr %i.cf, align 8, !tbaa !127, !alias.scope !392
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.cd, ptr %i.cg, align 8, !tbaa !129, !alias.scope !392
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.ch = load ptr, ptr %0, align 8, !tbaa !180
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !181
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !182
  call void @_ZN4pbrt24CubicBezierControlPointsEN4pstd4spanIKNS_6Point3IfEEEEff(ptr dead_on_unwind nonnull writable sret(%"class.pstd::array.64") align 4 %7, ptr nonnull %i.ci, i64 4, float noundef %i.ck, float noundef %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %.sroa.0112.0.copyload = load <2 x float>, ptr %7, align 8 ; 2 uses
  %.sroa.2113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.2113.0.copyload = load float, ptr %.sroa.2113.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.cq = extractelement <2 x float> %i.ad, i64 0 ; 3 uses
  %i.cr = fneg float %i.cq
  %i.cs = load <2 x float>, ptr %i.cn, align 4, !tbaa !28
  %i.ct = load <2 x float>, ptr %i.co, align 8, !tbaa !28
  %i.cu = fsub <2 x float> %i.cs, %.sroa.0112.0.copyload ; 3 uses
  %i.cv = shufflevector <2 x float> %.sroa.0112.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cw = insertelement <2 x float> %i.cv, float %.sroa.2113.0.copyload, i64 1
  %i.cx = fsub <2 x float> %i.ct, %i.cw           ; 2 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 1 ; 2 uses
  %i.cz = fmul float %i.cq, %i.cy                 ; 2 uses
  %i.da = fneg float %i.cz
  %i.db = extractelement <2 x float> %i.cu, i64 0
  %i.dc = call noundef float @llvm.fma.f32(float %i.al, float %i.db, float %i.da)
  %i.dd = call noundef float @llvm.fma.f32(float %i.cr, float %i.cy, float %i.cz)
  %i.de = fadd float %i.dc, %i.dd                 ; 3 uses
  %i.df = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x float> %i.df, float %i.al, i64 1 ; 2 uses
  %i.dh = fmul <2 x float> %i.dg, %i.cu           ; 2 uses
  %i.di = fneg <2 x float> %i.dh
  %i.dj = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ad, <2 x float> %i.cx, <2 x float> %i.di)
  %i.dk = fneg <2 x float> %i.dg
  %i.dl = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.dk, <2 x float> %i.cu, <2 x float> %i.dh)
  %i.dm = fadd <2 x float> %i.dj, %i.dl           ; 4 uses
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i129 = insertelement <2 x float> %i.dn, float %i.de, i64 1
  %i.do = fmul float %i.de, %i.de
  %i.dp = fmul <2 x float> %i.dm, %i.dm           ; 2 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 1
  %i.dr = fadd float %i.dq, %i.do
  %i.ds = extractelement <2 x float> %i.dp, i64 0
  %i.dt = fadd float %i.ds, %i.dr
  %i.du = fcmp oeq float %i.dt, 0.000000e+00
  %i.dv = extractelement <2 x float> %i.dm, i64 0
  br i1 %i.du, label %bb.c, label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit

bb.c:                                             ; preds = %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit
  %i.dw = call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.al) ; 4 uses
  %i.dx = fadd float %i.al, %i.dw
  %i.dy = fdiv float -1.000000e+00, %i.dx         ; 2 uses
  %shift265 = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop266 = fmul <2 x float> %i.ad, %shift265
  %i.dz = extractelement <2 x float> %foldExtExtBinop266, i64 0
  %i.ea = fmul float %i.dz, %i.dy
  %i.eb = fmul float %i.an, %i.dw
  %i.ec = fmul float %i.eb, %i.dy
  %i.ed = fadd float %i.ec, 1.000000e+00
  %i.ee = fmul float %i.dw, %i.ea
  %i.ef = fneg float %i.dw
  %i.eg = fmul float %i.cq, %i.ef
  %.sroa.0247.0.vec.insert = insertelement <2 x float> poison, float %i.ed, i64 0
  %.sroa.0247.4.vec.insert = insertelement <2 x float> %.sroa.0247.0.vec.insert, float %i.ee, i64 1
  br label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit

_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit: ; preds = %bb.c, %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit
  %.sroa.0247.0 = phi <2 x float> [ %.sroa.0247.4.vec.insert, %bb.c ], [ %.sroa.0.4.vec.insert.i129, %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit ]
  %.sroa.6249.0 = phi float [ %i.eg, %bb.c ], [ %i.dv, %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.eh = fadd <2 x float> %i.ad, %i.bx
  %i.ei = fadd float %i.al, %i.bz
  call void @_ZN4pbrt6LookAtENS_6Point3IfEES1_NS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %8, <2 x float> %i.bx, float %i.bz, <2 x float> %i.eh, float %i.ei, <2 x float> %.sroa.0247.0, float %.sroa.6249.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %.sroa.066.0.copyload = load <2 x float>, ptr %7, align 8 ; 2 uses
  %i.ej = load <2 x float>, ptr %.sroa.2113.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ep = load <1 x float>, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.er = load <1 x float>, ptr %i.eq, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.eu = load <1 x float>, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.ew = load <1 x float>, ptr %i.ev, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.058.0.copyload = load <2 x float>, ptr %i.ex, align 4 ; 2 uses
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ey = load <2 x float>, ptr %.sroa.259.0..sroa_idx, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.050.0.copyload = load <2 x float>, ptr %i.ez, align 8 ; 2 uses
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.251.0.copyload = load float, ptr %.sroa.251.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEE6insertIPS2_EES8_PKS2_T_SB_:bb.a
  store <4 x i64> zeroinitializer, ptr %i.aa, align 8, !tbaa !111, !alias.scope !448, !noalias !449
  store <4 x i64> zeroinitializer, ptr %i.ab, align 8, !tbaa !111, !alias.scope !448, !noalias !449
  store <4 x i64> zeroinitializer, ptr %i.ac, align 8, !tbaa !111, !alias.scope !448, !noalias !449
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load = load <4 x i64>, ptr %i.z, align 8, !tbaa !111, !alias.scope !449
  %wide.load18 = load <4 x i64>, ptr %i.ad, align 8, !tbaa !111, !alias.scope !449
  %wide.load19 = load <4 x i64>, ptr %i.ae, align 8, !tbaa !111, !alias.scope !449
  %wide.load20 = load <4 x i64>, ptr %i.af, align 8, !tbaa !111, !alias.scope !449
  store <4 x i64> %wide.load, ptr %i.y, align 8, !tbaa !111, !alias.scope !448, !noalias !449
  store <4 x i64> %wide.load18, ptr %i.aa, align 8, !tbaa !111, !alias.scope !448, !noalias !449
  store <4 x i64> %wide.load19, ptr %i.ab, align 8, !tbaa !111, !alias.scope !448, !noalias !449
  store <4 x i64> %wide.load20, ptr %i.ac, align 8, !tbaa !111, !alias.scope !448, !noalias !449
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !442

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre24.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %.pre24.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %index22 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %index22
  store <4 x i64> zeroinitializer, ptr %i.ah, align 8, !tbaa !111, !alias.scope !448, !noalias !449
  %wide.load23 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !111, !alias.scope !449
  store <4 x i64> %wide.load23, ptr %i.ah, align 8, !tbaa !111, !alias.scope !448, !noalias !449
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !443

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %.pre24.i, %n.vec21
  br i1 %cmp.n25, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ] ; 4 uses
  %i.ak = sub i64 %.pre24.i, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.ak, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  store i64 0, ptr %i.al, align 8, !tbaa !111
  %i.an = load i64, ptr %i.am, align 8, !tbaa !111
  store i64 %i.an, ptr %i.al, align 8, !tbaa !111
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !444

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ao = sub i64 %indvars.iv.i.i.ph, %.pre24.i
  %i.ap = icmp ugt i64 %i.ao, -8
  br i1 %i.ap, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5ShapeEE15allocate_objectIS3_EEPT_m.exit.i.i
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5ShapeEE17deallocate_objectIS3_EEvPT_m.exit.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !108
  %i.ar = shl i64 %i.aq, 3
  %i.as = load ptr, ptr %0, align 8, !tbaa !115   ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull %.pre.i.i, i64 noundef %i.ar, i64 noundef 8), !inline_history !445
  %.pre2.pre.i = load i64, ptr %i.c, align 8, !tbaa !107
  br label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5ShapeEE17deallocate_objectIS3_EEvPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5ShapeEE17deallocate_objectIS3_EEvPT_m.exit.i.i: ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.pre2.i = phi i64 [ %.pre2.pre.i, %._crit_edge.thread.i.i ], [ 0, %._crit_edge.i.i ]
  store i64 %spec.select.i, ptr %i.g, align 8, !tbaa !108
  store ptr %.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !109
  br label %_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEE9push_backERKS2_.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  store i64 0, ptr %i.aw, align 8, !tbaa !111
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !111
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !111
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  store i64 0, ptr %i.az, align 8, !tbaa !111
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !111
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !111
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  store i64 0, ptr %i.bc, align 8, !tbaa !111
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !111
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !111
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  store i64 0, ptr %i.bf, align 8, !tbaa !111
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !111
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !111
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.3 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.3
  store i64 0, ptr %i.bi, align 8, !tbaa !111
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !111
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !111
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.4 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.4
  store i64 0, ptr %i.bl, align 8, !tbaa !111
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !111
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !111
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.5 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.5
  store i64 0, ptr %i.bo, align 8, !tbaa !111
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !111
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !111
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.6 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.6
  store i64 0, ptr %i.br, align 8, !tbaa !111
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !111
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !111
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %.pre24.i
  br i1 %exitcond.not.i.i.7, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !446

_ZN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEE9push_backERKS2_.exit: ; preds = %bb.b, %bb.c, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5ShapeEE17deallocate_objectIS3_EEvPT_m.exit.i.i
  %i.bu = phi ptr [ %.0.i.i.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5ShapeEE17deallocate_objectIS3_EEvPT_m.exit.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.bv = phi i64 [ %spec.select.i, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5ShapeEE17deallocate_objectIS3_EEvPT_m.exit.i.i ], [ %i.k, %bb.c ], [ %i.l, %bb.b ]
  %i.bw = phi i64 [ %.pre2.i, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt5ShapeEE17deallocate_objectIS3_EEvPT_m.exit.i.i ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bw ; 2 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !111
  %i.by = load i64, ptr %.08, align 8, !tbaa !111
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !111
  %i.bz = add i64 %i.bw, 1                        ; 2 uses
  store i64 %i.bz, ptr %i.c, align 8, !tbaa !107
  %i.ca = getelementptr inbounds nuw i8, ptr %.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ca, %3
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !447

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.136, i32 noundef 920, ptr noundef nonnull @.str.153) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt20BilinearIntersection8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !59, !alias.scope !452
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !61, !alias.scope !452
  store i8 0, ptr %i.b, align 8, !tbaa !62, !alias.scope !452
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_6Point2IfEEJRKfEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.73, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRKNS_6Point2IfEERKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !63, !alias.scope !452 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !62, !alias.scope !452
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.d

_ZN4pbrt12StringPrintfIJRKNS_6Point2IfEERKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt13BilinearPatch10CreateMeshEPKNS_9TransformEbRKNS_19ParameterDictionaryEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef %3, ptr %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"class.pbrt::Bounds2", align 16    ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.pstd::pmr::polymorphic_allocator", align 8 ; 7 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  %10 = alloca %"class.std::vector", align 8      ; 17 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::vector.31", align 8   ; 15 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::vector.36", align 8   ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %16 = alloca %"class.std::vector.48", align 8   ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.std::vector", align 8      ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %24 = alloca %"struct.pbrt::ImageAndMetadata", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %27 = alloca %"class.pbrt::Array2D", align 8    ; 11 uses
  store ptr %4, ptr %9, align 8
  %i.j = zext i1 %1 to i8
  store i8 %i.j, ptr %i.c, align 1, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.k, ptr %11, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.k, ptr noundef nonnull align 1 dereferenceable(7) @.str.20, i64 7, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 7, ptr %i.l, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 23
  store i8 0, ptr %i.m, align 1, !tbaa !62
  invoke void @_ZNK4pbrt19ParameterDictionary11GetIntArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %10, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.n = load ptr, ptr %11, align 8, !tbaa !63    ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.k
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.p = load i64, ptr %i.k, align 8, !tbaa !62
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.r, ptr %13, align 8, !tbaa !59
  store i8 80, ptr %i.r, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.s, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.t, align 1, !tbaa !62
  invoke void @_ZNK4pbrt19ParameterDictionary15GetPoint3fArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.31") align 8 %12, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load ptr, ptr %13, align 8, !tbaa !63    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.r
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.b
  %i.w = load i64, ptr %i.r, align 8, !tbaa !62
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.y, ptr %15, align 8, !tbaa !59
  store i16 30325, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 2, ptr %i.z, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 18
  store i8 0, ptr %i.aa, align 2, !tbaa !62
  invoke void @_ZNK4pbrt19ParameterDictionary15GetPoint2fArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.36") align 8 %14, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.ab = load ptr, ptr %15, align 8, !tbaa !63   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.y
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.c
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !62
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.af = load ptr, ptr %10, align 8, !tbaa !143  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !143 ; 4 uses
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.m

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !145
  %i.al = load ptr, ptr %12, align 8, !tbaa !146
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp eq i64 %i.ao, 48
  br i1 %i.ap, label %bb.e, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !148
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.af to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ult i64 %i.au, 16
  br i1 %i.av, label %bb.f, label %_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36
          to label %.noexc220 unwind label %bb.k  ; 3 uses

.noexc220:                                        ; preds = %bb.f
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.aw, align 4
  %i.ax = load ptr, ptr %10, align 8, !tbaa !149  ; 3 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.g

bb.g:                                             ; preds = %.noexc220
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !148
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #33
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.g, %.noexc220
  store ptr %i.aw, ptr %10, align 8, !tbaa !149
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  store ptr %i.bc, ptr %i.ag, align 8, !tbaa !150
  store ptr %i.bc, ptr %i.aq, align 8, !tbaa !148
  br label %.loopexit

_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit.i: ; preds = %bb.e
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.ah, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.bd, ptr %i.ag, align 8, !tbaa !150
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %11, align 8, !tbaa !63   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.k
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.h
  %i.bh = load i64, ptr %i.k, align 8, !tbaa !62
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit219

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %13, align 8, !tbaa !63   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.r
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.i
  %i.bm = load i64, ptr %i.r, align 8, !tbaa !62
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit217

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
end_hunk_2
begin_hunk_3_@_ZN4pbrt13BilinearPatch10CreateMeshEPKNS_9TransformEbRKNS_19ParameterDictionaryEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE:._crit_edge.i.i
  store ptr %i.id, ptr %22, align 8, !tbaa !63
  %i.ie = load i64, ptr %i.b, align 8, !tbaa !66  ; 3 uses
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.id, ptr noundef nonnull align 1 dereferenceable(16) @.str.81, i64 16, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !61
  %i.ig = load ptr, ptr %22, align 8, !tbaa !63
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie
  store i8 0, ptr %i.ih, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.ii = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.ii, ptr %23, align 8, !tbaa !59
  %i.ij = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %i.ij, align 8, !tbaa !61
  store i8 0, ptr %i.ii, align 8, !tbaa !62
  invoke void @_ZNK4pbrt19ParameterDictionary12GetOneStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %.noexc160
  invoke void @_ZN4pbrt15ResolveFilenameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr nofree noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.ik = load ptr, ptr %21, align 8, !tbaa !63   ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.ap
  %i.in = load i64, ptr %i.il, align 8, !tbaa !62
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  %i.ip = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ii
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.ir = load i64, ptr %i.ii, align 8, !tbaa !62
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  %i.it = load ptr, ptr %22, align 8, !tbaa !63   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.ic
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.iv = load i64, ptr %i.ic, align 8, !tbaa !62
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32
  store ptr null, ptr %i.i, align 8, !tbaa !191
  %i.ix = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !61 ; 5 uses
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %bb.bo, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.ja = load ptr, ptr %14, align 8, !tbaa !152
  %i.jb = load ptr, ptr %i.dj, align 8, !tbaa !152
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef %3, ptr noundef nonnull @.str.83)
          to label %bb.bo unwind label %bb.av

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEEaSESt16initializer_listIiE.exit154
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

bb.at:                                            ; preds = %.noexc160
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.au:                                            ; preds = %bb.ao
  %i.jf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jg = load ptr, ptr %21, align 8, !tbaa !63   ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.au
  %i.jj = load i64, ptr %i.jh, align 8, !tbaa !62
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.at
  %.pn65 = phi { ptr, i32 } [ %i.je, %bb.at ], [ %i.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %i.jf, %bb.au ] ; 2 uses
  %i.jl = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.ii
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.jn = load i64, ptr %i.ii, align 8, !tbaa !62
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  %i.jp = load ptr, ptr %22, align 8, !tbaa !63   ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.ic
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %i.jr = load i64, ptr %i.ic, align 8, !tbaa !62
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181, %bb.as
  %.pn65.pn.pn = phi { ptr, i32 } [ %i.jd, %bb.as ], [ %.pn65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

bb.av:                                            ; preds = %.noexc197, %bb.bo, %bb.ar
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.aw:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.ju = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 8 uses
  store ptr %i.ju, ptr %25, align 8, !tbaa !59
  %i.jv = load ptr, ptr %20, align 8, !tbaa !63   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.iy, ptr %i.a, align 8, !tbaa !66
  %i.jw = icmp ugt i64 %i.iy, 15
  br i1 %i.jw, label %.noexc.i185, label %._crit_edge.i.i184

.noexc.i185:                                      ; preds = %bb.aw
  %i.jx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i184.thread unwind label %bb.bh ; 2 uses

._crit_edge.i.i184.thread:                        ; preds = %.noexc.i185
  store ptr %i.jx, ptr %25, align 8, !tbaa !63
  %i.jy = load i64, ptr %i.a, align 8, !tbaa !66
  store i64 %i.jy, ptr %i.ju, align 8, !tbaa !62
  br label %bb.ay

._crit_edge.i.i184:                               ; preds = %bb.aw
  %cond = icmp eq i64 %i.iy, 1
  br i1 %cond, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i.i184
  %i.jz = load i8, ptr %i.jv, align 1, !tbaa !62
  store i8 %i.jz, ptr %i.ju, align 8, !tbaa !62
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i184.thread, %._crit_edge.i.i184
  %i.ka = phi ptr [ %i.jx, %._crit_edge.i.i184.thread ], [ %i.ju, %._crit_edge.i.i184 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr align 1 %i.jv, i64 %i.iy, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.kb = load i64, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.kb, ptr %i.kc, align 8, !tbaa !61
  %i.kd = load ptr, ptr %25, align 8, !tbaa !63
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kb
  store i8 0, ptr %i.ke, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.sroa.0.0.copyload = load ptr, ptr %9, align 8, !tbaa !80
  store i64 0, ptr %26, align 8, !tbaa !469
  invoke void @_ZN4pbrt5Image4ReadENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEENS_13ColorEncodingE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageAndMetadata") align 8 %24, ptr nofree noundef nonnull align 8 dereferenceable(32) %25, ptr %.sroa.0.0.copyload, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %26)
          to label %bb.ba unwind label %bb.bi

bb.ba:                                            ; preds = %bb.az
  %i.kf = load ptr, ptr %25, align 8, !tbaa !63   ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.ju
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.ba
  %i.kh = load i64, ptr %i.ju, align 8, !tbaa !62
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  invoke void @_ZN4pbrt5Image5FlipYEv(ptr noundef nonnull align 8 dereferenceable(152) %24)
          to label %bb.bb unwind label %bb.bj

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !470
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %5, align 16, !noalias !470
  %i.kj = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32, !noalias !470
  invoke void @_ZN4pbrt5Image23GetSamplingDistributionIZNS0_23GetSamplingDistributionEvEUlNS_6Point2IfEEE_EENS_7Array2DIfEET_RKNS_7Bounds2IfEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Array2D") align 8 %27, ptr noundef nonnull align 8 dereferenceable(152) %24, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr %i.kj)
          to label %bb.bc unwind label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !470
  %i.kk = load ptr, ptr %9, align 8, !tbaa !164   ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !65
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = invoke noundef ptr %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, i64 noundef 128, i64 noundef 8)
          to label %.noexc191 unwind label %bb.bl, !inline_history !463 ; 2 uses

.noexc191:                                        ; preds = %bb.bc
  %.sroa.0.0.copyload.i.i = load ptr, ptr %9, align 8, !tbaa !80
  %i.kp = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !197
  %i.kr = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %27, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i to i32
  %.sroa.2.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i.i to i32
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !198
  %i.kt = sub nsw i32 %i.ks, %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !199
  %i.kw = sub nsw i32 %i.kv, %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i ; 2 uses
  %i.kx = mul nsw i32 %i.kw, %i.kt
  %i.ky = sext i32 %i.kx to i64
  invoke void @_ZN4pbrt19PiecewiseConstant2DC2EN4pstd4spanIKfEEiiNS_7Bounds2IfEENS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(128) %i.ko, ptr %i.kq, i64 %i.ky, i32 noundef %i.kt, i32 noundef %i.kw, <2 x float> zeroinitializer, <2 x float> splat (float 1.000000e+00), ptr %.sroa.0.0.copyload.i.i)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt19PiecewiseConstant2DEJRNS5_7Array2DIfEERNS5_7Bounds2IfEERS3_EEEPT_DpOT0_.exit unwind label %bb.bl

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt19PiecewiseConstant2DEJRNS5_7Array2DIfEERNS5_7Bounds2IfEERS3_EEEPT_DpOT0_.exit: ; preds = %.noexc191
  store ptr %i.ko, ptr %i.i, align 8, !tbaa !191
  %i.kz = load ptr, ptr %i.kp, align 8, !tbaa !197 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt7Array2DIfED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt19PiecewiseConstant2DEJRNS5_7Array2DIfEERNS5_7Bounds2IfEERS3_EEEPT_DpOT0_.exit
  %i.la = load i32, ptr %i.ku, align 4, !tbaa !199
  %.sroa.0.0.copyload.i.i193 = load i64, ptr %27, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i193, 32
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i to i32
  %i.lb = sub nsw i32 %i.la, %.sroa.2.0.extract.trunc.i.i.i
  %i.lc = load i32, ptr %i.kr, align 8, !tbaa !198
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i193 to i32
  %i.ld = sub nsw i32 %i.lc, %.sroa.0.0.extract.trunc.i.i.i
  %i.le = mul nsw i32 %i.lb, %i.ld
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.lh = shl nsw i64 %i.lf, 2
  %i.li = load ptr, ptr %i.lg, align 8, !tbaa !164 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !65
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8
  invoke void %i.ll(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef nonnull %i.kz, i64 noundef %i.lh, i64 noundef 4)
          to label %_ZN4pbrt7Array2DIfED2Ev.exit unwind label %bb.be, !inline_history !3

bb.be:                                            ; preds = %bb.bd
  %i.lm = landingpad { ptr, i32 }
          catch ptr null
  %i.ln = extractvalue { ptr, i32 } %i.lm, 0
  call void @__clang_call_terminate(ptr %i.ln) #35
  unreachable

_ZN4pbrt7Array2DIfED2Ev.exit:                     ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt19PiecewiseConstant2DEJRNS5_7Array2DIfEERNS5_7Bounds2IfEERS3_EEEPT_DpOT0_.exit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  %i.lo = getelementptr inbounds nuw i8, ptr %24, i64 408
  %i.lp = getelementptr inbounds nuw i8, ptr %24, i64 424
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !204
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.lo, ptr noundef %i.lq)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i unwind label %bb.bf

bb.bf:                                            ; preds = %_ZN4pbrt7Array2DIfED2Ev.exit
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #35
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i: ; preds = %_ZN4pbrt7Array2DIfED2Ev.exit
  %i.lt = getelementptr inbounds nuw i8, ptr %24, i64 360
  %i.lu = getelementptr inbounds nuw i8, ptr %24, i64 376
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !204
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.lt, ptr noundef %i.lv)
          to label %_ZN4pbrt16ImageAndMetadataD2Ev.exit unwind label %bb.bg

bb.bg:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i
  %i.lw = landingpad { ptr, i32 }
          catch ptr null
  %i.lx = extractvalue { ptr, i32 } %i.lw, 0
  call void @__clang_call_terminate(ptr %i.lx) #35
  unreachable

_ZN4pbrt16ImageAndMetadataD2Ev.exit:              ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(456) %24) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.bo

bb.bh:                                            ; preds = %.noexc.i185
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.bi:                                            ; preds = %bb.az
  %i.lz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ma = load ptr, ptr %25, align 8, !tbaa !63   ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.ju
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.bi
  %i.mc = load i64, ptr %i.ju, align 8, !tbaa !62
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bb
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %.noexc191, %bb.bc
  %i.mg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt7Array2DIfED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %27) #32
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn69 = phi { ptr, i32 } [ %i.mg, %bb.bl ], [ %i.mf, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj
  %.pn69.pn.pn = phi { ptr, i32 } [ %i.me, %bb.bj ], [ %.pn69, %bb.bm ]
  call void @_ZN4pbrt16ImageAndMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %24) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.bn, %bb.bh
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn, %bb.bn ], [ %i.ly, %bb.bh ], [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %i.lz, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.bq

bb.bo:                                            ; preds = %_ZN4pbrt16ImageAndMetadataD2Ev.exit, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.mh = load ptr, ptr %9, align 8, !tbaa !164   ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !65
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = invoke noundef ptr %i.mk(ptr noundef nonnull align 8 dereferenceable(8) %i.mh, i64 noundef 64, i64 noundef 8)
          to label %.noexc197 unwind label %bb.av, !inline_history !464 ; 2 uses

.noexc197:                                        ; preds = %bb.bo
  invoke void @_ZN4pstd3pmr21polymorphic_allocatorISt4byteE9constructIN4pbrt17BilinearPatchMeshEJRKNS5_9TransformERbSt6vectorIiSaIiEESB_INS5_6Point3IfEESaISF_EESB_INS5_7Normal3IfEESaISJ_EESB_INS5_6Point2IfEESaISN_EESD_RPNS5_19PiecewiseConstant2DERS3_EEEvPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.ml, ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt17BilinearPatchMeshEJRKNS5_9TransformERbSt6vectorIiSaIiEESB_INS5_6Point3IfEESaISF_EESB_INS5_7Normal3IfEESaISJ_EESB_INS5_6Point2IfEESaISN_EESD_RPNS5_19PiecewiseConstant2DERS3_EEEPT_DpOT0_.exit unwind label %bb.av

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt17BilinearPatchMeshEJRKNS5_9TransformERbSt6vectorIiSaIiEESB_INS5_6Point3IfEESaISF_EESB_INS5_7Normal3IfEESaISJ_EESB_INS5_6Point2IfEESaISN_EESD_RPNS5_19PiecewiseConstant2DERS3_EEEPT_DpOT0_.exit: ; preds = %.noexc197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  %i.mm = load ptr, ptr %20, align 8, !tbaa !63   ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt17BilinearPatchMeshEJRKNS5_9TransformERbSt6vectorIiSaIiEESB_INS5_6Point3IfEESaISF_EESB_INS5_7Normal3IfEESaISJ_EESB_INS5_6Point2IfEESaISN_EESD_RPNS5_19PiecewiseConstant2DERS3_EEEPT_DpOT0_.exit
  %i.mp = load i64, ptr %i.mn, align 8, !tbaa !62
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt17BilinearPatchMeshEJRKNS5_9TransformERbSt6vectorIiSaIiEESB_INS5_6Point3IfEESaISF_EESB_INS5_7Normal3IfEESaISJ_EESB_INS5_6Point2IfEESaISN_EESD_RPNS5_19PiecewiseConstant2DERS3_EEEPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.mr = load ptr, ptr %18, align 8, !tbaa !149  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %i.ms = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !148
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = ptrtoint ptr %i.mr to i64
  %i.mw = sub i64 %i.mu, %i.mv
  call void @_ZdlPvm(ptr noundef nonnull %i.mr, i64 noundef %i.mw) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.bt

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %bb.av
  %.pn74 = phi { ptr, i32 } [ %i.jt, %bb.av ], [ %.pn69.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  %i.mx = load ptr, ptr %20, align 8, !tbaa !63   ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.mz = icmp eq ptr %i.mx, %i.my
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

end_hunk_3
begin_hunk_4_@_ZNK4pbrt13BilinearPatch6SampleENS_6Point2IfEE:bb.a
  %i.ng = fcmp olt float %i.nf, 0.000000e+00      ; 2 uses
  %i.nh = fneg float %i.li
  %i.ni = fneg float %i.lj
  %i.nj = fneg float %i.ll
  %.sroa.0.0.vec.insert.i.i661 = insertelement <2 x float> poison, float %i.nh, i64 0
  %.sroa.0.4.vec.insert.i.i662 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i661, float %i.ni, i64 1
  %.sroa.0.4.vec.insert.i.pn.i = select i1 %i.ng, <2 x float> %.sroa.0.4.vec.insert.i.i662, <2 x float> %.sroa.0739.4.vec.insert
  %.pn.i = select i1 %i.ng, float %i.nj, float %i.ll
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.nk = load i8, ptr %i.h, align 8, !tbaa !220, !range !30, !noundef !31
  %i.nl = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !221, !range !30, !noundef !31
  %.not480 = icmp eq i8 %i.nk, %i.nm
  br i1 %.not480, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.nn = fneg float %i.li
  %i.no = fneg float %i.lj
  %i.np = fneg float %i.ll
  %.sroa.0.0.vec.insert.i663 = insertelement <2 x float> poison, float %i.nn, i64 0
  %.sroa.0.4.vec.insert.i664 = insertelement <2 x float> %.sroa.0.0.vec.insert.i663, float %i.no, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.sroa.10744.0 = phi float [ %i.ll, %bb.o ], [ %i.np, %bb.p ], [ %.pn.i, %bb.n ]
  %.sroa.0739.0 = phi <2 x float> [ %.sroa.0739.4.vec.insert, %bb.o ], [ %.sroa.0.4.vec.insert.i664, %bb.p ], [ %.sroa.0.4.vec.insert.i.pn.i, %bb.n ]
  %i.nq = call noundef float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i.i)
  %i.nr = shufflevector <2 x float> %.sroa.0435.0.copyload, <2 x float> %.sroa.0794.0.copyload, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ns = insertelement <4 x float> %i.nr, float %.sroa.10.0.copyload, i64 1
  %i.nt = insertelement <4 x float> %i.ns, float %.sroa.12804.0.copyload, i64 3
  %i.nu = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.nt) ; 2 uses
  %i.nv = call noundef float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i34.i)
  %i.nw = fadd float %i.nq, %i.nv
  %i.nx = shufflevector <2 x float> %.sroa.0806.0.copyload, <2 x float> %.sroa.0774.0.copyload, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.ny = insertelement <4 x float> %i.nx, float %.sroa.12816.0.copyload, i64 2
  %i.nz = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ny) ; 3 uses
  %i.oa = extractelement <4 x float> %i.nz, i64 0
  %i.ob = fadd float %i.oa, %i.nw
  %i.oc = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hp)
  %i.od = extractelement <4 x float> %i.nz, i64 3
  %i.oe = fadd float %i.ob, %i.od
  %i.of = shufflevector <4 x float> %i.nu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.og = shufflevector <4 x float> %i.nu, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.oh = fadd <2 x float> %i.of, %i.og
  %i.oi = shufflevector <4 x float> %i.nz, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.oj = fadd <2 x float> %i.oi, %i.oh
  %i.ok = fadd <2 x float> %i.oj, %i.oc           ; 2 uses
  %i.ol = fmul float %i.oe, 3.576280e-07          ; 3 uses
  %i.om = extractelement <2 x float> %i.ok, i64 0
  %i.on = fmul float %i.om, 3.576280e-07          ; 3 uses
  %i.oo = extractelement <2 x float> %i.ok, i64 1
  %i.op = fmul float %i.oo, 3.576280e-07          ; 3 uses
  %i.oq = fcmp oeq float %i.ol, 0.000000e+00
  br i1 %i.oq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.vec.insert.i.i715 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i571, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

bb.s:                                             ; preds = %bb.q
  %i.or = fsub float %i.id, %i.ol                 ; 3 uses
  %or.cond.i.i.i.i.i = fcmp oeq float %i.or, -inf
  br i1 %or.cond.i.i.i.i.i, label %_ZN4pbrt12SubRoundDownEff.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.os = fcmp oeq float %i.or, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.os, float -0.000000e+00, float %i.or ; 2 uses
  %i.ot = bitcast float %spec.store.select.i.i.i.i.i to i32
  %i.ou = fcmp ogt float %spec.store.select.i.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i.i = select i1 %i.ou, i32 -1, i32 1
  %.0.i.i.i.i.i = add i32 %.0.v.i.i.i.i.i, %i.ot
  %i.ov = bitcast i32 %.0.i.i.i.i.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i.i

_ZN4pbrt12SubRoundDownEff.exit.i.i:               ; preds = %bb.t, %bb.s
  %.09.i.i.i.i.i = phi float [ %i.ov, %bb.t ], [ -inf, %bb.s ]
  %.sroa.0.0.vec.insert8.i.i = insertelement <2 x float> poison, float %.09.i.i.i.i.i, i64 0
  %i.ow = fadd float %i.ol, %i.id                 ; 3 uses
  %or.cond.i.i.i.i = fcmp oeq float %i.ow, +inf
  br i1 %or.cond.i.i.i.i, label %_ZN4pbrt10AddRoundUpEff.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %i.ox = fcmp oeq float %i.ow, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.ox, float 0.000000e+00, float %i.ow ; 2 uses
  %i.oy = bitcast float %spec.store.select.i.i.i.i to i32
  %i.oz = fcmp ult float %spec.store.select.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i = select i1 %i.oz, i32 -1, i32 1
  %.0.i.i.i.i = add i32 %.0.v.i.i.i.i, %i.oy
  %i.pa = bitcast i32 %.0.i.i.i.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i.i

_ZN4pbrt10AddRoundUpEff.exit.i.i:                 ; preds = %bb.u, %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %.010.i.i.i.i = phi float [ %i.pa, %bb.u ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i.i ]
  %.sroa.0.4.vec.insert10.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i.i, float %.010.i.i.i.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i:   ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i.i, %bb.r
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i.i715, %bb.r ], [ %.sroa.0.4.vec.insert10.i.i, %_ZN4pbrt10AddRoundUpEff.exit.i.i ]
  %i.pb = fcmp oeq float %i.on, 0.000000e+00
  br i1 %i.pb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.pc = insertelement <2 x float> poison, float %i.ie, i64 0
  %.sroa.0.0.vec.insert.i24.i = shufflevector <2 x float> %i.pc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

bb.w:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.pd = fsub float %i.ie, %i.on                 ; 3 uses
  %or.cond.i.i.i.i9.i = fcmp oeq float %i.pd, -inf
  br i1 %or.cond.i.i.i.i9.i, label %_ZN4pbrt12SubRoundDownEff.exit.i13.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.pe = fcmp oeq float %i.pd, 0.000000e+00
  %spec.store.select.i.i.i.i10.i = select i1 %i.pe, float -0.000000e+00, float %i.pd ; 2 uses
  %i.pf = bitcast float %spec.store.select.i.i.i.i10.i to i32
  %i.pg = fcmp ogt float %spec.store.select.i.i.i.i10.i, 0.000000e+00
  %.0.v.i.i.i.i11.i = select i1 %i.pg, i32 -1, i32 1
  %.0.i.i.i.i12.i = add i32 %.0.v.i.i.i.i11.i, %i.pf
  %i.ph = bitcast i32 %.0.i.i.i.i12.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i13.i

_ZN4pbrt12SubRoundDownEff.exit.i13.i:             ; preds = %bb.x, %bb.w
  %.09.i.i.i.i14.i = phi float [ %i.ph, %bb.x ], [ -inf, %bb.w ]
  %.sroa.0.0.vec.insert8.i15.i = insertelement <2 x float> poison, float %.09.i.i.i.i14.i, i64 0
  %i.pi = fadd float %i.on, %i.ie                 ; 3 uses
  %or.cond.i.i.i16.i = fcmp oeq float %i.pi, +inf
  br i1 %or.cond.i.i.i16.i, label %_ZN4pbrt10AddRoundUpEff.exit.i20.i, label %bb.y

bb.y:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %i.pj = fcmp oeq float %i.pi, 0.000000e+00
  %spec.store.select.i.i.i17.i = select i1 %i.pj, float 0.000000e+00, float %i.pi ; 2 uses
  %i.pk = bitcast float %spec.store.select.i.i.i17.i to i32
  %i.pl = fcmp ult float %spec.store.select.i.i.i17.i, 0.000000e+00
  %.0.v.i.i.i18.i = select i1 %i.pl, i32 -1, i32 1
  %.0.i.i.i19.i = add i32 %.0.v.i.i.i18.i, %i.pk
  %i.pm = bitcast i32 %.0.i.i.i19.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i20.i

_ZN4pbrt10AddRoundUpEff.exit.i20.i:               ; preds = %bb.y, %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %.010.i.i.i21.i = phi float [ %i.pm, %bb.y ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i13.i ]
  %.sroa.0.4.vec.insert10.i22.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i15.i, float %.010.i.i.i21.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i: ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i20.i, %bb.v
  %.sroa.0.0.i23.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i24.i, %bb.v ], [ %.sroa.0.4.vec.insert10.i22.i, %_ZN4pbrt10AddRoundUpEff.exit.i20.i ]
  %i.pn = fcmp oeq float %i.op, 0.000000e+00
  br i1 %i.pn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.po = insertelement <2 x float> poison, float %i.if, i64 0
  %.sroa.0.0.vec.insert.i41.i = shufflevector <2 x float> %i.po, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

bb.aa:                                            ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.pp = fsub float %i.if, %i.op                 ; 3 uses
  %or.cond.i.i.i.i26.i = fcmp oeq float %i.pp, -inf
  br i1 %or.cond.i.i.i.i26.i, label %_ZN4pbrt12SubRoundDownEff.exit.i30.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.pq = fcmp oeq float %i.pp, 0.000000e+00
  %spec.store.select.i.i.i.i27.i = select i1 %i.pq, float -0.000000e+00, float %i.pp ; 2 uses
  %i.pr = bitcast float %spec.store.select.i.i.i.i27.i to i32
  %i.ps = fcmp ogt float %spec.store.select.i.i.i.i27.i, 0.000000e+00
  %.0.v.i.i.i.i28.i = select i1 %i.ps, i32 -1, i32 1
  %.0.i.i.i.i29.i = add i32 %.0.v.i.i.i.i28.i, %i.pr
  %i.pt = bitcast i32 %.0.i.i.i.i29.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i30.i

_ZN4pbrt12SubRoundDownEff.exit.i30.i:             ; preds = %bb.ab, %bb.aa
  %.09.i.i.i.i31.i = phi float [ %i.pt, %bb.ab ], [ -inf, %bb.aa ]
  %.sroa.0.0.vec.insert8.i32.i = insertelement <2 x float> poison, float %.09.i.i.i.i31.i, i64 0
  %i.pu = fadd float %i.op, %i.if                 ; 3 uses
  %or.cond.i.i.i33.i = fcmp oeq float %i.pu, +inf
  br i1 %or.cond.i.i.i33.i, label %_ZN4pbrt10AddRoundUpEff.exit.i37.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %i.pv = fcmp oeq float %i.pu, 0.000000e+00
  %spec.store.select.i.i.i34.i = select i1 %i.pv, float 0.000000e+00, float %i.pu ; 2 uses
  %i.pw = bitcast float %spec.store.select.i.i.i34.i to i32
  %i.px = fcmp ult float %spec.store.select.i.i.i34.i, 0.000000e+00
  %.0.v.i.i.i35.i = select i1 %i.px, i32 -1, i32 1
  %.0.i.i.i36.i = add i32 %.0.v.i.i.i35.i, %i.pw
  %i.py = bitcast i32 %.0.i.i.i36.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i37.i

_ZN4pbrt10AddRoundUpEff.exit.i37.i:               ; preds = %bb.ac, %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %.010.i.i.i38.i = phi float [ %i.py, %bb.ac ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i30.i ]
  %.sroa.0.4.vec.insert10.i39.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i32.i, float %.010.i.i.i38.i, i64 1
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit: ; preds = %bb.z, %_ZN4pbrt10AddRoundUpEff.exit.i37.i
  %.sroa.0.0.i40.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i41.i, %bb.z ], [ %.sroa.0.4.vec.insert10.i39.i, %_ZN4pbrt10AddRoundUpEff.exit.i37.i ]
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.pz = load float, ptr %i.a, align 4, !tbaa !28
  %i.qa = fdiv float %i.pz, %sqrt821
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.qb, align 8, !tbaa !36
  %3 = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> %.sroa.0.0.i23.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %0, align 8
  %.sroa.5728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0.0.i40.i, ptr %.sroa.5728.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.0739.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %.sroa.10744.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %.sroa.0204.0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.sroa.3.0..sroa.10.0..sroa_idx729.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.3.0..sroa.10.0..sroa_idx729.sroa_idx, i8 0, i64 16, i1 false)
  store float %i.qa, ptr %i.qc, align 8, !tbaa !53
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZNK4pbrt19PiecewiseConstant2D6SampleENS_6Point2IfEEPfPNS1_IiEE(ptr noundef nonnull align 8 dereferenceable(128) %0, <2 x float> %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.022.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !230
  %i.c = shl i64 %i.b, 32
  %i.d = ashr exact i64 %i.c, 32                  ; 2 uses
  %i.e = add nsw i64 %i.d, -2                     ; 2 uses
  %i.f = icmp sgt i64 %i.d, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !231  ; 2 uses
  br i1 %i.f, label %.lr.ph.i.i, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %.fr.i.i, %.lr.ph.i.i ], [ 1, %bb.a ] ; 2 uses
  %.01516.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = lshr i64 %.01516.i.i, 1                  ; 3 uses
  %i.j = add i64 %i.i, %.017.i.i                  ; 2 uses
  %i.k = shl i64 %i.j, 32
  %i.l = ashr exact i64 %i.k, 30
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !28
  %i.o = fcmp ole float %i.n, %.sroa.022.4.vec.extract ; 2 uses
  %i.p = add i64 %i.j, 1
  %i.q = select i1 %i.o, i64 %i.p, i64 %.017.i.i
  %.fr.i.i = freeze i64 %i.q                      ; 3 uses
  %.neg.i.i = xor i64 %i.i, -1
  %i.r = add nsw i64 %.01516.i.i, %.neg.i.i
  %i.s = select i1 %i.o, i64 %i.r, i64 %i.i       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !492

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.u = add nsw i64 %.fr.i.i, -1
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.e)
  %.inv.i.i = icmp sgt i64 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.inv.i.i, i64 %..i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i: ; preds = %bb.a, %._crit_edge.i.i
  %i.v = phi i64 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %bb.a ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v
  %i.x = load <2 x float>, ptr %i.w, align 4, !tbaa !28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load float, ptr %i.y, align 8, !tbaa !233 ; 2 uses
  %i.aa = fcmp ogt float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.b, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit

bb.b:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !231
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.v
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !28
  %i.af = fdiv float %i.ae, %i.z
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit: ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i, %bb.b
  %i.ag = phi float [ %i.af, %bb.b ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !230
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load <2 x float>, ptr %i.aj, align 8, !tbaa !28 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !237
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.am, i64 %i.v ; 6 uses
  %.sroa.022.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !230
  %i.aq = shl i64 %i.ap, 32
  %i.ar = ashr exact i64 %i.aq, 32                ; 2 uses
  %i.as = add nsw i64 %i.ar, -2                   ; 2 uses
  %i.at = icmp sgt i64 %i.ar, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !231 ; 2 uses
  br i1 %i.at, label %.lr.ph.i.i11, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9

.lr.ph.i.i11:                                     ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit, %.lr.ph.i.i11
  %.017.i.i12 = phi i64 [ %.fr.i.i14, %.lr.ph.i.i11 ], [ 1, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 2 uses
  %.01516.i.i13 = phi i64 [ %i.bg, %.lr.ph.i.i11 ], [ %i.as, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 2 uses
  %i.aw = lshr i64 %.01516.i.i13, 1               ; 3 uses
  %i.ax = add i64 %i.aw, %.017.i.i12              ; 2 uses
  %i.ay = shl i64 %i.ax, 32
  %i.az = ashr exact i64 %i.ay, 30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !28
  %i.bc = fcmp ole float %i.bb, %.sroa.022.0.vec.extract ; 2 uses
  %i.bd = add i64 %i.ax, 1
  %i.be = select i1 %i.bc, i64 %i.bd, i64 %.017.i.i12
  %.fr.i.i14 = freeze i64 %i.be                   ; 3 uses
  %.neg.i.i15 = xor i64 %i.aw, -1
  %i.bf = add nsw i64 %.01516.i.i13, %.neg.i.i15
  %i.bg = select i1 %i.bc, i64 %i.bf, i64 %i.aw   ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i11, label %._crit_edge.i.i16, !llvm.loop !492

._crit_edge.i.i16:                                ; preds = %.lr.ph.i.i11
  %i.bi = add nsw i64 %.fr.i.i14, -1
  %..i.i.i17 = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.as)
  %.inv.i.i18 = icmp sgt i64 %.fr.i.i14, 0
  %spec.select.i.i19 = select i1 %.inv.i.i18, i64 %..i.i.i17, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9: ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit, %._crit_edge.i.i16
  %i.bj = phi i64 [ %spec.select.i.i19, %._crit_edge.i.i16 ], [ 0, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bj
  %i.bl = load <2 x float>, ptr %i.bk, align 4, !tbaa !28 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !233 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.c, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20

bb.c:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !231
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bj
  %i.bs = load float, ptr %i.br, align 4, !tbaa !28
  %i.bt = fdiv float %i.bs, %i.bn
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20: ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9, %bb.c
  %i.bu = phi float [ %i.bt, %bb.c ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !230
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.by = load <2 x float>, ptr %i.bx, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20
  %i.bz = fmul float %i.ag, %i.bu
  store float %i.bz, ptr %2, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20
  %.not8 = icmp eq ptr %3, null
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %i.v, 32
  %.sroa.0.0.insert.insert = or i64 %i.bj, %.sroa.5.0.insert.shift
  store i64 %.sroa.0.0.insert.insert, ptr %3, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ca = shufflevector <2 x float> %i.bl, <2 x float> %i.x, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cb = shufflevector <2 x float> %i.bl, <2 x float> %i.x, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.cc = fcmp ogt <2 x float> %i.ca, %i.cb
  %i.cd = fsub <2 x float> %1, %i.cb              ; 2 uses
  %i.ce = fsub <2 x float> %i.ca, %i.cb
  %i.cf = trunc i64 %i.bj to i32
  %i.cg = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %i.ch = trunc i64 %i.v to i32
  %i.ci = insertelement <2 x i32> %i.cg, i32 %i.ch, i64 1
  %i.cj = insertelement <2 x i64> poison, i64 %i.bw, i64 0
  %i.ck = insertelement <2 x i64> %i.cj, i64 %i.ai, i64 1
  %i.cl = uitofp <2 x i64> %i.ck to <2 x float>
  %i.cm = fdiv <2 x float> %i.cd, %i.ce
  %i.cn = select <2 x i1> %i.cc, <2 x float> %i.cm, <2 x float> %i.cd
  %i.co = uitofp <2 x i32> %i.ci to <2 x float>
  %i.cp = fadd <2 x float> %i.cn, %i.co
  %i.cq = fdiv <2 x float> %i.cp, %i.cl           ; 2 uses
  %i.cr = shufflevector <2 x float> %i.by, <2 x float> %i.ak, <2 x i32> <i32 1, i32 3>
  %i.cs = fmul <2 x float> %i.cq, %i.cr
  %i.ct = fsub <2 x float> splat (float 1.000000e+00), %i.cq
  %i.cu = shufflevector <2 x float> %i.by, <2 x float> %i.ak, <2 x i32> <i32 0, i32 2>
  %i.cv = fmul <2 x float> %i.cu, %i.ct
  %i.cw = fadd <2 x float> %i.cs, %i.cv
  ret <2 x float> %i.cw
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZNK4pbrt13BilinearPatch3PDFERKNS_11InteractionE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN4pbrt13BilinearPatch9allMeshesE, align 8, !tbaa !206
  %i.b = load i32, ptr %0, align 4, !tbaa !215
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !212  ; 5 uses
end_hunk_4
begin_hunk_5_@_ZNK4pbrt6Tuple3INS_6Point3ENS_8IntervalEEdvIfEENS1_IDTdvtlS2_EtlT_EEEES5_:bb.a
  %spec.store.select.i.i17.i = select i1 %i.s, float 0.000000e+00, float %i.r ; 2 uses
  %i.t = bitcast float %spec.store.select.i.i17.i to i32
  %i.u = fcmp ult float %spec.store.select.i.i17.i, 0.000000e+00
  %.0.v.i.i18.i = select i1 %i.u, i32 -1, i32 1
  %.0.i.i19.i = add i32 %.0.v.i.i18.i, %i.t
  %i.v = bitcast i32 %.0.i.i19.i to float
  br label %bb.l

bb.i:                                             ; preds = %_ZN4pbrt12DivRoundDownEff.exit.i, %bb.e
  %.010.i.i.i = phi float [ %i.l, %bb.e ], [ +inf, %_ZN4pbrt12DivRoundDownEff.exit.i ] ; 4 uses
  %i.w = fcmp olt float %.010.i.i.i, %.09.i.i.i
  %.sroa.speculated5.i.i = select i1 %i.w, float %.010.i.i.i, float %.09.i.i.i
  %.sroa.028.0.vec.insert31.i = insertelement <2 x float> poison, float %.sroa.speculated5.i.i, i64 0
  %i.x = fcmp olt float %.09.i.i.i, %.010.i.i.i
  %.sroa.speculated.i.i = select i1 %i.x, float %.010.i.i.i, float %.09.i.i.i
  %.sroa.028.4.vec.insert35.i = insertelement <2 x float> %.sroa.028.0.vec.insert31.i, float %.sroa.speculated.i.i, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.02.0.copyload86111 = load <2 x float>, ptr %i.y, align 4, !tbaa !28 ; 2 uses
  %.sroa.0.0.vec.extract.i28 = extractelement <2 x float> %.sroa.02.0.copyload86111, i64 0
  %i.z = fdiv float %.sroa.0.0.vec.extract.i28, %2 ; 3 uses
  %or.cond.i.i.i29 = fcmp oeq float %i.z, -inf
  br i1 %or.cond.i.i.i29, label %_ZN4pbrt12DivRoundDownEff.exit.i33, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = fcmp oeq float %i.z, 0.000000e+00
  %spec.store.select.i.i.i30 = select i1 %i.aa, float -0.000000e+00, float %i.z ; 2 uses
  %i.ab = bitcast float %spec.store.select.i.i.i30 to i32
  %i.ac = fcmp ogt float %spec.store.select.i.i.i30, 0.000000e+00
  %.0.v.i.i.i31 = select i1 %i.ac, i32 -1, i32 1
  %.0.i.i.i32 = add i32 %.0.v.i.i.i31, %i.ab
  %i.ad = bitcast i32 %.0.i.i.i32 to float
  br label %_ZN4pbrt12DivRoundDownEff.exit.i33

_ZN4pbrt12DivRoundDownEff.exit.i33:               ; preds = %bb.j, %bb.i
  %.09.i.i.i34 = phi float [ %i.ad, %bb.j ], [ -inf, %bb.i ] ; 4 uses
  %.sroa.0.4.vec.extract.i35 = extractelement <2 x float> %.sroa.02.0.copyload86111, i64 1
  %i.ae = fdiv float %.sroa.0.4.vec.extract.i35, %2 ; 3 uses
  %or.cond.i.i6.i36 = fcmp oeq float %i.ae, +inf
  br i1 %or.cond.i.i6.i36, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt12DivRoundDownEff.exit.i33
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  %spec.store.select.i.i7.i37 = select i1 %i.af, float 0.000000e+00, float %i.ae ; 2 uses
  %i.ag = bitcast float %spec.store.select.i.i7.i37 to i32
  %i.ah = fcmp ult float %spec.store.select.i.i7.i37, 0.000000e+00
  %.0.v.i.i8.i38 = select i1 %i.ah, i32 -1, i32 1
  %.0.i.i9.i39 = add i32 %.0.v.i.i8.i38, %i.ag
  %i.ai = bitcast i32 %.0.i.i9.i39 to float
  br label %bb.o

bb.l:                                             ; preds = %bb.h, %_ZN4pbrt12DivRoundDownEff.exit15.i
  %.010.i.i20.i = phi float [ %i.v, %bb.h ], [ +inf, %_ZN4pbrt12DivRoundDownEff.exit15.i ] ; 4 uses
  %i.aj = fcmp olt float %.010.i.i20.i, %.09.i.i14.i
  %.sroa.speculated5.i22.i = select i1 %i.aj, float %.010.i.i20.i, float %.09.i.i14.i
  %.sroa.028.0.vec.insert33.i = insertelement <2 x float> poison, float %.sroa.speculated5.i22.i, i64 0
  %i.ak = fcmp olt float %.09.i.i14.i, %.010.i.i20.i
  %.sroa.speculated.i23.i = select i1 %i.ak, float %.010.i.i20.i, float %.09.i.i14.i
  %.sroa.028.4.vec.insert37.i = insertelement <2 x float> %.sroa.028.0.vec.insert33.i, float %.sroa.speculated.i23.i, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.02.0.copyload86 = load <2 x float>, ptr %i.al, align 4, !tbaa !28 ; 2 uses
  %.sroa.0.4.vec.extract27.i9 = extractelement <2 x float> %.sroa.02.0.copyload86, i64 1
  %i.am = fdiv float %.sroa.0.4.vec.extract27.i9, %2 ; 3 uses
  %or.cond.i.i10.i10 = fcmp oeq float %i.am, -inf
  br i1 %or.cond.i.i10.i10, label %_ZN4pbrt12DivRoundDownEff.exit15.i14, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = fcmp oeq float %i.am, 0.000000e+00
  %spec.store.select.i.i11.i11 = select i1 %i.an, float -0.000000e+00, float %i.am ; 2 uses
  %i.ao = bitcast float %spec.store.select.i.i11.i11 to i32
  %i.ap = fcmp ogt float %spec.store.select.i.i11.i11, 0.000000e+00
  %.0.v.i.i12.i12 = select i1 %i.ap, i32 -1, i32 1
  %.0.i.i13.i13 = add i32 %.0.v.i.i12.i12, %i.ao
  %i.aq = bitcast i32 %.0.i.i13.i13 to float
  br label %_ZN4pbrt12DivRoundDownEff.exit15.i14

_ZN4pbrt12DivRoundDownEff.exit15.i14:             ; preds = %bb.m, %bb.l
  %.09.i.i14.i15 = phi float [ %i.aq, %bb.m ], [ -inf, %bb.l ] ; 4 uses
  %.sroa.0.0.vec.extract25.i16 = extractelement <2 x float> %.sroa.02.0.copyload86, i64 0
  %i.ar = fdiv float %.sroa.0.0.vec.extract25.i16, %2 ; 3 uses
  %or.cond.i.i16.i17 = fcmp oeq float %i.ar, +inf
  br i1 %or.cond.i.i16.i17, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZN4pbrt12DivRoundDownEff.exit15.i14
  %i.as = fcmp oeq float %i.ar, 0.000000e+00
  %spec.store.select.i.i17.i18 = select i1 %i.as, float 0.000000e+00, float %i.ar ; 2 uses
  %i.at = bitcast float %spec.store.select.i.i17.i18 to i32
  %i.au = fcmp ult float %spec.store.select.i.i17.i18, 0.000000e+00
  %.0.v.i.i18.i19 = select i1 %i.au, i32 -1, i32 1
  %.0.i.i19.i20 = add i32 %.0.v.i.i18.i19, %i.at
  %i.av = bitcast i32 %.0.i.i19.i20 to float
  br label %bb.r

bb.o:                                             ; preds = %_ZN4pbrt12DivRoundDownEff.exit.i33, %bb.k
  %.010.i.i.i41 = phi float [ %i.ai, %bb.k ], [ +inf, %_ZN4pbrt12DivRoundDownEff.exit.i33 ] ; 4 uses
  %i.aw = fcmp olt float %.010.i.i.i41, %.09.i.i.i34
  %.sroa.speculated5.i.i42 = select i1 %i.aw, float %.010.i.i.i41, float %.09.i.i.i34
  %.sroa.028.0.vec.insert31.i43 = insertelement <2 x float> poison, float %.sroa.speculated5.i.i42, i64 0
  %i.ax = fcmp olt float %.09.i.i.i34, %.010.i.i.i41
  %.sroa.speculated.i.i44 = select i1 %i.ax, float %.010.i.i.i41, float %.09.i.i.i34
  %.sroa.028.4.vec.insert35.i45 = insertelement <2 x float> %.sroa.028.0.vec.insert31.i43, float %.sroa.speculated.i.i44, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload92118 = load <2 x float>, ptr %i.ay, align 4, !tbaa !28 ; 2 uses
  %.sroa.0.0.vec.extract.i66 = extractelement <2 x float> %.sroa.0.0.copyload92118, i64 0
  %i.az = fdiv float %.sroa.0.0.vec.extract.i66, %2 ; 3 uses
  %or.cond.i.i.i67 = fcmp oeq float %i.az, -inf
  br i1 %or.cond.i.i.i67, label %_ZN4pbrt12DivRoundDownEff.exit.i71, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = fcmp oeq float %i.az, 0.000000e+00
  %spec.store.select.i.i.i68 = select i1 %i.ba, float -0.000000e+00, float %i.az ; 2 uses
  %i.bb = bitcast float %spec.store.select.i.i.i68 to i32
  %i.bc = fcmp ogt float %spec.store.select.i.i.i68, 0.000000e+00
  %.0.v.i.i.i69 = select i1 %i.bc, i32 -1, i32 1
  %.0.i.i.i70 = add i32 %.0.v.i.i.i69, %i.bb
  %i.bd = bitcast i32 %.0.i.i.i70 to float
  br label %_ZN4pbrt12DivRoundDownEff.exit.i71

_ZN4pbrt12DivRoundDownEff.exit.i71:               ; preds = %bb.p, %bb.o
  %.09.i.i.i72 = phi float [ %i.bd, %bb.p ], [ -inf, %bb.o ] ; 4 uses
  %.sroa.0.4.vec.extract.i73 = extractelement <2 x float> %.sroa.0.0.copyload92118, i64 1
  %i.be = fdiv float %.sroa.0.4.vec.extract.i73, %2 ; 3 uses
  %or.cond.i.i6.i74 = fcmp oeq float %i.be, +inf
  br i1 %or.cond.i.i6.i74, label %_ZN4pbrt10DivRoundUpEff.exit.i78, label %bb.q

bb.q:                                             ; preds = %_ZN4pbrt12DivRoundDownEff.exit.i71
  %i.bf = fcmp oeq float %i.be, 0.000000e+00
  %spec.store.select.i.i7.i75 = select i1 %i.bf, float 0.000000e+00, float %i.be ; 2 uses
  %i.bg = bitcast float %spec.store.select.i.i7.i75 to i32
  %i.bh = fcmp ult float %spec.store.select.i.i7.i75, 0.000000e+00
  %.0.v.i.i8.i76 = select i1 %i.bh, i32 -1, i32 1
  %.0.i.i9.i77 = add i32 %.0.v.i.i8.i76, %i.bg
  %i.bi = bitcast i32 %.0.i.i9.i77 to float
  br label %_ZN4pbrt10DivRoundUpEff.exit.i78

_ZN4pbrt10DivRoundUpEff.exit.i78:                 ; preds = %bb.q, %_ZN4pbrt12DivRoundDownEff.exit.i71
  %.010.i.i.i79 = phi float [ %i.bi, %bb.q ], [ +inf, %_ZN4pbrt12DivRoundDownEff.exit.i71 ] ; 4 uses
  %i.bj = fcmp olt float %.010.i.i.i79, %.09.i.i.i72
  %.sroa.speculated5.i.i80 = select i1 %i.bj, float %.010.i.i.i79, float %.09.i.i.i72
  %.sroa.028.0.vec.insert31.i81 = insertelement <2 x float> poison, float %.sroa.speculated5.i.i80, i64 0
  %i.bk = fcmp olt float %.09.i.i.i72, %.010.i.i.i79
  %.sroa.speculated.i.i82 = select i1 %i.bk, float %.010.i.i.i79, float %.09.i.i.i72
  %.sroa.028.4.vec.insert35.i83 = insertelement <2 x float> %.sroa.028.0.vec.insert31.i81, float %.sroa.speculated.i.i82, i64 1
  br label %_ZN4pbrtdvENS_8IntervalEf.exit84

bb.r:                                             ; preds = %bb.n, %_ZN4pbrt12DivRoundDownEff.exit15.i14
  %.010.i.i20.i22 = phi float [ %i.av, %bb.n ], [ +inf, %_ZN4pbrt12DivRoundDownEff.exit15.i14 ] ; 4 uses
  %i.bl = fcmp olt float %.010.i.i20.i22, %.09.i.i14.i15
  %.sroa.speculated5.i22.i23 = select i1 %i.bl, float %.010.i.i20.i22, float %.09.i.i14.i15
  %.sroa.028.0.vec.insert33.i24 = insertelement <2 x float> poison, float %.sroa.speculated5.i22.i23, i64 0
  %i.bm = fcmp olt float %.09.i.i14.i15, %.010.i.i20.i22
  %.sroa.speculated.i23.i25 = select i1 %i.bm, float %.010.i.i20.i22, float %.09.i.i14.i15
  %.sroa.028.4.vec.insert37.i26 = insertelement <2 x float> %.sroa.028.0.vec.insert33.i24, float %.sroa.speculated.i23.i25, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload92 = load <2 x float>, ptr %i.bn, align 4, !tbaa !28 ; 2 uses
  %.sroa.0.4.vec.extract27.i47 = extractelement <2 x float> %.sroa.0.0.copyload92, i64 1
  %i.bo = fdiv float %.sroa.0.4.vec.extract27.i47, %2 ; 3 uses
  %or.cond.i.i10.i48 = fcmp oeq float %i.bo, -inf
  br i1 %or.cond.i.i10.i48, label %_ZN4pbrt12DivRoundDownEff.exit15.i52, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = fcmp oeq float %i.bo, 0.000000e+00
  %spec.store.select.i.i11.i49 = select i1 %i.bp, float -0.000000e+00, float %i.bo ; 2 uses
  %i.bq = bitcast float %spec.store.select.i.i11.i49 to i32
  %i.br = fcmp ogt float %spec.store.select.i.i11.i49, 0.000000e+00
  %.0.v.i.i12.i50 = select i1 %i.br, i32 -1, i32 1
  %.0.i.i13.i51 = add i32 %.0.v.i.i12.i50, %i.bq
  %i.bs = bitcast i32 %.0.i.i13.i51 to float
  br label %_ZN4pbrt12DivRoundDownEff.exit15.i52

_ZN4pbrt12DivRoundDownEff.exit15.i52:             ; preds = %bb.s, %bb.r
  %.09.i.i14.i53 = phi float [ %i.bs, %bb.s ], [ -inf, %bb.r ] ; 4 uses
  %.sroa.0.0.vec.extract25.i54 = extractelement <2 x float> %.sroa.0.0.copyload92, i64 0
  %i.bt = fdiv float %.sroa.0.0.vec.extract25.i54, %2 ; 3 uses
  %or.cond.i.i16.i55 = fcmp oeq float %i.bt, +inf
  br i1 %or.cond.i.i16.i55, label %_ZN4pbrt10DivRoundUpEff.exit21.i59, label %bb.t

bb.t:                                             ; preds = %_ZN4pbrt12DivRoundDownEff.exit15.i52
  %i.bu = fcmp oeq float %i.bt, 0.000000e+00
  %spec.store.select.i.i17.i56 = select i1 %i.bu, float 0.000000e+00, float %i.bt ; 2 uses
  %i.bv = bitcast float %spec.store.select.i.i17.i56 to i32
  %i.bw = fcmp ult float %spec.store.select.i.i17.i56, 0.000000e+00
  %.0.v.i.i18.i57 = select i1 %i.bw, i32 -1, i32 1
  %.0.i.i19.i58 = add i32 %.0.v.i.i18.i57, %i.bv
  %i.bx = bitcast i32 %.0.i.i19.i58 to float
  br label %_ZN4pbrt10DivRoundUpEff.exit21.i59

_ZN4pbrt10DivRoundUpEff.exit21.i59:               ; preds = %bb.t, %_ZN4pbrt12DivRoundDownEff.exit15.i52
  %.010.i.i20.i60 = phi float [ %i.bx, %bb.t ], [ +inf, %_ZN4pbrt12DivRoundDownEff.exit15.i52 ] ; 4 uses
  %i.by = fcmp olt float %.010.i.i20.i60, %.09.i.i14.i53
  %.sroa.speculated5.i22.i61 = select i1 %i.by, float %.010.i.i20.i60, float %.09.i.i14.i53
  %.sroa.028.0.vec.insert33.i62 = insertelement <2 x float> poison, float %.sroa.speculated5.i22.i61, i64 0
  %i.bz = fcmp olt float %.09.i.i14.i53, %.010.i.i20.i60
  %.sroa.speculated.i23.i63 = select i1 %i.bz, float %.010.i.i20.i60, float %.09.i.i14.i53
  %.sroa.028.4.vec.insert37.i64 = insertelement <2 x float> %.sroa.028.0.vec.insert33.i62, float %.sroa.speculated.i23.i63, i64 1
  br label %_ZN4pbrtdvENS_8IntervalEf.exit84

_ZN4pbrtdvENS_8IntervalEf.exit84:                 ; preds = %bb.a, %_ZN4pbrt10DivRoundUpEff.exit.i78, %_ZN4pbrt10DivRoundUpEff.exit21.i59
  %.sroa.028.0.i2796 = phi <2 x float> [ %.sroa.028.4.vec.insert37.i26, %_ZN4pbrt10DivRoundUpEff.exit21.i59 ], [ %.sroa.028.4.vec.insert35.i45, %_ZN4pbrt10DivRoundUpEff.exit.i78 ], [ <float -inf, float +inf>, %bb.a ]
  %.sroa.028.0.i8894 = phi <2 x float> [ %.sroa.028.4.vec.insert37.i, %_ZN4pbrt10DivRoundUpEff.exit21.i59 ], [ %.sroa.028.4.vec.insert35.i, %_ZN4pbrt10DivRoundUpEff.exit.i78 ], [ <float -inf, float +inf>, %bb.a ]
  %.sroa.028.0.i65 = phi <2 x float> [ %.sroa.028.4.vec.insert37.i64, %_ZN4pbrt10DivRoundUpEff.exit21.i59 ], [ %.sroa.028.4.vec.insert35.i83, %_ZN4pbrt10DivRoundUpEff.exit.i78 ], [ <float -inf, float +inf>, %bb.a ]
  %3 = shufflevector <2 x float> %.sroa.028.0.i8894, <2 x float> %.sroa.028.0.i2796, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %0, align 4, !tbaa !28
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.028.0.i65, ptr %i.ca, align 4, !tbaa !28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt3$_48__invokeERNS_16StatsAccumulatorE"(ptr noundef nonnull align 8 dereferenceable(8) %0) #14 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL8nTriHitsE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL11nTriHitsSumE) ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = add nsw i64 %i.d, %i.b
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL9nTriTestsE) ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !66
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL12nTriTestsSumE) ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !66
  %i.j = add nsw i64 %i.i, %i.g
  tail call void @_ZN4pbrt16StatsAccumulator11ReportRatioEPKcll(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.115, i64 noundef %i.e, i64 noundef %i.j)
  store i64 0, ptr %i.a, align 8, !tbaa !66
  store i64 0, ptr %i.c, align 8, !tbaa !66
  store i64 0, ptr %i.f, align 8, !tbaa !66
  store i64 0, ptr %i.h, align 8, !tbaa !66
  ret void
}

declare void @_ZN4pbrt16StatsAccumulator11ReportRatioEPKcll(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt3$_58__invokeENS_6Point2IiEEiRNS_21PixelStatsAccumulatorE"(i64 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL8nTriHitsE) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL9nTriTestsE) ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  tail call void @_ZN4pbrt21PixelStatsAccumulator11ReportRatioENS_6Point2IiEEiPKcll(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %0, i32 noundef %1, ptr noundef nonnull @.str.115, i64 noundef %i.b, i64 noundef %i.d)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !66
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL11nTriHitsSumE) ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !66
  %i.h = add nsw i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !66
  %i.i = load i64, ptr %i.c, align 8, !tbaa !66
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL12nTriTestsSumE) ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !66
  %i.l = add nsw i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8, !tbaa !66
  store i64 0, ptr %i.a, align 8, !tbaa !66
  store i64 0, ptr %i.c, align 8, !tbaa !66
  ret void
}

declare void @_ZN4pbrt21PixelStatsAccumulator11ReportRatioENS_6Point2IiEEiPKcll(ptr noundef nonnull align 8 dereferenceable(8), i64, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt3$_68__invokeERNS_16StatsAccumulatorE"(ptr noundef nonnull align 8 dereferenceable(8) %0) #14 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL13triangleBytesE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66
  tail call void @_ZN4pbrt16StatsAccumulator19ReportMemoryCounterEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.116, i64 noundef %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !66
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #20

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA18_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(18) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !59, !alias.scope !623
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !61, !alias.scope !623
  store i8 0, ptr %i.a, align 8, !tbaa !62, !alias.scope !623
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA18_KcJRA2_S2_S4_RfS6_RiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(18) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA18_KcRA2_S1_S3_RfS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !63, !alias.scope !623 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !62, !alias.scope !623
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA18_KcRA2_S1_S3_RfS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !63
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA18_KcRA2_S1_S3_RfS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA18_KcRA2_S1_S3_RfS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !63    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %common.resume
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA18_KcJRA2_S2_S4_RfS6_RiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(18) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 1 dereferenceable(18) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(2) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 42, i64 noundef 0) #32
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 115, i64 noundef 0) #32
  %.not21 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 100, i64 noundef 0) #32
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.x
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %.not22 = icmp eq i64 %i.d, -1
  br i1 %.not22, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not21, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.i = load ptr, ptr %8, align 8, !tbaa !63     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.j, ptr %11, align 8, !tbaa !59, !alias.scope !634
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !61, !alias.scope !634
  store i8 0, ptr %i.j, align 8, !tbaa !62, !alias.scope !634
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !278, !noalias !634 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !634 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g
end_hunk_5
begin_hunk_6_@_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !62
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8, !tbaa !230
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !292
  %i.f = shl i64 %i.e, 2
  %i.g = load ptr, ptr %0, align 8, !tbaa !290    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit unwind label %bb.c, !inline_history !6

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt4$_138__invokeERNS_16StatsAccumulatorE"(ptr noundef nonnull align 8 dereferenceable(8) %0) #14 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL8blpBytesE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66
  tail call void @_ZN4pbrt16StatsAccumulator19ReportMemoryCounterEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.139, i64 noundef %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !66
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt12RotateFromToENS_7Vector3IfEES1_(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Transform") align 4 %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #13 comdat {
bb.a:
  %.sroa.072.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = tail call noundef float @llvm.fabs.f32(float %.sroa.072.0.vec.extract)
  %i.b = fcmp olt float %i.a, 7.200000e-01
  %.sroa.068.0.vec.extract = extractelement <2 x float> %3, i64 0
  %i.c = tail call float @llvm.fabs.f32(float %.sroa.068.0.vec.extract)
  %i.d = fcmp olt float %i.c, 7.200000e-01
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %..preheader_crit_edge, label %bb.b

..preheader_crit_edge:                            ; preds = %bb.a
  %.pre202 = extractelement <2 x float> %3, i64 1
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2

bb.b:                                             ; preds = %bb.a
  %.sroa.068.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.e = shufflevector <2 x float> %3, <2 x float> %1, <2 x i32> <i32 1, i32 3>
  %i.f = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.e)
  %i.g = fcmp olt <2 x float> %i.f, splat (float 7.200000e-01) ; 2 uses
  %i.h = extractelement <2 x i1> %i.g, i64 0
  %i.i = extractelement <2 x i1> %i.g, i64 1
  %or.cond166 = select i1 %i.i, i1 %i.h, i1 false ; 2 uses
  %spec.select = select i1 %or.cond166, float 1.000000e+00, float 0.000000e+00
  %spec.select167 = select i1 %or.cond166, float 0.000000e+00, float 1.000000e+00
  %i.j = insertelement <2 x float> <float 0.000000e+00, float poison>, float %spec.select, i64 1
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2:   ; preds = %..preheader_crit_edge, %bb.b
  %.sroa.03.4.vec.extract.i77.pre-phi = phi float [ %.pre202, %..preheader_crit_edge ], [ %.sroa.068.4.vec.extract, %bb.b ] ; 2 uses
  %.sroa.14162.0 = phi float [ 0.000000e+00, %..preheader_crit_edge ], [ %spec.select167, %bb.b ] ; 3 uses
  %i.k = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %..preheader_crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = fsub float %.sroa.14162.0, %2            ; 7 uses
  %i.m = insertelement <5 x float> <float poison, float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %.sroa.14162.0, i64 2
  %i.n = shufflevector <2 x float> %i.k, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.o = shufflevector <5 x float> %i.n, <5 x float> %i.m, <5 x i32> <i32 0, i32 1, i32 7, i32 8, i32 9> ; 2 uses
  %i.p = shufflevector <2 x float> %1, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.q = shufflevector <5 x float> %i.p, <5 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <5 x i32> <i32 0, i32 1, i32 poison, i32 8, i32 9>
  %i.r = insertelement <5 x float> %i.q, float %2, i64 2
  %i.s = fsub <5 x float> %i.o, %i.r
  %i.t = shufflevector <5 x float> %i.s, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.u = fsub float %.sroa.14162.0, %4            ; 7 uses
  %i.v = shufflevector <2 x float> %3, <2 x float> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.w = shufflevector <5 x float> %i.v, <5 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <5 x i32> <i32 0, i32 poison, i32 poison, i32 8, i32 9>
  %i.x = insertelement <5 x float> %i.w, float %.sroa.03.4.vec.extract.i77.pre-phi, i64 1
  %i.y = insertelement <5 x float> %i.x, float %4, i64 2
  %i.z = fsub <5 x float> %i.o, %i.y
  %i.aa = shufflevector <5 x float> %i.z, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 4>
  %i.ab = fmul float %i.l, %i.u
  %i.ac = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.ae = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ag = fsub <4 x float> %i.ad, %i.af           ; 3 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 3> ; 4 uses
  %i.ai = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.ak = insertelement <4 x float> %i.aj, float %.sroa.03.4.vec.extract.i77.pre-phi, i64 2
  %i.al = fsub <4 x float> %i.ad, %i.ak           ; 3 uses
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 3> ; 5 uses
  %foldExtExtBinop = fmul <8 x float> %i.ah, %i.am
  %i.an = extractelement <8 x float> %foldExtExtBinop, i64 0
  %i.ao = extractelement <4 x float> %i.ag, i64 2 ; 3 uses
  %i.ap = extractelement <4 x float> %i.al, i64 2 ; 3 uses
  %i.aq = fmul float %i.ao, %i.ap
  %i.ar = fadd float %i.an, %i.aq
  %i.as = fadd float %i.ab, %i.ar
  %i.at = fmul float %i.as, 4.000000e+00
  %i.au = fmul float %i.l, %i.l
  %foldExtExtBinop204 = fmul <8 x float> %i.ah, %i.ah
  %i.av = extractelement <8 x float> %foldExtExtBinop204, i64 0
  %i.aw = fmul float %i.ao, %i.ao
  %i.ax = fadd float %i.av, %i.aw
  %i.ay = fadd float %i.au, %i.ax                 ; 2 uses
  %i.az = fmul float %i.u, %i.u
  %foldExtExtBinop206 = fmul <8 x float> %i.am, %i.am
  %i.ba = extractelement <8 x float> %foldExtExtBinop206, i64 0
  %i.bb = fmul float %i.ap, %i.ap
  %i.bc = fadd float %i.ba, %i.bb
  %i.bd = fadd float %i.az, %i.bc                 ; 2 uses
  %i.be = fmul float %i.ay, %i.bd
  %.scalar = fdiv float %i.at, %i.be              ; 2 uses
  %i.bf = insertelement <3 x float> <float poison, float -0.000000e+00, float -0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.bg = shufflevector <3 x float> %i.bf, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bh = fmul float %.scalar, %i.u
  %.scalar208 = fdiv float 2.000000e+00, %i.ay    ; 2 uses
  %i.bi = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar208, i64 0 ; 2 uses
  %i.bj = shufflevector <3 x float> %i.bi, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bk = fmul float %.scalar208, %i.l
  %i.bl = fmul float %i.bk, %i.l
  %i.bm = fsub float 1.000000e+00, %i.bl
  %.scalar209 = fdiv float 2.000000e+00, %i.bd    ; 2 uses
  %i.bn = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar209, i64 0 ; 2 uses
  %i.bo = shufflevector <3 x float> %i.bn, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bp = fmul float %.scalar209, %i.u
  %i.bq = fmul float %i.bp, %i.u
  %i.br = fsub float %i.bm, %i.bq
  %i.bs = fmul <8 x float> %i.bj, %i.ah
  %i.bt = fmul <8 x float> %i.bs, %i.t
  %i.bu = fsub <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %i.bt
  %i.bv = fmul <8 x float> %i.bo, %i.am
  %i.bw = fmul <8 x float> %i.bv, %i.aa
  %i.bx = fsub <8 x float> %i.bu, %i.bw
  %i.by = fmul <8 x float> %i.bg, %i.am
  %i.bz = fmul <8 x float> %i.by, %i.t
  %i.ca = fadd <8 x float> %i.bx, %i.bz           ; 4 uses
  %i.cb = fmul float %i.bh, %i.l
  %i.cc = fadd float %i.br, %i.cb                 ; 2 uses
  store <8 x float> %i.ca, ptr %0, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = shufflevector <3 x float> %i.bi, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x float> poison, float %i.l, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.cd, %i.cf
  %i.ch = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ci = fmul <2 x float> %i.cg, %i.ch
  %i.cj = fsub <2 x float> zeroinitializer, %i.ci
  %i.ck = shufflevector <3 x float> %i.bn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cl = insertelement <2 x float> poison, float %i.u, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cn = fmul <2 x float> %i.ck, %i.cm
  %i.co = shufflevector <4 x float> %i.al, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cp = fmul <2 x float> %i.cn, %i.co
  %i.cq = fsub <2 x float> %i.cj, %i.cp
  %i.cr = shufflevector <3 x float> %i.bf, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %i.cm
  %i.ct = fmul <2 x float> %i.cs, %i.ch
  %i.cu = fadd <2 x float> %i.cq, %i.ct           ; 3 uses
  store <2 x float> %i.cu, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.cc, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.28.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cw = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cx = insertelement <2 x float> %i.cu, float 0.000000e+00, i64 1
  %5 = shufflevector <2 x float> %i.cw, <2 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cy = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %6 = shufflevector <2 x float> %i.cu, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %7 = shufflevector <2 x float> %i.cy, <2 x float> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <4 x float> %5, <4 x float> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %8, ptr %i.cv, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cz = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cz, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.cc, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !62
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = fmul <2 x float> %0, %2                  ; 2 uses
  %shift = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.a, %shift
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fmul float %1, %3
  %i.d = fadd float %i.c, %i.b
  %i.e = fcmp olt float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fadd <2 x float> %0, %2                  ; 2 uses
  %i.g = fadd float %1, %3                        ; 2 uses
  %i.h = fmul <2 x float> %i.f, %i.f              ; 2 uses
  %shift48 = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop49 = fadd <2 x float> %i.h, %shift48
  %i.i = extractelement <2 x float> %foldExtExtBinop49, i64 0
  %i.j = fmul float %i.g, %i.g
  %i.k = fadd float %i.j, %i.i
  %i.l = tail call noundef float @sqrtf(float noundef %i.k) #32
  %i.m = fmul float %i.l, 5.000000e-01            ; 3 uses
  %i.n = fcmp olt float %i.m, -1.000000e+00
  %i.o = fcmp ogt float %i.m, 1.000000e+00
  %..i.i = select i1 %i.o, float 1.000000e+00, float %i.m
  %.0.i.i = select i1 %i.n, float -1.000000e+00, float %..i.i
  %i.p = tail call noundef float @asinf(float noundef %.0.i.i) #32
  %i.q = fmul float %i.p, 2.000000e+00
  %i.r = fsub float f0x40490FDB, %i.q
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = fsub <2 x float> %2, %0                  ; 2 uses
  %i.t = fsub float %3, %1                        ; 2 uses
  %i.u = fmul <2 x float> %i.s, %i.s              ; 2 uses
  %shift51 = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop52 = fadd <2 x float> %i.u, %shift51
  %i.v = extractelement <2 x float> %foldExtExtBinop52, i64 0
  %i.w = fmul float %i.t, %i.t
  %i.x = fadd float %i.w, %i.v
  %i.y = tail call noundef float @sqrtf(float noundef %i.x) #32
  %i.z = fmul float %i.y, 5.000000e-01            ; 3 uses
  %i.aa = fcmp olt float %i.z, -1.000000e+00
  %i.ab = fcmp ogt float %i.z, 1.000000e+00
  %..i.i41 = select i1 %i.ab, float 1.000000e+00, float %i.z
  %.0.i.i42 = select i1 %i.aa, float -1.000000e+00, float %..i.i41
  %i.ac = tail call noundef float @asinf(float noundef %.0.i.i42) #32
  %i.ad = fmul float %i.ac, 2.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi float [ %i.r, %bb.b ], [ %i.ad, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt18ShapeSampleContext15OffsetRayOriginENS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(52) %0, <2 x float> %1, float %2) local_unnamed_addr #13 comdat align 2 {
_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.055.0.copyload = load <2 x float>, ptr %i.a, align 4, !tbaa !28 ; 3 uses
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 4, !tbaa !28 ; 4 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.055.0.copyload, i64 0 ; 2 uses
  %i.b = tail call noundef float @llvm.fabs.f32(float %.sroa.03.0.vec.extract.i)
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.055.0.copyload, i64 1 ; 2 uses
  %i.c = tail call noundef float @llvm.fabs.f32(float %.sroa.03.4.vec.extract.i)
  %i.d = tail call noundef float @llvm.fabs.f32(float %.sroa.256.0.copyload) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load float, ptr %i.i, align 4, !tbaa !55 ; 2 uses
  %i.k = load float, ptr %i.h, align 4, !tbaa !54 ; 2 uses
  %i.l = fsub float %i.j, %i.k
  %i.m = fmul float %i.l, 5.000000e-01            ; 2 uses
  %i.n = fmul float %i.d, %i.m                    ; 2 uses
  %i.o = fneg float %i.n
  %i.p = tail call noundef float @llvm.fma.f32(float %i.d, float %i.m, float %i.o)
  %.sroa.04.0.vec.extract.i71 = extractelement <2 x float> %1, i64 0
  %.sroa.04.4.vec.extract.i73 = extractelement <2 x float> %1, i64 1
  %i.q = fmul float %2, %.sroa.256.0.copyload     ; 2 uses
  %i.r = tail call noundef float @llvm.fma.f32(float %.sroa.03.4.vec.extract.i, float %.sroa.04.4.vec.extract.i73, float %i.q)
  %i.s = fneg float %i.q
  %i.t = tail call noundef float @llvm.fma.f32(float %.sroa.256.0.copyload, float %2, float %i.s)
  %i.u = fadd float %i.r, %i.t
  %i.v = tail call noundef float @llvm.fma.f32(float %.sroa.03.0.vec.extract.i, float %.sroa.04.0.vec.extract.i71, float %i.u)
  %i.w = fcmp olt float %i.v, 0.000000e+00        ; 2 uses
  %i.x = fadd float %i.j, %i.k
  %i.y = fmul float %i.x, 5.000000e-01
  %i.z = load <4 x float>, ptr %0, align 4, !tbaa !28 ; 3 uses
  %i.aa = load float, ptr %i.g, align 4, !tbaa !55
  %i.ab = load float, ptr %i.f, align 4, !tbaa !54
  %i.ac = load float, ptr %i.e, align 4, !tbaa !55
  %i.ad = extractelement <4 x float> %i.z, i64 0
  %i.ae = fsub float %i.ac, %i.ad
  %i.af = fmul float %i.ae, 5.000000e-01
  %i.ag = fsub float %i.aa, %i.ab
  %i.ah = fmul float %i.ag, 5.000000e-01
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.c, float %i.ah, float %i.n)
  %i.aj = fadd float %i.ai, %i.p
  %i.ak = tail call noundef float @llvm.fma.f32(float %i.b, float %i.af, float %i.aj) ; 2 uses
  %i.al = fmul float %.sroa.256.0.copyload, %i.ak ; 2 uses
  %i.am = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %.sroa.055.0.copyload, %i.an ; 2 uses
  %i.ap = fneg <2 x float> %i.ao
  %i.aq = fneg float %i.al
  %.sroa.11.0 = select i1 %i.w, float %i.aq, float %i.al ; 3 uses
  %.sroa.0101.0 = select i1 %i.w, <2 x float> %i.ap, <2 x float> %i.ao ; 3 uses
  %i.ar = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.as = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.at = fadd <2 x float> %i.ar, %i.as
  %i.au = fmul <2 x float> %i.at, splat (float 5.000000e-01)
  %.sroa.03.0.vec.extract.i78 = extractelement <2 x float> %.sroa.0101.0, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i79 = extractelement <2 x float> %.sroa.0101.0, i64 1 ; 2 uses
  %i.av = fadd <2 x float> %i.au, %.sroa.0101.0   ; 4 uses
  %i.aw = fadd float %i.y, %.sroa.11.0            ; 7 uses
  %i.ax = fcmp ogt float %.sroa.03.0.vec.extract.i78, 0.000000e+00
  br i1 %i.ax, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit89

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit:           ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit
  %.sroa.0117.0.vec.extract = extractelement <2 x float> %i.av, i64 0 ; 3 uses
  %or.cond.i = fcmp oeq float %.sroa.0117.0.vec.extract, +inf
  br i1 %or.cond.i, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split, label %bb.a

bb.a:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit
  %i.ay = fcmp oeq float %.sroa.0117.0.vec.extract, 0.000000e+00
  %spec.store.select.i = select i1 %i.ay, float 0.000000e+00, float %.sroa.0117.0.vec.extract ; 2 uses
  %i.az = bitcast float %spec.store.select.i to i32
  %i.ba = fcmp ult float %spec.store.select.i, 0.000000e+00
  %.0.v.i = select i1 %i.ba, i32 -1, i32 1
  %.0.i85 = add i32 %.0.v.i, %i.az
  %i.bb = bitcast i32 %.0.i85 to float
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit89:        ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit
  %i.bc = fcmp olt float %.sroa.03.0.vec.extract.i78, 0.000000e+00
  br i1 %i.bc, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit91, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit91:         ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit89
  %.sroa.0117.0.vec.extract149 = extractelement <2 x float> %i.av, i64 0 ; 3 uses
  %or.cond.i92 = fcmp oeq float %.sroa.0117.0.vec.extract149, -inf
  br i1 %or.cond.i92, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split, label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit91
  %i.bd = fcmp oeq float %.sroa.0117.0.vec.extract149, 0.000000e+00
  %spec.store.select.i93 = select i1 %i.bd, float -0.000000e+00, float %.sroa.0117.0.vec.extract149 ; 2 uses
  %i.be = bitcast float %spec.store.select.i93 to i32
  %i.bf = fcmp ogt float %spec.store.select.i93, 0.000000e+00
  %.0.v.i94 = select i1 %i.bf, i32 -1, i32 1
  %.0.i95 = add i32 %.0.v.i94, %i.be
  %i.bg = bitcast i32 %.0.i95 to float
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split: ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit91, %bb.b, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit, %bb.a
  %.010.i.sink = phi float [ +inf, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit ], [ %i.bb, %bb.a ], [ %i.bg, %bb.b ], [ -inf, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit91 ]
  %.sroa.0117.0.vec.insert = insertelement <2 x float> %i.av, float %.010.i.sink, i64 0
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1:        ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit89
  %.sroa.0117.0 = phi <2 x float> [ %.sroa.0117.0.vec.insert, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1.sink.split ], [ %i.av, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit89 ] ; 4 uses
  %i.bh = fcmp ogt float %.sroa.03.4.vec.extract.i79, 0.000000e+00
  br i1 %i.bh, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.1, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit89.1

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit89.1:      ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.1
  %i.bi = fcmp olt float %.sroa.03.4.vec.extract.i79, 0.000000e+00
  br i1 %i.bi, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit91.1, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit91.1:       ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit89.1
  %.sroa.0117.4.vec.extract = extractelement <2 x float> %.sroa.0117.0, i64 1 ; 3 uses
  %or.cond.i92.1 = fcmp oeq float %.sroa.0117.4.vec.extract, -inf
  br i1 %or.cond.i92.1, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split, label %bb.c

bb.c:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit91.1
  %i.bj = fcmp oeq float %.sroa.0117.4.vec.extract, 0.000000e+00
  %spec.store.select.i93.1 = select i1 %i.bj, float -0.000000e+00, float %.sroa.0117.4.vec.extract ; 2 uses
  %i.bk = bitcast float %spec.store.select.i93.1 to i32
  %i.bl = fcmp ogt float %spec.store.select.i93.1, 0.000000e+00
  %.0.v.i94.1 = select i1 %i.bl, i32 -1, i32 1
  %.0.i95.1 = add i32 %.0.v.i94.1, %i.bk
  %i.bm = bitcast i32 %.0.i95.1 to float
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit.2.sink.split

end_hunk_6
