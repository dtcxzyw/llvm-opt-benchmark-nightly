Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen_v5?download=true
inline.NumInlined: 292
inline.NumDeleted: 40
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.FlagDesc = type { ptr, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNK8MapgenV57getTypeEv = comdat any

$_ZN6Mapgen21getGroundLevelAtPointEN4core8vector2dIsEE = comdat any

$_ZN14MapgenV5ParamsD0Ev = comdat any

@.str = private unnamed_addr constant [8 x i8] c"caverns\00", align 1
@flagdesc_mapgen_v5 = dso_local constant [2 x %struct.FlagDesc] [%struct.FlagDesc { ptr @.str, i32 1 }, %struct.FlagDesc zeroinitializer], align 16
@_ZTV8MapgenV5 = dso_local constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTI8MapgenV5, ptr @_ZN8MapgenV5D2Ev, ptr @_ZN8MapgenV5D0Ev, ptr @_ZNK8MapgenV57getTypeEv, ptr @_ZN8MapgenV59makeChunkEP13BlockMakeData, ptr @_ZN6Mapgen21getGroundLevelAtPointEN4core8vector2dIsEE, ptr @_ZN8MapgenV520getSpawnLevelAtPointEN4core8vector2dIsEE, ptr @_ZN11MapgenBasic14generateBiomesEv, ptr @_ZN11MapgenBasic12dustTopNodesEv, ptr @_ZN11MapgenBasic30generateCavesNoiseIntersectionEs, ptr @_ZN11MapgenBasic23generateCavesRandomWalkEss, ptr @_ZN11MapgenBasic20generateCavernsNoiseEs, ptr @_ZN11MapgenBasic16generateDungeonsEs] }, align 8
@_ZTV14MapgenV5Params = dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI14MapgenV5Params, ptr @_ZN12MapgenParamsD2Ev, ptr @_ZN14MapgenV5ParamsD0Ev, ptr @_ZN14MapgenV5Params10readParamsEPK8Settings, ptr @_ZNK14MapgenV5Params11writeParamsEP8Settings, ptr @_ZN14MapgenV5Params18setDefaultSettingsEP8Settings] }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"mgv5_spflags\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"mgv5_cave_width\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"mgv5_large_cave_depth\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"mgv5_small_cave_num_min\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"mgv5_small_cave_num_max\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"mgv5_large_cave_num_min\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"mgv5_large_cave_num_max\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"mgv5_large_cave_flooded\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"mgv5_cavern_limit\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"mgv5_cavern_taper\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"mgv5_cavern_threshold\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"mgv5_dungeon_ymin\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"mgv5_dungeon_ymax\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"mgv5_np_filler_depth\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"mgv5_np_factor\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"mgv5_np_height\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"mgv5_np_ground\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"mgv5_np_cave1\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"mgv5_np_cave2\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"mgv5_np_cavern\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"mgv5_np_dungeons\00", align 1
@_ZTI8MapgenV5 = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8MapgenV5, ptr @_ZTI11MapgenBasic }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS8MapgenV5 = dso_local constant [10 x i8] c"8MapgenV5\00", align 1
@_ZTI11MapgenBasic = external constant ptr
@_ZTI14MapgenV5Params = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14MapgenV5Params, ptr @_ZTI12MapgenParams }, align 8
@_ZTS14MapgenV5Params = dso_local constant [17 x i8] c"14MapgenV5Params\00", align 1
@_ZTI12MapgenParams = external constant ptr

