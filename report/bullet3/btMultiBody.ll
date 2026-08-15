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
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.x, <2 x float> %i.u) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !9
  %i.ad = fmul float %i.c, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9
  store <2 x float> %i.y, ptr %4, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = extractelement <2 x float> %i.y, i64 1  ; 2 uses
  %i.al = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.a, float %i.ad)
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.h, float %i.am) ; 3 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !11
  %i.ao = load float, ptr %i.ah, align 4, !tbaa !9 ; 2 uses
  %i.ap = load float, ptr %i.ag, align 4, !tbaa !9 ; 2 uses
  %i.aq = load float, ptr %1, align 4, !tbaa !9   ; 2 uses
  %i.ar = fneg float %i.an
  %i.as = fneg float %i.ak
  %i.at = fmul float %i.aq, %i.ar
  %i.au = fmul float %i.ao, %i.as
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.al, float %i.at)
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.an, float %i.au)
  %i.ax = fneg float %i.al
  %i.ay = fmul float %i.ap, %i.ax
  %i.az = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ak, float %i.ay)
  %i.ba = load float, ptr %3, align 4, !tbaa !9   ; 2 uses
  %i.bb = load <2 x float>, ptr %0, align 4, !tbaa !9 ; 2 uses
  %i.bc = load float, ptr %i.ai, align 4, !tbaa !9 ; 2 uses
  %i.bd = load <4 x float>, ptr %i.d, align 4
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bf = load float, ptr %i.aj, align 4, !tbaa !9 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.bh = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = shufflevector <2 x float> %i.bb, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.bk = fmul <2 x float> %i.bi, %i.bj
  %i.bl = shufflevector <2 x float> %i.bb, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bm = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bn, <2 x float> %i.bk)
  %i.bp = load float, ptr %i.j, align 4, !tbaa !9
  %i.bq = insertelement <2 x float> %i.be, float %i.bp, i64 1
  %i.br = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bs, <2 x float> %i.bo)
  %i.bu = load float, ptr %i.z, align 4, !tbaa !9
  %i.bv = load float, ptr %i.ab, align 4, !tbaa !9
  %i.bw = fmul float %i.bc, %i.bv
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.ba, float %i.bw)
  %i.by = load float, ptr %i.ae, align 4, !tbaa !9
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.by, float %i.bf, float %i.bx)
  %i.ca = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.av, i64 1
  %i.cc = fsub <2 x float> %i.bt, %i.cb
  %i.cd = fsub float %i.bz, %i.az
  %.sroa.3.12.vec.insert.i27 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cd, i64 0
  store <2 x float> %i.cc, ptr %5, align 4
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
  %.not.i5.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI15btMultibodyLinkE10deallocateEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayI15btMultibodyLinkE4copyEiiPS0_.exit.i.i
  %i.bu = load i8, ptr %i.i, align 8, !tbaa !37, !range !67, !noundef !68
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.g, label %_ZN20btAlignedObjectArrayI15btMultibodyLinkE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bt)
          to label %_ZN20btAlignedObjectArrayI15btMultibodyLinkE10deallocateEv.exit.i.i unwind label %bb.s

_ZN20btAlignedObjectArrayI15btMultibodyLinkE10deallocateEv.exit.i.i: ; preds = %bb.g, %bb.f, %_ZNK20btAlignedObjectArrayI15btMultibodyLinkE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.i, align 8, !tbaa !37
  store ptr %.0.i.i.i, ptr %i.j, align 8, !tbaa !38
  store i32 %1, ptr %i.l, align 8, !tbaa !40
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN20btAlignedObjectArrayI15btMultibodyLinkE10deallocateEv.exit.i.i, %bb.b
  %i.bw = sext i32 %i.ax to i64
  %wide.trip.count.i = sext i32 %1 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bw, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.by = getelementptr inbounds [688 x i8], ptr %i.bx, i64 %indvars.iv.i ; 22 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.by, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store float 0.000000e+00, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  store i32 -1, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, i8 0, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  store <80 x i8> zeroinitializer, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 152
  store float 1.000000e+00, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 156
  %.sroa.1954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(172) %.sroa.18.0..sroa_idx, i8 0, i64 172, i1 false)
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.1954.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 352
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 380
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.23.0..sroa_idx, i8 0, i64 28, i1 false)
  store float 1.000000e+00, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %.sroa.28.0..sroa_idx, i8 0, i64 92, i1 false)
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 476
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.29.0..sroa_idx, align 4
  %i.bz = getelementptr i8, ptr %i.by, i64 520
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 564
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.bz, i8 0, i64 44, i1 false)
  store i32 5, ptr %.sroa.35.0..sroa_idx, align 4
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 568
  store ptr null, ptr %.sroa.36.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 576
  store float 1.000000e+00, ptr %i.ca, align 8
  %.sroa.39.576..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 580
  %.sroa.41.592..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 596
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.39.576..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.41.592..sroa_idx, align 4
  %.sroa.42.592..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 600
  %.sroa.44.608..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.592..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.44.608..sroa_idx, align 8
  %.sroa.45.608..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 620
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.45.608..sroa_idx, i8 0, i64 68, i1 false)
  br i1 %exitcond.not.i, label %.loopexit106, label %bb.h, !llvm.loop !69

.loopexit106:                                     ; preds = %bb.h, %bb.a
  store i32 %1, ptr %i.k, align 4, !tbaa !39
  %i.cb = add nsw i32 %1, 1                       ; 4 uses
  %i.cc = load i32, ptr %i.ae, align 4, !tbaa !51 ; 2 uses
  %.not = icmp slt i32 %1, %i.cc
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.loopexit106
  %i.cd = load i32, ptr %i.af, align 8, !tbaa !52
  %.not105 = icmp sgt i32 %i.cd, %1
  br i1 %.not105, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i26 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i26, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = sext i32 %i.cb to i64
  %i.cf = mul nsw i64 %i.ce, 48
  %i.cg = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cf, i32 noundef 16)
          to label %.noexc35 unwind label %bb.t

.noexc35:                                         ; preds = %bb.k
  %.pre.i27 = load i32, ptr %i.ae, align 4, !tbaa !51
  br label %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i: ; preds = %.noexc35, %bb.j
  %i.ch = phi i32 [ %.pre.i27, %.noexc35 ], [ %i.cc, %bb.j ] ; 2 uses
  %.0.i.i.i28 = phi ptr [ %i.cg, %.noexc35 ], [ null, %bb.j ] ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i.i.i30, label %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i30:                                   ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i
  %wide.trip.count.i.i.i31 = zext nneg i32 %i.ch to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i30
  %indvars.iv.i.i.i32 = phi i64 [ 0, %.lr.ph.i.i.i30 ], [ %indvars.iv.next.i.i.i33, %bb.l ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i28, i64 %indvars.iv.i.i.i32 ; 3 uses
  %i.ck = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.cl = getelementptr inbounds nuw [48 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.cj, ptr noundef nonnull align 4 dereferenceable(48) %i.cl, i64 16, i1 false), !tbaa.struct !36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !36
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cp, ptr noundef nonnull align 4 dereferenceable(16) %i.co, i64 16, i1 false), !tbaa.struct !36
  %indvars.iv.next.i.i.i33 = add nuw nsw i64 %indvars.iv.i.i.i32, 1 ; 2 uses
  %exitcond.not.i.i.i34 = icmp eq i64 %indvars.iv.next.i.i.i33, %wide.trip.count.i.i.i31
  br i1 %exitcond.not.i.i.i34, label %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i, label %bb.l, !llvm.loop !70

_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i: ; preds = %bb.l, %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i
  %i.cq = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 2 uses
  %.not.i5.i.i29 = icmp eq ptr %i.cq, null
  br i1 %.not.i5.i.i29, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i
  %i.cr = load i8, ptr %i.ac, align 8, !tbaa !49, !range !67, !noundef !68
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.n, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cq)
          to label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i unwind label %bb.t

_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i: ; preds = %bb.n, %bb.m, %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.ac, align 8, !tbaa !49
  store ptr %.0.i.i.i28, ptr %i.ad, align 8, !tbaa !50
  store i32 %i.cb, ptr %i.af, align 8, !tbaa !52
  %.pre.pre = load i32, ptr %i.k, align 4, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i, %.loopexit106
  %i.ct = phi i32 [ %1, %.loopexit106 ], [ %.pre.pre, %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i ], [ %1, %bb.i ] ; 3 uses
  store i32 %i.cb, ptr %i.ae, align 4, !tbaa !51
  %i.cu = icmp sgt i32 %i.ct, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  br i1 %i.cu, label %.lr.ph.i37, label %_ZN11btMultiBody21clearConstraintForcesEv.exit.thread

_ZN11btMultiBody21clearConstraintForcesEv.exit.thread: ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  br label %_ZN11btMultiBody21clearForcesAndTorquesEv.exit

.lr.ph.i37:                                       ; preds = %.loopexit
  %i.cv = load ptr, ptr %i.j, align 8, !tbaa !38  ; 9 uses
  %wide.trip.count.i38 = zext nneg i32 %i.ct to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i38, 7     ; 3 uses
  %i.cw = icmp ult i32 %i.ct, 8
  br i1 %i.cw, label %.epil.preheader, label %.lr.ph.i37.new

.lr.ph.i37.new:                                   ; preds = %.lr.ph.i37
  %unroll_iter = and i64 %wide.trip.count.i38, 2147483640
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i37.new
  %indvars.iv.i39 = phi i64 [ 0, %.lr.ph.i37.new ], [ %indvars.iv.next.i40.7, %bb.o ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i37.new ], [ %niter.next.7, %bb.o ]
  %i.cx = getelementptr inbounds nuw [688 x i8], ptr %i.cv, i64 %indvars.iv.i39
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cy, i8 0, i64 32, i1 false)
  %i.cz = getelementptr inbounds nuw [688 x i8], ptr %i.cv, i64 %indvars.iv.i39
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.da, i8 0, i64 32, i1 false)
  %i.db = getelementptr inbounds nuw [688 x i8], ptr %i.cv, i64 %indvars.iv.i39
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1808
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dc, i8 0, i64 32, i1 false)
  %i.dd = getelementptr inbounds nuw [688 x i8], ptr %i.cv, i64 %indvars.iv.i39
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.de, i8 0, i64 32, i1 false)
  %i.df = getelementptr inbounds nuw [688 x i8], ptr %i.cv, i64 %indvars.iv.i39
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 3184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dg, i8 0, i64 32, i1 false)
  %i.dh = getelementptr inbounds nuw [688 x i8], ptr %i.cv, i64 %indvars.iv.i39
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 3872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.di, i8 0, i64 32, i1 false)
  %i.dj = getelementptr inbounds nuw [688 x i8], ptr %i.cv, i64 %indvars.iv.i39
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dk, i8 0, i64 32, i1 false)
  %i.dl = getelementptr inbounds nuw [688 x i8], ptr %i.cv, i64 %indvars.iv.i39
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 5248
  %indvars.iv.next.i40.7 = add nuw nsw i64 %indvars.iv.i39, 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dm, i8 0, i64 32, i1 false)
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN11btMultiBody21clearConstraintForcesEv.exit.unr-lcssa, label %bb.o, !llvm.loop !71

