Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btCollisionWorld?download=true
inline.NumInlined: 505
inline.NumDeleted: 142
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv:bb.a
  ret void

_ZN14CProfileSampleD2Ev.exit14:                   ; preds = %bb.g, %bb.h, %bb.f
  %.pn10.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.x, %bb.h ], [ %i.w, %bb.g ]
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit17 unwind label %bb.j

_ZN14CProfileSampleD2Ev.exit17:                   ; preds = %_ZN14CProfileSampleD2Ev.exit14
  resume { ptr, i32 } %.pn10.pn

bb.j:                                             ; preds = %_ZN14CProfileSampleD2Ev.exit14, %bb.h, %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #13
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(129) %0, ptr nofree noundef captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.b, ptr noundef %i.j)
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.b, ptr noundef %i.o)
  store ptr null, ptr %i.a, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.t to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33   ; 2 uses
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit, label %bb.d

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.i: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  %i.ab = add nsw i32 %i.t, -1                    ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !33
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !33
  store i32 %i.ab, ptr %i.s, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit: ; preds = %bb.e, %bb.c, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.i
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.btSphereShape, align 8       ; 11 uses
  %7 = alloca %"struct.btConvexCast::CastResult", align 8 ; 11 uses
  %8 = alloca %class.btVoronoiSimplexSolver, align 4 ; 5 uses
  %9 = alloca %class.btSubsimplexConvexCast, align 8 ; 7 uses
  %10 = alloca %"struct.btCollisionWorld::LocalRayResult", align 8 ; 8 uses
  %11 = alloca %class.btVector3, align 8          ; 7 uses
  %12 = alloca %class.btVector3, align 8          ; 7 uses
  %13 = alloca %struct.BridgeTriangleRaycastCallback, align 8 ; 16 uses
  %14 = alloca %class.btVector3, align 8          ; 8 uses
  %15 = alloca %class.btVector3, align 8          ; 9 uses
  %16 = alloca %struct.BridgeTriangleRaycastCallback.0, align 8 ; 16 uses
  %17 = alloca %class.btVector3, align 4          ; 10 uses
  %18 = alloca %class.btVector3, align 4          ; 10 uses
  %19 = alloca %class.btTransform, align 16       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %6, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 8, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 56
  store float 0.000000e+00, ptr %i.c, align 8, !tbaa !136
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !46   ; 4 uses
  %i.f = icmp slt i32 %i.e, 20
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12btConvexCast10CastResultE, i64 16), ptr %7, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 176
  store ptr null, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 184
  store float 0.000000e+00, ptr %i.i, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = load float, ptr %i.j, align 8, !tbaa !53
  store float %i.k, ptr %i.g, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 328 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, -16
  store i8 %i.n, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %8)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.o = invoke noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(188) %7)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 140
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 3 uses
  %i.s = load float, ptr %i.p, align 8, !tbaa !47 ; 4 uses
  %i.t = load float, ptr %i.q, align 4, !tbaa !47 ; 4 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.u)
  %i.w = load float, ptr %i.r, align 8, !tbaa !47 ; 4 uses
  %i.x = call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.v)
  %i.y = fcmp ogt float %i.x, f0x38D1B717
  br i1 %i.y, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.z = load float, ptr %i.g, align 8, !tbaa !54 ; 2 uses
  %i.aa = load float, ptr %i.j, align 8, !tbaa !53
  %i.ab = fcmp olt float %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load <2 x float>, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load float, ptr %i.af, align 4, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !47
  %i.al = fmul float %i.t, %i.ak
  %i.am = call float @llvm.fmuladd.f32(float %i.ai, float %i.s, float %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !47
  %i.ap = call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.w, float %i.am) ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.r, align 8, !tbaa !42
  %i.aq = load <2 x float>, ptr %0, align 4, !tbaa !47 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.ae, align 4, !tbaa !47 ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.t, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.av = fmul <2 x float> %i.at, %i.au
  %i.aw = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.ax = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.av)
  %i.ba = insertelement <2 x float> %i.ad, float %i.ag, i64 1
  %i.bb = insertelement <2 x float> poison, float %i.w, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bc, <2 x float> %i.az) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bd, %i.bd
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bf = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.bg = call float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.be)
  %i.bh = call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.bg)
  %i.bi = call noundef float @sqrtf(float noundef %i.bh) #14, !tbaa !7
  %i.bj = fdiv float 1.000000e+00, %i.bi          ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bd, %i.bl
  store <2 x float> %i.bm, ptr %i.p, align 8, !tbaa !47
  %i.bn = fmul float %i.ap, %i.bj
  store float %i.bn, ptr %i.r, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr %2, ptr %10, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.bo, align 8, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !43
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 32
  store float %i.z, ptr %i.bq, align 8, !tbaa !59
  %i.br = load ptr, ptr %5, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef float %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(36) %10, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.l

bb.i:                                             ; preds = %bb.l, %bb.b
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.n

bb.l:                                             ; preds = %bb.e, %bb.h, %bb.f, %bb.d
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.loopexit

bb.n:                                             ; preds = %bb.k, %bb.j
  %.pn91 = phi { ptr, i32 } [ %i.bx, %bb.k ], [ %i.bw, %bb.j ]
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.o unwind label %bb.at

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pn93 = phi { ptr, i32 } [ %i.bv, %bb.i ], [ %.pn91, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.ar

bb.p:                                             ; preds = %bb.a
  %i.by = add nsw i32 %i.e, -21
  %i.bz = icmp ult i32 %i.by, 9
  br i1 %i.bz, label %bb.q, label %bb.an

bb.q:                                             ; preds = %bb.p
  %i.ca = icmp eq i32 %i.e, 21
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cg = load float, ptr %i.cd, align 4, !tbaa !47, !noalias !41 ; 3 uses
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !47, !noalias !41 ; 3 uses
  %i.ci = load float, ptr %i.cf, align 4, !tbaa !47, !noalias !41 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cm = load <2 x float>, ptr %4, align 4, !tbaa !47, !noalias !41 ; 5 uses
  %i.cn = load <2 x float>, ptr %i.cb, align 4, !tbaa !47, !noalias !41 ; 5 uses
  %i.co = load <2 x float>, ptr %i.cc, align 4, !tbaa !47, !noalias !41 ; 5 uses
  %i.cp = load float, ptr %i.cj, align 4, !tbaa !47, !noalias !41
  %i.cq = fneg float %i.cp                        ; 2 uses
  %i.cr = load float, ptr %i.ck, align 4, !tbaa !47, !noalias !41
  %i.cs = fneg float %i.cr                        ; 2 uses
  %i.ct = load float, ptr %i.cl, align 4, !tbaa !47, !noalias !41
  %i.cu = fneg float %i.ct                        ; 2 uses
  %i.cv = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.cn, %i.cw
  %i.cy = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cz, <2 x float> %i.cx)
  %i.db = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.dc, <2 x float> %i.da) ; 4 uses
  %i.de = fmul float %i.ch, %i.cs
  %i.df = call float @llvm.fmuladd.f32(float %i.cg, float %i.cq, float %i.de)
  %i.dg = call noundef float @llvm.fmuladd.f32(float %i.ci, float %i.cu, float %i.df) ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.ca, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.dj = load float, ptr %i.di, align 4, !tbaa !47
  %i.dk = insertelement <2 x float> poison, float %i.dj, i64 0 ; 2 uses
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dp = load float, ptr %i.do, align 4, !tbaa !47 ; 2 uses
  %i.dq = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = load <2 x float>, ptr %i.dh, align 4, !tbaa !47 ; 4 uses
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.du = fmul <2 x float> %i.cn, %i.dt
  %i.dv = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.dv, <2 x float> %i.du)
  %i.dx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.dl, <2 x float> %i.dw)
  %i.dy = fadd <2 x float> %i.dd, %i.dx
  %i.dz = load <2 x float>, ptr %i.dn, align 4, !tbaa !47 ; 4 uses
  %i.ea = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = shufflevector <2 x float> %i.ds, <2 x float> %i.dz, <2 x i32> <i32 1, i32 3>
  %i.ed = fmul <2 x float> %i.eb, %i.ec
  %i.ee = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = shufflevector <2 x float> %i.ds, <2 x float> %i.dz, <2 x i32> <i32 0, i32 2>
  %i.eh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.eg, <2 x float> %i.ed)
  %i.ei = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = insertelement <2 x float> %i.dk, float %i.dp, i64 1
  %i.el = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.ek, <2 x float> %i.eh)
  %i.em = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = fadd <2 x float> %i.en, %i.el           ; 2 uses
  %i.ep = insertelement <2 x float> %i.eo, float 0.000000e+00, i64 1
  store <2 x float> %i.dy, ptr %11, align 8
  store <2 x float> %i.ep, ptr %i.dm, align 8
  %i.eq = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.er = fmul <2 x float> %i.cn, %i.eq
  %i.es = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.es, <2 x float> %i.er)
  %i.eu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.dr, <2 x float> %i.et)
  %i.ev = fadd <2 x float> %i.dd, %i.eu
  %i.ew = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.eo, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.ev, ptr %12, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %12, i64 8
  store <2 x float> %i.ew, ptr %i.ex, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !137
  invoke void @_ZN25btTriangleRaycastCallbackC2ERK9btVector3S2_j(ptr noundef nonnull align 8 dereferenceable(136) %13, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.ez)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback, i64 16), ptr %13, align 8, !tbaa !9
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %5, ptr %i.fa, align 8, !tbaa !65
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 56
  store ptr %2, ptr %i.fb, align 8, !tbaa !66
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 64
  store ptr %3, ptr %i.fc, align 8, !tbaa !138
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fd, ptr noundef nonnull readonly align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !43
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !43
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !43
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !43
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fi = load float, ptr %i.fh, align 8, !tbaa !53
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 44
  store float %i.fi, ptr %i.fj, align 4, !tbaa !139
  invoke void @_ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(93) %3, ptr noundef nonnull %13, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %13)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %.loopexit

