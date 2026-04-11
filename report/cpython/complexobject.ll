inline.NumInlined: 135
inline.NumDeleted: 39
begin_hunk_0_@_Py_c_neg:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { double, double } @_Py_c_prod(double %0, double %1, double %2, double %3) local_unnamed_addr #0 {
bb.a:
  %4 = insertelement <4 x double> poison, double %0, i64 0
  %5 = insertelement <4 x double> %4, double %1, i64 1
  %6 = shufflevector <4 x double> %5, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %7 = insertelement <4 x double> poison, double %2, i64 0
  %8 = insertelement <4 x double> %7, double %3, i64 1
  %9 = shufflevector <4 x double> %8, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %10 = fmul <4 x double> %6, %9                  ; 5 uses
  %11 = extractelement <4 x double> %10, i64 0
  %12 = extractelement <4 x double> %10, i64 1
  %13 = fsub double %11, %12                      ; 3 uses
  %14 = extractelement <4 x double> %10, i64 2
  %i.a = extractelement <4 x double> %10, i64 3
  %15 = fadd double %14, %i.a                     ; 3 uses
  %16 = fcmp uno double %13, 0.000000e+00
  %i.b = fcmp uno double %15, 0.000000e+00
  %or.cond = and i1 %16, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

end_hunk_0
begin_hunk_1_@_Py_c_prod:bb.a

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp oeq double %.pre, 0x7FF0000000000000
  %17 = insertelement <2 x double> poison, double %1, i64 0
  %i.f = insertelement <2 x double> %17, double %0, i64 1
  br i1 %i.e, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.g = phi double [ 0.000000e+00, %bb.c ], [ 1.000000e+00, %bb.b ]
  %i.h = fcmp oeq double %.pre, 0x7FF0000000000000
  %i.i = select i1 %i.h, double 1.000000e+00, double 0.000000e+00
  %18 = insertelement <2 x double> poison, double %i.i, i64 0
  %19 = insertelement <2 x double> %18, double %i.g, i64 1
  %i.j = insertelement <2 x double> poison, double %1, i64 0
  %i.k = insertelement <2 x double> %i.j, double %0, i64 1
  %i.l = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %19, <2 x double> %i.k)
  %20 = fcmp uno double %2, 0.000000e+00
  %21 = tail call double @llvm.copysign.f64(double 0.000000e+00, double %2)
  %.069 = select i1 %20, double %21, double %2
  %22 = fcmp uno double %3, 0.000000e+00
  %23 = tail call double @llvm.copysign.f64(double 0.000000e+00, double %3)
  %.064 = select i1 %22, double %23, double %3
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.170 = phi double [ %.069, %._crit_edge ], [ %2, %bb.c ] ; 6 uses
  %.165 = phi double [ %.064, %._crit_edge ], [ %3, %bb.c ] ; 6 uses
  %.not = phi i1 [ false, %._crit_edge ], [ true, %bb.c ]
  %24 = phi <2 x double> [ %i.l, %._crit_edge ], [ %i.f, %bb.c ] ; 7 uses
  %i.m = tail call double @llvm.fabs.f64(double %.170) #14
  %i.n = fcmp oeq double %i.m, 0x7FF0000000000000
  %.pre97 = tail call double @llvm.fabs.f64(double %.165) #14 ; 2 uses
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_Py_c_prod:bb.a

