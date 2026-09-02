Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/render?download=true
inline.NumInlined: 1191
inline.NumDeleted: 616
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEC2EOSt8functionIFS5_vEE = comdat any

$_ZN4pbrt10BasicScene9GetCameraEv = comdat any

$_ZN4pbrt10BasicScene10GetSamplerEv = comdat any

$_ZN4pbrt9ErrorExitIJEEEvPKcDpOT_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt8MaterialESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev = comdat any

$_ZNSt3mapIiPN4pstd6vectorIN4pbrt5LightENS0_3pmr21polymorphic_allocatorIS3_EEEESt4lessIiESaISt4pairIKiS8_EEED2Ev = comdat any

$_ZN4pbrt13NamedTexturesD2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt6MediumESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev = comdat any

$_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN4pbrt8AsyncJobINS_6CameraEE12TryGetResultEPSt5mutex = comdat any

$_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt8AsyncJobINS_7SamplerEE12TryGetResultEPSt5mutex = comdat any

$_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE = comdat any

$_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt8MaterialEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPN4pstd6vectorIN4pbrt5LightENS2_3pmr21polymorphic_allocatorIS5_EEEEESt10_Select1stISB_ESt4lessIiESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt15SpectrumTextureEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt12FloatTextureEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRNS_14InternedStringEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIPKcJRS3_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRPKcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveImJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRiJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveINS_6Point3IfEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveINS_7Normal3IfEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_ = comdat any

$_ZTSN4pbrt14InternedStringE = comdat any

$_ZTSN4pbrt6Point3IfEE = comdat any

$_ZTSN4pbrt7Normal3IfEE = comdat any

$_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

@_ZN4pbrtL10LMSFromXYZE = internal global %"class.pbrt::SquareMatrix" zeroinitializer, align 32
@_ZN4pbrtL10XYZFromLMSE = internal global %"class.pbrt::SquareMatrix" zeroinitializer, align 32
@_ZN4pbrtL24STATS_REGprimitiveMemoryE = internal global %"class.pbrt::StatRegisterer" zeroinitializer, align 1
@_ZN4pbrtL29STATS_REGredundantBufferBytesE = internal global %"class.pbrt::StatRegisterer" zeroinitializer, align 1
@_ZN4pbrtL25STATS_REGnBufferCacheHitsE = internal global %"class.pbrt::StatRegisterer" zeroinitializer, align 1
@_ZN4pbrt7logging8logLevelE = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [56 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/cpu/render.cpp\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Starting textures\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Finished textures\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Starting materials\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Finished materials\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Starting to create integrator\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Finished creating integrator\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"simplevolpath\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"bdpt\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"mlt\00", align 1
@.str.15 = private unnamed_addr constant [143 x i8] c"Scene has scattering media but \22%s\22 integrator doesn't support volume scattering. Consider using \22volpath\22, \22simplevolpath\22, \22bdpt\22, or \22mlt\22.\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"No light sources defined in scene; rendering a black image.\00", align 1
@.str.20 = private unnamed_addr constant [99 x i8] c"GBufferFilm is not supported by the \22%s\22 integrator. The channels other than R, G, B will be zero.\00", align 1
@.str.21 = private unnamed_addr constant [154 x i8] c"Some objects in the scene have subsurface scattering, which is not supported by the %s integrator. Use the \22volpath\22 integrator to render them correctly.\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Memory used after scene creation: %d\00", align 1
@_ZN4pbrt7OptionsE = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [51 x i8] c"Unable to generate camera ray for specified pixel.\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"No geometry visible at specified pixel.\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"Ignoring \22interface\22 material at intersection.\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"Intersection depth %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"World-space p: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"World-space n: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"World-space ns: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"Distance from camera: %f\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Named material: %s\0A\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Memory used after rendering: %s\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Memory/Primitives\00", align 1
@_ZN4pbrtL15primitiveMemoryE = internal thread_local unnamed_addr global i64 0, align 8
@.str.35 = private unnamed_addr constant [42 x i8] c"Memory/Redundant vertex and index buffers\00", align 1
@_ZN4pbrtL20redundantBufferBytesE = internal thread_local unnamed_addr global i64 0, align 8
@.str.36 = private unnamed_addr constant [27 x i8] c"Geometry/Buffer cache hits\00", align 1
@_ZN4pbrtL16nBufferCacheHitsE = internal thread_local unnamed_addr global i64 0, align 8
@_ZN4pbrtL19nBufferCacheLookupsE = internal thread_local unnamed_addr global i64 0, align 8
@.str.37 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/scene.h\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"Retrieved Camera from future\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/pstd.h\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Check failed: %s\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.42 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/print.h\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"Non-integral type provided for %* format.\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"Non-integral type passed to %d format.\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Excess values passed to Printf.\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.46 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"Retrieved Sampler from future\00", align 1
@_ZN4pbrt16ImageTextureBase12textureCacheE = external global %"class.std::map.185", align 8
@"_ZTIZN4pbrt9RenderCPUERNS_10BasicSceneEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN4pbrt9RenderCPUERNS_10BasicSceneEE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN4pbrt9RenderCPUERNS_10BasicSceneEE3$_0" = internal constant [41 x i8] c"ZN4pbrt9RenderCPUERNS_10BasicSceneEE3$_0\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.51 = private unnamed_addr constant [54 x i8] c"Printf: Non-basic type %s passed for format string %s\00", align 1
@_ZTSN4pbrt14InternedStringE = linkonce_odr dso_local constant [24 x i8] c"N4pbrt14InternedStringE\00", comdat, align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"MEH\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"lu\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.54 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@_ZTSN4pbrt6Point3IfEE = linkonce_odr dso_local constant [18 x i8] c"N4pbrt6Point3IfEE\00", comdat, align 1
@_ZTSN4pbrt7Normal3IfEE = linkonce_odr dso_local constant [19 x i8] c"N4pbrt7Normal3IfEE\00", comdat, align 1
@_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = linkonce_odr dso_local constant [53 x i8] c"NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\00", comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_render.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt9RenderCPUERNS_10BasicSceneE(ptr noundef nonnull align 8 dereferenceable(1520) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"struct.pbrt::CameraSample", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.pbrt::ThreadLocal", align 8 ; 9 uses
  %17 = alloca %"class.std::function", align 8    ; 11 uses
  %18 = alloca %"class.std::map", align 8         ; 10 uses
  %19 = alloca %"struct.pbrt::NamedTextures", align 8 ; 16 uses
  %20 = alloca %"class.std::map.92", align 8      ; 12 uses
  %21 = alloca %"class.std::vector.98", align 8   ; 12 uses
  %22 = alloca %"class.std::map.103", align 8     ; 12 uses
  %23 = alloca %"class.std::vector.108", align 8  ; 12 uses
  %24 = alloca %"class.pbrt::Primitive", align 8  ; 6 uses
  %25 = alloca %"class.pbrt::Camera", align 8     ; 8 uses
  %26 = alloca %"class.pbrt::Sampler", align 8    ; 5 uses
  %27 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %28 = alloca %"class.pbrt::Camera", align 8     ; 2 uses
  %29 = alloca %"class.pbrt::Sampler", align 8    ; 2 uses
  %30 = alloca %"class.pbrt::Primitive", align 8  ; 2 uses
  %31 = alloca %"class.std::vector.98", align 8   ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %32 = alloca %"class.pbrt::SampledWavelengths", align 4 ; 8 uses
  %33 = alloca %"class.pstd::optional.139", align 8 ; 12 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %34 = alloca %"class.pbrt::Ray", align 8        ; 11 uses
  %35 = alloca %"class.pstd::optional.143", align 16 ; 22 uses
  %36 = alloca %"class.pbrt::Point3", align 8     ; 6 uses
  %37 = alloca %"class.pbrt::Normal3", align 8    ; 6 uses
  %38 = alloca %"class.pbrt::Normal3", align 8    ; 6 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.f = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEZN4pbrt9RenderCPUERNS6_10BasicSceneEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.g, align 8, !tbaa !9
  store ptr @"_ZNSt17_Function_handlerIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEZN4pbrt9RenderCPUERNS6_10BasicSceneEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.f, align 8, !tbaa !13
  invoke void @_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEC2EOSt8functionIFS5_vEE(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.b unwind label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZN4pbrt10BasicScene11CreateMediaB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %18, ptr noundef nonnull align 8 dereferenceable(1520) %0)
          to label %bb.e unwind label %bb.ad

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.l = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !14
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 32, ptr noundef nonnull @.str.5)
          to label %bb.g unwind label %bb.ae

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  invoke void @_ZN4pbrt10BasicScene14CreateTexturesEv(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::NamedTextures") align 8 %19, ptr noundef nonnull align 8 dereferenceable(1520) %0)
          to label %bb.h unwind label %bb.af

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !14
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 34, ptr noundef nonnull @.str.6)
          to label %bb.j unwind label %bb.ag

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %i.p = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %i.p, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  invoke void @_ZN4pbrt10BasicScene12CreateLightsERKNS_13NamedTexturesEPSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.98") align 8 %21, ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr noundef nonnull align 8 dereferenceable(192) %19, ptr noundef nonnull %20)
          to label %bb.k unwind label %bb.ah

bb.k:                                             ; preds = %bb.j
  %i.u = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !14
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 41, ptr noundef nonnull @.str.7)
          to label %bb.m unwind label %bb.ai

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.w = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 7 uses
  store i32 0, ptr %i.w, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 3 uses
  store ptr %i.w, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.w, ptr %i.z, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i64 0, ptr %i.aa, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  invoke void @_ZN4pbrt10BasicScene15CreateMaterialsERKNS_13NamedTexturesEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8MaterialESt4lessISA_ESaISt4pairIKSA_SB_EEEPSt6vectorISB_SaISB_EE(ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr noundef nonnull align 8 dereferenceable(192) %19, ptr noundef nonnull %22, ptr noundef nonnull %23)
          to label %bb.n unwind label %bb.aj

