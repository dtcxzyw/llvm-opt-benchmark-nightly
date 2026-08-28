Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/cavegen?download=true
inline.NumInlined: 304
inline.NumDeleted: 78
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.NoiseParams = type { float, float, %"class.core::vector3d", i32, i16, float, float, i32 }
%"class.core::vector3d" = type { float, float, float }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.5" = type { i8 }
%struct.MapNode = type { i16, i8, i8 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN12PseudoRandom5rangeEii = comdat any

$_ZN13PrngExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN13BaseExceptionD2Ev = comdat any

$_ZN13PrngExceptionD0Ev = comdat any

$_ZNK13BaseException4whatEv = comdat any

$__clang_call_terminate = comdat any

$_ZN13BaseExceptionD0Ev = comdat any

$_ZTI13PrngException = comdat any

$_ZTS13PrngException = comdat any

$_ZTI13BaseException = comdat any

$_ZTS13BaseException = comdat any

$_ZTV13PrngException = comdat any

$_ZTV13BaseException = comdat any

@_ZL19nparams_caveliquids = internal global %struct.NoiseParams { float 0.000000e+00, float 1.000000e+00, %"class.core::vector3d" { float 1.500000e+02, float 1.500000e+02, float 1.500000e+02 }, i32 776, i16 3, float 6.000000e-01, float 2.000000e+00, i32 1 }, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"mapgen_water_source\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"mapgen_lava_source\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Invalid range (max < min)\00", align 1
@_ZTI13PrngException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13PrngException, ptr @_ZTI13BaseException }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13PrngException = linkonce_odr dso_local constant [16 x i8] c"13PrngException\00", comdat, align 1
@_ZTI13BaseException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13BaseException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTS13BaseException = linkonce_odr dso_local constant [16 x i8] c"13BaseException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@.str.7 = private unnamed_addr constant [16 x i8] c"Range too large\00", align 1
@_ZTV13PrngException = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13PrngException, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN13PrngExceptionD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@_ZTV13BaseException = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13BaseException, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN13BaseExceptionD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@.str.8 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN22CavesNoiseIntersectionC1EPK14NodeDefManagerP12BiomeManagerP8BiomeGenN4core8vector3dIsEEP11NoiseParamsSB_if = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i48, ptr, ptr, i32, float), ptr @_ZN22CavesNoiseIntersectionC2EPK14NodeDefManagerP12BiomeManagerP8BiomeGenN4core8vector3dIsEEP11NoiseParamsSB_if
@_ZN22CavesNoiseIntersectionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN22CavesNoiseIntersectionD2Ev
@_ZN12CavernsNoiseC1EPK14NodeDefManagerN4core8vector3dIsEEP11NoiseParamsifff = dso_local unnamed_addr alias void (ptr, ptr, i48, ptr, i32, float, float, float), ptr @_ZN12CavernsNoiseC2EPK14NodeDefManagerN4core8vector3dIsEEP11NoiseParamsifff
@_ZN12CavernsNoiseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12CavernsNoiseD2Ev
@_ZN15CavesRandomWalkC1EPK14NodeDefManagerP16GenerateNotifieriittfP8BiomeGen = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, i16, i16, float, ptr), ptr @_ZN15CavesRandomWalkC2EPK14NodeDefManagerP16GenerateNotifieriittfP8BiomeGen
@_ZN7CavesV6C1EPK14NodeDefManagerP16GenerateNotifieritt = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i16, i16), ptr @_ZN7CavesV6C2EPK14NodeDefManagerP16GenerateNotifieritt

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22CavesNoiseIntersectionC2EPK14NodeDefManagerP12BiomeManagerP8BiomeGenN4core8vector3dIsEEP11NoiseParamsSB_if(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 30), (32, 40)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i48 %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, float noundef %8) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store ptr %1, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.e, align 8, !tbaa !20
  store i48 %4, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %8, ptr %i.f, align 8, !tbaa !21
  %i.g = trunc i48 %4 to i16                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %i.g, ptr %i.h, align 4, !tbaa !22
  %i.i = lshr i48 %4, 16
  %i.j = trunc i48 %i.i to i16
  %i.k = add i16 %i.j, 1
  %i.l = mul i16 %i.k, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i16 %i.l, ptr %i.m, align 2, !tbaa !23
  %i.n = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #19 ; 3 uses
  %i.o = load i16, ptr %i.a, align 8, !tbaa !24
  %i.p = sext i16 %i.o to i32
  %i.q = load i16, ptr %i.b, align 2, !tbaa !25
  %i.r = sext i16 %i.q to i32
  %i.s = add nsw i32 %i.r, 1
  %i.t = load i16, ptr %i.c, align 4, !tbaa !26
  %i.u = sext i16 %i.t to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef %5, i32 noundef %7, i32 noundef %i.p, i32 noundef %i.s, i32 noundef %i.u)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %i.v, align 8, !tbaa !27
  %i.w = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #19 ; 3 uses
  %i.x = load i16, ptr %i.a, align 8, !tbaa !24
  %i.y = sext i16 %i.x to i32
  %i.z = load i16, ptr %i.b, align 2, !tbaa !25
  %i.aa = sext i16 %i.z to i32
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = load i16, ptr %i.c, align 4, !tbaa !26
  %i.ad = sext i16 %i.ac to i32
  invoke void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef %6, i32 noundef %7, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ad)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.w, ptr %i.ae, align 8, !tbaa !28
  ret void

