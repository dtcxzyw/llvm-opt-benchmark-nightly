Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gradient_discretizer?download=true
inline.NumInlined: 717
inline.NumDeleted: 360
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS2_.omp_outlined:bb.a
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not24 = icmp sgt i32 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 5168
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !35
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !37 ; 2 uses
  %i.r = fpext float %i.q to double
  %i.s = load i32, ptr %4, align 4, !tbaa !33
  %i.t = trunc nsw i64 %indvars.iv to i32
  %i.u = add nsw i32 %i.s, %i.t
  %i.v = load i32, ptr %2, align 4, !tbaa !33
  %i.w = srem i32 %i.u, %i.v
  %i.x = fcmp ult float %i.q, 0.000000e+00
  %i.y = load double, ptr %i.l, align 8, !tbaa !86
  %i.z = sext i32 %i.w to i64
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %i.ad = fneg double %i.ac
  %.sink = select i1 %i.x, double %i.ad, double %i.ac
  %i.ae = call double @llvm.fmuladd.f64(double %i.r, double %i.y, double %.sink)
  %i.af = fptosi double %i.ae to i8
  %i.ag = load ptr, ptr %5, align 8, !tbaa !66
  %i.ah = shl nsw i64 %indvars.iv, 1              ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  store i8 %i.af, ptr %i.aj, align 1, !tbaa !73
  %i.ak = load ptr, ptr %5, align 8, !tbaa !66
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ah
  store i8 1, ptr %i.al, align 1, !tbaa !73
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.am = load i32, ptr %i.b, align 4, !tbaa !33
  %i.an = sext i32 %i.am to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.an
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS2_.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not27 = icmp sgt i32 %i.k, %i.j
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 5168
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 5176
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.p = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !35
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load float, ptr %i.r, align 4, !tbaa !37 ; 2 uses
  %i.t = fpext float %i.s to double
  %i.u = load i32, ptr %4, align 4, !tbaa !33
  %i.v = trunc nsw i64 %indvars.iv to i32
  %i.w = add nsw i32 %i.u, %i.v
  %i.x = load i32, ptr %2, align 4, !tbaa !33
  %i.y = srem i32 %i.w, %i.x
  %i.z = fcmp ult float %i.s, 0.000000e+00
  %i.aa = load double, ptr %i.l, align 8, !tbaa !86
  %i.ab = sext i32 %i.y to i64                    ; 2 uses
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.af = fneg double %i.ae
  %.sink = select i1 %i.z, double %i.af, double %i.ae
  %i.ag = call double @llvm.fmuladd.f64(double %i.t, double %i.aa, double %.sink)
  %i.ah = fptosi double %i.ag to i8
  %i.ai = load ptr, ptr %5, align 8, !tbaa !66
  %i.aj = shl nsw i64 %indvars.iv, 1              ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 1
  store i8 %i.ah, ptr %i.al, align 1, !tbaa !73
  %i.am = load ptr, ptr %7, align 8, !tbaa !35
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = load float, ptr %i.an, align 4, !tbaa !37
  %i.ap = fpext float %i.ao to double
  %i.aq = load double, ptr %i.n, align 8, !tbaa !87
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ab
  %i.at = load double, ptr %i.as, align 8, !tbaa !39
  %i.au = call double @llvm.fmuladd.f64(double %i.ap, double %i.aq, double %i.at)
  %i.av = fptosi double %i.au to i8
  %i.aw = load ptr, ptr %5, align 8, !tbaa !66
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.aj
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !73
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !33
  %i.az = sext i32 %i.ay to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.az
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS2_.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef readonly captures(none) %5) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not20 = icmp sgt i32 %i.k, %i.j
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 5168
  %i.m = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !35
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load float, ptr %i.o, align 4, !tbaa !37 ; 2 uses
  %i.q = fpext float %i.p to double
  %i.r = fcmp ult float %i.p, 0.000000e+00
  %i.s = load double, ptr %i.l, align 8, !tbaa !86
  %6 = insertelement <2 x double> poison, double %i.q, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = insertelement <2 x double> poison, double %i.s, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %9, <2 x double> <double 5.000000e-01, double -5.000000e-01>) ; 2 uses
  %11 = extractelement <2 x double> %10, i64 0
  %12 = extractelement <2 x double> %10, i64 1
  %.in = select i1 %i.r, double %12, double %11
  %i.t = fptosi double %.in to i8
  %i.u = load ptr, ptr %4, align 8, !tbaa !66
  %i.v = shl nsw i64 %indvars.iv, 1               ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 1
  store i8 %i.t, ptr %i.x, align 1, !tbaa !73
  %i.y = load ptr, ptr %4, align 8, !tbaa !66
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.v
  store i8 1, ptr %i.z, align 1, !tbaa !73
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !33
  %i.ab = sext i32 %i.aa to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ab
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS2_.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not22 = icmp sgt i32 %i.k, %i.j
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 5168
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 5176
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !35
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !37 ; 2 uses
  %i.r = fpext float %i.q to double
  %i.s = fcmp ult float %i.q, 0.000000e+00
  %i.t = load double, ptr %i.l, align 8, !tbaa !86
  %7 = insertelement <2 x double> poison, double %i.r, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x double> poison, double %i.t, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %10, <2 x double> <double 5.000000e-01, double -5.000000e-01>) ; 2 uses
  %12 = extractelement <2 x double> %11, i64 0
  %13 = extractelement <2 x double> %11, i64 1
  %.in = select i1 %i.s, double %13, double %12
  %i.u = fptosi double %.in to i8
  %i.v = load ptr, ptr %4, align 8, !tbaa !66
  %i.w = shl nsw i64 %indvars.iv, 1               ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 1
  store i8 %i.u, ptr %i.y, align 1, !tbaa !73
  %i.z = load ptr, ptr %6, align 8, !tbaa !35
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !37
  %i.ac = fpext float %i.ab to double
  %i.ad = load double, ptr %i.m, align 8, !tbaa !87
  %i.ae = call double @llvm.fmuladd.f64(double %i.ac, double %i.ad, double 5.000000e-01)
  %i.af = fptosi double %i.ae to i8
  %i.ag = load ptr, ptr %4, align 8, !tbaa !66
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.w
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !73
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !33
  %i.aj = sext i32 %i.ai to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.aj
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM9Threading3ForIiEEiT_S2_S2_RKSt8functionIFviS2_S2_EE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(48) %7) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.i = add nsw i32 %i.h, -1                     ; 3 uses
  %i.j = icmp sgt i32 %i.h, 0
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 %i.i, ptr %i.e, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i32 1, ptr %i.f, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store i32 0, ptr %i.g, align 4, !tbaa !33
  %i.k = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 33, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !33
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.i) ; 3 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !33
  %i.n = load i32, ptr %i.d, align 4, !tbaa !33   ; 2 uses
  %.not38 = icmp sgt i32 %i.n, %i.m
  br i1 %.not38, label %._crit_edge39, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.m, %.preheader.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %i.r = phi i32 [ %i.n, %.preheader.lr.ph ], [ %i.ap, %._crit_edge ] ; 3 uses
  %.not3136 = icmp sgt i32 %i.r, %i.q
  br i1 %.not3136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.037 = phi i32 [ %i.al, %bb.h ], [ %i.r, %.preheader ] ; 4 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !33
  %i.t = load i32, ptr %4, align 4, !tbaa !33     ; 2 uses
  %i.u = mul nsw i32 %i.t, %.037
  %i.v = add nsw i32 %i.u, %i.s                   ; 3 uses
  %i.w = add nsw i32 %i.v, %i.t
  %i.x = load i32, ptr %5, align 4, !tbaa !33
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.x) ; 2 uses
  %i.y = icmp slt i32 %i.v, %.sroa.speculated
  br i1 %i.y, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.037, ptr %i.a, align 4, !tbaa !33
  store i32 %i.v, ptr %i.b, align 4, !tbaa !33
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !33
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #26
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !48
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNKSt8functionIFviiiEEclEiii.exit unwind label %bb.f, !inline_history !138