bb.v:                                             ; preds = %bb.r, %bb.t
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.fl = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE:bb.a
  %i.kj = insertelement <4 x float> %i.ki, float 0.000000e+00, i64 3 ; 2 uses
  %i.kk = shufflevector <2 x float> %i.jw, <2 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.kl = insertelement <4 x float> %i.kh, float %.sroa.6.0.copyload, i64 2
  %i.km = insertelement <4 x float> %i.kj, float %.sroa.14.32.copyload, i64 2
  %.sroa.18.48.copyload = load float, ptr %.sroa.18.48..sroa_idx, align 8 ; 2 uses
  %.sroa.17.48.copyload = load float, ptr %.sroa.17.48..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.kn = load <2 x float>, ptr %4, align 4, !tbaa !47, !noalias !142 ; 3 uses
  %i.ko = load <2 x float>, ptr %i.iz, align 4, !tbaa !47, !noalias !142 ; 3 uses
  %i.kp = shufflevector <2 x float> %i.ko, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.kq = fmul <4 x float> %i.kp, %i.kf
  %i.kr = shufflevector <2 x float> %i.kn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ks = insertelement <4 x float> %i.kr, float -0.000000e+00, i64 3
  %i.kt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kh, <4 x float> %i.ks, <4 x float> %i.kq)
  %i.ku = shufflevector <2 x float> %i.ko, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.kv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kj, <4 x float> %i.ku, <4 x float> %i.kt)
  %i.kw = load <2 x float>, ptr %i.jc, align 4, !tbaa !47, !noalias !142 ; 3 uses
  %i.kx = load <2 x float>, ptr %i.jd, align 4, !tbaa !47, !noalias !142 ; 3 uses
  %i.ky = shufflevector <2 x float> %i.kw, <2 x float> %i.kn, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.kz = fmul <4 x float> %i.ka, %i.ky
  %i.la = shufflevector <2 x float> %i.kw, <2 x float> %i.kn, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.lb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.la, <4 x float> %i.kc, <4 x float> %i.kz)
  %i.lc = shufflevector <2 x float> %i.kx, <2 x float> %i.ko, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ld = insertelement <4 x float> %i.kk, float %.sroa.18.48.copyload, i64 3
  %i.le = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lc, <4 x float> %i.ld, <4 x float> %i.lb) ; 2 uses
  %i.lf = load float, ptr %i.je, align 4, !tbaa !47, !noalias !141
  %i.lg = extractelement <4 x float> %i.le, i64 3
  %i.lh = fadd float %i.lg, %i.lf
  %i.li = load <2 x float>, ptr %i.jf, align 4, !tbaa !47, !noalias !141
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lk = load <2 x float>, ptr %i.ja, align 4, !tbaa !47, !noalias !142 ; 4 uses
  %i.ll = load <2 x float>, ptr %i.jb, align 4, !tbaa !47, !noalias !142 ; 3 uses
  %i.lm = insertelement <2 x float> poison, float %.sroa.17.48.copyload, i64 0
  %i.ln = shufflevector <2 x float> %i.lm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lo = shufflevector <2 x float> %i.kx, <2 x float> %i.ll, <2 x i32> <i32 0, i32 2>
  %i.lp = fmul <2 x float> %i.ln, %i.lo
  %i.lq = shufflevector <2 x float> %i.kw, <2 x float> %i.lk, <2 x i32> <i32 0, i32 2>
  %i.lr = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ls = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lq, <2 x float> %i.lr, <2 x float> %i.lp)
  %i.lt = shufflevector <2 x float> %i.kx, <2 x float> %i.ll, <2 x i32> <i32 1, i32 3>
  %i.lu = insertelement <2 x float> poison, float %.sroa.18.48.copyload, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lt, <2 x float> %i.lv, <2 x float> %i.ls)
  %i.lx = fadd <2 x float> %i.lw, %i.lj           ; 2 uses
  %i.ly = insertelement <2 x float> %i.lx, float 0.000000e+00, i64 1
  store <4 x float> %i.kv, ptr %19, align 16, !alias.scope !141
  %i.lz = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.ma = insertelement <4 x float> %i.lz, float 0.000000e+00, i64 3
  %i.mb = insertelement <4 x float> %i.ma, float %.sroa.10.16.copyload, i64 2
  %i.mc = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.md = shufflevector <4 x float> %i.kf, <4 x float> %i.mc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.me = fmul <4 x float> %i.mb, %i.md
  %i.mf = shufflevector <2 x float> %i.lk, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.mg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kl, <4 x float> %i.mf, <4 x float> %i.me)
  %i.mh = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mi = shufflevector <4 x float> %i.mh, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.mj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.km, <4 x float> %i.mi, <4 x float> %i.mg)
  %i.mk = insertelement <2 x float> %i.lx, float %i.lh, i64 0
  store <4 x float> %i.mj, ptr %i.jg, align 16, !alias.scope !141
  %i.ml = insertelement <4 x float> %i.le, float 0.000000e+00, i64 3
  store <4 x float> %i.ml, ptr %i.jh, align 16, !alias.scope !141
  store <2 x float> %i.mk, ptr %i.ji, align 16, !alias.scope !141
  store <2 x float> %i.ly, ptr %.sroa.4.0..sroa_idx.i130, align 8, !tbaa !42, !alias.scope !141
  store ptr %i.jq, ptr %i.jj, align 8, !tbaa !44
  invoke void @_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull %2, ptr noundef %i.jq, ptr noundef nonnull align 4 dereferenceable(64) %19, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store ptr %.pre, ptr %i.jj, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mm = load i32, ptr %i.iv, align 4, !tbaa !74
  %i.mn = sext i32 %i.mm to i64
  %i.mo = icmp slt i64 %indvars.iv.next, %i.mn
  br i1 %i.mo, label %bb.ao, label %.loopexit

bb.aq:                                            ; preds = %bb.ao
  %i.mp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %bb.ar

.loopexit:                                        ; preds = %bb.ap, %.preheader, %bb.aj, %bb.u, %bb.an, %bb.m
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void

bb.ar:                                            ; preds = %bb.aq, %bb.am, %bb.x, %bb.o
  %.pn93.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81, %bb.am ], [ %.pn93, %bb.o ], [ %i.mp, %bb.aq ], [ %.pn86, %bb.x ]
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  resume { ptr, i32 } %.pn93.pn.pn.pn.pn

bb.at:                                            ; preds = %bb.ar, %bb.al, %bb.w, %bb.n
  %i.mq = landingpad { ptr, i32 }
          catch ptr null
  %i.mr = extractvalue { ptr, i32 } %i.mq, 0
  call void @__clang_call_terminate(ptr %i.mr) #13
  unreachable
}

declare void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

