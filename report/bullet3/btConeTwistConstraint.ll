Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConeTwistConstraint?download=true
inline.NumInlined: 920
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %1, align 4, !tbaa !28   ; 3 uses
  %i.k = load float, ptr %i.h, align 4, !tbaa !28 ; 3 uses
  %i.l = load float, ptr %i.i, align 4, !tbaa !28 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !11
  %i.m = fmul float %i.k, %i.k
  %i.n = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.m)
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.n)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.o)
  %i.p = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.q = fmul float %i.j, %i.p
  store float %i.q, ptr %3, align 4, !tbaa !28
  %i.r = fmul float %i.k, %i.p                    ; 4 uses
  store float %i.r, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !28
  %i.s = fmul float %i.l, %i.p                    ; 3 uses
  store float %i.s, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.u = load float, ptr %i.t, align 4, !tbaa !43 ; 2 uses
  store float %i.u, ptr %4, align 4, !tbaa !28
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.r)
  %i.w = fcmp ogt float %i.v, f0x34000000
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = fmul float %i.s, %i.s
  %i.y = fmul nnan float %i.r, %i.r
  %i.z = fdiv float %i.x, %i.y                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ab = load <4 x float>, ptr %i.aa, align 8
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ad = insertelement <2 x float> %i.ac, float %i.u, i64 1 ; 2 uses
  %i.ae = fmul <2 x float> %i.ad, %i.ad
  %i.af = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.z, i64 1
  %i.ag = fdiv <2 x float> %i.af, %i.ae
  %i.ah = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ag)
  %i.ai = fadd float %i.z, 1.000000e+00
  %i.aj = fdiv float %i.ai, %i.ah
  %sqrt = tail call float @llvm.sqrt.f32(float %i.aj)
  store float %sqrt, ptr %4, align 4, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(632) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !28 ; 6 uses
  %i.c = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.d = fcmp ogt float %i.c, f0x34000000
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !28 ; 2 uses
  %i.g = fneg float %i.f
  %i.h = fdiv float %i.g, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.j = load float, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.l = load float, ptr %i.k, align 4, !tbaa !43
  %i.m = fdiv float %i.j, %i.l
  %i.n = fmul float %i.h, %i.m
  %i.o = fcmp olt float %i.f, 0.000000e+00
  %i.p = fmul float %i.b, %i.n
  %i.q = tail call noundef float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.r = fneg float %i.q
  %.0 = select i1 %i.o, float %i.q, float %i.r    ; 3 uses
  %i.s = fneg float %.0
  %i.t = load float, ptr %1, align 4, !tbaa !28   ; 3 uses
  %i.u = fmul nnan float %i.b, %i.b
  %i.v = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.u)
  %i.w = tail call float @llvm.fmuladd.f32(float %.0, float %.0, float %i.v)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.w)
  %i.x = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.y = fmul float %i.t, %i.x
  store float %i.y, ptr %1, align 4, !tbaa !28
  %i.z = fmul float %i.b, %i.x
  store float %i.z, ptr %i.a, align 4, !tbaa !28
  %i.aa = fmul float %i.x, %i.s
  store float %i.aa, ptr %i.e, align 4, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(632) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.013.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.614.0.copyload = load <2 x float>, ptr %.sroa.614.0..sroa_idx, align 4 ; 2 uses
  %i.a = extractelement <2 x float> %.sroa.614.0.copyload, i64 1 ; 2 uses
  %i.b = fcmp olt float %i.a, -1.000000e+00
  %spec.store.select.i.i = select i1 %i.b, float -1.000000e+00, float %i.a ; 2 uses
  %i.c = fcmp ogt float %spec.store.select.i.i, 1.000000e+00
  %spec.store.select1.i.i = select i1 %i.c, float 1.000000e+00, float %spec.store.select.i.i
  %i.d = tail call noundef float @acosf(float noundef %spec.store.select1.i.i) #21
  %i.e = fmul float %i.d, 2.000000e+00            ; 2 uses
  store float %i.e, ptr %2, align 4, !tbaa !28
  %i.f = fcmp ogt float %i.e, f0x40490FDB
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !28
  %i.h = fneg <2 x float> %i.g
  %i.i = load <2 x float>, ptr %.sroa.614.0..sroa_idx, align 4, !tbaa !28
  %i.j = fneg <2 x float> %i.i                    ; 2 uses
  %i.k = extractelement <2 x float> %i.j, i64 1   ; 2 uses
  %i.l = fcmp olt float %i.k, -1.000000e+00
  %spec.store.select.i.i10 = select i1 %i.l, float -1.000000e+00, float %i.k ; 2 uses
  %i.m = fcmp ogt float %spec.store.select.i.i10, 1.000000e+00
  %spec.store.select1.i.i11 = select i1 %i.m, float 1.000000e+00, float %spec.store.select.i.i10
  %i.n = tail call noundef float @acosf(float noundef %spec.store.select1.i.i11) #21
  %i.o = fmul float %i.n, 2.000000e+00
  store float %i.o, ptr %2, align 4, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.013.0 = phi <2 x float> [ %i.h, %bb.b ], [ %.sroa.013.0.copyload, %bb.a ] ; 5 uses
  %.sroa.614.0 = phi <2 x float> [ %i.j, %bb.b ], [ %.sroa.614.0.copyload, %bb.a ] ; 2 uses
  %i.p = shufflevector <2 x float> %.sroa.013.0, <2 x float> %.sroa.614.0, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.q = insertelement <4 x float> %i.p, float 0.000000e+00, i64 3
  store <4 x float> %i.q, ptr %3, align 4
  %i.r = load float, ptr %2, align 4, !tbaa !28
  %i.s = fcmp ogt float %i.r, f0x34000000
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.614.8.vec.extract = extractelement <2 x float> %.sroa.614.0, i64 0 ; 3 uses
  %.sroa.013.0.vec.extract = extractelement <2 x float> %.sroa.013.0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.013.0, %.sroa.013.0
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.u = tail call float @llvm.fmuladd.f32(float %.sroa.013.0.vec.extract, float %.sroa.013.0.vec.extract, float %i.t)
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %.sroa.614.8.vec.extract, float %.sroa.614.8.vec.extract, float %i.u)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.v)
  %i.w = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %.sroa.013.0, %i.y
  store <2 x float> %i.z, ptr %3, align 4, !tbaa !28
  %i.aa = fmul float %.sroa.614.8.vec.extract, %i.w
  store float %i.aa, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK21btConeTwistConstraint16GetPointForAngleEff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(632) %0, float noundef %1, float noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %1) #21 ; 6 uses
  %i.b = tail call noundef float @sinf(float noundef %1) #21 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.d = load float, ptr %i.c, align 4, !tbaa !43 ; 2 uses
  %i.e = tail call noundef float @llvm.fabs.f32(float %i.a)
  %i.f = fcmp ogt float %i.e, f0x34000000
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = fmul float %i.a, %i.a
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = fmul float %i.b, %i.b
  %i.h = fmul float %i.a, %i.a                    ; 2 uses
  %i.i = fdiv float %i.g, %i.h                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = load float, ptr %i.j, align 8, !tbaa !45
  %i.l = insertelement <2 x float> poison, float %i.d, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.k, i64 1 ; 2 uses
  %i.n = fmul <2 x float> %i.m, %i.m
  %i.o = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.i, i64 0
  %i.p = fdiv <2 x float> %i.o, %i.n
  %i.q = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.p)
  %i.r = fadd float %i.i, 1.000000e+00
  %i.s = fdiv float %i.r, %i.q
  %sqrt = tail call float @llvm.sqrt.f32(float %i.s)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi float [ %.pre, %._crit_edge ], [ %i.h, %bb.b ]
  %.0 = phi float [ %i.d, %._crit_edge ], [ %sqrt, %bb.b ]
  %i.t = fneg float %i.b                          ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %.pre-phi)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.u)
  %i.v = fmul float %.0, 5.000000e-01             ; 2 uses
  %i.w = tail call noundef float @sinf(float noundef %i.v) #21
  %i.x = fdiv float %i.w, %sqrt.i.i.i
  %i.y = tail call noundef float @cosf(float noundef %i.v) #21 ; 5 uses
  %i.z = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
  %i.ac = fmul <2 x float> %i.aa, %i.ab           ; 3 uses
  %i.ad = insertelement <2 x float> poison, float %i.a, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.t, i64 1
  %i.af = fmul <2 x float> %i.ae, %i.aa           ; 2 uses
  %i.ag = insertelement <2 x float> <float 0.000000e+00, float poison>, float %2, i64 1
  %i.ah = fmul <2 x float> %i.af, %i.ag
  %i.ai = extractelement <2 x float> %i.ac, i64 1
  %i.aj = fmul ninf float %i.ai, 0.000000e+00
  %i.ak = fneg <2 x float> %i.ac                  ; 3 uses
  %i.al = insertelement <2 x float> poison, float %i.y, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x float> <float poison, float 0.000000e+00>, float %2, i64 0
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.an, <2 x float> %i.ah)
  %3 = tail call float @llvm.fmuladd.f32(float %i.y, float 0.000000e+00, float %i.aj)
  %i.ap = extractelement <2 x float> %i.af, i64 0 ; 3 uses
  %4 = fneg float %i.ap                           ; 3 uses
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> zeroinitializer, <2 x float> %i.ao) ; 3 uses
  %5 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %3) ; 3 uses
  %i.ar = fmul float %i.ap, -0.000000e+00
  %i.as = extractelement <2 x float> %i.ak, i64 1 ; 3 uses
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %2, float %i.ar)
  %i.au = extractelement <2 x float> %i.ak, i64 0 ; 3 uses
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float 0.000000e+00, float %i.at) ; 3 uses
  %i.aw = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.ax = fmul float %i.y, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.av, float %i.as, float %i.ax)
  %i.az = extractelement <2 x float> %i.aq, i64 1 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.au, float %i.ay)
  %i.bb = tail call float @llvm.fmuladd.f32(float %5, float %i.ap, float %i.ba)
  %6 = fmul float %i.y, %5
  %7 = fmul float %i.y, %i.az
  %8 = tail call float @llvm.fmuladd.f32(float %i.av, float %i.au, float %6)
  %9 = tail call float @llvm.fmuladd.f32(float %i.av, float %4, float %7)
  %10 = tail call float @llvm.fmuladd.f32(float %i.aw, float %4, float %8)
  %11 = tail call float @llvm.fmuladd.f32(float %5, float %i.as, float %9)
  %i.bc = insertelement <2 x float> poison, float %11, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %10, i64 1
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.ac, <2 x float> %i.bd) ; 2 uses
  %.sroa.020.0.vec.insert.i = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bf = shufflevector <2 x float> %.sroa.020.0.vec.insert.i, <2 x float> %i.be, <2 x i32> <i32 0, i32 2>
  %i.bg = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.be, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.bf, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.bg, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21btConeTwistConstraint14setMotorTargetERK12btQuaternion(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %class.btQuaternion, align 8        ; 5 uses
  %3 = alloca %class.btQuaternion, align 8        ; 5 uses
  %4 = alloca %class.btQuaternion, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 388
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %.fca.0.load.i = load <2 x float>, ptr %3, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.021.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0
  %.sroa.021.4.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 1
  %.sroa.522.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 2 uses
  %.sroa.522.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !28 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 324
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.fca.1.gep.i12 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = fneg float %.sroa.021.0.vec.extract
  %i.g = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.h = fneg <2 x float> %i.g
  %i.i = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.j = fneg <2 x float> %i.i                    ; 2 uses
  %i.k = fmul float %i.c, %i.f
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !28 ; 5 uses
  %i.m = load <2 x float>, ptr %i.d, align 4, !tbaa !28 ; 3 uses
  %i.n = insertelement <2 x float> poison, float %i.c, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.o, %i.j
  %i.q = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.r = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.m, <2 x float> %i.p)
  %i.s = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.l, <2 x float> %i.r)
  %i.t = shufflevector <2 x float> %i.m, <2 x float> %i.l, <2 x i32> <i32 1, i32 2>
  %i.u = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.fca.0.load.i, <2 x float> %i.t, <2 x float> %i.s) ; 4 uses
  %i.v = extractelement <2 x float> %i.l, i64 0
  %foldExtExtBinop = fmul <2 x float> %.fca.0.load.i, %i.l
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.x = call float @llvm.fmuladd.f32(float %.sroa.522.12.vec.extract, float %i.c, float %i.w)
  %i.y = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.z = call float @llvm.fmuladd.f32(float %.sroa.021.4.vec.extract, float %i.y, float %i.x)
  %i.aa = extractelement <2 x float> %i.m, i64 1  ; 2 uses
  %i.ab = call float @llvm.fmuladd.f32(float %.sroa.522.8.vec.extract, float %i.aa, float %i.z)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %.fca.0.load.i10 = load <2 x float>, ptr %2, align 8 ; 6 uses
  %.fca.1.load.i13 = load <2 x float>, ptr %.fca.1.gep.i12, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.fca.0.load.i10, i64 0
  %i.ac = fneg <2 x float> %i.u                   ; 2 uses
  %i.ad = extractelement <2 x float> %i.j, i64 0
  %i.ae = call float @llvm.fmuladd.f32(float %.sroa.522.12.vec.extract, float %i.v, float %i.k)
  %i.af = call float @llvm.fmuladd.f32(float %i.ad, float %i.aa, float %i.ae)
  %i.ag = call float @llvm.fmuladd.f32(float %.sroa.522.8.vec.extract, float %i.y, float %i.af) ; 4 uses
  %i.ah = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ai = insertelement <2 x float> %i.ah, float %i.ag, i64 0
  %i.aj = shufflevector <2 x float> %.fca.1.load.i13, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = fmul <2 x float> %i.ai, %i.aj
  %i.al = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %.fca.0.load.i10, <2 x float> %i.ak)
  %i.ao = shufflevector <2 x float> %.fca.1.load.i13, <2 x float> %.fca.0.load.i10, <2 x i32> <i32 0, i32 2>
  %i.ap = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.ao, <2 x float> %i.an)
  %i.aq = insertelement <2 x float> %i.ah, float %i.ag, i64 1
  %i.ar = fneg <2 x float> %i.aq
  %i.as = shufflevector <2 x float> %.fca.0.load.i10, <2 x float> %.fca.1.load.i13, <2 x i32> <i32 1, i32 2>
  %i.at = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.as, <2 x float> %i.ap)
  %i.au = fneg float %.sroa.0.0.vec.extract
  %i.av = fmul float %i.ag, %i.au
  %foldExtExtBinop28 = fmul <2 x float> %i.u, %.fca.1.load.i13
  %i.aw = shufflevector <2 x float> %foldExtExtBinop28, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ax = insertelement <2 x float> %i.aw, float %i.av, i64 1
  %i.ay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %.fca.1.load.i13, <2 x float> %i.ax)
  %i.az = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ba = insertelement <2 x float> %i.az, float %i.ag, i64 0
  %i.bb = shufflevector <2 x float> %.fca.0.load.i10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bb, <2 x float> %i.ay)
  %i.bd = shufflevector <2 x float> %.fca.0.load.i10, <2 x float> %.fca.1.load.i13, <2 x i32> <i32 0, i32 2>
  %i.be = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.bd, <2 x float> %i.bc)
  store <2 x float> %i.at, ptr %4, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.be, ptr %i.bf, align 8
  call void @_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(632) initializes((580, 596)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !28 ; 9 uses
  %i.d = extractelement <2 x float> %i.c, i64 0   ; 2 uses
  %i.e = load <2 x float>, ptr %i.a, align 4, !tbaa !28 ; 9 uses
  %i.f = extractelement <2 x float> %i.e, i64 1   ; 4 uses
  %i.g = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.h = fmul float %i.g, 0.000000e+00
  %i.i = fmul float %i.f, -0.000000e+00
  %i.j = fsub float %i.i, %i.g
  %i.k = extractelement <2 x float> %i.c, i64 1   ; 3 uses
  %i.l = fmul float %i.f, 0.000000e+00
  %i.m = fadd float %i.k, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.d)
  %i.o = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.p = fneg <2 x float> %i.o                    ; 5 uses
  %i.q = fneg float %i.f                          ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.m, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.n, i64 1
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> zeroinitializer, <2 x float> %i.s) ; 4 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.h)
  %i.v = fsub float %i.u, %i.f                    ; 3 uses
  %i.w = extractelement <2 x float> %i.p, i64 0
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float 0.000000e+00, float %i.j) ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.c, %i.t
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.z = tail call float @llvm.fmuladd.f32(float %i.x, float %i.q, float %i.y)
  %i.aa = extractelement <2 x float> %i.p, i64 1
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.v, float %i.aa, float %i.z)
  %i.ac = extractelement <2 x float> %i.t, i64 0
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.d, float %i.ab) ; 3 uses
  %i.ae = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.af = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ag = insertelement <2 x float> %i.af, float %i.v, i64 0
  %i.ah = fmul <2 x float> %i.ae, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.p, <2 x float> %i.ah)
  %i.al = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.am = insertelement <2 x float> %i.al, float %i.q, i64 0
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = insertelement <2 x float> %i.af, float %i.v, i64 1
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.e, <2 x float> %i.an) ; 4 uses
  %i.aq = fmul float %i.ad, 0.000000e+00
  %i.ar = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.as = fadd float %i.ar, %i.aq
  %i.at = extractelement <2 x float> %i.ap, i64 0
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.as) ; 2 uses
  %i.av = fcmp olt float %i.au, f0xBF7FFFFE
  br i1 %i.av, label %_Z15shortestArcQuatRK9btVector3S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aw = fmul float %i.ar, -0.000000e+00
  %i.ax = fadd float %i.ad, %i.aw
  %i.ay = fmul float %i.ad, -0.000000e+00
  %i.az = fadd float %i.au, 1.000000e+00
  %i.ba = fmul float %i.az, 2.000000e+00
  %i.bb = tail call noundef float @sqrtf(float noundef %i.ba) #21 ; 2 uses
  %i.bc = fdiv float 1.000000e+00, %i.bb          ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.be = fneg <2 x float> %i.ap
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <2 x i32> <i32 0, i32 2>
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> zeroinitializer, <2 x float> %i.bf)
  %i.bh = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.bg, %i.bi
  %i.bk = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bb, i64 1
  %i.bm = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.bc, i64 0
  %i.bn = fmul <2 x float> %i.bl, %i.bm
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %bb.a, %bb.b
  %.sroa.022.0.i = phi <2 x float> [ %i.bj, %bb.b ], [ <float -0.000000e+00, float 1.000000e+00>, %bb.a ] ; 6 uses
  %.sroa.528.0.i = phi <2 x float> [ %i.bn, %bb.b ], [ zeroinitializer, %bb.a ] ; 4 uses
  %.sroa.093.0.vec.extract = extractelement <2 x float> %.sroa.022.0.i, i64 0 ; 2 uses
  %foldExtExtBinop143 = fmul <2 x float> %.sroa.022.0.i, %.sroa.022.0.i
  %i.bo = extractelement <2 x float> %foldExtExtBinop143, i64 1
  %i.bp = tail call float @llvm.fmuladd.f32(float %.sroa.093.0.vec.extract, float %.sroa.093.0.vec.extract, float %i.bo)
  %.sroa.15.8.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 0 ; 2 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %.sroa.15.8.vec.extract, float %.sroa.15.8.vec.extract, float %i.bp)
  %.sroa.15.12.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 1 ; 3 uses
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %.sroa.15.12.vec.extract, float %.sroa.15.12.vec.extract, float %i.bq)
  %sqrt.i.i18 = tail call noundef float @llvm.sqrt.f32(float %i.br)
  %i.bs = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = shufflevector <2 x float> %i.e, <2 x float> %i.c, <2 x i32> <i32 0, i32 2>
  %i.bu = fdiv float 1.000000e+00, %sqrt.i.i18    ; 2 uses
  %i.bv = shufflevector <2 x float> %.sroa.528.0.i, <2 x float> %.sroa.022.0.i, <2 x i32> <i32 0, i32 2>
  %i.bw = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.by = fmul <2 x float> %i.bv, %i.bx           ; 7 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0 ; 4 uses
  %i.ca = shufflevector <2 x float> %.sroa.022.0.i, <2 x float> %.sroa.528.0.i, <2 x i32> <i32 1, i32 2>
  %i.cb = fmul <2 x float> %i.ca, %i.bx           ; 7 uses
  %i.cc = shufflevector <2 x float> %i.by, <2 x float> %i.cb, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.cd = fmul float %.sroa.15.12.vec.extract, %i.bu ; 4 uses
  %.sroa.15.12.vec.insert = insertelement <2 x float> %i.by, float %i.cd, i64 1 ; 3 uses
end_hunk_0
