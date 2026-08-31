Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.15?download=true
inline.NumInlined: 54
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !15, !alias.scope !88, !noalias !91, !noundef !18
  store i8 %i.f, ptr %i.a, align 1, !noalias !93
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #15, !noalias !88
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load double, ptr %i.g, align 8, !alias.scope !88, !noalias !91, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret double %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp olt double %0, 5.000000e-01
  br i1 %i.a, label %.preheader.preheader, label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %bb.a
  %i.b = insertelement <2 x double> poison, double %0, i64 0
  %i.c = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> zeroinitializer
  %i.d = fadd <2 x double> %i.c, <double 1.000000e+00, double 2.000000e+00>
  %i.e = fadd <2 x double> %i.d, splat (double -1.000000e+00)
  %i.f = fdiv <2 x double> <double f0x3FF0D2A1BF6524BB, double f0xC00BA7ABF7E16B28>, %i.e ; 2 uses
  %i.g = insertelement <8 x double> poison, double %0, i64 0
  %i.h = shufflevector <8 x double> %i.g, <8 x double> poison, <8 x i32> zeroinitializer
  %i.i = fadd <8 x double> %i.h, <double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01>
  %i.j = fadd <8 x double> %i.i, splat (double -1.000000e+00)
  %i.k = fdiv <8 x double> <double f0x40120C925DE05F43, double f0xC007DCE1A4639489, double f0x3FF0E700A97D3899, double f0xBFC903CF5EC71B4C, double f0x3F9181E3E5002551, double f0xBF42BDA9FC284BE3, double f0x3ED36FB6C5EDE4EB, double f0xBE275D3B35ECD3F3>, %i.j
  %i.l = extractelement <2 x double> %i.f, i64 0
  %op.rdx33 = fadd double %i.l, f0x3EFA109C2231ECD3
  %i.m = extractelement <2 x double> %i.f, i64 1
  %op.rdx34 = fadd double %op.rdx33, %i.m
  %i.n = tail call double @llvm.vector.reduce.fadd.v8f64(double %op.rdx34, <8 x double> %i.k)
  %i.o = tail call double @llvm.log.f64(double %i.n)
  %i.p = fadd double %i.o, f0x3FE3DD72B6129832
  %i.q = fadd double %0, -5.000000e-01            ; 2 uses
  %i.r = fadd double %i.q, f0x4025CD0FC71D6063
  %i.s = fdiv double %i.r, f0x4005BF0A8B145769
  %i.t = tail call double @llvm.log.f64(double %i.s)
  %i.u = fmul double %i.q, %i.t
  %i.v = fadd double %i.u, %i.p
  br label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.w = insertelement <2 x double> poison, double %0, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fsub <2 x double> <double 1.000000e+00, double 2.000000e+00>, %i.x
  %i.z = fdiv <2 x double> <double f0x3FF0D2A1BF6524BB, double f0xC00BA7ABF7E16B28>, %i.y ; 2 uses
  %i.aa = insertelement <8 x double> poison, double %0, i64 0
  %i.ab = shufflevector <8 x double> %i.aa, <8 x double> poison, <8 x i32> zeroinitializer
  %i.ac = fsub <8 x double> <double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01>, %i.ab
  %i.ad = fdiv <8 x double> <double f0x40120C925DE05F43, double f0xC007DCE1A4639489, double f0x3FF0E700A97D3899, double f0xBFC903CF5EC71B4C, double f0x3F9181E3E5002551, double f0xBF42BDA9FC284BE3, double f0x3ED36FB6C5EDE4EB, double f0xBE275D3B35ECD3F3>, %i.ac
  %i.ae = extractelement <2 x double> %i.z, i64 0
  %op.rdx = fadd double %i.ae, f0x3EFA109C2231ECD3
  %i.af = extractelement <2 x double> %i.z, i64 1
  %op.rdx32 = fadd double %op.rdx, %i.af
  %i.ag = tail call double @llvm.vector.reduce.fadd.v8f64(double %op.rdx32, <8 x double> %i.ad)
  %i.ah = fmul nnan double %0, f0x400921FB54442D18
  %i.ai = tail call double @llvm.sin.f64(double %i.ah)
  %i.aj = tail call double @llvm.log.f64(double %i.ai)
  %i.ak = fsub double f0x3FF250D048E7A1BD, %i.aj
  %i.al = tail call double @llvm.log.f64(double %i.ag)
  %i.am = fsub double %i.ak, %i.al
  %i.an = fadd double %i.am, f0xBFE3DD72B6129832
  %i.ao = fsub double 5.000000e-01, %0            ; 2 uses
  %i.ap = fadd nnan double %i.ao, f0x4025CD0FC71D6063
  %i.aq = fdiv nnan double %i.ap, f0x4005BF0A8B145769
  %i.ar = tail call double @llvm.log.f64(double %i.aq)
  %i.as = fmul double %i.ao, %i.ar
  %i.at = fsub double %i.an, %i.as
  br label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %.preheader29.preheader
  %.sroa.0.0 = phi double [ %i.at, %.preheader.preheader ], [ %i.v, %.preheader29.preheader ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB2_17InverseGammaErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !15, !noundef !18
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !18, !align !94, !noundef !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !18, !nonnull !18 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 46) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 45) #17
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution5diracNtB2_10DiracErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !18, !align !94, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !18, !nonnull !18
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 14) #17
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution6paretoNtB2_11ParetoErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !15, !noundef !18
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !18, !align !94, !noundef !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !18, !nonnull !18
  %spec.select = select i1 %i.b, ptr @17, ptr @16
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select, i64 noundef 37) #17
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs8function4betaNtB2_13BetaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !21, !noundef !18
  %i.b = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !18, !align !94, !noundef !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !18, !nonnull !18 ; 3 uses
  switch i8 %i.a, label %default.unreachable36 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

