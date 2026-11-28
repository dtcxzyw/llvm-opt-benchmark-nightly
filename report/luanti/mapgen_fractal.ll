Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen_fractal?download=true
inline.NumInlined: 349
inline.NumDeleted: 54
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.FlagDesc = type { ptr, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [3 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<core::vector3d<float>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<core::vector3d<float>>::_Storage" = type { %"class.core::vector3d.5" }
%"class.core::vector3d.5" = type { float, float, float }

$_ZNK13MapgenFractal7getTypeEv = comdat any

$_ZN6Mapgen21getGroundLevelAtPointEN4core8vector2dIsEE = comdat any

$_ZN19MapgenFractalParamsD0Ev = comdat any

@.str = private unnamed_addr constant [8 x i8] c"terrain\00", align 1
@flagdesc_mapgen_fractal = dso_local constant [2 x %struct.FlagDesc] [%struct.FlagDesc { ptr @.str, i32 1 }, %struct.FlagDesc zeroinitializer], align 16
@_ZTV13MapgenFractal = dso_local constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTI13MapgenFractal, ptr @_ZN13MapgenFractalD2Ev, ptr @_ZN13MapgenFractalD0Ev, ptr @_ZNK13MapgenFractal7getTypeEv, ptr @_ZN13MapgenFractal9makeChunkEP13BlockMakeData, ptr @_ZN6Mapgen21getGroundLevelAtPointEN4core8vector2dIsEE, ptr @_ZN13MapgenFractal20getSpawnLevelAtPointEN4core8vector2dIsEE, ptr @_ZN11MapgenBasic14generateBiomesEv, ptr @_ZN11MapgenBasic12dustTopNodesEv, ptr @_ZN11MapgenBasic30generateCavesNoiseIntersectionEs, ptr @_ZN11MapgenBasic23generateCavesRandomWalkEss, ptr @_ZN11MapgenBasic20generateCavernsNoiseEs, ptr @_ZN11MapgenBasic16generateDungeonsEs] }, align 8
@_ZTV19MapgenFractalParams = dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI19MapgenFractalParams, ptr @_ZN12MapgenParamsD2Ev, ptr @_ZN19MapgenFractalParamsD0Ev, ptr @_ZN19MapgenFractalParams10readParamsEPK8Settings, ptr @_ZNK19MapgenFractalParams11writeParamsEP8Settings, ptr @_ZN19MapgenFractalParams18setDefaultSettingsEP8Settings] }, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"mgfractal_spflags\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mgfractal_cave_width\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"mgfractal_large_cave_depth\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"mgfractal_small_cave_num_min\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"mgfractal_small_cave_num_max\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"mgfractal_large_cave_num_min\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"mgfractal_large_cave_num_max\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"mgfractal_large_cave_flooded\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"mgfractal_dungeon_ymin\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"mgfractal_dungeon_ymax\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"mgfractal_fractal\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"mgfractal_iterations\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"mgfractal_scale\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"mgfractal_offset\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"mgfractal_slice_w\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"mgfractal_julia_x\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"mgfractal_julia_y\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"mgfractal_julia_z\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"mgfractal_julia_w\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"mgfractal_np_seabed\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"mgfractal_np_filler_depth\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"mgfractal_np_cave1\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"mgfractal_np_cave2\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"mgfractal_np_dungeons\00", align 1
@_ZTI13MapgenFractal = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13MapgenFractal, ptr @_ZTI11MapgenBasic }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13MapgenFractal = dso_local constant [16 x i8] c"13MapgenFractal\00", align 1
@_ZTI11MapgenBasic = external constant ptr
@_ZTI19MapgenFractalParams = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS19MapgenFractalParams, ptr @_ZTI12MapgenParams }, align 8
@_ZTS19MapgenFractalParams = dso_local constant [22 x i8] c"19MapgenFractalParams\00", align 1
@_ZTI12MapgenParams = external constant ptr

