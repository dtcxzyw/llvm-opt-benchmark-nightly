inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 47
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btMatrix3x3 = type { [3 x %class.btVector3] }
%class.btVector3 = type { [4 x float] }
%struct.btSpatialMotionVector = type { %class.btVector3, %class.btVector3 }
%struct.btSpatialForceVector = type { %class.btVector3, %class.btVector3 }
%struct.btSpatialTransformationMatrix = type { %class.btMatrix3x3, %class.btVector3 }
%struct.btSymmetricSpatialDyad = type { %class.btMatrix3x3, %class.btMatrix3x3, %class.btMatrix3x3 }
%class.btQuaternion = type { %class.btQuadWord }
%class.btQuadWord = type { [4 x float] }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }

$_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev = comdat any

$_ZN20btAlignedObjectArrayI9btVector3ED2Ev = comdat any

$_ZN20btAlignedObjectArrayIfED2Ev = comdat any

$_ZN20btAlignedObjectArrayI15btMultibodyLinkED2Ev = comdat any

$_ZN15btMultibodyLink19updateCacheMultiDofEPf = comdat any

$_ZN29btSpatialTransformationMatrix16transformInverseERK22btSymmetricSpatialDyadRS0_NS_16eOutputOperationE = comdat any

$_ZN15btMultibodyLink32updateInterpolationCacheMultiDofEv = comdat any

$__clang_call_terminate = comdat any

$_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf = comdat any

$_ZNK11btMatrix3x311getRotationER12btQuaternion = comdat any

@_ZTV11btMultiBody = dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI11btMultiBody, ptr @_ZN11btMultiBodyD2Ev, ptr @_ZN11btMultiBodyD0Ev, ptr @_ZNK11btMultiBody28calculateSerializeBufferSizeEv, ptr @_ZNK11btMultiBody9serializeEPvP12btSerializer] }, align 8
@gDisableDeactivation = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [25 x i8] c"btMultiBodyLinkFloatData\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"btMultiBodyFloatData\00", align 1
@_ZTI11btMultiBody = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS11btMultiBody }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS11btMultiBody = dso_local constant [14 x i8] c"11btMultiBody\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN11btMultiBodyC1EifRK9btVector3bbb = dso_local unnamed_addr alias void (ptr, i32, float, ptr, i1, i1, i1), ptr @_ZN11btMultiBodyC2EifRK9btVector3bbb
@_ZN11btMultiBodyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11btMultiBodyD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btMultiBody16spatialTransformERK11btMatrix3x3RK9btVector3S5_S5_RS3_S6_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !9    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load <4 x float>, ptr %i.d, align 4
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !9  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !9
  %i.l = load <2 x float>, ptr %0, align 4, !tbaa !9 ; 2 uses
  %i.m = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.n = insertelement <2 x float> poison, float %i.c, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <2 x float> %i.l, <2 x float> %i.m, <2 x i32> <i32 1, i32 3>
  %i.q = fmul <2 x float> %i.o, %i.p
  %i.r = shufflevector <2 x float> %i.l, <2 x float> %i.m, <2 x i32> <i32 0, i32 2>
  %i.s = insertelement <2 x float> poison, float %i.a, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.t, <2 x float> %i.q)
  %i.v = insertelement <2 x float> %i.f, float %i.k, i64 1
  %i.w = insertelement <2 x float> poison, float %i.h, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.x, <2 x float> %i.u) ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !9
  %i.ad = fmul float %i.c, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9
  store <2 x float> %i.y, ptr %4, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = extractelement <2 x float> %i.y, i64 0
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.a, float %i.ad)
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.h, float %i.aj) ; 3 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !11
  %i.al = load float, ptr %1, align 4, !tbaa !9
  %i.am = fneg float %i.ak
  %i.an = fneg float %i.ai
  %i.ao = load <2 x float>, ptr %0, align 4, !tbaa !9 ; 2 uses
  %i.ap = load <4 x float>, ptr %i.d, align 4
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ar = load float, ptr %i.ah, align 4, !tbaa !9 ; 2 uses
  %i.as = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.at = shufflevector <2 x float> %i.ao, <2 x float> %i.as, <2 x i32> <i32 1, i32 3>
  %i.au = shufflevector <2 x float> %i.ao, <2 x float> %i.as, <2 x i32> <i32 0, i32 2>
  %i.av = load float, ptr %i.j, align 4, !tbaa !9
  %i.aw = insertelement <2 x float> %i.aq, float %i.av, i64 1
  %i.ax = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = load <2 x float>, ptr %i.ag, align 4, !tbaa !9
  %i.ba = load <2 x float>, ptr %3, align 4, !tbaa !9 ; 4 uses
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul <2 x float> %i.bb, %i.at
  %i.bd = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.bd, <2 x float> %i.bc)
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.be)
  %i.bg = load <4 x float>, ptr %i.z, align 4     ; 2 uses
  %6 = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <4 x i32> <i32 0, i32 poison, i32 1, i32 3>
  %i.bh = insertelement <4 x float> %6, float %i.al, i64 1 ; 2 uses
  %i.bi = insertelement <4 x float> poison, float %i.an, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.am, i64 1
  %i.bk = fneg <2 x float> %i.y
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bm = shufflevector <4 x float> %i.bj, <4 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bo = fmul <4 x float> %i.bh, %i.bn
  %i.bp = shufflevector <4 x float> %i.bh, <4 x float> %i.bg, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  %i.bq = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.br = insertelement <4 x float> %i.bq, float %i.ak, i64 2
  %i.bs = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.br, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bt, <4 x float> %i.bo) ; 3 uses
  %i.bv = load float, ptr %i.ae, align 4, !tbaa !9
  %i.bw = extractelement <4 x float> %i.bu, i64 3
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.bv, float %i.ar, float %i.bw)
  %i.by = shufflevector <4 x float> %i.bu, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.bz = fsub <2 x float> %i.bf, %i.by
  %i.ca = extractelement <4 x float> %i.bu, i64 0
  %i.cb = fsub float %i.bx, %i.ca
  %.sroa.3.12.vec.insert.i27 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  store <2 x float> %i.bz, ptr %5, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i27, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBodyC2EifRK9btVector3bbb(ptr noundef nonnull align 8 dereferenceable(640) initializes((0, 108), (180, 188), (192, 201), (212, 220), (224, 233), (244, 252), (256, 265), (276, 284), (288, 297), (308, 316), (320, 329), (340, 348), (352, 361), (368, 565), (568, 580), (584, 613), (616, 626), (628, 640)) %0, i32 noundef %1, float noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 zeroext %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.15 = alloca [80 x i8], align 8           ; 6 uses
  %i.a = zext i1 %4 to i8
  %i.b = zext i1 %5 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV11btMultiBody, i64 16), ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.c, i8 0, i64 60, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.d, align 4, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %2, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i8 1, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  store ptr null, ptr %i.j, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 6 uses
  store i32 0, ptr %i.k, align 4, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.m, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.n, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 0, ptr %i.o, align 4, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 0, ptr %i.p, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 1, ptr %i.q, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr null, ptr %i.r, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 0, ptr %i.s, align 4, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 0, ptr %i.t, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 1, ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr null, ptr %i.v, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 0, ptr %i.w, align 4, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 0, ptr %i.x, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 1, ptr %i.y, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.z, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 0, ptr %i.aa, align 4, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.ab, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  store i8 1, ptr %i.ac, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 4 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  store i32 0, ptr %i.af, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 561
  store i8 %i.a, ptr %i.ah, align 1, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 562
  store i8 1, ptr %i.ai, align 2, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 563
  store i8 %i.b, ptr %i.aj, align 1, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 564
  store i8 1, ptr %i.ak, align 4, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 568
  store <2 x float> <float 0.000000e+00, float 5.000000e-02>, ptr %i.al, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 576
  store float 2.000000e+00, ptr %i.am, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr null, ptr %i.an, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 -1, ptr %i.ao, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 596
  store i32 -1, ptr %i.ap, align 4, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i32 -1, ptr %i.aq, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 604
  store <2 x float> splat (float 4.000000e-02), ptr %i.ar, align 4, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 612
  store i8 1, ptr %i.as, align 4, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 616
  store <2 x float> <float 1.000000e+03, float 1.000000e+02>, ptr %i.at, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 1, ptr %i.au, align 8, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 625
  store i8 0, ptr %i.av, align 1, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 628
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(193) %i.ag, i8 0, i64 193, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aw, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.15, i8 0, i64 64, i1 false)
  %.sroa.15.64.scevgep.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.64.scevgep.i.sroa_idx, i8 0, i64 16, i1 false)
  %i.ax = load i32, ptr %i.k, align 4, !tbaa !39  ; 3 uses
  %i.ay = icmp sgt i32 %1, %i.ax
  br i1 %i.ay, label %bb.b, label %.loopexit106

bb.b:                                             ; preds = %bb.a
  %i.az = load i32, ptr %i.l, align 8, !tbaa !40
  %i.ba = icmp slt i32 %i.az, %1
  br i1 %i.ba, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI15btMultibodyLinkE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = sext i32 %1 to i64
  %i.bc = mul nsw i64 %i.bb, 688
  %i.bd = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bc, i32 noundef 16)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.d
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !39
  br label %_ZN20btAlignedObjectArrayI15btMultibodyLinkE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI15btMultibodyLinkE8allocateEi.exit.i.i: ; preds = %.noexc, %bb.c
  %i.be = phi i32 [ %.pre.i, %.noexc ], [ %i.ax, %bb.c ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.bd, %.noexc ], [ null, %bb.c ] ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI15btMultibodyLinkE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI15btMultibodyLinkE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.be to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.e ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [688 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i ; 6 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw [688 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %i.bg, ptr noundef nonnull align 8 dereferenceable(688) %i.bi, i64 576, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 576
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 576
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 8 dereferenceable(64) %i.bk, i64 16, i1 false), !tbaa.struct !36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 592
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 592
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 608
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 624
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 624
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !36
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 640
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 640
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef nonnull align 8 dereferenceable(48) %i.bs, i64 48, i1 false)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK20btAlignedObjectArrayI15btMultibodyLinkE4copyEiiPS0_.exit.i.i, label %bb.e, !llvm.loop !65

_ZNK20btAlignedObjectArrayI15btMultibodyLinkE4copyEiiPS0_.exit.i.i: ; preds = %bb.e, %_ZN20btAlignedObjectArrayI15btMultibodyLinkE8allocateEi.exit.i.i
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !38  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11btMultiBody22addJointTorqueMultiDofEiPKf:bb.a
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.prol
  %i.u = load float, ptr %i.t, align 4, !tbaa !9
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.prol
  store float %i.u, ptr %i.v, align 4, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !128

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.w = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.z = load float, ptr %i.y, align 4, !tbaa !9
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store float %i.z, ptr %i.aa, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !9
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  store float %i.ac, ptr %i.ad, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.1
  store float %i.af, ptr %i.ag, align 4, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !9
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.2
  store float %i.ai, ptr %i.aj, align 4, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !129
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11btMultiBody12getLinkForceEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11btMultiBody13getLinkTorqueEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZNK11btMultiBody14getJointTorqueEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  %i.f = load float, ptr %i.e, align 8, !tbaa !9
  ret float %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @_ZN11btMultiBody22getJointTorqueMultiDofEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11btMultiBody12hasFixedBaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 561
  %i.b = load i8, ptr %i.a, align 1, !tbaa !53, !range !67, !noundef !68
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.g = load i32, ptr %i.f, align 8, !tbaa !131
  %i.h = trunc i32 %i.g to i1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.i = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11btMultiBody23isBaseStaticOrKinematicEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 561
  %i.b = load i8, ptr %i.a, align 1, !tbaa !53, !range !67, !noundef !68
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.g = load i32, ptr %i.f, align 8, !tbaa !131
  %i.h = and i32 %i.g, 3
  %i.i = icmp ne i32 %i.h, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11btMultiBody15isBaseKinematicEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131
  %i.e = and i32 %i.d, 2
  %i.f = icmp ne i32 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11btMultiBody18setBaseDynamicTypeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131
  %i.e = and i32 %i.d, -4
  %i.f = or i32 %i.e, %1
  store i32 %i.f, ptr %i.c, align 8, !tbaa !131
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr nofree noundef nonnull align 8 dereferenceable(640) initializes((638, 639)) %0, float noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [36 x float], align 16            ; 10 uses
  %i.b = alloca [6 x float], align 16             ; 4 uses
  %8 = alloca %struct.btSpatialMotionVector, align 8 ; 8 uses
  %i.c = alloca [6 x float], align 16             ; 7 uses
  %9 = alloca [6 x %struct.btSpatialForceVector], align 16 ; 16 uses
  %10 = alloca %struct.btSpatialTransformationMatrix, align 16 ; 48 uses
  %11 = alloca %struct.btSymmetricSpatialDyad, align 16 ; 30 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 638 ; 2 uses
  store i8 0, ptr %i.d, align 2, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.h = load <2 x float>, ptr %i.g, align 4, !tbaa !9 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.n = load float, ptr %i.k, align 4, !tbaa !9  ; 2 uses
  %i.o = load float, ptr %i.l, align 4, !tbaa !9  ; 2 uses
  %i.p = load float, ptr %i.m, align 4, !tbaa !9  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load float, ptr %i.j, align 4, !tbaa !9  ; 2 uses
  %i.t = load float, ptr %i.q, align 4, !tbaa !9  ; 2 uses
  %i.u = load float, ptr %i.r, align 4, !tbaa !9  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !96
  %i.x = shl nsw i32 %i.w, 1                      ; 2 uses
  %i.y = add nsw i32 %i.x, 7                      ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !43  ; 2 uses
  %i.ab = icmp sgt i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.b, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44
  %i.ae = icmp slt i32 %i.ad, %i.y
  br i1 %i.ae, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !42
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.af = sext i32 %i.y to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ag, i32 noundef 16) ; 9 uses
  %.pre.i = load i32, ptr %i.z, align 4, !tbaa !43 ; 3 uses
  %i.ai = icmp sgt i32 %.pre.i, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 9 uses
  br i1 %i.ai, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = ptrtoaddr ptr %i.ah to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i, 8
  %i.an = sub i64 %i.al, %i.am
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond1891 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1891, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x float>, ptr %i.ap, align 4, !tbaa !9
  %wide.load1817 = load <4 x float>, ptr %i.aq, align 4, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x float> %wide.load, ptr %i.ao, align 4, !tbaa !9
  store <4 x float> %wide.load1817, ptr %i.ar, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i.prol
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i.prol
  %i.av = load float, ptr %i.au, align 4, !tbaa !9
  store float %i.av, ptr %i.at, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !141

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.aw = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i
  %i.ba = load float, ptr %i.az, align 4, !tbaa !9
  store float %i.ba, ptr %i.ay, align 4, !tbaa !9
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !9
  store float %i.bd, ptr %i.bb, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i.1
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i.1
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !9
  store float %i.bg, ptr %i.be, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i.2
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i.2
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !9
  store float %i.bj, ptr %i.bh, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !142

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !41, !range !67, !noundef !68
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.d, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ak)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.bn, align 8, !tbaa !41
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !42
  store i32 %i.y, ptr %i.ac, align 8, !tbaa !44
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.bo = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %i.ah, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.bp = sext i32 %i.aa to i64                   ; 2 uses
  %i.bq = shl nsw i64 %i.bp, 2
  %scevgep = getelementptr i8, ptr %i.bo, i64 %i.bq
  %i.br = sext i32 %i.x to i64
  %i.bs = add nsw i64 %i.br, 7
  %i.bt = sub nsw i64 %i.bs, %i.bp
  %i.bu = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bu, i1 false), !tbaa !9
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i, %bb.a
  store i32 %i.y, ptr %i.z, align 4, !tbaa !43
  %i.bv = shl nsw i32 %i.f, 3
  %i.bw = or disjoint i32 %i.bv, 6                ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !47
  %i.bz = icmp sgt i32 %i.bw, %i.by
  br i1 %i.bz, label %bb.e, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !48
  %i.cc = icmp slt i32 %i.cb, %i.bw
  br i1 %i.cc, label %bb.f, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.cd = sext i32 %i.bw to i64
  %i.ce = shl nsw i64 %i.cd, 4
  %i.cf = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ce, i32 noundef 16) ; 4 uses
  %.pre.i438 = load i32, ptr %i.bx, align 4, !tbaa !47 ; 4 uses
  %i.cg = icmp sgt i32 %.pre.i438, 0
  br i1 %i.cg, label %.lr.ph.i.i.i440, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i440:                                  ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %wide.trip.count.i.i.i441 = zext nneg i32 %.pre.i438 to i64 ; 2 uses
  %xtraiter1942 = and i64 %wide.trip.count.i.i.i441, 1
  %i.ci = icmp eq i32 %.pre.i438, 1
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.i.i.i440.new

