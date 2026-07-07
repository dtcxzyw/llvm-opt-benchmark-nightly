inline.NumInlined: 56
inline.NumDeleted: 25
begin_hunk_0_@cmath_isclose:bb.a
  %.0 = phi ptr [ null, %.thread69 ], [ null, %bb.d ], [ null, %.thread83 ], [ %i.bh, %cmath_isclose_impl.exit.thread ], [ null, %bb.o ], [ null, %bb.j ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @cmath_isfinite(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %1) #7 ; 2 uses
  %i.b = tail call ptr @PyErr_Occurred() #7
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = extractvalue { double, double } %i.a, 0
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp one double %i.e, +inf
  %i.g = tail call double @llvm.fabs.f64(double %i.c)
  %i.h = fcmp one double %i.g, +inf
  %i.i = select i1 %i.f, i1 %i.h, i1 false
  %i.j = zext i1 %i.i to i64
  %i.k = tail call ptr @PyBool_FromLong(i64 noundef %i.j) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %i.k, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @cmath_isinf(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %1) #7 ; 2 uses
  %i.b = tail call ptr @PyErr_Occurred() #7
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = extractvalue { double, double } %i.a, 0
  %i.e = tail call double @llvm.fabs.f64(double %i.d) #9
  %i.f = fcmp oeq double %i.e, +inf
  %i.g = tail call double @llvm.fabs.f64(double %i.c) #9
  %i.h = fcmp oeq double %i.g, +inf
  %narrow.i = select i1 %i.f, i1 true, i1 %i.h
  %i.i = zext i1 %narrow.i to i64
  %i.j = tail call ptr @PyBool_FromLong(i64 noundef %i.i) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @cmath_isnan(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %1) #7
  %i.b = tail call ptr @PyErr_Occurred() #7
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.fr = freeze { double, double } %i.a           ; 2 uses
  %i.c = extractvalue { double, double } %.fr, 1
  %i.d = extractvalue { double, double } %.fr, 0
  %i.e = fcmp uno double %i.d, %i.c
  %i.f = zext i1 %i.e to i64
  %i.g = tail call ptr @PyBool_FromLong(i64 noundef %i.f) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @cmath_log(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.14, i64 noundef %2, i64 noundef 1, i64 noundef 2) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %cmath_log_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !12
  %i.d = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %i.c) #7 ; 2 uses
  %i.e = extractvalue { double, double } %i.d, 0
  %i.f = extractvalue { double, double } %i.d, 1
  %i.g = tail call ptr @PyErr_Occurred() #7
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %bb.d, label %cmath_log_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i64 %2, 2
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.011 = phi ptr [ null, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = tail call ptr @__errno_location() #8     ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !6
  %i.l = tail call fastcc { double, double } @c_log(double %i.e, double %i.f) ; 2 uses
  %i.m = extractvalue { double, double } %i.l, 0  ; 2 uses
  %i.n = extractvalue { double, double } %i.l, 1  ; 2 uses
  %.not.i = icmp eq ptr %.011, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call { double, double } @PyComplex_AsCComplex(ptr noundef nonnull %.011) #7 ; 2 uses
  %i.p = tail call ptr @PyErr_Occurred() #7
  %.not19.i = icmp eq ptr %i.p, null
  br i1 %.not19.i, label %bb.h, label %cmath_log_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.q = extractvalue { double, double } %i.o, 1
  %i.r = extractvalue { double, double } %i.o, 0
  %i.s = tail call fastcc { double, double } @c_log(double %i.r, double %i.q) ; 2 uses
  %i.t = extractvalue { double, double } %i.s, 0
  %i.u = extractvalue { double, double } %i.s, 1
  %i.v = tail call { double, double } @_Py_c_quot(double %i.m, double %i.n, double %i.t, double %i.u) #7 ; 2 uses
  %i.w = extractvalue { double, double } %i.v, 0
  %i.x = extractvalue { double, double } %i.v, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.011.0.i = phi double [ %i.w, %bb.h ], [ %i.m, %bb.f ]
  %.sroa.614.0.i = phi double [ %i.x, %bb.h ], [ %i.n, %bb.f ]
  %i.y = load i32, ptr %i.k, align 4, !tbaa !6
  switch i32 %i.y, label %bb.l [
    i32 0, label %bb.m
    i32 33, label %bb.j
    i32 34, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.25) #7
  br label %cmath_log_impl.exit

bb.k:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.26) #7
  br label %cmath_log_impl.exit

