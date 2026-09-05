Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.05?download=true
inline.NumInlined: 96
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB2_19HypergeometricErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !9, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 22) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 18) #13
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution6normalNtB2_11NormalErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !8, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !9, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 11) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 49) #13
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB5_14HypergeometricNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !9, !noundef !4
  %i.i = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @9, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution6normalNtB5_6NormalNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !9, !noundef !4
  %i.g = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @10, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometric19HypergeometricErrorNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.b = load i8, ptr %i.a, align 1, !range !8, !alias.scope !153, !noalias !154, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr %1, align 8, !alias.scope !154, !noalias !153, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !154, !noalias !153, !nonnull !4, !align !9, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !noalias !155, !nonnull !4 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 22) #13, !noalias !155, !inline_history !156
  br label %_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB2_19HypergeometricErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 18) #13, !noalias !155, !inline_history !156
  br label %_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB2_19HypergeometricErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB2_19HypergeometricErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6normalNtB5_6NormalINtB7_13ContinuousCDFddE11inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = fcmp oge double %1, 0.000000e+00
  %i.b = fcmp ole double %1, 1.000000e+00
  %spec.select.i = and i1 %i.a, %i.b
  br i1 %spec.select.i, label %bb.c, label %bb.b, !prof !157

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 39 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load double, ptr %0, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !noundef !4
  %i.f = fmul double %i.e, f0x3FF6A09E667F3BCD
  %i.g = fmul nnan double %1, 2.000000e+00
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erfc_inv(double noundef %i.g)
  %i.i = fmul double %i.f, %i.h
  %i.j = fsub double %i.c, %i.i
  ret double %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6normalNtB5_6NormalINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !noundef !4
  %i.d = fsub double %1, %i.a
  %i.e = fmul double %i.c, f0x3FF6A09E667F3BCD
  %i.f = fdiv double %i.d, %i.e
  %i.g = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf4erfc(double noundef %i.f)
  %i.h = fmul double %i.g, 5.000000e-01
  ret double %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6normalNtB5_6NormalINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !noundef !4
  %i.d = fsub double %i.a, %1
  %i.e = fmul double %i.c, f0x3FF6A09E667F3BCD
  %i.f = fdiv double %i.d, %i.e
  %i.g = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf4erfc(double noundef %i.f)
  %i.h = fmul double %i.g, 5.000000e-01
  ret double %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB5_14HypergeometricINtB7_11DiscreteCDFydE2sf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 5 uses
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr %0, align 8, !noundef !4   ; 3 uses
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.f)
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %_RINvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4folddNCNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB22_14HypergeometricINtB24_11DiscreteCDFydE2sf0EB26_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 5 uses
  %.not = icmp ult i64 %1, %..i.i
  br i1 %.not, label %.preheader.i.i, label %_RINvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4folddNCNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB22_14HypergeometricINtB24_11DiscreteCDFydE2sf0EB26_.exit

.preheader.i.i:                                   ; preds = %bb.b
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.f, i64 noundef %i.b) ; 2 uses
  %i.j = add nuw i64 %1, 1                        ; 2 uses
  %i.k = icmp ult i64 %i.j, %..i.i
  %i.l = sub i64 %i.f, %i.d                       ; 2 uses
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.sroa.01.015.i.i = phi double [ %i.u, %.lr.ph.i.i ], [ 0.000000e+00, %.preheader.i.i ]
  %i.m = phi i64 [ %i.n, %.lr.ph.i.i ], [ %i.j, %.preheader.i.i ] ; 3 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  %i.o = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.d, i64 noundef %i.m), !noalias !165
  %i.p = sub nuw i64 %i.b, %i.m
  %i.q = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.l, i64 noundef %i.p), !noalias !165
  %i.r = fadd double %i.o, %i.q
  %i.s = fsub double %i.r, %i.i
  %i.t = tail call double @llvm.exp.f64(double %i.s)
  %i.u = fadd double %.sroa.01.015.i.i, %i.t      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %..i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.01.0.lcssa22.i.i = phi double [ 0.000000e+00, %.preheader.i.i ], [ %i.u, %.lr.ph.i.i ]
  %i.v = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.d, i64 noundef %..i.i), !noalias !165
  %i.w = sub nuw i64 %i.b, %..i.i
  %i.x = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.l, i64 noundef %i.w), !noalias !165
  %i.y = fadd double %i.v, %i.x
  %i.z = fsub double %i.y, %i.i
  %i.aa = tail call double @llvm.exp.f64(double %i.z)
  %i.ab = fadd double %.sroa.01.0.lcssa22.i.i, %i.aa
  br label %_RINvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4folddNCNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB22_14HypergeometricINtB24_11DiscreteCDFydE2sf0EB26_.exit

_RINvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4folddNCNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB22_14HypergeometricINtB24_11DiscreteCDFydE2sf0EB26_.exit: ; preds = %._crit_edge.thread.i.i, %bb.b, %bb.a
  %.sroa.0.0 = phi double [ 0.000000e+00, %bb.b ], [ 1.000000e+00, %bb.a ], [ %i.ab, %._crit_edge.thread.i.i ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB5_14HypergeometricINtB7_11DiscreteCDFydE3cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr %0, align 8, !noundef !4   ; 3 uses
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.f)
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB1E_14HypergeometricINtB1G_11DiscreteCDFydE3cdf0EB1I_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.d)
  %.not = icmp ult i64 %1, %..i.i
  br i1 %.not, label %.lr.ph.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB1E_14HypergeometricINtB1G_11DiscreteCDFydE3cdf0EB1I_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.f, i64 noundef %i.b)
  %i.j = sub i64 %i.f, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.012.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.r, %bb.c ]
  %.sroa.0.0711.i = phi i64 [ 0, %.lr.ph.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.0711.i, 1
  %i.l = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.d, i64 noundef %.sroa.0.0711.i), !noalias !169
  %i.m = sub i64 %i.b, %.sroa.0.0711.i
  %i.n = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.j, i64 noundef %i.m), !noalias !169
  %i.o = fadd double %i.l, %i.n
  %i.p = fsub double %i.o, %i.i
  %i.q = tail call double @llvm.exp.f64(double %i.p)
  %i.r = fadd double %.sroa.0.012.i, %i.q         ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.0.0711.i, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB1E_14HypergeometricINtB1G_11DiscreteCDFydE3cdf0EB1I_.exit, label %bb.c

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folddNCNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB1E_14HypergeometricINtB1G_11DiscreteCDFydE3cdf0EB1I_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi double [ 1.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.r, %bb.c ]
  ret double %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i64 @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB5_14HypergeometricINtNtNtB9_10statistics6traits3MaxyE3max(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b)
  ret i64 %..i
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs9_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB5_14HypergeometricINtB7_8DiscreteydE3pmf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial8binomial(i64 noundef %i.e, i64 noundef %1)
  %i.g = load i64, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.h = sub i64 %i.g, %i.e
  %i.i = sub nuw i64 %i.b, %1
  %i.j = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial8binomial(i64 noundef %i.h, i64 noundef %i.i)
  %i.k = fmul double %i.f, %i.j
  %i.l = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial8binomial(i64 noundef %i.g, i64 noundef %i.b)
  %i.m = fdiv double %i.k, %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi double [ %i.m, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs9_NtNtCs8lmMd0ZksV9_6statrs12distribution14hypergeometricNtB5_14HypergeometricINtB7_8DiscreteydE6ln_pmf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.b, i64 noundef %1)
  %i.d = load i64, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.e = sub i64 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = sub i64 %i.g, %1
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.e, i64 noundef %i.h)
  %i.j = fadd double %i.c, %i.i
  %i.k = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef %i.d, i64 noundef %i.g)
  %i.l = fsub double %i.j, %i.k
  ret double %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterjENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples2_0E0EB1W_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples3_0E0EB1W_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests7ks_test12ks_twosamples4_0E0EB1W_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #9

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function9factorial11ln_binomial(i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf4erfc(double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma(double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0
end_hunk_0
