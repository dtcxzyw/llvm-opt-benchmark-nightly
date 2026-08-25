Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btDiscreteDynamicsWorld?download=true
inline.NumInlined: 1209
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint:bb.a
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
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %57 = load <4 x float>, ptr %i.g, align 4
  %58 = shufflevector <4 x float> %57, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 24 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 15 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 24 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 20 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !8
  %i.p = fmul float %i.o, 0.000000e+00
  %i.q = fadd float %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 20 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !8
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.s, float 0.000000e+00, float %i.q)
  %i.u = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.v = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.w = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 1, i32 3>
  %i.x = fmul <2 x float> %i.w, zeroinitializer
  %i.y = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 2>
  %i.z = fadd <2 x float> %i.y, %i.x
  %i.aa = insertelement <2 x float> %58, float %i.k, i64 1
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> zeroinitializer, <2 x float> %i.z)
  %i.ac = load <2 x float>, ptr %4, align 8, !tbaa !8
  %i.ad = fadd <2 x float> %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !8
  %i.ag = fadd float %i.t, %i.af
  %.sroa.3.12.vec.insert.i160 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ag, i64 0
  store <2 x float> %i.ad, ptr %5, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i160, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %6, align 16, !tbaa !8
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.al = load ptr, ptr %0, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %59 = load <4 x float>, ptr %i.g, align 4
  %60 = shufflevector <4 x float> %59, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ap = load float, ptr %i.j, align 4, !tbaa !8
  %i.aq = load float, ptr %i.l, align 4, !tbaa !8
  %i.ar = load float, ptr %i.n, align 4, !tbaa !8
  %i.as = call float @llvm.fmuladd.f32(float %i.aq, float 0.000000e+00, float %i.ar)
  %i.at = load float, ptr %i.r, align 4, !tbaa !8
  %i.au = call noundef float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.as)
  %i.av = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.aw = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.ay = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.az = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> zeroinitializer, <2 x float> %i.ay)
  %i.ba = insertelement <2 x float> %60, float %i.ap, i64 1
  %i.bb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> zeroinitializer, <2 x float> %i.az)
  %i.bc = load <2 x float>, ptr %4, align 8, !tbaa !8
  %i.bd = fadd <2 x float> %i.bb, %i.bc
  %i.be = load float, ptr %i.ae, align 8, !tbaa !8
  %i.bf = fadd float %i.au, %i.be
  %.sroa.3.12.vec.insert.i170 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bf, i64 0
  store <2 x float> %i.bd, ptr %7, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i170, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %8, align 16, !tbaa !8
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.bk = load ptr, ptr %0, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %61 = load <4 x float>, ptr %i.g, align 4
  %62 = shufflevector <4 x float> %61, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bo = load float, ptr %i.j, align 4, !tbaa !8
  %i.bp = load float, ptr %i.l, align 4, !tbaa !8
  %i.bq = load float, ptr %i.n, align 4, !tbaa !8
  %i.br = fmul float %i.bq, 0.000000e+00
  %i.bs = call float @llvm.fmuladd.f32(float %i.bp, float 0.000000e+00, float %i.br)
  %i.bt = load float, ptr %i.r, align 4, !tbaa !8
  %i.bu = fadd float %i.bt, %i.bs
  %i.bv = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.by = fmul <2 x float> %i.bx, zeroinitializer
  %i.bz = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.ca = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> zeroinitializer, <2 x float> %i.by)
  %i.cb = insertelement <2 x float> %62, float %i.bo, i64 1
  %i.cc = fadd <2 x float> %i.cb, %i.ca
  %i.cd = load <2 x float>, ptr %4, align 8, !tbaa !8
  %i.ce = fadd <2 x float> %i.cc, %i.cd
  %i.cf = load float, ptr %i.ae, align 8, !tbaa !8
  %i.cg = fadd float %i.bu, %i.cf
  %.sroa.3.12.vec.insert.i180 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cg, i64 0
  store <2 x float> %i.ce, ptr %9, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i180, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %10, align 16, !tbaa !8
  %i.ci = load ptr, ptr %i.bn, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !166 ; 3 uses
  switch i32 %i.cm, label %bb.m [
    i32 31, label %bb.b
    i32 8, label %bb.d
    i32 9, label %bb.e
    i32 10, label %bb.g
    i32 11, label %bb.h
    i32 13, label %bb.i
    i32 28, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !168 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph822, label %.loopexit

.lr.ph822:                                        ; preds = %bb.b
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.cv = zext nneg i32 %i.co to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph822, %bb.c
  %indvars.iv828 = phi i64 [ %i.cv, %.lr.ph822 ], [ %indvars.iv.next829, %bb.c ] ; 2 uses
  %indvars.iv.next829 = add nsw i64 %indvars.iv828, -1 ; 2 uses
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !172
  %i.cx = getelementptr inbounds nuw [88 x i8], ptr %i.cw, i64 %indvars.iv.next829 ; 13 uses
  %.sroa.4769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.sroa.5770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.sroa.8773.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %.sroa.12776.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 36
  %.sroa.13777.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %.sroa.14779.48.copyload = load float, ptr %i.da, align 4 ; 2 uses
  %.sroa.16780.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 52
  %.sroa.16780.48.copyload = load float, ptr %.sroa.16780.48..sroa_idx, align 4 ; 2 uses
  %.sroa.17781.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %.sroa.17781.48.copyload = load float, ptr %.sroa.17781.48..sroa_idx, align 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !173
  %i.dd = load <2 x float>, ptr %i.cx, align 8    ; 2 uses
  %i.de = load <2 x float>, ptr %i.cy, align 8    ; 2 uses
  %i.df = load <2 x float>, ptr %i.cz, align 8    ; 2 uses
  %i.dg = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = insertelement <4 x float> %i.dg, float 0.000000e+00, i64 3
  %i.di = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = insertelement <4 x float> %i.di, float 0.000000e+00, i64 3
  %i.dk = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dl = insertelement <4 x float> %i.dk, float 0.000000e+00, i64 3
  %i.dm = load <2 x float>, ptr %.sroa.4769.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5770.0.copyload = load float, ptr %.sroa.5770.0..sroa_idx, align 8
  %i.dn = load <2 x float>, ptr %.sroa.8773.16..sroa_idx, align 4 ; 2 uses
  %.sroa.9.16.copyload = load float, ptr %.sroa.9.16..sroa_idx, align 8
  %i.do = load <2 x float>, ptr %.sroa.12776.32..sroa_idx, align 4 ; 2 uses
  %.sroa.13777.32.copyload = load float, ptr %.sroa.13777.32..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.dp = load <2 x float>, ptr %1, align 4, !tbaa !8, !noalias !179 ; 3 uses
  %i.dq = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dr = shufflevector <4 x float> %i.dh, <4 x float> %i.dq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ds = shufflevector <2 x float> %i.dp, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dt = fmul <4 x float> %i.dr, %i.ds
  %i.du = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x float> %i.dj, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dw = shufflevector <2 x float> %i.dp, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.dw, <4 x float> %i.dt)
  %i.dy = shufflevector <2 x float> %i.do, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x float> %i.dl, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ea = load <2 x float>, ptr %i.h, align 4, !tbaa !8, !noalias !179 ; 3 uses
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ec = shufflevector <2 x float> %i.de, <2 x float> %i.dn, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ed = insertelement <4 x float> %i.ec, float 1.000000e+00, i64 3 ; 2 uses
  %i.ee = fmul <4 x float> %i.eb, %i.ed
  %i.ef = shufflevector <2 x float> %i.dd, <2 x float> %i.dm, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.eg = insertelement <4 x float> %i.ef, float 0.000000e+00, i64 3 ; 2 uses
  %i.eh = shufflevector <2 x float> %i.ea, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ei = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eg, <4 x float> %i.eh, <4 x float> %i.ee)
  %i.ej = shufflevector <2 x float> %i.df, <2 x float> %i.do, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ek = insertelement <4 x float> %i.ej, float 0.000000e+00, i64 3 ; 2 uses
  %i.el = load float, ptr %i.r, align 4, !tbaa !8, !noalias !179 ; 2 uses
  %i.em = load <2 x float>, ptr %i.f, align 4, !tbaa !8, !noalias !179 ; 3 uses
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.eo, <4 x float> %i.dx)
  %i.eq = load <2 x float>, ptr %i.i, align 4, !tbaa !8, !noalias !179 ; 3 uses
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.es = shufflevector <4 x float> %i.er, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.et = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.es, <4 x float> %i.ei)
  %i.eu = insertelement <2 x float> poison, float %.sroa.16780.48.copyload, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = shufflevector <2 x float> %i.em, <2 x float> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.ex = fmul <2 x float> %i.ev, %i.ew
  %i.ey = shufflevector <2 x float> %i.dp, <2 x float> %i.ea, <2 x i32> <i32 0, i32 2>
  %i.ez = insertelement <2 x float> poison, float %.sroa.14779.48.copyload, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.fa, <2 x float> %i.ex)
  %i.fc = shufflevector <2 x float> %i.em, <2 x float> %i.eq, <2 x i32> <i32 1, i32 3>
  %i.fd = insertelement <2 x float> poison, float %.sroa.17781.48.copyload, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fe, <2 x float> %i.fb)
  %i.fg = load <2 x float>, ptr %i.a, align 4, !tbaa !8, !noalias !176
  %i.fh = fadd <2 x float> %i.ff, %i.fg
  %i.fi = load float, ptr %i.cr, align 4, !tbaa !8, !noalias !176
  store <4 x float> %i.ep, ptr %11, align 16, !alias.scope !176
  store <4 x float> %i.et, ptr %i.cs, align 16, !alias.scope !176
  %i.fj = load <2 x float>, ptr %i.l, align 4, !tbaa !8, !noalias !179 ; 4 uses
  %i.fk = load float, ptr %i.n, align 4, !tbaa !8, !noalias !179
  %i.fl = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.fm = insertelement <4 x float> %i.fl, float 0.000000e+00, i64 3
  %i.fn = insertelement <4 x float> %i.fm, float %.sroa.9.16.copyload, i64 2
  %i.fo = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fp = shufflevector <4 x float> %i.ed, <4 x float> %i.fo, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fq = fmul <4 x float> %i.fn, %i.fp
  %i.fr = insertelement <4 x float> %i.eg, float %.sroa.5770.0.copyload, i64 2
  %i.fs = shufflevector <2 x float> %i.fj, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ft = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.fs, <4 x float> %i.fq)
  %i.fu = insertelement <4 x float> %i.ek, float %.sroa.13777.32.copyload, i64 2
  %i.fv = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.el, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fu, <4 x float> %i.fw, <4 x float> %i.ft)
  %i.fy = fmul float %.sroa.16780.48.copyload, %i.fk
  %i.fz = extractelement <2 x float> %i.fj, i64 0
  %i.ga = call float @llvm.fmuladd.f32(float %i.fz, float %.sroa.14779.48.copyload, float %i.fy)
  %i.gb = call noundef float @llvm.fmuladd.f32(float %i.el, float %.sroa.17781.48.copyload, float %i.ga)
  %i.gc = fadd float %i.gb, %i.fi
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gc, i64 0
  store <4 x float> %i.fx, ptr %i.ct, align 16, !alias.scope !176
  store <2 x float> %i.fh, ptr %i.cu, align 16, !alias.scope !176
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !88, !alias.scope !176
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef nonnull align 4 dereferenceable(64) %11, ptr noundef %i.dc, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.gd = icmp samesign ugt i64 %indvars.iv828, 1
  br i1 %i.gd, label %bb.c, label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.ge = load ptr, ptr %2, align 8, !tbaa !19
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 88
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = call noundef float %i.gg(ptr noundef nonnull align 8 dereferenceable(64) %2)
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.gh, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !182 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 48
  %.sroa.4.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.gr = zext nneg i32 %i.gj to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.gr, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.gs = load ptr, ptr %i.gl, align 8, !tbaa !186
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %indvars.iv.next ; 3 uses
  %.sroa.17.48.copyload = load float, ptr %i.gt, align 4 ; 2 uses
  %.sroa.19767.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %.sroa.19767.48.copyload = load float, ptr %.sroa.19767.48..sroa_idx, align 4 ; 2 uses
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.sroa.20.48.copyload = load float, ptr %.sroa.20.48..sroa_idx, align 4 ; 2 uses
  %i.gu = load ptr, ptr %i.gm, align 8, !tbaa !187
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.gx = load float, ptr %i.g, align 4, !tbaa !8, !noalias !194 ; 3 uses
  %i.gy = load float, ptr %i.j, align 4, !tbaa !8, !noalias !194 ; 3 uses
  %i.gz = load float, ptr %i.r, align 4, !tbaa !8, !noalias !194 ; 3 uses
  %i.ha = load <2 x float>, ptr %1, align 4, !tbaa !8, !noalias !194 ; 4 uses
  %i.hb = extractelement <2 x float> %i.ha, i64 0
  %i.hc = load <2 x float>, ptr %i.l, align 4, !tbaa !8, !noalias !194 ; 3 uses
  %i.hd = load float, ptr %i.n, align 4, !tbaa !8, !noalias !194
  %i.he = load float, ptr %i.f, align 4, !tbaa !8, !noalias !194
  %i.hf = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hg = insertelement <2 x float> %i.hf, float %i.he, i64 1
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hi = fmul <4 x float> %i.hh, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 3 uses
  %i.hj = extractelement <4 x float> %i.hi, i64 2
  %i.hk = extractelement <2 x float> %i.hc, i64 0 ; 2 uses
  %i.hl = fadd float %i.hk, %i.hj
  %i.hm = extractelement <4 x float> %i.hi, i64 3
  %i.hn = fadd float %i.hb, %i.hm
  %i.ho = shufflevector <2 x float> %i.hc, <2 x float> %i.ha, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.hp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> zeroinitializer, <4 x float> %i.hi) ; 4 uses
  %i.hq = load <2 x float>, ptr %i.h, align 4, !tbaa !8, !noalias !194 ; 3 uses
  %i.hr = load float, ptr %i.i, align 4, !tbaa !8, !noalias !194 ; 2 uses
  %i.hs = fmul float %i.hr, 0.000000e+00          ; 2 uses
  %i.ht = extractelement <2 x float> %i.hq, i64 0 ; 3 uses
  %i.hu = fadd float %i.ht, %i.hs
  %i.hv = call float @llvm.fmuladd.f32(float %i.ht, float 0.000000e+00, float %i.hr)
  %i.hw = call float @llvm.fmuladd.f32(float %i.ht, float 0.000000e+00, float %i.hs)
  %i.hx = insertelement <2 x float> poison, float %.sroa.19767.48.copyload, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = shufflevector <2 x float> %i.ha, <2 x float> %i.hq, <2 x i32> <i32 1, i32 3>
  %i.ia = fmul <2 x float> %i.hy, %i.hz
  %i.ib = shufflevector <2 x float> %i.ha, <2 x float> %i.hq, <2 x i32> <i32 0, i32 2>
  %i.ic = insertelement <2 x float> poison, float %.sroa.17.48.copyload, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ie = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.id, <2 x float> %i.ia)
  %i.if = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.gy, i64 1
  %i.ih = insertelement <2 x float> poison, float %.sroa.20.48.copyload, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ig, <2 x float> %i.ii, <2 x float> %i.ie)
  %i.ik = load <2 x float>, ptr %i.a, align 4, !tbaa !8, !noalias !191
  %i.il = fadd <2 x float> %i.ij, %i.ik
  %i.im = fmul float %.sroa.19767.48.copyload, %i.hd
  %i.in = call float @llvm.fmuladd.f32(float %i.hk, float %.sroa.17.48.copyload, float %i.im)
  %i.io = call noundef float @llvm.fmuladd.f32(float %i.gz, float %.sroa.20.48.copyload, float %i.in)
  %i.ip = load float, ptr %i.gn, align 4, !tbaa !8, !noalias !191
  %i.iq = fadd float %i.io, %i.ip
  %.sroa.3.12.vec.insert.i.i185 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.iq, i64 0
  %i.ir = extractelement <4 x float> %i.hp, i64 3
  %i.is = fadd float %i.gx, %i.ir
  %i.it = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.gx, i64 0
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.iv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hn, i64 0
  %i.iw = shufflevector <4 x float> %i.iv, <4 x float> %i.hp, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ix = insertelement <4 x float> %i.iw, float %i.is, i64 2
  %i.iy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iu, <4 x float> zeroinitializer, <4 x float> %i.ix)
  store <4 x float> %i.iy, ptr %12, align 16, !alias.scope !191
  %i.iz = fadd float %i.gy, %i.hw
  %i.ja = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.gy, i64 0
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.jc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hu, i64 0
  %i.jd = insertelement <4 x float> %i.jc, float %i.hv, i64 1
  %i.je = insertelement <4 x float> %i.jd, float %i.iz, i64 2
  %i.jf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jb, <4 x float> zeroinitializer, <4 x float> %i.je)
  store <4 x float> %i.jf, ptr %i.go, align 16, !alias.scope !191
  %i.jg = extractelement <4 x float> %i.hp, i64 2
  %i.jh = fadd float %i.gz, %i.jg
  %i.ji = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.gz, i64 0
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.jk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hl, i64 0
  %i.jl = shufflevector <4 x float> %i.jk, <4 x float> %i.hp, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.jm = insertelement <4 x float> %i.jl, float %i.jh, i64 2
  %i.jn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jj, <4 x float> zeroinitializer, <4 x float> %i.jm)
  store <4 x float> %i.jn, ptr %i.gp, align 16, !alias.scope !191
  store <2 x float> %i.il, ptr %i.gq, align 16, !alias.scope !191
  store <2 x float> %.sroa.3.12.vec.insert.i.i185, ptr %.sroa.4.0..sroa_idx.i195, align 8, !tbaa !88, !alias.scope !191
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.gw, ptr noundef nonnull align 4 dereferenceable(64) %12, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.jo = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.jo, label %bb.f, label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !197 ; 3 uses
  %i.jr = add nsw i32 %i.jq, 2
  %i.js = srem i32 %i.jr, 3
  %i.jt = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ju = sext i32 %i.js to i64                   ; 3 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.ju
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !8 ; 7 uses
  %i.jx = sext i32 %i.jq to i64                   ; 3 uses
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.jx
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.ka = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.kc = fneg float %i.jz
  %i.kd = getelementptr inbounds [4 x i8], ptr %13, i64 %i.jx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store float %i.kc, ptr %i.kd, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.ke = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %14, i64 %i.jx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store float %i.jz, ptr %i.kg, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !147
  %i.kh = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kh, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !147
  %i.ki = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ki, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !147
  %i.kj = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.kk = load float, ptr %13, align 16, !tbaa !8 ; 2 uses
  %i.kl = load float, ptr %i.ka, align 4, !tbaa !8 ; 2 uses
  %63 = load <4 x float>, ptr %i.g, align 4
  %64 = shufflevector <4 x float> %63, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.km = load float, ptr %i.kb, align 8, !tbaa !8 ; 2 uses
  %i.kn = load float, ptr %i.j, align 4, !tbaa !8
  %i.ko = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.kp = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.kq = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = shufflevector <2 x float> %i.ko, <2 x float> %i.kp, <2 x i32> <i32 1, i32 3>
  %i.kt = fmul <2 x float> %i.kr, %i.ks
  %i.ku = shufflevector <2 x float> %i.ko, <2 x float> %i.kp, <2 x i32> <i32 0, i32 2>
  %i.kv = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ku, <2 x float> %i.kw, <2 x float> %i.kt)
  %i.ky = insertelement <2 x float> %64, float %i.kn, i64 1
  %i.kz = insertelement <2 x float> poison, float %i.km, i64 0
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ky, <2 x float> %i.la, <2 x float> %i.kx)
  %i.lc = load <2 x float>, ptr %i.a, align 4, !tbaa !8
  %i.ld = fadd <2 x float> %i.lb, %i.lc
  %i.le = load float, ptr %i.l, align 4, !tbaa !8
  %i.lf = load float, ptr %i.n, align 4, !tbaa !8
  %i.lg = fmul float %i.kl, %i.lf
  %i.lh = call float @llvm.fmuladd.f32(float %i.le, float %i.kk, float %i.lg)
  %i.li = load float, ptr %i.r, align 4, !tbaa !8
  %i.lj = call noundef float @llvm.fmuladd.f32(float %i.li, float %i.km, float %i.lh)
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !8
  %i.lm = fadd float %i.ll, %i.lj
  %.sroa.3.12.vec.insert.i.i198 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lm, i64 0
  store <2 x float> %i.ld, ptr %i.kj, align 4
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i198, ptr %.sroa.430.0..sroa_idx, align 4, !tbaa !88
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.jw, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !147
  %i.ln = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ln, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !147
  %i.lo = getelementptr inbounds nuw i8, ptr %16, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lo, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !147
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.lq = load float, ptr %14, align 8, !tbaa !8  ; 2 uses
  %i.lr = load float, ptr %i.ke, align 4, !tbaa !8 ; 2 uses
  %65 = load <4 x float>, ptr %i.g, align 4
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ls = load float, ptr %i.kf, align 8, !tbaa !8 ; 2 uses
  %i.lt = load float, ptr %i.j, align 4, !tbaa !8
  %i.lu = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.lv = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.lw = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ly = shufflevector <2 x float> %i.lu, <2 x float> %i.lv, <2 x i32> <i32 1, i32 3>
  %i.lz = fmul <2 x float> %i.lx, %i.ly
  %i.ma = shufflevector <2 x float> %i.lu, <2 x float> %i.lv, <2 x i32> <i32 0, i32 2>
  %i.mb = insertelement <2 x float> poison, float %i.lq, i64 0
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.mc, <2 x float> %i.lz)
  %i.me = insertelement <2 x float> %66, float %i.lt, i64 1
  %i.mf = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.me, <2 x float> %i.mg, <2 x float> %i.md)
  %i.mi = load <2 x float>, ptr %i.a, align 4, !tbaa !8
  %i.mj = fadd <2 x float> %i.mh, %i.mi
  %i.mk = load float, ptr %i.l, align 4, !tbaa !8
  %i.ml = load float, ptr %i.n, align 4, !tbaa !8
  %i.mm = fmul float %i.lr, %i.ml
  %i.mn = call float @llvm.fmuladd.f32(float %i.mk, float %i.lq, float %i.mm)
  %i.mo = load float, ptr %i.r, align 4, !tbaa !8
  %i.mp = call noundef float @llvm.fmuladd.f32(float %i.mo, float %i.ls, float %i.mn)
  %i.mq = load float, ptr %i.lk, align 4, !tbaa !8
  %i.mr = fadd float %i.mq, %i.mp
  %.sroa.3.12.vec.insert.i.i201 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mr, i64 0
  store <2 x float> %i.mj, ptr %i.lp, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i201, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !88
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.jw, ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %.sroa.19744.0.copyload = load float, ptr %i.lk, align 4 ; 7 uses
  %i.ms = add nsw i32 %i.jq, 1
  %i.mt = srem i32 %i.ms, 3
  %i.mu = sext i32 %i.mt to i64                   ; 2 uses
  %i.mv = getelementptr inbounds [4 x i8], ptr %13, i64 %i.mu ; 3 uses
  store float %i.jw, ptr %i.mv, align 4, !tbaa !8
  %i.mw = getelementptr inbounds [4 x i8], ptr %14, i64 %i.mu ; 3 uses
  store float %i.jw, ptr %i.mw, align 4, !tbaa !8
  %i.mx = load ptr, ptr %0, align 8, !tbaa !19
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = load <2 x float>, ptr %i.a, align 4     ; 8 uses
  %i.nb = call noundef ptr %i.mz(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.nc = load float, ptr %13, align 16, !tbaa !8 ; 2 uses
  %i.nd = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.ne = load float, ptr %i.ka, align 4, !tbaa !8 ; 2 uses
  %i.nf = load float, ptr %i.kb, align 8, !tbaa !8 ; 2 uses
  %i.ng = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.nh = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nj = shufflevector <2 x float> %i.nd, <2 x float> %i.ng, <2 x i32> <i32 1, i32 3>
  %i.nk = fmul <2 x float> %i.ni, %i.nj
  %i.nl = shufflevector <2 x float> %i.nd, <2 x float> %i.ng, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.nm = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.nn = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.no = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nl, <2 x float> %i.nn, <2 x float> %i.nk)
  %i.np = insertelement <2 x float> poison, float %i.nf, i64 0
  %i.nq = shufflevector <2 x float> %i.np, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nr = load float, ptr %i.l, align 4, !tbaa !8 ; 2 uses
  %i.ns = load float, ptr %i.n, align 4, !tbaa !8 ; 2 uses
  %i.nt = fmul float %i.ne, %i.ns
  %i.nu = call float @llvm.fmuladd.f32(float %i.nr, float %i.nc, float %i.nt)
  %i.nv = load float, ptr %i.r, align 4, !tbaa !8 ; 2 uses
  %i.nw = call noundef float @llvm.fmuladd.f32(float %i.nv, float %i.nf, float %i.nu)
  %i.nx = fadd float %.sroa.19744.0.copyload, %i.nw
  %.sroa.3.12.vec.insert.i211 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nx, i64 0
  %i.ny = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i211, ptr %i.ny, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.nz = load float, ptr %14, align 8, !tbaa !8  ; 2 uses
  %i.oa = load float, ptr %i.ke, align 4, !tbaa !8 ; 2 uses
  %i.ob = load float, ptr %i.kf, align 8, !tbaa !8 ; 2 uses
  %i.oc = fmul float %i.ns, %i.oa
  %i.od = call float @llvm.fmuladd.f32(float %i.nr, float %i.nz, float %i.oc)
  %i.oe = call noundef float @llvm.fmuladd.f32(float %i.nv, float %i.ob, float %i.od)
  %i.of = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.og = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.oh = shufflevector <2 x float> %i.of, <2 x float> %i.og, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.oi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oh, <2 x float> %i.nq, <2 x float> %i.no)
  %i.oj = fadd <2 x float> %i.na, %i.oi
  store <2 x float> %i.oj, ptr %17, align 8
  %i.ok = shufflevector <2 x float> %i.of, <2 x float> %i.og, <2 x i32> <i32 0, i32 2>
  %i.ol = insertelement <2 x float> poison, float %i.oa, i64 0
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.on = fmul <2 x float> %i.ok, %i.om
  %i.oo = insertelement <2 x float> poison, float %i.nz, i64 0
  %i.op = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nl, <2 x float> %i.op, <2 x float> %i.on)
  %i.or = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.os = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ot = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oh, <2 x float> %i.os, <2 x float> %i.oq)
  %i.ou = fadd <2 x float> %i.na, %i.ot
  %i.ov = fadd float %.sroa.19744.0.copyload, %i.oe
  %.sroa.3.12.vec.insert.i221 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ov, i64 0
  store <2 x float> %i.ou, ptr %18, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %18, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i221, ptr %i.ow, align 8
  %i.ox = load ptr, ptr %i.nb, align 8, !tbaa !19
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 40
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(8) %i.nb, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.pa = fneg float %i.jw                        ; 4 uses
  store float %i.pa, ptr %i.mv, align 4, !tbaa !8
  store float %i.pa, ptr %i.mw, align 4, !tbaa !8
  %i.pb = load ptr, ptr %0, align 8, !tbaa !19
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %i.pd = load ptr, ptr %i.pc, align 8
  %i.pe = call noundef ptr %i.pd(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.pf = load float, ptr %13, align 16, !tbaa !8 ; 2 uses
  %i.pg = load float, ptr %i.ka, align 4, !tbaa !8 ; 2 uses
  %i.ph = load float, ptr %i.kb, align 8, !tbaa !8 ; 2 uses
  %i.pi = load float, ptr %i.l, align 4, !tbaa !8 ; 2 uses
  %i.pj = load float, ptr %i.n, align 4, !tbaa !8 ; 2 uses
  %i.pk = fmul float %i.pg, %i.pj
  %i.pl = call float @llvm.fmuladd.f32(float %i.pi, float %i.pf, float %i.pk)
  %i.pm = load float, ptr %i.r, align 4, !tbaa !8 ; 2 uses
  %i.pn = call noundef float @llvm.fmuladd.f32(float %i.pm, float %i.ph, float %i.pl)
  %i.po = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.pp = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.pq = insertelement <2 x float> poison, float %i.pg, i64 0
  %i.pr = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ps = shufflevector <2 x float> %i.po, <2 x float> %i.pp, <2 x i32> <i32 1, i32 3>
  %i.pt = fmul <2 x float> %i.pr, %i.ps
  %i.pu = shufflevector <2 x float> %i.po, <2 x float> %i.pp, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.pv = insertelement <2 x float> poison, float %i.pf, i64 0
  %i.pw = shufflevector <2 x float> %i.pv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.px = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pu, <2 x float> %i.pw, <2 x float> %i.pt)
  %i.py = insertelement <2 x float> poison, float %i.ph, i64 0
  %i.pz = shufflevector <2 x float> %i.py, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qa = fadd float %.sroa.19744.0.copyload, %i.pn
  %.sroa.3.12.vec.insert.i231 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qa, i64 0
  %i.qb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i231, ptr %i.qb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.qc = load float, ptr %14, align 8, !tbaa !8  ; 2 uses
  %i.qd = load float, ptr %i.ke, align 4, !tbaa !8 ; 2 uses
  %i.qe = load float, ptr %i.kf, align 8, !tbaa !8 ; 2 uses
  %i.qf = fmul float %i.pj, %i.qd
  %i.qg = call float @llvm.fmuladd.f32(float %i.pi, float %i.qc, float %i.qf)
  %i.qh = call noundef float @llvm.fmuladd.f32(float %i.pm, float %i.qe, float %i.qg)
  %i.qi = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.qj = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.qk = shufflevector <2 x float> %i.qi, <2 x float> %i.qj, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ql = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qk, <2 x float> %i.pz, <2 x float> %i.px)
  %i.qm = fadd <2 x float> %i.na, %i.ql
  store <2 x float> %i.qm, ptr %19, align 8
  %i.qn = shufflevector <2 x float> %i.qi, <2 x float> %i.qj, <2 x i32> <i32 0, i32 2>
  %i.qo = insertelement <2 x float> poison, float %i.qd, i64 0
  %i.qp = shufflevector <2 x float> %i.qo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qq = fmul <2 x float> %i.qn, %i.qp
  %i.qr = insertelement <2 x float> poison, float %i.qc, i64 0
  %i.qs = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pu, <2 x float> %i.qs, <2 x float> %i.qq)
  %i.qu = insertelement <2 x float> poison, float %i.qe, i64 0
  %i.qv = shufflevector <2 x float> %i.qu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qk, <2 x float> %i.qv, <2 x float> %i.qt)
  %i.qx = fadd <2 x float> %i.na, %i.qw
  %i.qy = fadd float %.sroa.19744.0.copyload, %i.qh
  %.sroa.3.12.vec.insert.i241 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qy, i64 0
  store <2 x float> %i.qx, ptr %20, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %20, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i241, ptr %i.qz, align 8
  %i.ra = load ptr, ptr %i.pe, align 8, !tbaa !19
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 40
  %i.rc = load ptr, ptr %i.rb, align 8
  call void %i.rc(ptr noundef nonnull align 8 dereferenceable(8) %i.pe, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  store float 0.000000e+00, ptr %i.mv, align 4, !tbaa !8
  store float 0.000000e+00, ptr %i.mw, align 4, !tbaa !8
  %i.rd = getelementptr inbounds [4 x i8], ptr %13, i64 %i.ju ; 2 uses
  store float %i.jw, ptr %i.rd, align 4, !tbaa !8
  %i.re = getelementptr inbounds [4 x i8], ptr %14, i64 %i.ju ; 2 uses
  store float %i.jw, ptr %i.re, align 4, !tbaa !8
  %i.rf = load ptr, ptr %0, align 8, !tbaa !19
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 32
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = call noundef ptr %i.rh(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.rj = load float, ptr %13, align 16, !tbaa !8 ; 2 uses
  %i.rk = load float, ptr %i.ka, align 4, !tbaa !8 ; 2 uses
  %i.rl = load float, ptr %i.kb, align 8, !tbaa !8 ; 2 uses
  %i.rm = load float, ptr %i.l, align 4, !tbaa !8 ; 2 uses
  %i.rn = load float, ptr %i.n, align 4, !tbaa !8 ; 2 uses
  %i.ro = fmul float %i.rk, %i.rn
  %i.rp = call float @llvm.fmuladd.f32(float %i.rm, float %i.rj, float %i.ro)
  %i.rq = load float, ptr %i.r, align 4, !tbaa !8 ; 2 uses
  %i.rr = call noundef float @llvm.fmuladd.f32(float %i.rq, float %i.rl, float %i.rp)
  %i.rs = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.rt = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.ru = insertelement <2 x float> poison, float %i.rk, i64 0
  %i.rv = shufflevector <2 x float> %i.ru, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rw = shufflevector <2 x float> %i.rs, <2 x float> %i.rt, <2 x i32> <i32 1, i32 3>
  %i.rx = fmul <2 x float> %i.rv, %i.rw
  %i.ry = shufflevector <2 x float> %i.rs, <2 x float> %i.rt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.rz = insertelement <2 x float> poison, float %i.rj, i64 0
  %i.sa = shufflevector <2 x float> %i.rz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ry, <2 x float> %i.sa, <2 x float> %i.rx)
  %i.sc = insertelement <2 x float> poison, float %i.rl, i64 0
  %i.sd = shufflevector <2 x float> %i.sc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.se = fadd float %.sroa.19744.0.copyload, %i.rr
  %.sroa.3.12.vec.insert.i251 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.se, i64 0
  %i.sf = getelementptr inbounds nuw i8, ptr %21, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i251, ptr %i.sf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.sg = load float, ptr %14, align 8, !tbaa !8  ; 2 uses
  %i.sh = load float, ptr %i.ke, align 4, !tbaa !8 ; 2 uses
  %i.si = load float, ptr %i.kf, align 8, !tbaa !8 ; 2 uses
  %i.sj = fmul float %i.rn, %i.sh
  %i.sk = call float @llvm.fmuladd.f32(float %i.rm, float %i.sg, float %i.sj)
  %i.sl = call noundef float @llvm.fmuladd.f32(float %i.rq, float %i.si, float %i.sk)
  %i.sm = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.sn = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.so = shufflevector <2 x float> %i.sm, <2 x float> %i.sn, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.sp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.so, <2 x float> %i.sd, <2 x float> %i.sb)
  %i.sq = fadd <2 x float> %i.na, %i.sp
  store <2 x float> %i.sq, ptr %21, align 8
  %i.sr = shufflevector <2 x float> %i.sm, <2 x float> %i.sn, <2 x i32> <i32 0, i32 2>
  %i.ss = insertelement <2 x float> poison, float %i.sh, i64 0
  %i.st = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> zeroinitializer
  %i.su = fmul <2 x float> %i.sr, %i.st
  %i.sv = insertelement <2 x float> poison, float %i.sg, i64 0
  %i.sw = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ry, <2 x float> %i.sw, <2 x float> %i.su)
  %i.sy = insertelement <2 x float> poison, float %i.si, i64 0
  %i.sz = shufflevector <2 x float> %i.sy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ta = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.so, <2 x float> %i.sz, <2 x float> %i.sx)
  %i.tb = fadd <2 x float> %i.na, %i.ta
  %i.tc = fadd float %.sroa.19744.0.copyload, %i.sl
  %.sroa.3.12.vec.insert.i261 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.tc, i64 0
  store <2 x float> %i.tb, ptr %22, align 8
  %i.td = getelementptr inbounds nuw i8, ptr %22, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i261, ptr %i.td, align 8
  %i.te = load ptr, ptr %i.ri, align 8, !tbaa !19
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 40
  %i.tg = load ptr, ptr %i.tf, align 8
  call void %i.tg(ptr noundef nonnull align 8 dereferenceable(8) %i.ri, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  store float %i.pa, ptr %i.rd, align 4, !tbaa !8
  store float %i.pa, ptr %i.re, align 4, !tbaa !8
  %i.th = load ptr, ptr %0, align 8, !tbaa !19
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 32
  %i.tj = load ptr, ptr %i.ti, align 8
  %i.tk = call noundef ptr %i.tj(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.tl = load <4 x float>, ptr %13, align 16     ; 2 uses
  %i.tm = shufflevector <4 x float> %i.tl, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %67 = load <4 x float>, ptr %i.l, align 4
  %68 = load <4 x float>, ptr %i.n, align 4
  %69 = load <4 x float>, ptr %i.r, align 4
  %i.tn = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.to = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.tp = shufflevector <2 x float> %i.tn, <2 x float> %i.to, <2 x i32> <i32 1, i32 3>
  %i.tq = shufflevector <2 x float> %i.tn, <2 x float> %i.to, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.tr = shufflevector <4 x float> %i.tl, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ts = getelementptr inbounds nuw i8, ptr %23, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.tt = load float, ptr %i.kf, align 8, !tbaa !8 ; 2 uses
  %i.tu = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.tv = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.tw = shufflevector <2 x float> %i.tu, <2 x float> %i.tv, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.tx = shufflevector <2 x float> %i.tu, <2 x float> %i.tv, <2 x i32> <i32 0, i32 2>
  %i.ty = insertelement <2 x float> poison, float %i.tt, i64 0
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ua = load <2 x float>, ptr %13, align 16, !tbaa !8 ; 4 uses
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uc = fmul <2 x float> %i.ub, %i.tp
  %i.ud = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ue = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tq, <2 x float> %i.ud, <2 x float> %i.uc)
  %i.uf = load <2 x float>, ptr %14, align 8, !tbaa !8 ; 4 uses
  %i.ug = shufflevector <4 x float> %68, <4 x float> poison, <2 x i32> zeroinitializer
  %i.uh = shufflevector <2 x float> %i.ua, <2 x float> %i.uf, <2 x i32> <i32 1, i32 3>
  %i.ui = fmul <2 x float> %i.ug, %i.uh
  %i.uj = shufflevector <4 x float> %67, <4 x float> poison, <2 x i32> zeroinitializer
  %i.uk = shufflevector <2 x float> %i.ua, <2 x float> %i.uf, <2 x i32> <i32 0, i32 2>
  %i.ul = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uj, <2 x float> %i.uk, <2 x float> %i.ui)
  %i.um = shufflevector <4 x float> %69, <4 x float> poison, <2 x i32> zeroinitializer
  %i.un = insertelement <2 x float> %i.tm, float %i.tt, i64 1
  %i.uo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.um, <2 x float> %i.un, <2 x float> %i.ul)
  %i.up = insertelement <2 x float> poison, float %.sroa.19744.0.copyload, i64 0
  %i.uq = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ur = fadd <2 x float> %i.uq, %i.uo           ; 2 uses
  %i.us = insertelement <2 x float> %i.ur, float 0.000000e+00, i64 1
  store <2 x float> %i.us, ptr %i.ts, align 8
  %i.ut = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tw, <2 x float> %i.tr, <2 x float> %i.ue)
  %i.uu = fadd <2 x float> %i.na, %i.ut
  store <2 x float> %i.uu, ptr %23, align 8
  %i.uv = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uw = fmul <2 x float> %i.tx, %i.uv
  %i.ux = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tq, <2 x float> %i.ux, <2 x float> %i.uw)
  %i.uz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tw, <2 x float> %i.tz, <2 x float> %i.uy)
  %i.va = fadd <2 x float> %i.na, %i.uz
  %i.vb = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ur, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.va, ptr %24, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %24, i64 8
  store <2 x float> %i.vb, ptr %i.vc, align 8
  %i.vd = load ptr, ptr %i.tk, align 8, !tbaa !19
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  %i.vf = load ptr, ptr %i.ve, align 8
  call void %i.vf(ptr noundef nonnull align 8 dereferenceable(8) %i.tk, ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.vg = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !201 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.vj = load float, ptr %i.vi, align 8, !tbaa !203
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.19.0.copyload = load float, ptr %.sroa.19.0..sroa_idx, align 4 ; 8 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !4  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.vm = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.vn = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.vo = fmul float %i.vj, 5.000000e-01
  %i.vp = sext i32 %i.vl to i64
  %i.vq = getelementptr inbounds [4 x i8], ptr %25, i64 %i.vp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  store float %i.vo, ptr %i.vq, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.vr = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.vs = getelementptr inbounds nuw i8, ptr %26, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.vt = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.vu = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.vv = insertelement <2 x i32> poison, i32 %i.vl, i64 0
  %i.vw = shufflevector <2 x i32> %i.vv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.vx = add nsw <2 x i32> %i.vw, <i32 1, i32 2>
  %i.vy = srem <2 x i32> %i.vx, splat (i32 3)     ; 2 uses
  %i.vz = extractelement <2 x i32> %i.vy, i64 0
  %i.wa = sext i32 %i.vz to i64
  %i.wb = getelementptr inbounds [4 x i8], ptr %26, i64 %i.wa
  store float %i.vh, ptr %i.wb, align 4, !tbaa !8
  %i.wc = extractelement <2 x i32> %i.vy, i64 1
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %27, i64 %i.wd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  store float %i.vh, ptr %i.we, align 4, !tbaa !8
  %i.wf = load ptr, ptr %0, align 8, !tbaa !19
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 32
  %i.wh = load ptr, ptr %i.wg, align 8
  %i.wi = load <2 x float>, ptr %i.a, align 4     ; 8 uses
  %i.wj = call noundef ptr %i.wh(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.wk = load float, ptr %25, align 4, !tbaa !8  ; 8 uses
  %i.wl = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.wm = load float, ptr %i.vm, align 4, !tbaa !8 ; 8 uses
  %i.wn = load float, ptr %i.vn, align 4, !tbaa !8 ; 8 uses
  %i.wo = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.wp = insertelement <2 x float> poison, float %i.wm, i64 0
  %i.wq = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wr = shufflevector <2 x float> %i.wl, <2 x float> %i.wo, <2 x i32> <i32 1, i32 3>
  %i.ws = fmul <2 x float> %i.wq, %i.wr
  %i.wt = shufflevector <2 x float> %i.wl, <2 x float> %i.wo, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.wu = insertelement <2 x float> poison, float %i.wk, i64 0
  %i.wv = shufflevector <2 x float> %i.wu, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ww = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wt, <2 x float> %i.wv, <2 x float> %i.ws)
  %i.wx = insertelement <2 x float> poison, float %i.wn, i64 0
  %i.wy = shufflevector <2 x float> %i.wx, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wz = load float, ptr %i.l, align 4, !tbaa !8 ; 2 uses
  %i.xa = load float, ptr %i.n, align 4, !tbaa !8 ; 2 uses
  %i.xb = fmul float %i.wm, %i.xa
  %i.xc = call float @llvm.fmuladd.f32(float %i.wz, float %i.wk, float %i.xb)
  %i.xd = load float, ptr %i.r, align 4, !tbaa !8 ; 2 uses
  %i.xe = call noundef float @llvm.fmuladd.f32(float %i.xd, float %i.wn, float %i.xc)
  %i.xf = fadd float %.sroa.19.0.copyload, %i.xe
  %.sroa.3.12.vec.insert.i291 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xf, i64 0
  %i.xg = getelementptr inbounds nuw i8, ptr %28, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i291, ptr %i.xg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.xh = fneg float %i.wk                        ; 2 uses
  %i.xi = fneg float %i.wm                        ; 2 uses
  %i.xj = fneg float %i.wn                        ; 2 uses
  %i.xk = load float, ptr %26, align 4, !tbaa !8  ; 2 uses
  %i.xl = fsub float %i.xk, %i.wk                 ; 2 uses
  %i.xm = load float, ptr %i.vr, align 4, !tbaa !8 ; 2 uses
  %i.xn = fsub float %i.xm, %i.wm                 ; 2 uses
  %i.xo = load float, ptr %i.vs, align 4, !tbaa !8 ; 2 uses
  %i.xp = fsub float %i.xo, %i.wn                 ; 2 uses
  %i.xq = fmul float %i.xa, %i.xn
  %i.xr = call float @llvm.fmuladd.f32(float %i.wz, float %i.xl, float %i.xq)
  %i.xs = call noundef float @llvm.fmuladd.f32(float %i.xd, float %i.xp, float %i.xr)
  %i.xt = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.xu = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.xv = shufflevector <2 x float> %i.xt, <2 x float> %i.xu, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.xw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xv, <2 x float> %i.wy, <2 x float> %i.ww)
  %i.xx = fadd <2 x float> %i.wi, %i.xw
  store <2 x float> %i.xx, ptr %28, align 8
  %i.xy = shufflevector <2 x float> %i.xt, <2 x float> %i.xu, <2 x i32> <i32 0, i32 2>
  %i.xz = insertelement <2 x float> poison, float %i.xn, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yb = fmul <2 x float> %i.xy, %i.ya
  %i.yc = insertelement <2 x float> poison, float %i.xl, i64 0
  %i.yd = shufflevector <2 x float> %i.yc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ye = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wt, <2 x float> %i.yd, <2 x float> %i.yb)
  %i.yf = insertelement <2 x float> poison, float %i.xp, i64 0
  %i.yg = shufflevector <2 x float> %i.yf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xv, <2 x float> %i.yg, <2 x float> %i.ye)
  %i.yi = fadd <2 x float> %i.wi, %i.yh
  %i.yj = fadd float %.sroa.19.0.copyload, %i.xs
  %.sroa.3.12.vec.insert.i311 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.yj, i64 0
  store <2 x float> %i.yi, ptr %29, align 8
  %i.yk = getelementptr inbounds nuw i8, ptr %29, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i311, ptr %i.yk, align 8
  %i.yl = load ptr, ptr %i.wj, align 8, !tbaa !19
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 40
  %i.yn = load ptr, ptr %i.ym, align 8
  call void %i.yn(ptr noundef nonnull align 8 dereferenceable(8) %i.wj, ptr noundef nonnull align 4 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  %i.yo = load ptr, ptr %0, align 8, !tbaa !19
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 32
  %i.yq = load ptr, ptr %i.yp, align 8
  %i.yr = call noundef ptr %i.yq(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %i.ys = load float, ptr %i.l, align 4, !tbaa !8 ; 2 uses
  %i.yt = load float, ptr %i.n, align 4, !tbaa !8 ; 2 uses
  %i.yu = fmul float %i.wm, %i.yt
  %i.yv = call float @llvm.fmuladd.f32(float %i.ys, float %i.wk, float %i.yu)
  %i.yw = load float, ptr %i.r, align 4, !tbaa !8 ; 2 uses
  %i.yx = call noundef float @llvm.fmuladd.f32(float %i.yw, float %i.wn, float %i.yv)
  %i.yy = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.yz = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.za = shufflevector <2 x float> %i.yy, <2 x float> %i.yz, <2 x i32> <i32 1, i32 3>
  %i.zb = fmul <2 x float> %i.wq, %i.za
  %i.zc = shufflevector <2 x float> %i.yy, <2 x float> %i.yz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.zd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zc, <2 x float> %i.wv, <2 x float> %i.zb)
  %i.ze = fadd float %.sroa.19.0.copyload, %i.yx
  %.sroa.3.12.vec.insert.i321 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ze, i64 0
  %i.zf = getelementptr inbounds nuw i8, ptr %30, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i321, ptr %i.zf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.zg = fsub float %i.xh, %i.xk                 ; 2 uses
  %i.zh = fsub float %i.xi, %i.xm                 ; 2 uses
  %i.zi = fsub float %i.xj, %i.xo                 ; 2 uses
  %i.zj = fmul float %i.zh, %i.yt
  %i.zk = call float @llvm.fmuladd.f32(float %i.ys, float %i.zg, float %i.zj)
  %i.zl = call noundef float @llvm.fmuladd.f32(float %i.yw, float %i.zi, float %i.zk)
  %i.zm = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.zn = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.zo = shufflevector <2 x float> %i.zm, <2 x float> %i.zn, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.zp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zo, <2 x float> %i.wy, <2 x float> %i.zd)
  %i.zq = fadd <2 x float> %i.wi, %i.zp
  store <2 x float> %i.zq, ptr %30, align 8
  %i.zr = insertelement <2 x float> poison, float %i.zh, i64 0
  %i.zs = shufflevector <2 x float> %i.zr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zt = shufflevector <2 x float> %i.zm, <2 x float> %i.zn, <2 x i32> <i32 0, i32 2>
  %i.zu = fmul <2 x float> %i.zs, %i.zt
  %i.zv = insertelement <2 x float> poison, float %i.zg, i64 0
  %i.zw = shufflevector <2 x float> %i.zv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zc, <2 x float> %i.zw, <2 x float> %i.zu)
  %i.zy = insertelement <2 x float> poison, float %i.zi, i64 0
  %i.zz = shufflevector <2 x float> %i.zy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zo, <2 x float> %i.zz, <2 x float> %i.zx)
  %i.aab = fadd <2 x float> %i.wi, %i.aaa
  %i.aac = fadd float %.sroa.19.0.copyload, %i.zl
  %.sroa.3.12.vec.insert.i341 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aac, i64 0
  store <2 x float> %i.aab, ptr %31, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %31, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i341, ptr %i.aad, align 8
  %i.aae = load ptr, ptr %i.yr, align 8, !tbaa !19
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 40
  %i.aag = load ptr, ptr %i.aaf, align 8
  call void %i.aag(ptr noundef nonnull align 8 dereferenceable(8) %i.yr, ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(16) %31, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  %i.aah = load ptr, ptr %0, align 8, !tbaa !19
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 32
  %i.aaj = load ptr, ptr %i.aai, align 8
  %i.aak = call noundef ptr %i.aaj(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
end_hunk_0
begin_hunk_1_@_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3:bb.a
  store <2 x float> %i.aph, ptr %46, align 8
  %i.apm = getelementptr inbounds nuw i8, ptr %46, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i538, ptr %i.apm, align 8
  %i.apn = load ptr, ptr %i.anv, align 8, !tbaa !19
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 40
  %i.app = load ptr, ptr %i.apo, align 8
  call void %i.app(ptr noundef nonnull align 8 dereferenceable(8) %i.anv, ptr noundef nonnull align 4 dereferenceable(16) %45, ptr noundef nonnull align 4 dereferenceable(16) %46, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.apq = add i32 %i.cm, -21
  %i.apr = icmp ult i32 %i.apq, 9
  br i1 %i.apr, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %47, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  store <4 x float> <float f0xDD5E0B6B, float f0xDD5E0B6B, float f0xDD5E0B6B, float 0.000000e+00>, ptr %48, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #20
  %i.aps = load ptr, ptr %0, align 8, !tbaa !19
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 32
  %i.apu = load ptr, ptr %i.apt, align 8
  %i.apv = call noundef ptr %i.apu(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %i.apw = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17DebugDrawcallback, i64 16), ptr %49, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DebugDrawcallback, i64 64), ptr %i.apw, align 8, !tbaa !19
  %i.apx = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %i.apv, ptr %i.apx, align 8, !tbaa !207
  %i.apy = getelementptr inbounds nuw i8, ptr %49, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apy, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !147
  %i.apz = getelementptr inbounds nuw i8, ptr %49, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.apz, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !147
  %i.aqa = getelementptr inbounds nuw i8, ptr %49, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqa, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !147
  %i.aqb = getelementptr inbounds nuw i8, ptr %49, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqb, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !147
  %i.aqc = getelementptr inbounds nuw i8, ptr %49, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqc, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !147
  %i.aqd = load ptr, ptr %2, align 8, !tbaa !19
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 96
  %i.aqf = load ptr, ptr %i.aqe, align 8
  invoke void %i.aqf(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull %49, ptr noundef nonnull align 4 dereferenceable(16) %48, ptr noundef nonnull align 4 dereferenceable(16) %47)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.apw)
          to label %_ZN17DebugDrawcallbackD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %49)
          to label %common.resume unwind label %bb.q

