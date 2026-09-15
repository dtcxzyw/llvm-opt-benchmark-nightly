Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btReducedDeformableBody?download=true
inline.NumInlined: 956
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZNK23btReducedDeformableBody32internalComputeNodeDeltaVelocityERK11btTransformi:bb.a
._crit_edge.preheader.unr-lcssa:                  ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.preheader.unr-lcssa, %.split
  %indvars.iv.epil.init = phi i64 [ 0, %.split ], [ %indvars.iv.next.158, %._crit_edge.preheader.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %.split ], [ %i.fn, %._crit_edge.preheader.unr-lcssa ]
  %lcmp.mod56 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !128
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.ae
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !142
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.epil.init
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !142
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.fu, float %.epil.init)
  br label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %._crit_edge.preheader.unr-lcssa, %.epil.preheader
  %.lcssa54 = phi float [ %i.fn, %._crit_edge.preheader.unr-lcssa ], [ %i.fv, %.epil.preheader ] ; 2 uses
  %xtraiter59 = and i64 %wide.trip.count, 1
  %i.fw = icmp eq i64 %i.af, 0
  br i1 %i.fw, label %._crit_edge.epil.preheader, label %._crit_edge.preheader.new

._crit_edge.preheader.new:                        ; preds = %._crit_edge.preheader
  %unroll_iter65 = and i64 %wide.trip.count, 2147483646
  br label %._crit_edge
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody18proceedToTransformEfb(ptr noundef nonnull align 8 dereferenceable(3176) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2480 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, float noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.d)
  tail call void @_ZN23btReducedDeformableBody19updateInertiaTensorEv(ptr noundef nonnull align 8 dereferenceable(3176) %0)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 16, i1 false), !tbaa.struct !150
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !150
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !150
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !150
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2592
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 16, i1 false), !tbaa.struct !150
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !150
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2624
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !150
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody11transformToERK11btTransform(ptr noundef nonnull align 8 dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 16        ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2484
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %.sroa.817.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2500
  %.sroa.918.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %.sroa.1221.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2516
  %.sroa.1322.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2528
  %.sroa.17.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %.sroa.17.48.copyload = load float, ptr %.sroa.17.48..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !142, !noalias !284
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load float, ptr %i.h, align 4, !tbaa !142, !noalias !284
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load float, ptr %i.k, align 4, !tbaa !142, !noalias !284
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load <2 x float>, ptr %i.d, align 8
  %i.o = load <2 x float>, ptr %i.m, align 4, !tbaa !142
  %i.p = fsub <2 x float> %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load float, ptr %i.q, align 4, !tbaa !142
  %i.s = fsub float %i.r, %.sroa.17.48.copyload
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.s, i64 0
  %i.t = load <2 x float>, ptr %i.a, align 8      ; 2 uses
  %i.u = load <2 x float>, ptr %i.b, align 8      ; 2 uses
  %i.v = load <2 x float>, ptr %i.c, align 8      ; 2 uses
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.x = load <2 x float>, ptr %1, align 4, !tbaa !142, !noalias !284 ; 2 uses
  %i.y = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.z = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.y, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.aa = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ac = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ad = shufflevector <4 x float> %i.ab, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ae = shufflevector <2 x float> %i.x, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.af = fmul <4 x float> %i.ad, %i.ae
  %i.ag = insertelement <4 x float> %i.y, float 0.000000e+00, i64 3
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> %i.aa, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.aj = shufflevector <2 x float> %i.x, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> %i.aj, <4 x float> %i.af)
  %i.al = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.f, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load <2 x float>, ptr %i.g, align 4, !tbaa !142, !noalias !284 ; 2 uses
  %i.ap = load <2 x float>, ptr %.sroa.413.0..sroa_idx, align 4 ; 2 uses
  %.sroa.514.0.copyload = load float, ptr %.sroa.514.0..sroa_idx, align 8
  %i.aq = load <2 x float>, ptr %.sroa.817.16..sroa_idx, align 4 ; 2 uses
  %.sroa.918.16.copyload = load float, ptr %.sroa.918.16..sroa_idx, align 8
  %i.ar = load <2 x float>, ptr %.sroa.1221.32..sroa_idx, align 4 ; 2 uses
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.1322.32.copyload = load float, ptr %.sroa.1322.32..sroa_idx, align 8
  %i.at = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.au = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.at, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ax = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ay = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.am, <4 x float> %i.ak)
  %i.ba = insertelement <4 x float> %i.at, float 0.000000e+00, i64 3
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> %i.av, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.bd = shufflevector <2 x float> %i.ao, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.be = fmul <4 x float> %i.bc, %i.bd
  %i.bf = shufflevector <2 x float> %i.t, <2 x float> %i.u, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bg = insertelement <4 x float> %i.bf, float 0.000000e+00, i64 3
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.bi = shufflevector <2 x float> %i.ao, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.bi, <4 x float> %i.be)
  %i.bk = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.i, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.bl, <4 x float> %i.bj)
  store <4 x float> %i.az, ptr %2, align 16
  store <4 x float> %i.bm, ptr %i.an, align 16
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bo = load <2 x float>, ptr %i.j, align 4, !tbaa !142, !noalias !284 ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bq = shufflevector <2 x float> %i.ap, <2 x float> %i.aq, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.br = insertelement <4 x float> %i.bq, float 1.000000e+00, i64 3
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.bt = fmul <4 x float> %i.bp, %i.bs
  %i.bu = shufflevector <2 x float> %i.bo, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.bu, <4 x float> %i.bt)
  %i.bw = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.514.0.copyload, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %.sroa.918.16.copyload, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %.sroa.1322.32.copyload, i64 2
  %i.bz = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.l, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.ca, <4 x float> %i.bv)
  store <4 x float> %i.cb, ptr %i.bn, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.p, ptr %i.cc, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !149
  %i.cd = load ptr, ptr %0, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(3176) %0, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZN23btReducedDeformableBody17getRigidTransformEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(3176) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2480
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody9transformERK11btTransform(ptr noundef nonnull align 8 dereferenceable(3176) initializes((2065, 2066)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %struct.btDbvtAabbMm, align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2065
  store i8 1, ptr %i.a, align 1, !tbaa !141
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef float %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2528 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2536 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load <2 x float>, ptr %i.h, align 8      ; 5 uses
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 8 ; 4 uses
  %i.l = load <2 x float>, ptr %i.i, align 4      ; 2 uses
  %.sroa.19.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.2296.32.copyload = load float, ptr %i.m, align 4 ; 3 uses
  %.sroa.26.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %.sroa.26.32.copyload = load float, ptr %.sroa.26.32..sroa_idx, align 4 ; 3 uses
  %.sroa.29.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.29.32.copyload = load float, ptr %.sroa.29.32..sroa_idx, align 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !163
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.19.16.copyload = load float, ptr %.sroa.19.16..sroa_idx, align 4
  %.sroa.16.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load <2 x float>, ptr %.sroa.16.16..sroa_idx, align 4 ; 2 uses
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load <2 x float>, ptr %.sroa.684.0..sroa_idx, align 4 ; 2 uses
  %i.s = load <2 x float>, ptr %i.j, align 4      ; 2 uses
  %i.t = load <2 x float>, ptr %1, align 4        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 944
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.w = extractelement <2 x float> %i.k, i64 0
  %i.x = extractelement <2 x float> %i.k, i64 1
  %i.y = shufflevector <2 x float> %i.t, <2 x float> %i.s, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.z = shufflevector <2 x float> %i.t, <2 x float> %i.s, <2 x i32> <i32 1, i32 3>
  %3 = shufflevector <2 x float> %i.k, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %4 = insertelement <3 x float> %3, float %.sroa.11.0.copyload, i64 2
  %i.aa = shufflevector <2 x float> %i.r, <2 x float> %i.q, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ab = shufflevector <2 x float> %i.r, <2 x float> %i.q, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %.sroa.9.0.copyload, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %.sroa.19.16.copyload, i64 1
  %i.ae = insertelement <2 x float> poison, float %i.g, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_ZN10btSoftBody13updateNormalsEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  call void @_ZN10btSoftBody12updateBoundsEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  call void @_ZN10btSoftBody15updateConstantsEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !139 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.preheader.lr.ph.i, label %_ZN23btReducedDeformableBody21updateModesByRotationERK11btMatrix3x3.exit

.preheader.lr.ph.i:                               ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2716
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !140 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.an = load ptr, ptr %i.am, align 8
  br i1 %i.al, label %.preheader.preheader.i, label %_ZN23btReducedDeformableBody21updateModesByRotationERK11btMatrix3x3.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count26.i = zext nneg i32 %i.ah to i64
  %wide.trip.count.i = zext nneg i32 %i.ak to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !128
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count26.i
  br i1 %exitcond27.not.i, label %_ZN23btReducedDeformableBody21updateModesByRotationERK11btMatrix3x3.exit, label %.preheader.i, !llvm.loop !2

bb.b:                                             ; preds = %bb.b, %.preheader.i
  %indvar.i = phi i64 [ 0, %.preheader.i ], [ %indvar.next.i, %bb.b ] ; 2 uses
  %i.ar = mul nuw nsw i64 %indvar.i, 12
  %scevgep.i = getelementptr i8, ptr %i.aq, i64 %i.ar ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 8 ; 2 uses
  %i.au = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !142
  %i.av = load float, ptr %.sroa.19.16..sroa_idx, align 4, !tbaa !142
  %i.aw = load float, ptr %i.as, align 4, !tbaa !142 ; 2 uses
  %i.ax = load float, ptr %scevgep.i, align 4, !tbaa !142 ; 2 uses
  %i.ay = load float, ptr %i.at, align 4, !tbaa !142 ; 2 uses
  %i.az = load <2 x float>, ptr %1, align 4, !tbaa !142 ; 2 uses
  %i.ba = load <2 x float>, ptr %i.j, align 4, !tbaa !142 ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.be = fmul <2 x float> %i.bc, %i.bd
  %i.bf = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2>
  %i.bg = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bh, <2 x float> %i.be)
  %i.bj = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.av, i64 1
  %i.bl = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bm, <2 x float> %i.bi)
  %i.bo = load float, ptr %i.m, align 4, !tbaa !142
  %i.bp = load float, ptr %.sroa.26.32..sroa_idx, align 4, !tbaa !142
  %i.bq = fmul float %i.aw, %i.bp
  %i.br = call float @llvm.fmuladd.f32(float %i.bo, float %i.ax, float %i.bq)
  %i.bs = load float, ptr %.sroa.29.32..sroa_idx, align 4, !tbaa !142
  %i.bt = call noundef float @llvm.fmuladd.f32(float %i.bs, float %i.ay, float %i.br)
  store <2 x float> %i.bn, ptr %scevgep.i, align 4, !tbaa !142
  store float %i.bt, ptr %i.at, align 4, !tbaa !142
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvar.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3