.thread:                                          ; preds = %bb.d, %bb.e
  %i.p = phi double [ 0.000000e+00, %bb.e ], [ 1.000000e+00, %bb.d ]
  %25 = tail call double @llvm.copysign.f64(double %i.p, double %.170)
  %i.q = fcmp oeq double %.pre97, 0x7FF0000000000000
  %i.r = select i1 %i.q, double 1.000000e+00, double 0.000000e+00
  %26 = tail call double @llvm.copysign.f64(double %i.r, double %.165)
  %i.s = fcmp uno <2 x double> %24, zeroinitializer
  %i.t = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %24)
  %i.u = select <2 x i1> %i.s, <2 x double> %i.t, <2 x double> %24
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %10)
  %i.w = fcmp oeq <4 x double> %i.v, splat (double 0x7FF0000000000000)
  %i.x = bitcast <4 x i1> %i.w to i4
  %.not102 = icmp eq i4 %i.x, 0
  br i1 %.not102, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = fcmp uno <2 x double> %24, zeroinitializer
  %i.z = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %24)
  %i.aa = select <2 x i1> %i.y, <2 x double> %i.z, <2 x double> %24
  %27 = fcmp uno double %.170, 0.000000e+00
  %28 = tail call double @llvm.copysign.f64(double 0.000000e+00, double %.170)
  %.372 = select i1 %27, double %28, double %.170
  %29 = fcmp uno double %.165, 0.000000e+00
  %30 = tail call double @llvm.copysign.f64(double 0.000000e+00, double %.165)
  %.367 = select i1 %29, double %30, double %.165
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %.thread
  %.473.ph = phi double [ %25, %.thread ], [ %.372, %bb.h ], [ %.170, %bb.f ] ; 2 uses
  %.468.ph = phi double [ %26, %.thread ], [ %.367, %bb.h ], [ %.165, %bb.f ] ; 2 uses
  %i.ab = phi <2 x double> [ %i.u, %.thread ], [ %i.aa, %bb.h ], [ %24, %bb.f ] ; 2 uses
  %31 = fneg double %.468.ph
  %32 = extractelement <2 x double> %i.ab, i64 0  ; 2 uses
  %33 = fmul double %32, %31
  %34 = extractelement <2 x double> %i.ab, i64 1  ; 2 uses
  %35 = tail call double @llvm.fmuladd.f64(double %34, double %.473.ph, double %33)
  %36 = fmul double %35, 0x7FF0000000000000
  %37 = fmul double %.473.ph, %32
  %38 = tail call double @llvm.fmuladd.f64(double %34, double %.468.ph, double %37)
  %39 = fmul double %38, 0x7FF0000000000000
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.a
  %.sroa.055.1 = phi double [ %13, %bb.a ], [ %36, %bb.i ], [ %13, %bb.g ]
  %.sroa.4.1 = phi double [ %15, %bb.a ], [ %39, %bb.i ], [ %15, %bb.g ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.055.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.4.1, 1
  ret { double, double } %.fca.1.insert
}

end_hunk_2
begin_hunk_3_@_Py_cr_prod:bb.a
; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_c_quot(double %0, double %1, double %2, double %3) local_unnamed_addr #4 {
bb.a:
  %4 = fcmp olt double %2, 0.000000e+00
  %5 = fneg double %2
  %6 = select i1 %4, double %5, double %2         ; 2 uses
  %7 = fcmp olt double %3, 0.000000e+00
  %8 = fneg double %3                             ; 2 uses
  %9 = select i1 %7, double %8, double %3         ; 2 uses
  %i.a = fcmp ult double %6, %9
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_Py_c_quot:bb.a
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.d = fdiv double %3, %2                       ; 3 uses
  %i.e = tail call double @llvm.fmuladd.f64(double %3, double %i.d, double %2) ; 2 uses
  %10 = tail call double @llvm.fmuladd.f64(double %1, double %i.d, double %0)
  %11 = fdiv double %10, %i.e
  %12 = fneg double %0
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %i.d, double %1)
  %14 = fdiv double %13, %i.e
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = fcmp ult double %9, %6
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = fdiv double %2, %3                       ; 3 uses
  %i.h = tail call double @llvm.fmuladd.f64(double %2, double %i.g, double %3) ; 2 uses
  %15 = tail call double @llvm.fmuladd.f64(double %0, double %i.g, double %1)
  %16 = fdiv double %15, %i.h
  %17 = fneg double %0
  %18 = tail call double @llvm.fmuladd.f64(double %1, double %i.g, double %17)
  %19 = fdiv double %18, %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.066.0 = phi double [ 0x7FF8000000000000, %bb.d ], [ %11, %bb.c ], [ %16, %bb.e ] ; 3 uses
  %.sroa.8.0 = phi double [ 0x7FF8000000000000, %bb.d ], [ %14, %bb.c ], [ %19, %bb.e ] ; 3 uses
  %i.i = fcmp uno double %.sroa.066.0, 0.000000e+00
  %i.j = fcmp uno double %.sroa.8.0, 0.000000e+00
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %20 = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %21 = fcmp une double %20, 0x7FF0000000000000   ; 2 uses
  %22 = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %23 = fcmp une double %22, 0x7FF0000000000000   ; 2 uses
  %or.cond69.not84 = select i1 %21, i1 %23, i1 false
  %i.k = tail call double @llvm.fabs.f64(double %2) ; 2 uses
  %i.l = fcmp ueq double %i.k, 0x7FF0000000000000
  %or.cond71 = or i1 %or.cond69.not84, %i.l
