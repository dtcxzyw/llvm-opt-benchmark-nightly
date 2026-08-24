Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen_v6?download=true
inline.NumInlined: 602
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.StreamProxy = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.6" = type { i8 }
%struct.DungeonParams = type { i32, i16, i16, i16, %struct.NoiseParams, i16, i8, i16, %"class.core::vector3d", %"class.core::vector3d", %"class.core::vector3d", %"class.core::vector3d", i16, %"class.core::vector3d", i16, i16, i8, i32 }
%struct.NoiseParams = type { float, float, %"class.core::vector3d.5", i32, i16, float, float, i32 }
%"class.core::vector3d.5" = type { float, float, float }
%"class.core::vector3d" = type { i16, i16, i16 }
%class.DungeonGen = type { ptr, ptr, ptr, i32, %class.PseudoRandom, %"class.core::vector3d", i16, %struct.DungeonParams, %"class.core::vector3d", %"class.core::vector3d" }
%class.PseudoRandom = type { i32 }
%"class.core::vector3d.96" = type { i32, i32, i32 }
%class.CavesV6 = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i16, i16, i16, i16, i32, i8, i8, %"class.core::vector3d", %"class.core::vector3d", %"class.core::vector3d.5", %"class.core::vector3d", %"class.core::vector3d", i16, %"class.core::vector3d.5", i16, i16 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN12PseudoRandom5rangeEii = comdat any

$_ZNK8MapgenV67getTypeEv = comdat any

$_ZN14MapgenV6ParamsD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN13BaseExceptionD0Ev = comdat any

$_ZNK13BaseException4whatEv = comdat any

$_ZN13PrngExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN13BaseExceptionD2Ev = comdat any

$_ZN13PrngExceptionD0Ev = comdat any

$_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_ = comdat any

$_ZTI13BaseException = comdat any

$_ZTS13BaseException = comdat any

$_ZTV13BaseException = comdat any

$_ZTI13PrngException = comdat any

$_ZTS13PrngException = comdat any

$_ZTV13PrngException = comdat any