bb.n:                                             ; preds = %bb.m
  %i.ab = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !14
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.8)
          to label %bb.p unwind label %bb.aj

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  invoke void @_ZN4pbrt10BasicScene15CreateAggregateERKNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEERKS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESD_ISR_ESaISF_IKSR_SS_EEERKS4_ISR_NS_8MaterialEST_SaISF_ISU_S10_EEERKSt6vectorIS10_SaIS10_EE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Primitive") align 8 %24, ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr noundef nonnull align 8 dereferenceable(192) %19, ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.q unwind label %bb.ak

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  invoke void @_ZN4pbrt10BasicScene9GetCameraEv(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Camera") align 8 %25, ptr noundef nonnull align 8 dereferenceable(1520) %0)
          to label %bb.r unwind label %bb.al

bb.r:                                             ; preds = %bb.q
  %i.ad = load i64, ptr %25, align 8, !tbaa !26, !noalias !28
  %i.ae = and i64 %i.ad, 144115188075855871
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 832
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !33, !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  invoke void @_ZN4pbrt10BasicScene10GetSamplerEv(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Sampler") align 8 %26, ptr noundef nonnull align 8 dereferenceable(1520) %0)
          to label %bb.s unwind label %bb.am

bb.s:                                             ; preds = %bb.r
  %i.ai = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !14
  %i.aj = icmp slt i32 %i.ai, 1
  br i1 %i.aj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 55, ptr noundef nonnull @.str.9)
          to label %bb.u unwind label %bb.am

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.ak = load i64, ptr %25, align 8, !tbaa !26
  store i64 %i.ak, ptr %28, align 8, !tbaa !26
  %i.al = load i64, ptr %26, align 8, !tbaa !38
  store i64 %i.al, ptr %29, align 8, !tbaa !38
  %i.am = load i64, ptr %24, align 8, !tbaa !40
  store i64 %i.am, ptr %30, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42 ; 3 uses
  %i.ap = load ptr, ptr %21, align 8, !tbaa !45   ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i.i.i, label %.noexc173, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = icmp ugt i64 %i.as, 9223372036854775800
  br i1 %i.at, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i, !prof !46

.noexc.i.i:                                       ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.v
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #28
          to label %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i..noexc173_crit_edge unwind label %bb.an

_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i..noexc173_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %21, align 8, !tbaa !47
  %.pre582 = load ptr, ptr %i.an, align 8, !tbaa !47
  br label %.noexc173

.noexc173:                                        ; preds = %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i..noexc173_crit_edge, %bb.u
  %i.av = phi ptr [ %i.ao, %bb.u ], [ %.pre582, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i..noexc173_crit_edge ] ; 3 uses
  %i.aw = phi ptr [ %i.ap, %bb.u ], [ %.pre, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i..noexc173_crit_edge ] ; 10 uses
  %i.ax = phi ptr [ null, %bb.u ], [ %i.au, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i..noexc173_crit_edge ] ; 11 uses
  %i.ay = ptrtoaddr ptr %i.av to i64              ; 2 uses
  %i.az = ptrtoaddr ptr %i.aw to i64              ; 2 uses
  store ptr %i.ax, ptr %31, align 8, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.as
  %i.bc = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !48
  %.not11.i.i.i.i.i = icmp eq ptr %i.aw, %i.av
  br i1 %.not11.i.i.i.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc173
  %i.bd = add i64 %i.ay, -8
  %i.be = sub i64 %i.bd, %i.az                    ; 3 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.be, 24
end_hunk_0
begin_hunk_1_@_ZN4pbrt9RenderCPUERNS_10BasicSceneE:bb.a
  %i.lz = icmp eq ptr %i.ly, %i.lq
  br i1 %i.lz, label %_ZN4pbrt7WarningIJRNS_14InternedStringEEEEvPKcDpOT_.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i223: ; preds = %bb.bn
  %i.ma = load i64, ptr %i.lq, align 8, !tbaa !79
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #29
  br label %_ZN4pbrt7WarningIJRNS_14InternedStringEEEEvPKcDpOT_.exit227

bb.bo:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNS_14InternedStringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i219
  %i.mc = landingpad { ptr, i32 }
          cleanup
  %i.md = load ptr, ptr %12, align 8, !tbaa !74   ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.lq
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i220: ; preds = %bb.bo
  %i.mf = load i64, ptr %i.lq, align 8, !tbaa !79
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i221: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.body

_ZN4pbrt7WarningIJRNS_14InternedStringEEEEvPKcDpOT_.exit227: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZNK4pbrt14InternedStringneEPKc.exit214.thread437

bb.bp:                                            ; preds = %bb.dx, %bb.dq
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK4pbrt14InternedStringneEPKc.exit214.thread437: ; preds = %_ZN4pbrt7WarningIJRNS_14InternedStringEEEEvPKcDpOT_.exit227, %_ZNK4pbrt14InternedStringneEPKc.exit214, %._crit_edge571
  %i.mi = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !14
  %i.mj = icmp slt i32 %i.mi, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.mj, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %_ZNK4pbrt14InternedStringneEPKc.exit214.thread437
  %i.mk = invoke noundef i64 @_ZN4pbrt13GetCurrentRSSEv()
          to label %bb.br unwind label %bb.ce

bb.br:                                            ; preds = %bb.bq
  store i64 %i.mk, ptr %i.a, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ml = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.ml, ptr %11, align 8, !tbaa !75, !alias.scope !97
  %i.mm = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.mm, align 8, !tbaa !67, !alias.scope !97
  store i8 0, ptr %i.ml, align 8, !tbaa !79, !alias.scope !97
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveImJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %11, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4pbrt12StringPrintfIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mo = load ptr, ptr %11, align 8, !tbaa !74, !alias.scope !97 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.ml
  br i1 %i.mp, label %.body234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228: ; preds = %bb.bs
  %i.mq = load i64, ptr %i.ml, align 8, !tbaa !79, !alias.scope !97
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #29
  br label %.body234

_ZN4pbrt12StringPrintfIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.br
  %i.ms = load ptr, ptr %11, align 8, !tbaa !74
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 103, ptr noundef %i.ms)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %_ZN4pbrt12StringPrintfIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.mt = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.ml
  br i1 %i.mu, label %_ZN4pbrt3LogIJmEEEvNS_8LogLevelEPKciS3_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i232: ; preds = %bb.bt
  %i.mv = load i64, ptr %i.ml, align 8, !tbaa !79
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mw) #29
  br label %_ZN4pbrt3LogIJmEEEvNS_8LogLevelEPKciS3_DpOT_.exit