_ZN11btMultiBody21clearConstraintForcesEv.exit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11btMultiBody21clearConstraintForcesEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN11btMultiBody21clearConstraintForcesEv.exit.unr-lcssa, %.lr.ph.i37
  %indvars.iv.i39.epil.init = phi i64 [ 0, %.lr.ph.i37 ], [ %indvars.iv.next.i40.7, %_ZN11btMultiBody21clearConstraintForcesEv.exit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv.i39.epil = phi i64 [ %indvars.iv.i39.epil.init, %.epil.preheader ], [ %indvars.iv.next.i40.epil, %bb.p ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.dn = getelementptr inbounds nuw [688 x i8], ptr %i.cv, i64 %indvars.iv.i39.epil
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 432
  %indvars.iv.next.i40.epil = add nuw nsw i64 %indvars.iv.i39.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.do, i8 0, i64 32, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11btMultiBody21clearConstraintForcesEv.exit, label %bb.p, !llvm.loop !72

_ZN11btMultiBody21clearConstraintForcesEv.exit:   ; preds = %bb.p, %_ZN11btMultiBody21clearConstraintForcesEv.exit.unr-lcssa
  %.pr = load i32, ptr %i.k, align 4, !tbaa !39   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.dp = icmp sgt i32 %.pr, 0
  br i1 %i.dp, label %.lr.ph.i42, label %_ZN11btMultiBody21clearForcesAndTorquesEv.exit

.lr.ph.i42:                                       ; preds = %_ZN11btMultiBody21clearConstraintForcesEv.exit
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !38  ; 5 uses
  %wide.trip.count.i43 = zext nneg i32 %.pr to i64 ; 2 uses
  %xtraiter120 = and i64 %wide.trip.count.i43, 3  ; 3 uses
  %i.dr = icmp ult i32 %.pr, 4
  br i1 %i.dr, label %.epil.preheader119, label %.lr.ph.i42.new

.lr.ph.i42.new:                                   ; preds = %.lr.ph.i42
  %unroll_iter124 = and i64 %wide.trip.count.i43, 2147483644
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i42.new
  %indvars.iv.i44 = phi i64 [ 0, %.lr.ph.i42.new ], [ %indvars.iv.next.i45.3, %bb.q ] ; 5 uses
  %niter125 = phi i64 [ 0, %.lr.ph.i42.new ], [ %niter125.next.3, %bb.q ]
  %i.ds = getelementptr inbounds nuw [688 x i8], ptr %i.dq, i64 %indvars.iv.i44 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 400
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dt, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, i8 0, i64 24, i1 false)
  %i.dv = getelementptr inbounds nuw [688 x i8], ptr %i.dq, i64 %indvars.iv.i44 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1088
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dw, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i8 0, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw [688 x i8], ptr %i.dq, i64 %indvars.iv.i44 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1776
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 1896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dz, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw [688 x i8], ptr %i.dq, i64 %indvars.iv.i44 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2464
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 2584
  %indvars.iv.next.i45.3 = add nuw nsw i64 %indvars.iv.i44, 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ec, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i8 0, i64 24, i1 false)
  %niter125.next.3 = add i64 %niter125, 4         ; 2 uses
  %niter125.ncmp.3 = icmp eq i64 %niter125.next.3, %unroll_iter124
  br i1 %niter125.ncmp.3, label %_ZN11btMultiBody21clearForcesAndTorquesEv.exit.loopexit.unr-lcssa, label %bb.q, !llvm.loop !74

_ZN11btMultiBody21clearForcesAndTorquesEv.exit.loopexit.unr-lcssa: ; preds = %bb.q
  %lcmp.mod122.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod122.not, label %_ZN11btMultiBody21clearForcesAndTorquesEv.exit, label %.epil.preheader119

.epil.preheader119:                               ; preds = %_ZN11btMultiBody21clearForcesAndTorquesEv.exit.loopexit.unr-lcssa, %.lr.ph.i42
  %indvars.iv.i44.epil.init = phi i64 [ 0, %.lr.ph.i42 ], [ %indvars.iv.next.i45.3, %_ZN11btMultiBody21clearForcesAndTorquesEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter120, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader119
  %indvars.iv.i44.epil = phi i64 [ %indvars.iv.i44.epil.init, %.epil.preheader119 ], [ %indvars.iv.next.i45.epil, %bb.r ] ; 2 uses
  %epil.iter121 = phi i64 [ 0, %.epil.preheader119 ], [ %epil.iter121.next, %bb.r ]
  %i.ee = getelementptr inbounds nuw [688 x i8], ptr %i.dq, i64 %indvars.iv.i44.epil ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 400
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 520
  %indvars.iv.next.i45.epil = add nuw nsw i64 %indvars.iv.i44.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ef, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false)
  %epil.iter121.next = add i64 %epil.iter121, 1   ; 2 uses
  %epil.iter121.cmp.not = icmp eq i64 %epil.iter121.next, %xtraiter120
  br i1 %epil.iter121.cmp.not, label %_ZN11btMultiBody21clearForcesAndTorquesEv.exit, label %bb.r, !llvm.loop !75

_ZN11btMultiBody21clearForcesAndTorquesEv.exit:   ; preds = %_ZN11btMultiBody21clearForcesAndTorquesEv.exit.loopexit.unr-lcssa, %bb.r, %_ZN11btMultiBody21clearConstraintForcesEv.exit, %_ZN11btMultiBody21clearConstraintForcesEv.exit.thread
  ret void

bb.s:                                             ; preds = %bb.g, %bb.d
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.n, %bb.k
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.s ], [ %i.ei, %bb.t ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.ej) #26
  tail call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.ek) #26
  tail call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.el) #26
  tail call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.em) #26
  tail call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.en) #26
  tail call void @_ZN20btAlignedObjectArrayI15btMultibodyLinkED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.eo) #26
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11btMultiBody21clearConstraintForcesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(640) initializes((140, 172)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 9 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.g = icmp ult i32 %i.c, 8
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.h = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !76

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.c ]
  %i.j = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1808
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 3184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 5248
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !71
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11btMultiBody21clearForcesAndTorquesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(640) initializes((108, 140)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %i.c, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.h = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv.epil ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 520
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !77

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.k = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 400
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1088
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1776
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw [688 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2464
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2584
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !74
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !67
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
end_hunk_0
begin_hunk_1_@_ZNK11btMultiBody30fillConstraintJacobianMultiDofEiRK9btVector3S2_S2_PfR20btAlignedObjectArrayIfERS4_IS0_ERS4_I11btMatrix3x3E:bb.a
  br i1 %i.acv, label %._crit_edge396, label %scalar.ph433

._crit_edge396:                                   ; preds = %scalar.ph433.prol.loopexit, %scalar.ph433, %middle.block442, %.preheader
  %i.acw = getelementptr inbounds nuw i8, ptr %i.abp, i64 20
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !84 ; 2 uses
  %.not192 = icmp eq i32 %i.acx, -1
  br i1 %.not192, label %.loopexit, label %.preheader, !llvm.loop !395

scalar.ph433:                                     ; preds = %scalar.ph433.prol.loopexit, %scalar.ph433
  %indvars.iv409 = phi i64 [ %indvars.iv.next410.3, %scalar.ph433 ], [ %indvars.iv409.unr, %scalar.ph433.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv409
  %i.acy = load float, ptr %gep, align 4, !tbaa !9
  %i.acz = trunc nuw nsw i64 %indvars.iv409 to i32
  %.reass = add i32 %invariant.op, %i.acz
  %i.ada = sext i32 %.reass to i64
  %i.adb = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ada
  store float %i.acy, ptr %i.adb, align 4, !tbaa !9
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next410
  %i.adc = load float, ptr %gep.1, align 4, !tbaa !9
  %i.add = trunc nuw nsw i64 %indvars.iv.next410 to i32
  %.reass.1 = add i32 %invariant.op, %i.add
  %i.ade = sext i32 %.reass.1 to i64
  %i.adf = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ade
  store float %i.adc, ptr %i.adf, align 4, !tbaa !9
  %indvars.iv.next410.1 = add nuw nsw i64 %indvars.iv409, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next410.1
  %i.adg = load float, ptr %gep.2, align 4, !tbaa !9
  %i.adh = trunc nuw nsw i64 %indvars.iv.next410.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.adh
  %i.adi = sext i32 %.reass.2 to i64
  %i.adj = getelementptr inbounds [4 x i8], ptr %5, i64 %i.adi
  store float %i.adg, ptr %i.adj, align 4, !tbaa !9
  %indvars.iv.next410.2 = add nuw nsw i64 %indvars.iv409, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next410.2
  %i.adk = load float, ptr %gep.3, align 4, !tbaa !9
  %i.adl = trunc nuw nsw i64 %indvars.iv.next410.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.adl
  %i.adm = sext i32 %.reass.3 to i64
  %i.adn = getelementptr inbounds [4 x i8], ptr %5, i64 %i.adm
  store float %i.adk, ptr %i.adn, align 4, !tbaa !9
  %indvars.iv.next410.3 = add nuw nsw i64 %indvars.iv409, 4 ; 2 uses
  %exitcond413.not.3 = icmp eq i64 %indvars.iv.next410.3, %wide.trip.count412
  br i1 %exitcond413.not.3, label %._crit_edge396, label %scalar.ph433, !llvm.loop !396

.loopexit:                                        ; preds = %._crit_edge396, %._crit_edge391
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11btMultiBody6wakeUpEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(640) initializes((562, 563), (568, 572)) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !397
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 562
  store i8 1, ptr %i.b, align 2, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11btMultiBody9goToSleepEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(640) initializes((562, 563)) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 562
  store i8 0, ptr %i.a, align 2, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11btMultiBody29checkMotionAndSleepIfRequiredEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(640) %0, float noundef %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 563
  %i.b = load i8, ptr %i.a, align 1, !tbaa !55, !range !67, !noundef !68
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = load i8, ptr @gDisableDeactivation, align 1, !range !67
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.g = load i32, ptr %i.f, align 4, !tbaa !96   ; 2 uses
  %i.h = icmp sgt i32 %i.g, -6
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 5 uses
  %i.k = add i32 %i.g, 5                          ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %i.l = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.l to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.m = icmp slt i32 %i.k, 3
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 562
  store i8 1, ptr %i.n, align 2, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 568
  store float 0.000000e+00, ptr %i.o, align 8, !tbaa !397
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.089.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.089.epil = phi float [ %.089.epil.init, %.epil.preheader ], [ %i.r, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.q = load float, ptr %i.p, align 4, !tbaa !9  ; 2 uses
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %.089.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !398

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.preheader
  %.08.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ], [ %i.r, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.t = load float, ptr %i.s, align 4, !tbaa !399
  %i.u = fcmp olt float %.08.lcssa, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  br i1 %i.u, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.d ] ; 5 uses
  %.089 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.ak, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.x = load float, ptr %i.w, align 4, !tbaa !9  ; 2 uses
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %.089)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !9 ; 2 uses
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.y)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9 ; 2 uses
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ac)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !9 ; 2 uses
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ag) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !400

