inline.NumInlined: 135
inline.NumDeleted: 39
begin_hunk_0_@_Py_cr_prod:bb.a
  %i.b = fmul double %1, %2
  %.fca.0.insert = insertvalue { double, double } poison, double %i.a, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.b, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_c_quot(double %0, double %1, double %2, double %3) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp olt double %2, 0.000000e+00
  %i.b = fneg double %2
  %i.c = select i1 %i.a, double %i.b, double %2   ; 2 uses
  %i.d = fcmp olt double %3, 0.000000e+00
  %i.e = fneg double %3                           ; 2 uses
  %i.f = select i1 %i.d, double %i.e, double %3   ; 2 uses
  %i.g = fcmp ult double %i.c, %i.f
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp oeq double %2, 0.000000e+00
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.i, align 4, !tbaa !7
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.j = fdiv double %3, %2                       ; 3 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %3, double %i.j, double %2) ; 2 uses
  %i.l = tail call double @llvm.fmuladd.f64(double %1, double %i.j, double %0)
  %i.m = fdiv double %i.l, %i.k
  %i.n = fneg double %0
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.j, double %1)
  %i.p = fdiv double %i.o, %i.k
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.q = fcmp ult double %i.f, %i.c
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = fdiv double %2, %3                       ; 3 uses
  %i.s = tail call double @llvm.fmuladd.f64(double %2, double %i.r, double %3) ; 2 uses
  %i.t = tail call double @llvm.fmuladd.f64(double %0, double %i.r, double %1)
  %i.u = fdiv double %i.t, %i.s
  %i.v = fneg double %0
  %i.w = tail call double @llvm.fmuladd.f64(double %1, double %i.r, double %i.v)
  %i.x = fdiv double %i.w, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.066.0 = phi double [ +qnan, %bb.d ], [ %i.m, %bb.c ], [ %i.u, %bb.e ] ; 3 uses
  %.sroa.8.0 = phi double [ +qnan, %bb.d ], [ %i.p, %bb.c ], [ %i.x, %bb.e ] ; 3 uses
  %i.y = fcmp uno double %.sroa.066.0, 0.000000e+00
  %i.z = fcmp uno double %.sroa.8.0, 0.000000e+00
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.ab = fcmp une double %i.aa, +inf             ; 2 uses
  %i.ac = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.ad = fcmp une double %i.ac, +inf             ; 2 uses
  %or.cond69.not84 = select i1 %i.ab, i1 %i.ad, i1 false
  %i.ae = tail call double @llvm.fabs.f64(double %2) ; 2 uses
  %i.af = fcmp ueq double %i.ae, +inf
  %or.cond71 = or i1 %or.cond69.not84, %i.af
  %i.ag = tail call double @llvm.fabs.f64(double %3) ; 2 uses
  %i.ah = fcmp ueq double %i.ag, +inf
  %or.cond73 = or i1 %or.cond71, %i.ah
  br i1 %or.cond73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = select i1 %i.ab, double 0.000000e+00, double 1.000000e+00
  %i.aj = tail call double @llvm.copysign.f64(double %i.ai, double %0) ; 2 uses
  %i.ak = select i1 %i.ad, double 0.000000e+00, double 1.000000e+00
  %i.al = tail call double @llvm.copysign.f64(double %i.ak, double %1) ; 2 uses
  %i.am = fmul nnan double %3, %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %i.aj, double %2, double %i.am)
  %i.ao = fmul double %i.an, +inf
  %i.ap = fmul nnan double %i.aj, %i.e
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.al, double %2, double %i.ap)
  %i.ar = fmul double %i.aq, +inf
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.as = fcmp une double %i.ae, +inf             ; 2 uses
  %i.at = fcmp une double %i.ag, +inf             ; 2 uses
  %or.cond75.not86 = and i1 %i.as, %i.at
  %i.au = fcmp ueq double %i.aa, +inf
  %or.cond77 = or i1 %i.au, %or.cond75.not86
  %i.av = fcmp ueq double %i.ac, +inf
  %or.cond79 = select i1 %or.cond77, i1 true, i1 %i.av
  br i1 %or.cond79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = select i1 %i.as, double 0.000000e+00, double 1.000000e+00
  %i.ax = tail call double @llvm.copysign.f64(double %i.aw, double %2) ; 2 uses
  %i.ay = select i1 %i.at, double 0.000000e+00, double 1.000000e+00
  %i.az = tail call double @llvm.copysign.f64(double %i.ay, double %3) ; 2 uses
  %i.ba = fmul nnan double %1, %i.az
  %i.bb = tail call double @llvm.fmuladd.f64(double %0, double %i.ax, double %i.ba)
  %i.bc = fmul double %i.bb, 0.000000e+00
  %i.bd = fneg double %i.az
  %i.be = fmul nnan double %0, %i.bd
  %i.bf = tail call double @llvm.fmuladd.f64(double %1, double %i.ax, double %i.be)
  %i.bg = fmul double %i.bf, 0.000000e+00
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %bb.h, %bb.j, %bb.f
  %.sroa.066.1 = phi double [ %i.ao, %bb.h ], [ %i.bc, %bb.j ], [ %.sroa.066.0, %bb.i ], [ %.sroa.066.0, %bb.f ], [ 0.000000e+00, %.thread ]
  %.sroa.8.1 = phi double [ %i.ar, %bb.h ], [ %i.bg, %bb.j ], [ %.sroa.8.0, %bb.i ], [ %.sroa.8.0, %bb.f ], [ 0.000000e+00, %.thread ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.066.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.8.1, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_cr_quot(double %0, double %1, double noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp une double %2, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fdiv double %0, %2
  %i.c = fdiv double %1, %2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.d, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0 = phi double [ %i.b, %bb.b ], [ 0.000000e+00, %bb.c ]
  %.sroa.5.0 = phi double [ %i.c, %bb.b ], [ 0.000000e+00, %bb.c ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.5.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_rc_quot(double noundef %0, double %1, double %2) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = fneg double %1
  %i.c = select i1 %i.a, double %i.b, double %1   ; 2 uses
  %i.d = fcmp olt double %2, 0.000000e+00
  %i.e = fneg double %2
  %i.f = select i1 %i.d, double %i.e, double %2   ; 2 uses
  %i.g = fcmp ult double %i.c, %i.f
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp oeq double %1, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.i, align 4, !tbaa !7
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = fdiv double %2, %1                       ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %2, double %i.j, double %1) ; 2 uses
  %i.l = fdiv double %0, %i.k
  %i.m = fneg double %0
  %i.n = fmul double %i.j, %i.m
  %i.o = fdiv double %i.n, %i.k
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.p = fcmp ult double %i.f, %i.c
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = fdiv double %1, %2                       ; 2 uses
  %i.r = tail call double @llvm.fmuladd.f64(double %1, double %i.q, double %2) ; 2 uses
  %i.s = fmul double %0, %i.q
  %i.t = fdiv double %i.s, %i.r
  %i.u = fneg double %0
  %i.v = fdiv double %i.u, %i.r
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %.sroa.040.0 = phi double [ 0.000000e+00, %bb.c ], [ %i.l, %bb.d ], [ %i.t, %bb.f ], [ +qnan, %bb.e ] ; 3 uses
  %.sroa.7.0 = phi double [ 0.000000e+00, %bb.c ], [ %i.o, %bb.d ], [ %i.v, %bb.f ], [ +qnan, %bb.e ] ; 3 uses
  %i.w = fcmp ord double %.sroa.040.0, 0.000000e+00
  %i.x = fcmp ord double %.sroa.7.0, 0.000000e+00
  %or.cond.not47 = or i1 %i.w, %i.x
  %i.y = tail call double @llvm.fabs.f64(double %0)
  %i.z = fcmp ueq double %i.y, +inf
  %or.cond43 = or i1 %i.z, %or.cond.not47
  br i1 %or.cond43, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call double @llvm.fabs.f64(double %1)
  %i.ab = fcmp oeq double %i.aa, +inf             ; 2 uses
  %i.ac = tail call double @llvm.fabs.f64(double %2)
  %i.ad = fcmp oeq double %i.ac, +inf             ; 2 uses
  %or.cond45 = or i1 %i.ab, %i.ad
  br i1 %or.cond45, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = select i1 %i.ab, double 1.000000e+00, double 0.000000e+00
  %i.af = tail call double @llvm.copysign.f64(double %i.ae, double %1)
  %i.ag = select i1 %i.ad, double 1.000000e+00, double 0.000000e+00
  %i.ah = tail call double @llvm.copysign.f64(double %i.ag, double %2)
  %i.ai = fmul nnan double %0, %i.af
  %i.aj = fmul double %i.ai, 0.000000e+00
  %i.ak = fneg double %0
  %i.al = fmul nnan double %i.ah, %i.ak
  %i.am = fmul double %i.al, 0.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.sroa.040.1 = phi double [ %i.aj, %bb.i ], [ %.sroa.040.0, %bb.h ], [ %.sroa.040.0, %bb.g ]
  %.sroa.7.1 = phi double [ %i.am, %bb.i ], [ %.sroa.7.0, %bb.h ], [ %.sroa.7.0, %bb.g ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.040.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.7.1, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_c_pow(double %0, double %1, double %2, double %3) local_unnamed_addr #5 {
bb.a:
  %i.a = fcmp oeq double %2, 0.000000e+00
  %i.b = fcmp oeq double %3, 0.000000e+00
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %_Py_ADJUST_ERANGE2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %0, 0.000000e+00
  %i.d = fcmp oeq double %1, 0.000000e+00
  %or.cond5 = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond5, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp une double %3, 0.000000e+00
  %i.f = fcmp olt double %2, 0.000000e+00
  %or.cond8 = or i1 %i.f, %i.e
  br i1 %or.cond8, label %bb.d, label %_Py_ADJUST_ERANGE2.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.g, align 4, !tbaa !7
  br label %_Py_ADJUST_ERANGE2.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call double @hypot(double noundef %0, double noundef %1) #14, !tbaa !7 ; 2 uses
  %i.i = tail call double @pow(double noundef %i.h, double noundef %2) #14, !tbaa !7 ; 2 uses
  %i.j = tail call double @atan2(double noundef %1, double noundef %0) #14, !tbaa !7 ; 2 uses
  %i.k = fmul double %2, %i.j                     ; 2 uses
  %i.l = fcmp une double %3, 0.000000e+00
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = fneg double %i.j
  %i.n = fmul double %3, %i.m
  %i.o = tail call double @exp(double noundef %i.n) #14, !tbaa !7
  %i.p = fmul double %i.i, %i.o
  %i.q = tail call double @log(double noundef %i.h) #14, !tbaa !7
  %i.r = tail call double @llvm.fmuladd.f64(double %3, double %i.q, double %i.k)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.032 = phi double [ %i.p, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %.0 = phi double [ %i.r, %bb.f ], [ %i.k, %bb.e ] ; 2 uses
  %i.s = tail call double @cos(double noundef %.0) #14, !tbaa !7
  %i.t = fmul double %.032, %i.s                  ; 4 uses
  %i.u = tail call double @sin(double noundef %.0) #14, !tbaa !7
  %i.v = fmul double %.032, %i.u                  ; 4 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.t)
  %or.cond.i = fcmp oeq double %i.w, +inf
  %i.x = tail call double @llvm.fabs.f64(double %i.v)
  %i.y = fcmp oeq double %i.x, +inf
  %or.cond5.i = or i1 %or.cond.i, %i.y
  %i.z = tail call ptr @__errno_location() #13    ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7   ; 2 uses
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.sink.split.i, label %_Py_ADJUST_ERANGE2.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i32 %i.aa, 34
  br i1 %i.ac, label %.sink.split.i, label %_Py_ADJUST_ERANGE2.exit

.sink.split.i:                                    ; preds = %bb.i, %bb.h
  %.sink.i = phi i32 [ 34, %bb.h ], [ 0, %bb.i ]
  store i32 %.sink.i, ptr %i.z, align 4, !tbaa !7
  br label %_Py_ADJUST_ERANGE2.exit

_Py_ADJUST_ERANGE2.exit:                          ; preds = %.sink.split.i, %bb.i, %bb.h, %bb.d, %bb.c, %bb.a
  %.sroa.030.0 = phi double [ 0.000000e+00, %bb.d ], [ 1.000000e+00, %bb.a ], [ 0.000000e+00, %bb.c ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %.sink.split.i ]
  %.sroa.531.0 = phi double [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.c ], [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ %i.v, %.sink.split.i ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.030.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.531.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @_Py_c_abs(double %0, double %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.b = fcmp ueq double %i.a, +inf
  %i.c = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.d = fcmp ueq double %i.c, +inf
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %i.a, +inf
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #13
  store i32 0, ptr %i.f, align 4, !tbaa !7
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = fcmp oeq double %i.c, +inf
  br i1 %i.g, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__errno_location() #13
  store i32 0, ptr %i.h, align 4, !tbaa !7
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.i = tail call double @hypot(double noundef %0, double noundef %1) #14, !tbaa !7 ; 3 uses
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fcmp ueq double %i.j, +inf
  %i.l = tail call ptr @__errno_location() #13    ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 34, ptr %i.l, align 4, !tbaa !7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.e, %bb.c
  %.0 = phi double [ +qnan, %bb.d ], [ +inf, %bb.c ], [ +inf, %bb.e ], [ %i.i, %bb.h ], [ %i.i, %bb.g ]
  ret double %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyComplex_FromCComplex(double %0, double %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 11184    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_PyFreeList_Pop.exit

_PyFreeList_Pop.exit:                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  store ptr %i.e, ptr %i.c, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %i.b, i64 11192    ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !18
  br label %_PyObject_Init.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyObject_Malloc(i64 noundef 32) #14 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @PyErr_NoMemory() #14
  br label %bb.f

end_hunk_0
begin_hunk_1_@complex_abs:bb.a
  %i.d = load double, ptr %i.c, align 8           ; 2 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.b) ; 2 uses
  %i.f = fcmp ueq double %i.e, +inf
  %i.g = tail call double @llvm.fabs.f64(double %i.d) ; 2 uses
  %i.h = fcmp ueq double %i.g, +inf
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp oeq double %i.e, +inf
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__errno_location() #13
  br label %_Py_c_abs.exit.thread.sink.split

bb.d:                                             ; preds = %bb.b
  %i.k = fcmp oeq double %i.g, +inf
  %i.l = tail call ptr @__errno_location() #13    ; 2 uses
  br i1 %i.k, label %_Py_c_abs.exit.thread.sink.split, label %_Py_c_abs.exit

bb.e:                                             ; preds = %bb.a
  %i.m = tail call double @hypot(double noundef %i.b, double noundef %i.d) #14, !tbaa !7 ; 2 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp ueq double %i.n, +inf
  %i.p = tail call ptr @__errno_location() #13    ; 2 uses
  br i1 %i.o, label %_Py_c_abs.exit.thread7, label %_Py_c_abs.exit.thread.sink.split

_Py_c_abs.exit.thread7:                           ; preds = %bb.e
  store i32 34, ptr %i.p, align 4, !tbaa !7
  br label %bb.f

_Py_c_abs.exit:                                   ; preds = %bb.d
  %.pr = load i32, ptr %i.l, align 4, !tbaa !7
  %i.q = icmp eq i32 %.pr, 34
  br i1 %i.q, label %bb.f, label %_Py_c_abs.exit.thread

bb.f:                                             ; preds = %_Py_c_abs.exit.thread7, %_Py_c_abs.exit
  %i.r = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !42
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.12) #14
  br label %bb.g

_Py_c_abs.exit.thread.sink.split:                 ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ], [ %i.p, %bb.e ]
  %.0.i6.ph = phi double [ +inf, %bb.d ], [ +inf, %bb.c ], [ %i.m, %bb.e ]
  store i32 0, ptr %.sink, align 4, !tbaa !7
  br label %_Py_c_abs.exit.thread

_Py_c_abs.exit.thread:                            ; preds = %_Py_c_abs.exit.thread.sink.split, %_Py_c_abs.exit
  %.0.i6 = phi double [ +qnan, %_Py_c_abs.exit ], [ %.0.i6.ph, %_Py_c_abs.exit.thread.sink.split ]
  %i.s = tail call ptr @PyFloat_FromDouble(double noundef %.0.i6) #14
  br label %bb.g

bb.g:                                             ; preds = %_Py_c_abs.exit.thread, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %i.s, %_Py_c_abs.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @complex_bool(ptr nofree noundef readonly captures(none) %0) #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !26
  %i.c = fcmp une double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !43
  %i.f = fcmp une double %i.e, 0.000000e+00
  %i.g = zext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ 1, %bb.a ], [ %i.g, %bb.b ]
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal ptr @complex_div(ptr noundef %0, ptr noundef %1) #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.Py_complex, align 16        ; 13 uses
  %i.c = alloca double, align 8                   ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !42
  store ptr %1, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.d = tail call ptr @__errno_location() #13    ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.e = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val15 = load ptr, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq ptr %.val15, @PyComplex_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val15, ptr noundef nonnull @PyComplex_Type) #14
  %.not39 = icmp eq i32 %i.f, 0
  br i1 %.not39, label %bb.m, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !23 ; 5 uses
  %i.i = extractelement <2 x double> %i.h, i64 1  ; 7 uses
  %i.j = extractelement <2 x double> %i.h, i64 0  ; 8 uses
  %i.k = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val14 = load ptr, ptr %i.k, align 8, !tbaa !19 ; 2 uses
  %.not.i16 = icmp eq ptr %.val14, @PyComplex_Type
  br i1 %.not.i16, label %PyObject_TypeCheck.exit17.thread, label %PyObject_TypeCheck.exit17

PyObject_TypeCheck.exit17:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.l = tail call i32 @PyType_IsSubtype(ptr noundef %.val14, ptr noundef nonnull @PyComplex_Type) #14
  %.not40 = icmp eq i32 %i.l, 0
  br i1 %.not40, label %bb.b, label %PyObject_TypeCheck.exit17.thread

PyObject_TypeCheck.exit17.thread:                 ; preds = %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit17
  %i.m = getelementptr i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !45
  %i.n = load double, ptr %2, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load double, ptr %i.o, align 8
  %i.q = tail call { double, double } @_Py_c_quot(double %i.n, double %i.p, double %i.j, double %i.i) ; 2 uses
  %i.r = extractvalue { double, double } %i.q, 0  ; 2 uses
  %i.s = extractvalue { double, double } %i.q, 1  ; 2 uses
  store double %i.r, ptr %2, align 16, !tbaa !23
  store double %i.s, ptr %i.o, align 8, !tbaa !23
  br label %.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit17
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, @PyFloat_Type
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.b
  %i.t = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PyFloat_Type) #14
  %.not8.i = icmp eq i32 %i.t, 0
  br i1 %.not8.i, label %bb.c, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.b
  %i.u = getelementptr i8, ptr %0, i64 16
  br label %real_to_double.exit

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.v = call i32 @_Py_convert_int_to_double(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #14
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.l, label %real_to_double.exit

real_to_double.exit:                              ; preds = %bb.c, %PyObject_TypeCheck.exit.thread.i
  %.in46 = phi ptr [ %i.u, %PyObject_TypeCheck.exit.thread.i ], [ %2, %bb.c ]
  %i.x = load double, ptr %.in46, align 8, !tbaa !23 ; 7 uses
  %i.y = fcmp olt <2 x double> %i.h, zeroinitializer
  %i.z = fneg <2 x double> %i.h
  %i.aa = select <2 x i1> %i.y, <2 x double> %i.z, <2 x double> %i.h ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0 ; 2 uses
  %i.ac = extractelement <2 x double> %i.aa, i64 1 ; 2 uses
  %i.ad = fcmp ult double %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.d

bb.d:                                             ; preds = %real_to_double.exit
  %i.ae = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 33, ptr %i.d, align 4, !tbaa !7
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.af = fdiv double %i.i, %i.j                  ; 2 uses
  %i.ag = call double @llvm.fmuladd.f64(double %i.i, double %i.af, double %i.j) ; 2 uses
  %i.ah = fdiv double %i.x, %i.ag
  %i.ai = fneg double %i.x
  %i.aj = fmul double %i.af, %i.ai
  %i.ak = fdiv double %i.aj, %i.ag
  br label %bb.i

bb.g:                                             ; preds = %real_to_double.exit
  %i.al = fcmp ult double %i.ac, %i.ab
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = fdiv double %i.j, %i.i                  ; 2 uses
  %i.an = call double @llvm.fmuladd.f64(double %i.j, double %i.am, double %i.i) ; 2 uses
  %i.ao = fmul double %i.am, %i.x
  %i.ap = fdiv double %i.ao, %i.an
  %i.aq = fneg double %i.x
  %i.ar = fdiv double %i.aq, %i.an
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.040.0.i = phi double [ 0.000000e+00, %bb.e ], [ %i.ah, %bb.f ], [ %i.ap, %bb.h ], [ +qnan, %bb.g ] ; 3 uses
  %.sroa.7.0.i = phi double [ 0.000000e+00, %bb.e ], [ %i.ak, %bb.f ], [ %i.ar, %bb.h ], [ +qnan, %bb.g ] ; 3 uses
  %i.as = fcmp ord double %.sroa.040.0.i, 0.000000e+00
  %i.at = fcmp ord double %.sroa.7.0.i, 0.000000e+00
  %or.cond.not47.i = or i1 %i.as, %i.at
  %i.au = call double @llvm.fabs.f64(double %i.x)
  %i.av = fcmp ueq double %i.au, +inf
  %or.cond43.i = or i1 %i.av, %or.cond.not47.i
  br i1 %or.cond43.i, label %_Py_rc_quot.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = call double @llvm.fabs.f64(double %i.j)
  %i.ax = fcmp oeq double %i.aw, +inf             ; 2 uses
  %i.ay = call double @llvm.fabs.f64(double %i.i)
  %i.az = fcmp oeq double %i.ay, +inf             ; 2 uses
  %or.cond45.i = or i1 %i.ax, %i.az
  br i1 %or.cond45.i, label %bb.k, label %_Py_rc_quot.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = select i1 %i.ax, double 1.000000e+00, double 0.000000e+00
  %i.bb = call double @llvm.copysign.f64(double %i.ba, double %i.j)
  %i.bc = select i1 %i.az, double 1.000000e+00, double 0.000000e+00
  %i.bd = call double @llvm.copysign.f64(double %i.bc, double %i.i)
  %i.be = fmul nnan double %i.bb, %i.x
  %i.bf = fmul double %i.be, 0.000000e+00
  %i.bg = fneg double %i.x
  %i.bh = fmul nnan double %i.bd, %i.bg
  %i.bi = fmul double %i.bh, 0.000000e+00
  br label %_Py_rc_quot.exit

_Py_rc_quot.exit:                                 ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.040.1.i = phi double [ %i.bf, %bb.k ], [ %.sroa.040.0.i, %bb.j ], [ %.sroa.040.0.i, %bb.i ] ; 2 uses
  %.sroa.7.1.i = phi double [ %i.bi, %bb.k ], [ %.sroa.7.0.i, %bb.j ], [ %.sroa.7.0.i, %bb.i ] ; 2 uses
  store double %.sroa.040.1.i, ptr %2, align 16, !tbaa !23
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %.sroa.7.1.i, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !23
  br label %.thread

bb.l:                                             ; preds = %bb.c
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %PyComplex_FromCComplex.exit

bb.m:                                             ; preds = %PyObject_TypeCheck.exit
  %i.bk = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bk, align 8, !tbaa !19 ; 2 uses
  %.not.i18 = icmp eq ptr %.val, @PyComplex_Type
  br i1 %.not.i18, label %PyObject_TypeCheck.exit19.thread, label %PyObject_TypeCheck.exit19

PyObject_TypeCheck.exit19:                        ; preds = %bb.m
  %i.bl = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyComplex_Type) #14
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %PyComplex_FromCComplex.exit, label %PyObject_TypeCheck.exit19.thread

PyObject_TypeCheck.exit19.thread:                 ; preds = %bb.m, %PyObject_TypeCheck.exit19
  %i.bm = getelementptr i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.val.i20 = load ptr, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %.not.i.i21 = icmp eq ptr %.val.i20, @PyFloat_Type
  br i1 %.not.i.i21, label %PyObject_TypeCheck.exit.thread.i24, label %PyObject_TypeCheck.exit.i22

PyObject_TypeCheck.exit.i22:                      ; preds = %PyObject_TypeCheck.exit19.thread
  %i.bn = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i20, ptr noundef nonnull @PyFloat_Type) #14
  %.not8.i23 = icmp eq i32 %i.bn, 0
  br i1 %.not8.i23, label %bb.n, label %PyObject_TypeCheck.exit.thread.i24