.lr.ph.i.i.i440.new:                              ; preds = %.lr.ph.i.i.i440
  %unroll_iter = and i64 %wide.trip.count.i.i.i441, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i440.new
  %indvars.iv.i.i.i442 = phi i64 [ 0, %.lr.ph.i.i.i440.new ], [ %indvars.iv.next.i.i.i443.1, %bb.g ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb:bb.a
  %i.ou = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ov = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.oy = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %10, i64 52
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 637
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 612
  %wide.trip.count1576 = zext nneg i32 %i.f to i64
  %. = select i1 %5, i64 432, i64 400
  %.1794 = select i1 %5, i64 436, i64 404
  %.1795 = select i1 %5, i64 440, i64 408
  %.1796 = select i1 %5, i64 448, i64 416
  br label %bb.v

.lr.ph.i624.lr.ph:                                ; preds = %bb.af
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.pj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.pl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.pm = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.pn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.pv = getelementptr inbounds nuw i8, ptr %11, i64 104
  %.sroa.4933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.sroa.5934.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.sroa.6935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.px = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.py = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.pz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.qa = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.qb = getelementptr inbounds nuw i8, ptr %10, i64 40
  %.sroa.42.0..sroa_idx.i659 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.qc = getelementptr inbounds nuw i8, ptr %10, i64 52
  %i.qd = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.qe = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.sroa.4.0..sroa_idx.i660 = getelementptr inbounds nuw i8, ptr %9, i64 56
  br label %.lr.ph.i624

bb.v:                                             ; preds = %.lr.ph1430, %bb.af
  %indvars.iv1573 = phi i64 [ 0, %.lr.ph1430 ], [ %indvars.iv.next1574, %bb.af ] ; 11 uses
  %i.qf = load ptr, ptr %i.oq, align 8, !tbaa !38
  %i.qg = getelementptr inbounds nuw [688 x i8], ptr %i.qf, i64 %indvars.iv1573 ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 20
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !84
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 336
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !9 ; 6 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 340
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !9 ; 5 uses
  %i.qn = fmul float %i.qm, %i.qm
  %i.qo = tail call float @llvm.fmuladd.f32(float %i.qk, float %i.qk, float %i.qn)
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qg, i64 344
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !9 ; 4 uses
  %i.qr = tail call float @llvm.fmuladd.f32(float %i.qq, float %i.qq, float %i.qo)
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qg, i64 348
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !9 ; 5 uses
  %i.qu = tail call noundef float @llvm.fmuladd.f32(float %i.qt, float %i.qt, float %i.qr)
  %i.qv = fdiv float 2.000000e+00, %i.qu          ; 3 uses
  %i.qw = fmul float %i.qk, %i.qv                 ; 2 uses
  %i.qx = fmul float %i.qm, %i.qv                 ; 3 uses
  %i.qy = fmul float %i.qq, %i.qv                 ; 4 uses
  %i.qz = fmul float %i.qt, %i.qw                 ; 2 uses
  %i.ra = fmul float %i.qt, %i.qx                 ; 2 uses
  %i.rb = fmul float %i.qt, %i.qy                 ; 2 uses
  %i.rc = fmul float %i.qk, %i.qw                 ; 2 uses
  %i.rd = fmul float %i.qk, %i.qx                 ; 2 uses
  %i.re = fmul float %i.qk, %i.qy                 ; 2 uses
  %i.rf = fmul float %i.qm, %i.qx                 ; 2 uses
  %i.rg = fmul float %i.qm, %i.qy                 ; 2 uses
  %i.rh = fmul float %i.qq, %i.qy                 ; 2 uses
  %i.ri = fadd float %i.rf, %i.rh
  %i.rj = fadd float %i.rc, %i.rh
  %i.rk = fadd float %i.rc, %i.rf
  %indvars.iv.next1574 = add nuw nsw i64 %indvars.iv1573, 1 ; 7 uses
  %i.rl = getelementptr inbounds nuw [48 x i8], ptr %i.et, i64 %indvars.iv.next1574 ; 13 uses
  %.sroa.41079.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %.sroa.51080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %.sroa.61081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  store float 0.000000e+00, ptr %.sroa.61081.0..sroa_idx, align 4, !tbaa !11
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16 ; 2 uses
  %.sroa.91083.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 20
  %.sroa.101084.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %.sroa.111085.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 28
  store float 0.000000e+00, ptr %.sroa.111085.16..sroa_idx, align 4, !tbaa !11
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 32 ; 2 uses
  %.sroa.141087.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 36
  %.sroa.151088.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 40
  %.sroa.161089.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 44
  store float 0.000000e+00, ptr %.sroa.161089.32..sroa_idx, align 4, !tbaa !11
  %i.ro = add nsw i32 %i.qi, 1
  %i.rp = sext i32 %i.ro to i64                   ; 2 uses
  %i.rq = getelementptr inbounds [48 x i8], ptr %i.eo, i64 %i.rp ; 9 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rq, i64 20
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 36
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rq, i64 40
  %i.rz = getelementptr inbounds nuw [48 x i8], ptr %i.eo, i64 %indvars.iv.next1574 ; 11 uses
  %.sroa.41067.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 4 ; 2 uses
  %.sroa.51068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %.scalar = fsub float 1.000000e+00, %i.ri       ; 2 uses
  %i.sa = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar, i64 0
  %i.sb = shufflevector <2 x float> %i.sa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar1892 = fsub float %i.rd, %i.rb          ; 2 uses
  %i.sc = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar1892, i64 0
  %i.sd = shufflevector <2 x float> %i.sc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar1893 = fadd float %i.re, %i.ra          ; 2 uses
  %i.se = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar1893, i64 0
  %i.sf = shufflevector <2 x float> %i.se, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store float %.scalar, ptr %i.rl, align 4
  store float %.scalar1892, ptr %.sroa.41079.0..sroa_idx, align 4
  store float %.scalar1893, ptr %.sroa.51080.0..sroa_idx, align 4
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rz, i64 16 ; 3 uses
  %.sroa.91071.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 20 ; 2 uses
  %.sroa.101072.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  %i.sh = fadd float %i.rd, %i.rb                 ; 2 uses
  %.scalar1894 = fsub float 1.000000e+00, %i.rj   ; 2 uses
  %i.si = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar1894, i64 0
  %i.sj = shufflevector <2 x float> %i.si, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sk = fsub float %i.rg, %i.qz                 ; 2 uses
  store float %i.sh, ptr %i.rm, align 4
  store float %.scalar1894, ptr %.sroa.91083.16..sroa_idx, align 4
  store float %i.sk, ptr %.sroa.101084.16..sroa_idx, align 4
  %i.sl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.sh, i64 0
  %i.sm = shufflevector <4 x float> %i.sl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sn = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.sk, i64 0
  %i.so = shufflevector <4 x float> %i.sn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rz, i64 32 ; 3 uses
  %.sroa.141075.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 36 ; 2 uses
  %.sroa.151076.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 40 ; 2 uses
  %.scalar1895 = fsub float %i.re, %i.ra          ; 2 uses
  %i.sq = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar1895, i64 0
  %i.sr = shufflevector <2 x float> %i.sq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar1896 = fadd float %i.rg, %i.qz          ; 2 uses
  %i.ss = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar1896, i64 0
  %i.st = shufflevector <2 x float> %i.ss, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar1897 = fsub float 1.000000e+00, %i.rk   ; 2 uses
  %i.su = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar1897, i64 0
  %i.sv = shufflevector <2 x float> %i.su, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store float %.scalar1895, ptr %i.rn, align 4
  store float %.scalar1896, ptr %.sroa.141087.32..sroa_idx, align 4
  store float %.scalar1897, ptr %.sroa.151088.32..sroa_idx, align 4
  %i.sw = load <2 x float>, ptr %i.rq, align 4, !tbaa !9, !noalias !143 ; 2 uses
  %i.sx = load <2 x float>, ptr %i.rr, align 4, !tbaa !9, !noalias !143 ; 2 uses
  %i.sy = load <2 x float>, ptr %i.rs, align 4, !tbaa !9, !noalias !143 ; 2 uses
  %i.sz = load <2 x float>, ptr %i.rt, align 4, !tbaa !9, !noalias !143 ; 2 uses
  %i.ta = load float, ptr %i.rw, align 4, !tbaa !9, !noalias !143
  %i.tb = load <2 x float>, ptr %i.ru, align 4, !tbaa !9, !noalias !143 ; 2 uses
  %i.tc = load float, ptr %i.rx, align 4, !tbaa !9, !noalias !143
  %i.td = shufflevector <2 x float> %i.sx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.te = insertelement <4 x float> %i.td, float 0.000000e+00, i64 3
  %i.tf = shufflevector <2 x float> %i.tb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.tg = shufflevector <4 x float> %i.te, <4 x float> %i.tf, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.th = fmul <4 x float> %i.tg, %i.sd
  %i.ti = shufflevector <2 x float> %i.sw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tj = insertelement <4 x float> %i.ti, float 0.000000e+00, i64 3
  %i.tk = shufflevector <2 x float> %i.sz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.tl = shufflevector <4 x float> %i.tj, <4 x float> %i.tk, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.tm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tl, <4 x float> %i.sb, <4 x float> %i.th)
  %i.tn = load <2 x float>, ptr %i.rv, align 4, !tbaa !9, !noalias !143 ; 2 uses
  %i.to = load float, ptr %i.ry, align 4, !tbaa !9, !noalias !143
  %i.tp = shufflevector <2 x float> %i.sy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tq = insertelement <4 x float> %i.tp, float 0.000000e+00, i64 3
  %i.tr = shufflevector <2 x float> %i.tn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ts = shufflevector <4 x float> %i.tq, <4 x float> %i.tr, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.tt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ts, <4 x float> %i.sf, <4 x float> %i.tm)
  %i.tu = shufflevector <2 x float> %i.sx, <2 x float> %i.tb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.tv = insertelement <4 x float> %i.tu, float 0.000000e+00, i64 3 ; 2 uses
  %i.tw = fmul <4 x float> %i.tv, %i.sj
  %i.tx = shufflevector <2 x float> %i.sw, <2 x float> %i.sz, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ty = insertelement <4 x float> %i.tx, float 0.000000e+00, i64 3 ; 2 uses
  %i.tz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ty, <4 x float> %i.sm, <4 x float> %i.tw)
  %i.ua = shufflevector <2 x float> %i.sy, <2 x float> %i.tn, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ub = insertelement <4 x float> %i.ua, float 0.000000e+00, i64 3 ; 2 uses
  %i.uc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ub, <4 x float> %i.so, <4 x float> %i.tz)
  %i.ud = insertelement <4 x float> %i.tv, float %i.tc, i64 2
  %i.ue = fmul <4 x float> %i.ud, %i.st
  %i.uf = insertelement <4 x float> %i.ty, float %i.ta, i64 2
  %i.ug = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uf, <4 x float> %i.sr, <4 x float> %i.ue)
  %i.uh = insertelement <4 x float> %i.ub, float %i.to, i64 2
  %i.ui = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uh, <4 x float> %i.sv, <4 x float> %i.ug)
  store <4 x float> %i.tt, ptr %i.rz, align 4
  store <4 x float> %i.uc, ptr %i.sg, align 4
  store <4 x float> %i.ui, ptr %i.sp, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(48) %i.rl, i64 16, i1 false), !tbaa.struct !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.or, ptr noundef nonnull align 4 dereferenceable(16) %i.rm, i64 16, i1 false), !tbaa.struct !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.os, ptr noundef nonnull align 4 dereferenceable(16) %i.rn, i64 16, i1 false), !tbaa.struct !36
  %i.uj = load ptr, ptr %i.oq, align 8, !tbaa !38
  %i.uk = getelementptr inbounds nuw [688 x i8], ptr %i.uj, i64 %indvars.iv1573
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ot, ptr noundef nonnull align 8 dereferenceable(16) %i.ul, i64 16, i1 false), !tbaa.struct !36
  %i.um = load <2 x float>, ptr %i.rz, align 4    ; 4 uses
  %i.un = load <2 x float>, ptr %i.sg, align 4    ; 5 uses
  %i.uo = load <2 x float>, ptr %i.sp, align 4    ; 3 uses
  %i.up = getelementptr inbounds [32 x i8], ptr %i.ef, i64 %i.rp ; 6 uses
  %i.uq = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %indvars.iv.next1574 ; 12 uses
  %i.ur = load float, ptr %i.up, align 4, !tbaa !9 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.up, i64 4
  %i.ut = load float, ptr %i.us, align 4, !tbaa !9 ; 2 uses
  %i.uu = load float, ptr %i.ov, align 8, !tbaa !9
  %i.uv = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !9 ; 2 uses
  %i.ux = load <4 x float>, ptr %i.ow, align 8
  %i.uy = shufflevector <4 x float> %i.ux, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.uz = load float, ptr %i.oy, align 8, !tbaa !9
  %.sroa.201212.0.copyload = load float, ptr %.sroa.51068.0..sroa_idx, align 4 ; 3 uses
  %.sroa.121202.0.copyload = load float, ptr %.sroa.41067.0..sroa_idx, align 4 ; 2 uses
  %i.va = load <2 x float>, ptr %.sroa.91071.16..sroa_idx, align 4 ; 4 uses
  %.sroa.461242.16.copyload = load float, ptr %.sroa.101072.16..sroa_idx, align 4 ; 2 uses
  %i.vb = load <2 x float>, ptr %.sroa.141075.32..sroa_idx, align 4 ; 4 uses
  %.sroa.72.32.copyload = load float, ptr %.sroa.151076.32..sroa_idx, align 4 ; 2 uses
  %i.vc = load float, ptr %i.ou, align 4, !tbaa !9
  %i.vd = load float, ptr %10, align 16, !tbaa !9
  %i.ve = load <2 x float>, ptr %i.or, align 16, !tbaa !9 ; 2 uses
  %i.vf = load <2 x float>, ptr %i.os, align 16, !tbaa !9 ; 2 uses
  %i.vg = insertelement <2 x float> poison, float %i.ut, i64 0
  %i.vh = shufflevector <2 x float> %i.vg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vi = shufflevector <2 x float> %i.ve, <2 x float> %i.vf, <2 x i32> <i32 1, i32 3>
  %i.vj = fmul <2 x float> %i.vh, %i.vi
  %i.vk = fmul float %i.vc, %i.ut
  %i.vl = shufflevector <2 x float> %i.ve, <2 x float> %i.vf, <2 x i32> <i32 0, i32 2>
  %i.vm = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.vn = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vl, <2 x float> %i.vn, <2 x float> %i.vj)
  %i.vp = insertelement <2 x float> %i.uy, float %i.uz, i64 1
  %i.vq = insertelement <2 x float> poison, float %i.uw, i64 0
  %i.vr = shufflevector <2 x float> %i.vq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vp, <2 x float> %i.vr, <2 x float> %i.vo) ; 6 uses
  %i.vt = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.vs, <2 x i32> <i32 3, i32 1>
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uq, i64 8 ; 3 uses
  store <2 x float> %i.vt, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !11
  %i.vu = extractelement <2 x float> %i.vs, i64 0
  %i.vv = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !9 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.up, i64 20
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !9 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !9 ; 2 uses
  %i.wb = tail call float @llvm.fmuladd.f32(float %i.vd, float %i.ur, float %i.vk)
  %i.wc = tail call noundef float @llvm.fmuladd.f32(float %i.uu, float %i.uw, float %i.wb) ; 4 uses
  %.sroa.0.0.vec.insert.i.i529 = insertelement <2 x float> poison, float %i.wc, i64 0
  %i.wd = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i529, <2 x float> %i.vs, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.wd, ptr %i.uq, align 4
  %i.we = load <2 x float>, ptr %i.oz, align 4, !tbaa !9 ; 3 uses
  %i.wf = load float, ptr %i.ot, align 16, !tbaa !9 ; 2 uses
  %i.wg = fneg <2 x float> %i.vs
  %i.wh = shufflevector <2 x float> %i.we, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wi = insertelement <2 x float> %i.wh, float %i.wf, i64 1
  %i.wj = fmul <2 x float> %i.wi, %i.wg
  %i.wk = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wl = insertelement <2 x float> %i.wk, float %i.wc, i64 1
  %i.wm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.we, <2 x float> %i.wl, <2 x float> %i.wj)
  %i.wn = fneg float %i.wc
  %i.wo = extractelement <2 x float> %i.we, i64 0
  %i.wp = fmul float %i.wo, %i.wn
  %i.wq = tail call float @llvm.fmuladd.f32(float %i.wf, float %i.vu, float %i.wp)
  %i.wr = load <2 x float>, ptr %10, align 16, !tbaa !9 ; 2 uses
  %i.ws = load <4 x float>, ptr %i.ov, align 8
  %i.wt = shufflevector <4 x float> %i.ws, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.wu = load <2 x float>, ptr %i.or, align 16, !tbaa !9 ; 2 uses
  %i.wv = insertelement <2 x float> poison, float %i.vy, i64 0
  %i.ww = shufflevector <2 x float> %i.wv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wx = shufflevector <2 x float> %i.wr, <2 x float> %i.wu, <2 x i32> <i32 1, i32 3>
  %i.wy = fmul <2 x float> %i.ww, %i.wx
  %i.wz = shufflevector <2 x float> %i.wr, <2 x float> %i.wu, <2 x i32> <i32 0, i32 2>
  %i.xa = insertelement <2 x float> poison, float %i.vw, i64 0
  %i.xb = shufflevector <2 x float> %i.xa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wz, <2 x float> %i.xb, <2 x float> %i.wy)
  %i.xd = load float, ptr %i.ow, align 8, !tbaa !9
  %i.xe = insertelement <2 x float> %i.wt, float %i.xd, i64 1
  %i.xf = insertelement <2 x float> poison, float %i.wa, i64 0
  %i.xg = shufflevector <2 x float> %i.xf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xe, <2 x float> %i.xg, <2 x float> %i.xc)
  %i.xi = load float, ptr %i.os, align 16, !tbaa !9
  %i.xj = load float, ptr %i.ox, align 4, !tbaa !9
  %i.xk = fmul float %i.vy, %i.xj
  %i.xl = tail call float @llvm.fmuladd.f32(float %i.xi, float %i.vw, float %i.xk)
  %i.xm = load float, ptr %i.oy, align 8, !tbaa !9
  %i.xn = tail call noundef float @llvm.fmuladd.f32(float %i.xm, float %i.wa, float %i.xl)
  %i.xo = fsub <2 x float> %i.xh, %i.wm           ; 2 uses
  %i.xp = fsub float %i.xn, %i.wq                 ; 2 uses
  %.sroa.3.12.vec.insert.i37.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xp, i64 0
  %i.xq = getelementptr inbounds nuw i8, ptr %i.uq, i64 16 ; 5 uses
  store <2 x float> %i.xo, ptr %i.xq, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uq, i64 24 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i37.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !11
  %i.xr = load i8, ptr %i.pa, align 1, !tbaa !146, !range !67, !noundef !68
  %i.xs = trunc nuw i8 %i.xr to i1
  %i.xt = load ptr, ptr %i.oq, align 8, !tbaa !38
  %i.xu = getelementptr inbounds nuw [688 x i8], ptr %i.xt, i64 %indvars.iv1573 ; 9 uses
  br i1 %i.xs, label %bb.x, label %.preheader1412

.preheader1412:                                   ; preds = %bb.v
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 556
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !86 ; 2 uses
  %i.xx = icmp sgt i32 %i.xw, 0
  br i1 %i.xx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader1412
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xu, i64 136
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xu, i64 328
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !110
  %i.yb = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.yc = sext i32 %i.ya to i64
  %i.yd = getelementptr [4 x i8], ptr %i.yb, i64 %i.yc
  %i.ye = getelementptr i8, ptr %i.yd, i64 24
  %wide.trip.count = zext nneg i32 %i.xw to i64
  br label %bb.w

._crit_edge:                                      ; preds = %bb.w, %.preheader1412
  %.sroa.01283.1.lcssa = phi <2 x float> [ zeroinitializer, %.preheader1412 ], [ %i.zg, %bb.w ] ; 3 uses
  %.sroa.24.1.lcssa = phi <2 x float> [ zeroinitializer, %.preheader1412 ], [ %.sroa.24.8.vec.insert, %bb.w ] ; 2 uses
  %.sroa.341333.1.lcssa = phi <2 x float> [ zeroinitializer, %.preheader1412 ], [ %i.zk, %bb.w ] ; 3 uses
  %.sroa.511362.1.lcssa = phi <2 x float> [ zeroinitializer, %.preheader1412 ], [ %.sroa.511362.24.vec.insert, %bb.w ]
  %i.yf = shufflevector <2 x float> %.sroa.24.1.lcssa, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.01283.0.vec.extract = extractelement <2 x float> %.sroa.01283.1.lcssa, i64 0
  %i.yg = getelementptr inbounds nuw i8, ptr %i.uq, i64 4
  %i.yh = fadd float %.sroa.01283.0.vec.extract, %i.wc ; 2 uses
  store float %i.yh, ptr %i.uq, align 4, !tbaa !9
  %i.yi = shufflevector <2 x float> %.sroa.01283.1.lcssa, <2 x float> %.sroa.24.1.lcssa, <2 x i32> <i32 1, i32 2>
  %i.yj = fadd <2 x float> %i.yi, %i.vs           ; 4 uses
  %.sroa.341333.20.vec.extract = extractelement <2 x float> %.sroa.341333.1.lcssa, i64 1
  %.sroa.511362.24.vec.extract = extractelement <2 x float> %.sroa.511362.1.lcssa, i64 0 ; 2 uses
  %i.yk = extractelement <2 x float> %i.yj, i64 1
  %i.yl = extractelement <2 x float> %i.yj, i64 0
  store <2 x float> %i.yj, ptr %i.yg, align 4, !tbaa !9
  %i.ym = fadd <2 x float> %.sroa.341333.1.lcssa, %i.xo ; 3 uses
  store <2 x float> %i.ym, ptr %i.xq, align 4, !tbaa !9
  %i.yn = fadd float %.sroa.511362.24.vec.extract, %i.xp ; 2 uses
  store float %i.yn, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !9
  %i.yo = shufflevector <2 x float> %.sroa.341333.1.lcssa, <2 x float> %.sroa.01283.1.lcssa, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.yp = shufflevector <4 x float> %i.yo, <4 x float> %i.yf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.yq = extractelement <2 x float> %i.ym, i64 0
  %i.yr = extractelement <2 x float> %i.ym, i64 1
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %.sroa.511362.11423 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.511362.24.vec.insert, %bb.w ] ; 2 uses
  %.sroa.341333.11422 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.zk, %bb.w ]
  %.sroa.24.11421 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.24.8.vec.insert, %bb.w ] ; 2 uses
  %.sroa.01283.11420 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.zg, %bb.w ]
  %i.ys = getelementptr inbounds nuw [32 x i8], ptr %i.xy, i64 %indvars.iv ; 4 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !9, !noalias !147 ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !9, !noalias !147
  %i.yx = fmul float %i.yu, %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ys, i64 24
  %i.za = load float, ptr %i.yz, align 4, !tbaa !9, !noalias !147
  %i.zb = fmul float %i.yu, %i.za
  %i.zc = load <2 x float>, ptr %i.ys, align 4, !tbaa !9, !noalias !147
  %i.zd = insertelement <2 x float> poison, float %i.yu, i64 0
  %i.ze = shufflevector <2 x float> %i.zd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zf = fmul <2 x float> %i.ze, %i.zc
  %i.zg = fadd <2 x float> %.sroa.01283.11420, %i.zf ; 2 uses
  %.sroa.24.8.vec.extract1319 = extractelement <2 x float> %.sroa.24.11421, i64 0
  %i.zh = fadd float %.sroa.24.8.vec.extract1319, %i.yx
  %.sroa.24.8.vec.insert = insertelement <2 x float> %.sroa.24.11421, float %i.zh, i64 0 ; 2 uses
  %i.zi = load <2 x float>, ptr %i.yy, align 4, !tbaa !9, !noalias !147
  %i.zj = fmul <2 x float> %i.ze, %i.zi
  %i.zk = fadd <2 x float> %.sroa.341333.11422, %i.zj ; 2 uses
  %.sroa.511362.24.vec.extract1366 = extractelement <2 x float> %.sroa.511362.11423, i64 0
  %i.zl = fadd float %.sroa.511362.24.vec.extract1366, %i.zb
  %.sroa.511362.24.vec.insert = insertelement <2 x float> %.sroa.511362.11423, float %i.zl, i64 0 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.w, !llvm.loop !150

bb.x:                                             ; preds = %bb.v
  %i.zm = getelementptr inbounds nuw i8, ptr %i.xu, i64 72
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !9 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.xu, i64 76
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !9 ; 2 uses
  %i.zq = extractelement <2 x float> %i.um, i64 0
  %i.zr = getelementptr inbounds nuw i8, ptr %i.xu, i64 80
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !9 ; 2 uses
  %i.zt = extractelement <2 x float> %i.un, i64 0
  %i.zu = extractelement <2 x float> %i.uo, i64 0 ; 2 uses
  %i.zv = shufflevector <2 x float> %i.va, <2 x float> %i.vb, <2 x i32> <i32 0, i32 2>
  %i.zw = insertelement <2 x float> poison, float %i.zp, i64 0
  %i.zx = shufflevector <2 x float> %i.zw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zy = fmul <2 x float> %i.zv, %i.zx
  %i.zz = fmul float %.sroa.121202.0.copyload, %i.zp
  %i.aaa = shufflevector <2 x float> %i.un, <2 x float> %i.uo, <2 x i32> <i32 0, i32 2>
  %i.aab = insertelement <2 x float> poison, float %i.zn, i64 0
  %i.aac = shufflevector <2 x float> %i.aab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaa, <2 x float> %i.aac, <2 x float> %i.zy)
  %i.aae = tail call float @llvm.fmuladd.f32(float %i.zq, float %i.zn, float %i.zz)
  %i.aaf = shufflevector <2 x float> %i.va, <2 x float> %i.vb, <2 x i32> <i32 1, i32 3>
  %i.aag = insertelement <2 x float> poison, float %i.zs, i64 0
  %i.aah = shufflevector <2 x float> %i.aag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaf, <2 x float> %i.aah, <2 x float> %i.aad) ; 5 uses
  %i.aaj = tail call noundef float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload, float %i.zs, float %i.aae) ; 2 uses
  %.sroa.0.0.vec.insert.i.i533 = insertelement <2 x float> poison, float %i.aaj, i64 0
  %i.aak = getelementptr inbounds nuw i8, ptr %i.xu, i64 88
  %i.aal = getelementptr inbounds nuw i8, ptr %i.xu, i64 92
  %i.aam = getelementptr inbounds nuw i8, ptr %i.xu, i64 96
  %i.aan = extractelement <2 x float> %i.va, i64 0 ; 2 uses
  %i.aao = extractelement <2 x float> %i.vb, i64 0 ; 2 uses
  %i.aap = extractelement <2 x float> %i.aai, i64 1
  %i.aaq = extractelement <2 x float> %i.aai, i64 0
  %.sroa.0.4.vec.insert.i.i534 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i533, <2 x float> %i.aai, <2 x i32> <i32 0, i32 2>
  %.sroa.3.12.vec.insert.i.i535 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.aai, <2 x i32> <i32 3, i32 1>
  store <2 x float> %.sroa.0.4.vec.insert.i.i534, ptr %i.uq, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i535, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !11
  %i.aar = load float, ptr %i.aak, align 4, !tbaa !9 ; 2 uses
  %i.aas = load float, ptr %i.aal, align 4, !tbaa !9 ; 3 uses
  %i.aat = load float, ptr %i.aam, align 4, !tbaa !9 ; 2 uses
  %i.aau = fmul float %i.aan, %i.aas
  %i.aav = fmul float %.sroa.121202.0.copyload, %i.aas
  %i.aaw = shufflevector <2 x float> %i.um, <2 x float> %i.un, <2 x i32> <i32 0, i32 2>
  %i.aax = insertelement <2 x float> poison, float %i.aar, i64 0
  %i.aay = shufflevector <2 x float> %i.aax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaz = insertelement <2 x float> poison, float %i.aav, i64 0
  %i.aba = insertelement <2 x float> %i.aaz, float %i.aau, i64 1
  %i.abb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaw, <2 x float> %i.aay, <2 x float> %i.aba)
  %i.abc = insertelement <2 x float> poison, float %.sroa.201212.0.copyload, i64 0
  %i.abd = insertelement <2 x float> %i.abc, float %.sroa.461242.16.copyload, i64 1
  %i.abe = insertelement <2 x float> poison, float %i.aat, i64 0
  %i.abf = shufflevector <2 x float> %i.abe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abd, <2 x float> %i.abf, <2 x float> %i.abb) ; 3 uses
  %i.abh = fmul float %i.aao, %i.aas
  %i.abi = tail call float @llvm.fmuladd.f32(float %i.zu, float %i.aar, float %i.abh)
  %i.abj = tail call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload, float %i.aat, float %i.abi) ; 2 uses
  %.sroa.3.12.vec.insert.i19.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.abj, i64 0
  store <2 x float> %i.abg, ptr %i.xq, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i19.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !11
  %i.abk = load ptr, ptr %i.oq, align 8, !tbaa !38
  %i.abl = getelementptr inbounds nuw [688 x i8], ptr %i.abk, i64 %indvars.iv1573 ; 5 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 104
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abl, i64 112
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !9
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abl, i64 120
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abl, i64 124
  %i.abr = load <2 x float>, ptr %i.abm, align 4, !tbaa !9 ; 2 uses
  %i.abs = load <2 x float>, ptr %i.abp, align 4, !tbaa !9 ; 3 uses
  %i.abt = load float, ptr %i.abq, align 4, !tbaa !9 ; 2 uses
  %i.abu = shufflevector <2 x float> %i.um, <2 x float> %i.un, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.abv = shufflevector <2 x float> %i.uo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abw = shufflevector <4 x float> %i.abu, <4 x float> %i.abv, <4 x i32> <i32 0, i32 0, i32 1, i32 5>
  %i.abx = shufflevector <2 x float> %i.abs, <2 x float> %i.abr, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.aby = fmul <4 x float> %i.abw, %i.abx
  %i.abz = shufflevector <2 x float> %i.um, <2 x float> %i.un, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aca = shufflevector <4 x float> %i.abz, <4 x float> %i.abv, <4 x i32> <i32 0, i32 0, i32 1, i32 4>
  %i.acb = shufflevector <2 x float> %i.abs, <2 x float> %i.abr, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.acc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aca, <4 x float> %i.acb, <4 x float> %i.aby)
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abl, i64 128
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !9 ; 3 uses
  %i.acf = shufflevector <2 x float> %i.va, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.acg = insertelement <4 x float> %i.acf, float %.sroa.201212.0.copyload, i64 0
  %i.ach = shufflevector <2 x float> %i.vb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aci = shufflevector <4 x float> %i.acg, <4 x float> %i.ach, <4 x i32> <i32 0, i32 0, i32 1, i32 5>
  %i.acj = insertelement <4 x float> poison, float %i.abo, i64 0
  %i.ack = insertelement <4 x float> %i.acj, float %i.ace, i64 1
  %i.acl = shufflevector <4 x float> %i.ack, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.acm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aci, <4 x float> %i.acl, <4 x float> %i.acc)
  %i.acn = fmul float %i.aan, %i.abt
  %i.aco = extractelement <2 x float> %i.abs, i64 0 ; 2 uses
  %i.acp = tail call float @llvm.fmuladd.f32(float %i.zt, float %i.aco, float %i.acn)
  %i.acq = tail call noundef float @llvm.fmuladd.f32(float %.sroa.461242.16.copyload, float %i.ace, float %i.acp)
  %i.acr = fmul float %i.aao, %i.abt
  %i.acs = tail call float @llvm.fmuladd.f32(float %i.zu, float %i.aco, float %i.acr)
  %i.act = tail call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload, float %i.ace, float %i.acs)
  %i.acu = extractelement <2 x float> %i.abg, i64 0
  %i.acv = extractelement <2 x float> %i.abg, i64 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %.sroa.341333.20.vec.extract1353.pre-phi = phi float [ %i.acq, %bb.x ], [ %.sroa.341333.20.vec.extract, %._crit_edge ] ; 2 uses
  %.sroa.511362.24.vec.extract1369.pre-phi = phi float [ %i.act, %bb.x ], [ %.sroa.511362.24.vec.extract, %._crit_edge ] ; 2 uses
  %i.acw = phi float [ %i.acu, %bb.x ], [ %i.yq, %._crit_edge ]
  %i.acx = phi float [ %i.abj, %bb.x ], [ %i.yn, %._crit_edge ]