@_ZN8MapgenV5C1EP14MapgenV5ParamsP12EmergeParams = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN8MapgenV5C2EP14MapgenV5ParamsP12EmergeParams
@_ZN8MapgenV5D1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN8MapgenV5D2Ev
@_ZN14MapgenV5ParamsC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14MapgenV5ParamsC2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8MapgenV5C2EP14MapgenV5ParamsP12EmergeParams(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11MapgenBasicC2EiP12MapgenParamsP12EmergeParams(ptr noundef nonnull align 8 dereferenceable(474) %0, i32 noundef 3, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV8MapgenV5, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 %i.d, ptr %i.e, align 4, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load float, ptr %i.f, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 432
  store float %i.g, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.j = load i16, ptr %i.i, align 4, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i16 %i.j, ptr %i.k, align 4, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.n = load <4 x i16>, ptr %i.l, align 2, !tbaa !52
  %i.o = zext <4 x i16> %i.n to <4 x i32>
  store <4 x i32> %i.o, ptr %i.m, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load float, ptr %i.p, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 464
  store float %i.q, ptr %i.r, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.u = load <2 x i16>, ptr %i.s, align 4, !tbaa !52
  %i.v = sitofp nsz <2 x i16> %i.u to <2 x float>
  store <2 x float> %i.v, ptr %i.t, align 4, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = load float, ptr %i.w, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 444
  store float %i.x, ptr %i.y, align 4, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 470
  %i.ab = load <2 x i16>, ptr %i.z, align 4, !tbaa !52
  store <2 x i16> %i.ab, ptr %i.aa, align 2, !tbaa !52
  %i.ac = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #10
          to label %bb.b unwind label %3          ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !87
  %i.ai = sext i16 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !88
  %i.al = sext i16 %i.ak to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.ac, ptr noundef nonnull %i.ad, i32 noundef %i.af, i32 noundef %i.ai, i32 noundef %i.al, i32 noundef 1)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ac, ptr %i.am, align 8, !tbaa !57
  %i.an = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #10
          to label %bb.d unwind label %3          ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ap = load i32, ptr %i.ae, align 8, !tbaa !56
  %i.aq = load i16, ptr %i.ag, align 8, !tbaa !87
  %i.ar = sext i16 %i.aq to i32
  %i.as = load i16, ptr %i.aj, align 4, !tbaa !88
  %i.at = sext i16 %i.as to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr noundef nonnull %i.ao, i32 noundef %i.ap, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef 1)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  store ptr %i.an, ptr %i.a, align 8, !tbaa !59
  %i.au = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #10
          to label %bb.f unwind label %3          ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aw = load i32, ptr %i.ae, align 8, !tbaa !56
  %i.ax = load i16, ptr %i.ag, align 8, !tbaa !87
  %i.ay = sext i16 %i.ax to i32
  %i.az = load i16, ptr %i.aj, align 4, !tbaa !88
  %i.ba = sext i16 %i.az to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.au, ptr noundef nonnull %i.av, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef 1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  store ptr %i.au, ptr %i.b, align 8, !tbaa !60
  %i.bb = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #10
          to label %bb.h unwind label %3          ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bd = load i32, ptr %i.ae, align 8, !tbaa !56
  %i.be = load i16, ptr %i.ag, align 8, !tbaa !87
  %i.bf = sext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !89
  %i.bi = sext i16 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, 2
  %i.bk = load i16, ptr %i.aj, align 4, !tbaa !88
  %i.bl = sext i16 %i.bk to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.bb, ptr noundef nonnull %i.bc, i32 noundef %i.bd, i32 noundef %i.bf, i32 noundef %i.bj, i32 noundef %i.bl)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %i.bb, ptr %i.bm, align 8, !tbaa !61
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %i.bn, i64 40, i1 false), !tbaa.struct !90
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i64 40, i1 false), !tbaa.struct !90
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %i.br, i64 40, i1 false), !tbaa.struct !90
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i64 40, i1 false), !tbaa.struct !90
  ret void