default.unreachable36:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 27) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 27) #17
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 18) #17
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs8function5gammaNtB2_14GammaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !15, !noundef !18
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !18, !align !94, !noundef !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !18, !nonnull !18
  %spec.select = select i1 %i.b, ptr @22, ptr @21
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select, i64 noundef 37) #17
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs3oUPovFnLWP_4core4hint20select_unpredictableINtB2_11DropOnPanicPdENtNtNtB6_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs3oUPovFnLWP_4core4hint20select_unpredictableINtB2_11DropOnPanicjENtNtNtB6_3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = ptrtoint ptr %0 to i64
  %3 = ptrtoint ptr %i.b to i64
  store i64 %2, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt to i64), ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 ptrtoint (ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt to i64), ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !18, !align !94, !noundef !18
  %i.g = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution5diracNtB5_5DiracNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = ptrtoint ptr %0 to i64
  store i64 %2, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt to i64), ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !18, !align !94, !noundef !18
  %i.e = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs8lmMd0ZksV9_6statrs12distribution6paretoNtB5_6ParetoNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = ptrtoint ptr %0 to i64
  %3 = ptrtoint ptr %i.b to i64
  store i64 %2, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt to i64), ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 ptrtoint (ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt to i64), ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !18, !align !94, !noundef !18
  %i.g = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @25, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_13ContinuousCDFddE11inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, double noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = fcmp oge double %1, 0.000000e+00
  %i.b = fcmp ole double %1, 1.000000e+00
  %spec.select.i = and i1 %i.a, %i.b
  br i1 %spec.select.i, label %bb.c, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 39 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %1, 0.000000e+00
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = fcmp oeq double %1, 1.000000e+00
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef double @_RINvNtNtCs8lmMd0ZksV9_6statrs12distribution8internal23newton_raphson_quantileNCNvXs3_NtB4_13inverse_gammaNtB1l_12InverseGammaINtB4_13ContinuousCDFddE11inverse_cdf0NCB1f_s_0NCB1f_s0_0EB6_(double noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0 = phi double [ %i.e, %bb.e ], [ 0.000000e+00, %bb.c ], [ +inf, %bb.d ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = fcmp ugt double %1, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp oeq double %1, +inf
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load double, ptr %0, align 8, !noundef !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !noundef !18
  %i.h = fdiv double %i.g, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_lr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %i.e, double noundef %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.i = load i8, ptr %i.b, align 8, !range !15, !alias.scope !96, !noalias !99, !noundef !18
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit, !prof !19

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = load i8, ptr %i.k, align 1, !range !15, !alias.scope !96, !noalias !99, !noundef !18
  store i8 %i.l, ptr %i.a, align 1, !noalias !101
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15, !noalias !96
  unreachable

_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load double, ptr %i.m, align 8, !alias.scope !96, !noalias !99, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit
  %.sroa.0.0 = phi double [ %i.n, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit ], [ 1.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = fcmp ugt double %1, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp oeq double %1, +inf
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load double, ptr %0, align 8, !noundef !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !noundef !18
  %i.h = fdiv double %i.g, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_ur(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %i.e, double noundef %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.i = load i8, ptr %i.b, align 8, !range !15, !alias.scope !102, !noalias !105, !noundef !18
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur.exit, !prof !19

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !107
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = load i8, ptr %i.k, align 1, !range !15, !alias.scope !102, !noalias !105, !noundef !18
  store i8 %i.l, ptr %i.a, align 1, !noalias !107
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #15, !noalias !102
  unreachable

_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load double, ptr %i.m, align 8, !alias.scope !102, !noalias !105, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur.exit
  %.sroa.0.0 = phi double [ %i.n, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur.exit ], [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6paretoNtB5_6ParetoINtB7_13ContinuousCDFddE11inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = fcmp oge double %1, 0.000000e+00
  %i.b = fcmp ole double %1, 1.000000e+00
  %spec.select.i = and i1 %i.a, %i.b
  br i1 %spec.select.i, label %bb.c, label %bb.b, !prof !95

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @29, ptr noundef nonnull inttoptr (i64 39 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load double, ptr %0, align 8, !noundef !18
  %i.d = fsub double 1.000000e+00, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !noundef !18
  %i.g = fdiv double -1.000000e+00, %i.f
  %i.h = tail call double @llvm.pow.f64(double %i.d, double %i.g)
  %i.i = fmul double %i.c, %i.h
  ret double %i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, errnomem: write) uwtable
define { i64, double } @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtNtNtB9_10statistics6traits12DistributiondE7entropy(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = load double, ptr %0, align 8, !noundef !18 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !noundef !18
  %i.d = tail call double @llvm.log.f64(double %i.c)
  %i.e = fadd double %i.a, %i.d
  %i.f = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %i.a)
  %i.g = fadd double %i.f, %i.e
  %i.h = fadd double %i.a, 1.000000e+00
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma(double noundef %i.a)
  %i.j = fmul double %i.h, %i.i
  %i.k = fsub double %i.g, %i.j
  %i.l = insertvalue { i64, double } { i64 1, double poison }, double %i.k, 1
  ret { i64, double } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs8function4betaNtB5_13BetaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !21, !noundef !18 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6_NtNtCs8lmMd0ZksV9_6statrs8function4betaNtB5_13BetaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6_NtNtCs8lmMd0ZksV9_6statrs8function4betaNtB5_13BetaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.21, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs8function5gammaNtB5_14GammaFuncErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !15, !noundef !18
  %i.b = trunc nuw i8 %i.a to i1
  %. = select i1 %i.b, ptr @36, ptr @35
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %., i64 noundef 8)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_10ContinuousddE3pdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1) unnamed_addr #8 {
bb.a:
  %or.cond = tail call i1 @llvm.is.fpclass.f64(double %1, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load double, ptr %0, align 8, !noundef !18 ; 4 uses
  %i.b = fcmp oeq double %i.a, 1.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !noundef !18 ; 4 uses
end_hunk_0