declare noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(188)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD2Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(93), ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, float noundef %7) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.btConvexCast::CastResult", align 8 ; 12 uses
  %9 = alloca %class.btVoronoiSimplexSolver, align 4 ; 5 uses
  %10 = alloca %class.btGjkEpaPenetrationDepthSolver, align 8 ; 5 uses
  %11 = alloca %class.btContinuousConvexCollision, align 8 ; 8 uses
  %12 = alloca %"struct.btCollisionWorld::LocalConvexResult", align 8 ; 9 uses
  %13 = alloca %class.btVector3, align 8          ; 6 uses
  %14 = alloca %class.btVector3, align 8          ; 6 uses
  %15 = alloca %class.btTransform, align 16       ; 9 uses
  %16 = alloca %struct.BridgeTriangleConvexcastCallback, align 8 ; 12 uses
  %17 = alloca %class.btVector3, align 4          ; 5 uses
  %18 = alloca %class.btVector3, align 4          ; 5 uses
  %19 = alloca %class.btTransform, align 16       ; 10 uses
  %20 = alloca %struct.BridgeTriangleConvexcastCallback.3, align 8 ; 12 uses
  %21 = alloca %class.btVector3, align 16         ; 6 uses
  %22 = alloca %class.btVector3, align 8          ; 6 uses
  %23 = alloca %class.btVector3, align 8          ; 9 uses
  %24 = alloca %class.btVector3, align 8          ; 6 uses
  %25 = alloca %class.btTransform, align 16       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = icmp slt i32 %i.b, 20
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12btConvexCast10CastResultE, i64 16), ptr %8, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 176
  store ptr null, ptr %i.e, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 184
  store float %7, ptr %i.f, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !80
  store float %i.h, ptr %i.d, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 328 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -16
  store i8 %i.k, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV30btGjkEpaPenetrationDepthSolver, i64 16), ptr %10, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  invoke void @_ZN27btContinuousConvexCollisionC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %10)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %11, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(188) %8)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 3 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !47 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 140 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !47 ; 3 uses
  %i.t = fmul float %i.s, %i.s
  %i.u = call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !47 ; 3 uses
  %i.x = call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.u) ; 2 uses
  %i.y = fcmp ogt float %i.x, f0x38D1B717
  br i1 %i.y, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.z = load float, ptr %i.d, align 8, !tbaa !54 ; 2 uses
  %i.aa = load float, ptr %i.g, align 8, !tbaa !80
  %i.ab = fcmp olt float %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ac = call noundef float @sqrtf(float noundef %i.x) #14, !tbaa !7
  %i.ad = fdiv float 1.000000e+00, %i.ac          ; 3 uses
  %i.ae = fmul float %i.q, %i.ad
  store float %i.ae, ptr %i.p, align 8, !tbaa !47
  %i.af = fmul float %i.s, %i.ad
  store float %i.af, ptr %i.r, align 4, !tbaa !47
  %i.ag = fmul float %i.w, %i.ad
  store float %i.ag, ptr %i.v, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 152
  store ptr %3, ptr %12, align 8, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !43
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !43
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 48
  store float %i.z, ptr %i.al, align 8, !tbaa !84
  %i.am = load ptr, ptr %6, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef float %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(52) %12, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.l

bb.i:                                             ; preds = %bb.l, %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.n

bb.l:                                             ; preds = %bb.e, %bb.h, %bb.f, %bb.d
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.ak

bb.n:                                             ; preds = %bb.k, %bb.j
  %.pn89 = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.ar, %bb.j ]
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %bb.o unwind label %bb.al

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pn91 = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %.pn89, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %_ZN14CProfileSampleD2Ev.exit