common.resume:                                    ; preds = %bb.s, %bb.z, %bb.w, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.arc, %bb.w ], [ %i.aqg, %bb.p ], [ %i.arf, %bb.z ], [ %i.aqj, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.p
  %i.aqh = landingpad { ptr, i32 }
          catch ptr null
  %i.aqi = extractvalue { ptr, i32 } %i.aqh, 0
  call void @__clang_call_terminate(ptr %i.aqi) #19
  unreachable

_ZN17DebugDrawcallbackD2Ev.exit:                  ; preds = %bb.o
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  %.pre = load i32, ptr %i.cl, align 8, !tbaa !166
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.aqj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN17DebugDrawcallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %49)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  br label %common.resume

bb.t:                                             ; preds = %_ZN17DebugDrawcallbackD2Ev.exit, %bb.m
  %i.aqk = phi i32 [ %.pre, %_ZN17DebugDrawcallbackD2Ev.exit ], [ %i.cm, %bb.m ] ; 2 uses
  %i.aql = icmp eq i32 %i.aqk, 3
  br i1 %i.aql, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #20
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %50, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #20
  store <4 x float> <float f0xDD5E0B6B, float f0xDD5E0B6B, float f0xDD5E0B6B, float 0.000000e+00>, ptr %51, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #20
  %i.aqm = load ptr, ptr %0, align 8, !tbaa !19
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 32
  %i.aqo = load ptr, ptr %i.aqn, align 8
  %i.aqp = call noundef ptr %i.aqo(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %i.aqq = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17DebugDrawcallback, i64 16), ptr %52, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DebugDrawcallback, i64 64), ptr %i.aqq, align 8, !tbaa !19
  %i.aqr = getelementptr inbounds nuw i8, ptr %52, i64 16
  store ptr %i.aqp, ptr %i.aqr, align 8, !tbaa !207
  %i.aqs = getelementptr inbounds nuw i8, ptr %52, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqs, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !147
  %i.aqt = getelementptr inbounds nuw i8, ptr %52, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aqt, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !147
  %i.aqu = getelementptr inbounds nuw i8, ptr %52, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqu, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !147
  %i.aqv = getelementptr inbounds nuw i8, ptr %52, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqv, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !147
  %i.aqw = getelementptr inbounds nuw i8, ptr %52, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqw, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !147
  %i.aqx = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !211 ; 2 uses
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !19
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 16
  %i.arb = load ptr, ptr %i.ara, align 8
  invoke void %i.arb(ptr noundef nonnull align 8 dereferenceable(24) %i.aqy, ptr noundef nonnull %i.aqq, ptr noundef nonnull align 4 dereferenceable(16) %51, ptr noundef nonnull align 4 dereferenceable(16) %50)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aqq)
          to label %_ZN17DebugDrawcallbackD2Ev.exit541 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.arc = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %52)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ard = landingpad { ptr, i32 }
          catch ptr null
  %i.are = extractvalue { ptr, i32 } %i.ard, 0
  call void @__clang_call_terminate(ptr %i.are) #19
  unreachable