3:                                                ; preds = %bb.g, %bb.e, %bb.c, %bb.a
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.b
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.sink = phi ptr [ %i.bb, %bb.m ], [ %i.au, %bb.l ], [ %i.an, %bb.k ], [ %i.ac, %bb.j ]
  %.pn.ph = phi { ptr, i32 } [ %i.by, %bb.m ], [ %i.bx, %bb.l ], [ %i.bw, %bb.k ], [ %i.bv, %bb.j ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 88) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %3
  %.pn = phi { ptr, i32 } [ %4, %3 ], [ %.pn.ph, %bb.n ]
  tail call void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(474) %0) #12
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
define dso_local void @_ZN8MapgenV5D2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV8MapgenV5, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.b) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.e) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 88) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.h) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 88) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.k) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 88) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN11MapgenBasicD2Ev(ptr noundef nonnull align 8 dead_on_return(474) dereferenceable(474) %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8MapgenV5D0Ev(ptr noundef nonnull align 8 dereferenceable(504) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN8MapgenV5D2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 504) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN14MapgenV5ParamsC2Ev(ptr nofree noundef nonnull writeonly align 8 dereferenceable(408) initializes((0, 18), (24, 44), (48, 70), (72, 114), (116, 154), (156, 194), (196, 234), (236, 274), (276, 314), (316, 354), (356, 394), (396, 408)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
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
  store i32 0, ptr %i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.j, align 8, !tbaa !96
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV14MapgenV5Params, i64 16), ptr %0, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 9.000000e-02, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <4 x i16> <i16 -256, i16 0, i16 0, i16 0>, ptr %i.l, align 4, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i16 2, ptr %i.m, align 4, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float 5.000000e-01, ptr %i.n, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i16 -256, ptr %i.o, align 4, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i16 256, ptr %i.p, align 2, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float f0x3F333333, ptr %i.q, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 -31000, ptr %i.r, align 4, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 86
  store i16 31000, ptr %i.s, align 2, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.500000e+02, float 1.500000e+02>, ptr %i.t, align 8, !tbaa !54
  store float 1.500000e+02, ptr %i.u, align 8, !tbaa !54
  store i32 261, ptr %i.v, align 4, !tbaa !97
  store i16 4, ptr %i.w, align 8, !tbaa !98
  store <2 x float> <float f0x3F333333, float 2.000000e+00>, ptr %i.x, align 4, !tbaa !54
  store i32 1, ptr %i.y, align 4, !tbaa !99
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 164
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %i.z, align 8, !tbaa !54
  store float 2.500000e+02, ptr %i.aa, align 8, !tbaa !54
  store i32 920381, ptr %i.ab, align 4, !tbaa !97
  store i16 3, ptr %i.ac, align 8, !tbaa !98
  store <2 x float> <float 4.500000e-01, float 2.000000e+00>, ptr %i.ad, align 4, !tbaa !54
  store i32 1, ptr %i.ae, align 4, !tbaa !99
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 204
  store <4 x float> <float 0.000000e+00, float 1.000000e+01, float 2.500000e+02, float 2.500000e+02>, ptr %i.af, align 8, !tbaa !54
  store float 2.500000e+02, ptr %i.ag, align 8, !tbaa !54
  store i32 84174, ptr %i.ah, align 4, !tbaa !97
  store i16 4, ptr %i.ai, align 8, !tbaa !98
  store <2 x float> <float 5.000000e-01, float 2.000000e+00>, ptr %i.aj, align 4, !tbaa !54
  store i32 1, ptr %i.ak, align 4, !tbaa !99
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 244
  store <4 x float> <float 0.000000e+00, float 4.000000e+01, float 8.000000e+01, float 8.000000e+01>, ptr %i.al, align 8, !tbaa !54
  store float 8.000000e+01, ptr %i.am, align 8, !tbaa !54
  store i32 983240, ptr %i.an, align 4, !tbaa !97
  store i16 4, ptr %i.ao, align 8, !tbaa !98
  store <2 x float> <float 5.500000e-01, float 2.000000e+00>, ptr %i.ap, align 4, !tbaa !54
  store i32 2, ptr %i.aq, align 4, !tbaa !99
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 284
  store <4 x float> <float 0.000000e+00, float 1.200000e+01, float 6.100000e+01, float 6.100000e+01>, ptr %i.ar, align 8, !tbaa !54
  store float 6.100000e+01, ptr %i.as, align 8, !tbaa !54
  store i32 52534, ptr %i.at, align 4, !tbaa !97
  store i16 3, ptr %i.au, align 8, !tbaa !98
  store <2 x float> <float 5.000000e-01, float 2.000000e+00>, ptr %i.av, align 4, !tbaa !54
  store i32 1, ptr %i.aw, align 4, !tbaa !99
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 324
  store <4 x float> <float 0.000000e+00, float 1.200000e+01, float 6.700000e+01, float 6.700000e+01>, ptr %i.ax, align 8, !tbaa !54
  store float 6.700000e+01, ptr %i.ay, align 8, !tbaa !54
  store i32 10325, ptr %i.az, align 4, !tbaa !97
  store i16 3, ptr %i.ba, align 8, !tbaa !98
  store <2 x float> <float 5.000000e-01, float 2.000000e+00>, ptr %i.bb, align 4, !tbaa !54
  store i32 1, ptr %i.bc, align 4, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 328
end_hunk_0