bb.e:                                             ; preds = %._crit_edge
  %i.al = load float, ptr %i.v, align 8, !tbaa !397
  %i.am = fadd float %1, %i.al                    ; 2 uses
  store float %i.am, ptr %i.v, align 8, !tbaa !397
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ao = load float, ptr %i.an, align 8, !tbaa !57
  %i.ap = fcmp ogt float %i.am, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 562
  store i8 0, ptr %i.aq, align 2, !tbaa !54
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge
  store float 0.000000e+00, ptr %i.v, align 8, !tbaa !397
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !56, !range !67, !noundef !68
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 562 ; 2 uses
  %i.av = load i8, ptr %i.au, align 2, !tbaa !54, !range !67, !noundef !68
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.au, align 2, !tbaa !54
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.e, %bb.h, %bb.i, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBody17forwardKinematicsER20btAlignedObjectArrayI12btQuaternionERS0_I9btVector3E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !9  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load float, ptr %i.g, align 4, !tbaa !9  ; 5 uses
  %i.i = fmul float %i.h, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load float, ptr %i.k, align 8, !tbaa !9  ; 4 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.o = load float, ptr %i.n, align 4, !tbaa !9  ; 5 uses
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.m)
  %i.q = fdiv float 2.000000e+00, %i.p            ; 3 uses
  %i.r = fmul float %i.f, %i.q                    ; 2 uses
  %i.s = fmul float %i.h, %i.q                    ; 3 uses
  %i.t = fmul float %i.l, %i.q                    ; 4 uses
  %i.u = fmul float %i.o, %i.r                    ; 2 uses
  %i.v = fmul float %i.o, %i.s                    ; 2 uses
  %i.w = fmul float %i.o, %i.t                    ; 2 uses
  %i.x = fmul float %i.f, %i.r                    ; 2 uses
  %i.y = fmul float %i.f, %i.s                    ; 2 uses
  %i.z = fmul float %i.f, %i.t                    ; 2 uses
  %i.aa = fmul float %i.h, %i.s                   ; 2 uses
  %i.ab = fmul float %i.h, %i.t                   ; 2 uses
  %i.ac = fmul float %i.l, %i.t                   ; 2 uses
  %i.ad = fadd float %i.aa, %i.ac
  %i.ae = fsub float 1.000000e+00, %i.ad
  %i.af = fsub float %i.y, %i.w
  %i.ag = fadd float %i.z, %i.v
  %i.ah = fadd float %i.y, %i.w
  %i.ai = fadd float %i.x, %i.ac
  %i.aj = fsub float 1.000000e+00, %i.ai
  %i.ak = fsub float %i.ab, %i.u
  %i.al = fsub float %i.z, %i.v
  %i.am = fadd float %i.ab, %i.u
  %i.an = fadd float %i.x, %i.aa
  %i.ao = fsub float 1.000000e+00, %i.an
  store float %i.ae, ptr %i.d, align 4
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store float %i.af, ptr %.sroa.497.0..sroa_idx, align 4
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float %i.ag, ptr %.sroa.598.0..sroa_idx, align 4
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store float 0.000000e+00, ptr %.sroa.699.0..sroa_idx, align 4, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store float %i.ah, ptr %i.ap, align 4
  %.sroa.9101.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store float %i.aj, ptr %.sroa.9101.16..sroa_idx, align 4
  %.sroa.10102.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store float %i.ak, ptr %.sroa.10102.16..sroa_idx, align 4
  %.sroa.11103.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store float 0.000000e+00, ptr %.sroa.11103.16..sroa_idx, align 4, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store float %i.al, ptr %i.aq, align 4
  %.sroa.14105.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store float %i.am, ptr %.sroa.14105.32..sroa_idx, align 4
  %.sroa.15106.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store float %i.ao, ptr %.sroa.15106.32..sroa_idx, align 4
  %.sroa.16107.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store float 0.000000e+00, ptr %.sroa.16107.32..sroa_idx, align 4, !tbaa !11
  %i.ar = icmp sgt i32 %i.b, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 192
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n, %bb.a
  %i.at = load i32, ptr %i.a, align 4, !tbaa !39  ; 5 uses
  %i.au = add nsw i32 %i.at, 1                    ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !401 ; 2 uses
  %.not = icmp slt i32 %i.at, %i.aw
  br i1 %.not, label %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !405
  %.not108 = icmp sgt i32 %i.ay, %i.at
  br i1 %.not108, label %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = sext i32 %i.au to i64
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ba, i32 noundef 16)
  %.pre.i = load i32, ptr %i.av, align 4, !tbaa !401
  br label %_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.bc = phi i32 [ %.pre.i, %bb.d ], [ %i.aw, %bb.c ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.bb, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.bc to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.bf = icmp eq i32 %i.bc, 1
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !406
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bg, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, i64 16, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !406
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bj, ptr noundef nonnull align 4 dereferenceable(16) %i.bl, i64 16, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !407

_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod134 = trunc i32 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !406
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bm, ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i64 16, i1 false)
  br label %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !406 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !408, !range !67, !noundef !68
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bq)
  br label %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i: ; preds = %bb.g, %bb.f, %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.bu, align 8, !tbaa !408
  store ptr %.0.i.i.i, ptr %i.bp, align 8, !tbaa !406
  store i32 %i.au, ptr %i.ax, align 8, !tbaa !405
  br label %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit: ; preds = %bb.b, %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i, %._crit_edge
  store i32 %i.au, ptr %i.av, align 4, !tbaa !401
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !47 ; 2 uses
  %.not109 = icmp slt i32 %i.at, %i.bw
  br i1 %.not109, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !48
  %.not110 = icmp sgt i32 %i.by, %i.at
  br i1 %.not110, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i51 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i51, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = sext i32 %i.au to i64
  %i.ca = shl nsw i64 %i.bz, 4
  %i.cb = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ca, i32 noundef 16)
  %.pre.i52 = load i32, ptr %i.bv, align 4, !tbaa !47
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.j, %bb.i
  %i.cc = phi i32 [ %.pre.i52, %bb.j ], [ %i.bw, %bb.i ] ; 4 uses
  %.0.i.i.i53 = phi ptr [ %i.cb, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i.i55, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i55:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN11btMultiBody17forwardKinematicsER20btAlignedObjectArrayI12btQuaternionERS0_I9btVector3E:bb.a
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !9 ; 4 uses
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.dk)
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 348
  %i.dp = load float, ptr %i.do, align 4, !tbaa !9 ; 5 uses
  %i.dq = tail call noundef float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.dn)
  %i.dr = fdiv float 2.000000e+00, %i.dq          ; 3 uses
  %i.ds = fmul float %i.dg, %i.dr                 ; 2 uses
  %i.dt = fmul float %i.di, %i.dr                 ; 3 uses
  %i.du = fmul float %i.dm, %i.dr                 ; 4 uses
  %i.dv = fmul float %i.dp, %i.ds                 ; 2 uses
  %i.dw = fmul float %i.dp, %i.dt                 ; 2 uses
  %i.dx = fmul float %i.dp, %i.du                 ; 2 uses
  %i.dy = fmul float %i.dg, %i.ds                 ; 2 uses
  %i.dz = fmul float %i.dg, %i.dt                 ; 2 uses
  %i.ea = fmul float %i.dg, %i.du                 ; 2 uses
  %i.eb = fmul float %i.di, %i.dt                 ; 2 uses
  %i.ec = fmul float %i.di, %i.du                 ; 2 uses
  %i.ed = fmul float %i.dm, %i.du                 ; 2 uses
  %i.ee = fadd float %i.eb, %i.ed
  %i.ef = fsub float 1.000000e+00, %i.ee
  %i.eg = fsub float %i.dz, %i.dx
  %i.eh = fadd float %i.ea, %i.dw
  %i.ei = fadd float %i.dz, %i.dx
  %i.ej = fadd float %i.dy, %i.ed
  %i.ek = fsub float 1.000000e+00, %i.ej
  %i.el = fsub float %i.ec, %i.dv
  %i.em = fsub float %i.ea, %i.dw
  %i.en = fadd float %i.ec, %i.dv
  %i.eo = fadd float %i.dy, %i.eb
  %i.ep = fsub float 1.000000e+00, %i.eo
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.eq = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %indvars.iv.next ; 12 uses
  store float %i.ef, ptr %i.eq, align 4
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store float %i.eg, ptr %.sroa.488.0..sroa_idx, align 4
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store float %i.eh, ptr %.sroa.589.0..sroa_idx, align 4
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  store float 0.000000e+00, ptr %.sroa.690.0..sroa_idx, align 4, !tbaa !11
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store float %i.ei, ptr %i.er, align 4
  %.sroa.992.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  store float %i.ek, ptr %.sroa.992.16..sroa_idx, align 4
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store float %i.el, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.1193.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 28
  store float 0.000000e+00, ptr %.sroa.1193.16..sroa_idx, align 4, !tbaa !11
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store float %i.em, ptr %i.es, align 4
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 36
  store float %i.en, ptr %.sroa.14.32..sroa_idx, align 4
  %.sroa.1594.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store float %i.ep, ptr %.sroa.1594.32..sroa_idx, align 4
  %.sroa.1695.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 44
  store float 0.000000e+00, ptr %.sroa.1695.32..sroa_idx, align 4, !tbaa !11
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !409