bb.l:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !12
  %i.ac = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.ab) #7 ; 0 uses
  br label %cmath_log_impl.exit

bb.m:                                             ; preds = %bb.i
  %i.ad = tail call ptr @PyComplex_FromCComplex(double %.sroa.011.0.i, double %.sroa.614.0.i) #7
  br label %cmath_log_impl.exit

cmath_log_impl.exit:                              ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.g, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ %i.ad, %bb.m ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @cmath_log10(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %1) #7 ; 2 uses
  %i.b = tail call ptr @PyErr_Occurred() #7
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = extractvalue { double, double } %i.a, 0
  %i.e = tail call ptr @__errno_location() #8     ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !6
  %i.f = tail call fastcc { double, double } @c_log(double %i.d, double %i.c) ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !6
  switch i32 %i.g, label %bb.e [
    i32 33, label %bb.c
    i32 34, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.25) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.26) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = extractvalue { double, double } %i.f, 1
  %2 = extractvalue { double, double } %i.f, 0
  %3 = insertelement <2 x double> poison, double %i.j, i64 0
  %4 = insertelement <2 x double> %3, double %2, i64 1
  %5 = fdiv <2 x double> %4, splat (double f0x40026BB1BBB55516) ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  %7 = extractelement <2 x double> %5, i64 1
  %i.k = tail call ptr @PyComplex_FromCComplex(double %7, double %6) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ %i.k, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @cmath_phase(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %1) #7 ; 2 uses
  %i.b = tail call ptr @PyErr_Occurred() #7
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %cmath_phase_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = extractvalue { double, double } %i.a, 0
  %i.e = tail call ptr @__errno_location() #8     ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !6
  %i.f = tail call double @atan2(double noundef %i.c, double noundef %i.d) #7, !tbaa !6
  %i.g = load i32, ptr %i.e, align 4, !tbaa !6
  switch i32 %i.g, label %bb.e [
    i32 0, label %bb.f
    i32 33, label %bb.c
    i32 34, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.25) #7
  br label %cmath_phase_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.26) #7
  br label %cmath_phase_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !12
  %i.k = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.j) #7 ; 0 uses
  br label %cmath_phase_impl.exit

bb.f:                                             ; preds = %bb.b
  %i.l = tail call ptr @PyFloat_FromDouble(double noundef %i.f) #7
  br label %cmath_phase_impl.exit

cmath_phase_impl.exit:                            ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.l, %bb.f ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @cmath_polar(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %1) #7 ; 2 uses
  %i.b = tail call ptr @PyErr_Occurred() #7
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %cmath_polar_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { double, double } %i.a, 1  ; 2 uses
  %i.d = extractvalue { double, double } %i.a, 0  ; 2 uses
  %i.e = tail call ptr @__errno_location() #8     ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !6
  %i.f = tail call double @atan2(double noundef %i.c, double noundef %i.d) #7, !tbaa !6
  %i.g = tail call double @_Py_c_abs(double %i.d, double %i.c) #7
  %i.h = load i32, ptr %i.e, align 4, !tbaa !6
  switch i32 %i.h, label %bb.e [
    i32 0, label %bb.f
    i32 33, label %bb.c
    i32 34, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.25) #7
  br label %cmath_polar_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.26) #7
  br label %cmath_polar_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !12
  %i.l = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.k) #7 ; 0 uses
  br label %cmath_polar_impl.exit

