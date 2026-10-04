Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.10?download=true
inline.NumInlined: 60
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs4_NtNtCs8lmMd0ZksV9_6statrs12distribution9geometricNtB5_9GeometricINtB7_11DiscreteCDFydE3cdf:bb.a
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load double, ptr %0, align 8, !noundef !4
  %i.c = fneg double %i.b
  %i.d = tail call noundef double @log1p(double noundef %i.c) #22
  %i.e = uitofp i64 %1 to double
  %i.f = fmul double %i.d, %i.e
  %i.g = tail call noundef double @expm1(double noundef %i.f) #22
  %i.h = fneg double %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi double [ %i.h, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 0, 1152921504606846976) i64 @_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11CategoricalINtB7_11DiscreteCDFydE11inverse_cdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp oge double %1, 1.000000e+00
  %i.b = fcmp ole double %1, 0.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 39 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !60, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !60, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  switch i64 %i.f, label %.lr.ph.i.i [
    i64 0, label %_RNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11Categorical6locate.exit
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i, %bb.c
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.c ], [ %i.p, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load double, ptr %i.g, align 8, !alias.scope !61, !noalias !62, !noundef !4 ; 2 uses
  %i.h = fcmp ole double %.val14.i.i, %1          ; 2 uses
  %i.i = fcmp oge double %.val14.i.i, %1          ; 2 uses
  br i1 %i.h, label %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i
  br i1 %i.i, label %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.thread.i.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !63
  unreachable

_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.i.i: ; preds = %._crit_edge.i.i
  br i1 %i.i, label %_RNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11Categorical6locate.exit, label %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i
  %.sroa.01.023.i.i = phi i64 [ %i.q, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.05.022.i.i = phi i64 [ %i.p, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.j = lshr i64 %.sroa.01.023.i.i, 1            ; 2 uses
  %i.k = add nuw nsw i64 %i.j, %.sroa.05.022.i.i  ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.f
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.k
  %.val12.i.i = load double, ptr %i.m, align 8, !alias.scope !61, !noalias !62, !noundef !4 ; 2 uses
  %i.n = fcmp ugt double %.val12.i.i, %1
  br i1 %i.n, label %bb.f, label %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.o = fcmp ult double %.val12.i.i, %1
  br i1 %i.o, label %bb.g, label %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !63
  unreachable

_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.p = phi i64 [ %.sroa.05.022.i.i, %bb.f ], [ %i.k, %.lr.ph.i.i ] ; 2 uses
  %i.q = sub nuw nsw i64 %.sroa.01.023.i.i, %i.j  ; 2 uses
  %i.r = icmp ugt i64 %i.q, 1
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.i.i

_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.i.i, %bb.d
  %i.s = zext i1 %i.h to i64
  %i.t = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.s ; 2 uses
  %i.u = icmp ule i64 %i.t, %i.f
  tail call void @llvm.assume(i1 %i.u)
  br label %_RNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11Categorical6locate.exit

_RNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11Categorical6locate.exit: ; preds = %bb.c, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.i.i, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.thread.i.i
  %.sroa.4.0.i.i = phi i64 [ %i.f, %bb.c ], [ %i.t, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.thread.i.i ], [ %.sroa.05.0.lcssa.i.i, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.i.i ]
  ret i64 %.sroa.4.0.i.i
}

; Function Attrs: nonlazybind uwtable
define { i64, double } @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution7weibullNtB5_7WeibullINtNtNtB9_10statistics6traits12DistributiondE4mean(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !noundef !4
  %i.c = load double, ptr %0, align 8, !noundef !4
  %i.d = fdiv double 1.000000e+00, %i.c
  %i.e = fadd double %i.d, 1.000000e+00
  %i.f = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.e)
  %i.g = fmul double %i.b, %i.f
  %i.h = insertvalue { i64, double } { i64 1, double poison }, double %i.g, 1
  ret { i64, double } %i.h
}

; Function Attrs: nonlazybind uwtable
define { i64, double } @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution7weibullNtB5_7WeibullINtNtNtB9_10statistics6traits12DistributiondE8skewness(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !alias.scope !70, !noundef !4 ; 5 uses
  %i.c = load double, ptr %0, align 8, !alias.scope !70, !noundef !4 ; 2 uses
  %i.d = insertelement <2 x double> poison, double %i.c, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fdiv <2 x double> <double 1.000000e+00, double 2.000000e+00>, %i.e
  %i.g = fadd <2 x double> %i.f, splat (double 1.000000e+00) ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0  ; 2 uses
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.h), !noalias !70
  %i.j = fmul double %i.b, %i.i                   ; 4 uses
  %i.k = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.h), !noalias !71
  %i.l = fmul double %i.b, %i.k                   ; 2 uses
  %i.m = extractelement <2 x double> %i.g, i64 1
  %i.n = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.m), !noalias !72
  %i.o = fmul double %i.b, %i.b                   ; 2 uses
  %i.p = fmul double %i.o, %i.n
  %i.q = fmul double %i.l, %i.l
  %i.r = fsub double %i.p, %i.q
  %i.s = tail call noundef double @llvm.sqrt.f64(double %i.r) ; 3 uses
  %i.t = fdiv double 3.000000e+00, %i.c
  %i.u = fadd double %i.t, 1.000000e+00
  %i.v = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.u)
  %i.w = fmul double %i.b, %i.o
  %i.x = fmul double %i.w, %i.v
  %i.y = fmul double %i.s, %i.s                   ; 2 uses
  %i.z = fmul double %i.y, 3.000000e+00
  %i.aa = fmul double %i.j, %i.z
  %i.ab = fsub double %i.x, %i.aa
  %i.ac = fmul double %i.j, %i.j
  %i.ad = fmul double %i.j, %i.ac
  %i.ae = fsub double %i.ab, %i.ad
  %i.af = fmul double %i.s, %i.y
  %i.ag = fdiv double %i.ae, %i.af
  %i.ah = insertvalue { i64, double } { i64 1, double undef }, double %i.ag, 1
  ret { i64, double } %i.ah
}