.preheader:                                       ; preds = %bb.o
  %i.et = icmp sgt i32 %i.jc, 0
  br i1 %i.et, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph113, %bb.o
  %indvars.iv118 = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next119, %bb.o ] ; 3 uses
  %i.ev = load ptr, ptr %i.dc, align 8, !tbaa !38
  %i.ew = getelementptr inbounds nuw [688 x i8], ptr %i.ev, i64 %indvars.iv118 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 20
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !84
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 336
  %i.fa = add nsw i32 %i.ey, 1
  %i.fb = load ptr, ptr %i.cv, align 8, !tbaa !406 ; 2 uses
  %i.fc = sext i32 %i.fa to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [16 x i8], ptr %i.fb, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 348
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !9
  %i.fg = load float, ptr %i.ez, align 4, !tbaa !9 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 340
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fj = load <2 x float>, ptr %i.fi, align 4, !tbaa !9 ; 5 uses
  %i.fk = extractelement <2 x float> %i.fj, i64 1 ; 3 uses
  %i.fl = load <2 x float>, ptr %i.fh, align 4, !tbaa !9 ; 4 uses
  %i.fm = extractelement <2 x float> %i.fl, i64 1 ; 2 uses
  %i.fn = extractelement <2 x float> %i.fl, i64 0
  %i.fo = fneg <2 x float> %i.fl                  ; 2 uses
  %i.fp = load <2 x float>, ptr %i.fd, align 4, !tbaa !9 ; 6 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 0
  %i.fr = fneg float %i.fq
  %i.fs = fneg float %i.fg
  %i.ft = fneg float %i.fm
  %i.fu = fmul float %i.fk, %i.fn
  %i.fv = fmul float %i.fg, %i.fk
  %i.fw = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fy = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fu, i64 1
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fp, <2 x float> %i.fz)
  %i.gb = shufflevector <2 x float> %i.fj, <2 x float> %i.fp, <2 x i32> <i32 0, i32 2>
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.gb, <2 x float> %i.ga)
  %i.gd = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.fs, i64 1
  %i.gf = shufflevector <2 x float> %i.fp, <2 x float> %i.fj, <2 x i32> <i32 1, i32 2>
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gf, <2 x float> %i.gc)
  %i.gh = fmul float %i.fg, %i.fr
  %i.gi = fmul float %i.fk, %i.fm
  %i.gj = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.gh, i64 1
  %i.gl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fj, <2 x float> %i.gk)
  %i.gm = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gn = insertelement <2 x float> %i.gm, float %i.fg, i64 0
  %i.go = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.go, <2 x float> %i.gl)
  %i.gq = shufflevector <2 x float> %i.fp, <2 x float> %i.fj, <2 x i32> <i32 0, i32 2>
  %i.gr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.gq, <2 x float> %i.gp)
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 5 uses
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %indvars.iv.next119 ; 2 uses
  store <2 x float> %i.gg, ptr %i.gs, align 4
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store <2 x float> %i.gr, ptr %.sroa.410.0..sroa_idx, align 4
  %i.gt = load ptr, ptr %i.cy, align 8, !tbaa !46 ; 2 uses
  %i.gu = getelementptr inbounds [16 x i8], ptr %i.gt, i64 %i.fc ; 2 uses
  %i.gv = load ptr, ptr %i.cv, align 8, !tbaa !406
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %indvars.iv.next119 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !9 ; 3 uses
  %i.ha = load ptr, ptr %i.dc, align 8, !tbaa !38
  %i.hb = getelementptr inbounds nuw [688 x i8], ptr %i.ha, i64 %indvars.iv118 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 352
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 356
  %i.he = load <2 x float>, ptr %i.gw, align 4, !tbaa !9 ; 4 uses
  %i.hf = load <2 x float>, ptr %i.gx, align 4, !tbaa !9 ; 5 uses
  %i.hg = extractelement <2 x float> %i.hf, i64 1 ; 3 uses
  %i.hh = fneg <2 x float> %i.he                  ; 2 uses
  %i.hi = fneg <2 x float> %i.hf
  %i.hj = fneg float %i.hg
  %i.hk = load <2 x float>, ptr %i.hc, align 4, !tbaa !9 ; 4 uses
  %i.hl = load <2 x float>, ptr %i.hd, align 4, !tbaa !9 ; 3 uses
  %i.hm = fmul <2 x float> %i.hl, %i.hh
  %i.hn = extractelement <2 x float> %i.hk, i64 0 ; 2 uses
  %i.ho = fmul float %i.hn, %i.hj
  %i.hp = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hr = shufflevector <2 x float> %i.hl, <2 x float> %i.hk, <2 x i32> <i32 1, i32 2>
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %i.hr, <2 x float> %i.hm)
  %i.ht = extractelement <2 x float> %i.hk, i64 1 ; 2 uses
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.ht, float %i.ho)
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hk, <2 x float> %i.hs) ; 5 uses
  %i.hw = extractelement <2 x float> %i.hl, i64 1 ; 2 uses
  %i.hx = extractelement <2 x float> %i.he, i64 0 ; 2 uses
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hw, float %i.hu) ; 3 uses
  %i.hz = extractelement <2 x float> %i.hf, i64 0 ; 2 uses
  %i.ia = fmul float %i.hz, %i.ht
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hn, float %i.ia)
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.hw, float %i.ib) ; 2 uses
  %i.id = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ie = insertelement <2 x float> %i.id, float %i.hy, i64 1
  %i.if = fmul <2 x float> %i.hq, %i.ie
  %i.ig = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ii = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.he, <2 x float> %i.if)
  %i.ij = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> %i.hv, <2 x i32> <i32 0, i32 2>
  %i.il = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.im = shufflevector <2 x float> %i.il, <2 x float> %i.he, <2 x i32> <i32 0, i32 2>
  %i.in = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> %i.im, <2 x float> %i.ii)
  %i.io = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.hi, <2 x float> %i.in)
  %i.ip = extractelement <2 x float> %i.hv, i64 0
  %i.iq = fmul float %i.gz, %i.ip
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.hg, float %i.iq)
  %i.is = extractelement <2 x float> %i.hv, i64 1
  %i.it = tail call float @llvm.fmuladd.f32(float %i.is, float %i.hz, float %i.ir)
  %i.iu = extractelement <2 x float> %i.hh, i64 0
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.iu, float %i.it)
  %i.iw = load <2 x float>, ptr %i.gu, align 4, !tbaa !9
  %i.ix = fadd <2 x float> %i.iw, %i.io
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !9
  %i.ja = fadd float %i.iz, %i.iv
  %.sroa.3.12.vec.insert.i71 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ja, i64 0
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %indvars.iv.next119 ; 2 uses
  store <2 x float> %i.ix, ptr %i.jb, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i71, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !11
  %i.jc = load i32, ptr %i.a, align 4, !tbaa !39  ; 2 uses
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp slt i64 %indvars.iv.next119, %i.jd
  br i1 %i.je, label %bb.o, label %.preheader, !llvm.loop !410

._crit_edge116:                                   ; preds = %bb.p, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit, %.preheader
  ret void

bb.p:                                             ; preds = %.lr.ph115, %bb.p
  %indvars.iv121 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next122, %bb.p ] ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 4 uses
  %i.jf = load ptr, ptr %i.cy, align 8, !tbaa !46
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.jf, i64 %indvars.iv.next122
  %.sroa.23.sroa.0.0.copyload141 = load <4 x float>, ptr %i.jg, align 4
  %i.jh = load ptr, ptr %i.cv, align 8, !tbaa !406
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.jh, i64 %indvars.iv.next122 ; 4 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !9 ; 3 uses
  %i.jk = fneg float %i.jj                        ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !9 ; 3 uses
  %i.jn = fneg float %i.jm                        ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !9 ; 3 uses
  %i.jq = fneg float %i.jp                        ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.js = load float, ptr %i.jr, align 4, !tbaa !9 ; 5 uses
  %i.jt = fmul float %i.jm, %i.jm
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.jj, float %i.jj, float %i.jt)
  %i.jv = tail call float @llvm.fmuladd.f32(float %i.jp, float %i.jp, float %i.ju)
  %i.jw = tail call noundef float @llvm.fmuladd.f32(float %i.js, float %i.js, float %i.jv)
  %i.jx = fdiv float 2.000000e+00, %i.jw          ; 3 uses
  %i.jy = fmul float %i.jx, %i.jk                 ; 2 uses
  %i.jz = fmul float %i.jx, %i.jn                 ; 3 uses
  %i.ka = fmul float %i.jx, %i.jq                 ; 4 uses
  %i.kb = fmul float %i.js, %i.jy                 ; 2 uses
  %i.kc = fmul float %i.js, %i.jz                 ; 2 uses
  %i.kd = fmul float %i.js, %i.ka                 ; 2 uses
  %i.ke = fmul float %i.jy, %i.jk                 ; 2 uses
  %i.kf = fmul float %i.jz, %i.jk                 ; 2 uses
  %i.kg = fmul float %i.ka, %i.jk                 ; 2 uses
  %i.kh = fmul float %i.jz, %i.jn                 ; 2 uses
  %i.ki = fmul float %i.ka, %i.jn                 ; 2 uses
  %i.kj = fmul float %i.ka, %i.jq                 ; 2 uses
  %i.kk = fadd float %i.kh, %i.kj
  %i.kl = fsub float 1.000000e+00, %i.kk
  %i.km = fsub float %i.kf, %i.kd
  %i.kn = fadd float %i.kg, %i.kc
  %i.ko = fadd float %i.kf, %i.kd
  %i.kp = fadd float %i.ke, %i.kj
  %i.kq = fsub float 1.000000e+00, %i.kp
  %i.kr = fsub float %i.ki, %i.kb
  %i.ks = fsub float %i.kg, %i.kc
  %i.kt = fadd float %i.ki, %i.kb
  %i.ku = fadd float %i.ke, %i.kh
  %i.kv = fsub float 1.000000e+00, %i.ku
  %i.kw = load ptr, ptr %i.eu, align 8, !tbaa !38
  %i.kx = getelementptr inbounds nuw [688 x i8], ptr %i.kw, i64 %indvars.iv121 ; 13 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 576
  store float %i.kl, ptr %i.ky, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 580
  store float %i.km, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 584
  store float %i.kn, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 588
  store float 0.000000e+00, ptr %.sroa.875.0..sroa_idx, align 4, !tbaa !11
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 592
  store float %i.ko, ptr %i.kz, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 596
  store float %i.kq, ptr %.sroa.11.16..sroa_idx, align 4
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 600
  store float %i.kr, ptr %.sroa.13.16..sroa_idx, align 4
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 604
  store float 0.000000e+00, ptr %.sroa.15.16..sroa_idx, align 4, !tbaa !11
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 608
  store float %i.ks, ptr %i.la, align 4
  %.sroa.18.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 612
  store float %i.kt, ptr %.sroa.18.32..sroa_idx, align 4
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 616
  store float %i.kv, ptr %.sroa.19.32..sroa_idx, align 4
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 620
  store float 0.000000e+00, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !11
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 624
  store <4 x float> %.sroa.23.sroa.0.0.copyload141, ptr %i.lb, align 4, !tbaa !11
  %i.lc = load i32, ptr %i.a, align 4, !tbaa !39
  %i.ld = sext i32 %i.lc to i64
  %i.le = icmp slt i64 %indvars.iv.next122, %i.ld
  br i1 %i.le, label %bb.p, label %._crit_edge116, !llvm.loop !411
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBody36updateCollisionObjectWorldTransformsER20btAlignedObjectArrayI12btQuaternionERS0_I9btVector3E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39   ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !401  ; 2 uses
  %.not152 = icmp slt i32 %i.b, %i.e
  br i1 %.not152, label %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !405
  %.not153 = icmp sgt i32 %i.g, %i.b
  br i1 %.not153, label %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %i.c to i64
  %i.i = shl nsw i64 %i.h, 4
  %i.j = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16)
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !401
  br label %_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.k = phi i32 [ %.pre.i, %bb.d ], [ %i.e, %bb.c ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.k to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.n = icmp eq i32 %i.k, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !406
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !406
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !407

_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod179 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !406
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false)
  br label %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !406  ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !408, !range !67, !noundef !68
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.y)
  br label %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i: ; preds = %bb.g, %bb.f, %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.ac, align 8, !tbaa !408
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !406
  store i32 %i.c, ptr %i.f, align 8, !tbaa !405
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !39 ; 2 uses
  %.pre166 = add nsw i32 %.pre.pre, 1
  br label %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit: ; preds = %bb.b, %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i, %bb.a
  %.pre-phi = phi i32 [ %i.c, %bb.a ], [ %.pre166, %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i ], [ %i.c, %bb.b ] ; 4 uses
  %i.ad = phi i32 [ %i.b, %bb.a ], [ %.pre.pre, %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ] ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !401
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47 ; 2 uses
  %.not154 = icmp slt i32 %i.ad, %i.af
  br i1 %.not154, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !48
  %.not155 = icmp sgt i32 %i.ah, %i.ad
  br i1 %.not155, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i52 = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i.i.i52, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = sext i32 %.pre-phi to i64
  %i.aj = shl nsw i64 %i.ai, 4
  %i.ak = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.aj, i32 noundef 16)
  %.pre.i53 = load i32, ptr %i.ae, align 4, !tbaa !47
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.j, %bb.i
  %i.al = phi i32 [ %.pre.i53, %bb.j ], [ %i.af, %bb.i ] ; 4 uses
  %.0.i.i.i54 = phi ptr [ %i.ak, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i.i.i56, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i56:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %wide.trip.count.i.i.i57 = zext nneg i32 %i.al to i64 ; 2 uses
  %xtraiter181 = and i64 %wide.trip.count.i.i.i57, 1
  %i.ao = icmp eq i32 %i.al, 1
  br i1 %i.ao, label %.epil.preheader180, label %.lr.ph.i.i.i56.new

.lr.ph.i.i.i56.new:                               ; preds = %.lr.ph.i.i.i56
  %unroll_iter184 = and i64 %wide.trip.count.i.i.i57, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i56.new
  %indvars.iv.i.i.i58 = phi i64 [ 0, %.lr.ph.i.i.i56.new ], [ %indvars.iv.next.i.i.i59.1, %bb.k ] ; 4 uses
  %niter185 = phi i64 [ 0, %.lr.ph.i.i.i56.new ], [ %niter185.next.1, %bb.k ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i54, i64 %indvars.iv.i.i.i58
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !36
  %indvars.iv.next.i.i.i59 = or disjoint i64 %indvars.iv.i.i.i58, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i54, i64 %indvars.iv.next.i.i.i59
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !36
  %indvars.iv.next.i.i.i59.1 = add nuw nsw i64 %indvars.iv.i.i.i58, 2 ; 2 uses
  %niter185.next.1 = add i64 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.k, !llvm.loop !108

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader180

.epil.preheader180:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i56
  %indvars.iv.i.i.i58.epil.init = phi i64 [ 0, %.lr.ph.i.i.i56 ], [ %indvars.iv.next.i.i.i59.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod183 = trunc i32 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i54, i64 %indvars.iv.i.i.i58.epil.init
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i58.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !36
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader180, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 2 uses
  %.not.i5.i.i55 = icmp eq ptr %i.az, null
  br i1 %.not.i5.i.i55, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !45, !range !67, !noundef !68
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.m, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.az)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.m, %bb.l, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.bd, align 8, !tbaa !45
  store ptr %.0.i.i.i54, ptr %i.ay, align 8, !tbaa !46
  store i32 %.pre-phi, ptr %i.ag, align 8, !tbaa !48
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.h, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit
  store i32 %.pre-phi, ptr %i.ae, align 4, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !406
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !36
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !130 ; 15 uses
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !46
  %.sroa.26144.sroa.0.0.copyload189 = load <4 x float>, ptr %i.bm, align 4 ; 2 uses
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !406 ; 4 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !9 ; 3 uses
  %i.bp = fneg float %i.bo                        ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !9 ; 3 uses
  %i.bs = fneg float %i.br                        ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !9 ; 3 uses
  %i.bv = fneg float %i.bu                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !9 ; 5 uses
  %i.by = fmul float %i.br, %i.br
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.by)
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.bz)
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.ca)
  %i.cc = fdiv float 2.000000e+00, %i.cb          ; 3 uses
  %i.cd = fmul float %i.cc, %i.bp                 ; 2 uses
  %i.ce = fmul float %i.cc, %i.bs                 ; 3 uses
  %i.cf = fmul float %i.cc, %i.bv                 ; 4 uses
  %i.cg = fmul float %i.bx, %i.cd                 ; 2 uses
  %i.ch = fmul float %i.bx, %i.ce                 ; 2 uses
  %i.ci = fmul float %i.bx, %i.cf                 ; 2 uses
  %i.cj = fmul float %i.cd, %i.bp                 ; 2 uses
  %i.ck = fmul float %i.ce, %i.bp                 ; 2 uses
  %i.cl = fmul float %i.cf, %i.bp                 ; 2 uses
  %i.cm = fmul float %i.ce, %i.bs                 ; 2 uses
  %i.cn = fmul float %i.cf, %i.bs                 ; 2 uses
  %i.co = fmul float %i.cf, %i.bv                 ; 2 uses
  %i.cp = fadd float %i.cm, %i.co
  %i.cq = fsub float 1.000000e+00, %i.cp          ; 2 uses
  %i.cr = fsub float %i.ck, %i.ci                 ; 2 uses
  %i.cs = fadd float %i.cl, %i.ch                 ; 2 uses
  %i.ct = fadd float %i.ck, %i.ci                 ; 2 uses
  %i.cu = fadd float %i.cj, %i.co
  %i.cv = fsub float 1.000000e+00, %i.cu          ; 2 uses
  %i.cw = fsub float %i.cn, %i.cg                 ; 2 uses
  %i.cx = fsub float %i.cl, %i.ch                 ; 2 uses
  %i.cy = fadd float %i.cn, %i.cg                 ; 2 uses
  %i.cz = fadd float %i.cj, %i.cm
  %i.da = fsub float 1.000000e+00, %i.cz          ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bl, i64 352 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !412
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !412
  %i.de = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store float %i.cq, ptr %i.de, align 8
  %.sroa.6113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store float %i.cr, ptr %.sroa.6113.0..sroa_idx, align 4
  %.sroa.8116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store float %i.cs, ptr %.sroa.8116.0..sroa_idx, align 8
  %.sroa.9119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store float 0.000000e+00, ptr %.sroa.9119.0..sroa_idx, align 4, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store float %i.ct, ptr %i.df, align 8
  %.sroa.13124.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  store float %i.cv, ptr %.sroa.13124.16..sroa_idx, align 4
  %.sroa.15127.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store float %i.cw, ptr %.sroa.15127.16..sroa_idx, align 8
  %.sroa.17130.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  store float 0.000000e+00, ptr %.sroa.17130.16..sroa_idx, align 4, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store float %i.cx, ptr %i.dg, align 8
  %.sroa.21135.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  store float %i.cy, ptr %.sroa.21135.32..sroa_idx, align 4
  %.sroa.22138.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store float %i.da, ptr %.sroa.22138.32..sroa_idx, align 8
  %.sroa.24141.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  store float 0.000000e+00, ptr %.sroa.24141.32..sroa_idx, align 4, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store <4 x float> %.sroa.26144.sroa.0.0.copyload189, ptr %i.dh, align 8, !tbaa !11
  %i.di = load ptr, ptr %i.bk, align 8, !tbaa !130 ; 14 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 352 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !412
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !412
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  store float %i.cq, ptr %i.dm, align 8
  %.sroa.6113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.di, i64 76
  store float %i.cr, ptr %.sroa.6113.0..sroa_idx114, align 4
  %.sroa.8116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  store float %i.cs, ptr %.sroa.8116.0..sroa_idx117, align 8
  %.sroa.9119.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.di, i64 84
  store float 0.000000e+00, ptr %.sroa.9119.0..sroa_idx120, align 4, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  store float %i.ct, ptr %i.dn, align 8
  %.sroa.13124.16..sroa_idx125 = getelementptr inbounds nuw i8, ptr %i.di, i64 92
  store float %i.cv, ptr %.sroa.13124.16..sroa_idx125, align 4
  %.sroa.15127.16..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  store float %i.cw, ptr %.sroa.15127.16..sroa_idx128, align 8
  %.sroa.17130.16..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.di, i64 100
  store float 0.000000e+00, ptr %.sroa.17130.16..sroa_idx131, align 4, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 104
  store float %i.cx, ptr %i.do, align 8
  %.sroa.21135.32..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.di, i64 108
  store float %i.cy, ptr %.sroa.21135.32..sroa_idx136, align 4
  %.sroa.22138.32..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.di, i64 112
  store float %i.da, ptr %.sroa.22138.32..sroa_idx139, align 8
  %.sroa.24141.32..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.di, i64 116
  store float 0.000000e+00, ptr %.sroa.24141.32..sroa_idx142, align 4, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 120
  store <4 x float> %.sroa.26144.sroa.0.0.copyload189, ptr %i.dp, align 8, !tbaa !11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !39
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  br label %bb.p

