inline.NumInlined: 56
inline.NumDeleted: 25
begin_hunk_0_@cmath_exp:bb.a
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %2 = insertelement <2 x double> poison, double %i.l, i64 0
  %3 = insertelement <2 x double> %2, double %i.m, i64 1
  %4 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 0x7FF0000000000000), <2 x double> %3)
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %5 = insertelement <2 x double> poison, double %i.l, i64 0
  %6 = insertelement <2 x double> %5, double %i.m, i64 1
  %7 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %6)
  br label %bb.s

bb.h:                                             ; preds = %bb.d, %bb.c
end_hunk_0
begin_hunk_1_@cmath_exp:bb.a

special_type.exit41.i:                            ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i38.i = phi i64 [ %..i39.i, %bb.o ], [ 6, %bb.q ], [ %.7.i37.i, %bb.p ], [ %.8.i40.i, %bb.r ]
  %i.ab = getelementptr [16 x i8], ptr %i.u, i64 %.0.i38.i
  %8 = load <2 x double>, ptr %i.ab, align 16, !tbaa !10
  br label %bb.s

bb.s:                                             ; preds = %special_type.exit41.i, %bb.g, %bb.f
  %9 = phi <2 x double> [ %4, %bb.f ], [ %7, %bb.g ], [ %8, %special_type.exit41.i ] ; 2 uses
  %i.ac = fcmp oeq double %i.h, 0x7FF0000000000000
  br i1 %i.ac, label %bb.t, label %bb.aa

end_hunk_1
begin_hunk_2_@cmath_exp:bb.a

bb.v:                                             ; preds = %bb.u
  %i.af = fadd double %i.d, -1.000000e+00
  %i.ag = tail call double @exp(double noundef %i.af) #7, !tbaa !6
  %i.ah = tail call double @cos(double noundef %i.c) #7, !tbaa !6
  %10 = tail call double @sin(double noundef %i.c) #7, !tbaa !6
  %11 = insertelement <2 x double> poison, double %i.ag, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = insertelement <2 x double> poison, double %i.ah, i64 0
  %14 = insertelement <2 x double> %13, double %10, i64 1
  %15 = fmul <2 x double> %12, %14
  %16 = fmul <2 x double> %15, splat (double 0x4005BF0A8B145769)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ai = tail call double @exp(double noundef %i.d) #7, !tbaa !6
  %i.aj = tail call double @cos(double noundef %i.c) #7, !tbaa !6
  %17 = tail call double @sin(double noundef %i.c) #7, !tbaa !6
  %18 = insertelement <2 x double> poison, double %i.ai, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = insertelement <2 x double> poison, double %i.aj, i64 0
  %21 = insertelement <2 x double> %20, double %17, i64 1
  %22 = fmul <2 x double> %19, %21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %23 = phi <2 x double> [ %16, %bb.v ], [ %22, %bb.w ] ; 2 uses
  %24 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %23)
  %25 = fcmp oeq <2 x double> %24, splat (double 0x7FF0000000000000) ; 2 uses
  %26 = extractelement <2 x i1> %25, i64 0
  %27 = extractelement <2 x i1> %25, i64 1
  %or.cond36.i = select i1 %26, i1 true, i1 %27
  br i1 %or.cond36.i, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.t
end_hunk_2
begin_hunk_3_@cmath_exp:bb.a
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x, %bb.s, %bb.t
  %28 = phi <2 x double> [ %9, %bb.s ], [ %9, %bb.t ], [ %23, %bb.x ] ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !6
  %29 = extractelement <2 x double> %28, i64 0
  %30 = extractelement <2 x double> %28, i64 1
  %i.am = tail call ptr @PyComplex_FromCComplex(double %29, double %30) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa, %bb.z, %bb.y
end_hunk_3
begin_hunk_4_@cmath_rect:bb.a
  br i1 %.not21, label %bb.g, label %cmath_rect_impl.exit

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.015 = phi double [ %.val26, %bb.d ], [ -1.000000e+00, %bb.f ], [ %i.e, %bb.e ] ; 10 uses
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
end_hunk_4
begin_hunk_5_@cmath_rect:bb.a
  br i1 %i.u, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %3 = tail call double @sin(double noundef %.0) #7, !tbaa !6
  %4 = insertelement <2 x double> poison, double %i.v, i64 0
  %5 = insertelement <2 x double> %4, double %3, i64 1
  %6 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 0x7FF0000000000000), <2 x double> %5)
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  %7 = tail call double @sin(double noundef %.0) #7, !tbaa !6
  %8 = insertelement <2 x double> poison, double %i.v, i64 0
  %9 = insertelement <2 x double> %8, double %7, i64 1
  %10 = fneg <2 x double> %9
  %11 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 0x7FF0000000000000), <2 x double> %10)
  br label %bb.ab

bb.q:                                             ; preds = %bb.m, %bb.l
end_hunk_5
begin_hunk_6_@cmath_rect:bb.a