end_hunk_2
begin_hunk_3_@_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb:bb.a
  %i.ahp = fmul <2 x float> %i.ahl, %i.aho
  %i.ahq = load float, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !9
  %i.ahr = load float, ptr %i.ahj, align 8, !tbaa !78
  %i.ahs = load <2 x float>, ptr %i.xq, align 4, !tbaa !9 ; 3 uses
  %i.aht = insertelement <2 x float> poison, float %i.ahr, i64 0 ; 2 uses
  %i.ahu = shufflevector <2 x float> %i.aht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahv = fmul <2 x float> %i.ahu, %i.ahs
  %i.ahw = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !9
  %i.ahx = insertelement <2 x float> %i.aht, float %i.ahn, i64 1
  %i.ahy = insertelement <2 x float> poison, float %i.ahw, i64 0
  %i.ahz = insertelement <2 x float> %i.ahy, float %i.ahq, i64 1 ; 3 uses
  %i.aia = fmul <2 x float> %i.ahx, %i.ahz
  %i.aib = shufflevector <2 x float> %i.ahs, <2 x float> %i.aho, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aic = fmul <2 x float> %i.aib, %i.aib
  %i.aid = shufflevector <2 x float> %i.ahs, <2 x float> %i.aho, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aie = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aid, <2 x float> %i.aid, <2 x float> %i.aic)
  %i.aif = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahz, <2 x float> %i.ahz, <2 x float> %i.aie) ; 2 uses
  %i.aig = fcmp ogt <2 x float> %i.aif, splat (float f0x34000000)
  %i.aih = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.aif)
  %i.aii = select <2 x i1> %i.aig, <2 x float> %i.aih, <2 x float> zeroinitializer
  %i.aij = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.aii, <2 x float> %i.h) ; 3 uses
  %i.aik = shufflevector <2 x float> %i.aij, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ail = fmul <2 x float> %i.ahp, %i.aik
  %i.aim = shufflevector <2 x float> %i.aij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ain = fmul <2 x float> %i.ahv, %i.aim
  %i.aio = fmul <2 x float> %i.aia, %i.aij
  %i.aip = fsub <2 x float> %i.ain, %i.agj        ; 2 uses
  store <2 x float> %i.aip, ptr %i.afm, align 4, !tbaa !9
  %i.aiq = fsub <2 x float> %i.aio, %i.agy        ; 2 uses
  %i.air = extractelement <2 x float> %i.aiq, i64 0 ; 2 uses
  store float %i.air, ptr %.sroa.41049.0..sroa_idx, align 4, !tbaa !9
  %i.ais = fsub <2 x float> %i.ail, %i.ahg        ; 2 uses
  store <2 x float> %i.ais, ptr %i.afq, align 4, !tbaa !9
  %i.ait = extractelement <2 x float> %i.aiq, i64 1 ; 2 uses
  store float %i.ait, ptr %.sroa.41053.0..sroa_idx, align 4, !tbaa !9
  %i.aiu = load i8, ptr %i.pc, align 4, !tbaa !62, !range !67, !noundef !68
  %i.aiv = trunc nuw i8 %i.aiu to i1
  br i1 %i.aiv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  %i.aix = load float, ptr %i.ahk, align 4, !tbaa !9
  %i.aiy = load float, ptr %i.uq, align 4, !tbaa !9 ; 2 uses
  %i.aiz = load <2 x float>, ptr %i.aiw, align 8, !tbaa !9 ; 2 uses
  %i.aja = load <2 x float>, ptr %i.adf, align 4, !tbaa !9 ; 4 uses
  %i.ajb = shufflevector <2 x float> %i.aiz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ajc = insertelement <2 x float> %i.ajb, float %i.aix, i64 1
  %i.ajd = shufflevector <2 x float> %i.aja, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aje = insertelement <2 x float> %i.ajd, float %i.aiy, i64 1 ; 2 uses
  %i.ajf = fmul <2 x float> %i.ajc, %i.aje        ; 2 uses
  %i.ajg = fmul <2 x float> %i.aiz, %i.aja        ; 2 uses
  %i.ajh = fneg <2 x float> %i.ajg
  %i.aji = fmul <2 x float> %i.aje, %i.ajh
  %i.ajj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aja, <2 x float> %i.ajf, <2 x float> %i.aji)
  %i.ajk = extractelement <2 x float> %i.ajf, i64 1
  %i.ajl = fneg float %i.ajk
  %i.ajm = extractelement <2 x float> %i.aja, i64 0
  %i.ajn = fmul float %i.ajm, %i.ajl
  %i.ajo = extractelement <2 x float> %i.ajg, i64 0
  %i.ajp = tail call float @llvm.fmuladd.f32(float %i.aiy, float %i.ajo, float %i.ajn)
  %i.ajq = fadd <2 x float> %i.ais, %i.ajj
  store <2 x float> %i.ajq, ptr %i.afq, align 4, !tbaa !9
  %i.ajr = fadd float %i.ait, %i.ajp
  store float %i.ajr, ptr %.sroa.41053.0..sroa_idx, align 4, !tbaa !9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread
  br i1 %5, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ajs = load float, ptr %i.xq, align 4, !tbaa !9 ; 2 uses
  %i.ajt = load float, ptr %i.uq, align 4, !tbaa !9 ; 2 uses
  %i.aju = fneg float %i.ajs
  %i.ajv = load float, ptr %i.ahj, align 8, !tbaa !9 ; 2 uses
  %i.ajw = load <2 x float>, ptr %i.adf, align 4, !tbaa !9 ; 3 uses
  %i.ajx = load <2 x float>, ptr %i.ads, align 4, !tbaa !9 ; 3 uses
  %i.ajy = fneg <2 x float> %i.ajx
  %i.ajz = shufflevector <2 x float> %i.ajw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aka = insertelement <2 x float> %i.ajz, float %i.ajt, i64 1
  %i.akb = fmul <2 x float> %i.aka, %i.ajy
  %i.akc = shufflevector <2 x float> %i.ajx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.akd = insertelement <2 x float> %i.akc, float %i.ajs, i64 1
  %i.ake = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajw, <2 x float> %i.akd, <2 x float> %i.akb)
  %i.akf = extractelement <2 x float> %i.ajw, i64 0
  %i.akg = fmul float %i.akf, %i.aju
  %i.akh = extractelement <2 x float> %i.ajx, i64 0
  %i.aki = tail call float @llvm.fmuladd.f32(float %i.ajt, float %i.akh, float %i.akg)
  %i.akj = insertelement <2 x float> poison, float %i.ajv, i64 0
  %i.akk = shufflevector <2 x float> %i.akj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akl = fmul <2 x float> %i.ake, %i.akk
  %i.akm = fmul float %i.ajv, %i.aki
  %i.akn = fadd <2 x float> %i.akl, %i.aip
  store <2 x float> %i.akn, ptr %i.afm, align 4, !tbaa !9
  %i.ako = fadd float %i.akm, %i.air
  store float %i.ako, ptr %.sroa.41049.0..sroa_idx, align 4, !tbaa !9
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ab
  %i.akp = phi ptr [ %i.ahi, %bb.ad ], [ %i.ahi, %bb.ae ], [ %.pre1659, %bb.ab ]
  %i.akq = getelementptr inbounds nuw [144 x i8], ptr %i.er, i64 %indvars.iv.next1574 ; 13 uses
  %i.akr = getelementptr inbounds nuw [688 x i8], ptr %i.akp, i64 %indvars.iv1573 ; 4 uses
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !9 ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akr, i64 4
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akr, i64 8
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akr, i64 12
  %i.akw = load float, ptr %i.akt, align 4, !tbaa !9
  %i.akx = load float, ptr %i.aku, align 4, !tbaa !9
  %i.aky = load float, ptr %i.akv, align 4, !tbaa !9
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akq, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.akq, i8 0, i64 48, i1 false)
  store float %i.aks, ptr %i.akz, align 4
  %.sroa.4992.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akq, i64 52
  %.sroa.9996.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akq, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4992.0..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.aks, ptr %.sroa.9996.16..sroa_idx, align 4
  %.sroa.10997.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akq, i64 72
  %.sroa.151001.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akq, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10997.16..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.aks, ptr %.sroa.151001.32..sroa_idx, align 4
  %.sroa.161002.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akq, i64 92
  store float 0.000000e+00, ptr %.sroa.161002.32..sroa_idx, align 4, !tbaa !11
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akq, i64 96
  store float %i.akw, ptr %i.ala, align 4
  %.sroa.4974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akq, i64 100
  %.sroa.9978.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akq, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4974.0..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.akx, ptr %.sroa.9978.16..sroa_idx, align 4
  %.sroa.10979.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akq, i64 120
  %.sroa.15983.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akq, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10979.16..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.aky, ptr %.sroa.15983.32..sroa_idx, align 4
  %.sroa.16984.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akq, i64 140
  store float 0.000000e+00, ptr %.sroa.16984.32..sroa_idx, align 4, !tbaa !11
  %exitcond1577.not = icmp eq i64 %indvars.iv.next1574, %wide.trip.count1576
  br i1 %exitcond1577.not, label %.lr.ph.i624.lr.ph, label %bb.v, !llvm.loop !153

._crit_edge1527:                                  ; preds = %bb.av, %bb.u
  %i.alb = load i8, ptr %i.ik, align 1, !tbaa !53, !range !67, !noundef !68
  %i.alc = trunc nuw i8 %i.alb to i1
  br i1 %i.alc, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge1527
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !130 ; 2 uses
  %.not.i622 = icmp eq ptr %i.ale, null
  br i1 %.not.i622, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread1399, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623: ; preds = %bb.ag
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 224
  %i.alg = load i32, ptr %i.alf, align 8, !tbaa !131
  %i.alh = and i32 %i.alg, 3
  %.not1402 = icmp eq i32 %i.alh, 0
  br i1 %.not1402, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread1399, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread

.lr.ph.i624:                                      ; preds = %.lr.ph.i624.lr.ph, %bb.av
  %indvars.iv1628 = phi i64 [ %i.ep, %.lr.ph.i624.lr.ph ], [ %indvars.iv.next1629, %bb.av ] ; 7 uses
  %indvars.iv.next1629 = add nsw i64 %indvars.iv1628, -1 ; 9 uses
  %i.ali = load ptr, ptr %i.pd, align 8, !tbaa !38 ; 3 uses
  %i.alj = trunc nuw nsw i64 %indvars.iv.next1629 to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i624
  %.010.i625 = phi i32 [ %i.alj, %.lr.ph.i624 ], [ %i.als, %bb.ai ]
  %i.alk = sext i32 %.010.i625 to i64
  %i.all = getelementptr inbounds [688 x i8], ptr %i.ali, i64 %i.alk ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 544
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !151 ; 2 uses
  %.not.i.i626 = icmp eq ptr %i.aln, null
  br i1 %.not.i.i626, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, label %_ZNK11btMultiBody15isLinkKinematicEi.exit.i627

_ZNK11btMultiBody15isLinkKinematicEi.exit.i627:   ; preds = %bb.ah
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 224
  %i.alp = load i32, ptr %i.alo, align 8, !tbaa !131
  %i.alq = and i32 %i.alp, 2
  %.not8.i628 = icmp eq i32 %i.alq, 0
  br i1 %.not8.i628, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZNK11btMultiBody15isLinkKinematicEi.exit.i627
  %i.alr = getelementptr inbounds nuw i8, ptr %i.all, i64 20
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !84 ; 2 uses
  %.not.i629 = icmp eq i32 %i.als, -1
  br i1 %.not.i629, label %._crit_edge.i630, label %bb.ah, !llvm.loop !152

._crit_edge.i630:                                 ; preds = %bb.ai
  %i.alt = load ptr, ptr %i.pe, align 8, !tbaa !130 ; 2 uses
  %.not.i6.i631 = icmp eq ptr %i.alt, null
  br i1 %.not.i6.i631, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633: ; preds = %._crit_edge.i630
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 224
  %i.alv = load i32, ptr %i.alu, align 8, !tbaa !131
  %i.alw = and i32 %i.alv, 2
  %.not1405 = icmp eq i32 %i.alw, 0
  br i1 %.not1405, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, label %bb.av

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread: ; preds = %bb.ah, %_ZNK11btMultiBody15isLinkKinematicEi.exit.i627, %._crit_edge.i630, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633
  %i.alx = getelementptr inbounds [688 x i8], ptr %i.ali, i64 %indvars.iv.next1629 ; 5 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 20
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !84
  %i.ama = getelementptr inbounds nuw [48 x i8], ptr %i.et, i64 %indvars.iv1628 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(48) %i.ama, i64 16, i1 false), !tbaa.struct !36
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pf, ptr noundef nonnull align 4 dereferenceable(16) %i.amb, i64 16, i1 false), !tbaa.struct !36
  %i.amc = getelementptr inbounds nuw i8, ptr %i.ama, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pg, ptr noundef nonnull align 4 dereferenceable(16) %i.amc, i64 16, i1 false), !tbaa.struct !36
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alx, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ph, ptr noundef nonnull align 8 dereferenceable(16) %i.amd, i64 16, i1 false), !tbaa.struct !36
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alx, i64 556
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !86 ; 2 uses
  %i.amg = icmp sgt i32 %i.amf, 0
  br i1 %i.amg, label %.lr.ph1433, label %.preheader1410.._crit_edge1443_crit_edge

.lr.ph1433:                                       ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread
  %i.amh = getelementptr inbounds nuw [144 x i8], ptr %i.er, i64 %indvars.iv1628 ; 22 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 96
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amh, i64 104
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amh, i64 112
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amh, i64 120
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amh, i64 128
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amh, i64 132
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amh, i64 136
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amh, i64 16
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amh, i64 32
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amh, i64 4
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amh, i64 20
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amh, i64 24
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amh, i64 40
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amh, i64 48
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amh, i64 56
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amh, i64 64
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amh, i64 72
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amh, i64 80
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amh, i64 84
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amh, i64 88
  %i.and = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %indvars.iv1628 ; 4 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 8
  %i.anf = getelementptr inbounds nuw i8, ptr %i.and, i64 16
  %i.ang = getelementptr inbounds nuw i8, ptr %i.and, i64 24
  %i.anh = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %indvars.iv.next1629 ; 4 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.anj = getelementptr inbounds nuw i8, ptr %i.anh, i64 24
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anh, i64 8
  %.phi.trans.insert1685 = getelementptr inbounds nuw i8, ptr %i.alx, i64 328
  %.pre1686 = load i32, ptr %.phi.trans.insert1685, align 8, !tbaa !110
  br label %bb.aj

.preheader1410:                                   ; preds = %bb.al
  %i.anl = icmp sgt i32 %i.atr, 0
  br i1 %i.anl, label %.lr.ph1442, label %.preheader1410.._crit_edge1443_crit_edge

.preheader1410.._crit_edge1443_crit_edge:         ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, %.preheader1410
  %i.anm = phi i32 [ %i.atr, %.preheader1410 ], [ %i.amf, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread ]
  %.lcssa14311753 = phi ptr [ %i.ars, %.preheader1410 ], [ %i.alx, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread ] ; 2 uses
  %.phi.trans.insert1667 = getelementptr inbounds nuw i8, ptr %.lcssa14311753, i64 328
  %.pre1668 = load i32, ptr %.phi.trans.insert1667, align 8, !tbaa !110
  br label %._crit_edge1443

.lr.ph1442:                                       ; preds = %.preheader1410
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ars, i64 328
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ars, i64 136
  %i.anp = load i32, ptr %i.ann, align 8, !tbaa !110 ; 2 uses
  %i.anq = sext i32 %i.anp to i64
  %i.anr = zext nneg i32 %i.atr to i64            ; 5 uses
  %invariant.gep = getelementptr [32 x i8], ptr %i.fb, i64 %i.anq ; 5 uses
  %min.iters.check1819 = icmp ult i32 %i.atr, 5
  %n.mod.vf1821 = and i64 %i.anr, 3               ; 2 uses
  %i.ans = icmp eq i64 %n.mod.vf1821, 0
  %i.ant = select i1 %i.ans, i64 4, i64 %n.mod.vf1821
  %n.vec1822 = sub nsw i64 %i.anr, %i.ant         ; 2 uses
  br label %.lr.ph1439

bb.aj:                                            ; preds = %.lr.ph1433, %bb.al
  %i.anu = phi i32 [ %.pre1686, %.lr.ph1433 ], [ %i.atm, %bb.al ]
  %indvars.iv1578 = phi i64 [ 0, %.lr.ph1433 ], [ %indvars.iv.next1579, %bb.al ] ; 5 uses
  %i.anv = phi ptr [ %i.ali, %.lr.ph1433 ], [ %.pre1660, %bb.al ]
  %i.anw = getelementptr inbounds [688 x i8], ptr %i.anv, i64 %indvars.iv.next1629
  %i.anx = trunc nuw nsw i64 %indvars.iv1578 to i32 ; 2 uses
  %i.any = add nsw i32 %i.anu, %i.anx
  %i.anz = sext i32 %i.any to i64
  %i.aoa = getelementptr inbounds [32 x i8], ptr %i.fb, i64 %i.anz ; 4 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anw, i64 136
  %i.aoc = getelementptr inbounds nuw [32 x i8], ptr %i.aob, i64 %indvars.iv1578 ; 6 uses
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !9, !noalias !154 ; 3 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aoc, i64 4
  %i.aof = load float, ptr %i.aoe, align 4, !tbaa !9, !noalias !154 ; 3 uses
  %i.aog = load float, ptr %i.amj, align 4, !tbaa !9, !noalias !154
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoc, i64 8
  %i.aoi = load float, ptr %i.aoh, align 4, !tbaa !9, !noalias !154 ; 3 uses
  %i.aoj = load float, ptr %i.aml, align 4, !tbaa !9, !noalias !154
  %i.aok = load float, ptr %i.amm, align 4, !tbaa !9, !noalias !154
  %i.aol = load float, ptr %i.amn, align 4, !tbaa !9, !noalias !154
  %i.aom = fmul float %i.aof, %i.aol
  %i.aon = call float @llvm.fmuladd.f32(float %i.aok, float %i.aod, float %i.aom)
  %i.aoo = load float, ptr %i.amo, align 4, !tbaa !9, !noalias !154
  %i.aop = call noundef float @llvm.fmuladd.f32(float %i.aoo, float %i.aoi, float %i.aon)
  %i.aoq = load float, ptr %i.amt, align 4, !tbaa !9, !noalias !157 ; 2 uses
  %i.aor = load float, ptr %i.amu, align 4, !tbaa !9, !noalias !157 ; 2 uses
  %i.aos = load float, ptr %i.amv, align 4, !tbaa !9, !noalias !157 ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoc, i64 16
  %i.aou = load float, ptr %i.aot, align 4, !tbaa !9, !noalias !154 ; 3 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoc, i64 20
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !9, !noalias !154 ; 3 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoc, i64 24
  %i.aoy = load float, ptr %i.aox, align 4, !tbaa !9, !noalias !154 ; 3 uses
  %i.aoz = fmul float %i.aor, %i.aow
  %i.apa = call float @llvm.fmuladd.f32(float %i.aoq, float %i.aou, float %i.aoz)
  %i.apb = call noundef float @llvm.fmuladd.f32(float %i.aos, float %i.aoy, float %i.apa)
  %i.apc = fadd float %i.aop, %i.apb              ; 2 uses
  %.sroa.3.12.vec.insert.i12.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.apc, i64 0
  %i.apd = load float, ptr %i.amx, align 4, !tbaa !9, !noalias !154
  %i.ape = load float, ptr %i.amz, align 4, !tbaa !9, !noalias !154
  %i.apf = load float, ptr %i.ana, align 4, !tbaa !9, !noalias !154
  %i.apg = load float, ptr %i.anb, align 4, !tbaa !9, !noalias !154
  %i.aph = fmul float %i.aow, %i.apg
  %i.api = call float @llvm.fmuladd.f32(float %i.apf, float %i.aou, float %i.aph)
  %i.apj = load float, ptr %i.anc, align 4, !tbaa !9, !noalias !154
  %i.apk = call noundef float @llvm.fmuladd.f32(float %i.apj, float %i.aoy, float %i.api)
  %i.apl = load <2 x float>, ptr %i.amh, align 4, !tbaa !9, !noalias !157 ; 3 uses
  %i.apm = load float, ptr %i.amr, align 4, !tbaa !9, !noalias !157
  %i.apn = load <2 x float>, ptr %i.amp, align 4, !tbaa !9, !noalias !157 ; 3 uses
  %i.apo = load float, ptr %i.ams, align 4, !tbaa !9, !noalias !157
  %i.app = load <2 x float>, ptr %i.ami, align 4, !tbaa !9, !noalias !154 ; 2 uses
  %i.apq = load <2 x float>, ptr %i.amk, align 4, !tbaa !9, !noalias !154 ; 2 uses
  %i.apr = insertelement <2 x float> poison, float %i.aof, i64 0
  %i.aps = shufflevector <2 x float> %i.apr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.apt = shufflevector <2 x float> %i.app, <2 x float> %i.apq, <2 x i32> <i32 1, i32 3>
  %i.apu = fmul <2 x float> %i.aps, %i.apt
  %i.apv = shufflevector <2 x float> %i.app, <2 x float> %i.apq, <2 x i32> <i32 0, i32 2>
  %i.apw = insertelement <2 x float> poison, float %i.aod, i64 0
  %i.apx = shufflevector <2 x float> %i.apw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.apy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apv, <2 x float> %i.apx, <2 x float> %i.apu)
  %i.apz = insertelement <2 x float> poison, float %i.aog, i64 0
  %i.aqa = insertelement <2 x float> %i.apz, float %i.aoj, i64 1
  %i.aqb = insertelement <2 x float> poison, float %i.aoi, i64 0
  %i.aqc = shufflevector <2 x float> %i.aqb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqa, <2 x float> %i.aqc, <2 x float> %i.apy)
  %i.aqe = load <2 x float>, ptr %i.amq, align 4, !tbaa !9, !noalias !157 ; 3 uses
  %i.aqf = extractelement <2 x float> %i.aqe, i64 1
  %i.aqg = fmul float %i.aof, %i.aqf
  %i.aqh = extractelement <2 x float> %i.aqe, i64 0
  %i.aqi = call float @llvm.fmuladd.f32(float %i.aqh, float %i.aod, float %i.aqg)
  %i.aqj = call noundef float @llvm.fmuladd.f32(float %i.aos, float %i.aoi, float %i.aqi)
  %i.aqk = insertelement <2 x float> %i.apn, float %i.apo, i64 1
  %i.aql = insertelement <2 x float> poison, float %i.aow, i64 0
  %i.aqm = shufflevector <2 x float> %i.aql, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqn = fmul <2 x float> %i.aqk, %i.aqm
  %i.aqo = insertelement <2 x float> %i.apl, float %i.apm, i64 1
  %i.aqp = insertelement <2 x float> poison, float %i.aou, i64 0
  %i.aqq = shufflevector <2 x float> %i.aqp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqo, <2 x float> %i.aqq, <2 x float> %i.aqn)
  %i.aqs = insertelement <2 x float> poison, float %i.aoy, i64 0
  %i.aqt = shufflevector <2 x float> %i.aqs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqe, <2 x float> %i.aqt, <2 x float> %i.aqr)
  %i.aqv = fadd <2 x float> %i.aqd, %i.aqu        ; 3 uses
  %i.aqw = shufflevector <2 x float> %i.apl, <2 x float> %i.apn, <2 x i32> <i32 1, i32 3>
  %i.aqx = fmul <2 x float> %i.aps, %i.aqw
  %i.aqy = shufflevector <2 x float> %i.apl, <2 x float> %i.apn, <2 x i32> <i32 0, i32 2>
  %i.aqz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqy, <2 x float> %i.apx, <2 x float> %i.aqx)
  %i.ara = insertelement <2 x float> poison, float %i.aoq, i64 0
  %i.arb = insertelement <2 x float> %i.ara, float %i.aor, i64 1
  %i.arc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arb, <2 x float> %i.aqc, <2 x float> %i.aqz)
  %i.ard = load <2 x float>, ptr %i.amw, align 4, !tbaa !9, !noalias !154 ; 2 uses
  %i.are = load <2 x float>, ptr %i.amy, align 4, !tbaa !9, !noalias !154 ; 2 uses
  %i.arf = shufflevector <2 x float> %i.ard, <2 x float> %i.are, <2 x i32> <i32 1, i32 3>
  %i.arg = fmul <2 x float> %i.aqm, %i.arf
  %i.arh = shufflevector <2 x float> %i.ard, <2 x float> %i.are, <2 x i32> <i32 0, i32 2>
  %i.ari = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arh, <2 x float> %i.aqq, <2 x float> %i.arg)
  %i.arj = insertelement <2 x float> poison, float %i.apd, i64 0
  %i.ark = insertelement <2 x float> %i.arj, float %i.ape, i64 1
  %i.arl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ark, <2 x float> %i.aqt, <2 x float> %i.ari)
  %i.arm = fadd <2 x float> %i.arc, %i.arl        ; 3 uses
  %i.arn = fadd float %i.aqj, %i.apk              ; 2 uses
  %.sroa.3.12.vec.insert.i27.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.arn, i64 0
  store <2 x float> %i.arm, ptr %i.aoa, align 4
  %.sroa.4965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoa, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i27.i, ptr %.sroa.4965.0..sroa_idx, align 4, !tbaa !11
  %.sroa.5966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoa, i64 16
  store <2 x float> %i.aqv, ptr %.sroa.5966.0..sroa_idx, align 4
  %.sroa.6967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoa, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i12.i, ptr %.sroa.6967.0..sroa_idx, align 4, !tbaa !11
  %.pre1660 = load ptr, ptr %i.pd, align 8, !tbaa !38 ; 3 uses
  br i1 %5, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.aro = getelementptr inbounds [688 x i8], ptr %.pre1660, i64 %indvars.iv.next1629
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 520
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.arp, i64 %indvars.iv1578
  %i.arr = load float, ptr %i.arq, align 4, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.0408 = phi float [ %i.arr, %bb.ak ], [ 0.000000e+00, %bb.aj ]
  %i.ars = getelementptr inbounds [688 x i8], ptr %.pre1660, i64 %indvars.iv.next1629 ; 7 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 136
  %i.aru = getelementptr inbounds nuw [32 x i8], ptr %i.art, i64 %indvars.iv1578 ; 4 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 16
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aru, i64 24
  %i.arx = load float, ptr %i.arw, align 4, !tbaa !9
  %i.ary = load float, ptr %i.ane, align 4, !tbaa !9
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aru, i64 8
  %i.asa = load float, ptr %i.arz, align 4, !tbaa !9
  %i.asb = load float, ptr %i.ang, align 4, !tbaa !9
  %i.asc = load float, ptr %i.anj, align 4, !tbaa !9
  %i.asd = load float, ptr %i.ank, align 4, !tbaa !9
  %i.ase = load <2 x float>, ptr %i.arv, align 4, !tbaa !9 ; 2 uses
  %i.asf = load <2 x float>, ptr %i.and, align 4, !tbaa !9 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb:bb.a
  %i.bjd = load <2 x float>, ptr %i.bbu, align 4, !tbaa !9, !noalias !181 ; 2 uses
  %i.bje = load <2 x float>, ptr %i.bbm, align 4, !tbaa !9, !noalias !184 ; 2 uses
  %i.bjf = load <2 x float>, ptr %i.bbo, align 4, !tbaa !9, !noalias !184 ; 2 uses
  %i.bjg = load <2 x float>, ptr %i.bik, align 4, !tbaa !9, !noalias !184
  %i.bjh = shufflevector <2 x float> %i.bjc, <2 x float> %i.bjd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bji = shufflevector <2 x float> %i.bjb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bjj = shufflevector <4 x float> %i.bjh, <4 x float> %i.bji, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bjk = shufflevector <2 x float> %i.bjg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.bjl = shufflevector <4 x float> %i.bjj, <4 x float> %i.bjk, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bjm = shufflevector <2 x float> %i.bjc, <2 x float> %i.bjd, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bjn = shufflevector <4 x float> %i.bjm, <4 x float> %i.bji, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bjo = insertelement <4 x float> %i.bjn, float %i.bim, i64 3
  %i.bjp = insertelement <4 x float> poison, float %i.big, i64 0
  %i.bjq = insertelement <4 x float> %i.bjp, float %i.bii, i64 1
  %i.bjr = insertelement <4 x float> %i.bjq, float %i.bie, i64 2
  %i.bjs = shufflevector <4 x float> %i.bjr, <4 x float> %i.bjk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bjt = load <2 x float>, ptr %i.bib, align 4, !tbaa !9, !noalias !181 ; 4 uses
  %i.bju = load <2 x float>, ptr %i.bin, align 4, !tbaa !9, !noalias !181 ; 4 uses
  %i.bjv = load <2 x float>, ptr %i.bbr, align 4, !tbaa !9, !noalias !181 ; 2 uses
  %i.bjw = load <2 x float>, ptr %i.bil, align 4, !tbaa !9, !noalias !184 ; 3 uses
  %i.bjx = load <2 x float>, ptr %i.bbp, align 4, !tbaa !9, !noalias !181 ; 2 uses
  %i.bjy = load <2 x float>, ptr %i.bij, align 4, !tbaa !9, !noalias !184 ; 3 uses
  %i.bjz = load <2 x float>, ptr %i.bic, align 4, !tbaa !9, !noalias !181 ; 3 uses
  %i.bka = shufflevector <2 x float> %i.bjz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bkb = load <2 x float>, ptr %i.bio, align 4, !tbaa !9, !noalias !181 ; 3 uses
  %i.bkc = shufflevector <2 x float> %i.bjz, <2 x float> %i.bkb, <2 x i32> <i32 0, i32 2>
  %i.bkd = shufflevector <2 x float> %i.bjy, <2 x float> %i.bjx, <2 x i32> <i32 0, i32 3>
  %i.bke = fmul <2 x float> %i.bkc, %i.bkd
  %i.bkf = shufflevector <2 x float> %i.bje, <2 x float> %i.bjx, <2 x i32> <i32 0, i32 2>
  %i.bkg = shufflevector <2 x float> %i.bjt, <2 x float> %i.bju, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bkh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkf, <2 x float> %i.bkg, <2 x float> %i.bke)
  %i.bki = shufflevector <2 x float> %i.bjy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bkj = insertelement <2 x float> %i.bki, float %i.biq, i64 1
  %i.bkk = shufflevector <2 x float> %i.bjz, <2 x float> %i.bkb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bkl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkj, <2 x float> %i.bkk, <2 x float> %i.bkh) ; 2 uses
  %i.bkm = shufflevector <2 x float> %i.bjt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bkn = fmul <4 x float> %i.bjl, %i.bkm
  %i.bko = shufflevector <2 x float> %i.bjt, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bkp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bjo, <4 x float> %i.bko, <4 x float> %i.bkn)
  %i.bkq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bjs, <4 x float> %i.bka, <4 x float> %i.bkp)
  %i.bkr = shufflevector <2 x float> %i.bjt, <2 x float> %i.bju, <2 x i32> <i32 1, i32 3>
  %i.bks = shufflevector <2 x float> %i.bjw, <2 x float> %i.bjv, <2 x i32> <i32 0, i32 3>
  %i.bkt = fmul <2 x float> %i.bkr, %i.bks
  %i.bku = shufflevector <2 x float> %i.bjf, <2 x float> %i.bjv, <2 x i32> <i32 0, i32 2>
  %i.bkv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bku, <2 x float> %i.bkg, <2 x float> %i.bkt)
  %i.bkw = shufflevector <2 x float> %i.bjw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bkx = insertelement <2 x float> %i.bkw, float %i.biu, i64 1
  %i.bky = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkx, <2 x float> %i.bkk, <2 x float> %i.bkv) ; 2 uses
  %i.bkz = load <2 x float>, ptr %i.bbq, align 4, !tbaa !9, !noalias !181 ; 2 uses
  %i.bla = insertelement <4 x float> poison, float %i.bim, i64 2
  %i.blb = shufflevector <2 x float> %i.bkz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.blc = shufflevector <4 x float> %i.bla, <4 x float> %i.blb, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.bld = shufflevector <4 x float> %i.bjk, <4 x float> %i.blc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ble = shufflevector <2 x float> %i.bju, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.blf = fmul <4 x float> %i.bld, %i.ble
  %i.blg = shufflevector <2 x float> %i.bje, <2 x float> %i.bkz, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.blh = shufflevector <2 x float> %i.bjy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bli = shufflevector <4 x float> %i.blg, <4 x float> %i.blh, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.blj = shufflevector <2 x float> %i.bju, <2 x float> poison, <4 x i32> zeroinitializer
  %i.blk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bli, <4 x float> %i.blj, <4 x float> %i.blf)
  %i.bll = shufflevector <2 x float> %i.bjf, <2 x float> %i.bjw, <4 x i32> <i32 1, i32 3, i32 0, i32 poison>
  %i.blm = insertelement <4 x float> %i.bll, float %i.bis, i64 3
  %i.bln = shufflevector <2 x float> %i.bkb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.blo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.blm, <4 x float> %i.bln, <4 x float> %i.blk)
  %shift1905 = shufflevector <2 x float> %i.bkl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1906 = fadd <2 x float> %i.bkl, %shift1905
  %i.blp = extractelement <2 x float> %foldExtExtBinop1906, i64 0
  %i.blq = fadd <4 x float> %i.bkq, %i.blo
  %shift1908 = shufflevector <2 x float> %i.bky, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1909 = fadd <2 x float> %i.bky, %shift1908
  %i.blr = extractelement <2 x float> %foldExtExtBinop1909, i64 0
  %i.bls = load <2 x float>, ptr %i.bix, align 4, !tbaa !9, !noalias !187
  %i.blt = insertelement <4 x float> poison, float %i.biw, i64 2
  %i.blu = insertelement <4 x float> %i.blt, float %i.bja, i64 3
  %i.blv = shufflevector <2 x float> %i.bls, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.blw = shufflevector <4 x float> %i.blv, <4 x float> %i.blu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.blx = fadd <4 x float> %i.blq, %i.blw        ; 5 uses
  %i.bly = shufflevector <4 x float> %i.blx, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.blz = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.blx, <2 x i32> <i32 5, i32 1>
  %i.bma = fadd float %i.blp, %i.biy              ; 3 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bia, i64 8
  %i.bmc = load float, ptr %i.bmb, align 4, !tbaa !9, !noalias !187
  %i.bmd = fadd float %i.blr, %i.bmc              ; 3 uses
  %i.bme = shufflevector <4 x float> %i.blx, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.bmf = insertelement <2 x float> %i.bme, float %i.bma, i64 0
  %.sroa.3.12.vec.insert.i5.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bmd, i64 0
  store <2 x float> %i.bmf, ptr %9, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i5.i, ptr %.sroa.4933.0..sroa_idx, align 8, !tbaa !11
  store <2 x float> %i.bly, ptr %.sroa.5934.0..sroa_idx, align 16
  store <2 x float> %i.blz, ptr %.sroa.6935.0..sroa_idx, align 8, !tbaa !11
  br i1 %i.bcm, label %.lr.ph1514, label %bb.at

