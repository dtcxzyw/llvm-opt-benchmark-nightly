Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/cmathmodule?download=true
inline.NumInlined: 56
inline.NumDeleted: 25
begin_hunk_0_@cmath_tan:bb.a

bb.e:                                             ; preds = %bb.b
  %i.k = extractvalue { double, double } %i.g, 0
  %i.l = fneg double %i.k
  %i.m = extractvalue { double, double } %i.g, 1
  %i.n = tail call ptr @PyComplex_FromCComplex(double %i.m, double %i.l) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ %i.n, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @cmath_tanh(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %1) #7 ; 2 uses
  %i.b = tail call ptr @PyErr_Occurred() #7
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = extractvalue { double, double } %i.a, 0
  %i.e = tail call ptr @__errno_location() #8     ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !9
  %i.f = tail call fastcc { double, double } @cmath_tanh_impl(double %i.d, double %i.c) ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !9
  switch i32 %i.g, label %bb.e [
    i32 33, label %bb.c
    i32 34, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.25) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.26) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = extractvalue { double, double } %i.f, 1
  %i.k = extractvalue { double, double } %i.f, 0
  %i.l = tail call ptr @PyComplex_FromCComplex(double %i.k, double %i.j) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ %i.l, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare { double, double } @PyComplex_AsCComplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @PyErr_Occurred() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyComplex_FromCComplex(double, double) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { double, double } @cmath_sqrt_impl(double %0, double %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 4 uses
  %i.b = fcmp ueq double %i.a, +inf               ; 2 uses
  %i.c = tail call double @llvm.fabs.f64(double %1) ; 5 uses
  %i.d = fcmp ueq double %i.c, +inf               ; 2 uses
  %or.cond39 = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond39, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #8
  store i32 0, ptr %i.e, align 4, !tbaa !9
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp une double %0, 0.000000e+00
  %i.g = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.h = fcmp oeq double %i.g, 1.000000e+00       ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %..i = select i1 %i.h, i64 4, i64 1
  br label %special_type.exit

bb.e:                                             ; preds = %bb.c
  %.7.i = select i1 %i.h, i64 3, i64 2
  br label %special_type.exit

bb.f:                                             ; preds = %bb.b
  %i.i = fcmp uno double %0, 0.000000e+00
  br i1 %i.i, label %special_type.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.k = fcmp oeq double %i.j, 1.000000e+00
  %.8.i = select i1 %i.k, i64 5, i64 0
  br label %special_type.exit

special_type.exit:                                ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %..i, %bb.d ], [ 6, %bb.f ], [ %.7.i, %bb.e ], [ %.8.i, %bb.g ]
  %i.l = getelementptr [112 x i8], ptr @sqrt_special_values, i64 %.0.i
  br i1 %i.d, label %bb.k, label %bb.h

bb.h:                                             ; preds = %special_type.exit
  %i.m = fcmp une double %1, 0.000000e+00
  %i.n = tail call double @llvm.copysign.f64(double 1.000000e+00, double %1)
  %i.o = fcmp oeq double %i.n, 1.000000e+00       ; 2 uses
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %..i42 = select i1 %i.o, i64 4, i64 1
  br label %special_type.exit44

bb.j:                                             ; preds = %bb.h
  %.7.i40 = select i1 %i.o, i64 3, i64 2
  br label %special_type.exit44

bb.k:                                             ; preds = %special_type.exit
  %i.p = fcmp uno double %1, 0.000000e+00
  br i1 %i.p, label %special_type.exit44, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = tail call double @llvm.copysign.f64(double 1.000000e+00, double %1)
  %i.r = fcmp oeq double %i.q, 1.000000e+00
  %.8.i43 = select i1 %i.r, i64 5, i64 0
  br label %special_type.exit44