PyObject_TypeCheck.exit.thread.i24:               ; preds = %PyObject_TypeCheck.exit.i22, %PyObject_TypeCheck.exit19.thread
  %i.bo = getelementptr i8, ptr %1, i64 16
  br label %thread-pre-split

bb.n:                                             ; preds = %PyObject_TypeCheck.exit.i22
  %i.bp = call i32 @_Py_convert_int_to_double(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.n, %PyObject_TypeCheck.exit.thread.i24
  %.in = phi ptr [ %i.bo, %PyObject_TypeCheck.exit.thread.i24 ], [ %i.c, %bb.n ]
  %i.br = load double, ptr %.in, align 8, !tbaa !23 ; 2 uses
  %i.bs = fcmp une double %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %thread-pre-split
  %i.bt = load <2 x double>, ptr %2, align 16
  %i.bu = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv <2 x double> %i.bt, %i.bv
  br label %.thread37

bb.p:                                             ; preds = %thread-pre-split
  store i32 33, ptr %i.d, align 4, !tbaa !7
  br label %.thread37

.thread37:                                        ; preds = %bb.p, %bb.o
  %i.bx = phi <2 x double> [ %i.bw, %bb.o ], [ zeroinitializer, %bb.p ] ; 3 uses
  store <2 x double> %i.bx, ptr %2, align 16, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.by = extractelement <2 x double> %i.bx, i64 0
  %i.bz = extractelement <2 x double> %i.bx, i64 1
  br label %.thread

bb.q:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %PyComplex_FromCComplex.exit

.thread:                                          ; preds = %PyObject_TypeCheck.exit17.thread, %_Py_rc_quot.exit, %.thread37
  %i.cb = phi double [ %i.s, %PyObject_TypeCheck.exit17.thread ], [ %.sroa.7.1.i, %_Py_rc_quot.exit ], [ %i.bz, %.thread37 ]
  %i.cc = phi double [ %i.r, %PyObject_TypeCheck.exit17.thread ], [ %.sroa.040.1.i, %_Py_rc_quot.exit ], [ %i.by, %.thread37 ]
  %i.cd = load i32, ptr %i.d, align 4, !tbaa !7
  %i.ce = icmp eq i32 %i.cd, 33
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread
  %i.cf = load ptr, ptr @PyExc_ZeroDivisionError, align 8, !tbaa !42
  call void @PyErr_SetString(ptr noundef %i.cf, ptr noundef nonnull @.str.8) #14
  br label %PyComplex_FromCComplex.exit

bb.s:                                             ; preds = %.thread
  %i.cg = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !11 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 11184  ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i, label %bb.t, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.s
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !17
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !14
  %i.cl = getelementptr i8, ptr %i.ch, i64 11192  ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !18
  %i.cn = add i64 %i.cm, -1
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !18
  br label %_PyObject_Init.exit.i

bb.t:                                             ; preds = %bb.s
  %i.co = call ptr @PyObject_Malloc(i64 noundef 32) #14, !inline_history !25 ; 4 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cq = call ptr @PyErr_NoMemory() #14, !inline_history !25
  br label %PyComplex_FromCComplex.exit

bb.v:                                             ; preds = %bb.t
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  store ptr @PyComplex_Type, ptr %i.cr, align 8, !tbaa !19
  %i.cs = load i32, ptr @PyComplex_Type, align 8, !tbaa !22 ; 2 uses
  %i.ct = icmp ugt i32 %i.cs, -1073741825
  br i1 %i.ct, label %_PyObject_Init.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = add nuw i32 %i.cs, 1
  store i32 %i.cu, ptr @PyComplex_Type, align 8, !tbaa !22
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.w, %bb.v, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.cj, %_PyFreeList_Pop.exit.i ], [ %i.co, %bb.v ], [ %i.co, %bb.w ] ; 4 uses
  call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #14, !inline_history !25
  %i.cv = getelementptr i8, ptr %.sink.i, i64 16
  store double %i.cc, ptr %i.cv, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %.sink.i, i64 24
  store double %i.cb, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !23
  br label %PyComplex_FromCComplex.exit

PyComplex_FromCComplex.exit:                      ; preds = %_PyObject_Init.exit.i, %bb.u, %bb.q, %bb.l, %PyObject_TypeCheck.exit19, %bb.r
  %.2 = phi ptr [ null, %bb.r ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit19 ], [ %i.bj, %bb.l ], [ %i.ca, %bb.q ], [ %i.cq, %bb.u ], [ %.sink.i, %_PyObject_Init.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.2
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @_Py_convert_int_to_double(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @real_to_complex(ptr noundef nonnull %0, ptr noundef nonnull initializes((8, 16)) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !46
  %i.b = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, @PyFloat_Type
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.a
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PyFloat_Type) #14
  %.not8.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i, label %bb.b, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %.val6.i = load double, ptr %i.e, align 8, !tbaa !47
  store double %.val6.i, ptr %1, align 8, !tbaa !23
  br label %bb.c

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.f = tail call i32 @_Py_convert_int_to_double(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %real_to_double.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %PyObject_TypeCheck.exit.thread.i
  br label %real_to_double.exit

real_to_double.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0.i
}

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #8

declare i64 @_Py_HashDouble(ptr noundef, double noundef) local_unnamed_addr #8

declare ptr @PyObject_RichCompare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8
end_hunk_1