_ZNKSt8functionIFviiiEEclEiii.exit:               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = extractvalue { ptr, i32 } %i.ab, 1
  %i.ae = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #5
  %i.af = icmp eq i32 %i.ad, %i.ae
  %i.ag = call ptr @__cxa_begin_catch(ptr %i.ac) #5 ; 2 uses
  br i1 %i.af, label %bb.g, label %.invoke49

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #5
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.ak)
          to label %.invoke49 unwind label %bb.j

bb.h:                                             ; preds = %.invoke, %_ZNKSt8functionIFviiiEEclEiii.exit, %.lr.ph
  %i.al = add nsw i32 %.037, 1
  %i.am = load i32, ptr %i.e, align 4, !tbaa !33  ; 2 uses
  %.not31.not = icmp slt i32 %.037, %i.am
  br i1 %.not31.not, label %.lr.ph, label %._crit_edge.loopexit

.invoke49:                                        ; preds = %bb.f, %bb.g
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.invoke unwind label %bb.j

.invoke:                                          ; preds = %.invoke49
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre = load i32, ptr %i.d, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.an = phi i32 [ %i.r, %.preheader ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.q, %.preheader ], [ %i.am, %._crit_edge.loopexit ]
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !33  ; 2 uses
  %i.ap = add nsw i32 %i.ao, %i.an                ; 3 uses
  store i32 %i.ap, ptr %i.d, align 4, !tbaa !33
  %i.aq = add nsw i32 %i.ao, %.lcssa
  %i.ar = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.i) ; 3 uses
  store i32 %i.ar, ptr %i.e, align 4, !tbaa !33
  %.not = icmp sgt i32 %i.ap, %i.ar
  br i1 %.not, label %._crit_edge39, label %.preheader