special_type.exit44:                              ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i41 = phi i64 [ %..i42, %bb.i ], [ 6, %bb.k ], [ %.7.i40, %bb.j ], [ %.8.i43, %bb.l ]
  %i.s = getelementptr [16 x i8], ptr %i.l, i64 %.0.i41 ; 2 uses
  %.sroa.034.0.copyload = load double, ptr %i.s, align 16, !tbaa !11
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.t = fcmp oeq double %0, 0.000000e+00
  %i.u = fcmp oeq double %1, 0.000000e+00
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = fcmp olt double %i.a, f0x0010000000000000
  %i.w = fcmp olt double %i.c, f0x0010000000000000
  %or.cond4 = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond4, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = tail call double @ldexp(double noundef %i.a, i32 noundef 53) #7, !tbaa !9 ; 2 uses
  %i.y = tail call double @ldexp(double noundef %i.c, i32 noundef 53) #7, !tbaa !9
  %i.z = tail call double @hypot(double noundef %i.x, double noundef %i.y) #7, !tbaa !9
  %i.aa = fadd double %i.x, %i.z
  %i.ab = tail call double @sqrt(double noundef %i.aa) #7, !tbaa !9
  %i.ac = tail call double @ldexp(double noundef %i.ab, i32 noundef -27) #7, !tbaa !9
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ad = fmul nnan double %i.a, 1.250000e-01     ; 2 uses
  %i.ae = fmul nnan double %i.c, 1.250000e-01
  %i.af = tail call double @hypot(double noundef %i.ad, double noundef %i.ae) #7, !tbaa !9
  %i.ag = fadd double %i.ad, %i.af
  %i.ah = tail call double @sqrt(double noundef %i.ag) #7, !tbaa !9
  %i.ai = fmul double %i.ah, 2.000000e+00
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0 = phi double [ %i.ac, %bb.o ], [ %i.ai, %bb.p ] ; 3 uses
  %i.aj = fmul double %.0, 2.000000e+00
  %i.ak = fdiv double %i.c, %i.aj                 ; 2 uses
  %i.al = fcmp ult double %0, 0.000000e+00        ; 2 uses
  %.sroa.7.0.v = select i1 %i.al, double %.0, double %i.ak
  %i.am = tail call double @llvm.copysign.f64(double %.sroa.7.0.v, double %1)
  %.sroa.0.0 = select i1 %i.al, double %i.ak, double %.0
  %i.an = tail call ptr @__errno_location() #8
  store i32 0, ptr %i.an, align 4, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q, %special_type.exit44
  %.sroa.034.0 = phi double [ %.sroa.034.0.copyload, %special_type.exit44 ], [ %.sroa.0.0, %bb.q ], [ 0.000000e+00, %bb.m ]
  %.sroa.4.0 = phi double [ %.sroa.4.0.copyload, %special_type.exit44 ], [ %i.am, %bb.q ], [ %1, %bb.m ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.034.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.4.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asinh(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { double, double } @cmath_asinh_impl(double %0, double %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 3 uses
  %i.b = fcmp ueq double %i.a, +inf               ; 2 uses
  %i.c = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.d = fcmp ueq double %i.c, +inf               ; 2 uses
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #8
  store i32 0, ptr %i.e, align 4, !tbaa !9
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp une double %0, 0.000000e+00
  %i.g = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.h = fcmp oeq double %i.g, 1.000000e+00       ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %..i = select i1 %i.h, i64 4, i64 1
  br label %special_type.exit

bb.e:                                             ; preds = %bb.c
  %.7.i = select i1 %i.h, i64 3, i64 2
  br label %special_type.exit

bb.f:                                             ; preds = %bb.b
  %i.i = fcmp uno double %0, 0.000000e+00
  br i1 %i.i, label %special_type.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.k = fcmp oeq double %i.j, 1.000000e+00
  %.8.i = select i1 %i.k, i64 5, i64 0
  br label %special_type.exit

special_type.exit:                                ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %..i, %bb.d ], [ 6, %bb.f ], [ %.7.i, %bb.e ], [ %.8.i, %bb.g ]
  %i.l = getelementptr [112 x i8], ptr @asinh_special_values, i64 %.0.i
  br i1 %i.d, label %bb.k, label %bb.h

bb.h:                                             ; preds = %special_type.exit
  %i.m = fcmp une double %1, 0.000000e+00
  %i.n = tail call double @llvm.copysign.f64(double 1.000000e+00, double %1)
  %i.o = fcmp oeq double %i.n, 1.000000e+00       ; 2 uses
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %..i41 = select i1 %i.o, i64 4, i64 1
  br label %special_type.exit43

bb.j:                                             ; preds = %bb.h
  %.7.i39 = select i1 %i.o, i64 3, i64 2
  br label %special_type.exit43

bb.k:                                             ; preds = %special_type.exit
  %i.p = fcmp uno double %1, 0.000000e+00
  br i1 %i.p, label %special_type.exit43, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = tail call double @llvm.copysign.f64(double 1.000000e+00, double %1)
  %i.r = fcmp oeq double %i.q, 1.000000e+00
  %.8.i42 = select i1 %i.r, i64 5, i64 0
  br label %special_type.exit43

special_type.exit43:                              ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i40 = phi i64 [ %..i41, %bb.i ], [ 6, %bb.k ], [ %.7.i39, %bb.j ], [ %.8.i42, %bb.l ]
  %i.s = getelementptr [16 x i8], ptr %i.l, i64 %.0.i40 ; 2 uses
  %.sroa.035.0.copyload = load double, ptr %i.s, align 16, !tbaa !11
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.3.0.copyload = load double, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !11
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %i.t = fcmp ogt double %i.a, f0x7FCFFFFFFFFFFFFF
  %i.u = fcmp ogt double %i.c, f0x7FCFFFFFFFFFFFFF
  %or.cond38 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond38, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.v = fmul nnan double %0, 5.000000e-01
  %i.w = fmul nnan double %1, 5.000000e-01
  %i.x = tail call double @hypot(double noundef %i.v, double noundef %i.w) #7, !tbaa !9
  %i.y = tail call double @log(double noundef %i.x) #7, !tbaa !9
  %i.z = fadd double %i.y, f0x3FF62E42FEFA39EF
  %i.aa = tail call double @llvm.copysign.f64(double %i.z, double %0)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ab = fadd double %1, 1.000000e+00
  %i.ac = fneg double %0
  %i.ad = tail call fastcc { double, double } @cmath_sqrt_impl(double %i.ab, double %i.ac) ; 2 uses
  %i.ae = extractvalue { double, double } %i.ad, 0
  %i.af = extractvalue { double, double } %i.ad, 1 ; 2 uses
  %i.ag = fsub double 1.000000e+00, %1
  %i.ah = tail call fastcc { double, double } @cmath_sqrt_impl(double %i.ag, double %0) ; 2 uses
  %i.ai = extractvalue { double, double } %i.ah, 0
  %i.aj = extractvalue { double, double } %i.ah, 1
  %i.ak = insertelement <2 x double> poison, double %i.af, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.aj, i64 1 ; 2 uses
  %i.am = fneg <2 x double> %i.al
  %i.an = insertelement <2 x double> poison, double %i.ai, i64 0 ; 2 uses
  %i.ao = insertelement <2 x double> %i.an, double %i.af, i64 1
  %i.ap = fmul <2 x double> %i.ao, %i.am
  %i.aq = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <2 x double> %i.al, <2 x double> %i.an, <2 x i32> <i32 1, i32 2>
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.as, <2 x double> %i.ap) ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  %i.av = tail call double @asinh(double noundef %i.au) #7, !tbaa !9
  %i.aw = extractelement <2 x double> %i.at, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink = phi double [ %i.aw, %bb.o ], [ %i.a, %bb.n ]
  %.sroa.03.1 = phi double [ %i.av, %bb.o ], [ %i.aa, %bb.n ]
  %i.ax = tail call double @atan2(double noundef %1, double noundef %.sink) #7, !tbaa !9
  %i.ay = tail call ptr @__errno_location() #8
  store i32 0, ptr %i.ay, align 4, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %special_type.exit43
  %.sroa.035.0 = phi double [ %.sroa.03.1, %bb.p ], [ %.sroa.035.0.copyload, %special_type.exit43 ]
  %.sroa.3.0 = phi double [ %i.ax, %bb.p ], [ %.sroa.3.0.copyload, %special_type.exit43 ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.035.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc { double, double } @cmath_atanh_impl(double %0, double %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp ueq double %i.a, +inf               ; 2 uses
  %i.c = tail call double @llvm.fabs.f64(double %1) ; 6 uses
  %i.d = fcmp ueq double %i.c, +inf               ; 2 uses
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #8
  store i32 0, ptr %i.e, align 4, !tbaa !9
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp une double %0, 0.000000e+00
  %i.g = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.h = fcmp oeq double %i.g, 1.000000e+00       ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %..i = select i1 %i.h, i64 4, i64 1
  br label %special_type.exit

bb.e:                                             ; preds = %bb.c
  %.7.i = select i1 %i.h, i64 3, i64 2
  br label %special_type.exit

bb.f:                                             ; preds = %bb.b
  %i.i = fcmp uno double %0, 0.000000e+00
  br i1 %i.i, label %special_type.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.k = fcmp oeq double %i.j, 1.000000e+00
  %.8.i = select i1 %i.k, i64 5, i64 0
  br label %special_type.exit

special_type.exit:                                ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %..i, %bb.d ], [ 6, %bb.f ], [ %.7.i, %bb.e ], [ %.8.i, %bb.g ]
  %i.l = getelementptr [112 x i8], ptr @atanh_special_values, i64 %.0.i
  br i1 %i.d, label %bb.k, label %bb.h

bb.h:                                             ; preds = %special_type.exit
  %i.m = fcmp une double %1, 0.000000e+00
  %i.n = tail call double @llvm.copysign.f64(double 1.000000e+00, double %1)
  %i.o = fcmp oeq double %i.n, 1.000000e+00       ; 2 uses
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
end_hunk_0