.lr.ph1514:                                       ; preds = %._crit_edge1504
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bcj, i64 328
  %i.bmh = load i32, ptr %i.bmg, align 8, !tbaa !110
  %i.bmi = sext i32 %i.bmh to i64
  %wide.trip.count1626 = zext nneg i32 %i.bcl to i64
  %invariant.gep1787 = getelementptr [32 x i8], ptr %i.fb, i64 %i.bmi
  br label %bb.au

.lr.ph1497:                                       ; preds = %.lr.ph1503, %._crit_edge1498
  %indvars.iv1618 = phi i64 [ 0, %.lr.ph1503 ], [ %indvars.iv.next1619, %._crit_edge1498 ] ; 3 uses
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv1618
  %i.bmk = mul nuw nsw i64 %indvars.iv1618, %i.bco
  %invariant.gep1783 = getelementptr inbounds nuw [4 x i8], ptr %i.atz, i64 %i.bmk ; 5 uses
  br i1 %i.bcq, label %.epil.preheader1945, label %.lr.ph1497.new

._crit_edge1498.unr-lcssa:                        ; preds = %.lr.ph1497.new
  br i1 %lcmp.mod1947.not, label %._crit_edge1498, label %.epil.preheader1945

.epil.preheader1945:                              ; preds = %._crit_edge1498.unr-lcssa, %.lr.ph1497
  %indvars.iv1613.epil.init = phi i64 [ 0, %.lr.ph1497 ], [ %indvars.iv.next1614.3, %._crit_edge1498.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph1497 ], [ %i.bnb, %._crit_edge1498.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1949)
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.epil.preheader1945
  %indvars.iv1613.epil = phi i64 [ %indvars.iv1613.epil.init, %.epil.preheader1945 ], [ %indvars.iv.next1614.epil, %bb.as ] ; 3 uses
  %i.bml = phi float [ %.epil.init, %.epil.preheader1945 ], [ %i.bmo, %bb.as ]
  %epil.iter = phi i64 [ 0, %.epil.preheader1945 ], [ %epil.iter.next, %bb.as ]
  %gep1784.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1783, i64 %indvars.iv1613.epil
  %i.bmm = load float, ptr %gep1784.epil, align 4, !tbaa !9
  %gep1786.epil = getelementptr [4 x i8], ptr %invariant.gep1785, i64 %indvars.iv1613.epil
  %i.bmn = load float, ptr %gep1786.epil, align 4, !tbaa !9
  %i.bmo = call float @llvm.fmuladd.f32(float %i.bmm, float %i.bmn, float %i.bml) ; 2 uses
  %indvars.iv.next1614.epil = add nuw nsw i64 %indvars.iv1613.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1946
  br i1 %epil.iter.cmp.not, label %._crit_edge1498, label %bb.as, !llvm.loop !190

._crit_edge1498:                                  ; preds = %bb.as, %._crit_edge1498.unr-lcssa
  %.lcssa1936 = phi float [ %i.bnb, %._crit_edge1498.unr-lcssa ], [ %i.bmo, %bb.as ]
  store float %.lcssa1936, ptr %i.bmj, align 4, !tbaa !9
  %indvars.iv.next1619 = add nuw nsw i64 %indvars.iv1618, 1 ; 2 uses
  %exitcond1622.not = icmp eq i64 %indvars.iv.next1619, %wide.trip.count1621
  br i1 %exitcond1622.not, label %._crit_edge1504, label %.lr.ph1497, !llvm.loop !191

.lr.ph1497.new:                                   ; preds = %.lr.ph1497, %.lr.ph1497.new
  %indvars.iv1613 = phi i64 [ %indvars.iv.next1614.3, %.lr.ph1497.new ], [ 0, %.lr.ph1497 ] ; 6 uses
  %i.bmp = phi float [ %i.bnb, %.lr.ph1497.new ], [ 0.000000e+00, %.lr.ph1497 ]
  %niter1951 = phi i64 [ %niter1951.next.3, %.lr.ph1497.new ], [ 0, %.lr.ph1497 ]
  %gep1784 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1783, i64 %indvars.iv1613
  %i.bmq = load float, ptr %gep1784, align 4, !tbaa !9
  %gep1786 = getelementptr [4 x i8], ptr %invariant.gep1785, i64 %indvars.iv1613
  %i.bmr = load float, ptr %gep1786, align 4, !tbaa !9
  %i.bms = call float @llvm.fmuladd.f32(float %i.bmq, float %i.bmr, float %i.bmp)
  %indvars.iv.next1614 = or disjoint i64 %indvars.iv1613, 1 ; 2 uses
  %gep1784.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1783, i64 %indvars.iv.next1614
  %i.bmt = load float, ptr %gep1784.1, align 4, !tbaa !9
  %gep1786.1 = getelementptr [4 x i8], ptr %invariant.gep1785, i64 %indvars.iv.next1614
  %i.bmu = load float, ptr %gep1786.1, align 4, !tbaa !9
  %i.bmv = call float @llvm.fmuladd.f32(float %i.bmt, float %i.bmu, float %i.bms)
  %indvars.iv.next1614.1 = or disjoint i64 %indvars.iv1613, 2 ; 2 uses
  %gep1784.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1783, i64 %indvars.iv.next1614.1
  %i.bmw = load float, ptr %gep1784.2, align 4, !tbaa !9
  %gep1786.2 = getelementptr [4 x i8], ptr %invariant.gep1785, i64 %indvars.iv.next1614.1
  %i.bmx = load float, ptr %gep1786.2, align 4, !tbaa !9
  %i.bmy = call float @llvm.fmuladd.f32(float %i.bmw, float %i.bmx, float %i.bmv)
  %indvars.iv.next1614.2 = or disjoint i64 %indvars.iv1613, 3 ; 2 uses
  %gep1784.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1783, i64 %indvars.iv.next1614.2
  %i.bmz = load float, ptr %gep1784.3, align 4, !tbaa !9
  %gep1786.3 = getelementptr [4 x i8], ptr %invariant.gep1785, i64 %indvars.iv.next1614.2
  %i.bna = load float, ptr %gep1786.3, align 4, !tbaa !9
  %i.bnb = call float @llvm.fmuladd.f32(float %i.bmz, float %i.bna, float %i.bmy) ; 3 uses
  %indvars.iv.next1614.3 = add nuw nsw i64 %indvars.iv1613, 4 ; 2 uses
  %niter1951.next.3 = add i64 %niter1951, 4       ; 2 uses
  %niter1951.ncmp.3 = icmp eq i64 %niter1951.next.3, %unroll_iter1950
  br i1 %niter1951.ncmp.3, label %._crit_edge1498.unr-lcssa, label %.lr.ph1497.new, !llvm.loop !192

._crit_edge1515:                                  ; preds = %bb.au
  %i.bnc = extractelement <4 x float> %i.bqm, i64 3
  store float %i.bnc, ptr %i.pw, align 4, !tbaa !9
  %i.bnd = extractelement <4 x float> %i.bqm, i64 0
  store float %i.bnd, ptr %i.px, align 4, !tbaa !9
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge1515, %._crit_edge1504
  %.lcssa1509 = phi float [ %i.bql, %._crit_edge1515 ], [ %i.bmd, %._crit_edge1504 ] ; 5 uses
  %.lcssa1508 = phi float [ %i.bqk, %._crit_edge1515 ], [ %i.bma, %._crit_edge1504 ] ; 5 uses
  %i.bne = phi <4 x float> [ %i.bqm, %._crit_edge1515 ], [ %i.blx, %._crit_edge1504 ] ; 5 uses
  store float %.lcssa1508, ptr %9, align 16
  store float %.lcssa1509, ptr %.sroa.4933.0..sroa_idx, align 8
  %i.bnf = extractelement <4 x float> %i.bne, i64 2 ; 2 uses
  store float %i.bnf, ptr %.sroa.5934.0..sroa_idx, align 16
  %i.bng = extractelement <4 x float> %i.bne, i64 1 ; 2 uses
  store float %i.bng, ptr %.sroa.6935.0..sroa_idx, align 8
  %i.bnh = load float, ptr %i.pz, align 8, !tbaa !9, !noalias !193 ; 2 uses
  %i.bni = load float, ptr %i.qa, align 8, !tbaa !9, !noalias !193 ; 2 uses
  %i.bnj = load float, ptr %i.qb, align 8, !tbaa !9, !noalias !193 ; 2 uses
  %i.bnk = extractelement <4 x float> %i.bne, i64 3 ; 3 uses
  %i.bnl = fmul float %i.bni, %i.bnk
  %i.bnm = call float @llvm.fmuladd.f32(float %i.bnh, float %.lcssa1508, float %i.bnl)
  %i.bnn = call noundef float @llvm.fmuladd.f32(float %i.bnj, float %.lcssa1509, float %i.bnm) ; 2 uses
  %.sroa.3.12.vec.insert.i.i658 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bnn, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i658, ptr %.sroa.42.0..sroa_idx.i659, align 8, !tbaa !11
  %i.bno = load float, ptr %i.qc, align 4, !tbaa !9 ; 2 uses
  %i.bnp = load float, ptr %i.qd, align 8, !tbaa !9 ; 2 uses
  %i.bnq = fneg float %i.bnk
  %i.bnr = fmul float %i.bnp, %i.bnq
  %i.bns = call float @llvm.fmuladd.f32(float %i.bno, float %.lcssa1509, float %i.bnr)
  %i.bnt = load float, ptr %i.ph, align 16, !tbaa !9 ; 2 uses
  %i.bnu = fneg float %.lcssa1509
  %i.bnv = fmul float %i.bnt, %i.bnu
  %i.bnw = call float @llvm.fmuladd.f32(float %i.bnp, float %.lcssa1508, float %i.bnv)
  %i.bnx = fneg float %.lcssa1508
  %i.bny = fmul float %i.bno, %i.bnx
  %i.bnz = call float @llvm.fmuladd.f32(float %i.bnt, float %i.bnk, float %i.bny)
  %i.boa = fadd float %i.bns, %i.bnf              ; 2 uses
  %i.bob = extractelement <4 x float> %i.bne, i64 0
  %i.boc = fadd float %i.bob, %i.bnw              ; 2 uses
  %i.bod = fadd float %i.bnz, %i.bng              ; 2 uses
  %i.boe = fmul float %i.bni, %i.boc
  %i.bof = call float @llvm.fmuladd.f32(float %i.bnh, float %i.boa, float %i.boe)
  %i.bog = call noundef float @llvm.fmuladd.f32(float %i.bnj, float %i.bod, float %i.bof) ; 2 uses
  %.sroa.3.12.vec.insert.i32.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bog, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i32.i, ptr %.sroa.4.0..sroa_idx.i660, align 8, !tbaa !11
  %i.boh = getelementptr inbounds [32 x i8], ptr %i.ej, i64 %i.bcg ; 5 uses
  %i.boi = load <2 x float>, ptr %10, align 16, !tbaa !9, !noalias !193 ; 2 uses
  %i.boj = load <2 x float>, ptr %i.pf, align 16, !tbaa !9, !noalias !193 ; 2 uses
  %i.bok = load <2 x float>, ptr %i.pg, align 16, !tbaa !9, !noalias !193 ; 2 uses
  %i.bol = shufflevector <4 x float> %i.bne, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.bom = fmul <2 x float> %i.boj, %i.bol
  %i.bon = insertelement <2 x float> poison, float %.lcssa1508, i64 0
  %i.boo = shufflevector <2 x float> %i.bon, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bop = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.boi, <2 x float> %i.boo, <2 x float> %i.bom)
  %i.boq = insertelement <2 x float> poison, float %.lcssa1509, i64 0
  %i.bor = shufflevector <2 x float> %i.boq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bos = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bok, <2 x float> %i.bor, <2 x float> %i.bop) ; 2 uses
  store <2 x float> %i.bos, ptr %i.py, align 16
  %i.bot = load <2 x float>, ptr %i.boh, align 4, !tbaa !9
  %i.bou = fadd <2 x float> %i.bot, %i.bos
  store <2 x float> %i.bou, ptr %i.boh, align 4, !tbaa !9
  %i.bov = getelementptr inbounds nuw i8, ptr %i.boh, i64 8 ; 2 uses
  %i.bow = load float, ptr %i.bov, align 4, !tbaa !9
  %i.box = fadd float %i.bnn, %i.bow
  store float %i.box, ptr %i.bov, align 4, !tbaa !9
  %i.boy = getelementptr inbounds nuw i8, ptr %i.boh, i64 16 ; 2 uses
  %i.boz = insertelement <2 x float> poison, float %i.boc, i64 0
  %i.bpa = shufflevector <2 x float> %i.boz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpb = fmul <2 x float> %i.boj, %i.bpa
  %i.bpc = insertelement <2 x float> poison, float %i.boa, i64 0
  %i.bpd = shufflevector <2 x float> %i.bpc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.boi, <2 x float> %i.bpd, <2 x float> %i.bpb)
  %i.bpf = insertelement <2 x float> poison, float %i.bod, i64 0
  %i.bpg = shufflevector <2 x float> %i.bpf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bph = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bok, <2 x float> %i.bpg, <2 x float> %i.bpe) ; 2 uses
  store <2 x float> %i.bph, ptr %i.qe, align 16
  %i.bpi = load <2 x float>, ptr %i.boy, align 4, !tbaa !9
  %i.bpj = fadd <2 x float> %i.bpi, %i.bph
  store <2 x float> %i.bpj, ptr %i.boy, align 4, !tbaa !9
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.boh, i64 24 ; 2 uses
  %i.bpl = load float, ptr %i.bpk, align 4, !tbaa !9
  %i.bpm = fadd float %i.bog, %i.bpl
  store float %i.bpm, ptr %i.bpk, align 4, !tbaa !9
  br label %bb.av

bb.au:                                            ; preds = %.lr.ph1514, %bb.au
  %indvars.iv1623 = phi i64 [ 0, %.lr.ph1514 ], [ %indvars.iv.next1624, %bb.au ] ; 3 uses
  %i.bpn = phi float [ %i.bma, %.lr.ph1514 ], [ %i.bqk, %bb.au ]
  %i.bpo = phi float [ %i.bmd, %.lr.ph1514 ], [ %i.bql, %bb.au ]
  %i.bpp = phi <4 x float> [ %i.blx, %.lr.ph1514 ], [ %i.bqm, %bb.au ]
  %gep1788 = getelementptr [32 x i8], ptr %invariant.gep1787, i64 %indvars.iv1623 ; 5 uses
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv1623
  %i.bpr = getelementptr inbounds nuw i8, ptr %gep1788, i64 16
  %i.bps = load float, ptr %i.bpr, align 4, !tbaa !9, !noalias !196
  %i.bpt = load float, ptr %i.bpq, align 4, !tbaa !9, !noalias !196 ; 3 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %gep1788, i64 20
  %i.bpv = load float, ptr %gep1788, align 4, !tbaa !9, !noalias !196
  %i.bpw = fmul float %i.bpt, %i.bpv
  %i.bpx = getelementptr inbounds nuw i8, ptr %gep1788, i64 4
  %i.bpy = load float, ptr %i.bpx, align 4, !tbaa !9, !noalias !196
  %i.bpz = load <2 x float>, ptr %i.bpu, align 4, !tbaa !9, !noalias !196
  %i.bqa = insertelement <4 x float> poison, float %i.bps, i64 2
  %i.bqb = insertelement <4 x float> %i.bqa, float %i.bpy, i64 3
  %i.bqc = shufflevector <2 x float> %i.bpz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bqd = shufflevector <4 x float> %i.bqc, <4 x float> %i.bqb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bqe = insertelement <4 x float> poison, float %i.bpt, i64 0
  %i.bqf = shufflevector <4 x float> %i.bqe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bqg = fmul <4 x float> %i.bqd, %i.bqf
  %i.bqh = getelementptr inbounds nuw i8, ptr %gep1788, i64 8
  %i.bqi = load float, ptr %i.bqh, align 4, !tbaa !9, !noalias !196
  %i.bqj = fmul float %i.bpt, %i.bqi
  %i.bqk = fadd float %i.bpw, %i.bpn              ; 2 uses
  %i.bql = fadd float %i.bqj, %i.bpo              ; 2 uses
  %i.bqm = fadd <4 x float> %i.bqg, %i.bpp        ; 4 uses
  %indvars.iv.next1624 = add nuw nsw i64 %indvars.iv1623, 1 ; 2 uses
  %exitcond1627.not = icmp eq i64 %indvars.iv.next1624, %wide.trip.count1626
  br i1 %exitcond1627.not, label %._crit_edge1515, label %bb.au, !llvm.loop !199

