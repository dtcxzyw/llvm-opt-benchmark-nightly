Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSphereBoxCollisionAlgorithm?download=true
inline.NumInlined: 146
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN29btSphereBoxCollisionAlgorithmD0Ev:bb.a
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.e)
          to label %bb.e unwind label %bb.d, !inline_history !34

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0)
          to label %.body unwind label %bb.f, !inline_history !34

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  invoke void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0)
          to label %_ZN29btSphereBoxCollisionAlgorithmD2Ev.exit unwind label %bb.g, !inline_history !34

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #10, !inline_history !34
  unreachable

_ZN29btSphereBoxCollisionAlgorithmD2Ev.exit:      ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.k, %bb.d ]
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define dso_local void @_ZN29btSphereBoxCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef %4) unnamed_addr #6 align 2 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 6 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 4           ; 4 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !19, !range !21, !noundef !22
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.e, ptr %2, ptr %1           ; 2 uses
  %i.g = select i1 %i.e, ptr %1, ptr %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load float, ptr %i.k, align 4, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load float, ptr %i.m, align 4, !tbaa !33
  %i.o = fmul float %i.l, %i.n
  %i.p = call noundef float @_ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEP17btCollisionObjectR9btVector3S3_RKS2_f(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %i.g, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.o) ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !38
  %i.s = fcmp olt float %i.p, f0x34000000
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load float, ptr %i.t, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load float, ptr %i.v, align 8, !tbaa !33
  %i.x = fsub float %i.u, %i.w                    ; 3 uses
  %i.y = load <2 x float>, ptr %5, align 8, !tbaa !33
  %i.z = load <2 x float>, ptr %6, align 8, !tbaa !33
  %i.aa = fsub <2 x float> %i.y, %i.z             ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.aa, %i.aa
  %i.ab = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ac = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.ab)
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.ad)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ae)
  %i.af = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.aa, %i.ah
  %i.aj = fmul float %i.x, %i.af
  %.sroa.8.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  store <2 x float> %i.ai, ptr %8, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.8.8.vec.insert, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !31
  %i.ak = load ptr, ptr %4, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %5, float noundef %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !17, !range !21, !noundef !22
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 728
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !41
  %.not15 = icmp eq i32 %i.as, 0
  br i1 %.not15, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !38  ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 728
  %i.av = load i32, ptr %i.au, align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 712
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43
  %.not1.i = icmp eq ptr %i.ax, %i.az             ; 2 uses
  %..i = select i1 %.not1.i, i64 16, i64 80
  %.5.i = select i1 %.not1.i, i64 80, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 %..i
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 %.5.i
  call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(744) %i.at, ptr noundef nonnull align 4 dereferenceable(64) %i.ba, ptr noundef nonnull align 4 dereferenceable(64) %i.bb)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.sink.split.i, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN16btManifoldResult20refreshContactPointsEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: uwtable
