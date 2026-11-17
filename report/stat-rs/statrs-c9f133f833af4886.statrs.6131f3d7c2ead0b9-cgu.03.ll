Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.03?download=true
inline.NumInlined: 124
inline.NumDeleted: 27
begin_hunk_0_@_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB2_8ChiErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt:bb.a
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !11, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 27) #13
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution7poissonNtB2_12PoissonErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !11, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 37) #13
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXst_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZeroyENtNtB9_3fmt7Display3fmtCs8lmMd0ZksV9_6statrs, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !11, !noundef !4
  %i.e = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution7poissonNtB5_7PoissonNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !11, !noundef !4
  %i.e = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @25, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE11inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = fcmp oge double %1, 0.000000e+00
  %i.b = fcmp ole double %1, 1.000000e+00
  %spec.select.i = and i1 %i.a, %i.b
  br i1 %spec.select.i, label %bb.c, label %bb.b, !prof !197

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 39 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %1, 0.000000e+00
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = fcmp oeq double %1, 1.000000e+00
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef double @_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution8internal23newton_raphson_quantileNCNvXs3_NtB4_3chiNtB1l_3ChiINtB4_13ContinuousCDFddE11inverse_cdf0NCB1f_s_0NCB1f_s0_0EB6_(double noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0 = phi double [ %i.e, %bb.e ], [ 0.000000e+00, %bb.c ], [ +inf, %bb.d ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = fcmp oeq double %1, +inf
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ugt double %1, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 8, !range !12, !noundef !4
  %i.d = uitofp i64 %i.c to double
  %i.e = fmul nnan double %i.d, 5.000000e-01
  %i.f = fmul double %1, %1
  %i.g = fmul double %i.f, 5.000000e-01
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur(double noundef %i.e, double noundef %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi double [ %i.h, %bb.c ], [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = fcmp oeq double %1, +inf
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ugt double %1, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 8, !range !12, !noundef !4
  %i.d = uitofp i64 %i.c to double
  %i.e = fmul nnan double %i.d, 5.000000e-01
  %i.f = fmul double %1, %1
  %i.g = fmul double %i.f, 5.000000e-01
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr(double noundef %i.e, double noundef %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi double [ %i.h, %bb.c ], [ 1.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution7poissonNtB5_7PoissonINtB7_11DiscreteCDFydE2sf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = uitofp i64 %1 to double
  %i.b = fadd double %i.a, 1.000000e+00
  %i.c = load double, ptr %0, align 8, !noundef !4
  %i.d = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr(double noundef %i.b, double noundef %i.c)
  ret double %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution7poissonNtB5_7PoissonINtB7_11DiscreteCDFydE3cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = uitofp i64 %1 to double
  %i.b = fadd double %i.a, 1.000000e+00
  %i.c = load double, ptr %0, align 8, !noundef !4
  %i.d = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur(double noundef %i.b, double noundef %i.c)
  ret double %i.d
}

; Function Attrs: nonlazybind uwtable
define { i64, double } @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtNtNtB9_10statistics6traits12DistributiondE4mean(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4 ; 2 uses
  %i.b = uitofp i64 %i.a to double                ; 7 uses
  %i.c = icmp ugt i64 %i.a, 300
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fadd nnan double %i.b, 1.000000e+00
  %i.e = fmul nnan double %i.d, 5.000000e-01
  %i.f = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.e)
  %i.g = fmul double %i.f, f0x3FF6A09E667F3BCD
  %i.h = fmul nnan double %i.b, 5.000000e-01
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.h)
  %i.j = fdiv double %i.g, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call double @llvm.sqrt.f64(double %i.b)
  %i.l = fdiv nnan double 2.500000e-01, %i.b
  %i.m = fadd nnan double %i.l, 1.000000e+00
  %i.n = fmul double %i.b, %i.b                   ; 2 uses
  %i.o = fmul double %i.n, %i.b
  %i.p = insertelement <2 x double> poison, double %i.n, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.o, i64 1
  %i.r = fdiv <2 x double> <double 3.125000e-02, double 4.687500e-02>, %i.q
  %i.s = fadd <2 x double> %i.r, <double 1.000000e+00, double -0.000000e+00> ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = fmul nnan double %i.m, %i.t
  %i.v = extractelement <2 x double> %i.s, i64 1
  %i.w = fsub double 1.000000e+00, %i.v
  %i.x = fmul double %i.u, %i.w
  %i.y = fdiv double %i.k, %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi double [ %i.y, %bb.c ], [ %i.j, %bb.b ]
  %i.z = insertvalue { i64, double } { i64 1, double poison }, double %.sroa.3.0, 1
  ret { i64, double } %i.z
}

; Function Attrs: nonlazybind uwtable
define { i64, double } @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtNtNtB9_10statistics6traits12DistributiondE7entropy(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4
  %i.b = uitofp i64 %i.a to double                ; 3 uses
  %i.c = fmul nnan double %i.b, 5.000000e-01      ; 2 uses
  %i.d = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.c)
  %i.e = fadd nnan double %i.b, f0xBFE62E42FEFA39EF
  %i.f = fadd nnan double %i.b, -1.000000e+00
  %i.g = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma(double noundef %i.c)
  %i.h = fmul double %i.f, %i.g
  %i.i = fsub double %i.e, %i.h
  %i.j = fmul double %i.i, 5.000000e-01
  %i.k = fadd double %i.d, %i.j
  %i.l = insertvalue { i64, double } { i64 1, double poison }, double %i.k, 1
  ret { i64, double } %i.l
}

; Function Attrs: nonlazybind uwtable
define { i64, double } @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtNtNtB9_10statistics6traits12DistributiondE8skewness(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !12, !alias.scope !208, !noundef !4 ; 2 uses
  %i.a = uitofp i64 %.val to double               ; 9 uses
  %i.b = icmp ugt i64 %.val, 300
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fadd nnan double %i.a, 1.000000e+00
  %i.d = fmul nnan double %i.c, 5.000000e-01      ; 2 uses
  %i.e = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.d), !noalias !209
  %i.f = fmul nnan double %i.a, 5.000000e-01      ; 2 uses
  %i.g = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.f), !noalias !209
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.d), !noalias !210
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.f), !noalias !210
  %i.j = insertelement <2 x double> poison, double %i.e, i64 0
  %i.k = insertelement <2 x double> %i.j, double %i.h, i64 1
  %i.l = fmul <2 x double> %i.k, splat (double f0x3FF6A09E667F3BCD)
  %i.m = insertelement <2 x double> poison, double %i.g, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.i, i64 1
  %i.o = fdiv <2 x double> %i.l, %i.n             ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.o, %i.o
  %i.p = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.q = fsub double %i.a, %i.p
  %i.r = tail call noundef double @llvm.sqrt.f64(double %i.q)
  %i.s = extractelement <2 x double> %i.o, i64 1
  br label %_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtNtNtB9_10statistics6traits12DistributiondE4mean.exit

