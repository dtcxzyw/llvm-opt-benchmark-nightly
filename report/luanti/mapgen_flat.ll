Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen_flat?download=true
inline.NumInlined: 320
inline.NumDeleted: 42
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.FlagDesc = type { ptr, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNK10MapgenFlat7getTypeEv = comdat any

$_ZN6Mapgen21getGroundLevelAtPointEN4core8vector2dIsEE = comdat any

$_ZN16MapgenFlatParamsD0Ev = comdat any

@.str = private unnamed_addr constant [6 x i8] c"lakes\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hills\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"caverns\00", align 1
@flagdesc_mapgen_flat = dso_local constant [4 x %struct.FlagDesc] [%struct.FlagDesc { ptr @.str, i32 1 }, %struct.FlagDesc { ptr @.str.1, i32 2 }, %struct.FlagDesc { ptr @.str.2, i32 4 }, %struct.FlagDesc zeroinitializer], align 16
@_ZTV10MapgenFlat = dso_local constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTI10MapgenFlat, ptr @_ZN10MapgenFlatD2Ev, ptr @_ZN10MapgenFlatD0Ev, ptr @_ZNK10MapgenFlat7getTypeEv, ptr @_ZN10MapgenFlat9makeChunkEP13BlockMakeData, ptr @_ZN6Mapgen21getGroundLevelAtPointEN4core8vector2dIsEE, ptr @_ZN10MapgenFlat20getSpawnLevelAtPointEN4core8vector2dIsEE, ptr @_ZN11MapgenBasic14generateBiomesEv, ptr @_ZN11MapgenBasic12dustTopNodesEv, ptr @_ZN11MapgenBasic30generateCavesNoiseIntersectionEs, ptr @_ZN11MapgenBasic23generateCavesRandomWalkEss, ptr @_ZN11MapgenBasic20generateCavernsNoiseEs, ptr @_ZN11MapgenBasic16generateDungeonsEs] }, align 8
@_ZTV16MapgenFlatParams = dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI16MapgenFlatParams, ptr @_ZN12MapgenParamsD2Ev, ptr @_ZN16MapgenFlatParamsD0Ev, ptr @_ZN16MapgenFlatParams10readParamsEPK8Settings, ptr @_ZNK16MapgenFlatParams11writeParamsEP8Settings, ptr @_ZN16MapgenFlatParams18setDefaultSettingsEP8Settings] }, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"mgflat_spflags\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"mgflat_ground_level\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"mgflat_large_cave_depth\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"mgflat_small_cave_num_min\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"mgflat_small_cave_num_max\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"mgflat_large_cave_num_min\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"mgflat_large_cave_num_max\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"mgflat_large_cave_flooded\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"mgflat_cave_width\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"mgflat_lake_threshold\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"mgflat_lake_steepness\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"mgflat_hill_threshold\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"mgflat_hill_steepness\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"mgflat_cavern_limit\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"mgflat_cavern_taper\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"mgflat_cavern_threshold\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"mgflat_dungeon_ymin\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"mgflat_dungeon_ymax\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"mgflat_np_terrain\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"mgflat_np_filler_depth\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"mgflat_np_cavern\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"mgflat_np_cave1\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"mgflat_np_cave2\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"mgflat_np_dungeons\00", align 1
@_ZTI10MapgenFlat = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10MapgenFlat, ptr @_ZTI11MapgenBasic }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS10MapgenFlat = dso_local constant [13 x i8] c"10MapgenFlat\00", align 1
@_ZTI11MapgenBasic = external constant ptr
@_ZTI16MapgenFlatParams = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16MapgenFlatParams, ptr @_ZTI12MapgenParams }, align 8
@_ZTS16MapgenFlatParams = dso_local constant [19 x i8] c"16MapgenFlatParams\00", align 1
@_ZTI12MapgenParams = external constant ptr

