Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/distances_simd?download=true
inline.NumInlined: 164
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK5faiss14VectorDistanceILNS_10MetricTypeE2ELNS_9SIMDLevelE0EEclEPKfS5_:bb.a
  %wide.load6 = load <4 x float>, ptr %i.e, align 4, !tbaa !14
  %i.f = fsub fast <4 x float> %wide.load, %wide.load5
  %i.g = fsub fast <4 x float> %wide.load4, %wide.load6
  %i.h = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.f)
  %i.i = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.g)
  %i.j = fadd fast <4 x float> %i.h, %vec.phi     ; 2 uses
  %i.k = fadd fast <4 x float> %i.i, %vec.phi3    ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.k, %i.j
  %i.m = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN5faiss7fvec_L1ILNS_9SIMDLevelE0EEEfPKfS3_m.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.011.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.0910.i.ph = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.011.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.011.i.ph, %.lr.ph.i.preheader7 ] ; 3 uses
  %.0910.i = phi float [ %i.t, %.lr.ph.i ], [ %.0910.i.ph, %.lr.ph.i.preheader7 ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.011.i
  %i.o = load float, ptr %i.n, align 4, !tbaa !14
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.011.i
  %i.q = load float, ptr %i.p, align 4, !tbaa !14
  %i.r = fsub fast float %i.o, %i.q
  %i.s = tail call float @llvm.fabs.f32(float %i.r)
  %i.t = fadd fast float %i.s, %.0910.i           ; 2 uses
  %i.u = add nuw i64 %.011.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.a
  br i1 %exitcond.not.i, label %_ZN5faiss7fvec_L1ILNS_9SIMDLevelE0EEEfPKfS3_m.exit, label %.lr.ph.i, !llvm.loop !50

_ZN5faiss7fvec_L1ILNS_9SIMDLevelE0EEEfPKfS3_m.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.09.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.m, %middle.block ], [ %i.t, %.lr.ph.i ]
  ret float %.09.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK5faiss14VectorDistanceILNS_10MetricTypeE3ELNS_9SIMDLevelE0EEclEPKfS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !56     ; 5 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %_ZN5faiss9fvec_LinfILNS_9SIMDLevelE0EEEfPKfS3_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.a, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi3 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x float>, ptr %i.b, align 4, !tbaa !14
  %wide.load4 = load <4 x float>, ptr %i.c, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load5 = load <4 x float>, ptr %i.d, align 4, !tbaa !14
  %wide.load6 = load <4 x float>, ptr %i.e, align 4, !tbaa !14
  %i.f = fsub fast <4 x float> %wide.load, %wide.load5
  %i.g = fsub fast <4 x float> %wide.load4, %wide.load6
  %i.h = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.f)
  %i.i = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.g)
  %i.j = tail call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.h) ; 2 uses
  %i.k = tail call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi3, <4 x float> %i.i) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.j, <4 x float> %i.k)
  %i.m = tail call fast float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN5faiss9fvec_LinfILNS_9SIMDLevelE0EEEfPKfS3_m.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.089.i.ph = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.010.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader7 ] ; 3 uses
  %.089.i = phi float [ %i.t, %.lr.ph.i ], [ %.089.i.ph, %.lr.ph.i.preheader7 ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.010.i
  %i.o = load float, ptr %i.n, align 4, !tbaa !14
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.010.i
  %i.q = load float, ptr %i.p, align 4, !tbaa !14
  %i.r = fsub fast float %i.o, %i.q
  %i.s = tail call fast float @llvm.fabs.f32(float %i.r)
  %i.t = tail call fast float @llvm.maxnum.f32(float %.089.i, float %i.s) ; 2 uses
  %i.u = add nuw i64 %.010.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.a
  br i1 %exitcond.not.i, label %_ZN5faiss9fvec_LinfILNS_9SIMDLevelE0EEEfPKfS3_m.exit, label %.lr.ph.i, !llvm.loop !54

_ZN5faiss9fvec_LinfILNS_9SIMDLevelE0EEEfPKfS3_m.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.08.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.m, %middle.block ], [ %i.t, %.lr.ph.i ]
  ret float %.08.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef float @_ZNK5faiss14VectorDistanceILNS_10MetricTypeE4ELNS_9SIMDLevelE0EEclEPKfS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !59     ; 5 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !60 ; 3 uses
  %xtraiter = and i64 %i.a, 1
  %i.d = icmp eq i64 %i.a, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.a, -2
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.011.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %.0910.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod13 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0910.epil.init
  %i.f = load float, ptr %i.e, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0910.epil.init
  %i.h = load float, ptr %i.g, align 4, !tbaa !14
  %i.i = fsub float %i.f, %i.h
  %i.j = tail call float @llvm.fabs.f32(float %i.i)
  %i.k = tail call float @powf(float noundef %i.j, float noundef %i.c) #17
  %i.l = fadd float %.011.epil.init, %i.k
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %.epil.preheader ]
  ret float %.0.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.011 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.ac, %bb.b ]
  %.0910 = phi i64 [ 0, %.lr.ph.new ], [ %i.ad, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0910
  %i.n = load float, ptr %i.m, align 4, !tbaa !14
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0910
  %i.p = load float, ptr %i.o, align 4, !tbaa !14
  %i.q = fsub float %i.n, %i.p
  %i.r = tail call float @llvm.fabs.f32(float %i.q)
  %i.s = tail call float @powf(float noundef %i.r, float noundef %i.c) #17
  %i.t = fadd float %.011, %i.s
  %i.u = or disjoint i64 %.0910, 1                ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !14
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.y = load float, ptr %i.x, align 4, !tbaa !14
  %i.z = fsub float %i.w, %i.y
  %i.aa = tail call float @llvm.fabs.f32(float %i.z)
  %i.ab = tail call float @powf(float noundef %i.aa, float noundef %i.c) #17
  %i.ac = fadd float %i.t, %i.ab                  ; 3 uses
  %i.ad = add nuw i64 %.0910, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !57
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK5faiss14VectorDistanceILNS_10MetricTypeE20ELNS_9SIMDLevelE0EEclEPKfS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !63     ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.l, %.lr.ph ]
  ret float %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi float [ %i.l, %.lr.ph ], [ 0.000000e+00, %bb.a ]
  %.01213 = phi i64 [ %i.m, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01213
  %i.c = load float, ptr %i.b, align 4, !tbaa !14 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01213
  %i.e = load float, ptr %i.d, align 4, !tbaa !14 ; 2 uses
  %i.f = fsub float %i.c, %i.e
  %i.g = tail call float @llvm.fabs.f32(float %i.f)
  %i.h = fpext float %i.g to double
  %3 = tail call float @llvm.fabs.f32(float %i.c)
  %4 = fpext float %3 to double
  %5 = tail call float @llvm.fabs.f32(float %i.e)
  %6 = fpext float %5 to double
  %7 = fadd double %4, %6
  %i.i = fdiv double %i.h, %7
  %i.j = fpext float %.014 to double
  %i.k = fadd double %i.i, %i.j
  %i.l = fptrunc double %i.k to float             ; 2 uses
  %i.m = add nuw i64 %.01213, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK5faiss14VectorDistanceILNS_10MetricTypeE21ELNS_9SIMDLevelE0EEclEPKfS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !66     ; 5 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.a, 1
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.018.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %.01417.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %.01516.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod26 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01516.epil.init
  %i.d = load float, ptr %i.c, align 4, !tbaa !14 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01516.epil.init
  %i.f = load float, ptr %i.e, align 4, !tbaa !14 ; 2 uses
  %i.g = fsub float %i.d, %i.f
  %i.h = tail call float @llvm.fabs.f32(float %i.g)
  %i.i = fadd float %.018.epil.init, %i.h
  %i.j = fadd float %i.d, %i.f
  %i.k = tail call float @llvm.fabs.f32(float %i.j)
  %i.l = fadd float %.01417.epil.init, %i.k
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa23 = phi float [ %i.af, %._crit_edge.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil.preheader ]
  %.lcssa = phi float [ %i.ai, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %.lr.ph.epil.preheader ]
  %i.m = fdiv float %.lcssa23, %.lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.n = phi float [ +qnan, %bb.a ], [ %i.m, %._crit_edge.loopexit ]
  ret float %i.n

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.018 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.af, %.lr.ph ]
  %.01417 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ]
  %.01516 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01516
  %i.p = load float, ptr %i.o, align 4, !tbaa !14 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01516
  %i.r = load float, ptr %i.q, align 4, !tbaa !14 ; 2 uses
  %i.s = fsub float %i.p, %i.r
  %i.t = tail call float @llvm.fabs.f32(float %i.s)
  %i.u = fadd float %.018, %i.t
  %i.v = fadd float %i.p, %i.r
  %i.w = tail call float @llvm.fabs.f32(float %i.v)
  %i.x = fadd float %.01417, %i.w
  %i.y = or disjoint i64 %.01516, 1               ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !14 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !14 ; 2 uses
  %i.ad = fsub float %i.aa, %i.ac
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad)
  %i.af = fadd float %i.u, %i.ae                  ; 3 uses
  %i.ag = fadd float %i.aa, %i.ac
  %i.ah = tail call float @llvm.fabs.f32(float %i.ag)
  %i.ai = fadd float %i.x, %i.ah                  ; 3 uses
  %i.aj = add nuw i64 %.01516, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef float @_ZNK5faiss14VectorDistanceILNS_10MetricTypeE22ELNS_9SIMDLevelE0EEclEPKfS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !69     ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.b = fmul float %i.ab, 5.000000e-01
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.b, %._crit_edge.loopexit ]
  ret float %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.020 = phi float [ %i.ab, %.lr.ph ], [ 0.000000e+00, %bb.a ]
  %.01819 = phi i64 [ %i.ac, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01819
  %i.d = load float, ptr %i.c, align 4, !tbaa !14 ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01819
  %i.f = load float, ptr %i.e, align 4, !tbaa !14 ; 3 uses
  %i.g = fadd float %i.d, %i.f
  %i.h = fmul float %i.g, 5.000000e-01
  %i.i = fneg float %i.d
  %i.j = fpext float %i.i to double
  %i.k = fneg float %i.f
  %i.l = fpext float %i.k to double
  %i.m = insertelement <2 x float> poison, float %i.h, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = insertelement <2 x float> poison, float %i.d, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.f, i64 1
  %i.q = fdiv <2 x float> %i.n, %i.p
  %i.r = fpext <2 x float> %i.q to <2 x double>   ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = tail call double @log(double noundef %i.s) #17
  %i.u = fmul double %i.t, %i.j
  %i.v = fptrunc double %i.u to float
  %i.w = extractelement <2 x double> %i.r, i64 1
  %i.x = tail call double @log(double noundef %i.w) #17
  %i.y = fmul double %i.x, %i.l
  %i.z = fptrunc double %i.y to float
  %i.aa = fadd float %i.v, %i.z
  %i.ab = fadd float %.020, %i.aa                 ; 2 uses
  %i.ac = add nuw i64 %.01819, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.a
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !67
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK5faiss14VectorDistanceILNS_10MetricTypeE23ELNS_9SIMDLevelE0EEclEPKfS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !72     ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.b = extractelement <2 x float> %i.s, i64 0
  %i.c = extractelement <2 x float> %i.s, i64 1
  %i.d = fdiv float %i.c, %i.b
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi float [ +qnan, %bb.a ], [ %i.d, %._crit_edge.loopexit ]
  ret float %i.e

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018 = phi i64 [ %i.t, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.f = phi <2 x float> [ %i.s, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.018
  %i.h = load float, ptr %i.g, align 4, !tbaa !14
  %i.i = fpext nsz float %i.h to double           ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.018
  %i.k = load float, ptr %i.j, align 4, !tbaa !14
  %i.l = fpext nsz float %i.k to double           ; 2 uses
  %i.m = tail call nsz double @llvm.minnum.f64(double %i.i, double %i.l)
  %i.n = fpext <2 x float> %i.f to <2 x double>
  %i.o = tail call nsz double @llvm.maxnum.f64(double %i.i, double %i.l)
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.m, i64 1
  %i.r = fadd <2 x double> %i.q, %i.n
  %i.s = fptrunc <2 x double> %i.r to <2 x float> ; 3 uses
  %i.t = add nuw i64 %.018, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.a
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !70
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK5faiss14VectorDistanceILNS_10MetricTypeE24ELNS_9SIMDLevelE0EEclEPKfS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !75     ; 6 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.a, 1
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_0
begin_hunk_1_@_ZN5faiss34fvec_L2sqr_ny_nearest_y_transposedILNS_9SIMDLevelE0EEEmPfPKfS4_S4_mmm:bb.a
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833.i
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !14 ; 2 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %.02932.i)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !14 ; 2 uses
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.bp)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !14 ; 2 uses
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.bt)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02833.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !14 ; 2 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.bx) ; 3 uses
  %i.cc = add nuw i64 %.02833.i, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader31.thread.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !2

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.02738.i = phi i64 [ %i.cw, %.preheader.i ], [ %.02738.i.unr, %.preheader.i.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02738.i
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !14
  %i.cf = fadd float %i.ce, 0.000000e+00
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02738.i
  store float %i.cf, ptr %i.cg, align 4, !tbaa !14
  %i.ch = add nuw i64 %.02738.i, 1                ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !14
  %i.ck = fadd float %i.cj, 0.000000e+00
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  store float %i.ck, ptr %i.cl, align 4, !tbaa !14
  %i.cm = add nuw i64 %.02738.i, 2                ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !14
  %i.cp = fadd float %i.co, 0.000000e+00
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cm
  store float %i.cp, ptr %i.cq, align 4, !tbaa !14
  %i.cr = add nuw i64 %.02738.i, 3                ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !14
  %i.cu = fadd float %i.ct, 0.000000e+00
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cr
  store float %i.cu, ptr %i.cv, align 4, !tbaa !14
  %i.cw = add nuw i64 %.02738.i, 4                ; 2 uses
  %exitcond46.not.i.3 = icmp eq i64 %i.cw, %6
  br i1 %exitcond46.not.i.3, label %.lr.ph.preheader, label %.preheader.i, !llvm.loop !129

.lr.ph.preheader:                                 ; preds = %._crit_edge.us.i, %.preheader.i.prol.loopexit, %.preheader.i, %middle.block
  %xtraiter50 = and i64 %6, 1
  %i.cx = icmp eq i64 %6, 1
  br i1 %i.cx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter55 = and i64 %6, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod52.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod52.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.di, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01623.epil.init = phi float [ +inf, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01722.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.118.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod54 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.024.epil.init
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !14
  %i.da = fcmp olt float %i.cz, %.01623.epil.init
  %.118.epil = select i1 %i.da, i64 %.024.epil.init, i64 %.01722.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader31.thread.i, %.preheader31.i
  %.017.lcssa = phi i64 [ 0, %.preheader31.thread.i ], [ 0, %.preheader31.i ], [ %.118.1, %._crit_edge.loopexit.unr-lcssa ], [ %.118.epil, %.lr.ph.epil.preheader ]
  ret i64 %.017.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.di, %.lr.ph ] ; 4 uses
  %.01623 = phi float [ +inf, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ] ; 2 uses
  %.01722 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.118.1, %.lr.ph ]
  %niter56 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter56.next.1, %.lr.ph ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.024
  %i.dc = load float, ptr %i.db, align 4, !tbaa !14 ; 2 uses
  %i.dd = fcmp olt float %i.dc, %.01623           ; 2 uses
  %.118 = select i1 %i.dd, i64 %.024, i64 %.01722
  %.1 = select i1 %i.dd, float %i.dc, float %.01623 ; 2 uses
  %i.de = or disjoint i64 %.024, 1                ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !14 ; 2 uses
  %i.dh = fcmp olt float %i.dg, %.1               ; 2 uses
  %.118.1 = select i1 %i.dh, i64 %i.de, i64 %.118 ; 3 uses
  %.1.1 = select i1 %i.dh, float %i.dg, float %.1 ; 2 uses
  %i.di = add nuw i64 %.024, 2                    ; 2 uses
  %niter56.next.1 = add i64 %niter56, 2           ; 2 uses
  %niter56.ncmp.1 = icmp eq i64 %niter56.next.1, %unroll_iter55
  br i1 %niter56.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !130
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN5faiss20fvec_madd_and_argminILNS_9SIMDLevelE0EEEimPKffS3_Pf(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %0, 1
  %i.a = icmp eq i64 %0, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %0, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.022.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.01621.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01720.epil.init = phi float [ 1.000000e+20, %.lr.ph.preheader ], [ %.118.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i64 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.022.epil.init
  %i.c = load float, ptr %i.b, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.022.epil.init
  %i.e = load float, ptr %i.d, align 4, !tbaa !14
  %i.f = tail call float @llvm.fmuladd.f32(float %2, float %i.e, float %i.c) ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.022.epil.init
  store float %i.f, ptr %i.g, align 4, !tbaa !14
  %i.h = fcmp olt float %i.f, %.01720.epil.init
  %i.i = trunc i64 %.022.epil.init to i32
  %.1.epil = select i1 %i.h, i32 %i.i, i32 %.01621.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.016.lcssa = phi i32 [ -1, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ]
  ret i32 %.016.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.022 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ] ; 6 uses
  %.01621 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ]
  %.01720 = phi float [ 1.000000e+20, %.lr.ph.preheader.new ], [ %.118.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.022
  %i.k = load float, ptr %i.j, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.022
  %i.m = load float, ptr %i.l, align 4, !tbaa !14
  %i.n = tail call float @llvm.fmuladd.f32(float %2, float %i.m, float %i.k) ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.022
  store float %i.n, ptr %i.o, align 4, !tbaa !14
  %i.p = fcmp olt float %i.n, %.01720             ; 2 uses
  %i.q = trunc i64 %.022 to i32
  %.118 = select i1 %i.p, float %i.n, float %.01720 ; 2 uses
  %.1 = select i1 %i.p, i32 %i.q, i32 %.01621
  %i.r = or disjoint i64 %.022, 1                 ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !14
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r
  %i.v = load float, ptr %i.u, align 4, !tbaa !14
  %i.w = tail call float @llvm.fmuladd.f32(float %2, float %i.v, float %i.t) ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.r
  store float %i.w, ptr %i.x, align 4, !tbaa !14
  %i.y = fcmp olt float %i.w, %.118               ; 2 uses
  %i.z = trunc i64 %i.r to i32
  %.118.1 = select i1 %i.y, float %i.w, float %.118 ; 2 uses
  %.1.1 = select i1 %i.y, i32 %i.z, i32 %.1       ; 3 uses
  %i.aa = add nuw i64 %.022, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !131
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = distinct !{!3, !15}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"float", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"long", !9, i64 0}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"any pointer", !9, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !18, i64 8, !9, i64 16}
!24 = !{!23, !18, i64 8}
!25 = !{!9, !9, i64 0}
!26 = !{!23, !21, i64 0}
!27 = distinct !{!27, !15, !16, !17}
!28 = distinct !{!28, !15, !17, !16}
!29 = distinct !{!29, !15, !16, !17}
!30 = distinct !{!30, !15, !17, !16}
!31 = distinct !{!31, !15, !16, !17}
!32 = distinct !{!32, !15, !17, !16}
!33 = distinct !{!33, !15, !16, !17}
!34 = distinct !{!34, !15, !17, !16}
!35 = distinct !{!35, !15, !16, !17}
!36 = distinct !{!36, !15, !17, !16}
!37 = distinct !{!37, !15, !16, !17}
!38 = distinct !{!38, !15, !17, !16}
!39 = distinct !{!39, !15, !16, !17}
!40 = distinct !{!40, !15, !17, !16}
!41 = distinct !{!41, !15, !16, !17}
!42 = distinct !{!42, !15, !17, !16}
!43 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE1ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!44 = !{!43, !18, i64 0}
!45 = distinct !{!45, !15, !16, !17}
!46 = distinct !{!46, !15, !17, !16}
!47 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE0ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!48 = !{!47, !18, i64 0}
!49 = distinct !{!49, !15, !16, !17}
!50 = distinct !{!50, !15, !17, !16}
!51 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE2ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!52 = !{!51, !18, i64 0}
!53 = distinct !{!53, !15, !16, !17}
!54 = distinct !{!54, !15, !17, !16}
!55 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE3ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!56 = !{!55, !18, i64 0}
!57 = distinct !{!57, !15}
!58 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE4ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!59 = !{!58, !18, i64 0}
!60 = !{!58, !13, i64 8}
!61 = distinct !{!61, !15}
!62 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE20ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!63 = !{!62, !18, i64 0}
!64 = distinct !{!64, !15}
!65 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE21ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!66 = !{!65, !18, i64 0}
!67 = distinct !{!67, !15}
!68 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE22ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!69 = !{!68, !18, i64 0}
!70 = distinct !{!70, !15}
!71 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE23ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!72 = !{!71, !18, i64 0}
!73 = distinct !{!73, !15}
!74 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE24ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!75 = !{!74, !18, i64 0}
!76 = distinct !{!76, !15}
!77 = !{!"_ZTSN5faiss14VectorDistanceILNS_10MetricTypeE25ELNS_9SIMDLevelE0EEE", !18, i64 0, !13, i64 8}
!78 = !{!77, !18, i64 0}
!79 = distinct !{!79, !15, !16, !17}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15, !16}
!83 = distinct !{!83, !15, !16, !17}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !15}
!86 = distinct !{!86, !15, !16}
!87 = distinct !{!87, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !15, !16, !17}
!91 = distinct !{!91, !15, !16, !17}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !15, !16}
!94 = distinct !{!94, !15, !16}
!95 = !{!88}
!96 = !{!89}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !19}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !19}
!107 = distinct !{!107, !15}
!108 = distinct !{!108, !"_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi"}
!109 = distinct !{!109, !108, !"_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi: argument 0"}
!110 = distinct !{!110, !15}
!111 = !{!22, !21, i64 0}
!112 = !{!109}
!113 = !{!"vtable pointer", !8, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!116 = distinct !{!116, !15, !16, !17}
!117 = distinct !{!117, !15, !16}
!118 = distinct !{!118, !15, !16, !17}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !19}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !15, !16}
!123 = distinct !{!123, !15}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !15, !16, !17}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !15, !16}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !15}
end_hunk_1
