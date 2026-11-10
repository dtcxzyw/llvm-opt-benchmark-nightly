Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/mathmodule?download=true
inline.NumInlined: 174
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@m_log:bb.a
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ogt double %0, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call double @llvm.log.f64(double %0), !tbaa !9
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.e, align 4, !tbaa !9
  %i.f = fcmp oeq double %0, 0.000000e+00
  %. = select i1 %i.f, double -inf, double +qnan
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %or.cond = fcmp ugt double %0, 0.000000e+00
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.g, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.c
  %.0 = phi double [ %i.d, %bb.c ], [ %., %bb.d ], [ +qnan, %bb.f ], [ %0, %bb.e ]
  ret double %.0
}

declare ptr @PyNumber_TrueDivide(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @loghelper_int(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 !guid !294 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !206
  %i.c = and i64 %.val, 3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !182
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.79) #15
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = tail call double @PyLong_AsDouble(ptr noundef nonnull %0) #15 ; 2 uses
  %i.g = fcmp oeq double %i.f, -1.000000e+00
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyErr_Occurred() #15
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !182
  %i.j = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.i) #15
  %.not12 = icmp eq i32 %i.j, 0
  br i1 %.not12, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @PyErr_Clear() #15
  %i.k = call double @_PyLong_Frexp(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #15
  %i.l = call double %1(double noundef 2.000000e+00) #15, !callees !295
  %i.m = load i64, ptr %i.a, align 8, !tbaa !296
  %i.n = sitofp i64 %i.m to double
  %i.o = call double %1(double noundef %i.k) #15, !callees !295
  %i.p = call double @llvm.fma.f64(double %i.l, double %i.n, double %i.o)
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call double %1(double noundef %i.f) #15, !callees !295
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi double [ %i.p, %bb.f ], [ %i.q, %bb.g ]
  %i.r = call ptr @PyFloat_FromDouble(double noundef %.0) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b
  %.011 = phi ptr [ %i.r, %bb.h ], [ null, %bb.b ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.011
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #1

declare i32 @PyIndex_Check(ptr noundef) local_unnamed_addr #1

declare void @PyErr_Clear() local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare double @_PyLong_Frexp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal double @_Py_log1p(double noundef %0) #11 !guid !297 {
bb.a:
  %i.a = fcmp oeq double %0, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @log1p(double noundef %0) #15, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.b, %bb.b ], [ %0, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log1p(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef double @m_log10(double noundef %0) #10 !guid !298 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ogt double %0, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call double @llvm.log10.f64(double %0), !tbaa !9
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.e, align 4, !tbaa !9
  %i.f = fcmp oeq double %0, 0.000000e+00
  %. = select i1 %i.f, double -inf, double +qnan
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %or.cond = fcmp ugt double %0, 0.000000e+00
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.g, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.c
  %.0 = phi double [ %i.d, %bb.c ], [ %., %bb.d ], [ +qnan, %bb.f ], [ %0, %bb.e ]
  ret double %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef double @m_log2(double noundef %0) #10 !guid !299 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %or.cond = fcmp ugt double %0, 0.000000e+00
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.c, align 4, !tbaa !9
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.d = fcmp ogt double %0, 0.000000e+00
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call double @llvm.log2.f64(double %0), !tbaa !9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = fcmp oeq double %0, 0.000000e+00
  %i.g = tail call ptr @__errno_location() #16
  store i32 33, ptr %i.g, align 4, !tbaa !9
  %. = select i1 %i.f, double -inf, double +qnan
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.e, %bb.c
  %.0 = phi double [ %i.e, %bb.e ], [ %., %bb.f ], [ %0, %bb.b ], [ +qnan, %bb.c ]
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal double @m_remainder(double noundef %0, double noundef %1) #11 !guid !300 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 4 uses
  %i.b = fcmp ueq double %i.a, +inf
  %i.c = tail call double @llvm.fabs.f64(double %1) ; 3 uses
  %i.d = fcmp ueq double %i.c, +inf
  %or.cond = or i1 %i.b, %i.d
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %1, 0.000000e+00
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = frem double %i.a, %1                     ; 6 uses
  %i.g = fsub double %i.c, %i.f                   ; 3 uses
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = fcmp ogt double %i.f, %i.g
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = fneg double %i.g
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = fsub nnan double %i.a, %i.f
  %i.l = fmul nnan double %i.k, 5.000000e-01
  %i.m = tail call double @fmod(double noundef %i.l, double noundef %i.c) #15, !tbaa !9
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double -2.000000e+00, double %i.f)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f
  %.0 = phi double [ %i.n, %bb.f ], [ %i.j, %bb.e ], [ %i.f, %bb.c ]
  %i.o = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.p = fmul double %i.o, %.0
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.q = fcmp uno double %0, 0.000000e+00
  br i1 %i.q, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = fcmp uno double %1, 0.000000e+00
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = fcmp oeq double %i.a, +inf
  %. = select i1 %i.s, double +qnan, double %0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.b
  %.1 = phi double [ %1, %bb.i ], [ +qnan, %bb.b ], [ %0, %bb.h ], [ %., %bb.j ], [ %i.p, %bb.g ]
  ret double %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) #2

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyNumber_Multiply(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #2

declare ptr @PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsUnsignedLongLong(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @math_exec(ptr noundef %0) #0 !guid !301 {
bb.a:
  %i.a = tail call ptr @PyFloat_FromDouble(double noundef f0x400921FB54442D18) #15
  %i.b = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.90, ptr noundef %i.a) #15
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Py_DECREF.exit40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyFloat_FromDouble(double noundef f0x4005BF0A8B145769) #15
  %i.e = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.91, ptr noundef %i.d) #15
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %Py_DECREF.exit40, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @PyFloat_FromDouble(double noundef f0x401921FB54442D18) #15
  %i.h = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.92, ptr noundef %i.g) #15
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %Py_DECREF.exit40, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @PyFloat_FromDouble(double noundef +inf) #15
  %i.k = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef %i.j) #15
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %Py_DECREF.exit40, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @PyFloat_FromDouble(double noundef +qnan) #15
  %i.n = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.94, ptr noundef %i.m) #15
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %Py_DECREF.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.95) #15 ; 30 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %Py_DECREF.exit40, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.96) #15
  %i.r = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.96, ptr noundef %i.q) #15
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.p, align 8, !tbaa !198  ; 2 uses
  %.not.i39 = icmp sgt i32 %i.t, -1
  br i1 %.not.i39, label %bb.i, label %Py_DECREF.exit40

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.p, align 8, !tbaa !198
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %Py_DECREF.exit40

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit40

