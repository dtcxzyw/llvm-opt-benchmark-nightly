Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConeTwistConstraint?download=true
inline.NumInlined: 921
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3:bb.a
  %i.q = tail call noundef float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.r = fneg float %i.q
  %.0 = select i1 %i.o, float %i.q, float %i.r    ; 3 uses
  %i.s = fneg float %.0
  %i.t = load float, ptr %1, align 4, !tbaa !27   ; 3 uses
  %i.u = fmul nnan float %i.b, %i.b
  %i.v = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.u)
  %i.w = tail call float @llvm.fmuladd.f32(float %.0, float %.0, float %i.v)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.w)
  %i.x = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.y = fmul float %i.t, %i.x
  store float %i.y, ptr %1, align 4, !tbaa !27
  %i.z = fmul float %i.b, %i.x
  store float %i.z, ptr %i.a, align 4, !tbaa !27
  %i.aa = fmul float %i.x, %i.s
  store float %i.aa, ptr %i.e, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.011.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.612.0.copyload = load <2 x float>, ptr %.sroa.612.0..sroa_idx, align 4 ; 2 uses
  %i.a = extractelement <2 x float> %.sroa.612.0.copyload, i64 1
  %i.b = tail call noundef float @acosf(float noundef %i.a) #18, !tbaa !7
  %i.c = fmul float %i.b, 2.000000e+00            ; 2 uses
  store float %i.c, ptr %2, align 4, !tbaa !27
  %i.d = fcmp ogt float %i.c, f0x40490FDB
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !27
  %i.f = fneg <2 x float> %i.e
  %i.g = load <2 x float>, ptr %.sroa.612.0..sroa_idx, align 4, !tbaa !27
  %i.h = fneg <2 x float> %i.g                    ; 2 uses
  %i.i = extractelement <2 x float> %i.h, i64 1
  %i.j = tail call noundef float @acosf(float noundef %i.i) #18, !tbaa !7
  %i.k = fmul float %i.j, 2.000000e+00
  store float %i.k, ptr %2, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.011.0 = phi <2 x float> [ %i.f, %bb.b ], [ %.sroa.011.0.copyload, %bb.a ] ; 5 uses
  %.sroa.612.0 = phi <2 x float> [ %i.h, %bb.b ], [ %.sroa.612.0.copyload, %bb.a ] ; 2 uses
  %i.l = shufflevector <2 x float> %.sroa.011.0, <2 x float> %.sroa.612.0, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.m = insertelement <4 x float> %i.l, float 0.000000e+00, i64 3
  store <4 x float> %i.m, ptr %3, align 4
  %i.n = load float, ptr %2, align 4, !tbaa !27
  %i.o = fcmp ogt float %i.n, f0x34000000
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.612.8.vec.extract = extractelement <2 x float> %.sroa.612.0, i64 0 ; 3 uses
  %.sroa.011.0.vec.extract = extractelement <2 x float> %.sroa.011.0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.011.0, %.sroa.011.0
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.q = tail call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract, float %.sroa.011.0.vec.extract, float %i.p)
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %.sroa.612.8.vec.extract, float %.sroa.612.8.vec.extract, float %i.q)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.r)
  %i.s = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %.sroa.011.0, %i.u
  store <2 x float> %i.v, ptr %3, align 4, !tbaa !27
  %i.w = fmul float %.sroa.612.8.vec.extract, %i.s
  store float %i.w, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK21btConeTwistConstraint16GetPointForAngleEff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, float noundef %1, float noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %1) #18, !tbaa !7 ; 6 uses
  %i.b = tail call noundef float @sinf(float noundef %1) #18, !tbaa !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.d = load float, ptr %i.c, align 4, !tbaa !39 ; 2 uses
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
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.k = load float, ptr %i.j, align 8, !tbaa !41
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
  %i.w = tail call noundef float @sinf(float noundef %i.v) #18, !tbaa !7
  %i.x = fdiv float %i.w, %sqrt.i.i.i
  %i.y = tail call noundef float @cosf(float noundef %i.v) #18, !tbaa !7 ; 5 uses
  %i.z = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
  %i.ac = fmul <2 x float> %i.aa, %i.ab           ; 3 uses
  %i.ad = insertelement <2 x float> poison, float %i.a, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.t, i64 1
  %i.af = fmul <2 x float> %i.ae, %i.aa           ; 2 uses
  %i.ag = insertelement <2 x float> <float 0.000000e+00, float poison>, float %2, i64 1
  %i.ah = fmul <2 x float> %i.af, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = insertelement <2 x float> <float poison, float 0.000000e+00>, float %2, i64 0
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.ak, <2 x float> %i.ah)
  %i.am = fneg <2 x float> %i.ac                  ; 3 uses
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> zeroinitializer, <2 x float> %i.al) ; 3 uses
  %i.ao = extractelement <2 x float> %i.ac, i64 1
  %i.ap = fmul ninf float %i.ao, 0.000000e+00
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.y, float 0.000000e+00, float %i.ap)
  %i.ar = extractelement <2 x float> %i.af, i64 0 ; 3 uses
  %i.as = fneg float %i.ar                        ; 3 uses
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %2, float %i.aq) ; 3 uses
  %i.au = fmul float %i.ar, -0.000000e+00
  %i.av = extractelement <2 x float> %i.am, i64 1 ; 3 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %2, float %i.au)
  %i.ax = extractelement <2 x float> %i.am, i64 0 ; 3 uses
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float 0.000000e+00, float %i.aw) ; 3 uses
  %i.az = extractelement <2 x float> %i.an, i64 0 ; 2 uses
  %i.ba = fmul float %i.y, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.av, float %i.ba)
  %i.bc = extractelement <2 x float> %i.an, i64 1 ; 2 uses
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.ax, float %i.bb)
  %i.be = tail call float @llvm.fmuladd.f32(float %i.at, float %i.ar, float %i.bd)
  %i.bf = fmul float %i.y, %i.bc
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.as, float %i.bf)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.at, float %i.av, float %i.bg)
  %i.bi = fmul float %i.y, %i.at
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ax, float %i.bi)
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.az, float %i.as, float %i.bj)
  %i.bl = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bk, i64 1
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ac, <2 x float> %i.bm) ; 2 uses
  %.sroa.020.0.vec.insert.i = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bo = shufflevector <2 x float> %.sroa.020.0.vec.insert.i, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.bp = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bn, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.bo, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.bp, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: uwtable