@_ZN13MapgenFractalC1EP19MapgenFractalParamsP12EmergeParams = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN13MapgenFractalC2EP19MapgenFractalParamsP12EmergeParams
@_ZN13MapgenFractalD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13MapgenFractalD2Ev
@_ZN19MapgenFractalParamsC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN19MapgenFractalParamsC2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13MapgenFractalC2EP19MapgenFractalParamsP12EmergeParams(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11MapgenBasicC2EiP12MapgenParamsP12EmergeParams(ptr noundef nonnull align 8 dereferenceable(474) %0, i32 noundef 5, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV13MapgenFractal, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.e = load i32, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 %i.e, ptr %i.f, align 4, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load float, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  store float %i.h, ptr %i.i, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.k = load i16, ptr %i.j, align 4, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i16 %i.k, ptr %i.l, align 4, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.o = load <4 x i16>, ptr %i.m, align 2, !tbaa !54
  %i.p = zext <4 x i16> %i.o to <4 x i32>
  store <4 x i32> %i.p, ptr %i.n, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load float, ptr %i.q, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 464
  store float %i.r, ptr %i.s, align 8, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 470
  %i.v = load <2 x i16>, ptr %i.t, align 4, !tbaa !54
  store <2 x i16> %i.v, ptr %i.u, align 2, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 478 ; 2 uses
  %i.y = load <2 x i16>, ptr %i.w, align 8, !tbaa !54
  store <2 x i16> %i.y, ptr %i.x, align 2, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !57
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %i.aa, i64 12, i1 false), !tbaa.struct !57
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.ad = load <4 x float>, ptr %i.ab, align 4, !tbaa !56
  store <4 x float> %i.ad, ptr %i.ac, align 4, !tbaa !56
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.af = load float, ptr %i.ae, align 4, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 524
  store float %i.af, ptr %i.ag, align 4, !tbaa !84
  %i.ah = and i32 %i.e, 1
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #12
          to label %bb.c unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = load i16, ptr %i.am, align 8, !tbaa !85
  %i.ao = sext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !86
  %i.ar = sext i16 %i.aq to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.ai, ptr noundef nonnull %i.aj, i32 noundef %i.al, i32 noundef %i.ao, i32 noundef %i.ar, i32 noundef 1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !44
  br label %bb.g

bb.e:                                             ; preds = %bb.g, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.au = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #12
          to label %bb.h unwind label %bb.e       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !85
  %i.ba = sext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !86
  %i.bd = sext i16 %i.bc to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.au, ptr noundef nonnull %i.av, i32 noundef %i.ax, i32 noundef %i.ba, i32 noundef %i.bd, i32 noundef 1)
          to label %bb.i unwind label %3

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.au, ptr %i.be, align 8, !tbaa !60
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false), !tbaa.struct !87
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !tbaa.struct !87
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 40, i1 false), !tbaa.struct !87
  %i.bl = load i16, ptr %i.x, align 2, !tbaa !88  ; 3 uses
  %i.bm = lshr i16 %i.bl, 1
  %i.bn = and i16 %i.bl, 1
  %i.bo = add nuw i16 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 474
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !61
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.br = trunc i16 %i.bl to i8
  %i.bs = and i8 %i.br, 1
  %i.bt = xor i8 %i.bs, 1
  store i8 %i.bt, ptr %i.bq, align 4, !tbaa !62
  ret void

3:                                                ; preds = %bb.h
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %3
  %.sink = phi ptr [ %i.au, %3 ], [ %i.ai, %bb.f ]
  %.pn.ph = phi { ptr, i32 } [ %4, %3 ], [ %i.at, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 88) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.pn = phi { ptr, i32 } [ %i.as, %bb.e ], [ %.pn.ph, %bb.j ]
  tail call void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(474) %0) #14
  resume { ptr, i32 } %.pn
}

declare void @_ZN11MapgenBasicC2EiP12MapgenParamsP12EmergeParams(ptr noundef nonnull align 8 dereferenceable(474), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(474)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN13MapgenFractalD2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV13MapgenFractal, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.b) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.e) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 88) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(474) %0) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN13MapgenFractalD0Ev(ptr noundef nonnull align 8 dereferenceable(536) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV13MapgenFractal, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.b) #14, !inline_history !89
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #13, !inline_history !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN13MapgenFractalD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.e) #14, !inline_history !89
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 88) #13, !inline_history !89
  br label %_ZN13MapgenFractalD2Ev.exit

