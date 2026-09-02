Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSphereBoxCollisionAlgorithm?download=true
inline.NumInlined: 146
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN29btSphereBoxCollisionAlgorithmD0Ev:bb.a
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
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ag = load float, ptr %i.ad, align 8, !tbaa !33, !noalias !46
  %i.ah = load float, ptr %i.ae, align 8, !tbaa !33, !noalias !46
  %i.ai = load float, ptr %i.af, align 8, !tbaa !33, !noalias !46
  %i.aj = load <3 x float>, ptr %4, align 4, !tbaa !33
  %i.ak = load <3 x float>, ptr %i.y, align 8, !tbaa !33
  %i.al = fsub <3 x float> %i.aj, %i.ak           ; 6 uses
  %i.am = load <2 x float>, ptr %i.x, align 8, !tbaa !33, !noalias !46
  %i.an = load <2 x float>, ptr %i.aa, align 8, !tbaa !33, !noalias !46
  %i.ao = load <2 x float>, ptr %i.ab, align 8, !tbaa !33, !noalias !46
  %i.ap = shufflevector <3 x float> %i.al, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = fmul <2 x float> %i.ap, %i.an
  %i.ar = shufflevector <3 x float> %i.al, <3 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.ar, <2 x float> %i.aq)
  %i.at = shufflevector <3 x float> %i.al, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.at, <2 x float> %i.as) ; 6 uses
  %i.av = extractelement <3 x float> %i.al, i64 1
  %i.aw = fmul float %i.av, %i.ah
  %i.ax = extractelement <3 x float> %i.al, i64 0
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ax, float %i.aw)
  %i.az = extractelement <3 x float> %i.al, i64 2
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.az, float %i.ay) ; 5 uses
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  %i.bb = insertelement <2 x float> poison, float %i.m, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = fsub <2 x float> %i.bc, %i.d            ; 4 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  store float %i.be, ptr %6, align 16, !tbaa !33
  %i.bf = extractelement <2 x float> %i.bd, i64 1 ; 3 uses
  store float %i.bf, ptr %i.n, align 4, !tbaa !33
  %i.bg = fsub <2 x float> %i.au, %i.bd           ; 2 uses
  %i.bh = fsub float %i.ba, %i.o
  %i.bi = extractelement <2 x float> %i.bg, i64 1
  %i.bj = fmul float %i.bi, 0.000000e+00
  %i.bk = extractelement <2 x float> %i.bg, i64 0
  %i.bl = fsub float %i.bj, %i.bk
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.bl) ; 3 uses
  %i.bn = fcmp ogt float %i.bm, 0.000000e+00      ; 2 uses
  br i1 %i.bn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bo = fmul float %i.bm, 0.000000e+00          ; 2 uses
  %i.bp = extractelement <2 x float> %i.au, i64 0
  %i.bq = fadd float %i.bp, %i.bm
  %i.br = extractelement <2 x float> %i.au, i64 1
  %i.bs = fsub float %i.br, %i.bo
  %i.bt = fsub float %i.ba, %i.bo
  %.sroa.0.0.vec.insert.i77 = insertelement <2 x float> poison, float %i.bq, i64 0
  %.sroa.0.4.vec.insert.i78 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77, float %i.bs, i64 1
  %.sroa.3.12.vec.insert.i79 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bt, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0167.1 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78, %bb.b ], [ %i.au, %bb.a ] ; 4 uses
  %.sroa.12.1 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79, %bb.b ], [ %.sroa.3.12.vec.insert.i4.i, %bb.a ] ; 2 uses
  %.sroa.0167.0.vec.extract.1 = extractelement <2 x float> %.sroa.0167.1, i64 0 ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.0167.1, %i.bd
  %i.bu = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %.sroa.0167.4.vec.extract.1 = extractelement <2 x float> %.sroa.0167.1, i64 1 ; 3 uses
  %i.bv = fsub float %.sroa.0167.4.vec.extract.1, %i.bf ; 2 uses
  %.sroa.12.8.vec.extract.1 = extractelement <2 x float> %.sroa.12.1, i64 0 ; 3 uses
  %i.bw = fsub float %.sroa.12.8.vec.extract.1, %i.o ; 2 uses
  %i.bx = fneg float %i.bv
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bu, float 0.000000e+00, float %i.bx)
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float 0.000000e+00, float %i.by) ; 3 uses
  %i.ca = fcmp ogt float %i.bz, 0.000000e+00
  br i1 %i.ca, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cb = fmul float %i.bz, 0.000000e+00          ; 2 uses
  %i.cc = fsub float %.sroa.0167.0.vec.extract.1, %i.cb ; 3 uses
  %i.cd = fadd float %.sroa.0167.4.vec.extract.1, %i.bz ; 3 uses
  %i.ce = fsub float %.sroa.12.8.vec.extract.1, %i.cb ; 3 uses
  %.sroa.0.0.vec.insert.i77.1 = insertelement <2 x float> poison, float %i.cc, i64 0
  %.sroa.0.4.vec.insert.i78.1 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77.1, float %i.cd, i64 1
  %.sroa.3.12.vec.insert.i79.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ce, i64 0
  %.pre247 = fsub float %i.cc, %i.be
  %.pre249 = fsub float %i.cd, %i.bf
  %.pre252 = fsub float %i.ce, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi253 = phi float [ %.pre252, %bb.d ], [ %i.bw, %bb.c ]
  %.sroa.12.8.vec.extract.2.pre-phi = phi float [ %i.ce, %bb.d ], [ %.sroa.12.8.vec.extract.1, %bb.c ] ; 2 uses
  %.pre-phi250 = phi float [ %.pre249, %bb.d ], [ %i.bv, %bb.c ]
  %.sroa.0167.4.vec.extract.2.pre-phi = phi float [ %i.cd, %bb.d ], [ %.sroa.0167.4.vec.extract.1, %bb.c ] ; 2 uses
  %.pre-phi = phi float [ %.pre247, %bb.d ], [ %i.bu, %bb.c ]
  %.sroa.0167.0.vec.extract.2.pre-phi = phi float [ %i.cc, %bb.d ], [ %.sroa.0167.0.vec.extract.1, %bb.c ] ; 2 uses
  %.sroa.0167.1.1 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78.1, %bb.d ], [ %.sroa.0167.1, %bb.c ]
  %.sroa.12.1.1 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79.1, %bb.d ], [ %.sroa.12.1, %bb.c ]
  %.1.1 = phi i1 [ true, %bb.d ], [ %i.bn, %bb.c ]
  %i.cf = fmul float %.pre-phi250, 0.000000e+00
  %i.cg = tail call float @llvm.fmuladd.f32(float %.pre-phi, float 0.000000e+00, float %i.cf)
  %i.ch = fsub float %i.cg, %.pre-phi253          ; 3 uses
  %i.ci = fcmp ogt float %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cj = fmul float %i.ch, 0.000000e+00          ; 2 uses
  %i.ck = fsub float %.sroa.0167.0.vec.extract.2.pre-phi, %i.cj ; 2 uses
  %i.cl = fsub float %.sroa.0167.4.vec.extract.2.pre-phi, %i.cj ; 2 uses
  %i.cm = fadd float %.sroa.12.8.vec.extract.2.pre-phi, %i.ch ; 2 uses
  %.sroa.0.0.vec.insert.i77.2 = insertelement <2 x float> poison, float %i.ck, i64 0
  %.sroa.0.4.vec.insert.i78.2 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77.2, float %i.cl, i64 1
  %.sroa.3.12.vec.insert.i79.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cm, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.12.8.vec.extract.3.pre-phi = phi float [ %i.cm, %bb.f ], [ %.sroa.12.8.vec.extract.2.pre-phi, %bb.e ] ; 3 uses
  %.sroa.0167.4.vec.extract.3.pre-phi = phi float [ %i.cl, %bb.f ], [ %.sroa.0167.4.vec.extract.2.pre-phi, %bb.e ] ; 3 uses
  %.sroa.0167.0.vec.extract.3.pre-phi = phi float [ %i.ck, %bb.f ], [ %.sroa.0167.0.vec.extract.2.pre-phi, %bb.e ] ; 3 uses
  %.sroa.0167.1.2 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78.2, %bb.f ], [ %.sroa.0167.1.1, %bb.e ]
  %.sroa.12.1.2 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79.2, %bb.f ], [ %.sroa.12.1.1, %bb.e ]
  %.1.2 = phi i1 [ true, %bb.f ], [ %.1.1, %bb.e ]
  %i.cn = fsub float %.sroa.0167.0.vec.extract.3.pre-phi, %i.q ; 2 uses
  %i.co = fsub float %.sroa.0167.4.vec.extract.3.pre-phi, %i.t ; 2 uses
  %i.cp = fsub float %.sroa.12.8.vec.extract.3.pre-phi, %i.w ; 2 uses
  %i.cq = fmul float %i.co, 0.000000e+00
  %i.cr = fadd float %i.cn, %i.cq
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float 0.000000e+00, float %i.cr) ; 3 uses
  %i.ct = fcmp ogt float %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cu = fmul float %i.cs, 0.000000e+00          ; 2 uses
  %i.cv = fsub float %.sroa.0167.0.vec.extract.3.pre-phi, %i.cs ; 3 uses
  %i.cw = fsub float %.sroa.0167.4.vec.extract.3.pre-phi, %i.cu ; 3 uses
  %i.cx = fsub float %.sroa.12.8.vec.extract.3.pre-phi, %i.cu ; 3 uses
  %.sroa.0.0.vec.insert.i77.3 = insertelement <2 x float> poison, float %i.cv, i64 0
  %.sroa.0.4.vec.insert.i78.3 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77.3, float %i.cw, i64 1
  %.sroa.3.12.vec.insert.i79.3 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cx, i64 0
  %.pre258 = fsub float %i.cv, %i.q
  %.pre261 = fsub float %i.cw, %i.t
  %.pre264 = fsub float %i.cx, %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi265 = phi float [ %.pre264, %bb.h ], [ %i.cp, %bb.g ] ; 2 uses
  %.sroa.12.8.vec.extract.4.pre-phi = phi float [ %i.cx, %bb.h ], [ %.sroa.12.8.vec.extract.3.pre-phi, %bb.g ] ; 2 uses
  %.pre-phi262 = phi float [ %.pre261, %bb.h ], [ %i.co, %bb.g ] ; 2 uses
  %.sroa.0167.4.vec.extract.4.pre-phi = phi float [ %i.cw, %bb.h ], [ %.sroa.0167.4.vec.extract.3.pre-phi, %bb.g ] ; 2 uses
  %.pre-phi259 = phi float [ %.pre258, %bb.h ], [ %i.cn, %bb.g ] ; 2 uses
  %.sroa.0167.0.vec.extract.4.pre-phi = phi float [ %i.cv, %bb.h ], [ %.sroa.0167.0.vec.extract.3.pre-phi, %bb.g ] ; 2 uses
  %.sroa.0167.1.3 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78.3, %bb.h ], [ %.sroa.0167.1.2, %bb.g ]
  %.sroa.12.1.3 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79.3, %bb.h ], [ %.sroa.12.1.2, %bb.g ]
  %.1.3 = phi i1 [ true, %bb.h ], [ %.1.2, %bb.g ]
  %i.cy = tail call float @llvm.fmuladd.f32(float %.pre-phi259, float 0.000000e+00, float %.pre-phi262)
  %i.cz = tail call noundef float @llvm.fmuladd.f32(float %.pre-phi265, float 0.000000e+00, float %i.cy) ; 3 uses
  %i.da = fcmp ogt float %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.db = fmul float %i.cz, 0.000000e+00          ; 2 uses
  %i.dc = fsub float %.sroa.0167.0.vec.extract.4.pre-phi, %i.db ; 3 uses
  %i.dd = fsub float %.sroa.0167.4.vec.extract.4.pre-phi, %i.cz ; 3 uses
  %i.de = fsub float %.sroa.12.8.vec.extract.4.pre-phi, %i.db ; 3 uses
  %.sroa.0.0.vec.insert.i77.4 = insertelement <2 x float> poison, float %i.dc, i64 0
  %.sroa.0.4.vec.insert.i78.4 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77.4, float %i.dd, i64 1
  %.sroa.3.12.vec.insert.i79.4 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.de, i64 0
  %.pre267 = fsub float %i.dc, %i.q
  %.pre270 = fsub float %i.dd, %i.t
  %.pre273 = fsub float %i.de, %i.w
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi274 = phi float [ %.pre273, %bb.j ], [ %.pre-phi265, %bb.i ]
  %.sroa.12.8.vec.extract.5.pre-phi = phi float [ %i.de, %bb.j ], [ %.sroa.12.8.vec.extract.4.pre-phi, %bb.i ]
  %.pre-phi271 = phi float [ %.pre270, %bb.j ], [ %.pre-phi262, %bb.i ]
  %.sroa.0167.4.vec.extract.5.pre-phi = phi float [ %i.dd, %bb.j ], [ %.sroa.0167.4.vec.extract.4.pre-phi, %bb.i ]
  %.pre-phi268 = phi float [ %.pre267, %bb.j ], [ %.pre-phi259, %bb.i ]
  %.sroa.0167.0.vec.extract.5.pre-phi = phi float [ %i.dc, %bb.j ], [ %.sroa.0167.0.vec.extract.4.pre-phi, %bb.i ]
  %.sroa.0167.1.4 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78.4, %bb.j ], [ %.sroa.0167.1.3, %bb.i ]
  %.sroa.12.1.4 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79.4, %bb.j ], [ %.sroa.12.1.3, %bb.i ]
  %.1.4 = phi i1 [ true, %bb.j ], [ %.1.3, %bb.i ]
  %i.df = fmul float %.pre-phi271, 0.000000e+00
  %i.dg = tail call float @llvm.fmuladd.f32(float %.pre-phi268, float 0.000000e+00, float %i.df)
  %i.dh = fadd float %.pre-phi274, %i.dg          ; 3 uses
  %i.di = fcmp ogt float %i.dh, 0.000000e+00
  br i1 %i.di, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.dj = fmul float %i.dh, 0.000000e+00          ; 2 uses
  %i.dk = fsub float %.sroa.0167.0.vec.extract.5.pre-phi, %i.dj
  %i.dl = fsub float %.sroa.0167.4.vec.extract.5.pre-phi, %i.dj
  %i.dm = fsub float %.sroa.12.8.vec.extract.5.pre-phi, %i.dh
  %.sroa.0.0.vec.insert.i77.5 = insertelement <2 x float> poison, float %i.dk, i64 0
  %.sroa.0.4.vec.insert.i78.5 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77.5, float %i.dl, i64 1
  %.sroa.3.12.vec.insert.i79.5 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dm, i64 0
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %.1.4, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.thread, %bb.l
  %.sroa.12.1.5290 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79.5, %.thread ], [ %.sroa.12.1.4, %bb.l ]
  %.sroa.0167.1.5289 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78.5, %.thread ], [ %.sroa.0167.1.4, %bb.l ] ; 2 uses
  %.sroa.12.8.vec.extract183 = extractelement <2 x float> %.sroa.12.1.5290, i64 0 ; 2 uses
  %i.dn = fsub float %i.ba, %.sroa.12.8.vec.extract183 ; 3 uses
  %i.do = fsub <2 x float> %i.au, %.sroa.0167.1.5289 ; 4 uses
  %foldExtExtBinop292 = fmul <2 x float> %i.do, %i.do
  %i.dp = extractelement <2 x float> %foldExtExtBinop292, i64 1
  %i.dq = extractelement <2 x float> %i.do, i64 0 ; 2 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.dp)
  %i.ds = tail call noundef float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %i.dr)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ds)
  %i.dt = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.du = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x float> %i.do, %i.dv           ; 4 uses
  %i.dx = fmul float %i.dn, %i.dt                 ; 3 uses
  %i.dy = fmul <2 x float> %i.bc, %i.dw
  %i.dz = fmul float %i.m, %i.dx
  %i.ea = fadd <2 x float> %.sroa.0167.1.5289, %i.dy
  %i.eb = fadd float %.sroa.12.8.vec.extract183, %i.dz
  %.sroa.3.12.vec.insert.i94 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eb, i64 0
  store <2 x float> %i.ea, ptr %2, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i94, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !31
  %i.ec = extractelement <2 x float> %i.dw, i64 0
  %i.ed = extractelement <2 x float> %i.dw, i64 1
  %i.ee = fmul float %5, %i.dx
  %i.ef = insertelement <2 x float> poison, float %5, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %i.eg, %i.dw
  %i.ei = fsub <2 x float> %i.au, %i.eh           ; 3 uses
  %i.ej = fsub float %i.ba, %i.ee                 ; 2 uses
  %.sroa.3.12.vec.insert.i104 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ej, i64 0
  store <2 x float> %i.ei, ptr %3, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i104, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !31
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !33 ; 3 uses
  %i.em = load float, ptr %2, align 4, !tbaa !33  ; 3 uses
  %i.en = load float, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !33 ; 3 uses
  %i.eo = extractelement <2 x float> %i.ei, i64 0
  %i.ep = fsub float %i.eo, %i.em
  %i.eq = extractelement <2 x float> %i.ei, i64 1
  %i.er = fsub float %i.eq, %i.el
  %i.es = fsub float %i.ej, %i.en
  %i.et = fmul float %i.ed, %i.er
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.ec, float %i.et)
  %i.ev = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %i.dx, float %i.eu)
  %i.ew = fcmp ogt float %i.ev, 0.000000e+00
  br i1 %i.ew, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ey = load float, ptr %i.ad, align 8, !tbaa !33
  %i.ez = load float, ptr %i.ae, align 8, !tbaa !33
  %i.fa = load <2 x float>, ptr %i.x, align 8, !tbaa !33 ; 2 uses
  %7 = load <2 x float>, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  %8 = insertelement <2 x float> poison, float %i.el, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = shufflevector <2 x float> %i.fa, <2 x float> %7, <2 x i32> <i32 1, i32 3>
  %11 = fmul <2 x float> %9, %10
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> %7, <2 x i32> <i32 0, i32 2>
  %i.fc = insertelement <2 x float> poison, float %i.em, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.fd, <2 x float> %11)
  %i.ff = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fg = insertelement <2 x float> %i.ff, float %i.ez, i64 1
  %i.fh = insertelement <2 x float> poison, float %i.en, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.fi, <2 x float> %i.fe)
  %i.fk = load <2 x float>, ptr %i.y, align 8, !tbaa !33
  %i.fl = fadd <2 x float> %i.fk, %i.fj
  %i.fm = load float, ptr %i.ab, align 8, !tbaa !33
  %i.fn = load float, ptr %i.ac, align 4, !tbaa !33
  %i.fo = fmul float %i.el, %i.fn
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.em, float %i.fo)
  %i.fq = load float, ptr %i.af, align 8, !tbaa !33
  %i.fr = tail call noundef float @llvm.fmuladd.f32(float %i.fq, float %i.en, float %i.fp)
  %i.fs = load float, ptr %i.z, align 8, !tbaa !33
  %i.ft = fadd float %i.fs, %i.fr
  %.sroa.3.12.vec.insert.i114 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ft, i64 0
  store <2 x float> %i.fl, ptr %2, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i114, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !31
  %i.fu = load float, ptr %i.ad, align 8, !tbaa !33
  %i.fv = load float, ptr %i.ae, align 8, !tbaa !33
  %i.fw = load <2 x float>, ptr %i.x, align 8, !tbaa !33 ; 2 uses
  %i.fx = load float, ptr %i.ex, align 4, !tbaa !33 ; 2 uses
  %i.fy = load float, ptr %3, align 4, !tbaa !33  ; 2 uses
  %i.fz = load float, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !33 ; 2 uses
  %i.ga = load <2 x float>, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  %12 = insertelement <2 x float> poison, float %i.fx, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = shufflevector <2 x float> %i.fw, <2 x float> %i.ga, <2 x i32> <i32 1, i32 3>
  %15 = fmul <2 x float> %13, %14
  %16 = shufflevector <2 x float> %i.fw, <2 x float> %i.ga, <2 x i32> <i32 0, i32 2>
  %i.gb = insertelement <2 x float> poison, float %i.fy, i64 0
  %17 = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %17, <2 x float> %15)
  %i.gd = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.fv, i64 1
  %i.gf = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gg, <2 x float> %i.gc)
  %i.gi = load <2 x float>, ptr %i.y, align 8, !tbaa !33
  %i.gj = fadd <2 x float> %i.gh, %i.gi           ; 3 uses
  %i.gk = load float, ptr %i.ab, align 8, !tbaa !33
  %i.gl = load float, ptr %i.ac, align 4, !tbaa !33
  %i.gm = fmul float %i.fx, %i.gl
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.fy, float %i.gm)
  %i.go = load float, ptr %i.af, align 8, !tbaa !33
  %i.gp = tail call noundef float @llvm.fmuladd.f32(float %i.go, float %i.fz, float %i.gn)
  %i.gq = load float, ptr %i.z, align 8, !tbaa !33
  %i.gr = fadd float %i.gq, %i.gp                 ; 2 uses
  %.sroa.3.12.vec.insert.i119 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gr, i64 0
  store <2 x float> %i.gj, ptr %3, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i119, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !31
  %i.gs = load float, ptr %2, align 4, !tbaa !33
  %i.gt = extractelement <2 x float> %i.gj, i64 0
  %i.gu = fsub float %i.gs, %i.gt                 ; 2 uses
  %i.gv = load float, ptr %i.ek, align 4, !tbaa !33
  %i.gw = extractelement <2 x float> %i.gj, i64 1
  %i.gx = fsub float %i.gv, %i.gw                 ; 2 uses
  %i.gy = load float, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !33
  %i.gz = fsub float %i.gy, %i.gr                 ; 2 uses
  %i.ha = fmul float %i.gx, %i.gx
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.gu, float %i.gu, float %i.ha)
  %i.hc = tail call noundef float @llvm.fmuladd.f32(float %i.gz, float %i.gz, float %i.hb) ; 2 uses
  %i.hd = fcmp ogt float %i.hc, f0x34000000
  br i1 %i.hd, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %sqrt = tail call float @llvm.sqrt.f32(float %i.hc)
  %i.he = fneg float %sqrt
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.hf = call noundef float @_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.i) ; 2 uses
  %i.hg = fcmp ugt float %i.hf, 0.000000e+00
  br i1 %i.hg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hh = fsub float %i.hf, %i.m
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.n, %bb.o, %bb.m, %bb.q
  %.0 = phi float [ 1.000000e+07, %bb.n ], [ 1.000000e+00, %bb.m ], [ %i.hh, %bb.q ], [ %i.he, %bb.o ], [ 1.000000e+00, %bb.p ]
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
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.j = load float, ptr %i.g, align 4, !tbaa !33, !noalias !49
  %i.k = load float, ptr %i.h, align 4, !tbaa !33, !noalias !49
  %i.l = load float, ptr %i.i, align 4, !tbaa !33, !noalias !49
  %i.m = load <2 x float>, ptr %6, align 4        ; 4 uses
  %i.n = load <2 x float>, ptr %7, align 4        ; 3 uses
  %i.o = load <3 x float>, ptr %4, align 4, !tbaa !33
  %i.p = load <3 x float>, ptr %i.b, align 4, !tbaa !33
  %i.q = fsub <3 x float> %i.o, %i.p              ; 6 uses
  %i.r = load <2 x float>, ptr %i.a, align 4, !tbaa !33, !noalias !49
  %i.s = load <2 x float>, ptr %i.d, align 4, !tbaa !33, !noalias !49
  %i.t = load <2 x float>, ptr %i.e, align 4, !tbaa !33, !noalias !49
  %i.u = shufflevector <3 x float> %i.q, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = shufflevector <3 x float> %i.q, <3 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.w, <2 x float> %i.v)
  %i.y = shufflevector <3 x float> %i.q, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.y, <2 x float> %i.x) ; 4 uses
  %i.aa = extractelement <3 x float> %i.q, i64 1
  %i.ab = fmul float %i.aa, %i.k
  %i.ac = extractelement <3 x float> %i.q, i64 0
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.j, float %i.ac, float %i.ab)
  %i.ae = extractelement <3 x float> %i.q, i64 2
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.l, float %i.ae, float %i.ad) ; 4 uses
  %i.ag = fsub float %i.af, %.sroa.6174.0.copyload ; 3 uses
  %i.ah = fsub <2 x float> %i.z, %i.m             ; 3 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 1
  %i.aj = fmul float %i.ai, 0.000000e+00          ; 2 uses
  %i.ak = extractelement <2 x float> %i.ah, i64 0 ; 3 uses
  %i.al = fsub float %i.aj, %i.ak
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float 0.000000e+00, float %i.al)
  %i.an = fsub float %i.am, %5                    ; 3 uses
  %i.ao = fcmp ule float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.ap = fcmp ogt float %i.an, -1.000000e+07
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi float [ %i.an, %bb.c ], [ -1.000000e+07, %bb.b ] ; 2 uses
  %.sroa.0124.1 = phi <2 x float> [ <float -1.000000e+00, float 0.000000e+00>, %bb.c ], [ zeroinitializer, %bb.b ]
  %.sroa.7.1 = phi float [ %.sroa.6174.0.copyload, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.aq = phi <2 x float> [ %i.m, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.ar = extractelement <2 x float> %i.ah, i64 1
  %i.as = fneg float %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ak, float 0.000000e+00, float %i.as)
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float 0.000000e+00, float %i.at)
  %i.av = fsub float %i.au, %5                    ; 3 uses
  %i.aw = fcmp ule float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ax = fcmp ogt float %i.av, %.1
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi float [ %i.av, %bb.f ], [ %.1, %bb.e ] ; 2 uses
  %.sroa.0124.1.1 = phi <2 x float> [ <float 0.000000e+00, float -1.000000e+00>, %bb.f ], [ %.sroa.0124.1, %bb.e ]
  %.sroa.7.1.1 = phi float [ %.sroa.6174.0.copyload, %bb.f ], [ %.sroa.7.1, %bb.e ]
  %i.ay = phi <2 x float> [ %i.m, %bb.f ], [ %i.aq, %bb.e ]
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ak, float 0.000000e+00, float %i.aj)
  %i.ba = fsub float %i.az, %i.ag
  %i.bb = fsub float %i.ba, %5                    ; 3 uses
  %i.bc = fcmp ule float %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bd = fcmp ogt float %i.bb, %.1.1
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.2 = phi float [ %i.bb, %bb.i ], [ %.1.1, %bb.h ] ; 2 uses
  %.sroa.0124.1.2 = phi <2 x float> [ zeroinitializer, %bb.i ], [ %.sroa.0124.1.1, %bb.h ]
  %.sroa.12.1.2 = phi <2 x float> [ <float -1.000000e+00, float 0.000000e+00>, %bb.i ], [ zeroinitializer, %bb.h ]
  %.sroa.7.1.2 = phi float [ %.sroa.6174.0.copyload, %bb.i ], [ %.sroa.7.1.1, %bb.h ]
  %i.be = phi <2 x float> [ %i.m, %bb.i ], [ %i.ay, %bb.h ]
  %i.bf = fsub <2 x float> %i.z, %i.n             ; 3 uses
  %i.bg = fsub float %i.af, %.sroa.13.16.copyload ; 4 uses
  %i.bh = extractelement <2 x float> %i.bf, i64 1 ; 2 uses
  %i.bi = fmul float %i.bh, 0.000000e+00          ; 2 uses
  %i.bj = extractelement <2 x float> %i.bf, i64 0 ; 3 uses
  %i.bk = fadd float %i.bj, %i.bi
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float 0.000000e+00, float %i.bk)
  %i.bm = fsub float %i.bl, %5                    ; 3 uses
  %i.bn = fcmp ule float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bo = fcmp ogt float %i.bm, %.1.2
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.3 = phi float [ %i.bm, %bb.l ], [ %.1.2, %bb.k ] ; 2 uses
  %.sroa.0124.1.3 = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.l ], [ %.sroa.0124.1.2, %bb.k ]
  %.sroa.12.1.3 = phi <2 x float> [ zeroinitializer, %bb.l ], [ %.sroa.12.1.2, %bb.k ]
  %.sroa.7.1.3 = phi float [ %.sroa.13.16.copyload, %bb.l ], [ %.sroa.7.1.2, %bb.k ]
  %i.bp = phi <2 x float> [ %i.n, %bb.l ], [ %i.be, %bb.k ]
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bj, float 0.000000e+00, float %i.bh)
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float 0.000000e+00, float %i.bq)
  %i.bs = fsub float %i.br, %5                    ; 3 uses
  %i.bt = fcmp ule float %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.bu = fcmp ogt float %i.bs, %.1.3
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.4 = phi float [ %i.bs, %bb.o ], [ %.1.3, %bb.n ] ; 2 uses
  %.sroa.0124.1.4 = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.o ], [ %.sroa.0124.1.3, %bb.n ]
  %.sroa.12.1.4 = phi <2 x float> [ zeroinitializer, %bb.o ], [ %.sroa.12.1.3, %bb.n ]
  %.sroa.7.1.4 = phi float [ %.sroa.13.16.copyload, %bb.o ], [ %.sroa.7.1.3, %bb.n ]
  %i.bv = phi <2 x float> [ %i.n, %bb.o ], [ %i.bp, %bb.n ]
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bj, float 0.000000e+00, float %i.bi)
  %i.bx = fadd float %i.bg, %i.bw
  %i.by = fsub float %i.bx, %5                    ; 3 uses
  %i.bz = fcmp ule float %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ca = fcmp ogt float %i.by, %.1.4
  br i1 %i.ca, label %.critedge46, label %..critedge46_crit_edge