bb.bu:                                            ; preds = %_ZN4pbrt12StringPrintfIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.mx = landingpad { ptr, i32 }
          cleanup
  %i.my = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.ml
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.bu
  %i.na = load i64, ptr %i.ml, align 8, !tbaa !79
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body234

_ZN4pbrt3LogIJmEEEvNS_8LogLevelEPKciS3_DpOT_.exit: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN4pbrt3LogIJmEEEvNS_8LogLevelEPKciS3_DpOT_.exit, %_ZNK4pbrt14InternedStringneEPKc.exit214.thread437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.nc = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !100 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 296
  %i.ne = load i8, ptr %i.nd, align 4, !tbaa !102, !range !105, !noundef !106
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %bb.bw, label %bb.dq

bb.bw:                                            ; preds = %bb.bv
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  store <8 x float> <float 5.950000e+02, float 7.125000e+02, float 8.300000e+02, float 4.775000e+02, float f0x3B0B7034, float f0x3B0B7034, float f0x3B0B7034, float f0x3B0B7034>, ptr %32, align 4, !tbaa !107, !alias.scope !109
  %i.nh = load <2 x i32>, ptr %i.ng, align 4, !tbaa !112
  %i.ni = sitofp <2 x i32> %i.nh to <2 x float>
  %i.nj = fadd <2 x float> %i.ni, splat (float 5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store <2 x float> %i.nj, ptr %10, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 1056964608, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 1056964608, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <2 x float> <float 5.000000e-01, float 1.000000e+00>, ptr %.sroa.4.0..sroa_idx, align 8
  %i.nk = load i64, ptr %25, align 8, !tbaa !26, !noalias !113 ; 2 uses
  %i.nl = and i64 %i.nk, 144115188075855871
  %i.nm = inttoptr i64 %i.nl to ptr               ; 4 uses
  %i.nn = lshr i64 %i.nk, 57
  %i.no = trunc nuw nsw i64 %i.nn to i32
  switch i32 %i.no, label %bb.ca [
    i32 1, label %bb.bx
    i32 2, label %bb.by
    i32 3, label %bb.bz
  ]

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZNK4pbrt17PerspectiveCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.139") align 8 %33, ptr noundef nonnull align 8 dereferenceable(1448) %i.nm, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %10, ptr noundef nonnull align 4 dereferenceable(32) %32)
          to label %bb.cb unwind label %bb.cf

bb.by:                                            ; preds = %bb.bw
  invoke void @_ZNK4pbrt18OrthographicCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.139") align 8 %33, ptr noundef nonnull align 8 dereferenceable(1440) %i.nm, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %10, ptr noundef nonnull align 4 dereferenceable(32) %32)
          to label %bb.cb unwind label %bb.cf

bb.bz:                                            ; preds = %bb.bw
  invoke void @_ZNK4pbrt15SphericalCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.139") align 8 %33, ptr noundef nonnull align 8 dereferenceable(900) %i.nm, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %10, ptr noundef nonnull align 4 dereferenceable(32) %32)
          to label %bb.cb unwind label %bb.cf

bb.ca:                                            ; preds = %bb.bw
  invoke void @_ZNK4pbrt15RealisticCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.139") align 8 %33, ptr noundef nonnull align 8 dereferenceable(1128) %i.nm, ptr noundef nonnull byval(%"struct.pbrt::CameraSample") align 8 %10, ptr noundef nonnull align 4 dereferenceable(32) %32)
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.bx, %bb.by, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.np = getelementptr inbounds nuw i8, ptr %33, i64 56 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 8, !tbaa !118, !range !105, !noundef !106
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.ch, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN4pbrt9ErrorExitIJEEEvPKcDpOT_(ptr noundef nonnull @.str.23) #27
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  unreachable

bb.ce:                                            ; preds = %bb.bq
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %.body234

.body234:                                         ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %bb.ce
  %eh.lpad-body235 = phi { ptr, i32 } [ %i.ns, %bb.ce ], [ %i.mx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.mn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228 ], [ %i.mn, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.body

bb.cf:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cg:                                            ; preds = %bb.cc
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.ch:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 1, ptr %i.b, align 4, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 8 dereferenceable(40) %33, i64 28, i1 false)
  %i.nv = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !120
  store i64 %i.nx, ptr %i.nv, align 8, !tbaa !120
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 256
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 192 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %35, i64 4 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %35, i64 12
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %35, i64 20 ; 2 uses
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.od = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %35, i64 40 ; 3 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 48 ; 3 uses
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.of = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.og = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %35, i64 128
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 136
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.om = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.on = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.oq = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %34, i64 12 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 20 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.ot = getelementptr inbounds nuw i8, ptr %35, i64 64
  %i.ou = getelementptr inbounds nuw i8, ptr %35, i64 72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.ov = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.dn, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  invoke void @_ZNK4pbrt9Primitive9IntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.143") align 8 %35, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(40) %34, float noundef +inf)
          to label %bb.cj unwind label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  %i.ox = load i8, ptr %40, align 16, !tbaa !122, !range !105, !noundef !106
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oz = load i32, ptr %i.b, align 4, !tbaa !112
  %i.pa = icmp eq i32 %i.oz, 1
  br i1 %i.pa, label %bb.cl, label %bb.do

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN4pbrt9ErrorExitIJEEEvPKcDpOT_(ptr noundef nonnull @.str.24) #27
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %bb.cl
  unreachable

bb.cn:                                            ; preds = %bb.ci
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %.body260

bb.co:                                            ; preds = %bb.cl
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %.body260

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit: ; preds = %bb.cj
  %i.pd = load i64, ptr %41, align 16, !tbaa !88
  %i.pe = and i64 %i.pd, 144115188075855871
  %.not454 = icmp eq i64 %i.pe, 0
  br i1 %.not454, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %i.ov, ptr %9, align 8, !tbaa !75, !alias.scope !124
  store i64 0, ptr %i.ow, align 8, !tbaa !67, !alias.scope !124
  store i8 0, ptr %i.ov, align 8, !tbaa !79, !alias.scope !124
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 %9, ptr noundef nonnull @.str.25)
          to label %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i247 unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pg = load ptr, ptr %9, align 8, !tbaa !74, !alias.scope !124 ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.ov
  br i1 %i.ph, label %.body260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i243: ; preds = %bb.cq
  %i.pi = load i64, ptr %i.ov, align 8, !tbaa !79, !alias.scope !124
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pj) #29
  br label %.body260

