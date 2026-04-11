inline.NumInlined: 56
inline.NumDeleted: 25
begin_hunk_0_@cmath_exp:bb.a
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %2 = tail call double @llvm.copysign.f64(double 0x7FF0000000000000, double %i.l)
  %3 = tail call double @llvm.copysign.f64(double 0x7FF0000000000000, double %i.m)
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %4 = tail call double @llvm.copysign.f64(double 0.000000e+00, double %i.l)
  %5 = tail call double @llvm.copysign.f64(double 0.000000e+00, double %i.m)
  br label %bb.s

bb.h:                                             ; preds = %bb.d, %bb.c
end_hunk_0
begin_hunk_1_@cmath_exp:bb.a

special_type.exit41.i:                            ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i38.i = phi i64 [ %..i39.i, %bb.o ], [ 6, %bb.q ], [ %.7.i37.i, %bb.p ], [ %.8.i40.i, %bb.r ]
  %i.ab = getelementptr [16 x i8], ptr %i.u, i64 %.0.i38.i ; 2 uses
  %.sroa.030.0.copyload.i = load double, ptr %i.ab, align 16, !tbaa !10
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.7.0.copyload.i = load double, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !10
  br label %bb.s

bb.s:                                             ; preds = %special_type.exit41.i, %bb.g, %bb.f
  %.sroa.030.0.i = phi double [ %2, %bb.f ], [ %4, %bb.g ], [ %.sroa.030.0.copyload.i, %special_type.exit41.i ] ; 2 uses
  %.sroa.7.0.i = phi double [ %3, %bb.f ], [ %5, %bb.g ], [ %.sroa.7.0.copyload.i, %special_type.exit41.i ] ; 2 uses
  %i.ac = fcmp oeq double %i.h, 0x7FF0000000000000
  br i1 %i.ac, label %bb.t, label %bb.aa

end_hunk_1
begin_hunk_2_@cmath_exp:bb.a

bb.v:                                             ; preds = %bb.u
  %i.af = fadd double %i.d, -1.000000e+00
  %i.ag = tail call double @exp(double noundef %i.af) #7, !tbaa !6 ; 2 uses
  %i.ah = tail call double @cos(double noundef %i.c) #7, !tbaa !6
  %6 = fmul double %i.ag, %i.ah
  %7 = fmul double %6, 0x4005BF0A8B145769
  %8 = tail call double @sin(double noundef %i.c) #7, !tbaa !6
  %9 = fmul double %i.ag, %8
  %10 = fmul double %9, 0x4005BF0A8B145769
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ai = tail call double @exp(double noundef %i.d) #7, !tbaa !6 ; 2 uses
  %i.aj = tail call double @cos(double noundef %i.c) #7, !tbaa !6
  %11 = fmul double %i.ai, %i.aj
  %12 = tail call double @sin(double noundef %i.c) #7, !tbaa !6
  %13 = fmul double %i.ai, %12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.030.1.i = phi double [ %7, %bb.v ], [ %11, %bb.w ] ; 2 uses
  %.sroa.7.1.i = phi double [ %10, %bb.v ], [ %13, %bb.w ] ; 2 uses
  %14 = tail call double @llvm.fabs.f64(double %.sroa.030.1.i) #9
  %15 = fcmp oeq double %14, 0x7FF0000000000000
  %16 = tail call double @llvm.fabs.f64(double %.sroa.7.1.i) #9
  %17 = fcmp oeq double %16, 0x7FF0000000000000
  %or.cond36.i = select i1 %15, i1 true, i1 %17
  br i1 %or.cond36.i, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.t
end_hunk_2
begin_hunk_3_@cmath_exp:bb.a
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x, %bb.s, %bb.t
  %.sroa.030.2.i.ph = phi double [ %.sroa.030.0.i, %bb.s ], [ %.sroa.030.0.i, %bb.t ], [ %.sroa.030.1.i, %bb.x ]
  %.sroa.7.2.i.ph = phi double [ %.sroa.7.0.i, %bb.s ], [ %.sroa.7.0.i, %bb.t ], [ %.sroa.7.1.i, %bb.x ]
  store i32 0, ptr %i.e, align 4, !tbaa !6
  %i.am = tail call ptr @PyComplex_FromCComplex(double %.sroa.030.2.i.ph, double %.sroa.7.2.i.ph) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa, %bb.z, %bb.y
end_hunk_3
begin_hunk_4_@cmath_rect:bb.a
  br i1 %.not21, label %bb.g, label %cmath_rect_impl.exit

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.015 = phi double [ %.val26, %bb.d ], [ -1.000000e+00, %bb.f ], [ %i.e, %bb.e ] ; 11 uses
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
end_hunk_4
begin_hunk_5_@cmath_rect:bb.a
  br i1 %i.u, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %3 = tail call double @llvm.copysign.f64(double 0x7FF0000000000000, double %i.v)
  %4 = tail call double @sin(double noundef %.0) #7, !tbaa !6
  %5 = tail call double @llvm.copysign.f64(double 0x7FF0000000000000, double %4)
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  %6 = fneg double %i.v
  %7 = tail call double @llvm.copysign.f64(double 0x7FF0000000000000, double %6)
  %8 = tail call double @sin(double noundef %.0) #7, !tbaa !6
  %9 = fneg double %8
  %10 = tail call double @llvm.copysign.f64(double 0x7FF0000000000000, double %9)
  br label %bb.ab