bb.f:                                             ; preds = %bb.b
  %i.m = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.32, double noundef %i.g, double noundef %i.f) #7
  br label %cmath_polar_impl.exit

cmath_polar_impl.exit:                            ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.m, %bb.f ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @cmath_rect(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.18, i64 noundef %2, i64 noundef 2, i64 noundef 2) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %cmath_rect_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val24 = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not27 = icmp eq ptr %.val24, @PyFloat_Type
  br i1 %.not27, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val26 = load double, ptr %i.d, align 8, !tbaa !21
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.e = tail call double @PyFloat_AsDouble(ptr noundef nonnull %i.b) #7 ; 2 uses
  %i.f = fcmp oeq double %i.e, -1.000000e+00
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @PyErr_Occurred() #7
  %.not21 = icmp eq ptr %i.g, null
  br i1 %.not21, label %bb.g, label %cmath_rect_impl.exit

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.015 = phi double [ %.val26, %bb.d ], [ -1.000000e+00, %bb.f ], [ %i.e, %bb.e ] ; 11 uses
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val = load ptr, ptr %i.j, align 8, !tbaa !20
  %.not28 = icmp eq ptr %.val, @PyFloat_Type
  br i1 %.not28, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val25 = load double, ptr %i.k, align 8, !tbaa !21
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.l = tail call double @PyFloat_AsDouble(ptr noundef nonnull %i.i) #7 ; 2 uses
  %i.m = fcmp oeq double %i.l, -1.000000e+00
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = tail call ptr @PyErr_Occurred() #7
  %.not23 = icmp eq ptr %i.n, null
  br i1 %.not23, label %bb.k, label %cmath_rect_impl.exit

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.0 = phi double [ %.val25, %bb.h ], [ -1.000000e+00, %bb.j ], [ %i.l, %bb.i ] ; 13 uses
  %i.o = tail call ptr @__errno_location() #8     ; 2 uses
  %i.p = tail call double @llvm.fabs.f64(double %.015) ; 2 uses
  %i.q = fcmp ueq double %i.p, +inf               ; 2 uses
  %i.r = tail call double @llvm.fabs.f64(double %.0) ; 2 uses
  %i.s = fcmp ueq double %i.r, +inf               ; 2 uses
  %or.cond28.i = or i1 %i.q, %i.s
  br i1 %or.cond28.i, label %bb.l, label %bb.ac

bb.l:                                             ; preds = %bb.k
  %i.t = fcmp oeq double %i.p, +inf
  br i1 %i.t, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %or.cond.i = tail call i1 @llvm.is.fpclass.f64(double %.0, i32 408)
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.u = fcmp ogt double %.015, 0.000000e+00
  %i.v = tail call double @cos(double noundef %.0) #7, !tbaa !6 ; 2 uses
  br i1 %i.u, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.w = tail call double @llvm.copysign.f64(double +inf, double %i.v)
  %i.x = tail call double @sin(double noundef %.0) #7, !tbaa !6
  %i.y = tail call double @llvm.copysign.f64(double +inf, double %i.x)
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  %i.z = fneg double %i.v
  %i.aa = tail call double @llvm.copysign.f64(double +inf, double %i.z)
  %i.ab = tail call double @sin(double noundef %.0) #7, !tbaa !6
  %i.ac = fneg double %i.ab
  %i.ad = tail call double @llvm.copysign.f64(double +inf, double %i.ac)
  br label %bb.ab

bb.q:                                             ; preds = %bb.m, %bb.l
  br i1 %i.q, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = fcmp une double %.015, 0.000000e+00
  %i.af = tail call double @llvm.copysign.f64(double 1.000000e+00, double %.015)
  %i.ag = fcmp oeq double %i.af, 1.000000e+00     ; 2 uses
  br i1 %i.ae, label %bb.s, label %bb.t
end_hunk_0
