inline.NumInlined: 56
inline.NumDeleted: 25
begin_hunk_0_@cmath_isclose:bb.a

.thread69:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]   ; 4 uses
  %i.i = phi i64 [ %i.f, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.k = call { double, double } @PyComplex_AsCComplex(ptr noundef %i.j) #7 ; 2 uses
  %i.l = extractvalue { double, double } %i.k, 0  ; 4 uses
  %i.m = extractvalue { double, double } %i.k, 1  ; 4 uses
  %i.n = call ptr @PyErr_Occurred() #7
  %.not53 = icmp eq ptr %i.n, null
  br i1 %.not53, label %bb.d, label %bb.v

bb.d:                                             ; preds = %.thread69
  %i.o = getelementptr i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = call { double, double } @PyComplex_AsCComplex(ptr noundef %i.p) #7 ; 2 uses
  %i.r = extractvalue { double, double } %i.q, 0  ; 4 uses
  %i.s = extractvalue { double, double } %i.q, 1  ; 4 uses
  %i.t = call ptr @PyErr_Occurred() #7
  %.not54 = icmp eq ptr %i.t, null
  br i1 %.not54, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %.not55 = icmp eq i64 %i.i, 0
  br i1 %.not55, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.h, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12   ; 4 uses
  %.not56 = icmp eq ptr %i.v, null
  br i1 %.not56, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val63 = load ptr, ptr %i.w, align 8, !tbaa !20
  %.not73 = icmp eq ptr %.val63, @PyFloat_Type
  br i1 %.not73, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val65 = load double, ptr %i.x, align 8, !tbaa !21
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.y = call double @PyFloat_AsDouble(ptr noundef nonnull %i.v) #7 ; 2 uses
  %i.z = fcmp oeq double %i.y, -1.000000e+00
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = call ptr @PyErr_Occurred() #7
  %.not58 = icmp eq ptr %i.aa, null
  br i1 %.not58, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.041 = phi double [ %.val65, %bb.h ], [ -1.000000e+00, %bb.j ], [ %i.y, %bb.i ] ; 2 uses
  %.not59 = icmp eq i64 %i.i, 1
  br i1 %.not59, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.1 = phi double [ %.041, %bb.k ], [ 1.000000e-09, %bb.f ] ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !12 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !20
  %.not74 = icmp eq ptr %.val, @PyFloat_Type
  br i1 %.not74, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val64 = load double, ptr %i.ae, align 8, !tbaa !21
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.af = call double @PyFloat_AsDouble(ptr noundef nonnull %i.ac) #7 ; 2 uses
  %i.ag = fcmp oeq double %i.af, -1.000000e+00
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = call ptr @PyErr_Occurred() #7
  %.not61 = icmp eq ptr %i.ah, null
  br i1 %.not61, label %.thread83, label %bb.v

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.k, %bb.e
  %.042 = phi double [ %.val64, %bb.m ], [ 0.000000e+00, %bb.e ], [ %i.af, %bb.n ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %.2 = phi double [ %.1, %bb.m ], [ 1.000000e-09, %bb.e ], [ %.1, %bb.n ], [ %.041, %bb.k ] ; 3 uses
  %i.ai = fcmp olt double %.2, 0.000000e+00
  %i.aj = fcmp olt double %.042, 0.000000e+00
  %or.cond.i = or i1 %i.aj, %i.ai
  br i1 %or.cond.i, label %.thread83, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = fcmp oeq double %i.l, %i.r
  %i.al = fcmp oeq double %i.m, %i.s
  %or.cond27.i = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond27.i, label %cmath_isclose_impl.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = insertelement <4 x double> poison, double %i.l, i64 0
  %i.an = insertelement <4 x double> %i.am, double %i.m, i64 1
  %i.ao = insertelement <4 x double> %i.an, double %i.r, i64 2
  %i.ap = insertelement <4 x double> %i.ao, double %i.s, i64 3
  %.fr87 = freeze <4 x double> %i.ap
  %i.aq = call <4 x double> @llvm.fabs.v4f64(<4 x double> %.fr87)
  %i.ar = fcmp oeq <4 x double> %i.aq, splat (double +inf)
  %i.as = bitcast <4 x i1> %i.ar to i4
  %.not88 = icmp eq i4 %i.as, 0
  br i1 %.not88, label %bb.s, label %cmath_isclose_impl.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.at = call { double, double } @_Py_c_diff(double %i.l, double %i.m, double %i.r, double %i.s) #7 ; 2 uses
  %i.au = extractvalue { double, double } %i.at, 0
  %i.av = extractvalue { double, double } %i.at, 1
  %i.aw = call double @_Py_c_abs(double %i.au, double %i.av) #7 ; 3 uses
  %i.ax = call double @_Py_c_abs(double %i.r, double %i.s) #7
  %i.ay = fmul double %.2, %i.ax
  %i.az = fcmp ugt double %i.aw, %i.ay
  br i1 %i.az, label %bb.t, label %cmath_isclose_impl.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ba = call double @_Py_c_abs(double %i.l, double %i.m) #7
  %i.bb = fmul double %.2, %i.ba
  %i.bc = fcmp ugt double %i.aw, %i.bb
  br i1 %i.bc, label %bb.u, label %cmath_isclose_impl.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bd = fcmp ole double %i.aw, %.042
  %i.be = zext i1 %i.bd to i64
  br label %cmath_isclose_impl.exit.thread

.thread83:                                        ; preds = %bb.o, %bb.p
  %i.bf = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !12
  call void @PyErr_SetString(ptr noundef %i.bf, ptr noundef nonnull @.str.31) #7
  %i.bg = call ptr @PyErr_Occurred() #7
  %.not62 = icmp eq ptr %i.bg, null
  br i1 %.not62, label %cmath_isclose_impl.exit.thread, label %bb.v

cmath_isclose_impl.exit.thread:                   ; preds = %bb.u, %bb.s, %bb.t, %bb.q, %bb.r, %.thread83
  %.0.i72 = phi i64 [ -1, %.thread83 ], [ %i.be, %bb.u ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.q ], [ 0, %bb.r ]
  %i.bh = call ptr @PyBool_FromLong(i64 noundef %.0.i72) #7
  br label %bb.v

bb.v:                                             ; preds = %.thread83, %bb.o, %bb.j, %bb.d, %.thread69, %bb.c, %cmath_isclose_impl.exit.thread
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
  %i.a = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %1) #7 ; 2 uses
  %i.b = tail call ptr @PyErr_Occurred() #7
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = extractvalue { double, double } %i.a, 1
  %3 = extractvalue { double, double } %i.a, 0
  %4 = fcmp uno double %3, 0.000000e+00
  %i.c = fcmp uno double %2, 0.000000e+00
  %5 = select i1 %4, i1 true, i1 %i.c
  %i.d = zext i1 %5 to i64
  %i.e = tail call ptr @PyBool_FromLong(i64 noundef %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ]
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
  %i.k = fdiv double %i.j, f0x40026BB1BBB55516
  %i.l = extractvalue { double, double } %i.f, 0
  %i.m = fdiv double %i.l, f0x40026BB1BBB55516
  %i.n = tail call ptr @PyComplex_FromCComplex(double %i.m, double %i.k) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ %i.n, %bb.e ]
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
end_hunk_0