end_hunk_4
begin_hunk_5_@_Py_c_quot:bb.a
  br i1 %or.cond73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %24 = select i1 %21, double 0.000000e+00, double 1.000000e+00
  %25 = tail call double @llvm.copysign.f64(double %24, double %0) ; 2 uses
  %26 = select i1 %23, double 0.000000e+00, double 1.000000e+00
  %27 = tail call double @llvm.copysign.f64(double %26, double %1) ; 2 uses
  %28 = fmul nnan double %3, %27
  %29 = tail call double @llvm.fmuladd.f64(double %25, double %2, double %28)
  %30 = fmul double %29, 0x7FF0000000000000
  %31 = fmul nnan double %25, %8
  %32 = tail call double @llvm.fmuladd.f64(double %27, double %2, double %31)
  %33 = fmul double %32, 0x7FF0000000000000
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.o = fcmp une double %i.k, 0x7FF0000000000000 ; 2 uses
  %i.p = fcmp une double %i.m, 0x7FF0000000000000 ; 2 uses
  %or.cond75.not86 = and i1 %i.o, %i.p
  %i.q = fcmp ueq double %20, 0x7FF0000000000000
  %or.cond77 = or i1 %i.q, %or.cond75.not86
  %i.r = fcmp ueq double %22, 0x7FF0000000000000
  %or.cond79 = select i1 %or.cond77, i1 true, i1 %i.r
  br i1 %or.cond79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = select i1 %i.o, double 0.000000e+00, double 1.000000e+00
  %i.t = tail call double @llvm.copysign.f64(double %i.s, double %2) ; 2 uses
  %i.u = select i1 %i.p, double 0.000000e+00, double 1.000000e+00
  %i.v = tail call double @llvm.copysign.f64(double %i.u, double %3) ; 2 uses
  %34 = fmul nnan double %1, %i.v
  %35 = tail call double @llvm.fmuladd.f64(double %0, double %i.t, double %34)
  %36 = fmul double %35, 0.000000e+00
  %37 = fneg double %i.v
  %38 = fmul nnan double %0, %37
  %39 = tail call double @llvm.fmuladd.f64(double %1, double %i.t, double %38)
  %40 = fmul double %39, 0.000000e+00
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %bb.h, %bb.j, %bb.f
  %.sroa.066.1 = phi double [ %30, %bb.h ], [ %36, %bb.j ], [ %.sroa.066.0, %bb.i ], [ %.sroa.066.0, %bb.f ], [ 0.000000e+00, %.thread ]
  %.sroa.8.1 = phi double [ %33, %bb.h ], [ %40, %bb.j ], [ %.sroa.8.0, %bb.i ], [ %.sroa.8.0, %bb.f ], [ 0.000000e+00, %.thread ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.066.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.8.1, 1
  ret { double, double } %.fca.1.insert
}