bb.q:                                             ; preds = %bb.m, %bb.l
end_hunk_5
begin_hunk_6_@cmath_rect:bb.a

special_type.exit36.i:                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %.0.i33.i = phi i64 [ %..i34.i, %bb.x ], [ 6, %bb.z ], [ %.7.i32.i, %bb.y ], [ %.8.i35.i, %bb.aa ]
  %i.aj = getelementptr [16 x i8], ptr %i.ac, i64 %.0.i33.i ; 2 uses
  %.sroa.0.0.copyload.i = load double, ptr %i.aj, align 16, !tbaa !10
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !10
  br label %bb.ab

bb.ab:                                            ; preds = %special_type.exit36.i, %bb.p, %bb.o
  %.sroa.8.0.i = phi double [ %5, %bb.o ], [ %10, %bb.p ], [ %.sroa.8.0.copyload.i, %special_type.exit36.i ]
  %.sroa.0.0.i = phi double [ %3, %bb.o ], [ %7, %bb.p ], [ %.sroa.0.0.copyload.i, %special_type.exit36.i ]
  %or.cond29.i = fcmp one double %.015, 0.000000e+00
  %i.ak = fcmp oeq double %i.r, 0x7FF0000000000000
  %or.cond31.i = and i1 %or.cond29.i, %i.ak
end_hunk_6
begin_hunk_7_@cmath_rect:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.am = fmul nnan ninf double %.015, %.0
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.an = tail call double @cos(double noundef %.0) #7, !tbaa !6
  %11 = fmul double %.015, %i.an
  %12 = tail call double @sin(double noundef %.0) #7, !tbaa !6
  %13 = fmul double %.015, %12
  br label %bb.af

math_error.exit.i:                                ; preds = %bb.ab
end_hunk_7
begin_hunk_8_@cmath_rect:bb.a
  br label %cmath_rect_impl.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %.sroa.8.1.ph.i = phi double [ %i.am, %bb.ad ], [ %13, %bb.ae ], [ %.sroa.8.0.i, %bb.ab ]
  %.sroa.0.1.ph.i = phi double [ %.015, %bb.ad ], [ %11, %bb.ae ], [ %.sroa.0.0.i, %bb.ab ]
  store i32 0, ptr %i.o, align 4, !tbaa !6
  %i.ap = tail call ptr @PyComplex_FromCComplex(double %.sroa.0.1.ph.i, double %.sroa.8.1.ph.i) #7
  br label %cmath_rect_impl.exit