bb.c:                                             ; preds = %bb.a
  %i.t = tail call double @llvm.sqrt.f64(double %i.a)
  %i.u = fdiv nnan double 2.500000e-01, %i.a
  %i.v = fadd nnan double %i.u, 1.000000e+00
  %i.w = fmul double %i.a, %i.a                   ; 2 uses
  %i.x = fmul double %i.w, %i.a
  %i.y = insertelement <2 x double> poison, double %i.w, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.x, i64 1
  %i.aa = fdiv <2 x double> <double 3.125000e-02, double 4.687500e-02>, %i.z
  %i.ab = fadd <2 x double> %i.aa, <double 1.000000e+00, double -0.000000e+00> ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  %i.ad = fmul nnan double %i.v, %i.ac
  %i.ae = extractelement <2 x double> %i.ab, i64 1
  %i.af = fsub double 1.000000e+00, %i.ae
  %i.ag = fmul double %i.ad, %i.af
  %i.ah = fdiv double %i.t, %i.ag                 ; 3 uses
  %i.ai = fmul double %i.ah, %i.ah
  %i.aj = fsub double %i.a, %i.ai
  %i.ak = tail call noundef double @llvm.sqrt.f64(double %i.aj)
  br label %_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtNtNtB9_10statistics6traits12DistributiondE4mean.exit

