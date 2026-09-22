Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btManifoldResult?download=true
inline.NumInlined: 66
inline.NumDeleted: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btManifoldPoint = type <{ %class.btVector3, %class.btVector3, %class.btVector3, %class.btVector3, %class.btVector3, float, float, float, i32, i32, i32, i32, [4 x i8], ptr, float, i8, [3 x i8], float, float, i32, %class.btVector3, %class.btVector3, [4 x i8] }>
%class.btVector3 = type { [4 x float] }

$_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev = comdat any

$_ZN16btManifoldResultD0Ev = comdat any

$_ZN16btManifoldResult20setShapeIdentifiersAEii = comdat any

$_ZN16btManifoldResult20setShapeIdentifiersBEii = comdat any

$_ZTIN36btDiscreteCollisionDetectorInterface6ResultE = comdat any

$_ZTSN36btDiscreteCollisionDetectorInterface6ResultE = comdat any

@gContactAddedCallback = dso_local local_unnamed_addr global ptr null, align 8
@_ZTV16btManifoldResult = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI16btManifoldResult, ptr @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev, ptr @_ZN16btManifoldResultD0Ev, ptr @_ZN16btManifoldResult20setShapeIdentifiersAEii, ptr @_ZN16btManifoldResult20setShapeIdentifiersBEii, ptr @_ZN16btManifoldResult15addContactPointERK9btVector3S2_f] }, align 8
@_ZTI16btManifoldResult = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16btManifoldResult, ptr @_ZTIN36btDiscreteCollisionDetectorInterface6ResultE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS16btManifoldResult = dso_local constant [19 x i8] c"16btManifoldResult\00", align 1
@_ZTIN36btDiscreteCollisionDetectorInterface6ResultE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN36btDiscreteCollisionDetectorInterface6ResultE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN36btDiscreteCollisionDetectorInterface6ResultE = linkonce_odr dso_local constant [48 x i8] c"N36btDiscreteCollisionDetectorInterface6ResultE\00", comdat, align 1