_ZN17DebugDrawcallbackD2Ev.exit541:               ; preds = %bb.v
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  %.pr = load i32, ptr %i.cl, align 8, !tbaa !166
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.arf = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN17DebugDrawcallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %52)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  br label %common.resume

bb.aa:                                            ; preds = %_ZN17DebugDrawcallbackD2Ev.exit541, %bb.t
  %i.arg = phi i32 [ %.pr, %_ZN17DebugDrawcallbackD2Ev.exit541 ], [ %i.aqk, %bb.t ]
  %i.arh = icmp slt i32 %i.arg, 7
  br i1 %i.arh, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.aa
  %i.ari = load ptr, ptr %2, align 8, !tbaa !19
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 152
  %i.ark = load ptr, ptr %i.arj, align 8
  %i.arl = call noundef i32 %i.ark(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.arm = icmp sgt i32 %i.arl, 0
  br i1 %i.arm, label %.lr.ph824, label %.loopexit

.lr.ph824:                                        ; preds = %.preheader
  %i.arn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aro = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.arp = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.arq = getelementptr inbounds nuw i8, ptr %56, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph824, %bb.ab
  %.0823 = phi i32 [ 0, %.lr.ph824 ], [ %i.att, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #20
  %i.arr = load ptr, ptr %2, align 8, !tbaa !19
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 160
  %i.art = load ptr, ptr %i.ars, align 8
  call void %i.art(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0823, ptr noundef nonnull align 4 dereferenceable(16) %53, ptr noundef nonnull align 4 dereferenceable(16) %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #20
  %i.aru = load <4 x float>, ptr %53, align 16    ; 2 uses
  %i.arv = shufflevector <4 x float> %i.aru, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.arw = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.arx = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.ary = shufflevector <2 x float> %i.arw, <2 x float> %i.arx, <2 x i32> <i32 1, i32 3>
  %i.arz = shufflevector <2 x float> %i.arw, <2 x float> %i.arx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.asa = shufflevector <4 x float> %i.aru, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.asb = load <2 x float>, ptr %i.a, align 4, !tbaa !8 ; 2 uses
  %70 = load <4 x float>, ptr %i.l, align 4
  %71 = load <4 x float>, ptr %i.n, align 4
  %72 = load <4 x float>, ptr %i.r, align 4
  %i.asc = load float, ptr %i.arn, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #20
  %i.asd = load float, ptr %i.arp, align 8, !tbaa !8 ; 2 uses
  %i.ase = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.asf = load <2 x float>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.asg = shufflevector <2 x float> %i.ase, <2 x float> %i.asf, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ash = shufflevector <2 x float> %i.ase, <2 x float> %i.asf, <2 x i32> <i32 0, i32 2>
  %i.asi = insertelement <2 x float> poison, float %i.asd, i64 0
  %i.asj = shufflevector <2 x float> %i.asi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ask = load <2 x float>, ptr %53, align 16, !tbaa !8 ; 4 uses
  %i.asl = shufflevector <2 x float> %i.ask, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.asm = fmul <2 x float> %i.asl, %i.ary
  %i.asn = shufflevector <2 x float> %i.ask, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aso = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arz, <2 x float> %i.asn, <2 x float> %i.asm)
  %i.asp = load <2 x float>, ptr %54, align 8, !tbaa !8 ; 4 uses
  %i.asq = shufflevector <4 x float> %71, <4 x float> poison, <2 x i32> zeroinitializer
  %i.asr = shufflevector <2 x float> %i.ask, <2 x float> %i.asp, <2 x i32> <i32 1, i32 3>
  %i.ass = fmul <2 x float> %i.asq, %i.asr
  %i.ast = shufflevector <4 x float> %70, <4 x float> poison, <2 x i32> zeroinitializer
  %i.asu = shufflevector <2 x float> %i.ask, <2 x float> %i.asp, <2 x i32> <i32 0, i32 2>
  %i.asv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ast, <2 x float> %i.asu, <2 x float> %i.ass)
  %i.asw = shufflevector <4 x float> %72, <4 x float> poison, <2 x i32> zeroinitializer
  %i.asx = insertelement <2 x float> %i.arv, float %i.asd, i64 1
  %i.asy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asw, <2 x float> %i.asx, <2 x float> %i.asv)
  %i.asz = insertelement <2 x float> poison, float %i.asc, i64 0
  %i.ata = shufflevector <2 x float> %i.asz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atb = fadd <2 x float> %i.ata, %i.asy        ; 2 uses
  %i.atc = insertelement <2 x float> %i.atb, float 0.000000e+00, i64 1
  store <2 x float> %i.atc, ptr %i.aro, align 8
  %i.atd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asg, <2 x float> %i.asa, <2 x float> %i.aso)
  %i.ate = fadd <2 x float> %i.atd, %i.asb
  store <2 x float> %i.ate, ptr %55, align 8
  %i.atf = shufflevector <2 x float> %i.asp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.atg = fmul <2 x float> %i.ash, %i.atf
  %i.ath = shufflevector <2 x float> %i.asp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ati = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arz, <2 x float> %i.ath, <2 x float> %i.atg)
  %i.atj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asg, <2 x float> %i.asj, <2 x float> %i.ati)
  %i.atk = fadd <2 x float> %i.asb, %i.atj
  %i.atl = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.atb, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.atk, ptr %56, align 8
  store <2 x float> %i.atl, ptr %i.arq, align 8
  %i.atm = load ptr, ptr %0, align 8, !tbaa !19
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 32
  %i.ato = load ptr, ptr %i.atn, align 8
  %i.atp = call noundef ptr %i.ato(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !19
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 40
  %i.ats = load ptr, ptr %i.atr, align 8
  call void %i.ats(ptr noundef nonnull align 8 dereferenceable(8) %i.atp, ptr noundef nonnull align 4 dereferenceable(16) %55, ptr noundef nonnull align 4 dereferenceable(16) %56, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #20
  %i.att = add nuw nsw i32 %.0823, 1              ; 2 uses
  %i.atu = load ptr, ptr %2, align 8, !tbaa !19
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 152
  %i.atw = load ptr, ptr %i.atv, align 8
  %i.atx = call noundef i32 %i.atw(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.aty = icmp slt i32 %i.att, %i.atx
  br i1 %i.aty, label %bb.ab, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.c, %bb.ab, %bb.e, %bb.b, %.preheader, %bb.d, %bb.g, %bb.h, %bb.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit, %bb.aa
  ret void

bb.ac:                                            ; preds = %bb.y, %bb.r
  %i.atz = landingpad { ptr, i32 }
          catch ptr null
  %i.aua = extractvalue { ptr, i32 } %i.atz, 0
  call void @__clang_call_terminate(ptr %i.aua) #19
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #7 comdat align 2 {
.peel.next:
  %4 = alloca %class.btVector3, align 8           ; 29 uses
  %5 = alloca %class.btVector3, align 4           ; 29 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !8  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !8  ; 2 uses
  %i.e = load <2 x float>, ptr %2, align 4, !tbaa !8 ; 2 uses
  %i.f = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.g = fsub <2 x float> %i.e, %i.f
  %i.h = fmul <2 x float> %i.g, splat (float 5.000000e-01) ; 7 uses
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.j = fsub float %i.b, %i.d
  %i.k = fmul float %i.j, 5.000000e-01            ; 6 uses
  %i.l = insertelement <2 x float> %i.i, float %i.k, i64 1 ; 3 uses
  %i.m = fadd <2 x float> %i.e, %i.f
  %i.n = fmul <2 x float> %i.m, splat (float 5.000000e-01) ; 7 uses
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = fadd float %i.b, %i.d
  %i.q = fmul float %i.p, 5.000000e-01            ; 6 uses
  %i.r = insertelement <2 x float> %i.o, float %i.q, i64 1 ; 3 uses
  %i.s = extractelement <2 x float> %i.h, i64 0   ; 4 uses
  %i.t = extractelement <2 x float> %i.n, i64 0   ; 4 uses
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 12 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 12 uses
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 12 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 8 uses
  store float 0.000000e+00, ptr %.sroa.644.0..sroa_idx, align 4, !tbaa !88
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !88
  %i.u = fsub float %i.t, %i.s                    ; 5 uses
  store float %i.u, ptr %5, align 4, !tbaa !8
  %i.v = load ptr, ptr %0, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = fadd <2 x float> %i.n, %i.h              ; 2 uses
  store <2 x float> %i.y, ptr %4, align 8, !tbaa !8
  %i.z = fadd float %i.q, %i.k                    ; 5 uses
  store float %i.z, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !8
  %i.aa = extractelement <2 x float> %i.y, i64 1  ; 2 uses
  store float %i.aa, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !8
  store float %i.z, ptr %.sroa.536.0..sroa_idx, align 4, !tbaa !8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store float 0.000000e+00, ptr %.sroa.644.0..sroa_idx, align 4, !tbaa !88
  store float %i.u, ptr %4, align 8, !tbaa !8
  store float %i.aa, ptr %.sroa.442.0..sroa_idx, align 4, !tbaa !8
  store float %i.z, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !8
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !88
  store float %i.u, ptr %5, align 4, !tbaa !8
  %i.ab = fsub <2 x float> %i.r, %i.l             ; 2 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  store float %i.ac, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !8
  store float %i.z, ptr %.sroa.536.0..sroa_idx, align 4, !tbaa !8
  %i.ad = load ptr, ptr %0, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store float 0.000000e+00, ptr %.sroa.644.0..sroa_idx, align 4, !tbaa !88
  store float %i.u, ptr %4, align 8, !tbaa !8
  store float %i.ac, ptr %.sroa.442.0..sroa_idx, align 4, !tbaa !8
  store float %i.z, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !8
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !88
  store float %i.u, ptr %5, align 4, !tbaa !8
  store <2 x float> %i.ab, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !8
  %i.ag = load ptr, ptr %0, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store float 0.000000e+00, ptr %.sroa.644.0..sroa_idx, align 4, !tbaa !88
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !88
  %i.aj = fsub float %i.t, %i.s                   ; 5 uses
  store float %i.aj, ptr %5, align 4, !tbaa !8
  %i.ak = load ptr, ptr %0, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = fmul <2 x float> %i.h, <float 1.000000e+00, float -1.000000e+00>
  %i.ao = fadd <2 x float> %i.n, %i.an            ; 2 uses
  store <2 x float> %i.ao, ptr %4, align 8, !tbaa !8
  %i.ap = fsub float %i.q, %i.k                   ; 5 uses
  store float %i.ap, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !8
  %i.aq = extractelement <2 x float> %i.ao, i64 1 ; 2 uses
  store float %i.aq, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !8
  store float %i.ap, ptr %.sroa.536.0..sroa_idx, align 4, !tbaa !8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store float 0.000000e+00, ptr %.sroa.644.0..sroa_idx, align 4, !tbaa !88
  store float %i.aj, ptr %4, align 8, !tbaa !8
  store float %i.aq, ptr %.sroa.442.0..sroa_idx, align 4, !tbaa !8
  store float %i.ap, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !8
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !88
  store float %i.aj, ptr %5, align 4, !tbaa !8
  %i.ar = fadd <2 x float> %i.r, %i.l             ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  store float %i.as, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !8
  store float %i.ap, ptr %.sroa.536.0..sroa_idx, align 4, !tbaa !8
  %i.at = load ptr, ptr %0, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store float 0.000000e+00, ptr %.sroa.644.0..sroa_idx, align 4, !tbaa !88
  store float %i.aj, ptr %4, align 8, !tbaa !8
  store float %i.as, ptr %.sroa.442.0..sroa_idx, align 4, !tbaa !8
  store float %i.ap, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !8
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !88
  store float %i.aj, ptr %5, align 4, !tbaa !8
  store <2 x float> %i.ar, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !8
  %i.aw = load ptr, ptr %0, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store float 0.000000e+00, ptr %.sroa.644.0..sroa_idx, align 4, !tbaa !88
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !88
  %i.az = fadd float %i.t, %i.s                   ; 5 uses
  store float %i.az, ptr %5, align 4, !tbaa !8
  %i.ba = load ptr, ptr %0, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = fmul <2 x float> %i.h, <float -1.000000e+00, float 1.000000e+00>
  %i.be = fadd <2 x float> %i.n, %i.bd            ; 2 uses
  store <2 x float> %i.be, ptr %4, align 8, !tbaa !8
  %i.bf = fsub float %i.q, %i.k                   ; 5 uses
  store float %i.bf, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !8
  %i.bg = extractelement <2 x float> %i.be, i64 1 ; 2 uses
  store float %i.bg, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !8
  store float %i.bf, ptr %.sroa.536.0..sroa_idx, align 4, !tbaa !8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store float 0.000000e+00, ptr %.sroa.644.0..sroa_idx, align 4, !tbaa !88
  store float %i.az, ptr %4, align 8, !tbaa !8
  store float %i.bg, ptr %.sroa.442.0..sroa_idx, align 4, !tbaa !8
  store float %i.bf, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !8
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !88
  store float %i.az, ptr %5, align 4, !tbaa !8
  %i.bh = fmul <2 x float> %i.l, <float 1.000000e+00, float -1.000000e+00>
  %i.bi = fsub <2 x float> %i.r, %i.bh            ; 2 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0 ; 2 uses
  store float %i.bj, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !8
  store float %i.bf, ptr %.sroa.536.0..sroa_idx, align 4, !tbaa !8
  %i.bk = load ptr, ptr %0, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store float 0.000000e+00, ptr %.sroa.644.0..sroa_idx, align 4, !tbaa !88
  store float %i.az, ptr %4, align 8, !tbaa !8
  store float %i.bj, ptr %.sroa.442.0..sroa_idx, align 4, !tbaa !8
  store float %i.bf, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !8
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !88
end_hunk_1
begin_hunk_2_@_ZN23btDiscreteDynamicsWorld19integrateTransformsEf:bb.a
bb.q:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.i, %bb.t
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %bb.l, %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.v unwind label %bb.z

bb.t:                                             ; preds = %bb.m, %bb.k
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.x

bb.v:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.r ], [ %i.cc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.ca, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit47 unwind label %bb.z

bb.x:                                             ; preds = %bb.u, %bb.g
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.p

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %bb.x, %bb.e
  invoke void @_ZN11btRigidBody18proceedToTransformERK11btTransform(ptr noundef nonnull align 8 dereferenceable(564) %i.z, ptr noundef nonnull align 4 dereferenceable(64) %2)
          to label %_ZN14CProfileSampleD2Ev.exit._crit_edge unwind label %bb.o

_ZN14CProfileSampleD2Ev.exit._crit_edge:          ; preds = %_ZN14CProfileSampleD2Ev.exit
  %.pre = load i32, ptr %i.a, align 4, !tbaa !55
  br label %bb.y

bb.y:                                             ; preds = %_ZN14CProfileSampleD2Ev.exit._crit_edge, %bb.b, %bb.b, %bb.c
  %i.cd = phi i32 [ %.pre, %_ZN14CProfileSampleD2Ev.exit._crit_edge ], [ %i.w, %bb.b ], [ %i.w, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %bb.b, label %._crit_edge

_ZN14CProfileSampleD2Ev.exit47:                   ; preds = %bb.p, %bb.w, %bb.n, %bb.o
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.bx, %bb.n ], [ %i.by, %bb.o ], [ %i.bz, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit48 unwind label %bb.z

_ZN14CProfileSampleD2Ev.exit48:                   ; preds = %_ZN14CProfileSampleD2Ev.exit47
  resume { ptr, i32 } %.pn43.pn.pn

bb.z:                                             ; preds = %_ZN14CProfileSampleD2Ev.exit47, %bb.w, %bb.s
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #19
  unreachable
}

declare void @_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform(ptr noundef nonnull align 8 dereferenceable(564), float noundef, ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16), float noundef) local_unnamed_addr #2

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionWorld20ConvexResultCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN11btRigidBody18proceedToTransformERK11btTransform(ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld25predictUnconstraintMotionEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0, float noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.10)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  tail call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.n, %bb.g ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !216  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load i32, ptr %i.i, align 8, !tbaa !80
  %i.k = and i32 %i.j, 3
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11btRigidBody19integrateVelocitiesEf(ptr noundef nonnull align 8 dereferenceable(564) %i.h, float noundef %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11btRigidBody12applyDampingEf(ptr noundef nonnull align 8 dereferenceable(564) %i.h, float noundef %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  invoke void @_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform(ptr noundef nonnull align 8 dereferenceable(564) %i.h, float noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.l)
          to label %._crit_edge15 unwind label %bb.f

._crit_edge15:                                    ; preds = %bb.e
  %.pre = load i32, ptr %i.a, align 4, !tbaa !55
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.h

bb.g:                                             ; preds = %._crit_edge15, %bb.b
  %i.n = phi i32 [ %.pre, %._crit_edge15 ], [ %i.e, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %bb.f
  resume { ptr, i32 } %i.m

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #19
  unreachable
}

declare void @_ZN11btRigidBody19integrateVelocitiesEf(ptr noundef nonnull align 8 dereferenceable(564), float noundef) local_unnamed_addr #2

declare void @_ZN11btRigidBody12applyDampingEf(ptr noundef nonnull align 8 dereferenceable(564), float noundef) local_unnamed_addr #2

declare void @_ZN15CProfileManager5ResetEv() local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btVector3, align 8          ; 5 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  %14 = alloca %class.btVector3, align 8          ; 5 uses
  %15 = alloca %class.btVector3, align 8          ; 5 uses
  %16 = alloca %class.btVector3, align 8          ; 5 uses
  %17 = alloca %class.btVector3, align 8          ; 5 uses
  %18 = alloca %class.btVector3, align 8          ; 5 uses
  %19 = alloca %class.btVector3, align 8          ; 5 uses
  %20 = alloca %class.btVector3, align 8          ; 5 uses
  %21 = alloca %class.btVector3, align 8          ; 5 uses
  %22 = alloca %class.btVector3, align 8          ; 5 uses
  %23 = alloca %class.btVector3, align 8          ; 5 uses
  %24 = alloca %class.btVector3, align 8          ; 5 uses
  %25 = alloca %class.btVector3, align 8          ; 5 uses
  %26 = alloca %class.btVector3, align 8          ; 5 uses
  %27 = alloca %class.btVector3, align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.51.0.copyload = load float, ptr %.sroa.51.0..sroa_idx, align 4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load float, ptr %i.g, align 4, !tbaa !8  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  %28 = load <4 x float>, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load float, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load <2 x float>, ptr %i.a, align 4      ; 6 uses
  %i.p = load <2 x float>, ptr %2, align 4, !tbaa !8 ; 2 uses
  %i.q = load <2 x float>, ptr %i.d, align 4, !tbaa !8 ; 2 uses
  %i.r = shufflevector <2 x float> %i.p, <2 x float> %i.q, <2 x i32> <i32 1, i32 3>
  %i.s = fmul <2 x float> %i.r, zeroinitializer   ; 2 uses
  %i.t = shufflevector <2 x float> %i.p, <2 x float> %i.q, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.u = insertelement <2 x float> poison, float %1, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.v, <2 x float> %i.s)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load <2 x float>, ptr %i.b, align 4, !tbaa !8 ; 2 uses
  %29 = load <4 x float>, ptr %i.c, align 4
  %30 = shufflevector <4 x float> %29, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.z = load <2 x float>, ptr %i.e, align 4, !tbaa !8 ; 2 uses
  %i.aa = load float, ptr %i.f, align 4, !tbaa !8
  %i.ab = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.w) ; 2 uses
  %i.ad = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ae = fmul <2 x float> %i.v, %i.ad
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> zeroinitializer, <2 x float> %i.ae)
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.af) ; 2 uses
  %i.ah = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ai = fsub <2 x float> %i.o, %i.ac            ; 4 uses
  store <2 x float> %i.ai, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.aj = fadd <2 x float> %i.o, %i.ag            ; 4 uses
  store <2 x float> %i.aj, ptr %5, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = fadd <2 x float> %i.o, %i.ac            ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ap = fsub <2 x float> %i.o, %i.ag            ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> zeroinitializer, <2 x float> %i.s)
  %i.av = insertelement <2 x float> %30, float %i.aa, i64 1
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.v, <2 x float> %i.au) ; 2 uses
  %i.ax = fadd <2 x float> %i.o, %i.aw            ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bc = fsub <2 x float> %i.o, %i.aw            ; 4 uses
  %i.bd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %1, i64 0
  %i.be = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.bd, %i.be           ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 1
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.h, float %1, float %i.bg)
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.bh) ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.h, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> zeroinitializer, <2 x float> %i.bf)
  %i.bm = insertelement <2 x float> poison, float %i.k, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = insertelement <2 x float> <float 0.000000e+00, float poison>, float %1, i64 1
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bo, <2 x float> %i.bl) ; 3 uses
  %i.bq = fsub float %.sroa.51.0.copyload, %i.bi
  %.sroa.3.12.vec.insert.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bq, i64 0 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i29, ptr %i.x, align 8
  %i.br = extractelement <2 x float> %i.bp, i64 0
  %i.bs = fadd float %.sroa.51.0.copyload, %i.br
  %.sroa.3.12.vec.insert.i34 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bs, i64 0 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i34, ptr %i.ak, align 8
  %i.bt = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bw = load ptr, ptr %0, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <2 x float> %i.aj, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i34, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ca = fadd float %.sroa.51.0.copyload, %i.bi
  %.sroa.3.12.vec.insert.i44 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ca, i64 0 ; 4 uses
  store <2 x float> %i.am, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i44, ptr %i.an, align 8
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ce = load ptr, ptr %0, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store <2 x float> %i.am, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i44, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ci = insertelement <2 x float> poison, float %.sroa.51.0.copyload, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fsub <2 x float> %i.cj, %i.bp           ; 2 uses
  %i.cl = insertelement <2 x float> %i.ck, float 0.000000e+00, i64 1 ; 4 uses
  store <2 x float> %i.ap, ptr %9, align 8
  store <2 x float> %i.cl, ptr %i.aq, align 8
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.cp = load ptr, ptr %0, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef ptr %i.cr(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store <2 x float> %i.ap, ptr %10, align 8
  store <2 x float> %i.cl, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store <2 x float> %i.ai, ptr %11, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i29, ptr %i.as, align 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.cw = load ptr, ptr %0, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef ptr %i.cy(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store <2 x float> %i.ai, ptr %12, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i29, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.da = extractelement <2 x float> %i.bp, i64 1
  %i.db = fadd float %.sroa.51.0.copyload, %i.da
  %.sroa.3.12.vec.insert.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.db, i64 0 ; 4 uses
  store <2 x float> %i.ax, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i74, ptr %i.ay, align 8
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.df = load ptr, ptr %0, align 8, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call noundef ptr %i.dh(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store <2 x float> %i.ax, ptr %14, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i74, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  store <2 x float> %i.am, ptr %15, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i44, ptr %i.ba, align 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.dm = load ptr, ptr %0, align 8, !tbaa !19
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef ptr %i.do(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store <2 x float> %i.am, ptr %16, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i44, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.dq = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ck, <2 x i32> <i32 3, i32 1> ; 4 uses
  store <2 x float> %i.bc, ptr %17, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x float> %i.dq, ptr %i.dr, align 8
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.dv = load ptr, ptr %0, align 8, !tbaa !19
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef ptr %i.dx(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  store <2 x float> %i.bc, ptr %18, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %18, i64 8
  store <2 x float> %i.dq, ptr %i.dz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  store <2 x float> %i.ai, ptr %19, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i29, ptr %i.ea, align 8
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !19
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.ee = load ptr, ptr %0, align 8, !tbaa !19
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call noundef ptr %i.eg(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  store <2 x float> %i.ap, ptr %20, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %20, i64 8
  store <2 x float> %i.cl, ptr %i.ei, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  store <2 x float> %i.ax, ptr %21, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %21, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i74, ptr %i.ej, align 8
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.en = load ptr, ptr %0, align 8, !tbaa !19
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef ptr %i.ep(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  store <2 x float> %i.ax, ptr %22, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %22, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i74, ptr %i.er, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  store <2 x float> %i.aj, ptr %23, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %23, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i34, ptr %i.es, align 8
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %i.ew = load ptr, ptr %0, align 8, !tbaa !19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef ptr %i.ey(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  store <2 x float> %i.aj, ptr %24, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %24, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i34, ptr %i.fa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  store <2 x float> %i.bc, ptr %25, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %25, i64 8
  store <2 x float> %i.dq, ptr %i.fb, align 8
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !19
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.ff = load ptr, ptr %0, align 8, !tbaa !19
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call noundef ptr %i.fh(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  store <2 x float> %i.bc, ptr %26, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %26, i64 8
  store <2 x float> %i.dq, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  store <2 x float> %i.ap, ptr %27, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %27, i64 8
  store <2 x float> %i.cl, ptr %i.fk, align 8
  %i.fl = load ptr, ptr %i.fi, align 8, !tbaa !19
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %27, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN17DebugDrawcallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btIDebugDraw13drawTransformERK11btTransformf(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, float noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 10 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 16          ; 4 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 16          ; 4 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load <4 x float>, ptr %i.b, align 4
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !8
  %i.l = fmul float %i.k, 0.000000e+00
  %i.m = tail call float @llvm.fmuladd.f32(float %i.i, float %2, float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !8
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.o, float 0.000000e+00, float %i.m)
  %i.q = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.r = load <2 x float>, ptr %i.e, align 4, !tbaa !8 ; 2 uses
  %i.s = shufflevector <2 x float> %i.q, <2 x float> %i.r, <2 x i32> <i32 1, i32 3>
  %i.t = fmul <2 x float> %i.s, zeroinitializer
  %i.u = shufflevector <2 x float> %i.q, <2 x float> %i.r, <2 x i32> <i32 0, i32 2>
  %i.v = insertelement <2 x float> poison, float %2, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.w, <2 x float> %i.t)
  %i.y = insertelement <2 x float> %i.d, float %i.g, i64 1
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> zeroinitializer, <2 x float> %i.x)
  %i.aa = load <2 x float>, ptr %3, align 8, !tbaa !8
  %i.ab = fadd <2 x float> %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !8
  %i.ae = fadd float %i.p, %i.ad
  %.sroa.3.12.vec.insert.i7 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ae, i64 0
  store <2 x float> %i.ab, ptr %4, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i7, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store <4 x float> <float f0x3F333333, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %5, align 16, !tbaa !8
  %i.ag = load ptr, ptr %0, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %10 = load <4 x float>, ptr %i.b, align 4
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.aj = load float, ptr %i.f, align 4, !tbaa !8
  %i.ak = load float, ptr %i.h, align 4, !tbaa !8
  %i.al = load float, ptr %i.j, align 4, !tbaa !8
  %i.am = fmul float %2, %i.al
  %i.an = call float @llvm.fmuladd.f32(float %i.ak, float 0.000000e+00, float %i.am)
  %i.ao = load float, ptr %i.n, align 4, !tbaa !8
  %i.ap = call noundef float @llvm.fmuladd.f32(float %i.ao, float 0.000000e+00, float %i.an)
  %i.aq = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.e, align 4, !tbaa !8 ; 2 uses
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.at = fmul <2 x float> %i.w, %i.as
  %i.au = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.av = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> zeroinitializer, <2 x float> %i.at)
  %i.aw = insertelement <2 x float> %11, float %i.aj, i64 1
  %i.ax = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> zeroinitializer, <2 x float> %i.av)
  %i.ay = load <2 x float>, ptr %3, align 8, !tbaa !8
  %i.az = fadd <2 x float> %i.ax, %i.ay
  %i.ba = load float, ptr %i.ac, align 8, !tbaa !8
  %i.bb = fadd float %i.ap, %i.ba
  %.sroa.3.12.vec.insert.i17 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bb, i64 0
  store <2 x float> %i.az, ptr %6, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i17, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store <4 x float> <float 0.000000e+00, float f0x3F333333, float 0.000000e+00, float 0.000000e+00>, ptr %7, align 16, !tbaa !8
  %i.bd = load ptr, ptr %0, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %12 = load <4 x float>, ptr %i.b, align 4
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bg = load float, ptr %i.f, align 4, !tbaa !8
  %i.bh = load float, ptr %i.h, align 4, !tbaa !8
  %i.bi = load float, ptr %i.j, align 4, !tbaa !8
  %i.bj = fmul float %i.bi, 0.000000e+00
  %i.bk = call float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.bj)
  %i.bl = load float, ptr %i.n, align 4, !tbaa !8
  %i.bm = call noundef float @llvm.fmuladd.f32(float %i.bl, float %2, float %i.bk)
  %i.bn = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.e, align 4, !tbaa !8 ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.bq = fmul <2 x float> %i.bp, zeroinitializer
  %i.br = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> zeroinitializer, <2 x float> %i.bq)
  %i.bt = insertelement <2 x float> %13, float %i.bg, i64 1
  %i.bu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.w, <2 x float> %i.bs)
  %i.bv = load <2 x float>, ptr %3, align 8, !tbaa !8
  %i.bw = fadd <2 x float> %i.bu, %i.bv
  %i.bx = load float, ptr %i.ac, align 8, !tbaa !8
  %i.by = fadd float %i.bm, %i.bx
  %.sroa.3.12.vec.insert.i27 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.by, i64 0
  store <2 x float> %i.bw, ptr %8, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i27, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float f0x3F333333, float 0.000000e+00>, ptr %9, align 16, !tbaa !8
  %i.ca = load ptr, ptr %0, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, ptr noundef nonnull align 4 dereferenceable(16) %8, i1 noundef zeroext %9, float noundef %10) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %11 = alloca %class.btVector3, align 8          ; 8 uses
  %12 = alloca %class.btVector3, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load float, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.e = load float, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.f = fneg float %i.d
  %i.g = fmul float %10, f0x3C8EFA35
  %i.h = fsub float %7, %6                        ; 2 uses
  %i.i = fdiv float %i.h, %i.g
  %i.j = fptosi float %i.i to i32
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.j, i32 1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.k = tail call noundef float @cosf(float noundef %6) #20, !tbaa !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !8
  %i.n = load <2 x float>, ptr %i.a, align 4, !tbaa !8 ; 3 uses
  %i.o = load <2 x float>, ptr %i.c, align 4, !tbaa !8 ; 4 uses
  %i.p = fneg <2 x float> %i.o
  %i.q = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.r = insertelement <2 x float> %i.q, float %i.e, i64 1
  %i.s = fmul <2 x float> %i.r, %i.p
  %i.t = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.u = insertelement <2 x float> %i.t, float %i.d, i64 1
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.u, <2 x float> %i.s)
  %i.w = extractelement <2 x float> %i.n, i64 0
  %i.x = fmul float %i.w, %i.f
  %i.y = extractelement <2 x float> %i.o, i64 0
  %i.z = tail call float @llvm.fmuladd.f32(float %i.e, float %i.y, float %i.x)
  %i.aa = extractelement <2 x float> %i.o, i64 1
  %i.ab = fmul float %4, %i.aa
  %i.ac = fmul float %i.ab, %i.k
  %i.ad = fadd float %i.ac, %i.m
  %i.ae = insertelement <2 x float> poison, float %5, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %i.af, %i.v            ; 2 uses
  %i.ah = fmul float %5, %i.z                     ; 2 uses
  %i.ai = tail call noundef float @sinf(float noundef %6) #20, !tbaa !4 ; 2 uses
  %i.aj = fmul float %i.ah, %i.ai
  %i.ak = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.al = insertelement <2 x float> poison, float %4, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = insertelement <2 x float> %i.t, float %i.d, i64 0
  %i.ao = fmul <2 x float> %i.am, %i.an
  %i.ap = insertelement <2 x float> poison, float %i.k, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.ao, %i.aq
  %i.as = fadd <2 x float> %i.ak, %i.ar
  %i.at = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.ag, %i.au
  %i.aw = fadd <2 x float> %i.as, %i.av
  %i.ax = fadd float %i.ad, %i.aj
  %.sroa.3.12.vec.insert.i53 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ax, i64 0
  store <2 x float> %i.aw, ptr %11, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i53, ptr %i.ay, align 8
  br i1 %9, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = load ptr, ptr %0, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not118 = icmp slt i32 %spec.store.select, 1
  br i1 %.not118, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.bc = uitofp nneg i32 %spec.store.select to float
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  br i1 %9, label %bb.e, label %bb.f

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.0119 = phi i32 [ 1, %.lr.ph ], [ %i.cf, %bb.d ] ; 3 uses
  %i.be = uitofp nneg i32 %.0119 to float
  %i.bf = fmul float %i.h, %i.be
  %i.bg = fdiv float %i.bf, %i.bc
  %i.bh = fadd float %6, %i.bg                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bi = load float, ptr %i.b, align 4, !tbaa !8
  %i.bj = fmul float %4, %i.bi
  %i.bk = call noundef float @cosf(float noundef %i.bh) #20, !tbaa !4 ; 2 uses
  %i.bl = fmul float %i.bk, %i.bj
  %i.bm = load float, ptr %i.l, align 4, !tbaa !8
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = call noundef float @sinf(float noundef %i.bh) #20, !tbaa !4 ; 2 uses
  %i.bp = fmul float %i.ah, %i.bo
  %i.bq = load <2 x float>, ptr %3, align 4, !tbaa !8
  %i.br = fmul <2 x float> %i.am, %i.bq
  %i.bs = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.br, %i.bt
  %i.bv = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.bw = fadd <2 x float> %i.bv, %i.bu
  %i.bx = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.ag, %i.by
  %i.ca = fadd <2 x float> %i.bw, %i.bz
  %i.cb = fadd float %i.bn, %i.bp
  %.sroa.3.12.vec.insert.i83 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  store <2 x float> %i.ca, ptr %12, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i83, ptr %i.bd, align 8
  %i.cc = load ptr, ptr %0, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.cf = add nuw i32 %.0119, 1
  %exitcond.not = icmp eq i32 %.0119, %spec.store.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.e:                                             ; preds = %._crit_edge
  %i.cg = load ptr, ptr %0, align 8, !tbaa !19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  ret void
}