end_hunk_5
begin_hunk_6_@_Py_cr_quot:bb.a
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %3 = fdiv double %0, %2
  %4 = fdiv double %1, %2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7_@_Py_cr_quot:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0 = phi double [ %3, %bb.b ], [ 0.000000e+00, %bb.c ]
  %.sroa.5.0 = phi double [ %4, %bb.b ], [ 0.000000e+00, %bb.c ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.5.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_rc_quot(double noundef %0, double %1, double %2) local_unnamed_addr #4 {
bb.a:
  %3 = fcmp olt double %1, 0.000000e+00
  %4 = fneg double %1
  %5 = select i1 %3, double %4, double %1         ; 2 uses
  %6 = fcmp olt double %2, 0.000000e+00
  %7 = fneg double %2
  %8 = select i1 %6, double %7, double %2         ; 2 uses
  %i.a = fcmp ult double %5, %8
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@_Py_rc_quot:bb.a

bb.d:                                             ; preds = %bb.b
  %i.d = fdiv double %2, %1                       ; 2 uses
  %i.e = tail call double @llvm.fmuladd.f64(double %2, double %i.d, double %1) ; 2 uses
  %9 = fdiv double %0, %i.e
  %i.f = fneg double %0
  %i.g = fmul double %i.d, %i.f
  %10 = fdiv double %i.g, %i.e
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.h = fcmp ult double %8, %5
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = fdiv double %1, %2                       ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %1, double %i.i, double %2) ; 2 uses
  %i.k = fmul double %0, %i.i
  %11 = fdiv double %i.k, %i.j
  %12 = fneg double %0
  %13 = fdiv double %12, %i.j
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %.sroa.040.0 = phi double [ 0.000000e+00, %bb.c ], [ %9, %bb.d ], [ %11, %bb.f ], [ 0x7FF8000000000000, %bb.e ] ; 3 uses
  %.sroa.7.0 = phi double [ 0.000000e+00, %bb.c ], [ %10, %bb.d ], [ %13, %bb.f ], [ 0x7FF8000000000000, %bb.e ] ; 3 uses
  %i.l = fcmp ord double %.sroa.040.0, 0.000000e+00
  %i.m = fcmp ord double %.sroa.7.0, 0.000000e+00
  %or.cond.not47 = or i1 %i.l, %i.m
  %i.n = tail call double @llvm.fabs.f64(double %0)
  %i.o = fcmp ueq double %i.n, 0x7FF0000000000000
end_hunk_8
begin_hunk_9_@_Py_rc_quot:bb.a
  br i1 %or.cond43, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %14 = tail call double @llvm.fabs.f64(double %1) #14
  %15 = fcmp oeq double %14, 0x7FF0000000000000   ; 2 uses
  %16 = tail call double @llvm.fabs.f64(double %2) #14
  %17 = fcmp oeq double %16, 0x7FF0000000000000   ; 2 uses
  %or.cond45 = or i1 %15, %17
  br i1 %or.cond45, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %18 = select i1 %15, double 1.000000e+00, double 0.000000e+00
  %19 = tail call double @llvm.copysign.f64(double %18, double %1)
  %20 = select i1 %17, double 1.000000e+00, double 0.000000e+00
  %21 = tail call double @llvm.copysign.f64(double %20, double %2)
  %22 = fmul nnan double %0, %19
  %23 = fmul double %22, 0.000000e+00
  %24 = fneg double %0
  %25 = fmul nnan double %21, %24
  %26 = fmul double %25, 0.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.sroa.040.1 = phi double [ %23, %bb.i ], [ %.sroa.040.0, %bb.h ], [ %.sroa.040.0, %bb.g ]
  %.sroa.7.1 = phi double [ %26, %bb.i ], [ %.sroa.7.0, %bb.h ], [ %.sroa.7.0, %bb.g ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.040.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.7.1, 1
  ret { double, double } %.fca.1.insert
}