bb.av:                                            ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633, %bb.at
  %i.bqn = icmp sgt i64 %indvars.iv1628, 1
  br i1 %i.bqn, label %.lr.ph.i624, label %._crit_edge1527, !llvm.loop !200

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread: ; preds = %._crit_edge1527, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.em, i8 0, i64 32, i1 false)
  br label %bb.ay

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread1399: ; preds = %bb.ag, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623
  br i1 %i.op, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread1399
  %i.bqo = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i8 1, ptr %i.bqo, align 8, !tbaa !201
  %i.bqp = getelementptr inbounds nuw i8, ptr %0, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bqp, ptr noundef nonnull align 4 dereferenceable(48) %i.er, i64 16, i1 false), !tbaa.struct !36
  %i.bqq = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bqq, ptr noundef nonnull align 4 dereferenceable(16) %i.of, i64 16, i1 false), !tbaa.struct !36
  %i.bqr = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bqr, ptr noundef nonnull align 4 dereferenceable(16) %i.og, i64 16, i1 false), !tbaa.struct !36
  %i.bqs = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bqs, ptr noundef nonnull align 4 dereferenceable(48) %i.oh, i64 16, i1 false), !tbaa.struct !36
  %i.bqt = getelementptr inbounds nuw i8, ptr %0, i64 432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bqt, ptr noundef nonnull align 4 dereferenceable(16) %i.oi, i64 16, i1 false), !tbaa.struct !36
  %i.bqu = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bqu, ptr noundef nonnull align 4 dereferenceable(16) %i.oj, i64 16, i1 false), !tbaa.struct !36
  %i.bqv = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bqv, ptr noundef nonnull align 4 dereferenceable(48) %i.ok, i64 16, i1 false), !tbaa.struct !36
  %i.bqw = getelementptr inbounds nuw i8, ptr %0, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bqw, ptr noundef nonnull align 4 dereferenceable(16) %i.ol, i64 16, i1 false), !tbaa.struct !36
  %i.bqx = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bqx, ptr noundef nonnull align 4 dereferenceable(16) %i.om, i64 16, i1 false), !tbaa.struct !36
  %i.bqy = load float, ptr %i.er, align 4, !tbaa !9, !noalias !202
  %i.bqz = load float, ptr %i.of, align 4, !tbaa !9, !noalias !202
  %i.bra = load float, ptr %i.og, align 4, !tbaa !9, !noalias !202
  %i.brb = load float, ptr %.sroa.41136.0..sroa_idx, align 4, !tbaa !9, !noalias !202
  %i.brc = load float, ptr %.sroa.91140.16..sroa_idx, align 4, !tbaa !9, !noalias !202
  %i.brd = load float, ptr %.sroa.141144.32..sroa_idx, align 4, !tbaa !9, !noalias !202
  %i.bre = load float, ptr %.sroa.51137.0..sroa_idx, align 4, !tbaa !9, !noalias !202
  %i.brf = load float, ptr %.sroa.101141.16..sroa_idx, align 4, !tbaa !9, !noalias !202
  %i.brg = load float, ptr %.sroa.151145.32..sroa_idx, align 4, !tbaa !9, !noalias !202
  %i.brh = getelementptr inbounds nuw i8, ptr %0, i64 512
  store float %i.bqy, ptr %i.brh, align 8
  %.sroa.4914.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 516
  store float %i.bqz, ptr %.sroa.4914.0..sroa_idx, align 4
  %.sroa.5915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 520
  store float %i.bra, ptr %.sroa.5915.0..sroa_idx, align 8
  %.sroa.6916.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 524
  store float 0.000000e+00, ptr %.sroa.6916.0..sroa_idx, align 4, !tbaa !11
  %i.bri = getelementptr inbounds nuw i8, ptr %0, i64 528
  store float %i.brb, ptr %i.bri, align 8
  %.sroa.9918.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 532
  store float %i.brc, ptr %.sroa.9918.16..sroa_idx, align 4
  %.sroa.10919.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store float %i.brd, ptr %.sroa.10919.16..sroa_idx, align 8
  %.sroa.11920.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 540
  store float 0.000000e+00, ptr %.sroa.11920.16..sroa_idx, align 4, !tbaa !11
  %i.brj = getelementptr inbounds nuw i8, ptr %0, i64 544
  store float %i.bre, ptr %i.brj, align 8
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 548
  store float %i.brf, ptr %.sroa.14.32..sroa_idx, align 4
  %.sroa.15922.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 552
  store float %i.brg, ptr %.sroa.15922.32..sroa_idx, align 8
  %.sroa.16923.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 556
  store float 0.000000e+00, ptr %.sroa.16923.32..sroa_idx, align 4, !tbaa !11
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread1399
  call void @_ZNK11btMultiBody12solveImatrixERK20btSpatialForceVectorR21btSpatialMotionVector(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.ej, ptr noundef nonnull align 4 dereferenceable(32) %8)
  %i.brk = load <2 x float>, ptr %8, align 8, !tbaa !9, !noalias !205
  %i.brl = fneg <2 x float> %i.brk                ; 2 uses
  %i.brm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.brn = load float, ptr %i.brm, align 8, !tbaa !9, !noalias !205
  %i.bro = fneg float %i.brn                      ; 2 uses
  %.sroa.3.12.vec.insert.i.i671 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bro, i64 0
  %i.brp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.brq = load <2 x float>, ptr %i.brp, align 8, !tbaa !9, !noalias !205
  %i.brr = fneg <2 x float> %i.brq
  %i.brs = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.brt = load float, ptr %i.brs, align 8, !tbaa !9, !noalias !205
  %i.bru = fneg float %i.brt
  %.sroa.3.12.vec.insert.i3.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bru, i64 0
  store <2 x float> %i.brl, ptr %i.em, align 4
  %.sroa.4910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i671, ptr %.sroa.4910.0..sroa_idx, align 4, !tbaa !11
  %.sroa.5911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <2 x float> %i.brr, ptr %.sroa.5911.0..sroa_idx, align 4
  %.sroa.6912.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i3.i, ptr %.sroa.6912.0..sroa_idx, align 4, !tbaa !11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread
  %i.brv = phi float [ %i.bro, %bb.ax ], [ 0.000000e+00, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread ]
  %i.brw = phi <2 x float> [ %i.brl, %bb.ax ], [ zeroinitializer, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread ]
  br i1 %i.op, label %.lr.ph1541, label %._crit_edge1542

.lr.ph1541:                                       ; preds = %bb.ay
  %i.brx = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.brz = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.bsa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bsb = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.bsc = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.bsd = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 2 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %10, i64 52
  %i.bsg = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.bsh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count1644 = zext nneg i32 %i.f to i64
  br label %bb.az

._crit_edge1542.loopexit:                         ; preds = %bb.bm
  %i.bsi = load <2 x float>, ptr %i.em, align 4, !tbaa !9
  %.phi.trans.insert1683 = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.pre1684 = load float, ptr %.phi.trans.insert1683, align 4, !tbaa !9
  br label %._crit_edge1542

._crit_edge1542:                                  ; preds = %._crit_edge1542.loopexit, %bb.ay
  %i.bsj = phi float [ %.pre1684, %._crit_edge1542.loopexit ], [ %i.brv, %bb.ay ] ; 2 uses
  %i.bsk = phi <2 x float> [ %i.bsi, %._crit_edge1542.loopexit ], [ %i.brw, %bb.ay ] ; 4 uses
  %i.bsl = load float, ptr %.sroa.51183.0..sroa_idx, align 4, !tbaa !9, !noalias !208
  %i.bsm = load float, ptr %.sroa.101187.16..sroa_idx, align 4, !tbaa !9, !noalias !208
  %i.bsn = load float, ptr %.sroa.151191.32..sroa_idx, align 4, !tbaa !9, !noalias !208
  %i.bso = extractelement <2 x float> %i.bsk, i64 1
  %i.bsp = fmul float %i.bsm, %i.bso
  %i.bsq = extractelement <2 x float> %i.bsk, i64 0
  %i.bsr = call float @llvm.fmuladd.f32(float %i.bsl, float %i.bsq, float %i.bsp)
  %i.bss = call noundef float @llvm.fmuladd.f32(float %i.bsn, float %i.bsj, float %i.bsr)
  %i.bst = load <2 x float>, ptr %i.et, align 4, !tbaa !9, !noalias !208
  %i.bsu = load <2 x float>, ptr %i.fx, align 4, !tbaa !9, !noalias !208
  %i.bsv = load <2 x float>, ptr %i.fy, align 4, !tbaa !9, !noalias !208
  %i.bsw = shufflevector <2 x float> %i.bsk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bsx = fmul <2 x float> %i.bsu, %i.bsw
  %i.bsy = shufflevector <2 x float> %i.bsk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bsz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bst, <2 x float> %i.bsy, <2 x float> %i.bsx)
  %i.bta = insertelement <2 x float> poison, float %i.bsj, i64 0
  %i.btb = shufflevector <2 x float> %i.bta, <2 x float> poison, <2 x i32> zeroinitializer
  %i.btc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsv, <2 x float> %i.btb, <2 x float> %i.bsz)
  store <2 x float> %i.btc, ptr %i.ed, align 4, !tbaa !9
  %i.btd = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store float %i.bss, ptr %i.btd, align 4, !tbaa !9
  %i.bte = load float, ptr %.sroa.51183.0..sroa_idx, align 4, !tbaa !9, !noalias !211
  %i.btf = load float, ptr %.sroa.101187.16..sroa_idx, align 4, !tbaa !9, !noalias !211
  %i.btg = load float, ptr %.sroa.151191.32..sroa_idx, align 4, !tbaa !9, !noalias !211
  %i.bth = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.bti = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.btj = load float, ptr %i.bti, align 4, !tbaa !9 ; 2 uses
  %i.btk = load float, ptr %.sroa.41178.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.btl = load float, ptr %.sroa.41180.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.btm = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.btn = load float, ptr %i.btm, align 4, !tbaa !9 ; 2 uses
  %i.bto = fneg float %i.btn
  %i.btp = fmul float %i.btl, %i.bto
  %i.btq = call float @llvm.fmuladd.f32(float %i.btj, float %i.btk, float %i.btp)
  %i.btr = load float, ptr %i.ij, align 4, !tbaa !9 ; 2 uses
  %i.bts = load float, ptr %i.ef, align 4, !tbaa !9 ; 2 uses
  %i.btt = fneg float %i.btk
  %i.btu = fmul float %i.bts, %i.btt
  %i.btv = call float @llvm.fmuladd.f32(float %i.btl, float %i.btr, float %i.btu)
  %i.btw = fneg float %i.btr
  %i.btx = fmul float %i.btj, %i.btw
  %i.bty = call float @llvm.fmuladd.f32(float %i.bts, float %i.btn, float %i.btx)
  %i.btz = load float, ptr %i.bth, align 4, !tbaa !9
  %i.bua = fadd float %i.btq, %i.btz              ; 2 uses
  %i.bub = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.buc = load float, ptr %i.bub, align 4, !tbaa !9
  %i.bud = fadd float %i.buc, %i.btv              ; 2 uses
  %i.bue = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.buf = load float, ptr %i.bue, align 4, !tbaa !9
  %i.bug = fadd float %i.bty, %i.buf              ; 2 uses
  %i.buh = fmul float %i.btf, %i.bud
  %i.bui = call float @llvm.fmuladd.f32(float %i.bte, float %i.bua, float %i.buh)
  %i.buj = call noundef float @llvm.fmuladd.f32(float %i.btg, float %i.bug, float %i.bui)
  %i.buk = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.bul = load <2 x float>, ptr %i.et, align 4, !tbaa !9, !noalias !211
  %i.bum = load <2 x float>, ptr %i.fx, align 4, !tbaa !9, !noalias !211
  %i.bun = load <2 x float>, ptr %i.fy, align 4, !tbaa !9, !noalias !211
  %i.buo = insertelement <2 x float> poison, float %i.bud, i64 0
  %i.bup = shufflevector <2 x float> %i.buo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.buq = fmul <2 x float> %i.bum, %i.bup
  %i.bur = insertelement <2 x float> poison, float %i.bua, i64 0
  %i.bus = shufflevector <2 x float> %i.bur, <2 x float> poison, <2 x i32> zeroinitializer
  %i.but = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bul, <2 x float> %i.bus, <2 x float> %i.buq)
  %i.buu = insertelement <2 x float> poison, float %i.bug, i64 0
  %i.buv = shufflevector <2 x float> %i.buu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.buw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bun, <2 x float> %i.buv, <2 x float> %i.but)
  store <2 x float> %i.buw, ptr %i.buk, align 4, !tbaa !9
  %i.bux = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  store float %i.buj, ptr %i.bux, align 4, !tbaa !9
  %i.buy = fcmp ule float %1, 0.000000e+00
  %or.cond.not = or i1 %i.buy, %5
  br i1 %or.cond.not, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, label %bb.bn

bb.az:                                            ; preds = %.lr.ph1541, %bb.bm
  %indvars.iv1641 = phi i64 [ 0, %.lr.ph1541 ], [ %indvars.iv.next1642, %bb.bm ] ; 8 uses
  %i.buz = load ptr, ptr %i.brx, align 8, !tbaa !38
  %i.bva = getelementptr inbounds nuw [688 x i8], ptr %i.buz, i64 %indvars.iv1641 ; 2 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bva, i64 20
  %i.bvc = load i32, ptr %i.bvb, align 4, !tbaa !84
  %indvars.iv.next1642 = add nuw nsw i64 %indvars.iv1641, 1 ; 6 uses
  %i.bvd = getelementptr inbounds nuw [48 x i8], ptr %i.et, i64 %indvars.iv.next1642 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(48) %i.bvd, i64 16, i1 false), !tbaa.struct !36
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %i.bve, i64 16, i1 false), !tbaa.struct !36
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bvd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bry, ptr noundef nonnull align 4 dereferenceable(16) %i.bvf, i64 16, i1 false), !tbaa.struct !36
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bva, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.brz, ptr noundef nonnull align 8 dereferenceable(16) %i.bvg, i64 16, i1 false), !tbaa.struct !36
  %i.bvh = sext i32 %i.bvc to i64
  %i.bvi = getelementptr [32 x i8], ptr %i.em, i64 %i.bvh ; 6 uses
  %i.bvj = getelementptr i8, ptr %i.bvi, i64 32
  %i.bvk = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %indvars.iv.next1642 ; 8 uses
  %i.bvl = load float, ptr %i.bvj, align 4, !tbaa !9 ; 2 uses
  %i.bvm = getelementptr i8, ptr %i.bvi, i64 36
  %i.bvn = load float, ptr %i.bvm, align 4, !tbaa !9 ; 2 uses
  %i.bvo = load <4 x float>, ptr %i.bsa, align 8
  %i.bvp = shufflevector <4 x float> %i.bvo, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bvq = getelementptr i8, ptr %i.bvi, i64 40
  %i.bvr = load float, ptr %i.bvq, align 4, !tbaa !9 ; 2 uses
  %i.bvs = load float, ptr %i.bsc, align 8, !tbaa !9
  %i.bvt = load <2 x float>, ptr %10, align 16, !tbaa !9 ; 2 uses
  %i.bvu = load <2 x float>, ptr %12, align 16, !tbaa !9 ; 2 uses
  %i.bvv = insertelement <2 x float> poison, float %i.bvn, i64 0
  %i.bvw = shufflevector <2 x float> %i.bvv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bvx = shufflevector <2 x float> %i.bvt, <2 x float> %i.bvu, <2 x i32> <i32 1, i32 3>
  %i.bvy = fmul <2 x float> %i.bvw, %i.bvx
  %i.bvz = shufflevector <2 x float> %i.bvt, <2 x float> %i.bvu, <2 x i32> <i32 0, i32 2>
  %i.bwa = insertelement <2 x float> poison, float %i.bvl, i64 0
  %i.bwb = shufflevector <2 x float> %i.bwa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bwc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bvz, <2 x float> %i.bwb, <2 x float> %i.bvy)
  %i.bwd = insertelement <2 x float> %i.bvp, float %i.bvs, i64 1
  %i.bwe = insertelement <2 x float> poison, float %i.bvr, i64 0
  %i.bwf = shufflevector <2 x float> %i.bwe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bwg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bwd, <2 x float> %i.bwf, <2 x float> %i.bwc) ; 12 uses
  %i.bwh = load float, ptr %i.bry, align 16, !tbaa !9
  %i.bwi = load float, ptr %i.bsd, align 4, !tbaa !9
  %i.bwj = fmul float %i.bvn, %i.bwi
  %i.bwk = call float @llvm.fmuladd.f32(float %i.bwh, float %i.bvl, float %i.bwj)
  %i.bwl = load float, ptr %i.bse, align 8, !tbaa !9
  %i.bwm = call noundef float @llvm.fmuladd.f32(float %i.bwl, float %i.bvr, float %i.bwk) ; 7 uses
  %.sroa.3.12.vec.insert.i.i695 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bwm, i64 0
  store <2 x float> %i.bwg, ptr %i.bvk, align 4
  %.sroa.42.0..sroa_idx.i696 = getelementptr inbounds nuw i8, ptr %i.bvk, i64 8 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i695, ptr %.sroa.42.0..sroa_idx.i696, align 4, !tbaa !11
  %13 = load float, ptr %i.bsf, align 4, !tbaa !9
  %i.bwn = load float, ptr %i.bsg, align 8, !tbaa !9
  %14 = load <4 x float>, ptr %i.brz, align 16
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bwo = fneg float %i.bwm
  %i.bwp = extractelement <2 x float> %i.bwg, i64 0
  %i.bwq = fneg float %i.bwp
  %i.bwr = getelementptr i8, ptr %i.bvi, i64 48
  %i.bws = getelementptr i8, ptr %i.bvi, i64 52
  %16 = load <4 x float>, ptr %10, align 16       ; 2 uses
  %i.bwt = load <2 x float>, ptr %i.bwr, align 4, !tbaa !9 ; 2 uses
  %17 = load float, ptr %i.bws, align 4, !tbaa !9 ; 2 uses
  %18 = insertelement <4 x float> %15, float %13, i64 1
  %19 = insertelement <4 x float> %18, float %i.bwn, i64 2 ; 2 uses
  %20 = shufflevector <4 x float> %19, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bwu = insertelement <4 x float> poison, float %i.bwo, i64 0
  %i.bwv = insertelement <4 x float> %i.bwu, float %i.bwq, i64 1
  %i.bww = fneg <2 x float> %i.bwg
  %i.bwx = shufflevector <2 x float> %i.bww, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bwy = shufflevector <4 x float> %i.bwv, <4 x float> %i.bwx, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bwz = shufflevector <2 x float> %i.bwt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bxa = shufflevector <4 x float> %i.bwy, <4 x float> %i.bwz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bxb = fmul <4 x float> %20, %i.bxa
  %i.bxc = shufflevector <4 x float> %19, <4 x float> %16, <4 x i32> <i32 2, i32 0, i32 1, i32 4>
  %i.bxd = shufflevector <2 x float> %i.bwg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bxe = insertelement <4 x float> %i.bxd, float %i.bwm, i64 2
  %i.bxf = shufflevector <4 x float> %i.bxe, <4 x float> %i.bwz, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bxg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bxc, <4 x float> %i.bxf, <4 x float> %i.bxb) ; 4 uses
  %i.bxh = load float, ptr %i.bsa, align 8, !tbaa !9
  %i.bxi = getelementptr i8, ptr %i.bvi, i64 56
  %i.bxj = load float, ptr %i.bxi, align 4, !tbaa !9 ; 3 uses
  %i.bxk = extractelement <4 x float> %i.bxg, i64 3
  %i.bxl = call noundef float @llvm.fmuladd.f32(float %i.bxh, float %i.bxj, float %i.bxk)
  %i.bxm = load float, ptr %12, align 16, !tbaa !9
  %i.bxn = load float, ptr %i.bsb, align 4, !tbaa !9
  %i.bxo = fmul float %17, %i.bxn
  %i.bxp = extractelement <2 x float> %i.bwt, i64 0 ; 2 uses
  %i.bxq = call float @llvm.fmuladd.f32(float %i.bxm, float %i.bxp, float %i.bxo)
  %i.bxr = load float, ptr %i.bsc, align 8, !tbaa !9
  %i.bxs = call noundef float @llvm.fmuladd.f32(float %i.bxr, float %i.bxj, float %i.bxq)
  %i.bxt = load float, ptr %i.bry, align 16, !tbaa !9
  %i.bxu = load float, ptr %i.bsd, align 4, !tbaa !9
  %i.bxv = fmul float %17, %i.bxu
  %i.bxw = call float @llvm.fmuladd.f32(float %i.bxt, float %i.bxp, float %i.bxv)
  %i.bxx = load float, ptr %i.bse, align 8, !tbaa !9
  %i.bxy = call noundef float @llvm.fmuladd.f32(float %i.bxx, float %i.bxj, float %i.bxw)
  %i.bxz = extractelement <4 x float> %i.bxg, i64 2
  %i.bya = fsub float %i.bxl, %i.bxz              ; 4 uses
  %i.byb = extractelement <4 x float> %i.bxg, i64 0
  %i.byc = fsub float %i.bxs, %i.byb              ; 5 uses
  %i.byd = extractelement <4 x float> %i.bxg, i64 1
  %i.bye = fsub float %i.bxy, %i.byd              ; 5 uses
  %.sroa.0.0.vec.insert.i35.i697 = insertelement <2 x float> poison, float %i.bya, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i36.i698 = insertelement <2 x float> %.sroa.0.0.vec.insert.i35.i697, float %i.byc, i64 1
  %.sroa.3.12.vec.insert.i37.i699 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bye, i64 0
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bvk, i64 16 ; 4 uses
  store <2 x float> %.sroa.0.4.vec.insert.i36.i698, ptr %i.byf, align 4
  %.sroa.4.0..sroa_idx.i700 = getelementptr inbounds nuw i8, ptr %i.bvk, i64 24 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i37.i699, ptr %.sroa.4.0..sroa_idx.i700, align 4, !tbaa !11
  %i.byg = load ptr, ptr %i.brx, align 8, !tbaa !38 ; 3 uses
  %i.byh = trunc nuw nsw i64 %indvars.iv1641 to i32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %.010.i703 = phi i32 [ %i.byh, %bb.az ], [ %i.byq, %bb.bb ]
  %i.byi = sext i32 %.010.i703 to i64
  %i.byj = getelementptr inbounds [688 x i8], ptr %i.byg, i64 %i.byi ; 2 uses
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byj, i64 544
  %i.byl = load ptr, ptr %i.byk, align 8, !tbaa !151 ; 2 uses
  %.not.i.i704 = icmp eq ptr %i.byl, null
  br i1 %.not.i.i704, label %.preheader1408, label %_ZNK11btMultiBody15isLinkKinematicEi.exit.i705

_ZNK11btMultiBody15isLinkKinematicEi.exit.i705:   ; preds = %bb.ba
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 224
  %i.byn = load i32, ptr %i.bym, align 8, !tbaa !131
  %i.byo = and i32 %i.byn, 2
  %.not8.i706 = icmp eq i32 %i.byo, 0
  br i1 %.not8.i706, label %.preheader1408, label %bb.bb

bb.bb:                                            ; preds = %_ZNK11btMultiBody15isLinkKinematicEi.exit.i705
  %i.byp = getelementptr inbounds nuw i8, ptr %i.byj, i64 20
  %i.byq = load i32, ptr %i.byp, align 4, !tbaa !84 ; 2 uses
  %.not.i707 = icmp eq i32 %i.byq, -1
  br i1 %.not.i707, label %._crit_edge.i708, label %bb.ba, !llvm.loop !152

._crit_edge.i708:                                 ; preds = %bb.bb
  %i.byr = load ptr, ptr %i.bsh, align 8, !tbaa !130 ; 2 uses
  %.not.i6.i709 = icmp eq ptr %i.byr, null
  br i1 %.not.i6.i709, label %.preheader1408, label %.split

.split:                                           ; preds = %._crit_edge.i708
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byr, i64 224
  %i.byt = load i32, ptr %i.bys, align 8, !tbaa !131
  %i.byu = and i32 %i.byt, 2
  %.not1404 = icmp eq i32 %i.byu, 0
  %i.byv = insertelement <2 x float> poison, float %i.bwm, i64 0
  %i.byw = insertelement <2 x float> %i.byv, float %i.bye, i64 1
  %i.byx = insertelement <2 x float> %i.bwg, float %i.bya, i64 1
  %i.byy = shufflevector <2 x float> %i.bwg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.byz = insertelement <2 x float> %i.byy, float %i.byc, i64 1
  br i1 %.not1404, label %.preheader1408, label %.loopexit1407

.preheader1408:                                   ; preds = %_ZNK11btMultiBody15isLinkKinematicEi.exit.i705, %bb.ba, %._crit_edge.i708, %.split
  %i.bza = getelementptr inbounds nuw [688 x i8], ptr %i.byg, i64 %indvars.iv1641 ; 3 uses
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.bza, i64 556
  %i.bzc = load i32, ptr %i.bzb, align 4, !tbaa !86 ; 7 uses
  %i.bzd = icmp sgt i32 %i.bzc, 0                 ; 2 uses
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bza, i64 328
  %i.bzf = load i32, ptr %i.bze, align 8, !tbaa !110 ; 3 uses
  %i.bzg = sext i32 %i.bzf to i64                 ; 7 uses
  %i.bzh = insertelement <2 x float> poison, float %i.bwm, i64 0
  %i.bzi = insertelement <2 x float> %i.bzh, float %i.bye, i64 1
  %i.bzj = insertelement <2 x float> %i.bwg, float %i.bya, i64 1
  %i.bzk = shufflevector <2 x float> %i.bwg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bzl = insertelement <2 x float> %i.bzk, float %i.byc, i64 1
  br i1 %i.bzd, label %.lr.ph1529, label %_ZNK11btMultiBody9mulMatrixEPKfS1_iiiiPf.exit

.lr.ph1529:                                       ; preds = %.preheader1408
  %wide.trip.count1634 = zext nneg i32 %i.bzc to i64 ; 5 uses
  %min.iters.check1839 = icmp ult i32 %i.bzc, 5
  br i1 %min.iters.check1839, label %scalar.ph1838.preheader, label %vector.ph1840