declare { <2 x float>, <2 x float> } @_ZNK21btConeTwistConstraint16GetPointForAngleEff(ptr noundef nonnull align 8 dereferenceable(640), float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %10) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %11 = alloca [74 x %class.btVector3], align 16  ; 3 uses
  %12 = alloca [74 x %class.btVector3], align 16  ; 3 uses
  %13 = alloca %class.btVector3, align 8          ; 7 uses
  %14 = alloca %class.btVector3, align 8          ; 7 uses
  %15 = alloca %class.btVector3, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.a = load float, ptr %2, align 4, !tbaa !8    ; 3 uses
  %i.b = fmul float %4, %i.a                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load float, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.f = fadd float %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !8  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !8  ; 2 uses
  %.sroa.0.0.vec.insert.i133 = insertelement <2 x float> poison, float %i.f, i64 0
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.l = fsub float %i.e, %i.b
  %.sroa.0.0.vec.insert.i143 = insertelement <2 x float> poison, float %i.l, i64 0
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.n = fmul float %10, f0x3C8EFA35              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = load float, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.r = load <2 x float>, ptr %i.c, align 4, !tbaa !8 ; 4 uses
  %i.s = extractelement <2 x float> %i.r, i64 0   ; 2 uses
  %i.t = fmul float %4, %i.s                      ; 2 uses
  %i.u = extractelement <2 x float> %i.r, i64 1
  %i.v = fmul float %4, %i.u                      ; 2 uses
  %i.w = fadd float %i.t, %i.h
  %i.x = fadd float %i.v, %i.j
  %.sroa.0.4.vec.insert.i134 = insertelement <2 x float> %.sroa.0.0.vec.insert.i133, float %i.w, i64 1
  %.sroa.3.12.vec.insert.i135 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.x, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i134, ptr %13, align 8