bb.d:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi ptr [ %i.w, %bb.e ], [ %i.n, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %i.af, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 88) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare void @_ZN5NoiseC1EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN22CavesNoiseIntersectionD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.b) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.e) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 88) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22CavesNoiseIntersection13generateCavesEP8MMVManipN4core8vector3dIsEES4_Pt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1, i48 %2, i48 %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.076.0.extract.trunc = trunc i48 %2 to i16 ; 5 uses
  %.sroa.580.0.extract.shift = lshr i48 %2, 16
  %.sroa.580.0.extract.trunc = trunc i48 %.sroa.580.0.extract.shift to i16
  %.sroa.8.0.extract.shift = lshr i48 %2, 32
  %.sroa.8.0.extract.trunc = trunc nuw i48 %.sroa.8.0.extract.shift to i16 ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i48 %3 to i16  ; 3 uses
  %.sroa.2.0.extract.shift = lshr i48 %3, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = sitofp nsz i16 %.sroa.076.0.extract.trunc to float ; 2 uses
  %i.d = sext i16 %.sroa.580.0.extract.trunc to i32
  %i.e = add nsw i32 %i.d, -1                     ; 3 uses
  %i.f = sitofp nsz i32 %i.e to float             ; 2 uses
  %i.g = sitofp nsz i16 %.sroa.8.0.extract.trunc to float ; 2 uses
  %i.h = tail call noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.b, float noundef %i.c, float noundef %i.f, float noundef %i.g, ptr noundef null) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.j, float noundef %i.c, float noundef %i.f, float noundef %i.g, ptr noundef null) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.n = ashr i48 %3, 32
  %i.o = trunc nsw i48 %i.n to i32                ; 3 uses
  %i.p = sext i16 %.sroa.8.0.extract.trunc to i32 ; 3 uses
  %.not154 = icmp sgt i32 %i.p, %i.o
end_hunk_0
begin_hunk_1_@_ZN15CavesRandomWalk10makeTunnelEb:bb.a
  br i1 %or.cond21.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.ey = load i16, ptr %i.ew, align 8, !tbaa !197 ; 2 uses
  %.not16.i = icmp sgt i16 %i.ey, %i.ed
  %i.ez = load i16, ptr %i.ex, align 2
  %.not17.i = icmp slt i16 %i.ez, %i.ed
  %or.cond.i = select i1 %.not16.i, i1 true, i1 %.not17.i
  br i1 %or.cond.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fa = sext i16 %i.ey to i64
  %i.fb = sext i16 %i.ed to i64
  %i.fc = sub nsw i64 %i.eq, %i.et
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fe = load i16, ptr %i.fd, align 8, !tbaa !168
  %i.ff = zext i16 %i.fe to i64
  %i.fg = mul nsw i64 %i.fc, %i.ff
  %i.fh = sub nsw i64 %i.fb, %i.fa
  %i.fi = add nsw i64 %i.fh, %i.fg
  %i.fj = and i64 %i.fi, 4294967295
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !32
  %.not18.i = icmp slt i16 %i.fl, %i.ef
  br i1 %.not18.i, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread133

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.fm = sext i16 %i.ef to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !158
  %i.fp = icmp slt i32 %i.fo, %i.fm
  br i1 %i.fp, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread133

