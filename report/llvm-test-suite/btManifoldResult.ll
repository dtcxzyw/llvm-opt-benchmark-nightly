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
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16btManifoldResult, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %2, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %i.f, i64 16, i1 false), !tbaa.struct !21
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !21
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !21
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.m, i64 16, i1 false), !tbaa.struct !21
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !21
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !21
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !21
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define dso_local void @_ZN16btManifoldResult15addContactPointERK9btVector3S2_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %class.btManifoldPoint, align 8     ; 25 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(744) %i.b)
  %i.d = fcmp ogt float %3, %i.c
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %.not = icmp eq ptr %i.g, %i.i                  ; 27 uses
  %5 = load float, ptr %1, align 4, !tbaa !27
  %6 = fmul float %3, %5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !27
  %i.l = fmul float %3, %i.k
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = fmul float %3, %8
  %10 = load float, ptr %2, align 4, !tbaa !27    ; 2 uses
  %11 = fadd float %6, %10                        ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %13 = load float, ptr %12, align 4, !tbaa !27   ; 2 uses
  %14 = fadd float %i.l, %13                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !27 ; 2 uses
  %i.o = fadd float %9, %i.n                      ; 2 uses
  %.sroa.0.0.vec.insert.i26 = insertelement <2 x float> poison, float %11, i64 0
  %.sroa.0.4.vec.insert.i27 = insertelement <2 x float> %.sroa.0.0.vec.insert.i26, float %14, i64 1
  %.sroa.3.12.vec.insert.i28 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.o, i64 0
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
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.177
  %i.r = load float, ptr %i.q, align 8, !tbaa !27
  %i.s = fsub float %11, %i.r                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.178
  %i.u = load float, ptr %i.t, align 4, !tbaa !27
  %i.v = fsub float %14, %i.u                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.179
  %i.x = load float, ptr %i.w, align 8, !tbaa !27
  %i.y = fsub float %i.o, %i.x                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.180
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.181
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.182
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.183
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.184
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.185
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.186
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.187
  %i.ah = load float, ptr %i.p, align 8, !tbaa !27, !noalias !28
  %i.ai = load float, ptr %i.z, align 8, !tbaa !27, !noalias !28
  %i.aj = load float, ptr %i.aa, align 8, !tbaa !27, !noalias !28
  %i.ak = load float, ptr %i.ab, align 4, !tbaa !27, !noalias !28
  %i.al = load float, ptr %i.ac, align 4, !tbaa !27, !noalias !28
  %i.am = load float, ptr %i.ad, align 4, !tbaa !27, !noalias !28
  %i.an = load float, ptr %i.ae, align 8, !tbaa !27, !noalias !28
  %i.ao = load float, ptr %i.af, align 8, !tbaa !27, !noalias !28
  %i.ap = load float, ptr %i.ag, align 8, !tbaa !27, !noalias !28
  %i.aq = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.al, i64 1
  %i.au = fmul <2 x float> %i.ar, %i.at
  %i.av = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.ak, i64 1
  %i.ax = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.au)
  %i.ba = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.am, i64 1
  %i.bc = insertelement <2 x float> poison, float %i.y, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bd, <2 x float> %i.az)
  %i.bf = fmul float %i.v, %i.ao
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.an, float %i.s, float %i.bf)
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.y, float %i.bg)
  %.sroa.3.12.vec.insert.i4.i38 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bh, i64 0
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.188
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.189
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !27
  %i.bl = fsub float %10, %i.bk                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.190
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !27
  %i.bo = fsub float %13, %i.bn                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %.191
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !27
  %i.br = fsub float %i.n, %i.bq                  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.192
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %.193
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.194
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %.195
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.196
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %.197
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.198
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %.199
  %i.ca = load float, ptr %i.bi, align 8, !tbaa !27, !noalias !28
  %i.cb = load float, ptr %i.bs, align 8, !tbaa !27, !noalias !28
  %i.cc = load float, ptr %i.bt, align 8, !tbaa !27, !noalias !28
  %i.cd = load float, ptr %i.bu, align 4, !tbaa !27, !noalias !28
  %i.ce = load float, ptr %i.bv, align 4, !tbaa !27, !noalias !28
  %i.cf = load float, ptr %i.bw, align 4, !tbaa !27, !noalias !28
  %i.cg = load float, ptr %i.bx, align 8, !tbaa !27, !noalias !28
  %i.ch = load float, ptr %i.by, align 8, !tbaa !27, !noalias !28
  %i.ci = load float, ptr %i.bz, align 8, !tbaa !27, !noalias !28
  %i.cj = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.ce, i64 1
  %i.cn = fmul <2 x float> %i.ck, %i.cm
  %i.co = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.cd, i64 1
  %i.cq = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.cr, <2 x float> %i.cn)
  %i.ct = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.cf, i64 1
  %i.cv = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cw, <2 x float> %i.cs)
  %i.cy = fmul float %i.bo, %i.ch
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.bl, float %i.cy)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.ci, float %i.br, float %i.cz)
  %.sroa.3.12.vec.insert.i4.i43 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.da, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store <2 x float> %i.be, ptr %4, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i38, ptr %.sroa.547.0..sroa_idx, align 8, !tbaa !22
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> %i.cx, ptr %i.db, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i4.i43, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !21
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %3, ptr %i.dd, align 8, !tbaa !29
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 88
  store <2 x float> zeroinitializer, ptr %i.de, align 4, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr null, ptr %i.dg, align 8, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 120
  store float 0.000000e+00, ptr %i.dh, align 8, !tbaa !33
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 124
  store i8 0, ptr %i.di, align 4, !tbaa !34
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 128
  store <2 x float> zeroinitializer, ptr %i.dj, align 8, !tbaa !27
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 0, ptr %i.dk, align 8, !tbaa !35
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i27, ptr %i.dl, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i28, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !21
  %i.dn = call noundef i32 @_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint(ptr noundef nonnull align 8 dereferenceable(744) %i.e, ptr noundef nonnull align 8 dereferenceable(172) %4) ; 3 uses
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !19  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !20 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 236
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !36
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 236
  %i.du = load float, ptr %i.dt, align 4, !tbaa !36
  %i.dv = fmul float %i.ds, %i.du                 ; 2 uses
  %i.dw = fcmp olt float %i.dv, -1.000000e+01
  %.0.i = select i1 %i.dw, float -1.000000e+01, float %i.dv ; 2 uses
  %i.dx = fcmp ogt float %.0.i, 1.000000e+01
  %.1.i = select i1 %i.dx, float 1.000000e+01, float %.0.i
  store float %.1.i, ptr %i.de, align 4, !tbaa !40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 240
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 240
  %i.eb = load float, ptr %i.ea, align 8, !tbaa !41
  %i.ec = fmul float %i.dz, %i.eb
  store float %i.ec, ptr %i.df, align 8, !tbaa !42
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink175 = phi i64 [ 160, %bb.c ], [ 164, %bb.b ]
  %.sink174 = phi i64 [ 164, %bb.c ], [ 160, %bb.b ]
  %.sink173 = phi i64 [ 168, %bb.c ], [ 172, %bb.b ]
  %.sink172 = phi i64 [ 172, %bb.c ], [ 168, %bb.b ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %.sink175
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %.sink174
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 %.sink173
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink172
  %.sink = load i32, ptr %i.eg, align 4, !tbaa !4
  %.sink58 = load i32, ptr %i.ef, align 4, !tbaa !4
  %.sink59 = load i32, ptr %i.ee, align 4, !tbaa !4
  %.sink60 = load i32, ptr %i.ed, align 4, !tbaa !4
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  store i32 %.sink60, ptr %i.eh, align 4, !tbaa !43
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  store i32 %.sink59, ptr %i.ei, align 8, !tbaa !44
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 100 ; 2 uses
  store i32 %.sink58, ptr %i.ej, align 4, !tbaa !45
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  store i32 %.sink, ptr %i.ek, align 8, !tbaa !46
  %i.el = icmp sgt i32 %i.dn, -1
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  br i1 %i.el, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = zext nneg i32 %i.dn to i64
  %i.ep = getelementptr inbounds nuw [176 x i8], ptr %i.en, i64 %i.eo ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 136 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !35
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 120 ; 2 uses
  %i.et = load float, ptr %i.es, align 8, !tbaa !33
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 128 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 112 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !32
  %i.ex = load <2 x float>, ptr %i.eu, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(172) %i.ep, ptr noundef nonnull align 8 dereferenceable(172) %4, i64 172, i1 false), !tbaa.struct !47
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !32
  store float %i.et, ptr %i.es, align 8, !tbaa !33
  store <2 x float> %i.ex, ptr %i.eu, align 8, !tbaa !27
  store i32 %i.er, ptr %i.eq, align 8, !tbaa !35
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ey = call noundef i32 @_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPoint(ptr noundef nonnull align 8 dereferenceable(744) %i.em, ptr noundef nonnull align 8 dereferenceable(172) %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.dn, %bb.e ], [ %i.ey, %bb.f ]
  %i.ez = load ptr, ptr @gContactAddedCallback, align 8, !tbaa !48 ; 2 uses
  %.not22 = icmp eq ptr %i.ez, null
  br i1 %.not22, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fa = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 216
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !50
  %i.fd = and i32 %i.fc, 8
  %.not23 = icmp eq i32 %i.fd, 0
  br i1 %.not23, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fe = load ptr, ptr %i.dp, align 8, !tbaa !20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 216
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !50
  %i.fh = and i32 %i.fg, 8
  %.not24 = icmp eq i32 %i.fh, 0
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %. = select i1 %.not, ptr %i.h, ptr %i.dp
  %i.fi = load ptr, ptr %., align 8, !tbaa !51
  %.in25 = select i1 %.not, ptr %i.dp, ptr %i.h
  %i.fj = load ptr, ptr %.in25, align 8, !tbaa !51
  %i.fk = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = sext i32 %.0 to i64
  %i.fn = getelementptr inbounds [176 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = load i32, ptr %i.eh, align 4, !tbaa !43
  %i.fp = load i32, ptr %i.ej, align 4, !tbaa !45
  %i.fq = load i32, ptr %i.ei, align 8, !tbaa !44
  %i.fr = load i32, ptr %i.ek, align 8, !tbaa !46
  %i.fs = call noundef zeroext i1 %i.ez(ptr noundef nonnull align 8 dereferenceable(172) %i.fn, ptr noundef %i.fi, i32 noundef %i.fo, i32 noundef %i.fp, ptr noundef %i.fj, i32 noundef %i.fq, i32 noundef %i.fr) ; 0 uses
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
end_hunk_0