_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i247: ; preds = %bb.cp
  %i.pk = load ptr, ptr %9, align 8, !tbaa !74
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.pk)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i247
  %i.pl = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.pm = icmp eq ptr %i.pl, %i.ov
  br i1 %i.pm, label %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i251: ; preds = %bb.cr
  %i.pn = load i64, ptr %i.ov, align 8, !tbaa !79
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pl, i64 noundef %i.po) #29
  br label %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit255

bb.cs:                                            ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i247
  %i.pp = landingpad { ptr, i32 }
          cleanup
  %i.pq = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.ov
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i248: ; preds = %bb.cs
  %i.ps = load i64, ptr %i.ov, align 8, !tbaa !79
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i249: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body260

_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit255:           ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.dn

bb.ct:                                            ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit
  %i.pu = load i64, ptr %25, align 8, !tbaa !26
  %i.pv = and i64 %i.pu, 144115188075855871
  %i.pw = inttoptr i64 %i.pv to ptr               ; 13 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 696
  %i.py = load <8 x float>, ptr %i.px, align 4    ; 4 uses
  %.sroa.12377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 728
  %i.pz = load <2 x float>, ptr %.sroa.12377.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 736
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 740
  %.sroa.15.0.copyload = load float, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 744
  %i.qa = load <2 x float>, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 752
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 756
  %.sroa.19.0.copyload = load float, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !79
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 760
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 768
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4 ; 2 uses
  %.sroa.26384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 776
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 784
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 4 ; 2 uses
  %.sroa.32388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 792
  %i.qb = load <2 x float>, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %i.qc = load <2 x float>, ptr %.sroa.26384.0..sroa_idx, align 4 ; 2 uses
  %i.qd = load <2 x float>, ptr %.sroa.32388.0..sroa_idx, align 4 ; 2 uses
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 800
  %.sroa.36.0.copyload = load float, ptr %.sroa.36.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %i.ny, ptr %8, align 8, !tbaa !75, !alias.scope !127
  store i64 0, ptr %i.nz, align 8, !tbaa !67, !alias.scope !127
  store i8 0, ptr %i.ny, align 8, !tbaa !79, !alias.scope !127
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRiJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %8, ptr noundef nonnull @.str.26, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN4pbrt12StringPrintfIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qf = load ptr, ptr %8, align 8, !tbaa !74, !alias.scope !127 ; 2 uses
  %i.qg = icmp eq ptr %i.qf, %i.ny
  br i1 %i.qg, label %.body260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i256: ; preds = %bb.cu
  %i.qh = load i64, ptr %i.ny, align 8, !tbaa !79, !alias.scope !127
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qi) #29
  br label %.body260

