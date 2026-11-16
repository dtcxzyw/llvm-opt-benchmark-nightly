Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/BenchmarkDemo?download=true
inline.NumInlined: 797
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN13BenchmarkDemo19createLargeMeshBodyEv:bb.a
  %.pre.i.i = load i32, ptr %i.f, align 4, !tbaa !244 ; 4 uses
  %i.s = icmp sgt i32 %.pre.i.i, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %.pre.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.t = icmp eq i32 %.pre.i.i, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.1, %bb.c ]
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.i
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !243
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !tbaa.struct !257
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !243
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !tbaa.struct !257
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.c

_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i32 %.pre.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod54)
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.i.epil.init
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !243
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !tbaa.struct !257
  br label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !243 ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i5.i.i.i, label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i
  %i.ae = load i8, ptr %i.d, align 8, !tbaa !242, !range !106, !noundef !107
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

bb.e:                                             ; preds = %bb.d
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ad)
  br label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit: ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i, %bb.d, %bb.e
  store i8 1, ptr %i.d, align 8, !tbaa !242
  store ptr %i.r, ptr %i.e, align 8, !tbaa !243
  store i32 1, ptr %i.g, align 8, !tbaa !245
  %.pre2.i.i = load i32, ptr %i.f, align 4, !tbaa !244
  %i.ag = sext i32 %.pre2.i.i to i64
  %i.ah = getelementptr inbounds [48 x i8], ptr %i.r, i64 %i.ag ; 8 uses
  store i32 %i.q, ptr %i.ah, align 8, !tbaa !7
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.n, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !254
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 6, ptr %.sroa.627.0..sroa_idx, align 8, !tbaa !7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 %i.l, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !7
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.j, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !254
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i32 12, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !7
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  store i32 3, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !256
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 0, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !256
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !244 ; 2 uses
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.f, align 4, !tbaa !244
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [48 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  store i32 3, ptr %i.am, align 4, !tbaa !259
  %i.an = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 96, i32 noundef 16) ; 3 uses
  invoke void @_ZN22btBvhTriangleMeshShapeC1EP23btStridingMeshInterfacebb(ptr noundef nonnull align 8 dereferenceable(93) %i.an, ptr noundef nonnull %i.b, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ao = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 10 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.ao, float noundef 0.000000e+00, ptr noundef null, ptr noundef nonnull %i.an, ptr noundef nonnull align 4 dereferenceable(16) %1)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ao)
          to label %_ZN17btCollisionObjectdlEPv.exit.i unwind label %bb.h

common.resume:                                    ; preds = %bb.i, %_ZN17btCollisionObjectdlEPv.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %_ZN17btCollisionObjectdlEPv.exit.i ], [ %i.ay, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZN17btCollisionObjectdlEPv.exit.i:               ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %common.resume

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #23
  unreachable

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit: ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store float 1.000000e+00, ptr %i.as, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %.sroa.730.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.529.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.730.16..sroa_idx, align 4
  %.sroa.831.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.1032.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.831.16..sroa_idx, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -2.500000e+01>, ptr %.sroa.1032.32..sroa_idx, align 8
  %.sroa.15.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store <2 x float> zeroinitializer, ptr %.sroa.15.48..sroa_idx, align 8
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(228) %i.at, ptr noundef nonnull %i.ao), !inline_history !125
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 236
  store float f0x3F666666, ptr %i.ax, align 4, !tbaa !260
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.b, label %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i

bb.i:                                             ; preds = %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.an)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable
}