_ZN23btReducedDeformableBody21updateModesByRotationERK11btMatrix3x3.exit: ; preds = %._crit_edge.i, %._crit_edge, %.preheader.lr.ph.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2480
  call void @_ZN23btReducedDeformableBody26updateInitialInertiaTensorERK11btMatrix3x3(ptr noundef nonnull align 8 dereferenceable(3176) %0, ptr noundef nonnull align 4 dereferenceable(48) %1)
  call void @_ZN23btReducedDeformableBody19updateInertiaTensorEv(ptr noundef nonnull align 8 dereferenceable(3176) %0)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull align 8 dereferenceable(48) %i.bv, i64 16, i1 false), !tbaa.struct !150
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !150
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !150
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 2 uses
  %i.cc = load <2 x float>, ptr %i.cb, align 8, !tbaa !142
  %i.cd = load <2 x float>, ptr %i.i, align 4, !tbaa !142
  %i.ce = fadd <2 x float> %i.cc, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !142
  %i.ch = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !142
  %i.ci = fadd float %i.cg, %i.ch
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ci, i64 0
  store <2 x float> %i.ce, ptr %i.h, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !149
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cj, ptr noundef nonnull align 8 dereferenceable(64) %i.bu, i64 16, i1 false), !tbaa.struct !150
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !150
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !150
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !150
  call void @_ZN23btReducedDeformableBody22internalInitializationEv(ptr noundef nonnull align 8 dereferenceable(3176) %0)
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.cp = load ptr, ptr %i.u, align 8, !tbaa !151
  %i.cq = getelementptr inbounds nuw [256 x i8], ptr %i.cp, i64 %indvars.iv ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.cu = load float, ptr %i.cs, align 4, !tbaa !142
  %i.cv = load float, ptr %i.cr, align 4, !tbaa !142
  %i.cw = load float, ptr %i.ct, align 4, !tbaa !142
  %i.cx = fsub float %i.cu, %i.x                  ; 2 uses
  %i.cy = fsub float %i.cv, %i.w                  ; 2 uses
  %i.cz = fsub float %i.cw, %.sroa.11.0.copyload  ; 2 uses
  %i.da = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x float> %i.z, %i.db
  %i.dd = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.de, <2 x float> %i.dc)
  %i.dg = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.dh, <2 x float> %i.df)
  %i.dj = fmul float %.sroa.26.32.copyload, %i.cx
  %i.dk = call float @llvm.fmuladd.f32(float %.sroa.2296.32.copyload, float %i.cy, float %i.dj)
  %i.dl = call noundef float @llvm.fmuladd.f32(float %.sroa.29.32.copyload, float %i.cz, float %i.dk)
  %i.dm = fadd <2 x float> %i.k, %i.di
  %i.dn = fadd float %.sroa.11.0.copyload, %i.dl
  %i.do = fadd <2 x float> %i.l, %i.dm            ; 3 uses
  %i.dp = fadd float %.sroa.7.0.copyload, %i.dn   ; 3 uses
  %.sroa.3.12.vec.insert.i38 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dp, i64 0
  store <2 x float> %i.do, ptr %i.cr, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i38, ptr %i.ct, align 8, !tbaa !149
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %5 = load <3 x float>, ptr %i.dq, align 8, !tbaa !142
  %6 = fsub <3 x float> %5, %4                    ; 6 uses
  %7 = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %8 = fmul <2 x float> %i.ab, %7
  %i.ds = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> zeroinitializer
  %9 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.ds, <2 x float> %8)
  %10 = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %10, <2 x float> %9)
  %11 = extractelement <3 x float> %6, i64 1
  %12 = fmul float %.sroa.26.32.copyload, %11
  %13 = extractelement <3 x float> %6, i64 0
  %14 = call float @llvm.fmuladd.f32(float %.sroa.2296.32.copyload, float %13, float %12)
  %15 = extractelement <3 x float> %6, i64 2
  %i.du = call noundef float @llvm.fmuladd.f32(float %.sroa.29.32.copyload, float %15, float %14)
  %i.dv = fadd <2 x float> %i.k, %i.dt
  %i.dw = fadd float %.sroa.11.0.copyload, %i.du
  %i.dx = fadd <2 x float> %i.l, %i.dv
  %i.dy = fadd float %.sroa.7.0.copyload, %i.dw
  %.sroa.3.12.vec.insert.i58 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dy, i64 0
  store <2 x float> %i.dx, ptr %i.dq, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i58, ptr %i.dr, align 8, !tbaa !149
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cq, i64 96 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cq, i64 100
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cq, i64 104 ; 2 uses
  %i.ec = load float, ptr %i.ea, align 4, !tbaa !142 ; 2 uses
  %i.ed = load float, ptr %i.dz, align 8, !tbaa !142 ; 2 uses
  %i.ee = load float, ptr %i.eb, align 8, !tbaa !142 ; 2 uses
  %i.ef = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %i.ab, %i.eg
  %i.ei = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.ej, <2 x float> %i.eh)
  %i.el = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.em, <2 x float> %i.ek)
  %i.eo = fmul float %.sroa.26.32.copyload, %i.ec
  %i.ep = call float @llvm.fmuladd.f32(float %.sroa.2296.32.copyload, float %i.ed, float %i.eo)
  %i.eq = call noundef float @llvm.fmuladd.f32(float %.sroa.29.32.copyload, float %i.ee, float %i.ep)
  %.sroa.3.12.vec.insert.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eq, i64 0
  store <2 x float> %i.en, ptr %i.dz, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i63, ptr %i.eb, align 8, !tbaa !149
  %i.er = fsub <2 x float> %i.do, %i.af
  %i.es = fsub float %i.dp, %i.g
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.es, i64 0
  %i.et = fadd <2 x float> %i.af, %i.do
  %i.eu = fadd float %i.g, %i.dp
  %.sroa.3.12.vec.insert.i8.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eu, i64 0
  store <2 x float> %i.er, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !149
  store <2 x float> %i.et, ptr %.sroa.5.0..sroa_idx, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i8.i.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !149
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cq, i64 120
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !164
  call void @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef %i.ew, ptr noundef nonnull align 4 dereferenceable(32) %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ex = load i32, ptr %i.n, align 4, !tbaa !163
  %i.ey = sext i32 %i.ex to i64
  %i.ez = icmp slt i64 %indvars.iv.next, %i.ey
  br i1 %i.ez, label %bb.c, label %._crit_edge, !llvm.loop !285
}