_ZN4pbrt12StringPrintfIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.ct
  %i.qj = load ptr, ptr %8, align 8, !tbaa !74
  %i.qk = load ptr, ptr @stdout, align 8, !tbaa !130
  %i.ql = call i32 @fputs(ptr noundef %i.qj, ptr noundef %i.qk) ; 0 uses
  %i.qm = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.ny
  br i1 %i.qn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258: ; preds = %_ZN4pbrt12StringPrintfIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.qo = load i64, ptr %i.ny, align 8, !tbaa !79
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %i.qm, i64 noundef %i.qp) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i259: ; preds = %_ZN4pbrt12StringPrintfIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #25
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 16
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.qq = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %.sroa.0.sroa.0.0.copyload.i = load float, ptr %35, align 16
  %.sroa.0.sroa.2.0.copyload.i = load float, ptr %i.oa, align 4
  %42 = load <4 x float>, ptr %i.ob, align 8
  %43 = shufflevector <4 x float> %42, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.qr = load <4 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %44 = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %45 = insertelement <2 x float> %43, float %.sroa.0.sroa.0.0.copyload.i, i64 1
  %46 = insertelement <2 x float> %44, float %.sroa.0.sroa.2.0.copyload.i, i64 1
  %i.qs = fadd <2 x float> %45, %46
  %i.qt = fmul <2 x float> %i.qs, splat (float 5.000000e-01) ; 3 uses
  %47 = fmul float %i.qq, 5.000000e-01            ; 3 uses
  %i.qu = shufflevector <8 x float> %i.py, <8 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.qv = fmul <2 x float> %i.qu, %i.qt
  %i.qw = shufflevector <8 x float> %i.py, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.qx = shufflevector <2 x float> %i.qt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qy = fmul <2 x float> %i.qw, %i.qx
  %i.qz = fadd <2 x float> %i.qv, %i.qy
  %i.ra = shufflevector <8 x float> %i.py, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.rb = insertelement <2 x float> poison, float %47, i64 0
  %i.rc = shufflevector <2 x float> %i.rb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rd = fmul <2 x float> %i.ra, %i.rc
  %i.re = fadd <2 x float> %i.qz, %i.rd
  %i.rf = shufflevector <8 x float> %i.py, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.rg = fadd <2 x float> %i.rf, %i.re           ; 2 uses
  %i.rh = shufflevector <2 x float> %i.qt, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ri = fmul <2 x float> %i.pz, %i.rh           ; 2 uses
  %shift = shufflevector <2 x float> %i.ri, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ri, %shift
  %i.rj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %48 = fmul float %.sroa.14.0.copyload, %47
  %i.rk = fadd float %i.rj, %48
  %i.rl = fadd float %.sroa.15.0.copyload, %i.rk  ; 2 uses
  %i.rm = fmul <2 x float> %i.qa, %i.rh           ; 2 uses
  %shift753 = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop754 = fadd <2 x float> %i.rm, %shift753
  %i.rn = extractelement <2 x float> %foldExtExtBinop754, i64 0
  %49 = fmul float %.sroa.18.0.copyload, %47
  %i.ro = fadd float %i.rn, %49
  %i.rp = fadd float %.sroa.19.0.copyload, %i.ro  ; 3 uses
  %i.rq = fcmp oeq float %i.rp, 1.000000e+00      ; 2 uses
  %i.rr = insertelement <2 x float> poison, float %i.rp, i64 0
  %i.rs = shufflevector <2 x float> %i.rr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rt = fdiv <2 x float> %i.rg, %i.rs
  %i.ru = fdiv float %i.rl, %i.rp
  %i.rv = insertelement <2 x i1> poison, i1 %i.rq, i64 0
  %i.rw = shufflevector <2 x i1> %i.rv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.rx = select <2 x i1> %i.rw, <2 x float> %i.rg, <2 x float> %i.rt
  %.sroa.495.0.i = select i1 %i.rq, float %i.rl, float %i.ru
  store <2 x float> %i.rx, ptr %36, align 8
  store float %.sroa.495.0.i, ptr %.sroa.235.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.oc, ptr %7, align 8, !tbaa !75, !alias.scope !132
  store i64 0, ptr %i.od, align 8, !tbaa !67, !alias.scope !132
  store i8 0, ptr %i.oc, align 8, !tbaa !79, !alias.scope !132
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINS_6Point3IfEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %7, ptr noundef nonnull @.str.27, ptr noundef nonnull align 4 dereferenceable(12) %36)
          to label %_ZN4pbrt12StringPrintfIJNS_6Point3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.cv

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i259
  %i.ry = landingpad { ptr, i32 }
          cleanup
  %i.rz = load ptr, ptr %7, align 8, !tbaa !74, !alias.scope !132 ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.oc
  br i1 %i.sa, label %.body269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i264: ; preds = %bb.cv
  %i.sb = load i64, ptr %i.oc, align 8, !tbaa !79, !alias.scope !132
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sc) #29
  br label %.body269

_ZN4pbrt12StringPrintfIJNS_6Point3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i259
  %i.sd = load ptr, ptr %7, align 8, !tbaa !74
  %i.se = load ptr, ptr @stdout, align 8, !tbaa !130
  %i.sf = call i32 @fputs(ptr noundef %i.sd, ptr noundef %i.se) ; 0 uses
  %i.sg = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.oc
  br i1 %i.sh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i267: ; preds = %_ZN4pbrt12StringPrintfIJNS_6Point3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.si = load i64, ptr %i.oc, align 8, !tbaa !79
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i268: ; preds = %_ZN4pbrt12StringPrintfIJNS_6Point3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  %.sroa.030.0.copyload = load <2 x float>, ptr %i.oe, align 8 ; 4 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 16 ; 2 uses
  %.sroa.012.0.vec.extract.i = extractelement <2 x float> %.sroa.030.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i = extractelement <2 x float> %.sroa.030.0.copyload, i64 1
  %i.sk = shufflevector <2 x float> %.sroa.030.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sl = fmul <2 x float> %i.qb, %i.sk
  %i.sm = shufflevector <2 x float> %.sroa.030.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.sn = fmul <2 x float> %i.qc, %i.sm
  %i.so = fadd <2 x float> %i.sl, %i.sn
  %i.sp = insertelement <2 x float> poison, float %.sroa.231.0.copyload, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = fmul <2 x float> %i.qd, %i.sq
  %i.ss = fadd <2 x float> %i.sr, %i.so
  %i.st = fmul float %.sroa.24.0.copyload, %.sroa.012.0.vec.extract.i
  %i.su = fmul float %.sroa.30.0.copyload, %.sroa.012.4.vec.extract.i
  %i.sv = fadd float %i.st, %i.su
  %i.sw = fmul float %.sroa.36.0.copyload, %.sroa.231.0.copyload
  %i.sx = fadd float %i.sw, %i.sv
  store <2 x float> %i.ss, ptr %37, align 8
  store float %i.sx, ptr %.sroa.227.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %i.of, ptr %6, align 8, !tbaa !75, !alias.scope !135
  store i64 0, ptr %i.og, align 8, !tbaa !67, !alias.scope !135
  store i8 0, ptr %i.of, align 8, !tbaa !79, !alias.scope !135
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINS_7Normal3IfEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %6, ptr noundef nonnull @.str.28, ptr noundef nonnull align 4 dereferenceable(12) %37)
          to label %_ZN4pbrt12StringPrintfIJNS_7Normal3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.cw

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i268
  %i.sy = landingpad { ptr, i32 }
          cleanup
  %i.sz = load ptr, ptr %6, align 8, !tbaa !74, !alias.scope !135 ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.of
  br i1 %i.ta, label %.body278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i273: ; preds = %bb.cw
  %i.tb = load i64, ptr %i.of, align 8, !tbaa !79, !alias.scope !135
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #29
  br label %.body278