@.str = private unnamed_addr constant [8 x i8] c"jungles\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"biomeblend\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mudflow\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"snowbiomes\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"trees\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"temples\00", align 1
@flagdesc_mapgen_v6 = dso_local constant [8 x %struct.FlagDesc] [%struct.FlagDesc { ptr @.str, i32 1 }, %struct.FlagDesc { ptr @.str.1, i32 2 }, %struct.FlagDesc { ptr @.str.2, i32 4 }, %struct.FlagDesc { ptr @.str.3, i32 8 }, %struct.FlagDesc { ptr @.str.4, i32 16 }, %struct.FlagDesc { ptr @.str.5, i32 32 }, %struct.FlagDesc { ptr @.str.6, i32 64 }, %struct.FlagDesc zeroinitializer], align 16
@_ZTV8MapgenV6 = dso_local constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI8MapgenV6, ptr @_ZN8MapgenV6D2Ev, ptr @_ZN8MapgenV6D0Ev, ptr @_ZNK8MapgenV67getTypeEv, ptr @_ZN8MapgenV69makeChunkEP13BlockMakeData, ptr @_ZN8MapgenV621getGroundLevelAtPointEN4core8vector2dIsEE, ptr @_ZN8MapgenV620getSpawnLevelAtPointEN4core8vector2dIsEE, ptr @_ZN8MapgenV625baseTerrainLevelFromNoiseEN4core8vector2dIsEE, ptr @_ZN8MapgenV623baseTerrainLevelFromMapEN4core8vector2dIsEE, ptr @_ZN8MapgenV623baseTerrainLevelFromMapEi, ptr @_ZN8MapgenV614calculateNoiseEv, ptr @_ZN8MapgenV613generateCavesEi] }, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"MapgenV6: chunk size must be cubic\00", align 1
@_ZTI13BaseException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13BaseException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13BaseException = linkonce_odr dso_local constant [16 x i8] c"13BaseException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@warningstream = external thread_local global %class.LogStream, align 8
@.str.8 = private unnamed_addr constant [64 x i8] c"MapgenV6: chunk heights divisible by two are known to be buggy.\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"mapgen_stone\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"mapgen_dirt\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"mapgen_dirt_with_grass\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"mapgen_sand\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"mapgen_water_source\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"mapgen_lava_source\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"mapgen_gravel\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"mapgen_desert_stone\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"mapgen_desert_sand\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"mapgen_dirt_with_snow\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"mapgen_snow\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"mapgen_snowblock\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"mapgen_ice\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"mapgen_cobble\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"mapgen_mossycobble\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"mapgen_stair_cobble\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"mapgen_stair_desert_stone\00", align 1
@errorstream = external thread_local global %class.LogStream, align 8
@.str.26 = private unnamed_addr constant [51 x i8] c"Mapgen v6: Mapgen alias 'mapgen_stone' is invalid!\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"Mapgen v6: Mapgen alias 'mapgen_dirt' is invalid!\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"Mapgen v6: Mapgen alias 'mapgen_dirt_with_grass' is invalid!\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"Mapgen v6: Mapgen alias 'mapgen_sand' is invalid!\00", align 1
@.str.30 = private unnamed_addr constant [58 x i8] c"Mapgen v6: Mapgen alias 'mapgen_water_source' is invalid!\00", align 1
@.str.31 = private unnamed_addr constant [57 x i8] c"Mapgen v6: Mapgen alias 'mapgen_lava_source' is invalid!\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"Mapgen v6: Mapgen alias 'mapgen_cobble' is invalid!\00", align 1
@_ZTV14MapgenV6Params = dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI14MapgenV6Params, ptr @_ZN12MapgenParamsD2Ev, ptr @_ZN14MapgenV6ParamsD0Ev, ptr @_ZN14MapgenV6Params10readParamsEPK8Settings, ptr @_ZNK14MapgenV6Params11writeParamsEP8Settings, ptr @_ZN14MapgenV6Params18setDefaultSettingsEP8Settings] }, align 8
@.str.33 = private unnamed_addr constant [13 x i8] c"mgv6_spflags\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"mgv6_freq_desert\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"mgv6_freq_beach\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"mgv6_dungeon_ymin\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"mgv6_dungeon_ymax\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"mgv6_np_terrain_base\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"mgv6_np_terrain_higher\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"mgv6_np_steepness\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"mgv6_np_height_select\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"mgv6_np_mud\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"mgv6_np_beach\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"mgv6_np_biome\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"mgv6_np_cave\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"mgv6_np_humidity\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"mgv6_np_trees\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"mgv6_np_apple_trees\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"mapgen_junglegrass\00", align 1
@_ZTI8MapgenV6 = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8MapgenV6, ptr @_ZTI6Mapgen }, align 8
@_ZTS8MapgenV6 = dso_local constant [10 x i8] c"8MapgenV6\00", align 1
@_ZTI6Mapgen = external constant ptr
@_ZTI14MapgenV6Params = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14MapgenV6Params, ptr @_ZTI12MapgenParams }, align 8
@_ZTS14MapgenV6Params = dso_local constant [17 x i8] c"14MapgenV6Params\00", align 1
@_ZTI12MapgenParams = external constant ptr
@_ZTV13BaseException = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13BaseException, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN13BaseExceptionD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@.str.50 = private unnamed_addr constant [26 x i8] c"Invalid range (max < min)\00", align 1
@_ZTI13PrngException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13PrngException, ptr @_ZTI13BaseException }, comdat, align 8
@_ZTS13PrngException = linkonce_odr dso_local constant [16 x i8] c"13PrngException\00", comdat, align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"Range too large\00", align 1
@_ZTV13PrngException = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13PrngException, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN13PrngExceptionD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@.str.52 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

@_ZN8MapgenV6C1EP14MapgenV6ParamsP12EmergeParams = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN8MapgenV6C2EP14MapgenV6ParamsP12EmergeParams
@_ZN8MapgenV6D1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN8MapgenV6D2Ev
@_ZN14MapgenV6ParamsC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14MapgenV6ParamsC2Ev