cmath_rect_impl.exit:                             ; preds = %bb.af, %math_error.exit.i, %bb.j, %bb.f, %bb.b
end_hunk_8
begin_hunk_9_@cmath_cosh_impl:bb.a
  %i.ae = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.af = fsub double %0, %i.ae                   ; 2 uses
  %i.ag = tail call double @cos(double noundef %1) #7, !tbaa !6
  %i.ah = tail call double @cosh(double noundef %i.af) #7, !tbaa !6
  %2 = fmul double %i.ag, %i.ah
  %3 = fmul double %2, 0x4005BF0A8B145769
  %4 = tail call double @sin(double noundef %1) #7, !tbaa !6
  %5 = tail call double @sinh(double noundef %i.af) #7, !tbaa !6
  %6 = fmul double %4, %5
  %7 = fmul double %6, 0x4005BF0A8B145769
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ai = tail call double @cos(double noundef %1) #7, !tbaa !6
  %i.aj = tail call double @cosh(double noundef %0) #7, !tbaa !6
  %8 = fmul double %i.ai, %i.aj
  %i.ak = tail call double @sin(double noundef %1) #7, !tbaa !6
  %i.al = tail call double @sinh(double noundef %0) #7, !tbaa !6
  %9 = fmul double %i.ak, %i.al
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.025.1 = phi double [ %3, %bb.v ], [ %8, %bb.w ] ; 3 uses
  %.sroa.7.1 = phi double [ %7, %bb.v ], [ %9, %bb.w ] ; 3 uses
  %10 = tail call double @llvm.fabs.f64(double %.sroa.025.1) #9
  %11 = fcmp oeq double %10, 0x7FF0000000000000
  %12 = tail call double @llvm.fabs.f64(double %.sroa.7.1) #9
  %13 = fcmp oeq double %12, 0x7FF0000000000000
  %or.cond30 = select i1 %11, i1 true, i1 %13
  %i.am = tail call ptr @__errno_location() #8    ; 2 uses
  br i1 %or.cond30, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 34, ptr %i.am, align 4, !tbaa !6
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store i32 0, ptr %i.am, align 4, !tbaa !6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.s, %bb.t
  %.sroa.025.2 = phi double [ %.sroa.025.0, %bb.s ], [ %.sroa.025.0, %bb.t ], [ %.sroa.025.1, %bb.z ], [ %.sroa.025.1, %bb.y ]
  %.sroa.7.2 = phi double [ %.sroa.7.0, %bb.s ], [ %.sroa.7.0, %bb.t ], [ %.sroa.7.1, %bb.z ], [ %.sroa.7.1, %bb.y ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.025.2, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.7.2, 1
  ret { double, double } %.fca.1.insert
end_hunk_9
begin_hunk_10_@cmath_sinh_impl:bb.a
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %2 = tail call double @llvm.copysign.f64(double 0x7FF0000000000000, double %i.g)
  %3 = tail call double @sin(double noundef %1) #7, !tbaa !6
  %4 = tail call double @llvm.copysign.f64(double 0x7FF0000000000000, double %3)
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.h = fneg double %i.g
  %5 = tail call double @llvm.copysign.f64(double 0x7FF0000000000000, double %i.h)
  %6 = tail call double @sin(double noundef %1) #7, !tbaa !6
  %7 = tail call double @llvm.copysign.f64(double 0x7FF0000000000000, double %6)
  br label %bb.r

bb.g:                                             ; preds = %bb.c, %bb.b
end_hunk_10
begin_hunk_11_@cmath_sinh_impl:bb.a

special_type.exit35:                              ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i32 = phi i64 [ %..i33, %bb.n ], [ 6, %bb.p ], [ %.7.i31, %bb.o ], [ %.8.i34, %bb.q ]
  %i.v = getelementptr [16 x i8], ptr %i.o, i64 %.0.i32 ; 2 uses
  %.sroa.025.0.copyload = load double, ptr %i.v, align 16, !tbaa !10
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.f, %special_type.exit35
  %.sroa.025.0 = phi double [ %2, %bb.e ], [ %5, %bb.f ], [ %.sroa.025.0.copyload, %special_type.exit35 ] ; 2 uses
  %.sroa.7.0 = phi double [ %4, %bb.e ], [ %7, %bb.f ], [ %.sroa.7.0.copyload, %special_type.exit35 ] ; 2 uses
  %i.w = fcmp une double %i.c, 0x7FF0000000000000
  %i.x = fcmp uno double %0, 0.000000e+00
  %or.cond28 = select i1 %i.w, i1 true, i1 %i.x
end_hunk_11
begin_hunk_12_@cmath_sinh_impl:bb.a
  %i.aa = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.ab = fsub double %0, %i.aa                   ; 2 uses
  %i.ac = tail call double @cos(double noundef %1) #7, !tbaa !6
  %i.ad = tail call double @sinh(double noundef %i.ab) #7, !tbaa !6
  %8 = fmul double %i.ac, %i.ad
  %9 = fmul double %8, 0x4005BF0A8B145769
  %10 = tail call double @sin(double noundef %1) #7, !tbaa !6
  %11 = tail call double @cosh(double noundef %i.ab) #7, !tbaa !6
  %12 = fmul double %10, %11
  %13 = fmul double %12, 0x4005BF0A8B145769
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ae = tail call double @cos(double noundef %1) #7, !tbaa !6
  %i.af = tail call double @sinh(double noundef %0) #7, !tbaa !6
  %14 = fmul double %i.ae, %i.af
  %i.ag = tail call double @sin(double noundef %1) #7, !tbaa !6
  %i.ah = tail call double @cosh(double noundef %0) #7, !tbaa !6
  %15 = fmul double %i.ag, %i.ah
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.025.1 = phi double [ %9, %bb.v ], [ %14, %bb.w ] ; 3 uses
  %.sroa.7.1 = phi double [ %13, %bb.v ], [ %15, %bb.w ] ; 3 uses
  %16 = tail call double @llvm.fabs.f64(double %.sroa.025.1) #9
  %17 = fcmp oeq double %16, 0x7FF0000000000000
  %18 = tail call double @llvm.fabs.f64(double %.sroa.7.1) #9
  %19 = fcmp oeq double %18, 0x7FF0000000000000
  %or.cond30 = select i1 %17, i1 true, i1 %19
  %i.ai = tail call ptr @__errno_location() #8    ; 2 uses
  br i1 %or.cond30, label %bb.y, label %bb.z

end_hunk_12
begin_hunk_13_@cmath_sinh_impl:bb.a
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.s, %bb.t
  %.sroa.025.2 = phi double [ %.sroa.025.0, %bb.s ], [ %.sroa.025.0, %bb.t ], [ %.sroa.025.1, %bb.z ], [ %.sroa.025.1, %bb.y ]
  %.sroa.7.2 = phi double [ %.sroa.7.0, %bb.s ], [ %.sroa.7.0, %bb.t ], [ %.sroa.7.1, %bb.z ], [ %.sroa.7.1, %bb.y ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.025.2, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.7.2, 1
  ret { double, double } %.fca.1.insert
}

end_hunk_13
begin_hunk_14_@llvm.sqrt.f64
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_14