declare void @_ZN22btBvhTriangleMeshShapeC1EP23btStridingMeshInterfacebb(ptr noundef nonnull align 8 dereferenceable(93), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #11

declare void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68), float noundef, float noundef) unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo8initRaysEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #0 align 2 !guid !261 {
bb.a:
  %1 = alloca %class.btRaycastBar2, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN13btRaycastBar2C2Efff(ptr noundef nonnull align 8 dereferenceable(40060) %1, float noundef 2.500000e+03, float noundef 0.000000e+00, float noundef 5.000000e+01)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40060) @_ZL10raycastBar, ptr noundef nonnull align 8 dereferenceable(40060) %1, i64 40060, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN13btRaycastBar2C2Efff(ptr noundef nonnull align 8 dereferenceable(40060) %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !262 {
.preheader82.preheader:
  %.ptr29 = getelementptr inbounds nuw i8, ptr %0, i64 8000
  %.ptr34 = getelementptr inbounds nuw i8, ptr %0, i64 16000
  %.ptr44 = getelementptr inbounds nuw i8, ptr %0, i64 32000
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40024
  %i.b = tail call i32 @gettimeofday(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef null) #21 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40020
  store i32 0, ptr %i.d, align 4, !tbaa !141
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40016
  store i32 9999, ptr %i.e, align 8, !tbaa !142
  store <4 x i32> zeroinitializer, ptr %i.c, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40040
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40044
  store <2 x float> <float 1.000000e+01, float 0.000000e+00>, ptr %i.f, align 8, !tbaa !96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40048
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !263
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40052
  store float %3, ptr %i.i, align 4, !tbaa !264
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40056
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !265
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  ret void

bb.b:                                             ; preds = %.preheader82.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader82.preheader ], [ %indvars.iv.next, %bb.b ] ; 6 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = uitofp nneg i32 %i.k to float
  %i.m = fmul nnan float %i.l, f0x3CCDE32E
  %i.n = fmul nnan float %i.m, 5.000000e-01       ; 2 uses
  %4 = tail call noundef float @sinf(float noundef %i.n) #21, !tbaa !7 ; 5 uses
  %5 = fmul float %4, 0.000000e+00                ; 7 uses
  %6 = tail call noundef float @cosf(float noundef %i.n) #21, !tbaa !7 ; 5 uses
  %7 = getelementptr inbounds nuw [16 x i8], ptr %.ptr34, i64 %indvars.iv ; 2 uses
  %.sroa.559.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %8 = fadd float %6, %5
  %9 = fneg float %5                              ; 6 uses
  %i.o = fmul ninf float %5, 0.000000e+00
  %10 = fneg float %4                             ; 2 uses
  %11 = fmul float %4, -0.000000e+00
  %12 = fsub float %11, %5
  %13 = insertelement <4 x float> poison, float %9, i64 0
  %14 = insertelement <4 x float> %13, float %6, i64 1
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %16 = insertelement <4 x float> poison, float %8, i64 0
  %17 = insertelement <4 x float> %16, float %5, i64 1
  %18 = insertelement <4 x float> %17, float %12, i64 2
  %19 = insertelement <4 x float> %18, float %i.o, i64 3
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> zeroinitializer, <4 x float> %19) ; 4 uses
  %21 = extractelement <4 x float> %20, i64 1
  %22 = tail call float @llvm.fmuladd.f32(float %9, float 0.000000e+00, float %21) ; 3 uses
  %23 = extractelement <4 x float> %20, i64 3
  %i.p = fsub float %23, %4                       ; 3 uses
  %24 = extractelement <4 x float> %20, i64 0     ; 3 uses
  %25 = fmul float %6, %24
  %26 = extractelement <4 x float> %20, i64 2     ; 3 uses
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %9, float %25)
  %28 = tail call float @llvm.fmuladd.f32(float %22, float %9, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %i.p, float %4, float %28)
  %30 = fmul float %6, %22
  %31 = tail call float @llvm.fmuladd.f32(float %26, float %10, float %30)
  %32 = tail call float @llvm.fmuladd.f32(float %i.p, float %9, float %31)
  %33 = tail call float @llvm.fmuladd.f32(float %24, float %5, float %32)
  %34 = fmul float %6, %i.p
  %35 = tail call float @llvm.fmuladd.f32(float %26, float %9, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %24, float %10, float %35)
  %37 = tail call float @llvm.fmuladd.f32(float %22, float %5, float %36)
  %38 = fmul float %1, %29                        ; 2 uses
  %i.q = fmul float %1, %33                       ; 2 uses
  %39 = fmul float %1, %37                        ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %38, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.q, i64 1
  %.sroa.3.12.vec.insert.i46 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %39, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i46, ptr %.sroa.559.0..sroa_idx.a, align 8, !tbaa !109
  %40 = load float, ptr %i.g, align 4, !tbaa !96  ; 2 uses
  %41 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  store float %40, ptr %41, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %41, i64 4
  store float %3, ptr %.sroa.458.0..sroa_idx, align 4
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %41, i64 8
  store float %2, ptr %.sroa.559.0..sroa_idx, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %41, i64 12
  store float 0.000000e+00, ptr %.sroa.660.0..sroa_idx, align 4, !tbaa !109
  %42 = fadd float %40, %38
  %43 = fadd float %3, %i.q
  %44 = fadd float %2, %39
  %.sroa.0.0.vec.insert.i49 = insertelement <2 x float> poison, float %42, i64 0
  %.sroa.0.4.vec.insert.i50 = insertelement <2 x float> %.sroa.0.0.vec.insert.i49, float %43, i64 1
  %.sroa.3.12.vec.insert.i51 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %44, i64 0
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.ptr29, i64 %indvars.iv ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i50, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i51, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !109
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store float -1.000000e+03, ptr %i.s, align 4, !tbaa !96
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.ptr44, i64 %indvars.iv
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.t, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 500
  br i1 %exitcond.not, label %bb.a, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN13btRaycastBar24castEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(40060) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !266 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %3 = alloca %"struct.btCollisionWorld::ClosestRayResultCallback", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40024 ; 2 uses
  %i.b = tail call i32 @gettimeofday(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef null) #21 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24000
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32000
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #21 ; 0 uses
  %i.p = load i64, ptr %2, align 8, !tbaa !267
  %i.q = load i64, ptr %i.a, align 8, !tbaa !268
  %i.r = sub nsw i64 %i.p, %i.q
  %i.s = mul nsw i64 %i.r, 1000
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !269
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40032
  %i.w = load i64, ptr %i.v, align 8, !tbaa !270
  %i.x = sub nsw i64 %i.u, %i.w
  %i.y = sdiv i64 %i.x, 1000
  %i.z = add nsw i64 %i.y, %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40004 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !271
  %i.ac = trunc i64 %i.z to i32
  %i.ad = add i32 %i.ab, %i.ac                    ; 4 uses
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40000 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !272 ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !272
  %i.ah = icmp sgt i32 %i.af, 49
  br i1 %i.ah, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !146
  store ptr null, ptr %i.e, align 8, !tbaa !147
  store i16 1, ptr %i.f, align 8, !tbaa !148
  store i16 -1, ptr %i.g, align 2, !tbaa !149
  store i32 0, ptr %i.h, align 4, !tbaa !273
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN16btCollisionWorld24ClosestRayResultCallbackE, i64 16), ptr %3, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !110
  call void @_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !147
  %.not = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !110
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load float, ptr %i.an, align 8, !tbaa !96 ; 3 uses
  %i.ap = load <2 x float>, ptr %i.am, align 8, !tbaa !96 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ap, %i.ap
  %i.aq = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ar = extractelement <2 x float> %i.ap, i64 0 ; 2 uses
  %i.as = call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.aq)
  %i.at = call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.as)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.at)
  %i.au = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.ap, %i.aw
  store <2 x float> %i.ax, ptr %i.am, align 8, !tbaa !96
  %i.ay = fmul float %i.ao, %i.au
  store float %i.ay, ptr %i.an, align 8, !tbaa !96
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !110
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.am, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 500
  br i1 %exitcond.not, label %bb.b, label %bb.c

bb.g:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40016 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !142
  %. = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ba)
  store i32 %., ptr %i.az, align 8, !tbaa !142
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40020 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !141
  %i.bd = call i32 @llvm.smax.i32(i32 %i.ad, i32 %i.bc)
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !141
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40008 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !274
  %i.bg = add nsw i32 %i.bf, %i.ad
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !274
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40012 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !275
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !275
  store i32 0, ptr %i.aa, align 4, !tbaa !271
  store i32 0, ptr %i.ae, align 8, !tbaa !272
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo11exitPhysicsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #0 align 2 !guid !276 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !126  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.m, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.h)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !126
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ %.pre, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !280  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph34.preheader, label %.preheader

.lr.ph34.preheader:                               ; preds = %._crit_edge
  %i.u = zext nneg i32 %i.s to i64
  br label %.lr.ph34

.preheader:                                       ; preds = %bb.g, %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !99   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.h

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.g
  %indvars.iv39 = phi i64 [ %i.u, %.lr.ph34.preheader ], [ %indvars.iv.next40, %bb.g ] ; 2 uses
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1 ; 2 uses
end_hunk_0