..critedge46_crit_edge:                           ; preds = %bb.q
  %i.cb = fsub <2 x float> %i.z, %i.bv
  %.pre230 = fsub float %i.af, %.sroa.7.1.4
  br label %.critedge46

.critedge46:                                      ; preds = %bb.q, %..critedge46_crit_edge
  %.pre-phi231 = phi float [ %.pre230, %..critedge46_crit_edge ], [ %i.bg, %bb.q ]
  %.1.5 = phi float [ %.1.4, %..critedge46_crit_edge ], [ %i.by, %bb.q ] ; 3 uses
  %.sroa.0124.1.5 = phi <2 x float> [ %.sroa.0124.1.4, %..critedge46_crit_edge ], [ zeroinitializer, %bb.q ] ; 4 uses
  %.sroa.12.1.5 = phi <2 x float> [ %.sroa.12.1.4, %..critedge46_crit_edge ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.q ]
  %i.cc = phi <2 x float> [ %i.cb, %..critedge46_crit_edge ], [ %i.bf, %bb.q ] ; 2 uses
  %.sroa.0124.0.vec.extract = extractelement <2 x float> %.sroa.0124.1.5, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.0124.1.5, %i.cc
  %i.cd = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ce = extractelement <2 x float> %i.cc, i64 0
  %i.cf = tail call float @llvm.fmuladd.f32(float %.sroa.0124.0.vec.extract, float %i.ce, float %i.cd)
  %.sroa.12.8.vec.extract = extractelement <2 x float> %.sroa.12.1.5, i64 0 ; 3 uses
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %.sroa.12.8.vec.extract, float %.pre-phi231, float %i.cf) ; 2 uses
  %i.ch = fmul float %.sroa.12.8.vec.extract, %i.cg
  %i.ci = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %.sroa.0124.1.5, %i.cj
  %i.cl = fsub <2 x float> %i.z, %i.ck            ; 2 uses
  %i.cm = fsub float %i.af, %i.ch                 ; 2 uses
  %.sroa.3.12.vec.insert.i59 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cm, i64 0
  store <2 x float> %i.cl, ptr %2, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i59, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !31
  %i.cn = fmul float %.1.5, %.sroa.12.8.vec.extract
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cp = insertelement <2 x float> poison, float %.1.5, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.cq, %.sroa.0124.1.5
  %i.cs = fadd <2 x float> %i.cr, %i.cl
  %i.ct = fadd float %i.cn, %i.cm
  %.sroa.3.12.vec.insert.i69 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ct, i64 0
  store <2 x float> %i.cs, ptr %3, align 4
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i69, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !31
  %i.cu = load float, ptr %i.g, align 4, !tbaa !33
  %i.cv = load float, ptr %i.h, align 4, !tbaa !33
  %i.cw = load <2 x float>, ptr %i.a, align 4, !tbaa !33 ; 2 uses
  %i.cx = load float, ptr %i.co, align 4, !tbaa !33 ; 2 uses
  %i.cy = load float, ptr %2, align 4, !tbaa !33  ; 2 uses
  %i.cz = load float, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !33 ; 2 uses
  %i.da = load <2 x float>, ptr %i.d, align 4, !tbaa !33 ; 2 uses
  %8 = insertelement <2 x float> poison, float %i.cx, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = shufflevector <2 x float> %i.cw, <2 x float> %i.da, <2 x i32> <i32 1, i32 3>
  %11 = fmul <2 x float> %9, %10
  %12 = shufflevector <2 x float> %i.cw, <2 x float> %i.da, <2 x i32> <i32 0, i32 2>
  %i.db = insertelement <2 x float> poison, float %i.cy, i64 0
  %13 = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %13, <2 x float> %11)
  %i.dd = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.cv, i64 1
  %i.df = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.dg, <2 x float> %i.dc)
  %i.di = load <2 x float>, ptr %i.b, align 4, !tbaa !33
  %i.dj = fadd <2 x float> %i.dh, %i.di
  %i.dk = load float, ptr %i.e, align 4, !tbaa !33
  %i.dl = load float, ptr %i.f, align 4, !tbaa !33
  %i.dm = fmul float %i.cx, %i.dl
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.cy, float %i.dm)
  %i.do = load float, ptr %i.i, align 4, !tbaa !33
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %i.do, float %i.cz, float %i.dn)
  %i.dq = load float, ptr %i.c, align 4, !tbaa !33
  %i.dr = fadd float %i.dq, %i.dp
  %.sroa.3.12.vec.insert.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dr, i64 0
  store <2 x float> %i.dj, ptr %2, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i74, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dt = load float, ptr %i.g, align 4, !tbaa !33
  %i.du = load float, ptr %i.h, align 4, !tbaa !33
  %i.dv = load <2 x float>, ptr %i.a, align 4, !tbaa !33 ; 2 uses
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !33 ; 2 uses
  %i.dx = load float, ptr %3, align 4, !tbaa !33  ; 2 uses
  %i.dy = load float, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !33 ; 2 uses
  %i.dz = load <2 x float>, ptr %i.d, align 4, !tbaa !33 ; 2 uses
  %14 = insertelement <2 x float> poison, float %i.dw, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = shufflevector <2 x float> %i.dv, <2 x float> %i.dz, <2 x i32> <i32 1, i32 3>
  %17 = fmul <2 x float> %15, %16
  %18 = shufflevector <2 x float> %i.dv, <2 x float> %i.dz, <2 x i32> <i32 0, i32 2>
  %i.ea = insertelement <2 x float> poison, float %i.dx, i64 0
  %19 = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %19, <2 x float> %17)
  %i.ec = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %i.du, i64 1
  %i.ee = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ef, <2 x float> %i.eb)
  %i.eh = load <2 x float>, ptr %i.b, align 4, !tbaa !33
  %i.ei = fadd <2 x float> %i.eg, %i.eh
  %i.ej = load float, ptr %i.e, align 4, !tbaa !33
  %i.ek = load float, ptr %i.f, align 4, !tbaa !33
  %i.el = fmul float %i.dw, %i.ek
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.dx, float %i.el)
  %i.en = load float, ptr %i.i, align 4, !tbaa !33
  %i.eo = tail call noundef float @llvm.fmuladd.f32(float %i.en, float %i.dy, float %i.em)
  %i.ep = load float, ptr %i.c, align 4, !tbaa !33
  %i.eq = fadd float %i.ep, %i.eo
  %.sroa.3.12.vec.insert.i79 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eq, i64 0
  store <2 x float> %i.ei, ptr %3, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i79, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !31
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.d, %bb.g, %bb.j, %bb.m, %bb.p, %.critedge46
  %.3 = phi float [ %.1.5, %.critedge46 ], [ 1.000000e+00, %bb.p ], [ 1.000000e+00, %bb.m ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %bb.g ], [ 1.000000e+00, %bb.d ], [ 1.000000e+00, %bb.a ]
  ret float %.3
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !21
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !57   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !58
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.k = shl nsw i32 %i.g, 1
  %i.l = select i1 %.not.i.i, i32 1, i32 %i.k     ; 4 uses
  %i.m = icmp slt i32 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !57
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %.pre.i, %bb.e ], [ %i.g, %bb.d ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ] ; 8 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59   ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %.0.i.i.i8 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.v = sub i64 %i.u, %.0.i.i.i8
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond10 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond10, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !tbaa !60
  %wide.load9 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x ptr> %wide.load, ptr %i.w, align 8, !tbaa !60
  store <2 x ptr> %wide.load9, ptr %i.z, align 8, !tbaa !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.prol
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !60
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !51

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !60
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !60
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !60
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.2
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !60
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !52

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i8, ptr %i.as, align 8, !tbaa !64, !range !21, !noundef !22
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.t)
  %.pre2.pre.pre.i = load i32, ptr %i.f, align 4, !tbaa !57
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.f ], [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.av, align 8, !tbaa !64
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !59
  store i32 %i.l, ptr %i.h, align 8, !tbaa !58
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !60
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
  %i.aw = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.ax = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !59
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !60
  %i.bc = add nsw i32 %i.ax, 1
  store i32 %i.bc, ptr %i.f, align 4, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit, %bb.a
  ret void
}

declare void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1
end_hunk_0