declare void @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN10btSoftBody13updateNormalsEv(ptr noundef nonnull align 8 dereferenceable(2064)) local_unnamed_addr #2

declare void @_ZN10btSoftBody12updateBoundsEv(ptr noundef nonnull align 8 dereferenceable(2064)) local_unnamed_addr #2

declare void @_ZN10btSoftBody15updateConstantsEv(ptr noundef nonnull align 8 dereferenceable(2064)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btReducedDeformableBody21updateModesByRotationERK11btMatrix3x3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.b = load i32, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge22.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2716
  %i.e = load i32, ptr %i.d, align 4, !tbaa !140  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  br i1 %i.f, label %.preheader.preheader, label %._crit_edge22.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count26 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128  ; 2 uses
  br label %bb.b

._crit_edge22.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge22.split, label %.preheader, !llvm.loop !2

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %bb.b ] ; 3 uses
  %i.r = mul nuw nsw i64 %indvar, 12
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.r ; 2 uses
  %.idx = mul nuw nsw i64 %indvar, 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load <4 x float>, ptr %i.i, align 4
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.x = load float, ptr %i.k, align 4, !tbaa !142
  %i.y = load float, ptr %i.t, align 4, !tbaa !142 ; 2 uses
  %i.z = load float, ptr %i.s, align 4, !tbaa !142 ; 2 uses
  %i.aa = load float, ptr %i.u, align 4, !tbaa !142 ; 2 uses
  %i.ab = load <2 x float>, ptr %1, align 4, !tbaa !142 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.j, align 4, !tbaa !142 ; 2 uses
  %i.ad = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <2 x i32> <i32 1, i32 3>
  %i.ag = fmul <2 x float> %i.ae, %i.af
  %i.ah = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <2 x i32> <i32 0, i32 2>
  %i.ai = insertelement <2 x float> poison, float %i.z, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.aj, <2 x float> %i.ag)
  %i.al = insertelement <2 x float> %i.w, float %i.x, i64 1
  %i.am = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.an, <2 x float> %i.ak)
  %i.ap = load float, ptr %i.l, align 4, !tbaa !142
  %i.aq = load float, ptr %i.m, align 4, !tbaa !142
  %i.ar = fmul float %i.y, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.z, float %i.ar)
  %i.at = load float, ptr %i.n, align 4, !tbaa !142
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.at, float %i.aa, float %i.as)
  store <2 x float> %i.ao, ptr %scevgep, align 4, !tbaa !142
  %.sroa.6.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  store float %i.au, ptr %.sroa.6.0.scevgep.sroa_idx, align 4, !tbaa !142
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !3
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody5scaleERK9btVector3(ptr noundef nonnull align 8 dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %struct.btDbvtAabbMm, align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2528
  %i.h = load <2 x float>, ptr %i.g, align 8      ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !163
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.o = insertelement <2 x float> poison, float %i.f, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @_ZN10btSoftBody13updateNormalsEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  call void @_ZN10btSoftBody12updateBoundsEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  call void @_ZN10btSoftBody15updateConstantsEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  call void @_ZN10btSoftBody19initializeDmInverseEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZN23btReducedDeformableBody33updateLocalInertiaTensorFromNodesEv(ptr noundef nonnull align 8 dereferenceable(3176) %0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.v = load float, ptr %i.u, align 8, !tbaa !142, !noalias !289 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.x = load float, ptr %i.w, align 8, !tbaa !142, !noalias !289 ; 2 uses
  %i.y = load <2 x float>, ptr %i.q, align 8, !tbaa !142, !noalias !289 ; 4 uses
  %i.z = load <2 x float>, ptr %i.r, align 8, !tbaa !142, !noalias !289 ; 2 uses
  %i.aa = fmul <2 x float> %i.z, zeroinitializer  ; 3 uses
  %i.ab = load <2 x float>, ptr %i.s, align 8, !tbaa !142, !noalias !289 ; 3 uses
  %i.ac = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> zeroinitializer, <2 x float> %i.aa)
  %i.ad = fadd <2 x float> %i.ab, %i.ac           ; 3 uses
  %i.ae = load float, ptr %i.t, align 8, !tbaa !142, !noalias !289 ; 2 uses
  %i.af = fmul float %i.v, 0.000000e+00           ; 2 uses
  %i.ag = fadd float %i.ae, %i.af
  %i.ah = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %foldExtExtBinop = fadd <2 x float> %i.y, %i.aa
  %foldExtExtBinop67 = fadd <2 x float> %i.y, %i.aa
  %i.aj = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.an = shufflevector <4 x float> %i.ak, <4 x float> %i.am, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.ao = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.ap = insertelement <4 x float> %i.ao, float %i.v, i64 0
end_hunk_0
