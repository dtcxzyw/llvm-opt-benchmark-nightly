inline.NumInlined: 135
inline.NumDeleted: 39
begin_hunk_0_@_Py_c_neg:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { double, double } @_Py_c_prod(double %0, double %1, double %2, double %3) local_unnamed_addr #0 {
bb.a:
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = insertelement <2 x double> %4, double %0, i64 1 ; 4 uses
  %6 = insertelement <2 x double> poison, double %2, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x double> %5, %7                   ; 3 uses
  %9 = insertelement <2 x double> poison, double %3, i64 0 ; 3 uses
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x double> %5, %10                 ; 2 uses
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %13 = fadd <2 x double> %8, %12                 ; 2 uses
  %14 = fsub <2 x double> %8, %12                 ; 2 uses
  %15 = shufflevector <2 x double> %13, <2 x double> %14, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.a = extractelement <2 x double> %14, i64 1
  %16 = fcmp uno double %i.a, 0.000000e+00
  %17 = extractelement <2 x double> %13, i64 0
  %i.b = fcmp uno double %17, 0.000000e+00
  %or.cond = and i1 %16, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

end_hunk_0
begin_hunk_1_@_Py_c_prod:bb.a

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp oeq double %.pre, 0x7FF0000000000000
  %i.f = insertelement <2 x double> %9, double %2, i64 1
  br i1 %i.e, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.g = phi double [ 0.000000e+00, %bb.c ], [ 1.000000e+00, %bb.b ]
  %i.h = fcmp oeq double %.pre, 0x7FF0000000000000
  %i.i = select i1 %i.h, double 1.000000e+00, double 0.000000e+00
  %i.j = insertelement <2 x double> poison, double %i.i, i64 0
  %i.k = insertelement <2 x double> %i.j, double %i.g, i64 1
  %i.l = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %i.k, <2 x double> %5)
  %18 = insertelement <2 x double> %9, double %2, i64 1 ; 3 uses
  %19 = fcmp uno <2 x double> %18, zeroinitializer
  %20 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %18)
  %21 = select <2 x i1> %19, <2 x double> %20, <2 x double> %18
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.not = phi i1 [ false, %._crit_edge ], [ true, %bb.c ]
  %22 = phi <2 x double> [ %21, %._crit_edge ], [ %i.f, %bb.c ] ; 7 uses
  %23 = phi <2 x double> [ %i.l, %._crit_edge ], [ %5, %bb.c ] ; 7 uses
  %24 = extractelement <2 x double> %22, i64 1
  %i.m = tail call double @llvm.fabs.f64(double %24) #14
  %i.n = fcmp oeq double %i.m, 0x7FF0000000000000
  %25 = extractelement <2 x double> %22, i64 0
  %.pre97 = tail call double @llvm.fabs.f64(double %25) #14 ; 2 uses
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_Py_c_prod:bb.a

.thread:                                          ; preds = %bb.d, %bb.e
  %i.p = phi double [ 0.000000e+00, %bb.e ], [ 1.000000e+00, %bb.d ]
  %i.q = fcmp oeq double %.pre97, 0x7FF0000000000000
  %i.r = select i1 %i.q, double 1.000000e+00, double 0.000000e+00
  %26 = insertelement <2 x double> poison, double %i.r, i64 0
  %27 = insertelement <2 x double> %26, double %i.p, i64 1
  %28 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %27, <2 x double> %22)
  %i.s = fcmp uno <2 x double> %23, zeroinitializer
  %i.t = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %23)
  %i.u = select <2 x i1> %i.s, <2 x double> %i.t, <2 x double> %23
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %29 = shufflevector <2 x double> %8, <2 x double> %11, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.v = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %29)
  %i.w = fcmp oeq <4 x double> %i.v, splat (double 0x7FF0000000000000)
  %i.x = bitcast <4 x i1> %i.w to i4
  %.not102 = icmp eq i4 %i.x, 0
  br i1 %.not102, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = fcmp uno <2 x double> %23, zeroinitializer
  %i.z = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %23)
  %i.aa = select <2 x i1> %i.y, <2 x double> %i.z, <2 x double> %23
  %30 = fcmp uno <2 x double> %22, zeroinitializer
  %31 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %22)
  %32 = select <2 x i1> %30, <2 x double> %31, <2 x double> %22
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %.thread
  %i.ab = phi <2 x double> [ %28, %.thread ], [ %32, %bb.h ], [ %22, %bb.f ] ; 3 uses
  %33 = phi <2 x double> [ %i.u, %.thread ], [ %i.aa, %bb.h ], [ %23, %bb.f ] ; 2 uses
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer
  %35 = fneg <2 x double> %i.ab
  %36 = shufflevector <2 x double> %i.ab, <2 x double> %35, <2 x i32> <i32 1, i32 2>
  %37 = fmul <2 x double> %34, %36
  %38 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %39 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %i.ab, <2 x double> %37)
  %40 = fmul <2 x double> %39, splat (double 0x7FF0000000000000)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.a
  %41 = phi <2 x double> [ %15, %bb.a ], [ %40, %bb.i ], [ %15, %bb.g ] ; 2 uses
  %42 = extractelement <2 x double> %41, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %42, 0
  %43 = extractelement <2 x double> %41, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %43, 1
  ret { double, double } %.fca.1.insert
}