bb.p:                                             ; preds = %bb.a
  %i.at = add nsw i32 %i.b, -21
  %i.au = icmp ult i32 %i.at, 9
  br i1 %i.au, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p
  %i.av = icmp eq i32 %i.b, 21
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ay = load float, ptr %5, align 4, !tbaa !47, !noalias !41 ; 4 uses
  %i.az = load <3 x float>, ptr %5, align 4, !tbaa !47, !noalias !41 ; 9 uses
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !47, !noalias !41 ; 3 uses
  %i.bb = load <3 x float>, ptr %i.aw, align 4, !tbaa !47, !noalias !41 ; 7 uses
  %i.bc = load float, ptr %i.ax, align 4, !tbaa !47, !noalias !41 ; 4 uses
  %i.bd = load <3 x float>, ptr %i.ax, align 4, !tbaa !47, !noalias !41 ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bh = load float, ptr %i.be, align 4, !tbaa !47, !noalias !41
  %i.bi = fneg float %i.bh                        ; 2 uses
  %i.bj = load float, ptr %i.bf, align 4, !tbaa !47, !noalias !41
  %i.bk = fneg float %i.bj                        ; 2 uses
  %i.bl = load float, ptr %i.bg, align 4, !tbaa !47, !noalias !41
  %i.bm = fneg float %i.bl                        ; 2 uses
  %i.bn = shufflevector <3 x float> %i.bb, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.bo = insertelement <2 x float> %i.bn, float %i.ba, i64 0 ; 5 uses
  %i.bp = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bo, %i.bq
  %i.bs = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.bt = insertelement <2 x float> %i.bs, float %i.ay, i64 0 ; 4 uses
  %i.bu = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bv, <2 x float> %i.br)
  %i.bx = shufflevector <3 x float> %i.bd, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.by = insertelement <2 x float> %i.bx, float %i.bc, i64 0 ; 4 uses
  %i.bz = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ca, <2 x float> %i.bw) ; 4 uses
  %i.cc = extractelement <3 x float> %i.bb, i64 2 ; 4 uses
  %i.cd = fmul float %i.cc, %i.bk
  %i.ce = extractelement <3 x float> %i.az, i64 2 ; 4 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.bi, float %i.cd)
  %i.cg = extractelement <3 x float> %i.bd, i64 2 ; 4 uses
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.cg, float %i.bm, float %i.cf) ; 3 uses
  br i1 %i.av, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.ci = shufflevector <3 x float> %i.bd, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.cj = shufflevector <3 x float> %i.az, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.ck = shufflevector <3 x float> %i.bb, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.co = load float, ptr %i.cl, align 4, !tbaa !47 ; 2 uses
  %i.cp = load float, ptr %i.cm, align 4, !tbaa !47 ; 2 uses
  %i.cq = load float, ptr %i.cn, align 4, !tbaa !47 ; 2 uses
  %i.cr = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.bo, %i.cs
  %i.cu = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.cv, <2 x float> %i.ct)
  %i.cx = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.cy, <2 x float> %i.cw)
  %i.da = fadd <2 x float> %i.cb, %i.cz
  %i.db = fmul float %i.cc, %i.cp
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.co, float %i.db)
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %i.cg, float %i.cq, float %i.dc)
  %i.de = fadd float %i.ch, %i.dd
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.de, i64 0
  store <2 x float> %i.da, ptr %13, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.df, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dj = load float, ptr %i.di, align 4, !tbaa !47 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dp = load <2 x float>, ptr %i.dg, align 4, !tbaa !47 ; 3 uses
  %i.dq = load float, ptr %i.dh, align 4, !tbaa !47
  %i.dr = fmul float %i.ba, %i.dq
  %i.ds = extractelement <2 x float> %i.dp, i64 0
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ds, float %i.dr)
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.bc, float %i.dj, float %i.dt)
  %i.dv = load <2 x float>, ptr %2, align 4, !tbaa !47, !noalias !153 ; 3 uses
  %i.dw = load <2 x float>, ptr %i.dl, align 4, !tbaa !47, !noalias !153 ; 3 uses
  %i.dx = shufflevector <2 x float> %i.dp, <2 x float> %i.dw, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.dy = fmul <4 x float> %i.ck, %i.dx
  %i.dz = shufflevector <2 x float> %i.dp, <2 x float> %i.dv, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.cj, <4 x float> %i.dy)
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ec = load <2 x float>, ptr %i.dm, align 4, !tbaa !47, !noalias !153 ; 3 uses
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.ee = insertelement <3 x float> poison, float %i.dj, i64 0
  %i.ef = shufflevector <3 x float> %i.ee, <3 x float> %i.ed, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> %i.ci, <4 x float> %i.ea) ; 3 uses
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ei = insertelement <2 x float> %i.eh, float %i.du, i64 0
  %i.ej = fadd <2 x float> %i.cb, %i.ei
  %i.ek = extractelement <4 x float> %i.eg, i64 1
  %i.el = fadd float %i.ch, %i.ek
  %.sroa.3.12.vec.insert.i.i97 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.el, i64 0
  store <2 x float> %i.ej, ptr %14, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i97, ptr %i.dk, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ep = load <2 x float>, ptr %i.dn, align 4, !tbaa !47, !noalias !153 ; 3 uses
  %i.eq = load float, ptr %i.em, align 4, !tbaa !47, !noalias !153
  %i.er = load <2 x float>, ptr %i.do, align 4, !tbaa !47, !noalias !153 ; 2 uses
  %i.es = load float, ptr %i.en, align 4, !tbaa !47, !noalias !153
  %i.et = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.eu = shufflevector <2 x float> %i.dw, <2 x float> %i.er, <4 x i32> <i32 3, i32 0, i32 2, i32 3>
  %i.ev = fmul <4 x float> %i.et, %i.eu
  %i.ew = shufflevector <2 x float> %i.dv, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ex = shufflevector <3 x float> %i.ew, <3 x float> %i.az, <4 x i32> <i32 poison, i32 0, i32 4, i32 4>
  %i.ey = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ez = shufflevector <4 x float> %i.ex, <4 x float> %i.ey, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.fa = shufflevector <2 x float> %i.ep, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.fb = shufflevector <3 x float> %i.az, <3 x float> %i.fa, <4 x i32> <i32 poison, i32 1, i32 3, i32 4>
  %i.fc = insertelement <4 x float> %i.fb, float %i.ay, i64 0
  %i.fd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ez, <4 x float> %i.fc, <4 x float> %i.ev)
  %i.fe = load <2 x float>, ptr %i.eb, align 4, !tbaa !47, !noalias !153 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mp, i64 20
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mp, i64 36
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mp, i64 40
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 48
  %.sroa.17.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mp, i64 52
  %.sroa.18.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mp, i64 56
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 64
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !78 ; 2 uses
  %i.mv = load <2 x float>, ptr %i.mp, align 8    ; 2 uses
  %i.mw = load <2 x float>, ptr %i.mq, align 8    ; 2 uses
  %i.mx = load <2 x float>, ptr %i.ms, align 8    ; 3 uses
  %i.my = shufflevector <2 x float> %i.mw, <2 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 poison, i32 3>
  %i.mz = shufflevector <2 x float> %i.mv, <2 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.na = load <2 x float>, ptr %i.mr, align 8    ; 2 uses
  %i.nb = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx127, align 8
  %i.nc = load <2 x float>, ptr %.sroa.9.16..sroa_idx, align 4 ; 2 uses
  %.sroa.10.16.copyload = load float, ptr %.sroa.10.16..sroa_idx, align 8
  %i.nd = shufflevector <2 x float> %i.nc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ne = shufflevector <4 x float> %i.my, <4 x float> %i.nd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.nf = shufflevector <2 x float> %i.nb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ng = shufflevector <4 x float> %i.mz, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.nh = load <2 x float>, ptr %.sroa.13.32..sroa_idx, align 4 ; 2 uses
  %.sroa.14.32.copyload = load float, ptr %.sroa.14.32..sroa_idx, align 8
  %i.ni = shufflevector <2 x float> %i.mw, <2 x float> %i.nc, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.nj = insertelement <4 x float> %i.ni, float 1.000000e+00, i64 3 ; 2 uses
  %i.nk = shufflevector <2 x float> %i.mv, <2 x float> %i.nb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.nl = insertelement <4 x float> %i.nk, float 0.000000e+00, i64 3 ; 2 uses
  %i.nm = shufflevector <2 x float> %i.na, <2 x float> %i.nh, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.nn = insertelement <4 x float> %i.nm, float 0.000000e+00, i64 3 ; 2 uses
  %i.no = shufflevector <2 x float> %i.na, <2 x float> %i.nh, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.np = insertelement <4 x float> %i.nl, float %.sroa.6.0.copyload, i64 2
  %i.nq = insertelement <4 x float> %i.nn, float %.sroa.14.32.copyload, i64 2
  %.sroa.18.48.copyload = load float, ptr %.sroa.18.48..sroa_idx, align 8 ; 2 uses
  %.sroa.17.48.copyload = load float, ptr %.sroa.17.48..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.nr = load <2 x float>, ptr %5, align 4, !tbaa !47, !noalias !159 ; 3 uses
  %i.ns = load <2 x float>, ptr %i.md, align 4, !tbaa !47, !noalias !159 ; 3 uses
  %i.nt = shufflevector <2 x float> %i.ns, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.nu = fmul <4 x float> %i.nt, %i.nj
  %i.nv = shufflevector <2 x float> %i.nr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.nw = insertelement <4 x float> %i.nv, float -0.000000e+00, i64 3
  %i.nx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nl, <4 x float> %i.nw, <4 x float> %i.nu)
  %i.ny = shufflevector <2 x float> %i.ns, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.nz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nn, <4 x float> %i.ny, <4 x float> %i.nx)
  %i.oa = load <2 x float>, ptr %i.mg, align 4, !tbaa !47, !noalias !159 ; 3 uses
  %i.ob = load <2 x float>, ptr %i.mh, align 4, !tbaa !47, !noalias !159 ; 3 uses
  %i.oc = shufflevector <2 x float> %i.oa, <2 x float> %i.nr, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.od = fmul <4 x float> %i.ne, %i.oc
  %i.oe = shufflevector <2 x float> %i.oa, <2 x float> %i.nr, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.of = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oe, <4 x float> %i.ng, <4 x float> %i.od)
  %i.og = shufflevector <2 x float> %i.ob, <2 x float> %i.ns, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.oh = insertelement <4 x float> %i.no, float %.sroa.18.48.copyload, i64 3
  %i.oi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.og, <4 x float> %i.oh, <4 x float> %i.of) ; 2 uses
  %i.oj = load float, ptr %i.mi, align 4, !tbaa !47, !noalias !158
  %i.ok = extractelement <4 x float> %i.oi, i64 3
  %i.ol = fadd float %i.ok, %i.oj
  %i.om = load <2 x float>, ptr %i.mj, align 4, !tbaa !47, !noalias !158
  %i.on = shufflevector <2 x float> %i.om, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oo = load <2 x float>, ptr %i.me, align 4, !tbaa !47, !noalias !159 ; 4 uses
  %i.op = load <2 x float>, ptr %i.mf, align 4, !tbaa !47, !noalias !159 ; 3 uses
  %i.oq = insertelement <2 x float> poison, float %.sroa.17.48.copyload, i64 0
  %i.or = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.os = shufflevector <2 x float> %i.ob, <2 x float> %i.op, <2 x i32> <i32 0, i32 2>
  %i.ot = fmul <2 x float> %i.or, %i.os
  %i.ou = shufflevector <2 x float> %i.oa, <2 x float> %i.oo, <2 x i32> <i32 0, i32 2>
  %i.ov = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ow = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ou, <2 x float> %i.ov, <2 x float> %i.ot)
  %i.ox = shufflevector <2 x float> %i.ob, <2 x float> %i.op, <2 x i32> <i32 1, i32 3>
  %i.oy = insertelement <2 x float> poison, float %.sroa.18.48.copyload, i64 0
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ox, <2 x float> %i.oz, <2 x float> %i.ow)
  %i.pb = fadd <2 x float> %i.pa, %i.on           ; 2 uses
  %i.pc = insertelement <2 x float> %i.pb, float 0.000000e+00, i64 1
  store <4 x float> %i.nz, ptr %25, align 16, !alias.scope !158
  %i.pd = shufflevector <2 x float> %i.oo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.pe = insertelement <4 x float> %i.pd, float 0.000000e+00, i64 3
  %i.pf = insertelement <4 x float> %i.pe, float %.sroa.10.16.copyload, i64 2
  %i.pg = shufflevector <2 x float> %i.oo, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ph = shufflevector <4 x float> %i.nj, <4 x float> %i.pg, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.pi = fmul <4 x float> %i.pf, %i.ph
  %i.pj = shufflevector <2 x float> %i.oo, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.pk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.np, <4 x float> %i.pj, <4 x float> %i.pi)
  %i.pl = shufflevector <2 x float> %i.op, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.pm = shufflevector <4 x float> %i.pl, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.pn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nq, <4 x float> %i.pm, <4 x float> %i.pk)
  %i.po = insertelement <2 x float> %i.pb, float %i.ol, i64 0
  store <4 x float> %i.pn, ptr %i.mk, align 16, !alias.scope !158
  %i.pp = insertelement <4 x float> %i.oi, float 0.000000e+00, i64 3
  store <4 x float> %i.pp, ptr %i.ml, align 16, !alias.scope !158
  store <2 x float> %i.po, ptr %i.mm, align 16, !alias.scope !158
  store <2 x float> %i.pc, ptr %.sroa.4.0..sroa_idx.i126, align 8, !tbaa !42, !alias.scope !158
  store ptr %i.mu, ptr %i.mn, align 8, !tbaa !44
  invoke void @_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull %3, ptr noundef %i.mu, ptr noundef nonnull align 4 dereferenceable(64) %25, ptr noundef nonnull align 8 dereferenceable(16) %6, float noundef %7)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store ptr %.pre, ptr %i.mn, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pq = load i32, ptr %i.lz, align 4, !tbaa !74
  %i.pr = sext i32 %i.pq to i64
  %i.ps = icmp slt i64 %indvars.iv.next, %i.pr
  br i1 %i.ps, label %bb.ah, label %._crit_edge

bb.aj:                                            ; preds = %bb.ah
  %i.pt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.al

._crit_edge:                                      ; preds = %bb.ai, %bb.ag
  call void @_ZN15CProfileManager12Stop_ProfileEv()
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aa, %bb.t, %._crit_edge, %bb.af, %bb.m
  ret void

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %bb.aj, %bb.ae, %bb.v, %bb.o
  %.pn91.pn.pn = phi { ptr, i32 } [ %.pn91, %bb.o ], [ %i.gs, %bb.v ], [ %.pn86.pn, %bb.ae ], [ %i.pt, %bb.aj ]
  resume { ptr, i32 } %.pn91.pn.pn

bb.al:                                            ; preds = %bb.aj, %bb.ad, %bb.u, %bb.n
  %i.pu = landingpad { ptr, i32 }
          catch ptr null
  %i.pv = extractvalue { ptr, i32 } %i.pu, 0
  call void @__clang_call_terminate(ptr %i.pv) #13
  unreachable
}