@_ZN16btManifoldResultC1EP17btCollisionObjectS1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN16btManifoldResultC2EP17btCollisionObjectS1_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN16btManifoldResultC2EP17btCollisionObjectS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(176) initializes((0, 160)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16btManifoldResult, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %2, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %i.f, i64 16, i1 false), !tbaa.struct !20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !20
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.m, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !20
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !20
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define dso_local void @_ZN16btManifoldResult15addContactPointERK9btVector3S2_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %class.btManifoldPoint, align 8     ; 25 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(744) %i.b)
  %i.d = fcmp ogt float %3, %i.c
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %.not = icmp eq ptr %i.g, %i.i                  ; 27 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.176 = select i1 %.not, i64 16, i64 80
  %.177 = select i1 %.not, i64 64, i64 128
  %.178 = select i1 %.not, i64 68, i64 132
  %.179 = select i1 %.not, i64 72, i64 136
  %.180 = select i1 %.not, i64 32, i64 96
  %.181 = select i1 %.not, i64 48, i64 112
  %.182 = select i1 %.not, i64 20, i64 84
  %.183 = select i1 %.not, i64 36, i64 100
  %.184 = select i1 %.not, i64 52, i64 116
  %.185 = select i1 %.not, i64 24, i64 88
  %.186 = select i1 %.not, i64 40, i64 104
  %.187 = select i1 %.not, i64 56, i64 120
  %.188 = select i1 %.not, i64 80, i64 16
  %.189 = select i1 %.not, i64 128, i64 64
  %.190 = select i1 %.not, i64 132, i64 68
  %.191 = select i1 %.not, i64 136, i64 72
  %.192 = select i1 %.not, i64 96, i64 32
  %.193 = select i1 %.not, i64 112, i64 48
  %.194 = select i1 %.not, i64 84, i64 20
  %.195 = select i1 %.not, i64 100, i64 36
  %.196 = select i1 %.not, i64 116, i64 52
  %.197 = select i1 %.not, i64 88, i64 24
  %.198 = select i1 %.not, i64 104, i64 40
  %.199 = select i1 %.not, i64 120, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.176
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.177
  %i.m = load float, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.178
  %i.o = load float, ptr %i.n, align 4, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.179
  %i.q = load float, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.180
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.181
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.182
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.183
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.184
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.185
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.186
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.187
  %i.z = load float, ptr %i.k, align 8, !tbaa !27, !noalias !28
  %i.aa = load float, ptr %i.r, align 8, !tbaa !27, !noalias !28
  %i.ab = load float, ptr %i.s, align 8, !tbaa !27, !noalias !28
  %i.ac = load float, ptr %i.t, align 4, !tbaa !27, !noalias !28
  %i.ad = load float, ptr %i.u, align 4, !tbaa !27, !noalias !28
  %i.ae = load float, ptr %i.v, align 4, !tbaa !27, !noalias !28
  %i.af = load float, ptr %i.w, align 8, !tbaa !27, !noalias !28
  %i.ag = load float, ptr %i.x, align 8, !tbaa !27, !noalias !28
  %i.ah = load float, ptr %i.y, align 8, !tbaa !27, !noalias !28
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.188
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.189
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.190
  %i.am = load float, ptr %i.al, align 4, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.191
  %i.ao = load float, ptr %i.an, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.192
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.193
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.194
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.195
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.196
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.197
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.198
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.199
  %i.ax = load float, ptr %i.ai, align 8, !tbaa !27, !noalias !28
  %i.ay = load float, ptr %i.ap, align 8, !tbaa !27, !noalias !28
  %i.az = load float, ptr %i.aq, align 8, !tbaa !27, !noalias !28
  %i.ba = load float, ptr %i.ar, align 4, !tbaa !27, !noalias !28
  %i.bb = load float, ptr %i.as, align 4, !tbaa !27, !noalias !28
  %i.bc = load float, ptr %i.at, align 4, !tbaa !27, !noalias !28
  %i.bd = load float, ptr %i.au, align 8, !tbaa !27, !noalias !28
  %i.be = load float, ptr %i.av, align 8, !tbaa !27, !noalias !28
  %i.bf = load float, ptr %i.aw, align 8, !tbaa !27, !noalias !28
  %5 = load <3 x float>, ptr %1, align 4, !tbaa !27
  %6 = insertelement <3 x float> poison, float %3, i64 0
  %7 = shufflevector <3 x float> %6, <3 x float> poison, <3 x i32> zeroinitializer
  %8 = fmul <3 x float> %7, %5
  %9 = load float, ptr %i.j, align 4, !tbaa !27
  %10 = load <3 x float>, ptr %2, align 4, !tbaa !27 ; 3 uses
  %11 = fadd <3 x float> %8, %10                  ; 3 uses
  %12 = shufflevector <3 x float> %11, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %13 = shufflevector <3 x float> %11, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bg = insertelement <2 x float> %13, float 0.000000e+00, i64 1
  %14 = insertelement <3 x float> poison, float %i.m, i64 0
  %15 = insertelement <3 x float> %14, float %i.o, i64 1
  %16 = insertelement <3 x float> %15, float %i.q, i64 2
  %17 = fsub <3 x float> %11, %16                 ; 6 uses
  %18 = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.ad, i64 1
  %i.bj = fmul <2 x float> %18, %i.bi
  %i.bk = insertelement <2 x float> poison, float %i.z, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.ac, i64 1
  %i.bm = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bm, <2 x float> %i.bj)
  %i.bo = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.ae, i64 1
  %19 = shufflevector <3 x float> %17, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %19, <2 x float> %i.bn)
  %21 = extractelement <3 x float> %17, i64 1
  %i.bq = fmul float %21, %i.ag
  %22 = extractelement <3 x float> %17, i64 0
  %i.br = tail call float @llvm.fmuladd.f32(float %i.af, float %22, float %i.bq)
  %23 = extractelement <3 x float> %17, i64 2
  %24 = tail call noundef float @llvm.fmuladd.f32(float %i.ah, float %23, float %i.br)
  %.sroa.3.12.vec.insert.i4.i38 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %24, i64 0
  %i.bs = fsub float %9, %i.am                    ; 2 uses
  %i.bt = extractelement <3 x float> %10, i64 0
  %i.bu = fsub float %i.bt, %i.ak                 ; 2 uses
  %25 = extractelement <3 x float> %10, i64 2
  %i.bv = fsub float %25, %i.ao                   ; 2 uses
  %i.bw = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bb, i64 1
  %i.ca = fmul <2 x float> %i.bx, %i.bz
  %i.cb = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.ba, i64 1
  %i.cd = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.ce, <2 x float> %i.ca)
  %i.cg = insertelement <2 x float> poison, float %i.az, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.bc, i64 1
  %i.ci = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.cj, <2 x float> %i.cf)
  %i.cl = fmul float %i.bs, %i.be
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bu, float %i.cl)
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bv, float %i.cm)
  %.sroa.3.12.vec.insert.i4.i43 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cn, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store <2 x float> %20, ptr %4, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i38, ptr %.sroa.547.0..sroa_idx, align 8, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> %i.ck, ptr %i.co, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i4.i43, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !20
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %3, ptr %i.cq, align 8, !tbaa !31
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 88
  store <2 x float> zeroinitializer, ptr %i.cr, align 4, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr null, ptr %i.ct, align 8, !tbaa !32
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 120
  store float 0.000000e+00, ptr %i.cu, align 8, !tbaa !33
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 124
  store i8 0, ptr %i.cv, align 4, !tbaa !34
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 128
  store <2 x float> zeroinitializer, ptr %i.cw, align 8, !tbaa !27
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 0, ptr %i.cx, align 8, !tbaa !35
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %12, ptr %i.cy, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %i.bg, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %i.da = call noundef i32 @_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint(ptr noundef nonnull align 8 dereferenceable(744) %i.e, ptr noundef nonnull align 8 dereferenceable(172) %4) ; 3 uses
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !17  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !18 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 236
  %i.df = load float, ptr %i.de, align 4, !tbaa !39
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 236
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !39
  %i.di = fmul float %i.df, %i.dh                 ; 2 uses
  %i.dj = fcmp olt float %i.di, -1.000000e+01
  %spec.store.select.i = select i1 %i.dj, float -1.000000e+01, float %i.di ; 2 uses
  %i.dk = fcmp ogt float %spec.store.select.i, 1.000000e+01
  %spec.store.select1.i = select i1 %i.dk, float 1.000000e+01, float %spec.store.select.i
  store float %spec.store.select1.i, ptr %i.cr, align 4, !tbaa !40
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 240
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 240
  %i.do = load float, ptr %i.dn, align 8, !tbaa !41
  %i.dp = fmul float %i.dm, %i.do
  store float %i.dp, ptr %i.cs, align 8, !tbaa !42
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink175 = phi i64 [ 160, %bb.c ], [ 164, %bb.b ]
  %.sink174 = phi i64 [ 164, %bb.c ], [ 160, %bb.b ]
  %.sink173 = phi i64 [ 168, %bb.c ], [ 172, %bb.b ]
  %.sink172 = phi i64 [ 172, %bb.c ], [ 168, %bb.b ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink175
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sink174
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 %.sink173
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %.sink172
  %.sink = load i32, ptr %i.dt, align 4, !tbaa !7
  %.sink58 = load i32, ptr %i.ds, align 4, !tbaa !7
  %.sink59 = load i32, ptr %i.dr, align 4, !tbaa !7
  %.sink60 = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  store i32 %.sink60, ptr %i.du, align 4, !tbaa !43
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  store i32 %.sink59, ptr %i.dv, align 8, !tbaa !44
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 100 ; 2 uses
  store i32 %.sink58, ptr %i.dw, align 4, !tbaa !45
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  store i32 %.sink, ptr %i.dx, align 8, !tbaa !46
  %i.dy = icmp sgt i32 %i.da, -1
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  br i1 %i.dy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = zext nneg i32 %i.da to i64
  %i.ec = getelementptr inbounds nuw [176 x i8], ptr %i.ea, i64 %i.eb ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 136 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !35
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 120 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 8, !tbaa !33
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 128 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 112 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !32
  %i.ek = load <2 x float>, ptr %i.eh, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(172) %i.ec, ptr noundef nonnull align 8 dereferenceable(172) %4, i64 172, i1 false), !tbaa.struct !49
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !32
  store float %i.eg, ptr %i.ef, align 8, !tbaa !33
  store <2 x float> %i.ek, ptr %i.eh, align 8, !tbaa !27
  store i32 %i.ee, ptr %i.ed, align 8, !tbaa !35
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.el = call noundef i32 @_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPoint(ptr noundef nonnull align 8 dereferenceable(744) %i.dz, ptr noundef nonnull align 8 dereferenceable(172) %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.da, %bb.e ], [ %i.el, %bb.f ]
  %i.em = load ptr, ptr @gContactAddedCallback, align 8, !tbaa !47 ; 2 uses
  %.not22 = icmp eq ptr %i.em, null
  br i1 %.not22, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.en = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 216
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !50
  %i.eq = and i32 %i.ep, 8
  %.not23 = icmp eq i32 %i.eq, 0
  br i1 %.not23, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.er = load ptr, ptr %i.dc, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 216
  %i.et = load i32, ptr %i.es, align 8, !tbaa !50
  %i.eu = and i32 %i.et, 8
  %.not24 = icmp eq i32 %i.eu, 0
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %. = select i1 %.not, ptr %i.h, ptr %i.dc
  %i.ev = load ptr, ptr %., align 8, !tbaa !51
  %.in25 = select i1 %.not, ptr %i.dc, ptr %i.h
  %i.ew = load ptr, ptr %.in25, align 8, !tbaa !51
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = sext i32 %.0 to i64
  %i.fa = getelementptr inbounds [176 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load i32, ptr %i.du, align 4, !tbaa !43
  %i.fc = load i32, ptr %i.dw, align 4, !tbaa !45
  %i.fd = load i32, ptr %i.dv, align 8, !tbaa !44
  %i.fe = load i32, ptr %i.dx, align 8, !tbaa !46
  %i.ff = call noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(172) %i.fa, ptr noundef %i.ev, i32 noundef %i.fb, i32 noundef %i.fc, ptr noundef %i.ew, i32 noundef %i.fd, i32 noundef %i.fe) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

declare noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef i32 @_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint(ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(172)) local_unnamed_addr #2

declare noundef i32 @_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPoint(ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(172)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN16btManifoldResultD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btManifoldResult20setShapeIdentifiersAEii(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %1, ptr %i.a, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %2, ptr %i.b, align 8, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btManifoldResult20setShapeIdentifiersBEii(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %1, ptr %i.a, align 4, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %2, ptr %i.b, align 4, !tbaa !55
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
end_hunk_0
