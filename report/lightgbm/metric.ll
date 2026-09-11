Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/metric?download=true
inline.NumInlined: 3370
inline.NumDeleted: 931
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN8LightGBM16RegressionMetricINS_13TweedieMetricEED0Ev:bb.a

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RegressionMetricINS_13TweedieMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca [1 x ptr], align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !273  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.j, ptr %i.b, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !88
  %i.k = load i32, ptr %0, align 4, !tbaa !117    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !117
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 3 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !117
  %i.n = load i32, ptr %i.a, align 4, !tbaa !117  ; 2 uses
  %.not15 = icmp sgt i32 %i.n, %i.m
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !274
  %i.q = load ptr, ptr %4, align 8, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1368
  %i.s = load double, ptr %i.r, align 8, !tbaa !277
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fsub <2 x double> <double 1.000000e+00, double 2.000000e+00>, %i.u ; 2 uses
  %i.w = sext i32 %i.n to i64
  %i.x = add nsw i32 %i.m, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.w, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.y = phi double [ 0.000000e+00, %.lr.ph ], [ %i.at, %bb.c ]
  %i.z = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.aa = load float, ptr %i.z, align 4, !tbaa !108
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !88 ; 2 uses
  %i.ad = fcmp olt double %i.ac, f0x3DDB7CDFE0000000
  %spec.store.select.i = select i1 %i.ad, double f0x3DDB7CDFE0000000, double %i.ac
  %i.ae = fpext float %i.aa to double
  %i.af = call double @llvm.log.f64(double %spec.store.select.i)
  %i.ag = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x double> %i.v, %i.ah           ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = call double @exp(double noundef %i.aj) #13
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = call double @exp(double noundef %i.al) #13
  %i.an = fneg double %i.ae
  %i.ao = fmul double %i.ak, %i.an
  %i.ap = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.am, i64 1
  %i.ar = fdiv <2 x double> %i.aq, %i.v           ; 2 uses
  %shift = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ar, %shift
  %i.as = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.at = fadd double %i.y, %i.as                 ; 2 uses
  store double %i.at, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.f, align 8
  %i.au = call i32 @__kmpc_reduce_nowait(ptr nonnull @2, i32 %i.k, i32 1, i64 8, ptr nonnull %i.f, ptr nonnull @_ZNK8LightGBM16RegressionMetricINS_13TweedieMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.au, label %bb.f [
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.av = load double, ptr %3, align 8, !tbaa !88
  %i.aw = load double, ptr %i.e, align 8, !tbaa !88
  %i.ax = fadd double %i.av, %i.aw
  store double %i.ax, ptr %3, align 8, !tbaa !88
  call void @__kmpc_end_reduce_nowait(ptr nonnull @2, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ay = load double, ptr %i.e, align 8, !tbaa !88
  %i.az = atomicrmw fadd ptr %3, double %i.ay monotonic, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK8LightGBM16RegressionMetricINS_13TweedieMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !88
  %i.d = load double, ptr %i.a, align 8, !tbaa !88
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %i.b, align 8, !tbaa !88
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RegressionMetricINS_13TweedieMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.115(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca [1 x ptr], align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !273  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.j, ptr %i.b, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !88
  %i.k = load i32, ptr %0, align 4, !tbaa !117    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !117
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 3 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !117
  %i.n = load i32, ptr %i.a, align 4, !tbaa !117  ; 2 uses
  %.not16 = icmp sgt i32 %i.n, %i.m
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !274
  %i.q = load ptr, ptr %4, align 8, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1368
  %i.s = load double, ptr %i.r, align 8, !tbaa !277
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fsub <2 x double> <double 1.000000e+00, double 2.000000e+00>, %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !275
  %i.y = sext i32 %i.n to i64
  %i.z = add nsw i32 %i.m, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.aa = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ax, %bb.c ]
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !108
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !88 ; 2 uses
  %i.af = fcmp olt double %i.ae, f0x3DDB7CDFE0000000
  %spec.store.select.i = select i1 %i.af, double f0x3DDB7CDFE0000000, double %i.ae
  %i.ag = fpext float %i.ac to double
  %i.ah = call double @llvm.log.f64(double %spec.store.select.i)
  %i.ai = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %i.v, %i.aj           ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = call double @exp(double noundef %i.al) #13
  %i.an = extractelement <2 x double> %i.ak, i64 1
  %i.ao = call double @exp(double noundef %i.an) #13
  %i.ap = fneg double %i.ag
  %i.aq = fmul double %i.am, %i.ap
  %i.ar = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.ao, i64 1
  %i.at = fdiv <2 x double> %i.as, %i.v
  %5 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.at)
  %i.au = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.av = load float, ptr %i.au, align 4, !tbaa !108
  %i.aw = fpext float %i.av to double
  %i.ax = call double @llvm.fmuladd.f64(double %5, double %i.aw, double %i.aa) ; 2 uses
  store double %i.ax, ptr %i.e, align 8, !tbaa !88
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.f, align 8
  %i.ay = call i32 @__kmpc_reduce_nowait(ptr nonnull @2, i32 %i.k, i32 1, i64 8, ptr nonnull %i.f, ptr nonnull @_ZNK8LightGBM16RegressionMetricINS_13TweedieMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.115.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.ay, label %bb.f [
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.az = load double, ptr %3, align 8, !tbaa !88
  %i.ba = load double, ptr %i.e, align 8, !tbaa !88
  %i.bb = fadd double %i.az, %i.ba
  store double %i.bb, ptr %3, align 8, !tbaa !88
  call void @__kmpc_end_reduce_nowait(ptr nonnull @2, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.bc = load double, ptr %i.e, align 8, !tbaa !88
  %i.bd = atomicrmw fadd ptr %3, double %i.bc monotonic, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK8LightGBM16RegressionMetricINS_13TweedieMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.115.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !88
  %i.d = load double, ptr %i.a, align 8, !tbaa !88
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %i.b, align 8, !tbaa !88
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RegressionMetricINS_13TweedieMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.116(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca [1 x ptr], align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !273  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.k, ptr %i.b, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !88
  %i.l = load i32, ptr %0, align 4, !tbaa !117    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.m = load i32, ptr %i.b, align 4, !tbaa !117
  %i.n = call i32 @llvm.smin.i32(i32 %i.m, i32 %i.k) ; 2 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !117
  %i.o = load i32, ptr %i.a, align 4, !tbaa !117  ; 2 uses
  %.not16 = icmp sgt i32 %i.o, %i.n
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1368
  %i.r = sext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %i.s = phi double [ 0.000000e+00, %.lr.ph ], [ %i.aw, %bb.d ]
  %indvars.iv = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !88
  %i.t = load ptr, ptr %3, align 8, !tbaa !111    ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !86
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.v, ptr noundef nonnull %i.f)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !274
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !108
  %i.ac = load double, ptr %i.f, align 8, !tbaa !88 ; 2 uses
  %i.ad = load double, ptr %i.q, align 8, !tbaa !277
  %i.ae = fcmp olt double %i.ac, f0x3DDB7CDFE0000000
  %spec.store.select.i = select i1 %i.ae, double f0x3DDB7CDFE0000000, double %i.ac
  %i.af = fpext float %i.ab to double
  %i.ag = call double @llvm.log.f64(double %spec.store.select.i) ; 2 uses
  %i.ah = fneg double %i.af
  %i.ai = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fsub <2 x double> <double 2.000000e+00, double 1.000000e+00>, %i.aj ; 3 uses
  %i.al = extractelement <2 x double> %i.ak, i64 1
  %i.am = fmul double %i.al, %i.ag
  %i.an = call double @exp(double noundef %i.am) #13
  %i.ao = extractelement <2 x double> %i.ak, i64 0
  %i.ap = fmul double %i.ao, %i.ag
  %i.aq = call double @exp(double noundef %i.ap) #13
  %i.ar = fmul double %i.an, %i.ah
  %i.as = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1
  %i.au = fdiv <2 x double> %i.at, %i.ak          ; 2 uses
  %shift = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.au
  %i.av = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aw = fadd double %i.s, %i.av                 ; 2 uses
  store double %i.aw, ptr %i.e, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !117
  %i.ay = sext i32 %i.ax to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ay
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  store ptr %i.e, ptr %i.g, align 8
  %i.az = call i32 @__kmpc_reduce_nowait(ptr nonnull @2, i32 %i.l, i32 1, i64 8, ptr nonnull %i.g, ptr nonnull @_ZNK8LightGBM16RegressionMetricINS_13TweedieMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.116.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.az, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.ba = load double, ptr %5, align 8, !tbaa !88
  %i.bb = load double, ptr %i.e, align 8, !tbaa !88
  %i.bc = fadd double %i.ba, %i.bb
  store double %i.bc, ptr %5, align 8, !tbaa !88
  call void @__kmpc_end_reduce_nowait(ptr nonnull @2, i32 %i.l, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.bd = load double, ptr %i.e, align 8, !tbaa !88
  %i.be = atomicrmw fadd ptr %5, double %i.bd monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void

bb.i:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK8LightGBM16RegressionMetricINS_13TweedieMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.116.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !88
  %i.d = load double, ptr %i.a, align 8, !tbaa !88
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %i.b, align 8, !tbaa !88
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RegressionMetricINS_13TweedieMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.117(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca [1 x ptr], align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !273  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.k, ptr %i.b, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !88
  %i.l = load i32, ptr %0, align 4, !tbaa !117    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.m = load i32, ptr %i.b, align 4, !tbaa !117
  %i.n = call i32 @llvm.smin.i32(i32 %i.m, i32 %i.k) ; 2 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !117
  %i.o = load i32, ptr %i.a, align 4, !tbaa !117  ; 2 uses
  %.not17 = icmp sgt i32 %i.o, %i.n
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1368
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = sext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %i.t = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ba, %bb.d ]
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !88
  %i.u = load ptr, ptr %3, align 8, !tbaa !111    ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !86
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.w, ptr noundef nonnull %i.f)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !274
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !108
  %i.ad = load double, ptr %i.f, align 8, !tbaa !88 ; 2 uses
  %i.ae = load double, ptr %i.q, align 8, !tbaa !277
  %i.af = fcmp olt double %i.ad, f0x3DDB7CDFE0000000
  %spec.store.select.i = select i1 %i.af, double f0x3DDB7CDFE0000000, double %i.ad
  %i.ag = fpext float %i.ac to double
  %i.ah = call double @llvm.log.f64(double %spec.store.select.i) ; 2 uses
  %i.ai = fneg double %i.ag
  %i.aj = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fsub <2 x double> <double 2.000000e+00, double 1.000000e+00>, %i.ak ; 3 uses
  %i.am = extractelement <2 x double> %i.al, i64 1
  %i.an = fmul double %i.am, %i.ah
  %i.ao = call double @exp(double noundef %i.an) #13
  %i.ap = extractelement <2 x double> %i.al, i64 0
  %i.aq = fmul double %i.ap, %i.ah
  %i.ar = call double @exp(double noundef %i.aq) #13
  %i.as = fmul double %i.ao, %i.ai
  %i.at = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1
  %i.av = fdiv <2 x double> %i.au, %i.al
  %6 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.av)
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !275
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !108
  %i.az = fpext float %i.ay to double
  %i.ba = call double @llvm.fmuladd.f64(double %6, double %i.az, double %i.t) ; 2 uses
  store double %i.ba, ptr %i.e, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !117
  %i.bc = sext i32 %i.bb to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bc
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  store ptr %i.e, ptr %i.g, align 8
  %i.bd = call i32 @__kmpc_reduce_nowait(ptr nonnull @2, i32 %i.l, i32 1, i64 8, ptr nonnull %i.g, ptr nonnull @_ZNK8LightGBM16RegressionMetricINS_13TweedieMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.117.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.bd, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.be = load double, ptr %5, align 8, !tbaa !88
  %i.bf = load double, ptr %i.e, align 8, !tbaa !88
  %i.bg = fadd double %i.be, %i.bf
  store double %i.bg, ptr %5, align 8, !tbaa !88
  call void @__kmpc_end_reduce_nowait(ptr nonnull @2, i32 %i.l, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.bh = load double, ptr %i.e, align 8, !tbaa !88
  %i.bi = atomicrmw fadd ptr %5, double %i.bh monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void

bb.i:                                             ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #33
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK8LightGBM16RegressionMetricINS_13TweedieMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.117.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !88
  %i.d = load double, ptr %i.a, align 8, !tbaa !88
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %i.b, align 8, !tbaa !88
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM8R2MetricD2Ev(ptr noundef nonnull align 8 dead_on_return(1736) dereferenceable(1736) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8LightGBM8R2MetricE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !37
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN8LightGBM6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(1656) dereferenceable(1656) %i.q) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM8R2MetricD0Ev(ptr noundef nonnull align 8 dereferenceable(1736) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8LightGBM8R2MetricE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !37
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31, !inline_history !738
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN8LightGBM8R2MetricD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31, !inline_history !738
  br label %_ZN8LightGBM8R2MetricD2Ev.exit

_ZN8LightGBM8R2MetricD2Ev.exit:                   ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN8LightGBM6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(1656) dereferenceable(1656) %i.q) #13, !inline_history !738
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1736) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM8R2Metric4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(1736) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @3) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.b, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !33
  store i16 12914, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  store i8 0, ptr %i.k, align 2, !tbaa !37
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.m, ptr %i.e, align 8, !tbaa !94
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit

end_hunk_0
begin_hunk_1_@_ZNK8LightGBM8R2Metric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.122:bb.a
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #33
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK8LightGBM8R2Metric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.122.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !88
  %i.d = load double, ptr %i.a, align 8, !tbaa !88
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %i.b, align 8, !tbaa !88
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM8R2Metric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.123(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca [1 x ptr], align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !279  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.k, ptr %i.b, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !88
  %i.l = load i32, ptr %0, align 4, !tbaa !117    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.m = load i32, ptr %i.b, align 4, !tbaa !117
  %i.n = call i32 @llvm.smin.i32(i32 %i.m, i32 %i.k) ; 2 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !117
  %i.o = load i32, ptr %i.a, align 4, !tbaa !117  ; 2 uses
  %.not19 = icmp sgt i32 %i.o, %i.n
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = sext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %i.s = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ak, %bb.d ]
  %indvars.iv = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !88
  %i.t = load ptr, ptr %3, align 8, !tbaa !111    ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !86
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.v, ptr noundef nonnull %i.f)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !280
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !108
  %i.ac = fpext float %i.ab to double
  %i.ad = load double, ptr %i.f, align 8, !tbaa !88
  %i.ae = fsub double %i.ac, %i.ad                ; 2 uses
  %i.af = fmul double %i.ae, %i.ae
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !281
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !108
  %i.aj = fpext float %i.ai to double
  %i.ak = call double @llvm.fmuladd.f64(double %i.af, double %i.aj, double %i.s) ; 2 uses
  store double %i.ak, ptr %i.e, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.al = load i32, ptr %i.b, align 4, !tbaa !117
  %i.am = sext i32 %i.al to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.am
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  store ptr %i.e, ptr %i.g, align 8
  %i.an = call i32 @__kmpc_reduce_nowait(ptr nonnull @2, i32 %i.l, i32 1, i64 8, ptr nonnull %i.g, ptr nonnull @_ZNK8LightGBM8R2Metric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.123.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.an, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.ao = load double, ptr %5, align 8, !tbaa !88
  %i.ap = load double, ptr %i.e, align 8, !tbaa !88
  %i.aq = fadd double %i.ao, %i.ap
  store double %i.aq, ptr %5, align 8, !tbaa !88
  call void @__kmpc_end_reduce_nowait(ptr nonnull @2, i32 %i.l, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ar = load double, ptr %i.e, align 8, !tbaa !88
  %i.as = atomicrmw fadd ptr %5, double %i.ar monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void

bb.i:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #33
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK8LightGBM8R2Metric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.123.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !88
  %i.d = load double, ptr %i.a, align 8, !tbaa !88
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %i.b, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #25 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { convergent nounwind }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold noreturn }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nofree nounwind }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn }
attributes #33 = { noreturn nounwind }
attributes #34 = { cold nounwind }
attributes #35 = { nounwind allocsize(0) }

!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}
!llvm.errno.tbaa = !{!29}

!0 = distinct !{!0, !95}
!1 = distinct !{!1, !95}
!2 = distinct !{!2, !95}
!3 = distinct !{!3, !95}
!4 = distinct !{!4, !95}
!5 = distinct !{!5, !95}
!6 = distinct !{!6, !95}
!7 = distinct !{!7, !95}
!8 = distinct !{!8, !95}
!9 = distinct !{!9, !95}
!10 = distinct !{!10, !95}
!11 = distinct !{!11, !95}
!12 = distinct !{!12, !95}
!13 = distinct !{!13, !95}
!14 = distinct !{!14, !95}
!15 = distinct !{!15, !95}
!16 = distinct !{!16, !95}
!17 = distinct !{!17, !95}
!18 = distinct !{!18, !95}
!19 = distinct !{!19, !95}
!20 = distinct !{!20, !95}
!21 = !{i32 7, !"openmp", i32 51}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 2}
!24 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!"omnipotent char", !25, i64 0}
!27 = !{!"int", !26, i64 0}
!28 = !{!"__libc_errno", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"any pointer", !26, i64 0}
!31 = !{!"p1 omnipotent char", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!"long", !26, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !34, i64 8, !26, i64 16}
!36 = !{!35, !34, i64 8}
!37 = !{!26, !26, i64 0}
!38 = !{!35, !31, i64 0}
!39 = !{!"vtable pointer", !25, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!34, !34, i64 0}
!42 = !{!"_ZTSN8LightGBM8TaskTypeE", !26, i64 0}
!43 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !44, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !45, i64 0}
!47 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !46, i64 0}
!48 = !{!"double", !26, i64 0}
!49 = !{!"bool", !26, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIaSaIaEE", !52, i64 0}
!54 = !{!"p1 double", !30, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !55, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorIdSaIdEE", !57, i64 0}
!59 = !{!"p1 int", !30, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIiSaIiEE", !62, i64 0}
!64 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !30, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implE", !65, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE", !66, i64 0}
!68 = !{!"_ZTSSt6vectorIS_IdSaIdEESaIS1_EE", !67, i64 0}
!69 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !30, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!71 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !70, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !71, i64 0}
!73 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !72, i64 0}
!74 = !{!"_ZTSN8LightGBM6ConfigE", !35, i64 0, !42, i64 32, !35, i64 40, !35, i64 72, !35, i64 104, !35, i64 136, !47, i64 168, !27, i64 192, !48, i64 200, !27, i64 208, !35, i64 216, !27, i64 248, !35, i64 256, !27, i64 288, !49, i64 292, !49, i64 293, !49, i64 294, !48, i64 296, !27, i64 304, !27, i64 308, !48, i64 312, !48, i64 320, !48, i64 328, !48, i64 336, !27, i64 344, !27, i64 348, !49, i64 352, !48, i64 360, !48, i64 368, !27, i64 376, !49, i64 380, !27, i64 384, !27, i64 388, !48, i64 392, !49, i64 400, !48, i64 408, !48, i64 416, !48, i64 424, !48, i64 432, !48, i64 440, !48, i64 448, !27, i64 456, !48, i64 464, !49, i64 472, !49, i64 473, !27, i64 476, !48, i64 480, !48, i64 488, !27, i64 496, !27, i64 500, !48, i64 504, !48, i64 512, !27, i64 520, !27, i64 524, !53, i64 528, !35, i64 552, !48, i64 584, !58, i64 592, !35, i64 616, !48, i64 648, !48, i64 656, !48, i64 664, !58, i64 672, !58, i64 696, !48, i64 720, !35, i64 728, !27, i64 760, !35, i64 768, !35, i64 800, !27, i64 832, !27, i64 836, !49, i64 840, !27, i64 844, !49, i64 848, !49, i64 849, !49, i64 850, !27, i64 852, !63, i64 856, !27, i64 880, !27, i64 884, !27, i64 888, !49, i64 892, !49, i64 893, !49, i64 894, !49, i64 895, !49, i64 896, !49, i64 897, !49, i64 898, !49, i64 899, !35, i64 904, !35, i64 936, !35, i64 968, !35, i64 1000, !35, i64 1032, !35, i64 1064, !49, i64 1096, !49, i64 1097, !35, i64 1104, !27, i64 1136, !27, i64 1140, !49, i64 1144, !49, i64 1145, !49, i64 1146, !49, i64 1147, !49, i64 1148, !27, i64 1152, !48, i64 1160, !35, i64 1168, !35, i64 1200, !35, i64 1232, !27, i64 1264, !27, i64 1268, !49, i64 1272, !48, i64 1280, !48, i64 1288, !49, i64 1296, !49, i64 1297, !48, i64 1304, !48, i64 1312, !48, i64 1320, !48, i64 1328, !27, i64 1336, !49, i64 1340, !58, i64 1344, !48, i64 1368, !47, i64 1376, !27, i64 1400, !49, i64 1404, !63, i64 1408, !27, i64 1432, !58, i64 1440, !27, i64 1464, !27, i64 1468, !27, i64 1472, !35, i64 1480, !35, i64 1512, !27, i64 1544, !27, i64 1548, !35, i64 1552, !49, i64 1584, !27, i64 1588, !34, i64 1592, !49, i64 1600, !49, i64 1601, !68, i64 1608, !73, i64 1632}
!75 = !{!74, !27, i64 1268}
!76 = !{!"_ZTSN8LightGBM6MetricE"}
!77 = !{!"p1 float", !30, i64 0}
!78 = !{!"_ZTSN8LightGBM11AucMuMetricE", !76, i64 0, !27, i64 8, !77, i64 16, !47, i64 24, !27, i64 48, !68, i64 56, !77, i64 80, !48, i64 88, !58, i64 96, !63, i64 120, !74, i64 144, !63, i64 1800}
!79 = !{!78, !27, i64 48}
!80 = !{!60, !59, i64 0}
!81 = !{!60, !59, i64 16}
!82 = !{!55, !54, i64 0}
!83 = !{!55, !54, i64 16}
!84 = !{!55, !54, i64 8}
!85 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!86 = !{!54, !54, i64 0}
!87 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!88 = !{!48, !48, i64 0}
!89 = !{!"_ZTSN8LightGBM16MulticlassMetricINS_25MultiSoftmaxLoglossMetricEEE", !76, i64 0, !27, i64 8, !77, i64 16, !77, i64 24, !48, i64 32, !47, i64 40, !27, i64 64, !74, i64 72}
!90 = !{!89, !27, i64 64}
!91 = !{!"_ZTSN8LightGBM16MulticlassMetricINS_16MultiErrorMetricEEE", !76, i64 0, !27, i64 8, !77, i64 16, !77, i64 24, !48, i64 32, !47, i64 40, !27, i64 64, !74, i64 72}
!92 = !{!91, !27, i64 64}
!93 = !{!44, !43, i64 0}
!94 = !{!44, !43, i64 8}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!44, !43, i64 16}
!97 = !{ptr @_ZN8LightGBM16RegressionMetricINS_8L2MetricEED2Ev}
!98 = !{!31, !31, i64 0}
!99 = !{!"_ZTSN8LightGBM16RegressionMetricINS_8L2MetricEEE", !76, i64 0, !27, i64 8, !77, i64 16, !77, i64 24, !48, i64 32, !74, i64 40, !47, i64 1696}
!100 = !{!99, !27, i64 8}
!101 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!102 = !{!101, !77, i64 0}
!103 = !{!99, !77, i64 16}
!104 = !{!77, !77, i64 0}
!105 = !{!99, !77, i64 24}
!106 = !{!99, !48, i64 32}
!107 = !{!"float", !26, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!"p1 _ZTSN8LightGBM17ObjectiveFunctionE", !30, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!43, !43, i64 0}
!113 = !{!50, !31, i64 0}
!114 = !{!50, !31, i64 16}
!115 = !{!60, !59, i64 8}
!116 = !{!59, !59, i64 0}
!117 = !{!27, !27, i64 0}
!118 = !{!74, !27, i64 1432}
!119 = !{!65, !64, i64 8}
!120 = !{!65, !64, i64 0}
!121 = !{!65, !64, i64 16}
!122 = !{!64, !64, i64 0}
!123 = !{!70, !69, i64 8}
!124 = !{!70, !69, i64 0}
!125 = !{!70, !69, i64 16}
!126 = !{i64 2, i64 -1, i64 -1, i1 true}
!127 = !{!126}
!128 = !{ptr @_ZN8LightGBM16RegressionMetricINS_10RMSEMetricEED2Ev}
!129 = !{!"_ZTSN8LightGBM16RegressionMetricINS_10RMSEMetricEEE", !76, i64 0, !27, i64 8, !77, i64 16, !77, i64 24, !48, i64 32, !74, i64 40, !47, i64 1696}
!130 = !{!129, !27, i64 8}
!131 = !{!129, !77, i64 16}
!132 = !{!129, !77, i64 24}
!133 = !{!129, !48, i64 32}
!134 = !{ptr @_ZN8LightGBM16RegressionMetricINS_8L1MetricEED2Ev}
!135 = !{!"_ZTSN8LightGBM16RegressionMetricINS_8L1MetricEEE", !76, i64 0, !27, i64 8, !77, i64 16, !77, i64 24, !48, i64 32, !74, i64 40, !47, i64 1696}
!136 = !{!135, !27, i64 8}
!137 = !{!135, !77, i64 16}
!138 = !{!135, !77, i64 24}
!139 = !{!135, !48, i64 32}
!140 = !{ptr @_ZN8LightGBM16RegressionMetricINS_14QuantileMetricEED2Ev}
!141 = !{!"_ZTSN8LightGBM16RegressionMetricINS_14QuantileMetricEEE", !76, i64 0, !27, i64 8, !77, i64 16, !77, i64 24, !48, i64 32, !74, i64 40, !47, i64 1696}
!142 = !{!141, !27, i64 8}
!143 = !{!141, !77, i64 16}
!144 = !{!141, !77, i64 24}
!145 = !{!141, !48, i64 32}
!146 = !{ptr @_ZN8LightGBM16RegressionMetricINS_15HuberLossMetricEED2Ev}
!147 = !{!"_ZTSN8LightGBM16RegressionMetricINS_15HuberLossMetricEEE", !76, i64 0, !27, i64 8, !77, i64 16, !77, i64 24, !48, i64 32, !74, i64 40, !47, i64 1696}
!148 = !{!147, !27, i64 8}
!149 = !{!147, !77, i64 16}
!150 = !{!147, !77, i64 24}
!151 = !{!147, !48, i64 32}
!152 = !{!74, !48, i64 1304}
!153 = !{ptr @_ZN8LightGBM16RegressionMetricINS_14FairLossMetricEED2Ev}
!154 = !{!"_ZTSN8LightGBM16RegressionMetricINS_14FairLossMetricEEE", !76, i64 0, !27, i64 8, !77, i64 16, !77, i64 24, !48, i64 32, !74, i64 40, !47, i64 1696}
!155 = !{!154, !27, i64 8}
!156 = !{!154, !77, i64 16}
!157 = !{!154, !77, i64 24}
!158 = !{!154, !48, i64 32}
end_hunk_1