special_type.exit36.i:                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %.0.i33.i = phi i64 [ %..i34.i, %bb.x ], [ 6, %bb.z ], [ %.7.i32.i, %bb.y ], [ %.8.i35.i, %bb.aa ]
  %i.aj = getelementptr [16 x i8], ptr %i.ac, i64 %.0.i33.i
  %12 = load <2 x double>, ptr %i.aj, align 16, !tbaa !10
  br label %bb.ab

bb.ab:                                            ; preds = %special_type.exit36.i, %bb.p, %bb.o
  %13 = phi <2 x double> [ %6, %bb.o ], [ %11, %bb.p ], [ %12, %special_type.exit36.i ]
  %or.cond29.i = fcmp one double %.015, 0.000000e+00
  %i.ak = fcmp oeq double %i.r, 0x7FF0000000000000
  %or.cond31.i = and i1 %or.cond29.i, %i.ak
end_hunk_6
begin_hunk_7_@cmath_rect:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.am = fmul nnan ninf double %.015, %.0
  %14 = insertelement <2 x double> poison, double %.015, i64 0
  %15 = insertelement <2 x double> %14, double %i.am, i64 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.an = tail call double @cos(double noundef %.0) #7, !tbaa !6
  %16 = tail call double @sin(double noundef %.0) #7, !tbaa !6
  %17 = insertelement <2 x double> poison, double %.015, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %19 = insertelement <2 x double> poison, double %i.an, i64 0
  %20 = insertelement <2 x double> %19, double %16, i64 1
  %21 = fmul <2 x double> %18, %20
  br label %bb.af

math_error.exit.i:                                ; preds = %bb.ab
end_hunk_7
begin_hunk_8_@cmath_rect:bb.a
  br label %cmath_rect_impl.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %22 = phi <2 x double> [ %15, %bb.ad ], [ %21, %bb.ae ], [ %13, %bb.ab ] ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !6
  %23 = extractelement <2 x double> %22, i64 0
  %24 = extractelement <2 x double> %22, i64 1
  %i.ap = tail call ptr @PyComplex_FromCComplex(double %23, double %24) #7
  br label %cmath_rect_impl.exit

cmath_rect_impl.exit:                             ; preds = %bb.af, %math_error.exit.i, %bb.j, %bb.f, %bb.b
end_hunk_8
begin_hunk_9_@cmath_cosh_impl:bb.a
  %i.ae = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.af = fsub double %0, %i.ae                   ; 2 uses
  %i.ag = tail call double @cos(double noundef %1) #7, !tbaa !6
  %2 = tail call double @cosh(double noundef %i.af) #7, !tbaa !6
  %3 = tail call double @sin(double noundef %1) #7, !tbaa !6
  %i.ah = tail call double @sinh(double noundef %i.af) #7, !tbaa !6
  %4 = insertelement <2 x double> poison, double %i.ag, i64 0
  %5 = insertelement <2 x double> %4, double %3, i64 1
  %6 = insertelement <2 x double> poison, double %2, i64 0
  %7 = insertelement <2 x double> %6, double %i.ah, i64 1
  %8 = fmul <2 x double> %5, %7
  %9 = fmul <2 x double> %8, splat (double 0x4005BF0A8B145769)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ai = tail call double @cos(double noundef %1) #7, !tbaa !6
  %i.aj = tail call double @cosh(double noundef %0) #7, !tbaa !6
  %i.ak = tail call double @sin(double noundef %1) #7, !tbaa !6
  %i.al = tail call double @sinh(double noundef %0) #7, !tbaa !6
  %10 = insertelement <2 x double> poison, double %i.ai, i64 0
  %11 = insertelement <2 x double> %10, double %i.ak, i64 1
  %12 = insertelement <2 x double> poison, double %i.aj, i64 0
  %13 = insertelement <2 x double> %12, double %i.al, i64 1
  %14 = fmul <2 x double> %11, %13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %15 = phi <2 x double> [ %9, %bb.v ], [ %14, %bb.w ] ; 5 uses
  %16 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %15)
  %17 = fcmp oeq <2 x double> %16, splat (double 0x7FF0000000000000) ; 2 uses
  %18 = extractelement <2 x i1> %17, i64 0
  %19 = extractelement <2 x i1> %17, i64 1
  %or.cond30 = select i1 %18, i1 true, i1 %19
  %i.am = tail call ptr @__errno_location() #8    ; 2 uses
  br i1 %or.cond30, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 34, ptr %i.am, align 4, !tbaa !6
  %20 = extractelement <2 x double> %15, i64 0
  %21 = extractelement <2 x double> %15, i64 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store i32 0, ptr %i.am, align 4, !tbaa !6
  %22 = extractelement <2 x double> %15, i64 0
  %23 = extractelement <2 x double> %15, i64 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.s, %bb.t
  %.sroa.025.2 = phi double [ %.sroa.025.0, %bb.s ], [ %.sroa.025.0, %bb.t ], [ %22, %bb.z ], [ %20, %bb.y ]
  %.sroa.7.2 = phi double [ %.sroa.7.0, %bb.s ], [ %.sroa.7.0, %bb.t ], [ %23, %bb.z ], [ %21, %bb.y ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.025.2, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.7.2, 1
  ret { double, double } %.fca.1.insert
end_hunk_9
begin_hunk_10_@cmath_sinh_impl:bb.a
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %2 = tail call double @sin(double noundef %1) #7, !tbaa !6
  %3 = insertelement <2 x double> poison, double %i.g, i64 0
  %4 = insertelement <2 x double> %3, double %2, i64 1
  %5 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 0x7FF0000000000000), <2 x double> %4)
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.h = fneg double %i.g
  %6 = tail call double @sin(double noundef %1) #7, !tbaa !6
  %7 = insertelement <2 x double> poison, double %i.h, i64 0
  %8 = insertelement <2 x double> %7, double %6, i64 1
  %9 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> splat (double 0x7FF0000000000000), <2 x double> %8)
  br label %bb.r