define dso_local noundef float @_ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEP17btCollisionObjectR9btVector3S3_RKS2_f(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(33) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, float noundef %5) local_unnamed_addr #6 align 2 {
bb.a:
  %6 = alloca [2 x %class.btVector3], align 16    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !33 ; 2 uses
  %i.e = fneg <2 x float> %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load float, ptr %i.f, align 4, !tbaa !33 ; 2 uses
  %i.h = fneg float %i.g
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.h, i64 0
  store <2 x float> %i.e, ptr %6, align 16
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !32
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(64) %i.b) ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.o = fsub float %i.m, %i.g                    ; 4 uses
  store float %i.o, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !33
  %i.p = load float, ptr %i.i, align 16, !tbaa !33
  %i.q = fsub float %i.p, %i.m                    ; 4 uses
  store float %i.q, ptr %i.i, align 16, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !33
  %i.t = fsub float %i.s, %i.m                    ; 4 uses
  store float %i.t, ptr %i.r, align 4, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !33
  %i.w = fsub float %i.v, %i.m                    ; 4 uses
  store float %i.w, ptr %i.u, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %10 = load float, ptr %i.ad, align 8, !tbaa !33, !noalias !46
  %11 = load float, ptr %i.ae, align 8, !tbaa !33, !noalias !46
  %12 = load float, ptr %i.af, align 8, !tbaa !33, !noalias !46
  %13 = load float, ptr %7, align 4, !tbaa !33
  %14 = load float, ptr %4, align 4, !tbaa !33
  %15 = load float, ptr %9, align 4, !tbaa !33
  %i.ag = load float, ptr %8, align 4, !tbaa !33
  %i.ah = load float, ptr %i.y, align 8, !tbaa !33
  %i.ai = load float, ptr %i.z, align 8, !tbaa !33
  %16 = fsub float %13, %i.ag                     ; 2 uses
  %17 = fsub float %14, %i.ah                     ; 2 uses
  %18 = fsub float %15, %i.ai                     ; 2 uses
  %i.aj = load <2 x float>, ptr %i.x, align 8, !tbaa !33, !noalias !46
  %i.ak = load <2 x float>, ptr %i.aa, align 8, !tbaa !33, !noalias !46
  %i.al = load <2 x float>, ptr %i.ab, align 8, !tbaa !33, !noalias !46
  %19 = insertelement <2 x float> poison, float %16, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x float> %20, %i.ak
  %22 = insertelement <2 x float> poison, float %17, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %23, <2 x float> %21)
  %24 = insertelement <2 x float> poison, float %18, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %25, <2 x float> %i.am) ; 6 uses
  %27 = fmul float %16, %11
  %28 = tail call float @llvm.fmuladd.f32(float %10, float %17, float %27)
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %12, float %18, float %28) ; 5 uses
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  %i.ao = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aq = fsub <2 x float> %i.ap, %i.d            ; 4 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  store float %i.ar, ptr %6, align 16, !tbaa !33
  %i.as = extractelement <2 x float> %i.aq, i64 1 ; 3 uses
  store float %i.as, ptr %i.n, align 4, !tbaa !33
  %i.at = fsub <2 x float> %26, %i.aq             ; 2 uses
  %i.au = fsub float %i.an, %i.o
  %i.av = extractelement <2 x float> %i.at, i64 1
  %i.aw = fmul float %i.av, 0.000000e+00
  %i.ax = extractelement <2 x float> %i.at, i64 0
  %i.ay = fsub float %i.aw, %i.ax
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.au, float 0.000000e+00, float %i.ay) ; 3 uses
  %i.ba = fcmp ogt float %i.az, 0.000000e+00      ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = fmul float %i.az, 0.000000e+00          ; 2 uses
  %i.bc = extractelement <2 x float> %26, i64 0
  %i.bd = fadd float %i.bc, %i.az
  %i.be = extractelement <2 x float> %26, i64 1
  %i.bf = fsub float %i.be, %i.bb
  %i.bg = fsub float %i.an, %i.bb
  %.sroa.0.0.vec.insert.i77 = insertelement <2 x float> poison, float %i.bd, i64 0
  %.sroa.0.4.vec.insert.i78 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77, float %i.bf, i64 1
  %.sroa.3.12.vec.insert.i79 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bg, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0167.1 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78, %bb.b ], [ %26, %bb.a ] ; 4 uses
  %.sroa.12.1 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79, %bb.b ], [ %.sroa.3.12.vec.insert.i4.i, %bb.a ] ; 2 uses
  %.sroa.0167.0.vec.extract.1 = extractelement <2 x float> %.sroa.0167.1, i64 0 ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.0167.1, %i.aq
  %i.bh = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %.sroa.0167.4.vec.extract.1 = extractelement <2 x float> %.sroa.0167.1, i64 1 ; 3 uses
  %i.bi = fsub float %.sroa.0167.4.vec.extract.1, %i.as ; 2 uses
  %.sroa.12.8.vec.extract.1 = extractelement <2 x float> %.sroa.12.1, i64 0 ; 3 uses
  %i.bj = fsub float %.sroa.12.8.vec.extract.1, %i.o ; 2 uses
  %i.bk = fneg float %i.bi
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.bk)
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.bj, float 0.000000e+00, float %i.bl) ; 3 uses
  %i.bn = fcmp ogt float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bo = fmul float %i.bm, 0.000000e+00          ; 2 uses
  %i.bp = fsub float %.sroa.0167.0.vec.extract.1, %i.bo ; 3 uses
  %i.bq = fadd float %.sroa.0167.4.vec.extract.1, %i.bm ; 3 uses
  %i.br = fsub float %.sroa.12.8.vec.extract.1, %i.bo ; 3 uses
  %.sroa.0.0.vec.insert.i77.1 = insertelement <2 x float> poison, float %i.bp, i64 0
  %.sroa.0.4.vec.insert.i78.1 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77.1, float %i.bq, i64 1
  %.sroa.3.12.vec.insert.i79.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.br, i64 0
  %.pre247 = fsub float %i.bp, %i.ar
  %.pre249 = fsub float %i.bq, %i.as
  %.pre252 = fsub float %i.br, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi253 = phi float [ %.pre252, %bb.d ], [ %i.bj, %bb.c ]
  %.sroa.12.8.vec.extract.2.pre-phi = phi float [ %i.br, %bb.d ], [ %.sroa.12.8.vec.extract.1, %bb.c ] ; 2 uses
  %.pre-phi250 = phi float [ %.pre249, %bb.d ], [ %i.bi, %bb.c ]
  %.sroa.0167.4.vec.extract.2.pre-phi = phi float [ %i.bq, %bb.d ], [ %.sroa.0167.4.vec.extract.1, %bb.c ] ; 2 uses
  %.pre-phi = phi float [ %.pre247, %bb.d ], [ %i.bh, %bb.c ]
  %.sroa.0167.0.vec.extract.2.pre-phi = phi float [ %i.bp, %bb.d ], [ %.sroa.0167.0.vec.extract.1, %bb.c ] ; 2 uses
  %.sroa.0167.1.1 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78.1, %bb.d ], [ %.sroa.0167.1, %bb.c ]
  %.sroa.12.1.1 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79.1, %bb.d ], [ %.sroa.12.1, %bb.c ]
  %.1.1 = phi i1 [ true, %bb.d ], [ %i.ba, %bb.c ]
  %i.bs = fmul float %.pre-phi250, 0.000000e+00
  %i.bt = tail call float @llvm.fmuladd.f32(float %.pre-phi, float 0.000000e+00, float %i.bs)
  %i.bu = fsub float %i.bt, %.pre-phi253          ; 3 uses
  %i.bv = fcmp ogt float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bw = fmul float %i.bu, 0.000000e+00          ; 2 uses
  %i.bx = fsub float %.sroa.0167.0.vec.extract.2.pre-phi, %i.bw ; 2 uses
  %i.by = fsub float %.sroa.0167.4.vec.extract.2.pre-phi, %i.bw ; 2 uses
  %i.bz = fadd float %.sroa.12.8.vec.extract.2.pre-phi, %i.bu ; 2 uses
  %.sroa.0.0.vec.insert.i77.2 = insertelement <2 x float> poison, float %i.bx, i64 0
  %.sroa.0.4.vec.insert.i78.2 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77.2, float %i.by, i64 1
  %.sroa.3.12.vec.insert.i79.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bz, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.12.8.vec.extract.3.pre-phi = phi float [ %i.bz, %bb.f ], [ %.sroa.12.8.vec.extract.2.pre-phi, %bb.e ] ; 3 uses
  %.sroa.0167.4.vec.extract.3.pre-phi = phi float [ %i.by, %bb.f ], [ %.sroa.0167.4.vec.extract.2.pre-phi, %bb.e ] ; 3 uses
  %.sroa.0167.0.vec.extract.3.pre-phi = phi float [ %i.bx, %bb.f ], [ %.sroa.0167.0.vec.extract.2.pre-phi, %bb.e ] ; 3 uses
  %.sroa.0167.1.2 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78.2, %bb.f ], [ %.sroa.0167.1.1, %bb.e ]
  %.sroa.12.1.2 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79.2, %bb.f ], [ %.sroa.12.1.1, %bb.e ]
  %.1.2 = phi i1 [ true, %bb.f ], [ %.1.1, %bb.e ]
  %i.ca = fsub float %.sroa.0167.0.vec.extract.3.pre-phi, %i.q ; 2 uses
  %i.cb = fsub float %.sroa.0167.4.vec.extract.3.pre-phi, %i.t ; 2 uses
  %i.cc = fsub float %.sroa.12.8.vec.extract.3.pre-phi, %i.w ; 2 uses
  %i.cd = fmul float %i.cb, 0.000000e+00
  %i.ce = fadd float %i.ca, %i.cd
  %i.cf = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float 0.000000e+00, float %i.ce) ; 3 uses
  %i.cg = fcmp ogt float %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ch = fmul float %i.cf, 0.000000e+00          ; 2 uses
  %i.ci = fsub float %.sroa.0167.0.vec.extract.3.pre-phi, %i.cf ; 3 uses
  %i.cj = fsub float %.sroa.0167.4.vec.extract.3.pre-phi, %i.ch ; 3 uses
  %i.ck = fsub float %.sroa.12.8.vec.extract.3.pre-phi, %i.ch ; 3 uses
  %.sroa.0.0.vec.insert.i77.3 = insertelement <2 x float> poison, float %i.ci, i64 0
  %.sroa.0.4.vec.insert.i78.3 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77.3, float %i.cj, i64 1
  %.sroa.3.12.vec.insert.i79.3 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ck, i64 0
  %.pre258 = fsub float %i.ci, %i.q
  %.pre261 = fsub float %i.cj, %i.t
  %.pre264 = fsub float %i.ck, %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi265 = phi float [ %.pre264, %bb.h ], [ %i.cc, %bb.g ] ; 2 uses
  %.sroa.12.8.vec.extract.4.pre-phi = phi float [ %i.ck, %bb.h ], [ %.sroa.12.8.vec.extract.3.pre-phi, %bb.g ] ; 2 uses
  %.pre-phi262 = phi float [ %.pre261, %bb.h ], [ %i.cb, %bb.g ] ; 2 uses
  %.sroa.0167.4.vec.extract.4.pre-phi = phi float [ %i.cj, %bb.h ], [ %.sroa.0167.4.vec.extract.3.pre-phi, %bb.g ] ; 2 uses
  %.pre-phi259 = phi float [ %.pre258, %bb.h ], [ %i.ca, %bb.g ] ; 2 uses
  %.sroa.0167.0.vec.extract.4.pre-phi = phi float [ %i.ci, %bb.h ], [ %.sroa.0167.0.vec.extract.3.pre-phi, %bb.g ] ; 2 uses
  %.sroa.0167.1.3 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78.3, %bb.h ], [ %.sroa.0167.1.2, %bb.g ]
  %.sroa.12.1.3 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79.3, %bb.h ], [ %.sroa.12.1.2, %bb.g ]
  %.1.3 = phi i1 [ true, %bb.h ], [ %.1.2, %bb.g ]
  %i.cl = tail call float @llvm.fmuladd.f32(float %.pre-phi259, float 0.000000e+00, float %.pre-phi262)
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %.pre-phi265, float 0.000000e+00, float %i.cl) ; 3 uses
  %i.cn = fcmp ogt float %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.co = fmul float %i.cm, 0.000000e+00          ; 2 uses
  %i.cp = fsub float %.sroa.0167.0.vec.extract.4.pre-phi, %i.co ; 3 uses
  %i.cq = fsub float %.sroa.0167.4.vec.extract.4.pre-phi, %i.cm ; 3 uses
  %i.cr = fsub float %.sroa.12.8.vec.extract.4.pre-phi, %i.co ; 3 uses
  %.sroa.0.0.vec.insert.i77.4 = insertelement <2 x float> poison, float %i.cp, i64 0
  %.sroa.0.4.vec.insert.i78.4 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77.4, float %i.cq, i64 1
  %.sroa.3.12.vec.insert.i79.4 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cr, i64 0
  %.pre267 = fsub float %i.cp, %i.q
  %.pre270 = fsub float %i.cq, %i.t
  %.pre273 = fsub float %i.cr, %i.w
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi274 = phi float [ %.pre273, %bb.j ], [ %.pre-phi265, %bb.i ]
  %.sroa.12.8.vec.extract.5.pre-phi = phi float [ %i.cr, %bb.j ], [ %.sroa.12.8.vec.extract.4.pre-phi, %bb.i ]
  %.pre-phi271 = phi float [ %.pre270, %bb.j ], [ %.pre-phi262, %bb.i ]
  %.sroa.0167.4.vec.extract.5.pre-phi = phi float [ %i.cq, %bb.j ], [ %.sroa.0167.4.vec.extract.4.pre-phi, %bb.i ]
  %.pre-phi268 = phi float [ %.pre267, %bb.j ], [ %.pre-phi259, %bb.i ]
  %.sroa.0167.0.vec.extract.5.pre-phi = phi float [ %i.cp, %bb.j ], [ %.sroa.0167.0.vec.extract.4.pre-phi, %bb.i ]
  %.sroa.0167.1.4 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78.4, %bb.j ], [ %.sroa.0167.1.3, %bb.i ]
  %.sroa.12.1.4 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79.4, %bb.j ], [ %.sroa.12.1.3, %bb.i ]
  %.1.4 = phi i1 [ true, %bb.j ], [ %.1.3, %bb.i ]
  %i.cs = fmul float %.pre-phi271, 0.000000e+00
  %i.ct = tail call float @llvm.fmuladd.f32(float %.pre-phi268, float 0.000000e+00, float %i.cs)
  %i.cu = fadd float %.pre-phi274, %i.ct          ; 3 uses
  %i.cv = fcmp ogt float %i.cu, 0.000000e+00
  br i1 %i.cv, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.cw = fmul float %i.cu, 0.000000e+00          ; 2 uses
  %i.cx = fsub float %.sroa.0167.0.vec.extract.5.pre-phi, %i.cw
  %i.cy = fsub float %.sroa.0167.4.vec.extract.5.pre-phi, %i.cw
  %i.cz = fsub float %.sroa.12.8.vec.extract.5.pre-phi, %i.cu
  %.sroa.0.0.vec.insert.i77.5 = insertelement <2 x float> poison, float %i.cx, i64 0
  %.sroa.0.4.vec.insert.i78.5 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77.5, float %i.cy, i64 1
  %.sroa.3.12.vec.insert.i79.5 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cz, i64 0
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %.1.4, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.thread, %bb.l
  %.sroa.12.1.5290 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79.5, %.thread ], [ %.sroa.12.1.4, %bb.l ]
  %.sroa.0167.1.5289 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78.5, %.thread ], [ %.sroa.0167.1.4, %bb.l ] ; 2 uses
  %.sroa.12.8.vec.extract183 = extractelement <2 x float> %.sroa.12.1.5290, i64 0 ; 2 uses
  %i.da = fsub float %i.an, %.sroa.12.8.vec.extract183 ; 3 uses
  %i.db = fsub <2 x float> %26, %.sroa.0167.1.5289 ; 4 uses
  %foldExtExtBinop292 = fmul <2 x float> %i.db, %i.db
  %i.dc = extractelement <2 x float> %foldExtExtBinop292, i64 1
  %i.dd = extractelement <2 x float> %i.db, i64 0 ; 2 uses
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.dc)
  %i.df = tail call noundef float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.de)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.df)
  %i.dg = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.dh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.db, %i.di           ; 4 uses
  %i.dk = fmul float %i.da, %i.dg                 ; 3 uses
  %i.dl = fmul <2 x float> %i.ap, %i.dj
  %i.dm = fmul float %i.m, %i.dk
  %i.dn = fadd <2 x float> %.sroa.0167.1.5289, %i.dl
  %i.do = fadd float %.sroa.12.8.vec.extract183, %i.dm
  %.sroa.3.12.vec.insert.i94 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.do, i64 0
  store <2 x float> %i.dn, ptr %2, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i94, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !31
  %i.dp = extractelement <2 x float> %i.dj, i64 0
  %i.dq = extractelement <2 x float> %i.dj, i64 1
  %i.dr = fmul float %5, %i.dk
  %i.ds = insertelement <2 x float> poison, float %5, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x float> %i.dt, %i.dj
  %i.dv = fsub <2 x float> %26, %i.du             ; 3 uses
  %i.dw = fsub float %i.an, %i.dr                 ; 2 uses
  %.sroa.3.12.vec.insert.i104 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dw, i64 0
  store <2 x float> %i.dv, ptr %3, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i104, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !31
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !33 ; 3 uses
  %i.dz = load float, ptr %2, align 4, !tbaa !33  ; 3 uses
  %i.ea = load float, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !33 ; 3 uses
  %i.eb = extractelement <2 x float> %i.dv, i64 0
  %i.ec = fsub float %i.eb, %i.dz
  %i.ed = extractelement <2 x float> %i.dv, i64 1
  %i.ee = fsub float %i.ed, %i.dy
  %i.ef = fsub float %i.dw, %i.ea
  %i.eg = fmul float %i.dq, %i.ee
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.dp, float %i.eg)
  %i.ei = tail call noundef float @llvm.fmuladd.f32(float %i.ef, float %i.dk, float %i.eh)
  %i.ej = fcmp ogt float %i.ei, 0.000000e+00
  br i1 %i.ej, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.el = load float, ptr %i.ad, align 8, !tbaa !33
  %i.em = load float, ptr %i.ae, align 8, !tbaa !33
  %i.en = load <2 x float>, ptr %i.x, align 8, !tbaa !33 ; 2 uses
  %i.eo = load <2 x float>, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  %i.ep = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.es = fmul <2 x float> %i.eq, %i.er
  %i.et = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.eu = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.ev, <2 x float> %i.es)
  %i.ex = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.em, i64 1
  %i.ez = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.fa, <2 x float> %i.ew)
  %i.fc = load <2 x float>, ptr %i.y, align 8, !tbaa !33
  %i.fd = fadd <2 x float> %i.fc, %i.fb
  %i.fe = load float, ptr %i.ab, align 8, !tbaa !33
  %i.ff = load float, ptr %i.ac, align 4, !tbaa !33
  %i.fg = fmul float %i.dy, %i.ff
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.dz, float %i.fg)
  %i.fi = load float, ptr %i.af, align 8, !tbaa !33
  %i.fj = tail call noundef float @llvm.fmuladd.f32(float %i.fi, float %i.ea, float %i.fh)
  %i.fk = load float, ptr %i.z, align 8, !tbaa !33
  %i.fl = fadd float %i.fk, %i.fj
  %.sroa.3.12.vec.insert.i114 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fl, i64 0
  store <2 x float> %i.fd, ptr %2, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i114, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !31
  %i.fm = load float, ptr %i.ad, align 8, !tbaa !33
  %i.fn = load float, ptr %i.ae, align 8, !tbaa !33
  %i.fo = load <2 x float>, ptr %i.x, align 8, !tbaa !33 ; 2 uses
  %i.fp = load float, ptr %i.ek, align 4, !tbaa !33 ; 2 uses
  %i.fq = load float, ptr %3, align 4, !tbaa !33  ; 2 uses
  %i.fr = load float, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !33 ; 2 uses
  %i.fs = load <2 x float>, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  %i.ft = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = shufflevector <2 x float> %i.fo, <2 x float> %i.fs, <2 x i32> <i32 1, i32 3>
  %i.fw = fmul <2 x float> %i.fu, %i.fv
  %i.fx = shufflevector <2 x float> %i.fo, <2 x float> %i.fs, <2 x i32> <i32 0, i32 2>
  %i.fy = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fz, <2 x float> %i.fw)
  %i.gb = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %i.fn, i64 1
  %i.gd = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.ge, <2 x float> %i.ga)
  %i.gg = load <2 x float>, ptr %i.y, align 8, !tbaa !33
  %i.gh = fadd <2 x float> %i.gf, %i.gg           ; 3 uses
  %i.gi = load float, ptr %i.ab, align 8, !tbaa !33
  %i.gj = load float, ptr %i.ac, align 4, !tbaa !33
  %i.gk = fmul float %i.fp, %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.fq, float %i.gk)
  %i.gm = load float, ptr %i.af, align 8, !tbaa !33
  %i.gn = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.fr, float %i.gl)
  %i.go = load float, ptr %i.z, align 8, !tbaa !33
  %i.gp = fadd float %i.go, %i.gn                 ; 2 uses
  %.sroa.3.12.vec.insert.i119 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gp, i64 0
  store <2 x float> %i.gh, ptr %3, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i119, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !31
  %i.gq = load float, ptr %2, align 4, !tbaa !33
  %i.gr = extractelement <2 x float> %i.gh, i64 0
  %i.gs = fsub float %i.gq, %i.gr                 ; 2 uses
  %i.gt = load float, ptr %i.dx, align 4, !tbaa !33
  %i.gu = extractelement <2 x float> %i.gh, i64 1
  %i.gv = fsub float %i.gt, %i.gu                 ; 2 uses
  %i.gw = load float, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !33
  %i.gx = fsub float %i.gw, %i.gp                 ; 2 uses
  %i.gy = fmul float %i.gv, %i.gv
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gy)
  %i.ha = tail call noundef float @llvm.fmuladd.f32(float %i.gx, float %i.gx, float %i.gz) ; 2 uses
  %i.hb = fcmp ogt float %i.ha, f0x34000000
  br i1 %i.hb, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ha)
  %i.hc = fneg float %sqrt
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.hd = call noundef float @_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.i) ; 2 uses
  %i.he = fcmp ugt float %i.hd, 0.000000e+00
  br i1 %i.he, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hf = fsub float %i.hd, %i.m
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.n, %bb.o, %bb.m, %bb.q
  %.0 = phi float [ 1.000000e+07, %bb.n ], [ 1.000000e+00, %bb.m ], [ %i.hf, %bb.q ], [ %i.hc, %bb.o ], [ 1.000000e+00, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN29btSphereBoxCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #7 align 2 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef float @_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, float noundef %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7) local_unnamed_addr #8 align 2 {
bb.a:
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.6174.0.copyload = load float, ptr %.sroa.6174.0..sroa_idx, align 4 ; 4 uses
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.13.16.copyload = load float, ptr %.sroa.13.16..sroa_idx, align 4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.m = load float, ptr %i.j, align 4, !tbaa !33, !noalias !49
  %i.n = load float, ptr %i.k, align 4, !tbaa !33, !noalias !49
  %i.o = load float, ptr %i.l, align 4, !tbaa !33, !noalias !49
  %i.p = load <2 x float>, ptr %6, align 4        ; 4 uses
  %i.q = load <2 x float>, ptr %7, align 4        ; 3 uses
  %i.r = load float, ptr %i.c, align 4, !tbaa !33
  %i.s = load float, ptr %4, align 4, !tbaa !33
  %i.t = load float, ptr %i.e, align 4, !tbaa !33
  %i.u = load float, ptr %i.d, align 4, !tbaa !33
  %i.v = load float, ptr %i.b, align 4, !tbaa !33
  %i.w = load float, ptr %i.f, align 4, !tbaa !33
  %i.x = fsub float %i.r, %i.u                    ; 2 uses
  %i.y = fsub float %i.s, %i.v                    ; 2 uses
  %i.z = fsub float %i.t, %i.w                    ; 2 uses
  %i.aa = load <2 x float>, ptr %i.a, align 4, !tbaa !33, !noalias !49
  %i.ab = load <2 x float>, ptr %i.g, align 4, !tbaa !33, !noalias !49
  %i.ac = load <2 x float>, ptr %i.h, align 4, !tbaa !33, !noalias !49
  %i.ad = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ae, %i.ab
  %i.ag = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.ah, <2 x float> %i.af)
  %i.aj = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ak, <2 x float> %i.ai) ; 4 uses
  %i.am = fmul float %i.x, %i.n
  %i.an = tail call float @llvm.fmuladd.f32(float %i.m, float %i.y, float %i.am)
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.z, float %i.an) ; 4 uses
  %i.ap = fsub float %i.ao, %.sroa.6174.0.copyload ; 3 uses
  %i.aq = fsub <2 x float> %i.al, %i.p            ; 3 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 1
  %i.as = fmul float %i.ar, 0.000000e+00          ; 2 uses
  %i.at = extractelement <2 x float> %i.aq, i64 0 ; 3 uses
  %i.au = fsub float %i.as, %i.at
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float 0.000000e+00, float %i.au)
  %i.aw = fsub float %i.av, %5                    ; 3 uses
  %i.ax = fcmp ule float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.ay = fcmp ogt float %i.aw, -1.000000e+07
  br i1 %i.ay, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi float [ %i.aw, %bb.c ], [ -1.000000e+07, %bb.b ] ; 2 uses
  %.sroa.0124.1 = phi <2 x float> [ <float -1.000000e+00, float 0.000000e+00>, %bb.c ], [ zeroinitializer, %bb.b ]
  %.sroa.7.1 = phi float [ %.sroa.6174.0.copyload, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.az = phi <2 x float> [ %i.p, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.ba = extractelement <2 x float> %i.aq, i64 1
  %i.bb = fneg float %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.bb)
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float 0.000000e+00, float %i.bc)
end_hunk_0