scalar.ph1838.preheader:                          ; preds = %vector.body1855, %.lr.ph1529
  %indvars.iv1631.ph = phi i64 [ 0, %.lr.ph1529 ], [ %n.vec1842, %vector.body1855 ]
  %i.bzm = insertelement <2 x float> %i.bwg, float %i.byc, i64 0
  %i.bzn = shufflevector <2 x float> %.sroa.0.0.vec.insert.i35.i697, <2 x float> %i.bwg, <2 x i32> <i32 0, i32 2>
  %i.bzo = insertelement <2 x float> poison, float %i.bye, i64 0
  %i.bzp = insertelement <2 x float> %i.bzo, float %i.bwm, i64 1
  br label %scalar.ph1838

vector.ph1840:                                    ; preds = %.lr.ph1529
  %n.mod.vf1841 = and i64 %wide.trip.count1634, 3 ; 2 uses
  %i.bzq = icmp eq i64 %n.mod.vf1841, 0
  %i.bzr = select i1 %i.bzq, i64 4, i64 %n.mod.vf1841
  %n.vec1842 = sub nsw i64 %wide.trip.count1634, %i.bzr ; 2 uses
  %broadcast.splatinsert1843 = insertelement <4 x float> poison, float %i.byc, i64 0
  %broadcast.splat1844 = shufflevector <4 x float> %broadcast.splatinsert1843, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1845 = insertelement <4 x float> poison, float %i.bya, i64 0
  %broadcast.splat1846 = shufflevector <4 x float> %broadcast.splatinsert1845, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1847 = insertelement <4 x float> poison, float %i.bye, i64 0
  %broadcast.splat1848 = shufflevector <4 x float> %broadcast.splatinsert1847, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1850 = shufflevector <2 x float> %i.bwg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat1852 = shufflevector <2 x float> %i.bwg, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1853 = insertelement <4 x float> poison, float %i.bwm, i64 0
  %broadcast.splat1854 = shufflevector <4 x float> %broadcast.splatinsert1853, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1855

vector.body1855:                                  ; preds = %vector.body1855, %vector.ph1840
  %index1856 = phi i64 [ 0, %vector.ph1840 ], [ %index.next1858, %vector.body1855 ] ; 6 uses
  %i.bzs = add nsw i64 %index1856, %i.bzg         ; 2 uses
  %i.bzt = getelementptr inbounds [32 x i8], ptr %i.fb, i64 %i.bzs ; 6 uses
  %i.bzu = getelementptr [32 x i8], ptr %i.fb, i64 %index1856
  %i.bzv = getelementptr i8, ptr %i.bzu, i64 32
  %i.bzw = getelementptr [32 x i8], ptr %i.bzv, i64 %i.bzg ; 6 uses
  %i.bzx = getelementptr [32 x i8], ptr %i.fb, i64 %index1856
  %i.bzy = getelementptr i8, ptr %i.bzx, i64 64
  %i.bzz = getelementptr [32 x i8], ptr %i.bzy, i64 %i.bzg ; 6 uses
  %i.caa = getelementptr [32 x i8], ptr %i.fb, i64 %index1856
  %i.cab = getelementptr i8, ptr %i.caa, i64 96
  %i.cac = getelementptr [32 x i8], ptr %i.cab, i64 %i.bzg ; 6 uses
  %i.cad = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.bzs
  %wide.load1857 = load <4 x float>, ptr %i.cad, align 4, !tbaa !9
  %i.cae = load float, ptr %i.bzt, align 4, !tbaa !9
  %i.caf = load float, ptr %i.bzw, align 4, !tbaa !9
  %i.cag = load float, ptr %i.bzz, align 4, !tbaa !9
  %i.cah = load float, ptr %i.cac, align 4, !tbaa !9
  %i.cai = insertelement <4 x float> poison, float %i.cae, i64 0
  %i.caj = insertelement <4 x float> %i.cai, float %i.caf, i64 1
  %i.cak = insertelement <4 x float> %i.caj, float %i.cag, i64 2
  %i.cal = insertelement <4 x float> %i.cak, float %i.cah, i64 3
  %i.cam = getelementptr inbounds nuw i8, ptr %i.bzt, i64 4
  %i.can = getelementptr inbounds nuw i8, ptr %i.bzw, i64 4
  %i.cao = getelementptr inbounds nuw i8, ptr %i.bzz, i64 4
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cac, i64 4
  %i.caq = load float, ptr %i.cam, align 4, !tbaa !9
  %i.car = load float, ptr %i.can, align 4, !tbaa !9
  %i.cas = load float, ptr %i.cao, align 4, !tbaa !9
  %i.cat = load float, ptr %i.cap, align 4, !tbaa !9
  %i.cau = insertelement <4 x float> poison, float %i.caq, i64 0
  %i.cav = insertelement <4 x float> %i.cau, float %i.car, i64 1
  %i.caw = insertelement <4 x float> %i.cav, float %i.cas, i64 2
  %i.cax = insertelement <4 x float> %i.caw, float %i.cat, i64 3
  %i.cay = fmul <4 x float> %broadcast.splat1844, %i.cax
  %i.caz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1846, <4 x float> %i.cal, <4 x float> %i.cay)
  %i.cba = getelementptr inbounds nuw i8, ptr %i.bzt, i64 8
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.bzw, i64 8
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.bzz, i64 8
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cac, i64 8
  %i.cbe = load float, ptr %i.cba, align 4, !tbaa !9
  %i.cbf = load float, ptr %i.cbb, align 4, !tbaa !9
  %i.cbg = load float, ptr %i.cbc, align 4, !tbaa !9
  %i.cbh = load float, ptr %i.cbd, align 4, !tbaa !9
  %i.cbi = insertelement <4 x float> poison, float %i.cbe, i64 0
  %i.cbj = insertelement <4 x float> %i.cbi, float %i.cbf, i64 1
  %i.cbk = insertelement <4 x float> %i.cbj, float %i.cbg, i64 2
  %i.cbl = insertelement <4 x float> %i.cbk, float %i.cbh, i64 3
  %i.cbm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1848, <4 x float> %i.cbl, <4 x float> %i.caz)
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.bzt, i64 16
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.bzw, i64 16
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.bzz, i64 16
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cac, i64 16
  %i.cbr = load float, ptr %i.cbn, align 4, !tbaa !9
  %i.cbs = load float, ptr %i.cbo, align 4, !tbaa !9
  %i.cbt = load float, ptr %i.cbp, align 4, !tbaa !9
  %i.cbu = load float, ptr %i.cbq, align 4, !tbaa !9
  %i.cbv = insertelement <4 x float> poison, float %i.cbr, i64 0
  %i.cbw = insertelement <4 x float> %i.cbv, float %i.cbs, i64 1
  %i.cbx = insertelement <4 x float> %i.cbw, float %i.cbt, i64 2
  %i.cby = insertelement <4 x float> %i.cbx, float %i.cbu, i64 3
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.bzt, i64 20
  %i.cca = getelementptr inbounds nuw i8, ptr %i.bzw, i64 20
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.bzz, i64 20
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.cac, i64 20
  %i.ccd = load float, ptr %i.cbz, align 4, !tbaa !9
  %i.cce = load float, ptr %i.cca, align 4, !tbaa !9
  %i.ccf = load float, ptr %i.ccb, align 4, !tbaa !9
  %i.ccg = load float, ptr %i.ccc, align 4, !tbaa !9
  %i.cch = insertelement <4 x float> poison, float %i.ccd, i64 0
  %i.cci = insertelement <4 x float> %i.cch, float %i.cce, i64 1
  %i.ccj = insertelement <4 x float> %i.cci, float %i.ccf, i64 2
  %i.cck = insertelement <4 x float> %i.ccj, float %i.ccg, i64 3
  %i.ccl = fmul <4 x float> %broadcast.splat1850, %i.cck
  %i.ccm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1852, <4 x float> %i.cby, <4 x float> %i.ccl)
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.bzt, i64 24
  %i.cco = getelementptr inbounds nuw i8, ptr %i.bzw, i64 24
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.bzz, i64 24
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.cac, i64 24
  %i.ccr = load float, ptr %i.ccn, align 4, !tbaa !9
  %i.ccs = load float, ptr %i.cco, align 4, !tbaa !9
  %i.cct = load float, ptr %i.ccp, align 4, !tbaa !9
  %i.ccu = load float, ptr %i.ccq, align 4, !tbaa !9
  %i.ccv = insertelement <4 x float> poison, float %i.ccr, i64 0
  %i.ccw = insertelement <4 x float> %i.ccv, float %i.ccs, i64 1
  %i.ccx = insertelement <4 x float> %i.ccw, float %i.cct, i64 2
  %i.ccy = insertelement <4 x float> %i.ccx, float %i.ccu, i64 3
  %i.ccz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1854, <4 x float> %i.ccy, <4 x float> %i.ccm)
  %i.cda = fadd <4 x float> %i.cbm, %i.ccz
  %i.cdb = fsub <4 x float> %wide.load1857, %i.cda
  %i.cdc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index1856
  store <4 x float> %i.cdb, ptr %i.cdc, align 16, !tbaa !9
  %index.next1858 = add nuw i64 %index1856, 4     ; 2 uses
  %i.cdd = icmp eq i64 %index.next1858, %n.vec1842
  br i1 %i.cdd, label %scalar.ph1838.preheader, label %vector.body1855, !llvm.loop !214

.preheader.us.preheader.i:                        ; preds = %scalar.ph1838
end_hunk_4
begin_hunk_5_@_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb:bb.a

bb.bk:                                            ; preds = %bb.bj
  %i.cpw = load <2 x float>, ptr %i.cpv, align 4, !tbaa !9
  %i.cpx = fadd <2 x float> %.sroa.0885.0, %i.cpw
  store <2 x float> %i.cpx, ptr %i.cpv, align 4, !tbaa !9
  %.sroa.13898.8.vec.extract904 = extractelement <2 x float> %.sroa.13898.0, i64 0
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.chd, i64 24 ; 2 uses
  %i.cpz = load float, ptr %i.cpy, align 4, !tbaa !9
  %i.cqa = fadd float %.sroa.13898.8.vec.extract904, %i.cpz
  store float %i.cqa, ptr %i.cpy, align 4, !tbaa !9
  %i.cqb = load <2 x float>, ptr %i.chd, align 4, !tbaa !9
  %i.cqc = fadd <2 x float> %i.clf, %i.cqb
  store <2 x float> %i.cqc, ptr %i.chd, align 4, !tbaa !9
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.chd, i64 8 ; 2 uses
  %i.cqe = load float, ptr %i.cqd, align 4, !tbaa !9
  %i.cqf = fadd float %i.cli, %i.cqe
  store float %i.cqf, ptr %i.cqd, align 4, !tbaa !9
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  store <2 x float> %.sroa.0885.0, ptr %i.cpv, align 4
  %.sroa.13898.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.chd, i64 24
  store <2 x float> %.sroa.13898.0, ptr %.sroa.13898.0..sroa_idx, align 4, !tbaa !11
  %i.cqg = load ptr, ptr %i.brx, align 8, !tbaa !38
  %i.cqh = getelementptr inbounds nuw [688 x i8], ptr %i.cqg, i64 %indvars.iv1641
  %i.cqi = getelementptr inbounds nuw i8, ptr %i.cqh, i64 568
  %i.cqj = load ptr, ptr %i.cqi, align 8, !tbaa !222 ; 2 uses
  store <2 x float> %i.clf, ptr %i.cqj, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cqj, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i5.i753, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bi, %bb.bh, %bb.bl, %bb.bk, %.loopexit1407
  %exitcond1645.not = icmp eq i64 %indvars.iv.next1642, %wide.trip.count1644
  br i1 %exitcond1645.not, label %._crit_edge1542.loopexit, label %bb.az, !llvm.loop !232

bb.bn:                                            ; preds = %._crit_edge1542
  %i.cqk = load i32, ptr %i.v, align 4, !tbaa !96 ; 2 uses
  %i.cql = icmp sgt i32 %i.cqk, -6
  br i1 %i.cql, label %.lr.ph.i787, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit

.lr.ph.i787:                                      ; preds = %bb.bn
  %i.cqm = load ptr, ptr %i.i, align 8, !tbaa !42 ; 8 uses
  %i.cqn = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 3 uses
  %i.cqo = add i32 %i.cqk, 5                      ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.cqo, i32 0) ; 2 uses
  %i.cqp = add nuw i32 %smax.i, 1
  %wide.trip.count.i788 = zext i32 %i.cqp to i64  ; 3 uses
  %min.iters.check1869 = icmp slt i32 %i.cqo, 11
  br i1 %min.iters.check1869, label %scalar.ph1868.preheader, label %vector.memcheck1861

vector.memcheck1861:                              ; preds = %.lr.ph.i787
  %i.cqq = zext nneg i32 %smax.i to i64           ; 2 uses
  %i.cqr = shl nuw nsw i64 %i.cqq, 2
  %i.cqs = getelementptr i8, ptr %i.cqm, i64 %i.cqr
  %scevgep1862 = getelementptr i8, ptr %i.cqs, i64 4 ; 2 uses
  %i.cqt = add nsw i64 %i.ec, %i.cqq
  %i.cqu = shl nsw i64 %i.cqt, 2
  %i.cqv = getelementptr i8, ptr %i.eb, i64 %i.cqu
  %scevgep1863 = getelementptr i8, ptr %i.cqv, i64 4
  %scevgep1864 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %bound0 = icmp ult ptr %i.cqm, %scevgep1863
  %bound1 = icmp ult ptr %i.ed, %scevgep1862
  %found.conflict = and i1 %bound0, %bound1
  %bound01865 = icmp ult ptr %i.cqm, %scevgep1864
  %bound11866 = icmp ult ptr %i.cqn, %scevgep1862
  %found.conflict1867 = and i1 %bound01865, %bound11866
  %conflict.rdx = or i1 %found.conflict, %found.conflict1867
  br i1 %conflict.rdx, label %scalar.ph1868.preheader, label %vector.ph1870

vector.ph1870:                                    ; preds = %vector.memcheck1861
  %n.vec1872 = and i64 %wide.trip.count.i788, 4294967292 ; 3 uses
  %i.cqw = load float, ptr %i.cqn, align 4, !tbaa !233, !alias.scope !234
  %broadcast.splatinsert1873 = insertelement <4 x float> poison, float %i.cqw, i64 0
  %broadcast.splat1874 = shufflevector <4 x float> %broadcast.splatinsert1873, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cqx = fneg <4 x float> %broadcast.splat1874  ; 2 uses
  %broadcast.splatinsert1875 = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat1876 = shufflevector <4 x float> %broadcast.splatinsert1875, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1877

vector.body1877:                                  ; preds = %pred.store.continue1886, %vector.ph1870
  %index1878 = phi i64 [ 0, %vector.ph1870 ], [ %index.next1887, %pred.store.continue1886 ] ; 6 uses
  %i.cqy = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %index1878
  %wide.load1879 = load <4 x float>, ptr %i.cqy, align 4, !tbaa !9, !alias.scope !237
  %i.cqz = getelementptr inbounds nuw [4 x i8], ptr %i.cqm, i64 %index1878 ; 3 uses
  %wide.load1880 = load <4 x float>, ptr %i.cqz, align 4, !tbaa !9, !alias.scope !239, !noalias !241
  %i.cra = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1879, <4 x float> %broadcast.splat1876, <4 x float> %wide.load1880) ; 3 uses
  store <4 x float> %i.cra, ptr %i.cqz, align 4, !tbaa !9, !alias.scope !239, !noalias !241
  %i.crb = fcmp olt <4 x float> %i.cra, %i.cqx    ; 2 uses
  %i.crc = fcmp olt <4 x float> %broadcast.splat1874, %i.cra
  %i.crd = or <4 x i1> %i.crb, %i.crc             ; 4 uses
  %predphi = select <4 x i1> %i.crb, <4 x float> %i.cqx, <4 x float> %broadcast.splat1874 ; 4 uses
  %i.cre = extractelement <4 x i1> %i.crd, i64 0
  br i1 %i.cre, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1877
  %i.crf = extractelement <4 x float> %predphi, i64 0
  store float %i.crf, ptr %i.cqz, align 4, !tbaa !9, !alias.scope !239, !noalias !241
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1877
  %i.crg = extractelement <4 x i1> %i.crd, i64 1
  br i1 %i.crg, label %pred.store.if1881, label %pred.store.continue1882

pred.store.if1881:                                ; preds = %pred.store.continue
  %i.crh = getelementptr inbounds nuw [4 x i8], ptr %i.cqm, i64 %index1878
  %i.cri = getelementptr inbounds nuw i8, ptr %i.crh, i64 4
  %i.crj = extractelement <4 x float> %predphi, i64 1
  store float %i.crj, ptr %i.cri, align 4, !tbaa !9, !alias.scope !239, !noalias !241
  br label %pred.store.continue1882

pred.store.continue1882:                          ; preds = %pred.store.if1881, %pred.store.continue
  %i.crk = extractelement <4 x i1> %i.crd, i64 2
  br i1 %i.crk, label %pred.store.if1883, label %pred.store.continue1884

pred.store.if1883:                                ; preds = %pred.store.continue1882
  %i.crl = getelementptr inbounds nuw [4 x i8], ptr %i.cqm, i64 %index1878
  %i.crm = getelementptr inbounds nuw i8, ptr %i.crl, i64 8
  %i.crn = extractelement <4 x float> %predphi, i64 2
  store float %i.crn, ptr %i.crm, align 4, !tbaa !9, !alias.scope !239, !noalias !241
  br label %pred.store.continue1884

pred.store.continue1884:                          ; preds = %pred.store.if1883, %pred.store.continue1882
  %i.cro = extractelement <4 x i1> %i.crd, i64 3
  br i1 %i.cro, label %pred.store.if1885, label %pred.store.continue1886

pred.store.if1885:                                ; preds = %pred.store.continue1884
  %i.crp = getelementptr inbounds nuw [4 x i8], ptr %i.cqm, i64 %index1878
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crp, i64 12
  %i.crr = extractelement <4 x float> %predphi, i64 3
  store float %i.crr, ptr %i.crq, align 4, !tbaa !9, !alias.scope !239, !noalias !241
  br label %pred.store.continue1886

pred.store.continue1886:                          ; preds = %pred.store.if1885, %pred.store.continue1884
  %index.next1887 = add nuw i64 %index1878, 4     ; 2 uses
  %i.crs = icmp eq i64 %index.next1887, %n.vec1872
  br i1 %i.crs, label %middle.block1888, label %vector.body1877, !llvm.loop !242

middle.block1888:                                 ; preds = %pred.store.continue1886
  %cmp.n1889 = icmp eq i64 %n.vec1872, %wide.trip.count.i788
  br i1 %cmp.n1889, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, label %scalar.ph1868.preheader

scalar.ph1868.preheader:                          ; preds = %vector.memcheck1861, %.lr.ph.i787, %middle.block1888
  %indvars.iv.i789.ph = phi i64 [ 0, %vector.memcheck1861 ], [ 0, %.lr.ph.i787 ], [ %n.vec1872, %middle.block1888 ]
  br label %scalar.ph1868

scalar.ph1868:                                    ; preds = %scalar.ph1868.preheader, %_Z7btClampIfEvRT_RKS0_S3_.exit.i
  %indvars.iv.i789 = phi i64 [ %indvars.iv.next.i790, %_Z7btClampIfEvRT_RKS0_S3_.exit.i ], [ %indvars.iv.i789.ph, %scalar.ph1868.preheader ] ; 3 uses
  %i.crt = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i789
  %i.cru = load float, ptr %i.crt, align 4, !tbaa !9
  %i.crv = getelementptr inbounds nuw [4 x i8], ptr %i.cqm, i64 %indvars.iv.i789 ; 3 uses
  %i.crw = load float, ptr %i.crv, align 4, !tbaa !9
  %i.crx = call float @llvm.fmuladd.f32(float %i.cru, float %1, float %i.crw) ; 3 uses
  store float %i.crx, ptr %i.crv, align 4, !tbaa !9
  %i.cry = load float, ptr %i.cqn, align 4, !tbaa !233 ; 3 uses
  %i.crz = fneg float %i.cry                      ; 2 uses
  %i.csa = fcmp olt float %i.crx, %i.crz
  br i1 %i.csa, label %.sink.split.i.i, label %bb.bo

bb.bo:                                            ; preds = %scalar.ph1868
  %i.csb = fcmp olt float %i.cry, %i.crx
  br i1 %i.csb, label %.sink.split.i.i, label %_Z7btClampIfEvRT_RKS0_S3_.exit.i

.sink.split.i.i:                                  ; preds = %bb.bo, %scalar.ph1868
  %.sink.i.i = phi float [ %i.crz, %scalar.ph1868 ], [ %i.cry, %bb.bo ]
  store float %.sink.i.i, ptr %i.crv, align 4, !tbaa !9
  br label %_Z7btClampIfEvRT_RKS0_S3_.exit.i

_Z7btClampIfEvRT_RKS0_S3_.exit.i:                 ; preds = %.sink.split.i.i, %bb.bo
  %indvars.iv.next.i790 = add nuw nsw i64 %indvars.iv.i789, 1 ; 2 uses
  %exitcond.not.i791 = icmp eq i64 %indvars.iv.next.i790, %wide.trip.count.i788
  br i1 %exitcond.not.i791, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, label %scalar.ph1868, !llvm.loop !243

_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit: ; preds = %_Z7btClampIfEvRT_RKS0_S3_.exit.i, %middle.block1888, %bb.bn, %._crit_edge1542
  %i.csc = getelementptr inbounds nuw i8, ptr %0, i64 637
  %i.csd = load i8, ptr %i.csc, align 1, !tbaa !146, !range !67, !noundef !68
  %i.cse = trunc nuw i8 %i.csd to i1
  %or.cond = and i1 %i.op, %i.cse
  br i1 %or.cond, label %.lr.ph1557, label %.loopexit