@_ZN10MapgenFlatC1EP16MapgenFlatParamsP12EmergeParams = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN10MapgenFlatC2EP16MapgenFlatParamsP12EmergeParams
@_ZN10MapgenFlatD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN10MapgenFlatD2Ev
@_ZN16MapgenFlatParamsC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16MapgenFlatParamsC2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10MapgenFlatC2EP16MapgenFlatParamsP12EmergeParams(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11MapgenBasicC2EiP12MapgenParamsP12EmergeParams(ptr noundef nonnull align 8 dereferenceable(474) %0, i32 noundef 4, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV10MapgenFlat, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i16, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 474
  store i16 %i.f, ptr %i.g, align 2, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.j = load <4 x float>, ptr %i.h, align 4, !tbaa !53
  store <4 x float> %i.j, ptr %i.i, align 4, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.l = load float, ptr %i.k, align 4, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 432
  store float %i.l, ptr %i.m, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.p = load <4 x i16>, ptr %i.n, align 8, !tbaa !55
  %i.q = zext <4 x i16> %i.p to <4 x i32>
  store <4 x i32> %i.q, ptr %i.o, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = load i16, ptr %i.r, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i16 %i.s, ptr %i.t, align 4, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.v = load float, ptr %i.u, align 4, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 464
  store float %i.v, ptr %i.w, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.z = load <2 x i16>, ptr %i.x, align 8, !tbaa !55
  %i.aa = sitofp nsz <2 x i16> %i.z to <2 x float>
  store <2 x float> %i.aa, ptr %i.y, align 4, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 444
  store float %i.ac, ptr %i.ad, align 4, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 470
  %i.ag = load <2 x i16>, ptr %i.ae, align 8, !tbaa !55
  store <2 x i16> %i.ag, ptr %i.af, align 2, !tbaa !55
  %i.ah = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #9
          to label %bb.b unwind label %bb.g       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.am = load i16, ptr %i.al, align 8, !tbaa !87
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !88
  %i.aq = sext i16 %i.ap to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull %i.ai, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef 1)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ah, ptr %i.ar, align 8, !tbaa !61
  %i.as = load i32, ptr %i.d, align 4, !tbaa !49
  %i.at = and i32 %i.as, 3
  %or.cond = icmp eq i32 %i.at, 0
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #9
          to label %bb.e unwind label %bb.g       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.aw = load i32, ptr %i.aj, align 8, !tbaa !60
  %i.ax = load i16, ptr %i.al, align 8, !tbaa !87
  %i.ay = sext i16 %i.ax to i32
  %i.az = load i16, ptr %i.ao, align 4, !tbaa !88
  %i.ba = sext i16 %i.az to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.au, ptr noundef nonnull %i.av, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef 1)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.au, ptr %i.a, align 8, !tbaa !44
  br label %bb.j

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 88) #10
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 88) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.c, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 4 dereferenceable(40) %i.be, i64 40, i1 false), !tbaa.struct !89
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 4 dereferenceable(40) %i.bg, i64 40, i1 false), !tbaa.struct !89
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 4 dereferenceable(40) %i.bi, i64 40, i1 false), !tbaa.struct !89
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 4 dereferenceable(40) %i.bk, i64 40, i1 false), !tbaa.struct !89
  ret void

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.i ], [ %i.bb, %bb.g ], [ %i.bc, %bb.h ]
  tail call void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(474) %0) #11
  resume { ptr, i32 } %.pn
}

declare void @_ZN11MapgenBasicC2EiP12MapgenParamsP12EmergeParams(ptr noundef nonnull align 8 dereferenceable(474), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(474)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10MapgenFlatD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV10MapgenFlat, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.b) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49
  %i.f = and i32 %i.e, 3
  %or.cond = icmp eq i32 %i.f, 0
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.h) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 88) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  tail call void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(474) %0) #11
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10MapgenFlatD0Ev(ptr noundef nonnull align 8 dereferenceable(504) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV10MapgenFlat, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.b) #11, !inline_history !90
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #10, !inline_history !90
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49
  %i.f = and i32 %i.e, 3
  %or.cond.i = icmp eq i32 %i.f, 0
  br i1 %or.cond.i, label %_ZN10MapgenFlatD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN10MapgenFlatD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.h) #11, !inline_history !90
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 88) #10, !inline_history !90
  br label %_ZN10MapgenFlatD2Ev.exit