; Function Attrs: nonlazybind uwtable
define { i64, double } @_RNvXs6_NtNtCs8lmMd0ZksV9_6statrs12distribution7weibullNtB5_7WeibullINtNtNtB9_10statistics6traits12DistributiondE8variance(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !alias.scope !75, !noundef !4 ; 3 uses
  %i.c = load <2 x double>, ptr %0, align 8
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  %i.e = fdiv <2 x double> <double 1.000000e+00, double 2.000000e+00>, %i.d
  %i.f = fadd <2 x double> %i.e, splat (double 1.000000e+00) ; 2 uses
  %i.g = extractelement <2 x double> %i.f, i64 0
  %i.h = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.g), !noalias !75
  %i.i = fmul double %i.b, %i.h                   ; 2 uses
  %i.j = extractelement <2 x double> %i.f, i64 1
  %i.k = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %i.j)
  %i.l = fmul double %i.b, %i.b
  %i.m = fmul double %i.l, %i.k
  %i.n = fmul double %i.i, %i.i
  %i.o = fsub double %i.m, %i.n
  %i.p = insertvalue { i64, double } { i64 1, double undef }, double %i.o, 1
  ret { i64, double } %i.p
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, double } @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11CategoricalINtNtNtB9_10statistics6traits12DistributiondE4mean(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE4mean0E0EB33_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 4
  br i1 %i.f, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.0.011.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.z, %.preheader ] ; 6 uses
  %.sroa.02.0.i = phi double [ 0.000000e+00, %.preheader.preheader.new ], [ %i.y, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.011.i
  %.val.i = load double, ptr %i.g, align 8, !noundef !4
  %i.h = uitofp i64 %.sroa.0.011.i to double
  %i.i = fmul double %.val.i, %i.h
  %i.j = fadd double %.sroa.02.0.i, %i.i
  %i.k = or disjoint i64 %.sroa.0.011.i, 1        ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k
  %.val.i.1 = load double, ptr %i.l, align 8, !noundef !4
  %i.m = uitofp i64 %i.k to double
  %i.n = fmul double %.val.i.1, %i.m
  %i.o = fadd double %i.j, %i.n
  %i.p = or disjoint i64 %.sroa.0.011.i, 2        ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p
  %.val.i.2 = load double, ptr %i.q, align 8, !noundef !4
  %i.r = uitofp i64 %i.p to double
  %i.s = fmul double %.val.i.2, %i.r
  %i.t = fadd double %i.o, %i.s
  %i.u = or disjoint i64 %.sroa.0.011.i, 3        ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u
  %.val.i.3 = load double, ptr %i.v, align 8, !noundef !4
  %i.w = uitofp i64 %i.u to double
  %i.x = fmul double %.val.i.3, %i.w
  %i.y = fadd double %i.t, %i.x                   ; 3 uses
  %i.z = add nuw i64 %.sroa.0.011.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE4mean0E0EB33_.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE4mean0E0EB33_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE4mean0E0EB33_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE4mean0E0EB33_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.0.011.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.z, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE4mean0E0EB33_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi double [ 0.000000e+00, %.preheader.preheader ], [ %i.y, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE4mean0E0EB33_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.0.011.i.epil = phi i64 [ %i.ae, %.preheader.epil ], [ %.sroa.0.011.i.epil.init, %.preheader.epil.preheader ] ; 3 uses
  %.sroa.02.0.i.epil = phi double [ %i.ad, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.011.i.epil
  %.val.i.epil = load double, ptr %i.aa, align 8, !noundef !4
  %i.ab = uitofp i64 %.sroa.0.011.i.epil to double
  %i.ac = fmul double %.val.i.epil, %i.ab
  %i.ad = fadd double %.sroa.02.0.i.epil, %i.ac   ; 2 uses
  %i.ae = add nuw i64 %.sroa.0.011.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE4mean0E0EB33_.exit, label %.preheader.epil, !llvm.loop !76

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE4mean0E0EB33_.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE4mean0E0EB33_.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi double [ 0.000000e+00, %bb.a ], [ %i.y, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE4mean0E0EB33_.exit.loopexit.unr-lcssa ], [ %i.ad, %.preheader.epil ]
  %i.af = insertvalue { i64, double } { i64 1, double poison }, double %.sroa.0.0.i, 1
  ret { i64, double } %i.af
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, double } @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11CategoricalINtNtNtB9_10statistics6traits12DistributiondE7entropy(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2t_11CategoricalINtNtNtB2x_10statistics6traits12DistributiondE7entropy0NCINvNtB1K_3map8map_foldB2i_ddNCB2n_s_0NCINvXs26_NtBW_5accumdNtB5i_3Sum3sumINtB4A_3MapINtB1I_6FilterBF_B2l_EB4Z_EE0E0E0EB2x_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.d, 1
  br i1 %i.f, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.preheader

.preheader:                                       ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i.1, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.t, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i.1 ] ; 3 uses
  %.sroa.02.0.i = phi double [ -0.000000e+00, %.preheader.preheader.new ], [ %.sroa.0.0.i.i.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i.1 ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %i.h = load double, ptr %i.g, align 8, !alias.scope !79, !noundef !4 ; 3 uses
  %i.i = fcmp ogt double %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i

bb.b:                                             ; preds = %.preheader
  %i.j = tail call nnan double @llvm.log.f64(double %i.h)
  %i.k = fmul double %i.h, %i.j
  %i.l = fadd double %.sroa.02.0.i, %i.k
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i: ; preds = %bb.b, %.preheader
  %.sroa.0.0.i.i = phi double [ %i.l, %bb.b ], [ %.sroa.02.0.i, %.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load double, ptr %i.n, align 8, !alias.scope !79, !noundef !4 ; 3 uses
  %i.p = fcmp ogt double %i.o, 0.000000e+00
  br i1 %i.p, label %bb.c, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i.1

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i
  %i.q = tail call nnan double @llvm.log.f64(double %i.o)
  %i.r = fmul double %i.o, %i.q
  %i.s = fadd double %.sroa.0.0.i.i, %i.r
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i.1

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i.1: ; preds = %bb.c, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i
  %.sroa.0.0.i.i.1 = phi double [ %i.s, %bb.c ], [ %.sroa.0.0.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i ] ; 3 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2t_11CategoricalINtNtNtB2x_10statistics6traits12DistributiondE7entropy0NCINvNtB1K_3map8map_foldB2i_ddNCB2n_s_0NCINvXs26_NtBW_5accumdNtB5i_3Sum3sumINtB4A_3MapINtB1I_6FilterBF_B2l_EB4Z_EE0E0E0EB2x_.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2t_11CategoricalINtNtNtB2x_10statistics6traits12DistributiondE7entropy0NCINvNtB1K_3map8map_foldB2i_ddNCB2n_s_0NCINvXs26_NtBW_5accumdNtB5i_3Sum3sumINtB4A_3MapINtB1I_6FilterBF_B2l_EB4Z_EE0E0E0EB2x_.exit.loopexit.unr-lcssa: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB1c_11CategoricalINtNtNtB1g_10statistics6traits12DistributiondE7entropy0NCINvNtB6_3map8map_foldB11_ddNCB16_s_0NCINvXs26_NtNtB8_6traits5accumdNtB40_3Sum3sumINtB3j_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterdEB14_EB3H_EE0E0E0B1g_.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2t_11CategoricalINtNtNtB2x_10statistics6traits12DistributiondE7entropy0NCINvNtB1K_3map8map_foldB2i_ddNCB2n_s_0NCINvXs26_NtBW_5accumdNtB5i_3Sum3sumINtB4A_3MapINtB1I_6FilterBF_B2l_EB4Z_EE0E0E0EB2x_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2t_11CategoricalINtNtNtB2x_10statistics6traits12DistributiondE7entropy0NCINvNtB1K_3map8map_foldB2i_ddNCB2n_s_0NCINvXs26_NtBW_5accumdNtB5i_3Sum3sumINtB4A_3MapINtB1I_6FilterBF_B2l_EB4Z_EE0E0E0EB2x_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2t_11CategoricalINtNtNtB2x_10statistics6traits12DistributiondE7entropy0NCINvNtB1K_3map8map_foldB2i_ddNCB2n_s_0NCINvXs26_NtBW_5accumdNtB5i_3Sum3sumINtB4A_3MapINtB1I_6FilterBF_B2l_EB4Z_EE0E0E0EB2x_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi double [ -0.000000e+00, %.preheader.preheader ], [ %.sroa.0.0.i.i.1, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2t_11CategoricalINtNtNtB2x_10statistics6traits12DistributiondE7entropy0NCINvNtB1K_3map8map_foldB2i_ddNCB2n_s_0NCINvXs26_NtBW_5accumdNtB5i_3Sum3sumINtB4A_3MapINtB1I_6FilterBF_B2l_EB4Z_EE0E0E0EB2x_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.04.0.i.epil.init
  %i.v = load double, ptr %i.u, align 8, !alias.scope !79, !noundef !4 ; 3 uses
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  br i1 %i.w, label %bb.d, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2t_11CategoricalINtNtNtB2x_10statistics6traits12DistributiondE7entropy0NCINvNtB1K_3map8map_foldB2i_ddNCB2n_s_0NCINvXs26_NtBW_5accumdNtB5i_3Sum3sumINtB4A_3MapINtB1I_6FilterBF_B2l_EB4Z_EE0E0E0EB2x_.exit

bb.d:                                             ; preds = %.preheader.epil.preheader
  %i.x = tail call nnan double @llvm.log.f64(double %i.v)
  %i.y = fmul double %i.v, %i.x
  %i.z = fadd double %.sroa.02.0.i.epil.init, %i.y
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2t_11CategoricalINtNtNtB2x_10statistics6traits12DistributiondE7entropy0NCINvNtB1K_3map8map_foldB2i_ddNCB2n_s_0NCINvXs26_NtBW_5accumdNtB5i_3Sum3sumINtB4A_3MapINtB1I_6FilterBF_B2l_EB4Z_EE0E0E0EB2x_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2t_11CategoricalINtNtNtB2x_10statistics6traits12DistributiondE7entropy0NCINvNtB1K_3map8map_foldB2i_ddNCB2n_s_0NCINvXs26_NtBW_5accumdNtB5i_3Sum3sumINtB4A_3MapINtB1I_6FilterBF_B2l_EB4Z_EE0E0E0EB2x_.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2t_11CategoricalINtNtNtB2x_10statistics6traits12DistributiondE7entropy0NCINvNtB1K_3map8map_foldB2i_ddNCB2n_s_0NCINvXs26_NtBW_5accumdNtB5i_3Sum3sumINtB4A_3MapINtB1I_6FilterBF_B2l_EB4Z_EE0E0E0EB2x_.exit.loopexit.unr-lcssa, %bb.d, %.preheader.epil.preheader, %bb.a
  %.sroa.0.0.i = phi double [ -0.000000e+00, %bb.a ], [ %.sroa.0.0.i.i.1, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6filter11filter_foldRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2t_11CategoricalINtNtNtB2x_10statistics6traits12DistributiondE7entropy0NCINvNtB1K_3map8map_foldB2i_ddNCB2n_s_0NCINvXs26_NtBW_5accumdNtB5i_3Sum3sumINtB4A_3MapINtB1I_6FilterBF_B2l_EB4Z_EE0E0E0EB2x_.exit.loopexit.unr-lcssa ], [ %i.z, %bb.d ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %i.aa = fneg double %.sroa.0.0.i
  %i.ab = insertvalue { i64, double } { i64 1, double poison }, double %i.aa, 1
  ret { i64, double } %i.ab
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define { i64, double } @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11CategoricalINtNtNtB9_10statistics6traits12DistributiondE8variance(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !85, !nonnull !4, !noundef !4 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !85, !noundef !4 ; 8 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE8variance0E0EB33_.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 4
  br i1 %i.f, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.0.011.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.z, %.preheader.i ] ; 6 uses
  %.sroa.02.0.i.i = phi double [ 0.000000e+00, %.preheader.i.preheader.new ], [ %i.y, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.011.i.i
  %.val.i.i = load double, ptr %i.g, align 8, !noalias !85, !noundef !4
  %i.h = uitofp i64 %.sroa.0.011.i.i to double
  %i.i = fmul double %.val.i.i, %i.h
  %i.j = fadd double %.sroa.02.0.i.i, %i.i
  %i.k = or disjoint i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k
  %.val.i.i.1 = load double, ptr %i.l, align 8, !noalias !85, !noundef !4
  %i.m = uitofp i64 %i.k to double
  %i.n = fmul double %.val.i.i.1, %i.m
  %i.o = fadd double %i.j, %i.n
  %i.p = or disjoint i64 %.sroa.0.011.i.i, 2      ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p
  %.val.i.i.2 = load double, ptr %i.q, align 8, !noalias !85, !noundef !4
  %i.r = uitofp i64 %i.p to double
  %i.s = fmul double %.val.i.i.2, %i.r
  %i.t = fadd double %i.o, %i.s
  %i.u = or disjoint i64 %.sroa.0.011.i.i, 3      ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u
  %.val.i.i.3 = load double, ptr %i.v, align 8, !noalias !85, !noundef !4
  %i.w = uitofp i64 %i.u to double
  %i.x = fmul double %.val.i.i.3, %i.w
  %i.y = fadd double %i.t, %i.x                   ; 3 uses
  %i.z = add nuw i64 %.sroa.0.011.i.i, 4          ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.preheader.unr-lcssa, label %.preheader.i

.preheader.preheader.unr-lcssa:                   ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.preheader, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.preheader.preheader.unr-lcssa, %.preheader.i.preheader
  %.sroa.0.011.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.z, %.preheader.preheader.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.i.preheader ], [ %i.y, %.preheader.preheader.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.0.011.i.i.epil = phi i64 [ %i.ae, %.preheader.i.epil ], [ %.sroa.0.011.i.i.epil.init, %.preheader.i.epil.preheader ] ; 3 uses
  %.sroa.02.0.i.i.epil = phi double [ %i.ad, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.011.i.i.epil
  %.val.i.i.epil = load double, ptr %i.aa, align 8, !noalias !85, !noundef !4
  %i.ab = uitofp i64 %.sroa.0.011.i.i.epil to double
  %i.ac = fmul double %.val.i.i.epil, %i.ab
  %i.ad = fadd double %.sroa.02.0.i.i.epil, %i.ac ; 2 uses
  %i.ae = add nuw i64 %.sroa.0.011.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.preheader, label %.preheader.i.epil, !llvm.loop !82

.preheader.preheader:                             ; preds = %.preheader.i.epil, %.preheader.preheader.unr-lcssa
  %.lcssa9 = phi double [ %i.y, %.preheader.preheader.unr-lcssa ], [ %i.ad, %.preheader.i.epil ] ; 3 uses
  %xtraiter12 = and i64 %i.d, 1
  %i.af = icmp eq i64 %i.d, 1
  br i1 %i.af, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter17 = and i64 %i.d, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.2.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.at, %.preheader ] ; 4 uses
  %.sroa.02.0.i = phi double [ 0.000000e+00, %.preheader.preheader.new ], [ %i.as, %.preheader ]
  %niter18 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter18.next.1, %.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.2.0.i
  %.val.i = load double, ptr %i.ag, align 8, !noalias !86, !noundef !4
  %i.ah = uitofp i64 %.sroa.2.0.i to double
  %i.ai = fsub double %i.ah, %.lcssa9             ; 2 uses
  %i.aj = fmul double %i.ai, %i.ai
  %i.ak = fmul double %.val.i, %i.aj
  %i.al = fadd double %.sroa.02.0.i, %i.ak
  %i.am = or disjoint i64 %.sroa.2.0.i, 1         ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.am
  %.val.i.1 = load double, ptr %i.an, align 8, !noalias !86, !noundef !4
  %i.ao = uitofp i64 %i.am to double
  %i.ap = fsub double %i.ao, %.lcssa9             ; 2 uses
  %i.aq = fmul double %i.ap, %i.ap
  %i.ar = fmul double %.val.i.1, %i.aq
  %i.as = fadd double %i.al, %i.ar                ; 3 uses
  %i.at = add nuw i64 %.sroa.2.0.i, 2             ; 2 uses
  %niter18.next.1 = add i64 %niter18, 2           ; 2 uses
  %niter18.ncmp.1 = icmp eq i64 %niter18.next.1, %unroll_iter17
  br i1 %niter18.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE8variance0E0EB33_.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE8variance0E0EB33_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod14.not = icmp eq i64 %xtraiter12, 0
  br i1 %lcmp.mod14.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE8variance0E0EB33_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE8variance0E0EB33_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.2.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.at, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE8variance0E0EB33_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.epil.init = phi double [ 0.000000e+00, %.preheader.preheader ], [ %i.as, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE8variance0E0EB33_.exit.loopexit.unr-lcssa ]
  %lcmp.mod16 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.2.0.i.epil.init
  %.val.i.epil = load double, ptr %i.au, align 8, !noalias !86, !noundef !4
  %i.av = uitofp i64 %.sroa.2.0.i.epil.init to double
  %i.aw = fsub double %i.av, %.lcssa9             ; 2 uses
  %i.ax = fmul double %i.aw, %i.aw
  %i.ay = fmul double %.val.i.epil, %i.ax
  %i.az = fadd double %.sroa.02.0.i.epil.init, %i.ay
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE8variance0E0EB33_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE8variance0E0EB33_.exit: ; preds = %.preheader.epil.preheader, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE8variance0E0EB33_.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.i = phi double [ 0.000000e+00, %bb.a ], [ %i.as, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRddNCNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB2Z_11CategoricalINtNtNtB33_10statistics6traits12DistributiondE8variance0E0EB33_.exit.loopexit.unr-lcssa ], [ %i.az, %.preheader.epil.preheader ]
  %i.ba = insertvalue { i64, double } { i64 1, double undef }, double %.sroa.0.0.i, 1
  ret { i64, double } %i.ba
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvXs9_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11CategoricalINtNtNtB9_10statistics6traits6MediandE6median(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !96, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !96, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  switch i64 %i.d, label %.lr.ph.i.i.i [
    i64 0, label %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11CategoricalINtB7_11DiscreteCDFydE11inverse_cdf.exit
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.n, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i.i
  %.val14.i.i.i = load double, ptr %i.e, align 8, !alias.scope !97, !noalias !98, !noundef !4 ; 2 uses
  %i.f = fcmp ole double %.val14.i.i.i, 5.000000e-01 ; 2 uses
  %i.g = fcmp oge double %.val14.i.i.i, 5.000000e-01 ; 2 uses
  br i1 %i.f, label %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  br i1 %i.g, label %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.thread.i.i.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !99
  unreachable

_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.i.i.i: ; preds = %._crit_edge.i.i.i
  br i1 %i.g, label %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11CategoricalINtB7_11DiscreteCDFydE11inverse_cdf.exit, label %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.thread.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i.i
  %.sroa.01.023.i.i.i = phi i64 [ %i.o, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.022.i.i.i = phi i64 [ %i.n, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.sroa.01.023.i.i.i, 1          ; 2 uses
  %i.i = add nuw nsw i64 %i.h, %.sroa.05.022.i.i.i ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.d
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i
  %.val12.i.i.i = load double, ptr %i.k, align 8, !alias.scope !97, !noalias !98, !noundef !4 ; 2 uses
  %i.l = fcmp ugt double %.val12.i.i.i, 5.000000e-01
  br i1 %i.l, label %bb.d, label %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.m = fcmp ult double %.val12.i.i.i, 5.000000e-01
  br i1 %i.m, label %bb.e, label %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !99
  unreachable

_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit17.thread.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.n = phi i64 [ %.sroa.05.022.i.i.i, %bb.d ], [ %i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.o = sub nuw nsw i64 %.sroa.01.023.i.i.i, %i.h ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.thread.i.i.i: ; preds = %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.i.i.i, %bb.b
  %i.q = zext i1 %i.f to i64
  %i.r = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.q ; 2 uses
  %i.s = icmp ule i64 %i.r, %i.d
  tail call void @llvm.assume(i1 %i.s)
  br label %_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11CategoricalINtB7_11DiscreteCDFydE11inverse_cdf.exit

_RNvXs5_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB5_11CategoricalINtB7_11DiscreteCDFydE11inverse_cdf.exit: ; preds = %bb.a, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.i.i.i, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.thread.i.i.i
  %.sroa.4.0.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.r, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.thread.i.i.i ], [ %.sroa.05.0.lcssa.i.i.i, %_RNCNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution11categoricalNtB7_11Categorical6locate0Bb_.exit.i.i.i ]
  %i.t = uitofp nneg i64 %.sroa.4.0.i.i.i to double
  ret double %i.t
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.powi.f64.i32(double, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterdENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests15ttest_onesample15ttest_onesamples_0EdEB2B_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution10students_tNtB5_9StudentsTINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), double noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterdENCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8skewtest8skewtests_0EdEB2B_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6normalNtB5_6NormalINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erfc_inv(double noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #11

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf4erfc(double noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable
declare noundef double @log1p(double noundef) unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable
declare noundef double @expm1(double noundef) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptoui.sat.i64.f64(double) #11

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, errnomem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
end_hunk_0