end_hunk_9
begin_hunk_10_@complex_mul:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.Py_complex, align 8         ; 14 uses
  %i.c = alloca double, align 8                   ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !42
  store ptr %1, ptr %i.b, align 8, !tbaa !42
end_hunk_10
begin_hunk_11_@complex_mul:bb.a

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.g = getelementptr i8, ptr %1, i64 16
  %.sroa.07.0.copyload = load double, ptr %i.g, align 8, !tbaa !23 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val14 = load ptr, ptr %i.h, align 8, !tbaa !19 ; 2 uses
  %.not.i16 = icmp eq ptr %.val14, @PyComplex_Type
end_hunk_11
begin_hunk_12_@complex_mul:bb.a
PyObject_TypeCheck.exit17.thread:                 ; preds = %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit17
  %i.j = getelementptr i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !45
  %i.k = load double, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load double, ptr %i.l, align 8
  %i.n = tail call { double, double } @_Py_c_prod(double %i.k, double %i.m, double %.sroa.07.0.copyload, double %.sroa.5.0.copyload) ; 2 uses
  %i.o = extractvalue { double, double } %i.n, 0  ; 2 uses
  %i.p = extractvalue { double, double } %i.n, 1  ; 2 uses
  store double %i.o, ptr %2, align 8, !tbaa !23
  store double %i.p, ptr %i.l, align 8, !tbaa !23
  br label %.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit17
end_hunk_12
begin_hunk_13_@complex_mul:bb.a

real_to_double.exit:                              ; preds = %bb.c, %PyObject_TypeCheck.exit.thread.i
  %.in42 = phi ptr [ %i.r, %PyObject_TypeCheck.exit.thread.i ], [ %2, %bb.c ]
  %i.u = load double, ptr %.in42, align 8, !tbaa !23 ; 2 uses
  %3 = fmul double %.sroa.07.0.copyload, %i.u     ; 2 uses
  %4 = fmul double %.sroa.5.0.copyload, %i.u      ; 2 uses
  store double %3, ptr %2, align 8, !tbaa !23
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %4, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !23
  br label %.thread

bb.d:                                             ; preds = %bb.c
end_hunk_13
begin_hunk_14_@complex_mul:bb.a

.thread35:                                        ; preds = %bb.f, %PyObject_TypeCheck.exit.thread.i24
  %.in = phi ptr [ %i.aa, %PyObject_TypeCheck.exit.thread.i24 ], [ %i.c, %bb.f ]
  %5 = load double, ptr %.in, align 8, !tbaa !23  ; 2 uses
  %i.ad = load double, ptr %2, align 8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %7 = load double, ptr %6, align 8
  %8 = fmul double %5, %i.ad                      ; 2 uses
  %9 = fmul double %5, %7                         ; 2 uses
  store double %8, ptr %2, align 8, !tbaa !23
  store double %9, ptr %6, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.thread

end_hunk_14
begin_hunk_15_@complex_mul:bb.a
  br label %PyComplex_FromCComplex.exit

.thread:                                          ; preds = %PyObject_TypeCheck.exit17.thread, %real_to_double.exit, %.thread35
  %10 = phi double [ %i.p, %PyObject_TypeCheck.exit17.thread ], [ %4, %real_to_double.exit ], [ %9, %.thread35 ]
  %11 = phi double [ %i.o, %PyObject_TypeCheck.exit17.thread ], [ %3, %real_to_double.exit ], [ %8, %.thread35 ]
  %i.af = load i32, ptr %i.d, align 4, !tbaa !7
  %i.ag = icmp eq i32 %i.af, 33
  br i1 %i.ag, label %bb.h, label %bb.i
end_hunk_15
begin_hunk_16_@complex_mul:bb.a
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.m, %bb.l, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.al, %_PyFreeList_Pop.exit.i ], [ %i.aq, %bb.l ], [ %i.aq, %bb.m ] ; 4 uses
  call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !25
  %12 = getelementptr i8, ptr %.sink.i, i64 16
  store double %11, ptr %12, align 8, !tbaa !23
  %i.ax = getelementptr i8, ptr %.sink.i, i64 24
  store double %10, ptr %i.ax, align 8, !tbaa !23
  br label %PyComplex_FromCComplex.exit

