inline.NumInlined: 270
inline.NumDeleted: 27
begin_hunk_0_@u64_set_sw:bb.a
  br label %bb.j

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ %i.k, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.o = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !15 ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr @_Py_NoneStruct, align 8, !tbaa !15
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.f, %bb.g
  %i.r = ashr i64 %2, 16                          ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit
  %.0.copyload = load i64, ptr %0, align 1
  %i.s = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload)
  %i.t = add nsw i64 %i.r, -1
  %notmask = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask, -1
  %i.v = shl nuw i64 %i.u, 1
  %i.w = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.x = and i64 %2, 65535                        ; 2 uses
  %i.y = shl i64 %i.w, %i.x
  %i.z = xor i64 %i.y, -1
  %i.aa = and i64 %i.s, %i.z
  %i.ab = and i64 %i.n, %i.w
  %i.ac = shl i64 %i.ab, %i.x
  %i.ad = or i64 %i.aa, %i.ac
  br label %bb.i

bb.i:                                             ; preds = %Py_DECREF.exit, %bb.h
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ %i.n, %Py_DECREF.exit ]
  %i.af = call noundef i64 @llvm.bswap.i64(i64 %i.ae)
  store i64 %i.af, ptr %0, align 1
  br label %bb.j

bb.j:                                             ; preds = %u64_set.exit.thread, %bb.i
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.i ], [ null, %u64_set.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @u64_get_sw(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %.0.copyload = load i64, ptr %0, align 1
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload) ; 2 uses
  %i.b = ashr i64 %1, 16                          ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %1, 65535
  %i.d = add nsw i64 %i.b, %i.c
  %i.e = sub nsw i64 64, %i.d
  %i.f = shl i64 %i.a, %i.e
  %i.g = sub nsw i64 64, %i.b
  %i.h = lshr i64 %i.f, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.h, %bb.b ], [ %i.a, %bb.a ]
  %i.i = tail call ptr @PyLong_FromUInt64(i64 noundef %.0) #11
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @d_set(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2) #2 {
bb.a:
  %i.a = tail call double @PyFloat_AsDouble(ptr noundef %1) #11 ; 2 uses
  %i.b = fcmp oeq double %i.a, -1.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #11
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store double %i.a, ptr %0, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @d_get(ptr nofree noundef readonly captures(none) %0, i64 %1) #2 {
bb.a:
  %.0.copyload = load double, ptr %0, align 1
  %i.a = tail call ptr @PyFloat_FromDouble(double noundef %.0.copyload) #11
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @d_set_sw(ptr noundef %0, ptr noundef %1, i64 %2) #2 {
bb.a:
  %i.a = tail call double @PyFloat_AsDouble(ptr noundef %1) #11 ; 2 uses
  %i.b = fcmp oeq double %i.a, -1.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #11
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call i32 @PyFloat_Pack8(double noundef %i.a, ptr noundef %0, i32 noundef 0) #11
  %.not5 = icmp eq i32 %i.d, 0
  %_Py_NoneStruct. = select i1 %.not5, ptr @_Py_NoneStruct, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %_Py_NoneStruct., %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @d_get_sw(ptr noundef %0, i64 %1) #2 {
bb.a:
  %i.a = tail call double @PyFloat_Unpack8(ptr noundef %0, i32 noundef 0) #11
  %i.b = tail call ptr @PyFloat_FromDouble(double noundef %i.a) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @D_set(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2) #2 {
bb.a:
  %i.a = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %1) #11 ; 2 uses
  %i.b = extractvalue { double, double } %i.a, 0  ; 2 uses
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = fcmp oeq double %i.b, -1.000000e+00
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyErr_Occurred() #11
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store double %i.b, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.c, ptr %.sroa.4.0..sroa_idx, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @D_get(ptr nofree noundef readonly captures(none) %0, i64 %1) #2 {
bb.a:
  %.sroa.0.0.copyload = load double, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 1
  %i.a = tail call ptr @PyComplex_FromDoubles(double noundef %.sroa.0.0.copyload, double noundef %.sroa.4.0.copyload) #11
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @F_set(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2) #2 {
bb.a:
  %i.a = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %1) #11 ; 2 uses
  %i.b = extractvalue { double, double } %i.a, 0  ; 2 uses
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = fcmp oeq double %i.b, -1.000000e+00
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyErr_Occurred() #11
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = insertelement <2 x double> poison, double %i.b, i64 0
  %i.g = insertelement <2 x double> %i.f, double %i.c, i64 1
  %i.h = fptrunc <2 x double> %i.g to <2 x float>
  store <2 x float> %i.h, ptr %0, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @F_get(ptr nofree noundef readonly captures(none) %0, i64 %1) #2 {