.lr.ph1557:                                       ; preds = %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit
  %i.csf = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.csg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.csh = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.csi = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.csj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.csk = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.csl = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 2 uses
  %i.csm = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %wide.trip.count1654 = zext nneg i32 %i.f to i64
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph1557, %._crit_edge1550
  %indvars.iv1651 = phi i64 [ 0, %.lr.ph1557 ], [ %indvars.iv.next1652, %._crit_edge1550 ] ; 4 uses
  %i.csn = load ptr, ptr %i.csf, align 8, !tbaa !38
  %i.cso = getelementptr inbounds nuw [688 x i8], ptr %i.csn, i64 %indvars.iv1651 ; 2 uses
  %i.csp = getelementptr inbounds nuw i8, ptr %i.cso, i64 20
  %i.csq = load i32, ptr %i.csp, align 4, !tbaa !84
  %indvars.iv.next1652 = add nuw nsw i64 %indvars.iv1651, 1 ; 5 uses
  %i.csr = getelementptr inbounds nuw [48 x i8], ptr %i.et, i64 %indvars.iv.next1652 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(48) %i.csr, i64 16, i1 false), !tbaa.struct !36
  %i.css = getelementptr inbounds nuw i8, ptr %i.csr, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.csg, ptr noundef nonnull align 4 dereferenceable(16) %i.css, i64 16, i1 false), !tbaa.struct !36
  %i.cst = getelementptr inbounds nuw i8, ptr %i.csr, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.csh, ptr noundef nonnull align 4 dereferenceable(16) %i.cst, i64 16, i1 false), !tbaa.struct !36
  %i.csu = getelementptr inbounds nuw i8, ptr %i.cso, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.csi, ptr noundef nonnull align 8 dereferenceable(16) %i.csu, i64 16, i1 false), !tbaa.struct !36
  %i.csv = getelementptr inbounds nuw [48 x i8], ptr %i.eo, i64 %indvars.iv.next1652 ; 6 uses
  %.sroa.201212.0..sroa_idx1213 = getelementptr inbounds nuw i8, ptr %i.csv, i64 8
  %.sroa.201212.0.copyload1214 = load float, ptr %.sroa.201212.0..sroa_idx1213, align 4 ; 4 uses
  %i.csw = getelementptr inbounds nuw i8, ptr %i.csv, i64 16
  %.sroa.461242.16..sroa_idx1243 = getelementptr inbounds nuw i8, ptr %i.csv, i64 24
  %.sroa.461242.16.copyload1244 = load float, ptr %.sroa.461242.16..sroa_idx1243, align 4 ; 4 uses
  %i.csx = getelementptr inbounds nuw i8, ptr %i.csv, i64 32
  %i.csy = load <2 x float>, ptr %i.csv, align 4  ; 4 uses
  %i.csz = load <2 x float>, ptr %i.csw, align 4  ; 4 uses
  %i.cta = load <2 x float>, ptr %i.csx, align 4  ; 4 uses
  %.sroa.72.32..sroa_idx1273 = getelementptr inbounds nuw i8, ptr %i.csv, i64 40
  %.sroa.72.32.copyload1274 = load float, ptr %.sroa.72.32..sroa_idx1273, align 4 ; 4 uses
  %i.ctb = sext i32 %i.csq to i64
  %i.ctc = getelementptr [32 x i8], ptr %i.ef, i64 %i.ctb ; 5 uses
  %i.ctd = getelementptr i8, ptr %i.ctc, i64 32
  %i.cte = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %indvars.iv.next1652 ; 6 uses
  %i.ctf = load float, ptr %i.ctd, align 4, !tbaa !9 ; 2 uses
  %i.ctg = getelementptr i8, ptr %i.ctc, i64 36
  %i.cth = load float, ptr %i.ctg, align 4, !tbaa !9 ; 2 uses
  %i.cti = load <4 x float>, ptr %i.csj, align 8
  %i.ctj = shufflevector <4 x float> %i.cti, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ctk = getelementptr i8, ptr %i.ctc, i64 40
  %i.ctl = load float, ptr %i.ctk, align 4, !tbaa !9 ; 2 uses
  %i.ctm = load float, ptr %i.csk, align 8, !tbaa !9
  %i.ctn = load <2 x float>, ptr %10, align 16, !tbaa !9 ; 2 uses
  %i.cto = load <2 x float>, ptr %i.csg, align 16, !tbaa !9 ; 2 uses
  %i.ctp = insertelement <2 x float> poison, float %i.cth, i64 0
  %i.ctq = shufflevector <2 x float> %i.ctp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ctr = shufflevector <2 x float> %i.ctn, <2 x float> %i.cto, <2 x i32> <i32 1, i32 3>
  %i.cts = fmul <2 x float> %i.ctq, %i.ctr
  %i.ctt = shufflevector <2 x float> %i.ctn, <2 x float> %i.cto, <2 x i32> <i32 0, i32 2>
  %i.ctu = insertelement <2 x float> poison, float %i.ctf, i64 0
  %i.ctv = shufflevector <2 x float> %i.ctu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ctw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ctt, <2 x float> %i.ctv, <2 x float> %i.cts)
  %i.ctx = insertelement <2 x float> %i.ctj, float %i.ctm, i64 1
  %i.cty = insertelement <2 x float> poison, float %i.ctl, i64 0
  %i.ctz = shufflevector <2 x float> %i.cty, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cua = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ctx, <2 x float> %i.ctz, <2 x float> %i.ctw) ; 4 uses
  %i.cub = load float, ptr %i.csh, align 16, !tbaa !9
  %i.cuc = load float, ptr %i.csl, align 4, !tbaa !9
  %i.cud = fmul float %i.cth, %i.cuc
  %i.cue = load float, ptr %i.csm, align 8, !tbaa !9
  store <2 x float> %i.cua, ptr %i.cte, align 4
  %.sroa.42.0..sroa_idx.i795 = getelementptr inbounds nuw i8, ptr %i.cte, i64 8 ; 2 uses
  %i.cuf = getelementptr i8, ptr %i.ctc, i64 48
  %i.cug = getelementptr i8, ptr %i.ctc, i64 56
  %i.cuh = load float, ptr %i.cug, align 4, !tbaa !9 ; 2 uses
  %i.cui = call float @llvm.fmuladd.f32(float %i.cub, float %i.ctf, float %i.cud)
  %i.cuj = call noundef float @llvm.fmuladd.f32(float %i.cue, float %i.ctl, float %i.cui) ; 4 uses
  %.sroa.3.12.vec.insert.i.i794 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cuj, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i794, ptr %.sroa.42.0..sroa_idx.i795, align 4, !tbaa !11
  %i.cuk = fneg float %i.cuj
  %i.cul = load <2 x float>, ptr %10, align 16, !tbaa !9 ; 2 uses
  %i.cum = load <4 x float>, ptr %i.csj, align 8
  %i.cun = shufflevector <4 x float> %i.cum, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cuo = load <2 x float>, ptr %i.csg, align 16, !tbaa !9 ; 2 uses
  %i.cup = shufflevector <2 x float> %i.cul, <2 x float> %i.cuo, <2 x i32> <i32 1, i32 3>
  %i.cuq = shufflevector <2 x float> %i.cul, <2 x float> %i.cuo, <2 x i32> <i32 0, i32 2>
  %i.cur = load float, ptr %i.csk, align 8, !tbaa !9
  %i.cus = insertelement <2 x float> %i.cun, float %i.cur, i64 1
  %i.cut = insertelement <2 x float> poison, float %i.cuh, i64 0
  %i.cuu = shufflevector <2 x float> %i.cut, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cuv = load <2 x float>, ptr %i.cuf, align 4, !tbaa !9 ; 4 uses
  %i.cuw = fneg <2 x float> %i.cua
  %i.cux = shufflevector <2 x float> %i.cuv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cuy = fmul <2 x float> %i.cux, %i.cup
  %i.cuz = shufflevector <2 x float> %i.cuv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cva = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cuq, <2 x float> %i.cuz, <2 x float> %i.cuy)
  %i.cvb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cus, <2 x float> %i.cuu, <2 x float> %i.cva)
  %i.cvc = load <4 x float>, ptr %i.csh, align 16
  %i.cvd = load <6 x float>, ptr %i.csl, align 4, !tbaa !9
  %i.cve = shufflevector <6 x float> %i.cvd, <6 x float> poison, <4 x i32> <i32 0, i32 3, i32 4, i32 5> ; 2 uses
  %i.cvf = shufflevector <2 x float> %i.cuv, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cvg = insertelement <4 x float> %i.cvf, float %i.cuk, i64 1
  %i.cvh = shufflevector <2 x float> %i.cuw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cvi = shufflevector <4 x float> %i.cvg, <4 x float> %i.cvh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cvj = fmul <4 x float> %i.cvi, %i.cve
  %i.cvk = shufflevector <4 x float> %i.cvj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.cvl = shufflevector <4 x float> %i.cvc, <4 x float> %i.cve, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cvm = shufflevector <2 x float> %i.cua, <2 x float> %i.cuv, <4 x i32> <i32 2, i32 1, i32 poison, i32 0>
  %i.cvn = insertelement <4 x float> %i.cvm, float %i.cuj, i64 2
  %i.cvo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cvl, <4 x float> %i.cvn, <4 x float> %i.cvk) ; 3 uses
  %i.cvp = load float, ptr %i.csm, align 8, !tbaa !9
  %i.cvq = extractelement <4 x float> %i.cvo, i64 0
  %i.cvr = call noundef float @llvm.fmuladd.f32(float %i.cvp, float %i.cuh, float %i.cvq)
  %i.cvs = shufflevector <4 x float> %i.cvo, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cvt = fsub <2 x float> %i.cvb, %i.cvs        ; 2 uses
  %i.cvu = extractelement <4 x float> %i.cvo, i64 1
  %i.cvv = fsub float %i.cvr, %i.cvu              ; 2 uses
  %.sroa.3.12.vec.insert.i37.i798 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cvv, i64 0
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.cte, i64 16 ; 3 uses
  store <2 x float> %i.cvt, ptr %i.cvw, align 4
  %.sroa.4.0..sroa_idx.i799 = getelementptr inbounds nuw i8, ptr %i.cte, i64 24 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i37.i798, ptr %.sroa.4.0..sroa_idx.i799, align 4, !tbaa !11
  %i.cvx = load ptr, ptr %i.csf, align 8, !tbaa !38
  %i.cvy = getelementptr inbounds nuw [688 x i8], ptr %i.cvx, i64 %indvars.iv1651 ; 7 uses
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvy, i64 556
  %i.cwa = load i32, ptr %i.cvz, align 4, !tbaa !86 ; 2 uses
  %i.cwb = icmp sgt i32 %i.cwa, 0
  br i1 %i.cwb, label %.lr.ph1549, label %._crit_edge1550

.lr.ph1549:                                       ; preds = %bb.bp
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.cvy, i64 136
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.cvy, i64 328
  %i.cwe = load i32, ptr %i.cwd, align 8, !tbaa !110
  %i.cwf = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.cwg = sext i32 %i.cwe to i64
  %i.cwh = getelementptr [4 x i8], ptr %i.cwf, i64 %i.cwg
  %i.cwi = getelementptr i8, ptr %i.cwh, i64 24
  %wide.trip.count1649 = zext nneg i32 %i.cwa to i64
  br label %bb.bq

._crit_edge1550:                                  ; preds = %bb.bq, %bb.bp
  %.sroa.01283.4.lcssa = phi <2 x float> [ zeroinitializer, %bb.bp ], [ %i.czb, %bb.bq ] ; 5 uses
  %.sroa.24.4.lcssa = phi <2 x float> [ zeroinitializer, %bb.bp ], [ %.sroa.24.8.vec.insert1332, %bb.bq ] ; 2 uses
  %.sroa.341333.4.lcssa = phi <2 x float> [ zeroinitializer, %bb.bp ], [ %i.czf, %bb.bq ] ; 5 uses
  %.sroa.511362.4.lcssa = phi <2 x float> [ zeroinitializer, %bb.bp ], [ %.sroa.511362.24.vec.insert1377, %bb.bq ] ; 2 uses
  %.sroa.01283.0.vec.extract1292 = extractelement <2 x float> %.sroa.01283.4.lcssa, i64 0
  %.sroa.01283.4.vec.extract1309 = extractelement <2 x float> %.sroa.01283.4.lcssa, i64 1
  %i.cwj = fadd <2 x float> %.sroa.01283.4.lcssa, %i.cua ; 5 uses
  store <2 x float> %i.cwj, ptr %i.cte, align 4, !tbaa !9
  %.sroa.24.8.vec.extract1326 = extractelement <2 x float> %.sroa.24.4.lcssa, i64 0 ; 2 uses
  %i.cwk = fadd float %.sroa.24.8.vec.extract1326, %i.cuj ; 3 uses
  store float %i.cwk, ptr %.sroa.42.0..sroa_idx.i795, align 4, !tbaa !9
  %.sroa.341333.16.vec.extract1342 = extractelement <2 x float> %.sroa.341333.4.lcssa, i64 0
  %.sroa.341333.20.vec.extract1355 = extractelement <2 x float> %.sroa.341333.4.lcssa, i64 1
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.cte, i64 20
  %i.cwm = fadd <2 x float> %.sroa.341333.4.lcssa, %i.cvt
  store <2 x float> %i.cwm, ptr %i.cvw, align 4, !tbaa !9
  %.sroa.511362.24.vec.extract1371 = extractelement <2 x float> %.sroa.511362.4.lcssa, i64 0 ; 2 uses
  %i.cwn = fadd float %.sroa.511362.24.vec.extract1371, %i.cvv
  store float %i.cwn, ptr %.sroa.4.0..sroa_idx.i799, align 4, !tbaa !9
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cvy, i64 72
  %i.cwp = extractelement <2 x float> %i.cwj, i64 1
  %i.cwq = extractelement <2 x float> %i.cwj, i64 0
  %i.cwr = shufflevector <2 x float> %i.cwj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cws = fmul <2 x float> %i.csz, %i.cwr
  %i.cwt = shufflevector <2 x float> %i.cwj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cwu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.csy, <2 x float> %i.cwt, <2 x float> %i.cws)
  %i.cwv = insertelement <2 x float> poison, float %i.cwk, i64 0
  %i.cww = shufflevector <2 x float> %i.cwv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cwx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cta, <2 x float> %i.cww, <2 x float> %i.cwu)
  %i.cwy = fmul float %.sroa.461242.16.copyload1244, %i.cwp
  %i.cwz = call float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload1214, float %i.cwq, float %i.cwy)
  %i.cxa = call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload1274, float %i.cwk, float %i.cwz)
  %.sroa.3.12.vec.insert.i.i802 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cxa, i64 0
  store <2 x float> %i.cwx, ptr %i.cwo, align 4
  %.sroa.42.0..sroa_idx.i803 = getelementptr inbounds nuw i8, ptr %i.cvy, i64 80
  store <2 x float> %.sroa.3.12.vec.insert.i.i802, ptr %.sroa.42.0..sroa_idx.i803, align 4, !tbaa !11
  %i.cxb = load float, ptr %i.cvw, align 4, !tbaa !9 ; 2 uses
  %i.cxc = load float, ptr %i.cwl, align 4, !tbaa !9 ; 2 uses
  %i.cxd = load float, ptr %.sroa.4.0..sroa_idx.i799, align 4, !tbaa !9 ; 2 uses
  %i.cxe = insertelement <2 x float> poison, float %i.cxc, i64 0
  %i.cxf = shufflevector <2 x float> %i.cxe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxg = fmul <2 x float> %i.csz, %i.cxf
  %i.cxh = insertelement <2 x float> poison, float %i.cxb, i64 0
  %i.cxi = shufflevector <2 x float> %i.cxh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.csy, <2 x float> %i.cxi, <2 x float> %i.cxg)
  %i.cxk = insertelement <2 x float> poison, float %i.cxd, i64 0
  %i.cxl = shufflevector <2 x float> %i.cxk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cta, <2 x float> %i.cxl, <2 x float> %i.cxj)
  %i.cxn = fmul float %.sroa.461242.16.copyload1244, %i.cxc
  %i.cxo = call float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload1214, float %i.cxb, float %i.cxn)
  %i.cxp = call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload1274, float %i.cxd, float %i.cxo)
  %.sroa.3.12.vec.insert.i19.i806 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cxp, i64 0
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cvy, i64 88
  store <2 x float> %i.cxm, ptr %i.cxq, align 4
  %.sroa.4.0..sroa_idx.i807 = getelementptr inbounds nuw i8, ptr %i.cvy, i64 96
  store <2 x float> %.sroa.3.12.vec.insert.i19.i806, ptr %.sroa.4.0..sroa_idx.i807, align 4, !tbaa !11
  %i.cxr = load ptr, ptr %i.csf, align 8, !tbaa !38
  %i.cxs = getelementptr inbounds nuw [688 x i8], ptr %i.cxr, i64 %indvars.iv1651 ; 4 uses
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cxs, i64 104
  %i.cxu = shufflevector <2 x float> %.sroa.01283.4.lcssa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cxv = fmul <2 x float> %i.csz, %i.cxu
  %i.cxw = shufflevector <2 x float> %.sroa.01283.4.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.csy, <2 x float> %i.cxw, <2 x float> %i.cxv)
  %i.cxy = shufflevector <2 x float> %.sroa.24.4.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cxz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cta, <2 x float> %i.cxy, <2 x float> %i.cxx)
  %i.cya = fmul float %.sroa.461242.16.copyload1244, %.sroa.01283.4.vec.extract1309
  %i.cyb = call float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload1214, float %.sroa.01283.0.vec.extract1292, float %i.cya)
  %i.cyc = call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload1274, float %.sroa.24.8.vec.extract1326, float %i.cyb)
  %.sroa.3.12.vec.insert.i.i810 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cyc, i64 0
  store <2 x float> %i.cxz, ptr %i.cxt, align 4
  %.sroa.42.0..sroa_idx.i811 = getelementptr inbounds nuw i8, ptr %i.cxs, i64 112
  store <2 x float> %.sroa.3.12.vec.insert.i.i810, ptr %.sroa.42.0..sroa_idx.i811, align 4, !tbaa !11
  %i.cyd = shufflevector <2 x float> %.sroa.341333.4.lcssa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cye = fmul <2 x float> %i.csz, %i.cyd
  %i.cyf = shufflevector <2 x float> %.sroa.341333.4.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.csy, <2 x float> %i.cyf, <2 x float> %i.cye)
  %i.cyh = shufflevector <2 x float> %.sroa.511362.4.lcssa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cta, <2 x float> %i.cyh, <2 x float> %i.cyg)
  %i.cyj = fmul float %.sroa.461242.16.copyload1244, %.sroa.341333.20.vec.extract1355
  %i.cyk = call float @llvm.fmuladd.f32(float %.sroa.201212.0.copyload1214, float %.sroa.341333.16.vec.extract1342, float %i.cyj)
  %i.cyl = call noundef float @llvm.fmuladd.f32(float %.sroa.72.32.copyload1274, float %.sroa.511362.24.vec.extract1371, float %i.cyk)
  %.sroa.3.12.vec.insert.i19.i814 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cyl, i64 0
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cxs, i64 120
  store <2 x float> %i.cyi, ptr %i.cym, align 4
  %.sroa.4.0..sroa_idx.i815 = getelementptr inbounds nuw i8, ptr %i.cxs, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i19.i814, ptr %.sroa.4.0..sroa_idx.i815, align 4, !tbaa !11
  %exitcond1655.not = icmp eq i64 %indvars.iv.next1652, %wide.trip.count1654
  br i1 %exitcond1655.not, label %.loopexit, label %bb.bp, !llvm.loop !244

bb.bq:                                            ; preds = %.lr.ph1549, %bb.bq
  %indvars.iv1646 = phi i64 [ 0, %.lr.ph1549 ], [ %indvars.iv.next1647, %bb.bq ] ; 3 uses
  %.sroa.511362.41546 = phi <2 x float> [ zeroinitializer, %.lr.ph1549 ], [ %.sroa.511362.24.vec.insert1377, %bb.bq ] ; 2 uses
  %.sroa.341333.41545 = phi <2 x float> [ zeroinitializer, %.lr.ph1549 ], [ %i.czf, %bb.bq ]
  %.sroa.24.41544 = phi <2 x float> [ zeroinitializer, %.lr.ph1549 ], [ %.sroa.24.8.vec.insert1332, %bb.bq ] ; 2 uses
  %.sroa.01283.41543 = phi <2 x float> [ zeroinitializer, %.lr.ph1549 ], [ %i.czb, %bb.bq ]
  %i.cyn = getelementptr inbounds nuw [32 x i8], ptr %i.cwc, i64 %indvars.iv1646 ; 4 uses
  %i.cyo = getelementptr inbounds nuw [4 x i8], ptr %i.cwi, i64 %indvars.iv1646
  %i.cyp = load float, ptr %i.cyo, align 4, !tbaa !9, !noalias !245 ; 3 uses
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cyn, i64 8
  %i.cyr = load float, ptr %i.cyq, align 4, !tbaa !9, !noalias !245
  %i.cys = fmul float %i.cyp, %i.cyr
  %i.cyt = getelementptr inbounds nuw i8, ptr %i.cyn, i64 16
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.cyn, i64 24
  %i.cyv = load float, ptr %i.cyu, align 4, !tbaa !9, !noalias !245
  %i.cyw = fmul float %i.cyp, %i.cyv
  %i.cyx = load <2 x float>, ptr %i.cyn, align 4, !tbaa !9, !noalias !245
  %i.cyy = insertelement <2 x float> poison, float %i.cyp, i64 0
  %i.cyz = shufflevector <2 x float> %i.cyy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cza = fmul <2 x float> %i.cyz, %i.cyx
  %i.czb = fadd <2 x float> %.sroa.01283.41543, %i.cza ; 2 uses
  %.sroa.24.8.vec.extract1330 = extractelement <2 x float> %.sroa.24.41544, i64 0
  %i.czc = fadd float %.sroa.24.8.vec.extract1330, %i.cys
  %.sroa.24.8.vec.insert1332 = insertelement <2 x float> %.sroa.24.41544, float %i.czc, i64 0 ; 2 uses
  %i.czd = load <2 x float>, ptr %i.cyt, align 4, !tbaa !9, !noalias !245
  %i.cze = fmul <2 x float> %i.cyz, %i.czd
  %i.czf = fadd <2 x float> %.sroa.341333.41545, %i.cze ; 2 uses
  %.sroa.511362.24.vec.extract1375 = extractelement <2 x float> %.sroa.511362.41546, i64 0
  %i.czg = fadd float %.sroa.511362.24.vec.extract1375, %i.cyw
  %.sroa.511362.24.vec.insert1377 = insertelement <2 x float> %.sroa.511362.41546, float %i.czg, i64 0 ; 2 uses
  %indvars.iv.next1647 = add nuw nsw i64 %indvars.iv1646, 1 ; 2 uses
  %exitcond1650.not = icmp eq i64 %indvars.iv.next1647, %wide.trip.count1649
  br i1 %exitcond1650.not, label %._crit_edge1550, label %bb.bq, !llvm.loop !248

.loopexit:                                        ; preds = %._crit_edge1550, %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not9 = icmp eq i32 %1, -1
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.010 = phi i32 [ %1, %.lr.ph ], [ %i.k, %bb.c ]
  %i.c = sext i32 %.010 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !151  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK11btMultiBody15isBaseKinematicEv.exit, label %_ZNK11btMultiBody15isLinkKinematicEi.exit

end_hunk_5
begin_hunk_6_@_ZNK11btMultiBody30calcAccelerationDeltasMultiDofEPKfPfR20btAlignedObjectArrayIfERS3_I9btVector3E:bb.a
  %i.lb = load <2 x float>, ptr %i.ku, align 4, !tbaa !9
  %i.lc = fadd <2 x float> %i.la, %i.lb
  store <2 x float> %i.lc, ptr %i.ku, align 4, !tbaa !9
  %i.ld = getelementptr i8, ptr %i.kt, i64 40     ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !9
  %i.lf = getelementptr i8, ptr %i.kt, i64 48     ; 2 uses
  %i.lg = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = fmul <2 x float> %i.hd, %i.lh
  %i.lj = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.lk = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ll = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.lk, <2 x float> %i.li)
  %i.lm = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.ln = shufflevector <2 x float> %i.lm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.ln, <2 x float> %i.ll)
  %i.lp = load <2 x float>, ptr %i.lf, align 4, !tbaa !9
  %i.lq = fadd <2 x float> %i.lo, %i.lp
  store <2 x float> %i.lq, ptr %i.lf, align 4, !tbaa !9
  %i.lr = getelementptr i8, ptr %i.kt, i64 56     ; 2 uses
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !9
  %i.lt = insertelement <2 x float> poison, float %.sroa.38.16.copyload300, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = insertelement <2 x float> %i.jz, float %i.kq, i64 1
  %i.lw = fmul <2 x float> %i.lu, %i.lv
  %i.lx = insertelement <2 x float> poison, float %.sroa.17.0.copyload270, i64 0
  %i.ly = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lz = insertelement <2 x float> %i.kv, float %i.ko, i64 1
  %i.ma = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ly, <2 x float> %i.lz, <2 x float> %i.lw)
  %i.mb = insertelement <2 x float> poison, float %.sroa.59.32.copyload330, i64 0
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = insertelement <2 x float> %i.ky, float %i.kr, i64 1
  %i.me = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mc, <2 x float> %i.md, <2 x float> %i.ma)
  %i.mf = insertelement <2 x float> poison, float %i.le, i64 0
  %i.mg = insertelement <2 x float> %i.mf, float %i.ls, i64 1
  %i.mh = fadd <2 x float> %i.me, %i.mg           ; 2 uses
  %i.mi = extractelement <2 x float> %i.mh, i64 0
  store float %i.mi, ptr %i.ld, align 4, !tbaa !9
  %i.mj = extractelement <2 x float> %i.mh, i64 1
  store float %i.mj, ptr %i.lr, align 4, !tbaa !9
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph384, %bb.u
  %indvars.iv434 = phi i64 [ 0, %.lr.ph384 ], [ %indvars.iv.next435, %bb.u ] ; 3 uses
  %i.mk = phi float [ %.sroa.18.0.copyload, %.lr.ph384 ], [ %i.ne, %bb.u ]
  %i.ml = phi float [ %.sroa.0.0.copyload, %.lr.ph384 ], [ %i.nc, %bb.u ]
  %i.mm = phi <4 x float> [ %i.jw, %.lr.ph384 ], [ %i.nd, %bb.u ]
  %gep512 = getelementptr [32 x i8], ptr %invariant.gep511, i64 %indvars.iv434 ; 4 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv434
  %i.mo = getelementptr inbounds nuw i8, ptr %gep512, i64 16
  %i.mp = load float, ptr %i.mn, align 4, !tbaa !9, !noalias !362 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %gep512, i64 24
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !9, !noalias !362
  %i.ms = fmul float %i.mp, %i.mr
  %i.mt = load float, ptr %gep512, align 4, !tbaa !9, !noalias !362
  %i.mu = fmul float %i.mp, %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %gep512, i64 4
  %i.mw = load <2 x float>, ptr %i.mo, align 4, !tbaa !9, !noalias !362
  %i.mx = load <2 x float>, ptr %i.mv, align 4, !tbaa !9, !noalias !362
  %i.my = insertelement <4 x float> poison, float %i.mp, i64 0
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <4 x i32> zeroinitializer
  %i.na = shufflevector <2 x float> %i.mw, <2 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nb = fmul <4 x float> %i.mz, %i.na
  %i.nc = fadd float %i.mu, %i.ml                 ; 2 uses
  %i.nd = fadd <4 x float> %i.nb, %i.mm           ; 2 uses
  %i.ne = fadd float %i.ms, %i.mk                 ; 2 uses
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next435, %wide.trip.count437
  br i1 %exitcond438.not, label %._crit_edge385, label %bb.u, !llvm.loop !365

bb.v:                                             ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit, %._crit_edge385
  %i.nf = icmp sgt i64 %indvars.iv439, 1
  br i1 %i.nf, label %.lr.ph.i164, label %._crit_edge400, !llvm.loop !366

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread: ; preds = %._crit_edge400, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dk, i8 0, i64 32, i1 false)
  br label %bb.w

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread360: ; preds = %bb.p, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163
  call void @_ZNK11btMultiBody12solveImatrixERK20btSpatialForceVectorR21btSpatialMotionVector(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.dg, ptr noundef nonnull align 4 dereferenceable(32) %5)
  %i.ng = load <2 x float>, ptr %5, align 8, !tbaa !9, !noalias !367
  %i.nh = fneg <2 x float> %i.ng                  ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nj = load float, ptr %i.ni, align 8, !tbaa !9, !noalias !367
  %i.nk = fneg float %i.nj                        ; 2 uses
  %.sroa.3.12.vec.insert.i.i174 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nk, i64 0
  %i.nl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.nm = load <2 x float>, ptr %i.nl, align 8, !tbaa !9, !noalias !367
  %i.nn = fneg <2 x float> %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.np = load float, ptr %i.no, align 8, !tbaa !9, !noalias !367
  %i.nq = fneg float %i.np
  %.sroa.3.12.vec.insert.i3.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nq, i64 0
  store <2 x float> %i.nh, ptr %i.dk, align 4
  %.sroa.4227.0..sroa_idx = getelementptr i8, ptr %.pn, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i.i174, ptr %.sroa.4227.0..sroa_idx, align 4, !tbaa !11
  %.sroa.5228.0..sroa_idx = getelementptr i8, ptr %.pn, i64 48
  store <2 x float> %i.nn, ptr %.sroa.5228.0..sroa_idx, align 4
  %.sroa.6229.0..sroa_idx = getelementptr i8, ptr %.pn, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i3.i, ptr %.sroa.6229.0..sroa_idx, align 4, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread360, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread
  %i.nr = phi float [ %i.nk, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread360 ], [ 0.000000e+00, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread ]
  %i.ns = phi <2 x float> [ %i.nh, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread360 ], [ zeroinitializer, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread ]
  br i1 %i.ft, label %.lr.ph413, label %._crit_edge414