end_hunk_2
begin_hunk_3_@_ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f:bb.a
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %.0115200, i64 %indvars.iv ; 6 uses
  store <2 x float> %i.gf, ptr %i.gh, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i175, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !88
  br i1 %.not129, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.peel.next
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %.0116199, i64 %indvars.iv
  br label %.sink.split210

bb.q:                                             ; preds = %.peel.next
  br i1 %.1112, label %.sink.split210, label %bb.r

.sink.split210:                                   ; preds = %bb.q, %bb.p
  %.sink211 = phi ptr [ %i.gi, %bb.p ], [ %14, %bb.q ]
  %i.gj = load ptr, ptr %0, align 8, !tbaa !19
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %.sink211, ptr noundef nonnull align 4 dereferenceable(16) %i.gh, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br label %bb.r

bb.r:                                             ; preds = %.sink.split210, %bb.q
  %i.gm = getelementptr i8, ptr %i.gh, i64 -16
  %i.gn = load ptr, ptr %0, align 8, !tbaa !19
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.gm, ptr noundef nonnull align 4 dereferenceable(16) %i.gh, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gq = load ptr, ptr %0, align 8, !tbaa !19
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %i.gh, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bq
  br i1 %exitcond.not, label %.peel.next.peel, label %.peel.next, !llvm.loop !285
}