_ZN4pbrt12StringPrintfIJNS_7Normal3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i268
  %i.td = load ptr, ptr %6, align 8, !tbaa !74
  %i.te = load ptr, ptr @stdout, align 8, !tbaa !130
  %i.tf = call i32 @fputs(ptr noundef %i.td, ptr noundef %i.te) ; 0 uses
  %i.tg = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.th = icmp eq ptr %i.tg, %i.of
  br i1 %i.th, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i276: ; preds = %_ZN4pbrt12StringPrintfIJNS_7Normal3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.ti = load i64, ptr %i.of, align 8, !tbaa !79
  %i.tj = add i64 %i.ti, 1
  call void @_ZdlPvm(ptr noundef %i.tg, i64 noundef %i.tj) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i277: ; preds = %_ZN4pbrt12StringPrintfIJNS_7Normal3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  %.sroa.022.0.copyload = load <2 x float>, ptr %i.oh, align 16 ; 4 uses
  %.sroa.223.0.copyload = load float, ptr %.sroa.223.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.vec.extract.i280 = extractelement <2 x float> %.sroa.022.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i281 = extractelement <2 x float> %.sroa.022.0.copyload, i64 1
  %i.tk = shufflevector <2 x float> %.sroa.022.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tl = fmul <2 x float> %i.qb, %i.tk
  %i.tm = shufflevector <2 x float> %.sroa.022.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tn = fmul <2 x float> %i.qc, %i.tm
  %i.to = fadd <2 x float> %i.tl, %i.tn
  %i.tp = insertelement <2 x float> poison, float %.sroa.223.0.copyload, i64 0
  %i.tq = shufflevector <2 x float> %i.tp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tr = fmul <2 x float> %i.qd, %i.tq
  %i.ts = fadd <2 x float> %i.tr, %i.to
  %i.tt = fmul float %.sroa.24.0.copyload, %.sroa.012.0.vec.extract.i280
  %i.tu = fmul float %.sroa.30.0.copyload, %.sroa.012.4.vec.extract.i281
  %i.tv = fadd float %i.tt, %i.tu
  %i.tw = fmul float %.sroa.36.0.copyload, %.sroa.223.0.copyload
  %i.tx = fadd float %i.tw, %i.tv
  store <2 x float> %i.ts, ptr %38, align 8
  store float %i.tx, ptr %.sroa.219.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.oi, ptr %5, align 8, !tbaa !75, !alias.scope !138
  store i64 0, ptr %i.oj, align 8, !tbaa !67, !alias.scope !138
  store i8 0, ptr %i.oi, align 8, !tbaa !79, !alias.scope !138
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINS_7Normal3IfEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.29, ptr noundef nonnull align 4 dereferenceable(12) %38)
          to label %_ZN4pbrt12StringPrintfIJNS_7Normal3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i289 unwind label %bb.cx

bb.cx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i277
  %i.ty = landingpad { ptr, i32 }
          cleanup
  %i.tz = load ptr, ptr %5, align 8, !tbaa !74, !alias.scope !138 ; 2 uses
  %i.ua = icmp eq ptr %i.tz, %i.oi
  br i1 %i.ua, label %.body292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i286: ; preds = %bb.cx
  %i.ub = load i64, ptr %i.oi, align 8, !tbaa !79, !alias.scope !138
  %i.uc = add i64 %i.ub, 1
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.uc) #29
  br label %.body292

_ZN4pbrt12StringPrintfIJNS_7Normal3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i289: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i277
  %i.ud = load ptr, ptr %5, align 8, !tbaa !74
  %i.ue = load ptr, ptr @stdout, align 8, !tbaa !130
  %i.uf = call i32 @fputs(ptr noundef %i.ud, ptr noundef %i.ue) ; 0 uses
  %i.ug = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.uh = icmp eq ptr %i.ug, %i.oi
  br i1 %i.uh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i290: ; preds = %_ZN4pbrt12StringPrintfIJNS_7Normal3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i289
  %i.ui = load i64, ptr %i.oi, align 8, !tbaa !79
  %i.uj = add i64 %i.ui, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uj) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i291: ; preds = %_ZN4pbrt12StringPrintfIJNS_7Normal3IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.uk = load i8, ptr %i.np, align 8, !tbaa !118, !range !105, !noundef !106
  %i.ul = trunc nuw i8 %i.uk to i1
  br i1 %i.ul, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i291
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 235, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(4) @.str.41) #27
          to label %.noexc310 unwind label %bb.db