.preheader:                                       ; preds = %bb.p
  %i.dt = icmp sgt i32 %i.ic, 0
  br i1 %i.dt, label %.lr.ph158, label %._crit_edge

.lr.ph158:                                        ; preds = %.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !38
  %i.dw = getelementptr inbounds nuw [688 x i8], ptr %i.dv, i64 %indvars.iv ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !84
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 336
  %i.ea = add nsw i32 %i.dy, 1
  %i.eb = load ptr, ptr %i.bf, align 8, !tbaa !406 ; 2 uses
  %i.ec = sext i32 %i.ea to i64                   ; 2 uses
  %i.ed = getelementptr inbounds [16 x i8], ptr %i.eb, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 348
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !9
  %i.eg = load float, ptr %i.dz, align 4, !tbaa !9 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 340
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !9 ; 5 uses
  %i.ek = extractelement <2 x float> %i.ej, i64 1 ; 3 uses
  %i.el = load <2 x float>, ptr %i.eh, align 4, !tbaa !9 ; 4 uses
  %i.em = extractelement <2 x float> %i.el, i64 1 ; 2 uses
  %i.en = extractelement <2 x float> %i.el, i64 0
  %i.eo = fneg <2 x float> %i.el                  ; 2 uses
  %i.ep = load <2 x float>, ptr %i.ed, align 4, !tbaa !9 ; 6 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 0
  %i.er = fneg float %i.eq
  %i.es = fneg float %i.eg
  %i.et = fneg float %i.em
  %i.eu = fmul float %i.ek, %i.en
  %i.ev = fmul float %i.eg, %i.ek
  %i.ew = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %i.eu, i64 1
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.ep, <2 x float> %i.ez)
  %i.fb = shufflevector <2 x float> %i.ej, <2 x float> %i.ep, <2 x i32> <i32 0, i32 2>
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.fb, <2 x float> %i.fa)
  %i.fd = insertelement <2 x float> poison, float %i.et, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.es, i64 1
  %i.ff = shufflevector <2 x float> %i.ep, <2 x float> %i.ej, <2 x i32> <i32 1, i32 2>
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.ff, <2 x float> %i.fc)
  %i.fh = fmul float %i.eg, %i.er
  %i.fi = fmul float %i.ek, %i.em
  %i.fj = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fk = insertelement <2 x float> %i.fj, float %i.fh, i64 1
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.ej, <2 x float> %i.fk)
  %i.fm = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fn = insertelement <2 x float> %i.fm, float %i.eg, i64 0
  %i.fo = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fo, <2 x float> %i.fl)
  %i.fq = shufflevector <2 x float> %i.ep, <2 x float> %i.ej, <2 x i32> <i32 0, i32 2>
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.fq, <2 x float> %i.fp)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %indvars.iv.next ; 2 uses
  store <2 x float> %i.fg, ptr %i.fs, align 4
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store <2 x float> %i.fr, ptr %.sroa.413.0..sroa_idx, align 4
  %i.ft = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 2 uses
  %i.fu = getelementptr inbounds [16 x i8], ptr %i.ft, i64 %i.ec ; 2 uses
  %i.fv = load ptr, ptr %i.bf, align 8, !tbaa !406
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %indvars.iv.next ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !9 ; 3 uses
  %i.ga = load ptr, ptr %i.ds, align 8, !tbaa !38
  %i.gb = getelementptr inbounds nuw [688 x i8], ptr %i.ga, i64 %indvars.iv ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 356
  %i.ge = load <2 x float>, ptr %i.fw, align 4, !tbaa !9 ; 4 uses
  %i.gf = load <2 x float>, ptr %i.fx, align 4, !tbaa !9 ; 5 uses
  %i.gg = extractelement <2 x float> %i.gf, i64 1 ; 3 uses
  %i.gh = fneg <2 x float> %i.ge                  ; 2 uses
  %i.gi = fneg <2 x float> %i.gf
  %i.gj = fneg float %i.gg
  %i.gk = load <2 x float>, ptr %i.gc, align 4, !tbaa !9 ; 4 uses
  %i.gl = load <2 x float>, ptr %i.gd, align 4, !tbaa !9 ; 3 uses
  %i.gm = fmul <2 x float> %i.gl, %i.gh
  %i.gn = extractelement <2 x float> %i.gk, i64 0 ; 2 uses
  %i.go = fmul float %i.gn, %i.gj
  %i.gp = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gl, <2 x float> %i.gk, <2 x i32> <i32 1, i32 2>
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> %i.gr, <2 x float> %i.gm)
  %i.gt = extractelement <2 x float> %i.gk, i64 1 ; 2 uses
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.gt, float %i.go)
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.gk, <2 x float> %i.gs) ; 5 uses
  %i.gw = extractelement <2 x float> %i.gl, i64 1 ; 2 uses
  %i.gx = extractelement <2 x float> %i.ge, i64 0 ; 2 uses
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.gw, float %i.gu) ; 3 uses
  %i.gz = extractelement <2 x float> %i.gf, i64 0 ; 2 uses
  %i.ha = fmul float %i.gz, %i.gt
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.gn, float %i.ha)
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gw, float %i.hb) ; 2 uses
  %i.hd = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.he = insertelement <2 x float> %i.hd, float %i.gy, i64 1
  %i.hf = fmul <2 x float> %i.gq, %i.he
  %i.hg = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.ge, <2 x float> %i.hf)
  %i.hj = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> %i.gv, <2 x i32> <i32 0, i32 2>
  %i.hl = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> %i.ge, <2 x i32> <i32 0, i32 2>
  %i.hn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> %i.hm, <2 x float> %i.hi)
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gv, <2 x float> %i.gi, <2 x float> %i.hn)
  %i.hp = extractelement <2 x float> %i.gv, i64 0
  %i.hq = fmul float %i.fz, %i.hp
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.gg, float %i.hq)
  %i.hs = extractelement <2 x float> %i.gv, i64 1
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.gz, float %i.hr)
  %i.hu = extractelement <2 x float> %i.gh, i64 0
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.gy, float %i.hu, float %i.ht)
  %i.hw = load <2 x float>, ptr %i.fu, align 4, !tbaa !9
  %i.hx = fadd <2 x float> %i.hw, %i.ho
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !9
  %i.ia = fadd float %i.hz, %i.hv
  %.sroa.3.12.vec.insert.i72 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ia, i64 0
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %indvars.iv.next ; 2 uses
  store <2 x float> %i.hx, ptr %i.ib, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i72, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !11
  %i.ic = load i32, ptr %i.a, align 4, !tbaa !39  ; 3 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp slt i64 %indvars.iv.next, %i.id
  br i1 %i.ie, label %bb.p, label %.preheader, !llvm.loop !413