PyComplex_FromCComplex.exit:                      ; preds = %_PyObject_Init.exit.i, %bb.k, %bb.g, %bb.d, %PyObject_TypeCheck.exit19, %bb.h
end_hunk_16
begin_hunk_17_@complex_div:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.Py_complex, align 16        ; 13 uses
  %i.c = alloca double, align 8                   ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !42
  store ptr %1, ptr %i.b, align 8, !tbaa !42
end_hunk_17
begin_hunk_18_@complex_div:bb.a

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !23 ; 5 uses
  %3 = extractelement <2 x double> %i.h, i64 1    ; 7 uses
  %4 = extractelement <2 x double> %i.h, i64 0    ; 8 uses
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val14 = load ptr, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %.not.i16 = icmp eq ptr %.val14, @PyComplex_Type
end_hunk_18
begin_hunk_19_@complex_div:bb.a
  %i.l = load double, ptr %2, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load double, ptr %i.m, align 8
  %i.o = tail call { double, double } @_Py_c_quot(double %i.l, double %i.n, double %4, double %3) ; 2 uses
  %i.p = extractvalue { double, double } %i.o, 0  ; 2 uses
  %i.q = extractvalue { double, double } %i.o, 1  ; 2 uses
  store double %i.p, ptr %2, align 16, !tbaa !23
  store double %i.q, ptr %i.m, align 8, !tbaa !23
  br label %.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit17
end_hunk_19
begin_hunk_20_@complex_div:bb.a
  br i1 %i.ab, label %bb.g, label %bb.d

bb.d:                                             ; preds = %real_to_double.exit
  %i.ac = fcmp oeq double %4, 0.000000e+00
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_20
begin_hunk_21_@complex_div:bb.a
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %5 = fdiv double %3, %4                         ; 2 uses
  %6 = call double @llvm.fmuladd.f64(double %3, double %5, double %4) ; 2 uses
  %7 = fdiv double %i.v, %6
  %i.ad = fneg double %i.v
  %i.ae = fmul double %5, %i.ad
  %8 = fdiv double %i.ae, %6
  br label %bb.i

bb.g:                                             ; preds = %real_to_double.exit
end_hunk_21
begin_hunk_22_@complex_div:bb.a
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = fdiv double %4, %3                      ; 2 uses
  %i.ah = call double @llvm.fmuladd.f64(double %4, double %i.ag, double %3) ; 2 uses
  %i.ai = fmul double %i.ag, %i.v
  %9 = fdiv double %i.ai, %i.ah
  %10 = fneg double %i.v
  %11 = fdiv double %10, %i.ah
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.040.0.i = phi double [ 0.000000e+00, %bb.e ], [ %7, %bb.f ], [ %9, %bb.h ], [ 0x7FF8000000000000, %bb.g ] ; 3 uses
  %.sroa.7.0.i = phi double [ 0.000000e+00, %bb.e ], [ %8, %bb.f ], [ %11, %bb.h ], [ 0x7FF8000000000000, %bb.g ] ; 3 uses
  %i.aj = fcmp ord double %.sroa.040.0.i, 0.000000e+00
  %i.ak = fcmp ord double %.sroa.7.0.i, 0.000000e+00
  %or.cond.not47.i = or i1 %i.aj, %i.ak
  %i.al = call double @llvm.fabs.f64(double %i.v)
  %i.am = fcmp ueq double %i.al, 0x7FF0000000000000