.noexc310:                                        ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i291
  %.sroa.0.sroa.5.0.copyload.i303 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 16
  %.sroa.0.sroa.6.0.copyload.i305 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.um = fadd float %.sroa.0.sroa.5.0.copyload.i303, %.sroa.0.sroa.6.0.copyload.i305
  %i.un = fmul float %i.um, 5.000000e-01
  %.sroa.010.0.copyload = load <2 x float>, ptr %33, align 8
  %.sroa.211.0.copyload = load float, ptr %.sroa.211.0..sroa_idx, align 8
  %i.uo = fsub float %i.un, %.sroa.211.0.copyload ; 2 uses
  %i.up = load <4 x float>, ptr %35, align 16
  %i.uq = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ur = load <2 x float>, ptr %i.oa, align 4
  %i.us = fadd <2 x float> %i.ur, %i.uq
  %i.ut = fmul <2 x float> %i.us, splat (float 5.000000e-01)
  %i.uu = fsub <2 x float> %i.ut, %.sroa.010.0.copyload ; 2 uses
  %i.uv = fmul <2 x float> %i.uu, %i.uu           ; 2 uses
  %shift756 = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop757 = fadd <2 x float> %i.uv, %shift756
  %i.uw = extractelement <2 x float> %foldExtExtBinop757, i64 0
  %i.ux = fmul float %i.uo, %i.uo
  %i.uy = fadd float %i.ux, %i.uw
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.uy)
  store float %sqrt.i.i, ptr %i.c, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.ok, ptr %4, align 8, !tbaa !75, !alias.scope !141
  store i64 0, ptr %i.ol, align 8, !tbaa !67, !alias.scope !141
  store i8 0, ptr %i.ok, align 8, !tbaa !79, !alias.scope !141
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %4, ptr noundef nonnull @.str.30, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZN4pbrt12StringPrintfIJfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.uz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.va = load ptr, ptr %4, align 8, !tbaa !74, !alias.scope !141 ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.ok
  br i1 %i.vb, label %.body319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i314: ; preds = %bb.da
  %i.vc = load i64, ptr %i.ok, align 8, !tbaa !79, !alias.scope !141
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.vd) #29
  br label %.body319

_ZN4pbrt12StringPrintfIJfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.cz
  %i.ve = load ptr, ptr %4, align 8, !tbaa !74
  %i.vf = load ptr, ptr @stdout, align 8, !tbaa !130
  %i.vg = call i32 @fputs(ptr noundef %i.ve, ptr noundef %i.vf) ; 0 uses
  %i.vh = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.vi = icmp eq ptr %i.vh, %i.ok
  br i1 %i.vi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317: ; preds = %_ZN4pbrt12StringPrintfIJfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.vj = load i64, ptr %i.ok, align 8, !tbaa !79
  %i.vk = add i64 %i.vj, 1
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vk) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318: ; preds = %_ZN4pbrt12StringPrintfIJfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.vl = load ptr, ptr %i.y, align 8, !tbaa !23  ; 2 uses
  %.not455573 = icmp eq ptr %i.vl, %i.w
  br i1 %.not455573, label %._crit_edge577, label %.lr.ph576

.lr.ph576:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318
  %i.vm = load i64, ptr %41, align 16, !tbaa !88
  br label %bb.dc

.body269:                                         ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %.body260

.body278:                                         ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  br label %.body260

.body292:                                         ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %.body260

bb.db:                                            ; preds = %bb.cy
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %.body319

.body319:                                         ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i314, %bb.db
  %eh.lpad-body320 = phi { ptr, i32 } [ %i.vn, %bb.db ], [ %i.uz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i314 ], [ %i.uz, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %.body260

bb.dc:                                            ; preds = %.lr.ph576, %bb.df
  %.sroa.0367.0574 = phi ptr [ %i.vl, %.lr.ph576 ], [ %i.we, %bb.df ] ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.0367.0574, i64 64
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !88
  %i.vq = icmp eq i64 %i.vp, %i.vm
  br i1 %i.vq, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.0367.0574, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.om, ptr %3, align 8, !tbaa !75, !alias.scope !144
  store i64 0, ptr %i.on, align 8, !tbaa !67, !alias.scope !144
  store i8 0, ptr %i.om, align 8, !tbaa !79, !alias.scope !144
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %i.vr)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.vs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vt = load ptr, ptr %3, align 8, !tbaa !74, !alias.scope !144 ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.om
  br i1 %i.vu, label %.body260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i321: ; preds = %bb.de
  %i.vv = load i64, ptr %i.om, align 8, !tbaa !79, !alias.scope !144
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vw) #29
  br label %.body260

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.dd
  %i.vx = load ptr, ptr %3, align 8, !tbaa !74
  %i.vy = load ptr, ptr @stdout, align 8, !tbaa !130
  %i.vz = call i32 @fputs(ptr noundef %i.vx, ptr noundef %i.vy) ; 0 uses
  %i.wa = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.wb = icmp eq ptr %i.wa, %i.om
  br i1 %i.wb, label %.thread439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i324: ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.wc = load i64, ptr %i.om, align 8, !tbaa !79
  %i.wd = add i64 %i.wc, 1
  call void @_ZdlPvm(ptr noundef %i.wa, i64 noundef %i.wd) #29
  br label %.thread439

.thread439:                                       ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.dj

bb.df:                                            ; preds = %bb.dc
  %i.we = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0367.0574) #30 ; 2 uses
  %.not455 = icmp eq ptr %i.we, %i.w
  br i1 %.not455, label %._crit_edge577, label %bb.dc

._crit_edge577:                                   ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i318
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  invoke void @_ZNK4pbrt8Material8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.dg unwind label %bb.di

bb.dg:                                            ; preds = %._crit_edge577
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.oo, ptr %2, align 8, !tbaa !75, !alias.scope !147
  store i64 0, ptr %i.op, align 8, !tbaa !67, !alias.scope !147
  store i8 0, ptr %i.oo, align 8, !tbaa !79, !alias.scope !147
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %39)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.wf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wg = load ptr, ptr %2, align 8, !tbaa !74, !alias.scope !147 ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.oo
  br i1 %i.wh, label %.body333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i328: ; preds = %bb.dh
  %i.wi = load i64, ptr %i.oo, align 8, !tbaa !79, !alias.scope !147
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wj) #29
  br label %.body333

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.dg
  %i.wk = load ptr, ptr %2, align 8, !tbaa !74
  %i.wl = load ptr, ptr @stdout, align 8, !tbaa !130
  %i.wm = call i32 @fputs(ptr noundef %i.wk, ptr noundef %i.wl) ; 0 uses
  %i.wn = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.oo
  br i1 %i.wo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i331: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.wp = load i64, ptr %i.oo, align 8, !tbaa !79
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wq) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i332: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.wr = load ptr, ptr %39, align 8, !tbaa !74   ; 2 uses
  %i.ws = icmp eq ptr %i.wr, %i.oq
  br i1 %i.ws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i332
  %i.wt = load i64, ptr %i.oq, align 8, !tbaa !79
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wr, i64 noundef %i.wu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i332, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  br label %bb.dj

bb.di:                                            ; preds = %._crit_edge577
  %i.wv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