end_hunk_2
begin_hunk_3_@_Py_cr_prod:bb.a
; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_c_quot(double %0, double %1, double %2, double %3) local_unnamed_addr #4 {
bb.a:
  %4 = insertelement <2 x double> poison, double %2, i64 0 ; 2 uses
  %5 = insertelement <2 x double> %4, double %3, i64 1 ; 3 uses
  %6 = fcmp olt <2 x double> %5, zeroinitializer
  %7 = fneg <2 x double> %5                       ; 2 uses
  %8 = select <2 x i1> %6, <2 x double> %7, <2 x double> %5 ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0      ; 2 uses
  %10 = extractelement <2 x double> %8, i64 1     ; 2 uses
  %i.a = fcmp ult double %9, %10
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_Py_c_quot:bb.a
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.d = fdiv double %3, %2                       ; 2 uses
  %i.e = tail call double @llvm.fmuladd.f64(double %3, double %i.d, double %2)
  %11 = fneg double %0
  %12 = insertelement <2 x double> poison, double %11, i64 0
  %13 = insertelement <2 x double> %12, double %1, i64 1
  %14 = insertelement <2 x double> poison, double %i.d, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x double> poison, double %1, i64 0
  %17 = insertelement <2 x double> %16, double %0, i64 1
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %15, <2 x double> %17)
  %19 = insertelement <2 x double> poison, double %i.e, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = fdiv <2 x double> %18, %20
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = fcmp ult double %10, %9
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = fdiv double %2, %3                       ; 2 uses
  %i.h = tail call double @llvm.fmuladd.f64(double %2, double %i.g, double %3)
  %22 = fneg double %0
  %23 = insertelement <2 x double> poison, double %1, i64 0
  %24 = insertelement <2 x double> %23, double %0, i64 1
  %25 = insertelement <2 x double> poison, double %i.g, i64 0
  %26 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> zeroinitializer
  %27 = insertelement <2 x double> poison, double %22, i64 0
  %28 = insertelement <2 x double> %27, double %1, i64 1
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> %26, <2 x double> %28)
  %30 = insertelement <2 x double> poison, double %i.h, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = fdiv <2 x double> %29, %31
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %33 = phi <2 x double> [ splat (double 0x7FF8000000000000), %bb.d ], [ %21, %bb.c ], [ %32, %bb.e ] ; 4 uses
  %34 = extractelement <2 x double> %33, i64 1
  %i.i = fcmp uno double %34, 0.000000e+00
  %35 = extractelement <2 x double> %33, i64 0
  %i.j = fcmp uno double %35, 0.000000e+00
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %36 = insertelement <2 x double> poison, double %1, i64 0
  %37 = insertelement <2 x double> %36, double %0, i64 1 ; 4 uses
  %38 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %37) ; 3 uses
  %39 = fcmp une <2 x double> %38, splat (double 0x7FF0000000000000) ; 3 uses
  %40 = extractelement <2 x i1> %39, i64 0
  %41 = extractelement <2 x i1> %39, i64 1
  %or.cond69.not84 = select i1 %41, i1 %40, i1 false
  %i.k = tail call double @llvm.fabs.f64(double %2) ; 2 uses
  %i.l = fcmp ueq double %i.k, 0x7FF0000000000000
  %or.cond71 = or i1 %or.cond69.not84, %i.l