declare void @_ZN27btContinuousConvexCollisionC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare void @_ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(93), ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.btSingleRayCallback, align 8 ; 29 uses
  %5 = alloca %class.btVector3, align 4           ; 4 uses
  %6 = alloca %class.btVector3, align 4           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV19btSingleRayCallback, i64 16), ptr %4, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !43
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !43
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 216
  store ptr %0, ptr %i.e, align 8, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 224
  store ptr %3, ptr %i.f, align 8, !tbaa !161
  store float 1.000000e+00, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 116
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 140
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 180
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !47
  %i.w = fsub float %i.t, %i.v                    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load <2 x float>, ptr %2, align 4, !tbaa !47
  %i.z = load <2 x float>, ptr %1, align 4, !tbaa !47
  %i.aa = fsub <2 x float> %i.y, %i.z             ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.aa, %i.aa
  %i.ab = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ac = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.ab)
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.ad)
  %i.af = tail call noundef float @sqrtf(float noundef %i.ae) #14, !tbaa !7
  %i.ag = fdiv float 1.000000e+00, %i.af          ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %i.aa, %i.ai           ; 4 uses
  %i.ak = fmul float %i.w, %i.ag                  ; 3 uses
  %i.al = fcmp oeq <2 x float> %i.aj, zeroinitializer
  %i.am = fdiv <2 x float> splat (float 1.000000e+00), %i.aj
  %i.an = select <2 x i1> %i.al, <2 x float> splat (float f0x5D5E0B6B), <2 x float> %i.am ; 2 uses
  store <2 x float> %i.an, ptr %i.x, align 8, !tbaa !47
  %i.ao = fcmp oeq float %i.ak, 0.000000e+00
  %i.ap = fdiv float 1.000000e+00, %i.ak
  %i.aq = select i1 %i.ao, float f0x5D5E0B6B, float %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.aq, ptr %i.ar, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = fcmp olt <2 x float> %i.an, zeroinitializer
  %i.au = zext <2 x i1> %i.at to <2 x i32>
  store <2 x i32> %i.au, ptr %i.as, align 8, !tbaa !7
  %i.av = fcmp olt float %i.aq, 0.000000e+00
  %i.aw = zext i1 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !7
  %i.ay = load float, ptr %i.b, align 8, !tbaa !47
  %i.az = load float, ptr %i.a, align 8, !tbaa !47
  %i.ba = fsub float %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bd = load <2 x float>, ptr %i.bb, align 4, !tbaa !47
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !47
  %i.bf = fsub <2 x float> %i.bd, %i.be           ; 2 uses
  %shift = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop13 = fmul <2 x float> %shift, %i.bf
  %i.bg = extractelement <2 x float> %foldExtExtBinop13, i64 0
  %i.bh = extractelement <2 x float> %i.aj, i64 0
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.ba, float %i.bg)
  %i.bj = extractelement <2 x float> %i.bf, i64 1
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.bj, float %i.bi)
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.bk, ptr %i.bl, align 4, !tbaa !97
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, float noundef %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.btQuaternion, align 8        ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %8 = alloca %class.btTransform, align 4         ; 9 uses
  %9 = alloca %class.btTransform, align 4         ; 8 uses
  %10 = alloca %class.btVector3, align 4          ; 5 uses
  %11 = alloca %class.btVector3, align 4          ; 5 uses
  %12 = alloca %class.btVector3, align 8          ; 6 uses
  %13 = alloca %class.btVector3, align 4          ; 5 uses
  %14 = alloca %class.btTransform, align 4        ; 17 uses
  %15 = alloca %struct.btSingleSweepCallback, align 8 ; 24 uses
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !43
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !43
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !43
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !43
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !43
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !43
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  invoke void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.n = load float, ptr %i.a, align 4, !tbaa !47 ; 2 uses
  %i.o = load <2 x float>, ptr %7, align 8, !tbaa !47
  %i.p = insertelement <2 x float> poison, float %i.n, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !47
  %i.u = fmul float %i.n, %i.t
  %.sroa.3.12.vec.insert.i.i15.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.u, i64 0
  store <2 x float> %i.r, ptr %12, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i15.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  invoke void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 4
  %.fca.0.load.i = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0 ; 6 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 1 ; 5 uses
  %i.ab = fmul float %.sroa.0.4.vec.extract, %.sroa.0.4.vec.extract
  %i.ac = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract, float %.sroa.0.0.vec.extract, float %i.ab)
  %.sroa.6.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 4 uses
  %i.ad = call float @llvm.fmuladd.f32(float %.sroa.6.8.vec.extract, float %.sroa.6.8.vec.extract, float %i.ac)
  %.sroa.6.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 5 uses
  %i.ae = call noundef float @llvm.fmuladd.f32(float %.sroa.6.12.vec.extract, float %.sroa.6.12.vec.extract, float %i.ad)
  %i.af = fdiv float 2.000000e+00, %i.ae          ; 3 uses
  %i.ag = fmul float %.sroa.0.0.vec.extract, %i.af ; 2 uses
  %i.ah = fmul float %.sroa.0.4.vec.extract, %i.af ; 3 uses
  %i.ai = fmul float %.sroa.6.8.vec.extract, %i.af ; 4 uses
  %i.aj = fmul float %.sroa.6.12.vec.extract, %i.ag ; 2 uses
  %i.ak = fmul float %.sroa.6.12.vec.extract, %i.ah ; 2 uses
  %i.al = fmul float %.sroa.6.12.vec.extract, %i.ai ; 2 uses
  %i.am = fmul float %.sroa.0.0.vec.extract, %i.ag ; 2 uses
  %i.an = fmul float %.sroa.0.0.vec.extract, %i.ah ; 2 uses
  %i.ao = fmul float %.sroa.0.0.vec.extract, %i.ai ; 2 uses
  %i.ap = fmul float %.sroa.0.4.vec.extract, %i.ah ; 2 uses
  %i.aq = fmul float %.sroa.0.4.vec.extract, %i.ai ; 2 uses
  %i.ar = fmul float %.sroa.6.8.vec.extract, %i.ai ; 2 uses
  %i.as = fadd float %i.ap, %i.ar
  %i.at = fsub float 1.000000e+00, %i.as
  %i.au = fsub float %i.an, %i.al
  %i.av = fadd float %i.ao, %i.ak
  %i.aw = fadd float %i.an, %i.al
  %i.ax = fadd float %i.am, %i.ar
  %i.ay = fsub float 1.000000e+00, %i.ax
  %i.az = fsub float %i.aq, %i.aj
  %i.ba = fsub float %i.ao, %i.ak
  %i.bb = fadd float %i.aq, %i.aj
  %i.bc = fadd float %i.am, %i.ap
  %i.bd = fsub float 1.000000e+00, %i.bc
  store float %i.at, ptr %14, align 4, !tbaa !47
  store float %i.au, ptr %i.aa, align 4, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8
  store float %i.av, ptr %i.be, align 4, !tbaa !47
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 12
  store float 0.000000e+00, ptr %i.bf, align 4, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 16
  store float %i.aw, ptr %i.bg, align 4, !tbaa !47
  store float %i.ay, ptr %i.z, align 4, !tbaa !47
  store float %i.az, ptr %i.y, align 4, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 28
  store float 0.000000e+00, ptr %i.bh, align 4, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 32
  store float %i.ba, ptr %i.bi, align 4, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 36
  store float %i.bb, ptr %i.bj, align 4, !tbaa !47
  store float %i.bd, ptr %i.x, align 4, !tbaa !47
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !47
  invoke void @_ZNK16btCollisionShape21calculateTemporalAabbERK11btTransformRK9btVector3S5_fRS3_S6_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(64) %14, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %12, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV21btSingleSweepCallback, i64 16), ptr %15, align 8, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bk, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !43
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !43
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !43
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !43
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bo, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !43
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !43
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !43
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 152 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !43
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 184
  store ptr %0, ptr %i.bs, align 8, !tbaa !162
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 192
  store ptr %4, ptr %i.bt, align 8, !tbaa !163
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 200
  store float %5, ptr %i.bu, align 8, !tbaa !99
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 208
  store ptr %1, ptr %i.bv, align 8, !tbaa !100
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 160
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !47
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.bz = load float, ptr %i.by, align 8, !tbaa !47
  %i.ca = fsub float %i.bx, %i.bz                 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cc = load <2 x float>, ptr %i.br, align 8, !tbaa !47
  %i.cd = load <2 x float>, ptr %i.bn, align 8, !tbaa !47
  %i.ce = fsub <2 x float> %i.cc, %i.cd           ; 5 uses
  %foldExtExtBinop28 = fmul <2 x float> %i.ce, %i.ce
  %i.cf = extractelement <2 x float> %foldExtExtBinop28, i64 1
  %i.cg = extractelement <2 x float> %i.ce, i64 0 ; 3 uses
  %i.ch = call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cf)
  %i.ci = call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.ch)
  %i.cj = call noundef float @sqrtf(float noundef %i.ci) #14, !tbaa !7
  %i.ck = fdiv float 1.000000e+00, %i.cj          ; 2 uses
  %i.cl = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %i.ce, %i.cm           ; 4 uses
  %i.co = fmul float %i.ca, %i.ck                 ; 3 uses
  %i.cp = fcmp oeq <2 x float> %i.cn, zeroinitializer
  %i.cq = fdiv <2 x float> splat (float 1.000000e+00), %i.cn
  %i.cr = select <2 x i1> %i.cp, <2 x float> splat (float f0x5D5E0B6B), <2 x float> %i.cq ; 2 uses
  store <2 x float> %i.cr, ptr %i.cb, align 8, !tbaa !47
  %i.cs = fcmp oeq float %i.co, 0.000000e+00
  %i.ct = fdiv float 1.000000e+00, %i.co
  %i.cu = select i1 %i.cs, float f0x5D5E0B6B, float %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 16
  store float %i.cu, ptr %i.cv, align 8, !tbaa !47
  %i.cw = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.cx = fcmp olt <2 x float> %i.cr, zeroinitializer
  %i.cy = zext <2 x i1> %i.cx to <2 x i32>
  store <2 x i32> %i.cy, ptr %i.cw, align 8, !tbaa !7
  %i.cz = fcmp olt float %i.cu, 0.000000e+00
  %i.da = zext i1 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 %i.da, ptr %i.db, align 8, !tbaa !7
  %foldExtExtBinop = fmul <2 x float> %i.ce, %i.cn
  %i.dc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dd = extractelement <2 x float> %i.cn, i64 0
  %i.de = call float @llvm.fmuladd.f32(float %i.dd, float %i.cg, float %i.dc)
  %i.df = call noundef float @llvm.fmuladd.f32(float %i.co, float %i.ca, float %i.de)
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 36
  store float %i.df, ptr %i.dg, align 4, !tbaa !97
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !28 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