.body333:                                         ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i328
  %i.ww = load ptr, ptr %39, align 8, !tbaa !74   ; 2 uses
  %i.wx = icmp eq ptr %i.ww, %i.oq
  br i1 %i.wx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %.body333
  %i.wy = load i64, ptr %i.oq, align 8, !tbaa !79
  %i.wz = add i64 %i.wy, 1
  call void @_ZdlPvm(ptr noundef %i.ww, i64 noundef %i.wz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %.body333, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %bb.di
  %.pn = phi { ptr, i32 } [ %i.wv, %bb.di ], [ %i.wf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ], [ %i.wf, %.body333 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  br label %.body260

bb.dj:                                            ; preds = %.thread439, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.xa = load i32, ptr %i.b, align 4, !tbaa !112
  %i.xb = add nsw i32 %i.xa, 1
  store i32 %i.xb, ptr %i.b, align 4, !tbaa !112
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.or, align 4 ; 4 uses
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4 ; 4 uses
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %i.oe, align 8, !noalias !150
  %.sroa.210.0.copyload.i.i = load float, ptr %.sroa.231.0..sroa_idx, align 16, !noalias !150
  %i.xc = invoke { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %35, <2 x float> %.sroa.09.0.copyload.i.i, float %.sroa.210.0.copyload.i.i, <2 x float> %.sroa.01.0.copyload, float %.sroa.22.0.copyload)
          to label %.noexc338 unwind label %bb.dm ; 2 uses

.noexc338:                                        ; preds = %bb.dj
  %i.xd = load float, ptr %i.os, align 8, !tbaa !153, !noalias !150
  %i.xe = load ptr, ptr %i.ot, align 16, !tbaa !167, !noalias !168 ; 2 uses
  %.not.i.i = icmp eq ptr %i.xe, null
  br i1 %.not.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.noexc338
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.oe, align 8, !noalias !168 ; 2 uses
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.231.0..sroa_idx, align 16, !noalias !168 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1
  %.sroa.04.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 1
  %i.xf = fmul float %.sroa.22.0.copyload, %.sroa.24.0.copyload.i.i ; 2 uses
  %i.xg = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i, float %.sroa.04.4.vec.extract.i.i.i, float %i.xf)
  %i.xh = fneg float %i.xf
  %i.xi = call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i.i, float %.sroa.22.0.copyload, float %i.xh)
  %i.xj = fadd float %i.xg, %i.xi
  %i.xk = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i, float %.sroa.04.0.vec.extract.i.i.i, float %i.xj)
  %i.xl = fcmp ogt float %i.xk, 0.000000e+00
  %spec.select.idx.i.i = select i1 %i.xl, i64 8, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.xe, i64 %spec.select.idx.i.i
  br label %bb.dl

bb.dl:                                            ; preds = %.noexc338, %bb.dk
  %storemerge.in.i.i = phi ptr [ %spec.select.i.i, %bb.dk ], [ %i.ou, %.noexc338 ]
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.xc, 1
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.xc, 0
  %storemerge.i.i = load i64, ptr %storemerge.in.i.i, align 8, !tbaa !120, !noalias !168
  store <2 x float> %.fca.0.extract.i, ptr %34, align 8
  store float %.fca.1.extract.i, ptr %.sroa.5.0..sroa_idx, align 8
  store <2 x float> %.sroa.01.0.copyload, ptr %i.or, align 4
  store float %.sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx, align 4
  store float %i.xd, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %storemerge.i.i, ptr %i.nv, align 8, !tbaa !120
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dj
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %.body260

bb.dn:                                            ; preds = %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit255, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  br label %bb.ci

bb.do:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %bb.ea

.body260:                                         ; preds = %bb.de, %bb.cu, %bb.cq, %.body269, %.body278, %.body292, %.body319, %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i321, %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i243, %bb.co
  %.pn143.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pb, %bb.cn ], [ %i.pc, %bb.co ], [ %i.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i243 ], [ %i.vs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i321 ], [ %i.pp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i249 ], [ %i.pf, %bb.cq ], [ %eh.lpad-body320, %.body319 ], [ %i.ty, %.body292 ], [ %i.sy, %.body278 ], [ %i.ry, %.body269 ], [ %i.xm, %bb.dm ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ], [ %i.qe, %bb.cu ], [ %i.qe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i256 ], [ %i.vs, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.dp

bb.dp:                                            ; preds = %bb.cg, %.body260, %bb.cf
  %.pn143.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nt, %bb.cf ], [ %.pn143.pn.pn.pn.pn, %.body260 ], [ %i.nu, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %.body

bb.dq:                                            ; preds = %bb.bv
  %i.xn = load ptr, ptr %27, align 8, !tbaa !171  ; 2 uses
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !173
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 24
  %i.xq = load ptr, ptr %i.xp, align 8
  invoke void %i.xq(ptr noundef nonnull align 8 dereferenceable(64) %i.xn)
          to label %bb.dr unwind label %bb.bp

bb.dr:                                            ; preds = %bb.dq
  %i.xr = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !14
  %i.xs = icmp slt i32 %i.xr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  br i1 %i.xs, label %bb.ds, label %bb.dx

bb.ds:                                            ; preds = %bb.dr
  %i.xt = invoke noundef i64 @_ZN4pbrt13GetCurrentRSSEv()
          to label %bb.dt unwind label %bb.en

bb.dt:                                            ; preds = %bb.ds
  store i64 %i.xt, ptr %i.d, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.xu, ptr %1, align 8, !tbaa !75, !alias.scope !175
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.xv, align 8, !tbaa !67, !alias.scope !175
  store i8 0, ptr %i.xu, align 8, !tbaa !79, !alias.scope !175
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveImJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %1, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4pbrt12StringPrintfIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i343 unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.xw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xx = load ptr, ptr %1, align 8, !tbaa !74, !alias.scope !175 ; 2 uses
  %i.xy = icmp eq ptr %i.xx, %i.xu
  br i1 %i.xy, label %.body349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i339: ; preds = %bb.du
  %i.xz = load i64, ptr %i.xu, align 8, !tbaa !79, !alias.scope !175
  %i.ya = add i64 %i.xz, 1
  call void @_ZdlPvm(ptr noundef %i.xx, i64 noundef %i.ya) #29
  br label %.body349

_ZN4pbrt12StringPrintfIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i343: ; preds = %bb.dt
  %i.yb = load ptr, ptr %1, align 8, !tbaa !74
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 161, ptr noundef %i.yb)
          to label %bb.dv unwind label %bb.dw

bb.dv:                                            ; preds = %_ZN4pbrt12StringPrintfIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i343
end_hunk_1