end_hunk_4
begin_hunk_5_@_Py_c_quot:bb.a
  br i1 %or.cond73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %42 = select <2 x i1> %39, <2 x double> zeroinitializer, <2 x double> splat (double 1.000000e+00)
  %43 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %42, <2 x double> %37) ; 2 uses
  %44 = insertelement <2 x double> poison, double %3, i64 0
  %45 = shufflevector <2 x double> %43, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %46 = shufflevector <2 x double> %44, <2 x double> %7, <2 x i32> <i32 3, i32 0>
  %47 = fmul nnan <2 x double> %45, %46
  %48 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %49 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %43, <2 x double> %48, <2 x double> %47)
  %50 = fmul <2 x double> %49, splat (double 0x7FF0000000000000)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.o = fcmp une double %i.k, 0x7FF0000000000000 ; 2 uses
  %i.p = fcmp une double %i.m, 0x7FF0000000000000 ; 2 uses
  %or.cond75.not86 = and i1 %i.o, %i.p
  %51 = extractelement <2 x double> %38, i64 1
  %i.q = fcmp ueq double %51, 0x7FF0000000000000
  %or.cond77 = or i1 %i.q, %or.cond75.not86
  %52 = extractelement <2 x double> %38, i64 0
  %i.r = fcmp ueq double %52, 0x7FF0000000000000
  %or.cond79 = select i1 %or.cond77, i1 true, i1 %i.r
  br i1 %or.cond79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = select i1 %i.o, double 0.000000e+00, double 1.000000e+00
  %i.t = tail call double @llvm.copysign.f64(double %i.s, double %2)
  %i.u = select i1 %i.p, double 0.000000e+00, double 1.000000e+00
  %i.v = tail call double @llvm.copysign.f64(double %i.u, double %3) ; 2 uses
  %53 = fneg double %i.v
  %54 = insertelement <2 x double> poison, double %i.v, i64 0
  %55 = insertelement <2 x double> %54, double %53, i64 1
  %56 = fmul nnan <2 x double> %37, %55
  %57 = shufflevector <2 x double> %56, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %58 = insertelement <2 x double> poison, double %i.t, i64 0
  %59 = shufflevector <2 x double> %58, <2 x double> poison, <2 x i32> zeroinitializer
  %60 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %37, <2 x double> %59, <2 x double> %57)
  %61 = fmul <2 x double> %60, zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %bb.h, %bb.j, %bb.f
  %62 = phi <2 x double> [ %50, %bb.h ], [ %61, %bb.j ], [ %33, %bb.i ], [ %33, %bb.f ], [ zeroinitializer, %.thread ] ; 2 uses
  %63 = extractelement <2 x double> %62, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %63, 0
  %64 = extractelement <2 x double> %62, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %64, 1
  ret { double, double } %.fca.1.insert
}

end_hunk_5
begin_hunk_6_@_Py_cr_quot:bb.a
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %3 = insertelement <2 x double> poison, double %0, i64 0
  %4 = insertelement <2 x double> %3, double %1, i64 1
  %5 = insertelement <2 x double> poison, double %2, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x double> %4, %6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7_@_Py_cr_quot:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %8 = phi <2 x double> [ %7, %bb.b ], [ zeroinitializer, %bb.c ] ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %9, 0
  %10 = extractelement <2 x double> %8, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %10, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_rc_quot(double noundef %0, double %1, double %2) local_unnamed_addr #4 {
bb.a:
  %3 = insertelement <2 x double> poison, double %1, i64 0
  %4 = insertelement <2 x double> %3, double %2, i64 1 ; 5 uses
  %5 = fcmp olt <2 x double> %4, zeroinitializer
  %6 = fneg <2 x double> %4
  %7 = select <2 x i1> %5, <2 x double> %6, <2 x double> %4 ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0      ; 2 uses
  %9 = extractelement <2 x double> %7, i64 1      ; 2 uses
  %i.a = fcmp ult double %8, %9
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@_Py_rc_quot:bb.a