bb.g:                                             ; preds = %bb.c, %bb.b
end_hunk_10
begin_hunk_11_@cmath_sinh_impl:bb.a

special_type.exit35:                              ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i32 = phi i64 [ %..i33, %bb.n ], [ 6, %bb.p ], [ %.7.i31, %bb.o ], [ %.8.i34, %bb.q ]
  %i.v = getelementptr [16 x i8], ptr %i.o, i64 %.0.i32
  %10 = load <2 x double>, ptr %i.v, align 16, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.f, %special_type.exit35
  %11 = phi <2 x double> [ %5, %bb.e ], [ %9, %bb.f ], [ %10, %special_type.exit35 ] ; 2 uses
  %i.w = fcmp une double %i.c, 0x7FF0000000000000
  %i.x = fcmp uno double %0, 0.000000e+00
  %or.cond28 = select i1 %i.w, i1 true, i1 %i.x
end_hunk_11
begin_hunk_12_@cmath_sinh_impl:bb.a
  %i.aa = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.ab = fsub double %0, %i.aa                   ; 2 uses
  %i.ac = tail call double @cos(double noundef %1) #7, !tbaa !6
  %12 = tail call double @sinh(double noundef %i.ab) #7, !tbaa !6
  %13 = tail call double @sin(double noundef %1) #7, !tbaa !6
  %i.ad = tail call double @cosh(double noundef %i.ab) #7, !tbaa !6
  %14 = insertelement <2 x double> poison, double %i.ac, i64 0
  %15 = insertelement <2 x double> %14, double %13, i64 1
  %16 = insertelement <2 x double> poison, double %12, i64 0
  %17 = insertelement <2 x double> %16, double %i.ad, i64 1
  %18 = fmul <2 x double> %15, %17
  %19 = fmul <2 x double> %18, splat (double 0x4005BF0A8B145769)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ae = tail call double @cos(double noundef %1) #7, !tbaa !6
  %i.af = tail call double @sinh(double noundef %0) #7, !tbaa !6
  %i.ag = tail call double @sin(double noundef %1) #7, !tbaa !6
  %i.ah = tail call double @cosh(double noundef %0) #7, !tbaa !6
  %20 = insertelement <2 x double> poison, double %i.ae, i64 0
  %21 = insertelement <2 x double> %20, double %i.ag, i64 1
  %22 = insertelement <2 x double> poison, double %i.af, i64 0
  %23 = insertelement <2 x double> %22, double %i.ah, i64 1
  %24 = fmul <2 x double> %21, %23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %25 = phi <2 x double> [ %19, %bb.v ], [ %24, %bb.w ] ; 3 uses
  %26 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %25)
  %27 = fcmp oeq <2 x double> %26, splat (double 0x7FF0000000000000) ; 2 uses
  %28 = extractelement <2 x i1> %27, i64 0
  %29 = extractelement <2 x i1> %27, i64 1
  %or.cond30 = select i1 %28, i1 true, i1 %29
  %i.ai = tail call ptr @__errno_location() #8    ; 2 uses
  br i1 %or.cond30, label %bb.y, label %bb.z

end_hunk_12
begin_hunk_13_@cmath_sinh_impl:bb.a
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.s, %bb.t
  %30 = phi <2 x double> [ %11, %bb.s ], [ %11, %bb.t ], [ %25, %bb.z ], [ %25, %bb.y ] ; 2 uses
  %31 = extractelement <2 x double> %30, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %31, 0
  %32 = extractelement <2 x double> %30, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %32, 1
  ret { double, double } %.fca.1.insert
}

end_hunk_13
begin_hunk_14_@llvm.sqrt.f64
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.copysign.v2f64(<2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_14