end_hunk_22
begin_hunk_23_@complex_div:bb.a
  br i1 %or.cond43.i, label %_Py_rc_quot.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %12 = call double @llvm.fabs.f64(double %4) #14
  %13 = fcmp oeq double %12, 0x7FF0000000000000   ; 2 uses
  %14 = call double @llvm.fabs.f64(double %3) #14
  %15 = fcmp oeq double %14, 0x7FF0000000000000   ; 2 uses
  %or.cond45.i = or i1 %13, %15
  br i1 %or.cond45.i, label %bb.k, label %_Py_rc_quot.exit

bb.k:                                             ; preds = %bb.j
  %16 = select i1 %13, double 1.000000e+00, double 0.000000e+00
  %17 = call double @llvm.copysign.f64(double %16, double %4)
  %18 = select i1 %15, double 1.000000e+00, double 0.000000e+00
  %19 = call double @llvm.copysign.f64(double %18, double %3)
  %20 = fmul nnan double %17, %i.v
  %21 = fmul double %20, 0.000000e+00
  %22 = fneg double %i.v
  %23 = fmul nnan double %19, %22
  %24 = fmul double %23, 0.000000e+00
  br label %_Py_rc_quot.exit

_Py_rc_quot.exit:                                 ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.040.1.i = phi double [ %21, %bb.k ], [ %.sroa.040.0.i, %bb.j ], [ %.sroa.040.0.i, %bb.i ] ; 2 uses
  %.sroa.7.1.i = phi double [ %24, %bb.k ], [ %.sroa.7.0.i, %bb.j ], [ %.sroa.7.0.i, %bb.i ] ; 2 uses
  store double %.sroa.040.1.i, ptr %2, align 16, !tbaa !23
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %.sroa.7.1.i, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !23
  br label %.thread

bb.l:                                             ; preds = %bb.c
end_hunk_23
begin_hunk_24_@complex_div:bb.a
  br label %.thread37

.thread37:                                        ; preds = %bb.p, %bb.o
  %i.bb = phi <2 x double> [ %i.ba, %bb.o ], [ zeroinitializer, %bb.p ] ; 3 uses
  store <2 x double> %i.bb, ptr %2, align 16, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %25 = extractelement <2 x double> %i.bb, i64 0
  %26 = extractelement <2 x double> %i.bb, i64 1
  br label %.thread

bb.q:                                             ; preds = %bb.n
end_hunk_24
begin_hunk_25_@complex_div:bb.a
  br label %PyComplex_FromCComplex.exit

.thread:                                          ; preds = %PyObject_TypeCheck.exit17.thread, %_Py_rc_quot.exit, %.thread37
  %27 = phi double [ %i.q, %PyObject_TypeCheck.exit17.thread ], [ %.sroa.7.1.i, %_Py_rc_quot.exit ], [ %26, %.thread37 ]
  %28 = phi double [ %i.p, %PyObject_TypeCheck.exit17.thread ], [ %.sroa.040.1.i, %_Py_rc_quot.exit ], [ %25, %.thread37 ]
  %i.bd = load i32, ptr %i.d, align 4, !tbaa !7
  %i.be = icmp eq i32 %i.bd, 33
  br i1 %i.be, label %bb.r, label %bb.s
end_hunk_25
begin_hunk_26_@complex_div:bb.a
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.w, %bb.v, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.bj, %_PyFreeList_Pop.exit.i ], [ %i.bo, %bb.v ], [ %i.bo, %bb.w ] ; 4 uses
  call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !25
  %29 = getelementptr i8, ptr %.sink.i, i64 16
  store double %28, ptr %29, align 8, !tbaa !23
  %i.bv = getelementptr i8, ptr %.sink.i, i64 24
  store double %27, ptr %i.bv, align 8, !tbaa !23
  br label %PyComplex_FromCComplex.exit

PyComplex_FromCComplex.exit:                      ; preds = %_PyObject_Init.exit.i, %bb.u, %bb.q, %bb.l, %PyObject_TypeCheck.exit19, %bb.r
end_hunk_26
begin_hunk_27_@llvm.copysign.v2f64
declare <2 x double> @llvm.copysign.v2f64(<2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_27