bb.f:                                             ; preds = %bb.a
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.g ], [ %i.dm, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn18.pn = phi { ptr, i32 } [ %i.do, %bb.i ], [ %.pn.pn, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.k

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %bb.j
  resume { ptr, i32 } %.pn18.pn

bb.k:                                             ; preds = %bb.j
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #13
  unreachable
}

declare void @_ZNK16btCollisionShape21calculateTemporalAabbERK11btTransformRK9btVector3S5_fRS3_S6_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN23btBroadphaseRayCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN16btCollisionWorld14getDebugDrawerEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  ret ptr %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef) local_unnamed_addr #6

declare void @_ZN15CProfileManager12Stop_ProfileEv() local_unnamed_addr #6

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #6

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult9DebugDrawEf(ptr noundef nonnull align 8 dereferenceable(188) %0, float noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(64) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD0Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

declare void @_ZN25btTriangleRaycastCallbackC2ERK9btVector3S2_j(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) unnamed_addr #6

; Function Attrs: inlinehint uwtable
define internal void @_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  resume { ptr, i32 } %i.a
}

declare void @_ZN25btTriangleRaycastCallback15processTriangleEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #6

; Function Attrs: uwtable
define internal noundef float @_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitERK9btVector3fii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 align 2 {
bb.a:
  %5 = alloca %"struct.btCollisionWorld::LocalShapeInfo", align 4 ; 5 uses
  %6 = alloca %"struct.btCollisionWorld::LocalRayResult", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store i32 %3, ptr %5, align 4, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %4, ptr %i.a, align 4, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load <2 x float>, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load float, ptr %i.h, align 8, !tbaa !47
  %i.j = load float, ptr %1, align 4, !tbaa !47   ; 2 uses
  %i.k = load <2 x float>, ptr %i.b, align 8, !tbaa !47 ; 2 uses
  %i.l = load float, ptr %i.c, align 4, !tbaa !47 ; 2 uses
  %i.m = load float, ptr %i.f, align 4, !tbaa !47 ; 2 uses
  %i.n = load <2 x float>, ptr %i.g, align 8, !tbaa !47 ; 2 uses
  %i.o = insertelement <2 x float> poison, float %i.l, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = shufflevector <2 x float> %i.k, <2 x float> %i.n, <2 x i32> <i32 1, i32 3>
  %i.r = fmul <2 x float> %i.p, %i.q
  %i.s = shufflevector <2 x float> %i.k, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.t = insertelement <2 x float> poison, float %i.j, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.u, <2 x float> %i.r)
  %i.w = insertelement <2 x float> %i.e, float %i.i, i64 1
  %i.x = insertelement <2 x float> poison, float %i.m, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.y, <2 x float> %i.v)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