.lr.ph413:                                        ; preds = %bb.w
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count455 = zext nneg i32 %i.e to i64
  %.pre461 = load ptr, ptr %i.nt, align 8, !tbaa !38
  br label %bb.x

._crit_edge414.loopexit:                          ; preds = %.loopexit
  %i.nv = load <2 x float>, ptr %i.dk, align 4, !tbaa !9
  %.phi.trans.insert467 = getelementptr i8, ptr %.pn, i64 40
  %.pre468 = load float, ptr %.phi.trans.insert467, align 4, !tbaa !9
  br label %._crit_edge414

._crit_edge414:                                   ; preds = %._crit_edge414.loopexit, %bb.w
  %i.nw = phi float [ %.pre468, %._crit_edge414.loopexit ], [ %i.nr, %bb.w ] ; 4 uses
  %i.nx = phi <2 x float> [ %i.nv, %._crit_edge414.loopexit ], [ %i.ns, %bb.w ] ; 4 uses
  %i.ny = add i64 %i.dj, 44
  %i.nz = add i64 %i.a, 24                        ; 2 uses
  %i.oa = add i64 %.pn559, 48
  %i.ob = add i64 %.pn559, 60
  %rt.bound0 = icmp ugt i64 %i.ny, %i.a
  %rt.bound1 = icmp ugt i64 %i.nz, %i.dj
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound0560 = icmp ugt i64 %i.ob, %i.a
  %rt.bound1561 = icmp ult i64 %i.oa, %i.nz
  %rt.conflict562 = and i1 %rt.bound0560, %rt.bound1561
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict562
  %rt.guard = freeze i1 %rt.conflict.all
  br i1 %rt.guard, label %._crit_edge414.rtscalar, label %._crit_edge414.rtvec

bb.x:                                             ; preds = %.lr.ph413, %.loopexit
  %i.oc = phi ptr [ %.pre461, %.lr.ph413 ], [ %i.xd, %.loopexit ] ; 3 uses
  %indvars.iv452 = phi i64 [ 0, %.lr.ph413 ], [ %indvars.iv.next453.pre-phi, %.loopexit ] ; 5 uses
  %i.od = trunc nuw nsw i64 %indvars.iv452 to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.010.i183 = phi i32 [ %i.od, %bb.x ], [ %i.om, %bb.z ]
  %i.oe = sext i32 %.010.i183 to i64
  %i.of = getelementptr inbounds [688 x i8], ptr %i.oc, i64 %i.oe ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 544
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !151 ; 2 uses
  %.not.i.i184 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i184, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit191.thread, label %_ZNK11btMultiBody15isLinkKinematicEi.exit.i185

_ZNK11btMultiBody15isLinkKinematicEi.exit.i185:   ; preds = %bb.y
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 224
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !131
  %i.ok = and i32 %i.oj, 2
  %.not8.i186 = icmp eq i32 %i.ok, 0
  br i1 %.not8.i186, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit191.thread, label %bb.z

bb.z:                                             ; preds = %_ZNK11btMultiBody15isLinkKinematicEi.exit.i185
  %i.ol = getelementptr inbounds nuw i8, ptr %i.of, i64 20
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !84 ; 2 uses
  %.not.i187 = icmp eq i32 %i.om, -1
  br i1 %.not.i187, label %._crit_edge.i188, label %bb.y, !llvm.loop !152

._crit_edge.i188:                                 ; preds = %bb.z
  %i.on = load ptr, ptr %i.nu, align 8, !tbaa !130 ; 2 uses
  %.not.i6.i189 = icmp eq ptr %i.on, null
  br i1 %.not.i6.i189, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit191.thread, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit191

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit191: ; preds = %._crit_edge.i188
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 224
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !131
  %i.oq = and i32 %i.op, 2
  %.not365 = icmp eq i32 %i.oq, 0
  br i1 %.not365, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit191.thread, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit191..loopexit_crit_edge

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit191..loopexit_crit_edge: ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit191
  %.pre470 = add nuw nsw i64 %indvars.iv452, 1
  br label %.loopexit

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit191.thread: ; preds = %bb.y, %_ZNK11btMultiBody15isLinkKinematicEi.exit.i185, %._crit_edge.i188, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit191
  %i.or = getelementptr inbounds nuw [688 x i8], ptr %i.oc, i64 %indvars.iv452 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 20
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !84
  %i.ou = add nuw nsw i64 %indvars.iv452, 1       ; 4 uses
  %i.ov = getelementptr inbounds nuw [48 x i8], ptr %i.dh, i64 %i.ou ; 9 uses
  %.sroa.11259.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %.sroa.17.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %.sroa.17.0.copyload272 = load float, ptr %.sroa.17.0..sroa_idx271, align 4 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %.sroa.32.16..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.ov, i64 20
  %.sroa.38.16..sroa_idx301 = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %.sroa.38.16.copyload302 = load float, ptr %.sroa.38.16..sroa_idx301, align 4 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %.sroa.44312.32.copyload319 = load float, ptr %i.ox, align 4 ; 2 uses
  %.sroa.53.32..sroa_idx322 = getelementptr inbounds nuw i8, ptr %i.ov, i64 36
  %.sroa.53.32.copyload323 = load float, ptr %.sroa.53.32..sroa_idx322, align 4 ; 2 uses
  %.sroa.59.32..sroa_idx331 = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %.sroa.59.32.copyload332 = load float, ptr %.sroa.59.32..sroa_idx331, align 4 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.or, i64 352
  %.sroa.65342.48.copyload = load float, ptr %i.oy, align 8
  %.sroa.69.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.or, i64 356
  %.sroa.69.48.copyload = load float, ptr %.sroa.69.48..sroa_idx, align 4
  %.sroa.71.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.or, i64 360
  %.sroa.71.48.copyload = load float, ptr %.sroa.71.48..sroa_idx, align 8
  %i.oz = sext i32 %i.ot to i64
  %i.pa = getelementptr [32 x i8], ptr %i.dk, i64 %i.oz ; 6 uses
  %i.pb = getelementptr i8, ptr %i.pa, i64 32
  %i.pc = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.ou ; 6 uses
  %i.pd = load float, ptr %i.pb, align 4, !tbaa !9 ; 2 uses
  %i.pe = getelementptr i8, ptr %i.pa, i64 36
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !9 ; 2 uses
  %i.pg = getelementptr i8, ptr %i.pa, i64 40
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !9 ; 2 uses
  %i.pi = load <2 x float>, ptr %i.ov, align 4    ; 3 uses
  %.sroa.11259.0.copyload263 = load float, ptr %.sroa.11259.0..sroa_idx262, align 4
  %i.pj = load <2 x float>, ptr %i.ow, align 4    ; 3 uses
  %.sroa.32.16.copyload293 = load float, ptr %.sroa.32.16..sroa_idx292, align 4
  %i.pk = shufflevector <2 x float> %i.pi, <2 x float> %i.pj, <2 x i32> <i32 1, i32 3>
  %i.pl = insertelement <2 x float> poison, float %i.pf, i64 0
  %i.pm = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pn = fmul <2 x float> %i.pk, %i.pm
  %i.po = shufflevector <2 x float> %i.pi, <2 x float> %i.pj, <2 x i32> <i32 0, i32 2>
  %i.pp = insertelement <2 x float> poison, float %i.pd, i64 0
  %i.pq = shufflevector <2 x float> %i.pp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.po, <2 x float> %i.pq, <2 x float> %i.pn)
  %i.ps = insertelement <2 x float> poison, float %.sroa.17.0.copyload272, i64 0
  %i.pt = insertelement <2 x float> %i.ps, float %.sroa.38.16.copyload302, i64 1
  %i.pu = insertelement <2 x float> poison, float %i.ph, i64 0
  %i.pv = shufflevector <2 x float> %i.pu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pt, <2 x float> %i.pv, <2 x float> %i.pr) ; 8 uses
  %i.px = fmul float %.sroa.53.32.copyload323, %i.pf
  %i.py = tail call float @llvm.fmuladd.f32(float %.sroa.44312.32.copyload319, float %i.pd, float %i.px)
  %i.pz = tail call noundef float @llvm.fmuladd.f32(float %.sroa.59.32.copyload332, float %i.ph, float %i.py) ; 5 uses
  %.sroa.3.12.vec.insert.i.i194 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.pz, i64 0
  store <2 x float> %i.pw, ptr %i.pc, align 4
  %.sroa.42.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i194, ptr %.sroa.42.0..sroa_idx.i195, align 4, !tbaa !11
  %i.qa = extractelement <2 x float> %i.pw, i64 1
  %i.qb = fneg float %i.qa
  %6 = fneg float %i.pz
  %7 = extractelement <2 x float> %i.pw, i64 0
  %i.qc = fneg float %7
  %8 = getelementptr i8, ptr %i.pa, i64 48
  %9 = getelementptr i8, ptr %i.pa, i64 52
  %10 = load <2 x float>, ptr %8, align 4, !tbaa !9 ; 2 uses
  %11 = load float, ptr %9, align 4, !tbaa !9     ; 2 uses
  %12 = insertelement <4 x float> poison, float %.sroa.71.48.copyload, i64 0
  %13 = insertelement <4 x float> %12, float %.sroa.65342.48.copyload, i64 1
  %14 = insertelement <4 x float> %13, float %.sroa.69.48.copyload, i64 2 ; 2 uses
  %15 = insertelement <4 x float> %14, float %.sroa.11259.0.copyload263, i64 3
  %16 = insertelement <4 x float> poison, float %i.qb, i64 0
  %17 = insertelement <4 x float> %16, float %6, i64 1
  %18 = insertelement <4 x float> %17, float %i.qc, i64 2
  %19 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %20 = shufflevector <4 x float> %18, <4 x float> %19, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %21 = fmul <4 x float> %15, %20
  %22 = shufflevector <2 x float> %i.pi, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %23 = shufflevector <4 x float> %22, <4 x float> %14, <4 x i32> <i32 6, i32 4, i32 5, i32 3>
  %24 = shufflevector <2 x float> %i.pw, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %25 = insertelement <4 x float> %24, float %i.pz, i64 0
  %26 = shufflevector <4 x float> %25, <4 x float> %19, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %27 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %23, <4 x float> %26, <4 x float> %21) ; 4 uses
  %i.qd = getelementptr i8, ptr %i.pa, i64 56
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !9 ; 3 uses
  %28 = extractelement <4 x float> %27, i64 3
  %i.qf = tail call noundef float @llvm.fmuladd.f32(float %.sroa.17.0.copyload272, float %i.qe, float %28)
  %i.qg = fmul float %.sroa.32.16.copyload293, %11
  %29 = extractelement <2 x float> %i.pj, i64 0
  %i.qh = extractelement <2 x float> %10, i64 0   ; 2 uses
  %i.qi = tail call float @llvm.fmuladd.f32(float %29, float %i.qh, float %i.qg)
  %i.qj = tail call noundef float @llvm.fmuladd.f32(float %.sroa.38.16.copyload302, float %i.qe, float %i.qi)
  %i.qk = fmul float %.sroa.53.32.copyload323, %11
  %i.ql = tail call float @llvm.fmuladd.f32(float %.sroa.44312.32.copyload319, float %i.qh, float %i.qk)
  %i.qm = tail call noundef float @llvm.fmuladd.f32(float %.sroa.59.32.copyload332, float %i.qe, float %i.ql)
  %30 = extractelement <4 x float> %27, i64 0
  %i.qn = fsub float %i.qf, %30                   ; 2 uses
  %31 = extractelement <4 x float> %27, i64 1
  %i.qo = fsub float %i.qj, %31                   ; 3 uses
  %32 = extractelement <4 x float> %27, i64 2
  %i.qp = fsub float %i.qm, %32                   ; 3 uses
  %.sroa.0.0.vec.insert.i35.i = insertelement <2 x float> poison, float %i.qn, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i36.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i35.i, float %i.qo, i64 1
  %.sroa.3.12.vec.insert.i37.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qp, i64 0
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i36.i, ptr %i.qq, align 4
  %.sroa.4.0..sroa_idx.i196 = getelementptr inbounds nuw i8, ptr %i.pc, i64 24 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i37.i, ptr %.sroa.4.0..sroa_idx.i196, align 4, !tbaa !11
  %i.qr = load ptr, ptr %i.nt, align 8, !tbaa !38 ; 3 uses
  %i.qs = getelementptr inbounds nuw [688 x i8], ptr %i.qr, i64 %indvars.iv452 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 556
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !86 ; 7 uses
  %i.qv = icmp sgt i32 %i.qu, 0
  br i1 %i.qv, label %.lr.ph402, label %.loopexit

.lr.ph402:                                        ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit191.thread
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 328
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !110 ; 3 uses
  %i.qy = sext i32 %i.qx to i64                   ; 7 uses
  %wide.trip.count445 = zext nneg i32 %i.qu to i64 ; 5 uses
  %min.iters.check539 = icmp ult i32 %i.qu, 5
  br i1 %min.iters.check539, label %scalar.ph538.preheader, label %vector.ph540

scalar.ph538.preheader:                           ; preds = %vector.body553, %.lr.ph402
  %indvars.iv442.ph = phi i64 [ 0, %.lr.ph402 ], [ %n.vec542, %vector.body553 ]
  %i.qz = insertelement <2 x float> %i.pw, float %i.qo, i64 0
  %i.ra = shufflevector <2 x float> %.sroa.0.0.vec.insert.i35.i, <2 x float> %i.pw, <2 x i32> <i32 0, i32 2>
  %i.rb = insertelement <2 x float> poison, float %i.qp, i64 0
  %i.rc = insertelement <2 x float> %i.rb, float %i.pz, i64 1
  br label %scalar.ph538

vector.ph540:                                     ; preds = %.lr.ph402
  %n.mod.vf541 = and i64 %wide.trip.count445, 3   ; 2 uses
  %i.rd = icmp eq i64 %n.mod.vf541, 0
  %i.re = select i1 %i.rd, i64 4, i64 %n.mod.vf541
  %n.vec542 = sub nsw i64 %wide.trip.count445, %i.re ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.qo, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert543 = insertelement <4 x float> poison, float %i.qn, i64 0
  %broadcast.splat544 = shufflevector <4 x float> %broadcast.splatinsert543, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert545 = insertelement <4 x float> poison, float %i.qp, i64 0
  %broadcast.splat546 = shufflevector <4 x float> %broadcast.splatinsert545, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat548 = shufflevector <2 x float> %i.pw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat550 = shufflevector <2 x float> %i.pw, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert551 = insertelement <4 x float> poison, float %i.pz, i64 0
  %broadcast.splat552 = shufflevector <4 x float> %broadcast.splatinsert551, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body553

vector.body553:                                   ; preds = %vector.body553, %vector.ph540
  %index554 = phi i64 [ 0, %vector.ph540 ], [ %index.next556, %vector.body553 ] ; 6 uses
  %i.rf = add nsw i64 %index554, %i.qy            ; 2 uses
  %i.rg = getelementptr inbounds [32 x i8], ptr %i.de, i64 %i.rf ; 6 uses
  %i.rh = getelementptr [32 x i8], ptr %i.de, i64 %index554
  %i.ri = getelementptr i8, ptr %i.rh, i64 32
  %i.rj = getelementptr [32 x i8], ptr %i.ri, i64 %i.qy ; 6 uses
  %i.rk = getelementptr [32 x i8], ptr %i.de, i64 %index554
  %i.rl = getelementptr i8, ptr %i.rk, i64 64
  %i.rm = getelementptr [32 x i8], ptr %i.rl, i64 %i.qy ; 6 uses
  %i.rn = getelementptr [32 x i8], ptr %i.de, i64 %index554
  %i.ro = getelementptr i8, ptr %i.rn, i64 96
  %i.rp = getelementptr [32 x i8], ptr %i.ro, i64 %i.qy ; 6 uses
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.rf
  %wide.load555 = load <4 x float>, ptr %i.rq, align 4, !tbaa !9
  %i.rr = load float, ptr %i.rg, align 4, !tbaa !9
  %i.rs = load float, ptr %i.rj, align 4, !tbaa !9
  %i.rt = load float, ptr %i.rm, align 4, !tbaa !9
  %i.ru = load float, ptr %i.rp, align 4, !tbaa !9
  %i.rv = insertelement <4 x float> poison, float %i.rr, i64 0
  %i.rw = insertelement <4 x float> %i.rv, float %i.rs, i64 1
  %i.rx = insertelement <4 x float> %i.rw, float %i.rt, i64 2
  %i.ry = insertelement <4 x float> %i.rx, float %i.ru, i64 3
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rg, i64 4
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rm, i64 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rp, i64 4
  %i.sd = load float, ptr %i.rz, align 4, !tbaa !9
  %i.se = load float, ptr %i.sa, align 4, !tbaa !9
  %i.sf = load float, ptr %i.sb, align 4, !tbaa !9
  %i.sg = load float, ptr %i.sc, align 4, !tbaa !9
  %i.sh = insertelement <4 x float> poison, float %i.sd, i64 0
  %i.si = insertelement <4 x float> %i.sh, float %i.se, i64 1
  %i.sj = insertelement <4 x float> %i.si, float %i.sf, i64 2
  %i.sk = insertelement <4 x float> %i.sj, float %i.sg, i64 3
  %i.sl = fmul <4 x float> %broadcast.splat, %i.sk
  %i.sm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat544, <4 x float> %i.ry, <4 x float> %i.sl)
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.sr = load float, ptr %i.sn, align 4, !tbaa !9
  %i.ss = load float, ptr %i.so, align 4, !tbaa !9
  %i.st = load float, ptr %i.sp, align 4, !tbaa !9
  %i.su = load float, ptr %i.sq, align 4, !tbaa !9
  %i.sv = insertelement <4 x float> poison, float %i.sr, i64 0
  %i.sw = insertelement <4 x float> %i.sv, float %i.ss, i64 1
  %i.sx = insertelement <4 x float> %i.sw, float %i.st, i64 2
  %i.sy = insertelement <4 x float> %i.sx, float %i.su, i64 3
  %i.sz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat546, <4 x float> %i.sy, <4 x float> %i.sm)
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.tc = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.te = load float, ptr %i.ta, align 4, !tbaa !9
  %i.tf = load float, ptr %i.tb, align 4, !tbaa !9
  %i.tg = load float, ptr %i.tc, align 4, !tbaa !9
  %i.th = load float, ptr %i.td, align 4, !tbaa !9
  %i.ti = insertelement <4 x float> poison, float %i.te, i64 0
  %i.tj = insertelement <4 x float> %i.ti, float %i.tf, i64 1
  %i.tk = insertelement <4 x float> %i.tj, float %i.tg, i64 2
  %i.tl = insertelement <4 x float> %i.tk, float %i.th, i64 3
  %i.tm = getelementptr inbounds nuw i8, ptr %i.rg, i64 20
  %i.tn = getelementptr inbounds nuw i8, ptr %i.rj, i64 20
  %i.to = getelementptr inbounds nuw i8, ptr %i.rm, i64 20
  %i.tp = getelementptr inbounds nuw i8, ptr %i.rp, i64 20
  %i.tq = load float, ptr %i.tm, align 4, !tbaa !9
  %i.tr = load float, ptr %i.tn, align 4, !tbaa !9
  %i.ts = load float, ptr %i.to, align 4, !tbaa !9
  %i.tt = load float, ptr %i.tp, align 4, !tbaa !9
  %i.tu = insertelement <4 x float> poison, float %i.tq, i64 0
  %i.tv = insertelement <4 x float> %i.tu, float %i.tr, i64 1
  %i.tw = insertelement <4 x float> %i.tv, float %i.ts, i64 2
  %i.tx = insertelement <4 x float> %i.tw, float %i.tt, i64 3
  %i.ty = fmul <4 x float> %broadcast.splat548, %i.tx
  %i.tz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat550, <4 x float> %i.tl, <4 x float> %i.ty)
  %i.ua = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.ub = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.uc = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.ud = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.ue = load float, ptr %i.ua, align 4, !tbaa !9
  %i.uf = load float, ptr %i.ub, align 4, !tbaa !9
  %i.ug = load float, ptr %i.uc, align 4, !tbaa !9
  %i.uh = load float, ptr %i.ud, align 4, !tbaa !9
  %i.ui = insertelement <4 x float> poison, float %i.ue, i64 0
  %i.uj = insertelement <4 x float> %i.ui, float %i.uf, i64 1
  %i.uk = insertelement <4 x float> %i.uj, float %i.ug, i64 2
  %i.ul = insertelement <4 x float> %i.uk, float %i.uh, i64 3
  %i.um = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat552, <4 x float> %i.ul, <4 x float> %i.tz)
  %i.un = fadd <4 x float> %i.sz, %i.um
  %i.uo = fsub <4 x float> %wide.load555, %i.un
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index554
  store <4 x float> %i.uo, ptr %i.up, align 16, !tbaa !9
  %index.next556 = add nuw i64 %index554, 4       ; 2 uses
  %i.uq = icmp eq i64 %index.next556, %n.vec542
  br i1 %i.uq, label %scalar.ph538.preheader, label %vector.body553, !llvm.loop !370

.preheader.us.preheader.i:                        ; preds = %scalar.ph538
  %i.ur = mul nsw i32 %i.qx, %i.qx
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.us
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.qy
  %i.uv = zext nneg i32 %i.qu to i64              ; 2 uses
  %xtraiter581 = and i64 %wide.trip.count445, 1
  %i.uw = icmp eq i32 %i.qu, 1
  %unroll_iter587 = and i64 %wide.trip.count445, 2147483646
  %lcmp.mod585.not = icmp eq i64 %xtraiter581, 0
  %lcmp.mod586 = trunc i32 %i.qu to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.us.i, %.preheader.us.preheader.i
  %indvars.iv43.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next44.i, %._crit_edge.us.us.i ] ; 3 uses
  %i.ux = mul nuw nsw i64 %indvars.iv43.i, %i.uv
  %invariant.gep52.i = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %indvars.iv43.i ; 4 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ut, i64 %i.ux ; 3 uses
  store float 0.000000e+00, ptr %invariant.gep52.i, align 4, !tbaa !9
  br i1 %i.uw, label %.epil.preheader580, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i198 = phi i64 [ %indvars.iv.next.i199.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 4 uses
  %i.uy = phi float [ %i.ve, %.preheader.us.i.new ], [ 0.000000e+00, %.preheader.us.i ]
  %niter588 = phi i64 [ %niter588.next.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i198
  %i.uz = load float, ptr %gep.i, align 4, !tbaa !9
  %gep51.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i198
  %i.va = load float, ptr %gep51.i, align 8, !tbaa !9
  %i.vb = tail call float @llvm.fmuladd.f32(float %i.uz, float %i.va, float %i.uy) ; 2 uses
  store float %i.vb, ptr %invariant.gep52.i, align 4, !tbaa !9
  %indvars.iv.next.i199 = or disjoint i64 %indvars.iv.i198, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i199
  %i.vc = load float, ptr %gep.i.1, align 4, !tbaa !9
  %gep51.i.1 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i199
  %i.vd = load float, ptr %gep51.i.1, align 4, !tbaa !9
  %i.ve = tail call float @llvm.fmuladd.f32(float %i.vc, float %i.vd, float %i.vb) ; 3 uses
  store float %i.ve, ptr %invariant.gep52.i, align 4, !tbaa !9
  %indvars.iv.next.i199.1 = add nuw nsw i64 %indvars.iv.i198, 2 ; 2 uses
  %niter588.next.1 = add i64 %niter588, 2         ; 2 uses
  %niter588.ncmp.1 = icmp eq i64 %niter588.next.1, %unroll_iter587
  br i1 %niter588.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !215

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod585.not, label %._crit_edge.us.us.i, label %.epil.preheader580

.epil.preheader580:                               ; preds = %._crit_edge.us.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i198.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i199.1, %._crit_edge.us.us.i.unr-lcssa ] ; 2 uses
  %.epil.init584 = phi float [ 0.000000e+00, %.preheader.us.i ], [ %i.ve, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod586)
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i198.epil.init
  %i.vf = load float, ptr %gep.i.epil, align 4, !tbaa !9
  %gep51.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i198.epil.init
  %i.vg = load float, ptr %gep51.i.epil, align 4, !tbaa !9
  %i.vh = tail call float @llvm.fmuladd.f32(float %i.vf, float %i.vg, float %.epil.init584)
  store float %i.vh, ptr %invariant.gep52.i, align 4, !tbaa !9
end_hunk_6