._crit_edge:                                      ; preds = %bb.s, %bb.o, %.preheader
  ret void

bb.q:                                             ; preds = %.lr.ph158, %bb.s
  %i.if = phi i32 [ %i.ic, %.lr.ph158 ], [ %i.kq, %bb.s ]
  %indvars.iv160 = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next161, %bb.s ] ; 2 uses
  %i.ig = load ptr, ptr %i.du, align 8, !tbaa !38
  %i.ih = getelementptr inbounds nuw [688 x i8], ptr %i.ig, i64 %indvars.iv160
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 544
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !151 ; 29 uses
  %.not46 = icmp eq ptr %i.ij, null
  br i1 %.not46, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 384
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !414
  %i.im = add nsw i32 %i.il, 1
  %i.in = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.io = sext i32 %i.im to i64                   ; 2 uses
  %i.ip = getelementptr inbounds [16 x i8], ptr %i.in, i64 %i.io
  %.sroa.26.sroa.0.0.copyload187 = load <4 x float>, ptr %i.ip, align 4 ; 2 uses
  %i.iq = load ptr, ptr %i.bf, align 8, !tbaa !406
  %i.ir = getelementptr inbounds [16 x i8], ptr %i.iq, i64 %i.io ; 4 uses
  %i.is = load float, ptr %i.ir, align 4, !tbaa !9 ; 3 uses
  %i.it = fneg float %i.is                        ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !9 ; 3 uses
  %i.iw = fneg float %i.iv                        ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !9 ; 3 uses
  %i.iz = fneg float %i.iy                        ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !9 ; 5 uses
  %i.jc = fmul float %i.iv, %i.iv
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.is, float %i.is, float %i.jc)
  %i.je = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.iy, float %i.jd)
  %i.jf = tail call noundef float @llvm.fmuladd.f32(float %i.jb, float %i.jb, float %i.je)
  %i.jg = fdiv float 2.000000e+00, %i.jf          ; 3 uses
  %i.jh = fmul float %i.jg, %i.it                 ; 2 uses
  %i.ji = fmul float %i.jg, %i.iw                 ; 3 uses
  %i.jj = fmul float %i.jg, %i.iz                 ; 4 uses
  %i.jk = fmul float %i.jb, %i.jh                 ; 2 uses
  %i.jl = fmul float %i.jb, %i.ji                 ; 2 uses
  %i.jm = fmul float %i.jb, %i.jj                 ; 2 uses
  %i.jn = fmul float %i.jh, %i.it                 ; 2 uses
  %i.jo = fmul float %i.ji, %i.it                 ; 2 uses
  %i.jp = fmul float %i.jj, %i.it                 ; 2 uses
  %i.jq = fmul float %i.ji, %i.iw                 ; 2 uses
  %i.jr = fmul float %i.jj, %i.iw                 ; 2 uses
  %i.js = fmul float %i.jj, %i.iz                 ; 2 uses
  %i.jt = fadd float %i.jq, %i.js
  %i.ju = fsub float 1.000000e+00, %i.jt          ; 2 uses
  %i.jv = fsub float %i.jo, %i.jm                 ; 2 uses
  %i.jw = fadd float %i.jp, %i.jl                 ; 2 uses
  %i.jx = fadd float %i.jo, %i.jm                 ; 2 uses
  %i.jy = fadd float %i.jn, %i.js
  %i.jz = fsub float 1.000000e+00, %i.jy          ; 2 uses
  %i.ka = fsub float %i.jr, %i.jk                 ; 2 uses
  %i.kb = fsub float %i.jp, %i.jl                 ; 2 uses
  %i.kc = fadd float %i.jr, %i.jk                 ; 2 uses
  %i.kd = fadd float %i.jn, %i.jq
  %i.ke = fsub float 1.000000e+00, %i.kd          ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ij, i64 352 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !412
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store float %i.ju, ptr %i.kh, align 8
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  store float %i.jv, ptr %.sroa.677.0..sroa_idx, align 4
  %.sroa.880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store float %i.jw, ptr %.sroa.880.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 20
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !11
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  store float %i.jx, ptr %i.ki, align 8
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 28
  store float %i.jz, ptr %.sroa.13.16..sroa_idx, align 4
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  store float %i.ka, ptr %.sroa.15.16..sroa_idx, align 8
  %.sroa.17.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 36
  store float 0.000000e+00, ptr %.sroa.17.16..sroa_idx, align 4, !tbaa !11
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  store float %i.kb, ptr %i.kj, align 8
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 44
  store float %i.kc, ptr %.sroa.21.32..sroa_idx, align 4
  %.sroa.22.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  store float %i.ke, ptr %.sroa.22.32..sroa_idx, align 8
  %.sroa.24.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 52
  store float 0.000000e+00, ptr %.sroa.24.32..sroa_idx, align 4, !tbaa !11
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ij, i64 56
  store <4 x float> %.sroa.26.sroa.0.0.copyload187, ptr %i.kk, align 8, !tbaa !11
  %i.kl = add nsw i32 %i.kg, 2
  store i32 %i.kl, ptr %i.kf, align 8, !tbaa !412
  %i.km = getelementptr inbounds nuw i8, ptr %i.ij, i64 72
  store float %i.ju, ptr %i.km, align 8
  %.sroa.677.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.ij, i64 76
  store float %i.jv, ptr %.sroa.677.0..sroa_idx78, align 4
  %.sroa.880.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.ij, i64 80
  store float %i.jw, ptr %.sroa.880.0..sroa_idx81, align 8
  %.sroa.9.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.ij, i64 84
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx83, align 4, !tbaa !11
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ij, i64 88
  store float %i.jx, ptr %i.kn, align 8
  %.sroa.13.16..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.ij, i64 92
  store float %i.jz, ptr %.sroa.13.16..sroa_idx86, align 4
  %.sroa.15.16..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.ij, i64 96
  store float %i.ka, ptr %.sroa.15.16..sroa_idx88, align 8
  %.sroa.17.16..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.ij, i64 100
  store float 0.000000e+00, ptr %.sroa.17.16..sroa_idx90, align 4, !tbaa !11
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ij, i64 104
  store float %i.kb, ptr %i.ko, align 8
  %.sroa.21.32..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.ij, i64 108
  store float %i.kc, ptr %.sroa.21.32..sroa_idx93, align 4
  %.sroa.22.32..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.ij, i64 112
  store float %i.ke, ptr %.sroa.22.32..sroa_idx95, align 8
  %.sroa.24.32..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.ij, i64 116
  store float 0.000000e+00, ptr %.sroa.24.32..sroa_idx97, align 4, !tbaa !11
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ij, i64 120
  store <4 x float> %.sroa.26.sroa.0.0.copyload187, ptr %i.kp, align 8, !tbaa !11
  %.pre163 = load i32, ptr %i.a, align 4, !tbaa !39
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kq = phi i32 [ %.pre163, %bb.r ], [ %i.if, %bb.q ] ; 2 uses
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.kr = sext i32 %i.kq to i64
  %i.ks = icmp slt i64 %indvars.iv.next161, %i.kr
  br i1 %i.ks, label %bb.q, label %._crit_edge, !llvm.loop !417
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBody49updateCollisionObjectInterpolationWorldTransformsER20btAlignedObjectArrayI12btQuaternionERS0_I9btVector3E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39   ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !401  ; 2 uses
  %.not111 = icmp slt i32 %i.b, %i.e
  br i1 %.not111, label %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !405
  %.not112 = icmp sgt i32 %i.g, %i.b
  br i1 %.not112, label %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %i.c to i64
  %i.i = shl nsw i64 %i.h, 4
  %i.j = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16)
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !401
  br label %_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.k = phi i32 [ %.pre.i, %bb.d ], [ %i.e, %bb.c ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.k to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.n = icmp eq i32 %i.k, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !406
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !406
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !407

_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod146 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !406
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false)
  br label %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI12btQuaternionE8allocateEi.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !406  ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !408, !range !67, !noundef !68
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.y)
  br label %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i: ; preds = %bb.g, %bb.f, %_ZNK20btAlignedObjectArrayI12btQuaternionE4copyEiiPS0_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.ac, align 8, !tbaa !408
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !406
  store i32 %i.c, ptr %i.f, align 8, !tbaa !405
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !39 ; 2 uses
  %.pre126 = add nsw i32 %.pre.pre, 1
  br label %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit: ; preds = %bb.b, %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i, %bb.a
  %.pre-phi = phi i32 [ %i.c, %bb.a ], [ %.pre126, %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i ], [ %i.c, %bb.b ] ; 4 uses
  %i.ad = phi i32 [ %i.b, %bb.a ], [ %.pre.pre, %_ZN20btAlignedObjectArrayI12btQuaternionE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ] ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !401
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47 ; 2 uses
  %.not113 = icmp slt i32 %i.ad, %i.af
  br i1 %.not113, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !48
  %.not114 = icmp sgt i32 %i.ah, %i.ad
  br i1 %.not114, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i53 = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i.i.i53, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = sext i32 %.pre-phi to i64
  %i.aj = shl nsw i64 %i.ai, 4
  %i.ak = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.aj, i32 noundef 16)
  %.pre.i54 = load i32, ptr %i.ae, align 4, !tbaa !47
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.j, %bb.i
  %i.al = phi i32 [ %.pre.i54, %bb.j ], [ %i.af, %bb.i ] ; 4 uses
  %.0.i.i.i55 = phi ptr [ %i.ak, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i.i.i57, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i57:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %wide.trip.count.i.i.i58 = zext nneg i32 %i.al to i64 ; 2 uses
  %xtraiter148 = and i64 %wide.trip.count.i.i.i58, 1
  %i.ao = icmp eq i32 %i.al, 1
  br i1 %i.ao, label %.epil.preheader147, label %.lr.ph.i.i.i57.new

.lr.ph.i.i.i57.new:                               ; preds = %.lr.ph.i.i.i57
  %unroll_iter151 = and i64 %wide.trip.count.i.i.i58, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i57.new
  %indvars.iv.i.i.i59 = phi i64 [ 0, %.lr.ph.i.i.i57.new ], [ %indvars.iv.next.i.i.i60.1, %bb.k ] ; 4 uses
  %niter152 = phi i64 [ 0, %.lr.ph.i.i.i57.new ], [ %niter152.next.1, %bb.k ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i55, i64 %indvars.iv.i.i.i59
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !36
  %indvars.iv.next.i.i.i60 = or disjoint i64 %indvars.iv.i.i.i59, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i55, i64 %indvars.iv.next.i.i.i60
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !36
  %indvars.iv.next.i.i.i60.1 = add nuw nsw i64 %indvars.iv.i.i.i59, 2 ; 2 uses
  %niter152.next.1 = add i64 %niter152, 2         ; 2 uses
  %niter152.ncmp.1 = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.k, !llvm.loop !108

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader147

.epil.preheader147:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i57
  %indvars.iv.i.i.i59.epil.init = phi i64 [ 0, %.lr.ph.i.i.i57 ], [ %indvars.iv.next.i.i.i60.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod150 = trunc i32 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i55, i64 %indvars.iv.i.i.i59.epil.init
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i59.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !36
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader147, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 2 uses
  %.not.i5.i.i56 = icmp eq ptr %i.az, null
  br i1 %.not.i5.i.i56, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !45, !range !67, !noundef !68
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.m, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.az)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.m, %bb.l, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.bd, align 8, !tbaa !45
  store ptr %.0.i.i.i55, ptr %i.ay, align 8, !tbaa !46
  store i32 %.pre-phi, ptr %i.ag, align 8, !tbaa !48
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.h, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %_ZN20btAlignedObjectArrayI12btQuaternionE6resizeEiRKS0_.exit
  store i32 %.pre-phi, ptr %i.ae, align 4, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !130 ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread, label %_ZNK11btMultiBody15isBaseKinematicEv.exit

_ZNK11btMultiBody15isBaseKinematicEv.exit:        ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !131
  %i.bi = and i32 %i.bh, 2
  %.not115 = icmp eq i32 %i.bi, 0
  br i1 %.not115, label %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread, label %bb.n

_ZNK11btMultiBody15isBaseKinematicEv.exit.thread: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit, %_ZNK11btMultiBody15isBaseKinematicEv.exit
  br label %bb.n

bb.n:                                             ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit, %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread
  %.sink145 = phi i64 [ 72, %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread ], [ 56, %_ZNK11btMultiBody15isBaseKinematicEv.exit ]
  %.sink = phi i64 [ 40, %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread ], [ 24, %_ZNK11btMultiBody15isBaseKinematicEv.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink145
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !406
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !130 ; 15 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !46
  %.sroa.23103.sroa.0.0.copyload154 = load <4 x float>, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !406 ; 4 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !9 ; 3 uses
  %i.bv = fneg float %i.bu                        ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !9 ; 3 uses
  %i.by = fneg float %i.bx                        ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !9 ; 3 uses
  %i.cb = fneg float %i.ca                        ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !9 ; 5 uses
  %i.ce = fmul float %i.bx, %i.bx
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.ce)
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.cf)
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.cg)
  %i.ci = fdiv float 2.000000e+00, %i.ch          ; 3 uses
  %i.cj = fmul float %i.ci, %i.bv                 ; 2 uses
  %i.ck = fmul float %i.ci, %i.by                 ; 3 uses
  %i.cl = fmul float %i.ci, %i.cb                 ; 4 uses
  %i.cm = fmul float %i.cd, %i.cj                 ; 2 uses
  %i.cn = fmul float %i.cd, %i.ck                 ; 2 uses
  %i.co = fmul float %i.cd, %i.cl                 ; 2 uses
  %i.cp = fmul float %i.cj, %i.bv                 ; 2 uses
  %i.cq = fmul float %i.ck, %i.bv                 ; 2 uses
  %i.cr = fmul float %i.cl, %i.bv                 ; 2 uses
  %i.cs = fmul float %i.ck, %i.by                 ; 2 uses
  %i.ct = fmul float %i.cl, %i.by                 ; 2 uses
  %i.cu = fmul float %i.cl, %i.cb                 ; 2 uses
  %i.cv = fadd float %i.cs, %i.cu
  %i.cw = fsub float 1.000000e+00, %i.cv
  %i.cx = fsub float %i.cq, %i.co
  %i.cy = fadd float %i.cr, %i.cn
  %i.cz = fadd float %i.cq, %i.co
  %i.da = fadd float %i.cp, %i.cu
  %i.db = fsub float 1.000000e+00, %i.da
  %i.dc = fsub float %i.ct, %i.cm
  %i.dd = fsub float %i.cr, %i.cn
  %i.de = fadd float %i.ct, %i.cm
  %i.df = fadd float %i.cp, %i.cs
  %i.dg = fsub float 1.000000e+00, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bp, i64 352 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !412
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !412
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  store float %i.cw, ptr %i.dk, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 76
  store float %i.cx, ptr %.sroa.592.0..sroa_idx, align 4
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  store float %i.cy, ptr %.sroa.793.0..sroa_idx, align 8
  %.sroa.894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 84
  store float 0.000000e+00, ptr %.sroa.894.0..sroa_idx, align 4, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  store float %i.cz, ptr %i.dl, align 8
  %.sroa.1196.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 92
  store float %i.db, ptr %.sroa.1196.16..sroa_idx, align 4
  %.sroa.1397.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  store float %i.dc, ptr %.sroa.1397.16..sroa_idx, align 8
  %.sroa.1598.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 100
  store float 0.000000e+00, ptr %.sroa.1598.16..sroa_idx, align 4, !tbaa !11
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  store float %i.dd, ptr %i.dm, align 8
  %.sroa.18100.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 108
  store float %i.de, ptr %.sroa.18100.32..sroa_idx, align 4
  %.sroa.19101.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  store float %i.dg, ptr %.sroa.19101.32..sroa_idx, align 8
  %.sroa.21102.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 116
  store float 0.000000e+00, ptr %.sroa.21102.32..sroa_idx, align 4, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  store <4 x float> %.sroa.23103.sroa.0.0.copyload154, ptr %i.dn, align 8, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.do = load i32, ptr %i.a, align 4, !tbaa !39
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.q