_ZN10MapgenFlatD2Ev.exit:                         ; preds = %bb.c, %bb.d, %bb.e
  tail call void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(504) %0) #11, !inline_history !90
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 504) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN16MapgenFlatParamsC2Ev(ptr nofree noundef nonnull writeonly align 8 dereferenceable(348) initializes((0, 18), (24, 44), (48, 58), (60, 90), (92, 134), (136, 174), (176, 214), (216, 254), (256, 294), (296, 334), (336, 348)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 5, ptr %i.b, align 4, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 5, ptr %i.c, align 2, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 5, ptr %i.d, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 1, ptr %i.f, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i16 31007, ptr %i.g, align 2, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.j, align 8, !tbaa !96
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16MapgenFlatParams, i64 16), ptr %0, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 8, ptr %i.k, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <4 x float> <float -4.500000e-01, float 4.800000e+01, float 4.500000e-01, float 6.400000e+01>, ptr %i.l, align 4, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float 9.000000e-02, ptr %i.m, align 4, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i16> <i16 0, i16 0, i16 0, i16 2>, ptr %i.n, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 -33, ptr %i.o, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float 5.000000e-01, ptr %i.p, align 4, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i16 -256, ptr %i.q, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i16 256, ptr %i.r, align 2, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float f0x3F333333, ptr %i.s, align 4, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i16 -31000, ptr %i.t, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i16 31000, ptr %i.u, align 2, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 6.000000e+02, float 6.000000e+02>, ptr %i.v, align 4, !tbaa !53
  store float 6.000000e+02, ptr %i.w, align 4, !tbaa !53
  store i32 7244, ptr %i.x, align 8, !tbaa !97
  store i16 5, ptr %i.y, align 4, !tbaa !98
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.z, align 8, !tbaa !53
  store i32 1, ptr %i.aa, align 8, !tbaa !99
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <4 x float> <float 0.000000e+00, float 1.200000e+00, float 1.500000e+02, float 1.500000e+02>, ptr %i.ab, align 4, !tbaa !53
  store float 1.500000e+02, ptr %i.ac, align 4, !tbaa !53
  store i32 261, ptr %i.ad, align 8, !tbaa !97
  store i16 3, ptr %i.ae, align 4, !tbaa !98
  store <2 x float> <float f0x3F333333, float 2.000000e+00>, ptr %i.af, align 8, !tbaa !53
  store i32 1, ptr %i.ag, align 8, !tbaa !99
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 3.840000e+02, float 1.280000e+02>, ptr %i.ah, align 4, !tbaa !53
  store float 3.840000e+02, ptr %i.ai, align 4, !tbaa !53
  store i32 723, ptr %i.aj, align 8, !tbaa !97
  store i16 5, ptr %i.ak, align 4, !tbaa !98
  store <2 x float> <float 6.300000e-01, float 2.000000e+00>, ptr %i.al, align 8, !tbaa !53
  store i32 1, ptr %i.am, align 8, !tbaa !99
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  store <4 x float> <float 0.000000e+00, float 1.200000e+01, float 6.100000e+01, float 6.100000e+01>, ptr %i.an, align 4, !tbaa !53
  store float 6.100000e+01, ptr %i.ao, align 4, !tbaa !53
  store i32 52534, ptr %i.ap, align 8, !tbaa !97
  store i16 3, ptr %i.aq, align 4, !tbaa !98
  store <2 x float> <float 5.000000e-01, float 2.000000e+00>, ptr %i.ar, align 8, !tbaa !53
  store i32 1, ptr %i.as, align 8, !tbaa !99
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 304
end_hunk_0