bb.d:                                             ; preds = %bb.b
  %i.d = fdiv double %2, %1                       ; 2 uses
  %i.e = tail call double @llvm.fmuladd.f64(double %2, double %i.d, double %1)
  %i.f = fneg double %0
  %i.g = fmul double %i.d, %i.f
  %10 = insertelement <2 x double> poison, double %0, i64 0
  %11 = insertelement <2 x double> %10, double %i.g, i64 1
  %12 = insertelement <2 x double> poison, double %i.e, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fdiv <2 x double> %11, %13
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.h = fcmp ult double %9, %8
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = fdiv double %1, %2                       ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %1, double %i.i, double %2)
  %i.k = fmul double %0, %i.i
  %15 = fneg double %0
  %16 = insertelement <2 x double> poison, double %i.k, i64 0
  %17 = insertelement <2 x double> %16, double %15, i64 1
  %18 = insertelement <2 x double> poison, double %i.j, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = fdiv <2 x double> %17, %19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %21 = phi <2 x double> [ zeroinitializer, %bb.c ], [ %14, %bb.d ], [ %20, %bb.f ], [ splat (double 0x7FF8000000000000), %bb.e ] ; 4 uses
  %22 = extractelement <2 x double> %21, i64 0
  %i.l = fcmp ord double %22, 0.000000e+00
  %23 = extractelement <2 x double> %21, i64 1
  %i.m = fcmp ord double %23, 0.000000e+00
  %or.cond.not47 = or i1 %i.l, %i.m
  %i.n = tail call double @llvm.fabs.f64(double %0)
  %i.o = fcmp ueq double %i.n, 0x7FF0000000000000
end_hunk_8
begin_hunk_9_@_Py_rc_quot:bb.a
  br i1 %or.cond43, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %24 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %4)
  %25 = fcmp oeq <2 x double> %24, splat (double 0x7FF0000000000000) ; 3 uses
  %shift = shufflevector <2 x i1> %25, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i1> %25, %shift
  %or.cond45 = extractelement <2 x i1> %foldExtExtBinop, i64 0
  br i1 %or.cond45, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %26 = select <2 x i1> %25, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %27 = fneg double %0
  %28 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %26, <2 x double> %4)
  %29 = insertelement <2 x double> poison, double %0, i64 0
  %30 = insertelement <2 x double> %29, double %27, i64 1
  %31 = fmul nnan <2 x double> %28, %30
  %32 = fmul <2 x double> %31, zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %33 = phi <2 x double> [ %32, %bb.i ], [ %21, %bb.h ], [ %21, %bb.g ] ; 2 uses
  %34 = extractelement <2 x double> %33, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %34, 0
  %35 = extractelement <2 x double> %33, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %35, 1
  ret { double, double } %.fca.1.insert
}

end_hunk_9
begin_hunk_10_@complex_mul:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.Py_complex, align 16        ; 12 uses
  %i.c = alloca double, align 8                   ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !42
  store ptr %1, ptr %i.b, align 8, !tbaa !42
end_hunk_10
begin_hunk_11_@complex_mul:bb.a

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.g = getelementptr i8, ptr %1, i64 16
  %3 = load <2 x double>, ptr %i.g, align 8, !tbaa !23 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val14 = load ptr, ptr %i.h, align 8, !tbaa !19 ; 2 uses
  %.not.i16 = icmp eq ptr %.val14, @PyComplex_Type
end_hunk_11
begin_hunk_12_@complex_mul:bb.a
PyObject_TypeCheck.exit17.thread:                 ; preds = %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit17
  %i.j = getelementptr i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !45
  %i.k = load double, ptr %2, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load double, ptr %i.l, align 8
  %4 = extractelement <2 x double> %3, i64 0
  %5 = extractelement <2 x double> %3, i64 1
  %i.n = tail call { double, double } @_Py_c_prod(double %i.k, double %i.m, double %4, double %5) ; 2 uses
  %i.o = extractvalue { double, double } %i.n, 0  ; 2 uses
  %i.p = extractvalue { double, double } %i.n, 1  ; 2 uses
  store double %i.o, ptr %2, align 16, !tbaa !23
  store double %i.p, ptr %i.l, align 8, !tbaa !23
  %6 = insertelement <2 x double> poison, double %i.o, i64 0
  %7 = insertelement <2 x double> %6, double %i.p, i64 1
  br label %.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit17
end_hunk_12
begin_hunk_13_@complex_mul:bb.a

real_to_double.exit:                              ; preds = %bb.c, %PyObject_TypeCheck.exit.thread.i
  %.in42 = phi ptr [ %i.r, %PyObject_TypeCheck.exit.thread.i ], [ %2, %bb.c ]
  %i.u = load double, ptr %.in42, align 8, !tbaa !23
  %8 = insertelement <2 x double> poison, double %i.u, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = fmul <2 x double> %3, %9                  ; 2 uses
  store <2 x double> %10, ptr %2, align 16, !tbaa !23
  br label %.thread

bb.d:                                             ; preds = %bb.c
end_hunk_13
begin_hunk_14_@complex_mul:bb.a