declare noundef float @_ZNK23btGeneric6DofConstraint8getAngleEi(ptr noundef nonnull align 8 dereferenceable(1266), i32 noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btVector3, align 8          ; 5 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  %14 = alloca %class.btVector3, align 8          ; 5 uses
  %15 = alloca %class.btVector3, align 8          ; 5 uses
  %16 = alloca %class.btVector3, align 8          ; 5 uses
  %17 = alloca %class.btVector3, align 8          ; 5 uses
  %18 = alloca %class.btVector3, align 8          ; 5 uses
  %19 = alloca %class.btVector3, align 8          ; 5 uses
  %20 = alloca %class.btVector3, align 8          ; 5 uses
  %21 = alloca %class.btVector3, align 8          ; 5 uses
  %22 = alloca %class.btVector3, align 8          ; 5 uses
  %23 = alloca %class.btVector3, align 8          ; 5 uses
  %24 = alloca %class.btVector3, align 8          ; 5 uses
  %25 = alloca %class.btVector3, align 8          ; 5 uses
  %26 = alloca %class.btVector3, align 8          ; 5 uses
  %27 = alloca %class.btVector3, align 8          ; 5 uses
  %28 = alloca %class.btVector3, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = load float, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.d = load float, ptr %i.a, align 4, !tbaa !8  ; 2 uses
  %i.e = load float, ptr %i.b, align 4, !tbaa !8  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.h = load <4 x float>, ptr %i.g, align 4
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !8
  %i.o = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 2 uses
  %i.p = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.q = insertelement <2 x float> poison, float %i.d, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 1, i32 3>
  %i.t = fmul <2 x float> %i.r, %i.s              ; 2 uses
  %i.u = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.v = insertelement <2 x float> poison, float %i.c, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.w, <2 x float> %i.t)
  %i.y = insertelement <2 x float> %i.i, float %i.n, i64 1 ; 2 uses
  %i.z = insertelement <2 x float> poison, float %i.e, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.aa, <2 x float> %i.x)
  %i.ac = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.ad = fadd <2 x float> %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 12 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 12 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !8
  %i.ai = fmul float %i.d, %i.ah                  ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.c, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 12 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.e, float %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 12 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.ap = fadd float %i.ao, %i.am
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  store <2 x float> %i.ad, ptr %5, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ar = load float, ptr %2, align 4, !tbaa !8   ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.at, <2 x float> %i.t)
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.aa, <2 x float> %i.au)
  %i.aw = fadd <2 x float> %i.ac, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ar, float %i.ai)
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.e, float %i.ax)
  %i.az = fadd float %i.ao, %i.ay
  %.sroa.3.12.vec.insert.i.i111 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.az, i64 0
  store <2 x float> %i.aw, ptr %6, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i111, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %0, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.be = load float, ptr %2, align 4, !tbaa !8   ; 3 uses
  %i.bf = load float, ptr %i.a, align 4, !tbaa !8 ; 2 uses
  %i.bg = load float, ptr %i.b, align 4, !tbaa !8 ; 3 uses
  %i.bh = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 2 uses
  %i.bi = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 1, i32 3>
  %i.bm = fmul <2 x float> %i.bk, %i.bl
  %i.bn = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bo = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bp, <2 x float> %i.bm)
  %i.br = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.bu = load float, ptr %i.ae, align 4, !tbaa !8 ; 2 uses
  %i.bv = load float, ptr %i.ag, align 4, !tbaa !8 ; 2 uses
  %i.bw = fmul float %i.bf, %i.bv
  %i.bx = call float @llvm.fmuladd.f32(float %i.bu, float %i.be, float %i.bw)
  %i.by = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %i.bz = call noundef float @llvm.fmuladd.f32(float %i.by, float %i.bg, float %i.bx)
  %i.ca = load float, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.cb = fadd float %i.ca, %i.bz
  %.sroa.3.12.vec.insert.i.i116 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i116, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !8 ; 2 uses
  %i.cf = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.cg = load <2 x float>, ptr %i.l, align 4, !tbaa !8 ; 2 uses
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> %i.cg, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ci = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.bs, <2 x float> %i.bq)
  %i.cj = fadd <2 x float> %i.bt, %i.ci
  store <2 x float> %i.cj, ptr %7, align 8
  %i.ck = shufflevector <2 x float> %i.cf, <2 x float> %i.cg, <2 x i32> <i32 0, i32 2>
  %i.cl = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %i.ck, %i.cm
  %i.co = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bp, <2 x float> %i.cn)
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.bs, <2 x float> %i.co)
  %i.cq = fadd <2 x float> %i.bt, %i.cp
  %i.cr = fmul float %i.bv, %i.ce
  %i.cs = call float @llvm.fmuladd.f32(float %i.bu, float %i.be, float %i.cr)
  %i.ct = call noundef float @llvm.fmuladd.f32(float %i.by, float %i.bg, float %i.cs)
  %i.cu = fadd float %i.ca, %i.ct
  %.sroa.3.12.vec.insert.i.i121 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cu, i64 0
  store <2 x float> %i.cq, ptr %8, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i121, ptr %i.cv, align 8
  %i.cw = load ptr, ptr %0, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.cz = load float, ptr %2, align 4, !tbaa !8   ; 2 uses
  %i.da = load float, ptr %i.cd, align 4, !tbaa !8 ; 2 uses
  %i.db = load float, ptr %i.b, align 4, !tbaa !8 ; 3 uses
  %29 = load <4 x float>, ptr %i.g, align 4
  %30 = shufflevector <4 x float> %29, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dc = load float, ptr %i.m, align 4, !tbaa !8
  %i.dd = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 2 uses
  %i.de = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.df = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = shufflevector <2 x float> %i.dd, <2 x float> %i.de, <2 x i32> <i32 1, i32 3>
  %i.di = fmul <2 x float> %i.dg, %i.dh           ; 2 uses
  %i.dj = shufflevector <2 x float> %i.dd, <2 x float> %i.de, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dk = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dl, <2 x float> %i.di)
  %i.dn = insertelement <2 x float> %30, float %i.dc, i64 1 ; 2 uses
  %i.do = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dp, <2 x float> %i.dm)
  %i.dr = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.ds = fadd <2 x float> %i.dr, %i.dq
  %i.dt = load float, ptr %i.ae, align 4, !tbaa !8 ; 2 uses
  %i.du = load float, ptr %i.ag, align 4, !tbaa !8
  %i.dv = fmul float %i.da, %i.du                 ; 2 uses
  %i.dw = call float @llvm.fmuladd.f32(float %i.dt, float %i.cz, float %i.dv)
  %i.dx = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %i.dy = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.db, float %i.dw)
  %i.dz = load float, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.ea = fadd float %i.dz, %i.dy
  %.sroa.3.12.vec.insert.i.i126 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ea, i64 0
  store <2 x float> %i.ds, ptr %9, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i126, ptr %i.eb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ec = load float, ptr %1, align 4, !tbaa !8   ; 2 uses
  %i.ed = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.ee, <2 x float> %i.di)
  %i.eg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dp, <2 x float> %i.ef)
  %i.eh = fadd <2 x float> %i.dr, %i.eg
  %i.ei = call float @llvm.fmuladd.f32(float %i.dt, float %i.ec, float %i.dv)
  %i.ej = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.db, float %i.ei)
  %i.ek = fadd float %i.dz, %i.ej
  %.sroa.3.12.vec.insert.i.i131 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ek, i64 0
  store <2 x float> %i.eh, ptr %10, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i131, ptr %i.el, align 8
  %i.em = load ptr, ptr %0, align 8, !tbaa !19
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.ep = load float, ptr %1, align 4, !tbaa !8   ; 3 uses
  %i.eq = load float, ptr %i.cd, align 4, !tbaa !8 ; 2 uses
  %i.er = load float, ptr %i.b, align 4, !tbaa !8 ; 3 uses
  %i.es = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 2 uses
  %i.et = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.eu = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = shufflevector <2 x float> %i.es, <2 x float> %i.et, <2 x i32> <i32 1, i32 3>
  %i.ex = fmul <2 x float> %i.ev, %i.ew
  %i.ey = shufflevector <2 x float> %i.es, <2 x float> %i.et, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.fa, <2 x float> %i.ex)
  %i.fc = insertelement <2 x float> poison, float %i.er, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.ff = load float, ptr %i.ae, align 4, !tbaa !8 ; 2 uses
  %i.fg = load float, ptr %i.ag, align 4, !tbaa !8 ; 2 uses
  %i.fh = fmul float %i.eq, %i.fg
  %i.fi = call float @llvm.fmuladd.f32(float %i.ff, float %i.ep, float %i.fh)
  %i.fj = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %i.fk = call noundef float @llvm.fmuladd.f32(float %i.fj, float %i.er, float %i.fi)
  %i.fl = load float, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.fm = fadd float %i.fl, %i.fk
  %.sroa.3.12.vec.insert.i.i136 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fm, i64 0
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i136, ptr %i.fn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.fo = load float, ptr %i.a, align 4, !tbaa !8 ; 2 uses
  %i.fp = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.fq = load <2 x float>, ptr %i.l, align 4, !tbaa !8 ; 2 uses
  %i.fr = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.fd, <2 x float> %i.fb)
  %i.ft = fadd <2 x float> %i.fe, %i.fs
  store <2 x float> %i.ft, ptr %11, align 8
  %i.fu = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.fv = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.fu, %i.fw
  %i.fy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.fa, <2 x float> %i.fx)
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.fd, <2 x float> %i.fy)
  %i.ga = fadd <2 x float> %i.fe, %i.fz
  %i.gb = fmul float %i.fg, %i.fo
  %i.gc = call float @llvm.fmuladd.f32(float %i.ff, float %i.ep, float %i.gb)
  %i.gd = call noundef float @llvm.fmuladd.f32(float %i.fj, float %i.er, float %i.gc)
  %i.ge = fadd float %i.fl, %i.gd
  %.sroa.3.12.vec.insert.i.i141 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ge, i64 0
  store <2 x float> %i.ga, ptr %12, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i141, ptr %i.gf, align 8
  %i.gg = load ptr, ptr %0, align 8, !tbaa !19
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.gj = load float, ptr %1, align 4, !tbaa !8   ; 2 uses
  %i.gk = load float, ptr %i.a, align 4, !tbaa !8 ; 2 uses
  %i.gl = load float, ptr %i.b, align 4, !tbaa !8 ; 2 uses
  %31 = load <4 x float>, ptr %i.g, align 4
  %32 = shufflevector <4 x float> %31, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.gm = load float, ptr %i.m, align 4, !tbaa !8
  %i.gn = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 2 uses
  %i.go = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.gp = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = shufflevector <2 x float> %i.gn, <2 x float> %i.go, <2 x i32> <i32 1, i32 3>
  %i.gs = fmul <2 x float> %i.gq, %i.gr
  %i.gt = shufflevector <2 x float> %i.gn, <2 x float> %i.go, <2 x i32> <i32 0, i32 2>
  %i.gu = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gv, <2 x float> %i.gs) ; 2 uses
  %i.gx = insertelement <2 x float> %32, float %i.gm, i64 1 ; 2 uses
  %i.gy = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.gz, <2 x float> %i.gw)
  %i.hb = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.hc = fadd <2 x float> %i.hb, %i.ha
  %i.hd = load float, ptr %i.ae, align 4, !tbaa !8
  %i.he = load float, ptr %i.ag, align 4, !tbaa !8
  %i.hf = fmul float %i.gk, %i.he
  %i.hg = call float @llvm.fmuladd.f32(float %i.hd, float %i.gj, float %i.hf) ; 2 uses
  %i.hh = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %i.hi = call noundef float @llvm.fmuladd.f32(float %i.hh, float %i.gl, float %i.hg)
  %i.hj = load float, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.hk = fadd float %i.hj, %i.hi
  %.sroa.3.12.vec.insert.i.i146 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hk, i64 0
  store <2 x float> %i.hc, ptr %13, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i146, ptr %i.hl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !8 ; 2 uses
  %i.ho = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.hp, <2 x float> %i.gw)
  %i.hr = fadd <2 x float> %i.hb, %i.hq
  %i.hs = call noundef float @llvm.fmuladd.f32(float %i.hh, float %i.hn, float %i.hg)
  %i.ht = fadd float %i.hj, %i.hs
  %.sroa.3.12.vec.insert.i.i151 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ht, i64 0
  store <2 x float> %i.hr, ptr %14, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i151, ptr %i.hu, align 8
  %i.hv = load ptr, ptr %0, align 8, !tbaa !19
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.hy = load float, ptr %2, align 4, !tbaa !8   ; 2 uses
  %i.hz = load float, ptr %i.a, align 4, !tbaa !8 ; 2 uses
  %i.ia = load float, ptr %i.b, align 4, !tbaa !8 ; 2 uses
  %33 = load <4 x float>, ptr %i.g, align 4
  %34 = shufflevector <4 x float> %33, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ib = load float, ptr %i.m, align 4, !tbaa !8
  %i.ic = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 2 uses
  %i.id = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.ie = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = shufflevector <2 x float> %i.ic, <2 x float> %i.id, <2 x i32> <i32 1, i32 3>
  %i.ih = fmul <2 x float> %i.if, %i.ig
  %i.ii = shufflevector <2 x float> %i.ic, <2 x float> %i.id, <2 x i32> <i32 0, i32 2>
  %i.ij = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.ik, <2 x float> %i.ih) ; 2 uses
  %i.im = insertelement <2 x float> %34, float %i.ib, i64 1 ; 2 uses
  %i.in = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.io, <2 x float> %i.il)
  %i.iq = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.ir = fadd <2 x float> %i.iq, %i.ip
  %i.is = load float, ptr %i.ae, align 4, !tbaa !8
  %i.it = load float, ptr %i.ag, align 4, !tbaa !8
  %i.iu = fmul float %i.hz, %i.it
  %i.iv = call float @llvm.fmuladd.f32(float %i.is, float %i.hy, float %i.iu) ; 2 uses
  %i.iw = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %i.ix = call noundef float @llvm.fmuladd.f32(float %i.iw, float %i.ia, float %i.iv)
  %i.iy = load float, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.iz = fadd float %i.iy, %i.ix
  %.sroa.3.12.vec.insert.i.i156 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.iz, i64 0
  store <2 x float> %i.ir, ptr %15, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %15, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i156, ptr %i.ja, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.jb = load float, ptr %i.hm, align 4, !tbaa !8 ; 2 uses
  %i.jc = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.jd, <2 x float> %i.il)
  %i.jf = fadd <2 x float> %i.iq, %i.je
  %i.jg = call noundef float @llvm.fmuladd.f32(float %i.iw, float %i.jb, float %i.iv)
  %i.jh = fadd float %i.iy, %i.jg
  %.sroa.3.12.vec.insert.i.i161 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jh, i64 0
  store <2 x float> %i.jf, ptr %16, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %16, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i161, ptr %i.ji, align 8
  %i.jj = load ptr, ptr %0, align 8, !tbaa !19
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.jm = load float, ptr %2, align 4, !tbaa !8   ; 2 uses
  %i.jn = load float, ptr %i.cd, align 4, !tbaa !8 ; 2 uses
  %i.jo = load float, ptr %i.b, align 4, !tbaa !8 ; 2 uses
  %35 = load <4 x float>, ptr %i.g, align 4
  %36 = shufflevector <4 x float> %35, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.jp = load float, ptr %i.m, align 4, !tbaa !8
  %i.jq = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 2 uses
  %i.jr = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.js = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = shufflevector <2 x float> %i.jq, <2 x float> %i.jr, <2 x i32> <i32 1, i32 3>
  %i.jv = fmul <2 x float> %i.jt, %i.ju
  %i.jw = shufflevector <2 x float> %i.jq, <2 x float> %i.jr, <2 x i32> <i32 0, i32 2>
  %i.jx = insertelement <2 x float> poison, float %i.jm, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> %i.jy, <2 x float> %i.jv) ; 2 uses
  %i.ka = insertelement <2 x float> %36, float %i.jp, i64 1 ; 2 uses
  %i.kb = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> %i.kc, <2 x float> %i.jz)
  %i.ke = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.kf = fadd <2 x float> %i.ke, %i.kd
  %i.kg = load float, ptr %i.ae, align 4, !tbaa !8
  %i.kh = load float, ptr %i.ag, align 4, !tbaa !8
  %i.ki = fmul float %i.jn, %i.kh
  %i.kj = call float @llvm.fmuladd.f32(float %i.kg, float %i.jm, float %i.ki) ; 2 uses
  %i.kk = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %i.kl = call noundef float @llvm.fmuladd.f32(float %i.kk, float %i.jo, float %i.kj)
  %i.km = load float, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.kn = fadd float %i.km, %i.kl
  %.sroa.3.12.vec.insert.i.i166 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kn, i64 0
  store <2 x float> %i.kf, ptr %17, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i166, ptr %i.ko, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.kp = load float, ptr %i.hm, align 4, !tbaa !8 ; 2 uses
  %i.kq = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> %i.kr, <2 x float> %i.jz)
  %i.kt = fadd <2 x float> %i.ke, %i.ks
  %i.ku = call noundef float @llvm.fmuladd.f32(float %i.kk, float %i.kp, float %i.kj)
  %i.kv = fadd float %i.km, %i.ku
  %.sroa.3.12.vec.insert.i.i171 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kv, i64 0
  store <2 x float> %i.kt, ptr %18, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i171, ptr %i.kw, align 8
  %i.kx = load ptr, ptr %0, align 8, !tbaa !19
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.la = load float, ptr %1, align 4, !tbaa !8   ; 2 uses
  %i.lb = load float, ptr %i.cd, align 4, !tbaa !8 ; 2 uses
  %i.lc = load float, ptr %i.b, align 4, !tbaa !8 ; 2 uses
  %37 = load <4 x float>, ptr %i.g, align 4
  %38 = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ld = load float, ptr %i.m, align 4, !tbaa !8
  %i.le = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 2 uses
  %i.lf = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.lg = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = shufflevector <2 x float> %i.le, <2 x float> %i.lf, <2 x i32> <i32 1, i32 3>
  %i.lj = fmul <2 x float> %i.lh, %i.li
  %i.lk = shufflevector <2 x float> %i.le, <2 x float> %i.lf, <2 x i32> <i32 0, i32 2>
  %i.ll = insertelement <2 x float> poison, float %i.la, i64 0
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ln = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lk, <2 x float> %i.lm, <2 x float> %i.lj) ; 2 uses
  %i.lo = insertelement <2 x float> %38, float %i.ld, i64 1 ; 2 uses
  %i.lp = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.lq, <2 x float> %i.ln)
  %i.ls = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.lt = fadd <2 x float> %i.ls, %i.lr
  %i.lu = load float, ptr %i.ae, align 4, !tbaa !8
  %i.lv = load float, ptr %i.ag, align 4, !tbaa !8
  %i.lw = fmul float %i.lb, %i.lv
  %i.lx = call float @llvm.fmuladd.f32(float %i.lu, float %i.la, float %i.lw) ; 2 uses
  %i.ly = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %i.lz = call noundef float @llvm.fmuladd.f32(float %i.ly, float %i.lc, float %i.lx)
  %i.ma = load float, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.mb = fadd float %i.ma, %i.lz
  %.sroa.3.12.vec.insert.i.i176 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mb, i64 0
  store <2 x float> %i.lt, ptr %19, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i176, ptr %i.mc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.md = load float, ptr %i.hm, align 4, !tbaa !8 ; 2 uses
  %i.me = insertelement <2 x float> poison, float %i.md, i64 0
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.mf, <2 x float> %i.ln)
  %i.mh = fadd <2 x float> %i.ls, %i.mg
  %i.mi = call noundef float @llvm.fmuladd.f32(float %i.ly, float %i.md, float %i.lx)
  %i.mj = fadd float %i.ma, %i.mi
  %.sroa.3.12.vec.insert.i.i181 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mj, i64 0
  store <2 x float> %i.mh, ptr %20, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %20, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i181, ptr %i.mk, align 8
  %i.ml = load ptr, ptr %0, align 8, !tbaa !19
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  %i.mn = load ptr, ptr %i.mm, align 8
  call void %i.mn(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.mo = load float, ptr %1, align 4, !tbaa !8   ; 2 uses
  %i.mp = load float, ptr %i.a, align 4, !tbaa !8 ; 2 uses
  %i.mq = load float, ptr %i.hm, align 4, !tbaa !8 ; 3 uses
  %39 = load <4 x float>, ptr %i.g, align 4
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.mr = load float, ptr %i.m, align 4, !tbaa !8
  %i.ms = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 2 uses
  %i.mt = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.mu = insertelement <2 x float> poison, float %i.mp, i64 0
  %i.mv = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mw = shufflevector <2 x float> %i.ms, <2 x float> %i.mt, <2 x i32> <i32 1, i32 3>
  %i.mx = fmul <2 x float> %i.mv, %i.mw           ; 2 uses
  %i.my = shufflevector <2 x float> %i.ms, <2 x float> %i.mt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mz = insertelement <2 x float> poison, float %i.mo, i64 0
  %i.na = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.my, <2 x float> %i.na, <2 x float> %i.mx)
  %i.nc = insertelement <2 x float> %40, float %i.mr, i64 1 ; 2 uses
  %i.nd = insertelement <2 x float> poison, float %i.mq, i64 0
  %i.ne = shufflevector <2 x float> %i.nd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nc, <2 x float> %i.ne, <2 x float> %i.nb)
  %i.ng = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.nh = fadd <2 x float> %i.ng, %i.nf
  %i.ni = load float, ptr %i.ae, align 4, !tbaa !8 ; 2 uses
  %i.nj = load float, ptr %i.ag, align 4, !tbaa !8
  %i.nk = fmul float %i.mp, %i.nj                 ; 2 uses
  %i.nl = call float @llvm.fmuladd.f32(float %i.ni, float %i.mo, float %i.nk)
  %i.nm = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %i.nn = call noundef float @llvm.fmuladd.f32(float %i.nm, float %i.mq, float %i.nl)
  %i.no = load float, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.np = fadd float %i.no, %i.nn
  %.sroa.3.12.vec.insert.i.i186 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.np, i64 0
  store <2 x float> %i.nh, ptr %21, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %21, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i186, ptr %i.nq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.nr = load float, ptr %2, align 4, !tbaa !8   ; 2 uses
  %i.ns = insertelement <2 x float> poison, float %i.nr, i64 0
  %i.nt = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.my, <2 x float> %i.nt, <2 x float> %i.mx)
  %i.nv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nc, <2 x float> %i.ne, <2 x float> %i.nu)
  %i.nw = fadd <2 x float> %i.ng, %i.nv
  %i.nx = call float @llvm.fmuladd.f32(float %i.ni, float %i.nr, float %i.nk)
  %i.ny = call noundef float @llvm.fmuladd.f32(float %i.nm, float %i.mq, float %i.nx)
  %i.nz = fadd float %i.no, %i.ny
  %.sroa.3.12.vec.insert.i.i191 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nz, i64 0
  store <2 x float> %i.nw, ptr %22, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %22, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i191, ptr %i.oa, align 8
  %i.ob = load ptr, ptr %0, align 8, !tbaa !19
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 40
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.oe = load float, ptr %2, align 4, !tbaa !8   ; 3 uses
  %i.of = load float, ptr %i.a, align 4, !tbaa !8 ; 2 uses
  %i.og = load float, ptr %i.hm, align 4, !tbaa !8 ; 3 uses
  %i.oh = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 2 uses
  %i.oi = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.oj = insertelement <2 x float> poison, float %i.of, i64 0
  %i.ok = shufflevector <2 x float> %i.oj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ol = shufflevector <2 x float> %i.oh, <2 x float> %i.oi, <2 x i32> <i32 1, i32 3>
  %i.om = fmul <2 x float> %i.ok, %i.ol
  %i.on = shufflevector <2 x float> %i.oh, <2 x float> %i.oi, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.oo = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.op = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.op, <2 x float> %i.om)
  %i.or = insertelement <2 x float> poison, float %i.og, i64 0
  %i.os = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ot = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.ou = load float, ptr %i.ae, align 4, !tbaa !8 ; 2 uses
  %i.ov = load float, ptr %i.ag, align 4, !tbaa !8 ; 2 uses
  %i.ow = fmul float %i.of, %i.ov
  %i.ox = call float @llvm.fmuladd.f32(float %i.ou, float %i.oe, float %i.ow)
  %i.oy = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %i.oz = call noundef float @llvm.fmuladd.f32(float %i.oy, float %i.og, float %i.ox)
  %i.pa = load float, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.pb = fadd float %i.pa, %i.oz
  %.sroa.3.12.vec.insert.i.i196 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.pb, i64 0
  %i.pc = getelementptr inbounds nuw i8, ptr %23, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i196, ptr %i.pc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.pd = load float, ptr %i.cd, align 4, !tbaa !8 ; 2 uses
  %i.pe = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.pf = load <2 x float>, ptr %i.l, align 4, !tbaa !8 ; 2 uses
  %i.pg = shufflevector <2 x float> %i.pe, <2 x float> %i.pf, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ph = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pg, <2 x float> %i.os, <2 x float> %i.oq)
  %i.pi = fadd <2 x float> %i.ot, %i.ph
  store <2 x float> %i.pi, ptr %23, align 8
  %i.pj = shufflevector <2 x float> %i.pe, <2 x float> %i.pf, <2 x i32> <i32 0, i32 2>
  %i.pk = insertelement <2 x float> poison, float %i.pd, i64 0
  %i.pl = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pm = fmul <2 x float> %i.pj, %i.pl
  %i.pn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.op, <2 x float> %i.pm)
  %i.po = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pg, <2 x float> %i.os, <2 x float> %i.pn)
  %i.pp = fadd <2 x float> %i.ot, %i.po
  %i.pq = fmul float %i.ov, %i.pd
  %i.pr = call float @llvm.fmuladd.f32(float %i.ou, float %i.oe, float %i.pq)
  %i.ps = call noundef float @llvm.fmuladd.f32(float %i.oy, float %i.og, float %i.pr)
  %i.pt = fadd float %i.pa, %i.ps
  %.sroa.3.12.vec.insert.i.i201 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.pt, i64 0
  store <2 x float> %i.pp, ptr %24, align 8
  %i.pu = getelementptr inbounds nuw i8, ptr %24, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i201, ptr %i.pu, align 8
  %i.pv = load ptr, ptr %0, align 8, !tbaa !19
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 40
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.py = load float, ptr %2, align 4, !tbaa !8   ; 2 uses
  %i.pz = load float, ptr %i.cd, align 4, !tbaa !8 ; 2 uses
  %i.qa = load float, ptr %i.hm, align 4, !tbaa !8 ; 3 uses
  %41 = load <4 x float>, ptr %i.g, align 4
  %42 = shufflevector <4 x float> %41, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.qb = load float, ptr %i.m, align 4, !tbaa !8
  %i.qc = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 2 uses
  %i.qd = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.qe = insertelement <2 x float> poison, float %i.pz, i64 0
  %i.qf = shufflevector <2 x float> %i.qe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qg = shufflevector <2 x float> %i.qc, <2 x float> %i.qd, <2 x i32> <i32 1, i32 3>
  %i.qh = fmul <2 x float> %i.qf, %i.qg           ; 2 uses
  %i.qi = shufflevector <2 x float> %i.qc, <2 x float> %i.qd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.qj = insertelement <2 x float> poison, float %i.py, i64 0
  %i.qk = shufflevector <2 x float> %i.qj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ql = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qi, <2 x float> %i.qk, <2 x float> %i.qh)
  %i.qm = insertelement <2 x float> %42, float %i.qb, i64 1 ; 2 uses
  %i.qn = insertelement <2 x float> poison, float %i.qa, i64 0
  %i.qo = shufflevector <2 x float> %i.qn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qm, <2 x float> %i.qo, <2 x float> %i.ql)
  %i.qq = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.qr = fadd <2 x float> %i.qq, %i.qp
  %i.qs = load float, ptr %i.ae, align 4, !tbaa !8 ; 2 uses
  %i.qt = load float, ptr %i.ag, align 4, !tbaa !8
  %i.qu = fmul float %i.pz, %i.qt                 ; 2 uses
  %i.qv = call float @llvm.fmuladd.f32(float %i.qs, float %i.py, float %i.qu)
  %i.qw = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %i.qx = call noundef float @llvm.fmuladd.f32(float %i.qw, float %i.qa, float %i.qv)
  %i.qy = load float, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.qz = fadd float %i.qy, %i.qx
  %.sroa.3.12.vec.insert.i.i206 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qz, i64 0
  store <2 x float> %i.qr, ptr %25, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %25, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i206, ptr %i.ra, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.rb = load float, ptr %1, align 4, !tbaa !8   ; 2 uses
  %i.rc = insertelement <2 x float> poison, float %i.rb, i64 0
  %i.rd = shufflevector <2 x float> %i.rc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.re = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qi, <2 x float> %i.rd, <2 x float> %i.qh)
  %i.rf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qm, <2 x float> %i.qo, <2 x float> %i.re)
  %i.rg = fadd <2 x float> %i.qq, %i.rf
  %i.rh = call float @llvm.fmuladd.f32(float %i.qs, float %i.rb, float %i.qu)
  %i.ri = call noundef float @llvm.fmuladd.f32(float %i.qw, float %i.qa, float %i.rh)
  %i.rj = fadd float %i.qy, %i.ri
  %.sroa.3.12.vec.insert.i.i211 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rj, i64 0
  store <2 x float> %i.rg, ptr %26, align 8
  %i.rk = getelementptr inbounds nuw i8, ptr %26, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i211, ptr %i.rk, align 8
  %i.rl = load ptr, ptr %0, align 8, !tbaa !19
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 40
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.ro = load float, ptr %1, align 4, !tbaa !8   ; 3 uses
  %i.rp = load float, ptr %i.cd, align 4, !tbaa !8 ; 2 uses
  %i.rq = load float, ptr %i.hm, align 4, !tbaa !8 ; 3 uses
  %i.rr = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 2 uses
  %i.rs = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.rt = insertelement <2 x float> poison, float %i.rp, i64 0
  %i.ru = shufflevector <2 x float> %i.rt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rv = shufflevector <2 x float> %i.rr, <2 x float> %i.rs, <2 x i32> <i32 1, i32 3>
  %i.rw = fmul <2 x float> %i.ru, %i.rv
  %i.rx = shufflevector <2 x float> %i.rr, <2 x float> %i.rs, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ry = insertelement <2 x float> poison, float %i.ro, i64 0
  %i.rz = shufflevector <2 x float> %i.ry, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rx, <2 x float> %i.rz, <2 x float> %i.rw)
  %i.sb = insertelement <2 x float> poison, float %i.rq, i64 0
  %i.sc = shufflevector <2 x float> %i.sb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sd = load <2 x float>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.se = load float, ptr %i.ae, align 4, !tbaa !8 ; 2 uses
  %i.sf = load float, ptr %i.ag, align 4, !tbaa !8 ; 2 uses
  %i.sg = fmul float %i.rp, %i.sf
  %i.sh = call float @llvm.fmuladd.f32(float %i.se, float %i.ro, float %i.sg)
  %i.si = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %i.sj = call noundef float @llvm.fmuladd.f32(float %i.si, float %i.rq, float %i.sh)
  %i.sk = load float, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.sl = fadd float %i.sk, %i.sj
  %.sroa.3.12.vec.insert.i.i216 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sl, i64 0
  %i.sm = getelementptr inbounds nuw i8, ptr %27, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i216, ptr %i.sm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.sn = load float, ptr %i.a, align 4, !tbaa !8 ; 2 uses
  %i.so = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.sp = load <2 x float>, ptr %i.l, align 4, !tbaa !8 ; 2 uses
  %i.sq = shufflevector <2 x float> %i.so, <2 x float> %i.sp, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.sr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sq, <2 x float> %i.sc, <2 x float> %i.sa)
  %i.ss = fadd <2 x float> %i.sd, %i.sr
  store <2 x float> %i.ss, ptr %27, align 8
  %i.st = shufflevector <2 x float> %i.so, <2 x float> %i.sp, <2 x i32> <i32 0, i32 2>
  %i.su = insertelement <2 x float> poison, float %i.sn, i64 0
  %i.sv = shufflevector <2 x float> %i.su, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sw = fmul <2 x float> %i.st, %i.sv
  %i.sx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rx, <2 x float> %i.rz, <2 x float> %i.sw)
  %i.sy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sq, <2 x float> %i.sc, <2 x float> %i.sx)
  %i.sz = fadd <2 x float> %i.sd, %i.sy
  %i.ta = fmul float %i.sf, %i.sn
  %i.tb = call float @llvm.fmuladd.f32(float %i.se, float %i.ro, float %i.ta)
  %i.tc = call noundef float @llvm.fmuladd.f32(float %i.si, float %i.rq, float %i.tb)
  %i.td = fadd float %i.sk, %i.tc
  %.sroa.3.12.vec.insert.i.i221 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.td, i64 0
  store <2 x float> %i.sz, ptr %28, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %28, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i221, ptr %i.te, align 8
  %i.tf = load ptr, ptr %0, align 8, !tbaa !19
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 40
  %i.th = load ptr, ptr %i.tg, align 8
  call void %i.th(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %27, ptr noundef nonnull align 4 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld19setConstraintSolverEP18btConstraintSolver(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(372) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 333 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !64, !range !67, !noundef !68
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %1, ptr %i.f, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN23btDiscreteDynamicsWorld19getConstraintSolverEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK23btDiscreteDynamicsWorld17getNumConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN23btDiscreteDynamicsWorld13getConstraintEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0, i32 noundef %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK23btDiscreteDynamicsWorld13getConstraintEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0, i32 noundef %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239
  ret ptr %i.e
}

declare void @_ZN16btCollisionWorld11updateAabbsEv(ptr noundef nonnull align 8 dereferenceable(129)) unnamed_addr #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.a, align 8, !tbaa !90
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN16btCollisionWorld14getDebugDrawerEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  ret ptr %i.b
}