; Function Attrs: uwtable
define dso_local void @_ZN8MapgenV6C2EP14MapgenV6ParamsP12EmergeParams(ptr noundef nonnull align 8 dereferenceable(422) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::allocator.6", align 1  ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZN6MapgenC2EiP12MapgenParamsP12EmergeParams(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 7, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV8MapgenV6, i64 16), ptr %0, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 340
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %i.s, i8 0, i64 30, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.t, i8 0, i64 100, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <4 x float> <float 1.000000e+00, float 2.500000e+02, float 2.500000e+02, float 2.500000e+02>, ptr %i.ag, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  store i32 12345, ptr %i.ai, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store i16 3, ptr %i.aj, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.ak, align 4, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  store i32 1, ptr %i.al, align 4, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 9 uses
  %i.an = load i16, ptr %i.am, align 8, !tbaa !19 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 9 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !45
  %.not = icmp eq i16 %i.an, %i.ap
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !46
  %.not62 = icmp eq i16 %i.an, %i.ar
  br i1 %.not62, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.as = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTI13BaseException, ptr nonnull @_ZN13BaseExceptionD2Ev) #24
          to label %bb.fg unwind label %bb.f

bb.e:                                             ; preds = %.noexc345, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc343, %bb.q, %bb.o, %bb.m, %.noexc, %_ZTW13warningstream.exit, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.f:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !51
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ff

bb.g:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @__cxa_free_exception(ptr %i.as) #23
  br label %bb.ff

bb.h:                                             ; preds = %bb.b
  %i.bb = and i16 %i.an, 31
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.i, label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i, label %_ZTW13warningstream.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.i, %bb.j
  %i.bd = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !52, !nonnull !65, !align !66 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !9
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %.noexc unwind label %bb.e, !inline_history !67

.noexc:                                           ; preds = %_ZTW13warningstream.exit
  %.v.i = select i1 %i.bh, i64 976, i64 984
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr @.str.8, ptr %i.r, align 8, !tbaa !68
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.k unwind label %bb.e       ; 0 uses

bb.k:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !69 ; 5 uses
  %.not.i102 = icmp eq ptr %i.bk, null
  br i1 %.not.i102, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !9
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !70
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %.noexc103 unwind label %bb.e

.noexc103:                                        ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.bi, align 8, !tbaa !69 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !9
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre447 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.n

bb.n:                                             ; preds = %.noexc103, %bb.l
  %i.bs = phi i64 [ %.pre447, %.noexc103 ], [ %i.bn, %bb.l ]
  %i.bt = phi ptr [ %.pre.i, %.noexc103 ], [ %i.bk, %bb.l ] ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 240
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !77 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc342 unwind label %bb.e

.noexc342:                                        ; preds = %bb.o
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !83
  %.not.i1.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i1.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 67
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bw)
          to label %.noexc343 unwind label %bb.e

.noexc343:                                        ; preds = %bb.q
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef signext i8 %i.cd(ptr noundef nonnull align 8 dereferenceable(570) %i.bw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.e, !inline_history !88

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc343, %bb.p
  %.0.i.i.i = phi i8 [ %i.ca, %bb.p ], [ %i.ce, %.noexc343 ]
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i8 noundef signext %.0.i.i.i)
          to label %.noexc345 unwind label %bb.e

.noexc345:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.e ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.k, %.noexc345, %bb.h
  %i.ch = load i16, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.ci = sext i16 %i.ch to i32                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !89
  %i.ck = sext i16 %i.ch to i64
  %i.cl = load i16, ptr %i.aq, align 4, !tbaa !46
  %i.cm = sext i16 %i.cl to i64
  %i.cn = mul nsw i64 %i.cm, %i.ck                ; 2 uses
  %i.co = shl nsw i64 %i.cn, 1
  %.inv = icmp sgt i64 %i.cn, -1
  %i.cp = select i1 %.inv, i64 %i.co, i64 -1
  %i.cq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #26
          to label %bb.r unwind label %bb.e

bb.r:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !93
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !94
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !98
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cx = load <2 x float>, ptr %i.cv, align 8, !tbaa !11
  store <2 x float> %i.cx, ptr %i.cw, align 8, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.da = load <2 x i16>, ptr %i.cy, align 8, !tbaa !99
  store <2 x i16> %i.da, ptr %i.cz, align 8, !tbaa !99
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 348
  store ptr %i.db, ptr %i.ab, align 8, !tbaa !100
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 388 ; 2 uses
  store ptr %i.dc, ptr %i.ac, align 8, !tbaa !101
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 428
  store ptr %i.dd, ptr %i.ad, align 8, !tbaa !102
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 468
  store ptr %i.de, ptr %i.ae, align 8, !tbaa !103
  store <4 x float> <float f0x3F666666, float 5.000000e-01, float 5.000000e+02, float 5.000000e+02>, ptr %i.af, align 8, !tbaa !11
  store float 5.000000e+02, ptr %i.ah, align 8, !tbaa !11
  store i32 0, ptr %i.ai, align 4, !tbaa !104
  store i16 2, ptr %i.aj, align 8, !tbaa !99
  store <2 x float> <float 8.000000e-01, float 2.000000e+00>, ptr %i.ak, align 4, !tbaa !11
  store i32 1, ptr %i.al, align 4, !tbaa !104
  %i.df = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %bb.s unwind label %bb.e       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !105
  %i.dj = load i16, ptr %i.ao, align 2, !tbaa !45
  %i.dk = sext i16 %i.dj to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.df, ptr noundef nonnull %i.dg, i32 noundef %i.di, i32 noundef %i.ci, i32 noundef %i.dk, i32 noundef 1)
          to label %bb.t unwind label %bb.av