.thread:                                          ; preds = %bb.g
  %i.fq = sext i16 %i.ef to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !158
  %i.ft = icmp slt i32 %i.fs, %i.fq
  br i1 %i.ft, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread140

_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread133: ; preds = %bb.k, %bb.j
  %i.fu = sext i16 %i.en to i64
  %.not14.i57 = icmp slt i16 %i.en, %i.es
  %.not15.i58 = icmp sgt i16 %i.en, %i.ev
  %or.cond21.i59 = select i1 %.not14.i57, i1 true, i1 %.not15.i58
  br i1 %or.cond21.i59, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread140, label %bb.l

bb.l:                                             ; preds = %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread133
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.fx = load i16, ptr %i.fv, align 8, !tbaa !197 ; 2 uses
  %.not16.i60 = icmp sgt i16 %i.fx, %i.el
  %i.fy = load i16, ptr %i.fw, align 2
  %.not17.i61 = icmp slt i16 %i.fy, %i.el
  %or.cond.i62 = select i1 %.not16.i60, i1 true, i1 %.not17.i61
  br i1 %or.cond.i62, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread140, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fz = sext i16 %i.fx to i64
  %i.ga = sext i16 %i.el to i64
  %i.gb = sub nsw i64 %i.fu, %i.et
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gd = load i16, ptr %i.gc, align 8, !tbaa !168
  %i.ge = zext i16 %i.gd to i64
  %i.gf = mul nsw i64 %i.gb, %i.ge
  %i.gg = sub nsw i64 %i.ga, %i.fz
  %i.gh = add nsw i64 %i.gg, %i.gf
  %i.gi = and i64 %i.gh, 4294967295
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !32
  %.not18.i63 = icmp slt i16 %i.gk, %i.em
  br i1 %.not18.i63, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit65

_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread140: ; preds = %.thread, %bb.l, %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread133
  %i.gl = sext i16 %i.em to i32
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !158
  %i.go = icmp slt i32 %i.gn, %i.gl
  br i1 %i.go, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit65

_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit65: ; preds = %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread140, %bb.m
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gr = load float, ptr %i.gq, align 8, !tbaa !149
  %i.gs = fadd nsz float %.sroa.19.0, %i.gr
  %i.gt = load <2 x float>, ptr %i.gp, align 8, !tbaa !81
  %i.gu = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %.sink177, i64 1
  %i.gw = fadd nsz <2 x float> %i.gv, %i.gt
  %i.gx = fadd nsz <2 x float> %i.dn, %i.gw       ; 4 uses
  %i.gy = fadd nsz float %i.gs, %i.dr             ; 3 uses
  %i.gz = extractelement <2 x float> %i.gx, i64 0 ; 2 uses
  %i.ha = fcmp nsz olt float %i.gz, 0.000000e+00
  br i1 %i.ha, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit65
  %.sroa.0.0.vec.insert = insertelement <2 x float> %i.gx, float 0.000000e+00, i64 0
  br label %bb.q