.preheader:                                       ; preds = %bb.q
  %i.dt = icmp sgt i32 %i.ie, 0
  br i1 %i.dt, label %.lr.ph118, label %._crit_edge

.lr.ph118:                                        ; preds = %.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.dx = load ptr, ptr %i.dq, align 8, !tbaa !38
  %i.dy = getelementptr inbounds nuw [688 x i8], ptr %i.dx, i64 %indvars.iv ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 20
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !84
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 368
  %i.ec = add nsw i32 %i.ea, 1
  %i.ed = load ptr, ptr %i.dr, align 8, !tbaa !406 ; 2 uses
  %i.ee = sext i32 %i.ec to i64                   ; 2 uses
  %i.ef = getelementptr inbounds [16 x i8], ptr %i.ed, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 380
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !9
  %i.ei = load float, ptr %i.eb, align 4, !tbaa !9 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 372
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.el = load <2 x float>, ptr %i.ek, align 4, !tbaa !9 ; 5 uses
  %i.em = extractelement <2 x float> %i.el, i64 1 ; 3 uses
  %i.en = load <2 x float>, ptr %i.ej, align 4, !tbaa !9 ; 4 uses
  %i.eo = extractelement <2 x float> %i.en, i64 1 ; 2 uses
  %i.ep = extractelement <2 x float> %i.en, i64 0
  %i.eq = fneg <2 x float> %i.en                  ; 2 uses
  %i.er = load <2 x float>, ptr %i.ef, align 4, !tbaa !9 ; 6 uses
  %i.es = extractelement <2 x float> %i.er, i64 0
  %i.et = fneg float %i.es
  %i.eu = fneg float %i.ei
  %i.ev = fneg float %i.eo
  %i.ew = fmul float %i.em, %i.ep
  %i.ex = fmul float %i.ei, %i.em
  %i.ey = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fa = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.ew, i64 1
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.er, <2 x float> %i.fb)
  %i.fd = shufflevector <2 x float> %i.el, <2 x float> %i.er, <2 x i32> <i32 0, i32 2>
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.fd, <2 x float> %i.fc)
  %i.ff = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fg = insertelement <2 x float> %i.ff, float %i.eu, i64 1
  %i.fh = shufflevector <2 x float> %i.er, <2 x float> %i.el, <2 x i32> <i32 1, i32 2>
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.fh, <2 x float> %i.fe)
  %i.fj = fmul float %i.ei, %i.et
  %i.fk = fmul float %i.em, %i.eo
  %i.fl = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.fj, i64 1
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.el, <2 x float> %i.fm)
  %i.fo = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fp = insertelement <2 x float> %i.fo, float %i.ei, i64 0
  %i.fq = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.fq, <2 x float> %i.fn)
  %i.fs = shufflevector <2 x float> %i.er, <2 x float> %i.el, <2 x i32> <i32 0, i32 2>
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.fs, <2 x float> %i.fr)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %indvars.iv.next ; 2 uses
  store <2 x float> %i.fi, ptr %i.fu, align 4
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store <2 x float> %i.ft, ptr %.sroa.412.0..sroa_idx, align 4
  %i.fv = load ptr, ptr %i.ds, align 8, !tbaa !46 ; 2 uses
  %i.fw = getelementptr inbounds [16 x i8], ptr %i.fv, i64 %i.ee ; 2 uses
  %i.fx = load ptr, ptr %i.dr, align 8, !tbaa !406
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %indvars.iv.next ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !9 ; 3 uses
  %i.gc = load ptr, ptr %i.dq, align 8, !tbaa !38
  %i.gd = getelementptr inbounds nuw [688 x i8], ptr %i.gc, i64 %indvars.iv ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 384
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 388
  %i.gg = load <2 x float>, ptr %i.fy, align 4, !tbaa !9 ; 4 uses
  %i.gh = load <2 x float>, ptr %i.fz, align 4, !tbaa !9 ; 5 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 1 ; 3 uses
  %i.gj = fneg <2 x float> %i.gg                  ; 2 uses
  %i.gk = fneg <2 x float> %i.gh
  %i.gl = fneg float %i.gi
  %i.gm = load <2 x float>, ptr %i.ge, align 4, !tbaa !9 ; 4 uses
  %i.gn = load <2 x float>, ptr %i.gf, align 4, !tbaa !9 ; 3 uses
  %i.go = fmul <2 x float> %i.gn, %i.gj
  %i.gp = extractelement <2 x float> %i.gm, i64 0 ; 2 uses
  %i.gq = fmul float %i.gp, %i.gl
  %i.gr = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gt = shufflevector <2 x float> %i.gn, <2 x float> %i.gm, <2 x i32> <i32 1, i32 2>
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.gt, <2 x float> %i.go)
  %i.gv = extractelement <2 x float> %i.gm, i64 1 ; 2 uses
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.gv, float %i.gq)
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gm, <2 x float> %i.gu) ; 5 uses
  %i.gy = extractelement <2 x float> %i.gn, i64 1 ; 2 uses
  %i.gz = extractelement <2 x float> %i.gg, i64 0 ; 2 uses
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.gy, float %i.gw) ; 3 uses
  %i.hb = extractelement <2 x float> %i.gh, i64 0 ; 2 uses
  %i.hc = fmul float %i.hb, %i.gv
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.gp, float %i.hc)
  %i.he = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.gy, float %i.hd) ; 2 uses
  %i.hf = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hg = insertelement <2 x float> %i.hf, float %i.ha, i64 1
  %i.hh = fmul <2 x float> %i.gs, %i.hg
  %i.hi = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.gg, <2 x float> %i.hh)
  %i.hl = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> %i.gx, <2 x i32> <i32 0, i32 2>
  %i.hn = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> %i.gg, <2 x i32> <i32 0, i32 2>
  %i.hp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.ho, <2 x float> %i.hk)
  %i.hq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.gk, <2 x float> %i.hp)
  %i.hr = extractelement <2 x float> %i.gx, i64 0
  %i.hs = fmul float %i.gb, %i.hr
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.he, float %i.gi, float %i.hs)
  %i.hu = extractelement <2 x float> %i.gx, i64 1
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.hb, float %i.ht)
  %i.hw = extractelement <2 x float> %i.gj, i64 0
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.hw, float %i.hv)
  %i.hy = load <2 x float>, ptr %i.fw, align 4, !tbaa !9
  %i.hz = fadd <2 x float> %i.hy, %i.hq
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !9
  %i.ic = fadd float %i.ib, %i.hx
  %.sroa.3.12.vec.insert.i73 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ic, i64 0
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %indvars.iv.next ; 2 uses
  store <2 x float> %i.hz, ptr %i.id, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i73, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !11
  %i.ie = load i32, ptr %i.a, align 4, !tbaa !39  ; 3 uses
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp slt i64 %indvars.iv.next, %i.if
  br i1 %i.ig, label %bb.q, label %.preheader, !llvm.loop !418