bb.t:                                             ; preds = %bb.s
  store ptr %i.df, ptr %i.t, align 8, !tbaa !106
  %i.dl = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %bb.u unwind label %bb.e       ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.dn = load i32, ptr %i.dh, align 8, !tbaa !105
  %i.do = load i16, ptr %i.am, align 8, !tbaa !19
  %i.dp = sext i16 %i.do to i32
  %i.dq = load i16, ptr %i.ao, align 2, !tbaa !45
  %i.dr = sext i16 %i.dq to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.dl, ptr noundef nonnull %i.dm, i32 noundef %i.dn, i32 noundef %i.dp, i32 noundef %i.dr, i32 noundef 1)
          to label %bb.v unwind label %bb.aw

bb.v:                                             ; preds = %bb.u
  store ptr %i.dl, ptr %i.u, align 8, !tbaa !107
  %i.ds = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %bb.w unwind label %bb.e       ; 3 uses

bb.w:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.du = load i32, ptr %i.dh, align 8, !tbaa !105
  %i.dv = load i16, ptr %i.am, align 8, !tbaa !19
  %i.dw = sext i16 %i.dv to i32
  %i.dx = load i16, ptr %i.ao, align 2, !tbaa !45
  %i.dy = sext i16 %i.dx to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.ds, ptr noundef nonnull %i.dt, i32 noundef %i.du, i32 noundef %i.dw, i32 noundef %i.dy, i32 noundef 1)
          to label %bb.x unwind label %bb.ax

bb.x:                                             ; preds = %bb.w
  store ptr %i.ds, ptr %i.v, align 8, !tbaa !108
  %i.dz = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %bb.y unwind label %bb.e       ; 3 uses

bb.y:                                             ; preds = %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.eb = load i32, ptr %i.dh, align 8, !tbaa !105
  %i.ec = load i16, ptr %i.am, align 8, !tbaa !19
  %i.ed = sext i16 %i.ec to i32
  %i.ee = load i16, ptr %i.ao, align 2, !tbaa !45
  %i.ef = sext i16 %i.ee to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.dz, ptr noundef nonnull %i.ea, i32 noundef %i.eb, i32 noundef %i.ed, i32 noundef %i.ef, i32 noundef 1)
          to label %bb.z unwind label %bb.ay

bb.z:                                             ; preds = %bb.y
  store ptr %i.dz, ptr %i.w, align 8, !tbaa !109
  %i.eg = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %bb.aa unwind label %bb.e      ; 3 uses

bb.aa:                                            ; preds = %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.ei = load i32, ptr %i.dh, align 8, !tbaa !105
  %i.ej = load i16, ptr %i.am, align 8, !tbaa !19
  %i.ek = sext i16 %i.ej to i32
  %i.el = load i16, ptr %i.ao, align 2, !tbaa !45
  %i.em = sext i16 %i.el to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.eg, ptr noundef nonnull %i.eh, i32 noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.em, i32 noundef 1)
          to label %bb.ab unwind label %bb.az

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.eg, ptr %i.x, align 8, !tbaa !110
  %i.en = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %bb.ac unwind label %bb.e      ; 3 uses

