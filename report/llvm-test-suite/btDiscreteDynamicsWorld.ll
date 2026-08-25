Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btDiscreteDynamicsWorld?download=true
inline.NumInlined: 1209
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint:bb.a
  %i.atd = load ptr, ptr %i.atc, align 8
  %i.ate = tail call noundef ptr %i.atd(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @_ZN12btIDebugDraw13drawTransformERK11btTransformf(ptr noundef nonnull align 8 dereferenceable(8) %i.ate, ptr noundef nonnull align 4 dereferenceable(64) %27, float noundef %i.t)
  %i.atf = getelementptr inbounds nuw i8, ptr %1, i64 908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %27, ptr noundef nonnull align 4 dereferenceable(64) %i.atf, i64 16, i1 false), !tbaa.struct !147
  %i.atg = getelementptr inbounds nuw i8, ptr %1, i64 924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.asw, ptr noundef nonnull align 4 dereferenceable(16) %i.atg, i64 16, i1 false), !tbaa.struct !147
  %i.ath = getelementptr inbounds nuw i8, ptr %1, i64 940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.asy, ptr noundef nonnull align 4 dereferenceable(16) %i.ath, i64 16, i1 false), !tbaa.struct !147
  %i.ati = getelementptr inbounds nuw i8, ptr %1, i64 956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.asz, ptr noundef nonnull align 4 dereferenceable(16) %i.ati, i64 16, i1 false), !tbaa.struct !147
  %i.atj = load ptr, ptr %0, align 8, !tbaa !19
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 32
  %i.atl = load ptr, ptr %i.atk, align 8
  %i.atm = call noundef ptr %i.atl(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @_ZN12btIDebugDraw13drawTransformERK11btTransformf(ptr noundef nonnull align 8 dereferenceable(8) %i.atm, ptr noundef nonnull align 4 dereferenceable(64) %27, float noundef %i.t)
  br label %bb.ag

.critedge166:                                     ; preds = %bb.ae
  %i.atn = getelementptr inbounds nuw i8, ptr %1, i64 908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %27, ptr noundef nonnull align 4 dereferenceable(64) %i.atn, i64 16, i1 false), !tbaa.struct !147
  %i.ato = getelementptr inbounds nuw i8, ptr %1, i64 924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.asw, ptr noundef nonnull align 4 dereferenceable(16) %i.ato, i64 16, i1 false), !tbaa.struct !147
  %i.atp = getelementptr inbounds nuw i8, ptr %1, i64 940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.asy, ptr noundef nonnull align 4 dereferenceable(16) %i.atp, i64 16, i1 false), !tbaa.struct !147
  %i.atq = getelementptr inbounds nuw i8, ptr %1, i64 956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.asz, ptr noundef nonnull align 4 dereferenceable(16) %i.atq, i64 16, i1 false), !tbaa.struct !147
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge166, %bb.af
  br i1 %.not160, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 852
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.18.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 868
  %.sroa.18.16.copyload = load float, ptr %.sroa.18.16..sroa_idx, align 4
  %.sroa.20364.32.copyload = load float, ptr %i.asx, align 4 ; 2 uses
  %.sroa.24.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 880
  %.sroa.24.32.copyload = load float, ptr %.sroa.24.32..sroa_idx, align 8 ; 2 uses
  %.sroa.27.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 884
  %.sroa.27.32.copyload = load float, ptr %.sroa.27.32..sroa_idx, align 4
  %.sroa.34.48..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 900
  %.sroa.34.48.copyload = load float, ptr %.sroa.34.48..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.atr = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ats = load <2 x float>, ptr %i.asu, align 4  ; 2 uses
  %i.att = load <2 x float>, ptr %i.asv, align 4  ; 2 uses
  %i.atu = load <2 x float>, ptr %i.ata, align 4  ; 2 uses
  %i.atv = shufflevector <2 x float> %i.ats, <2 x float> %i.att, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.atw = fmul <2 x float> %i.atv, zeroinitializer ; 2 uses
  %i.atx = shufflevector <2 x float> %i.ats, <2 x float> %i.att, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.aty = insertelement <2 x float> poison, float %.sroa.9.0.copyload, i64 0
  %i.atz = insertelement <2 x float> %i.aty, float %.sroa.18.16.copyload, i64 1 ; 2 uses
  %i.aua = fmul float %.sroa.24.32.copyload, 0.000000e+00
  %i.aub = getelementptr inbounds nuw i8, ptr %28, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.auc = load <2 x float>, ptr %i.atr, align 8, !tbaa !8 ; 3 uses
  %i.aud = shufflevector <2 x float> %i.auc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aue = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atx, <2 x float> %i.aud, <2 x float> %i.atw)
  %i.auf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atz, <2 x float> zeroinitializer, <2 x float> %i.aue)
  %i.aug = fadd <2 x float> %i.atu, %i.auf
  %i.auh = insertelement <2 x float> poison, float %.sroa.20364.32.copyload, i64 0
  %i.aui = shufflevector <2 x float> %i.auh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.auj = insertelement <2 x float> poison, float %i.aua, i64 0
  %i.auk = shufflevector <2 x float> %i.auj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aul = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aui, <2 x float> %i.auc, <2 x float> %i.auk)
  %i.aum = insertelement <2 x float> poison, float %.sroa.27.32.copyload, i64 0
  %i.aun = shufflevector <2 x float> %i.aum, <2 x float> poison, <2 x i32> zeroinitializer
  %i.auo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aun, <2 x float> zeroinitializer, <2 x float> %i.aul)
  %i.aup = insertelement <2 x float> poison, float %.sroa.34.48.copyload, i64 0
  %i.auq = shufflevector <2 x float> %i.aup, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aur = fadd <2 x float> %i.auq, %i.auo        ; 2 uses
  %i.aus = insertelement <2 x float> %i.aur, float 0.000000e+00, i64 1
  store <2 x float> %i.aug, ptr %28, align 8
  store <2 x float> %i.aus, ptr %i.aub, align 8
  %i.aut = shufflevector <2 x float> %i.auc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.auu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atx, <2 x float> %i.aut, <2 x float> %i.atw)
  %i.auv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atz, <2 x float> zeroinitializer, <2 x float> %i.auu)
  %i.auw = fadd <2 x float> %i.atu, %i.auv
  %i.aux = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.aur, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.auw, ptr %29, align 8
  %i.auy = getelementptr inbounds nuw i8, ptr %29, i64 8
  store <2 x float> %i.aux, ptr %i.auy, align 8
  %i.auz = load ptr, ptr %0, align 8, !tbaa !19
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 32
  %i.avb = load ptr, ptr %i.ava, align 8
  %i.avc = call noundef ptr %i.avb(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !19
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 40
  %i.avf = load ptr, ptr %i.ave, align 8
  call void %i.avf(ptr noundef nonnull align 8 dereferenceable(8) %i.avc, ptr noundef nonnull align 4 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %.sroa.3.12.vec.insert.i328 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.20364.32.copyload, i64 0
  store <2 x float> %i.atx, ptr %31, align 8
  %i.avg = getelementptr inbounds nuw i8, ptr %31, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i328, ptr %i.avg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  %.sroa.3.12.vec.insert.i333 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.24.32.copyload, i64 0
  store <2 x float> %i.atv, ptr %32, align 8
  %i.avh = getelementptr inbounds nuw i8, ptr %32, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i333, ptr %i.avh, align 8
  %i.avi = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.avj = load float, ptr %i.avi, align 8, !tbaa !163
  %i.avk = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.avl = load float, ptr %i.avk, align 4, !tbaa !165
  %i.avm = getelementptr inbounds nuw i8, ptr %1, i64 956
  %i.avn = load ptr, ptr %0, align 8, !tbaa !19
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 32
  %i.avp = load ptr, ptr %i.avo, align 8
  %i.avq = call noundef ptr %i.avp(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  call void @_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf(ptr noundef nonnull align 8 dereferenceable(8) %i.avq, ptr noundef nonnull align 4 dereferenceable(16) %i.avm, ptr noundef nonnull align 4 dereferenceable(16) %31, ptr noundef nonnull align 4 dereferenceable(16) %32, float noundef %i.t, float noundef %i.t, float noundef %i.avj, float noundef %i.avl, ptr noundef nonnull align 4 dereferenceable(16) %33, i1 noundef zeroext true, float noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.e, %bb.v, %bb.ad, %bb.ai, %bb.b, %bb.j, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr nofree noundef nonnull readonly align 4 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 10 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 16          ; 4 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 16          ; 4 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 16         ; 4 uses
  %11 = alloca %class.btTransform, align 16       ; 8 uses
  %12 = alloca %class.btTransform, align 16       ; 8 uses
  %13 = alloca %class.btVector3, align 16         ; 14 uses
  %14 = alloca %class.btVector3, align 8          ; 13 uses
  %15 = alloca %class.btTransform, align 4        ; 8 uses
  %16 = alloca %class.btTransform, align 4        ; 8 uses
  %17 = alloca %class.btVector3, align 8          ; 5 uses
  %18 = alloca %class.btVector3, align 8          ; 5 uses
  %19 = alloca %class.btVector3, align 8          ; 5 uses
  %20 = alloca %class.btVector3, align 8          ; 5 uses
  %21 = alloca %class.btVector3, align 8          ; 5 uses
  %22 = alloca %class.btVector3, align 8          ; 5 uses
  %23 = alloca %class.btVector3, align 8          ; 5 uses
  %24 = alloca %class.btVector3, align 8          ; 5 uses
  %25 = alloca %class.btVector3, align 4          ; 7 uses
  %26 = alloca %class.btVector3, align 4          ; 7 uses
  %27 = alloca %class.btVector3, align 4          ; 7 uses
  %28 = alloca %class.btVector3, align 8          ; 5 uses
  %29 = alloca %class.btVector3, align 8          ; 5 uses
  %30 = alloca %class.btVector3, align 8          ; 5 uses
  %31 = alloca %class.btVector3, align 8          ; 5 uses
  %32 = alloca %class.btVector3, align 8          ; 5 uses
  %33 = alloca %class.btVector3, align 8          ; 5 uses
  %34 = alloca %class.btVector3, align 8          ; 5 uses
  %35 = alloca %class.btVector3, align 8          ; 5 uses
  %36 = alloca %class.btVector3, align 8          ; 5 uses
  %37 = alloca %class.btVector3, align 4          ; 7 uses
  %38 = alloca %class.btVector3, align 4          ; 7 uses
  %39 = alloca %class.btVector3, align 8          ; 5 uses
  %40 = alloca %class.btVector3, align 8          ; 5 uses
  %41 = alloca %class.btVector3, align 8          ; 5 uses
  %42 = alloca %class.btVector3, align 8          ; 5 uses
  %43 = alloca %class.btVector3, align 8          ; 5 uses
  %44 = alloca %class.btVector3, align 8          ; 5 uses
  %45 = alloca %class.btVector3, align 8          ; 5 uses
  %46 = alloca %class.btVector3, align 8          ; 5 uses
  %47 = alloca %class.btVector3, align 16         ; 5 uses
  %48 = alloca %class.btVector3, align 16         ; 5 uses
  %49 = alloca %class.DebugDrawcallback, align 8  ; 15 uses
  %50 = alloca %class.btVector3, align 16         ; 5 uses
  %51 = alloca %class.btVector3, align 16         ; 5 uses
  %52 = alloca %class.DebugDrawcallback, align 8  ; 14 uses
  %53 = alloca %class.btVector3, align 16         ; 5 uses
  %54 = alloca %class.btVector3, align 8          ; 5 uses
  %55 = alloca %class.btVector3, align 8          ; 5 uses
  %56 = alloca %class.btVector3, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !147
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 24 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 24 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 20 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !8
  %i.q = fmul float %i.p, 0.000000e+00
  %i.r = fadd float %i.n, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 20 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !8
  %i.u = tail call noundef float @llvm.fmuladd.f32(float %i.t, float 0.000000e+00, float %i.r)
  %i.v = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.w = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.w, <2 x i32> <i32 1, i32 3>
  %i.y = fmul <2 x float> %i.x, zeroinitializer
  %i.z = shufflevector <2 x float> %i.v, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %i.aa = fadd <2 x float> %i.z, %i.y
  %i.ab = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.l, i64 1
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> zeroinitializer, <2 x float> %i.aa)
  %i.ae = load <2 x float>, ptr %4, align 8, !tbaa !8
  %i.af = fadd <2 x float> %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !8
  %i.ai = fadd float %i.u, %i.ah
  %.sroa.3.12.vec.insert.i160 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ai, i64 0
  store <2 x float> %i.af, ptr %5, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i160, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %6, align 16, !tbaa !8
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.an = load ptr, ptr %0, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ar = load float, ptr %i.g, align 4, !tbaa !8
  %i.as = load float, ptr %i.k, align 4, !tbaa !8
  %i.at = load float, ptr %i.m, align 4, !tbaa !8
  %i.au = load float, ptr %i.o, align 4, !tbaa !8
  %i.av = call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.au)
  %i.aw = load float, ptr %i.s, align 4, !tbaa !8
  %i.ax = call noundef float @llvm.fmuladd.f32(float %i.aw, float 0.000000e+00, float %i.av)
  %i.ay = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.az = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %i.bb = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> zeroinitializer, <2 x float> %i.bb)
  %i.bd = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.as, i64 1
  %i.bf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> zeroinitializer, <2 x float> %i.bc)
  %i.bg = load <2 x float>, ptr %4, align 8, !tbaa !8
  %i.bh = fadd <2 x float> %i.bf, %i.bg
  %i.bi = load float, ptr %i.ag, align 8, !tbaa !8
  %i.bj = fadd float %i.ax, %i.bi
  %.sroa.3.12.vec.insert.i170 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bj, i64 0
  store <2 x float> %i.bh, ptr %7, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i170, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %8, align 16, !tbaa !8
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.bo = load ptr, ptr %0, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.bs = load float, ptr %i.g, align 4, !tbaa !8
  %i.bt = load float, ptr %i.k, align 4, !tbaa !8
  %i.bu = load float, ptr %i.m, align 4, !tbaa !8
  %i.bv = load float, ptr %i.o, align 4, !tbaa !8
  %i.bw = fmul float %i.bv, 0.000000e+00
  %i.bx = call float @llvm.fmuladd.f32(float %i.bu, float 0.000000e+00, float %i.bw)
  %i.by = load float, ptr %i.s, align 4, !tbaa !8
  %i.bz = fadd float %i.by, %i.bx
  %i.ca = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.cb = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.cc = shufflevector <2 x float> %i.ca, <2 x float> %i.cb, <2 x i32> <i32 1, i32 3>
  %i.cd = fmul <2 x float> %i.cc, zeroinitializer
  %i.ce = shufflevector <2 x float> %i.ca, <2 x float> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.cf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> zeroinitializer, <2 x float> %i.cd)
  %i.cg = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.bt, i64 1
  %i.ci = fadd <2 x float> %i.ch, %i.cf
  %i.cj = load <2 x float>, ptr %4, align 8, !tbaa !8
  %i.ck = fadd <2 x float> %i.ci, %i.cj
  %i.cl = load float, ptr %i.ag, align 8, !tbaa !8
  %i.cm = fadd float %i.bz, %i.cl
  %.sroa.3.12.vec.insert.i180 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cm, i64 0
  store <2 x float> %i.ck, ptr %9, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i180, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %10, align 16, !tbaa !8
  %i.co = load ptr, ptr %i.br, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !166 ; 3 uses
  switch i32 %i.cs, label %bb.m [
    i32 31, label %bb.b
    i32 8, label %bb.d
    i32 9, label %bb.e
    i32 10, label %bb.g
    i32 11, label %bb.h
    i32 13, label %bb.i
    i32 28, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !168 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph822, label %.loopexit

.lr.ph822:                                        ; preds = %bb.b
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.db = zext nneg i32 %i.cu to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph822, %bb.c
  %indvars.iv828 = phi i64 [ %i.db, %.lr.ph822 ], [ %indvars.iv.next829, %bb.c ] ; 2 uses
  %indvars.iv.next829 = add nsw i64 %indvars.iv828, -1 ; 2 uses
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !172
  %i.dd = getelementptr inbounds nuw [88 x i8], ptr %i.dc, i64 %indvars.iv.next829 ; 13 uses
  %.sroa.4769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %.sroa.5770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.sroa.8773.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %.sroa.12776.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 36
  %.sroa.13777.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %.sroa.14779.48.copyload = load float, ptr %i.dg, align 4 ; 2 uses
  %.sroa.16780.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 52
  %.sroa.16780.48.copyload = load float, ptr %.sroa.16780.48..sroa_idx, align 4 ; 2 uses
  %.sroa.17781.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %.sroa.17781.48.copyload = load float, ptr %.sroa.17781.48..sroa_idx, align 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !173
  %i.dj = load <2 x float>, ptr %i.dd, align 8    ; 2 uses
  %i.dk = load <2 x float>, ptr %i.de, align 8    ; 2 uses
  %i.dl = load <2 x float>, ptr %i.df, align 8    ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dn = insertelement <4 x float> %i.dm, float 0.000000e+00, i64 3
  %i.do = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dp = insertelement <4 x float> %i.do, float 0.000000e+00, i64 3
  %i.dq = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dr = insertelement <4 x float> %i.dq, float 0.000000e+00, i64 3
  %i.ds = load <2 x float>, ptr %.sroa.4769.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5770.0.copyload = load float, ptr %.sroa.5770.0..sroa_idx, align 8
  %i.dt = load <2 x float>, ptr %.sroa.8773.16..sroa_idx, align 4 ; 2 uses
  %.sroa.9.16.copyload = load float, ptr %.sroa.9.16..sroa_idx, align 8
  %i.du = load <2 x float>, ptr %.sroa.12776.32..sroa_idx, align 4 ; 2 uses
  %.sroa.13777.32.copyload = load float, ptr %.sroa.13777.32..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.dv = load <2 x float>, ptr %1, align 4, !tbaa !8, !noalias !179 ; 3 uses
  %i.dw = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dx = shufflevector <4 x float> %i.dn, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dy = shufflevector <2 x float> %i.dv, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dz = fmul <4 x float> %i.dx, %i.dy
  %i.ea = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eb = shufflevector <4 x float> %i.dp, <4 x float> %i.ea, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ec = shufflevector <2 x float> %i.dv, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ed = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> %i.ec, <4 x float> %i.dz)
  %i.ee = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ef = shufflevector <4 x float> %i.dr, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.eg = load <2 x float>, ptr %i.i, align 4, !tbaa !8, !noalias !179 ; 3 uses
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ei = shufflevector <2 x float> %i.dk, <2 x float> %i.dt, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ej = insertelement <4 x float> %i.ei, float 1.000000e+00, i64 3 ; 2 uses
  %i.ek = fmul <4 x float> %i.eh, %i.ej
  %i.el = shufflevector <2 x float> %i.dj, <2 x float> %i.ds, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.em = insertelement <4 x float> %i.el, float 0.000000e+00, i64 3 ; 2 uses
  %i.en = shufflevector <2 x float> %i.eg, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