end_hunk_2
begin_hunk_3_@_ZN19btSingleRayCallback7processEPK17btBroadphaseProxy:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164, !nonnull !41, !align !104 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !53
  %i.e = fcmp une float %i.d, 0.000000e+00        ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !106    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %i.h)
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !164, !nonnull !41, !align !104
  tail call void @_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE(ptr noundef nonnull align 4 dereferenceable(64) %i.m, ptr noundef nonnull align 4 dereferenceable(64) %i.n, ptr noundef nonnull %i.f, ptr noundef %i.p, ptr noundef nonnull align 4 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i1 %i.e
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.btMatrix3x3, align 16        ; 9 uses
  %5 = alloca %class.btQuaternion, align 4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load float, ptr %i.d, align 4, !tbaa !47, !noalias !169 ; 3 uses
  %i.f = load float, ptr %0, align 4, !tbaa !47, !noalias !169 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load <3 x float>, ptr %i.c, align 4, !tbaa !47, !noalias !169 ; 3 uses
  %i.j = shufflevector <3 x float> %i.i, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.k = load <2 x float>, ptr %i.a, align 4, !tbaa !47, !noalias !169 ; 3 uses
  %i.l = load float, ptr %i.b, align 4, !tbaa !47, !noalias !169 ; 2 uses
  %i.m = fneg <3 x float> %i.i                    ; 2 uses
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.o = load <2 x float>, ptr %i.g, align 4, !tbaa !47, !noalias !169 ; 4 uses
  %i.p = load float, ptr %i.h, align 4, !tbaa !47, !noalias !169 ; 4 uses
  %i.q = shufflevector <2 x float> %i.k, <2 x float> %i.o, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.r = insertelement <4 x float> %i.q, float %i.e, i64 1 ; 2 uses
  %i.s = fmul <4 x float> %i.r, %i.n
  %i.t = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.u = shufflevector <4 x float> %i.r, <4 x float> %i.t, <4 x i32> <i32 2, i32 0, i32 1, i32 5>
  %i.v = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.j, <4 x float> %i.s) ; 4 uses
  %i.w = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.x = extractelement <4 x float> %i.v, i64 1
  %i.y = extractelement <4 x float> %i.v, i64 0
  %i.z = fneg float %i.l
  %i.aa = fmul float %i.p, %i.z
  %i.ab = extractelement <2 x float> %i.k, i64 0
  %i.ac = fneg float %i.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !47, !noalias !170 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.e, float %i.aa)
  %i.aj = insertelement <4 x float> %i.v, float %i.ai, i64 2
  %i.ak = load <2 x float>, ptr %1, align 4, !tbaa !47, !noalias !170 ; 3 uses
  %i.al = load float, ptr %i.ad, align 4, !tbaa !47, !noalias !170
  %i.am = extractelement <2 x float> %i.ak, i64 0
  %i.an = load <2 x float>, ptr %i.ag, align 4, !tbaa !47, !noalias !170 ; 3 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> %i.ak, <4 x i32> <i32 poison, i32 1, i32 3, i32 3>
  %i.ap = insertelement <4 x float> poison, float %i.af, i64 0
  %i.aq = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.as = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 4, i32 1, i32 1>
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !47, !noalias !170 ; 2 uses
  %i.az = extractelement <4 x float> %i.v, i64 2  ; 2 uses
  %i.ba = fmul float %i.w, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.f, float %i.x, float %i.ba)
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.y, float %i.bb)
  %i.bd = fdiv float 1.000000e+00, %i.bc          ; 3 uses
  %i.be = fmul float %i.az, %i.bd                 ; 3 uses
  %i.bf = fneg float %i.e
  %i.bg = insertelement <2 x float> poison, float %i.f, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.p, i64 1
  %i.bi = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bj = insertelement <2 x float> %i.bi, float %i.bf, i64 0
  %i.bk = fmul <2 x float> %i.bh, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.f, i64 1
  %i.bn = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> %i.j, <2 x i32> <i32 0, i32 5>
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bo, <2 x float> %i.bk)
  %i.bq = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = fmul <2 x float> %i.bp, %i.br           ; 3 uses
  %i.bt = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = fmul <4 x float> %i.aj, %i.bu           ; 6 uses
  %i.bw = shufflevector <4 x float> %i.t, <4 x float> %i.n, <2 x i32> <i32 0, i32 5>
  %i.bx = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.f, i64 1
  %i.bz = fmul <2 x float> %i.bw, %i.by
  %i.ca = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cb = insertelement <2 x float> %i.ca, float %i.f, i64 0
  %i.cc = shufflevector <3 x float> %i.i, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cd = insertelement <2 x float> %i.cc, float %i.l, i64 0
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cd, <2 x float> %i.bz)
  %i.cf = fmul <2 x float> %i.ce, %i.br           ; 3 uses
  %i.cg = fmul float %i.al, %i.be
  %i.ch = extractelement <4 x float> %i.bv, i64 1
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.am, float %i.cg)
  %i.cj = insertelement <4 x float> %i.ao, float %i.ci, i64 0
  %i.ck = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.be, i64 1
  %i.cl = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cn = fmul <4 x float> %i.cj, %i.cm
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.at, <4 x float> %i.cn) ; 2 uses
  %i.cp = load <2 x float>, ptr %i.ah, align 4, !tbaa !47, !noalias !170 ; 4 uses
  %i.cq = load float, ptr %i.au, align 4, !tbaa !47, !noalias !170
  %shift = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.cp
  %i.cr = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 poison, i32 poison>
  %i.cs = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cu = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <2 x float> %i.an, <2 x float> %i.cp, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cw = insertelement <4 x float> %i.cv, float %i.af, i64 2
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.cy = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> %i.co, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.cx, <4 x float> %i.cz) ; 3 uses
  %i.db = load <2 x float>, ptr %i.av, align 4, !tbaa !47, !noalias !170 ; 2 uses
  %i.dc = load float, ptr %i.aw, align 4, !tbaa !47, !noalias !170
  %i.dd = shufflevector <2 x float> %i.cp, <2 x float> %i.db, <4 x i32> <i32 poison, i32 0, i32 3, i32 3>
  %i.de = shufflevector <4 x float> %i.da, <4 x float> %i.dd, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.df = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.cl, <4 x i32> <i32 0, i32 4, i32 poison, i32 5>
  %i.dg = insertelement <4 x float> %i.df, float %i.be, i64 2
  %i.dh = fmul <4 x float> %i.de, %i.dg
  %i.di = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.bv, <4 x float> %i.di, <4 x i32> <i32 poison, i32 2, i32 6, i32 7>
  %i.dk = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> %i.dj, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dm = shufflevector <4 x float> %i.as, <4 x float> %i.bv, <4 x i32> <i32 poison, i32 0, i32 5, i32 7>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %i.cu, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 2 uses
  %i.dp = extractelement <2 x float> %i.bs, i64 0
  %i.dq = fmul float %i.dp, %i.dc
  %i.dr = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 0, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.dt = insertelement <4 x float> %i.di, float %i.cq, i64 1
  %i.du = insertelement <4 x float> %i.dt, float %i.ay, i64 2
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.dw = insertelement <4 x float> %i.do, float %i.dq, i64 0
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.dv, <4 x float> %i.dw) ; 3 uses
  %i.dy = extractelement <4 x float> %i.dx, i64 0
  %i.dz = extractelement <2 x float> %i.cf, i64 0
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.ay, float %i.dy)
  %i.eb = shufflevector <4 x float> %i.co, <4 x float> %i.da, <4 x i32> <i32 0, i32 7, i32 6, i32 poison>
  %i.ec = insertelement <4 x float> %i.eb, float 0.000000e+00, i64 3
  store <4 x float> %i.ec, ptr %4, align 16, !tbaa !47, !alias.scope !170
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ee = extractelement <4 x float> %i.da, i64 1
  store float %i.ee, ptr %i.ed, align 16, !tbaa !47, !alias.scope !170
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.eg = shufflevector <4 x float> %i.do, <4 x float> %i.dx, <4 x i32> <i32 0, i32 5, i32 poison, i32 6>
  %i.eh = insertelement <4 x float> %i.eg, float 0.000000e+00, i64 2
  store <4 x float> %i.eh, ptr %i.ef, align 4, !tbaa !47, !alias.scope !170
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ej = extractelement <4 x float> %i.dx, i64 3
  store float %i.ej, ptr %i.ei, align 4, !tbaa !47, !alias.scope !170
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.ea, ptr %i.ek, align 8, !tbaa !47, !alias.scope !170
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.el, align 4, !tbaa !47, !alias.scope !170
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.em = load float, ptr %5, align 4, !tbaa !47  ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.eo = load float, ptr %i.en, align 4, !tbaa !47 ; 3 uses
  %i.ep = fmul float %i.eo, %i.eo
  %i.eq = call float @llvm.fmuladd.f32(float %i.em, float %i.em, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !47 ; 3 uses
  %i.et = call float @llvm.fmuladd.f32(float %i.es, float %i.es, float %i.eq)
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !47 ; 3 uses
  %i.ew = call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.et)
  %i.ex = call noundef float @sqrtf(float noundef %i.ew) #14, !tbaa !7
  %i.ey = fdiv float 1.000000e+00, %i.ex          ; 4 uses
  %i.ez = fmul float %i.em, %i.ey                 ; 3 uses
  %i.fa = fmul float %i.eo, %i.ey                 ; 3 uses
  %i.fb = fmul float %i.es, %i.ey                 ; 3 uses
  %i.fc = fmul float %i.ev, %i.ey
  %i.fd = call noundef float @acosf(float noundef %i.fc) #14, !tbaa !7
  %i.fe = fmul float %i.fd, 2.000000e+00
  store float %i.fe, ptr %3, align 4, !tbaa !47
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %.sroa.616.0..sroa_idx, align 4, !tbaa !47
  %i.ff = fmul float %i.fa, %i.fa
  %i.fg = call float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.ff)
  %i.fh = call noundef float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fg) ; 2 uses
  %i.fi = fcmp olt float %i.fh, f0x28800000
  br i1 %i.fi, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.fj = call noundef float @sqrtf(float noundef %i.fh) #14, !tbaa !7
  %i.fk = fdiv float 1.000000e+00, %i.fj          ; 3 uses
  %i.fl = fmul float %i.ez, %i.fk
  %i.fm = fmul float %i.fa, %i.fk
  %i.fn = fmul float %i.fb, %i.fk
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink21 = phi float [ %i.fl, %bb.b ], [ 1.000000e+00, %bb.a ]
  %.sink20 = phi float [ %i.fm, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sink = phi float [ %i.fn, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink21, ptr %2, align 4
  store float %.sink20, ptr %.sroa.414.0..sroa_idx, align 4
  store float %.sink, ptr %.sroa.515.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !47   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !47 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !47 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #14, !tbaa !7 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.m, align 4, !tbaa !47
  %i.t = load float, ptr %i.n, align 4, !tbaa !47
  %i.u = fsub float %i.s, %i.t
  %i.v = load float, ptr %i.o, align 4, !tbaa !47
  %i.w = load float, ptr %i.j, align 4, !tbaa !47
  %i.x = fsub float %i.v, %i.w
  %i.y = load float, ptr %i.k, align 4, !tbaa !47
  %i.z = load float, ptr %i.p, align 4, !tbaa !47
  %i.aa = fsub float %i.y, %i.z
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 3
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.u, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.x, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.aa, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !47
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !47
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !47
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #14, !tbaa !7 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !47
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !47
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !47
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !47
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !47
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !47
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !47
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !47
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !47
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !47
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN21btSingleSweepCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171, !nonnull !41, !align !104 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !80
  %i.e = fcmp une float %i.d, 0.000000e+00        ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !106    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %i.h)
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !171, !nonnull !41, !align !104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = load float, ptr %i.u, align 8, !tbaa !99
  tail call void @_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf(ptr noundef %i.n, ptr noundef nonnull align 4 dereferenceable(64) %i.o, ptr noundef nonnull align 4 dereferenceable(64) %i.p, ptr noundef nonnull %i.f, ptr noundef %i.r, ptr noundef nonnull align 4 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, float noundef %i.v)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i1 %i.e
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"vtable pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"any p2 pointer", !11, i64 0}
!13 = !{!"p2 _ZTS17btCollisionObject", !12, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !10, i64 0, !6, i64 4, !6, i64 8, !13, i64 16, !14, i64 24}
!16 = !{!15, !14, i64 24}
!17 = !{!15, !13, i64 16}
!18 = !{!15, !6, i64 4}
!19 = !{!15, !6, i64 8}
!20 = !{!"p1 _ZTS12btDispatcher", !11, i64 0}
!21 = !{!"float", !5, i64 0}
!22 = !{!"p1 _ZTS12btIDebugDraw", !11, i64 0}
!23 = !{!"p1 _ZTS12btStackAlloc", !11, i64 0}
!24 = !{!"_ZTS16btDispatcherInfo", !21, i64 0, !6, i64 4, !6, i64 8, !21, i64 12, !14, i64 16, !22, i64 24, !14, i64 32, !14, i64 33, !14, i64 34, !21, i64 36, !14, i64 40, !21, i64 44, !23, i64 48}
!25 = !{!"p1 _ZTS21btBroadphaseInterface", !11, i64 0}
!26 = !{!"_ZTS16btCollisionWorld", !15, i64 8, !20, i64 40, !24, i64 48, !23, i64 104, !25, i64 112, !22, i64 120, !14, i64 128}
!27 = !{!26, !20, i64 40}
!28 = !{!26, !25, i64 112}
!29 = !{!26, !22, i64 120}
!30 = !{!26, !14, i64 128}
!31 = !{i8 0, i8 2}
!32 = !{!"p1 _ZTS17btCollisionObject", !11, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!35 = !{!"_ZTS9btVector3", !5, i64 0}
!36 = !{!"_ZTS11btTransform", !34, i64 0, !35, i64 48}
!37 = !{!"p1 _ZTS17btBroadphaseProxy", !11, i64 0}
!38 = !{!"p1 _ZTS16btCollisionShape", !11, i64 0}
!39 = !{!"_ZTS17btCollisionObject", !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 152, !35, i64 168, !14, i64 184, !21, i64 188, !37, i64 192, !38, i64 200, !38, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !21, i64 232, !21, i64 236, !21, i64 240, !11, i64 248, !6, i64 256, !21, i64 260, !21, i64 264, !21, i64 268, !14, i64 272, !5, i64 273}
!40 = !{!39, !37, i64 192}
!41 = !{}
!42 = !{!5, !5, i64 0}
!43 = !{i64 0, i64 16, !42}
!44 = !{!39, !38, i64 200}
!45 = !{!"_ZTS16btCollisionShape", !6, i64 8, !11, i64 16}
!46 = !{!45, !6, i64 8}
!47 = !{!21, !21, i64 0}
!48 = !{!"_ZTSN12btConvexCast10CastResultE", !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 152, !21, i64 168, !22, i64 176, !21, i64 184}
!49 = !{!48, !22, i64 176}
!50 = !{!48, !21, i64 184}
!51 = !{!"short", !5, i64 0}
!52 = !{!"_ZTSN16btCollisionWorld17RayResultCallbackE", !21, i64 8, !32, i64 16, !51, i64 24, !51, i64 26, !6, i64 28}
!53 = !{!52, !21, i64 8}
!54 = !{!48, !21, i64 168}
!55 = !{!"p1 _ZTSN16btCollisionWorld14LocalShapeInfoE", !11, i64 0}
!56 = !{!"_ZTSN16btCollisionWorld14LocalRayResultE", !32, i64 0, !55, i64 8, !35, i64 16, !21, i64 32}
!57 = !{!56, !32, i64 0}
!58 = !{!56, !55, i64 8}
!59 = !{!56, !21, i64 32}
!60 = !{!"_ZTS18btTriangleCallback"}
!61 = !{!"_ZTS25btTriangleRaycastCallback", !60, i64 0, !35, i64 8, !35, i64 24, !6, i64 40, !21, i64 44}
!62 = !{!"p1 _ZTSN16btCollisionWorld17RayResultCallbackE", !11, i64 0}
!63 = !{!"p1 _ZTS19btTriangleMeshShape", !11, i64 0}
!64 = !{!"_ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback", !61, i64 0, !62, i64 48, !32, i64 56, !63, i64 64, !36, i64 72}
!65 = !{!64, !62, i64 48}
!66 = !{!64, !32, i64 56}
!67 = !{!"p1 _ZTS14btConcaveShape", !11, i64 0}
!68 = !{!"_ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0", !61, i64 0, !62, i64 48, !32, i64 56, !67, i64 64, !36, i64 72}
!69 = !{!68, !62, i64 48}
!70 = !{!68, !32, i64 56}
!71 = !{!"_ZTS18btAlignedAllocatorI20btCompoundShapeChildLj16EE"}
!72 = !{!"p1 _ZTS20btCompoundShapeChild", !11, i64 0}
!73 = !{!"_ZTS20btAlignedObjectArrayI20btCompoundShapeChildE", !71, i64 0, !6, i64 4, !6, i64 8, !72, i64 16, !14, i64 24}
!74 = !{!73, !6, i64 4}
!75 = !{!73, !72, i64 16}
!76 = !{!"p1 _ZTS10btDbvtNode", !11, i64 0}
!77 = !{!"_ZTS20btCompoundShapeChild", !36, i64 0, !38, i64 64, !6, i64 72, !21, i64 76, !76, i64 80}
!78 = !{!77, !38, i64 64}
!79 = !{!"_ZTSN16btCollisionWorld20ConvexResultCallbackE", !21, i64 8, !51, i64 12, !51, i64 14}
!80 = !{!79, !21, i64 8}
!81 = !{!"_ZTSN16btCollisionWorld17LocalConvexResultE", !32, i64 0, !55, i64 8, !35, i64 16, !35, i64 32, !21, i64 48}
!82 = !{!81, !32, i64 0}
!83 = !{!81, !55, i64 8}
!84 = !{!81, !21, i64 48}
!85 = !{!"p1 _ZTS13btConvexShape", !11, i64 0}
!86 = !{!"_ZTS28btTriangleConvexcastCallback", !60, i64 0, !85, i64 8, !36, i64 16, !36, i64 80, !36, i64 144, !21, i64 208, !21, i64 212}
!87 = !{!"p1 _ZTSN16btCollisionWorld20ConvexResultCallbackE", !11, i64 0}
!88 = !{!"_ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback", !86, i64 0, !87, i64 216, !32, i64 224, !63, i64 232}
!89 = !{!88, !87, i64 216}
!90 = !{!88, !32, i64 224}
!91 = !{!"_ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0", !86, i64 0, !87, i64 216, !32, i64 224, !67, i64 232}
!92 = !{!91, !87, i64 216}
!93 = !{!91, !32, i64 224}
!94 = !{!"_ZTS23btBroadphaseRayCallback", !35, i64 8, !5, i64 24, !21, i64 36}
!95 = !{!"p1 _ZTS16btCollisionWorld", !11, i64 0}
!96 = !{!"_ZTS19btSingleRayCallback", !94, i64 0, !35, i64 40, !35, i64 56, !36, i64 72, !36, i64 136, !35, i64 200, !95, i64 216, !62, i64 224}
!97 = !{!94, !21, i64 36}
!98 = !{!"_ZTS21btSingleSweepCallback", !94, i64 0, !36, i64 40, !36, i64 104, !35, i64 168, !95, i64 184, !87, i64 192, !21, i64 200, !85, i64 208}
!99 = !{!98, !21, i64 200}
!100 = !{!98, !85, i64 208}
!101 = !{!"_ZTSN16btCollisionWorld14LocalShapeInfoE", !6, i64 0, !6, i64 4}
!102 = !{!101, !6, i64 0}
!103 = !{!101, !6, i64 4}
!104 = !{i64 8}
!105 = !{!"_ZTS17btBroadphaseProxy", !11, i64 0, !51, i64 8, !51, i64 10, !11, i64 16, !6, i64 24, !35, i64 28, !35, i64 44}
!106 = !{!105, !11, i64 0}
!107 = !{!24, !21, i64 0}
!108 = !{!24, !6, i64 4}
!109 = !{!24, !6, i64 8}
!110 = !{!24, !21, i64 12}
!111 = !{!24, !14, i64 16}
!112 = !{!24, !22, i64 24}
!113 = !{!24, !14, i64 32}
!114 = !{!24, !14, i64 33}
!115 = !{!24, !14, i64 34}
!116 = !{!24, !21, i64 36}
!117 = !{!24, !14, i64 40}
!118 = !{!24, !21, i64 44}
!119 = !{!24, !23, i64 48}
!120 = !{!26, !23, i64 104}
!121 = !{!26, !23, i64 96}
!122 = distinct !{!122, !125, !126}
!123 = distinct !{!123, !127}
!124 = distinct !{!124, !125}
!125 = !{!"llvm.loop.isvectorized", i32 1}
!126 = !{!"llvm.loop.unroll.runtime.disable"}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{!39, !6, i64 216}
!129 = !{!39, !6, i64 228}
!130 = distinct !{!130, i1 true, !"_ZNK11btTransformmlERKS_"}
!131 = distinct !{!131, !130, !"_ZNK11btTransformmlERKS_: argument 0"}
!132 = distinct !{!132, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!133 = distinct !{!133, !132, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!134 = !{!"_ZTS13btConvexShape", !45, i64 0}
!135 = !{!"_ZTS21btConvexInternalShape", !134, i64 0, !35, i64 24, !35, i64 40, !21, i64 56, !21, i64 60}
!136 = !{!135, !21, i64 56}
!137 = !{!52, !6, i64 28}
!138 = !{!64, !63, i64 64}
!139 = !{!61, !21, i64 44}
!140 = !{!68, !67, i64 64}
!141 = !{!131}
!142 = !{!133, !131}
!143 = distinct !{!143, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!144 = distinct !{!144, !143, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!145 = distinct !{null}
!146 = distinct !{!146, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!147 = distinct !{!147, !146, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!148 = distinct !{null}
!149 = distinct !{!149, i1 true, !"_ZNK11btTransformmlERKS_"}
!150 = distinct !{!150, !149, !"_ZNK11btTransformmlERKS_: argument 0"}
!151 = distinct !{!151, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!152 = distinct !{!152, !151, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!153 = !{!144}
!154 = !{!88, !63, i64 232}
!155 = !{!86, !21, i64 208}
!156 = !{!147}
!157 = !{!91, !67, i64 232}
!158 = !{!150}
!159 = !{!152, !150}
!160 = !{!96, !95, i64 216}
!161 = !{!62, !62, i64 0}
!162 = !{!98, !95, i64 184}
!163 = !{!87, !87, i64 0}
!164 = !{!96, !62, i64 224}
!165 = distinct !{!165, i1 true, !"_ZNK11btMatrix3x37inverseEv"}
!166 = distinct !{!166, !165, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
end_hunk_3