.thread35:                                        ; preds = %bb.f, %PyObject_TypeCheck.exit.thread.i24
  %.in = phi ptr [ %i.aa, %PyObject_TypeCheck.exit.thread.i24 ], [ %i.c, %bb.f ]
  %i.ad = load double, ptr %.in, align 8, !tbaa !23
  %11 = load <2 x double>, ptr %2, align 16
  %12 = insertelement <2 x double> poison, double %i.ad, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x double> %13, %11                ; 2 uses
  store <2 x double> %14, ptr %2, align 16, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.thread

end_hunk_14
begin_hunk_15_@complex_mul:bb.a
  br label %PyComplex_FromCComplex.exit

.thread:                                          ; preds = %PyObject_TypeCheck.exit17.thread, %real_to_double.exit, %.thread35
  %15 = phi <2 x double> [ %7, %PyObject_TypeCheck.exit17.thread ], [ %10, %real_to_double.exit ], [ %14, %.thread35 ]
  %i.af = load i32, ptr %i.d, align 4, !tbaa !7
  %i.ag = icmp eq i32 %i.af, 33
  br i1 %i.ag, label %bb.h, label %bb.i
end_hunk_15
begin_hunk_16_@complex_mul:bb.a
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.m, %bb.l, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.al, %_PyFreeList_Pop.exit.i ], [ %i.aq, %bb.l ], [ %i.aq, %bb.m ] ; 3 uses
  call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !25
  %i.ax = getelementptr i8, ptr %.sink.i, i64 16
  store <2 x double> %15, ptr %i.ax, align 8, !tbaa !23
  br label %PyComplex_FromCComplex.exit

PyComplex_FromCComplex.exit:                      ; preds = %_PyObject_Init.exit.i, %bb.k, %bb.g, %bb.d, %PyObject_TypeCheck.exit19, %bb.h
end_hunk_16
begin_hunk_17_@complex_div:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.Py_complex, align 16        ; 12 uses
  %i.c = alloca double, align 8                   ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !42
  store ptr %1, ptr %i.b, align 8, !tbaa !42
end_hunk_17
begin_hunk_18_@complex_div:bb.a

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !23 ; 11 uses
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val14 = load ptr, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %.not.i16 = icmp eq ptr %.val14, @PyComplex_Type
end_hunk_18
begin_hunk_19_@complex_div:bb.a
  %i.l = load double, ptr %2, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load double, ptr %i.m, align 8
  %3 = extractelement <2 x double> %i.h, i64 0
  %4 = extractelement <2 x double> %i.h, i64 1
  %i.o = tail call { double, double } @_Py_c_quot(double %i.l, double %i.n, double %3, double %4) ; 2 uses
  %i.p = extractvalue { double, double } %i.o, 0  ; 2 uses
  %i.q = extractvalue { double, double } %i.o, 1  ; 2 uses
  store double %i.p, ptr %2, align 16, !tbaa !23
  store double %i.q, ptr %i.m, align 8, !tbaa !23
  %5 = insertelement <2 x double> poison, double %i.p, i64 0
  %6 = insertelement <2 x double> %5, double %i.q, i64 1
  br label %.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit17
end_hunk_19
begin_hunk_20_@complex_div:bb.a
  br i1 %i.ab, label %bb.g, label %bb.d

bb.d:                                             ; preds = %real_to_double.exit
  %7 = extractelement <2 x double> %i.h, i64 0    ; 3 uses
  %i.ac = fcmp oeq double %7, 0.000000e+00
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_20
begin_hunk_21_@complex_div:bb.a
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %8 = extractelement <2 x double> %i.h, i64 1    ; 2 uses
  %9 = fdiv double %8, %7                         ; 2 uses
  %10 = call double @llvm.fmuladd.f64(double %8, double %9, double %7)
  %i.ad = fneg double %i.v
  %i.ae = fmul double %9, %i.ad
  %11 = insertelement <2 x double> poison, double %i.v, i64 0
  %12 = insertelement <2 x double> %11, double %i.ae, i64 1
  %13 = insertelement <2 x double> poison, double %10, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x double> %12, %14
  br label %bb.i