_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtNtNtB9_10statistics6traits12DistributiondE4mean.exit: ; preds = %bb.b, %bb.c
  %i.al = phi double [ %i.ak, %bb.c ], [ %i.r, %bb.b ] ; 5 uses
  %.sroa.3.0.i = phi double [ %i.ah, %bb.c ], [ %i.s, %bb.b ]
  %i.am = fmul double %i.al, 2.000000e+00
  %i.an = fmul double %i.al, %i.am
  %i.ao = fsub double 1.000000e+00, %i.an
  %i.ap = fmul double %.sroa.3.0.i, %i.ao
  %i.aq = fmul double %i.al, %i.al
  %i.ar = fmul double %i.al, %i.aq
  %i.as = fdiv double %i.ap, %i.ar
  %i.at = insertvalue { i64, double } { i64 1, double undef }, double %i.as, 1
  ret { i64, double } %i.at
}

; Function Attrs: nonlazybind uwtable
define { i64, double } @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtNtNtB9_10statistics6traits12DistributiondE8variance(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.a = load i64, ptr %0, align 8, !range !12, !alias.scope !213, !noundef !4 ; 2 uses
  %i.b = uitofp i64 %i.a to double                ; 8 uses
  %i.c = icmp ugt i64 %i.a, 300
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fadd nnan double %i.b, 1.000000e+00
  %i.e = fmul nnan double %i.d, 5.000000e-01
  %i.f = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.e), !noalias !213
  %i.g = fmul double %i.f, f0x3FF6A09E667F3BCD
  %i.h = fmul nnan double %i.b, 5.000000e-01
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.h), !noalias !213
  %i.j = fdiv double %i.g, %i.i
  br label %_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtNtNtB9_10statistics6traits12DistributiondE4mean.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call double @llvm.sqrt.f64(double %i.b)
  %i.l = fdiv nnan double 2.500000e-01, %i.b
  %i.m = fadd nnan double %i.l, 1.000000e+00
  %i.n = fmul double %i.b, %i.b                   ; 2 uses
  %i.o = fmul double %i.n, %i.b
  %i.p = insertelement <2 x double> poison, double %i.n, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.o, i64 1
  %i.r = fdiv <2 x double> <double 3.125000e-02, double 4.687500e-02>, %i.q
  %i.s = fadd <2 x double> %i.r, <double 1.000000e+00, double -0.000000e+00> ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = fmul nnan double %i.m, %i.t
  %i.v = extractelement <2 x double> %i.s, i64 1
  %i.w = fsub double 1.000000e+00, %i.v
  %i.x = fmul double %i.u, %i.w
  %i.y = fdiv double %i.k, %i.x
  br label %_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtNtNtB9_10statistics6traits12DistributiondE4mean.exit