end_hunk_0
begin_hunk_1_@_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3:bb.a
  %i.fa = insertelement <2 x float> poison, float %.sroa.16780.48.copyload, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = shufflevector <2 x float> %i.es, <2 x float> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.fd = fmul <2 x float> %i.fb, %i.fc
  %i.fe = shufflevector <2 x float> %i.dv, <2 x float> %i.eg, <2 x i32> <i32 0, i32 2>
  %i.ff = insertelement <2 x float> poison, float %.sroa.14779.48.copyload, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.fg, <2 x float> %i.fd)
  %i.fi = shufflevector <2 x float> %i.es, <2 x float> %i.ew, <2 x i32> <i32 1, i32 3>
  %i.fj = insertelement <2 x float> poison, float %.sroa.17781.48.copyload, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.fk, <2 x float> %i.fh)
  %i.fm = load <2 x float>, ptr %i.a, align 4, !tbaa !8, !noalias !176
  %i.fn = fadd <2 x float> %i.fl, %i.fm
  %i.fo = load float, ptr %i.cx, align 4, !tbaa !8, !noalias !176
  store <4 x float> %i.ev, ptr %11, align 16, !alias.scope !176
  store <4 x float> %i.ez, ptr %i.cy, align 16, !alias.scope !176
  %i.fp = load <2 x float>, ptr %i.m, align 4, !tbaa !8, !noalias !179 ; 4 uses
  %i.fq = load float, ptr %i.o, align 4, !tbaa !8, !noalias !179
  %i.fr = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.fs = insertelement <4 x float> %i.fr, float 0.000000e+00, i64 3
  %i.ft = insertelement <4 x float> %i.fs, float %.sroa.9.16.copyload, i64 2
  %i.fu = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fv = shufflevector <4 x float> %i.ej, <4 x float> %i.fu, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fw = fmul <4 x float> %i.ft, %i.fv
  %i.fx = insertelement <4 x float> %i.em, float %.sroa.5770.0.copyload, i64 2
  %i.fy = shufflevector <2 x float> %i.fp, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fx, <4 x float> %i.fy, <4 x float> %i.fw)
  %i.ga = insertelement <4 x float> %i.eq, float %.sroa.13777.32.copyload, i64 2
  %i.gb = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.er, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %i.gc, <4 x float> %i.fz)
  %i.ge = fmul float %.sroa.16780.48.copyload, %i.fq
  %i.gf = extractelement <2 x float> %i.fp, i64 0
  %i.gg = call float @llvm.fmuladd.f32(float %i.gf, float %.sroa.14779.48.copyload, float %i.ge)
  %i.gh = call noundef float @llvm.fmuladd.f32(float %i.er, float %.sroa.17781.48.copyload, float %i.gg)
  %i.gi = fadd float %i.gh, %i.fo
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gi, i64 0
  store <4 x float> %i.gd, ptr %i.cz, align 16, !alias.scope !176
  store <2 x float> %i.fn, ptr %i.da, align 16, !alias.scope !176
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !88, !alias.scope !176
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef nonnull align 4 dereferenceable(64) %11, ptr noundef %i.di, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.gj = icmp samesign ugt i64 %indvars.iv828, 1
  br i1 %i.gj, label %bb.c, label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.gk = load ptr, ptr %2, align 8, !tbaa !19
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 88
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = call noundef float %i.gm(ptr noundef nonnull align 8 dereferenceable(64) %2)
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.gn, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !182 ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %12, i64 48
  %.sroa.4.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.gx = zext nneg i32 %i.gp to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.gx, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.gy = load ptr, ptr %i.gr, align 8, !tbaa !186
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %indvars.iv.next ; 3 uses
  %.sroa.17.48.copyload = load float, ptr %i.gz, align 4 ; 2 uses
  %.sroa.19767.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %.sroa.19767.48.copyload = load float, ptr %.sroa.19767.48..sroa_idx, align 4 ; 2 uses
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %.sroa.20.48.copyload = load float, ptr %.sroa.20.48..sroa_idx, align 4 ; 2 uses
  %i.ha = load ptr, ptr %i.gs, align 8, !tbaa !187
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.hd = load float, ptr %i.g, align 4, !tbaa !8, !noalias !194 ; 3 uses
  %i.he = load float, ptr %i.k, align 4, !tbaa !8, !noalias !194 ; 3 uses
  %i.hf = load float, ptr %i.s, align 4, !tbaa !8, !noalias !194 ; 3 uses
  %i.hg = load <2 x float>, ptr %1, align 4, !tbaa !8, !noalias !194 ; 4 uses
  %i.hh = extractelement <2 x float> %i.hg, i64 0
  %i.hi = load <2 x float>, ptr %i.m, align 4, !tbaa !8, !noalias !194 ; 3 uses
  %i.hj = load float, ptr %i.o, align 4, !tbaa !8, !noalias !194
  %i.hk = load float, ptr %i.f, align 4, !tbaa !8, !noalias !194
  %i.hl = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hm = insertelement <2 x float> %i.hl, float %i.hk, i64 1
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ho = fmul <4 x float> %i.hn, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 3 uses
  %i.hp = extractelement <4 x float> %i.ho, i64 2
  %i.hq = extractelement <2 x float> %i.hi, i64 0 ; 2 uses
  %i.hr = fadd float %i.hq, %i.hp
  %i.hs = extractelement <4 x float> %i.ho, i64 3
  %i.ht = fadd float %i.hh, %i.hs
  %i.hu = shufflevector <2 x float> %i.hi, <2 x float> %i.hg, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.hv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> zeroinitializer, <4 x float> %i.ho) ; 4 uses
  %i.hw = load <2 x float>, ptr %i.i, align 4, !tbaa !8, !noalias !194 ; 3 uses
  %i.hx = load float, ptr %i.j, align 4, !tbaa !8, !noalias !194 ; 2 uses
  %i.hy = fmul float %i.hx, 0.000000e+00          ; 2 uses
  %i.hz = extractelement <2 x float> %i.hw, i64 0 ; 3 uses
  %i.ia = fadd float %i.hz, %i.hy
  %i.ib = call float @llvm.fmuladd.f32(float %i.hz, float 0.000000e+00, float %i.hx)
  %i.ic = call float @llvm.fmuladd.f32(float %i.hz, float 0.000000e+00, float %i.hy)
  %i.id = insertelement <2 x float> poison, float %.sroa.19767.48.copyload, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = shufflevector <2 x float> %i.hg, <2 x float> %i.hw, <2 x i32> <i32 1, i32 3>
  %i.ig = fmul <2 x float> %i.ie, %i.if
  %i.ih = shufflevector <2 x float> %i.hg, <2 x float> %i.hw, <2 x i32> <i32 0, i32 2>
  %i.ii = insertelement <2 x float> poison, float %.sroa.17.48.copyload, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.ij, <2 x float> %i.ig)
  %i.il = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.im = insertelement <2 x float> %i.il, float %i.he, i64 1
  %i.in = insertelement <2 x float> poison, float %.sroa.20.48.copyload, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.io, <2 x float> %i.ik)
  %i.iq = load <2 x float>, ptr %i.a, align 4, !tbaa !8, !noalias !191
  %i.ir = fadd <2 x float> %i.ip, %i.iq
  %i.is = fmul float %.sroa.19767.48.copyload, %i.hj
  %i.it = call float @llvm.fmuladd.f32(float %i.hq, float %.sroa.17.48.copyload, float %i.is)
  %i.iu = call noundef float @llvm.fmuladd.f32(float %i.hf, float %.sroa.20.48.copyload, float %i.it)
  %i.iv = load float, ptr %i.gt, align 4, !tbaa !8, !noalias !191
  %i.iw = fadd float %i.iu, %i.iv
  %.sroa.3.12.vec.insert.i.i185 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.iw, i64 0
  %i.ix = extractelement <4 x float> %i.hv, i64 3
  %i.iy = fadd float %i.hd, %i.ix
  %i.iz = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.hd, i64 0
  %i.ja = shufflevector <4 x float> %i.iz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.jb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ht, i64 0
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> %i.hv, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.jd = insertelement <4 x float> %i.jc, float %i.iy, i64 2
  %i.je = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ja, <4 x float> zeroinitializer, <4 x float> %i.jd)
  store <4 x float> %i.je, ptr %12, align 16, !alias.scope !191
  %i.jf = fadd float %i.he, %i.ic
  %i.jg = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.he, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ji = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ia, i64 0
  %i.jj = insertelement <4 x float> %i.ji, float %i.ib, i64 1
  %i.jk = insertelement <4 x float> %i.jj, float %i.jf, i64 2
  %i.jl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jh, <4 x float> zeroinitializer, <4 x float> %i.jk)
  store <4 x float> %i.jl, ptr %i.gu, align 16, !alias.scope !191
  %i.jm = extractelement <4 x float> %i.hv, i64 2
  %i.jn = fadd float %i.hf, %i.jm
  %i.jo = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.hf, i64 0
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.jq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hr, i64 0
  %i.jr = shufflevector <4 x float> %i.jq, <4 x float> %i.hv, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.js = insertelement <4 x float> %i.jr, float %i.jn, i64 2
  %i.jt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jp, <4 x float> zeroinitializer, <4 x float> %i.js)
  store <4 x float> %i.jt, ptr %i.gv, align 16, !alias.scope !191
  store <2 x float> %i.ir, ptr %i.gw, align 16, !alias.scope !191
  store <2 x float> %.sroa.3.12.vec.insert.i.i185, ptr %.sroa.4.0..sroa_idx.i195, align 8, !tbaa !88, !alias.scope !191
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.hc, ptr noundef nonnull align 4 dereferenceable(64) %12, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ju = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ju, label %bb.f, label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !197 ; 3 uses
  %i.jx = add nsw i32 %i.jw, 2
  %i.jy = srem i32 %i.jx, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ka = sext i32 %i.jy to i64                   ; 3 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.ka
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !8 ; 7 uses
  %i.kd = sext i32 %i.jw to i64                   ; 3 uses
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.kg = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ki = fneg float %i.kf
  %i.kj = getelementptr inbounds [4 x i8], ptr %13, i64 %i.kd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store float %i.ki, ptr %i.kj, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.kk = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %14, i64 %i.kd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store float %i.kf, ptr %i.km, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !147
  %i.kn = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kn, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !147
  %i.ko = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ko, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !147
  %i.kp = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.kq = load float, ptr %13, align 16, !tbaa !8 ; 2 uses
  %i.kr = load float, ptr %i.kg, align 4, !tbaa !8 ; 2 uses
  %57 = load <4 x float>, ptr %1, align 4
  %58 = shufflevector <4 x float> %57, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ks = load float, ptr %i.kh, align 8, !tbaa !8 ; 2 uses
  %i.kt = load float, ptr %i.k, align 4, !tbaa !8
  %i.ku = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.kv = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.kw = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.kx = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = shufflevector <2 x float> %i.ku, <2 x float> %i.kv, <2 x i32> <i32 1, i32 3>
  %i.kz = fmul <2 x float> %i.kx, %i.ky
  %i.la = shufflevector <2 x float> %i.ku, <2 x float> %i.kv, <2 x i32> <i32 0, i32 2>
  %i.lb = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.la, <2 x float> %i.lc, <2 x float> %i.kz)
  %i.le = insertelement <2 x float> %58, float %i.kt, i64 1
  %i.lf = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.le, <2 x float> %i.lg, <2 x float> %i.ld)
  %i.li = load <2 x float>, ptr %i.a, align 4, !tbaa !8
  %i.lj = fadd <2 x float> %i.lh, %i.li
  %i.lk = load float, ptr %i.m, align 4, !tbaa !8
  %i.ll = load float, ptr %i.o, align 4, !tbaa !8
  %i.lm = fmul float %i.kr, %i.ll
  %i.ln = call float @llvm.fmuladd.f32(float %i.lk, float %i.kq, float %i.lm)
  %i.lo = load float, ptr %i.s, align 4, !tbaa !8
  %i.lp = call noundef float @llvm.fmuladd.f32(float %i.lo, float %i.ks, float %i.ln)
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !8
  %i.ls = fadd float %i.lr, %i.lp
  %.sroa.3.12.vec.insert.i.i198 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ls, i64 0
  store <2 x float> %i.lj, ptr %i.kp, align 4
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i198, ptr %.sroa.430.0..sroa_idx, align 4, !tbaa !88
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.kc, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !147
  %i.lt = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lt, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !147
  %i.lu = getelementptr inbounds nuw i8, ptr %16, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lu, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !147
  %i.lv = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.lw = load float, ptr %14, align 8, !tbaa !8  ; 2 uses
  %i.lx = load float, ptr %i.kk, align 4, !tbaa !8 ; 2 uses
  %59 = load <4 x float>, ptr %1, align 4
  %60 = shufflevector <4 x float> %59, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ly = load float, ptr %i.kl, align 8, !tbaa !8 ; 2 uses
  %i.lz = load float, ptr %i.k, align 4, !tbaa !8
  %i.ma = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.mb = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.mc = insertelement <2 x float> poison, float %i.lx, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = shufflevector <2 x float> %i.ma, <2 x float> %i.mb, <2 x i32> <i32 1, i32 3>
  %i.mf = fmul <2 x float> %i.md, %i.me
  %i.mg = shufflevector <2 x float> %i.ma, <2 x float> %i.mb, <2 x i32> <i32 0, i32 2>
  %i.mh = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mg, <2 x float> %i.mi, <2 x float> %i.mf)
  %i.mk = insertelement <2 x float> %60, float %i.lz, i64 1
  %i.ml = insertelement <2 x float> poison, float %i.ly, i64 0
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> %i.mm, <2 x float> %i.mj)
  %i.mo = load <2 x float>, ptr %i.a, align 4, !tbaa !8
  %i.mp = fadd <2 x float> %i.mn, %i.mo
  %i.mq = load float, ptr %i.m, align 4, !tbaa !8
  %i.mr = load float, ptr %i.o, align 4, !tbaa !8
  %i.ms = fmul float %i.lx, %i.mr
  %i.mt = call float @llvm.fmuladd.f32(float %i.mq, float %i.lw, float %i.ms)
  %i.mu = load float, ptr %i.s, align 4, !tbaa !8
  %i.mv = call noundef float @llvm.fmuladd.f32(float %i.mu, float %i.ly, float %i.mt)
  %i.mw = load float, ptr %i.lq, align 4, !tbaa !8
  %i.mx = fadd float %i.mw, %i.mv
  %.sroa.3.12.vec.insert.i.i201 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mx, i64 0
  store <2 x float> %i.mp, ptr %i.lv, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i201, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !88
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.kc, ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %.sroa.19744.0.copyload = load float, ptr %i.lq, align 4 ; 7 uses
  %i.my = add nsw i32 %i.jw, 1
  %i.mz = srem i32 %i.my, 3
  %i.na = sext i32 %i.mz to i64                   ; 2 uses
  %i.nb = getelementptr inbounds [4 x i8], ptr %13, i64 %i.na ; 3 uses
  store float %i.kc, ptr %i.nb, align 4, !tbaa !8
  %i.nc = getelementptr inbounds [4 x i8], ptr %14, i64 %i.na ; 3 uses
  store float %i.kc, ptr %i.nc, align 4, !tbaa !8
  %i.nd = load ptr, ptr %0, align 8, !tbaa !19
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = load <2 x float>, ptr %i.a, align 4     ; 8 uses
  %i.nh = call noundef ptr %i.nf(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.ni = load float, ptr %13, align 16, !tbaa !8 ; 2 uses
  %i.nj = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.nk = load float, ptr %i.kg, align 4, !tbaa !8 ; 2 uses
  %i.nl = load float, ptr %i.kh, align 8, !tbaa !8 ; 2 uses
  %i.nm = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.nn = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.no = shufflevector <2 x float> %i.nn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.np = shufflevector <2 x float> %i.nj, <2 x float> %i.nm, <2 x i32> <i32 1, i32 3>
  %i.nq = fmul <2 x float> %i.no, %i.np
  %i.nr = shufflevector <2 x float> %i.nj, <2 x float> %i.nm, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ns = insertelement <2 x float> poison, float %i.ni, i64 0
  %i.nt = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nr, <2 x float> %i.nt, <2 x float> %i.nq)
  %i.nv = insertelement <2 x float> poison, float %i.nl, i64 0
  %i.nw = shufflevector <2 x float> %i.nv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nx = load float, ptr %i.m, align 4, !tbaa !8 ; 2 uses
  %i.ny = load float, ptr %i.o, align 4, !tbaa !8 ; 2 uses
  %i.nz = fmul float %i.nk, %i.ny
  %i.oa = call float @llvm.fmuladd.f32(float %i.nx, float %i.ni, float %i.nz)
  %i.ob = load float, ptr %i.s, align 4, !tbaa !8 ; 2 uses
  %i.oc = call noundef float @llvm.fmuladd.f32(float %i.ob, float %i.nl, float %i.oa)
  %i.od = fadd float %.sroa.19744.0.copyload, %i.oc
  %.sroa.3.12.vec.insert.i211 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.od, i64 0
  %i.oe = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i211, ptr %i.oe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.of = load float, ptr %14, align 8, !tbaa !8  ; 2 uses
  %i.og = load float, ptr %i.kk, align 4, !tbaa !8 ; 2 uses
  %i.oh = load float, ptr %i.kl, align 8, !tbaa !8 ; 2 uses
  %i.oi = fmul float %i.ny, %i.og
  %i.oj = call float @llvm.fmuladd.f32(float %i.nx, float %i.of, float %i.oi)
  %i.ok = call noundef float @llvm.fmuladd.f32(float %i.ob, float %i.oh, float %i.oj)
  %i.ol = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.om = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.on = shufflevector <2 x float> %i.ol, <2 x float> %i.om, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.oo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.nw, <2 x float> %i.nu)
  %i.op = fadd <2 x float> %i.ng, %i.oo
  store <2 x float> %i.op, ptr %17, align 8
  %i.oq = shufflevector <2 x float> %i.ol, <2 x float> %i.om, <2 x i32> <i32 0, i32 2>
  %i.or = insertelement <2 x float> poison, float %i.og, i64 0
  %i.os = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ot = fmul <2 x float> %i.oq, %i.os
  %i.ou = insertelement <2 x float> poison, float %i.of, i64 0
  %i.ov = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ow = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nr, <2 x float> %i.ov, <2 x float> %i.ot)
  %i.ox = insertelement <2 x float> poison, float %i.oh, i64 0
  %i.oy = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.oy, <2 x float> %i.ow)
  %i.pa = fadd <2 x float> %i.ng, %i.oz
  %i.pb = fadd float %.sroa.19744.0.copyload, %i.ok
  %.sroa.3.12.vec.insert.i221 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.pb, i64 0
  store <2 x float> %i.pa, ptr %18, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %18, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i221, ptr %i.pc, align 8
  %i.pd = load ptr, ptr %i.nh, align 8, !tbaa !19
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 40
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(8) %i.nh, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.pg = fneg float %i.kc                        ; 4 uses
  store float %i.pg, ptr %i.nb, align 4, !tbaa !8
  store float %i.pg, ptr %i.nc, align 4, !tbaa !8
  %i.ph = load ptr, ptr %0, align 8, !tbaa !19
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.pj = load ptr, ptr %i.pi, align 8
  %i.pk = call noundef ptr %i.pj(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.pl = load float, ptr %13, align 16, !tbaa !8 ; 2 uses
  %i.pm = load float, ptr %i.kg, align 4, !tbaa !8 ; 2 uses
  %i.pn = load float, ptr %i.kh, align 8, !tbaa !8 ; 2 uses
  %i.po = load float, ptr %i.m, align 4, !tbaa !8 ; 2 uses
  %i.pp = load float, ptr %i.o, align 4, !tbaa !8 ; 2 uses
  %i.pq = fmul float %i.pm, %i.pp
  %i.pr = call float @llvm.fmuladd.f32(float %i.po, float %i.pl, float %i.pq)
  %i.ps = load float, ptr %i.s, align 4, !tbaa !8 ; 2 uses
  %i.pt = call noundef float @llvm.fmuladd.f32(float %i.ps, float %i.pn, float %i.pr)
  %i.pu = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.pv = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.pw = insertelement <2 x float> poison, float %i.pm, i64 0
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.py = shufflevector <2 x float> %i.pu, <2 x float> %i.pv, <2 x i32> <i32 1, i32 3>
  %i.pz = fmul <2 x float> %i.px, %i.py
  %i.qa = shufflevector <2 x float> %i.pu, <2 x float> %i.pv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.qb = insertelement <2 x float> poison, float %i.pl, i64 0
  %i.qc = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qa, <2 x float> %i.qc, <2 x float> %i.pz)
  %i.qe = insertelement <2 x float> poison, float %i.pn, i64 0
  %i.qf = shufflevector <2 x float> %i.qe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qg = fadd float %.sroa.19744.0.copyload, %i.pt
  %.sroa.3.12.vec.insert.i231 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qg, i64 0
  %i.qh = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i231, ptr %i.qh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.qi = load float, ptr %14, align 8, !tbaa !8  ; 2 uses
  %i.qj = load float, ptr %i.kk, align 4, !tbaa !8 ; 2 uses
  %i.qk = load float, ptr %i.kl, align 8, !tbaa !8 ; 2 uses
  %i.ql = fmul float %i.pp, %i.qj
  %i.qm = call float @llvm.fmuladd.f32(float %i.po, float %i.qi, float %i.ql)
  %i.qn = call noundef float @llvm.fmuladd.f32(float %i.ps, float %i.qk, float %i.qm)
  %i.qo = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.qp = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.qq = shufflevector <2 x float> %i.qo, <2 x float> %i.qp, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qq, <2 x float> %i.qf, <2 x float> %i.qd)
  %i.qs = fadd <2 x float> %i.ng, %i.qr
  store <2 x float> %i.qs, ptr %19, align 8
  %i.qt = shufflevector <2 x float> %i.qo, <2 x float> %i.qp, <2 x i32> <i32 0, i32 2>
  %i.qu = insertelement <2 x float> poison, float %i.qj, i64 0
  %i.qv = shufflevector <2 x float> %i.qu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qw = fmul <2 x float> %i.qt, %i.qv
  %i.qx = insertelement <2 x float> poison, float %i.qi, i64 0
  %i.qy = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qa, <2 x float> %i.qy, <2 x float> %i.qw)
  %i.ra = insertelement <2 x float> poison, float %i.qk, i64 0
  %i.rb = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qq, <2 x float> %i.rb, <2 x float> %i.qz)
  %i.rd = fadd <2 x float> %i.ng, %i.rc
  %i.re = fadd float %.sroa.19744.0.copyload, %i.qn
  %.sroa.3.12.vec.insert.i241 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.re, i64 0
  store <2 x float> %i.rd, ptr %20, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %20, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i241, ptr %i.rf, align 8
  %i.rg = load ptr, ptr %i.pk, align 8, !tbaa !19
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 40
  %i.ri = load ptr, ptr %i.rh, align 8
  call void %i.ri(ptr noundef nonnull align 8 dereferenceable(8) %i.pk, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  store float 0.000000e+00, ptr %i.nb, align 4, !tbaa !8
  store float 0.000000e+00, ptr %i.nc, align 4, !tbaa !8
  %i.rj = getelementptr inbounds [4 x i8], ptr %13, i64 %i.ka ; 2 uses
  store float %i.kc, ptr %i.rj, align 4, !tbaa !8
  %i.rk = getelementptr inbounds [4 x i8], ptr %14, i64 %i.ka ; 2 uses
  store float %i.kc, ptr %i.rk, align 4, !tbaa !8
  %i.rl = load ptr, ptr %0, align 8, !tbaa !19
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  %i.rn = load ptr, ptr %i.rm, align 8
  %i.ro = call noundef ptr %i.rn(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.rp = load float, ptr %13, align 16, !tbaa !8 ; 2 uses
  %i.rq = load float, ptr %i.kg, align 4, !tbaa !8 ; 2 uses
  %i.rr = load float, ptr %i.kh, align 8, !tbaa !8 ; 2 uses
  %i.rs = load float, ptr %i.m, align 4, !tbaa !8 ; 2 uses
  %i.rt = load float, ptr %i.o, align 4, !tbaa !8 ; 2 uses
  %i.ru = fmul float %i.rq, %i.rt
  %i.rv = call float @llvm.fmuladd.f32(float %i.rs, float %i.rp, float %i.ru)
  %i.rw = load float, ptr %i.s, align 4, !tbaa !8 ; 2 uses
  %i.rx = call noundef float @llvm.fmuladd.f32(float %i.rw, float %i.rr, float %i.rv)
  %i.ry = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.rz = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.sa = insertelement <2 x float> poison, float %i.rq, i64 0
  %i.sb = shufflevector <2 x float> %i.sa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sc = shufflevector <2 x float> %i.ry, <2 x float> %i.rz, <2 x i32> <i32 1, i32 3>
  %i.sd = fmul <2 x float> %i.sb, %i.sc
  %i.se = shufflevector <2 x float> %i.ry, <2 x float> %i.rz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.sf = insertelement <2 x float> poison, float %i.rp, i64 0
  %i.sg = shufflevector <2 x float> %i.sf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.se, <2 x float> %i.sg, <2 x float> %i.sd)
  %i.si = insertelement <2 x float> poison, float %i.rr, i64 0
  %i.sj = shufflevector <2 x float> %i.si, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sk = fadd float %.sroa.19744.0.copyload, %i.rx
  %.sroa.3.12.vec.insert.i251 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sk, i64 0
  %i.sl = getelementptr inbounds nuw i8, ptr %21, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i251, ptr %i.sl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.sm = load float, ptr %14, align 8, !tbaa !8  ; 2 uses
end_hunk_1