define dso_local void @_ZN21btConeTwistConstraint14setMotorTargetERK12btQuaternion(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %class.btQuaternion, align 8        ; 5 uses
  %3 = alloca %class.btQuaternion, align 8        ; 5 uses
  %4 = alloca %class.btQuaternion, align 4        ; 3 uses
  %5 = alloca %class.btQuaternion, align 4        ; 3 uses
  %6 = alloca %class.btTransform, align 16        ; 8 uses
  %7 = alloca %class.btTransform, align 16        ; 8 uses
  %8 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36, !nonnull !32, !align !37 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.7160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.12165.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.14167.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.19172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.21174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.26179.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.28181.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38, !nonnull !32, !align !37 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.14.16.copyload = load float, ptr %.sroa.14.16..sroa_idx, align 8 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.21.32.copyload = load float, ptr %.sroa.21.32..sroa_idx, align 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.26153.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %.sroa.28.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.28181.48.copyload = load float, ptr %.sroa.28181.48..sroa_idx, align 8 ; 2 uses
  %i.m = load <2 x float>, ptr %i.i, align 8      ; 6 uses
  %i.n = load <2 x float>, ptr %i.j, align 8      ; 6 uses
  %i.o = load <2 x float>, ptr %i.k, align 8      ; 6 uses
  %.sroa.23151.48.copyload = load float, ptr %i.l, align 8 ; 2 uses
  %.sroa.26153.48.copyload = load float, ptr %.sroa.26153.48..sroa_idx, align 4 ; 2 uses
  %.sroa.28.48.copyload = load float, ptr %.sroa.28.48..sroa_idx, align 8 ; 2 uses
  %i.p = fneg float %.sroa.23151.48.copyload      ; 2 uses
  %i.q = fneg float %.sroa.26153.48.copyload      ; 2 uses
  %i.r = fneg float %.sroa.28.48.copyload         ; 2 uses
  %i.s = insertelement <2 x float> poison, float %i.q, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x float> %i.n, %i.t
  %i.v = insertelement <2 x float> poison, float %i.p, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.w, <2 x float> %i.u)
  %i.y = insertelement <2 x float> poison, float %i.r, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.z, <2 x float> %i.x)
  %i.ab = insertelement <2 x float> poison, float %.sroa.28181.48.copyload, i64 0 ; 2 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = load <2 x float>, ptr %i.f, align 8     ; 4 uses
  %.sroa.26179.48.copyload = load float, ptr %.sroa.26179.48..sroa_idx, align 4 ; 2 uses
  %i.ae = fmul float %.sroa.14.16.copyload, %i.q
  %i.af = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul <2 x float> %i.af, %i.n
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.ah, <2 x float> %i.ag)
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.ac, <2 x float> %i.ai)
  %i.ak = fadd <2 x float> %i.aj, %i.aa
  %i.al = fmul float %.sroa.26179.48.copyload, %.sroa.14.16.copyload
  %i.am = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> %i.ad, float %i.p, i64 1
  %i.ap = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ae, i64 1
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ao, <2 x float> %i.aq)
  %i.as = insertelement <2 x float> poison, float %.sroa.21.32.copyload, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x float> %i.ab, float %i.r, i64 1
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.au, <2 x float> %i.ar) ; 2 uses
  %shift = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.av, %shift
  %.sroa.3.12.vec.insert.i.i198 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.aw = load <2 x float>, ptr %i.c, align 8     ; 4 uses
  %i.ax = load <2 x float>, ptr %i.d, align 8     ; 4 uses
  %i.ay = load <2 x float>, ptr %i.e, align 8     ; 4 uses
  %i.az = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = insertelement <4 x float> %i.az, float 0.000000e+00, i64 3
  %i.bb = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bd = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.be = insertelement <4 x float> %i.bd, float 0.000000e+00, i64 3
  %i.bf = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bh = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bi = insertelement <4 x float> %i.bh, float 0.000000e+00, i64 3
  %i.bj = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bl = extractelement <2 x float> %i.ax, i64 0
  %i.bm = extractelement <2 x float> %i.aw, i64 0
  %i.bn = extractelement <2 x float> %i.ay, i64 0
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bp = load <2 x float>, ptr %.sroa.12165.16..sroa_idx, align 4 ; 4 uses
  %.sroa.14167.16.copyload = load float, ptr %.sroa.14167.16..sroa_idx, align 8 ; 3 uses
  %i.bq = load <2 x float>, ptr %.sroa.5158.0..sroa_idx, align 4 ; 4 uses
  %.sroa.7160.0.copyload = load float, ptr %.sroa.7160.0..sroa_idx, align 8 ; 3 uses
  %i.br = load <2 x float>, ptr %.sroa.19172.32..sroa_idx, align 4 ; 4 uses
  %.sroa.21174.32.copyload = load float, ptr %.sroa.21174.32..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.ba, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bu = fmul <4 x float> %i.bt, %i.bc
  %i.bv = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.be, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.bg, <4 x float> %i.bu)
  %i.by = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.bi, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.bk, <4 x float> %i.bx)
  %i.cb = shufflevector <4 x float> %i.bb, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cc = shufflevector <2 x float> %i.ax, <2 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float 1.000000e+00, i64 3 ; 2 uses
  %i.ce = fmul <4 x float> %i.cb, %i.cd
  %i.cf = shufflevector <2 x float> %i.aw, <2 x float> %i.bq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float 0.000000e+00, i64 3 ; 2 uses
  %i.ch = shufflevector <4 x float> %i.bf, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.ch, <4 x float> %i.ce)
  %i.cj = shufflevector <2 x float> %i.ay, <2 x float> %i.br, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ck = insertelement <4 x float> %i.cj, float 0.000000e+00, i64 3 ; 2 uses
  %i.cl = shufflevector <4 x float> %i.bj, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %i.cl, <4 x float> %i.ci)
  %i.cn = extractelement <2 x float> %i.bp, i64 0
  %i.co = extractelement <2 x float> %i.bq, i64 0
  %i.cp = extractelement <2 x float> %i.br, i64 0
  store <4 x float> %i.ca, ptr %6, align 16, !alias.scope !148
  store <4 x float> %i.cm, ptr %i.bo, align 16, !alias.scope !148
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.14.16.copyload, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %.sroa.14167.16.copyload, i64 2
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cu = insertelement <4 x float> %i.cd, float %.sroa.14.16.copyload, i64 2
  %i.cv = fmul <4 x float> %i.ct, %i.cu
  %i.cw = insertelement <4 x float> %i.cg, float %.sroa.7160.0.copyload, i64 2
  %i.cx = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.7.0.copyload, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.cy, <4 x float> %i.cv)
  %i.da = insertelement <4 x float> %i.ck, float %.sroa.21174.32.copyload, i64 2
  %i.db = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.21.32.copyload, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.dc, <4 x float> %i.cz)
  store <4 x float> %i.dd, ptr %i.cq, align 16, !alias.scope !148
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <2 x float> %i.ak, ptr %i.de, align 16, !alias.scope !148
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %6, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i198, ptr %.sroa.4.0..sroa_idx.i4, align 8, !tbaa !23, !alias.scope !148
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !27, !noalias !149
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.di = load float, ptr %i.dh, align 4, !tbaa !27, !noalias !149 ; 3 uses
  %i.dj = extractelement <2 x float> %i.m, i64 1  ; 4 uses
  %i.dk = fmul float %i.dj, %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !27, !noalias !149
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.do = load float, ptr %i.dn, align 8, !tbaa !27, !noalias !149 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !27, !noalias !149 ; 3 uses
  %i.dr = fmul float %i.dj, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !27, !noalias !149 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.dv = load float, ptr %i.du, align 4, !tbaa !27, !noalias !149
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !27, !noalias !149 ; 3 uses
  %i.dy = fmul float %i.dj, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !27, !noalias !149
  %i.eb = extractelement <2 x float> %i.n, i64 1  ; 4 uses
  %i.ec = fmul float %i.eb, %i.di
  %i.ed = fmul float %i.eb, %i.dq
  %i.ee = fmul float %i.eb, %i.dx
  %i.ef = extractelement <2 x float> %i.o, i64 1  ; 4 uses
  %i.eg = fmul float %i.ef, %i.di
  %i.eh = fmul float %i.ef, %i.dq
  %i.ei = fmul float %i.ef, %i.dx
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !27, !noalias !150 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.em = load float, ptr %i.el, align 8, !tbaa !27, !noalias !150 ; 3 uses
  %i.en = fmul float %i.dj, %i.em
  %i.eo = extractelement <2 x float> %i.m, i64 0  ; 2 uses
  %i.ep = call float @llvm.fmuladd.f32(float %i.eo, float %i.ek, float %i.en)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.er = load float, ptr %i.eq, align 4, !tbaa !27, !noalias !150 ; 3 uses
  %i.es = call noundef float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.er, float %i.ep)
  %i.et = fadd float %.sroa.23151.48.copyload, %i.es
  %i.eu = fmul float %i.eb, %i.em
  %i.ev = extractelement <2 x float> %i.n, i64 0  ; 2 uses
  %i.ew = call float @llvm.fmuladd.f32(float %i.ev, float %i.ek, float %i.eu)
  %i.ex = call noundef float @llvm.fmuladd.f32(float %.sroa.14.16.copyload, float %i.er, float %i.ew)
  %i.ey = fadd float %.sroa.26153.48.copyload, %i.ex
  %i.ez = fmul float %i.ef, %i.em
  %i.fa = extractelement <2 x float> %i.o, i64 0  ; 2 uses
  %i.fb = call float @llvm.fmuladd.f32(float %i.fa, float %i.ek, float %i.ez)
  %i.fc = call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %i.er, float %i.fb)
  %i.fd = fadd float %.sroa.28.48.copyload, %i.fc
  %i.fe = fneg float %i.et
  %i.ff = fneg float %i.ey
  %i.fg = fneg float %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !27, !noalias !151
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !27, !noalias !151 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !27, !noalias !151
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !27, !noalias !152 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ft = load float, ptr %i.fs, align 8, !tbaa !27, !noalias !152 ; 3 uses
  %i.fu = fmul float %i.co, %i.ft
  %i.fv = call float @llvm.fmuladd.f32(float %i.bm, float %i.fr, float %i.fu)
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !27, !noalias !152 ; 3 uses
  %i.fy = call noundef float @llvm.fmuladd.f32(float %.sroa.7160.0.copyload, float %i.fx, float %i.fv)
  %i.fz = extractelement <2 x float> %i.ad, i64 0
  %i.ga = fadd float %i.fz, %i.fy
  %i.gb = fmul float %i.cn, %i.ft
  %i.gc = call float @llvm.fmuladd.f32(float %i.bl, float %i.fr, float %i.gb)
  %i.gd = call noundef float @llvm.fmuladd.f32(float %.sroa.14167.16.copyload, float %i.fx, float %i.gc)
  %i.ge = fadd float %.sroa.26179.48.copyload, %i.gd
  %i.gf = fmul float %i.cp, %i.ft
  %i.gg = call float @llvm.fmuladd.f32(float %i.bn, float %i.fr, float %i.gf)
  %i.gh = call noundef float @llvm.fmuladd.f32(float %.sroa.21174.32.copyload, float %i.fx, float %i.gg)
  %i.gi = fadd float %.sroa.28181.48.copyload, %i.gh
  %i.gj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dg, i64 0 ; 3 uses
  %i.gk = insertelement <2 x float> %i.m, float -0.000000e+00, i64 1 ; 2 uses
  %i.gl = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.dk, i64 0
  %i.gm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gk, <2 x float> %i.gl)
  %i.gn = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dm, i64 0 ; 3 uses
  %i.go = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sroa.7.0.copyload, i64 0 ; 2 uses
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.go, <2 x float> %i.gm) ; 2 uses
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gr = insertelement <2 x float> %i.n, float -0.000000e+00, i64 1 ; 2 uses
  %i.gs = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ec, i64 0
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gr, <2 x float> %i.gs)
  %i.gu = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sroa.14.16.copyload, i64 0 ; 2 uses
  %i.gv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.gu, <2 x float> %i.gt) ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gx = insertelement <2 x float> %i.o, float -0.000000e+00, i64 1 ; 2 uses
  %i.gy = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.eg, i64 0
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gx, <2 x float> %i.gy)
  %i.ha = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sroa.21.32.copyload, i64 0 ; 2 uses
  %i.hb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.ha, <2 x float> %i.gz) ; 2 uses
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hd = load <2 x float>, ptr %i.fh, align 4, !tbaa !27, !noalias !151
  %i.he = load <2 x float>, ptr %i.fi, align 4, !tbaa !27, !noalias !151
  %i.hf = load <2 x float>, ptr %i.fj, align 4, !tbaa !27, !noalias !151
  %i.hg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fn, i64 2
  %i.hh = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> %i.hg, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.hj = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.hk = insertelement <4 x float> %i.hj, float 1.000000e+00, i64 3
  %i.hl = fmul <4 x float> %i.hi, %i.hk
  %i.hm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fl, i64 2
  %i.hn = shufflevector <2 x float> %i.hd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> %i.hm, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 3 uses
  %i.hp = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.hq = insertelement <4 x float> %i.hp, float -0.000000e+00, i64 3
  %i.hr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %i.hq, <4 x float> %i.hl)
  %i.hs = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fp, i64 2
  %i.ht = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> %i.hs, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 3 uses
  %i.hv = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.7160.0.copyload, i64 0
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> %i.hw, <4 x float> %i.hr) ; 2 uses
  %i.hy = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fn, i64 2
  %i.hz = shufflevector <4 x float> %i.hh, <4 x float> %i.hy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ia = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ib = insertelement <4 x float> %i.ia, float 1.000000e+00, i64 3
  %i.ic = fmul <4 x float> %i.hz, %i.ib
  %i.id = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ie = insertelement <4 x float> %i.id, float -0.000000e+00, i64 3
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %i.ie, <4 x float> %i.ic)
  %i.ig = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.14167.16.copyload, i64 0
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ii = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> %i.ih, <4 x float> %i.if) ; 2 uses
  %i.ij = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ik = insertelement <4 x float> %i.ij, float 1.000000e+00, i64 3
  %i.il = fmul <4 x float> %i.hi, %i.ik
  %i.im = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.in = insertelement <4 x float> %i.im, float -0.000000e+00, i64 3
  %i.io = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %i.in, <4 x float> %i.il)
  %i.ip = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.21174.32.copyload, i64 0
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ir = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> %i.iq, <4 x float> %i.io) ; 2 uses
  %i.is = fmul <4 x float> %i.gw, %i.ii
  %i.it = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hx, <4 x float> %i.gq, <4 x float> %i.is)
  %i.iu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ir, <4 x float> %i.hc, <4 x float> %i.it)
  %i.iv = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %i.ge, i64 1 ; 3 uses
  %i.iy = fmul <2 x float> %i.iv, %i.ix
  %i.iz = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.jb = insertelement <2 x float> %i.ja, float %i.ga, i64 1 ; 3 uses
  %i.jc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iz, <2 x float> %i.jb, <2 x float> %i.iy)
  %i.jd = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.jf = insertelement <2 x float> %i.je, float %i.gi, i64 1 ; 3 uses
  %i.jg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.jf, <2 x float> %i.jc) ; 2 uses
  store <4 x float> %i.iu, ptr %7, align 16, !alias.scope !153
  %i.jh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ji = call float @llvm.fmuladd.f32(float %i.do, float %i.eo, float %i.dr)
  %i.jj = call noundef float @llvm.fmuladd.f32(float %i.dt, float %.sroa.7.0.copyload, float %i.ji) ; 2 uses
  %i.jk = call float @llvm.fmuladd.f32(float %i.do, float %i.ev, float %i.ed)
  %.scalar = call float @llvm.fmuladd.f32(float %i.dt, float %.sroa.14.16.copyload, float %i.jk)
  %i.jl = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jn = call float @llvm.fmuladd.f32(float %i.do, float %i.fa, float %i.eh)
  %.scalar188 = call float @llvm.fmuladd.f32(float %i.dt, float %.sroa.21.32.copyload, float %i.jn)
  %9 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar188, i64 0 ; 2 uses
  %i.jo = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jp = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jq = fmul <2 x float> %i.jp, %i.ix
  %i.jr = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.jb, <2 x float> %i.jq)
  %i.ju = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ju, <2 x float> %i.jf, <2 x float> %i.jt) ; 2 uses
  %i.jw = insertelement <4 x float> %i.ii, float 1.000000e+00, i64 3 ; 2 uses
  %i.jx = fmul <4 x float> %i.jm, %i.jw
  %i.jy = insertelement <4 x float> %i.hx, float 0.000000e+00, i64 3 ; 2 uses
  %i.jz = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.jj, i64 0
  %i.ka = shufflevector <4 x float> %i.jz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jy, <4 x float> %i.ka, <4 x float> %i.jx)
  %i.kc = insertelement <4 x float> %i.ir, float 0.000000e+00, i64 3 ; 2 uses
  %i.kd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kc, <4 x float> %i.jo, <4 x float> %i.kb)
  %i.ke = shufflevector <2 x float> %i.jg, <2 x float> %i.jv, <2 x i32> <i32 0, i32 2>
  %i.kf = shufflevector <2 x float> %i.jg, <2 x float> %i.jv, <2 x i32> <i32 1, i32 3>
  %.sroa.0.4.vec.insert.i.i45 = fadd <2 x float> %i.ke, %i.kf
  store <4 x float> %i.kd, ptr %i.jh, align 16, !alias.scope !153
  %i.kg = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.kh = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dv, i64 0 ; 3 uses
  %i.ki = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.dy, i64 0
  %i.kj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.gk, <2 x float> %i.ki)
  %i.kk = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ea, i64 0 ; 3 uses
  %i.kl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.go, <2 x float> %i.kj) ; 2 uses
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kn = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ee, i64 0
  %i.ko = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.gr, <2 x float> %i.kn)
  %i.kp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.gu, <2 x float> %i.ko) ; 2 uses
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kr = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ei, i64 0
  %i.ks = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.gx, <2 x float> %i.kr)
  %i.kt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.ha, <2 x float> %i.ks) ; 2 uses
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kv = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = fmul <2 x float> %i.kv, %i.ix
  %i.kx = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.jb, <2 x float> %i.kw)
  %i.kz = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kz, <2 x float> %i.jf, <2 x float> %i.ky) ; 2 uses
  %shift191 = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop192 = fadd <2 x float> %i.la, %shift191
  %.sroa.3.12.vec.insert.i.i46199 = insertelement <2 x float> %foldExtExtBinop192, float 0.000000e+00, i64 1
  %i.lb = fmul <4 x float> %i.kq, %i.jw
  %i.lc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jy, <4 x float> %i.km, <4 x float> %i.lb)
  %i.ld = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kc, <4 x float> %i.ku, <4 x float> %i.lc)
  store <4 x float> %i.ld, ptr %i.kg, align 16, !alias.scope !153
  %i.le = getelementptr inbounds nuw i8, ptr %7, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i45, ptr %i.le, align 16, !alias.scope !153
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i46199, ptr %.sroa.4.0..sroa_idx.i56, align 8, !tbaa !23, !alias.scope !153
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.df, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %.fca.0.load.i62 = load <2 x float>, ptr %3, align 8 ; 6 uses
  %.fca.1.gep.i64 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i65 = load <2 x float>, ptr %.fca.1.gep.i64, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.086.0.vec.extract = extractelement <2 x float> %.fca.0.load.i62, i64 0
  %.sroa.086.4.vec.extract = extractelement <2 x float> %.fca.0.load.i62, i64 1
  %.sroa.587.8.vec.extract = extractelement <2 x float> %.fca.1.load.i65, i64 0 ; 2 uses
  %.sroa.587.12.vec.extract = extractelement <2 x float> %.fca.1.load.i65, i64 1 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !27 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.fca.1.gep.i77 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.li = fneg float %.sroa.086.0.vec.extract
  %i.lj = shufflevector <2 x float> %.fca.1.load.i65, <2 x float> %.fca.0.load.i62, <2 x i32> <i32 0, i32 2>
  %i.lk = fneg <2 x float> %i.lj
  %i.ll = shufflevector <2 x float> %.fca.0.load.i62, <2 x float> %.fca.1.load.i65, <2 x i32> <i32 1, i32 2>
  %i.lm = fneg <2 x float> %i.ll                  ; 2 uses
  %i.ln = fmul float %i.lg, %i.li
  %i.lo = load <2 x float>, ptr %1, align 4, !tbaa !27 ; 5 uses
  %i.lp = extractelement <2 x float> %i.lo, i64 0
  %i.lq = load <2 x float>, ptr %i.lh, align 4, !tbaa !27 ; 3 uses
  %i.lr = extractelement <2 x float> %i.lq, i64 1 ; 2 uses
  %i.ls = extractelement <2 x float> %i.lm, i64 0
  %i.lt = extractelement <2 x float> %i.lo, i64 1 ; 2 uses
  %i.lu = insertelement <2 x float> poison, float %i.lg, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = fmul <2 x float> %i.lv, %i.lm
  %i.lx = shufflevector <2 x float> %.fca.1.load.i65, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ly = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lx, <2 x float> %i.lq, <2 x float> %i.lw)
  %i.lz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lk, <2 x float> %i.lo, <2 x float> %i.ly)
  %i.ma = shufflevector <2 x float> %i.lq, <2 x float> %i.lo, <2 x i32> <i32 1, i32 2>
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.fca.0.load.i62, <2 x float> %i.ma, <2 x float> %i.lz) ; 4 uses
  %foldExtExtBinop194 = fmul <2 x float> %.fca.0.load.i62, %i.lo
  %i.mc = extractelement <2 x float> %foldExtExtBinop194, i64 0
  %i.md = call float @llvm.fmuladd.f32(float %.sroa.587.12.vec.extract, float %i.lg, float %i.mc)
  %i.me = call float @llvm.fmuladd.f32(float %.sroa.086.4.vec.extract, float %i.lt, float %i.md)
  %i.mf = call float @llvm.fmuladd.f32(float %.sroa.587.8.vec.extract, float %i.lr, float %i.me)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.fh, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %.fca.0.load.i75 = load <2 x float>, ptr %2, align 8 ; 6 uses
  %.fca.1.load.i78 = load <2 x float>, ptr %.fca.1.gep.i77, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.fca.0.load.i75, i64 0
  %i.mg = fneg <2 x float> %i.mb                  ; 2 uses
  %i.mh = call float @llvm.fmuladd.f32(float %.sroa.587.12.vec.extract, float %i.lp, float %i.ln)
  %i.mi = call float @llvm.fmuladd.f32(float %i.ls, float %i.lr, float %i.mh)
  %i.mj = call float @llvm.fmuladd.f32(float %.sroa.587.8.vec.extract, float %i.lt, float %i.mi) ; 4 uses
  %i.mk = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ml = insertelement <2 x float> %i.mk, float %i.mj, i64 0
  %i.mm = shufflevector <2 x float> %.fca.1.load.i78, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mn = fmul <2 x float> %i.ml, %i.mm
  %i.mo = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mp, <2 x float> %.fca.0.load.i75, <2 x float> %i.mn)
  %i.mr = shufflevector <2 x float> %.fca.1.load.i78, <2 x float> %.fca.0.load.i75, <2 x i32> <i32 0, i32 2>
  %i.ms = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mb, <2 x float> %i.mr, <2 x float> %i.mq)
  %i.mt = insertelement <2 x float> %i.mk, float %i.mj, i64 1
  %i.mu = fneg <2 x float> %i.mt
  %i.mv = shufflevector <2 x float> %.fca.0.load.i75, <2 x float> %.fca.1.load.i78, <2 x i32> <i32 1, i32 2>
  %i.mw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mu, <2 x float> %i.mv, <2 x float> %i.ms)
  %foldExtExtBinop196 = fmul <2 x float> %i.mb, %.fca.1.load.i78
  %i.mx = fneg float %.sroa.0.0.vec.extract
  %i.my = fmul float %i.mj, %i.mx
  %i.mz = shufflevector <2 x float> %foldExtExtBinop196, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.na = insertelement <2 x float> %i.mz, float %i.my, i64 1
  %i.nb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mp, <2 x float> %.fca.1.load.i78, <2 x float> %i.na)
  %i.nc = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nd = insertelement <2 x float> %i.nc, float %i.mj, i64 0
  %i.ne = shufflevector <2 x float> %.fca.0.load.i75, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nd, <2 x float> %i.ne, <2 x float> %i.nb)
  %i.ng = shufflevector <2 x float> %.fca.0.load.i75, <2 x float> %.fca.1.load.i78, <2 x i32> <i32 0, i32 2>
  %i.nh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mg, <2 x float> %i.ng, <2 x float> %i.nf)
  store <2 x float> %i.mw, ptr %8, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %i.nh, ptr %i.ni, align 8
  call void @_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 4 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(640) initializes((604, 620)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 2 uses
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !27 ; 9 uses
  %i.d = extractelement <2 x float> %i.c, i64 1   ; 3 uses
  %i.e = extractelement <2 x float> %i.c, i64 0   ; 2 uses
  %i.f = load <2 x float>, ptr %i.a, align 4, !tbaa !27 ; 9 uses
  %i.g = extractelement <2 x float> %i.f, i64 1   ; 4 uses
  %i.h = extractelement <2 x float> %i.f, i64 0   ; 2 uses
  %i.i = fmul float %i.h, 0.000000e+00
  %i.j = tail call float @llvm.fmuladd.f32(float %i.d, float 0.000000e+00, float %i.i)
  %i.k = fsub float %i.j, %i.g                    ; 3 uses
  %i.l = fmul float %i.g, -0.000000e+00
  %i.m = fsub float %i.l, %i.h
  %i.n = tail call float @llvm.fmuladd.f32(float %i.d, float 0.000000e+00, float %i.e)
  %i.o = fmul float %i.g, 0.000000e+00
  %i.p = fadd float %i.d, %i.o
  %i.q = shufflevector <2 x float> %i.c, <2 x float> %i.f, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.r = fneg <2 x float> %i.q                    ; 5 uses
  %i.s = insertelement <2 x float> poison, float %i.p, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.n, i64 1
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> zeroinitializer, <2 x float> %i.t) ; 4 uses
  %i.v = fneg float %i.g                          ; 2 uses
  %i.w = extractelement <2 x float> %i.r, i64 0
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float 0.000000e+00, float %i.m) ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.c, %i.u
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.z = tail call float @llvm.fmuladd.f32(float %i.x, float %i.v, float %i.y)
  %i.aa = extractelement <2 x float> %i.r, i64 1
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.k, float %i.aa, float %i.z)
  %i.ac = extractelement <2 x float> %i.u, i64 0
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.e, float %i.ab) ; 3 uses
  %i.ae = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.af = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ag = insertelement <2 x float> %i.af, float %i.k, i64 0
  %i.ah = fmul <2 x float> %i.ae, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.r, <2 x float> %i.ah)
  %i.al = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.am = insertelement <2 x float> %i.al, float %i.v, i64 0
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = insertelement <2 x float> %i.af, float %i.k, i64 1
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.f, <2 x float> %i.an) ; 4 uses
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
  %i.bb = tail call noundef float @sqrtf(float noundef %i.ba) #18, !tbaa !7 ; 2 uses
  %i.bc = fdiv float 1.000000e+00, %i.bb          ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.be = fneg <2 x float> %i.ap
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <2 x i32> <i32 0, i32 2>
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> zeroinitializer, <2 x float> %i.bf)
end_hunk_0