_ZN13MapgenFractalD2Ev.exit:                      ; preds = %bb.c, %bb.d
  tail call void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(536) %0) #14, !inline_history !89
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 536) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN19MapgenFractalParamsC2Ev(ptr nofree noundef nonnull writeonly align 8 dereferenceable(328) initializes((0, 18), (24, 44), (48, 70), (72, 154), (156, 194), (196, 234), (236, 274), (276, 314), (316, 328)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 5, ptr %i.b, align 4, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 5, ptr %i.c, align 2, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 5, ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 1, ptr %i.f, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i16 31007, ptr %i.g, align 2, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.j, align 8, !tbaa !95
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV19MapgenFractalParams, i64 16), ptr %0, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 9.000000e-02, ptr %i.k, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <4 x i16> <i16 -33, i16 0, i16 0, i16 0>, ptr %i.l, align 4, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i16 2, ptr %i.m, align 4, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float 5.000000e-01, ptr %i.n, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76
  store <4 x i16> <i16 -31000, i16 31000, i16 1, i16 11>, ptr %i.o, align 4, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <4 x float> <float 4.096000e+03, float 1.024000e+03, float 4.096000e+03, float 1.520000e+00>, ptr %i.p, align 4, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 100
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.670000e-01>, ptr %i.q, align 4, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 164
  store <4 x float> <float 2.000000e-01, float 1.330000e-01, float 6.700000e-02, float -1.400000e+01>, ptr %i.r, align 4, !tbaa !56
  store <4 x float> <float 9.000000e+00, float 6.000000e+02, float 6.000000e+02, float 6.000000e+02>, ptr %i.s, align 4, !tbaa !56
  store i32 41900, ptr %i.t, align 4, !tbaa !96
  store i16 5, ptr %i.u, align 8, !tbaa !97
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.v, align 4, !tbaa !56
  store i32 1, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 204
  store <4 x float> <float 0.000000e+00, float 1.200000e+00, float 1.500000e+02, float 1.500000e+02>, ptr %i.x, align 8, !tbaa !56
  store float 1.500000e+02, ptr %i.y, align 8, !tbaa !56
  store i32 261, ptr %i.z, align 4, !tbaa !96
  store i16 3, ptr %i.aa, align 8, !tbaa !97
  store <2 x float> <float f0x3F333333, float 2.000000e+00>, ptr %i.ab, align 4, !tbaa !56
  store i32 1, ptr %i.ac, align 4, !tbaa !98
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 244
  store <4 x float> <float 0.000000e+00, float 1.200000e+01, float 6.100000e+01, float 6.100000e+01>, ptr %i.ad, align 8, !tbaa !56
  store float 6.100000e+01, ptr %i.ae, align 8, !tbaa !56
  store i32 52534, ptr %i.af, align 4, !tbaa !96
  store i16 3, ptr %i.ag, align 8, !tbaa !97
  store <2 x float> <float 5.000000e-01, float 2.000000e+00>, ptr %i.ah, align 4, !tbaa !56
  store i32 1, ptr %i.ai, align 4, !tbaa !98
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 284
  store <4 x float> <float 0.000000e+00, float 1.200000e+01, float 6.700000e+01, float 6.700000e+01>, ptr %i.aj, align 8, !tbaa !56
  store float 6.700000e+01, ptr %i.ak, align 8, !tbaa !56
  store i32 10325, ptr %i.al, align 4, !tbaa !96
  store i16 3, ptr %i.am, align 8, !tbaa !97
  store <2 x float> <float 5.000000e-01, float 2.000000e+00>, ptr %i.an, align 4, !tbaa !56
  store i32 1, ptr %i.ao, align 4, !tbaa !98
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 324
  store <4 x float> <float f0x3F666666, float 5.000000e-01, float 5.000000e+02, float 5.000000e+02>, ptr %i.ap, align 8, !tbaa !56
  store float 5.000000e+02, ptr %i.aq, align 8, !tbaa !56
  store i32 0, ptr %i.ar, align 4, !tbaa !96
  store i16 2, ptr %i.as, align 8, !tbaa !97
  store <2 x float> <float 8.000000e-01, float 2.000000e+00>, ptr %i.at, align 4, !tbaa !56
  store i32 1, ptr %i.au, align 4, !tbaa !98
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN19MapgenFractalParams10readParamsEPK8Settings(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
end_hunk_0