bb.g:                                             ; preds = %real_to_double.exit
end_hunk_21
begin_hunk_22_@complex_div:bb.a
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %16 = extractelement <2 x double> %i.h, i64 0   ; 2 uses
  %17 = extractelement <2 x double> %i.h, i64 1   ; 2 uses
  %i.ag = fdiv double %16, %17                    ; 2 uses
  %i.ah = call double @llvm.fmuladd.f64(double %16, double %i.ag, double %17)
  %i.ai = fmul double %i.ag, %i.v
  %18 = fneg double %i.v
  %19 = insertelement <2 x double> poison, double %i.ai, i64 0
  %20 = insertelement <2 x double> %19, double %18, i64 1
  %21 = insertelement <2 x double> poison, double %i.ah, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %23 = fdiv <2 x double> %20, %22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %24 = phi <2 x double> [ zeroinitializer, %bb.e ], [ %15, %bb.f ], [ %23, %bb.h ], [ splat (double 0x7FF8000000000000), %bb.g ] ; 4 uses
  %25 = extractelement <2 x double> %24, i64 0
  %i.aj = fcmp ord double %25, 0.000000e+00
  %26 = extractelement <2 x double> %24, i64 1
  %i.ak = fcmp ord double %26, 0.000000e+00
  %or.cond.not47.i = or i1 %i.aj, %i.ak
  %i.al = call double @llvm.fabs.f64(double %i.v)
  %i.am = fcmp ueq double %i.al, 0x7FF0000000000000
end_hunk_22
begin_hunk_23_@complex_div:bb.a
  br i1 %or.cond43.i, label %_Py_rc_quot.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %27 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.h)
  %28 = fcmp oeq <2 x double> %27, splat (double 0x7FF0000000000000) ; 3 uses
  %shift = shufflevector <2 x i1> %28, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i1> %28, %shift
  %or.cond45.i = extractelement <2 x i1> %foldExtExtBinop, i64 0
  br i1 %or.cond45.i, label %bb.k, label %_Py_rc_quot.exit

bb.k:                                             ; preds = %bb.j
  %29 = select <2 x i1> %28, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %30 = fneg double %i.v
  %31 = call <2 x double> @llvm.copysign.v2f64(<2 x double> %29, <2 x double> %i.h)
  %32 = insertelement <2 x double> poison, double %i.v, i64 0
  %33 = insertelement <2 x double> %32, double %30, i64 1
  %34 = fmul nnan <2 x double> %31, %33
  %35 = fmul <2 x double> %34, zeroinitializer
  br label %_Py_rc_quot.exit

_Py_rc_quot.exit:                                 ; preds = %bb.i, %bb.j, %bb.k
  %36 = phi <2 x double> [ %35, %bb.k ], [ %24, %bb.j ], [ %24, %bb.i ] ; 2 uses
  store <2 x double> %36, ptr %2, align 16, !tbaa !23
  br label %.thread

bb.l:                                             ; preds = %bb.c
end_hunk_23
begin_hunk_24_@complex_div:bb.a
  br label %.thread37

.thread37:                                        ; preds = %bb.p, %bb.o
  %i.bb = phi <2 x double> [ %i.ba, %bb.o ], [ zeroinitializer, %bb.p ] ; 2 uses
  store <2 x double> %i.bb, ptr %2, align 16, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.thread

bb.q:                                             ; preds = %bb.n
end_hunk_24
begin_hunk_25_@complex_div:bb.a
  br label %PyComplex_FromCComplex.exit

.thread:                                          ; preds = %PyObject_TypeCheck.exit17.thread, %_Py_rc_quot.exit, %.thread37
  %37 = phi <2 x double> [ %6, %PyObject_TypeCheck.exit17.thread ], [ %36, %_Py_rc_quot.exit ], [ %i.bb, %.thread37 ]
  %i.bd = load i32, ptr %i.d, align 4, !tbaa !7
  %i.be = icmp eq i32 %i.bd, 33
  br i1 %i.be, label %bb.r, label %bb.s
end_hunk_25
begin_hunk_26_@complex_div:bb.a
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.w, %bb.v, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.bj, %_PyFreeList_Pop.exit.i ], [ %i.bo, %bb.v ], [ %i.bo, %bb.w ] ; 3 uses
  call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !25
  %i.bv = getelementptr i8, ptr %.sink.i, i64 16
  store <2 x double> %37, ptr %i.bv, align 8, !tbaa !23
  br label %PyComplex_FromCComplex.exit

PyComplex_FromCComplex.exit:                      ; preds = %_PyObject_Init.exit.i, %bb.u, %bb.q, %bb.l, %PyObject_TypeCheck.exit19, %bb.r
end_hunk_26
begin_hunk_27_@llvm.copysign.v2f64
declare <2 x double> @llvm.copysign.v2f64(<2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_27
