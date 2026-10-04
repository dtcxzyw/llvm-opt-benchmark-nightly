Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btUniformScalingShape?download=true
inline.NumInlined: 69
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK21btUniformScalingShape37localGetSupportingVertexWithoutMarginERK9btVector3:bb.a
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
  %5 = alloca [6 x %class.btVector3], align 16    ; 16 uses
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
  %6 = extractelement <4 x float> %i.bs, i64 0
  %7 = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ah, float %6)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %7, i64 0
  store <2 x float> %i.bb, ptr %4, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.b, align 8, !tbaa !20
  %i.bt = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x float> %i.af, %i.bt
  %i.bv = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.bv, <2 x float> %i.bu)
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.an, <2 x float> %i.bw)
  %8 = extractelement <4 x float> %i.bs, i64 1
  %9 = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.al, float %8)
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %9, i64 0
  store <2 x float> %i.bx, ptr %i.c, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %i.ak, align 8, !tbaa !20
  %10 = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %11 = fmul <2 x float> %i.af, %10
  %12 = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %12, <2 x float> %11)
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ar, <2 x float> %13)
  %15 = extractelement <4 x float> %i.bs, i64 2
  %16 = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ap, float %15)
  %.sroa.3.12.vec.insert.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %16, i64 0
  store <2 x float> %14, ptr %i.f, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.2, ptr %i.ao, align 8, !tbaa !20
  %17 = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %18 = fmul <2 x float> %i.af, %17
  %19 = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %19, <2 x float> %18)
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.av, <2 x float> %20)
  %22 = extractelement <4 x float> %i.bs, i64 3
  %23 = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.at, float %22)
  %.sroa.3.12.vec.insert.i.3 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %23, i64 0
  store <2 x float> %21, ptr %i.h, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.3, ptr %i.as, align 8, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.ca = load float, ptr %i.j, align 16, !tbaa !19 ; 2 uses
  %i.cb = load float, ptr %i.by, align 4, !tbaa !19 ; 2 uses
  %i.cc = load float, ptr %i.bz, align 8, !tbaa !19 ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.af, %i.ce
  %i.cg = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ch, <2 x float> %i.cf)
  %i.cj = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ck, <2 x float> %i.ci)
  %i.cm = fmul float %i.cb, %i.ab
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ca, float %i.cm)
  %i.co = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.cc, float %i.cn)
  %.sroa.3.12.vec.insert.i.4 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.co, i64 0
  store <2 x float> %i.cl, ptr %i.j, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.4, ptr %i.bz, align 8, !tbaa !20
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.cr = load float, ptr %i.m, align 16, !tbaa !19 ; 2 uses
  %i.cs = load float, ptr %i.cp, align 4, !tbaa !19 ; 2 uses
  %i.ct = load float, ptr %i.cq, align 8, !tbaa !19 ; 2 uses
  %i.cu = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x float> %i.af, %i.cv
  %i.cx = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.cy, <2 x float> %i.cw)
  %i.da = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.db, <2 x float> %i.cz)
  %i.dd = fmul float %i.cs, %i.ab
  %i.de = tail call float @llvm.fmuladd.f32(float %i.z, float %i.cr, float %i.dd)
  %i.df = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ct, float %i.de)
  %.sroa.3.12.vec.insert.i.5 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.df, i64 0
  store <2 x float> %i.dc, ptr %i.m, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.5, ptr %i.cq, align 8, !tbaa !20
  %i.dg = load ptr, ptr %0, align 8, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 152
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 6)
  %i.dj = load float, ptr %i.u, align 4, !tbaa !19
  %i.dk = load float, ptr %i.x, align 4, !tbaa !19
  %i.dl = load float, ptr %i.ac, align 4, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.do = load float, ptr %i.dn, align 4, !tbaa !19
  %i.dp = load <4 x float>, ptr %i.o, align 8
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dr = load <4 x float>, ptr %i.s, align 8
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.du = load float, ptr %i.dt, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dz = load <4 x float>, ptr %i.dy, align 8
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !19
  %i.ee = load ptr, ptr %0, align 8, !tbaa !10
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 96
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load <2 x float>, ptr %1, align 4, !tbaa !19 ; 2 uses
  %i.ei = load <2 x float>, ptr %i.t, align 4, !tbaa !19 ; 2 uses
  %i.ej = load <2 x float>, ptr %i.dm, align 4, !tbaa !19 ; 2 uses
  %i.ek = load <2 x float>, ptr %i.r, align 16, !tbaa !19 ; 2 uses
  %i.el = load <2 x float>, ptr %i.dv, align 16, !tbaa !19 ; 2 uses
  %i.em = shufflevector <2 x float> %i.eh, <2 x float> %i.ei, <2 x i32> <i32 1, i32 3>
  %i.en = shufflevector <2 x float> %i.ek, <2 x float> %i.el, <2 x i32> <i32 1, i32 3>
  %i.eo = fmul <2 x float> %i.em, %i.en
  %i.ep = shufflevector <2 x float> %i.ek, <2 x float> %i.el, <2 x i32> <i32 0, i32 2>
  %i.eq = shufflevector <2 x float> %i.eh, <2 x float> %i.ei, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.er = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.eq, <2 x float> %i.eo)
  %i.es = insertelement <2 x float> %i.ds, float %i.dx, i64 1
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.et = load <2 x float>, ptr %5, align 16, !tbaa !19 ; 2 uses
  %i.eu = load <2 x float>, ptr %i.p, align 16, !tbaa !19 ; 2 uses
  %i.ev = load <2 x float>, ptr %i.v, align 4, !tbaa !19 ; 2 uses
  %i.ew = load <2 x float>, ptr %i.w, align 4, !tbaa !19 ; 2 uses
  %i.ex = shufflevector <2 x float> %i.et, <2 x float> %i.eu, <2 x i32> <i32 1, i32 3>
  %i.ey = shufflevector <2 x float> %i.ev, <2 x float> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.ez = fmul <2 x float> %i.ex, %i.ey
  %i.fa = shufflevector <2 x float> %i.et, <2 x float> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.fb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.eq, <2 x float> %i.ez)
  %i.fc = insertelement <2 x float> %i.dq, float %i.du, i64 1
  %i.fd = shufflevector <2 x float> %i.ev, <2 x float> %i.ew, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fd, <2 x float> %i.fb)
  %i.ff = fadd <2 x float> %i.fe, %i.ej
  %i.fg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.fd, <2 x float> %i.er)
  %i.fh = fadd <2 x float> %i.ej, %i.fg
  %i.fi = load <2 x float>, ptr %i.q, align 16, !tbaa !19 ; 2 uses
  %i.fj = load <2 x float>, ptr %i.eb, align 16, !tbaa !19 ; 2 uses
  %i.fk = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = shufflevector <2 x float> %i.fi, <2 x float> %i.fj, <2 x i32> <i32 1, i32 3>
  %i.fn = fmul <2 x float> %i.fl, %i.fm
  %i.fo = shufflevector <2 x float> %i.fi, <2 x float> %i.fj, <2 x i32> <i32 0, i32 2>
  %i.fp = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.fq, <2 x float> %i.fn)
  %i.fs = insertelement <2 x float> %i.ea, float %i.ed, i64 1
  %i.ft = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.fu, <2 x float> %i.fr)
  %i.fw = insertelement <2 x float> poison, float %i.do, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = fadd <2 x float> %i.fv, %i.fx           ; 2 uses
  %i.fz = call noundef float %i.eg(ptr noundef nonnull align 8 dereferenceable(44) %0)
  %i.ga = load ptr, ptr %0, align 8, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call noundef float %i.gc(ptr noundef nonnull align 8 dereferenceable(44) %0)
  %i.ge = load ptr, ptr %0, align 8, !tbaa !10
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 96
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = call noundef float %i.gg(ptr noundef nonnull align 8 dereferenceable(44) %0)
  %i.gi = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.gd, i64 1 ; 2 uses
  %i.gk = fsub <2 x float> %i.fh, %i.gj
  %i.gl = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gn = fadd <2 x float> %i.fy, %i.gm
  %i.go = fsub <2 x float> %i.fy, %i.gm
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.gk, ptr %2, align 4
  store <2 x float> %i.gp, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !20
  %i.gq = fadd <2 x float> %i.gj, %i.ff
  %i.gr = insertelement <2 x float> %i.gn, float 0.000000e+00, i64 1
  store <2 x float> %i.gq, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %i.gr, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
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
end_hunk_0