bb.k:                                             ; preds = %bb.g
  %i.w = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.97) #15
  %i.x = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef %i.w) #15
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.z = load i32, ptr %i.p, align 8, !tbaa !198  ; 2 uses
  %.not.i37 = icmp sgt i32 %i.z, -1
  br i1 %.not.i37, label %bb.m, label %Py_DECREF.exit40

bb.m:                                             ; preds = %bb.l
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.p, align 8, !tbaa !198
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %Py_DECREF.exit40

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit40

bb.o:                                             ; preds = %bb.k
  %i.ac = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.98) #15
  %i.ad = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef %i.ac) #15
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.af = load i32, ptr %i.p, align 8, !tbaa !198 ; 2 uses
  %.not.i35 = icmp sgt i32 %i.af, -1
  br i1 %.not.i35, label %bb.q, label %Py_DECREF.exit40

bb.q:                                             ; preds = %bb.p
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.p, align 8, !tbaa !198
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %Py_DECREF.exit40

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit40

bb.s:                                             ; preds = %bb.o
  %i.ai = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.99) #15
  %i.aj = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.99, ptr noundef %i.ai) #15
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.al = load i32, ptr %i.p, align 8, !tbaa !198 ; 2 uses
  %.not.i33 = icmp sgt i32 %i.al, -1
  br i1 %.not.i33, label %bb.u, label %Py_DECREF.exit40

bb.u:                                             ; preds = %bb.t
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.p, align 8, !tbaa !198
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.v, label %Py_DECREF.exit40

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit40

bb.w:                                             ; preds = %bb.s
  %i.ao = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.100) #15
  %i.ap = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.100, ptr noundef %i.ao) #15
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ar = load i32, ptr %i.p, align 8, !tbaa !198 ; 2 uses
  %.not.i31 = icmp sgt i32 %i.ar, -1
  br i1 %.not.i31, label %bb.y, label %Py_DECREF.exit40

bb.y:                                             ; preds = %bb.x
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.p, align 8, !tbaa !198
end_hunk_0