declare void @_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv(ptr noundef nonnull align 8 dereferenceable(129)) unnamed_addr #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK23btDiscreteDynamicsWorld12getWorldTypeEv(ptr noundef nonnull align 8 dereferenceable(372) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN23btDiscreteDynamicsWorld11setNumTasksEi(ptr noundef nonnull align 8 dereferenceable(372) %0, i32 noundef %1) unnamed_addr #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN23btDiscreteDynamicsWorld14updateVehiclesEf(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZN23btDiscreteDynamicsWorld13updateActionsEf.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
end_hunk_3
begin_hunk_4_@_ZN34btClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.f = load i32, ptr %i.e, align 8, !tbaa !80
  %i.g = and i32 %i.f, 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load float, ptr %i.i, align 8, !tbaa !8
  %i.l = load float, ptr %i.j, align 8, !tbaa !8
  %i.m = fsub float %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load <2 x float>, ptr %i.n, align 4, !tbaa !8
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !8
  %i.r = fsub <2 x float> %i.p, %i.q              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !8
  %i.w = extractelement <2 x float> %i.r, i64 0
  %i.x = fmul float %i.w, %i.v
  %i.y = tail call float @llvm.fmuladd.f32(float %i.t, float %i.m, float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !8
  %i.ab = extractelement <2 x float> %i.r, i64 1
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.ab, float %i.y)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !278
  %i.af = fneg float %i.ae
  %i.ag = fcmp ult float %i.ac, %i.af
  br i1 %i.ag, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !308
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ai, ptr %i.aj, align 8, !tbaa !268
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !273
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !147
  br label %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit

bb.f:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = load float, ptr %i.s, align 8, !tbaa !8 ; 2 uses
  %i.ao = load float, ptr %i.u, align 4, !tbaa !8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !8
  %i.ar = load float, ptr %i.z, align 8, !tbaa !8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.au = load float, ptr %i.at, align 8, !tbaa !8
  %i.av = load <2 x float>, ptr %i.am, align 8, !tbaa !8 ; 2 uses
  %i.aw = load <2 x float>, ptr %i.as, align 8, !tbaa !8 ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.ba = fmul <2 x float> %i.ay, %i.az
  %i.bb = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bc = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bd, <2 x float> %i.ba)
  %i.bf = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.au, i64 1
  %i.bh = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bi, <2 x float> %i.be)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !8
  %i.bo = fmul float %i.ao, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.an, float %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.br = load float, ptr %i.bq, align 8, !tbaa !8
  %i.bs = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.ar, float %i.bp)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bs, i64 0
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %i.bj, ptr %i.bt, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !88
  br label %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit

_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit: ; preds = %bb.e, %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !147
  %i.bw = load float, ptr %i.ah, align 8, !tbaa !308
  br label %bb.g

bb.g:                                             ; preds = %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit, %bb.c, %bb.b, %bb.a
  %.1 = phi float [ 1.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ], [ %i.bw, %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit ], [ 1.000000e+00, %bb.c ]
  ret float %.1
}

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN17DebugDrawcallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %0)
          to label %_ZN17DebugDrawcallbackD2Ev.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable

_ZN17DebugDrawcallbackD2Ev.exit:                  ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.b, %bb.c ]
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN17DebugDrawcallback15processTriangleEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  %5 = alloca %class.btVector3, align 8           ; 6 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load float, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !8  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !8  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load <2 x float>, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %i.n = load <2 x float>, ptr %i.j, align 8, !tbaa !8 ; 2 uses
  %i.o = insertelement <2 x float> poison, float %i.e, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 1, i32 3>
  %i.r = fmul <2 x float> %i.p, %i.q
  %i.s = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.t = insertelement <2 x float> poison, float %i.b, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.u, <2 x float> %i.r)
  %i.w = insertelement <2 x float> poison, float %i.h, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = load <2 x float>, ptr %i.i, align 8, !tbaa !8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load float, ptr %i.z, align 8, !tbaa !8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !8 ; 2 uses
  %i.ad = fmul float %i.e, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.b, float %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load float, ptr %i.af, align 8, !tbaa !8 ; 2 uses
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.h, float %i.ae)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !8 ; 2 uses
  %i.ak = fadd float %i.aj, %i.ah
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !88
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load float, ptr %i.am, align 4, !tbaa !8
  %i.ao = load <2 x float>, ptr %i.c, align 4, !tbaa !8 ; 2 uses
  %7 = load <4 x float>, ptr %i.f, align 8
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ap = load <2 x float>, ptr %i.k, align 4, !tbaa !8 ; 2 uses
  %i.aq = load float, ptr %i.l, align 8, !tbaa !8
  %i.ar = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.x, <2 x float> %i.v)
  %i.at = fadd <2 x float> %i.as, %i.y
  store <2 x float> %i.at, ptr %4, align 8
  %i.au = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.an, i64 0 ; 2 uses
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load float, ptr %i.ay, align 4, !tbaa !8 ; 2 uses
  %i.ba = insertelement <2 x float> %8, float %i.aq, i64 1
  %i.bb = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = load <2 x float>, ptr %i.al, align 4, !tbaa !8 ; 4 uses
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = fmul <2 x float> %i.au, %i.be
  %i.bg = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.bg, <2 x float> %i.bf)
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.aw, <2 x float> %i.bh)
  %i.bj = fadd <2 x float> %i.y, %i.bi
  %i.bk = load <2 x float>, ptr %i.ax, align 4, !tbaa !8 ; 4 uses
  %i.bl = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = shufflevector <2 x float> %i.bd, <2 x float> %i.bk, <2 x i32> <i32 1, i32 3>
  %i.bo = fmul <2 x float> %i.bm, %i.bn
  %i.bp = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = shufflevector <2 x float> %i.bd, <2 x float> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bo)
  %i.bt = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = insertelement <2 x float> %i.av, float %i.az, i64 1
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bv, <2 x float> %i.bs)
  %i.bx = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fadd <2 x float> %i.by, %i.bw           ; 2 uses
  %i.ca = insertelement <2 x float> %i.bz, float 0.000000e+00, i64 1
  store <2 x float> %i.bj, ptr %5, align 8
  store <2 x float> %i.ca, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !88
  %i.cb = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cc = fmul <2 x float> %i.au, %i.cb
  %i.cd = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.cd, <2 x float> %i.cc)
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bc, <2 x float> %i.ce)
  %i.cg = fadd <2 x float> %i.y, %i.cf
  %i.ch = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bz, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.cg, ptr %6, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %i.ch, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !88
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !207 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.ck)
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !207 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.ck)
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !207 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZThn8_N17DebugDrawcallbackD1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0)
          to label %_ZN17DebugDrawcallbackD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable

_ZN17DebugDrawcallbackD2Ev.exit:                  ; preds = %bb.a
  tail call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.a)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZThn8_N17DebugDrawcallbackD0Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 4 uses
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.a)
          to label %_ZN17DebugDrawcallbackD0Ev.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.a)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.b, %bb.c ]
  tail call void @_ZdlPv(ptr noundef nonnull align 8 dereferenceable(104) %i.a) #21
  resume { ptr, i32 } %eh.lpad-body.i

_ZN17DebugDrawcallbackD0Ev.exit:                  ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull align 8 dereferenceable(104) %i.a) #21
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZThn8_N17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef %1, i32 noundef %2, i32 noundef %3), !inline_history !309
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #14

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.m, %bb.a
  %.tr34 = phi i32 [ %1, %bb.a ], [ %.us-phi62, %bb.m ] ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 9 uses
  %i.c = add nsw i32 %.tr34, %2
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !239  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97, !nonnull !68, !align !98
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 220
  %i.k = load i32, ptr %i.j, align 4, !tbaa !258  ; 3 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %.split.us.us, label %tailrecurse.split

.split.us.us:                                     ; preds = %tailrecurse, %bb.c
  %.026.us = phi i32 [ %.228.us, %bb.c ], [ %.tr34, %tailrecurse ]
  %.0.us = phi i32 [ %.2.us, %bb.c ], [ %2, %tailrecurse ]
  %i.m = sext i32 %.026.us to i64
  br label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us

bb.b:                                             ; preds = %.split49.us.us
  %i.n = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv79
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !239
  store ptr %i.r, ptr %i.n, align 8, !tbaa !239
  %i.o = add nsw i32 %i.as, 1
  %i.p = add nsw i32 %i.at, -1
  br label %bb.c

bb.c:                                             ; preds = %.split49.us.us, %bb.b
  %.228.us = phi i32 [ %i.o, %bb.b ], [ %i.as, %.split49.us.us ] ; 3 uses
  %.2.us = phi i32 [ %i.p, %bb.b ], [ %i.at, %.split49.us.us ] ; 3 uses
  %.not31.us = icmp sgt i32 %.228.us, %.2.us
  br i1 %.not31.us, label %.split61.us, label %.split.us.us

_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us: ; preds = %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us, %.split.us.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us ], [ %i.m, %.split.us.us ] ; 5 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv76
end_hunk_4