._crit_edge39:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge39, %bb.a
  ret void

bb.j:                                             ; preds = %.invoke49, %.invoke, %bb.g
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #28
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85
  %.not = icmp eq ptr %i.a, null
end_hunk_0
begin_hunk_1_@_ZN8LightGBM19GradientDiscretizer22RenewIntGradTreeOutputEPNS_4TreeEPKNS_6ConfigEPKNS_13DataPartitionEPKfSA_RKSt8functionIFiiEE.omp_outlined.12:bb.a
  %i.r = sext i32 %i.n to i64                     ; 3 uses
  %i.s = add nsw i32 %i.m, 1
  %i.t = add i32 %i.m, %i.n
  %i.u = and i32 %i.t, 1
  %lcmp.mod.not.not = icmp eq i32 %i.u, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.v = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !37
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.x
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !37
  %i.ac = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.ab, i64 1
  %i.ae = fpext <2 x float> %i.ad to <2 x double>
  %i.af = fadd <2 x double> %i.ae, zeroinitializer ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.r, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa.unr = phi <2 x double> [ poison, %.lr.ph ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %i.ag = icmp eq i32 %i.m, %i.n
  br i1 %i.ag, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.ah = phi <2 x double> [ %i.be, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !37
  %i.an = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ak
  %i.ao = load float, ptr %i.an, align 4, !tbaa !37
  %i.ap = insertelement <2 x float> poison, float %i.am, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ao, i64 1
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = fadd <2 x double> %i.ah, %i.ar
  %i.at = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !33
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !37
  %i.az = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.aw
  %i.ba = load float, ptr %i.az, align 4, !tbaa !37
  %i.bb = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.ba, i64 1
  %i.bd = fpext <2 x float> %i.bc to <2 x double>
  %i.be = fadd <2 x double> %i.as, %i.bd          ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.s, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa = phi <2 x double> [ %.lcssa.unr, %.prol.loopexit ], [ %i.be, %.lr.ph.new ] ; 2 uses
  %i.bf = extractelement <2 x double> %.lcssa, i64 0
  store double %i.bf, ptr %i.e, align 8, !tbaa !39
  %i.bg = extractelement <2 x double> %.lcssa, i64 1
  store double %i.bg, ptr %i.f, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.g, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.bh, align 8
  %i.bi = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %i.k, i32 2, i64 16, ptr nonnull %i.g, ptr nonnull @_ZN8LightGBM19GradientDiscretizer22RenewIntGradTreeOutputEPNS_4TreeEPKNS_6ConfigEPKNS_13DataPartitionEPKfSA_RKSt8functionIFiiEE.omp_outlined.12.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.bi, label %bb.f [
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.bj = load double, ptr %6, align 8, !tbaa !39
  %i.bk = load double, ptr %i.e, align 8, !tbaa !39
  %i.bl = fadd double %i.bj, %i.bk
  store double %i.bl, ptr %6, align 8, !tbaa !39
  %i.bm = load double, ptr %7, align 8, !tbaa !39
  %i.bn = load double, ptr %i.f, align 8, !tbaa !39
  %i.bo = fadd double %i.bm, %i.bn
  store double %i.bo, ptr %7, align 8, !tbaa !39
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bp = load double, ptr %i.e, align 8, !tbaa !39
  %i.bq = atomicrmw fadd ptr %6, double %i.bp monotonic, align 8 ; 0 uses
  %i.br = load double, ptr %i.f, align 8, !tbaa !39
  %i.bs = atomicrmw fadd ptr %7, double %i.br monotonic, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN8LightGBM19GradientDiscretizer22RenewIntGradTreeOutputEPNS_4TreeEPKNS_6ConfigEPKNS_13DataPartitionEPKfSA_RKSt8functionIFiiEE.omp_outlined.12.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #19 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load double, ptr %i.b, align 8, !tbaa !39
  %i.h = load double, ptr %i.a, align 8, !tbaa !39
  %i.i = fadd double %i.g, %i.h
  store double %i.i, ptr %i.b, align 8, !tbaa !39
  %i.j = load double, ptr %i.f, align 8, !tbaa !39
  %i.k = load double, ptr %i.d, align 8, !tbaa !39
  %i.l = fadd double %i.j, %i.k
  store double %i.l, ptr %i.f, align 8, !tbaa !39
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENUlPKcPciiE_8__invokeES8_S9_ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #13 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.i, label %_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENKUlPKcPciiE_clES8_S9_ii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ 0, %.lr.ph.i ], [ %i.h, %bb.b ]
  %.01114.i = phi ptr [ %0, %.lr.ph.i ], [ %i.f, %bb.b ] ; 2 uses
  %.01213.i = phi ptr [ %1, %.lr.ph.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.c = load double, ptr %.01114.i, align 8, !tbaa !39
  %i.d = load double, ptr %.01213.i, align 8, !tbaa !39
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %.01213.i, align 8, !tbaa !39
  %i.f = getelementptr inbounds i8, ptr %.01114.i, i64 %i.b
  %i.g = getelementptr inbounds i8, ptr %.01213.i, i64 %i.b
  %i.h = add nsw i32 %.015.i, %2                  ; 2 uses
  %i.i = icmp slt i32 %i.h, %3
  br i1 %i.i, label %bb.b, label %_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENKUlPKcPciiE_clES8_S9_ii.exit, !llvm.loop !202

_ZZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_ENKUlPKcPciiE_clES8_S9_ii.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #21 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
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
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(none) }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { convergent nounwind }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = !{i32 1, !"long-double-type", !"x86_fp80"}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !14, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !15, i64 8}
!19 = !{!"p1 int", !14, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !19, i64 16}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!16, !15, i64 16}
!25 = !{!"p1 double", !14, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!26, !25, i64 0}
!28 = !{!26, !25, i64 16}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 0}
!32 = !{!30, !29, i64 16}
!33 = !{!9, !9, i64 0}
!34 = !{!"p1 float", !14, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"float", !8, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"double", !8, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!26, !25, i64 8}
!42 = !{!"_ZTSSt14_Function_base", !8, i64 0, !14, i64 16}
!43 = !{!42, !14, i64 16}
!44 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !14, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!14, !14, i64 0}
!47 = !{!"_ZTSSt8functionIFviiiEE", !42, i64 0, !14, i64 24}
!48 = !{!47, !14, i64 24}
!49 = !{!"bool", !8, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !26, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !50, i64 0}
!52 = !{!"_ZTSSt6vectorIdSaIdEE", !51, i64 0}
!53 = !{!"long", !8, i64 0}
!54 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !8, i64 0, !53, i64 4992}
!55 = !{!"_ZTSNSt24uniform_int_distributionIiE10param_typeE", !9, i64 0, !9, i64 4}
!56 = !{!"_ZTSSt24uniform_int_distributionIiE", !55, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !30, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIaSaIaEE", !58, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !16, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !61, i64 0}
!63 = !{!"_ZTSN8LightGBM19GradientDiscretizerE", !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !49, i64 24, !52, i64 32, !52, i64 56, !54, i64 80, !56, i64 5080, !59, i64 5088, !59, i64 5112, !38, i64 5136, !38, i64 5144, !38, i64 5152, !38, i64 5160, !38, i64 5168, !38, i64 5176, !49, i64 5184, !9, i64 5188, !59, i64 5192, !59, i64 5216, !59, i64 5240, !59, i64 5264, !52, i64 5288, !62, i64 5312}
!64 = !{!63, !9, i64 8}
!65 = !{}
!66 = !{!29, !29, i64 0}
!67 = !{!"p1 _ZTSN8LightGBM7DatasetE", !14, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!30, !29, i64 8}
!70 = !{!63, !9, i64 20}
!71 = !{!53, !53, i64 0}
!72 = !{!54, !53, i64 4992}
!73 = !{!8, !8, i64 0}
!74 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{i64 2, i64 -1, i64 -1, i1 true}
!78 = !{!77}
!79 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !20, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !79, i64 0}
!81 = !{!"_ZTSSt6vectorIiSaIiEE", !80, i64 0}
!82 = !{!20, !19, i64 8}
!83 = !{!19, !19, i64 0}
!84 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !14, i64 0}
!85 = !{!84, !14, i64 0}
!86 = !{!63, !38, i64 5168}
!87 = !{!63, !38, i64 5176}
!88 = distinct !{!88, !40}
!89 = distinct !{!89, !40}
!90 = distinct !{!90, !23}
!91 = !{!63, !38, i64 5136}
!92 = !{!63, !38, i64 5144}
!93 = !{!63, !49, i64 5184}
!94 = !{i8 0, i8 2}
!95 = !{!63, !49, i64 24}
!96 = !{!63, !38, i64 5152}
!97 = !{!63, !38, i64 5160}
!98 = !{i64 0, i64 4992, !73, i64 4992, i64 8, !71}
!99 = !{!63, !9, i64 5188}
!100 = distinct !{!100, !23, !75, !76}
!101 = distinct !{!101, !23, !75, !76}
!102 = distinct !{!102, !23}
!103 = distinct !{!103, !23, !75, !76}
!104 = distinct !{!104, !23, !75, !76}
!105 = distinct !{!105, !23}
!106 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS1_EE", !14, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!107, !106, i64 0}
!109 = !{!"p1 _ZTSN8LightGBM12FeatureGroupE", !14, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE", !14, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!"p1 _ZTSN8LightGBM9BinMapperE", !14, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!"_ZTSN8LightGBM11MissingTypeE", !8, i64 0}
!117 = !{!"_ZTSN8LightGBM7BinTypeE", !8, i64 0}
!118 = !{!"any p2 pointer", !14, i64 0}
!119 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !118, i64 0}
!120 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!121 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !120, i64 0}
!122 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !36, i64 0, !53, i64 8}
!123 = !{!"_ZTSSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !119, i64 0, !53, i64 8, !121, i64 16, !53, i64 24, !122, i64 32, !120, i64 48}
!124 = !{!"_ZTSSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE", !123, i64 0}
!125 = !{!"_ZTSN8LightGBM9BinMapperE", !9, i64 0, !116, i64 4, !52, i64 8, !49, i64 32, !38, i64 40, !117, i64 48, !124, i64 56, !81, i64 112, !38, i64 136, !38, i64 144, !9, i64 152, !9, i64 156}
!126 = !{!125, !9, i64 0}
!127 = !{!125, !9, i64 156}
!128 = distinct !{!128, !23, !75, !76}
!129 = distinct !{!129, !23, !75, !76}
!130 = distinct !{!130, !40}
!131 = distinct !{!131, !40}
!132 = distinct !{!132, i1 true, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!133 = distinct !{!133, !132, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!134 = distinct !{!134, !132, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!135 = distinct !{!135, !23}
!136 = !{!133}
!137 = !{!134}
!138 = distinct !{null}
!139 = distinct !{!139, i1 true, !"vprintf"}
!140 = distinct !{!140, !139, !"vprintf: argument 0"}
!141 = distinct !{null}
!142 = !{!"_ZTSN8LightGBM8LogLevelE", !8, i64 0}
!143 = !{!142, !142, i64 0}
!144 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!145 = !{!144, !144, i64 0}
!146 = !{!140}
!147 = distinct !{!147, !23}
!148 = !{!"_ZTSZN8LightGBM19GradientDiscretizer19DiscretizeGradientsEiPKfS2_E3$_0", !34, i64 0, !34, i64 8, !44, i64 16, !44, i64 24}
!149 = !{!148, !34, i64 0}
!150 = !{!148, !34, i64 8}
!151 = !{!148, !44, i64 16}
!152 = !{i64 8}
!153 = !{!148, !44, i64 24}
!154 = !{!"p1 _ZTSSt9type_info", !14, i64 0}
!155 = !{!154, !154, i64 0}
!156 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !45, i64 24, i64 8, !45}
!157 = distinct !{!157, !23}
!158 = distinct !{!158, !23}
!159 = distinct !{!159, !23}
!160 = !{!55, !9, i64 4}
!161 = !{!55, !9, i64 0}
!162 = distinct !{!162, i1 true, !"_ZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_"}
!163 = distinct !{!163, !162, !"_ZN8LightGBM7Network9GlobalSumIdEESt6vectorIT_SaIS3_EEPS5_: argument 0"}
!164 = distinct !{!164, !23}
!165 = distinct !{null}
end_hunk_1
