Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.11?download=true
inline.NumInlined: 132
inline.NumDeleted: 66
begin_hunk_0_@_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8lmMd0ZksV9_6statrs8generate16InfiniteTriangleNtB6_5Debug3fmtBA_:bb.a
  store ptr @13, ptr %i.s, align 8, !noalias !85
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @34, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85
  ret i1 %i.t
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8lmMd0ZksV9_6statrs8generate18InfiniteSinusoidalNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !72, !noundef !8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.a, align 8, !noalias !89
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 9, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 4, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 5, ptr noundef nonnull readonly %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs8lmMd0ZksV9_6statrs8generateNtB5_18InfiniteSinusoidalNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8lmMd0ZksV9_6statrs8generate18InfiniteSinusoidalNtB6_5Debug3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !72, !noundef !8
  %i.f = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @8, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs2_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_11DiscreteCDFydE2sf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %.not = icmp ult i64 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = uitofp i64 %1 to double
  %i.d = fadd double %i.c, 1.000000e+00
  %i.e = sub nuw i64 %i.b, %1
  %i.f = uitofp i64 %i.e to double
  %i.g = load double, ptr %0, align 8, !noundef !8
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg(double noundef %i.d, double noundef %i.f, double noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi double [ %i.h, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs2_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_11DiscreteCDFydE3cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %.not = icmp ult i64 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw i64 %i.b, %1
  %i.d = uitofp i64 %i.c to double
  %i.e = uitofp i64 %1 to double
  %i.f = fadd double %i.e, 1.000000e+00
  %i.g = load double, ptr %0, align 8, !noundef !8
  %i.h = fsub double 1.000000e+00, %i.g
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg(double noundef %i.d, double noundef %i.f, double noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi double [ %i.i, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs2_NtNtCs8lmMd0ZksV9_6statrs12distribution9bernoulliNtB5_9BernoulliINtB7_11DiscreteCDFydE2sf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !93, !noundef !8 ; 2 uses
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %_RNvXs2_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_11DiscreteCDFydE2sf.exit

bb.b:                                             ; preds = %bb.a
  %i.c = uitofp i64 %1 to double
  %i.d = fadd double %i.c, 1.000000e+00
  %i.e = sub nuw i64 %i.b, %1
  %i.f = uitofp i64 %i.e to double
  %i.g = load double, ptr %0, align 8, !alias.scope !93, !noundef !8
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function4beta8beta_reg(double noundef %i.d, double noundef %i.f, double noundef %i.g), !noalias !93
  br label %_RNvXs2_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_11DiscreteCDFydE2sf.exit

_RNvXs2_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_11DiscreteCDFydE2sf.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi double [ %i.h, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6cauchyNtB5_6CauchyINtB7_13ContinuousCDFddE11inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = fcmp oge double %1, 0.000000e+00
  %i.b = fcmp ole double %1, 1.000000e+00
  %.sroa.0.0.i = and i1 %i.a, %i.b
  br i1 %.sroa.0.0.i, label %bb.c, label %bb.b, !prof !56

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 39 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load double, ptr %0, align 8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !noundef !8
  %i.f = fadd nnan double %1, -5.000000e-01
  %i.g = fmul nnan double %i.f, f0x400921FB54442D18
  %i.h = tail call noundef double @tan(double noundef %i.g) #23
  %i.i = fmul double %i.e, %i.h
  %i.j = fadd double %i.c, %i.i
  ret double %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6cauchyNtB5_6CauchyINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load double, ptr %0, align 8, !noundef !8
  %i.b = fsub double %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !noundef !8
  %i.e = fdiv double %i.b, %i.d
  %i.f = tail call noundef double @atan(double noundef %i.e) #23
  %i.g = fmul double %i.f, f0x3FD45F306DC9C883
  %i.h = fadd double %i.g, 5.000000e-01
  ret double %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6cauchyNtB5_6CauchyINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load double, ptr %0, align 8, !noundef !8
  %i.b = fsub double %1, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !noundef !8
  %i.e = fdiv double %i.b, %i.d
  %i.f = tail call noundef double @atan(double noundef %i.e) #23
  %i.g = fmul double %i.f, f0x3FD45F306DC9C883
  %i.h = fadd double %i.g, 5.000000e-01
  ret double %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtCs8lmMd0ZksV9_6statrs8generateNtB5_14InfiniteSquareNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8lmMd0ZksV9_6statrs8generate14InfiniteSquareNtB6_5Debug3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !72, !noundef !8
  %i.f = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @8, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define { i64, double } @_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtNtNtB9_10statistics6traits12DistributiondE7entropy(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load double, ptr %0, align 8, !noundef !8 ; 4 uses
  %i.b = fcmp oeq double %i.a, 0.000000e+00
  %i.c = fcmp oeq double %i.a, 1.000000e+00
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB1E_8BinomialINtNtNtB1I_10statistics6traits12DistributiondE7entropy0EB1I_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  %.not.i = icmp eq i64 %i.e, -1
  br i1 %.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB1E_8BinomialINtNtNtB1I_10statistics6traits12DistributiondE7entropy0EB1I_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = tail call double @llvm.log.f64(double %i.a)
  %i.g = fsub double 1.000000e+00, %i.a
  %i.h = tail call double @llvm.log.f64(double %i.g)
  br label %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.i.i

_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.i.i: ; preds = %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i, %.lr.ph.i
  %.sroa.0.011.i = phi double [ %.sroa.0.0.i.i, %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i ], [ 0.000000e+00, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0610.i = phi i64 [ %i.i, %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.i = add nuw i64 %.sroa.0.0610.i, 1
  %i.j = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.e, i64 noundef %.sroa.0.0610.i), !noalias !96
  %i.k = uitofp i64 %.sroa.0.0610.i to double
  %i.l = fmul double %i.f, %i.k
  %i.m = fadd double %i.l, %i.j
  %i.n = sub nuw i64 %i.e, %.sroa.0.0610.i
  %i.o = uitofp i64 %i.n to double
  %i.p = fmul double %i.h, %i.o
  %i.q = fadd double %i.p, %i.m
  %i.r = tail call double @llvm.exp.f64(double %i.q) ; 3 uses
  %i.s = fcmp oeq double %i.r, 0.000000e+00
  br i1 %i.s, label %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i, label %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.thread4.i.i

_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.thread4.i.i: ; preds = %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.i.i
  %i.t = tail call double @llvm.log.f64(double %i.r)
  %i.u = fmul double %i.r, %i.t
  %i.v = fsub double %.sroa.0.011.i, %i.u
  br label %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i

_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i: ; preds = %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.thread4.i.i, %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.i.i
  %.sroa.0.0.i.i = phi double [ %i.v, %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.thread4.i.i ], [ %.sroa.0.011.i, %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.i.i ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.0.0610.i, %i.e
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB1E_8BinomialINtNtNtB1I_10statistics6traits12DistributiondE7entropy0EB1I_.exit, label %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.i.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB1E_8BinomialINtNtNtB1I_10statistics6traits12DistributiondE7entropy0EB1I_.exit: ; preds = %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i, %bb.b, %bb.a
  %.sroa.0.0 = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ], [ %.sroa.0.0.i.i, %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i ]
  %i.w = insertvalue { i64, double } { i64 1, double poison }, double %.sroa.0.0, 1
  ret { i64, double } %i.w
}

; Function Attrs: nonlazybind uwtable
define { i64, double } @_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution9bernoulliNtB5_9BernoulliINtNtNtB9_10statistics6traits12DistributiondE7entropy(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.a = load double, ptr %0, align 8, !alias.scope !101, !noundef !8 ; 4 uses
  %i.b = fcmp oeq double %i.a, 0.000000e+00
  %i.c = fcmp oeq double %i.a, 1.000000e+00
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtNtNtB9_10statistics6traits12DistributiondE7entropy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !101, !noundef !8 ; 4 uses
  %.not.i.i = icmp eq i64 %i.e, -1
  br i1 %.not.i.i, label %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtNtNtB9_10statistics6traits12DistributiondE7entropy.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.f = tail call double @llvm.log.f64(double %i.a)
  %i.g = fsub double 1.000000e+00, %i.a
  %i.h = tail call double @llvm.log.f64(double %i.g)
  br label %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.i.i.i

_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.i.i.i: ; preds = %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi double [ %.sroa.0.0.i.i.i, %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i.i ], [ 0.000000e+00, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.0610.i.i = phi i64 [ %i.i, %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.i = add nuw i64 %.sroa.0.0610.i.i, 1
  %i.j = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.e, i64 noundef %.sroa.0.0610.i.i), !noalias !104
  %i.k = uitofp i64 %.sroa.0.0610.i.i to double
  %i.l = fmul double %i.f, %i.k
  %i.m = fadd double %i.j, %i.l
  %i.n = sub nuw i64 %i.e, %.sroa.0.0610.i.i
  %i.o = uitofp i64 %i.n to double
  %i.p = fmul double %i.h, %i.o
  %i.q = fadd double %i.p, %i.m
  %i.r = tail call double @llvm.exp.f64(double %i.q) ; 3 uses
  %i.s = fcmp oeq double %i.r, 0.000000e+00
  br i1 %i.s, label %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i.i, label %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.thread4.i.i.i

_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.thread4.i.i.i: ; preds = %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.i.i.i
  %i.t = tail call double @llvm.log.f64(double %i.r)
  %i.u = fmul double %i.r, %i.t
  %i.v = fsub double %.sroa.0.011.i.i, %i.u
  br label %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i.i

_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i.i: ; preds = %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.thread4.i.i.i, %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.i.i.i
  %.sroa.0.0.i.i.i = phi double [ %i.v, %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.thread4.i.i.i ], [ %.sroa.0.011.i.i, %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.i.i.i ] ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.0610.i.i, %i.e
  br i1 %exitcond.not.i.i, label %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtNtNtB9_10statistics6traits12DistributiondE7entropy.exit, label %_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf.exit.i.i.i

_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtNtNtB9_10statistics6traits12DistributiondE7entropy.exit: ; preds = %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i.i, %bb.a, %bb.b
  %.sroa.0.0.i = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ], [ %.sroa.0.0.i.i.i, %_RNCNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB7_8BinomialINtNtNtBb_10statistics6traits12DistributiondE7entropy0Bb_.exit.i.i ]
  %i.w = insertvalue { i64, double } { i64 1, double poison }, double %.sroa.0.0.i, 1
  ret { i64, double } %i.w
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs8_NtCs8lmMd0ZksV9_6statrs8generateNtB5_16InfiniteTriangleNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8lmMd0ZksV9_6statrs8generate16InfiniteTriangleNtB6_5Debug3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !72, !noundef !8
  %i.f = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @8, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE3pmf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 4 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %0, align 8, !noundef !8 ; 4 uses
  %i.e = fcmp oeq double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp oeq double %i.d, 1.000000e+00
  br i1 %i.f, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, 0
  %. = select i1 %i.g, double 1.000000e+00, double 0.000000e+00
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.b, i64 noundef %1)
  %i.i = uitofp i64 %1 to double
  %i.j = tail call double @llvm.log.f64(double %i.d)
  %i.k = fmul double %i.j, %i.i
  %i.l = fadd double %i.k, %i.h
  %i.m = sub i64 %i.b, %1
  %i.n = uitofp i64 %i.m to double
  %i.o = fsub double 1.000000e+00, %i.d
  %i.p = tail call double @llvm.log.f64(double %i.o)
  %i.q = fmul double %i.p, %i.n
  %i.r = fadd double %i.q, %i.l
  %i.s = tail call double @llvm.exp.f64(double %i.r)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %1, %i.b
  %.3 = select i1 %i.t, double 1.000000e+00, double 0.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.a, %bb.e
  %.sroa.0.0 = phi double [ %i.s, %bb.e ], [ 0.000000e+00, %bb.a ], [ %.3, %bb.f ], [ %., %bb.d ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution8binomialNtB5_8BinomialINtB7_8DiscreteydE6ln_pmf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 4 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %0, align 8, !noundef !8 ; 4 uses
  %i.e = fcmp oeq double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp oeq double %i.d, 1.000000e+00
  br i1 %i.f, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, 0
  %. = select i1 %i.g, double 0.000000e+00, double -inf
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.b, i64 noundef %1)
  %i.i = uitofp i64 %1 to double
  %i.j = tail call double @llvm.log.f64(double %i.d)
  %i.k = fmul double %i.j, %i.i
  %i.l = fadd double %i.k, %i.h
  %i.m = sub i64 %i.b, %1
  %i.n = uitofp i64 %i.m to double
  %i.o = fsub double 1.000000e+00, %i.d
  %i.p = tail call double @llvm.log.f64(double %i.o)
  %i.q = fmul double %i.p, %i.n
  %i.r = fadd double %i.q, %i.l
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %1, %i.b
  %.3 = select i1 %i.s, double 0.000000e+00, double -inf
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.a, %bb.e
  %.sroa.0.0 = phi double [ %i.r, %bb.e ], [ -inf, %bb.a ], [ %.3, %bb.f ], [ %., %bb.d ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution9bernoulliNtB5_9BernoulliINtB7_8DiscreteydE3pmf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
end_hunk_0