_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtNtNtB9_10statistics6traits12DistributiondE4mean.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.i = phi double [ %i.y, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %i.z = fmul double %.sroa.3.0.i, %.sroa.3.0.i
  %i.aa = fsub double %i.b, %i.z
  %i.ab = insertvalue { i64, double } { i64 1, double undef }, double %i.aa, 1
  ret { i64, double } %i.ab
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_10ContinuousddE3pdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %or.cond = tail call i1 @llvm.is.fpclass.f64(double %1, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 160
  %i.c = uitofp i64 %i.a to double                ; 2 uses
  %i.d = fmul nnan double %i.c, 5.000000e-01      ; 3 uses
  %i.e = fsub nnan double 1.000000e+00, %i.d      ; 2 uses
  %i.f = fadd double %i.c, -1.000000e+00          ; 2 uses
  br i1 %i.b, label %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_10ContinuousddE6ln_pdf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %exp2 = tail call nnan double @llvm.exp2.f64(double %i.e)
  %i.g = tail call double @llvm.pow.f64(double %1, double %i.f)
  %i.h = fmul double %i.g, %exp2
  %i.i = fneg double %1
  %i.j = fmul double %1, %i.i
  %i.k = fmul double %i.j, 5.000000e-01
  %i.l = tail call double @llvm.exp.f64(double %i.k)
  %i.m = fmul double %i.l, %i.h
  %i.n = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.d)
  %i.o = fdiv double %i.m, %i.n
  br label %bb.d

_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_10ContinuousddE6ln_pdf.exit: ; preds = %bb.b
  %i.p = fmul nnan double %i.e, f0x3FE62E42FEFA39EF
  %i.q = tail call ninf double @llvm.log.f64(double %1)
  %i.r = fmul double %i.q, %i.f
  %i.s = fadd double %i.r, %i.p
  %i.t = fmul double %1, %1
  %i.u = fmul double %i.t, 5.000000e-01
  %i.v = fsub double %i.s, %i.u
  %i.w = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.d), !noalias !216
  %i.x = fsub double %i.v, %i.w
  %i.y = tail call double @llvm.exp.f64(double %i.x)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_10ContinuousddE6ln_pdf.exit
  %.sroa.0.0 = phi double [ %i.o, %bb.c ], [ %i.y, %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_10ContinuousddE6ln_pdf.exit ], [ 0.000000e+00, %bb.a ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_10ContinuousddE6ln_pdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %or.cond = tail call i1 @llvm.is.fpclass.f64(double %1, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4
  %i.b = uitofp i64 %i.a to double                ; 2 uses
  %i.c = fmul nnan double %i.b, 5.000000e-01      ; 2 uses
  %i.d = fsub nnan double 1.000000e+00, %i.c
  %i.e = fmul nnan double %i.d, f0x3FE62E42FEFA39EF
  %i.f = fadd nnan double %i.b, -1.000000e+00
  %i.g = tail call ninf double @llvm.log.f64(double %1)
  %i.h = fmul double %i.g, %i.f
  %i.i = fadd double %i.h, %i.e
  %i.j = fmul double %1, %1
  %i.k = fmul double %i.j, 5.000000e-01
  %i.l = fsub double %i.i, %i.k
  %i.m = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.c)
  %i.n = fsub double %i.l, %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi double [ %i.n, %bb.b ], [ -inf, %bb.a ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXsa_NtNtCs8lmMd0ZksV9_6statrs12distribution7poissonNtB5_7PoissonINtB7_8DiscreteydE3pmf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !noundef !4 ; 2 uses
  %i.b = uitofp i64 %1 to double
  %i.c = tail call double @llvm.log.f64(double %i.a)
  %i.d = fmul double %i.c, %i.b
  %i.e = fsub double %i.d, %i.a
  %i.f = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial12ln_factorial(i64 noundef %1)
  %i.g = fsub double %i.e, %i.f
  %i.h = tail call double @llvm.exp.f64(double %i.g)
  ret double %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXsa_NtNtCs8lmMd0ZksV9_6statrs12distribution7poissonNtB5_7PoissonINtB7_8DiscreteydE6ln_pmf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !noundef !4 ; 2 uses
  %i.b = uitofp i64 %1 to double
  %i.c = tail call double @llvm.log.f64(double %i.a)
  %i.d = fmul double %i.c, %i.b
  %i.e = fsub double %i.d, %i.a
  %i.f = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial12ln_factorial(i64 noundef %1)
  %i.g = fsub double %i.e, %i.f
  ret double %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB5_19HypergeometricErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !10, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 12, i64 16
  %.1 = select i1 %i.b, ptr @30, ptr @29
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXst_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZeroyENtNtB9_3fmt7Display3fmtCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !4
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1N_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1N_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1N_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB2j_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB2j_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB2j_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs9_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB5_14HypergeometricINtB7_8DiscreteydE3pmf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maximumnum.f64(double, double) #8

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB5_14HypergeometricINtB7_11DiscreteCDFydE3cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minimumnum.f64(double, double) #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometric19HypergeometricErrorNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef double @_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution8internal23newton_raphson_quantileNCNvXs3_NtB4_3chiNtB1l_3ChiINtB4_13ContinuousCDFddE11inverse_cdf0NCB1f_s_0NCB1f_s0_0EB6_(double noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur(double noundef, double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr(double noundef, double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #8

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma(double noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #8

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial12ln_factorial(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
end_hunk_0