._crit_edge:                                      ; preds = %bb.t, %bb.p, %.preheader
  ret void

bb.r:                                             ; preds = %.lr.ph118, %bb.t
  %i.ih = phi i32 [ %i.ie, %.lr.ph118 ], [ %i.ko, %bb.t ]
  %indvars.iv120 = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next121, %bb.t ] ; 2 uses
  %i.ii = load ptr, ptr %i.du, align 8, !tbaa !38
  %i.ij = getelementptr inbounds nuw [688 x i8], ptr %i.ii, i64 %indvars.iv120
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 544
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !151 ; 16 uses
  %.not47 = icmp eq ptr %i.il, null
  br i1 %.not47, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 384
  %i.in = load i32, ptr %i.im, align 8, !tbaa !414
  %i.io = add nsw i32 %i.in, 1
  %i.ip = load ptr, ptr %i.dv, align 8, !tbaa !46
  %i.iq = sext i32 %i.io to i64                   ; 2 uses
  %i.ir = getelementptr inbounds [16 x i8], ptr %i.ip, i64 %i.iq
  %.sroa.23.sroa.0.0.copyload153 = load <4 x float>, ptr %i.ir, align 4
  %i.is = load ptr, ptr %i.dw, align 8, !tbaa !406
  %i.it = getelementptr inbounds [16 x i8], ptr %i.is, i64 %i.iq ; 4 uses
  %i.iu = load float, ptr %i.it, align 4, !tbaa !9 ; 3 uses
  %i.iv = fneg float %i.iu                        ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !9 ; 3 uses
  %i.iy = fneg float %i.ix                        ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !9 ; 3 uses
  %i.jb = fneg float %i.ja                        ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !9 ; 5 uses
  %i.je = fmul float %i.ix, %i.ix
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.iu, float %i.je)
  %i.jg = tail call float @llvm.fmuladd.f32(float %i.ja, float %i.ja, float %i.jf)
  %i.jh = tail call noundef float @llvm.fmuladd.f32(float %i.jd, float %i.jd, float %i.jg)
  %i.ji = fdiv float 2.000000e+00, %i.jh          ; 3 uses
  %i.jj = fmul float %i.ji, %i.iv                 ; 2 uses
  %i.jk = fmul float %i.ji, %i.iy                 ; 3 uses
  %i.jl = fmul float %i.ji, %i.jb                 ; 4 uses
  %i.jm = fmul float %i.jd, %i.jj                 ; 2 uses
  %i.jn = fmul float %i.jd, %i.jk                 ; 2 uses
  %i.jo = fmul float %i.jd, %i.jl                 ; 2 uses
  %i.jp = fmul float %i.jj, %i.iv                 ; 2 uses
  %i.jq = fmul float %i.jk, %i.iv                 ; 2 uses
  %i.jr = fmul float %i.jl, %i.iv                 ; 2 uses
  %i.js = fmul float %i.jk, %i.iy                 ; 2 uses
  %i.jt = fmul float %i.jl, %i.iy                 ; 2 uses
  %i.ju = fmul float %i.jl, %i.jb                 ; 2 uses
  %i.jv = fadd float %i.js, %i.ju
  %i.jw = fsub float 1.000000e+00, %i.jv
  %i.jx = fsub float %i.jq, %i.jo
  %i.jy = fadd float %i.jr, %i.jn
  %i.jz = fadd float %i.jq, %i.jo
  %i.ka = fadd float %i.jp, %i.ju
  %i.kb = fsub float 1.000000e+00, %i.ka
  %i.kc = fsub float %i.jt, %i.jm
  %i.kd = fsub float %i.jr, %i.jn
  %i.ke = fadd float %i.jt, %i.jm
  %i.kf = fadd float %i.jp, %i.js
  %i.kg = fsub float 1.000000e+00, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.il, i64 352 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !412
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 8, !tbaa !412
  %i.kk = getelementptr inbounds nuw i8, ptr %i.il, i64 72
  store float %i.jw, ptr %i.kk, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 76
  store float %i.jx, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 80
  store float %i.jy, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 84
  store float 0.000000e+00, ptr %.sroa.877.0..sroa_idx, align 4, !tbaa !11
  %i.kl = getelementptr inbounds nuw i8, ptr %i.il, i64 88
  store float %i.jz, ptr %i.kl, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 92
  store float %i.kb, ptr %.sroa.11.16..sroa_idx, align 4
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 96
  store float %i.kc, ptr %.sroa.13.16..sroa_idx, align 8
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 100
  store float 0.000000e+00, ptr %.sroa.15.16..sroa_idx, align 4, !tbaa !11
  %i.km = getelementptr inbounds nuw i8, ptr %i.il, i64 104
  store float %i.kd, ptr %i.km, align 8
  %.sroa.18.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 108
  store float %i.ke, ptr %.sroa.18.32..sroa_idx, align 4
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 112
  store float %i.kg, ptr %.sroa.19.32..sroa_idx, align 8
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 116
  store float 0.000000e+00, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !11
  %i.kn = getelementptr inbounds nuw i8, ptr %i.il, i64 120
  store <4 x float> %.sroa.23.sroa.0.0.copyload153, ptr %i.kn, align 8, !tbaa !11
  %.pre123 = load i32, ptr %i.a, align 4, !tbaa !39
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ko = phi i32 [ %.pre123, %bb.s ], [ %i.ih, %bb.r ] ; 2 uses
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.kp = sext i32 %i.ko to i64
  %i.kq = icmp slt i64 %indvars.iv.next121, %i.kp
  br i1 %i.kq, label %bb.r, label %._crit_edge, !llvm.loop !419
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11btMultiBody28calculateSerializeBufferSizeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #18 align 2 {
bb.a:
  ret i32 112
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK11btMultiBody9serializeEPvP12btSerializer(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef captures(none) initializes((0, 96)) %1, ptr noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !9
  store float %i.b, ptr %1, align 4, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.d, ptr %i.e, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load float, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.g, ptr %i.h, align 4, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load float, ptr %i.i, align 4, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.j, ptr %i.k, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load float, ptr %i.m, align 8, !tbaa !9
  %i.o = fneg float %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.q = load float, ptr %i.p, align 4, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load <2 x float>, ptr %i.l, align 8, !tbaa !9
  %i.t = fneg <2 x float> %i.s
  store <2 x float> %i.t, ptr %i.r, align 4, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.o, ptr %i.u, align 4, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.q, ptr %i.v, align 4, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.aa = load float, ptr %i.z, align 4, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load <2 x float>, ptr %i.y, align 4, !tbaa !9
  store <2 x float> %i.ac, ptr %i.ab, align 4, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.aa, ptr %i.ad, align 4, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load <2 x float>, ptr %i.x, align 4, !tbaa !9
  store <2 x float> %i.ai, ptr %i.ah, align 4, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.ag, ptr %i.aj, align 4, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float 0.000000e+00, ptr %i.ak, align 4, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load float, ptr %i.al, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.am, ptr %i.an, align 8, !tbaa !420
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !9
  store float %i.aq, ptr %i.ap, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load float, ptr %i.ar, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.as, ptr %i.at, align 4, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.av = load float, ptr %i.au, align 4, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.av, ptr %i.aw, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.ay, ptr %i.az, align 4, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !426
  %i.bc = load ptr, ptr %2, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bb) ; 2 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bf) ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !427
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bl = load ptr, ptr %2, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bf)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !39 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !428
  %.not118 = icmp eq i32 %i.bp, 0
  br i1 %.not118, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = load ptr, ptr %2, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 472, i32 noundef %i.bp) ; 2 uses
  %i.bv = icmp sgt i32 %i.bp, 0
  br i1 %i.bv, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !429 ; 2 uses
  %i.by = ptrtoaddr ptr %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %wide.trip.count154 = zext nneg i32 %i.bp to i64
  %i.ca = add i64 %i.by, -128
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph143, %bb.j
  %indvars.iv151 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next152, %bb.j ] ; 6 uses
  %.0141 = phi ptr [ %i.bx, %.lr.ph143 ], [ %i.ky, %bb.j ] ; 48 uses
  %i.cb = mul nsw i64 %indvars.iv151, -216
  %i.cc = add i64 %i.ca, %i.cb
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !38 ; 2 uses
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %i.cf = getelementptr inbounds nuw [688 x i8], ptr %i.cd, i64 %indvars.iv151 ; 44 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 564
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !85
  %i.ci = getelementptr inbounds nuw i8, ptr %.0141, i64 332
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !431
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 556
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !86 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0141, i64 320
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !433
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 560
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !87 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0141, i64 412
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !434
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.0141, i64 240
  %i.cr = load float, ptr %i.cp, align 4, !tbaa !9
  store float %i.cr, ptr %i.cq, align 8, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %.0141, i64 244
  store float %i.ct, ptr %i.cu, align 4, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %.0141, i64 248
  store float %i.cw, ptr %i.cx, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %.0141, i64 252
  store float %i.cz, ptr %i.da, align 4, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.dc = getelementptr inbounds nuw i8, ptr %.0141, i64 256
  %i.dd = load float, ptr %i.db, align 8, !tbaa !9
  store float %i.dd, ptr %i.dc, align 8, !tbaa !9
  %i.de = getelementptr inbounds nuw i8, ptr %i.cf, i64 76
  %i.df = load float, ptr %i.de, align 4, !tbaa !9
  %i.dg = getelementptr inbounds nuw i8, ptr %.0141, i64 260
  store float %i.df, ptr %i.dg, align 4, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.di = load float, ptr %i.dh, align 8, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %.0141, i64 264
  store float %i.di, ptr %i.dj, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cf, i64 84
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %.0141, i64 268
  store float %i.dl, ptr %i.dm, align 4, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %i.do = getelementptr inbounds nuw i8, ptr %.0141, i64 272
  %i.dp = load float, ptr %i.dn, align 8, !tbaa !9
  store float %i.dp, ptr %i.do, align 8, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cf, i64 92
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %.0141, i64 276
  store float %i.dr, ptr %i.ds, align 4, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %i.du = load float, ptr %i.dt, align 8, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %.0141, i64 280
end_hunk_2