bb.ac:                                            ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.ep = load i32, ptr %i.dh, align 8, !tbaa !105
  %i.eq = load i16, ptr %i.am, align 8, !tbaa !19
  %i.er = sext i16 %i.eq to i32
  %i.es = load i16, ptr %i.ao, align 2, !tbaa !45
  %i.et = sext i16 %i.es to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.en, ptr noundef nonnull %i.eo, i32 noundef %i.ep, i32 noundef %i.er, i32 noundef %i.et, i32 noundef 1)
          to label %bb.ad unwind label %bb.ba

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.en, ptr %i.y, align 8, !tbaa !111
  %i.eu = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %bb.ae unwind label %bb.e      ; 3 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.ew = load i32, ptr %i.dh, align 8, !tbaa !105
  %i.ex = load i16, ptr %i.am, align 8, !tbaa !19
  %i.ey = sext i16 %i.ex to i32
  %i.ez = add nsw i32 %i.ey, 32
  %i.fa = load i16, ptr %i.ao, align 2, !tbaa !45
  %i.fb = sext i16 %i.fa to i32
  %i.fc = add nsw i32 %i.fb, 32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.eu, ptr noundef nonnull %i.ev, i32 noundef %i.ew, i32 noundef %i.ez, i32 noundef %i.fc, i32 noundef 1)
          to label %bb.af unwind label %bb.bb

bb.af:                                            ; preds = %bb.ae
  store ptr %i.eu, ptr %i.z, align 8, !tbaa !112
  %i.fd = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %bb.ag unwind label %bb.e      ; 3 uses

bb.ag:                                            ; preds = %bb.af
  %i.fe = load i32, ptr %i.dh, align 8, !tbaa !105
  %i.ff = load i16, ptr %i.am, align 8, !tbaa !19
  %i.fg = sext i16 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, 32
  %i.fi = load i16, ptr %i.ao, align 2, !tbaa !45
  %i.fj = sext i16 %i.fi to i32
  %i.fk = add nsw i32 %i.fj, 32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.fd, ptr noundef nonnull %i.dc, i32 noundef %i.fe, i32 noundef %i.fh, i32 noundef %i.fk, i32 noundef 1)
          to label %._crit_edge.i.i unwind label %bb.bc

._crit_edge.i.i:                                  ; preds = %bb.ag
  store ptr %i.fd, ptr %i.aa, align 8, !tbaa !113
  %i.fl = load ptr, ptr %2, align 8, !tbaa !114   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.fm, ptr %5, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fm, ptr noundef nonnull align 1 dereferenceable(12) @.str.9, i64 12, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 12, ptr %i.fn, align 8, !tbaa !121
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.fo, align 4, !tbaa !51
  %i.fp = invoke noundef zeroext i16 @_ZNK14NodeDefManager5getIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(65848) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ah unwind label %bb.bd

bb.ah:                                            ; preds = %._crit_edge.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 4 uses
  store i16 %i.fp, ptr %i.fq, align 4, !tbaa !122
  %i.fr = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fm
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.ah
  %i.ft = load i64, ptr %i.fm, align 8, !tbaa !51
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.fv, ptr %6, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.fv, ptr noundef nonnull align 1 dereferenceable(11) @.str.10, i64 11, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 11, ptr %i.fw, align 8, !tbaa !121
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 27
  store i8 0, ptr %i.fx, align 1, !tbaa !51
  %i.fy = invoke noundef zeroext i16 @_ZNK14NodeDefManager5getIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(65848) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ai unwind label %bb.be

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 390 ; 2 uses
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !123
  %i.ga = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fv
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.ai
  %i.gc = load i64, ptr %i.fv, align 8, !tbaa !51
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ge, ptr %7, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  store i64 22, ptr %i.q, align 8, !tbaa !124
  %i.gf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc118 unwind label %bb.bf ; 2 uses

.noexc118:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  store ptr %i.gf, ptr %7, align 8, !tbaa !47
  %i.gg = load i64, ptr %i.q, align 8, !tbaa !124 ; 3 uses
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.gf, ptr noundef nonnull align 1 dereferenceable(22) @.str.11, i64 22, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !121
  %i.gi = load ptr, ptr %7, align 8, !tbaa !47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gg
  store i8 0, ptr %i.gj, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  %i.gk = invoke noundef zeroext i16 @_ZNK14NodeDefManager5getIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(65848) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.aj unwind label %bb.bg

bb.aj:                                            ; preds = %.noexc118
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  store i16 %i.gk, ptr %i.gl, align 8, !tbaa !125
  %i.gm = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.ge
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.aj
  %i.go = load i64, ptr %i.ge, align 8, !tbaa !51
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

end_hunk_0
