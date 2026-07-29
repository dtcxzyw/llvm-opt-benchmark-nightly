inline.NumInlined: 56
inline.NumDeleted: 25
begin_hunk_0_@cmath_sinh_impl:bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.f, %special_type.exit35
  %.sroa.025.0 = phi double [ %i.h, %bb.e ], [ %i.l, %bb.f ], [ %.sroa.025.0.copyload, %special_type.exit35 ] ; 2 uses
  %.sroa.7.0 = phi double [ %i.j, %bb.e ], [ %i.n, %bb.f ], [ %.sroa.7.0.copyload, %special_type.exit35 ] ; 2 uses
  %i.ac = fcmp une double %i.c, +inf
  %i.ad = fcmp uno double %0, 0.000000e+00
  %or.cond28 = select i1 %i.ac, i1 true, i1 %i.ad
  %i.ae = tail call ptr @__errno_location() #8    ; 2 uses
  br i1 %or.cond28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 33, ptr %i.ae, align 4, !tbaa !6
  br label %bb.aa

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %i.ae, align 4, !tbaa !6
  br label %bb.aa

bb.u:                                             ; preds = %bb.a
  %i.af = fcmp ogt double %i.a, f0x4086232BDD7ABCD2
  br i1 %i.af, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ag = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.ah = fsub double %0, %i.ag                   ; 2 uses
  %i.ai = tail call double @cos(double noundef %1) #7, !tbaa !6
  %i.aj = tail call double @sinh(double noundef %i.ah) #7, !tbaa !6
  %i.ak = fmul double %i.ai, %i.aj
  %i.al = fmul double %i.ak, f0x4005BF0A8B145769
  %i.am = tail call double @sin(double noundef %1) #7, !tbaa !6
  %i.an = tail call double @cosh(double noundef %i.ah) #7, !tbaa !6
  %i.ao = fmul double %i.am, %i.an
  %i.ap = fmul double %i.ao, f0x4005BF0A8B145769
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.aq = tail call double @cos(double noundef %1) #7, !tbaa !6
  %i.ar = tail call double @sinh(double noundef %0) #7, !tbaa !6
  %i.as = fmul double %i.aq, %i.ar
  %i.at = tail call double @sin(double noundef %1) #7, !tbaa !6
  %i.au = tail call double @cosh(double noundef %0) #7, !tbaa !6
  %i.av = fmul double %i.at, %i.au
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.025.1 = phi double [ %i.al, %bb.v ], [ %i.as, %bb.w ] ; 3 uses
  %.sroa.7.1 = phi double [ %i.ap, %bb.v ], [ %i.av, %bb.w ] ; 3 uses
  %i.aw = tail call double @llvm.fabs.f64(double %.sroa.025.1) #9
  %i.ax = fcmp oeq double %i.aw, +inf
  %i.ay = tail call double @llvm.fabs.f64(double %.sroa.7.1) #9
  %i.az = fcmp oeq double %i.ay, +inf
  %or.cond30 = select i1 %i.ax, i1 true, i1 %i.az
  %i.ba = tail call ptr @__errno_location() #8    ; 2 uses
  br i1 %or.cond30, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 34, ptr %i.ba, align 4, !tbaa !6
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store i32 0, ptr %i.ba, align 4, !tbaa !6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.s, %bb.t
  %.sroa.025.2 = phi double [ %.sroa.025.0, %bb.s ], [ %.sroa.025.0, %bb.t ], [ %.sroa.025.1, %bb.z ], [ %.sroa.025.1, %bb.y ]
  %.sroa.7.2 = phi double [ %.sroa.7.0, %bb.s ], [ %.sroa.7.0, %bb.t ], [ %.sroa.7.1, %bb.z ], [ %.sroa.7.1, %bb.y ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.025.2, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.7.2, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { double, double } @cmath_tanh_impl(double %0, double %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 4 uses
  %i.b = fcmp ueq double %i.a, +inf               ; 3 uses
  %i.c = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.d = fcmp ueq double %i.c, +inf               ; 2 uses
  %or.cond37 = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond37, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %i.a, +inf
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %or.cond = tail call i1 @llvm.is.fpclass.f64(double %1, /* (sub norm) */ i32 408)
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = fcmp ogt double %0, 0.000000e+00
  %i.g = tail call double @sin(double noundef %1) #7, !tbaa !6
  %i.h = fmul double %i.g, 2.000000e+00
  %i.i = tail call double @cos(double noundef %1) #7, !tbaa !6
  %i.j = fmul double %i.h, %i.i
  %i.k = tail call double @llvm.copysign.f64(double 0.000000e+00, double %i.j)
  %. = select i1 %i.f, double 1.000000e+00, double -1.000000e+00
  br label %bb.p

bb.e:                                             ; preds = %bb.c, %bb.b
  br i1 %i.b, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = fcmp une double %0, 0.000000e+00
  %i.m = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.n = fcmp oeq double %i.m, 1.000000e+00       ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %..i = select i1 %i.n, i64 4, i64 1
  br label %special_type.exit

bb.h:                                             ; preds = %bb.f
  %.7.i = select i1 %i.n, i64 3, i64 2
  br label %special_type.exit

bb.i:                                             ; preds = %bb.e
  %i.o = fcmp uno double %0, 0.000000e+00
  br i1 %i.o, label %special_type.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.q = fcmp oeq double %i.p, 1.000000e+00
  %.8.i = select i1 %i.q, i64 5, i64 0
  br label %special_type.exit

special_type.exit:                                ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %..i, %bb.g ], [ 6, %bb.i ], [ %.7.i, %bb.h ], [ %.8.i, %bb.j ]
  %i.r = getelementptr [112 x i8], ptr @tanh_special_values, i64 %.0.i
  br i1 %i.d, label %bb.n, label %bb.k

bb.k:                                             ; preds = %special_type.exit
  %i.s = fcmp une double %1, 0.000000e+00
  %i.t = tail call double @llvm.copysign.f64(double 1.000000e+00, double %1)
  %i.u = fcmp oeq double %i.t, 1.000000e+00       ; 2 uses
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %..i42 = select i1 %i.u, i64 4, i64 1
  br label %special_type.exit44

bb.m:                                             ; preds = %bb.k
  %.7.i40 = select i1 %i.u, i64 3, i64 2
  br label %special_type.exit44

bb.n:                                             ; preds = %special_type.exit
  %i.v = fcmp uno double %1, 0.000000e+00
  br i1 %i.v, label %special_type.exit44, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = tail call double @llvm.copysign.f64(double 1.000000e+00, double %1)
  %i.x = fcmp oeq double %i.w, 1.000000e+00
  %.8.i43 = select i1 %i.x, i64 5, i64 0
  br label %special_type.exit44

special_type.exit44:                              ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i41 = phi i64 [ %..i42, %bb.l ], [ 6, %bb.n ], [ %.7.i40, %bb.m ], [ %.8.i43, %bb.o ]
  %i.y = getelementptr [16 x i8], ptr %i.r, i64 %.0.i41 ; 2 uses
  %.sroa.034.0.copyload = load double, ptr %i.y, align 16, !tbaa !10
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %special_type.exit44
  %.sroa.034.0 = phi double [ %., %bb.d ], [ %.sroa.034.0.copyload, %special_type.exit44 ] ; 2 uses
  %.sroa.6.0 = phi double [ %i.k, %bb.d ], [ %.sroa.6.0.copyload, %special_type.exit44 ] ; 2 uses
  %i.z = fcmp une double %i.c, +inf
  %brmerge = or i1 %i.b, %i.z
  %i.aa = tail call ptr @__errno_location() #8    ; 2 uses
  br i1 %brmerge, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 33, ptr %i.aa, align 4, !tbaa !6
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  store i32 0, ptr %i.aa, align 4, !tbaa !6
  br label %bb.w

bb.s:                                             ; preds = %bb.a
  %i.ab = fcmp ogt double %i.a, f0x4086232BDD7ABCD2
  br i1 %i.ab, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ac = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.ad = tail call double @sin(double noundef %1) #7, !tbaa !6
  %i.ae = fmul double %i.ad, 4.000000e+00
  %i.af = tail call double @cos(double noundef %1) #7, !tbaa !6
  %i.ag = fmul double %i.ae, %i.af
  %i.ah = fmul nnan double %i.a, -2.000000e+00
  %i.ai = tail call double @exp(double noundef %i.ah) #7, !tbaa !6
  %i.aj = fmul double %i.ag, %i.ai
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ak = tail call double @tanh(double noundef %0) #7, !tbaa !6 ; 2 uses
  %i.al = tail call double @tan(double noundef %1) #7, !tbaa !6 ; 4 uses
  %2 = fmul double %i.ak, %i.al                   ; 2 uses
  %3 = tail call double @llvm.fmuladd.f64(double %i.al, double %i.al, double 1.000000e+00)
  %4 = fmul double %i.ak, %3
  %i.am = tail call double @cosh(double noundef %0) #7, !tbaa !6
  %5 = tail call double @llvm.fmuladd.f64(double %2, double %2, double 1.000000e+00) ; 2 uses
  %i.an = fdiv double %4, %5
  %6 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.al, i64 1
  %7 = insertelement <2 x double> poison, double %i.am, i64 0
  %8 = insertelement <2 x double> %7, double %5, i64 1
  %9 = fdiv <2 x double> %6, %8                   ; 3 uses
  %shift = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %9, %shift
  %foldExtExtBinop4 = fmul <2 x double> %9, %foldExtExtBinop
  %10 = extractelement <2 x double> %foldExtExtBinop4, i64 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.034.1 = phi double [ %i.ac, %bb.t ], [ %i.an, %bb.u ]
  %.sroa.6.1 = phi double [ %i.aj, %bb.t ], [ %10, %bb.u ]
  %i.ao = tail call ptr @__errno_location() #8
  store i32 0, ptr %i.ao, align 4, !tbaa !6
  br label %bb.w

bb.w:                                             ; preds = %bb.q, %bb.r, %bb.v
  %.sroa.034.2 = phi double [ %.sroa.034.1, %bb.v ], [ %.sroa.034.0, %bb.r ], [ %.sroa.034.0, %bb.q ]
  %.sroa.6.2 = phi double [ %.sroa.6.1, %bb.v ], [ %.sroa.6.0, %bb.r ], [ %.sroa.6.0, %bb.q ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.034.2, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.6.2, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @cmath_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyFloat_FromDouble(double noundef f0x400921FB54442D18) #7
  %i.b = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %i.a) #7
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyFloat_FromDouble(double noundef f0x4005BF0A8B145769) #7
  %i.e = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %i.d) #7
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @PyFloat_FromDouble(double noundef f0x401921FB54442D18) #7
  %i.h = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %i.g) #7
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @PyFloat_FromDouble(double noundef +inf) #7
  %i.k = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef %i.j) #7
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @PyComplex_FromCComplex(double 0.000000e+00, double +inf) #7
  %i.n = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef %i.m) #7
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyFloat_FromDouble(double noundef +qnan) #7
  %i.q = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %i.p) #7
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @PyComplex_FromCComplex(double 0.000000e+00, double +qnan) #7
  %i.t = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %i.s) #7
  %.lobit = ashr i32 %i.t, 31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ %.lobit, %bb.g ], [ -1, %bb.e ], [ -1, %bb.f ]
  ret i32 %.2
}

declare i32 @PyModule_Add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS7_object", !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!16, !19, i64 16}
!16 = !{!"PyVarObject", !17, i64 0, !19, i64 16}
!17 = !{!"_object", !8, i64 0, !18, i64 8}
!18 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!19 = !{!"long", !8, i64 0}
!20 = !{!17, !18, i64 8}
!21 = !{!22, !11, i64 16}
!22 = !{!"", !17, i64 0, !11, i64 16}
end_hunk_0