bb.o:                                             ; preds = %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit65
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 110
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !191 ; 2 uses
  %i.hd = sitofp i16 %i.hc to float
  %i.he = fcmp nsz ult float %i.gz, %i.hd
  br i1 %i.he, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hf = sext i16 %i.hc to i32
  %i.hg = add nsw i32 %i.hf, -1
  %i.hh = sitofp nsz i32 %i.hg to float
  %.sroa.0.0.vec.insert74 = insertelement <2 x float> %i.gx, float %i.hh, i64 0
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.sroa.0.0 = phi nsz <2 x float> [ %.sroa.0.0.vec.insert, %bb.n ], [ %i.gx, %bb.o ], [ %.sroa.0.0.vec.insert74, %bb.p ] ; 4 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.hj = load i16, ptr %i.hi, align 4, !tbaa !185
  %i.hk = sitofp i16 %i.hj to float               ; 2 uses
  %i.hl = fcmp nsz olt float %.sroa.0.4.vec.extract, %i.hk
  br i1 %i.hl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.4.vec.insert78 = insertelement <2 x float> %.sroa.0.0, float %i.hk, i64 1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !186 ; 2 uses
  %i.ho = sitofp i16 %i.hn to float
  %i.hp = fcmp nsz ult float %.sroa.0.4.vec.extract, %i.ho
  br i1 %i.hp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hq = sext i16 %i.hn to i32
  %i.hr = add nsw i32 %i.hq, -1
  %i.hs = sitofp nsz i32 %i.hr to float
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0, float %i.hs, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %.sroa.0.1 = phi nsz <2 x float> [ %.sroa.0.4.vec.insert78, %bb.r ], [ %.sroa.0.0, %bb.s ], [ %.sroa.0.4.vec.insert, %bb.t ] ; 2 uses
  %i.ht = fcmp nsz olt float %i.gy, 0.000000e+00
  br i1 %i.ht, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !188 ; 2 uses
  %i.hw = sitofp i16 %i.hv to float
  %i.hx = fcmp nsz ult float %i.gy, %i.hw
  br i1 %i.hx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hy = sext i16 %i.hv to i32
  %i.hz = add nsw i32 %i.hy, -1
  %i.ia = sitofp nsz i32 %i.hz to float
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %.sroa.12.0 = phi nsz float [ %i.ia, %bb.w ], [ %i.gy, %bb.v ], [ 0.000000e+00, %bb.u ] ; 2 uses
  %i.ib = fsub nsz <2 x float> %.sroa.0.1, %i.dn  ; 4 uses
  %i.ic = fsub nsz float %.sroa.12.0, %i.dr       ; 3 uses
  %foldExtExtBinop181 = fmul nsz <2 x float> %i.ib, %i.ib
  %i.id = extractelement <2 x float> %foldExtExtBinop181, i64 1
  %i.ie = extractelement <2 x float> %i.ib, i64 0 ; 2 uses
  %i.if = tail call nsz float @llvm.fmuladd.f32(float %i.ie, float %i.ie, float %i.id)
  %i.ig = tail call nsz float @llvm.fmuladd.f32(float %i.ic, float %i.ic, float %i.if)
  %i.ih = tail call nsz noundef float @llvm.sqrt.f32(float %i.ig) ; 2 uses
  %i.ii = fcmp nsz olt float %i.ih, 5.000000e-02
  %i.ij = mul i32 %i.dg, 1103515245
  %i.ik = add i32 %i.ij, 12345                    ; 2 uses
  store i32 %i.ik, ptr %.pre155169.sink, align 4, !tbaa !169
  %i.il = sdiv i32 %i.ik, 65536
  %.zext.i71 = and i32 %i.il, 1
  %i.im = icmp eq i32 %.zext.i71, 0
  %i.in = fdiv nsz float 1.000000e+00, %i.ih
  %i.io = select i1 %i.ii, float 1.000000e+00, float %i.in
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  store <2 x float> %.sroa.0.1, ptr %i.dm, align 4
  store float %.sroa.12.0, ptr %i.dq, align 4, !tbaa !81
  br label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread

bb.z:                                             ; preds = %bb.x, %bb.z
  %.0153 = phi float [ 0.000000e+00, %bb.x ], [ %i.ip, %bb.z ] ; 2 uses
  tail call void @_ZN15CavesRandomWalk10carveRouteEN4core8vector3dIfEEfb(ptr noundef nonnull align 8 dereferenceable(150) %0, <2 x float> %i.ib, float %i.ic, float noundef %.0153, i1 noundef zeroext %i.im)
  %i.ip = fadd nsz float %i.io, %.0153            ; 2 uses
  %i.iq = fcmp nsz olt float %i.ip, 1.000000e+00
  br i1 %i.iq, label %bb.z, label %bb.y, !llvm.loop !198