bb.a:
  %.sroa.0.0.copyload = load float, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 1
  %2 = fpext float %.sroa.0.0.copyload to double
  %3 = fpext float %.sroa.4.0.copyload to double
  %i.a = tail call ptr @PyComplex_FromDoubles(double noundef %2, double noundef %3) #11
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @G_set(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2) #2 {
bb.a:
  %i.a = tail call { double, double } @PyComplex_AsCComplex(ptr noundef %1) #11 ; 2 uses
  %i.b = extractvalue { double, double } %i.a, 0  ; 2 uses
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = fcmp oeq double %i.b, -1.000000e+00
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyErr_Occurred() #11
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = fpext double %i.b to x86_fp80
  %i.g = fpext double %i.c to x86_fp80
  store x86_fp80 %i.f, ptr %0, align 1
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store x86_fp80 %i.g, ptr %.sroa.41.0..sroa_idx, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @G_get(ptr nofree noundef readonly captures(none) %0, i64 %1) #2 {
bb.a:
  %.sroa.0.0.copyload = load x86_fp80, ptr %0, align 1
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load x86_fp80, ptr %.sroa.41.0..sroa_idx, align 1
  %i.a = fptrunc x86_fp80 %.sroa.0.0.copyload to double
  %i.b = fptrunc x86_fp80 %.sroa.41.0.copyload to double
  %i.c = tail call ptr @PyComplex_FromDoubles(double noundef %i.a, double noundef %i.b) #11
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @g_set(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2) #2 {
bb.a:
  %i.a = tail call double @PyFloat_AsDouble(ptr noundef %1) #11 ; 2 uses
  %i.b = fpext double %i.a to x86_fp80
  %i.c = fcmp oeq double %i.a, -1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyErr_Occurred() #11
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store x86_fp80 %i.b, ptr %0, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @g_get(ptr nofree noundef readonly captures(none) %0, i64 %1) #2 {
bb.a:
  %.0.copyload = load x86_fp80, ptr %0, align 1
  %i.a = fptrunc x86_fp80 %.0.copyload to double
  %i.b = tail call ptr @PyFloat_FromDouble(double noundef %i.a) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @f_set(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2) #2 {
bb.a:
  %i.a = tail call double @PyFloat_AsDouble(ptr noundef %1) #11
  %i.b = fptrunc double %i.a to float             ; 2 uses
  %i.c = fcmp oeq float %i.b, -1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyErr_Occurred() #11
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store float %i.b, ptr %0, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @f_get(ptr nofree noundef readonly captures(none) %0, i64 %1) #2 {
bb.a:
  %.0.copyload = load float, ptr %0, align 1
  %i.a = fpext float %.0.copyload to double
  %i.b = tail call ptr @PyFloat_FromDouble(double noundef %i.a) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @f_set_sw(ptr noundef %0, ptr noundef %1, i64 %2) #2 {
bb.a:
  %i.a = tail call double @PyFloat_AsDouble(ptr noundef %1) #11
  %i.b = fptrunc double %i.a to float             ; 2 uses
  %i.c = fcmp oeq float %i.b, -1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyErr_Occurred() #11
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = fpext float %i.b to double
  %i.f = tail call i32 @PyFloat_Pack4(double noundef %i.e, ptr noundef %0, i32 noundef 0) #11
  %.not5 = icmp eq i32 %i.f, 0
  %_Py_NoneStruct. = select i1 %.not5, ptr @_Py_NoneStruct, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %_Py_NoneStruct., %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @f_get_sw(ptr noundef %0, i64 %1) #2 {
bb.a:
  %i.a = tail call double @PyFloat_Unpack4(ptr noundef %0, i32 noundef 0) #11
  %i.b = tail call ptr @PyFloat_FromDouble(double noundef %i.a) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @v_set(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2) #2 {
bb.a:
  %i.a = tail call i32 @PyObject_IsTrue(ptr noundef %1) #11
  switch i32 %i.a, label %bb.b [
    i32 -1, label %bb.c
    i32 0, label %.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink = phi i16 [ -1, %bb.b ], [ 0, %bb.a ]
  store i16 %.sink, ptr %0, align 2, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ @_Py_NoneStruct, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @v_get(ptr nofree noundef readonly captures(none) %0, i64 %1) #2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !64
  %i.b = sext i16 %i.a to i64
  %i.c = tail call ptr @PyBool_FromLong(i64 noundef %i.b) #11
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @c_set(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val27 = load ptr, ptr %i.b, align 8, !tbaa !48 ; 3 uses
  %i.c = getelementptr i8, ptr %.val27, i64 168
  %.val29 = load i64, ptr %i.c, align 8, !tbaa !51
  %i.d = and i64 %.val29, 134217728
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 16
  %.val31 = load i64, ptr %i.e, align 8, !tbaa !66 ; 2 uses
  %.not26 = icmp eq i64 %.val31, 1
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !67
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.59, i64 noundef %.val31) #11 ; 0 uses
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !15
  store i8 %i.i, ptr %0, align 1, !tbaa !15
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %.val27, @PyByteArray_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit
end_hunk_0
