Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btUniformScalingShape?download=true
inline.NumInlined: 69
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN21btUniformScalingShapeD2Ev:bb.a
  tail call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN21btUniformScalingShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(44) %0) #12
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN21btUniformScalingShapedlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #13
  unreachable

_ZN21btUniformScalingShapedlEPv.exit:             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK21btUniformScalingShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { <2 x float>, <2 x float> } %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1) ; 2 uses
  %i.g = extractvalue { <2 x float>, <2 x float> } %i.f, 0
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load float, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %i.k = insertelement <2 x float> poison, float %i.j, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %i.l, %i.g
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.h, i64 0
  %i.n = fmul float %i.j, %.sroa.5.8.vec.extract
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.m, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK21btUniformScalingShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.j = load float, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %i.k = load <2 x float>, ptr %i.i, align 4, !tbaa !19
  %i.l = insertelement <2 x float> poison, float %i.j, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %i.m, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !19
  %i.q = fmul float %i.j, %i.p
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.q, i64 0
  store <2 x float> %i.n, ptr %i.i, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.o, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = load float, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %i.u = load <2 x float>, ptr %i.s, align 4, !tbaa !19
  %i.v = insertelement <2 x float> poison, float %i.t, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !19
  %i.aa = fmul float %i.t, %i.z
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aa, i64 0
  store <2 x float> %i.x, ptr %i.s, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %i.y, align 4, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !22

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.epil.init ; 3 uses
  %i.ac = load float, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.ab, align 4, !tbaa !19
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !19
  %i.aj = fmul float %i.ac, %i.ai
  %.sroa.3.12.vec.insert.i.epil = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  store <2 x float> %i.ag, ptr %i.ab, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.epil, ptr %i.ah, align 4, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK21btUniformScalingShape24localGetSupportingVertexERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { <2 x float>, <2 x float> } %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1) ; 2 uses
  %i.g = extractvalue { <2 x float>, <2 x float> } %i.f, 0
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load float, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %i.k = insertelement <2 x float> poison, float %i.j, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %i.l, %i.g
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.h, i64 0
  %i.n = fmul float %i.j, %.sroa.5.8.vec.extract
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.m, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK21btUniformScalingShape21calculateLocalInertiaEfR9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, float noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, float noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 8, !tbaa !19 ; 2 uses
  %i.h = load <2 x float>, ptr %3, align 8, !tbaa !19
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load float, ptr %i.l, align 8, !tbaa !19
  %i.n = fmul float %i.g, %i.m
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  store <2 x float> %i.k, ptr %2, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK21btUniformScalingShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK21btUniformScalingShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca [6 x %class.btVector3], align 16    ; 27 uses
  %5 = alloca [6 x %class.btVector3], align 16    ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store float 1.000000e+00, ptr %4, align 16, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store float -1.000000e+00, ptr %i.h, align 16, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float -1.000000e+00, ptr %i.k, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.n, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %5, i8 0, i64 96, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !19 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !19 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !19 ; 6 uses
  %i.ae = load <2 x float>, ptr %1, align 4, !tbaa !19 ; 6 uses
  %i.af = load <2 x float>, ptr %i.t, align 4, !tbaa !19 ; 6 uses
  %i.ag = load <2 x float>, ptr %i.u, align 4, !tbaa !19 ; 6 uses
  %i.ah = load float, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.al = load float, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.aq = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.at = load float, ptr %i.as, align 8, !tbaa !19 ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = load <2 x float>, ptr %4, align 16, !tbaa !19 ; 4 uses
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = fmul <2 x float> %i.ax, %i.af
  %i.az = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.az, <2 x float> %i.ay)
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.aj, <2 x float> %i.ba)
  %i.bc = load <2 x float>, ptr %i.c, align 16, !tbaa !19 ; 4 uses
  %i.bd = load <2 x float>, ptr %i.f, align 16, !tbaa !19 ; 3 uses
  %i.be = load <2 x float>, ptr %i.h, align 16, !tbaa !19 ; 3 uses
  %i.bf = shufflevector <2 x float> %i.aw, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bg = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bi = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bk = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = fmul <4 x float> %i.bj, %i.bl
  %i.bn = insertelement <4 x float> poison, float %i.z, i64 0
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bp = shufflevector <2 x float> %i.aw, <2 x float> %i.bc, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.br, <4 x float> %i.bm) ; 4 uses
  %i.bt = extractelement <4 x float> %i.bs, i64 0
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ah, float %i.bt)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bu, i64 0
  store <2 x float> %i.bb, ptr %4, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.b, align 8, !tbaa !20
  %i.bv = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = fmul <2 x float> %i.af, %i.bv
  %i.bx = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.bx, <2 x float> %i.bw)
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.an, <2 x float> %i.by)
  %i.ca = extractelement <4 x float> %i.bs, i64 1
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.al, float %i.ca)
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  store <2 x float> %i.bz, ptr %i.c, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %i.ak, align 8, !tbaa !20
  %i.cc = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = fmul <2 x float> %i.af, %i.cc
  %i.ce = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ce, <2 x float> %i.cd)
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ar, <2 x float> %i.cf)
  %i.ch = extractelement <4 x float> %i.bs, i64 2
  %i.ci = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ap, float %i.ch)
  %.sroa.3.12.vec.insert.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ci, i64 0
  store <2 x float> %i.cg, ptr %i.f, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.2, ptr %i.ao, align 8, !tbaa !20
  %i.cj = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ck = fmul <2 x float> %i.af, %i.cj
  %i.cl = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.cl, <2 x float> %i.ck)
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.av, <2 x float> %i.cm)
  %i.co = extractelement <4 x float> %i.bs, i64 3
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.at, float %i.co)
  %.sroa.3.12.vec.insert.i.3 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cp, i64 0
  store <2 x float> %i.cn, ptr %i.h, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.3, ptr %i.as, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.cs = load float, ptr %i.cq, align 4, !tbaa !19 ; 2 uses
  %i.ct = load float, ptr %i.j, align 16, !tbaa !19 ; 2 uses
  %i.cu = load float, ptr %i.cr, align 8, !tbaa !19 ; 2 uses
  %i.cv = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.af, %i.cw
  %i.cy = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.cz, <2 x float> %i.cx)
  %i.db = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.dc, <2 x float> %i.da)
  %i.de = fmul float %i.cs, %i.ab
  %i.df = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ct, float %i.de)
  %i.dg = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.cu, float %i.df)
  %.sroa.3.12.vec.insert.i.4 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dg, i64 0
  store <2 x float> %i.dd, ptr %i.j, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.4, ptr %i.cr, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.dj = load float, ptr %i.dh, align 4, !tbaa !19 ; 2 uses
  %i.dk = load float, ptr %i.m, align 16, !tbaa !19 ; 2 uses
  %i.dl = load float, ptr %i.di, align 8, !tbaa !19 ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.af, %i.dn
  %i.dp = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.dq, <2 x float> %i.do)
  %i.ds = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.dt, <2 x float> %i.dr)
  %i.dv = fmul float %i.dj, %i.ab
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.z, float %i.dk, float %i.dv)
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.dl, float %i.dw)
  %.sroa.3.12.vec.insert.i.5 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dx, i64 0
  store <2 x float> %i.du, ptr %i.m, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.5, ptr %i.di, align 8, !tbaa !20
  %i.dy = load ptr, ptr %0, align 8, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 152
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 6)
  %i.eb = load float, ptr %i.u, align 4, !tbaa !19 ; 2 uses
  %i.ec = load float, ptr %i.x, align 4, !tbaa !19 ; 2 uses
  %i.ed = load float, ptr %i.ac, align 4, !tbaa !19 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !19 ; 2 uses
  %i.eh = load <4 x float>, ptr %i.o, align 8
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ej = load <4 x float>, ptr %i.s, align 8
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.em = load float, ptr %i.el, align 8, !tbaa !19
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !19
  %6 = load float, ptr %i.q, align 16, !tbaa !19
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 36
  %8 = load float, ptr %7, align 4, !tbaa !19
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.er = load float, ptr %i.eq, align 8, !tbaa !19
  %9 = fmul float %8, %i.ec
  %10 = call float @llvm.fmuladd.f32(float %6, float %i.eb, float %9)
  %11 = call noundef float @llvm.fmuladd.f32(float %i.er, float %i.ed, float %10)
  %12 = fadd float %11, %i.eg
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %14 = load float, ptr %13, align 16, !tbaa !19
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 84
  %16 = load float, ptr %15, align 4, !tbaa !19
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 88
  %18 = load float, ptr %17, align 8, !tbaa !19
  %19 = fmul float %i.ec, %16
  %20 = call float @llvm.fmuladd.f32(float %14, float %i.eb, float %19)
  %21 = call noundef float @llvm.fmuladd.f32(float %18, float %i.ed, float %20)
  %22 = fadd float %i.eg, %21
  %23 = load ptr, ptr %0, align 8, !tbaa !10
  %i.es = getelementptr inbounds nuw i8, ptr %23, i64 96
  %24 = load ptr, ptr %i.es, align 8
  %i.et = load <2 x float>, ptr %1, align 4, !tbaa !19 ; 2 uses
  %i.eu = load <2 x float>, ptr %i.t, align 4, !tbaa !19 ; 2 uses
  %i.ev = load <2 x float>, ptr %i.ee, align 4, !tbaa !19 ; 2 uses
  %25 = load <2 x float>, ptr %i.r, align 16, !tbaa !19 ; 2 uses
  %26 = load <2 x float>, ptr %i.en, align 16, !tbaa !19 ; 2 uses
  %27 = shufflevector <2 x float> %i.et, <2 x float> %i.eu, <2 x i32> <i32 1, i32 3>
  %28 = shufflevector <2 x float> %25, <2 x float> %26, <2 x i32> <i32 1, i32 3>
  %29 = fmul <2 x float> %27, %28
  %30 = shufflevector <2 x float> %25, <2 x float> %26, <2 x i32> <i32 0, i32 2>
  %31 = shufflevector <2 x float> %i.et, <2 x float> %i.eu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ew = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %31, <2 x float> %29)
  %32 = insertelement <2 x float> %i.ek, float %i.ep, i64 1
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ex = load <2 x float>, ptr %5, align 16, !tbaa !19 ; 2 uses
  %i.ey = load <2 x float>, ptr %i.p, align 16, !tbaa !19 ; 2 uses
  %33 = load <2 x float>, ptr %i.v, align 4, !tbaa !19 ; 2 uses
  %34 = load <2 x float>, ptr %i.w, align 4, !tbaa !19 ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ex, <2 x float> %i.ey, <2 x i32> <i32 1, i32 3>
  %i.fa = shufflevector <2 x float> %33, <2 x float> %34, <2 x i32> <i32 0, i32 2>
  %35 = fmul <2 x float> %i.ez, %i.fa
  %36 = shufflevector <2 x float> %i.ex, <2 x float> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.fb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %31, <2 x float> %35)
  %i.fc = insertelement <2 x float> %i.ei, float %i.em, i64 1
  %37 = shufflevector <2 x float> %33, <2 x float> %34, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %37, <2 x float> %i.fb)
  %38 = fadd <2 x float> %i.fd, %i.ev
  %39 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %37, <2 x float> %i.ew)
  %i.fe = fadd <2 x float> %i.ev, %39
  %i.ff = call noundef float %24(ptr noundef nonnull align 8 dereferenceable(44) %0)
  %i.fg = load ptr, ptr %0, align 8, !tbaa !10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call noundef float %i.fi(ptr noundef nonnull align 8 dereferenceable(44) %0)
  %i.fk = load ptr, ptr %0, align 8, !tbaa !10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = call noundef float %i.fm(ptr noundef nonnull align 8 dereferenceable(44) %0) ; 2 uses
  %i.fo = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.fj, i64 1 ; 2 uses
  %i.fq = fsub <2 x float> %i.fe, %i.fp
  %40 = fsub float %22, %i.fn
  %.sroa.3.12.vec.insert.i24 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %40, i64 0
  store <2 x float> %i.fq, ptr %2, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i24, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !20
  %41 = fadd <2 x float> %i.fp, %38
  %42 = fadd float %i.fn, %12
  %.sroa.3.12.vec.insert.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %42, i64 0
  store <2 x float> %41, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i29, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21btUniformScalingShape15setLocalScalingERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btUniformScalingShape15getLocalScalingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 4 dereferenceable(16) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21btUniformScalingShape9setMarginEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, float noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, float noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZNK21btUniformScalingShape9getMarginEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load float, ptr %i.g, align 8, !tbaa !18
  %i.i = fmul float %i.f, %i.h
  ret float %i.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK21btUniformScalingShape36getNumPreferredPenetrationDirectionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK21btUniformScalingShape32getPreferredPenetrationDirectionEiR9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK21btUniformScalingShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> splat (float 1.000000e+00), <2 x float> <float 1.000000e+00, float 0.000000e+00> }
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16btCollisionShape28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 16
}

declare noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare void @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"_ZTS16btCollisionShape", !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 28}
!13 = !{!"_ZTS13btConvexShape", !12, i64 0}
!14 = !{!"p1 _ZTS13btConvexShape", !11, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!"_ZTS21btUniformScalingShape", !13, i64 0, !14, i64 32, !15, i64 40}
!17 = !{!16, !14, i64 32}
!18 = !{!16, !15, i64 40}
!19 = !{!15, !15, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!12, !6, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
end_hunk_0