_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread: ; preds = %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread140, %bb.m, %.thread, %bb.k, %bb.j, %bb.y
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15CavesRandomWalk10carveRouteEN4core8vector3dIfEEfb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(150) %0, <2 x float> %1, float %2, float noundef %3, i1 noundef zeroext %4) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.MapNode, align 4            ; 7 uses
  %6 = alloca %struct.MapNode, align 4            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i16, ptr %i.a, align 8, !tbaa !162
  store i16 %i.b, ptr %5, align 4, !tbaa !71
  %.2..2..2..sroa_idx174 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 0, ptr %.2..2..2..sroa_idx174, align 2, !tbaa !199
  %.3..3..3..sroa_idx175 = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 0, ptr %.3..3..3..sroa_idx175, align 1, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.d = load i16, ptr %i.c, align 2, !tbaa !163
  store i16 %i.d, ptr %6, align 4, !tbaa !71
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 0, ptr %.2..2..2..sroa_idx, align 2, !tbaa !199
  %.3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 0, ptr %.3..3..3..sroa_idx, align 1, !tbaa !200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.f = load float, ptr %i.e, align 4, !tbaa !192 ; 2 uses
  %i.g = fptosi float %i.f to i16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !184
  %i.k = add i16 %i.j, %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.n = load <2 x float>, ptr %i.h, align 8, !tbaa !81 ; 3 uses
  %i.o = fptosi <2 x float> %i.n to <2 x i16>
  %i.p = load <2 x i16>, ptr %i.l, align 2, !tbaa !32
  %i.q = add <2 x i16> %i.p, %i.o                 ; 2 uses
  %.sroa.0125.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.r = fmul nsz float %.sroa.0125.4.vec.extract, %3
  %i.s = extractelement <2 x float> %i.n, i64 0
  %i.t = fadd nsz float %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !165  ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !169
  %i.x = mul i32 %i.w, 1103515245
  %i.y = insertelement <2 x float> %1, float %2, i64 1
  %i.z = insertelement <2 x float> poison, float %3, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul nsz <2 x float> %i.y, %i.aa
  %i.ac = insertelement <2 x float> %i.n, float %i.f, i64 0
  %i.ad = fadd nsz <2 x float> %i.ab, %i.ac
  %i.ae = add i32 %i.x, 12345                     ; 2 uses
  %i.af = mul i32 %i.ae, 1103515245
  %i.ag = add i32 %i.af, 12345                    ; 2 uses
  store i32 %i.ag, ptr %i.v, align 4, !tbaa !169
  %i.ah = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %i.ag, i64 1
  %i.aj = sdiv <2 x i32> %i.ai, splat (i32 65536)
  %i.ak = trunc nsw <2 x i32> %i.aj to <2 x i16>
  %i.al = and <2 x i16> %i.ak, splat (i16 32767)
  %i.am = urem <2 x i16> %i.al, splat (i16 21)
  %i.an = trunc nuw nsw <2 x i16> %i.am to <2 x i8>
  %i.ao = add nsw <2 x i8> %i.an, splat (i8 -10)
  %i.ap = sitofp <2 x i8> %i.ao to <2 x float>
  %i.aq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> splat (float 1.000000e-01), <2 x float> %i.ad) ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = fptosi float %i.ar to i16
  %i.at = fptosi float %i.t to i16
  %i.au = extractelement <2 x float> %i.aq, i64 1
  %i.av = fptosi float %i.au to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !171, !range !117, !noundef !118
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 79
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !172, !range !117, !noundef !118
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !175
  %.sroa.0111.0.insert.ext = zext i16 %i.bd to i32
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !159
  %i.bg = sitofp nsz i16 %i.k to float
  %i.bh = sitofp <2 x i16> %i.q to <2 x float>    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !157
  %i.bk = extractelement <2 x float> %i.bh, i64 0
  %i.bl = extractelement <2 x float> %i.bh, i64 1
  %i.bm = tail call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef %i.bf, float noundef %i.bg, float noundef %i.bk, float noundef %i.bl, i32 noundef %i.bj)
  %i.bn = fcmp nsz olt float %i.bm, 4.000000e-01
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !201
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !158
  %i.bt = add nsw i32 %i.bs, -256
  %i.bu = icmp sgt i32 %i.bt, %i.bq
  br i1 %i.bu, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bv = phi ptr [ %5, %bb.f ], [ %6, %bb.e ]
  %i.bw = load i32, ptr %i.bv, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.a
  %.sroa.0112.0 = phi i32 [ %.sroa.0111.0.insert.ext, %bb.c ], [ %i.bw, %bb.g ], [ 127, %bb.a ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !195 ; 2 uses
  %i.bz = sdiv i16 %i.by, -2                      ; 2 uses
  %i.ca = add i16 %i.bz, %i.by
  %i.cb = insertelement <2 x i16> poison, i16 %i.bz, i64 0
  %i.cc = insertelement <2 x i16> %i.cb, i16 %i.ca, i64 1 ; 2 uses
  br i1 %4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cd = load ptr, ptr %i.u, align 8, !tbaa !165 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !169
  %i.cf = mul i32 %i.ce, 1103515245
  %i.cg = add <2 x i16> %i.cc, splat (i16 -1)
  %i.ch = add i32 %i.cf, 12345                    ; 2 uses
  %i.ci = mul i32 %i.ch, 1103515245
  %i.cj = add i32 %i.ci, 12345                    ; 2 uses
  %i.ck = insertelement <2 x i32> poison, i32 %i.ch, i64 0
  %i.cl = insertelement <2 x i32> %i.ck, i32 %i.cj, i64 1
  %i.cm = sdiv <2 x i32> %i.cl, splat (i32 65536)
  %i.cn = trunc nsw <2 x i32> %i.cm to <2 x i16>
  %i.co = and <2 x i16> %i.cn, splat (i16 32767)
  %i.cp = urem <2 x i16> %i.co, splat (i16 3)
  store i32 %i.cj, ptr %i.cd, align 4, !tbaa !169
  %i.cq = add <2 x i16> %i.cg, %i.cp
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cr = phi <2 x i16> [ %i.cq, %bb.i ], [ %i.cc, %bb.h ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !167, !range !117, !noundef !118
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = load ptr, ptr %i.u, align 8, !tbaa !165 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !169
  %i.cx = mul i32 %i.cw, 1103515245
  %i.cy = add i32 %i.cx, 12345                    ; 2 uses
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !169
  %i.cz = sdiv i32 %i.cy, 65536
  %i.da = trunc nsw i32 %i.cz to i16
  %.lhs.trunc.i91 = and i16 %i.da, 32767
  %i.db = urem i16 %.lhs.trunc.i91, 3
  %i.dc = icmp eq i16 %i.db, 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dd = phi i1 [ false, %bb.j ], [ %i.dc, %bb.k ]
  %i.de = extractelement <2 x i16> %i.cr, i64 0   ; 2 uses
  %i.df = extractelement <2 x i16> %i.cr, i64 1   ; 2 uses
  %.not143 = icmp sgt i16 %i.de, %i.df
  br i1 %.not143, label %._crit_edge147, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dl = extractelement <2 x i16> %i.q, i64 0
  %i.dm = sext i16 %i.dl to i32
  %i.dn = add nsw i32 %i.dm, -4
  %.0..0..0..val79 = load i32, ptr %5, align 4
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !165 ; 3 uses
  %.pre151 = load i32, ptr %.pre, align 4, !tbaa !169
  br label %bb.m

._crit_edge147:                                   ; preds = %._crit_edge142, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void

bb.m:                                             ; preds = %.lr.ph146, %._crit_edge142
  %i.do = phi ptr [ %.pre, %.lr.ph146 ], [ %i.em, %._crit_edge142 ] ; 2 uses
  %i.dp = phi ptr [ %.pre, %.lr.ph146 ], [ %i.en, %._crit_edge142 ] ; 2 uses
  %i.dq = phi i32 [ %.pre151, %.lr.ph146 ], [ %i.eo, %._crit_edge142 ]
  %.060144 = phi i16 [ %i.de, %.lr.ph146 ], [ %i.ep, %._crit_edge142 ] ; 3 uses
  %i.dr = load i16, ptr %i.bx, align 4, !tbaa !195 ; 2 uses
  %i.ds = sdiv i16 %i.dr, 2
  %i.dt = tail call i16 @llvm.abs.i16(i16 %.060144, i1 false)
  %i.du = zext i16 %i.dt to i32                   ; 2 uses
  %.neg126 = sdiv i16 %i.dr, -7
  %.neg.sext = sext i16 %.neg126 to i32
  %i.dv = add nsw i32 %.neg.sext, %i.du
  %i.dw = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 1)
  %narrow = add nsw i16 %i.ds, 1
  %spec.select.neg168 = zext i16 %narrow to i32
  %i.dx = sub nsw i32 %spec.select.neg168, %i.dw  ; 2 uses
  %sext = shl i32 %i.dx, 16
  %i.dy = ashr exact i32 %sext, 16
  %i.dz = mul i32 %i.dq, 1103515245
  %i.ea = add i32 %i.dz, 12345                    ; 2 uses
  %i.eb = sdiv i32 %i.ea, 65536
  %.zext.i94 = and i32 %i.eb, 1
  %i.ec = add nsw i32 %.zext.i94, %i.dx
  %i.ed = trunc i32 %i.ec to i16
  %i.ee = sub i16 0, %i.ed                        ; 2 uses
  %i.ef = add nsw i32 %i.dy, -1                   ; 2 uses
  %i.eg = sext i16 %i.ee to i32                   ; 2 uses
  %i.eh = mul i32 %i.ea, 1103515245
  %i.ei = add i32 %i.eh, 12345                    ; 3 uses
  store i32 %i.ei, ptr %i.dp, align 4, !tbaa !169
  %i.ej = sdiv i32 %i.ei, 65536
  %.zext.i96137 = and i32 %i.ej, 1
  %i.ek = add nsw i32 %i.ef, %.zext.i96137
  %.not71138 = icmp slt i32 %i.ek, %i.eg
  br i1 %.not71138, label %._crit_edge142, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.m
  %i.el = add i16 %.060144, %i.av
  br label %bb.n

._crit_edge142:                                   ; preds = %._crit_edge, %bb.m
  %i.em = phi ptr [ %i.do, %bb.m ], [ %i.fe, %._crit_edge ]
  %i.en = phi ptr [ %i.dp, %bb.m ], [ %i.fe, %._crit_edge ]
  %i.eo = phi i32 [ %i.ei, %bb.m ], [ %i.fj, %._crit_edge ]
  %i.ep = add i16 %.060144, 1                     ; 2 uses
  %.not = icmp sgt i16 %i.ep, %i.df
  br i1 %.not, label %._crit_edge147, label %bb.m, !llvm.loop !202

bb.n:                                             ; preds = %.lr.ph141, %._crit_edge
  %i.eq = phi ptr [ %i.do, %.lr.ph141 ], [ %i.fe, %._crit_edge ]
  %i.er = phi i32 [ %i.eg, %.lr.ph141 ], [ %i.fg, %._crit_edge ]
  %.059139 = phi i16 [ %i.ee, %.lr.ph141 ], [ %i.ff, %._crit_edge ] ; 2 uses
  %i.es = tail call i32 @llvm.abs.i32(i32 %i.er, i1 true)
  %. = tail call i32 @llvm.umax.i32(i32 %i.es, i32 %i.du)
  %i.et = load i16, ptr %i.bx, align 4, !tbaa !195 ; 2 uses
  %i.eu = sdiv i16 %i.et, 2
  %sext72 = shl nuw i32 %., 16
  %i.ev = ashr exact i32 %sext72, 16
  %.neg73129 = sdiv i16 %i.et, -7
  %.neg73.sext = sext i16 %.neg73129 to i32
  %i.ew = add nsw i32 %i.ev, %.neg73.sext
  %i.ex = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 1)
  %narrow148 = add nsw i16 %i.eu, 1
  %.neg132169 = zext i16 %narrow148 to i32
  %i.ey = sub nsw i32 %.neg132169, %i.ex          ; 2 uses
  %sext74 = shl i32 %i.ey, 16
  %i.ez = ashr exact i32 %sext74, 16              ; 2 uses
  %i.fa = trunc i32 %i.ey to i16
  %i.fb = sub i16 0, %i.fa                        ; 2 uses
  %i.fc = sext i16 %i.fb to i32                   ; 2 uses
  %.not75135 = icmp slt i32 %i.ez, %i.fc
  br i1 %.not75135, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.fd = add i16 %.059139, %i.as
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread
  %.pre152 = load ptr, ptr %i.u, align 8, !tbaa !165
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %i.fe = phi ptr [ %.pre152, %._crit_edge.loopexit ], [ %i.eq, %bb.n ] ; 5 uses
  %i.ff = add i16 %.059139, 1                     ; 2 uses
  %i.fg = sext i16 %i.ff to i32                   ; 2 uses
  %i.fh = load i32, ptr %i.fe, align 4, !tbaa !169
  %i.fi = mul i32 %i.fh, 1103515245
  %i.fj = add i32 %i.fi, 12345                    ; 3 uses
  store i32 %i.fj, ptr %i.fe, align 4, !tbaa !169
  %i.fk = sdiv i32 %i.fj, 65536
  %.zext.i96 = and i32 %i.fk, 1
  %i.fl = add nsw i32 %i.ef, %.zext.i96
  %.not71 = icmp slt i32 %i.fl, %i.fg
  br i1 %.not71, label %._crit_edge142, label %bb.n, !llvm.loop !203

bb.o:                                             ; preds = %.lr.ph, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread
  %i.fm = phi i32 [ %i.fc, %.lr.ph ], [ %i.je, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread ]
  %.058136 = phi i16 [ %i.fb, %.lr.ph ], [ %i.jd, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread ] ; 3 uses
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fn = load i16, ptr %i.bx, align 4, !tbaa !195 ; 2 uses
  %i.fo = sdiv i16 %i.fn, -2
  %.not76 = icmp sge i16 %i.fo, %.058136
  %i.fp = icmp slt i16 %i.fn, 8
  %or.cond = and i1 %i.fp, %.not76
  br i1 %or.cond, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fq = load i8, ptr %i.dg, align 1, !tbaa !180, !range !117, !noundef !118
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fs = load i16, ptr %i.bx, align 4, !tbaa !195 ; 2 uses
  %i.ft = icmp sgt i16 %i.fs, 7
  br i1 %i.ft, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fu = tail call i32 @llvm.abs.i32(i32 %i.fm, i1 true)
  %i.fv = udiv i16 %i.fs, 3
  %i.fw = zext nneg i16 %i.fv to i32
  %.not77 = icmp samesign ult i32 %i.fu, %i.fw
  br i1 %.not77, label %bb.t, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %i.fx = add i16 %.058136, %i.at
  %i.fy = load i16, ptr %i.i, align 8, !tbaa !184
  %i.fz = add i16 %i.fd, %i.fy                    ; 3 uses
  %i.ga = load i16, ptr %i.l, align 2, !tbaa !182
  %i.gb = add i16 %i.fx, %i.ga                    ; 3 uses
  %i.gc = load i16, ptr %i.m, align 4, !tbaa !181
  %i.gd = add i16 %i.el, %i.gc                    ; 3 uses
  %i.ge = load ptr, ptr %0, align 8, !tbaa !164   ; 9 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load i16, ptr %i.gf, align 4, !tbaa !41 ; 2 uses
  %.not.i = icmp sgt i16 %i.gg, %i.fz
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 14
  %i.gi = load i16, ptr %i.gh, align 2
  %.not6.i = icmp slt i16 %i.gi, %i.fz
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not6.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 10
  %i.gk = load i16, ptr %i.gj, align 2            ; 2 uses
  %.not7.i = icmp sgt i16 %i.gk, %i.gb
  %or.cond12.i = select i1 %or.cond.i, i1 true, i1 %.not7.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gm = load i16, ptr %i.gl, align 4
  %.not8.i = icmp slt i16 %i.gm, %i.gb
  %or.cond14.i = select i1 %or.cond12.i, i1 true, i1 %.not8.i
  br i1 %or.cond14.i, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.go = load i16, ptr %i.gn, align 4, !tbaa !38 ; 2 uses
  %.not9.i = icmp slt i16 %i.gd, %i.go
  br i1 %.not9.i, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit: ; preds = %bb.u
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 18
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !204
  %.not130 = icmp sgt i16 %i.gd, %i.gq
  br i1 %.not130, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %i.gr = sext i16 %i.gd to i32
  %i.gs = sext i16 %i.go to i32
  %i.gt = sub nsw i32 %i.gr, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 20
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !39
  %i.gx = mul nsw i32 %i.gt, %i.gw
  %i.gy = load i32, ptr %i.gu, align 4, !tbaa !29
  %i.gz = sext i16 %i.gb to i32                   ; 3 uses
  %i.ha = sext i16 %i.gk to i32
  %i.hb = sub nsw i32 %i.gz, %i.ha
  %i.hc = add i32 %i.hb, %i.gx
  %i.hd = mul i32 %i.hc, %i.gy
  %i.he = sext i16 %i.fz to i32
  %i.hf = sext i16 %i.gg to i32
  %i.hg = sub nsw i32 %i.he, %i.hf
  %i.hh = add nsw i32 %i.hg, %i.hd
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !68
  %i.hk = zext i32 %i.hh to i64                   ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hk ; 5 uses
  %i.hm = load i16, ptr %i.hl, align 4, !tbaa !71
  %i.hn = load ptr, ptr %i.dh, align 8, !tbaa !150 ; 2 uses
  %i.ho = zext i16 %i.hm to i64                   ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !82
  %i.hr = load ptr, ptr %i.hn, align 8, !tbaa !85 ; 3 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = sdiv exact i64 %i.hu, 2072
  %i.hw = icmp ugt i64 %i.hv, %i.ho
  br i1 %i.hw, label %bb.w, label %bb.x

end_hunk_1
